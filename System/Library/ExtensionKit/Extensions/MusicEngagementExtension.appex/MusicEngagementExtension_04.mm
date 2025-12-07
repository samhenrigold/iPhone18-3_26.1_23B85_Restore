uint64_t closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)()
{
  v102 = v0;
  if (*(v0 + 624))
  {
    v1 = *(v0 + 632);
    *(v0 + 1088) = swift_getObjectType();
    *(v0 + 1096) = *(v1 + 8);
    *(v0 + 1104) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0xE86A000000000000;
    type metadata accessor for MainActor();
    *(v0 + 1112) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
LABEL_3:
    v6 = v5;
    v7 = v2;
    v8 = v4;
LABEL_4:

    return _swift_task_switch(v6, v7, v8);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v9;
  v10 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v10;
  v11 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v11;
  v12 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v12;
  outlined destroy of ApplicationCapabilities(v0 + 16);
  if ((*(v0 + 25) & 2) != 0)
  {
    v14 = *(v0 + 1016);
    v15 = *(v0 + 1000);
    v16 = *(v0 + 992);
    v17 = *(v0 + 672);
    v18 = *(v0 + 640);
    v100 = *(*(v0 + 864) + 56);
    v100(*(v0 + 1080), 1, 1, *(v0 + 856));
    v19 = *(v16 + 16);
    *(v0 + 1120) = v19;
    *(v0 + 1128) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v15, v18, v17);
    v20 = swift_dynamicCast();
    v21 = *(v14 + 56);
    if (v20)
    {
      v22 = *(v0 + 1024);
      v23 = *(v0 + 1016);
      v24 = *(v0 + 1008);
      v25 = *(v0 + 984);
      v26 = *(v0 + 648);
      v21(v25, 0, 1, v24);
      (*(v23 + 32))(v22, v25, v24);
      if (Album.childrenAddStatus(_:)(v26) != 1)
      {
        (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
        goto LABEL_20;
      }

      v27 = *(v0 + 968);
      v28 = *(v0 + 960);
      v29 = *(v0 + 952);
      Album.tracks.getter();
      if ((*(v27 + 48))(v29, 1, v28) != 1)
      {
        v79 = *(v0 + 976);
        v80 = *(v0 + 648);
        (*(*(v0 + 968) + 32))(v79, *(v0 + 952), *(v0 + 960));
        v101[0] = _swiftEmptyArrayStorage;

        LOBYTE(v79) = specialized Sequence.contains(where:)(v79, v80, v101);

        if (v79)
        {
          v81 = *(v0 + 1024);
          v82 = *(v0 + 1016);
          v83 = *(v0 + 1008);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v82 + 8))(v81, v83);
        }

        else
        {
          if (*(v101[0] + 16))
          {
            (*(*(v0 + 864) + 16))(*(v0 + 1072), v101[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
            v84 = 0;
          }

          else
          {
            v84 = 1;
          }

          v85 = *(v0 + 1080);
          v86 = *(v0 + 1072);
          v87 = *(v0 + 1024);
          v88 = *(v0 + 1016);
          v89 = *(v0 + 1008);
          v90 = *(v0 + 856);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v88 + 8))(v87, v89);
          outlined destroy of TaskPriority?(v85, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
          v100(v86, v84, 1, v90);
          outlined init with take of URL?(v86, v85, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
        }

LABEL_21:
        v38 = *(v0 + 1080);
        v39 = *(v0 + 1056);
        v40 = *(v0 + 896);
        v41 = *(v0 + 880);
        v42 = *(v0 + 864);
        v43 = *(v0 + 856);
        v97 = *(v42 + 104);
        v97(v39, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v43);
        v100(v39, 0, 1, v43);
        v99 = v41;
        v44 = *(v41 + 48);
        outlined init with copy of TaskPriority?(v38, v40, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
        outlined init with copy of TaskPriority?(v39, v40 + v44, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
        v45 = *(v42 + 48);
        if (v45(v40, 1, v43) == 1)
        {
          v46 = *(v0 + 856);
          outlined destroy of TaskPriority?(*(v0 + 1056), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
          if (v45(v40 + v44, 1, v46) == 1)
          {
            outlined destroy of TaskPriority?(*(v0 + 896), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
LABEL_35:
            *(v0 + 1136) = type metadata accessor for MainActor();
            *(v0 + 1144) = static MainActor.shared.getter();
            v70 = dispatch thunk of Actor.unownedExecutor.getter();
            v8 = v71;
            *(v0 + 1152) = v70;
            *(v0 + 1160) = v71;
            v6 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
            v7 = v70;
            goto LABEL_4;
          }
        }

        else
        {
          v47 = *(v0 + 856);
          outlined init with copy of TaskPriority?(*(v0 + 896), *(v0 + 1048), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
          v48 = v45(v40 + v44, 1, v47);
          v49 = *(v0 + 1056);
          v50 = *(v0 + 1048);
          if (v48 != 1)
          {
            v95 = v45;
            v93 = *(v0 + 896);
            v66 = *(v0 + 872);
            v67 = *(v0 + 864);
            v68 = *(v0 + 856);
            (*(v67 + 32))(v66, v40 + v44, v68);
            lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
            v92 = dispatch thunk of static Equatable.== infix(_:_:)();
            v69 = *(v67 + 8);
            v69(v66, v68);
            outlined destroy of TaskPriority?(v49, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
            v69(v50, v68);
            outlined destroy of TaskPriority?(v93, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
            if (v92)
            {
              goto LABEL_35;
            }

LABEL_27:
            v53 = *(v0 + 1080);
            v54 = *(v0 + 1040);
            v55 = *(v0 + 888);
            v56 = *(v0 + 856);
            v97(v54, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v56);
            v100(v54, 0, 1, v56);
            v57 = *(v99 + 48);
            outlined init with copy of TaskPriority?(v53, v55, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
            outlined init with copy of TaskPriority?(v54, v55 + v57, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
            if (v95(v55, 1, v56) == 1)
            {
              v58 = *(v0 + 856);
              outlined destroy of TaskPriority?(*(v0 + 1040), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
              if (v95(v55 + v57, 1, v58) == 1)
              {
                outlined destroy of TaskPriority?(*(v0 + 888), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
LABEL_37:
                *(v0 + 1192) = type metadata accessor for MainActor();
                *(v0 + 1200) = static MainActor.shared.getter();
                v2 = dispatch thunk of Actor.unownedExecutor.getter();
                v4 = v78;
                v5 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
                goto LABEL_3;
              }
            }

            else
            {
              v59 = *(v0 + 856);
              outlined init with copy of TaskPriority?(*(v0 + 888), *(v0 + 1032), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
              v60 = v95(v55 + v57, 1, v59);
              v61 = *(v0 + 1040);
              v62 = *(v0 + 1032);
              if (v60 != 1)
              {
                v72 = *(v0 + 888);
                v73 = *(v0 + 872);
                v74 = *(v0 + 864);
                v75 = *(v0 + 856);
                (*(v74 + 32))(v73, v55 + v57, v75);
                lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
                v76 = dispatch thunk of static Equatable.== infix(_:_:)();
                v77 = *(v74 + 8);
                v77(v73, v75);
                outlined destroy of TaskPriority?(v61, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
                v77(v62, v75);
                outlined destroy of TaskPriority?(v72, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
                if (v76)
                {
                  goto LABEL_37;
                }

LABEL_33:
                swift_storeEnumTagMultiPayload();
                *(v0 + 1216) = type metadata accessor for MainActor();
                *(v0 + 1224) = static MainActor.shared.getter();
                v2 = dispatch thunk of Actor.unownedExecutor.getter();
                v4 = v65;
                v5 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
                goto LABEL_3;
              }

              v63 = *(v0 + 864);
              v64 = *(v0 + 856);
              outlined destroy of TaskPriority?(*(v0 + 1040), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
              (*(v63 + 8))(v62, v64);
            }

            outlined destroy of TaskPriority?(*(v0 + 888), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMR);
            goto LABEL_33;
          }

          v51 = *(v0 + 864);
          v52 = *(v0 + 856);
          outlined destroy of TaskPriority?(*(v0 + 1056), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
          (*(v51 + 8))(v50, v52);
        }

        v95 = v45;
        outlined destroy of TaskPriority?(*(v0 + 896), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMR);
        goto LABEL_27;
      }

      v30 = *(v0 + 952);
      (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
      v31 = &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd;
      v32 = &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR;
    }

    else
    {
      v30 = *(v0 + 984);
      v21(v30, 1, 1, *(v0 + 1008));
      v31 = &_s8MusicKit5AlbumVSgMd;
      v32 = &_s8MusicKit5AlbumVSgMR;
    }

    outlined destroy of TaskPriority?(v30, v31, v32);
LABEL_20:
    v94 = *(v0 + 1064);
    v33 = *(v0 + 944);
    v34 = *(v0 + 936);
    v96 = *(v0 + 928);
    v98 = *(v0 + 1080);
    v35 = *(v0 + 920);
    v36 = *(v0 + 912);
    v37 = *(v0 + 904);
    static MusicLibraryAction<>.add.getter();
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v36 + 8))(v35, v37);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v94);
    (*(v34 + 8))(v33, v96);
    outlined destroy of TaskPriority?(v98, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
    outlined init with take of URL?(v94, v98, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
    goto LABEL_21;
  }

  *(v0 + 600) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 608) = -1;
  specialized static SubscriptionUpsellPresenter.present(for:)(v0 + 568);
  outlined destroy of SubscriptionUpsellPresenter.Placement(v0 + 568);

  v13 = *(v0 + 8);

  return v13();
}

{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[79];

  v1(0, v2, v3);

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

{
  v100 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  outlined destroy of ApplicationCapabilities(v0 + 16);
  if ((*(v0 + 25) & 2) == 0)
  {
    *(v0 + 600) = 0;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 608) = -1;
    specialized static SubscriptionUpsellPresenter.present(for:)(v0 + 568);
    outlined destroy of SubscriptionUpsellPresenter.Placement(v0 + 568);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 1016);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 992);
  v10 = *(v0 + 672);
  v11 = *(v0 + 640);
  v98 = *(*(v0 + 864) + 56);
  v98(*(v0 + 1080), 1, 1, *(v0 + 856));
  v12 = *(v9 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8, v11, v10);
  v13 = swift_dynamicCast();
  v14 = *(v7 + 56);
  if ((v13 & 1) == 0)
  {
    v23 = *(v0 + 984);
    v14(v23, 1, 1, *(v0 + 1008));
    v24 = &_s8MusicKit5AlbumVSgMd;
    v25 = &_s8MusicKit5AlbumVSgMR;
    goto LABEL_12;
  }

  v15 = *(v0 + 1024);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 984);
  v19 = *(v0 + 648);
  v14(v18, 0, 1, v17);
  (*(v16 + 32))(v15, v18, v17);
  if (Album.childrenAddStatus(_:)(v19) != 1)
  {
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    goto LABEL_14;
  }

  v20 = *(v0 + 968);
  v21 = *(v0 + 960);
  v22 = *(v0 + 952);
  Album.tracks.getter();
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    v23 = *(v0 + 952);
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    v24 = &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd;
    v25 = &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR;
LABEL_12:
    outlined destroy of TaskPriority?(v23, v24, v25);
LABEL_14:
    v92 = *(v0 + 1064);
    v26 = *(v0 + 944);
    v27 = *(v0 + 936);
    v94 = *(v0 + 928);
    v96 = *(v0 + 1080);
    v28 = *(v0 + 920);
    v29 = *(v0 + 912);
    v30 = *(v0 + 904);
    static MusicLibraryAction<>.add.getter();
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v29 + 8))(v28, v30);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v92);
    (*(v27 + 8))(v26, v94);
    outlined destroy of TaskPriority?(v96, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
    outlined init with take of URL?(v92, v96, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
    goto LABEL_15;
  }

  v78 = *(v0 + 976);
  v79 = *(v0 + 648);
  (*(*(v0 + 968) + 32))(v78, *(v0 + 952), *(v0 + 960));
  v99[0] = _swiftEmptyArrayStorage;

  LOBYTE(v78) = specialized Sequence.contains(where:)(v78, v79, v99);

  if (v78)
  {
    v80 = *(v0 + 1024);
    v81 = *(v0 + 1016);
    v82 = *(v0 + 1008);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v81 + 8))(v80, v82);
  }

  else
  {
    if (*(v99[0] + 16))
    {
      (*(*(v0 + 864) + 16))(*(v0 + 1072), v99[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
      v83 = 0;
    }

    else
    {
      v83 = 1;
    }

    v84 = *(v0 + 1080);
    v85 = *(v0 + 1072);
    v86 = *(v0 + 1024);
    v87 = *(v0 + 1016);
    v88 = *(v0 + 1008);
    v89 = *(v0 + 856);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v87 + 8))(v86, v88);
    outlined destroy of TaskPriority?(v84, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
    v98(v85, v83, 1, v89);
    outlined init with take of URL?(v85, v84, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
  }

LABEL_15:
  v31 = *(v0 + 1080);
  v32 = *(v0 + 1056);
  v33 = *(v0 + 896);
  v34 = *(v0 + 880);
  v35 = *(v0 + 864);
  v36 = *(v0 + 856);
  v95 = *(v35 + 104);
  v95(v32, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v36);
  v98(v32, 0, 1, v36);
  v97 = v34;
  v37 = *(v34 + 48);
  outlined init with copy of TaskPriority?(v31, v33, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
  outlined init with copy of TaskPriority?(v32, v33 + v37, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
  v38 = *(v35 + 48);
  if (v38(v33, 1, v36) != 1)
  {
    v40 = *(v0 + 856);
    outlined init with copy of TaskPriority?(*(v0 + 896), *(v0 + 1048), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
    v41 = v38(v33 + v37, 1, v40);
    v42 = *(v0 + 1056);
    v43 = *(v0 + 1048);
    if (v41 != 1)
    {
      v93 = v38;
      v91 = *(v0 + 896);
      v62 = *(v0 + 872);
      v63 = *(v0 + 864);
      v64 = *(v0 + 856);
      (*(v63 + 32))(v62, v33 + v37, v64);
      lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
      v90 = dispatch thunk of static Equatable.== infix(_:_:)();
      v65 = *(v63 + 8);
      v65(v62, v64);
      outlined destroy of TaskPriority?(v42, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
      v65(v43, v64);
      outlined destroy of TaskPriority?(v91, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
      if (v90)
      {
        goto LABEL_29;
      }

LABEL_21:
      v46 = *(v0 + 1080);
      v47 = *(v0 + 1040);
      v48 = *(v0 + 888);
      v49 = *(v0 + 856);
      v95(v47, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v49);
      v98(v47, 0, 1, v49);
      v50 = *(v97 + 48);
      outlined init with copy of TaskPriority?(v46, v48, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
      outlined init with copy of TaskPriority?(v47, v48 + v50, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
      if (v93(v48, 1, v49) == 1)
      {
        v51 = *(v0 + 856);
        outlined destroy of TaskPriority?(*(v0 + 1040), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
        if (v93(v48 + v50, 1, v51) == 1)
        {
          outlined destroy of TaskPriority?(*(v0 + 888), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
LABEL_31:
          *(v0 + 1192) = type metadata accessor for MainActor();
          *(v0 + 1200) = static MainActor.shared.getter();
          v58 = dispatch thunk of Actor.unownedExecutor.getter();
          v60 = v77;
          v61 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
          goto LABEL_32;
        }
      }

      else
      {
        v52 = *(v0 + 856);
        outlined init with copy of TaskPriority?(*(v0 + 888), *(v0 + 1032), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
        v53 = v93(v48 + v50, 1, v52);
        v54 = *(v0 + 1040);
        v55 = *(v0 + 1032);
        if (v53 != 1)
        {
          v71 = *(v0 + 888);
          v72 = *(v0 + 872);
          v73 = *(v0 + 864);
          v74 = *(v0 + 856);
          (*(v73 + 32))(v72, v48 + v50, v74);
          lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
          v75 = dispatch thunk of static Equatable.== infix(_:_:)();
          v76 = *(v73 + 8);
          v76(v72, v74);
          outlined destroy of TaskPriority?(v54, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
          v76(v55, v74);
          outlined destroy of TaskPriority?(v71, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
          if (v75)
          {
            goto LABEL_31;
          }

LABEL_27:
          swift_storeEnumTagMultiPayload();
          *(v0 + 1216) = type metadata accessor for MainActor();
          *(v0 + 1224) = static MainActor.shared.getter();
          v58 = dispatch thunk of Actor.unownedExecutor.getter();
          v60 = v59;
          v61 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
LABEL_32:
          v69 = v61;
          v70 = v58;
          v68 = v60;
          goto LABEL_33;
        }

        v56 = *(v0 + 864);
        v57 = *(v0 + 856);
        outlined destroy of TaskPriority?(*(v0 + 1040), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
        (*(v56 + 8))(v55, v57);
      }

      outlined destroy of TaskPriority?(*(v0 + 888), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMR);
      goto LABEL_27;
    }

    v44 = *(v0 + 864);
    v45 = *(v0 + 856);
    outlined destroy of TaskPriority?(*(v0 + 1056), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
    (*(v44 + 8))(v43, v45);
LABEL_20:
    v93 = v38;
    outlined destroy of TaskPriority?(*(v0 + 896), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMR);
    goto LABEL_21;
  }

  v39 = *(v0 + 856);
  outlined destroy of TaskPriority?(*(v0 + 1056), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
  if (v38(v33 + v37, 1, v39) != 1)
  {
    goto LABEL_20;
  }

  outlined destroy of TaskPriority?(*(v0 + 896), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
LABEL_29:
  *(v0 + 1136) = type metadata accessor for MainActor();
  *(v0 + 1144) = static MainActor.shared.getter();
  v66 = dispatch thunk of Actor.unownedExecutor.getter();
  v68 = v67;
  *(v0 + 1152) = v66;
  *(v0 + 1160) = v67;
  v69 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  v70 = v66;
LABEL_33:

  return _swift_task_switch(v69, v70, v68);
}

{
  v1 = *v0;

  v2 = *(v1 + 1160);
  v3 = *(v1 + 1152);

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), v3, v2);
}

{

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

{

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 448);

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 656);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 448), 0, 1);
  v3 = v2;
  v4 = *(v0 + 480);
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

    v12 = *(v0 + 656);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 552) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 560) = 0;
    *(v0 + 520) = _NSConcreteStackBlock;
    *(v0 + 528) = 1107296256;
    *(v0 + 536) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 544) = &block_descriptor_0;
    v14 = _Block_copy((v0 + 520));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    outlined init with copy of PresentationSource(v12, v0 + 272);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    outlined init with take of PresentationSource(v0 + 272, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, partial apply for closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:), v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);

    outlined destroy of Alert(v0 + 448);
    v19 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 480), 1, 0, 0);

    outlined destroy of Alert(v0 + 448);
    v19 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  }

  return _swift_task_switch(v19, 0, 0);
}

{
  outlined destroy of TaskPriority?(*(v0 + 1080), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 848);

  specialized NoticePresenting.present(_:internalOnly:)(v1, 0);
  outlined destroy of Notice.Variant(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  outlined init with copy of TaskPriority?(*(v0 + 664), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 808), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
    v4 = *(v0 + 1120);
    v5 = *(v0 + 672);
    v6 = *(v0 + 640);
    getContiguousArrayStorageType<A>(for:)(v5, v5);
    swift_allocObject();
    v7 = static Array._adoptStorage(_:count:)();
    v4(v8, v6, v5);
    v9 = _finalizeUninitializedArray<A>(_:)(v7, v5);
    *(v0 + 1304) = v9;
    *(v0 + 616) = v9;
    v10 = swift_task_alloc();
    *(v0 + 1312) = v10;
    v11 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    *v10 = v0;
    v10[1] = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
    v13 = *(v0 + 680);
    v14 = *(v0 + 672);

    return MusicLibrary.add<A, B>(_:)(v0 + 616, v11, v14, WitnessTable, v13);
  }

  else
  {
    v15 = *(v0 + 800);
    v16 = *(v0 + 680);
    v17 = *(v0 + 672);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 808), *(v0 + 832), type metadata accessor for Actions.MetricsReportingContext);
    v18 = *(v16 + 8);
    *(v0 + 1232) = MusicItem.metricsTargetIdentifier.getter(v17, v18);
    *(v0 + 1240) = v19;
    v20 = type metadata accessor for URL();
    *(v0 + 1248) = v20;
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    *(v0 + 1256) = v22;
    *(v0 + 1264) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v22(v15, 1, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v17, v18);
    *(inited + 40) = v24;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 1;
    *(v0 + 1272) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 1280) = v25;
    *(v0 + 1288) = v26;
    *(v0 + 610) = v27;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v0 + 1296) = static MainActor.shared.getter();
    v29 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), v29, v28);
  }
}

{
  v80 = *(v0 + 610);
  v73 = *(v0 + 1272);
  v76 = *(v0 + 1240);
  v78 = *(v0 + 1288);
  v74 = *(v0 + 1232);
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v72 = *(v0 + 744);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v81 = *(v1 + v2[8]);
  *(v5 + v6[19]) = 0;
  v11 = (v5 + v6[20]);
  *v11 = 0;
  v11[1] = 0;
  *v5 = v74;
  *(v5 + 8) = v76;
  *(v5 + 16) = 773;
  outlined init with take of URL?(v4, v5 + v6[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v5 + v6[8]) = v8;
  v12 = (v5 + v6[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v5 + v6[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 610);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 744);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v18, v17, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v18, v17, v16, SBYTE1(v16));

    outlined destroy of Notice.Variant(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 752);
  v24 = *(v0 + 736);
  v25 = (*(v0 + 768) + *(*(v0 + 760) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 736);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 736), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    outlined destroy of Notice.Variant(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 752);
  v31 = *(v0 + 728);
  v32 = (*(v0 + 768) + *(*(v0 + 760) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 1256);
    v34 = *(v0 + 1248);
    v35 = *(v0 + 784);
    outlined destroy of TaskPriority?(*(v0 + 728), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 728);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 784), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of Notice.Variant(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 752);
  v38 = *(v0 + 720);
  outlined init with take of URL?(*(v0 + 784), *(v0 + 768) + *(*(v0 + 760) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 720);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 720), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    outlined destroy of Notice.Variant(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 752);
  v43 = *(v0 + 712);
  *(*(v0 + 768) + *(*(v0 + 760) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 712);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    outlined destroy of Notice.Variant(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 752);
  v48 = *(v0 + 704);
  *(*(v0 + 768) + *(*(v0 + 760) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 704);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 704), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    outlined destroy of Notice.Variant(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 752);
  v55 = *(v0 + 696);
  v56 = (*(v0 + 768) + *(*(v0 + 760) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 696);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    outlined destroy of Notice.Variant(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 776);
  v61 = *(v0 + 768);
  v62 = *(v0 + 760);
  *(v61 + *(v62 + 68)) = v59;
  *(v61 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v61, v60, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 1288);
  v64 = *(v0 + 1280);
  v65 = *(v0 + 1272);
  v66 = *(v0 + 832);
  v67 = *(v0 + 816);
  v68 = *(v0 + 800);
  v69 = *(v0 + 776);
  v70 = *(v0 + 610);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  outlined destroy of Notice.Variant(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

{
  outlined destroy of Notice.Variant(v0[104], type metadata accessor for Actions.MetricsReportingContext);
  v1 = v0[140];
  v2 = v0[84];
  v3 = v0[80];
  getContiguousArrayStorageType<A>(for:)(v2, v2);
  swift_allocObject();
  v4 = static Array._adoptStorage(_:count:)();
  v1(v5, v3, v2);
  v6 = _finalizeUninitializedArray<A>(_:)(v4, v2);
  v0[163] = v6;
  v0[77] = v6;
  v7 = swift_task_alloc();
  v0[164] = v7;
  v8 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  v10 = v0[85];
  v11 = v0[84];

  return MusicLibrary.add<A, B>(_:)(v0 + 77, v8, v11, WitnessTable, v10);
}

{
  outlined destroy of TaskPriority?(*(v0 + 1080), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(uint64_t a1)
{
  v2 = v1[82];
  v3 = static MainActor.shared.getter();
  v1[146] = v3;
  v4 = swift_task_alloc();
  v1[147] = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[148] = v5;
  *v5 = v1;
  v5[1] = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 609, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v4, &type metadata for Bool);
}

{
  *(v1 + 1208) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), v3, v2);
}

{
  *(*v2 + 1320) = v1;

  if (v1)
  {
    v3 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  }

  else
  {

    v3 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004FC24()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8) + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = type metadata accessor for URL();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)()
{
  v2 = v0[2];
  v14 = v0[3];
  v3 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[5];
  v9 = v0[6];
  v10 = *(v0 + v4);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v8, v9, v0 + v3, v10, v0 + v5, v0 + v7, v2, v14);
}

uint64_t closure #1 in closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t *a3)
{
  v33 = a3;
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
  __chkstk_darwin();
  v4 = &v33 - v3;
  v38 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v5 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v33 - v7;
  v8 = type metadata accessor for MusicLibrary.AddAction();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  static MusicLibraryAction<>.add.getter();
  type metadata accessor for Track();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v9 + 8))(v11, v8);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v4);
  v17 = v38;
  if ((*(v5 + 48))(v4, 1, v38) == 1)
  {
    outlined destroy of TaskPriority?(v4, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
  }

  else
  {
    v18 = v35;
    v34 = *(v5 + 32);
    v34(v35, v4, v17);
    (*(v5 + 16))(v37, v18, v17);
    v19 = v33;
    v20 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      v22 = v19;
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      v22 = v19;
      *v19 = v20;
    }

    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      *v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v20);
    }

    v25 = v38;
    (*(v5 + 8))(v35, v38);
    v26 = *v22;
    *(v26 + 16) = v24 + 1;
    v34((v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24), v37, v25);
  }

  v27 = v36;
  (*(v13 + 16))(v36, v16, v12);
  v28 = (*(v13 + 88))(v27, v12);
  v29 = v28;
  v30 = enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:);
  if (v28 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v31 = *(v13 + 8);
    v31(v16, v12);
    v31(v27, v12);
    return v29 != v30;
  }

  if (v28 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    (*(v13 + 8))(v16, v12);
    return v29 != v30;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.SupportedStatus<>.unaddableReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2, v4, v12);
  if ((*(v5 + 88))(v7, v4) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v15(v11, v14, v8);
    if ((*(v9 + 88))(v11, v8) == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v9 + 96))(v11, v8);
      v16 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
      v17 = *(v16 - 8);
      (*(v17 + 32))(a1, v11, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  v19 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), v4, v3);
}

uint64_t closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100050A28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v2, v3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v4();
}

uint64_t sub_100050BE0()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(v2);
}

uint64_t Actions.AddToLibrary.Context.menuItemTitle.getter()
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

uint64_t (*Actions.AddToLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x80000001004C59A0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x80000001004C59A0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.AddToLibrary.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemCompactStyleImage.getter in conformance Actions.AddToLibrary.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x80000001004C59A0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x80000001004C59A0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

Swift::Int MPCPlaybackEngine.Option.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t specialized Actions.AddToLibrary.Context.menuItemCompactStyleTitle.getter()
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

uint64_t sub_10005137C()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Album.ChildrenAddStatus and conformance Album.ChildrenAddStatus()
{
  result = lazy protocol witness table cache variable for type Album.ChildrenAddStatus and conformance Album.ChildrenAddStatus;
  if (!lazy protocol witness table cache variable for type Album.ChildrenAddStatus and conformance Album.ChildrenAddStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Album.ChildrenAddStatus and conformance Album.ChildrenAddStatus);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Actions.AddToLibrary.Context(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Actions.AddToLibrary.Context(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Album.ChildrenAddStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Album.ChildrenAddStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL specialized Sequence.contains(where:)(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t *a3)
{
  v29 = a2;
  v30 = a3;
  v28 = type metadata accessor for Track();
  v4 = *(v28 - 8);
  __chkstk_darwin();
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMR) - 8;
  v11 = __chkstk_darwin();
  v13 = &v24 - v12;
  (*(v7 + 16))(v9, a1, v6, v11);
  lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v14 = *(v10 + 44);
  lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>, &protocol conformance descriptor for MusicItemCollection<A>);
  v25 = (v4 + 16);
  v26 = (v4 + 8);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    v15 = v32[0];
    v31 = *&v13[v14];
    if (v31 == v32[0])
    {
      break;
    }

    v16 = dispatch thunk of Collection.subscript.read();
    v17 = v6;
    v18 = v27;
    v19 = v28;
    (*v25)(v27);
    v16(v32, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v20 = v33;
    v21 = closure #1 in closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v18, v29, v30);
    v33 = v20;
    if (v20)
    {
      (*v26)(v18, v19);
      break;
    }

    v22 = v21;
    (*v26)(v18, v19);
    v6 = v17;
  }

  while ((v22 & 1) == 0);
  outlined destroy of TaskPriority?(v13, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMR);
  return v31 != v15;
}

uint64_t outlined init with take of Actions.MetricsReportingContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *outlined consume of MetricsEvent.Click.ActionDetails(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(result, a2, a3);
  }

  return result;
}

void *outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined destroy of Notice.Variant(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100051BB8()
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

uint64_t lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = specialized Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(a1, a3, a4, a5, a6, a7, a8, a10, v19, a11);
  (*(*(a7 - 8) + 8))(a4, a7, v16);

  (*(*(a6 - 8) + 8))(a1, a6);
  v17 = v19[1];
  *a9 = v19[0];
  a9[1] = v17;
  result = *&v20;
  a9[2] = v20;
  return result;
}

uint64_t static Actions.AddToPlaylist.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 11;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.AddToPlaylist.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.AddToPlaylist.action(context:);
  *(a2 + 104) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.AddToPlaylist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 11;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.AddToPlaylist.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.AddToPlaylist.action(context:);
  *(a2 + 104) = 0;
}

uint64_t (*Actions.AddToPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.AddToPlaylist.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t (**a8)()@<X8>)
{
  v75 = a7;
  v78 = a6;
  v79 = a5;
  v77 = a4;
  v76 = a3;
  v80 = a8;
  v95 = type metadata accessor for MusicLibrary.AddAction();
  v9 = *(v95 - 8);
  __chkstk_darwin();
  v94 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v82 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v71 - v14;
  __chkstk_darwin();
  v72 = &v71 - v15;
  __chkstk_darwin();
  v17 = &v71 - v16;
  v74 = v18;
  __chkstk_darwin();
  v99 = &v71 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMR);
  __chkstk_darwin();
  v71 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v71 - v21;
  __chkstk_darwin();
  v24 = &v71 - v23;
  v25 = __chkstk_darwin();
  v27 = &v71 - v26;
  v81 = v12;
  v91 = *(v12 + 56);
  v92 = v12 + 56;
  v91(&v71 - v26, 1, 1, v11, v25);
  v96 = a1;
  v90 = *(a1 + 16);
  if (v90)
  {
    v28 = 0;
    result = v96 + 32;
    v88 = (v9 + 8);
    v86 = (v81 + 88);
    v87 = (v81 + 16);
    v93 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
    v30 = (v81 + 8);
    v84 = (v81 + 48);
    v83 = (v81 + 32);
    v85 = v24;
    v89 = v27;
    while (v28 < *(v96 + 16))
    {
      v97 = result;
      v98 = v28;
      outlined init with copy of MusicLibraryAddable & MusicLibraryActionable(result, v100);
      __swift_project_boxed_opaque_existential_0Tm(v100, v100[3]);
      v33 = v94;
      static MusicLibraryAction<>.add.getter();
      v34 = v30;
      v35 = v11;
      v36 = v99;
      v37 = v95;
      MusicLibrary.supportedStatus<A, B>(for:action:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      (*v88)(v33, v37);
      v38 = v36;
      v11 = v35;
      v30 = v34;
      (*v87)(v17, v38, v11);
      v39 = (*v86)(v17, v11);
      v40 = *v34;
      if (v39 == v93)
      {
        v40(v99, v11);

        v40(v17, v11);
        outlined destroy of TaskPriority?(v89, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMR);
        v44 = v81;
        v46 = v11;
        v49 = v72;
        (*(v81 + 104))(v72, v93, v11);
        goto LABEL_15;
      }

      v40(v17, v11);
      v27 = v89;
      outlined init with take of URL?(v89, v22, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMR);
      v41 = *v84;
      if ((*v84)(v22, 1, v11) == 1)
      {
        v31 = v85;
        (*v83)(v85, v99, v11);
        v42 = v41(v22, 1, v11);
        v32 = v98;
        if (v42 != 1)
        {
          outlined destroy of TaskPriority?(v22, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMR);
        }
      }

      else
      {
        v40(v99, v11);
        v31 = v85;
        (*v83)(v85, v22, v11);
        v32 = v98;
      }

      v28 = v32 + 1;
      (v91)(v31, 0, 1, v11);
      outlined init with take of URL?(v31, v27, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMR);
      result = v97 + 48;
      if (v90 == v28)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v43 = v71;
    outlined init with take of URL?(v27, v71, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMR);
    v44 = v81;
    v45 = *(v81 + 48);
    v46 = v11;
    if (v45(v43, 1, v11) == 1)
    {
      v47 = enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:);
      v48 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
      v49 = v72;
      (*(*(v48 - 8) + 104))(v72, v47, v48);
      (*(v44 + 104))(v49, enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:), v11);
      v50 = v45(v43, 1, v11) == 1;
      v51 = v43;
      v52 = v74;
      if (!v50)
      {
        outlined destroy of TaskPriority?(v51, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMR);
      }
    }

    else
    {
      v49 = v72;
      (*(v44 + 32))(v72, v43, v11);
LABEL_15:
      v52 = v74;
    }

    v53 = v73;
    (*(v44 + 16))(v73, v49, v46);
    v54 = *(v44 + 80);
    v99 = swift_allocObject();
    v55 = *(v44 + 32);
    v55(&v99[(v54 + 16) & ~v54], v53, v46);
    v55(v82, v49, v46);
    v56 = (v54 + 32) & ~v54;
    v57 = (v52 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 103) & 0xFFFFFFFFFFFFFFF8;
    v59 = v78;
    v60 = *(v78 - 8);
    v61 = (v58 + *(v60 + 80) + 8) & ~*(v60 + 80);
    v62 = swift_allocObject();
    v63 = v75;
    *(v62 + 16) = v59;
    *(v62 + 24) = v63;
    v55((v62 + v56), v82, v46);
    outlined init with take of PresentationSource(v76, v62 + v57);
    v64 = v96;
    *(v62 + v58) = v96;
    (*(v60 + 32))(v62 + v61, v77, v59);
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
    v66 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v67 = (*(v65 + 64) + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    outlined init with take of URL?(v79, v68 + v66, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
    *(v68 + v67) = v64;

    v69 = v80;
    v70 = v99;
    *v80 = partial apply for closure #1 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
    v69[1] = v70;
    v69[2] = &async function pointer to partial apply for closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
    v69[3] = v62;
    v69[4] = &async function pointer to partial apply for closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
    v69[5] = v68;
  }

  return result;
}

unint64_t closure #1 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  __chkstk_darwin();
  v53 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v50 = &v47 - v5;
  v6 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v47 - v15;
  v16 = __chkstk_darwin();
  v18 = &v47 - v17;
  v19 = *(v13 + 16);
  v49 = a1;
  v19(&v47 - v17, a1, v12, v16);
  v20 = (*(v13 + 88))(v18, v12);
  if (v20 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v20 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      if (one-time initialization token for actions != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.actions);
      v30 = v48;
      (v19)(v48, v49, v12);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = v53;
        *v33 = 136315138;
        LODWORD(v52) = v32;
        (v19)(v47, v30, v12);
        v34 = String.init<A>(describing:)();
        v36 = v35;
        v37 = *(v13 + 8);
        v37(v30, v12);
        v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v34, v36, &v54);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v52, "Unknown status=%s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
      }

      else
      {

        v37 = *(v13 + 8);
        v37(v30, v12);
      }

      v28 = 0x206E776F6E6B6E55;
      v37(v18, v12);
      return v28;
    }

    return 0;
  }

  (*(v13 + 96))(v18, v12);
  (*(v7 + 32))(v11, v18, v6);
  (*(v7 + 16))(v9, v11, v6);
  v21 = (*(v7 + 88))(v9, v6);
  if (v21 != enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
  {
    if (v21 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      v28 = 0xD000000000000010;
      (*(v7 + 8))(v11, v6);
      return v28;
    }

    if (v21 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      goto LABEL_27;
    }

    v39 = enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:);
    v40 = *(v7 + 8);
    v41 = v21;
    v40(v11, v6);
    if (v41 != v39)
    {
      v28 = 0x206E776F6E6B6E55;
      v40(v9, v6);
      return v28;
    }

    return 0;
  }

  (*(v7 + 96))(v9, v6);
  v22 = v52;
  v23 = v50;
  v24 = v9;
  v25 = v51;
  (*(v52 + 32))(v50, v24, v51);
  v26 = v53;
  (*(v22 + 16))(v53, v23, v25);
  v27 = (*(v22 + 88))(v26, v25);
  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) || v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
  {
    goto LABEL_26;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD00000000000001CLL;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.libraryAddIneligibleContent(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD00000000000001ELL;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.invalidContentType(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000014;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionAccountLinkingRequired(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000025;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
LABEL_26:
    (*(v22 + 8))(v23, v25);
LABEL_27:
    (*(v7 + 8))(v11, v6);
    return 0;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.sharedLibrary(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000016;
  }

  else
  {
    v28 = 0x206E776F6E6B6E55;
    v43 = enum case for MusicLibrary.AddStatus.UnaddableReason.unknown(_:);
    v44 = v23;
    v45 = *(v22 + 8);
    v46 = v27;
    v45(v44, v25);
    (*(v7 + 8))(v11, v6);
    if (v46 != v43)
    {
      v45(v53, v25);
    }
  }

  return v28;
}

uint64_t closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[72] = a6;
  v6[71] = a5;
  v6[70] = a4;
  v6[69] = a3;
  v6[68] = a2;
  v6[67] = a1;
  v7 = type metadata accessor for ContentRating();
  v6[73] = v7;
  v6[74] = *(v7 - 8);
  v6[75] = swift_task_alloc();
  v6[76] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit13ContentRatingOSg_ADtMd, &_s8MusicKit13ContentRatingOSg_ADtMR);
  v6[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v8 = type metadata accessor for Track();
  v6[81] = v8;
  v6[82] = *(v8 - 8);
  v6[83] = swift_task_alloc();
  v6[84] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMR);
  v6[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR);
  v6[86] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGMR);
  v6[87] = v9;
  v6[88] = *(v9 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
  v6[92] = swift_task_alloc();
  v10 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v6[93] = v10;
  v6[94] = *(v10 - 8);
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)()
{
  v104 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v3);
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v11 = *(v0 + 776);
    v12 = *(v0 + 768);
    v13 = *(v0 + 752);
    v14 = *(v0 + 744);
    (*(v13 + 32))(v11, *(v0 + 736), v14);
    v15 = *(v13 + 16);
    v15(v12, v11, v14);
    v16 = (*(v13 + 88))(v12, v14);
    if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {
      if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
      {
        if (v16 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
        {
          v35 = *(v0 + 776);
          v36 = *(v0 + 752);
          v37 = *(v0 + 744);
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
          *(v0 + 480) = 0;
          *(v0 + 488) = -2;
          specialized static SubscriptionUpsellPresenter.present(for:)(v0 + 448);
          outlined destroy of SubscriptionUpsellPresenter.Placement(v0 + 448);
          (*(v36 + 8))(v35, v37);
        }

        else
        {
          if (one-time initialization token for actions != -1)
          {
            swift_once();
          }

          v42 = *(v0 + 776);
          v43 = *(v0 + 760);
          v44 = *(v0 + 744);
          v45 = type metadata accessor for Logger();
          __swift_project_value_buffer(v45, static Logger.actions);
          v15(v43, v42, v44);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.fault.getter();
          v48 = os_log_type_enabled(v46, v47);
          v49 = *(v0 + 776);
          v50 = *(v0 + 760);
          v51 = *(v0 + 752);
          v52 = *(v0 + 744);
          if (v48)
          {
            v102 = *(v0 + 776);
            v53 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v103 = v97;
            *v53 = 136315138;
            lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
            v54 = dispatch thunk of CustomStringConvertible.description.getter();
            v56 = v55;
            v57 = *(v51 + 8);
            v57(v50, v52);
            v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v54, v56, &v103);

            *(v53 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v46, v47, "Unhandled unaddableReason=%s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v97);

            v59 = v102;
          }

          else
          {

            v57 = *(v51 + 8);
            v57(v50, v52);
            v59 = v49;
          }

          v57(v59, v52);
          v57(*(v0 + 768), *(v0 + 744));
        }

LABEL_43:

        v83 = *(v0 + 8);

        return v83();
      }

      *(v0 + 816) = type metadata accessor for MainActor();
      *(v0 + 824) = static MainActor.shared.getter();
      v21 = dispatch thunk of Actor.unownedExecutor.getter();
      v23 = v22;
      *(v0 + 832) = v21;
      *(v0 + 840) = v22;
      v24 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
      v25 = v21;
LABEL_22:

      return _swift_task_switch(v24, v25, v23);
    }

    *(v0 + 792) = type metadata accessor for MainActor();
    *(v0 + 800) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    v20 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
LABEL_21:
    v24 = v20;
    v25 = v17;
    v23 = v19;
    goto LABEL_22;
  }

  v4 = *(v0 + 552);
  outlined destroy of TaskPriority?(*(v0 + 736), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
  MusicItemCollection.init(arrayLiteral:)();
  v5 = *(v4 + 16);
  *(v0 + 784) = v5;
  if (v5)
  {
    v6 = *(v0 + 552);
    *(v0 + 872) = 0;
    v7 = *(v6 + 56);
    __swift_project_boxed_opaque_existential_0Tm((v6 + 32), v7);
    v8 = swift_task_alloc();
    *(v0 + 880) = v8;
    *v8 = v0;
    v8[1] = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
    v9 = *(v0 + 688);

    return MusicPlaylistAddable.tracks.getter(v9, v7);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
  {
    if (!*(v0 + 784))
    {
      goto LABEL_42;
    }

    goto LABEL_14;
  }

  v38 = *(v0 + 680);
  v39 = *(v0 + 672);
  (*(*(v0 + 704) + 16))(*(v0 + 712), *(v0 + 728), *(v0 + 696));
  lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v40 = *(v39 + 36);
  lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  v101 = v40;
  if (*(v38 + v40) == *(v0 + 528))
  {
LABEL_20:
    outlined destroy of TaskPriority?(*(v0 + 680), &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMR);
    *(v0 + 888) = type metadata accessor for MainActor();
    *(v0 + 896) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v41;
    v20 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
    goto LABEL_21;
  }

  v60 = *(v0 + 656);
  v94 = *(v0 + 608);
  v93 = (v60 + 16);
  v61 = *(v0 + 592);
  v91 = (v61 + 56);
  v92 = (v61 + 104);
  v84 = (v61 + 32);
  v86 = (v61 + 8);
  v87 = v38;
  v89 = (v60 + 8);
  v90 = (v61 + 48);
  v88 = enum case for ContentRating.clean(_:);
  while (1)
  {
    v66 = *(v0 + 664);
    v98 = *(v0 + 640);
    v67 = *(v0 + 632);
    v95 = *(v0 + 616);
    v68 = *(v0 + 584);
    v69 = dispatch thunk of Collection.subscript.read();
    (*v93)(v66);
    v69(v0 + 496, 0);
    dispatch thunk of Collection.formIndex(after:)();
    Track.contentRating.getter();
    (*v92)(v67, v88, v68);
    (*v91)(v67, 0, 1, v68);
    v70 = *(v94 + 48);
    outlined init with copy of TaskPriority?(v98, v95, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
    outlined init with copy of TaskPriority?(v67, v95 + v70, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
    v71 = *v90;
    if ((*v90)(v95, 1, v68) == 1)
    {
      break;
    }

    v72 = *(v0 + 584);
    outlined init with copy of TaskPriority?(*(v0 + 616), *(v0 + 624), &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
    v73 = v71(v95 + v70, 1, v72);
    v74 = *(v0 + 664);
    v75 = *(v0 + 648);
    v76 = *(v0 + 640);
    v77 = *(v0 + 632);
    v78 = *(v0 + 624);
    if (v73 == 1)
    {
      v79 = *(v0 + 584);
      outlined destroy of TaskPriority?(*(v0 + 632), &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
      outlined destroy of TaskPriority?(v76, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
      (*v89)(v74, v75);
      (*v86)(v78, v79);
      goto LABEL_31;
    }

    v99 = *(v0 + 616);
    v80 = *(v0 + 600);
    v81 = *(v0 + 584);
    (*v84)(v80, v95 + v70, v81);
    lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type ContentRating and conformance ContentRating, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    v82 = *v86;
    (*v86)(v80, v81);
    outlined destroy of TaskPriority?(v77, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
    outlined destroy of TaskPriority?(v76, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
    (*v89)(v74, v75);
    v82(v78, v81);
    outlined destroy of TaskPriority?(v99, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
    if (v85)
    {
      goto LABEL_41;
    }

LABEL_32:
    dispatch thunk of Collection.endIndex.getter();
    if (*(v87 + v101) == *(v0 + 528))
    {
      goto LABEL_20;
    }
  }

  v62 = *(v0 + 664);
  v63 = *(v0 + 648);
  v64 = *(v0 + 640);
  v65 = *(v0 + 584);
  outlined destroy of TaskPriority?(*(v0 + 632), &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
  outlined destroy of TaskPriority?(v64, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
  (*v89)(v62, v63);
  if (v71(v95 + v70, 1, v65) != 1)
  {
LABEL_31:
    outlined destroy of TaskPriority?(*(v0 + 616), &_s8MusicKit13ContentRatingOSg_ADtMd, &_s8MusicKit13ContentRatingOSg_ADtMR);
    goto LABEL_32;
  }

  outlined destroy of TaskPriority?(*(v0 + 616), &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
LABEL_41:
  outlined destroy of TaskPriority?(*(v0 + 680), &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMR);
  if (!*(v0 + 784))
  {
LABEL_42:
    (*(*(v0 + 704) + 8))(*(v0 + 728), *(v0 + 696));
    goto LABEL_43;
  }

LABEL_14:
  v100 = *(v0 + 576);
  v26 = *(v0 + 552);
  v28 = v26[7];
  v27 = v26[8];
  v29 = v26[9];
  v30 = __swift_project_boxed_opaque_existential_0Tm(v26 + 4, v28);
  v96 = (*(v100 + 8) + **(v100 + 8));
  v31 = swift_task_alloc();
  *(v0 + 912) = v31;
  *v31 = v0;
  v31[1] = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  v32 = *(v0 + 576);
  v33 = *(v0 + 568);
  v34 = *(v0 + 728);

  return v96(v34, v30, v28, v27, v29, v33, v32);
}

{

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 280);

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 544);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 280), 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
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

    v12 = *(v0 + 544);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 424) = &block_descriptor_35;
    v14 = _Block_copy((v0 + 400));
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
    v18 = v3;
    v5(v12, v18, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);

    outlined destroy of Alert(v0 + 280);
    v19 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 312), 1, 0, 0);

    outlined destroy of Alert(v0 + 280);
    v19 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  }

  return _swift_task_switch(v19, 0, 0);
}

{
  (*(v0[94] + 8))(v0[97], v0[93]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *v0;

  v2 = *(v1 + 840);
  v3 = *(v1 + 832);

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), v3, v2);
}

{

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

{

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    MusicItemCollection.init(arrayLiteral:)();
    if (v4(v3, 1, v2) != 1)
    {
      outlined destroy of TaskPriority?(v0[86], &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR);
    }
  }

  else
  {
    (*(v1 + 32))(v0[90], v3, v2);
  }

  v5 = v0[98];
  v6 = v0[90];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[109] + 1;
  static MusicItemCollection.+= infix(_:_:)();
  (*(v7 + 8))(v6, v8);
  if (v9 == v5)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
    {
      if (!v0[98])
      {
        goto LABEL_31;
      }

      goto LABEL_10;
    }

    v25 = v0[85];
    v26 = v0[84];
    (*(v0[88] + 16))(v0[89], v0[91], v0[87]);
    lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v27 = *(v26 + 36);
    lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    v70 = v27;
    if (*(v25 + v27) == v0[66])
    {
LABEL_17:
      outlined destroy of TaskPriority?(v0[85], &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMR);
      v0[111] = type metadata accessor for MainActor();
      v0[112] = static MainActor.shared.getter();
      v29 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), v29, v28);
    }

    v30 = v0[82];
    v64 = v0[76];
    v63 = (v30 + 16);
    v31 = v0[74];
    v61 = (v31 + 56);
    v62 = (v31 + 104);
    v54 = (v31 + 32);
    v56 = (v31 + 8);
    v57 = v25;
    v59 = (v30 + 8);
    v60 = (v31 + 48);
    v58 = enum case for ContentRating.clean(_:);
    while (1)
    {
      v36 = v0[83];
      v37 = v0[79];
      v65 = v0[77];
      v67 = v0[80];
      v38 = v0[73];
      v39 = dispatch thunk of Collection.subscript.read();
      (*v63)(v36);
      v39(v0 + 62, 0);
      dispatch thunk of Collection.formIndex(after:)();
      Track.contentRating.getter();
      (*v62)(v37, v58, v38);
      (*v61)(v37, 0, 1, v38);
      v40 = *(v64 + 48);
      outlined init with copy of TaskPriority?(v67, v65, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
      outlined init with copy of TaskPriority?(v37, v65 + v40, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
      v41 = *v60;
      if ((*v60)(v65, 1, v38) == 1)
      {
        break;
      }

      v42 = v0[73];
      outlined init with copy of TaskPriority?(v0[77], v0[78], &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
      v43 = v41(v65 + v40, 1, v42);
      v44 = v0[83];
      v45 = v0[81];
      v46 = v0[80];
      v47 = v0[79];
      v48 = v0[78];
      if (v43 == 1)
      {
        v49 = v0[73];
        outlined destroy of TaskPriority?(v0[79], &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
        outlined destroy of TaskPriority?(v46, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
        (*v59)(v44, v45);
        (*v56)(v48, v49);
LABEL_22:
        outlined destroy of TaskPriority?(v0[77], &_s8MusicKit13ContentRatingOSg_ADtMd, &_s8MusicKit13ContentRatingOSg_ADtMR);
        goto LABEL_23;
      }

      v68 = v0[77];
      v50 = v0[75];
      v51 = v0[73];
      (*v54)(v50, v65 + v40, v51);
      lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type ContentRating and conformance ContentRating, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *v56;
      (*v56)(v50, v51);
      outlined destroy of TaskPriority?(v47, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
      outlined destroy of TaskPriority?(v46, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
      (*v59)(v44, v45);
      v52(v48, v51);
      outlined destroy of TaskPriority?(v68, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
      if (v55)
      {
        goto LABEL_30;
      }

LABEL_23:
      dispatch thunk of Collection.endIndex.getter();
      if (*(v57 + v70) == v0[66])
      {
        goto LABEL_17;
      }
    }

    v32 = v0[83];
    v33 = v0[81];
    v34 = v0[80];
    v35 = v0[73];
    outlined destroy of TaskPriority?(v0[79], &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
    outlined destroy of TaskPriority?(v34, &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
    (*v59)(v32, v33);
    if (v41(v65 + v40, 1, v35) == 1)
    {
      outlined destroy of TaskPriority?(v0[77], &_s8MusicKit13ContentRatingOSgMd, &_s8MusicKit13ContentRatingOSgMR);
LABEL_30:
      outlined destroy of TaskPriority?(v0[85], &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMR);
      if (!v0[98])
      {
LABEL_31:
        (*(v0[88] + 8))(v0[91], v0[87]);

        v53 = v0[1];

        return v53();
      }

LABEL_10:
      v69 = v0[72];
      v10 = v0[69];
      v12 = v10[7];
      v11 = v10[8];
      v13 = v10[9];
      v14 = __swift_project_boxed_opaque_existential_0Tm(v10 + 4, v12);
      v66 = (*(v69 + 8) + **(v69 + 8));
      v15 = swift_task_alloc();
      v0[114] = v15;
      *v15 = v0;
      v15[1] = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
      v16 = v0[72];
      v17 = v0[71];
      v18 = v0[91];

      return v66(v18, v14, v12, v11, v13, v17, v16);
    }

    goto LABEL_22;
  }

  v20 = v0[109];
  v0[109] = v20 + 1;
  v21 = v0[69] + 48 * v20;
  v22 = *(v21 + 104);
  __swift_project_boxed_opaque_existential_0Tm((v21 + 80), v22);
  v23 = swift_task_alloc();
  v0[110] = v23;
  *v23 = v0;
  v23[1] = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  v24 = v0[86];

  return MusicPlaylistAddable.tracks.getter(v24, v22);
}

{

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 208);

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 544);

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

    v12 = *(v0 + 544);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 376) = &block_descriptor_1;
    v14 = _Block_copy((v0 + 352));
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
    v5(v12, v18, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);

    outlined destroy of Alert(v0 + 208);
    v19 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 240), 1, 0, 0);

    outlined destroy of Alert(v0 + 208);
    v19 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  }

  return _swift_task_switch(v19, 0, 0);
}

{
  (*(v0[88] + 8))(v0[91], v0[87]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(uint64_t a1)
{
  *(v1 + 808) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), v3, v2);
}

{
  v2 = v1[68];
  v3 = static MainActor.shared.getter();
  v1[106] = v3;
  v4 = swift_task_alloc();
  v1[107] = v4;
  *(v4 + 16) = 2;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[108] = v5;
  *v5 = v1;
  v5[1] = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 489, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v4, &type metadata for Bool);
}

{
  *(v1 + 904) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), v3, v2);
}

uint64_t MusicPlaylistAddable.tracks.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = type metadata accessor for Playlist.Entry.InternalItem();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV5EntryVSgMd, &_s8MusicKit8PlaylistV5EntryVSgMR);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Entry();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5TrackOSgMd, &_s8MusicKit5TrackOSgMR);
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A5VideoVSgMd, &_s8MusicKit0A5VideoVSgMR);
  v3[19] = swift_task_alloc();
  v8 = type metadata accessor for MusicVideo();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
  v3[24] = swift_task_alloc();
  v9 = type metadata accessor for Song();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGMR);
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  v3[36] = swift_task_alloc();
  v11 = type metadata accessor for Playlist();
  v3[37] = v11;
  v3[38] = *(v11 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  v3[42] = swift_task_alloc();
  v3[43] = *(a2 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v12 = type metadata accessor for Album();
  v3[52] = v12;
  v3[53] = *(v12 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return _swift_task_switch(MusicPlaylistAddable.tracks.getter, 0, 0);
}

uint64_t MusicPlaylistAddable.tracks.getter()
{
  v150 = v0;
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[43];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v3 + 16);
  v0[56] = v6;
  v0[57] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v145 = v6;
  v6(v2, v4, v5);
  v7 = swift_dynamicCast();
  v8 = *(v1 + 56);
  if (v7)
  {
    v9 = v0[55];
    v10 = v0[52];
    v11 = v0[53];
    v12 = v0[42];
    v8(v12, 0, 1, v10);
    (*(v11 + 32))(v9, v12, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = swift_allocObject();
    v0[58] = v13;
    *(v13 + 16) = xmmword_1004F2F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA5AlbumVGMd, &_s8MusicKit07PartialA13AsyncPropertyCyAA5AlbumVGMR);
    *(v13 + 32) = static PartialMusicProperty<A>.tracks.getter();
    v14 = swift_task_alloc();
    v0[59] = v14;
    v15 = lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type Album and conformance Album, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    *v14 = v0;
    v14[1] = MusicPlaylistAddable.tracks.getter;
    v16 = v0[54];
    v17 = v0[52];

    return MusicItem<>.with(_:)(v16, v13, v17, &protocol witness table for Album, &protocol witness table for Album, v15);
  }

  v18 = v0[50];
  v19 = v0[42];
  v20 = v0[38];
  v22 = v0[4];
  v21 = v0[5];
  v8(v19, 1, 1, v0[52]);
  outlined destroy of TaskPriority?(v19, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  v145(v18, v21, v22);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v25 = v0[41];
    v26 = v0[37];
    v27 = v0[38];
    v28 = v0[36];
    v24(v28, 0, 1, v26);
    (*(v27 + 32))(v25, v28, v26);
    v0[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v29 = swift_allocObject();
    v0[62] = v29;
    *(v29 + 16) = xmmword_1004F2F10;
    v0[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA8PlaylistVGMd, &_s8MusicKit07PartialA13AsyncPropertyCyAA8PlaylistVGMR);
    *(v29 + 32) = static PartialMusicProperty<A>.tracks.getter();
    v30 = swift_task_alloc();
    v0[64] = v30;
    *v30 = v0;
    v30[1] = MusicPlaylistAddable.tracks.getter;
    v31 = v0[40];
    v32 = v0[37];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v31, v29, v32, &protocol witness table for Playlist);
  }

  v33 = v0[49];
  v34 = v0[36];
  v35 = v0[26];
  v37 = v0[4];
  v36 = v0[5];
  v24(v34, 1, 1, v0[37]);
  outlined destroy of TaskPriority?(v34, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  v145(v33, v36, v37);
  v38 = swift_dynamicCast();
  v39 = *(v35 + 56);
  if (v38)
  {
    v40 = v0[30];
    v146 = v0[29];
    v41 = v0[28];
    v42 = v0[25];
    v43 = v0[26];
    v44 = v0[24];
    v46 = v0[16];
    v45 = v0[17];
    v47 = v0[3];
    v39(v44, 0, 1, v42);
    (*(v43 + 32))(v41, v44, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMd, &_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMR);
    v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1004F2400;
    (*(v43 + 16))(v49 + v48, v41, v42);
    (*(v45 + 104))(v49 + v48, enum case for Track.song(_:), v46);
    MusicItemCollection.init(arrayLiteral:)();
    (*(v43 + 8))(v41, v42);
LABEL_13:
    (*(v40 + 56))(v47, 0, 1, v146);
    goto LABEL_14;
  }

  v50 = v0[48];
  v51 = v0[24];
  v52 = v0[21];
  v54 = v0[4];
  v53 = v0[5];
  v39(v51, 1, 1, v0[25]);
  outlined destroy of TaskPriority?(v51, &_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
  v145(v50, v53, v54);
  v55 = swift_dynamicCast();
  v56 = *(v52 + 56);
  if (v55)
  {
    v40 = v0[30];
    v146 = v0[29];
    v57 = v0[23];
    v58 = v0[20];
    v59 = v0[21];
    v60 = v0[19];
    v62 = v0[16];
    v61 = v0[17];
    v47 = v0[3];
    v56(v60, 0, 1, v58);
    (*(v59 + 32))(v57, v60, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMd, &_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMR);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1004F2400;
    (*(v59 + 16))(v64 + v63, v57, v58);
    (*(v61 + 104))(v64 + v63, enum case for Track.musicVideo(_:), v62);
    MusicItemCollection.init(arrayLiteral:)();
    (*(v59 + 8))(v57, v58);
    goto LABEL_13;
  }

  v66 = v0[47];
  v67 = v0[19];
  v68 = v0[17];
  v70 = v0[4];
  v69 = v0[5];
  v56(v67, 1, 1, v0[20]);
  outlined destroy of TaskPriority?(v67, &_s8MusicKit0A5VideoVSgMd, &_s8MusicKit0A5VideoVSgMR);
  v145(v66, v69, v70);
  v71 = swift_dynamicCast();
  v72 = *(v68 + 56);
  if (v71)
  {
    v73 = v0[29];
    v74 = v0[30];
    v76 = v0[17];
    v75 = v0[18];
    v78 = v0[15];
    v77 = v0[16];
    v79 = v0[3];
    v72(v78, 0, 1, v77);
    (*(v76 + 32))(v75, v78, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMd, &_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMR);
    v80 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1004F2400;
    (*(v76 + 16))(v81 + v80, v75, v77);
    MusicItemCollection.init(arrayLiteral:)();
    (*(v76 + 8))(v75, v77);
    (*(v74 + 56))(v79, 0, 1, v73);
  }

  else
  {
    v82 = v0[46];
    v83 = v0[15];
    v84 = v0[12];
    v86 = v0[4];
    v85 = v0[5];
    v72(v83, 1, 1, v0[16]);
    outlined destroy of TaskPriority?(v83, &_s8MusicKit5TrackOSgMd, &_s8MusicKit5TrackOSgMR);
    v145(v82, v85, v86);
    v87 = swift_dynamicCast();
    v88 = *(v84 + 56);
    if (v87)
    {
      v89 = v0[14];
      v90 = v0[11];
      v91 = v0[12];
      v93 = v0[9];
      v92 = v0[10];
      v94 = v0[6];
      v95 = v0[7];
      v88(v92, 0, 1, v90);
      (*(v91 + 32))(v89, v92, v90);
      Playlist.Entry.internalItem.getter();
      v96 = (*(v95 + 88))(v93, v94);
      if (v96 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        v97 = v0[30];
        v98 = v0[21];
        v99 = v0[22];
        v100 = v0[20];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v104 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v104, v0[6]);
        (*(v98 + 32))(v99, v104, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMd, &_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMR);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1004F2400;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.musicVideo(_:);
      }

      else
      {
        if (v96 != enum case for Playlist.Entry.InternalItem.song(_:))
        {
          if (one-time initialization token for actions != -1)
          {
            swift_once();
          }

          v113 = v0[13];
          v114 = v0[14];
          v115 = v0[11];
          v116 = v0[12];
          v117 = type metadata accessor for Logger();
          __swift_project_value_buffer(v117, static Logger.actions);
          (*(v116 + 16))(v113, v114, v115);
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.fault.getter();
          v120 = os_log_type_enabled(v118, v119);
          v122 = v0[13];
          v121 = v0[14];
          v123 = v0[11];
          v124 = v0[12];
          if (v120)
          {
            v148 = v0[14];
            v125 = v0[7];
            v126 = v0[8];
            v127 = v0[6];
            v140 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v149 = v144;
            *v140 = 136315138;
            v142 = v119;
            Playlist.Entry.internalItem.getter();
            lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
            v128 = v127;
            v129 = dispatch thunk of CustomStringConvertible.description.getter();
            v131 = v130;
            (*(v125 + 8))(v126, v128);
            v132 = *(v124 + 8);
            v132(v122, v123);
            v133 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v129, v131, &v149);

            *(v140 + 4) = v133;
            _os_log_impl(&_mh_execute_header, v118, v142, "Unsupported Playlist.Entry.InternalItem=%s", v140, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v144);

            v132(v148, v123);
          }

          else
          {

            v134 = *(v124 + 8);
            v134(v122, v123);
            v134(v121, v123);
          }

          v135 = v0[9];
          v136 = v0[6];
          v137 = v0[7];
          (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);
          (*(v137 + 8))(v135, v136);
          goto LABEL_14;
        }

        v97 = v0[30];
        v98 = v0[26];
        v99 = v0[27];
        v100 = v0[25];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v112 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v112, v0[6]);
        (*(v98 + 32))(v99, v112, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMd, &_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMR);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1004F2400;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.song(_:);
      }

      (*(v101 + 104))(v106 + v105, *v107, v102);
      MusicItemCollection.init(arrayLiteral:)();
      (*(v98 + 8))(v99, v100);
      (*(v103 + 8))(v143, v141);
      (*(v97 + 56))(v139, 0, 1, v147);
    }

    else
    {
      v108 = v0[29];
      v109 = v0[30];
      v110 = v0[10];
      v111 = v0[3];
      v88(v110, 1, 1, v0[11]);
      outlined destroy of TaskPriority?(v110, &_s8MusicKit8PlaylistV5EntryVSgMd, &_s8MusicKit8PlaylistV5EntryVSgMR);
      (*(v109 + 56))(v111, 1, 1, v108);
    }
  }

LABEL_14:

  v65 = v0[1];

  return v65();
}

