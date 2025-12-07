uint64_t specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = a3;
  v112 = a1;
  v90 = type metadata accessor for Track();
  v84 = *(v90 - 8);
  __chkstk_darwin();
  v82 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v77 - v5;
  __chkstk_darwin();
  v85 = &v77 - v6;
  v87 = type metadata accessor for Playlist.Entry.InternalItem();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Playlist.Entry();
  v91 = *(v93 - 8);
  __chkstk_darwin();
  v89 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v77 - v9;
  v96 = type metadata accessor for TVEpisode();
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v77 - v11;
  v100 = type metadata accessor for TVSeason();
  v95 = *(v100 - 8);
  __chkstk_darwin();
  v99 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for MusicMovie();
  v98 = *(v103 - 8);
  __chkstk_darwin();
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v77 - v14;
  v105 = type metadata accessor for Song();
  v101 = *(v105 - 8);
  __chkstk_darwin();
  v80 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v77 - v16;
  v108 = type metadata accessor for Playlist();
  v104 = *(v108 - 8);
  __chkstk_darwin();
  v107 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MusicVideo();
  v109 = *(v18 - 8);
  __chkstk_darwin();
  v79 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v77 - v20;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v110 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for String.LocalizationValue();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v77 - v27;
  v29 = type metadata accessor for Album();
  v30 = *(v29 - 8);
  __chkstk_darwin();
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114[3] = a2;
  v114[4] = v111;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v112, a2);
  outlined init with copy of ActionPerforming(v114, &v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryAddable_pMd, &_s8MusicKit0A14LibraryAddable_pMR);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v34 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v30 + 8))(v32, v29);
    goto LABEL_29;
  }

  v36 = v18;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v37 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v109 + 8))(v21, v18);
    goto LABEL_29;
  }

  v39 = v107;
  v38 = v108;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v40 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v104 + 8))(v39, v38);
    goto LABEL_29;
  }

  v41 = v105;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v42 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v101 + 8))(v106, v41);
    goto LABEL_29;
  }

  v43 = v28;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v44 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v98 + 8))(v102, v103);
    goto LABEL_29;
  }

  v45 = v23;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v46 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v95 + 8))(v99, v100);
    goto LABEL_29;
  }

  v47 = v96;
  v48 = v24;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v45);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v49 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v45);
    (*(v94 + 8))(v97, v47);
    goto LABEL_29;
  }

  v51 = v92;
  v52 = v93;
  if (!swift_dynamicCast())
  {
    v64 = v85;
    v65 = v90;
    if (swift_dynamicCast())
    {
      v112 = v36;
      v66 = v84;
      v67 = v83;
      (*(v84 + 32))(v83, v64, v65);
      v68 = v82;
      (*(v66 + 16))(v82, v67, v65);
      v69 = (*(v66 + 88))(v68, v65);
      if (v69 == enum case for Track.song(_:))
      {
        (*(v66 + 96))(v68, v65);
        v70 = v101;
        v71 = v80;
        (*(v101 + 32))(v80, v68, v41);
        v35 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v71);
        (*(v70 + 8))(v71, v41);
LABEL_41:
        (*(v66 + 8))(v67, v65);
LABEL_29:
        __swift_destroy_boxed_opaque_existential_0Tm(&v113);
LABEL_30:
        __swift_destroy_boxed_opaque_existential_0Tm(v114);
        return v35;
      }

      if (v69 == enum case for Track.musicVideo(_:))
      {
        (*(v66 + 96))(v68, v65);
        v72 = v109;
        v73 = v79;
        v74 = v112;
        (*(v109 + 32))(v79, v68, v112);
        v35 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v73);
        (*(v72 + 8))(v73, v74);
        goto LABEL_41;
      }

      v75 = *(v66 + 8);
      v75(v67, v65);
      v75(v68, v65);
    }

LABEL_51:
    __swift_destroy_boxed_opaque_existential_0Tm(&v113);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v48 + 16))(v26, v43, v45);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v76 = static NSBundle.module;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v48 + 8))(v43, v45);
    goto LABEL_30;
  }

  v112 = v36;
  v53 = v51;
  v54 = v91;
  v55 = v89;
  (*(v91 + 32))(v89, v53, v52);
  v56 = v88;
  Playlist.Entry.internalItem.getter();
  v57 = v86;
  v58 = v87;
  v59 = (*(v86 + 88))(v56, v87);
  if (v59 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v98;
    v61 = v81;
    v62 = v103;
    (*(v98 + 32))(v81, v56, v103);
    v63 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v61);