{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  else
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  else
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[30];
  Playlist.tracks.getter();
  v4 = *(v3 + 48);
  v0[66] = v4;
  v0[67] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[35];
  if (v5 == 1)
  {
    outlined destroy of TaskPriority?(v0[35], &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR);
LABEL_7:
    v17 = v0[40];
    v16 = v0[41];
    v18 = v0[37];
    v19 = v0[38];
    Playlist.tracks.getter();
    v20 = *(v19 + 8);
    v20(v17, v18);
    v20(v16, v18);

    v21 = v0[1];

    return v21();
  }

  v7 = v0[29];
  v8 = v0[30];
  v9 = MusicItemCollection.hasNextBatch.getter();
  v10 = *(v8 + 8);
  v0[68] = v10;
  v0[69] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = swift_allocObject();
  v0[70] = v11;
  *(v11 + 16) = xmmword_1004F2F10;
  static PartialMusicProperty<A>.tracks.getter();
  v12 = MusicRelationshipProperty.limit(_:)();

  *(v11 + 32) = v12;
  v13 = swift_task_alloc();
  v0[71] = v13;
  *v13 = v0;
  v13[1] = MusicPlaylistAddable.tracks.getter;
  v14 = v0[39];
  v15 = v0[37];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v14, v11, v15, &protocol witness table for Playlist);
}

{
  v29 = v0;
  (*(v0[38] + 8))(v0[41], v0[37]);
  v1 = v0[65];
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v19 = String.init<A>(describing:)();
    v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  else
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v32 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = *(v0[38] + 8);
  v3(v0[40], v2);
  v3(v1, v2);
  v4 = v0[72];
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v5 = v0[56];
  v6 = v0[45];
  v8 = v0[4];
  v7 = v0[5];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.actions);
  v5(v6, v7, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[56];
    v14 = v0[44];
    v13 = v0[45];
    v30 = v11;
    v15 = v0[43];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    v12(v14, v13, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v20, v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(describing:)();
    v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v23, v31);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v30, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[45];
    v26 = v0[43];
    v27 = v0[4];

    (*(v26 + 8))(v25, v27);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v28 = v0[1];

  return v28();
}

{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  else
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  if ((*(v0 + 528))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v1, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR);
  }

  else
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 248);
    (*(*(v0 + 240) + 32))(v4, v1, v2);
    static MusicItemCollection.+= infix(_:_:)();
    v3(v4, v2);
  }

  if (MusicItemCollection.hasNextBatch.getter())
  {
    v5 = swift_task_alloc();
    *(v0 + 600) = v5;
    v6 = lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type Track and conformance Track, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    *v5 = v0;
    v5[1] = MusicPlaylistAddable.tracks.getter;
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);

    return MusicItemCollection.nextBatch<>(limit:)(v7, 10000, 0, v8, v6);
  }

  else
  {
    v9 = *(v0 + 584);
    v10 = *(v0 + 328);
    v11 = *(v0 + 296);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 24);
    v9(*(v0 + 320), v11);
    v9(v10, v11);
    (*(v14 + 32))(v15, v12, v13);
    (*(v14 + 56))(v15, 0, 1, v13);

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  v29 = v0;
  (*(v0[53] + 8))(v0[55], v0[52]);
  v1 = v0[60];
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v19 = String.init<A>(describing:)();
    v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