LABEL_47:
    v35 = v63;
    (*(v60 + 8))(v61, v62);
    (*(v54 + 8))(v55, v52);
    goto LABEL_29;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v109;
    v61 = v79;
    v62 = v112;
    (*(v109 + 32))(v79, v56, v112);
    v63 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v61);
    goto LABEL_47;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v101;
    v61 = v80;
    v62 = v105;
    (*(v101 + 32))(v80, v56, v105);
    v63 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v61);
    goto LABEL_47;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v94;
    v61 = v78;
    v62 = v96;
    (*(v94 + 32))(v78, v56, v96);
    v63 = specialized message #1 (for:) in static Alert.confirmDelete(for:library:)(v61);
    goto LABEL_47;
  }

  if (v59 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v59 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v54 + 8))(v55, v52);
    (*(v57 + 8))(v56, v58);
    goto LABEL_51;
  }

  (*(v57 + 8))(v56, v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Alert.explicitRestrictedAlert(traitCollection:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = type metadata accessor for UUID();
  v99 = *(v101 - 8);
  __chkstk_darwin();
  v98 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicRestrictions();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin();
  v89 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for String.LocalizationValue();
  v9 = *(v102 - 8);
  __chkstk_darwin();
  v103 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v87 - v11;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v114[4] = v110;
  v114[5] = v111;
  v114[6] = v112;
  v114[7] = v113;
  v114[0] = v106;
  v114[1] = v107;
  v114[2] = v108;
  v114[3] = v109;
  v13 = *(&v108 + 1);

  outlined destroy of ApplicationCapabilities(v114);
  LODWORD(v94) = specialized Set.contains(_:)(7u, v13);

  v14 = [objc_opt_self() allowAccountModifications];
  v100 = v8;
  if (v14)
  {
    if (a1)
    {
      v15 = [a1 userInterfaceIdiom] != 3;
    }

    else
    {
      v15 = 1;
    }

    LODWORD(v95) = v15;
  }

  else
  {
    LODWORD(v95) = 0;
  }

  v16 = v102;
  v17 = v103;
  String.LocalizationValue.init(stringLiteral:)();
  v104 = *(v9 + 16);
  v105 = v9 + 16;
  v104(v17, v12, v16);
  v18 = v12;
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v19 = static NSBundle.module;
  v20 = static NSBundle.module;
  static Locale.current.getter();
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v96 = v22;
  v97 = v21;
  v23 = v9 + 8;
  v24 = *(v9 + 8);
  v24(v18, v16);
  if (v95)
  {
    v25 = v20;
    v92 = v23;
    v93 = v24;
    v87[1] = v19;
    v88 = a2;
    if ((v94 & 1) != 0 || (v26 = v89, static MusicRestrictions.current.getter(), v27 = MusicRestrictions.allowsMusicVideos.getter(), (*(v90 + 8))(v26, v91), (v27 & 1) == 0))
    {
      v64 = v18;
      String.LocalizationValue.init(stringLiteral:)();
      v66 = v102;
      v65 = v103;
      v104(v103, v64, v102);
      v67 = v25;
      static Locale.current.getter();
      v68 = v67;
      v94 = String.init(localized:table:bundle:locale:comment:)();
      v95 = v69;
      v70 = v93;
      v93(v64, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1004F2EF0;
      String.LocalizationValue.init(stringLiteral:)();
      v104(v65, v64, v66);
      static Locale.current.getter();
      v71 = String.init(localized:table:bundle:locale:comment:)();
      v90 = v72;
      v91 = v71;
      v70(v64, v66);
      v73 = v98;
      UUID.init()();
      v74 = UUID.uuidString.getter();
      v76 = v75;
      v99 = *(v99 + 8);
      (v99)(v73, v101);
      *(v36 + 32) = v74;
      *(v36 + 40) = v76;
      v77 = v90;
      *(v36 + 48) = v91;
      *(v36 + 56) = v77;
      *(v36 + 64) = 2;
      *(v36 + 72) = &async function pointer to closure #2 in static Alert.explicitRestrictedAlert(traitCollection:);
      *(v36 + 80) = 0;
      String.LocalizationValue.init(stringLiteral:)();
      v78 = v66;
      v104(v65, v64, v66);
      static Locale.current.getter();
      v79 = String.init(localized:table:bundle:locale:comment:)();
      v81 = v80;
      v93(v64, v78);
      UUID.init()();
      v82 = UUID.uuidString.getter();
      v84 = v83;
      result = (v99)(v73, v101);
      *(v36 + 88) = v82;
      *(v36 + 96) = v84;
      *(v36 + 104) = v79;
      *(v36 + 112) = v81;
      v51 = (v36 + 128);
      *(v36 + 120) = 2;
      v32 = v94;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      v28 = v103;
      v29 = v102;
      (v104)(v103, v18);
      v30 = v25;
      static Locale.current.getter();
      v31 = v30;
      v32 = String.init(localized:table:bundle:locale:comment:)();
      v95 = v33;
      v34 = v29;
      v35 = v93;
      v93(v18, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1004F2EF0;
      String.LocalizationValue.init(stringLiteral:)();
      v104(v28, v18, v34);
      static Locale.current.getter();
      v94 = String.init(localized:table:bundle:locale:comment:)();
      v91 = v37;
      v35(v18, v34);
      v38 = v98;
      UUID.init()();
      v39 = UUID.uuidString.getter();
      v41 = v40;
      v99 = *(v99 + 8);
      (v99)(v38, v101);
      *(v36 + 32) = v39;
      *(v36 + 40) = v41;
      v42 = v91;
      *(v36 + 48) = v94;
      *(v36 + 56) = v42;
      *(v36 + 64) = 2;
      *(v36 + 72) = &async function pointer to closure #1 in static Alert.explicitRestrictedAlert(traitCollection:);
      *(v36 + 80) = 0;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v102;
      v104(v28, v18, v102);
      static Locale.current.getter();
      v44 = String.init(localized:table:bundle:locale:comment:)();
      v46 = v45;
      v93(v18, v43);
      UUID.init()();
      v47 = UUID.uuidString.getter();
      v49 = v48;
      result = (v99)(v38, v101);
      *(v36 + 88) = v47;
      *(v36 + 96) = v49;
      *(v36 + 104) = v44;
      *(v36 + 112) = v46;
      v51 = (v36 + 128);
      *(v36 + 120) = 2;
    }

    a2 = v88;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v104(v17, v18, v16);
    v52 = v20;
    static Locale.current.getter();
    v53 = v52;
    v54 = v103;
    v94 = String.init(localized:table:bundle:locale:comment:)();
    v95 = v55;
    v56 = v16;
    v24(v18, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1004F2400;
    String.LocalizationValue.init(stringLiteral:)();
    v104(v54, v18, v56);
    static Locale.current.getter();
    v32 = v94;
    v57 = String.init(localized:table:bundle:locale:comment:)();
    v59 = v58;
    v24(v18, v56);
    v60 = v98;
    UUID.init()();
    v61 = UUID.uuidString.getter();
    v63 = v62;
    result = (*(v99 + 8))(v60, v101);
    *(v36 + 32) = v61;
    *(v36 + 40) = v63;
    *(v36 + 48) = v57;
    *(v36 + 56) = v59;
    v51 = (v36 + 72);
    *(v36 + 64) = 2;
  }

  *v51 = 0;
  v51[1] = 0;
  v85 = v96;
  *a2 = v97;
  *(a2 + 8) = v85;
  v86 = v95;
  *(a2 + 16) = v32;
  *(a2 + 24) = v86;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v36;
  *(a2 + 64) = 0;
  return result;
}

uint64_t specialized static Alert.Action.cancel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v20[-v10];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v7 + 16))(v9, v11, v6);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

void specialized static Alert.dolbyAtmosDownloadsAlert(message:completion:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v60 = a1;
  v61 = a2;
  v66 = type metadata accessor for UUID();
  v59 = *(v66 - 8);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v47 - v13;
  String.LocalizationValue.init(stringLiteral:)();
  v15 = v10;
  v16 = *(v10 + 16);
  v65 = v10 + 16;
  v58 = v16;
  v16(v12, v14, v9);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v17 = static NSBundle.module;
  v18 = static NSBundle.module;
  v64 = v17;
  v19 = v18;
  static Locale.current.getter();
  v51 = v19;
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v56 = v21;
  v57 = v20;
  v22 = *(v15 + 8);
  v62 = v15 + 8;
  v63 = v22;
  v22(v14, v9);
  v23 = swift_allocObject();
  v54 = v23;
  v24 = v55;
  *(v23 + 16) = v55;
  *(v23 + 24) = a4;

  UUID.init()();
  v25 = v12;
  v26 = v8;
  v27 = UUID.uuidString.getter();
  v52 = v28;
  v53 = v27;
  v29 = v24;
  v48 = *(v59 + 8);
  v48(v26, v66);
  String.LocalizationValue.init(stringLiteral:)();
  v30 = v58;
  v58(v25, v14, v9);
  static Locale.current.getter();
  v31 = v51;
  v59 = String.init(localized:table:bundle:locale:comment:)();
  v51 = v32;
  v63(v14, v9);
  v33 = swift_allocObject();
  v50 = v33;
  *(v33 + 16) = v29;
  *(v33 + 24) = a4;

  UUID.init()();
  v55 = UUID.uuidString.getter();
  v49 = v34;
  v48(v26, v66);
  String.LocalizationValue.init(stringLiteral:)();
  v30(v25, v14, v9);
  static Locale.current.getter();
  v35 = String.init(localized:table:bundle:locale:comment:)();
  v37 = v36;
  v63(v14, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1004F2EF0;
  v39 = v52;
  *(v38 + 32) = v53;
  *(v38 + 40) = v39;
  v40 = v56;
  *(v38 + 48) = v57;
  *(v38 + 56) = v40;
  *(v38 + 64) = 2;
  v41 = v54;
  v42 = v55;
  *(v38 + 72) = &async function pointer to partial apply for closure #1 in static Alert.dolbyAtmosDownloadsAlert(message:completion:);
  *(v38 + 80) = v41;
  v43 = v49;
  *(v38 + 88) = v42;
  *(v38 + 96) = v43;
  v44 = v50;
  v45 = v51;
  *(v38 + 104) = v59;
  *(v38 + 112) = v45;
  *(v38 + 120) = 0;
  *(v38 + 128) = &async function pointer to partial apply for closure #2 in static Alert.dolbyAtmosDownloadsAlert(message:completion:);
  *(v38 + 136) = v44;

  *a5 = v35;
  *(a5 + 8) = v37;
  *(a5 + 16) = v60;
  *(a5 + 24) = v46;
  *(a5 + 32) = 0;
  *(a5 + 33) = v68[0];
  *(a5 + 36) = *(v68 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = *v67;
  *(a5 + 52) = *&v67[3];
  *(a5 + 56) = v38;
  *(a5 + 64) = 0;
}

id specialized static Alert.cellularDataDisallowedAlert(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a2;
  v45 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v40 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = v5;
  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v11 = v13;
  v13(v7, v9, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v51 = v11;
  v14 = static NSBundle.module;
  v49 = static NSBundle.module;
  static Locale.current.getter();
  v50 = v14;
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v46 = v16;
  v47 = v15;
  v44 = *(v10 + 8);
  v17 = v10 + 8;
  v44(v9, v4);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v19 = result;
    MobileGestalt_get_wapiCapability();

    v41 = a3;
    String.LocalizationValue.init(stringLiteral:)();
    v20 = v51;
    v51(v7, v9, v4);
    v21 = v49;
    static Locale.current.getter();
    v40[1] = v12;
    v22 = String.init(localized:table:bundle:locale:comment:)();
    v42 = v23;
    v43 = v22;
    v24 = v44;
    v40[2] = v17;
    v44(v9, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1004F2EF0;
    String.LocalizationValue.init(stringLiteral:)();
    v20(v7, v9, v4);
    static Locale.current.getter();
    v26 = v49;
    v27 = String.init(localized:table:bundle:locale:comment:)();
    v29 = v28;
    v24(v9, v4);
    v30 = swift_allocObject();
    v31 = v45;
    v32 = v48;
    *(v30 + 16) = v45;
    *(v30 + 24) = v32;
    *(v25 + 32) = 0x6C65636E6163;
    *(v25 + 40) = 0xE600000000000000;
    *(v25 + 48) = v27;
    *(v25 + 56) = v29;
    *(v25 + 64) = 0;
    *(v25 + 72) = &async function pointer to partial apply for closure #1 in static Alert.cellularDataDisallowedAlert(_:);
    *(v25 + 80) = v30;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v31, v32);
    String.LocalizationValue.init(stringLiteral:)();
    v51(v7, v9, v4);
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    v35 = v34;
    v24(v9, v4);
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    *(v36 + 24) = v32;
    *(v25 + 88) = 0x6E4F6E727574;
    *(v25 + 96) = 0xE600000000000000;
    *(v25 + 104) = v33;
    *(v25 + 112) = v35;
    *(v25 + 120) = 2;
    *(v25 + 128) = &async function pointer to partial apply for closure #2 in static Alert.cellularDataDisallowedAlert(_:);
    *(v25 + 136) = v36;
    result = outlined copy of (@escaping @callee_guaranteed () -> ())?(v31, v32);
    v37 = v46;
    v38 = v41;
    *v41 = v47;
    v38[1] = v37;
    v39 = v42;
    v38[2] = v43;
    v38[3] = v39;
    *(v38 + 32) = 0;
    *(v38 + 33) = v53[0];
    *(v38 + 9) = *(v53 + 3);
    v38[5] = 0;
    *(v38 + 48) = 1;
    *(v38 + 49) = *v52;
    *(v38 + 13) = *&v52[3];
    v38[7] = v25;
    v38[8] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static Alert.enableCloudLibraryAlert(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v8 = static CloudLibrary.EnablementContext.action;

  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = CloudLibrary.EnablementContext.title.getter(v2);
  v14 = v13;
  v15 = CloudLibrary.EnablementContext.message.getter(v2);
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004F2EF0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v11;
  *(v18 + 48) = v8;
  *(v18 + 64) = 2;
  *(v18 + 72) = &async function pointer to closure #1 in static Alert.enableCloudLibraryAlert(context:);
  *(v18 + 80) = 0;

  specialized static Alert.Action.cancel.getter(v22);
  v19 = v22[1];
  *(v18 + 88) = v22[0];
  *(v18 + 104) = v19;
  *(v18 + 120) = v22[2];
  *(v18 + 136) = v23;

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 33) = v22[0];
  *(a2 + 36) = *(v22 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v24;
  *(a2 + 52) = *&v24[3];
  *(a2 + 56) = v18;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_1001155C8()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id specialized static Alert.cellularRestrictedAlert(model:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for String.LocalizationValue();
  v95 = *(v93 - 8);
  __chkstk_darwin();
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v81 - v11;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  wapiCapability = MobileGestalt_get_wapiCapability();

  v89 = v7;
  v90 = v5;
  v91 = v4;
  v92 = a2;
  if (!a1)
  {
    goto LABEL_38;
  }

  objc_opt_self();
  v16 = v10;
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (wapiCapability)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19 = v93;
      v18(v10, v12, v93);
      v20 = v10;
      if (one-time initialization token for module == -1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19 = v93;
      v18(v10, v12, v93);
      v20 = v10;
      if (one-time initialization token for module == -1)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_51;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v21 = v93;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_13:
    String.LocalizationValue.init(stringLiteral:)();
    v22 = v95;
    v23 = *(v95 + 16);
    v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v16, v12, v21);
    v24 = v16;
    if (one-time initialization token for module == -1)
    {
      goto LABEL_34;
    }

LABEL_53:
    swift_once();
    goto LABEL_34;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
LABEL_38:
    v19 = v93;
    v16 = v10;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v26 = v25;
  v27 = MPModelRelationshipMediaClipStaticAssets;
  v28 = a1;
  if (![v26 hasLoadedValueForKey:v27])
  {

    goto LABEL_38;
  }

  v29 = [v26 staticAssets];
  v19 = v93;
  if (!v29)
  {

    v16 = v10;
    if ((wapiCapability & 1) == 0)
    {
LABEL_42:
      String.LocalizationValue.init(stringLiteral:)();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v18(v16, v12, v19);
      v20 = v16;
      if (one-time initialization token for module == -1)
      {
LABEL_43:
        v55 = static NSBundle.module;
        static Locale.current.getter();
        v56 = v55;
        v57 = String.init(localized:table:bundle:locale:comment:)();
        v87 = v58;
        v88 = v57;
        v59 = *(v17 + 8);
        v59(v12, v19);
        String.LocalizationValue.init(stringLiteral:)();
        v18(v20, v12, v19);
        static Locale.current.getter();
        v60 = String.init(localized:table:bundle:locale:comment:)();
        v85 = v61;
        v86 = v60;
        v59(v12, v19);
        v46 = v59;
        String.LocalizationValue.init(stringLiteral:)();
        v49 = v12;
        v62 = v12;
        v51 = v19;
        v18(v20, v62, v19);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v52 = v18;
        v82 = v56;
        static Locale.current.getter();
        v63 = String.init(localized:table:bundle:locale:comment:)();
        v93 = v64;
        v83 = v63;
        v84 = &async function pointer to closure #2 in static Alert.cellularRestrictedAlert(model:);
        v48 = v20;
        goto LABEL_46;
      }

LABEL_51:
      swift_once();
      goto LABEL_43;
    }

LABEL_39:
    String.LocalizationValue.init(stringLiteral:)();
    v17 = v95;
    v18 = *(v95 + 16);
    v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v16, v12, v19);
    v20 = v16;
    if (one-time initialization token for module == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v30 = v29;
  v87 = v28;
  type metadata accessor for MPModelStaticAsset();
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v31 >> 62)
  {
LABEL_56:
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v31;
  v16 = v10;
  if (!v32)
  {
LABEL_41:

    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v34 = 0;
  v94 = MPModelPropertyStaticAssetMediaType;
  v88 = v31 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v34 >= *(v88 + 16))
      {
        goto LABEL_55;
      }

      v35 = *(v33 + 8 * v34 + 32);
    }

    v19 = v35;
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ([v35 hasLoadedValueForKey:v94])
    {
      break;
    }

LABEL_23:
    ++v34;
    v19 = v93;
    v33 = v31;
    if (v36 == v32)
    {
      goto LABEL_41;
    }
  }

  v37 = [v19 mediaType];

  v38 = v37 == 2;
  v16 = v10;
  if (!v38)
  {
    goto LABEL_23;
  }

  v21 = v93;
  if (wapiCapability)
  {
    goto LABEL_13;
  }

LABEL_33:
  String.LocalizationValue.init(stringLiteral:)();
  v22 = v95;
  v23 = *(v95 + 16);
  v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v16, v12, v21);
  v24 = v16;
  if (one-time initialization token for module != -1)
  {
    goto LABEL_53;
  }

LABEL_34:
  v39 = static NSBundle.module;
  static Locale.current.getter();
  v40 = v39;
  v41 = String.init(localized:table:bundle:locale:comment:)();
  v87 = v42;
  v88 = v41;
  v43 = *(v22 + 8);
  v43(v12, v21);
  String.LocalizationValue.init(stringLiteral:)();
  v23(v24, v12, v21);
  static Locale.current.getter();
  v44 = String.init(localized:table:bundle:locale:comment:)();
  v85 = v45;
  v86 = v44;
  v43(v12, v21);
  v46 = v43;
  v47 = v21;
  v48 = v24;
  String.LocalizationValue.init(stringLiteral:)();
  v49 = v12;
  v50 = v12;
  v51 = v47;
  v23(v24, v50, v47);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v52 = v23;
  v82 = v40;
  static Locale.current.getter();
  v53 = String.init(localized:table:bundle:locale:comment:)();
  v93 = v54;
  v83 = v53;
  v84 = &async function pointer to closure #1 in static Alert.cellularRestrictedAlert(model:);
LABEL_46:
  v81 = v46;
  v46(v49, v51);
  v65 = v89;
  UUID.init()();
  v95 = UUID.uuidString.getter();
  v67 = v66;
  v68 = v91;
  v69 = *(v90 + 8);
  v69(v65, v91);

  String.LocalizationValue.init(stringLiteral:)();
  v52(v48, v49, v51);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  static Locale.current.getter();
  v70 = String.init(localized:table:bundle:locale:comment:)();
  v96 = v71;
  v81(v49, v51);
  UUID.init()();
  v72 = UUID.uuidString.getter();
  v74 = v73;
  v69(v65, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1004F2EF0;
  *(v75 + 32) = v95;
  *(v75 + 40) = v67;
  v76 = v84;
  *(v75 + 48) = v83;
  *(v75 + 56) = v93;
  *(v75 + 64) = 2;
  *(v75 + 72) = v76;
  *(v75 + 80) = 0;
  *(v75 + 88) = v72;
  *(v75 + 96) = v74;
  v77 = v96;
  *(v75 + 104) = v70;
  *(v75 + 112) = v77;
  *(v75 + 120) = 0;
  *(v75 + 128) = 0;
  *(v75 + 136) = 0;

  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v76, 0);
  v78 = v92;
  v79 = v87;
  *v92 = v88;
  v78[1] = v79;
  v80 = v85;
  v78[2] = v86;
  v78[3] = v80;
  *(v78 + 32) = 0;
  *(v78 + 33) = v98[0];
  *(v78 + 9) = *(v98 + 3);
  v78[5] = 0;
  *(v78 + 48) = 1;
  *(v78 + 49) = *v97;
  *(v78 + 13) = *&v97[3];
  v78[7] = v75;
  v78[8] = 0;
  return result;
}

id specialized static Alert.networkUnavailableAlert(model:traitCollection:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v62 = *(v6 - 8);
  __chkstk_darwin();
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for String.LocalizationValue();
  v59 = *(v63 - 8);
  __chkstk_darwin();
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v50 - v11;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    MobileGestalt_get_wapiCapability();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v15 = result;
      MobileGestalt_get_cellularDataCapability();

      v58 = v9;
      if (a1)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
        v16 = v63;
        v17 = v60;
        v18 = v59;
      }

      else
      {
        v16 = v63;
        v18 = v59;
        v17 = v60;
      }

      String.LocalizationValue.init(stringLiteral:)();
      v57 = *(v18 + 16);
      v57(v17, v12, v16);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v56 = static NSBundle.module;
      static Locale.current.getter();
      v19 = String.init(localized:table:bundle:locale:comment:)();
      v52 = v20;
      v53 = v19;
      v21 = *(v18 + 8);
      v21(v12, v16);
      v54 = v6;
      v55 = a2;
      if (a2 && [a2 userInterfaceIdiom] == 3)
      {
        v22 = _swiftEmptyArrayStorage;
      }

      else
      {
        v51 = a3;
        String.LocalizationValue.init(stringLiteral:)();
        v57(v17, v12, v16);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v23 = v56;
        static Locale.current.getter();
        v24 = String.init(localized:table:bundle:locale:comment:)();
        v26 = v25;
        v21(v12, v16);
        v27 = v61;
        UUID.init()();
        v28 = UUID.uuidString.getter();
        v30 = v29;
        (*(v62 + 8))(v27, v6);
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
        v32 = *(v22 + 2);
        v31 = *(v22 + 3);
        if (v32 >= v31 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v22);
        }

        *(v22 + 2) = v32 + 1;
        v33 = &v22[56 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
        *(v33 + 6) = v24;
        *(v33 + 7) = v26;
        v33[64] = 2;
        *(v33 + 9) = &async function pointer to closure #1 in static Alert.networkUnavailableAlert(model:traitCollection:);
        *(v33 + 10) = 0;
        a3 = v51;
        v16 = v63;
        v17 = v60;
      }

      String.LocalizationValue.init(stringLiteral:)();
      v57(v17, v12, v16);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v34 = v56;
      static Locale.current.getter();
      v35 = String.init(localized:table:bundle:locale:comment:)();
      v37 = v36;
      v21(v12, v16);
      v38 = v61;
      UUID.init()();
      v39 = UUID.uuidString.getter();
      v41 = v40;
      (*(v62 + 8))(v38, v54);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v43 = v52;
      v42 = v53;
      v45 = *(v22 + 2);
      v44 = *(v22 + 3);
      if (v45 >= v44 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v22);
      }

      *(v22 + 2) = v45 + 1;
      v46 = &v22[56 * v45];
      *(v46 + 4) = v39;
      *(v46 + 5) = v41;
      *(v46 + 6) = v35;
      *(v46 + 7) = v37;
      v46[64] = 2;
      *(v46 + 9) = 0;
      *(v46 + 10) = 0;
      if (v55)
      {
        v47 = [v55 userInterfaceIdiom];

        if (v47 == 3)
        {
          v48 = 0;
          v49 = v43;
          v43 = 0;
LABEL_27:
          v64 = 1;
          *a3 = v48;
          *(a3 + 8) = v43;
          *(a3 + 16) = v42;
          *(a3 + 24) = v49;
          *(a3 + 32) = 0;
          *(a3 + 40) = 0;
          *(a3 + 48) = 1;
          *(a3 + 56) = v22;
          *(a3 + 64) = 0;
          return result;
        }
      }

      else
      {
      }

      v49 = 0;
      v48 = v42;
      v42 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double specialized static Alert.ageVerificationFallbackAlert()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v22 - v6;
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
  v23 = v12;
  v24 = v11;
  v13 = *(v3 + 8);
  v13(v7, v2);
  String.LocalizationValue.init(stringLiteral:)();
  v8(v5, v7, v2);
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v13(v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004F2400;
  specialized static Alert.Action.cancel.getter(v25);
  result = *v25;
  v19 = v25[1];
  v20 = v25[2];
  *(v17 + 32) = v25[0];
  *(v17 + 48) = v19;
  *(v17 + 64) = v20;
  *(v17 + 80) = v26;
  v21 = v23;
  *a1 = v24;
  *(a1 + 8) = v21;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0;
  *(a1 + 33) = v25[0];
  *(a1 + 36) = *(v25 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v27;
  *(a1 + 52) = *&v27[3];
  *(a1 + 56) = v17;
  *(a1 + 64) = 0;
  return result;
}

uint64_t specialized static Alert.downloadPinsAlert(completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v56 = a1;
  v53 = a3;
  v57 = type metadata accessor for UUID();
  v54 = *(v57 - 8);
  __chkstk_darwin();
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v40 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  v12 = static NSBundle.module;
  static Locale.current.getter();
  v13 = v12;
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v51 = v15;
  v52 = v14;
  v16 = *(v5 + 8);
  v43 = v5 + 8;
  v16(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  v45 = v10;
  v47 = v5 + 16;
  static Locale.current.getter();
  v44 = v11;
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v49 = v18;
  v50 = v17;
  v19 = v16;
  v46 = v16;
  v16(v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004F2EF0;
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  static Locale.current.getter();
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v41 = v22;
  v42 = v21;
  v19(v9, v4);
  v23 = swift_allocObject();
  *(v23 + 16) = v56;
  *(v23 + 24) = v55;

  v24 = v48;
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v54 = *(v54 + 8);
  (v54)(v24, v57);
  *(v20 + 32) = v25;
  *(v20 + 40) = v27;
  v28 = v41;
  *(v20 + 48) = v42;
  *(v20 + 56) = v28;
  *(v20 + 64) = 2;
  *(v20 + 72) = &async function pointer to partial apply for closure #1 in static Alert.downloadPinsAlert(completion:);
  *(v20 + 80) = v23;
  String.LocalizationValue.init(stringLiteral:)();
  v45(v7, v9, v4);
  static Locale.current.getter();
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v30;
  v46(v9, v4);
  v32 = swift_allocObject();
  *(v32 + 16) = v56;
  *(v32 + 24) = v55;

  UUID.init()();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  result = (v54)(v24, v57);
  *(v20 + 88) = v33;
  *(v20 + 96) = v35;
  *(v20 + 104) = v29;
  *(v20 + 112) = v31;
  *(v20 + 120) = 2;
  *(v20 + 128) = &async function pointer to partial apply for closure #2 in static Alert.downloadPinsAlert(completion:);
  *(v20 + 136) = v32;
  v37 = v53;
  v38 = v50;
  v39 = v51;
  *v53 = v52;
  v37[1] = v39;
  v37[2] = v38;
  v37[3] = v49;
  *(v37 + 32) = 0;
  *(v37 + 33) = v59[0];
  *(v37 + 9) = *(v59 + 3);
  v37[5] = 1;
  *(v37 + 48) = 0;
  *(v37 + 49) = *v58;
  *(v37 + 13) = *&v58[3];
  v37[7] = v20;
  v37[8] = 0;
  return result;
}

uint64_t partial apply for closure #1 in static Alert.downloadPinsAlert(completion:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in static Alert.downloadPinsAlert(completion:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #2 in static Alert.downloadPinsAlert(completion:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in static Alert.downloadPinsAlert(completion:)(a1, a2, v7, v6);
}

unint64_t type metadata accessor for MPModelStaticAsset()
{
  result = lazy cache variable for type metadata for MPModelStaticAsset;
  if (!lazy cache variable for type metadata for MPModelStaticAsset)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MPModelStaticAsset);
  }

  return result;
}

uint64_t sub_1001176D8()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static Alert.dolbyAtmosDownloadsAlert(message:completion:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in static Alert.dolbyAtmosDownloadsAlert(message:completion:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #2 in static Alert.dolbyAtmosDownloadsAlert(message:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in static Alert.dolbyAtmosDownloadsAlert(message:completion:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in static Alert.cellularDataDisallowedAlert(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in static Alert.cellularDataDisallowedAlert(_:)(a1, a2, v7, v6);
}

uint64_t objectdestroy_21Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in static Alert.cellularDataDisallowedAlert(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in static Alert.cellularDataDisallowedAlert(_:)(a1, a2, v7, v6);
}

uint64_t sub_100117A14()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static Alert.confirmDelete(for:library:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in static Alert.confirmDelete(for:library:)(a1, a2, v2 + 16, v6);
}

uint64_t lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UInt32.formatName.getter(int a1)
{
  v10 = 0;
  memset(inSpecifier, 0, sizeof(inSpecifier));
  DWORD2(inSpecifier[0]) = a1;
  if (a1 == 1634492771)
  {
    return 1128352833;
  }

  outPropertyData = 0;
  ioPropertyDataSize = 8;
  Property = AudioFormatGetProperty(0x666E616Du, 0x28u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (Property == noErr.getter() || !outPropertyData)
  {
    if (one-time initialization token for audioFormat != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.audioFormat);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = Property;
      _os_log_impl(&_mh_execute_header, v5, v6, "AudioFormatGetProperty kAudioFormatProperty_FormatName error: %d", v7, 8u);
    }

    return 0;
  }

  else
  {
    countAndFlagsBits = String.init(_:)(outPropertyData)._countAndFlagsBits;

    return countAndFlagsBits;
  }
}

char *one-time initialization function for music()
{
  result = closure #1 in variable initialization expression of static Datavault.music();
  static Datavault.music = result;
  return result;
}

char *closure #1 in variable initialization expression of static Datavault.music()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  __chkstk_darwin();
  v1 = &v20 - v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v20 - v6;
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier:v11];

  if (!v12)
  {
    return 0;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:isDirectory:)();
  type metadata accessor for Datavault(0);
  (*(v3 + 16))(v5, v7, v2);
  v14 = Datavault.__allocating_init(url:storageClass:)(v5, 0x707041636973754DLL, 0xE800000000000000);
  if (one-time initialization token for datavault != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Logger.datavault);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v1, v16, v15);
  v18 = *(v3 + 8);
  v18(v7, v2);
  v18(v9, v2);
  (*(v17 + 56))(v1, 0, 1, v15);
  v19 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  outlined assign with take of Logger?(v1, &v14[v19]);
  swift_endAccess();
  return v14;
}

uint64_t *Datavault.music.unsafeMutableAddressor()
{
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  return &static Datavault.music;
}

uint64_t static Datavault.music.getter()
{
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Datavault.music.setter(uint64_t a1)
{
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Datavault.music = a1;
}

uint64_t (*static Datavault.music.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ArtworkVideoReportingController.videoArtworkContextProviding.modify;
}

uint64_t one-time initialization function for datavault()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.datavault);
  __swift_project_value_buffer(v0, static Logger.datavault);
  return Logger.init(subsystem:category:)();
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NSDateComponents.lastUpdatedDateString.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v1 = &v16 - v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for DateComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  static Date.now.getter();
  DateComponents.date.getter();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
    (*(v9 + 8))(v11, v8);
    outlined destroy of Date?(v1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v1, v2);
    Date.lastUpdatedDateString(relativeTo:)();
    v14 = v13;
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v7, v2);
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

uint64_t DateComponents.lastUpdatedDateString(relativeTo:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DateComponents.date.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of Date?(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    Date.lastUpdatedDateString(relativeTo:)();
    v9 = v8;
    (*(v4 + 8))(v6, v3);
    return v9;
  }
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateComponents.lastUpdatedDateString.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v1 = &v12 - v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v12 - v6;
  static Date.now.getter();
  DateComponents.date.getter();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
    outlined destroy of Date?(v1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v1, v2);
    Date.lastUpdatedDateString(relativeTo:)();
    v10 = v9;
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v7, v2);
    return v10;
  }
}