{
  v33 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  (*(v0 + 544))(*(v0 + 256), *(v0 + 232));
  v1(v2, v4);
  v1(v3, v4);
  v5 = *(v0 + 608);
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 360);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.actions);
  v6(v7, v8, v9);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 448);
    v15 = *(v0 + 352);
    v14 = *(v0 + 360);
    v31 = v12;
    v16 = *(v0 + 344);
    v17 = *(v0 + 32);
    v18 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v18 = 136446466;
    v13(v15, v14, v17);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v23 = String.init<A>(describing:)();
    v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v24, v32);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v11, v31, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 360);
    v27 = *(v0 + 344);
    v28 = *(v0 + 32);

    (*(v27 + 8))(v26, v28);
  }

  (*(*(v0 + 240) + 56))(*(v0 + 24), 1, 1, *(v0 + 232));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t MusicPlaylistAddable.tracks.getter(uint64_t a1)
{
  v3 = v1[54];
  v2 = v1[55];
  v4 = v1[52];
  v5 = v1[53];
  Album.tracks.getter();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);

  v7 = v1[1];

  return v7();
}

{
  v2 = v1[66];
  v4 = v1[38];
  v3 = v1[39];
  v5 = v1[37];
  v6 = v1[34];
  v7 = v1[29];
  Playlist.tracks.getter();
  v8 = *(v4 + 8);
  v1[73] = v8;
  v1[74] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = v2(v6, 1, v7);
  v10 = v1[29];
  if (v9 == 1)
  {
    v11 = v1[66];
    v12 = v1[34];
    MusicItemCollection.init(arrayLiteral:)();
    if (v11(v12, 1, v10) != 1)
    {
      outlined destroy of TaskPriority?(v1[34], &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR);
    }
  }

  else
  {
    (*(v1[30] + 32))(v1[32], v1[34], v1[29]);
  }

  if (MusicItemCollection.hasNextBatch.getter())
  {
    v13 = swift_task_alloc();
    v1[75] = v13;
    v14 = lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type Track and conformance Track, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    *v13 = v1;
    v13[1] = MusicPlaylistAddable.tracks.getter;
    v15 = v1[33];
    v16 = v1[29];

    return MusicItemCollection.nextBatch<>(limit:)(v15, 10000, 0, v16, v14);
  }

  else
  {
    v17 = v1[73];
    v18 = v1[41];
    v19 = v1[37];
    v20 = v1[32];
    v21 = v1[29];
    v22 = v1[30];
    v23 = v1[3];
    v17(v1[40], v19);
    v17(v18, v19);
    (*(v22 + 32))(v23, v20, v21);
    (*(v22 + 56))(v23, 0, 1, v21);

    v24 = v1[1];

    return v24();
  }
}

uint64_t closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
LABEL_8:

    v22 = *(v0 + 8);

    return v22();
  }

  v4 = *(v0 + 104);
  outlined init with take of Actions.MetricsReportingContext(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  if (!*(v4 + 16))
  {
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    goto LABEL_8;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 104);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_0Tm(v6 + 4, v7);
  *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7, *(v8 + 8));
  *(v0 + 264) = v9;
  v10 = type metadata accessor for URL();
  *(v0 + 272) = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  *(v0 + 280) = v12;
  *(v0 + 288) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v5, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  v14 = v6[7];
  v15 = v6[8];
  __swift_project_boxed_opaque_existential_0Tm(v6 + 4, v14);
  *(inited + 32) = MusicItem.metricsContentType.getter(v14, *(v15 + 8));
  *(inited + 40) = v16;
  *(inited + 48) = 0;
  *(inited + 56) = xmmword_1004F2F20;
  *(inited + 72) = 1;
  *(v0 + 296) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
  *(v0 + 304) = v17;
  *(v0 + 312) = v18;
  *(v0 + 328) = v19;
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for MainActor();
  *(v0 + 320) = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), v21, v20);
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
  *(v6 + 16) = 773;
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

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized Actions.AddToPlaylist.Context.menuItemTitle.getter()
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

double specialized Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v31 = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  __chkstk_darwin();
  v17 = &v27 - v16;
  v18 = *(a6 - 8);
  __chkstk_darwin();
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit0D15PlaylistAddable_0dE8Internal0D17LibraryActionablepGMd, &_ss23_ContiguousArrayStorageCy8MusicKit0D15PlaylistAddable_0dE8Internal0D17LibraryActionablepGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004F2400;
  *(v21 + 56) = a5;
  *(v21 + 64) = a7;
  *(v21 + 72) = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v23 = v28;
  outlined init with copy of PresentationSource(v28, v32);
  (*(v18 + 16))(v20, v29, a6);
  v24 = v30;
  outlined init with copy of TaskPriority?(v30, v17, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v21, v32, v20, v17, a6, v31, v33);
  outlined destroy of TaskPriority?(v24, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  outlined destroy of PresentationSource(v23);
  v25 = v33[1];
  *a9 = v33[0];
  a9[1] = v25;
  result = v34[0];
  a9[2] = *v34;
  return result;
}

uint64_t sub_10005AB30()
{

  return swift_deallocObject();
}

uint64_t sub_10005AB68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v2);
}

uint64_t sub_10005AC68()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  v8 = v0 + v5;
  swift_unknownObjectWeakDestroy();
  v9 = *(v0 + v5 + 48);
  if (v9 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), v9);
  }

  if (*(v8 + 64))
  {
  }

  if (*(v8 + 80))
  {
  }

  (*(v6 + 8))(v0 + ((v7 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 103) & 0xFFFFFFFFFFFFFFF8;
  v8 = (*(*(v3 - 8) + 80) + v7 + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v0 + v5, v0 + v6, v9, v0 + v8, v3, v2);
}

uint64_t sub_10005AF54()
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

uint64_t partial apply for closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v0 + v3, v4);
}

uint64_t _s9MusicCore12MetricsEventV5ClickVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_30Tm()
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

uint64_t Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a5;
  v30 = a6;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin();
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(a7, a1, v12, v15);
  v17 = type metadata accessor for Actions.Collaborate.Context(0);
  v18 = (a7 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = swift_allocObject();
  v20 = v29;
  *(v19 + 16) = a4;
  *(v19 + 24) = v20;
  v21 = (a7 + v17[6]);
  *v21 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21[1] = v19;
  v22 = *(v13 + 32);
  v22(v16, a1, v12);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v25 = (v24 + *(v23 + 64) + *(v13 + 80)) & ~*(v13 + 80);
  v26 = swift_allocObject();
  outlined init with take of URL?(v30, v26 + v24, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  result = (v22)(v26 + v25, v16, v12);
  v28 = (a7 + v17[7]);
  *v28 = &async function pointer to partial apply for closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:);
  v28[1] = v26;
  return result;
}

uint64_t type metadata accessor for Actions.Collaborate.Context(uint64_t a1)
{
  result = type metadata singleton initialization cache for Actions.Collaborate.Context;
  if (!type metadata singleton initialization cache for Actions.Collaborate.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10005B7A4()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return thunk for @escaping @callee_guaranteed @Sendable () -> ()(v2);
}

uint64_t closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)()
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

    return _swift_task_switch(closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:), v28, v27);
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
  *(v8 + 16) = 2565;
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

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C758()
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

uint64_t partial apply for closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)()
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

  return closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)(v0 + v3, v0 + v6);
}

int *static Actions.Collaborate.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.Collaborate.Context(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO11CollaborateO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11CollaborateO7ContextVytGMR);
  *(a2 + result[9]) = 13;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = closure #1 in static Actions.Collaborate.action(context:);
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &async function pointer to closure #2 in static Actions.Collaborate.action(context:);
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &async function pointer to closure #3 in static Actions.Collaborate.action(context:);
  v6[1] = 0;
  return result;
}

uint64_t closure #2 in static Actions.Collaborate.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #2 in static Actions.Collaborate.action(context:);

  return v5();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #3 in static Actions.Collaborate.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t outlined init with copy of Actions.Collaborate.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.Collaborate.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.Collaborate.Context.menuItemTitle.getter()
{
  v0 = Playlist.hasActiveCollaboration.getter() & 1;

  return specialized static Collaboration.Setup.title(active:)(v0);
}

uint64_t (*Actions.Collaborate.Context.menuItemImage.getter())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR);
  __chkstk_darwin();
  v1 = &v11 - v0;
  active = Playlist.hasActiveCollaboration.getter();
  Playlist.collaboration.getter();
  v3 = type metadata accessor for Playlist.Collaboration();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    outlined destroy of TaskPriority?(v1, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR);
    if ((active & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v5 = Playlist.Collaboration.hasPendingCollaborators.getter();
  (*(v4 + 8))(v1, v3);
  if (active)
  {
    if (v5)
    {
      v6 = 0xEE0065676461622ELL;
LABEL_9:
      v7 = 0x322E6E6F73726570;
      goto LABEL_10;
    }

LABEL_8:
    v6 = 0xE800000000000000;
    goto LABEL_9;
  }

LABEL_7:
  v6 = 0x80000001004C5B90;
  v7 = 0xD000000000000011;
LABEL_10:
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;

  return partial apply for closure #1 in ActionMenuItemImage.init(internalSystemName:);
}

uint64_t sub_10005D22C()
{

  return swift_deallocObject();
}

uint64_t sub_10005D290(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10005D360(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

unint64_t type metadata completion function for Actions.Collaborate.Context(uint64_t a1)
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

uint64_t NSUserDefaults.ValueTransformer.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Actions.CreatePlaylist.Context.presentCreatePlaylistView.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Actions.CreatePlaylist.Context.init(canCreatePlaylist:presentCreatePlaylistView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor, v4, v3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005D700()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor(v2, v3);
}

uint64_t static Actions.CreatePlaylist.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 9;
  *(a5 + 40) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &async function pointer to closure #2 in static Actions.CreatePlaylist.action(context:);
  *(a5 + 72) = 0;
  *(a5 + 80) = &async function pointer to closure #3 in static Actions.CreatePlaylist.action(context:);
  *(a5 + 88) = 0;
}

uint64_t closure #2 in static Actions.CreatePlaylist.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v5();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.CreatePlaylist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 9;
  *(a2 + 40) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &async function pointer to closure #2 in static Actions.CreatePlaylist.action(context:);
  *(a2 + 72) = 0;
  *(a2 + 80) = &async function pointer to closure #3 in static Actions.CreatePlaylist.action(context:);
  *(a2 + 88) = 0;
}

uint64_t (*Actions.CreatePlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.CreatePlaylist.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t specialized Actions.CreatePlaylist.Context.menuItemTitle.getter()
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

uint64_t sub_10005DD3C()
{

  return swift_deallocObject();
}

uint64_t Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X8>)
{
  v51 = a7;
  v52 = a6;
  v48 = a4;
  v49 = a8;
  v46 = a3;
  v54 = a2;
  v50 = a1;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v41 - v12;
  v14 = v13;
  v45 = v13;
  v15 = __chkstk_darwin();
  v17 = &v41 - v16;
  v42 = *(v10 + 16);
  v42(&v41 - v16, v15);
  v18 = *(v10 + 80);
  v19 = (v18 + 40) & ~v18;
  v53 = v18 | 7;
  v14 += 7;
  v20 = (v14 + v19) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v22 = v51;
  v21[4] = v51;
  v41 = *(v10 + 32);
  v23 = v21 + v19;
  v24 = v21;
  v47 = v21;
  v41(v23, v17, a5);
  *(v24 + v20) = v54;
  v25 = v43;
  (v42)(v43, v50, a5);
  v26 = (v18 + 136) & ~v18;
  v27 = swift_allocObject();
  v28 = v52;
  *(v27 + 2) = a5;
  *(v27 + 3) = v28;
  *(v27 + 4) = v22;
  outlined init with take of PresentationSource(v46, v27 + 40);
  v29 = v25;
  v30 = v41;
  v41(v27 + v26, v29, a5);
  *(v27 + ((v14 + v26) & 0xFFFFFFFFFFFFFFF8)) = v54;
  v31 = v44;
  v30(v44, v50, a5);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v33 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v18 + v33) & ~v18;
  v35 = swift_allocObject();
  v36 = v51;
  v37 = v52;
  *(v35 + 2) = a5;
  *(v35 + 3) = v37;
  *(v35 + 4) = v36;
  outlined init with take of URL?(v48, v35 + v33, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v30(v35 + v34, v31, a5);

  v39 = v49;
  v40 = v47;
  *v49 = partial apply for closure #1 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v39[1] = v40;
  v39[2] = &async function pointer to partial apply for closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v39[3] = v27;
  v39[4] = &async function pointer to partial apply for closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v39[5] = v35;
  return result;
}

uint64_t static Actions.DeleteFromLibrary.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 49;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.DeleteFromLibrary.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.DeleteFromLibrary.action(context:);
  *(a2 + 104) = 0;
}

uint64_t static Actions.DeleteFromLibrary.canDelete<A>(item:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for MusicLibrary.RemoveAction();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE12RemoveActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE12RemoveActionVGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15 - v11;
  static MusicLibraryAction<>.remove.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v6 + 8))(v8, v5);
  v13 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicLibrary.RemoveAction.UnsupportedReason();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE12RemoveActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE12RemoveActionVGMR);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, v1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v9 + 96))(v12, v8);
    (*(v3 + 32))(v7, v12, v2);
    (*(v3 + 16))(v5, v7, v2);
    v14 = String.init<A>(describing:)();
    (*(v3 + 8))(v7, v2);
    return v14;
  }

  else if (v13 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v1 = type metadata accessor for MusicLibrary.DownloadAction.UnsupportedReason();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v34 - v4;
  __chkstk_darwin();
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v34 - v11;
  v12 = __chkstk_darwin();
  v14 = &v34 - v13;
  v15 = *(v9 + 16);
  v37 = v0;
  v15(&v34 - v13, v0, v8, v12);
  v16 = (*(v9 + 88))(v14, v8);
  if (v16 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v9 + 96))(v14, v8);
    (*(v2 + 32))(v7, v14, v1);
    v17 = *(v2 + 16);
    v17(v5, v7, v1);
    if ((*(v2 + 88))(v5, v1) != enum case for MusicLibrary.DownloadAction.UnsupportedReason.cellularDataDisallowed(_:))
    {
      v17(v35, v7, v1);
      v18 = String.init<A>(describing:)();
      v19 = *(v2 + 8);
      v19(v7, v1);
      v19(v5, v1);
      return v18;
    }

    (*(v2 + 8))(v7, v1);
    return 0;
  }

  if (v16 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.actions);
  v21 = v36;
  (v15)(v36, v37, v8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38[0] = v35;
    *v24 = 136315138;
    (v15)(v34, v21, v8);
    v25 = String.init<A>(describing:)();
    v26 = v21;
    v28 = v27;
    v29 = *(v9 + 8);
    v29(v26, v8);
    v30 = v29;
    v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v28, v38);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Unknown status=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);

    v32 = v30;
  }

  else
  {

    v32 = *(v9 + 8);
    v32(v21, v8);
  }

  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  v18 = v38[0];
  v32(v14, v8);
  return v18;
}

{
  v1 = type metadata accessor for MusicLibrary.FavoriteAction.UnsupportedReason();
  v26 = *(v1 - 8);
  __chkstk_darwin();
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v23 - v3;
  __chkstk_darwin();
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14FavoriteActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14FavoriteActionVGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v23 - v11;
  v13 = *(v8 + 16);
  v25 = v0;
  v13(&v23 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v35[0] = 0;
      *(&v35[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v35[0] = 0xD000000000000019;
      *(&v35[0] + 1) = 0x80000001004C6D20;
      (v13)(v24, v25, v7);
      v19._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v19);

      v18 = *&v35[0];
      (*(v8 + 8))(v12, v7);
      return v18;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v26;
  (*(v26 + 32))(v6, v12, v1);
  v16 = *(v15 + 16);
  v16(v4, v6, v1);
  v17 = (*(v15 + 88))(v4, v1);
  if (v17 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.alreadyFavorited(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD000000000000011;
    }

    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cannotFavoriteWhenDisliked(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD00000000000001DLL;
    }

    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD000000000000018;
    }

    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

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
      if ((WORD4(v35[0]) & 0x100) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xD000000000000016;
      }

      goto LABEL_35;
    }

    if (v17 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0x6C20646572616853;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD00000000000001CLL;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000013;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000014;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.networkRequired(_:))
      {
        v18 = 0xD000000000000010;
      }

      else
      {
        if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD000000000000025;
        }

        v18 = 0x206E776F6E6B6E55;
        if (v17 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unknown(_:))
        {
          *&v35[0] = 0;
          *(&v35[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          *&v35[0] = 0x206E776F6E6B6E55;
          *(&v35[0] + 1) = 0xEF206E6F73616572;
          v16(v23, v6, v1);
          v21._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v21);

          v18 = *&v35[0];
          v22 = *(v15 + 8);
          v22(v6, v1);
          v22(v4, v1);
          return v18;
        }
      }

LABEL_35:
      (*(v15 + 8))(v6, v1);
      return v18;
    }

    (*(v15 + 8))(v6, v1);
    return 0;
  }

  v18 = 0xD000000000000010;
  (*(v15 + 8))(v6, v1);
  return v18;
}