void Date.lastUpdatedDateString(relativeTo:)()
{
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v23 - v4;
  Date.timeIntervalSince(_:)();
  if (v6 <= 0.0)
  {
    return;
  }

  if (v6 < 3600.0)
  {
    v7 = v6 / 60.0;
    if (*&v7 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        v8 = v7;
        if (!v7)
        {
          String.LocalizationValue.init(stringLiteral:)();
          goto LABEL_21;
        }

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v9._countAndFlagsBits = 0x2064657461647055;
        v9._object = 0xE800000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
        v24 = v8;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v10 = 9;
        goto LABEL_8;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v6 >= 86400.0)
  {
    if (v6 >= 604800.0)
    {
      if (v6 >= 2592000.0)
      {
        return;
      }

      v20 = v6 / 604800.0;
      if (*&v20 >> 52 <= 0x7FEuLL)
      {
        if (v20 > -9.22337204e18)
        {
          if (v20 < 9.22337204e18)
          {
            v21 = v20;
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v22._countAndFlagsBits = 0x2064657461647055;
            v22._object = 0xE800000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
            v24 = v21;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v10 = 19;
LABEL_8:
            v11 = v10 | 0x6F67612064;
LABEL_19:
            v15 = 0xE500000000000000;
            goto LABEL_20;
          }

LABEL_42:
          __break(1u);
          return;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v16 = v6 / 86400.0;
    if (*&v16 >> 52 <= 0x7FEuLL)
    {
      if (v16 > -9.22337204e18)
      {
        if (v16 < 9.22337204e18)
        {
          v17 = v16;
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v18._countAndFlagsBits = 0x2064657461647055;
          v18._object = 0xE800000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
          v24 = v17;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v11 = 0x6F67612064;
          goto LABEL_19;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = v6 / 3600.0;
  if (*&v12 >> 52 > 0x7FEuLL)
  {
    goto LABEL_34;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v12;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2064657461647055;
  v14._object = 0xE800000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v24 = v13;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v11 = 0x6F6761207268;
  v15 = 0xE600000000000000;
LABEL_20:
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v11);
  String.LocalizationValue.init(stringInterpolation:)();
LABEL_21:
  (*(v1 + 16))(v3, v5, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v19 = static NSBundle.module;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
}

uint64_t Date.lastUpdatedDateString.getter()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.lastUpdatedDateString(relativeTo:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t static String.stringForTrackCountAndDuration(trackCount:duration:)(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v68 = a2;
  v67 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v59 - v11;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v12 = type metadata accessor for Calendar.Component();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Calendar();
  __chkstk_darwin();
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v10;
  if ((a4 & 1) != 0 || (v20 = *&a3, *&a3 <= 0.0))
  {
    v36 = 0;
    v38 = 0;
    if ((v68 & 1) == 0)
    {
LABEL_13:
      if (v38)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v39);
        v73 = v67;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v40._countAndFlagsBits = 0x297328676E6F7320;
        v40._object = 0xEA0000000000202CLL;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
        v41._countAndFlagsBits = v36;
        v41._object = v38;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v41);

        v42 = 0;
        v43 = 0xE000000000000000;
LABEL_17:
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v42);
        v46 = v65;
        String.LocalizationValue.init(stringInterpolation:)();
        (*(v8 + 16))(v64, v46, v7);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v47 = static NSBundle.module;
        static Locale.current.getter();
        v36 = String.init(localized:table:bundle:locale:comment:)();
        (*(v8 + 8))(v46, v7);
        return v36;
      }

      v44 = v67;
      if (v67 >= 1)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v45._countAndFlagsBits = 0;
        v45._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
        v73 = v44;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v42 = 0x297328676E6F7320;
        v43 = 0xE800000000000000;
        goto LABEL_17;
      }

      return 0;
    }

LABEL_9:
    if (v38)
    {
      return v36;
    }

    return 0;
  }

  v60 = v17;
  v61 = v7;
  v62 = v16;
  v63 = v8;
  static Calendar.current.getter();
  v21 = *(v13 + 104);
  v21(v15, enum case for Calendar.Component.second(_:), v12);
  Calendar.maximumRange(of:)();
  v59 = v22;
  v24 = v23;
  v25 = *(v13 + 8);
  v25(v15, v12);
  if (v24 & 1) != 0 || (v21(v15, enum case for Calendar.Component.minute(_:), v12), Calendar.maximumRange(of:)(), v27 = v26, v29 = v28, result = (v25)(v15, v12), (v29))
  {
    v8 = v63;
    goto LABEL_6;
  }

  v48 = v59 * v27;
  v8 = v63;
  if ((v59 * v27) >> 64 != (v59 * v27) >> 63)
  {
    __break(1u);
    goto LABEL_43;
  }

  if ((~a3 & 0x7FF0000000000000) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (*&a3 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*&a3 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v48)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v49 = *&a3;
  if (*&a3 == 0x8000000000000000 && v48 == -1)
  {
    goto LABEL_53;
  }

  v50 = v49 / v48 * v48;
  if ((v49 / v48 * v48) >> 64 != v50 >> 63)
  {
    goto LABEL_47;
  }

  v51 = v49 % v48;
  if (__OFSUB__(v49, v50))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v59)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v51 == 0x8000000000000000 && v59 == -1)
  {
    goto LABEL_54;
  }

  v53 = v51 / v59;
  v54 = v51 / v59 * v59;
  if ((v53 * v59) >> 64 != v54 >> 63)
  {
    goto LABEL_50;
  }

  v55 = __OFADD__(v50, v54);
  v56 = v50 + v54;
  if (v55)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v55 = __OFSUB__(v49, v56);
  v57 = v49 - v56;
  if (v55)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v57 < v59 / 2)
  {
    goto LABEL_6;
  }

  v55 = __OFSUB__(v59, v57);
  v58 = v59 - v57;
  if (!v55)
  {
    v20 = *&a3 + v58;
LABEL_6:
    v31 = [*NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor() stringFromTimeInterval:v20];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v73 = v33;
      v74 = v35;
      v71 = 44;
      v72 = 0xE100000000000000;
      v69 = 0;
      v70 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v38 = v37;

      (*(v60 + 8))(v19, v62);
    }

    else
    {
      (*(v60 + 8))(v19, v62);
      v36 = 0;
      v38 = 0;
    }

    v7 = v61;
    if ((v68 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_55:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LSApplicationWorkspace.openSettings()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openRestrictions()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAudioQuality()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAtmos()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicSettings()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAccountSettings()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Bool __swiftcall LSApplicationWorkspace.openNotificationSettings()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v13 = [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v5 + 8))(v7, v4);
    return v13;
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicHapticsSettings()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v44 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v45 = v37 - v7;
  v46 = type metadata accessor for URL();
  v8 = *(v46 - 8);
  __chkstk_darwin();
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v37 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  __chkstk_darwin();
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v37 - v15;
  v17 = *(v5 + 56);
  v17(v37 - v15, 1, 1, v4, v14);
  if (a1)
  {
    v18 = [a1 universalStore];
    if (v18)
    {
      v41 = a2;
      v40 = [v18 adamID];
      swift_unknownObjectRelease();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
      UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
      v19 = v48;
      a2 = v41;
      if (v48)
      {
        v39 = v5;
        v20 = String._bridgeToObjectiveC()();
        v21 = v19;
        v22 = [v19 urlForBagKey:v20];

        if (v22)
        {
          v38 = v21;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v8 + 32))(v43, v10, v46);
          URLComponents.init(url:resolvingAgainstBaseURL:)();
          outlined assign with take of URLComponents?(v13, v16);
          v5 = v39;
          v23 = *(v39 + 48);
          v37[1] = v39 + 48;
          if (v23(v16, 1, v4) || (v24 = URLComponents.queryItems.getter()) == 0)
          {

            v24 = _swiftEmptyArrayStorage;
          }

          v48 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
          type metadata accessor for URLQueryItem();
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1004F2EF0;
          v47 = v40;
          dispatch thunk of CustomStringConvertible.description.getter();
          URLQueryItem.init(name:value:)();

          URLQueryItem.init(name:value:)();
          specialized Array.append<A>(contentsOf:)(v36);
          if (v23(v16, 1, v4))
          {
          }

          else
          {
            URLComponents.queryItems.setter();
          }

          a2 = v41;
          v27 = v45;
          v26 = v46;
          (*(v8 + 8))(v43, v46);
          goto LABEL_15;
        }

        a2 = v41;
        v5 = v39;
      }
    }
  }

  URLComponents.init()();
  (v17)(v13, 0, 1, v4);
  outlined assign with take of URLComponents?(v13, v16);
  v23 = *(v5 + 48);
  if (!v23(v16, 1, v4))
  {
    URLComponents.scheme.setter();
  }

  v25 = v23(v16, 1, v4);
  v26 = v46;
  if (!v25)
  {
    URLComponents.host.setter();
  }

  v27 = v45;
LABEL_15:
  if (v23(v16, 1, v4))
  {
    (*(v8 + 56))(v27, 1, 1, v26);
  }

  else
  {
    v28 = v44;
    (*(v5 + 16))(v44, v16, v4);
    URLComponents.url.getter();
    (*(v5 + 8))(v28, v4);
    if ((*(v8 + 48))(v27, 1, v26) != 1)
    {
      (*(v8 + 32))(a2, v27, v26);
      URL._bridgeToObjectiveC()(v31);
      v33 = v32;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
      v34 = a2;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v42 openSensitiveURL:v33 withOptions:isa];

      a2 = v34;
      v29 = 0;
      goto LABEL_19;
    }
  }

  outlined destroy of TaskPriority?(v27, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v29 = 1;
LABEL_19:
  (*(v8 + 56))(a2, v29, 1, v26);
  return outlined destroy of TaskPriority?(v16, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v42 = v37 - v5;
  v6 = type metadata accessor for URL();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin();
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = v37 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  __chkstk_darwin();
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = v37 - v13;
  v15 = *(v3 + 56);
  v15(v37 - v13, 1, 1, v2, v12);
  v16 = Album.catalogID.getter();
  v41 = v3;
  if (v17)
  {
    v37[1] = v16;
    v38 = a1;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
    UnfairLock.locked<A>(_:)(closure #1 in BagProvider.bag.getterpartial apply);
    v18 = v45;
    if (v45)
    {
      v19 = String._bridgeToObjectiveC()();
      v20 = [v18 urlForBagKey:v19];

      if (v20)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v43 + 32))(v40, v8, v44);
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        outlined assign with take of URLComponents?(v11, v14);
        v21 = *(v41 + 48);
        if (v21(v14, 1, v2) || (v22 = URLComponents.queryItems.getter()) == 0)
        {

          v22 = _swiftEmptyArrayStorage;
        }

        v45 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
        type metadata accessor for URLQueryItem();
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1004F2EF0;
        URLQueryItem.init(name:value:)();

        URLQueryItem.init(name:value:)();
        specialized Array.append<A>(contentsOf:)(v27);
        if (v21(v14, 1, v2))
        {
        }

        else
        {
          URLComponents.queryItems.setter();
        }

        v25 = v43;
        v24 = v44;
        v26 = v42;
        (*(v43 + 8))(v40, v44);
        a1 = v38;
        goto LABEL_20;
      }

      v3 = v41;
    }

    a1 = v38;
  }

  URLComponents.init()();
  (v15)(v11, 0, 1, v2);
  outlined assign with take of URLComponents?(v11, v14);
  v21 = *(v3 + 48);
  if (!v21(v14, 1, v2))
  {
    URLComponents.scheme.setter();
  }

  v23 = v21(v14, 1, v2);
  v25 = v43;
  v24 = v44;
  if (!v23)
  {
    URLComponents.host.setter();
  }

  v26 = v42;
LABEL_20:
  if (v21(v14, 1, v2))
  {
    (*(v25 + 56))(v26, 1, 1, v24);
  }

  else
  {
    v28 = v41;
    v29 = v39;
    (*(v41 + 16))(v39, v14, v2);
    URLComponents.url.getter();
    (*(v28 + 8))(v29, v2);
    if ((*(v25 + 48))(v26, 1, v24) != 1)
    {
      (*(v25 + 32))(a1, v26, v24);
      URL._bridgeToObjectiveC()(v32);
      v34 = v33;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
      v35 = a1;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v37[2] openSensitiveURL:v34 withOptions:isa];

      a1 = v35;
      v30 = 0;
      goto LABEL_24;
    }
  }

  outlined destroy of TaskPriority?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v30 = 1;
LABEL_24:
  (*(v25 + 56))(a1, v30, 1, v24);
  return outlined destroy of TaskPriority?(v14, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusic(tabIdentifier:)(MusicCore::TabIdentifier_optional tabIdentifier)
{
  v2 = v1;
  value = tabIdentifier.value;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0x2F2F3A636973756DLL;
  v26 = 0xE800000000000000;
  if (value != 7)
  {
    v10 = 0x7972617262696CLL;
    v24._countAndFlagsBits = 0x6261743F2F626174;
    v24._object = 0xE90000000000003DLL;
    v11 = 0xE600000000000000;
    v12 = 0x736F65646976;
    if (value != 5)
    {
      v12 = 0x7473696C79616C70;
      v11 = 0xE900000000000073;
    }

    v13 = 0xE500000000000000;
    v14 = 0x6F69646172;
    if (value != 3)
    {
      v14 = 0x686372616573;
      v13 = 0xE600000000000000;
    }

    if (value <= 4)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0xE900000000000077;
    v16 = 0x6F4E6E657473696CLL;
    if (value != 1)
    {
      v16 = 0x6573776F7262;
      v15 = 0xE600000000000000;
    }

    if (value)
    {
      v10 = v16;
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    if (value <= 2)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    if (value <= 2)
    {
      v18 = v15;
    }

    else
    {
      v18 = v11;
    }

    v19 = v18;
    String.append(_:)(*&v17);

    String.append(contentsOf:)(v24);
  }

  URL.init(string:)();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of TaskPriority?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 openSensitiveURL:v22 withOptions:isa];

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t outlined assign with take of URLComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static MPModelPlaylist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = specialized static MPModelPlaylistEntry.defaultMusicKind.getter();
  v2 = [v0 kindWithPlaylistEntryKind:v1 options:0];

  return v2;
}

id static MPModelTVEpisode.defaultMusicKind.getter(void *a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  strcpy(v5, "showAllTVShows");
  v5[15] = -18;
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v6);
  if (!v7)
  {
    outlined destroy of Any?(&v6);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v5[0])
  {
    v2 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v2 = 2;
LABEL_8:
  v3 = [objc_opt_self() kindWithVariants:v2];

  return v3;
}

id static MPModelArtist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = [objc_opt_self() kindWithVariants:3];
  v3 = [v1 kindWithSongKind:v2];

  v4 = [v0 kindWithAlbumKind:v3];
  return v4;
}

id static MPModelAlbum.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = [objc_opt_self() kindWithVariants:3];
  v2 = [v0 kindWithSongKind:v1];

  return v2;
}

id static MPModelTVShow.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v8, "showAllTVShows");
  v8[15] = -18;
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v9);
  if (!v10)
  {
    outlined destroy of Any?(&v9);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if ((v8[0] & 1) == 0)
  {
LABEL_7:
    v1 = 2;
    goto LABEL_8;
  }

  v1 = 3;
LABEL_8:
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = [objc_opt_self() kindWithVariants:v1];
  v5 = [v3 kindWithEpisodeKind:v4];

  v6 = [v2 kindWithSeasonKind:v5];
  return v6;
}

id static MPModelTVSeason.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v6, "showAllTVShows");
  v6[15] = -18;
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v7);
  if (!v8)
  {
    outlined destroy of Any?(&v7);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if ((v6[0] & 1) == 0)
  {
LABEL_7:
    v1 = 2;
    goto LABEL_8;
  }

  v1 = 3;
LABEL_8:
  v2 = objc_opt_self();
  v3 = [objc_opt_self() kindWithVariants:v1];
  v4 = [v2 kindWithEpisodeKind:v3];

  return v4;
}

id specialized static MPModelPlaylistEntry.defaultMusicKind.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2F80;
  *(v0 + 32) = [objc_opt_self() kindWithVariants:7];
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  strcpy(v10, "showAllTVShows");
  v10[15] = -18;
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(v11);
  if (!v12)
  {
    outlined destroy of Any?(v11);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v10[0])
  {
    v3 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v3 = 2;
LABEL_8:
  *(v0 + 40) = [objc_opt_self() kindWithVariants:v3];
  v4 = [v1 standardUserDefaults];
  strcpy(v10, "showAllTVShows");
  v10[15] = -18;
  NSUserDefaults.subscript.getter(v11);
  if (!v12)
  {
    outlined destroy of Any?(v11);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  if ((v10[0] & 1) == 0)
  {
LABEL_14:
    v5 = 2;
    goto LABEL_15;
  }

  v5 = 3;
LABEL_15:
  v6 = objc_opt_self();
  *(v0 + 48) = [objc_opt_self() kindWithVariants:v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23MPModelKindPlaylistable_So0aB0CXcMd, &_sSo23MPModelKindPlaylistable_So0aB0CXcMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 kindWithKinds:isa];

  return v8;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_0, &_sypSgMR_0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MPModelPlaylistEntry.innermostModelObject.getter()
{
  v1 = [v0 type];
  if (v1 == 3)
  {
    v3 = [v5 movie];
LABEL_7:
    result = v3;
    v2 = v5;
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v1 == 2)
  {
    v3 = [v5 tvEpisode];
    goto LABEL_7;
  }

  v2 = v5;
  if (v1 == 1)
  {
    v3 = [v5 song];
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

id MPModelGenericObject.innermostModelObject.getter()
{
  switch([v0 type])
  {
    case 1uLL:
      result = [v5 song];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 2uLL:
      result = [v5 album];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 3uLL:
      result = [v5 artist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 4uLL:
      result = [v5 playlist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 5uLL:
      v2 = [v5 playlistEntry];
      if (!v2)
      {
        goto LABEL_37;
      }

      v3 = v2;
      v4 = [v2 innermostModelObject];

      result = v4;
      break;
    case 6uLL:
      result = [v5 tvEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 7uLL:
      result = [v5 season];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 8uLL:
      result = [v5 show];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 9uLL:
      result = [v5 movie];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xAuLL:
      result = [v5 mediaClip];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xBuLL:
      result = [v5 podcast];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xCuLL:
      result = [v5 podcastEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xDuLL:
      result = [v5 radioStation];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xFuLL:
      result = [v5 genre];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x10uLL:
      result = [v5 curator];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x11uLL:
      result = [v5 socialPerson];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x13uLL:
      result = [v5 recordLabel];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x14uLL:
      result = [v5 creditsArtist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    default:
LABEL_37:

      result = v5;
      break;
  }

  return result;
}

id MPModelStoreBrowseContentItem.innermostModelObject.getter()
{
  v1 = [v0 innerObject];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 innermostModelObject];

    return v3;
  }

  else
  {

    return v5;
  }
}

uint64_t static String.inputDetails(bitDepth:sampleRate:codec:)(uint64_t a1, unint64_t a2, int a3)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v20 - v10;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  result = 0;
  if ((a2 & 0x8000000000000000) == 0 && a1 >= 1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
    v21 = *&a1;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v14._countAndFlagsBits = 0x2F7469622DLL;
    v14._object = 0xE500000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    v21 = a2 / 1000.0;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v15._countAndFlagsBits = 0x207A486B20;
    v15._object = 0xE500000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
    v16._countAndFlagsBits = UInt32.formatName.getter(a3);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v16);

    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
    String.LocalizationValue.init(stringInterpolation:)();
    (*(v7 + 16))(v9, v11, v6);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v18 = static NSBundle.module;
    static Locale.current.getter();
    v19 = String.init(localized:table:bundle:locale:comment:)();
    (*(v7 + 8))(v11, v6);
    return v19;
  }

  return result;
}

uint64_t MPCPlayerAudioFormat.inputDetails.getter()
{
  v1 = [v0 bitDepth];
  v2 = [v0 sampleRate];
  v3 = [v0 codec];

  return static String.inputDetails(bitDepth:sampleRate:codec:)(v1, v2, v3);
}

id MPModelObject.bestIdentifier(for:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8 || (v7 = [v8 innerObject]) == 0)
  {
LABEL_6:
    v7 = v3;
  }

LABEL_7:
  v9 = v7;
  if (a2 == 1)
  {
    v10 = [v7 identifiers];
    if (a1 == 2)
    {
      ObjectType = swift_getObjectType();
      v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, v10);
    }

    else if (a1 == 1 || (v11 = swift_getObjectType(), v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v11, 2, 1u, v10), !v13))
    {
      v12 = specialized getter of bestLibraryIdentifier #1 in static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(v9);
    }

    v16 = v12;
  }

  else
  {
    v14 = swift_getObjectType();
    v15 = [v9 identifiers];
    v16 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v14, a1, a2, v15);
  }

  return v16;
}

uint64_t MPArtworkCatalog.getImage()()
{
  *(v1 + 152) = v0;
  return _swift_task_switch(MPArtworkCatalog.getImage(), 0, 0);
}

{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MPArtworkCatalog.getImage();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCs5Error_pGMd, &_sSccySo7UIImageCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?, @unowned NSError?) -> () with result type UIImage;
  v0[13] = &block_descriptor_19;
  v0[14] = v2;
  [v1 requestImageWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = MPArtworkCatalog.getImage();
  }

  else
  {
    v2 = MPArtworkCatalog.getImage();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 144));
}

uint64_t MPArtworkCatalog.getImage()(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?, @unowned NSError?) -> () with result type UIImage(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MPArtworkCatalog.requestImage(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = partial apply for closure #1 in MPArtworkCatalog.requestImage(_:);
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_4;
  v6 = _Block_copy(v7);

  [v2 requestImageWithCompletion:v6];
  _Block_release(v6);
}

void closure #1 in MPArtworkCatalog.requestImage(_:)(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v8 = a1;
    a3(a1, 0);
  }

  else
  {
    lazy protocol witness table accessor for type MPArtworkCatalog.LoadingError and conformance MPArtworkCatalog.LoadingError();
    v6 = swift_allocError();
    *v7 = a2;
    swift_errorRetain();
    a3(v6, 1);
  }
}

void *MPArtworkCatalog.image(from:size:)(void *a1, double a2, double a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  [a1 setDestinationScale:0.0];
  [a1 setFittingSize:{a2, a3}];
  v11 = dispatch_semaphore_create(0);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in MPArtworkCatalog.image(from:size:);
  *(v13 + 24) = v12;
  aBlock[4] = closure #1 in MPArtworkCatalog.requestImage(_:)partial apply;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);

  v15 = v11;

  [a1 requestImageWithCompletion:v14];
  _Block_release(v14);

  static DispatchTime.distantFuture.getter();
  OS_dispatch_semaphore.wait(timeout:)();

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v16 = *(v10 + 16);
  v17 = v16;

  return v16;
}

Swift::Int closure #1 in MPArtworkCatalog.image(from:size:)(void *a1, char a2, uint64_t a3)
{
  v4 = a1;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v5 = a1;
  }

  swift_beginAccess();
  v6 = *(a3 + 16);
  *(a3 + 16) = v4;

  return OS_dispatch_semaphore.signal()();
}

uint64_t MPArtworkCatalog.setDestination<A>(_:for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _bridgeAnythingToObjectiveC<A>(_:)();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v14[4] = partial apply for closure #1 in MPArtworkCatalog.setDestination<A>(_:for:completion:);
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed MPArtworkRepresentationCollection) -> ();
  v14[3] = &block_descriptor_23_0;
  v12 = _Block_copy(v14);

  [v5 setDestination:v10 forRepresentationKinds:a2 configurationBlock:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in MPArtworkCatalog.setDestination<A>(_:for:completion:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  __chkstk_darwin();
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v11, v13);
  swift_dynamicCast();
  a3(v10, a2);
  return (*(v8 + 8))(v10, a5);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed MPArtworkRepresentationCollection) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, v6);

  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

uint64_t MPArtworkCatalog.originalSize.getter()
{
  v1 = [v0 token];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPStoreArtworkRequestToken, MPStoreArtworkRequestToken_ptr);
  if (swift_dynamicCast())
  {
    v2 = [v7 imageArtworkInfo];
    if (v2)
    {
      v3 = v2;
      [v2 originalSize];
      v5 = v4;

      return v5;
    }
  }

  return 0;
}

uint64_t MPArtworkCatalog.expectedRatio.getter()
{
  v0 = COERCE_DOUBLE(MPArtworkCatalog.originalSize.getter());
  if ((v2 & 1) != 0 || v1 <= 0.0)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = v0 / v1;
  }

  return result;
}

id static MPArtworkCatalog.monogram(for:layoutDirection:)(uint64_t a1, uint64_t a2, id a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30UIUserInterfaceLayoutDirectionVSgMd, &_sSo30UIUserInterfaceLayoutDirectionVSgMR);
  if (a4)
  {
    v8 = [objc_opt_self() currentTraitCollection];
    a3 = [v8 layoutDirection];
  }

  else if (a3 >= 2)
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return specialized static MPArtworkCatalog.monogram(for:environmentLayoutDirection:)(a1, a2, a3);
}

id static MPMediaLibrary.device.getter()
{
  result = [swift_getObjCClassFromMetadata() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void MPMediaPickerConfiguration.musicTypeIdentifiers.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = NSBundle.exportedTypeDeclarations.getter();

  if (!v3)
  {
    return;
  }

  v4 = [v1 typeIdentifiers];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = *(v5 + 16);

  if (!v6)
  {

    if ([v1 mediaTypes])
    {
      v41 = [v1 mediaTypes];

      MPMediaType.typeIdentifiers.getter(v41);
    }

    return;
  }

  v7 = [v1 typeIdentifiers];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = *(v8 + 16);
  if (!v43)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_49:

    specialized _copySequenceToContiguousArray<A>(_:)(v11);

    return;
  }

  v9 = 0;
  v10 = v3 + 32;
  v11 = _swiftEmptyArrayStorage;
  v44 = v3 + 32;
  v45 = v3;
  v42 = v8;
  while (2)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_52;
    }

    v46 = v11;
    v47 = v9;
    v12 = *(v3 + 16);

    if (!v12)
    {
      v14 = _swiftEmptyArrayStorage;
      goto LABEL_23;
    }

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v13;
      while (1)
      {
        if (v15 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v16 = *(v10 + 8 * v15);
        if (*(v16 + 16))
        {
          break;
        }

LABEL_10:
        if (v12 == ++v15)
        {
          goto LABEL_23;
        }
      }

      v17 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD000000000000010, 0x80000001004CA190);
      if ((v18 & 1) == 0)
      {

        goto LABEL_10;
      }

      outlined init with copy of Any(*(v16 + 56) + 32 * v17, v49);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_10;
      }

      v19 = v50;
      if (!v50)
      {
        goto LABEL_10;
      }

      v20 = v49[4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v14);
      }

      v13 = v15 + 1;
      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      v10 = v44;
      v3 = v45;
    }

    while (v12 - 1 != v15);
LABEL_23:
    v24 = *(v14 + 2);
    if (!v24)
    {
      v48 = _swiftEmptyArrayStorage;
LABEL_37:

      v11 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
      }

      v10 = v44;
      v3 = v45;
      v40 = v11[2];
      v39 = v11[3];
      if (v40 >= v39 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v11);
      }

      v9 = v47 + 1;
      v11[2] = v40 + 1;
      v11[v40 + 4] = v48;
      v8 = v42;
      if (v47 + 1 == v43)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v25 = 0;
  v26 = v14 + 40;
  v48 = _swiftEmptyArrayStorage;