{
  v1 = type metadata accessor for MusicLibrary.UndoFavoriteAction.UnsupportedReason();
  v27 = *(v1 - 8);
  __chkstk_darwin();
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v24 - v3;
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE18UndoFavoriteActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE18UndoFavoriteActionVGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = *(v8 + 16);
  v26 = v0;
  v13(&v24 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v36[0] = 0;
      *(&v36[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v36[0] = 0xD000000000000019;
      *(&v36[0] + 1) = 0x80000001004C6D20;
      (v13)(v25, v26, v7);
      v20._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v20);

      v19 = *&v36[0];
      (*(v8 + 8))(v12, v7);
      return v19;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v27;
  (*(v27 + 32))(v6, v12, v1);
  v16 = *(v15 + 16);
  v16(v4, v6, v1);
  v17 = (*(v15 + 88))(v4, v1);
  v18 = v6;
  if (v17 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.notFavorited(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0x6F76614620746F4ELL;
    }

    if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD000000000000018;
    }

    if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v36[4] = v32;
      v36[5] = v33;
      v36[6] = v34;
      v36[7] = v35;
      v36[0] = v28;
      v36[1] = v29;
      v36[2] = v30;
      v36[3] = v31;
      outlined destroy of ApplicationCapabilities(v36);
      if ((WORD4(v36[0]) & 0x100) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0xD000000000000016;
      }

      goto LABEL_31;
    }

    if (v17 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0x6C20646572616853;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD00000000000001CLL;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000013;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000014;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000025;
      }

      v19 = 0x206E776F6E6B6E55;
      if (v17 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unknown(_:))
      {
        *&v36[0] = 0;
        *(&v36[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        *&v36[0] = 0x206E776F6E6B6E55;
        *(&v36[0] + 1) = 0xEF206E6F73616572;
        v16(v24, v18, v1);
        v22._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v22);

        v19 = *&v36[0];
        v23 = *(v15 + 8);
        v23(v18, v1);
        v23(v4, v1);
        return v19;
      }

LABEL_31:
      (*(v15 + 8))(v18, v1);
      return v19;
    }

    (*(v15 + 8))(v6, v1);
    return 0;
  }

  v19 = 0xD000000000000010;
  (*(v15 + 8))(v18, v1);
  return v19;
}

{
  v1 = v0;
  v2 = type metadata accessor for MusicLibrary.DislikeAction.UnsupportedReason();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE13DislikeActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE13DislikeActionVGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v18 - v11;
  v13 = *(v7 + 16);
  v13(&v18 - v11, v1, v6, v10);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v7 + 96))(v12, v6);
    (*(v3 + 32))(v5, v12, v2);
    v15 = closure #1 in MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter(v5);
    (*(v3 + 8))(v5, v2);
  }

  else if (v14 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v18 = 0xD000000000000019;
    v19 = 0x80000001004C6D20;
    (v13)(v9, v1, v6);
    v16._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v16);

    v15 = v18;
    (*(v7 + 8))(v12, v6);
  }

  return v15;
}

{
  v1 = type metadata accessor for MusicLibrary.UndoDislikeAction.UnsupportedReason();
  v20 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE17UndoDislikeActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE17UndoDislikeActionVGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v19 - v11;
  v13 = *(v7 + 16);
  v19 = v0;
  v13(&v19 - v11, v0, v6, v10);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v7 + 96))(v12, v6);
    v15 = v20;
    (*(v20 + 32))(v5, v12, v1);
    (*(v15 + 16))(v3, v5, v1);
    v16 = String.init<A>(describing:)();
    (*(v15 + 8))(v5, v1);
  }

  else if (v14 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v21 = 0xD000000000000019;
    v22 = 0x80000001004C6D20;
    (v13)(v9, v19, v6);
    v17._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v17);

    v16 = v21;
    (*(v7 + 8))(v12, v6);
  }

  return v16;
}

{
  v1 = type metadata accessor for MusicLibrary.PinAction.UnsupportedReason();
  v27 = *(v1 - 8);
  __chkstk_darwin();
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v24 - v3;
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9PinActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9PinActionVGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = *(v8 + 16);
  v26 = v0;
  v13(&v24 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v36[0] = 0;
      *(&v36[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v36[0] = 0xD000000000000019;
      *(&v36[0] + 1) = 0x80000001004C6D20;
      (v13)(v25, v26, v7);
      v20._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v20);

      v19 = *&v36[0];
      (*(v8 + 8))(v12, v7);
      return v19;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v27;
  (*(v27 + 32))(v6, v12, v1);
  v16 = *(v15 + 16);
  v16(v4, v6, v1);
  v17 = (*(v15 + 88))(v4, v1);
  v18 = v6;
  if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.alreadyPinned(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0x2079646165726C41;
    }

    if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v36[4] = v32;
        v36[5] = v33;
        v36[6] = v34;
        v36[7] = v35;
        v36[0] = v28;
        v36[1] = v29;
        v36[2] = v30;
        v36[3] = v31;
        outlined destroy of ApplicationCapabilities(v36);
        if ((WORD4(v36[0]) & 0x100) != 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0xD000000000000016;
        }
      }

      else
      {
        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryInitialImport(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD00000000000001CLL;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryIneligible(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD000000000000018;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.sharedLibrary(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0x6C20646572616853;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.notInLibrary(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0x4C206E6920746F4ELL;
        }

        v19 = 0x206E776F6E6B6E55;
        if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.unknown(_:))
        {
          *&v36[0] = 0;
          *(&v36[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          *&v36[0] = 0x206E776F6E6B6E55;
          *(&v36[0] + 1) = 0xEF206E6F73616572;
          v16(v24, v18, v1);
          v22._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v22);

          v19 = *&v36[0];
          v23 = *(v15 + 8);
          v23(v18, v1);
          v23(v4, v1);
          return v19;
        }
      }

      (*(v15 + 8))(v18, v1);
      return v19;
    }

    (*(v15 + 8))(v6, v1);
    return 0;
  }

  v19 = 0xD000000000000010;
  (*(v15 + 8))(v18, v1);
  return v19;
}

{
  updated = type metadata accessor for MusicLibrary.UpdatePinAction.UnsupportedReason();
  v2 = *(updated - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v28 - v4;
  __chkstk_darwin();
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE15UpdatePinActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE15UpdatePinActionVGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v28 - v12;
  v14 = *(v8 + 16);
  v30 = v0;
  v14(&v28 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, updated);
    v16 = *(v2 + 16);
    v17 = v31;
    v16(v31, v6, updated);
    v18 = (*(v2 + 88))(v17, updated);
    v19 = updated;
    v20 = v2;
    if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0x6E6E695020746F4ELL;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0x6C20646572616853;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedAction(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0xD000000000000012;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedType(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0xD000000000000010;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unknown(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0x206E776F6E6B6E55;
    }

    else
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      v24 = v19;
      _StringGuts.grow(_:)(17);

      v32 = 0x206E776F6E6B6E55;
      v33 = 0xEF206E6F73616572;
      v16(v29, v6, v24);
      v25._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v25);

      v26 = v32;
      v27 = *(v20 + 8);
      v27(v6, v24);
      v27(v31, v24);
      return v26;
    }
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v32 = 0xD000000000000019;
    v33 = 0x80000001004C6D20;
    (v14)(v10, v30, v7);
    v22._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v22);

    v23 = v32;
    (*(v8 + 8))(v13, v7);
    return v23;
  }
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.DeleteFromLibrary@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 49;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.DeleteFromLibrary.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.DeleteFromLibrary.action(context:);
  *(a2 + 104) = 0;
}

uint64_t (*Actions.DeleteFromLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.DeleteFromLibrary.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t sub_10005E7E4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return _swift_task_switch(closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  *(v0 + 224) = type metadata accessor for MainActor();
  *(v0 + 232) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v2, v1);
}

{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];

  specialized static Alert.confirmDelete(for:library:)(v4, v3, v1, v2, (v0 + 14));

  return _swift_task_switch(closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 184);

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

    v12 = *(v0 + 184);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 48) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 56) = 0;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 40) = &block_descriptor_2;
    v14 = _Block_copy((v0 + 16));
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
    v3 = v3;
    v5(v12, v3, partial apply for closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:), v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 144), 1, 0, 0);
  }

  outlined destroy of Alert(v0 + 112);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1)
{
  *(v1 + 240) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v3, v2);
}

uint64_t sub_10005ED8C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 88);
  if (v4 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v4);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 136) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 136) & ~*(*(v2 - 8) + 80);
  v5 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0 + 40, v0 + v4, v5, v2, v3);
}

uint64_t closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
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
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v9 = *(v8 + 8);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7, v9);
    *(v0 + 280) = v10;
    v11 = type metadata accessor for URL();
    *(v0 + 288) = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    *(v0 + 296) = v13;
    *(v0 + 304) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v6, 1, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7, v9);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 2;
    *(v0 + 312) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 320) = v16;
    *(v0 + 328) = v17;
    *(v0 + 344) = v18;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v20, v19);
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
  *(v6 + 16) = 4101;
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
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
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

uint64_t sub_10005FC88()
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

uint64_t partial apply for closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
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

  return closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t specialized Actions.DeleteFromLibrary.Context.menuItemTitle.getter()
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

uint64_t sub_100060278()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000602E8()
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

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOG_AF5AlertV6ActionVs5NeverOTg5(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v29 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v23 = v8;
    a1(v24, &v23);
    if (v3)
    {
      break;
    }

    v10 = v24[0];
    v9 = v24[1];
    v11 = v25;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v29 = v5;
    v16 = v5[2];
    v15 = v5[3];
    if (v16 >= v15 >> 1)
    {
      v20 = v25;
      v21 = v28;
      v18 = v27;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v13 = v18;
      v11 = v20;
      v14 = v21;
      v5 = v29;
    }

    v5[2] = v16 + 1;
    v17 = &v5[7 * v16];
    v17[4] = v10;
    v17[5] = v9;
    v17[6] = v11;
    v17[7] = v12;
    *(v17 + 64) = v13;
    *(v17 + 9) = v14;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v19 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v17 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  outlined init with copy of TaskPriority?(a4, v20, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 304) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v15 = v19;
  *(v14 + 4) = v18;
  *(v14 + 5) = v15;
  outlined init with take of URL?(v20, (v14 + 48), &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  (*(v7 + 32))(&v14[v13], v9, v6);

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:), v14);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v12(a6, a7);
}

uint64_t Actions.DeleteOrRemoveDownload.Choice.buttonTitle.getter(char a1)
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

uint64_t Actions.DeleteOrRemoveDownload.Choice.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4465766F6D6572;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6C65636E6163;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Actions.DeleteOrRemoveDownload.Choice(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x80000001004C4650;
  v5 = 0xE600000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001004C4650;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F4465766F6D6572;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE0064616F6C6E77;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F4465766F6D6572;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE0064616F6C6E77;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Actions.DeleteOrRemoveDownload.Choice()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Actions.DeleteOrRemoveDownload.Choice(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Actions.DeleteOrRemoveDownload.Choice(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Actions.DeleteOrRemoveDownload.Choice@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Actions.DeleteOrRemoveDownload.Choice.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Actions.DeleteOrRemoveDownload.Choice(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064616F6C6E77;
  v4 = 0x80000001004C4650;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F4465766F6D6572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static Actions.DeleteOrRemoveDownload.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.DeleteOrRemoveDownload.Context(a1, a2);
  result = swift_allocObject();
  *(result + 16) = &async function pointer to specialized thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed Action<Actions.DeleteOrRemoveDownload.Context, Actions.DeleteOrRemoveDownload.Choice>, @in_guaranteed CheckedContinuation<Actions.DeleteOrRemoveDownload.Choice, Error>) -> ();
  *(result + 24) = 0;
  *(a2 + 192) = 51;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0x403E000000000000;
  *(a2 + 200) = closure #1 in static Actions.DeleteOrRemoveDownload.action(context:);
  *(a2 + 224) = &async function pointer to partial apply for specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:);
  *(a2 + 232) = result;
  *(a2 + 240) = &async function pointer to closure #3 in static Actions.DeleteOrRemoveDownload.action(context:);
  *(a2 + 248) = 0;
  return result;
}

uint64_t closure #1 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t (**a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore21ActionSupportedStatusOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore21ActionSupportedStatusOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  *(inited + 32) = (*a1)();
  *(inited + 40) = v3;
  *(inited + 48) = a1[4]();
  *(inited + 56) = v4;
  v5 = static ActionSupportedStatus.allSupported(_:)(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

uint64_t closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t a1, uint64_t a2)
{
  v2[47] = a1;
  v2[48] = a2;
  type metadata accessor for MainActor();
  v2[49] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), v4, v3);
}

uint64_t closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 376);

  outlined init with copy of Actions.DeleteOrRemoveDownload.Context(v2, v0 + 16);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  *(v5 + 24) = v1;

  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOG_AF5AlertV6ActionVs5NeverOTg5(partial apply for closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), v5, &outlined read-only object #0 of closure #2 in static Actions.DeleteOrRemoveDownload.action(context:));

  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = v4;
  *(v0 + 328) = v3;
  *(v0 + 336) = 1;
  *(v0 + 344) = 0;
  *(v0 + 352) = 1;
  *(v0 + 360) = v6;
  *(v0 + 368) = 0;
  v7 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 304), 0, 1);
  v8 = v7;
  v9 = *(v0 + 336);
  v10 = *(v0 + 176);
  if (v10)
  {
    v11 = *(v0 + 184);
    v12 = one-time initialization token for logger;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static PresentationSource.logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Deferring presentation…", v16, 2u);
    }

    v17 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 240) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 248) = 0;
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 232) = &block_descriptor_3;
    v18 = _Block_copy((v0 + 208));
    v19 = [v17 initWithTimeout:v18 interruptionHandler:10.0];
    _Block_release(v18);

    outlined init with copy of PresentationSource(v0 + 96, v0 + 208);
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    outlined init with take of PresentationSource(v0 + 208, v20 + 24);
    *(v20 + 120) = v8;
    *(v20 + 128) = v9;
    *(v20 + 129) = 1;
    *(v20 + 136) = 0;
    *(v20 + 144) = 0;
    v21 = v19;
    v8 = v8;
    v10(v0 + 96, v8, partial apply for closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:), v20);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v10, v11);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v7, *(v0 + 336), 1, 0, 0);
  }

  outlined destroy of Alert(v0 + 304);
  outlined destroy of Actions.DeleteOrRemoveDownload.Context(v0 + 16);
  v22 = *(v0 + 8);

  return v22();
}

uint64_t closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = *a1;
  v26 = a2;
  if (!v12)
  {
    v25 = 2;
    v23 = 0x6F4465766F6D6572;
    v13 = 0xEE0064616F6C6E77;
LABEL_6:
    v14 = &v29;
    goto LABEL_7;
  }

  if (v12 != 1)
  {
    v25 = 0;
    v23 = 0x6C65636E6163;
    v13 = 0xE600000000000000;
    goto LABEL_6;
  }

  v24 = 0x80000001004C4650;
  v25 = 1;
  v13 = 0xD000000000000011;
  v14 = &v28;
LABEL_7:
  *(v14 - 32) = v13;
  v15 = Actions.DeleteOrRemoveDownload.Choice.buttonTitle.getter(v12);
  v22 = v16;
  outlined init with copy of Actions.DeleteOrRemoveDownload.Context(v26, v27);
  (*(v9 + 16))(v11, a3, v8);
  v17 = (*(v9 + 80) + 216) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  outlined init with take of Actions.DeleteOrRemoveDownload.Context(v27, v18 + 24);
  result = (*(v9 + 32))(v18 + v17, v11, v8);
  v20 = v24;
  *a4 = v23;
  *(a4 + 8) = v20;
  v21 = v22;
  *(a4 + 16) = v15;
  *(a4 + 24) = v21;
  *(a4 + 32) = v25;
  *(a4 + 40) = &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:);
  *(a4 + 48) = v18;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 264) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR);
  *(v5 + 224) = v6;
  v7 = *(v6 - 8);
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 + 64);
  *(v5 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v5 + 256) = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = *(v0 + 264);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  outlined init with copy of Actions.DeleteOrRemoveDownload.Context(v6, v0 + 16);
  (*(v3 + 16))(v2, v5, v4);
  v9 = (*(v3 + 80) + 232) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  outlined init with take of Actions.DeleteOrRemoveDownload.Context(v0 + 16, v10 + 40);
  (*(v3 + 32))(v10 + v9, v2, v4);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 49) = a4;
  return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)()
{
  if (!*(v0 + 49))
  {
    v5 = (*(*(v0 + 16) + 48) + **(*(v0 + 16) + 48));
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v2 = closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:);
    goto LABEL_5;
  }

  if (*(v0 + 49) == 1)
  {
    v5 = (*(*(v0 + 16) + 16) + **(*(v0 + 16) + 16));
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v2 = closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:);
LABEL_5:
    v1[1] = v2;

    return v5();
  }

  *(v0 + 48) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), 0, 0);
  }
}