LABEL_25:
  v27 = &v26[16 * v25];
  v28 = v25;
  while (v28 < *(v14 + 2))
  {
    v30 = *(v27 - 1);
    v29 = *v27;
    v25 = v28 + 1;

    v31 = String._bridgeToObjectiveC()();
    v32 = String._bridgeToObjectiveC()();
    v33 = UTTypeConformsTo(v31, v32);

    if (v33)
    {
      v34 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1);
        v34 = v49[0];
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v34 = v49[0];
      }

      v34[2] = v37 + 1;
      v48 = v34;
      v38 = &v34[2 * v37];
      v38[4] = v30;
      v38[5] = v29;
      v26 = v14 + 40;
      if (v24 - 1 != v28)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }

    v27 += 16;
    ++v28;
    if (v24 == v25)
    {
      goto LABEL_37;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

char *MPMediaType.typeIdentifiers.getter(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    result = _swiftEmptyArrayStorage;
    if ((a1 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(result + 2);
  v3 = *(result + 3);
  if (v4 >= v3 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, result);
  }

  *(result + 2) = v4 + 1;
  v5 = &result[16 * v4];
  *(v5 + 4) = 0xD000000000000014;
  *(v5 + 5) = 0x80000001004CA4D0;
  if ((a1 & 0x800) != 0)
  {
LABEL_7:
    v6 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v6;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(result + 2);
    v7 = *(result + 3);
    if (v8 >= v7 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, result);
    }

    *(result + 2) = v8 + 1;
    v9 = &result[16 * v8];
    *(v9 + 4) = 0xD00000000000001BLL;
    *(v9 + 5) = 0x80000001004CA4B0;
  }

  return result;
}

id MPMediaPickerConfiguration.supportsCatalogContent.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  outlined destroy of ApplicationCapabilities(v10);
  if (BYTE8(v10[0]))
  {
    return [v0 showsCatalogContent];
  }

  else
  {
    return 0;
  }
}

id MPMediaPickerConfiguration.supportsCloudLibrary.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  outlined destroy of ApplicationCapabilities(v10);
  if (BYTE9(v10[0]))
  {
    return [v0 showsCloudItems];
  }

  else
  {
    return 0;
  }
}

unint64_t MPIdentifierSet.publicLoggingDescription.getter()
{
  v1 = MPIdentifierSet.bestLibraryIdentifier.getter();
  if (v2)
  {
    String.append(_:)(*&v1);

    v3._countAndFlagsBits = 59;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = 0x507972617262696CLL;
    *(v7 + 5) = 0xEB000000003D4449;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v8 = [v0 universalStore];
  if (v8)
  {
    v9 = [v8 globalPlaylistID];
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      _StringGuts.grow(_:)(20);

      v13._countAndFlagsBits = v10;
      v13._object = v12;
      String.append(_:)(v13);

      v14._countAndFlagsBits = 59;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      v17 = &v4[16 * v16];
      *(v17 + 4) = 0xD000000000000011;
      *(v17 + 5) = 0x80000001004CA1D0;
    }
  }

  v18 = MPIdentifierSet.bestStoreIdentifier.getter();
  if (v19)
  {
    String.append(_:)(*&v18);

    v20._countAndFlagsBits = 59;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v22 = *(v4 + 2);
    v21 = *(v4 + 3);
    if (v22 >= v21 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v4);
    }

    *(v4 + 2) = v22 + 1;
    v23 = &v4[16 * v22];
    *(v23 + 4) = 0x3D65726F7473;
    *(v23 + 5) = 0xE600000000000000;
  }

  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 62;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  return 0xD000000000000010;
}

id MPIdentifierSet.bestLibraryIdentifier.getter()
{
  result = [v0 library];
  if (result)
  {
    v2 = result;
    if ([result persistentID] && (objc_msgSend(v2, "persistentID"), isa = Int64._bridgeToObjectiveC()().super.super.isa, v4 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v4))
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id MPIdentifierSet.bestStoreIdentifier.getter()
{
  result = [v0 universalStore];
  if (result)
  {
    v2 = result;
    v3 = [result subscriptionAdamID];
    v4 = [v2 purchasedAdamID];
    v5 = [v2 adamID];
    if ((v3 || v4 || v5) && (isa = Int64._bridgeToObjectiveC()().super.super.isa, v7 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v7))
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 == 2)
  {
    return getter of bestCatalogIdentifier #1 in static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(a1, a3);
  }

  if (a2 != 1)
  {
    v6 = a1;
    result = getter of bestCatalogIdentifier #1 in static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(a1, a3);
    if (v8)
    {
      return result;
    }

    a1 = v6;
  }

  return getter of bestLibraryIdentifier #1 in static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(a1, a3, a4);
}

id specialized getter of bestLibraryIdentifier #1 in static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(void *a1)
{
  v10 = 2;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for specialized closure #1 in getter of bestLibraryIdentifier #1 in static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:);
  *(v4 + 24) = v3;
  aBlock[4] = partial apply for closure #2 in ActionMenuView.body.getter;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_143;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else if (v10 == 2 || (v10 & 1) == 0)
  {

    return 0;
  }

  else
  {
    v8 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v8;
  }

  return result;
}

id getter of bestLibraryIdentifier #1 in static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = 2;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = &v13;
  v6[4] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in getter of bestLibraryIdentifier #1 in static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:);
  *(v7 + 24) = v6;
  aBlock[4] = partial apply for closure #2 in ActionMenuView.body.getter;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_133;
  v8 = _Block_copy(aBlock);
  v9 = a1;

  [v5 performWithoutEnforcement:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (v13 == 2 || (v13 & 1) == 0)
  {

    return 0;
  }

  else
  {
    v11 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v11;
  }

  return result;
}

uint64_t specialized closure #1 in getter of bestLibraryIdentifier #1 in static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(char *a1, uint64_t a2)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  v5 = 2;
  if (result && a2)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    result = (*(v6 + 8))(ObjectType, v6);
    v5 = result & 1;
  }

  *a1 = v5;
  return result;
}

id getter of bestCatalogIdentifier #1 in static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(uint64_t a1, void *a2)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPIdentifierSet, MPIdentifierSet_ptr);
  ObjectType = swift_getObjectType();
  return static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, a2);
}

uint64_t sub_10011F130()
{

  return swift_deallocObject();
}

uint64_t sub_10011F170()
{

  return swift_deallocObject();
}

uint64_t sub_10011F1A8()
{

  return swift_deallocObject();
}

uint64_t sub_10011F1F4()
{

  return swift_deallocObject();
}

id MPIdentifierSet.init(kind:deviceLibraryPID:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in MPIdentifierSet.init(kind:deviceLibraryPID:);
  *(v6 + 24) = v5;
  v10[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v10[3] = &block_descriptor_34;
  v7 = _Block_copy(v10);

  v8 = [v4 initWithModelKind:a1 block:v7];

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void closure #1 in MPIdentifierSet.init(kind:deviceLibraryPID:)(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() deviceMediaLibrary];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 uniqueIdentifier];

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = partial apply for closure #1 in closure #1 in MPIdentifierSet.init(kind:deviceLibraryPID:);
    *(v8 + 24) = v7;
    v11[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPMutableLocalLibraryIdentifiers) -> ();
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPMutableLocalLibraryIdentifiers) -> ();
    v11[3] = &block_descriptor_123;
    v9 = _Block_copy(v11);

    [a1 setLibraryIdentifiersWithDatabaseID:v6 block:v9];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_6:
      __break(1u);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed MPMutableLocalLibraryIdentifiers) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t LibraryAddable.hasLoadedLibraryAddedProperty.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded))
  {
    return 1;
  }

  else
  {
    return [v0 hasLoadedValueForKey:MPModelPropertyArtistLibraryAdded];
  }
}

BOOL LibraryAddable.isUserLibraryAddable.getter()
{
  v1 = [objc_allocWithZone(MPLibraryAddStatusObserver) init];
  [v1 configureWithModelObject:v0];
  v2 = [v1 currentStatus];

  return (v2 - 1) < 3;
}

BOOL PlaylistAddable.isPlaylistAddEligible.getter(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  return (!v4 || ([v4 isArtistUploadedContent] & 1) == 0) && ((*(*(a2 + 8) + 16))(a1) & 1) != 0;
}

Swift::String_optional __swiftcall MPModelObject.genericModelRelationshipKey()()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v1 = 0;
  }

  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t MPModelObject.MediaKitPlayableKind.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x6F6D2D636973756DLL;
    v5 = 0x7473696C79616C70;
    if (a1 != 8)
    {
      v5 = 0x736D75626C61;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x736E6F6974617473;
    if (a1 != 5)
    {
      v6 = 0x69762D636973756DLL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x73676E6F73;
    v2 = 0x73776F68732D7674;
    if (a1 != 2)
    {
      v2 = 0x646564616F6C7075;
    }

    if (a1)
    {
      v1 = 0x6F736970652D7674;
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
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MPModelObject.MediaKitPlayableKind(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MPModelObject.MediaKitPlayableKind.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MPModelObject.MediaKitPlayableKind.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MPModelObject.MediaKitPlayableKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MPModelObject.MediaKitPlayableKind(uint64_t a1)
{
  MPModelObject.MediaKitPlayableKind.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MPModelObject.MediaKitPlayableKind(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MPModelObject.MediaKitPlayableKind@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MPModelObject.MediaKitPlayableKind.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MPModelObject.MediaKitPlayableKind@<X0>(uint64_t *a1@<X8>)
{
  result = MPModelObject.MediaKitPlayableKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MPModelObject.mediaKitPlayableKind.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isArtistUploadedContent];
    v3 = [v1 hasVideo];
    if (v2)
    {
      if (v3)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else if (v3)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 2;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          return 5;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            return 7;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              return 8;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                return 9;
              }

              else
              {
                return 10;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t MPModelObject.FavoriteStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x657469726F766166;
  v2 = 0x64656B696C736964;
  if (a1 != 2)
  {
    v2 = 0x726F707075736E75;
  }

  if (a1)
  {
    v1 = 0x6C61727475656ELL;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MPModelObject.FavoriteStatus()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MPModelObject.FavoriteStatus(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MPModelObject.FavoriteStatus(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MPModelObject.FavoriteStatus@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MPModelObject.FavoriteStatus.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MPModelObject.FavoriteStatus(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = 0xE800000000000000;
  v5 = 0x64656B696C736964;
  if (*v1 != 2)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MPModelObject.favoriteStatus.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0 || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v1 = v0;
    v2 = [v0 isFavorite];
LABEL_5:
    v3 = v2;
    v4 = [v1 isDisliked];
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v6 = v4 == 0;
    goto LABEL_9;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v1 = v7;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    outlined destroy of ApplicationCapabilities(&v23);
    if (BYTE8(v23))
    {
      v2 = [v1 isFavorite];
      goto LABEL_5;
    }

    return 3;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return 3;
  }

  v9 = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  outlined destroy of ApplicationCapabilities(&v23);
  if ((BYTE8(v23) & 1) == 0)
  {
    return 3;
  }

  v10 = [v9 artist];
  if (!v10)
  {
    return 3;
  }

  v11 = v10;
  v12 = [v10 isFavorite];
  v13 = [v11 isDisliked];
  v14 = v13;
  if (v12)
  {
    if ((v13 & 1) == 0)
    {

      return 0;
    }

    goto LABEL_27;
  }

  v6 = v14 == 0;
LABEL_9:
  if (v6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id MPModelAlbum.orphanMusicVideo.getter()
{
  v1 = specialized static MPModelAlbum.orphanMusicVideoPropertySet.getter();
  v2 = [v0 hasLoadedValuesForPropertySet:v1];

  if (!v2 || [v0 trackCount] > 1)
  {
    return 0;
  }

  result = [v0 representativeSong];
  if (result)
  {
    v4 = result;
    v5 = [result hasVideo];
    result = v4;
    if ((v5 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

uint64_t MPModelAlbum.representativeTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2EF0;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  if (isa && [v0 trackCount] <= 1)
  {
    v6 = [v0 title];
    if (!v6)
    {
      v10 = [v0 representativeSong];
      if (!v10)
      {
        return 0;
      }

      v11 = v10;
      v12 = [v10 title];

      if (!v12)
      {
        return 0;
      }

      v6 = v12;
    }

LABEL_6:
    v8 = v6;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  v6 = [v0 title];
  if (v6)
  {
    goto LABEL_6;
  }

  return 0;
}

id static MPModelAlbum.representativeTitlePropertySet.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [objc_opt_self() propertySetWithProperties:isa];

  return v4;
}

uint64_t Array<A>.union()(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() emptyPropertySet];
  type metadata accessor for Array();
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet, MPPropertySet_ptr);
  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();

  return v4;
}

id SnapshotIdentifier.Lazy.identifiers.getter(uint64_t a1, SEL *a2, SEL *a3)
{
  v6 = v3;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v6, a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV05indexC0_So21MPSectionedCollectionC10collectiontMd, &_s10Foundation9IndexPathV05indexC0_So21MPSectionedCollectionC10collectiontMR) + 48));
    (*(v9 + 32))(v11, v14, v8);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v16 *a3];

    (*(v9 + 8))(v11, v8);
    return v18;
  }

  else
  {
    v20 = v14[1];
    v21 = [v20 *a2];

    return v21;
  }
}

id SnapshotIdentifier.identifiers.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for SnapshotIdentifier.Lazy(0, *(a1 + 16), a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - v9;
  v11 = __chkstk_darwin();
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v5, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v13;
    v16 = [*v13 identifiers];

    return v16;
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v18 = SnapshotIdentifier.Lazy.identifiers.getter(v7);
    (*(v8 + 8))(v10, v7);
    return v18;
  }
}

id SnapshotIdentifier.object.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for SnapshotIdentifier.Lazy(0, *(a1 + 16), a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = __chkstk_darwin();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v13;
  }

  (*(v8 + 32))(v10, v13, v7);
  v16 = SnapshotIdentifier.Lazy.object.getter(v7);
  (*(v8 + 8))(v10, v7);
  return v16;
}

unint64_t SnapshotIdentifier.debugDescription.getter(uint64_t a1)
{
  v9 = SnapshotIdentifier.description.getter(a1);
  v2._countAndFlagsBits = 0x7463656A626F202CLL;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);
  v8 = SnapshotIdentifier.object.getter(a1, v3, v4, v5);
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  String.append(_:)(v6);

  return v9;
}

unint64_t SnapshotIdentifier.description.getter(uint64_t a1)
{
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 2112062;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v8 = SnapshotIdentifier.identifiers.getter(a1, v5, v6, v7);
  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x696669746E656469;
  v14._object = 0xEB000000003D7265;
  String.append(_:)(v14);

  return 0xD000000000000012;
}

void SnapshotIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = SnapshotIdentifier.identifiers.getter(a2, a2, a3, a4);
  NSObject.hash(into:)();
}

uint64_t static SnapshotIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  v6 = type metadata accessor for SnapshotIdentifier(0, a3, v4, v5);
  v10 = SnapshotIdentifier.identifiers.getter(v6, v7, v8, v9);
  v14 = SnapshotIdentifier.identifiers.getter(v6, v11, v12, v13);
  v15 = static NSObject.== infix(_:_:)();

  return v15 & 1;
}

Swift::Int SnapshotIdentifier.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v5 = SnapshotIdentifier.identifiers.getter(a1, v2, v3, v4);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SnapshotIdentifier<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  SnapshotIdentifier.hash(into:)(v6, a2, v3, v4);
  return Hasher._finalize()();
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v18;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:using:);
  *(v13 + 24) = v12;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed IndexPath, @guaranteed MPIdentifierSet, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed IndexPath, @guaranteed MPIdentifierSet, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_43;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateItemIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:using:)(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, char *, _BYTE *), uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v24 = a3;
  v13 = type metadata accessor for SnapshotIdentifier(0, a9, a3, a4);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v23 - v15;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV05indexC0_So21MPSectionedCollectionC10collectiontMd, &_s10Foundation9IndexPathV05indexC0_So21MPSectionedCollectionC10collectiontMR) + 48);
  v18 = type metadata accessor for IndexPath();
  (*(*(v18 - 8) + 16))(v16, a1, v18);
  *&v16[v17] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy(0, a9, v19, v20);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v21 = a4;
  a5(a1, v16, a7);
  *v24 = *a7;
  return (*(v14 + 8))(v16, v13);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed IndexPath, @guaranteed MPIdentifierSet, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v11(v10, v12, a4);

  return (*(v8 + 8))(v10, v7);
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = 0;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a1;
  v14[7] = a3;
  v14[8] = a4;
  v14[9] = &v20;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:);
  *(v15 + 24) = v14;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed MPIdentifierSet, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed MPIdentifierSet, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_52;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  [v17 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v16];
  _Block_release(v16);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, char *, _BYTE *), uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10)
{
  v23 = a7;
  v24 = a3;
  v14 = type metadata accessor for SnapshotIdentifier(0, a10, a3, a4);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v23 - v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV05indexC0_So21MPSectionedCollectionC10collectiontMd, &_s10Foundation9IndexPathV05indexC0_So21MPSectionedCollectionC10collectiontMR) + 48);
  IndexPath.init(item:section:)();
  *&v17[v18] = a5;
  type metadata accessor for SnapshotIdentifier.Lazy(0, a10, v19, v20);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v21 = a5;
  a6(a1, v17, a8);
  *v24 = *a8;
  return (*(v15 + 8))(v17, v14);
}

void thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed MPIdentifierSet, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v6(a2, v7, a4);
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SnapshotIdentifier(0, a4, a3, a4);
  v12 = static Array._allocateUninitialized(_:)();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = &v12;
  static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(a1, a2, partial apply for closure #1 in static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:), v11, a3, a4, a5);
  return v12;
}

uint64_t closure #1 in static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for SnapshotIdentifier(0, a6, a3, a4);
  v8 = __chkstk_darwin();
  (*(v10 + 16))(&v12 - v9, a2, v7, v8);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v18;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:);
  *(v13 + 24) = v12;
  aBlock[4] = thunk for @callee_guaranteed (@unowned Int, @guaranteed MPIdentifierSet, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed MPIdentifierSet, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_62;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateSectionIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, void *, _BYTE *), uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v14 = type metadata accessor for SnapshotIdentifier(0, a8, a3, a4);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v22 - v16);
  *v17 = a1;
  v17[1] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy(0, a8, v18, v19);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v20 = a4;
  a5(a1, v17, a7);
  *a3 = *a7;
  return (*(v15 + 8))(v17, v14);
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for SnapshotIdentifier(0, a3, a3, a4);
  swift_getWitnessTable();
  NSDiffableDataSourceSnapshot.init()();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = v10;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = partial apply for closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:);
  v12[6] = v11;
  v16[4] = partial apply for thunk for @callee_guaranteed (@guaranteed A, @unowned Int, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed A, @unowned Int, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v16[3] = &block_descriptor_71;
  v13 = _Block_copy(v16);
  v14 = a1;

  [v14 enumerateSectionsUsingBlock:v13];
  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  getContiguousArrayStorageType<A>(for:)(a6, a6);
  swift_allocObject();
  v14 = static Array._adoptStorage(_:count:)();
  *v15 = a1;
  v16 = _finalizeUninitializedArray<A>(_:)(v14, a6);
  type metadata accessor for SnapshotIdentifier(255, a7, v17, v18);
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  type metadata accessor for NSDiffableDataSourceSnapshot();
  NSDiffableDataSourceSnapshot.appendSections(_:)(v16);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, a6, a7, a8);
  swift_unknownObjectRetain();
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  swift_unknownObjectRelease();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed A, @unowned Int, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelObject, MPModelObject_ptr);
  v7 = *(a1 + 32);
  v8 = swift_unknownObjectRetain();
  v7(v8, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for SnapshotIdentifier(0, a2, a4, a5);
  swift_getWitnessTable();
  NSDiffableDataSourceSnapshot.init()();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:);
  *(v10 + 24) = v9;
  v14[4] = partial apply for thunk for @callee_guaranteed (@guaranteed NSString, @unowned Int, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSString, @unowned Int, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v14[3] = &block_descriptor_80;
  v11 = _Block_copy(v14);
  v12 = a1;

  [v12 enumerateSectionsUsingBlock:v11];
  _Block_release(v11);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004F2400;
  *(v9 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v9 + 40) = v10;
  type metadata accessor for SnapshotIdentifier(255, a6, v11, v12);
  swift_getWitnessTable();
  type metadata accessor for NSDiffableDataSourceSnapshot();
  NSDiffableDataSourceSnapshot.appendSections(_:)(v9);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, &type metadata for String, a6, &protocol witness table for String);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed NSString, @unowned Int, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for SnapshotIdentifier(0, a2, a3, x3_0);
  type metadata accessor for SnapshotIdentifier(0, a3, v8, v9);
  swift_getWitnessTable();
  swift_getWitnessTable();
  NSDiffableDataSourceSnapshot.init()();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  objc_opt_self();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = swift_dynamicCastObjCClassUnconditional();
  WitnessTable = swift_getWitnessTable();
  return static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(v10, partial apply for closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:), v13, a2, a3, WitnessTable);
}

uint64_t closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a6;
  v29 = a1;
  v30 = a5;
  v9 = type metadata accessor for SnapshotIdentifier(255, a6, a3, a4);
  v10 = type metadata accessor for Optional();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin();
  v12 = &v25 - v11;
  type metadata accessor for _ContiguousArrayStorage();
  v13 = *(v9 - 8);
  swift_allocObject();
  v14 = static Array._adoptStorage(_:count:)();
  v26 = *(v13 + 16);
  v26(v15, a2, v9);
  v16 = _finalizeUninitializedArray<A>(_:)(v14, v9);
  v19 = type metadata accessor for SnapshotIdentifier(255, a7, v17, v18);
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v33 = v9;
  v34 = v19;
  v35 = WitnessTable;
  v36 = v21;
  type metadata accessor for NSDiffableDataSourceSnapshot();
  NSDiffableDataSourceSnapshot.appendSections(_:)(v16);

  v22 = v28;
  v23 = swift_getWitnessTable();
  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(v30, v29, v22, a7, v23);
  v26(v12, v27, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  return (*(v31 + 8))(v12, v32);
}

uint64_t MPModelPlaylist.supportsSing.getter()
{
  if (([v0 traits] & 0x100) != 0)
  {
    return MSVDeviceSupportsVocalAttenuation();
  }

  else
  {
    return 0;
  }
}

id MPModelPlaylist.coverArtworkCatalog.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2EB0;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v6];
  if (!isa)
  {
    return 0;
  }

  result = [v0 name];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (([v0 userEditableComponents] & 2) == 0)
  {

    return 0;
  }

  v12 = [v0 coverArtworkRecipe];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  result = specialized PlaylistCovers.ArtworkToken.__allocating_init(rawJSON:playlistTitle:)(v13, v15, v9, v11);
  if (result)
  {
    v16 = result;
    v17 = [v0 artworkCatalog];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      if (one-time initialization token for playlistCovers != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.playlistCovers);
      v20 = v0;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136446210;
        v25 = [v20 coverArtworkRecipe];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v28, &v31);

        *(v23 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "No server artwork catalog available for playlist with coverArtworkRecipe=%{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }

      v30 = one-time initialization token for shared;
      v16 = v16;
      if (v30 != -1)
      {
        swift_once();
      }

      v18 = [objc_allocWithZone(MPArtworkCatalog) initWithToken:v16 dataSource:static PlaylistCovers.ArtworkDataSource.shared];
    }

    return v18;
  }

  return result;
}

unint64_t MPNowPlayingAudioFormatBadging.debugDescription.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1 = 0x7373656C73736F6CLL;
        v2 = 0xE800000000000000;
        goto LABEL_16;
      case 4:
        v2 = 0x80000001004CA360;
        v1 = 0xD000000000000016;
        goto LABEL_16;
      case 5:
        v1 = 0x416C616974617073;
        v2 = 0xEC0000006F696475;
        goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v1 = 0x6574537973736F6CLL;
        v2 = 0xEB000000006F6572;
        goto LABEL_16;
      case 1:
        v1 = 0x6D744179626C6F64;
        v2 = 0xEA0000000000736FLL;
        goto LABEL_16;
      case 2:
        v1 = 0x64754179626C6F64;
        v2 = 0xEA00000000006F69;
LABEL_16:
        String.append(_:)(*&v1);
        goto LABEL_17;
    }
  }

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x3C6E776F6E6B6E75;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);

LABEL_17:
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0xD00000000000001FLL;
}

id MPModelPerson.monogramArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPersonName])
  {
    return 0;
  }

  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 layoutDirection];

  v9 = specialized static MPArtworkCatalog.monogram(for:environmentLayoutDirection:)(v3, v5, v8);

  return v9;
}

uint64_t MPModelTVSeason.title.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in MPModelTVSeason.title.getter;
  *(v3 + 24) = v2;
  v9[4] = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_89_0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t closure #1 in MPModelTVSeason.title.getter(void *a1, uint64_t *a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v23 - v8;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  if ([a1 number] < 1)
  {
    v17 = [a1 show];
    if (v17 && (v18 = v17, v19 = [v17 title], v18, v19))
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    *a2 = v20;
    a2[1] = v22;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0x206E6F73616553;
    v10._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    v23[1] = [a1 number];
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
    String.LocalizationValue.init(stringInterpolation:)();
    (*(v5 + 16))(v7, v9, v4);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v12 = static NSBundle.module;
    static Locale.current.getter();
    v13 = String.init(localized:table:bundle:locale:comment:)();
    v15 = v14;
    (*(v5 + 8))(v9, v4);
    *a2 = v13;
    a2[1] = v15;
  }
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_30;
        }

        if (v3 >= v10)
        {
          goto LABEL_34;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = v9 + 16 * v11;
        v13 = *(v12 + 40);
        v29 = *(v12 + 32);
        if (v2)
        {

          v14 = v5;
          v15 = __OFSUB__(v2--, 1);
          if (v15)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v16 = *(v5 + 3);
          if (((v16 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_37;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
          if (v17 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v14 = swift_allocObject();
          v19 = _swift_stdlib_malloc_size(v14);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 17;
          }

          v21 = v20 >> 4;
          *(v14 + 2) = v18;
          *(v14 + 3) = 2 * (v20 >> 4);
          v22 = v14 + 32;
          v23 = *(v5 + 3) >> 1;
          v6 = &v14[16 * v23 + 32];
          v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
          if (*(v5 + 2))
          {
            v25 = v5 + 32;
            if (v14 != v5 || v22 >= &v25[16 * v23])
            {
              memmove(v22, v25, 16 * v23);
            }

            *(v5 + 2) = 0;
          }

          else
          {
          }

          v15 = __OFSUB__(v24, 1);
          v2 = v24 - 1;
          if (v15)
          {
            goto LABEL_36;
          }
        }

        ++v11;
        *v6 = v29;
        *(v6 + 1) = v13;
        v6 += 16;
        v5 = v14;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_30:

  v26 = *(v5 + 3);
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v15 = __OFSUB__(v27, v2);
    v28 = v27 - v2;
    if (v15)
    {
LABEL_38:
      __break(1u);
      return;
    }

    *(v5 + 2) = v28;
  }
}

{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtMd, &_sSi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtMR);
  v2 = *(v41 - 8);
  __chkstk_darwin();
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = *(v2 + 80);
    v38 = v9;
    v39 = (v9 + 32) & ~v9;
    v10 = _swiftEmptyArrayStorage + v39;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v40 = *(v13 + 72);
    v15 = _swiftEmptyArrayStorage;
    v36 = v7;
    v37 = v2;
    while (1)
    {
      v17 = *(v41 + 48);
      *v4 = v11;
      outlined init with copy of PlaylistCurators.Curator(v14, v4 + v17);
      outlined init with take of (offset: Int, element: PlaylistCurators.Curator)(v4, v6);
      if (v12)
      {
        v8 = v15;
        v16 = __OFSUB__(v12--, 1);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v18 = v15[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v19 = v6;
        v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtGMR);
        v22 = *(v2 + 72);
        v23 = v39;
        v8 = swift_allocObject();
        v24 = _swift_stdlib_malloc_size(v8);
        if (!v22)
        {
          goto LABEL_34;
        }

        v25 = v24 - v23;
        if (v24 - v23 == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_35;
        }

        v27 = v25 / v22;
        v8[2] = v21;
        v8[3] = 2 * (v25 / v22);
        v28 = v8 + v23;
        v29 = v15[3] >> 1;
        v30 = v29 * v22;
        if (v15[2])
        {
          if (v8 < v15 || v28 >= v15 + v39 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v28[v30];
        v32 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

        v6 = v19;
        v7 = v36;
        v2 = v37;
        v16 = __OFSUB__(v32, 1);
        v12 = v32 - 1;
        if (v16)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v11;
      outlined init with take of (offset: Int, element: PlaylistCurators.Curator)(v6, v10);
      v10 += *(v2 + 72);
      v14 += v40;
      v15 = v8;
      if (v7 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
LABEL_29:
  v33 = v8[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v16 = __OFSUB__(v34, v12);
    v35 = v34 - v12;
    if (v16)
    {
      goto LABEL_36;
    }

    v8[2] = v35;
  }
}

id specialized static MPArtworkCatalog.monogram(for:environmentLayoutDirection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MusicMonogramArtworkToken) initWithFullName:v4 rightToLeft:a3 == 1];

  if (!v5)
  {
    return 0;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedMonogramArtworkDataSource];
  v9 = objc_allocWithZone(MPArtworkCatalog);
  v10 = v7;
  v11 = [v9 initWithToken:v10 dataSource:v8];

  return v11;
}

unint64_t specialized MPModelObject.MediaKitPlayableKind.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MPModelObject.MediaKitPlayableKind.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized MPModelObject.FavoriteStatus.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MPModelObject.FavoriteStatus.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

id specialized static MPModelAlbum.orphanMusicVideoPropertySet.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2400;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004F2400;
  *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 40) = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, MPPropertySet)(inited + 32);
  v8 = objc_allocWithZone(MPPropertySet);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet, MPPropertySet_ptr);
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithProperties:v9 relationships:v10];

  return v11;
}

id partial apply for closure #1 in Array<A>.union()@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 propertySetByCombiningWithPropertySet:*a2];
  *a3 = result;
  return result;
}

uint64_t sub_100123CF8()
{

  return swift_deallocObject();
}

uint64_t sub_100123D8C()
{

  return swift_deallocObject();
}

uint64_t sub_100123E64()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(a1, a2, a3, *(v3 + 40), *(v3 + 48), *(v3 + 16), *(v3 + 24), *(v3 + 32));
}

{
  return closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(a1, a2, a3, *(v3 + 24), *(v3 + 32), *(v3 + 16));
}

{
  return closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(a1, a2, a3, *(v3 + 32), *(v3 + 40), *(v3 + 16), *(v3 + 24));
}

uint64_t sub_100123F24()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options()
{
  result = lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options;
  if (!lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options;
  if (!lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options;
  if (!lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options;
  if (!lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPModelObject.MediaKitPlayableKind and conformance MPModelObject.MediaKitPlayableKind()
{
  result = lazy protocol witness table cache variable for type MPModelObject.MediaKitPlayableKind and conformance MPModelObject.MediaKitPlayableKind;
  if (!lazy protocol witness table cache variable for type MPModelObject.MediaKitPlayableKind and conformance MPModelObject.MediaKitPlayableKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPModelObject.MediaKitPlayableKind and conformance MPModelObject.MediaKitPlayableKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPModelObject.FavoriteStatus and conformance MPModelObject.FavoriteStatus()
{
  result = lazy protocol witness table cache variable for type MPModelObject.FavoriteStatus and conformance MPModelObject.FavoriteStatus;
  if (!lazy protocol witness table cache variable for type MPModelObject.FavoriteStatus and conformance MPModelObject.FavoriteStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPModelObject.FavoriteStatus and conformance MPModelObject.FavoriteStatus);
  }

  return result;
}

uint64_t getEnumTag for MPIdentifierSet.Purpose(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for MPModelObject.MediaKitPlayableKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MPModelObject.MediaKitPlayableKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for SnapshotIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SnapshotIdentifier.Lazy(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for SnapshotIdentifier.Lazy(uint64_t a1)
{
  type metadata accessor for (index: Int, collection: MPSectionedCollection)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (indexPath: IndexPath, collection: MPSectionedCollection)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (index: Int, collection: MPSectionedCollection)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (index: Int, collection: MPSectionedCollection))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo21MPSectionedCollectionCMd, &_sSo21MPSectionedCollectionCMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (index: Int, collection: MPSectionedCollection));
    }
  }
}

void type metadata accessor for (indexPath: IndexPath, collection: MPSectionedCollection)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (indexPath: IndexPath, collection: MPSectionedCollection))
  {
    type metadata accessor for IndexPath();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo21MPSectionedCollectionCMd, &_sSo21MPSectionedCollectionCMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (indexPath: IndexPath, collection: MPSectionedCollection));
    }
  }
}