{
  *(v0 + 48) = *(v0 + 49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), 0, 0);
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed Action<Actions.DeleteOrRemoveDownload.Context, Actions.DeleteOrRemoveDownload.Choice>, @in_guaranteed CheckedContinuation<Actions.DeleteOrRemoveDownload.Choice, Error>) -> ()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(a1, a2);
}

uint64_t closure #3 in static Actions.DeleteOrRemoveDownload.action(context:)()
{
  v3 = (*(*(v0 + 16) + 64) + **(*(v0 + 16) + 64));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = closure #2 in static Actions.Collaborate.action(context:);

  return v3();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.DeleteOrRemoveDownload@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.DeleteOrRemoveDownload.Context(a1, a2);
  result = swift_allocObject();
  *(result + 16) = &async function pointer to specialized thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed Action<Actions.DeleteOrRemoveDownload.Context, Actions.DeleteOrRemoveDownload.Choice>, @in_guaranteed CheckedContinuation<Actions.DeleteOrRemoveDownload.Choice, Error>) -> ();
  *(result + 24) = 0;
  *(a2 + 192) = 51;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0x403E000000000000;
  *(a2 + 200) = closure #1 in static Actions.DeleteOrRemoveDownload.action(context:);
  *(a2 + 224) = &closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)specialized partial apply;
  *(a2 + 232) = result;
  *(a2 + 240) = &async function pointer to closure #3 in static Actions.DeleteOrRemoveDownload.action(context:);
  *(a2 + 248) = 0;
  return result;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)()@<X8>)
{
  v81 = a4;
  v82 = a1;
  v72 = a8;
  v73 = a3;
  v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v70 = *(v71 + 64);
  __chkstk_darwin();
  v67 = &v59 - v13;
  v14 = *(a5 - 1);
  __chkstk_darwin();
  v66 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v59 - v16;
  __chkstk_darwin();
  v61 = &v59 - v17;
  __chkstk_darwin();
  v63 = &v59 - v18;
  v83 = v19;
  v20 = __chkstk_darwin();
  v22 = &v59 - v21;
  v23 = *(v14 + 16);
  v75 = v14 + 16;
  v23(&v59 - v21, a1, a5, v20);
  v24 = v23;
  v64 = *(v14 + 80);
  v68 = v14;
  v25 = (v64 + 48) & ~v64;
  v74 = v64 | 7;
  v26 = swift_allocObject();
  v69 = v26;
  *(v26 + 2) = a5;
  *(v26 + 3) = a6;
  v27 = a7;
  v76 = a7;
  *(v26 + 4) = a7;
  *(v26 + 5) = a2;
  v80 = a2;
  v28 = v14 + 32;
  v29 = *(v14 + 32);
  v77 = v28;
  v78 = a6;
  v29(v26 + v25, v22, a5);
  v30 = v63;
  v79 = v24;
  v24(v63, v82, a5);
  v31 = swift_allocObject();
  v65 = v31;
  *(v31 + 2) = a5;
  *(v31 + 3) = a6;
  *(v31 + 4) = v27;
  *(v31 + 5) = a2;
  v29(v31 + v25, v30, a5);
  v32 = v61;
  v33 = v82;
  v24(v61, v82, a5);
  v34 = swift_allocObject();
  v63 = v34;
  v35 = v78;
  *(v34 + 2) = a5;
  *(v34 + 3) = v35;
  v36 = v76;
  v37 = v80;
  *(v34 + 4) = v76;
  *(v34 + 5) = v37;
  v29(&v34[v25], v32, a5);
  v38 = v29;
  v60 = v29;
  v39 = v62;
  v79(v62, v33, a5);
  v40 = swift_allocObject();
  v61 = v40;
  v41 = v78;
  *(v40 + 2) = a5;
  *(v40 + 3) = v41;
  *(v40 + 4) = v36;
  *(v40 + 5) = v37;
  v38(&v40[v25], v39, a5);
  v42 = v67;
  outlined init with copy of TaskPriority?(v81, v67, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v43 = v66;
  v44 = v82;
  v79(v66, v82, a5);
  v45 = (*(v71 + 80) + 40) & ~*(v71 + 80);
  v46 = (v70 + v64 + v45) & ~v64;
  v47 = swift_allocObject();
  *(v47 + 2) = a5;
  *(v47 + 3) = v41;
  *(v47 + 4) = v76;
  outlined init with take of URL?(v42, v47 + v45, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v60(v47 + v46, v43, a5);
  v48 = v72;
  v49 = v73;
  outlined init with copy of PresentationSource(v73, (v72 + 10));
  swift_retain_n();
  v50 = v44;
  v51 = closure #6 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v44, a5);
  v53 = v52;
  outlined destroy of TaskPriority?(v81, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  outlined destroy of PresentationSource(v49);
  result = (*(v68 + 8))(v50, a5);
  v55 = v69;
  *v48 = partial apply for closure #1 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v48[1] = v55;
  v56 = v65;
  v48[2] = &async function pointer to partial apply for closure #2 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v48[3] = v56;
  v57 = v63;
  v48[4] = partial apply for closure #3 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v48[5] = v57;
  v58 = v61;
  v48[6] = &async function pointer to partial apply for closure #4 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v48[7] = v58;
  v48[8] = &async function pointer to partial apply for closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v48[9] = v47;
  v48[22] = v51;
  v48[23] = v53;
  return result;
}

uint64_t closure #1 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for MusicLibrary.RemoveAction();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE12RemoveActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE12RemoveActionVGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15 - v11;
  static MusicLibraryAction<>.remove.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v6 + 8))(v8, v5);
  v13 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t closure #2 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return MusicLibrary.remove<A>(_:)(a2, a3, a4);
}

uint64_t closure #3 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[2] = a1;
  v22[3] = a5;
  v22[1] = a3;
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

uint64_t closure #4 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return MusicLibrary.removeDownload<A>(_:)(a2, a3, a4);
}

uint64_t closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
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

    return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v20, v19);
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
  *(v6 + 16) = 9733;
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

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #6 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(char *a1, char *a2)
{
  v133 = a1;
  v104 = type metadata accessor for Genre();
  v102 = *(v104 - 8);
  __chkstk_darwin();
  v105 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Composer();
  v103 = *(v108 - 8);
  __chkstk_darwin();
  v107 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Artist();
  v106 = *(v111 - 8);
  __chkstk_darwin();
  v110 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for TVEpisode();
  v109 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for TVSeason();
  v112 = *(v117 - 8);
  __chkstk_darwin();
  v116 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for TVShow();
  v115 = *(v119 - 8);
  __chkstk_darwin();
  v118 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for MusicMovie();
  v120 = *(v123 - 8);
  __chkstk_darwin();
  v122 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for Song();
  v121 = *(v126 - 8);
  __chkstk_darwin();
  v125 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for Playlist();
  v124 = *(v129 - 8);
  __chkstk_darwin();
  v128 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for MusicVideo();
  v127 = *(v131 - 8);
  __chkstk_darwin();
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v132 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v98 - v19;
  v21 = type metadata accessor for Album();
  v130 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 - 1);
  __chkstk_darwin();
  v99 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v98 - v26;
  v27 = __chkstk_darwin();
  v29 = &v98 - v28;
  v134 = v24;
  v100 = *(v24 + 16);
  (v100)(&v98 - v28, v133, a2, v27);
  if (swift_dynamicCast())
  {
    v133 = a2;
    String.LocalizationValue.init(stringLiteral:)();
    v16[2](v18, v20, v15);
    v30 = v16;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v31 = static NSBundle.module;
    static Locale.current.getter();
    v32 = String.init(localized:table:bundle:locale:comment:)();
    (v30[1])(v20, v15);
    (*(v130 + 8))(v23, v21);
    (*(v134 + 8))(v29, v133);
    return v32;
  }

  v98 = v18;
  v130 = v15;
  v33 = v16;
  v34 = v131;
  if (swift_dynamicCast())
  {
    v129 = v29;
    v35 = v13;
    String.LocalizationValue.init(stringLiteral:)();
    v36 = v33;
    v37 = v33[2];
    v38 = v130;
    (v37)(v98, v20, v130);
    v39 = v134;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v40 = static NSBundle.module;
    static Locale.current.getter();
    v41 = String.init(localized:table:bundle:locale:comment:)();
    v36[1](v20, v38);
    (*(v127 + 8))(v35, v34);
    v32 = v41;
    (*(v39 + 8))(v129, a2);
    return v32;
  }

  v42 = a2;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    v43 = v33;
    v44 = v33[2];
    v45 = v130;
    (v44)(v98, v20, v130);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v46 = static NSBundle.module;
    static Locale.current.getter();
    v47 = String.init(localized:table:bundle:locale:comment:)();
    v43[1](v20, v45);
    (*(v124 + 8))(v128, v129);
LABEL_17:
    v52 = *(v134 + 8);
    v53 = v29;
    v54 = a2;
    v32 = v47;
LABEL_18:
    v52(v53, v54);
    return v32;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    v48 = v33;
    v49 = v33[2];
    v50 = v130;
    (v49)(v98, v20, v130);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v51 = static NSBundle.module;
    static Locale.current.getter();
    v47 = String.init(localized:table:bundle:locale:comment:)();
    v48[1](v20, v50);
    (*(v121 + 8))(v125, v126);
    goto LABEL_17;
  }

  v56 = swift_dynamicCast();
  v57 = v29;
  v58 = v33;
  v59 = v130;
  if (v56)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (v33[2])(v98, v20, v59);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v60 = static NSBundle.module;
    static Locale.current.getter();
    v61 = String.init(localized:table:bundle:locale:comment:)();
    v33[1](v20, v59);
    (*(v120 + 8))(v122, v123);
    v62 = v42;
    v32 = v61;
    (*(v134 + 8))(v29, v62);
    return v32;
  }

  v131 = v20;
  v63 = v118;
  v64 = v119;
  if (swift_dynamicCast())
  {
    (*(v115 + 8))(v63, v64);
LABEL_28:
    v67 = v131;
    (*(v134 + 8))(v57, v42);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v58 + 2))(v98, v67, v59);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v68 = static NSBundle.module;
    static Locale.current.getter();
    v32 = String.init(localized:table:bundle:locale:comment:)();
    (*(v58 + 1))(v67, v59);
    return v32;
  }

  v128 = v33;
  v65 = v116;
  v66 = v117;
  if (swift_dynamicCast())
  {
    (*(v112 + 8))(v65, v66);
    v59 = v130;
    v58 = v128;
    goto LABEL_28;
  }

  v69 = swift_dynamicCast();
  v70 = v131;
  if (v69)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v71 = v128;
    v72 = v130;
    (*(v128 + 2))(v98, v70, v130);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v73 = static NSBundle.module;
    static Locale.current.getter();
    v74 = String.init(localized:table:bundle:locale:comment:)();
    (*(v71 + 1))(v70, v72);
    (*(v109 + 8))(v113, v114);
LABEL_43:
    v52 = *(v134 + 8);
    v53 = v57;
LABEL_44:
    v54 = v42;
    v32 = v74;
    goto LABEL_18;
  }

  v75 = swift_dynamicCast();
  v76 = v130;
  v77 = v128;
  if (v75)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v77 + 2))(v98, v70, v76);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v78 = static NSBundle.module;
    static Locale.current.getter();
    v74 = String.init(localized:table:bundle:locale:comment:)();
    (*(v77 + 1))(v70, v76);
    (*(v106 + 8))(v110, v111);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v77 + 2))(v98, v70, v76);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v79 = static NSBundle.module;
    static Locale.current.getter();
    v74 = String.init(localized:table:bundle:locale:comment:)();
    (*(v77 + 1))(v70, v76);
    (*(v103 + 8))(v107, v108);
    goto LABEL_43;
  }

  v129 = v57;
  v80 = v104;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v77 + 2))(v98, v70, v76);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v81 = static NSBundle.module;
    static Locale.current.getter();
    v74 = String.init(localized:table:bundle:locale:comment:)();
    (*(v77 + 1))(v70, v76);
    (*(v102 + 8))(v105, v80);
    v52 = *(v134 + 8);
    v53 = v129;
    goto LABEL_44;
  }

  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Logger.actions);
  v83 = v101;
  v84 = v100;
  v100(v101, v133, v42);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v135 = v133;
    *v87 = 136315138;
    v84(v99, v83, v42);
    v88 = String.init<A>(describing:)();
    v89 = v42;
    v91 = v90;
    v92 = *(v134 + 8);
    v92(v83, v89);
    v93 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v88, v91, &v135);
    v42 = v89;
    v70 = v20;

    *(v87 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v85, v86, "DeleteOrRemoveDownload: unhandled item type=%s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v133);

    v77 = v33;
  }

  else
  {

    v92 = *(v134 + 8);
    v92(v83, v42);
  }

  String.LocalizationValue.init(stringLiteral:)();
  v94 = v130;
  (*(v77 + 2))(v98, v70, v130);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v95 = static NSBundle.module;
  static Locale.current.getter();
  v96 = String.init(localized:table:bundle:locale:comment:)();
  (*(v77 + 1))(v70, v94);
  v97 = v42;
  v32 = v96;
  v92(v129, v97);
  return v32;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.menuItemTitle.getter()
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

uint64_t (*Actions.DeleteOrRemoveDownload.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.DeleteOrRemoveDownload.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:), 0, 0);
}

uint64_t specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 72, 0, 0, 0xD00000000000003ALL, 0x80000001004C56F0, partial apply for specialized closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:), v2, &type metadata for Actions.DeleteOrRemoveDownload.Choice);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 16);

    *v3 = *(v2 + 72);
    v4 = *(v2 + 8);

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t specialized Actions.DeleteOrRemoveDownload.Choice.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Actions.DeleteOrRemoveDownload.Choice.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000656F8()
{

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #2 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v4, v0 + v5, v2, v3);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #4 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #4 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v4, v0 + v5, v2, v3);
}

uint64_t sub_100065B00()
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

uint64_t partial apply for closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
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

  return closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100065F10()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Actions.DeleteOrRemoveDownload.Choice and conformance Actions.DeleteOrRemoveDownload.Choice()
{
  result = lazy protocol witness table cache variable for type Actions.DeleteOrRemoveDownload.Choice and conformance Actions.DeleteOrRemoveDownload.Choice;
  if (!lazy protocol witness table cache variable for type Actions.DeleteOrRemoveDownload.Choice and conformance Actions.DeleteOrRemoveDownload.Choice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.DeleteOrRemoveDownload.Choice and conformance Actions.DeleteOrRemoveDownload.Choice);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Actions.DeleteOrRemoveDownload.Choice] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Actions.DeleteOrRemoveDownload.Choice] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Actions.DeleteOrRemoveDownload.Choice] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOGMd, &_sSay9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Actions.DeleteOrRemoveDownload.Choice] and conformance [A]);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore18PresentationSourceV8PositionVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Actions.DeleteOrRemoveDownload.Context(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t storeEnumTagSinglePayload for Actions.DeleteOrRemoveDownload.Context(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)specialized partial apply(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(a1, a2, v7, v6);
}

uint64_t sub_1000661E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 176);
  if (v4 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), v4);
  }

  if (*(v0 + 192))
  {
  }

  if (*(v0 + 208))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 304) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR) - 8);
  v5 = (*(v4 + 80) + 304) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(a1, v6, v7, v8, v9, (v1 + 6), v1 + v5);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000664C4()
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

uint64_t sub_100066558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 152);
  if (v4 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), v4);
  }

  if (*(v0 + 168))
  {
  }

  if (*(v0 + 184))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 216) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR) - 8);
  v7 = (*(v6 + 80) + 216) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(a1, a2, v8, v2 + 24, v2 + v7);
}

uint64_t sub_1000667CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 168);
  if (v4 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), v4);
  }

  if (*(v0 + 184))
  {
  }

  if (*(v0 + 200))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 232) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd, &_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMR) - 8);
  v5 = (*(v4 + 80) + 232) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(a1, v6, v7, v8, v1 + 40, v1 + v5);
}

uint64_t Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t (**a8)()@<X8>)
{
  v63 = a8;
  v64 = a7;
  v68 = a6;
  v61 = a3;
  v62 = a4;
  v70 = a2;
  v9 = *(a5 - 8);
  v72 = a5;
  v73 = v9;
  v74 = *(v9 + 64);
  __chkstk_darwin();
  v60 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v54 - v11;
  __chkstk_darwin();
  v65 = &v54 - v12;
  v13 = type metadata accessor for MusicLibrary.DownloadAction();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMR);
  v17 = *(v71 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v67 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v54 - v19;
  v55 = &v54 - v19;
  __chkstk_darwin();
  v22 = &v54 - v21;
  static MusicLibraryAction<>.download.getter();
  v66 = a1;
  v23 = v72;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v14 + 8))(v16, v13);
  v24 = v73;
  v57 = *(v73 + 16);
  v57(v65, a1, v23);
  v54 = v17;
  v25 = v22;
  (*(v17 + 16))(v20, v22, v71);
  v26 = *(v24 + 80);
  v27 = v24;
  v28 = (v26 + 40) & ~v26;
  v29 = *(v17 + 80);
  v30 = (v74 + v28 + v29) & ~v29;
  v56 = v26 | v29;
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 2) = v72;
  *(v31 + 3) = v32;
  v33 = v65;
  *(v31 + 4) = v64;
  v34 = *(v27 + 32);
  v73 = v27 + 32;
  v58 = v34;
  v59 = v31;
  (v34)(v31 + v28, v33);
  v35 = *(v54 + 32);
  v36 = v31 + v30;
  v37 = v71;
  v35(v36, v55, v71);
  v35(v67, v25, v37);
  v38 = v72;
  v57(v69, v66, v72);
  v39 = (v29 + 136) & ~v29;
  v40 = (v18 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 2) = v38;
  *(v41 + 3) = v32;
  v42 = v64;
  *(v41 + 4) = v64;
  outlined init with take of PresentationSource(v61, v41 + 40);
  v35(v41 + v39, v67, v71);
  v43 = v69;
  *(v41 + v40) = v70;
  v44 = v58;
  v58(v41 + ((v26 + v40 + 8) & ~v26), v43, v38);
  v45 = v60;
  v44(v60, v66, v38);
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v47 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v48 = (*(v46 + 64) + v26 + v47) & ~v26;
  v49 = swift_allocObject();
  v50 = v68;
  *(v49 + 2) = v38;
  *(v49 + 3) = v50;
  *(v49 + 4) = v42;
  outlined init with take of URL?(v62, v49 + v47, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  result = (v44)(v49 + v48, v45, v38);
  v52 = v63;
  v53 = v59;
  *v63 = partial apply for closure #1 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v52[1] = v53;
  v52[2] = &async function pointer to partial apply for closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v52[3] = v41;
  v52[4] = &async function pointer to partial apply for closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v52[5] = v49;
  return result;
}

uint64_t static Actions.Download.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 1;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.Download.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.Download.action(context:);
  *(a2 + 104) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.Download@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 1;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.Download.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.Download.action(context:);
  *(a2 + 104) = 0;
}

unint64_t closure #1 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMR);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMR);
  v27 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v26 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  __chkstk_darwin();
  v10 = &v26 - v9;
  v11 = *(a3 - 8);
  __chkstk_darwin();
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Playlist();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin();
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v29, a3, v16);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if ((v19 & 1) == 0)
  {
    v20(v10, 1, 1, v14);
    v22 = &_s8MusicKit8PlaylistVSgMd;
    v23 = &_s8MusicKit8PlaylistVSgMR;
    v24 = v10;
    goto LABEL_5;
  }

  v20(v10, 0, 1, v14);
  (*(v15 + 32))(v18, v10, v14);
  Playlist.entries.getter();
  v21 = v27;
  if ((*(v27 + 48))(v5, 1, v6) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v22 = &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd;
    v23 = &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMR;
    v24 = v5;
LABEL_5:
    outlined destroy of TaskPriority?(v24, v22, v23);
    return MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  }

  (*(v21 + 32))(v8, v5, v6);
  lazy protocol witness table accessor for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v31 == v30)
  {
    (*(v21 + 8))(v8, v6);
    (*(v15 + 8))(v18, v14);
    return 0xD000000000000011;
  }

  (*(v21 + 8))(v8, v6);
  (*(v15 + 8))(v18, v14);
  return MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
}

uint64_t sub_100067578()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMR);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 16);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMR) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0 + v2, v5, v1);
}

uint64_t closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[44] = a6;
  v7[45] = a7;
  v7[42] = a4;
  v7[43] = a5;
  v7[40] = a2;
  v7[41] = a3;
  v7[39] = a1;
  type metadata accessor for Locale();
  v7[46] = swift_task_alloc();
  v9 = type metadata accessor for String.LocalizationValue();
  v7[47] = v9;
  v7[48] = *(v9 - 8);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v10 = *(a5 - 8);
  v7[51] = v10;
  v7[52] = *(v10 + 64);
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v11 = type metadata accessor for MusicLibrary.DownloadAction.UnsupportedReason();
  v7[55] = v11;
  v7[56] = *(v11 - 8);
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMR);
  v7[61] = v12;
  v7[62] = *(v12 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v90 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v3 + 16);
  v4(v1, *(v0 + 320), v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v6 = *(v0 + 520);
    v8 = *(v0 + 472);
    v7 = *(v0 + 480);
    v9 = *(v0 + 440);
    v10 = *(v0 + 448);
    (*(*(v0 + 496) + 96))(v6, *(v0 + 488));
    (*(v10 + 32))(v7, v6, v9);
    v11 = *(v10 + 16);
    v11(v8, v7, v9);
    if ((*(v10 + 88))(v8, v9) == enum case for MusicLibrary.DownloadAction.UnsupportedReason.cellularDataDisallowed(_:))
    {
      v12 = *(v0 + 312);
      v13 = swift_task_alloc();
      *(v0 + 528) = v13;
      *(v13 + 16) = v12;
      v14 = swift_task_alloc();
      *(v0 + 536) = v14;
      *v14 = v0;
      v14[1] = closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:);

      return withCheckedContinuation<A>(isolation:function:_:)(v0 + 600, 0, 0, 0xD00000000000001DLL, 0x80000001004C61C0, partial apply for closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v13, &type metadata for Bool);
    }

    if (one-time initialization token for actions != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 480);
    v33 = *(v0 + 464);
    v34 = *(v0 + 440);
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.actions);
    v11(v33, v32, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 480);
    v40 = *(v0 + 464);
    if (v38)
    {
      v41 = *(v0 + 448);
      v42 = *(v0 + 456);
      v43 = *(v0 + 440);
      v87 = *(v0 + 480);
      v44 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v89 = v84;
      *v44 = 136315138;
      v11(v42, v40, v43);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = *(v41 + 8);
      v48(v40, v43);
      v49 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v45, v47, &v89);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, "Couldn't download for reason: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);

      v50 = v87;
    }

    else
    {
      v43 = *(v0 + 440);
      v63 = *(v0 + 448);

      v48 = *(v63 + 8);
      v48(v40, v43);
      v50 = v39;
    }

    v48(v50, v43);
    v48(*(v0 + 472), *(v0 + 440));
    goto LABEL_25;
  }

  if (v5 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    if (one-time initialization token for actions != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 512);
    v16 = *(v0 + 488);
    v17 = *(v0 + 320);
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.actions);
    v4(v15, v17, v16);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 512);
    if (v21)
    {
      v86 = v20;
      v23 = *(v0 + 496);
      v24 = *(v0 + 504);
      v25 = *(v0 + 488);
      v26 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89 = v83;
      *v26 = 136315138;
      v4(v24, v22, v25);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      v30 = *(v23 + 8);
      v30(v22, v25);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v29, &v89);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v19, v86, "Unknown status=%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v83);

      v30(*(v0 + 520), *(v0 + 488));
    }

    else
    {
      v51 = *(v0 + 488);
      v52 = *(v0 + 496);

      v53 = *(v52 + 8);
      v53(v22, v51);
      v53(*(v0 + 520), *(v0 + 488));
    }
  }

  v54 = *(*(v0 + 408) + 16);
  v54(*(v0 + 432), *(v0 + 336), *(v0 + 344));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore21AudioVariantProviding_pMd, &_s9MusicCore21AudioVariantProviding_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    outlined destroy of TaskPriority?(v0 + 272, &_s9MusicCore21AudioVariantProviding_pSgMd, &_s9MusicCore21AudioVariantProviding_pSgMR);
    goto LABEL_22;
  }

  outlined init with take of ActionPerforming((v0 + 272), v0 + 232);
  v56 = *(v0 + 256);
  v55 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 232), v56);
  if (!AudioVariantProviding.supportsDolbyPlayback.getter(v56, v55) || (v57 = [objc_opt_self() standardUserDefaults], v58 = objc_msgSend(v57, "prefersSpatialDownloads"), v57, (v58 & 1) != 0) || (v59 = objc_opt_self(), *(v0 + 544) = v59, v60 = objc_msgSend(v59, "standardUserDefaults"), v61 = String._bridgeToObjectiveC()(), v62 = objc_msgSend(v60, "BOOLForKey:", v61), v61, v60, (v62 & 1) != 0))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 232));
LABEL_22:
    kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(*(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360));
LABEL_25:

    v64 = *(v0 + 8);

    return v64();
  }

  v65 = *(v0 + 392);
  v66 = *(v0 + 400);
  v67 = *(v0 + 376);
  v68 = *(v0 + 384);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v68 + 16))(v65, v66, v67);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 400);
  v69 = *(v0 + 408);
  v71 = *(v0 + 384);
  v72 = *(v0 + 376);
  v85 = *(v0 + 360);
  v80 = *(v0 + 336);
  v81 = *(v0 + 424);
  v82 = *(v0 + 328);
  v73 = static NSBundle.module;
  v88 = *(v0 + 344);
  static Locale.current.getter();
  *(v0 + 552) = String.init(localized:table:bundle:locale:comment:)();
  *(v0 + 560) = v74;
  (*(v71 + 8))(v70, v72);
  v54(v81, v80, v88);
  v75 = (*(v69 + 80) + 48) & ~*(v69 + 80);
  v76 = swift_allocObject();
  *(v0 + 568) = v76;
  *(v76 + 16) = v88;
  *(v76 + 32) = v85;
  *(v76 + 40) = v82;
  (*(v69 + 32))(v76 + v75, v81, v88);
  *(v0 + 576) = type metadata accessor for MainActor();

  *(v0 + 584) = static MainActor.shared.getter();
  v78 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v78, v77);
}

{

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 600);
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.actions);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cellular data enablement: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 480);
  v7 = *(v0 + 440);
  v8 = *(v0 + 448);

  (*(v8 + 8))(v6, v7);
  if (!v1)
  {
    goto LABEL_13;
  }

  v9 = *(*(v0 + 408) + 16);
  v9(*(v0 + 432), *(v0 + 336), *(v0 + 344));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore21AudioVariantProviding_pMd, &_s9MusicCore21AudioVariantProviding_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    outlined destroy of TaskPriority?(v0 + 272, &_s9MusicCore21AudioVariantProviding_pSgMd, &_s9MusicCore21AudioVariantProviding_pSgMR);
    goto LABEL_12;
  }

  outlined init with take of ActionPerforming((v0 + 272), v0 + 232);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 232), v11);
  if (!AudioVariantProviding.supportsDolbyPlayback.getter(v11, v10) || (v12 = [objc_opt_self() standardUserDefaults], v13 = objc_msgSend(v12, "prefersSpatialDownloads"), v12, (v13 & 1) != 0) || (v14 = objc_opt_self(), *(v0 + 544) = v14, v15 = objc_msgSend(v14, "standardUserDefaults"), v16 = String._bridgeToObjectiveC()(), v17 = objc_msgSend(v15, "BOOLForKey:", v16), v16, v15, (v17 & 1) != 0))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 232));
LABEL_12:
    kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(*(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360));
LABEL_13:

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = *(v0 + 392);
  v21 = *(v0 + 400);
  v22 = *(v0 + 376);
  v23 = *(v0 + 384);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v23 + 16))(v20, v21, v22);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 400);
  v24 = *(v0 + 408);
  v26 = *(v0 + 384);
  v27 = *(v0 + 376);
  v37 = *(v0 + 360);
  v34 = *(v0 + 336);
  v35 = *(v0 + 424);
  v36 = *(v0 + 328);
  v28 = static NSBundle.module;
  v38 = *(v0 + 344);
  static Locale.current.getter();
  *(v0 + 552) = String.init(localized:table:bundle:locale:comment:)();
  *(v0 + 560) = v29;
  (*(v26 + 8))(v25, v27);
  v9(v35, v34, v38);
  v30 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v31 = swift_allocObject();
  *(v0 + 568) = v31;
  *(v31 + 16) = v38;
  *(v31 + 32) = v37;
  *(v31 + 40) = v36;
  (*(v24 + 32))(v31 + v30, v35, v38);
  *(v0 + 576) = type metadata accessor for MainActor();

  *(v0 + 584) = static MainActor.shared.getter();
  v33 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v33, v32);
}

{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];

  specialized static Alert.dolbyAtmosDownloadsAlert(message:completion:)(v3, v2, &async function pointer to partial apply for closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v1, (v0 + 14));

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 312);

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

    v12 = *(v0 + 312);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 216) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 224) = 0;
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 208) = &block_descriptor_4;
    v14 = _Block_copy((v0 + 184));
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
    v3 = v3;
    v5(v12, v3, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 144), 1, 0, 0);
  }

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = [*(v0 + 544) standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v3];

  outlined destroy of Alert(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 232));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1)
{
  *(v1 + 592) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v3, v2);
}

uint64_t sub_100069520()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + 88);
  if (v8 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v8);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  v9 = (v4 + 136) & ~v4;
  v10 = (((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  (*(v3 + 8))(v0 + v9, v2);

  (*(v6 + 8))(v0 + v10, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMR) - 8);
  v6 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + *(*(v3 - 8) + 80) + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)((v0 + 5), v0 + v6, v9, v0 + v8, v3, v2, v4);
}

uint64_t closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v10 = &v17[-v9];
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v8, a1, v4);
  outlined init with copy of PresentationSource(a2, v17);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v15 + v13, v8, v4);
  outlined init with take of PresentationSource(v17, v15 + v14);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v15);
}

uint64_t closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v5[33] = *(v7 + 64);
  v5[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v9, v8);
}

uint64_t closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{

  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.actions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will present cellular data enablement alert", v4, 2u);
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v7 + 16))(v5, v8, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v5, v6);
  specialized static Alert.cellularDataDisallowedAlert(_:)(partial apply for closure #1 in closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v11, (v0 + 112));

  v12 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 112), 0, 1);
  v13 = v12;
  v14 = *(v0 + 144);
  v15 = *(v9 + 80);
  if (v15)
  {
    v16 = *(v9 + 88);
    v17 = one-time initialization token for logger;

    if (v17 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, static PresentationSource.logger);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Deferring presentation…", v20, 2u);
    }

    v21 = *(v0 + 240);

    v22 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 216) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 224) = 0;
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 208) = &block_descriptor_56;
    v23 = _Block_copy((v0 + 184));
    v24 = [v22 initWithTimeout:v23 interruptionHandler:10.0];
    _Block_release(v23);

    outlined init with copy of PresentationSource(v21, v0 + 16);
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    outlined init with take of PresentationSource(v0 + 16, v25 + 24);
    *(v25 + 120) = v13;
    *(v25 + 128) = v14;
    *(v25 + 129) = 1;
    *(v25 + 136) = 0;
    *(v25 + 144) = 0;
    v26 = v24;
    v13 = v13;
    v15(v21, v13, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v25);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v15, v16);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v12, *(v0 + 144), 1, 0, 0);
  }

  outlined destroy of Alert(v0 + 112);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v14 = &v19 - v13;
  static TaskPriority.userInitiated.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  (*(v10 + 16))(v12, a2, a3);
  v16 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a3;
  *(v17 + 5) = a4;
  *(v17 + 6) = a5;
  *(v17 + 7) = a1;
  (*(v10 + 32))(&v17[v16], v12, a3);

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v17);

  return outlined destroy of TaskPriority?(v14, &_sScPSgMd_0, &_sScPSgMR_0);
}

uint64_t closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = *(a6 - 8);
  v7[6] = swift_task_alloc();
  v7[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:);

  return MusicLibrary.download<A>(_:)(a5, a6, a7);
}

uint64_t closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v29 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.actions);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v11 = v0[7];
  if (v9)
  {
    v27 = v8;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[4];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136446466;
    v6(v13, v11, v14);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    (*(v12 + 8))(v11, v14);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v20 = String.init<A>(describing:)();
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v7, v27, "Download failed to item=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[4];
    v24 = v0[5];

    (*(v24 + 8))(v11, v23);
  }

  v25 = v0[1];

  return v25();
}