uint64_t outlined destroy of (String, MPPropertySet)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012461C()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type MPArtworkCatalog.LoadingError and conformance MPArtworkCatalog.LoadingError()
{
  result = lazy protocol witness table cache variable for type MPArtworkCatalog.LoadingError and conformance MPArtworkCatalog.LoadingError;
  if (!lazy protocol witness table cache variable for type MPArtworkCatalog.LoadingError and conformance MPArtworkCatalog.LoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPArtworkCatalog.LoadingError and conformance MPArtworkCatalog.LoadingError);
  }

  return result;
}

uint64_t sub_1001246B4()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for MPArtworkCatalog.LoadingError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for MPArtworkCatalog.LoadingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MPArtworkCatalog.LoadingError(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

BOOL AudioVariantProviding.supportsDolbyPlayback.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8MusicKit12AudioVariantO_SayAFGTt0g5Tf4g_n(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit12AudioVariantOGMd, &_ss23_ContiguousArrayStorageCy8MusicKit12AudioVariantOGMR);
  v5 = type metadata accessor for AudioVariant();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004F2EF0;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, enum case for AudioVariant.dolbyAtmos(_:), v5);
  v11(v10 + v7, enum case for AudioVariant.dolbyAudio(_:), v5);
  v12 = specialized _NativeSet.genericIntersection<A>(_:)(v9, v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = *(v12 + 16);

  return v13 != 0;
}

unint64_t AudioVariant.symbolString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    return 0xD000000000000018;
  }

  if (v7 == enum case for AudioVariant.dolbyAudio(_:))
  {
    return 0xD000000000000018;
  }

  if (v7 == enum case for AudioVariant.lossless(_:) || v7 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    return 0xD000000000000015;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t AudioVariant.accessibilityLabel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    if (one-time initialization token for dolbyAtmosLabel != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.dolbyAtmosLabel;
  }

  else if (v7 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (one-time initialization token for dolbyAudioLabel != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.dolbyAudioLabel;
  }

  else if (v7 == enum case for AudioVariant.lossless(_:))
  {
    if (one-time initialization token for losslessLabel != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.losslessLabel;
  }

  else
  {
    if (v7 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    if (one-time initialization token for hiResLosslessLabel != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.hiResLosslessLabel;
  }

  v9 = *v8;

  return v9;
}

uint64_t AudioVariant.badgeText.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = type metadata accessor for AudioVariant();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v0, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for AudioVariant.lossless(_:) || v12 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v2 + 16))(v4, v6, v1);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v13 = static NSBundle.module;
    static Locale.current.getter();
    v14 = String.init(localized:table:bundle:locale:comment:)();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return v14;
}

uint64_t Array<A>.removingEquivalents()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit12AudioVariantOSgMd, &_s8MusicKit12AudioVariantOSgMR);
  __chkstk_darwin();
  v2 = &v14 - v1;
  v3 = type metadata accessor for AudioVariant();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8MusicKit12AudioVariantO_SayAFGTt0g5Tf4g_n(v7);

  v15 = v8;
  v9 = *(v4 + 104);
  v9(v6, enum case for AudioVariant.highResolutionLossless(_:), v3);

  v10 = specialized Set.contains(_:)(v6, v8);

  v11 = *(v4 + 8);
  v11(v6, v3);
  if (v10)
  {
    v9(v6, enum case for AudioVariant.lossless(_:), v3);
    specialized Set._Variant.remove(_:)(v6, v2);
    v11(v6, v3);
    outlined destroy of TaskPriority?(v2, &_s8MusicKit12AudioVariantOSgMd, &_s8MusicKit12AudioVariantOSgMR);
  }

  v12 = v15;
  v9(v6, enum case for AudioVariant.dolbyAtmos(_:), v3);
  LOBYTE(v12) = specialized Set.contains(_:)(v6, v12);
  v11(v6, v3);
  if (v12)
  {
    v9(v6, enum case for AudioVariant.dolbyAudio(_:), v3);
    specialized Set._Variant.remove(_:)(v6, v2);
    v11(v6, v3);
    outlined destroy of TaskPriority?(v2, &_s8MusicKit12AudioVariantOSgMd, &_s8MusicKit12AudioVariantOSgMR);
  }

  return v15;
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
  v11 = *(v4 - 8);
  v5 = __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 4) != 0)
  {
    static MusicLibrary.DownloadStatus.DownloadPauseReasons.cellularDataDisallowed.getter();
LABEL_10:
    (*(v11 + 32))(a2, v7, v4);
    return (*(v11 + 56))(a2, 0, 1, v4);
  }

  if ((a1 & 2) != 0)
  {
    static MusicLibrary.DownloadStatus.DownloadPauseReasons.constrainedNetwork.getter();
    goto LABEL_10;
  }

  if (a1)
  {
    static MusicLibrary.DownloadStatus.DownloadPauseReasons.thermalPressure.getter();
    goto LABEL_10;
  }

  v8 = *(v11 + 56);

  return v8(a2, 1, 1, v4, v5);
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v72 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin();
  v7 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v66 - v8;
  v10 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v66 - v15;
  (*(v11 + 16))(v66 - v15, v2, v10, v14);
  static MusicLibrary.DownloadStatus.DownloadPauseReasons.cellularDataDisallowed.getter();
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v11 + 8);
  v18(v13, v10);
  if (v17)
  {
    v18(v16, v10);
    specialized static Alert.cellularDataDisallowedAlert(_:)(0, 0, v75);
    v20 = v75[0];
    result = v75[1];
    v22 = v75[2];
    v21 = v75[3];
    v23 = v77;
    v24 = v78;
    v25 = v79;
    v26 = v80;
    v27 = v76 & 0xFFFFFFFFFFFFFF00;
    v28 = v78 & 0xFFFFFFFFFFFFFF00;
    v29 = v76;
  }

  else
  {
    static MusicLibrary.DownloadStatus.DownloadPauseReasons.constrainedNetwork.getter();
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18(v13, v10);
    if (v30)
    {
      v18(v16, v10);
      String.LocalizationValue.init(stringLiteral:)();
      v31 = v73;
      v32 = v74;
      v33 = v73 + 16;
      v34 = *(v73 + 16);
      v34(v7, v9, v74);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v35 = static NSBundle.module;
      v36 = static NSBundle.module;
      static Locale.current.getter();
      v37 = v36;
      v38 = String.init(localized:table:bundle:locale:comment:)();
      v70 = v39;
      v71 = v38;
      v40 = *(v31 + 8);
      v40(v9, v32);
      v68 = v40;
      String.LocalizationValue.init(stringLiteral:)();
      v34(v7, v9, v32);
      static Locale.current.getter();
      v66[1] = v35;
      v73 = String.init(localized:table:bundle:locale:comment:)();
      v69 = v41;
      v40(v9, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
      v42 = swift_allocObject();
      v66[0] = v33;
      v43 = v34;
      v67 = v34;
      v25 = v42;
      *(v42 + 16) = xmmword_1004F2EF0;
      String.LocalizationValue.init(stringLiteral:)();
      v43(v7, v9, v32);
      static Locale.current.getter();
      v44 = String.init(localized:table:bundle:locale:comment:)();
      v46 = v45;
      v47 = v68;
      v68(v9, v32);
      *(v25 + 32) = 0x6C65636E6163;
      *(v25 + 40) = 0xE600000000000000;
      *(v25 + 48) = v44;
      *(v25 + 56) = v46;
      *(v25 + 64) = 0;
      *(v25 + 72) = 0;
      *(v25 + 80) = 0;
      String.LocalizationValue.init(stringLiteral:)();
      v67(v7, v9, v32);
      static Locale.current.getter();
      v48 = String.init(localized:table:bundle:locale:comment:)();
      v49 = v32;
      v51 = v50;
      v47(v9, v49);
      v21 = v69;
      result = v70;
      v22 = v73;
      v20 = v71;
      v23 = 0;
      v26 = 0;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      *(v25 + 88) = 0x73676E6974746573;
      *(v25 + 96) = 0xE800000000000000;
      *(v25 + 104) = v48;
      *(v25 + 112) = v51;
      *(v25 + 120) = 2;
      *(v25 + 128) = &async function pointer to closure #1 in MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter;
      *(v25 + 136) = 0;
      v24 = 1;
    }

    else
    {
      static MusicLibrary.DownloadStatus.DownloadPauseReasons.thermalPressure.getter();
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18(v13, v10);
      v18(v16, v10);
      if (v52)
      {
        String.LocalizationValue.init(stringLiteral:)();
        v53 = v73;
        v54 = v74;
        v55 = *(v73 + 16);
        v55(v7, v9, v74);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v56 = static NSBundle.module;
        static Locale.current.getter();
        v57 = v56;
        v58 = String.init(localized:table:bundle:locale:comment:)();
        v70 = v59;
        v71 = v58;
        v60 = *(v53 + 8);
        v60(v9, v54);
        String.LocalizationValue.init(stringLiteral:)();
        v68 = v55;
        v55(v7, v9, v54);
        static Locale.current.getter();
        v73 = String.init(localized:table:bundle:locale:comment:)();
        v69 = v61;
        v60(v9, v54);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1004F2400;
        String.LocalizationValue.init(stringLiteral:)();
        (v68)(v7, v9, v54);
        static Locale.current.getter();
        v62 = String.init(localized:table:bundle:locale:comment:)();
        v63 = v54;
        v65 = v64;
        v60(v9, v63);
        v21 = v69;
        result = v70;
        v20 = v71;
        v23 = 0;
        v26 = 0;
        v28 = 0;
        v29 = 0;
        v27 = 0;
        *(v25 + 32) = 0x6C65636E6163;
        *(v25 + 40) = 0xE600000000000000;
        v22 = v73;
        *(v25 + 48) = v62;
        *(v25 + 56) = v65;
        *(v25 + 64) = 0;
        v24 = 1;
        *(v25 + 72) = 0;
        *(v25 + 80) = 0;
      }

      else
      {
        v20 = 0;
        result = 0;
        v22 = 0;
        v21 = 0;
        v23 = 0;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        v28 = 0;
        v29 = 0;
        v27 = 0;
      }
    }
  }

  *a1 = v20;
  a1[1] = result;
  a1[2] = v22;
  a1[3] = v21;
  a1[4] = v27 | v29;
  a1[5] = v23;
  a1[6] = v28 | v24;
  a1[7] = v25;
  a1[8] = v26;
  return result;
}

uint64_t Track.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MusicVideo();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin();
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v37 - v13;
  v15 = *(v10 + 16);
  v42 = v1;
  v15(&v37 - v13, v1, v9, v12);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v14, v9);
    v17 = *(v6 + 32);
    v17(v8, v14, v5);
    a1[3] = v5;
    a1[4] = &protocol witness table for Song;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (v17)(boxed_opaque_existential_1, v8, v5);
  }

  else
  {
    v38 = a1;
    if (v16 == enum case for Track.musicVideo(_:))
    {
      (*(v10 + 96))(v14, v9);
      v20 = v39;
      v21 = *(v40 + 32);
      v22 = v41;
      v21(v39, v14, v41);
      v23 = v38;
      v38[3] = v22;
      v23[4] = &protocol witness table for MusicVideo;
      v24 = __swift_allocate_boxed_opaque_existential_1(v23);
      return (v21)(v24, v20, v22);
    }

    else
    {
      if (one-time initialization token for musicKit != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.musicKit);
      v26 = v43;
      (v15)(v43, v42, v9);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v44 = v42;
        *v29 = 136315138;
        lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Track and conformance Track, &type metadata accessor for Track, &protocol conformance descriptor for Track);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v26;
        v33 = v32;
        v34 = *(v10 + 8);
        v34(v31, v9);
        v35 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v33, &v44);

        *(v29 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "Unsupported Track type=%s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
      }

      else
      {

        v34 = *(v10 + 8);
        v34(v26, v9);
      }

      v36 = v38;
      v38[4] = 0;
      *v36 = 0u;
      *(v36 + 1) = 0u;
      return (v34)(v14, v9);
    }
  }
}

uint64_t Logger.musicKit.unsafeMutableAddressor()
{
  if (one-time initialization token for musicKit != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.musicKit);
}

uint64_t Track.album(from:fallbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v6[5] = a3;
  v6[6] = v3;
  v6[3] = a1;
  v6[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for MusicPropertySource();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[11] = v9;
  *v9 = v6;
  v9[1] = Track.album(from:fallbackSource:);

  return _album #1 (from:) in Track.album(from:fallbackSource:)(a1, a2, v3);
}

uint64_t Track.album(from:fallbackSource:)()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(Track.album(from:fallbackSource:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  *(v0 + 16) = *(v0 + 96);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast() || (*(v0 + 120) & 1) != 0)
  {

    swift_willThrow();
LABEL_4:

    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);

  outlined init with copy of MusicPropertySource?(v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 56), &_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
LABEL_11:
    lazy protocol witness table accessor for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:)();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    goto LABEL_4;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicPropertySource and conformance MusicPropertySource, &type metadata accessor for MusicPropertySource, &protocol conformance descriptor for MusicPropertySource);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    goto LABEL_11;
  }

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = Track.album(from:fallbackSource:);
  v9 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);

  return _album #1 (from:) in Track.album(from:fallbackSource:)(v11, v9, v10);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = Track.album(from:fallbackSource:);
  }

  else
  {
    v2 = Track.album(from:fallbackSource:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t _album #1 (from:) in Track.album(from:fallbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for MusicVideo();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMR);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Song();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for Track();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(_album #1 (from:) in Track.album(from:fallbackSource:), 0, 0);
}

uint64_t _album #1 (from:) in Track.album(from:fallbackSource:)()
{
  v44 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = *(v3 + 16);
  v4(v1, v0[4], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for Track.song(_:))
  {
    v6 = v0[20];
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    (*(v0[18] + 96))(v6, v0[17]);
    (*(v9 + 32))(v7, v6, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    v0[21] = v10;
    *(v10 + 16) = xmmword_1004F2F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA4SongVGMd, &_s8MusicKit07PartialA13AsyncPropertyCyAA4SongVGMR);
    *(v10 + 32) = static PartialMusicProperty<A>.albums.getter();
    v11 = swift_task_alloc();
    v0[22] = v11;
    v12 = lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    *v11 = v0;
    v11[1] = _album #1 (from:) in Track.album(from:fallbackSource:);
    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[3];
    v16 = &protocol witness table for Song;
    v17 = &protocol witness table for Song;
LABEL_5:

    return MusicItem<>.with(_:preferredSource:)(v13, v10, v15, v14, v16, v17, v12);
  }

  if (v5 == enum case for Track.musicVideo(_:))
  {
    v18 = v0[20];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[6];
    (*(v0[18] + 96))(v18, v0[17]);
    (*(v21 + 32))(v19, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    v0[24] = v10;
    *(v10 + 16) = xmmword_1004F2F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA0A5VideoVGMd, &_s8MusicKit07PartialA13AsyncPropertyCyAA0A5VideoVGMR);
    *(v10 + 32) = static PartialMusicProperty<A>.albums.getter();
    v22 = swift_task_alloc();
    v0[25] = v22;
    v12 = lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicVideo and conformance MusicVideo, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
    *v22 = v0;
    v22[1] = _album #1 (from:) in Track.album(from:fallbackSource:);
    v13 = v0[7];
    v14 = v0[5];
    v15 = v0[3];
    v16 = &protocol witness table for MusicVideo;
    v17 = &protocol witness table for MusicVideo;
    goto LABEL_5;
  }

  if (one-time initialization token for musicKit != -1)
  {
    swift_once();
  }

  v23 = v0[19];
  v24 = v0[17];
  v25 = v0[4];
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.musicKit);
  v4(v23, v25, v24);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[18];
  v30 = v0[19];
  v32 = v0[17];
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136446210;
    lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Track and conformance Track, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v42 = *(v31 + 8);
    v42(v30, v32);
    v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v35, v37, &v43);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unexpected Track type %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  else
  {

    v42 = *(v31 + 8);
    v42(v30, v32);
  }

  lazy protocol witness table accessor for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:)();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();
  v42(v0[20], v0[17]);

  v40 = v0[1];

  return v40();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = _album #1 (from:) in Track.album(from:fallbackSource:);
  }

  else
  {
    v2 = _album #1 (from:) in Track.album(from:fallbackSource:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  Song.albums.getter();
  v18 = *(v2 + 8);
  v18(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[12];
  v9 = v0[10];
  if (v7 == 1)
  {
    outlined destroy of TaskPriority?(v0[10], &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMR);
    v10 = type metadata accessor for Album();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    outlined destroy of TaskPriority?(v0[12], &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
    lazy protocol witness table accessor for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:)();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[16], v0[13]);

    v14 = v0[1];
    goto LABEL_6;
  }

  specialized Collection.first.getter(v0[12]);
  (*(v6 + 8))(v9, v5);
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  v15 = v0[12];
  v16 = v0[2];
  v18(v0[16], v0[13]);
  (*(v12 + 32))(v16, v15, v11);

  v14 = v0[1];
LABEL_6:

  return v14();
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = _album #1 (from:) in Track.album(from:fallbackSource:);
  }

  else
  {
    v2 = _album #1 (from:) in Track.album(from:fallbackSource:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t _album #1 (from:) in Track.album(from:fallbackSource:)(uint64_t a1)
{
  v2 = v1[9];
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[5];
  MusicVideo.albums.getter();
  v19 = *(v4 + 8);
  v19(v3, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMR);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v2, 1, v6);
  v9 = v1[11];
  v10 = v1[9];
  if (v8 == 1)
  {
    outlined destroy of TaskPriority?(v1[9], &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMR);
    v11 = type metadata accessor for Album();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
LABEL_4:
    outlined destroy of TaskPriority?(v1[11], &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
    lazy protocol witness table accessor for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:)();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v19(v1[8], v1[5]);

    v15 = v1[1];
    goto LABEL_6;
  }

  specialized Collection.first.getter(v1[11]);
  (*(v7 + 8))(v10, v6);
  v12 = type metadata accessor for Album();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v16 = v1[11];
  v17 = v1[2];
  v19(v1[8], v1[5]);
  (*(v13 + 32))(v17, v16, v12);

  v15 = v1[1];
LABEL_6:

  return v15();
}

NSString one-time initialization function for downloadingStateDidChange()
{
  result = String._bridgeToObjectiveC()();
  static MusicLibrary.downloadingStateDidChange = result;
  return result;
}

uint64_t *MusicLibrary.downloadingStateDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for downloadingStateDidChange != -1)
  {
    swift_once();
  }

  return &static MusicLibrary.downloadingStateDidChange;
}

id static MusicLibrary.downloadingStateDidChange.getter()
{
  if (one-time initialization token for downloadingStateDidChange != -1)
  {
    swift_once();
  }

  v1 = static MusicLibrary.downloadingStateDidChange;

  return v1;
}

uint64_t MusicPin.Action.localizedTitle(for:)(char *a1)
{
  v2 = v1;
  v32 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for String.LocalizationValue();
  v4 = *(v34 - 8);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = type metadata accessor for MusicPin.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicPin.Action();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v2, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == enum case for MusicPin.Action.navigate(_:))
  {
    (*(v10 + 16))(v12, v32, v9);
    v19 = (*(v10 + 88))(v12, v9);
    if (v19 == enum case for MusicPin.Item.album(_:))
    {
      v31 = v9;
      v32 = v12;
      String.LocalizationValue.init(stringLiteral:)();
      v20 = v34;
      (*(v4 + 16))(v6, v8, v34);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v21 = static NSBundle.module;
      static Locale.current.getter();
      v22 = String.init(localized:table:bundle:locale:comment:)();
      (*(v4 + 8))(v8, v20);
      (*(v10 + 8))(v32, v31);
      return v22;
    }

    v23 = v34;
    if (v19 != enum case for MusicPin.Item.artist(_:) && v19 != enum case for MusicPin.Item.musicVideo(_:) && v19 != enum case for MusicPin.Item.playlist(_:) && v19 != enum case for MusicPin.Item.song(_:))
    {
      (*(v10 + 8))(v12, v9);
      return 0;
    }

    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v8, v23);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v28 = static NSBundle.module;
    static Locale.current.getter();
    v22 = String.init(localized:table:bundle:locale:comment:)();
    (*(v4 + 8))(v8, v23);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    if (v18 != enum case for MusicPin.Action.play(_:) && v18 != enum case for MusicPin.Action.shuffle(_:))
    {
      (*(v14 + 8))(v17, v13);
      return 0;
    }

    String.LocalizationValue.init(stringLiteral:)();
    v24 = v4;
    v25 = *(v4 + 16);
    v26 = v34;
    v25(v6, v8, v34);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v27 = static NSBundle.module;
    static Locale.current.getter();
    v22 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v8, v26);
  }

  return v22;
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance Song(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song, &protocol conformance descriptor for Song);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance MusicVideo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicVideo and conformance MusicVideo, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance Playlist(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance Playlist.Folder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance MusicPin(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicPin and conformance MusicPin, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicPin and conformance MusicPin, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance MusicPin.Item(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicPin.Item and conformance MusicPin.Item, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicPin.Item and conformance MusicPin.Item, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t one-time initialization function for musicKit()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.musicKit);
  __swift_project_value_buffer(v0, static Logger.musicKit);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.musicKit.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for musicKit != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.musicKit);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t specialized Set._Variant.remove(_:)(char a1)
{
  v2 = v1;
  v4 = *v1;
  Hasher.init(_seed:)();
  ActionType.rawValue.getter(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 52;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = ActionType.rawValue.getter(*(*(v4 + 48) + v7));
    v11 = v10;
    if (v9 == ActionType.rawValue.getter(a1) && v11 == v12)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_11;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 52;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  specialized _NativeSet._delete(at:)(v7);
  *v2 = v19;
  return v15;
}

{
  v2 = v1;
  v4 = *v2;
  Hasher.init(_seed:)();
  v5 = qword_100519430[a1];
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 10;
  }

  v9 = ~v7;
  while (qword_100519430[*(*(v4 + 48) + v8)] != v5)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 10;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v8);
  specialized _NativeSet._delete(at:)(v8);
  result = v13;
  *v2 = v14;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AudioVariant();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

{
  v5 = type metadata accessor for Playlist.Collaborator();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(v3);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 13;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = 0xD000000000000029;
    v10 = "orites";
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v9 = 0xD000000000000023;
        v10 = "LibraryView.Playlists";
        break;
      case 3:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Artists";
        break;
      case 4:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Albums";
        break;
      case 5:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Songs";
        break;
      case 6:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.MadeForYou";
        break;
      case 7:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.MusicVideos";
        break;
      case 8:
        v9 = 0xD000000000000028;
        v10 = "LibraryView.Genres";
        break;
      case 9:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Compilations";
        break;
      case 0xA:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Composers";
        break;
      case 0xB:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Shows";
        break;
      case 0xC:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v11 = v10 | 0x8000000000000000;
    v12 = 0xD000000000000029;
    v13 = "orites";
    switch(v3)
    {
      case 1:
        v12 = 0xD000000000000025;
        v13 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v12 = 0xD000000000000023;
        v13 = "LibraryView.Playlists";
        break;
      case 3:
        v12 = 0xD000000000000022;
        v13 = "LibraryView.Artists";
        break;
      case 4:
        v12 = 0xD000000000000021;
        v13 = "LibraryView.Albums";
        break;
      case 5:
        v12 = 0xD000000000000026;
        v13 = "LibraryView.Songs";
        break;
      case 6:
        v12 = 0xD000000000000027;
        v13 = "LibraryView.MadeForYou";
        break;
      case 7:
        v12 = 0xD000000000000022;
        v13 = "LibraryView.MusicVideos";
        break;
      case 8:
        v12 = 0xD000000000000028;
        v13 = "LibraryView.Genres";
        break;
      case 9:
        v12 = 0xD000000000000025;
        v13 = "LibraryView.Compilations";
        break;
      case 10:
        v12 = 0xD000000000000021;
        v13 = "LibraryView.Composers";
        break;
      case 11:
        v12 = 0xD000000000000026;
        v13 = "LibraryView.Shows";
        break;
      case 12:
        v12 = 0xD000000000000027;
        v13 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_35;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 13;
    }
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  specialized _NativeSet._delete(at:)(v7);
  *v2 = v19;
  return v15;
}

{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        ActionType.rawValue.getter(v10);
        String.hash(into:)();

        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    JUMPOUT(0x100129C80);
  }

  *(v3 + 16) = v16;
  ++*(v3 + 36);
  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for AudioVariant();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

{
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t specialized _NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), (swift_stdlib_isStackAllocationSafe() & 1) != 0))
  {
    __chkstk_darwin();
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v9, v7, isStackAllocationSafe, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = type metadata accessor for AudioVariant();
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v9 + 16);
    v38 = v9 + 16;
    v31 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v13 = *(v9 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v9 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6, v10);
      lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        (v37)(v8, *(v34 + 48) + v19 * v36, v6);
        lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15 = *v14;
        (*v14)(v8, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return specialized _NativeSet.extractSubset(using:count:)(v29, v27, v28, a4);
}

uint64_t specialized static AudioVariant.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit12AudioVariantO_ACtMd, &_s8MusicKit12AudioVariantO_ACtMR);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v7 = *(v6 + 56);
  v8 = type metadata accessor for AudioVariant();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v5, a1, v8);
  v10(&v5[v7], a2, v8);
  v11 = *(v9 + 88);
  v12 = v11(v5, v8);
  v13 = enum case for AudioVariant.dolbyAtmos(_:);
  if (v12 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    goto LABEL_2;
  }

  v15 = enum case for AudioVariant.dolbyAudio(_:);
  if (v12 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (v11(&v5[v7], v8) != v13)
    {
LABEL_2:
      (*(v9 + 8))(&v5[v7], v8);
      return 1;
    }
  }

  else if (v12 == enum case for AudioVariant.lossless(_:))
  {
    v16 = v11(&v5[v7], v8);
    if (v16 != v13 && v16 != v15 && v16 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      goto LABEL_2;
    }
  }

  else if (v12 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    v19 = v11(&v5[v7], v8);
    if (v19 != v13 && v19 != v15)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v21 = *(v9 + 8);
    v21(&v5[v7], v8);
    v21(v5, v8);
  }

  return 0;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8MusicKit12AudioVariantO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = *(a1 + 16);
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  result = Set.init(minimumCapacity:)();
  v16 = result;
  if (v8)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v5, v13, v2);
      specialized Set._Variant.insert(_:)(v7, v5);
      (*(v10 - 8))(v7, v2);
      v13 += v14;
      --v8;
    }

    while (v8);
    return v16;
  }

  return result;
}

uint64_t outlined init with copy of MusicPropertySource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:)()
{
  result = lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:);
  if (!lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:);
  if (!lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:));
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MusicCore18BackgroundMaterialO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MusicCore7LibraryO4MenuV10IdentifierO_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier()
{
  result = lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier;
  if (!lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier;
  if (!lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier;
  if (!lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier;
  if (!lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier;
  if (!lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial()
{
  result = lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial;
  if (!lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial;
  if (!lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial;
  if (!lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static Logger.music(_:)(uint64_t a1, uint64_t a2)
{

  return Logger.init(subsystem:category:)();
}

uint64_t *OS_os_log.musicBag.unsafeMutableAddressor()
{
  if (one-time initialization token for musicBag != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicBag;
}

void **OS_os_log.musicSignposts.unsafeMutableAddressor()
{
  if (one-time initialization token for musicSignposts != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicSignposts;
}

uint64_t one-time initialization function for musicSignposts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t Logger.motion.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t one-time initialization function for audioFormat(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.audioFormat.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Optional.expectNotNil(logger:file:line:function:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v8 = v7;
  v33 = a3;
  v34 = a4;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(*(a6 + 16) - 8) + 48))(v7, 1, v15) == 1)
  {
    v30 = a2;
    v32 = a5;
    v18 = static os_log_type_t.info.getter();
    v19 = Logger.logObject.getter();
    v31 = v18;
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v29 = a7;
      v21 = v20;
      v28 = swift_slowAlloc();
      v35 = v28;
      *v21 = 136315650;
      URL.init(fileURLWithPath:)();
      v22 = URL.lastPathComponent.getter();
      v24 = v23;
      (*(v14 + 8))(v17, v13);
      v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v24, &v35);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2048;
      v26 = v34;
      *(v21 + 14) = v33;
      *(v21 + 22) = 2080;
      *(v21 + 24) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v32, &v35);
      _os_log_impl(&_mh_execute_header, v19, v31, "Unexpectedly found nil: %s:%ld %s", v21, 0x20u);
      swift_arrayDestroy();

      a7 = v29;
    }
  }

  return (*(*(a6 - 8) + 16))(a7, v8, a6);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t MPModelSong.nowPlayingTitle(from:)(void *a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v23[-v8];
  v10 = [v1 title];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      return v12;
    }
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  v16 = [a1 name];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

LABEL_12:
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v9, v3);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v21 = static NSBundle.module;
    static Locale.current.getter();
    v12 = String.init(localized:table:bundle:locale:comment:)();
    (*(v4 + 8))(v9, v3);
  }

  return v12;
}

id MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(void *a1, void (*a2)(char *), uint64_t a3)
{
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  MPModelSong.nowPlayingTitle(from:)(a1);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  result = [v3 isExplicitSong];
  if (result)
  {
    v20[1] = a3;
    v21 = a2;
    v12 = String.nonBreakingSpace.unsafeMutableAddressor();
    v13 = *v12;
    v14 = v12[1];
    v15 = one-time initialization token for shared;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = (static ExplicitRestrictionsController.shared + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    v22 = v13;
    v23 = v14;

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    if (v21)
    {
      v21(v10);
    }

    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    AttributedString.append<A>(_:)();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t MPModelSong.preferredBylineAttribution(with:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  __chkstk_darwin();
  v9 = &v34 - v8;
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  __chkstk_darwin();
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v34 - v14;
  __chkstk_darwin();
  v38 = &v34 - v15;
  type metadata accessor for AttributeContainer();
  v16 = __chkstk_darwin();
  if (a2 && (v17 = [a2 attributionLabel]) != 0)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    return (*(v40 + 56))(a3, 0, 1, v39);
  }

  else
  {
    v35 = v13;
    v36 = a3;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = (a1 + 32);
      v22 = v39;
      v23 = (v40 + 48);
      v24 = (v40 + 32);
      v25 = _swiftEmptyArrayStorage;
      v37 = v4;
      do
      {
        v42 = *v21;
        closure #1 in MPModelSong.preferredBylineAttribution(with:from:)(&v42, v4, v9);
        if ((*v23)(v9, 1, v22) == 1)
        {
          outlined destroy of TaskPriority?(v9, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
        }

        else
        {
          v26 = *v24;
          v27 = v38;
          (*v24)(v38, v9, v22);
          v26(v41, v27, v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
          }

          v29 = v25[2];
          v28 = v25[3];
          if (v29 >= v28 >> 1)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v25);
          }

          v25[2] = v29 + 1;
          v30 = v25 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v29;
          v22 = v39;
          v26(v30, v41, v39);
          v4 = v37;
        }

        ++v21;
        --v20;
      }

      while (v20);
    }

    else
    {
      v25 = _swiftEmptyArrayStorage;
      v22 = v39;
    }

    if (v25[2])
    {
      v31 = v35;
      AttributedString.init(stringLiteral:)();
      v32 = v36;
      Array<A>.joined(separator:)(v31, v25, v22, &protocol witness table for AttributedString, &protocol witness table for AttributedString, v36);

      v33 = v40;
      (*(v40 + 8))(v31, v22);
      return (*(v33 + 56))(v32, 0, 1, v22);
    }

    else
    {
      (*(v40 + 56))(v36, 1, 1, v22, v16);
    }
  }
}