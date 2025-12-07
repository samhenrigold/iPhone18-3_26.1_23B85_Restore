uint64_t static MOSuggestionAssetPhotoLivePhotoVideosProvider.playableVideo(_:asset:)(unsigned __int8 a1, id a2)
{
  v2 = a1;
  if ([a2 isGuestAsset])
  {
    v3 = v2 - 2 >= 9;
  }

  else if (v2 <= 0xA)
  {
    v3 = 0x103u >> v2;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

void closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.getAssetsFor(identifiers:cacheType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_beginAccess();
  v9 = *(a2 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v11;
    if (a1)
    {
      swift_beginAccess();

      specialized Array.append<A>(contentsOf:)(v12);
      swift_endAccess();
    }

    swift_beginAccess();
    v13 = *(a2 + 16);
    swift_beginAccess();
    if (v13 == *(a4 + 16))
    {
      swift_beginAccess();

      a5(v14);
    }
  }
}

id PHAsset.squareCropRect.getter(double a1, double a2)
{
  v5 = objc_opt_self();

  return [v5 preferredContentsRectForAsset:v2 targetSize:{a1, a2}];
}

void MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchImages(_:cacheType:completion:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v27 = *(v4 + 16);
    v8 = (a2 - 2);
    while (1)
    {
      v12 = (a1 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 8 * v7 + 32);
      v13 = v12;
      if (v8 > 8)
      {
        break;
      }

      v14 = dbl_1002A84C8[v8];
      v15 = dbl_1002A8510[v8];
      v16 = [objc_opt_self() mainScreen];
      [v16 scale];
      v18 = v17;

      v19 = v14 * v18;
      v20 = v15 * v18;
      if (a2 != 8)
      {
        goto LABEL_13;
      }

      v21 = 1;
LABEL_14:
      v22 = swift_allocObject();
      v22[2] = v13;
      v22[3] = v30;
      v22[4] = v31;
      v22[5] = a1;
      v22[6] = a3;
      v22[7] = a4;
      v23 = objc_allocWithZone(PHImageRequestOptions);
      v24 = v13;

      v25 = [v23 init];
      [v25 setDeliveryMode:1];
      [v25 setNetworkAccessAllowed:1];
      [v25 setUseLowMemoryMode:1];
      if (v21)
      {
        [v25 setDownloadIntent:3];
      }

      ++v7;
      v9 = swift_allocObject();
      *(v9 + 16) = partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchImages(_:cacheType:completion:);
      *(v9 + 24) = v22;
      aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIImage?, @guaranteed [AnyHashable : Any]?) -> ();
      aBlock[3] = &block_descriptor_19;
      v10 = _Block_copy(aBlock);
      v11 = v25;

      [v27 requestImageForAsset:v24 targetSize:1 contentMode:v11 options:v10 resultHandler:{v19, v20}];
      _Block_release(v10);

      v8 = (a2 - 2);
      if (v6 == v7)
      {

        return;
      }
    }

    v19 = 1500.0;
    v20 = 1500.0;
LABEL_13:
    v21 = (a2 - 11) < 0xF7u;
    goto LABEL_14;
  }

  __break(1u);
}

void closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchImages(_:cacheType:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t))
{
  if (a1)
  {
    v11 = a1;
    v12 = [a2 mediaType];
    v13 = &MOSuggestionAssetsTypeVideo;
    if (v12 != 2)
    {
      v13 = &MOSuggestionAssetsTypePhoto;
    }

    v14 = *v13;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
    v15 = objc_allocWithZone(MOSuggestionAsset);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = v11;
    v18 = [v15 init:v17 type:v14 contentClassType:ObjCClassFromMetadata];

    v19 = specialized static MOSuggestionAssetPhotoLivePhotoVideosProvider.packedImageMetadata(from:)(a2);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 addMetadata:isa];

    swift_beginAccess();
    v21 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  swift_beginAccess();
  v22 = *(a4 + 16);
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v23;
    if (!(a5 >> 62))
    {
      if (v23 != *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_10;
    }
  }

  if (v23 != _CocoaArrayWrapper.endIndex.getter())
  {
    return;
  }

LABEL_10:
  swift_beginAccess();

  v24 = specialized _arrayConditionalCast<A, B>(_:)();

  a6(v24);
}

void MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchLivePhotoObjects(_:size:completion:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v22 = *(*v4 + 216);
    v8 = (a2 - 2);
    while (1)
    {
      v12 = (a1 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 8 * v7 + 32);
      v13 = v12;
      if (v8 > 8)
      {
        break;
      }

      v14 = dbl_1002A84C8[v8];
      v15 = dbl_1002A8510[v8];
      v16 = [objc_opt_self() mainScreen];
      [v16 scale];
      v18 = v17;

      v19 = v14 * v18;
      v20 = v15 * v18;
      if (a2 != 8)
      {
        goto LABEL_14;
      }

      v9 = 1;
LABEL_6:
      ++v7;
      v10 = swift_allocObject();
      v10[2] = v13;
      v10[3] = v25;
      v10[4] = v26;
      v10[5] = a1;
      v10[6] = a3;
      v10[7] = a4;
      v11 = v13;

      v22(v11, 1, v9, partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchLivePhotoObjects(_:size:completion:), v10, v19, v20);

      v8 = (a2 - 2);
      if (v6 == v7)
      {
        goto LABEL_16;
      }
    }

    v19 = 1500.0;
    v20 = 1500.0;
LABEL_14:
    v9 = (a2 - 11) < 0xF7u;
    goto LABEL_6;
  }

  __break(1u);
}

void closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchLivePhotoObjects(_:size:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, __n128))
{
  v6 = a6;
  if (a1)
  {
    v13 = MOSuggestionAssetsTypeLivePhoto;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PHLivePhoto, PHLivePhoto_ptr);
    v14 = objc_allocWithZone(MOSuggestionAsset);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = a1;
    v17 = [v14 init:v16 type:v13 contentClassType:ObjCClassFromMetadata];
    v18 = specialized static MOSuggestionAssetPhotoLivePhotoVideosProvider.packedImageMetadata(from:)(a2);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v18);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 addMetadata:isa];

    swift_beginAccess();
    v20 = v17;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    v6 = a6;
  }

  swift_beginAccess();
  v21 = *(a4 + 16);
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v22;
    if (!(a5 >> 62))
    {
      if (v22 != *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_8;
    }
  }

  if (v22 != _CocoaArrayWrapper.endIndex.getter())
  {
    return;
  }

LABEL_8:
  swift_beginAccess();

  v23 = specialized _arrayConditionalCast<A, B>(_:)();

  (v6)(v23);
}

void MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchURLAsset(_:assetType:completion:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v82 = a3;
  v81 = a2;
  v80 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v84 = *(v7 - 8);
  v8 = *(v84 + 64);
  v9 = __chkstk_darwin(v7);
  v97 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v67 - v11;
  __chkstk_darwin(v10);
  v14 = &v67 - v13;
  v85 = swift_allocObject();
  *(v85 + 16) = _swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_23:

    goto LABEL_25;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v96 = v12;
    v17 = 0;
    v86 = a1 & 0xC000000000000001;
    v76 = (v5 + 104);
    v75 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v74 = (v5 + 8);
    v18 = (v84 + 8);
    v95 = (v84 + 16);
    v73 = v8 + 7;
    v72 = v84 + 32;
    v71 = v101;
    *&v15 = 136315138;
    v67 = v15;
    v98 = v7;
    v78 = a1;
    v77 = v16;
    v70 = v14;
    v69 = (v84 + 8);
    do
    {
      if (v86)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(a1 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = objc_allocWithZone(type metadata accessor for PhotosFileProviderRegister.Configuration());
      v22 = PhotosFileProviderRegister.Configuration.init(usage:)();
      dispatch thunk of PhotosFileProviderRegister.Configuration.shouldIncludeLocation.setter();
      dispatch thunk of PhotosFileProviderRegister.Configuration.shouldIncludeCaption.setter();
      dispatch thunk of PhotosFileProviderRegister.Configuration.clientEncodingPolicy.setter();
      dispatch thunk of PhotosFileProviderRegister.Configuration.userEncodingPolicy.setter();
      if (one-time initialization token for photosFileProviderManager != -1)
      {
        swift_once();
      }

      if (static MOSuggestionAssetPhotoLivePhotoVideosProvider.photosFileProviderManager)
      {
        v23 = one-time initialization token for fileProviderDomain;
        v24 = static MOSuggestionAssetPhotoLivePhotoVideosProvider.photosFileProviderManager;
        v25 = v22;
        if (v23 != -1)
        {
          swift_once();
        }

        v94 = v17;
        v26 = static MOSuggestionAssetPhotoLivePhotoVideosProvider.fileProviderDomain;
        v27 = objc_allocWithZone(type metadata accessor for PhotosFileProviderRegister());
        v28 = v26;
        v91 = v25;
        v29 = PhotosFileProviderRegister.init(configuration:fileProviderManager:domain:)();
        v30 = [objc_allocWithZone(NSItemProvider) init];
        v93 = v20;
        v90 = v29;
        v88 = dispatch thunk of PhotosFileProviderRegister.registerFileRepresentations(itemProvider:asset:)();

        v92 = v24;
        v31 = [v24 documentStorageURL];
        v32 = v96;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v89 = v28;
        v33 = [v28 pathRelativeToDocumentStorage];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        aBlock = v34;
        v100 = v36;
        v37 = v79;
        v38 = v80;
        (*v76)(v79, v75, v80);
        lazy protocol witness table accessor for type String and conformance String();
        URL.appending<A>(component:directoryHint:)();
        (*v74)(v37, v38);

        v39 = *v18;
        (*v18)(v32, v7);
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static MOAngelLogger.assets);
        v41 = *v95;
        (*v95)(v97, v14, v7);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        v44 = os_log_type_enabled(v42, v43);
        v87 = v39;
        if (v44)
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          aBlock = v46;
          *v45 = v67;
          v47 = v96;
          v48 = v97;
          URL.absoluteURL.getter();
          v49 = URL.absoluteString.getter();
          v68 = v41;
          v51 = v50;
          v39(v47, v98);
          v39(v48, v98);
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &aBlock);
          v41 = v68;

          *(v45 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v42, v43, "[MOSuggestionAssetPhotoLivePhotoVideosProvider] checking path=%s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          v7 = v98;
        }

        else
        {

          v39(v97, v7);
          v47 = v96;
        }

        v53 = v70;
        v41(v47, v70, v7);
        v54 = v84;
        v55 = (*(v84 + 80) + 32) & ~*(v84 + 80);
        v56 = (v73 + v55) & 0xFFFFFFFFFFFFFFF8;
        v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
        v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
        v59 = swift_allocObject();
        v60 = v83;
        *(v59 + 16) = v82;
        *(v59 + 24) = v60;
        (*(v54 + 32))(v59 + v55, v47, v98);
        *(v59 + v56) = v88;
        v61 = v81;
        *(v59 + v57) = v81;
        v62 = v93;
        *(v59 + v58) = v93;
        *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v85;
        v7 = v98;
        v101[2] = partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchURLAsset(_:assetType:completion:);
        v101[3] = v59;
        aBlock = _NSConcreteStackBlock;
        v100 = 1107296256;
        v101[0] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
        v101[1] = &block_descriptor_33;
        v63 = _Block_copy(&aBlock);
        v14 = v53;

        v64 = v61;
        v65 = v62;

        v66 = v92;
        [v92 addDomain:v89 completionHandler:v63];
        _Block_release(v63);

        v18 = v69;
        v87(v53, v7);
        a1 = v78;
        v16 = v77;
        v17 = v94;
      }

      else
      {
      }

      ++v17;
    }

    while (v16 != v17);
LABEL_25:

    return;
  }

  __break(1u);
}

void closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchURLAsset(_:assetType:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v119 = a4;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = __chkstk_darwin(&v105 - v19);
  v21 = __chkstk_darwin(v20);
  v26 = &v105 - v25;
  if (!a1)
  {
    v107 = v21;
    v106 = v24;
    v111 = a5;
    v108 = v23;
    v109 = a6;
    v110 = a7;
    v112 = v22;
    v113 = a2;
    v115 = a8;
    v116 = a3;
    v34 = objc_opt_self();
    v35 = [v34 defaultManager];
    v36 = v119;
    URL.absoluteURL.getter();
    URL.absoluteString.getter();
    v114 = v16;
    v117 = *(v16 + 8);
    v118 = v16 + 8;
    v117(v26, v15);
    v37 = String._bridgeToObjectiveC()();

    v38 = [v35 directoryExistsAtPath:v37];

    v39 = v15;
    if (v38)
    {
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static MOAngelLogger.assets);
      v41 = v114;
      v42 = v107;
      (*(v114 + 16))(v107, v36, v15);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v113;
      if (v45)
      {
        v47 = swift_slowAlloc();
        v48 = v39;
        v49 = swift_slowAlloc();
        v120[0] = v49;
        *v47 = 136315138;
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        v117(v42, v48);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v120);

        *(v47 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v43, v44, "[MOSuggestionAssetPhotoLivePhotoVideosProvider] photospicker dir already exists dir=%s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        v39 = v48;
        v41 = v114;

LABEL_26:
        v81 = v115;
        goto LABEL_29;
      }

      v70 = v42;
    }

    else
    {
      v54 = [v34 defaultManager];
      URL._bridgeToObjectiveC()(v55);
      v57 = v56;
      v120[0] = 0;
      v58 = [v54 createDirectoryAtURL:v56 withIntermediateDirectories:1 attributes:0 error:v120];

      if (!v58)
      {
        v71 = v120[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v46 = v113;
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        __swift_project_value_buffer(v72, static MOAngelLogger.assets);
        swift_errorRetain();
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = v39;
          v77 = swift_slowAlloc();
          v120[0] = v77;
          *v75 = 136315138;
          swift_getErrorValue();
          v78 = Error.localizedDescription.getter();
          v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v120);

          *(v75 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v73, v74, "[MOSuggestionAssetPhotoLivePhotoVideosProvider] error creating photospicker dir, error=%s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          v39 = v76;
        }

        else
        {
        }

        v41 = v114;
        v81 = v115;
LABEL_29:
        v82 = v112;
        if (*(v111 + 16))
        {
          v83 = v46;
          v84 = *(v41 + 16);
          v84(v112, v111 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v39);
          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v85 = type metadata accessor for Logger();
          __swift_project_value_buffer(v85, static MOAngelLogger.assets);
          v86 = v108;
          v84(v108, v82, v39);
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = v39;
            v91 = swift_slowAlloc();
            v120[0] = v91;
            *v89 = 136315138;
            _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v92 = dispatch thunk of CustomStringConvertible.description.getter();
            v94 = v93;
            v117(v86, v90);
            v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, v120);
            v81 = v115;

            *(v89 + 4) = v95;
            _os_log_impl(&_mh_execute_header, v87, v88, "[MOSuggestionAssetPhotoLivePhotoVideosProvider] registered file url=%s", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v91);
            v39 = v90;
          }

          else
          {

            v117(v86, v39);
          }

          v96 = v109;
          URL._bridgeToObjectiveC()(&v121);
          v98 = v97;
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSURL, NSURL_ptr);
          v99 = [objc_allocWithZone(MOSuggestionAsset) init:v98 type:v96 contentClassType:swift_getObjCClassFromMetadata()];

          v100 = specialized static MOSuggestionAssetPhotoLivePhotoVideosProvider.packedImageMetadata(from:)(v110);
          specialized _dictionaryUpCast<A, B, C, D>(_:)(v100);

          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v99 addMetadata:isa];

          swift_beginAccess();
          v102 = v99;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v46 = v83;
          if (*((*(v81 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v81 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          v117(v82, v39);
        }

        swift_beginAccess();
        v103 = *(v81 + 16);
        if (v103 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() >= 1)
          {
            goto LABEL_40;
          }
        }

        else if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
LABEL_40:
          swift_beginAccess();

          v104 = specialized _arrayConditionalCast<A, B>(_:)();

          v46(v104);

          return;
        }

        v46(0);
        return;
      }

      v59 = one-time initialization token for assets;
      v60 = v120[0];
      v46 = v113;
      v41 = v114;
      if (v59 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static MOAngelLogger.assets);
      v62 = v106;
      (*(v41 + 16))(v106, v36, v15);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v120[0] = v119;
        *v65 = 136315138;
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        v117(v62, v39);
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v120);

        *(v65 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v63, v64, "[MOSuggestionAssetPhotoLivePhotoVideosProvider] creating dir=%s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v119);

        goto LABEL_26;
      }

      v70 = v62;
    }

    v117(v70, v39);
    goto LABEL_26;
  }

  v27 = a2;
  swift_errorRetain();
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static MOAngelLogger.assets);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "[MOSuggestionAssetPhotoLivePhotoVideosProvider] domain creation err=%@", v31, 0xCu);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v27(0);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchLivePhoto(for:targetSize:contentMode:oneUpIntent:onComplete:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(0);
  v16 = (v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  *&v18[v16[7]] = a1;
  v19 = &v18[v16[8]];
  *v19 = a6;
  v19[1] = a7;
  *&v18[v16[9]] = a2;
  v18[v16[10]] = a3;
  v20 = &v18[v16[11]];
  *v20 = a4;
  *(v20 + 1) = a5;
  v21 = *(*v7 + 224);
  v22 = a1;

  v21(v18);
  return outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v18);
}

void MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v88 = (&v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v7);
  v10 = &v84 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v84 - v12;
  v14 = __chkstk_darwin(v11);
  v87 = &v84 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = (&v84 - v17);
  __chkstk_darwin(v16);
  v20 = &v84 - v19;
  v21 = [objc_allocWithZone(PHLivePhotoRequestOptions) init];
  [v21 setDeliveryMode:1];
  v22 = [v21 setNetworkAccessAllowed:1];
  v89 = v4;
  if (*(a1 + *(v4 + 32)) == 1)
  {
    v22 = [v21 setDownloadIntent:3];
  }

  if ((*(*v2 + 136))(v22) > 1)
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static MOAngelLogger.assets);
    outlined init with copy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(a1, v13);
    outlined init with copy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(a1, v10);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      aBlock[0] = v87;
      *v45 = 136315394;
      v46 = [*&v13[SHIDWORD(v89[2].isa)] localIdentifier];
      v89 = v43;
      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v86) = v44;
      v49 = v5;
      v50 = a1;
      v51 = v48;
      v52 = v21;
      v54 = v53;

      outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v13);
      v55 = v51;
      a1 = v50;
      v5 = v49;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, aBlock);
      v21 = v52;

      *(v45 + 4) = v56;
      *(v45 + 12) = 2080;
      v57 = UUID.uuidString.getter();
      v59 = v58;
      outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v10);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, aBlock);

      *(v45 + 14) = v60;
      v61 = v89;
      _os_log_impl(&_mh_execute_header, v89, v86, "[MOSuggestionAssetPhotoLivePhotoVideosProvider] queueing task request, assetID=%s, uuid=%s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v10);
      outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v13);
    }

    v62 = v88;
    outlined init with copy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(a1, v88);
    v24 = (*(*v2 + 128))(aBlock);
    v18 = v80;
    v63 = *v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v63;
    a1 = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static MOAngelLogger.assets);
    outlined init with copy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(a1, v20);
    outlined init with copy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(a1, v18);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      aBlock[0] = v86;
      *v26 = 136315394;
      v27 = [*&v20[SHIDWORD(v89[2].isa)] localIdentifier];
      v85 = v25;
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = a1;
      v30 = v5;
      v31 = v21;
      v32 = v29;
      v84 = v24;
      v34 = v33;

      outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v20);
      v35 = v32;
      v21 = v31;
      v5 = v30;
      a1 = v88;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, aBlock);

      *(v26 + 4) = v36;
      *(v26 + 12) = 2080;
      v37 = UUID.uuidString.getter();
      v39 = v38;
      outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v18);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, aBlock);

      *(v26 + 14) = v40;
      v41 = v84;
      _os_log_impl(&_mh_execute_header, v84, v85, "[MOSuggestionAssetPhotoLivePhotoVideosProvider] executing task request, assetID=%s, uuid=%s", v26, 0x16u);
      v24 = v86;
      swift_arrayDestroy();
    }

    else
    {

      outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v18);
      outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v20);
    }

    v62 = aBlock;
    v63 = v2;
    v64 = (*(*v2 + 152))(aBlock);
    if (!__OFADD__(*v65, 1))
    {
      ++*v65;
      v64(aBlock, 0);
      v66 = *(v2 + 2);
      isa_low = SLODWORD(v89[3].isa);
      v68 = *(a1 + SHIDWORD(v89[2].isa));
      v69 = *(a1 + isa_low);
      v70 = *(a1 + isa_low + 8);
      v71 = *(a1 + SHIDWORD(v89[3].isa));
      v72 = a1;
      v73 = swift_allocObject();
      swift_weakInit();
      v74 = v72;
      v75 = v87;
      outlined init with copy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v74, v87);
      v76 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v77 = swift_allocObject();
      *(v77 + 16) = v73;
      outlined init with take of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v75, v77 + v76);
      aBlock[4] = partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:);
      aBlock[5] = v77;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIImage?, @guaranteed [AnyHashable : Any]?) -> ();
      aBlock[3] = &block_descriptor_42_0;
      v78 = _Block_copy(aBlock);
      v79 = v21;

      [v66 requestLivePhotoForAsset:v68 targetSize:v71 contentMode:v79 options:v78 resultHandler:{v69, v70}];

      _Block_release(v78);
      goto LABEL_20;
    }

    __break(1u);
  }

  v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
  *v18 = v63;
LABEL_17:
  v83 = *(v63 + 2);
  v82 = *(v63 + 3);
  if (v83 >= v82 >> 1)
  {
    v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v63);
    *v18 = v63;
  }

  *(v63 + 2) = v83 + 1;
  outlined init with take of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v62, v63 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + a1[9] * v83);
  (v24)(aBlock, 0);
LABEL_20:
}

void closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(0);
    (*(a4 + *(v8 + 36)))(a1);
    v9 = *(v7 + 24);
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #1 in closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:);
    *(v10 + 24) = v7;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_89;
    v11 = _Block_copy(aBlock);

    dispatch_sync(v9, v11);

    _Block_release(v11);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }
}

void closure #1 in closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = __chkstk_darwin(v6);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService026MOSuggestionAssetPhotoLiveE14VideosProviderC0fE4TaskVSgMd, &_s16MomentsUIService026MOSuggestionAssetPhotoLiveE14VideosProviderC0fE4TaskVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = v41 - v11;
  v13 = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v44 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = v41 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v41 - v21;
  v23 = (*(*a1 + 112))(v20);
  if (*(v23 + 16))
  {
    v42 = v3;
    v43 = v2;
    v24 = *(v14 + 80);
    v25 = (v24 + 32) & ~v24;
    outlined init with copy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v23 + v25, v19);

    v52 = v22;
    outlined init with take of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v19, v22);
    v26 = (*(*a1 + 128))(aBlock);
    if (*(*v27 + 16))
    {
      v28 = v26;
      v29 = v27;
      outlined init with copy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(*v27 + v25, v12);
      (*(v14 + 56))(v12, 0, 1, v13);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v12, &_s16MomentsUIService026MOSuggestionAssetPhotoLiveE14VideosProviderC0fE4TaskVSgMd, &_s16MomentsUIService026MOSuggestionAssetPhotoLiveE14VideosProviderC0fE4TaskVSgMR);
      if (*(*v29 + 16))
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, 1);
        v28(aBlock, 0);
        v41[1] = a1[3];
        v30 = v45;
        static DispatchTime.now()();
        + infix(_:_:)();
        v31 = v47;
        v46 = *(v46 + 8);
        (v46)(v30, v47);
        v32 = v44;
        outlined init with copy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v52, v44);
        v33 = swift_allocObject();
        *(v33 + 16) = a1;
        outlined init with take of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v32, v33 + ((v24 + 24) & ~v24));
        aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:);
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_95;
        v34 = _Block_copy(aBlock);

        v35 = v48;
        static DispatchQoS.unspecified.getter();
        v54 = _swiftEmptyArrayStorage;
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v36 = v50;
        v37 = v43;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v38 = v53;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v34);
        (*(v42 + 8))(v36, v37);
        (*(v49 + 8))(v35, v51);
        (v46)(v38, v31);
        outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(v52);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  v39 = (*(*a1 + 152))(aBlock);
  if (__OFSUB__(*v40, 1))
  {
LABEL_10:
    __break(1u);
    return;
  }

  --*v40;
  v39(aBlock, 0);
}

void (*closure #1 in closure #1 in closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:)(uint64_t a1, uint64_t a2))(_BYTE *, void)
{
  result = (*(*a1 + 152))(v6);
  if (__OFSUB__(*v5, 1))
  {
    __break(1u);
  }

  else
  {
    --*v5;
    result(v6, 0);
    return (*(*a1 + 224))(a2);
  }

  return result;
}

void MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchVideos(_:oneUpIntent:completion:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = _swiftEmptyArrayStorage;
  v20 = [objc_allocWithZone(PHVideoRequestOptions) init];
  [v20 setNetworkAccessAllowed:1];
  if (a2)
  {
    [v20 setDownloadIntent:3];
  }

  if (!(a1 >> 62))
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_13:

LABEL_14:

    return;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v10 >= 1)
  {
    v11 = 0;
    v18 = *(v4 + 16);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = v9;
      v14[4] = v8;
      v14[5] = a1;
      v14[6] = a3;
      v14[7] = a4;
      aBlock[4] = partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchVideos(_:oneUpIntent:completion:);
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed AVAsset?, @guaranteed AVAudioMix?, @guaranteed [AnyHashable : Any]?) -> ();
      aBlock[3] = &block_descriptor_50;
      v15 = _Block_copy(aBlock);
      v16 = v20;
      v17 = v13;

      [v18 requestAVAssetForVideo:v17 options:v16 resultHandler:v15];
      _Block_release(v15);
    }

    while (v10 != v11);

    goto LABEL_14;
  }

  __break(1u);
}

void closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchVideos(_:oneUpIntent:completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, void (*a8)(uint64_t))
{
  if (a1)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = a1;
      v17 = [v15 URL];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      v19 = MOSuggestionAssetsTypeVideo;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSURL, NSURL_ptr);
      v20 = [objc_allocWithZone(MOSuggestionAsset) init:v18 type:v19 contentClassType:swift_getObjCClassFromMetadata()];

      v21 = specialized static MOSuggestionAssetPhotoLivePhotoVideosProvider.packedImageMetadata(from:)(a4);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v20 addMetadata:isa];

      swift_beginAccess();
      v23 = v20;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v24 = *(a6 + 16);
  v25 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
  }

  else
  {
    *(a6 + 16) = v25;
    if (!(a7 >> 62))
    {
      if (v25 != *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_10;
    }
  }

  if (v25 == _CocoaArrayWrapper.endIndex.getter())
  {
LABEL_10:
    swift_beginAccess();

    v26 = specialized _arrayConditionalCast<A, B>(_:)();

    a8(v26);
  }
}

double MOSuggestionAssetPhotoLivePhotoVideosProvider.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t MOSuggestionAssetPhotoLivePhotoVideosProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  MOSuggestionAssetPhotoLivePhotoVideosProvider.init()();
  return v0;
}

void *MOSuggestionAssetPhotoLivePhotoVideosProvider.init()()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v0[2] = [objc_allocWithZone(PHCachingImageManager) init];
  v6 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v8[0] = "com.apple.Moments.MOUsageData";
  v8[1] = v6;
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  v0[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[4] = _swiftEmptyArrayStorage;
  v0[5] = 0;
  return v0;
}

void static MOSuggestionAssetPhotoLivePhotoVideosProvider.getLivePhotoFromComponentsURL(baseURL:assetIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = [objc_allocWithZone(NSFileCoordinator) init];
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v14 = swift_allocObject();
  v14[2] = partial apply for closure #1 in static MOSuggestionAssetPhotoLivePhotoVideosProvider.getLivePhotoFromComponentsURL(baseURL:assetIdentifier:completion:);
  v14[3] = v13;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> ();
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  aBlock[3] = &block_descriptor_59;
  v15 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v9 coordinateReadingItemAtURL:v12 options:0 error:aBlock byAccessor:v15];
  _Block_release(v15);

  v16 = aBlock[0];
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (!v16)
  {

    goto LABEL_8;
  }

  if (one-time initialization token for assets != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static MOAngelLogger.assets);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v21 = 136315138;
    v22 = [v18 localizedDescription];
    v29 = a4;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v9;
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, aBlock);
    v9 = v24;

    *(v21 + 4) = v27;
    a4 = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "[MOSuggestionAssetPhotoLivePhotoVideosProvider] Failed to retrieve URL for Live Photo %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  a4(0);

LABEL_8:
}

void closure #1 in static MOSuggestionAssetPhotoLivePhotoVideosProvider.getLivePhotoFromComponentsURL(baseURL:assetIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v61 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = v58 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v69 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v58 - v14;
  v16 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  aBlock = 0;
  v20 = [v16 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:0 options:0 error:&aBlock];

  v21 = aBlock;
  if (v20)
  {
    v60 = a3;
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v21;

    v24 = *(v22 + 16);
    if (v24)
    {
      v67 = v9;
      v59 = a5;
      v26 = *(v11 + 16);
      v25 = v11 + 16;
      v70 = v26;
      v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
      v58[1] = v22;
      v64 = v27;
      v28 = v22 + v27;
      v29 = *(v25 + 56);
      v65 = (v25 - 8);
      v71 = v25;
      v63 = (v25 + 16);
      v30 = _swiftEmptyArrayStorage;
      v68 = v10;
      v66 = v29;
      do
      {
        v72 = v24;
        v73 = v30;
        v70(v15, v28, v10);
        aBlock = URL.pathExtension.getter();
        v77 = v32;
        v74 = 5656397;
        v75 = 0xE300000000000000;
        v33 = type metadata accessor for Locale();
        v34 = *(*(v33 - 8) + 56);
        v34(v9, 1, 1, v33);
        lazy protocol witness table accessor for type String and conformance String();
        v35 = StringProtocol.compare<A>(_:options:range:locale:)();
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

        if (v35 && (aBlock = URL.pathExtension.getter(), v77 = v36, v74 = 1128875336, v75 = 0xE400000000000000, v34(v9, 1, 1, v33), v37 = StringProtocol.compare<A>(_:options:range:locale:)(), outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR), , v37))
        {
          v10 = v68;
          (*v65)(v15, v68);
          v30 = v73;
          v31 = v66;
        }

        else
        {
          v10 = v68;
          v70(v69, v15, v68);
          v30 = v73;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
          }

          v39 = *(v30 + 2);
          v38 = *(v30 + 3);
          if (v39 >= v38 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v30);
          }

          (*v65)(v15, v10);
          *(v30 + 2) = v39 + 1;
          v40 = v30 + v64 + v39 * v66;
          v31 = v66;
          (*v63)(v40, v69, v10);
        }

        v28 += v31;
        v24 = v72 - 1;
      }

      while (v72 != 1);

      a5 = v59;
    }

    else
    {
    }

    a3 = v60;
  }

  else
  {
    v41 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static MOAngelLogger.assets);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = a3;
      v47 = a5;
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v45 = 136315138;
      swift_getErrorValue();
      v49 = Error.localizedDescription.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &aBlock);

      *(v45 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      a5 = v47;
      a3 = v46;
    }

    else
    {
    }
  }

  v52 = v62;
  v53 = v61;
  v54 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v56 = swift_allocObject();
  v56[2] = v53;
  v56[3] = a3;
  v56[4] = v52;
  v56[5] = a5;
  v80 = partial apply for closure #1 in closure #1 in static MOSuggestionAssetPhotoLivePhotoVideosProvider.getLivePhotoFromComponentsURL(baseURL:assetIdentifier:completion:);
  v81 = v56;
  aBlock = _NSConcreteStackBlock;
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed (@guaranteed PHLivePhoto?, @guaranteed [AnyHashable : Any]) -> ();
  v79 = &block_descriptor_83_0;
  v57 = _Block_copy(&aBlock);

  [v54 requestLivePhotoWithResourceFileURLs:isa placeholderImage:0 targetSize:0 contentMode:v57 resultHandler:{0.0, 0.0}];
  _Block_release(v57);
}

void closure #1 in closure #1 in static MOSuggestionAssetPhotoLivePhotoVideosProvider.getLivePhotoFromComponentsURL(baseURL:assetIdentifier:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  if (a1)
  {
    v7 = MOSuggestionAssetsTypeLivePhoto;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PHLivePhoto, PHLivePhoto_ptr);
    v8 = objc_allocWithZone(MOSuggestionAsset);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = a1;
    v11 = [v8 init:v10 type:v7 contentClassType:ObjCClassFromMetadata];
    v12 = String._bridgeToObjectiveC()();
    [v11 addIdentifier:v12];

    v13 = v11;
    a5(v11);
  }

  else
  {
    (a5)(0, a2, a3, a4);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

void static MOSuggestionAssetPhotoLivePhotoVideosProvider.normalizedSquareCrop(normalizedCropRect:imageBounds:)()
{
  specialized static MOSuggestionAssetPhotoLivePhotoVideosProvider.squareCrop(normalizedCropRect:imageBounds:)();
  x = v5.origin.x;
  y = v5.origin.y;
  width = v5.size.width;
  height = v5.size.height;
  CGRectGetWidth(v5);
  v6.origin.x = x;
  v6.origin.y = y;
  v6.size.width = width;
  v6.size.height = height;
  CGRectGetHeight(v6);

  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &type metadata accessor for Asset);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for MOSuggestionCollectionViewCellViewModel);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        type metadata accessor for UIApplication(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized static MOSuggestionAssetPhotoLivePhotoVideosProvider.assetTypeFromIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(PHFetchOptions) init];
  [v4 setIncludeGuestAssets:1];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002A48B0;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v5 fetchAssetsWithLocalIdentifiers:isa options:v4];

  v9 = [v8 fetchedObjects];
  if (!v9)
  {

    return 3;
  }

  v10 = v9;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PHAsset, PHAsset_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_14:

    return 3;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);
LABEL_7:
    v14 = v13;

    v15 = [v14 mediaType];
    if (v15 == 1)
    {
      v16 = [v14 mediaSubtypes];

      return (v16 >> 3) & 1;
    }

    if (v15 == 2)
    {

      return 2;
    }

    return 3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10010C050()
{

  return _swift_deallocObject(v0, 56, 7);
}

void *specialized static MOSuggestionAssetPhotoLivePhotoVideosProvider.packedImageMetadata(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v68 = &v67 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v67 - v12;
  v14 = &_swiftEmptyDictionarySingleton;
  v73 = &_swiftEmptyDictionarySingleton;
  v15 = [a1 creationDate];
  v67 = v5;
  if (v15)
  {
    v16 = v15;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 32))(v13, v11, v7);
    v17 = MOSuggestionAssetMetadataKeyPhotoMomentDate;
    v72 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v71);
    (*(v8 + 16))(boxed_opaque_existential_1, v13, v7);
    outlined init with take of Any(&v71, v70);
    v19 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v17, isUniquelyReferenced_nonNull_native);
    (*(v8 + 8))(v13, v7);
    v14 = v69;
  }

  v21 = MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect;
  v22 = objc_opt_self();
  [v22 preferredContentsRectForAsset:a1 targetSize:{200.0, 200.0}];
  v27 = [objc_allocWithZone(MOSuggestionAssetPhotoCropRect) initWithCGRect:{v23, v24, v25, v26}];
  v28 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetPhotoCropRect, MOSuggestionAssetPhotoCropRect_ptr);
  v72 = v28;
  *&v71 = v27;
  outlined init with take of Any(&v71, v70);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v14;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v21, v29);
  v30 = v69;
  v31 = MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect;
  [v22 preferredContentsRectForAsset:a1 targetSize:{200.0, 98.0}];
  v36 = [objc_allocWithZone(MOSuggestionAssetPhotoCropRect) initWithCGRect:{v32, v33, v34, v35}];
  v72 = v28;
  *&v71 = v36;
  outlined init with take of Any(&v71, v70);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v30;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v31, v37);
  v38 = v69;
  v39 = MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect;
  [v22 preferredContentsRectForAsset:a1 targetSize:{98.0, 200.0}];
  v44 = [objc_allocWithZone(MOSuggestionAssetPhotoCropRect) initWithCGRect:{v40, v41, v42, v43}];
  v72 = v28;
  *&v71 = v44;
  outlined init with take of Any(&v71, v70);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v38;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v39, v45);
  v46 = v69;
  v47 = MOSuggestionAssetMetadataKeyPhotoLocalIdentifier;
  v48 = [a1 localIdentifier];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v72 = &type metadata for String;
  *&v71 = v49;
  *(&v71 + 1) = v51;
  outlined init with take of Any(&v71, v70);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v46;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v47, v52);
  v73 = v69;
  v53 = MOSuggestionAssetMetadataKeyPhotoTakenDate;
  v54 = [a1 creationDate];
  if (v54)
  {
    v55 = v67;
    v56 = v54;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = 0;
  }

  else
  {
    v57 = 1;
    v55 = v67;
  }

  (*(v8 + 56))(v55, v57, 1, v7);
  v58 = v68;
  outlined init with take of Date?(v55, v68);
  if ((*(v8 + 48))(v58, 1, v7) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(&v71);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v71, &_sypSgMd, &_sypSgMR);
    v59 = v73;
  }

  else
  {
    v72 = v7;
    v60 = __swift_allocate_boxed_opaque_existential_1(&v71);
    (*(v8 + 32))(v60, v58, v7);
    outlined init with take of Any(&v71, v70);
    v61 = v73;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v53, v62);

    v59 = v69;
  }

  v63 = MOSuggestionAssetMetadataKeyVideoDuration;
  [a1 duration];
  v72 = &type metadata for Double;
  *&v71 = v64;
  outlined init with take of Any(&v71, v70);
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v59;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v63, v65);
  return v69;
}

uint64_t sub_10010C71C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010C770()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010C7F0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchURLAsset(_:assetType:completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.fetchURLAsset(_:assetType:completion:)(a1, v8, v9, (v1 + v4), v10, v11, v12, v13);
}

uint64_t outlined destroy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010CAF0(__n128 a1)
{
  swift_weakDestroy();

  return _swift_deallocObject(v1, 24, 7);
}

void partial apply for closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:)(a1, a2, v6, v7);
}

uint64_t objectdestroy_13Tm()
{

  return _swift_deallocObject(v0, 64, 7);
}

void specialized static MOSuggestionAssetPhotoLivePhotoVideosProvider.squareCrop(normalizedCropRect:imageBounds:)()
{
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  CGRectGetHeight(v8);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectGetWidth(v9);
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static MOAngelLogger.assets);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218752;
    *(v7 + 4) = x;
    *(v7 + 12) = 2048;
    *(v7 + 14) = y;
    *(v7 + 22) = 2048;
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    *(v7 + 24) = CGRectGetWidth(v10);
    *(v7 + 32) = 2048;
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    *(v7 + 34) = CGRectGetHeight(v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Cropping to %f, %f, %f, %f", v7, 0x2Au);
  }

  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetPhotoLivePhotoVideosType and conformance MOSuggestionAssetPhotoLivePhotoVideosType()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetPhotoLivePhotoVideosType and conformance MOSuggestionAssetPhotoLivePhotoVideosType;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetPhotoLivePhotoVideosType and conformance MOSuggestionAssetPhotoLivePhotoVideosType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetPhotoLivePhotoVideosType and conformance MOSuggestionAssetPhotoLivePhotoVideosType);
  }

  return result;
}

uint64_t sub_10010CEB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_10010CF00(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 120);

  return v2(v3);
}

uint64_t sub_10010CF54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_10010D030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_10010D100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

void type metadata completion function for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIApplication(319, &lazy cache variable for type metadata for PHAsset, PHAsset_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PHImageContentMode(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ()();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PHLivePhoto?) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t objectdestroy_52Tm()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_38Tm()
{
  v1 = (type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void (*partial apply for closure #1 in closure #1 in closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:)())(_BYTE *, void)
{
  v1 = *(type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in closure #1 in closure #1 in MOSuggestionAssetPhotoLivePhotoVideosProvider.executeLivePhotoTask(_:)(v2, v3);
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

CGFloat one-time initialization function for GridWidth()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetWidth(v10) + -8.0 + -4.0;
  static MOSuggestionSheetGridManager.GridWidth = *&result;
  return result;
}

uint64_t *MOSuggestionSheetGridManager.GridWidth.unsafeMutableAddressor()
{
  if (one-time initialization token for GridWidth != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetGridManager.GridWidth;
}

double static MOSuggestionSheetGridManager.GridWidth.getter()
{
  if (one-time initialization token for GridWidth != -1)
  {
    swift_once();
  }

  return *&static MOSuggestionSheetGridManager.GridWidth;
}

uint64_t MOSuggestionSheetGridManager.AssetSizeType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656772616CLL;
  v2 = 0x6C6C616D73;
  v3 = 0x616D536172747865;
  if (a1 != 4)
  {
    v3 = 0x657263536C6C7566;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x69576D756964656DLL;
  if (a1 != 1)
  {
    v4 = 0x6D756964656DLL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOSuggestionSheetGridManager.AssetSizeType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = 0xE500000000000000;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  v7 = 0x616D536172747865;
  v8 = 0xEA00000000006E65;
  if (v2 == 4)
  {
    v8 = 0xEA00000000006C6CLL;
  }

  else
  {
    v7 = 0x657263536C6C7566;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x69576D756964656DLL;
  v10 = 0xEA00000000006564;
  if (v2 != 1)
  {
    v9 = 0x6D756964656DLL;
    v10 = 0xE600000000000000;
  }

  if (*a1)
  {
    v4 = v10;
  }

  else
  {
    v9 = 0x656772616CLL;
  }

  if (*a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (*a2 > 2u)
  {
    if (v3 == 3)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6C6C616D73)
      {
        goto LABEL_35;
      }
    }

    else if (v3 == 4)
    {
      v13 = 0xEA00000000006C6CLL;
      if (v11 != 0x616D536172747865)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v13 = 0xEA00000000006E65;
      if (v11 != 0x657263536C6C7566)
      {
LABEL_35:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_36;
      }
    }
  }

  else if (*a2)
  {
    if (v3 == 1)
    {
      v13 = 0xEA00000000006564;
      if (v11 != 0x69576D756964656DLL)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6D756964656DLL)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x656772616CLL)
    {
      goto LABEL_35;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_35;
  }

  v14 = 1;
LABEL_36:

  return v14 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionSheetGridManager.AssetSizeType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance MOSuggestionSheetGridManager.AssetSizeType(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionSheetGridManager.AssetSizeType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionSheetGridManager.AssetSizeType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MOSuggestionSheetGridManager.AssetSizeType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MOSuggestionSheetGridManager.AssetSizeType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656772616CLL;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  v7 = 0x616D536172747865;
  v8 = 0xEA00000000006E65;
  if (v2 == 4)
  {
    v8 = 0xEA00000000006C6CLL;
  }

  else
  {
    v7 = 0x657263536C6C7566;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x69576D756964656DLL;
  v10 = 0xEA00000000006564;
  if (v2 != 1)
  {
    v9 = 0x6D756964656DLL;
    v10 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t specialized static MOSuggestionSheetGridManager.getSizeType(for:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  if (one-time initialization token for GridWidth != -1)
  {
    swift_once();
  }

  if (*&static MOSuggestionSheetGridManager.GridWidth * 0.5 >= Width)
  {
    v10 = *&static MOSuggestionSheetGridManager.GridWidth * 0.25;
    if (Width < *&static MOSuggestionSheetGridManager.GridWidth * 0.5 && v10 < Width)
    {
      v13.origin.x = a1;
      v13.origin.y = a2;
      v13.size.width = a3;
      v13.size.height = a4;
      return 2 * (CGRectGetHeight(v13) < v10);
    }

    else if (Width >= *&static MOSuggestionSheetGridManager.GridWidth / 5.0)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    if (Width == CGRectGetHeight(v12))
    {
      return 5;
    }

    else
    {
      return 1;
    }
  }
}

unint64_t specialized MOSuggestionSheetGridManager.AssetSizeType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MOSuggestionSheetGridManager.AssetSizeType.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type MOSuggestionSheetGridManager.AssetSizeType and conformance MOSuggestionSheetGridManager.AssetSizeType()
{
  result = lazy protocol witness table cache variable for type MOSuggestionSheetGridManager.AssetSizeType and conformance MOSuggestionSheetGridManager.AssetSizeType;
  if (!lazy protocol witness table cache variable for type MOSuggestionSheetGridManager.AssetSizeType and conformance MOSuggestionSheetGridManager.AssetSizeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionSheetGridManager.AssetSizeType and conformance MOSuggestionSheetGridManager.AssetSizeType);
  }

  return result;
}

uint64_t *MOSuggestionAssetWorkoutProvider.queue.unsafeMutableAddressor()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAssetWorkoutProvider.queue;
}

id static MOSuggestionAssetWorkoutProvider.queue.getter()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v1 = static MOSuggestionAssetWorkoutProvider.queue;

  return v1;
}

id one-time initialization function for sharedHealthStore()
{
  result = [objc_allocWithZone(HKHealthStore) init];
  static MOSuggestionAssetWorkoutProvider.sharedHealthStore = result;
  return result;
}

void MOSuggestionAssetWorkoutProvider.getWorkout(workoutUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [v7 predicateForObjectWithUUID:isa];

  v10 = [objc_opt_self() workoutType];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = objc_allocWithZone(HKSampleQuery);
  v15[4] = partial apply for closure #1 in MOSuggestionAssetWorkoutProvider.getWorkout(workoutUUID:completion:);
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  v15[3] = &block_descriptor_20;
  v13 = _Block_copy(v15);

  v14 = [v12 initWithSampleType:v10 predicate:v9 limit:1 sortDescriptors:0 resultsHandler:v13];

  _Block_release(v13);

  [*(v4 + 24) executeQuery:v14];
}

void closure #1 in MOSuggestionAssetWorkoutProvider.getWorkout(workoutUUID:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v7 = a2;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v7;
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    (a4)(0);
    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(a2 + 32);
  }

  v9 = v6;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_12;
  }

  a4();
}

uint64_t sub_10010E530()
{

  return _swift_deallocObject(v0, 32, 7);
}

double MOSuggestionAssetWorkoutProvider.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t MOSuggestionAssetWorkoutProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = -1;
  *(v0 + 24) = [objc_allocWithZone(HKHealthStore) init];
  return v0;
}

uint64_t MOSuggestionAssetWorkoutProvider.init()()
{
  *(v0 + 16) = -1;
  *(v0 + 24) = [objc_allocWithZone(HKHealthStore) init];
  return v0;
}

uint64_t static MOSuggestionAssetWorkoutProvider.localizedDistanceUsingPreferredUnit(meters:workoutType:)(uint64_t a1, double a2)
{
  if (one-time initialization token for sharedHealthStore != -1)
  {
    swift_once();
  }

  v4 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore:static MOSuggestionAssetWorkoutProvider.sharedHealthStore];
  v5 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager:v4];

  if (v5)
  {
    v6 = [objc_allocWithZone(FIUIWorkoutActivityType) initWithActivityTypeIdentifier:a1 isIndoor:0];
    v7 = FIUIDistanceTypeForActivityType();

    v8 = [v5 localizedStringWithDistanceInMeters:v7 distanceType:3 unitStyle:a2];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v10;
    }
  }

  return 0;
}

HKQuantityType_optional __swiftcall HKWorkout.distanceQuantityTypeForWorkoutType()()
{
  v2 = [v0 workoutActivityType];
  isa = 0;
  v4 = &HKQuantityTypeIdentifierDistanceWalkingRunning;
  if (v2 > 45)
  {
    v5 = v2 - 60;
    if ((v2 - 60) <= 0xE)
    {
      if (((1 << v5) & 0x83) != 0)
      {
LABEL_12:
        v4 = &HKQuantityTypeIdentifierDistanceDownhillSnowSports;
        goto LABEL_18;
      }

      if (((1 << v5) & 0xC00) != 0)
      {
        v4 = &HKQuantityTypeIdentifierDistanceWheelchair;
        goto LABEL_18;
      }

      if (v2 == 74)
      {
LABEL_14:
        v4 = &HKQuantityTypeIdentifierDistanceCycling;
        goto LABEL_18;
      }
    }

    if (v2 == 52)
    {
      goto LABEL_18;
    }

    if (v2 == 46)
    {
      v4 = &HKQuantityTypeIdentifierDistanceSwimming;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v2 <= 36)
  {
    if (v2 != 13)
    {
      if (v2 != 24)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v2 == 37)
  {
LABEL_18:
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantityType, HKQuantityType_ptr);
    isa = HKQuantityType.init(_:)(*v4).super.super.super.isa;
    goto LABEL_19;
  }

  if (v2 == 40)
  {
    goto LABEL_12;
  }

LABEL_19:
  result.value.super.super.super.isa = isa;
  result.is_nil = v1;
  return result;
}

double HKWorkout.packedSuggestionAssetMetadata(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v16[1] = static MOSuggestionAssetWorkoutProvider.queue;
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = partial apply for closure #1 in HKWorkout.packedSuggestionAssetMetadata(completion:);
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_6_0;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);

  return result;
}

void HKWorkout._packedSuggestionAssetMetadata(completion:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;
  v5 = MOSuggestionAssetMetadataKeyWorkoutWorkoutStartTime;
  v6 = [v3 startDate];
  v7 = type metadata accessor for Date();
  v80 = v7;
  __swift_allocate_boxed_opaque_existential_1(&aBlock);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Dictionary.subscript.setter(&aBlock, v5);
  v8 = MOSuggestionAssetMetadataKeyWorkoutWorkoutEndTime;
  v9 = [v3 endDate];
  v80 = v7;
  __swift_allocate_boxed_opaque_existential_1(&aBlock);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Dictionary.subscript.setter(&aBlock, v8);
  v10 = MOSuggestionAssetMetadataKeyWorkoutDuration;
  [v3 duration];
  v80 = &type metadata for Double;
  aBlock = v11;
  specialized Dictionary.subscript.setter(&aBlock, v10);
  v12 = MOSuggestionAssetMetadataKeyWorkoutType;
  [v3 workoutActivityType];
  [v3 fi_swimmingLocationType];
  _HKWorkoutIsIndoor(v3);
  v13 = FILocalizedNameForActivityType();
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = &type metadata for String;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v79 = 0;
  }

  aBlock = v15;
  v78 = v17;
  v80 = v18;
  specialized Dictionary.subscript.setter(&aBlock, v12);
  v19 = MOSuggestionAssetMetadataKeyWorkoutHKType;
  v20 = [v3 workoutActivityType];
  v80 = &type metadata for UInt;
  aBlock = v20;
  specialized Dictionary.subscript.setter(&aBlock, v19);
  v21 = [v3 metadata];
  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = v21;
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v23 + 16))
  {

    goto LABEL_10;
  }

  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  outlined init with copy of Any(*(v23 + 56) + 32 * v26, &aBlock);

  if (swift_dynamicCast())
  {
    v80 = &type metadata for Bool;
    LOBYTE(aBlock) = v83;
    specialized Dictionary.subscript.setter(&aBlock, MOSuggestionAssetMetadataKeyWorkoutIsIndoors);
  }

LABEL_11:
  v29 = v4;
  if (one-time initialization token for sharedHealthStore != -1)
  {
    swift_once();
  }

  v30 = static MOSuggestionAssetWorkoutProvider.sharedHealthStore;
  v31 = [objc_allocWithZone(HKQuantityType) initWithIdentifier:HKQuantityTypeIdentifierHeartRate];
  v32 = [objc_allocWithZone(HKQuantityType) initWithIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
  v33 = HKWorkout.distanceQuantityTypeForWorkoutType()();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = (v34 + 16);
  v36 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore:v30];
  v37 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager:v36];

  v74 = v37;
  if (!v37)
  {

    a1(v53);

LABEL_29:

    return;
  }

  v73 = v33;
  v38 = swift_allocObject();
  v39 = v31;
  v40 = v38;
  v38[2] = v34;
  v38[3] = 2;
  v38[4] = a1;
  v38[5] = a2;
  v38[6] = v29;
  v71 = v30;
  v72 = v39;
  v69 = v32;
  v70 = v29;
  if (v39 && v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v41 = v29;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A6160;
    *(inited + 32) = v72;
    *(inited + 40) = v32;
    v43 = v72;
    v44 = v32;
    v45 = v43;
    v67 = v44;

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo14HKQuantityTypeC_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantityType, HKQuantityType_ptr);
    lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v46 = swift_allocObject();
    v46[2] = v73;
    v46[3] = v45;
    v46[4] = v3;
    v46[5] = v41;
    v46[6] = v74;
    v46[7] = v67;
    v46[8] = partial apply for closure #1 in HKWorkout._packedSuggestionAssetMetadata(completion:);
    v46[9] = v40;
    v81 = partial apply for closure #2 in HKWorkout._packedSuggestionAssetMetadata(completion:);
    v82 = v46;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [HKQuantityType : HKUnit], @guaranteed Error?) -> ();
    v80 = &block_descriptor_30;
    v47 = _Block_copy(&aBlock);
    v48 = v73;
    v49 = v3;
    v50 = v74;

    v51 = v45;
    v52 = v67;

    [v71 preferredUnitsForQuantityTypes:isa completion:v47];
    _Block_release(v47);
  }

  else
  {
    swift_beginAccess();
    v54 = *v35 + 1;
    if (__OFADD__(*v35, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    *v35 = v54;
    if (v54 == 2)
    {
      swift_beginAccess();

      a1(v55);
    }

    else
    {
    }
  }

  v56 = HKWorkout.distanceQuantityTypeForWorkoutType()();
  if (v56)
  {
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_1002A4A70;
    *(v58 + 32) = v57;
    v59 = v57;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo14HKQuantityTypeC_Tt0g5Tf4g_n(v58);
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantityType, HKQuantityType_ptr);
    lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    v33 = Set._bridgeToObjectiveC()().super.isa;

    v60 = swift_allocObject();
    v60[2] = v59;
    v60[3] = v3;
    v60[4] = v70;
    v60[5] = v74;
    v60[6] = partial apply for closure #1 in HKWorkout._packedSuggestionAssetMetadata(completion:);
    v60[7] = v40;
    v81 = partial apply for closure #3 in HKWorkout._packedSuggestionAssetMetadata(completion:);
    v82 = v60;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [HKQuantityType : HKUnit], @guaranteed Error?) -> ();
    v80 = &block_descriptor_24;
    v61 = _Block_copy(&aBlock);

    v62 = v3;
    v63 = v74;

    v64 = v59;

    [v71 preferredUnitsForQuantityTypes:v33 completion:v61];

    _Block_release(v61);

    goto LABEL_29;
  }

  swift_beginAccess();
  v65 = *v35 + 1;
  if (!__OFADD__(*v35, 1))
  {
    *v35 = v65;
    v33 = v73;
    if (v65 == 2)
    {
      swift_beginAccess();

      a1(v66);
    }

    else
    {
    }

    goto LABEL_29;
  }

LABEL_31:
  __break(1u);
}

void closure #1 in HKWorkout._packedSuggestionAssetMetadata(completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v10;
    if (v10 == a2)
    {
      swift_beginAccess();

      a3(v11);
    }
  }
}

double closure #2 in HKWorkout._packedSuggestionAssetMetadata(completion:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v37 = a8;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v35 = static MOSuggestionAssetWorkoutProvider.queue;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a1;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = a7;
  v32 = a7;
  v21 = v37;
  v20[9] = v37;
  v20[10] = a9;
  v20[11] = a10;
  aBlock[4] = partial apply for closure #1 in closure #2 in HKWorkout._packedSuggestionAssetMetadata(completion:);
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_36_1;
  v22 = _Block_copy(aBlock);
  swift_errorRetain();
  v23 = a3;

  v24 = a4;
  v25 = a5;

  v26 = v32;
  v27 = v21;

  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v29 = v33;
  v28 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v39 + 8))(v29, v28);
  (*(v36 + 8))(v19, v38);

  return result;
}

id closure #1 in closure #2 in HKWorkout._packedSuggestionAssetMetadata(completion:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t (*a9)(void))
{
  v10 = a6;
  v11 = a5;
  v13 = a3;
  if (a1)
  {
    swift_errorRetain();
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static MOAngelLogger.assets);
    swift_errorRetain();
    v18 = a2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v96 = a8;
      v21 = swift_slowAlloc();
      v103._countAndFlagsBits = swift_slowAlloc();
      *v21 = 136315394;
      v102[1] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14HKQuantityTypeCSgMd, &_sSo14HKQuantityTypeCSgMR);
      v22 = Optional.debugDescription.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v103._countAndFlagsBits);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v103._countAndFlagsBits);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "[HKWorkout] Failed to fetch HK preferred units for %s error=%s", v21, 0x16u);
      swift_arrayDestroy();

      a8 = v96;
    }

    else
    {
    }

    v10 = a6;
    v11 = a5;
    v13 = a3;
  }

  v28 = specialized Dictionary.subscript.getter(a4, v13);
  if (!v28)
  {
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v11 statisticsForType:a4];
  if (!v30 || (v31 = v30, v32 = [v30 averageQuantity], v31, !v32))
  {
LABEL_16:

    goto LABEL_17;
  }

  [v32 doubleValueForUnit:v29];
  if (v33 <= 0.0)
  {

    goto LABEL_16;
  }

  v97 = a8;
  v34 = MOSuggestionAssetMetadataKeyWorkoutAverageHeartRate;
  [v32 doubleValueForUnit:v29];
  *(&v104 + 1) = &type metadata for Double;
  v103._countAndFlagsBits = v35;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v103, v34);
  v36 = MOSuggestionAssetMetadataKeyWorkoutAverageHeartRateQuantity;
  *(&v104 + 1) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantity, HKQuantity_ptr);
  v103._countAndFlagsBits = v32;
  v37 = v36;
  v38 = v32;
  specialized Dictionary.subscript.setter(&v103, v37);
  swift_endAccess();
  v39 = MOSuggestionAssetMetadataKeyWorkoutAverageHeartRateWithUnit;
  result = [a7 localizedStringWithHeartRate:v38 unitStyle:1];
  if (!result)
  {
    __break(1u);
    goto LABEL_46;
  }

  v41 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.uppercased()();

  v42 = String._bridgeToObjectiveC()();

  v43 = [v42 trimmedString];

  if (v43)
  {
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = &type metadata for String;
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v47 = 0;
    *&v104 = 0;
  }

  a8 = v97;
  v95 = v38;
  v103._countAndFlagsBits = v44;
  v103._object = v46;
  *(&v104 + 1) = v47;
  swift_beginAccess();
  v94 = v39;
  specialized Dictionary.subscript.setter(&v103, v39);
  swift_endAccess();
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  __swift_project_value_buffer(v75, static MOAngelLogger.assets);

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v101 = v13;
    v78 = v11;
    v79 = v10;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v102[0] = v81;
    *v80 = 136315138;
    swift_beginAccess();
    v82 = v79;
    v83 = *(v79 + 16);
    if (*(v83 + 16) && (v84 = specialized __RawDictionaryStorage.find<A>(_:)(v94), (v85 & 1) != 0))
    {
      outlined init with copy of Any(*(v83 + 56) + 32 * v84, &v103);
    }

    else
    {
      v103 = 0;
      v104 = 0u;
    }

    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v86 = Optional.debugDescription.getter();
    v88 = v87;
    outlined destroy of Any?(&v103);
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v102);

    *(v80 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v76, v77, "[HKWorkout] heartrate: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);

    v10 = v82;
    a8 = v97;
    v11 = v78;
    v13 = v101;
  }

  else
  {
  }

LABEL_17:
  v48 = specialized Dictionary.subscript.getter(a8, v13);
  if (!v48)
  {
    return a9();
  }

  v49 = v48;
  v50 = [objc_allocWithZone(HKQuantityFormattingParameters) init];
  [v50 setPreferredUnit:v49];
  [v50 setPrecision:0];
  v51 = [v11 statisticsForType:a8];
  if (!v51 || (v52 = v51, v53 = [v51 sumQuantity], v52, !v53))
  {

    return a9();
  }

  [v53 doubleValueForUnit:v49];
  if (v54 <= 0.0)
  {

    return a9();
  }

  v55 = MOSuggestionAssetMetadataKeyWorkoutCaloriesBurnt;
  [v53 doubleValueForUnit:v49];
  *(&v104 + 1) = &type metadata for Double;
  v103._countAndFlagsBits = v56;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v103, v55);
  swift_endAccess();
  v57 = v49;
  [v53 doubleValueForUnit:v57];
  v59 = [objc_opt_self() quantityWithUnit:v57 doubleValue:floor(v58)];

  v60 = MOSuggestionAssetMetadataKeyWorkoutCaloriesBurntWithUnit;
  result = [a7 localizedStringWithActiveEnergy:v53 unitStyle:1];
  if (result)
  {
    v61 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = String.uppercased()();

    *(&v104 + 1) = &type metadata for String;
    v103 = v62;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v103, v60);
    v63 = MOSuggestionAssetMetadataKeyWorkoutCaloriesBurntQuantity;
    *(&v104 + 1) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantity, HKQuantity_ptr);
    v103._countAndFlagsBits = v59;
    v64 = v63;
    v65 = v59;
    specialized Dictionary.subscript.setter(&v103, v64);
    swift_endAccess();
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static MOAngelLogger.assets);

    v67 = Logger.logObject.getter();
    v68 = v10;
    v69 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v67, v69))
    {
      v100 = v65;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v102[0] = v71;
      *v70 = 136315138;
      swift_beginAccess();
      v72 = *(v68 + 16);
      if (*(v72 + 16) && (v73 = specialized __RawDictionaryStorage.find<A>(_:)(v60), (v74 & 1) != 0))
      {
        outlined init with copy of Any(*(v72 + 56) + 32 * v73, &v103);
      }

      else
      {
        v103 = 0;
        v104 = 0u;
      }

      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      v90 = Optional.debugDescription.getter();
      v92 = v91;
      outlined destroy of Any?(&v103);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v102);

      *(v70 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v67, v69, "[HKWorkout] calories: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
    }

    else
    {
    }

    return a9();
  }

LABEL_46:
  __break(1u);
  return result;
}

double closure #3 in HKWorkout._packedSuggestionAssetMetadata(completion:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v30 = *(v18 - 8);
  v31 = v18;
  __chkstk_darwin(v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v28 = static MOSuggestionAssetWorkoutProvider.queue;
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a1;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = a6;
  v21[8] = a7;
  v21[9] = a8;
  aBlock[4] = partial apply for closure #1 in closure #3 in HKWorkout._packedSuggestionAssetMetadata(completion:);
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_42_1;
  v22 = _Block_copy(aBlock);
  swift_errorRetain();
  v23 = a3;

  v24 = a4;

  v25 = a6;

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v26 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v32 + 8))(v17, v26);
  (*(v30 + 8))(v20, v31);

  return result;
}

id closure #1 in closure #3 in HKWorkout._packedSuggestionAssetMetadata(completion:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t (*a7)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static MOAngelLogger.assets);
    swift_errorRetain();
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v47._countAndFlagsBits = swift_slowAlloc();
      *v13 = 136315394;
      v14 = [v10 debugDescription];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v47._countAndFlagsBits);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v47._countAndFlagsBits);

      *(v13 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "[HKWorkout] Failed to fetch HK preferred units for %s error=%s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return a7();
  }

  v24 = specialized Dictionary.subscript.getter(a2, a3);
  if (!v24)
  {
    return a7();
  }

  v25 = v24;
  v26 = [objc_allocWithZone(HKQuantityFormattingParameters) init];
  [v26 setPreferredUnit:v25];
  [v26 setPrecision:2];
  v27 = [a4 statisticsForType:a2];
  if (!v27 || (v28 = v27, v29 = [v27 sumQuantity], v28, !v29))
  {

    return a7();
  }

  [v29 doubleValueForUnit:v25];
  if (v30 <= 0.0)
  {

    goto LABEL_15;
  }

  v31 = MOSuggestionAssetMetadataKeyWorkoutTotalDistance;
  [v29 doubleValueForUnit:v25];
  v48 = &type metadata for Double;
  v47._countAndFlagsBits = v32;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v47, v31);
  v33 = MOSuggestionAssetMetadataKeyWorkoutTotalDistanceQuantity;
  v48 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantity, HKQuantity_ptr);
  v47._countAndFlagsBits = v29;
  v34 = v33;
  v35 = v29;
  specialized Dictionary.subscript.setter(&v47, v34);
  swift_endAccess();
  v36 = MOSuggestionAssetMetadataKeyWorkoutTotalDistanceWithUnit;
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 meterUnit];
  [v35 doubleValueForUnit:v39];
  v41 = v40;

  v42 = [objc_opt_self() activityTypeWithWorkout:a4];
  v43 = FIUIDistanceTypeForActivityType();

  result = [a6 localizedStringWithDistanceInMeters:v43 distanceType:1 unitStyle:v41];
  if (result)
  {
    v45 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = String.uppercased()();

    v48 = &type metadata for String;
    v47 = v46;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v47, v38);
    swift_endAccess();

LABEL_15:
    return a7();
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall String.trimmed()()
{
  lazy protocol witness table accessor for type String and conformance String();
  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100110D18()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100110DA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id _HKWorkoutIsIndoor(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 objectForKeyedSubscript:HKMetadataKeyIndoorWorkout];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t sub_100110E58()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type HKQuantityType and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject)
  {
    type metadata accessor for UIApplication(255, &lazy cache variable for type metadata for HKQuantityType, HKQuantityType_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject);
  }

  return result;
}

uint64_t sub_100110F18()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100110F80()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10011101C()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001110CC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void MOSuggestionInterstitialListAssetViewModel.__allocating_init(workoutAsset:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  *&v101 = *(v4 - 8);
  __chkstk_darwin(v4);
  v102 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v91 - v10;
  v12 = type metadata accessor for Date();
  v105 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v103 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v104 = &v91 - v15;
  v16 = [a1 assetType];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  [a1 contentClassType];
  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (ObjCClassMetadata == type metadata accessor for MOSuggestionGenericFallBackInfo())
  {
LABEL_12:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static MOAngelLogger.shared);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "[MOSuggestionInterstitialListAssetViewModel.workoutAsset] Mismatched init for asset type", v32, 2u);
    }

    return;
  }

  v24 = [a1 content];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v28 = 0;
    goto LABEL_30;
  }

  v26 = v25;
  v27 = [v25 icon];
  if (v27)
  {
    swift_unknownObjectRelease();
    v100 = 7;
    v28 = v27;
  }

  else
  {
    v33 = [v26 renderedRouteMap];
    swift_unknownObjectRelease();
    if (!v33)
    {
      v28 = 0;
      goto LABEL_30;
    }

    v28 = v33;
    v100 = 9;
  }

  v34 = v27;
  v35 = [a1 metadata];
  v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v36);
  v38 = v37;

  if (!v38)
  {
LABEL_29:

    goto LABEL_30;
  }

  if (!*(v38 + 16) || (v99 = v2, v39 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutType), (v40 & 1) == 0))
  {

    goto LABEL_29;
  }

  outlined init with copy of Any(*(v38 + 56) + 32 * v39, v112);
  if (swift_dynamicCast())
  {
    v41 = v111;
    if (*(v38 + 16) && (v42 = v110, v43 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutWorkoutStartTime), (v44 & 1) != 0))
    {
      v94 = v42;
      v98 = v41;
      outlined init with copy of Any(*(v38 + 56) + 32 * v43, v112);
      v45 = swift_dynamicCast();
      v46 = v105;
      v47 = v105[7];
      v97 = v105 + 7;
      v96 = v47;
      v47(v11, v45 ^ 1u, 1, v12);
      v95 = v46[6];
      if (v95(v11, 1, v12) != 1)
      {
        v52 = v46 + 4;
        v53 = v46[4];
        v54 = v104;
        v55 = v11;
        v93 = v52;
        v56 = v53;
        v53(v104, v55, v12);
        if (*(v38 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutWorkoutEndTime), (v58 & 1) != 0))
        {
          outlined init with copy of Any(*(v38 + 56) + 32 * v57, v112);

          v59 = swift_dynamicCast();
          v96(v9, v59 ^ 1u, 1, v12);
          if (v95(v9, 1, v12) != 1)
          {
            LODWORD(v95) = v27 != 0;
            v56(v103, v9, v12);
            v60 = objc_opt_self();
            v61 = v28;
            v93 = [v60 blackColor];
            type metadata accessor for MOSuggestionSheetImage();
            v62 = swift_allocObject();
            *(v62 + 40) = 0;
            *(v62 + 32) = 0;
            *(v62 + 24) = 0;
            *(v62 + 72) = 0u;
            *(v62 + 56) = 0u;
            *(v62 + 88) = 1;
            *(v62 + 96) = 0;
            v92 = (v62 + 96);
            *(v62 + 104) = 1;
            v91 = v61;
            *(v62 + 16) = v61;
            swift_beginAccess();
            *(v62 + 24) = 0;
            swift_beginAccess();
            *(v62 + 32) = 0;
            swift_beginAccess();
            v63 = *(v62 + 40);
            *(v62 + 40) = v93;

            *(v62 + 48) = v95;
            swift_beginAccess();
            *(v62 + 72) = 0u;
            *(v62 + 56) = 0u;
            *(v62 + 88) = 1;
            v64 = v92;
            swift_beginAccess();
            *v64 = 0;
            v65 = v62;
            *(v62 + 104) = 1;
            v66 = v54;
            v67 = v105[2];
            v68 = v102;
            v67(v102, v66, v12);
            v69 = *(v4 + 20);
            v67((v68 + v69), v103, v12);
            v95 = v12;
            v96((v68 + v69), 0, 1, v12);
            v70 = [a1 identifier];
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v72;

            v106 = v71;
            v107 = v73;
            v108 = 35;
            v109 = 0xE100000000000000;
            lazy protocol witness table accessor for type String and conformance String();
            v74 = StringProtocol.components<A>(separatedBy:)();

            if (v74[2])
            {
              v75 = v74[5];
              v97 = v74[4];

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMR);
              v76 = (*(v101 + 80) + 32) & ~*(v101 + 80);
              v77 = swift_allocObject();
              v101 = xmmword_1002A48B0;
              *(v77 + 16) = xmmword_1002A48B0;
              outlined init with copy of MOSuggestionSheetAssetDateRange(v68, v77 + v76);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
              v78 = swift_allocObject();
              *(v78 + 16) = v101;
              v79 = v98;
              *(v78 + 32) = v94;
              *(v78 + 40) = v79;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
              v80 = swift_allocObject();
              *(v80 + 16) = xmmword_1002A4A70;
              *(v80 + 32) = v65;
              v81 = v68;
              v82 = *(v99 + 344);

              HIBYTE(v90) = 0;
              *(&v90 + 1) = 1;
              LOBYTE(v90) = v100;
              v83 = v82(v97, v75, 0, 0, 0, v77, v78, v80, v90);

              v84 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
              v86 = v85;
              v87 = v91;

              outlined destroy of MOSuggestionSheetAssetDateRange(v81);
              v88 = v105[1];
              v89 = v95;
              v88(v103, v95);
              v88(v104, v89);
              swift_beginAccess();
              *(v83 + 24) = v84;
              *(v83 + 32) = v86;
            }

            else
            {
              __break(1u);
            }

            return;
          }

          (v105[1])(v54, v12);
        }

        else
        {

          (v105[1])(v54, v12);
          v96(v9, 1, 1, v12);
        }

        outlined destroy of Date?(v9);
        goto LABEL_30;
      }
    }

    else
    {

      (v105[7])(v11, 1, 1, v12);
    }

    outlined destroy of Date?(v11);
  }

  else
  {
  }

LABEL_30:
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static MOAngelLogger.shared);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "[MOSuggestionInterstitialListAssetViewModel.workoutAsset] Invalid workout object", v51, 2u);
  }
}

uint64_t *BackgroundSyncTaskProcessor.taskWorkKind.unsafeMutableAddressor()
{
  if (one-time initialization token for taskWorkKind != -1)
  {
    swift_once();
  }

  return &static BackgroundSyncTaskProcessor.taskWorkKind;
}

id static BackgroundSyncTaskProcessor.taskWorkKind.getter()
{
  if (one-time initialization token for taskWorkKind != -1)
  {
    swift_once();
  }

  v1 = static BackgroundSyncTaskProcessor.taskWorkKind;

  return v1;
}

uint64_t BackgroundSyncTaskProcessor.totalRuntimeSeconds.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

double BackgroundSyncTaskProcessor.task.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

uint64_t BackgroundSyncTaskProcessor.isTaskDone.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

id static BackgroundSyncTaskProcessor.createWorker()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BackgroundSyncTaskProcessor();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  if (one-time initialization token for shared != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static SuggestionNotificationManager.shared;
  *(v3 + 40) = static SuggestionNotificationManager.shared;
  a1[3] = v2;
  a1[4] = &protocol witness table for BackgroundSyncTaskProcessor;
  *a1 = v3;
  return v4;
}

uint64_t BackgroundSyncTaskProcessor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionNotificationManager.shared;
  *(v0 + 40) = static SuggestionNotificationManager.shared;
  v2 = v1;
  return v0;
}

Swift::String __swiftcall BackgroundSyncTaskProcessor.me()()
{
  type metadata accessor for BackgroundSyncTaskProcessor();

  v0 = String.init<A>(describing:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t BackgroundSyncTaskProcessor.beginTask()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(BackgroundSyncTaskProcessor.beginTask(), 0, 0);
}

{
  v23 = v0;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  if (v3)
  {
    v21 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = (*(*v7 + 184))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "beginTask: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v4 + 8))(v21, v6);
  }

  else
  {

    (*(v4 + 8))(v5, v6);
  }

  v14 = v0[2];
  v13 = v0[3];
  (*(*v14 + 168))(0);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;

  v17 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in BackgroundSyncTaskProcessor.beginTask(), v16);
  (*(*v14 + 144))(v17);
  v18 = MOTaskActionMore;

  v19 = v0[1];

  return v19(v18);
}

uint64_t closure #1 in BackgroundSyncTaskProcessor.beginTask()()
{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 24) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = type metadata accessor for CloudManager();
  v4 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager, &protocol conformance descriptor for CloudManager);
  *v2 = v0;
  v2[1] = closure #1 in BackgroundSyncTaskProcessor.beginTask();

  return CloudManagerProtocol.refresh(force:wait:_:_:)(0, 0, 0x7361546E69676562, 0xEB0000000029286BLL, 39, v3, v4);
}

{

  return _swift_task_switch(closure #1 in BackgroundSyncTaskProcessor.beginTask(), 0, 0);
}

{
  (*(**(v0 + 16) + 168))(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BackgroundSyncTaskProcessor.continueTask(progressReporter:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(BackgroundSyncTaskProcessor.continueTask(progressReporter:), 0, 0);
}

uint64_t BackgroundSyncTaskProcessor.continueTask(progressReporter:)()
{
  v17 = v0;
  v0[17] = type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[13];
  if (v3)
  {
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = (*(*v7 + 184))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "continueTask: %s start.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v13 = *(v6 + 8);
  v13(v4, v5);
  v0[18] = v13;
  static Clock<>.continuous.getter();
  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = BackgroundSyncTaskProcessor.continueTask(progressReporter:);

  return specialized Clock.sleep(for:tolerance:)(0x8AC7230489E80000, 0, 0, 0, 1);
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = BackgroundSyncTaskProcessor.continueTask(progressReporter:);
  }

  else
  {
    v5 = BackgroundSyncTaskProcessor.continueTask(progressReporter:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *(*v1 + 64);
  *(*v1 + 176) = v0;

  outlined destroy of UUID?(v2);
  if (v0)
  {
    v3 = BackgroundSyncTaskProcessor.continueTask(progressReporter:);
  }

  else
  {
    v3 = BackgroundSyncTaskProcessor.continueTask(progressReporter:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = MOTaskActionCompleted;

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*BackgroundSyncTaskProcessor.continueTask(progressReporter:)())(uint64_t, void)
{
  v41 = v0;
  v1 = *(v0 + 56);
  (*(**(v0 + 48) + 112))(10);
  result = (*(*v1 + 128))(v0 + 16);
  if (__OFADD__(*v3, 10))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 56);
    *v3 += 10;
    v5 = result(v0 + 16, 0);
    if ((*(*v4 + 160))(v5))
    {
      static CommonLogger.services.getter();

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 144);
      v10 = *(v0 + 112);
      v11 = *(v0 + 96);
      if (v8)
      {
        v37 = *(v0 + 144);
        v12 = *(v0 + 56);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v40 = v14;
        *v13 = 136315138;
        v15 = (*(*v12 + 184))();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v40);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v6, v7, "continueTask: %s completed", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);

        v37(v10, v11);
      }

      else
      {

        v9(v10, v11);
      }

      v30 = *(v0 + 64);
      v31 = *(*(v0 + 56) + 40);
      v32 = type metadata accessor for UUID();
      (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
      v39 = (*((swift_isaMask & *v31) + 0x78) + **((swift_isaMask & *v31) + 0x78));
      v33 = swift_task_alloc();
      *(v0 + 168) = v33;
      *v33 = v0;
      v33[1] = BackgroundSyncTaskProcessor.continueTask(progressReporter:);
      v34 = *(v0 + 64);

      return v39(v34, 0, 0);
    }

    else
    {
      static CommonLogger.services.getter();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 144);
      v22 = *(v0 + 120);
      v23 = *(v0 + 96);
      if (v20)
      {
        v38 = *(v0 + 144);
        v24 = *(v0 + 56);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v40 = v26;
        *v25 = 136315138;
        v27 = (*(*v24 + 184))();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v40);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v18, v19, "continueTask: %s more", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);

        v38(v22, v23);
      }

      else
      {

        v21(v22, v23);
      }

      v35 = MOTaskActionMore;

      v36 = *(v0 + 8);

      return v36(v35);
    }
  }

  return result;
}

uint64_t BackgroundSyncTaskProcessor.endTask()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(BackgroundSyncTaskProcessor.endTask(), 0, 0);
}

{
  v22 = v0;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  if (v3)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315138;
    v10 = *v6;
    v21 = v9;
    v11 = (*(v10 + 184))();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "endTask: %s interrupted", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);

    v14 = (*(v5 + 8))(v4, v7);
  }

  else
  {

    v14 = (*(v5 + 8))(v4, v7);
  }

  v15 = (*(*v0[2] + 136))(v14);
  if (v15)
  {
    Task.cancel()();
  }

  v16 = (*(*v0[2] + 160))(v15);
  v17 = &MOTaskActionCompleted;
  if ((v16 & 1) == 0)
  {
    v17 = &MOTaskActionMore;
  }

  v18 = *v17;

  v19 = v0[1];

  return v19(v18);
}

uint64_t BackgroundSyncTaskProcessor.deinit()
{

  return v0;
}

double BackgroundSyncTaskProcessor.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t BackgroundSyncTaskProcessor.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionNotificationManager.shared;
  *(v0 + 40) = static SuggestionNotificationManager.shared;
  v2 = v1;
  return v0;
}

uint64_t protocol witness for TaskProcessorWorker.beginTask() in conformance BackgroundSyncTaskProcessor()
{
  v4 = (*(**v0 + 192) + **(**v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TaskProcessorWorker.continueTask(progressReporter:) in conformance HealthCheckTaskProcessor;

  return v4();
}

uint64_t protocol witness for TaskProcessorWorker.continueTask(progressReporter:) in conformance BackgroundSyncTaskProcessor(uint64_t a1)
{
  v6 = (*(**v1 + 200) + **(**v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for TaskProcessorWorker.continueTask(progressReporter:) in conformance HealthCheckTaskProcessor;

  return v6(a1);
}

uint64_t protocol witness for TaskProcessorWorker.endTask() in conformance BackgroundSyncTaskProcessor()
{
  v4 = (*(**v0 + 208) + **(**v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TaskProcessorWorker.endTask() in conformance HealthCheckTaskProcessor;

  return v4();
}

id protocol witness for static TaskProcessorWorker.createWorker() in conformance BackgroundSyncTaskProcessor@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BackgroundSyncTaskProcessor();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  if (one-time initialization token for shared != -1)
  {
    v8 = v5;
    swift_once();
    v5 = v8;
  }

  v6 = static SuggestionNotificationManager.shared;
  *(v5 + 40) = static SuggestionNotificationManager.shared;
  a2[3] = v4;
  a2[4] = a1;
  *a2 = v5;
  return v6;
}

uint64_t sub_100113F28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in BackgroundSyncTaskProcessor.beginTask()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #1 in BackgroundSyncTaskProcessor.beginTask()(a1, v4, v5, v6);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001144D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_100114568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1001145B4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_100114608@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double *Array<A>.sortedByAscendingTime.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      v5 = v4;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16CMMotionActivityC_Tt1g5();

      specialized Array._copyContents(initializing:)((v1 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v1 = _swiftEmptyArrayStorage;
    goto LABEL_3;
  }

  v1 = (a1 & 0xFFFFFFFFFFFFFF8);

LABEL_3:
  v8 = v1;
  specialized MutableCollection<>.sort(by:)(&v8);
  return v8;
}

uint64_t closure #1 in Array<A>.sortedByAscendingTime.getter(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v36 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - v15;
  v17 = *a1;
  v18 = *a2;
  v19 = *(*v17 + 224);
  if (!v19(v14))
  {
    goto LABEL_13;
  }

  v34 = v10;
  v37 = v2;

  v21 = *(*v18 + 224);
  if (!v21(v20))
  {
    v31 = 1;
    return v31 & 1;
  }

  v23 = v19(v22);
  if (!v23)
  {
LABEL_10:
    v31 = 0;
    return v31 & 1;
  }

  if (!*(v23 + 16))
  {

    goto LABEL_10;
  }

  v24 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  outlined init with copy of MOSuggestionSheetAssetDateRange(v23 + v24, v13);

  v25 = outlined init with take of MOSuggestionSheetAssetDateRange(v13, v16);
  v26 = v21(v25);
  if (!v26)
  {
LABEL_12:
    outlined destroy of MOSuggestionSheetAssetDateRange(v16);
LABEL_13:
    v31 = 0;
    return v31 & 1;
  }

  if (!*(v26 + 16))
  {

    goto LABEL_12;
  }

  v27 = v26 + v24;
  v28 = v35;
  outlined init with copy of MOSuggestionSheetAssetDateRange(v27, v35);

  v29 = v28;
  v30 = v34;
  outlined init with take of MOSuggestionSheetAssetDateRange(v29, v34);
  v31 = static Date.< infix(_:_:)();
  outlined destroy of MOSuggestionSheetAssetDateRange(v30);
  outlined destroy of MOSuggestionSheetAssetDateRange(v16);
  return v31 & 1;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CLLocation] and conformance [A](&lazy protocol witness table cache variable for type [MOSuggestionInterstitialListAssetViewModel] and conformance [A], &_sSay16MomentsUIService42MOSuggestionInterstitialListAssetViewModelCGMd, &_sSay16MomentsUIService42MOSuggestionInterstitialListAssetViewModelCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MomentsUIService42MOSuggestionInterstitialListAssetViewModelCGMd, &_sSay16MomentsUIService42MOSuggestionInterstitialListAssetViewModelCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MOSuggestionInterstitialListAssetViewModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CLLocation] and conformance [A](&lazy protocol witness table cache variable for type [CMMotionActivity] and conformance [A], &_sSaySo16CMMotionActivityCGMd, &_sSaySo16CMMotionActivityCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CMMotionActivityCGMd, &_sSaySo16CMMotionActivityCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CMMotionActivity, CMMotionActivity_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CLLocation] and conformance [A](&lazy protocol witness table cache variable for type [MOResource] and conformance [A], &_sSaySo10MOResourceCGMd, &_sSaySo10MOResourceCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10MOResourceCGMd, &_sSaySo10MOResourceCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOResource, MOResource_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CLLocation] and conformance [A](&lazy protocol witness table cache variable for type [MOSuggestionAssetReference] and conformance [A], &_sSay16MomentsUIService26MOSuggestionAssetReferenceCGMd, &_sSay16MomentsUIService26MOSuggestionAssetReferenceCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MomentsUIService26MOSuggestionAssetReferenceCGMd, &_sSay16MomentsUIService26MOSuggestionAssetReferenceCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MOSuggestionAssetReference(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CLLocation] and conformance [A](&lazy protocol witness table cache variable for type [Asset] and conformance [A], &_sSay9MomentsUI5AssetCGMd, &_sSay9MomentsUI5AssetCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI5AssetCGMd, &_sSay9MomentsUI5AssetCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Asset();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CLLocation] and conformance [A](&lazy protocol witness table cache variable for type [MOSuggestionAsset<Swift.AnyObject>] and conformance [A], &_sSaySo17MOSuggestionAssetCGMd, &_sSaySo17MOSuggestionAssetCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17MOSuggestionAssetCGMd, &_sSaySo17MOSuggestionAssetCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd, &_sSo17MOSuggestionAssetCMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CLLocation] and conformance [A](&lazy protocol witness table cache variable for type [MOSuggestionCollectionViewCellViewModel] and conformance [A], &_sSay16MomentsUIService030MOSuggestionCollectionViewCellE5ModelCGMd, &_sSay16MomentsUIService030MOSuggestionCollectionViewCellE5ModelCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MomentsUIService030MOSuggestionCollectionViewCellE5ModelCGMd, &_sSay16MomentsUIService030MOSuggestionCollectionViewCellE5ModelCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MOSuggestionCollectionViewCellViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CLLocation] and conformance [A](&lazy protocol witness table cache variable for type [CLLocation] and conformance [A], &_sSaySo10CLLocationCGMd, &_sSaySo10CLLocationCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CLLocationCGMd, &_sSaySo10CLLocationCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CLLocation, CLLocation_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type [CLLocation] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t UIImage.temporaryCacheURL(assetIdentifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v48[0] = a1;
  v50 = a2;
  v51 = a3;
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v52 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v48 - v12;
  __chkstk_darwin(v11);
  v15 = v48 - v14;
  v16 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();
  v17 = v13;

  static UTType.png.getter();
  v50 = v15;
  URL.appendingPathComponent(_:conformingTo:)();
  (*(v4 + 8))(v6, v3);
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static MOAngelLogger.assets);
  v20 = v52;
  (*(v52 + 16))(v10, v13, v7);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v49 = v7;
  if (v23)
  {
    v24 = v20;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v53 = v26;
    *v25 = 136315138;
    v27 = URL.debugDescription.getter();
    v48[0] = v19;
    v28 = v17;
    v30 = v29;
    v31 = *(v24 + 8);
    v31(v10, v7);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, &v53);
    v17 = v28;

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "[MOSuggestionAssetCacheManager.wrapImageAssetInURL] path=%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);

    v33 = v52;
  }

  else
  {

    v31 = *(v20 + 8);
    v31(v10, v7);
    v33 = v20;
  }

  v34 = UIImagePNGRepresentation(v48[1]);
  if (v34)
  {
    v35 = v34;
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    Data.write(to:options:)();
    v42 = v49;
    v31(v50, v49);
    v43 = outlined consume of Data._Representation(v36, v38);
    v44 = v51;
    (*(v33 + 32))(v51, v17, v42, v43);
    v45 = v44;
    v46 = 0;
  }

  else
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "[UIImage.temporaryCacheURL] Failed to generate png data", v41, 2u);
    }

    v42 = v49;
    v31(v17, v49);
    v31(v50, v42);
    v46 = 1;
    v45 = v51;
  }

  return (*(v33 + 56))(v45, v46, 1, v42);
}

void sub_100115DA0(void *a1, unsigned __int8 a2, void (*a3)(id), uint64_t a4)
{
  v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v74[-v9];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v74[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((v7 - 2) >= 9)
  {
    v80 = a4;
    v15 = [a1 content];
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 icon];
      if (v18)
      {
        v19 = v18;
        v78 = v15;
        v20 = [a1 identifier];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v19;
        v22 = v21;
        v24 = v23;

        v25 = v22;
        v26 = v79;
        UIImage.temporaryCacheURL(assetIdentifier:)(v25, v24, v10);

        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          outlined destroy of URL?(v10);
          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          __swift_project_value_buffer(v27, static MOAngelLogger.assets);
          v28 = a1;
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v81 = v32;
            *v31 = 136315138;
            v33 = [v28 identifier];
            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v81);

            *(v31 + 4) = v37;
            _os_log_impl(&_mh_execute_header, v29, v30, "[MOSuggestionAssetCacheManager.wrapWorkoutAssetssetInURLIfNecessary] Failed to wrap image identifier=%s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v32);

            v26 = v79;
          }

          a3(0);
          swift_unknownObjectRelease();
        }

        else
        {
          (*(v12 + 32))(v14, v10, v11);
          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          __swift_project_value_buffer(v49, static MOAngelLogger.assets);
          v50 = a1;
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.default.getter();

          v53 = os_log_type_enabled(v51, v52);
          v77 = a3;
          if (v53)
          {
            v54 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v81 = v76;
            *v54 = 136315138;
            v55 = [v50 identifier];
            v75 = v52;
            v56 = v55;
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v50;
            v60 = v59;

            v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v60, &v81);
            v50 = v58;

            *(v54 + 4) = v61;
            _os_log_impl(&_mh_execute_header, v51, v75, "[MOSuggestionAssetCacheManager.wrapWorkoutAssetssetInURLIfNecessary] Wrapping image identifier=%s", v54, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v76);
          }

          v62 = [v17 route];
          v63 = objc_allocWithZone(MOSuggestionAssetWorkout);
          URL._bridgeToObjectiveC()(v64);
          v66 = v65;
          v67 = [v63 init:0 route:v62 iconURL:v65];

          v68 = v67;
          v69 = [v50 assetType];
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetWorkout, MOSuggestionAssetWorkout_ptr);
          v70 = [objc_allocWithZone(MOSuggestionAsset) init:v68 type:v69 contentClassType:swift_getObjCClassFromMetadata()];

          v71 = [v50 metadata];
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v70 addMetadata:isa];

          v73 = v70;
          v77(v70);

          swift_unknownObjectRelease();
          (*(v12 + 8))(v14, v11);
        }

        return;
      }
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static MOAngelLogger.assets);
  v39 = a1;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v81 = v43;
    *v42 = 136315138;
    v44 = [v39 identifier];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v81);

    *(v42 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v40, v41, "[MOSuggestionAssetCacheManager.wrapWorkoutAssetssetInURLIfNecessary] Pass through without wrapping identifier=%s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  a3(v39);
}

uint64_t specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLIfNecessary(asset:cacheType:completion:)(NSObject *a1, unsigned __int8 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void (*a9)(double *, __n128), uint64_t a10)
{
  v100 = a4;
  v101 = a6;
  v102 = a9;
  v15 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v16 - 8);
  v18 = &v93[-v17];
  v19 = type metadata accessor for URL();
  v99 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v93[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v103 = a10;
  swift_retain_n();
  if ((v15 - 2) < 9)
  {
    goto LABEL_18;
  }

  v22 = [a1 content];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_18:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static MOAngelLogger.assets);
    v53 = a1;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v99 = v53;
      v57 = v56;
      v98 = swift_slowAlloc();
      v105[0] = v98;
      *v57 = 136315138;
      v58 = [v99 identifier];
      v59 = a8;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = a7;
      v62 = a5;
      v63 = a3;
      v65 = v64;

      v66 = v60;
      a8 = v59;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, v105);
      a3 = v63;
      a5 = v62;
      a7 = v61;

      *(v57 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v54, v55, "[MOSuggestionAssetCacheManager.wrapImageAssetInURL] Pass through without wrapping identifier=%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);

      v53 = v99;
    }

    v68 = v102;
    v69 = v101;
    v70 = v100;

    closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v53, a3, v70, a5, v69, a7, a8, v68);

    swift_bridgeObjectRelease_n();
    goto LABEL_23;
  }

  v96 = v22;
  v97 = a3;
  v98 = a8;
  v23 = [a1 identifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  UIImage.temporaryCacheURL(assetIdentifier:)(v24, v26, v18);

  v27 = v99;
  if ((v99[6].isa)(v18, 1, v19) == 1)
  {
    outlined destroy of URL?(v18);
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v29 = __swift_project_value_buffer(v28, static MOAngelLogger.assets);
    v30 = a1;
    v101 = v29;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v19 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v105[0] = v33;
      *v19 = 136315138;
      v34 = [v30 identifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v105);

      *(v19 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "[MOSuggestionAssetCacheManager.wrapImageAssetInURL] Failed to wrap image identifier=%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    v40 = v97;
    v39 = v98;
    swift_retain_n();

    a1 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(a1, v21))
    {
      v19 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v105[0] = v41;
      *v19 = 136315138;
      v42 = (*(*v40 + 312))();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v105);

      *(v19 + 4) = v44;
      v39 = v98;
      _os_log_impl(&_mh_execute_header, a1, v21, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
    }

    swift_beginAccess();
    v45 = *(a7 + 16);
    v46 = v45 + 1;
    if (!__OFADD__(v45, 1))
    {
      *(a7 + 16) = v46;
      if (v39 >> 62)
      {
        if (v46 == _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_13;
        }
      }

      else if (v46 == *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_13:
        swift_beginAccess();
        v104 = *(a5 + 16);
        swift_bridgeObjectRetain_n();
        specialized MutableCollection<>.sort(by:)(&v104);

        v47 = v104;
        v48 = *(v104 + 2);
        if (v48)
        {
          v104 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v49 = 4;
          do
          {
            v50 = *&v47[v49];
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v49 += 2;
            --v48;
          }

          while (v48);

          v51 = v104;
        }

        else
        {

          v51 = _swiftEmptyArrayStorage;
        }

        (v102)(v51);

        swift_beginAccess();
        *(a5 + 16) = _swiftEmptyArrayStorage;

        goto LABEL_35;
      }

LABEL_35:

      swift_unknownObjectRelease();

LABEL_23:

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_32;
  }

  (v27[4].isa)(v21, v18, v19);
  if (one-time initialization token for assets != -1)
  {
LABEL_32:
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static MOAngelLogger.assets);
  v73 = a1;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v105[0] = v95;
    *v76 = 136315138;
    v77 = [v73 identifier];
    v94 = v75;
    v78 = v77;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v105);

    *(v76 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v74, v94, "[MOSuggestionAssetCacheManager.wrapImageAssetInURL] Wrapping image identifier=%s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);
  }

  URL._bridgeToObjectiveC()(v83);
  v85 = v84;
  v86 = [v73 assetType];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSURL, NSURL_ptr);
  v87 = [objc_allocWithZone(MOSuggestionAsset) init:v85 type:v86 contentClassType:swift_getObjCClassFromMetadata()];

  v88 = [v73 metadata];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v87 addMetadata:isa];

  v90 = v97;

  v91 = v98;

  v92 = v87;
  closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v87, v90, v100, a5, v101, a7, v91, v102);
  swift_unknownObjectRelease();

  (v99[1].isa)(v21, v19);

LABEL_24:

  swift_bridgeObjectRelease_n();
}

uint64_t specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLIfNecessary(asset:cacheType:completion:)(void *a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4)
{
  v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v66 - v9;
  v11 = type metadata accessor for URL();
  __chkstk_darwin(v11);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v7 - 2) >= 9)
  {
    v68 = v12;
    v15 = [a1 content];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v66[2] = a4;
      v67 = a3;
      v16 = [a1 identifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      UIImage.temporaryCacheURL(assetIdentifier:)(v17, v19, v10);

      v20 = v68;
      if ((*(v68 + 48))(v10, 1, v11) == 1)
      {
        outlined destroy of URL?(v10);
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static MOAngelLogger.assets);
        v22 = a1;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        v25 = os_log_type_enabled(v23, v24);
        v26 = v67;
        if (v25)
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v69 = v28;
          *v27 = 136315138;
          v29 = [v22 identifier];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v69);

          *(v27 + 4) = v33;
          _os_log_impl(&_mh_execute_header, v23, v24, "[MOSuggestionAssetCacheManager.wrapImageAssetInURL] Failed to wrap image identifier=%s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
        }

        v26(0);
        return swift_unknownObjectRelease();
      }

      else
      {
        (*(v20 + 32))(v14, v10, v11);
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v66[1] = v15;
        v46 = type metadata accessor for Logger();
        __swift_project_value_buffer(v46, static MOAngelLogger.assets);
        v47 = a1;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v69 = v51;
          *v50 = 136315138;
          v52 = [v47 identifier];
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v69);

          *(v50 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v48, v49, "[MOSuggestionAssetCacheManager.wrapImageAssetInURL] Wrapping image identifier=%s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v51);
        }

        v57 = v67;
        URL._bridgeToObjectiveC()(v58);
        v60 = v59;
        v61 = [v47 assetType];
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSURL, NSURL_ptr);
        v62 = [objc_allocWithZone(MOSuggestionAsset) init:v60 type:v61 contentClassType:swift_getObjCClassFromMetadata()];

        v63 = [v47 metadata];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v62 addMetadata:isa];

        v65 = v62;
        v57(v62);
        swift_unknownObjectRelease();

        return (*(v68 + 8))(v14, v11);
      }
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static MOAngelLogger.assets);
  v36 = a1;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v69 = v40;
    *v39 = 136315138;
    v41 = [v36 identifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v69);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "[MOSuggestionAssetCacheManager.wrapImageAssetInURL] Pass through without wrapping identifier=%s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  return (a3)(v36);
}

uint64_t specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLPairIfNecessary(asset:cacheType:completion:)(void *a1, unsigned __int8 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void (*a9)(double *, __n128), uint64_t a10)
{
  v16 = a9;
  v17 = a2 - 2;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if (v17 < 9)
  {
    goto LABEL_8;
  }

  [a1 content];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
LABEL_8:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static MOAngelLogger.assets);
    v30 = a1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v78[0] = v70;
      *v33 = 136315138;
      v34 = a8;
      v35 = a7;
      v36 = [v30 identifier];
      v74 = a3;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v32;
      v38 = v30;
      v40 = v39;

      a7 = v35;
      a8 = v34;
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, v78);
      v30 = v38;

      *(v33 + 4) = v41;
      a3 = v74;
      _os_log_impl(&_mh_execute_header, v31, v69, "[MOSuggestionAssetCacheManager.wrapImageAssetInURLPairIfNecessary] Pass through without wrapping identifier=%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);

      v16 = a9;
    }

    closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v30, a3, a4, a5, a6, a7, a8, v16);
    goto LABEL_13;
  }

  v19 = v18;
  v71 = a6;
  v73 = a3;
  v20 = [a1 identifier];
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  v21 = objc_allocWithZone(MOSuggestionAssetImageURLPair);
  swift_unknownObjectRetain();
  v22 = [v21 init:v19 urlAppendix:v20];
  swift_unknownObjectRelease();

  if (!v22)
  {
    v72 = a5;
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static MOAngelLogger.assets);
    v44 = a1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v78[0] = v76;
      *v47 = 136315138;
      v48 = [v44 identifier];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v46;
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v52, v78);

      *(v47 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v50, "[MOSuggestionAssetCacheManager.wrapImageAssetInURLPairIfNecessary] Failed to wrap image identifier=%s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
    }

    swift_retain_n();
    v54 = v72;

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v78[0] = v58;
      *v57 = 136315138;
      v59 = (*(*v73 + 312))();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v78);

      *(v57 + 4) = v61;
      v54 = v72;
      _os_log_impl(&_mh_execute_header, v55, v56, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
    }

    swift_beginAccess();
    v62 = *(a7 + 16);
    v63 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
    }

    else
    {
      *(a7 + 16) = v63;
      if (!(a8 >> 62))
      {
        if (v63 == *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_24:
          swift_beginAccess();
          v77 = *(v54 + 16);
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(&v77);

          v64 = v77;
          v65 = *(v77 + 2);
          if (v65)
          {
            v77 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v66 = 4;
            do
            {
              v67 = *&v64[v66];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v66 += 2;
              --v65;
            }

            while (v65);

            v68 = v77;
            v54 = v72;
          }

          else
          {

            v68 = _swiftEmptyArrayStorage;
          }

          (a9)(v68);

          swift_beginAccess();
          *(v54 + 16) = _swiftEmptyArrayStorage;

          goto LABEL_33;
        }

LABEL_32:

LABEL_33:
        swift_unknownObjectRelease();

        goto LABEL_14;
      }
    }

    if (v63 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v23 = v22;
  v24 = [a1 assetType];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetImageURLPair, MOSuggestionAssetImageURLPair_ptr);
  v25 = [objc_allocWithZone(MOSuggestionAsset) init:v23 type:v24 contentClassType:swift_getObjCClassFromMetadata()];

  v26 = [a1 metadata];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v25 addMetadata:isa];

  v28 = v25;
  closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v25, a3, a4, a5, v71, a7, a8, a9);
  swift_unknownObjectRelease();

LABEL_13:

LABEL_14:

  swift_bridgeObjectRelease_n();
}

void specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLPairIfNecessary(asset:cacheType:completion:)(id a1, unsigned __int8 a2, void (*a3)(id))
{
  if (a2 - 2 >= 9)
  {
    [a1 content];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = [a1 identifier];
      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = String._bridgeToObjectiveC()();
      }

      v8 = objc_allocWithZone(MOSuggestionAssetImageURLPair);
      swift_unknownObjectRetain();
      v9 = [v8 init:v6 urlAppendix:v7];
      swift_unknownObjectRelease();

      if (v9)
      {
        v10 = v9;
        v11 = [a1 assetType];
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetImageURLPair, MOSuggestionAssetImageURLPair_ptr);
        v12 = [objc_allocWithZone(MOSuggestionAsset) init:v10 type:v11 contentClassType:swift_getObjCClassFromMetadata()];

        v13 = [a1 metadata];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v12 addMetadata:isa];

        v37 = v12;
        a3(v12);
        swift_unknownObjectRelease();
      }

      else
      {
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static MOAngelLogger.assets);
        v27 = a1;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v38 = v31;
          *v30 = 136315138;
          v32 = [v27 identifier];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v38);

          *(v30 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v28, v29, "[MOSuggestionAssetCacheManager.wrapImageAssetInURLPairIfNecessary] Failed to wrap image identifier=%s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
        }

        a3(0);

        swift_unknownObjectRelease();
      }

      return;
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static MOAngelLogger.assets);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 136315138;
    v21 = [v16 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v38);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "[MOSuggestionAssetCacheManager.wrapImageAssetInURLPairIfNecessary] Pass through without wrapping identifier=%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  a3(v16);
}

void specialized static MOSuggestionAssetCacheManager.wrapMediaItemAssetInURLIfNecessary(asset:cacheType:completion:)(void *a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4)
{
  v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v110 - v13;
  __chkstk_darwin(v12);
  v16 = &v110 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v7 - 2) >= 9)
  {
    v22 = v19;
    v126 = a3;
    v23 = [a1 content];
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 albumArt];
      if (v26)
      {
        v121 = v11;
        v122 = v21;
        v124 = v23;
        v125 = a4;
        v27 = v22;
        v28 = v18;
        v29 = v26;
        v30 = [a1 identifier];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v123 = v29;
        v34 = v27;
        UIImage.temporaryCacheURL(assetIdentifier:)(v31, v33, v16);

        v35 = v28[6];
        if (v35(v16, 1, v27) == 1)
        {
          outlined destroy of URL?(v16);
          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static MOAngelLogger.assets);
          v37 = a1;
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();

          v40 = os_log_type_enabled(v38, v39);
          v41 = v126;
          if (v40)
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v127 = v43;
            *v42 = 136315138;
            v44 = [v37 identifier];
            v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v127);

            *(v42 + 4) = v48;
            _os_log_impl(&_mh_execute_header, v38, v39, "[MOSuggestionAssetCacheManager.wrapMediaItemAssetInURLIfNecessary] Failed to wrap image identifier=%s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v43);
          }

          v41(0);
          swift_unknownObjectRelease();
        }

        else
        {
          v119 = v28 + 6;
          (v28[4])(v122, v16, v27);
          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          __swift_project_value_buffer(v60, static MOAngelLogger.assets);
          v61 = a1;
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.default.getter();

          v64 = os_log_type_enabled(v62, v63);
          v120 = v61;
          v118 = v35;
          if (v64)
          {
            v65 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v127 = v116;
            *v65 = 136315138;
            v66 = [v61 identifier];
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v117 = v28;
            v68 = v63;
            v70 = v69;

            v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v70, &v127);

            *(v65 + 4) = v71;
            v28 = v117;
            _os_log_impl(&_mh_execute_header, v62, v68, "[MOSuggestionAssetCacheManager.wrapMediaItemAssetInURLIfNecessary] Wrapping image identifier=%s", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v116);
          }

          v72 = [v25 title];
          if (!v72)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = String._bridgeToObjectiveC()();
          }

          v73 = [v25 albumTitle];
          if (!v73)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = String._bridgeToObjectiveC()();
          }

          v74 = [v25 artistName];
          if (!v74)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = String._bridgeToObjectiveC()();
          }

          v117 = v72;
          v75 = [v25 trackIdentifier];
          if (v75)
          {
            v76 = v75;
            v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v78 = v77;
          }

          else
          {
            v111 = 0;
            v78 = 0;
          }

          v79 = [v25 previewURL];
          v116 = v74;
          if (v79)
          {
            v80 = v79;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v81 = 0;
          }

          else
          {
            v81 = 1;
          }

          v82 = v28[7];
          v82(v14, v81, 1, v34);
          v113 = [v25 mediaType];
          v83 = v121;
          (v28[2])();
          v84 = v28;
          v85 = v34;
          v82(v83, 0, 1, v34);
          v114 = [v25 bgColor];
          v112 = [v25 bgColorVariant];
          if (v78)
          {
            v86 = String._bridgeToObjectiveC()();
          }

          else
          {
            v86 = 0;
          }

          v87 = v118;
          v88 = v73;
          if (v118(v14, 1, v85) == 1)
          {
            v90 = 0;
          }

          else
          {
            URL._bridgeToObjectiveC()(v89);
            v90 = v91;
            (v84[1])(v14, v85);
          }

          v92 = v87(v83, 1, v85);
          v115 = v85;
          if (v92 == 1)
          {
            v94 = 0;
            v95 = v84;
          }

          else
          {
            v96 = v85;
            URL._bridgeToObjectiveC()(v93);
            v94 = v97;
            v95 = v84;
            (v84[1])(v83, v96);
          }

          v98 = objc_allocWithZone(MOSuggestionAssetMediaItem);
          v99 = v114;
          v100 = v116;
          v101 = v117;
          v102 = [v98 initTitle:v117 albumTitle:v88 artistName:v116 albumArt:0 trackIdentifier:v86 previewURL:v90 mediaType:v113 imageURL:v94 bgColor:v114 bgColorVariant:v112];

          v103 = v102;
          v104 = v120;
          v105 = [v120 assetType];
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetMediaItem, MOSuggestionAssetMediaItem_ptr);
          v106 = [objc_allocWithZone(MOSuggestionAsset) init:v103 type:v105 contentClassType:swift_getObjCClassFromMetadata()];

          v107 = [v104 metadata];
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v106 addMetadata:isa];

          v109 = v106;
          v126(v106);

          swift_unknownObjectRelease();
          (v95[1])(v122, v115);
        }

        return;
      }
    }

    swift_unknownObjectRelease();
    a3 = v126;
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static MOAngelLogger.assets);
  v50 = a1;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v127 = v54;
    *v53 = 136315138;
    v55 = [v50 identifier];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v127);

    *(v53 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v51, v52, "[MOSuggestionAssetCacheManager.wrapMediaItemAssetInURLIfNecessary] Pass through without wrapping identifier=%s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  a3(v50);
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MOSuggestionTipCoordinator.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionTipCoordinator.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MOSuggestionTipCoordinator.delegate.modify;
}

void MOSuggestionTipCoordinator.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void MOSuggestionTipCoordinator.privacyTip.getter(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  outlined copy of MOSuggestionPrivacyTip?(v3, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

double MOSuggestionTipCoordinator.privacyTip.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v7;
  *(v1 + 72) = *(a1 + 32);
  return outlined consume of MOSuggestionPrivacyTip?(v3, v4, v5, v6);
}

uint64_t MOSuggestionTipCoordinator.stateOfMindTip.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 73) = a1;
  return result;
}

uint64_t MOSuggestionTipCoordinator.privacyTipWasShownAndInvalidated.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 74) = a1;
  return result;
}

uint64_t MOSuggestionTipCoordinator.__allocating_init(clientId:clientName:isPublicUI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = swift_allocObject();
  MOSuggestionTipCoordinator.init(clientId:clientName:isPublicUI:)(a1, a2, a3, a4, v5);
  return v10;
}

uint64_t MOSuggestionTipCoordinator.init(clientId:clientName:isPublicUI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0u;
  *(v5 + 32) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 71) = 0;
  v19 = &type metadata for MOSuggestionOnboardingTip;
  v20 = lazy protocol witness table accessor for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip();
  LOBYTE(v18[0]) = 0;
  MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:)(v18);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);
  if (a2)
  {
    swift_beginAccess();
    v11 = *(v5 + 40);
    v12 = *(v5 + 48);
    v13 = *(v5 + 56);
    v14 = *(v5 + 64);
    *(v5 + 40) = a1;
    *(v5 + 48) = a2;
    *(v5 + 56) = a3;
    *(v5 + 64) = a4;
    *(v5 + 72) = 0;

    outlined consume of MOSuggestionPrivacyTip?(v11, v12, v13, v14);
    v19 = &type metadata for MOSuggestionPrivacyTip;
    v20 = lazy protocol witness table accessor for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip();
    v15 = swift_allocObject();
    v18[0] = v15;
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    *(v15 + 32) = a3;
    *(v15 + 40) = a4;
    *(v15 + 48) = 0;
    MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:)(v18);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);
  }

  else
  {
  }

  swift_beginAccess();
  v16 = *(v5 + 73);
  v19 = &type metadata for MOSuggestionStateOfMindTip;
  v20 = lazy protocol witness table accessor for type MOSuggestionStateOfMindTip and conformance MOSuggestionStateOfMindTip();
  LOBYTE(v18[0]) = v16;
  MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:)(v18);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);
  *(v5 + 73) = a5 & 1;
  return v5;
}

uint64_t MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  outlined init with copy of (String, Date?)(a1, &v9, &_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);
  if (!v10)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v9, &_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);
  }

  outlined init with take of MOMusicPlaybackCoordinatorDelegate(&v9, v11);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of MOProtectedAppsManagerDelegate(v11, &v9);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  outlined init with take of MOMusicPlaybackCoordinatorDelegate(&v9, (v7 + 4));
  v7[9] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:), v7);

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

unint64_t lazy protocol witness table accessor for type MOSuggestionStateOfMindTip and conformance MOSuggestionStateOfMindTip()
{
  result = lazy protocol witness table cache variable for type MOSuggestionStateOfMindTip and conformance MOSuggestionStateOfMindTip;
  if (!lazy protocol witness table cache variable for type MOSuggestionStateOfMindTip and conformance MOSuggestionStateOfMindTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionStateOfMindTip and conformance MOSuggestionStateOfMindTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOSuggestionStateOfMindTip and conformance MOSuggestionStateOfMindTip;
  if (!lazy protocol witness table cache variable for type MOSuggestionStateOfMindTip and conformance MOSuggestionStateOfMindTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionStateOfMindTip and conformance MOSuggestionStateOfMindTip);
  }

  return result;
}

uint64_t sub_100119BEC()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t closure #1 in MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[37] = a4;
  v5[38] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[39] = v6;
  v5[40] = *(v6 - 8);
  v5[41] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[42] = v7;
  v5[43] = *(v7 - 8);
  v5[44] = swift_task_alloc();
  v8 = type metadata accessor for Tips.Status();
  v5[45] = v8;
  v9 = *(v8 - 8);
  v5[46] = v9;
  v5[47] = *(v9 + 64);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  v5[50] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd, &_sScSy6TipKit4TipsO6StatusOGMR);
  v5[51] = v10;
  v5[52] = *(v10 - 8);
  v5[53] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMR);
  v5[54] = v11;
  v5[55] = *(v11 - 8);
  v5[56] = swift_task_alloc();

  return _swift_task_switch(closure #1 in MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:), 0, 0);
}

uint64_t closure #1 in MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:)()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_0(*(v0 + 296), *(*(v0 + 296) + 24));
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  *(v0 + 456) = v4;
  *v4 = v0;
  v4[1] = closure #1 in MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:);
  v5 = *(v0 + 432);
  v6 = *(v0 + 400);

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

{

  return _swift_task_switch(closure #1 in MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:), 0, 0);
}

{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v3 + 32);
  v6(*(v0 + 392), v1, v2);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    outlined init with copy of MOProtectedAppsManagerDelegate(*(v0 + 296), v0 + 64);
    *(v0 + 136) = *(v0 + 96);
    v8 = *(v0 + 64);
    *(v0 + 120) = *(v0 + 80);
    *(v0 + 104) = v8;
    v32 = v6;
    if (*(v0 + 128))
    {
      outlined init with copy of (String, Date?)(v0 + 104, v0 + 184, &_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A0_pMd, &_s6TipKit0A0_pMR);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 184));
        v25 = 0;
LABEL_16:
        v12 = *(v0 + 384);
        v11 = *(v0 + 392);
        v14 = *(v0 + 368);
        v13 = *(v0 + 376);
        v15 = *(v0 + 360);
        v26 = *(v0 + 352);
        v30 = *(v0 + 344);
        v31 = *(v0 + 336);
        v28 = *(v0 + 328);
        v29 = *(v0 + 320);
        v16 = *(v0 + 312);
        v17 = *(v0 + 296);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0 + 104, &_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);
        type metadata accessor for OS_dispatch_queue();
        v27 = static OS_dispatch_queue.main.getter();
        (*(v14 + 16))(v12, v11, v15);
        outlined init with copy of MOProtectedAppsManagerDelegate(v17, v0 + 144);
        v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
        v19 = swift_allocObject();
        v32(v19 + v18, v12, v15);
        v20 = v19 + ((v18 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v20 = v33;
        *(v20 + 8) = v25;
        outlined init with take of MOMusicPlaybackCoordinatorDelegate((v0 + 144), v19 + ((v18 + v13 + 23) & 0xFFFFFFFFFFFFFFF8));
        *(v0 + 48) = partial apply for closure #1 in MOSuggestionTipCoordinator.statusDidChange(status:for:);
        *(v0 + 56) = v19;
        *(v0 + 16) = _NSConcreteStackBlock;
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = thunk for @escaping @callee_guaranteed () -> ();
        *(v0 + 40) = &block_descriptor_21;
        v21 = _Block_copy((v0 + 16));

        static DispatchQoS.unspecified.getter();
        *(v0 + 288) = _swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type Tips.Status and conformance Tips.Status(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v21);

        (*(v29 + 8))(v28, v16);
        (*(v30 + 8))(v26, v31);
        goto LABEL_17;
      }

      if (swift_dynamicCast())
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 184));
        v9 = 1;
      }

      else
      {
        v10 = swift_dynamicCast();
        __swift_destroy_boxed_opaque_existential_0((v0 + 184));
        if (v10)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }
      }
    }

    else
    {
      v9 = 3;
    }

    v25 = v9;
    goto LABEL_16;
  }

LABEL_17:
  (*(*(v0 + 368) + 8))(*(v0 + 392), *(v0 + 360));
  v22 = swift_task_alloc();
  *(v0 + 456) = v22;
  *v22 = v0;
  v22[1] = closure #1 in MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:);
  v23 = *(v0 + 432);
  v24 = *(v0 + 400);

  return AsyncStream.Iterator.next(isolation:)(v24, 0, 0, v23);
}

void closure #1 in MOSuggestionTipCoordinator.statusDidChange(status:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Tips.Status();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = enum case for Tips.InvalidationReason.tipClosed(_:);
  v13 = type metadata accessor for Tips.InvalidationReason();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  v14 = *(v9 + 104);
  v14(v11, enum case for Tips.Status.invalidated(_:), v8);
  LOBYTE(v12) = static Tips.Status.== infix(_:_:)();
  v63 = *(v9 + 8);
  v15 = v63(v11, v8);
  if (v12)
  {
    v62 = v14;
    v16 = (*(*a2 + 120))(v15);
    if (v16)
    {
      v18 = v17;
      ObjectType = swift_getObjectType();
      (*(v18 + 16))(a3, ObjectType, v18);
      v16 = swift_unknownObjectRelease();
    }

    if (a3 == 1)
    {
      (*(*a2 + 168))(&v68, v16);
      v20 = a1;
      v21 = v69 != 0;
      v22 = v72;
      v23 = outlined consume of MOSuggestionPrivacyTip?(v68, v69, v70, v71);
      v24 = v21 & v22;
      a1 = v20;
      (*(*a2 + 224))(v24, v23);
      v25 = [objc_opt_self() sharedInstance];
      [v25 setOnboardingFlowCompletionStatus:3];
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static MOAngelLogger.shared);
    outlined init with copy of MOProtectedAppsManagerDelegate(a4, v66);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v61 = a4;
      v30 = v29;
      v59 = swift_slowAlloc();
      v65 = v59;
      *v30 = 136315394;
      v64 = a3;
      v31 = String.init<A>(describing:)();
      v58 = v27;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v65);
      v60 = a1;
      v34 = v33;

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      HIDWORD(v57) = v28;
      __swift_project_boxed_opaque_existential_0(v66, v67);
      v35 = dispatch thunk of Tip.id.getter();
      v37 = v36;
      __swift_destroy_boxed_opaque_existential_0(v66);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v65);

      *(v30 + 14) = v38;
      v39 = v58;
      _os_log_impl(&_mh_execute_header, v58, BYTE4(v57), "[Tip] invalidated tipType: %s, for tipID: %s", v30, 0x16u);
      swift_arrayDestroy();

      a4 = v61;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v66);
    }

    v14 = v62;
  }

  v14(v11, enum case for Tips.Status.available(_:), v8);
  v40 = static Tips.Status.== infix(_:_:)();
  v63(v11, v8);
  if (v40)
  {
    if ((*(*a2 + 272))(a3))
    {
      if ((*(*a2 + 120))())
      {
        v42 = v41;
        v43 = swift_getObjectType();
        (*(v42 + 8))(a3, v43, v42);
        swift_unknownObjectRelease();
      }

      v45 = (*(*a2 + 184))(v66);
      if (*(v44 + 8))
      {
        *(v44 + 32) = a3 == 1;
      }

      v45(v66, 0);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static MOAngelLogger.shared);
    outlined init with copy of MOProtectedAppsManagerDelegate(a4, v66);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v49 = 136315394;
      v64 = a3;
      v50 = String.init<A>(describing:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v65);

      *(v49 + 4) = v52;
      *(v49 + 12) = 2080;
      __swift_project_boxed_opaque_existential_0(v66, v67);
      v53 = dispatch thunk of Tip.id.getter();
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_0(v66);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v65);

      *(v49 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "[Tip] available tipType: %s, for tipID: %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v66);
    }
  }
}

Swift::Bool __swiftcall MOSuggestionTipCoordinator.tipShouldShow(tipType:)(MomentsUIService::MOSuggestionTipType tipType)
{
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSg_AFtMd, &_s6TipKit4TipsO6StatusOSg_AFtMR);
  v3 = __chkstk_darwin(v86);
  v82 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = (&v78 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  v80 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v78 - v10;
  v12 = __chkstk_darwin(v9);
  v84 = &v78 - v13;
  v14 = __chkstk_darwin(v12);
  v79 = &v78 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v78 - v17;
  __chkstk_darwin(v16);
  v83 = &v78 - v19;
  v20 = type metadata accessor for Tips.Status();
  v88 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v85 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v87 = &v78 - v23;
  v24 = objc_opt_self();
  v25 = [v24 sharedInstance];
  v26 = [v25 onboardingFlowCompletionStatus];

  if (v26 != 1)
  {
    v27 = [v24 sharedInstance];
    v26 = [v27 onboardingFlowCompletionStatus];

    LODWORD(v26) = v26 == 0;
  }

  v28 = [v24 sharedInstance];
  v29 = [v28 isOnboarded];

  if (tipType <= MomentsUIService_MOSuggestionTipType_privacy)
  {
    v30 = v20;
    if (tipType)
    {
      (*(*v1 + 168))(&v94);
      if (v95)
      {
        v89 = v94;
        v90 = v95;
        v91 = v96;
        v92 = v97;
        v93 = v98 & 1;
        lazy protocol witness table accessor for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip();
        v42 = v83;
        Tip.status.getter();

        v43 = v88;
        v44 = *(v88 + 56);
        v44(v42, 0, 1, v30);
      }

      else
      {
        v43 = v88;
        v44 = *(v88 + 56);
        v42 = v83;
        v44(v83, 1, 1, v30);
      }

      (*(v43 + 104))(v18, enum case for Tips.Status.available(_:), v30);
      v44(v18, 0, 1, v30);
      v57 = *(v86 + 48);
      v58 = v81;
      outlined init with copy of (String, Date?)(v42, v81, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
      outlined init with copy of (String, Date?)(v18, v58 + v57, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
      v59 = v43;
      v60 = v58;
      v61 = *(v59 + 48);
      if (v61(v60, 1, v30) == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v42, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
        if (v61(v60 + v57, 1, v30) == 1)
        {
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v60, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
          return v29 & 1;
        }
      }

      else
      {
        v62 = v79;
        outlined init with copy of (String, Date?)(v60, v79, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
        if (v61(v60 + v57, 1, v30) != 1)
        {
          v73 = v87;
          v74 = v88;
          (*(v88 + 32))(v87, v60 + v57, v30);
          lazy protocol witness table accessor for type Tips.Status and conformance Tips.Status(&lazy protocol witness table cache variable for type Tips.Status and conformance Tips.Status, &type metadata accessor for Tips.Status, &protocol conformance descriptor for Tips.Status);
          v75 = dispatch thunk of static Equatable.== infix(_:_:)();
          v76 = *(v74 + 8);
          v76(v73, v30);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v83, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
          v76(v62, v30);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v60, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
          v29 &= v75;
          return v29 & 1;
        }

        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v83, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
        (*(v88 + 8))(v62, v30);
      }

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v60, &_s6TipKit4TipsO6StatusOSg_AFtMd, &_s6TipKit4TipsO6StatusOSg_AFtMR);
      v29 = 0;
      return v29 & 1;
    }

    if (v26)
    {
      LOBYTE(v94) = (*(*v1 + 144))() & 1;
      lazy protocol witness table accessor for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip();
      v31 = v87;
      Tip.status.getter();
      v32 = enum case for Tips.InvalidationReason.tipClosed(_:);
      v33 = type metadata accessor for Tips.InvalidationReason();
      v34 = v85;
      (*(*(v33 - 8) + 104))(v85, v32, v33);
      v35 = v88;
      (*(v88 + 104))(v34, enum case for Tips.Status.invalidated(_:), v20);
      lazy protocol witness table accessor for type Tips.Status and conformance Tips.Status(&lazy protocol witness table cache variable for type Tips.Status and conformance Tips.Status, &type metadata accessor for Tips.Status, &protocol conformance descriptor for Tips.Status);
      LOBYTE(v32) = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v35 + 8);
      v36(v34, v20);
      v36(v31, v20);
      v29 = v32 ^ 1;
      return v29 & 1;
    }

LABEL_10:
    v29 = 0;
    return v29 & 1;
  }

  if (tipType != MomentsUIService_MOSuggestionTipType_stateOfMind)
  {
    goto LABEL_10;
  }

  v37 = v20;
  v38 = *(*v1 + 168);
  v83 = v1;
  v38(&v94);
  if (v95)
  {
    v89 = v94;
    v90 = v95;
    v91 = v96;
    v92 = v97;
    v93 = v98 & 1;
    lazy protocol witness table accessor for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip();
    v39 = v84;
    Tip.status.getter();

    v40 = v88;
    v41 = *(v88 + 56);
    v41(v39, 0, 1, v37);
  }

  else
  {
    v40 = v88;
    v41 = *(v88 + 56);
    v39 = v84;
    v41(v84, 1, 1, v37);
  }

  v45 = v82;
  v46 = enum case for Tips.InvalidationReason.tipClosed(_:);
  v47 = type metadata accessor for Tips.InvalidationReason();
  (*(*(v47 - 8) + 104))(v11, v46, v47);
  v81 = *(v40 + 104);
  v82 = (v40 + 104);
  (v81)(v11, enum case for Tips.Status.invalidated(_:), v37);
  v41(v11, 0, 1, v37);
  v48 = *(v86 + 48);
  outlined init with copy of (String, Date?)(v39, v45, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  outlined init with copy of (String, Date?)(v11, v45 + v48, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  v49 = *(v40 + 48);
  v50 = v49(v45, 1, v37);
  v51 = v83;
  if (v50 != 1)
  {
    v56 = v80;
    outlined init with copy of (String, Date?)(v45, v80, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
    v53 = v45;
    if (v49(v45 + v48, 1, v37) != 1)
    {
      v63 = v87;
      v54 = v88;
      (*(v88 + 32))(v87, v53 + v48, v37);
      lazy protocol witness table accessor for type Tips.Status and conformance Tips.Status(&lazy protocol witness table cache variable for type Tips.Status and conformance Tips.Status, &type metadata accessor for Tips.Status, &protocol conformance descriptor for Tips.Status);
      v64 = dispatch thunk of static Equatable.== infix(_:_:)();
      v51 = v83;
      v65 = v64;
      v66 = *(v54 + 8);
      v66(v63, v37);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v84, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
      v66(v80, v37);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v53, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
      v55 = v65 ^ 1;
      goto LABEL_28;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v84, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
    v54 = v88;
    (*(v88 + 8))(v56, v37);
    goto LABEL_19;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v39, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  v52 = v49(v45 + v48, 1, v37);
  v53 = v45;
  v54 = v88;
  if (v52 != 1)
  {
LABEL_19:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v53, &_s6TipKit4TipsO6StatusOSg_AFtMd, &_s6TipKit4TipsO6StatusOSg_AFtMR);
    v55 = 1;
    goto LABEL_28;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v53, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  v55 = 0;
LABEL_28:
  v67 = [objc_opt_self() sharedInstance];
  v68 = [v67 getStateForSetting:9];

  LOBYTE(v89) = (*(*v51 + 192))() & 1;
  lazy protocol witness table accessor for type MOSuggestionStateOfMindTip and conformance MOSuggestionStateOfMindTip();
  v69 = v87;
  Tip.status.getter();
  v70 = v85;
  (v81)(v85, enum case for Tips.Status.available(_:), v37);
  LOBYTE(v67) = static Tips.Status.== infix(_:_:)();
  v71 = *(v54 + 8);
  v71(v70, v37);
  v72 = (v71)(v69, v37);
  v29 = 0;
  if ((v67 & 1) != 0 && (v68 & 1) == 0 && (v55 & 1) == 0)
  {
    v29 = (*(*v83 + 216))(v72) ^ 1;
  }

  return v29 & 1;
}

uint64_t *MOSuggestionTipCoordinator.deinit()
{
  outlined destroy of weak MOSuggestionSheetInterstitialGridInteractionsDelegate?((v0 + 2));
  outlined consume of MOSuggestionPrivacyTip?(v0[5], v0[6], v0[7], v0[8]);
  return v0;
}

double MOSuggestionTipCoordinator.__deallocating_deinit()
{
  outlined destroy of weak MOSuggestionSheetInterstitialGridInteractionsDelegate?((v0 + 2));
  outlined consume of MOSuggestionPrivacyTip?(v0[5], v0[6], v0[7], v0[8]);

  swift_deallocClassInstance();
  return result;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionTipType and conformance MOSuggestionTipType()
{
  result = lazy protocol witness table cache variable for type MOSuggestionTipType and conformance MOSuggestionTipType;
  if (!lazy protocol witness table cache variable for type MOSuggestionTipType and conformance MOSuggestionTipType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionTipType and conformance MOSuggestionTipType);
  }

  return result;
}

uint64_t sub_10011BB2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10011BB78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 128);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_10011BBDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

double sub_10011BC74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 168))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_10011BCDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *(**a2 + 176);
  outlined init with copy of (String, Date?)(v6, v5, &_s16MomentsUIService22MOSuggestionPrivacyTipVSgMd, &_s16MomentsUIService22MOSuggestionPrivacyTipVSgMR);
  return v3(v6);
}

uint64_t sub_10011BD60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10011BDF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10011BEC4(__n128 a1)
{
  swift_weakDestroy();

  return _swift_deallocObject(v1, 24, 7);
}

uint64_t sub_10011BEFC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t partial apply for closure #1 in MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #1 in MOSuggestionTipCoordinator.observeTipStatusUpdates(tip:)(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_10011C004()
{
  v1 = type metadata accessor for Tips.Status();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

void partial apply for closure #1 in MOSuggestionTipCoordinator.statusDidChange(status:for:)()
{
  v1 = *(type metadata accessor for Tips.Status() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  closure #1 in MOSuggestionTipCoordinator.statusDidChange(status:for:)(v0 + v2, v5, v6, v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type Tips.Status and conformance Tips.Status(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MOEventBundle.annotationState.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 suggestionEngagementEvents];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  if ([v5 count] < 1)
  {

    return 1;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static MOAngelLogger.shared);
  v8 = v6;
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *&v35 = swift_slowAlloc();
    v36 = v35;
    *v12 = 138412546;
    *(v12 + 4) = v8;
    *v13 = v6;
    *(v12 + 12) = 2080;
    v14 = v8;
    v15 = [v9 bundleIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type UUID and conformance UUID();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v2 + 8))(v4, v1);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v36);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "[AnnotationState] Engagement events=%@ id=%s", v12, 0x16u);
    outlined destroy of NSObject?(v34);

    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27MOSuggestionEngagementEventaGMd, &_ss23_ContiguousArrayStorageCySo27MOSuggestionEngagementEventaGMR);
  inited = swift_initStackObject();
  v35 = xmmword_1002A4A00;
  *(inited + 16) = xmmword_1002A4A00;
  v21 = MOSuggestionEngagementEventHidden;
  *(inited + 32) = MOSuggestionEngagementEventHidden;
  v22 = MOSuggestionEngagementEventDeleted;
  *(inited + 40) = MOSuggestionEngagementEventDeleted;
  v23 = v21;
  v24 = v22;
  v25 = [v8 containsObject:*(inited + 32)];
  if ((v25 & 1) == 0)
  {
    v25 = [v8 containsObject:*(inited + 40)];
  }

  swift_setDeallocating();
  type metadata accessor for MOSuggestionEngagementEvent(0);
  swift_arrayDestroy();
  if (v25)
  {

    return 0;
  }

  else
  {
    v27 = swift_initStackObject();
    *(v27 + 16) = v35;
    v28 = MOSuggestionEngagementEventSelected;
    *(v27 + 32) = MOSuggestionEngagementEventSelected;
    v29 = MOSuggestionEngagementEventQuickAddEntry;
    *(v27 + 40) = MOSuggestionEngagementEventQuickAddEntry;
    v30 = v28;
    v31 = v29;
    if ([v8 containsObject:v30])
    {
      v32 = 2;
    }

    else if ([v8 containsObject:*(v27 + 40)])
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    return v32;
  }
}

Swift::Bool __swiftcall NSMutableSet.containsAnyOf(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1._rawValue + 32);
  v4 = v2 - 1;
  do
  {
    v5 = v4;
    v6 = *v3++;
    result = [v1 containsObject:v6];
    if (result)
    {
      break;
    }

    v4 = v5 - 1;
  }

  while (v5);
  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MOEventBundleAnnotationState and conformance MOEventBundleAnnotationState()
{
  result = lazy protocol witness table cache variable for type MOEventBundleAnnotationState and conformance MOEventBundleAnnotationState;
  if (!lazy protocol witness table cache variable for type MOEventBundleAnnotationState and conformance MOEventBundleAnnotationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOEventBundleAnnotationState and conformance MOEventBundleAnnotationState);
  }

  return result;
}

size_t MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)(Swift::Bool a1, Swift::Int a2, uint64_t a3, Swift::Bool a4, uint64_t a5, uint64_t a6)
{
  v69 = a5;
  v70 = a6;
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v72 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v73 = a3;
  v71 = v6;
  result = MOSuggestionCollectionViewCellViewModel.prioritizedAssetReferences(previewOnly:previewMax:style:typeSorted:)(a1, a2, a3, a4);
  if (result)
  {
    v18 = result;
    v75 = v16;
    v19 = result >> 62;
    if (result >> 62)
    {
      goto LABEL_48;
    }

    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    specialized MOSuggestionCollectionViewCellViewModel.assetSizes(style:assetCount:)(v73, v20);
    v74 = v21;
    if (!v21)
    {

      return 0;
    }

    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static MOAngelLogger.assets);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    v25 = os_log_type_enabled(v23, v24);
    v78 = v18;
    v59 = v20;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v79 = v27;
      *v26 = 134218498;
      *(v26 + 4) = v73;
      *(v26 + 12) = 2048;
      v18 = v78;
      if (v19)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v26 + 14) = v28;

      *(v26 + 22) = 2080;
      v31 = Array.debugDescription.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v79);

      *(v26 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[MOSuggestionCollectionViewCellViewModel] style: %ld, assetReferencesCount: %ld, assetSizes: %s", v26, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v27);

      v29 = v18 & 0xFFFFFFFFFFFFFF8;
      if (!v19)
      {
LABEL_16:
        v30 = *(v29 + 16);
        v19 = v75;
        if (v30)
        {
          goto LABEL_17;
        }

LABEL_40:

        return v59;
      }
    }

    else
    {

      v29 = v18 & 0xFFFFFFFFFFFFFF8;
      if (!v19)
      {
        goto LABEL_16;
      }
    }

    v30 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v75;
    if (v30)
    {
LABEL_17:
      v34 = 0;
      v66 = v18 & 0xFFFFFFFFFFFFFF8;
      v67 = v18 & 0xC000000000000001;
      v65 = (v12 + 16);
      v61 = v74 + 32;
      v60 = (v12 + 8);
      v64 = xmmword_1002A4A70;
      v62 = v30;
      v63 = v11;
      while (1)
      {
        if (v67)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v35;
        }

        else
        {
          if (v34 >= *(v66 + 16))
          {
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            v20 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v12 = *(v18 + 8 * v34 + 32);
        }

        v36 = (*(*v12 + 120))(v35);
        v37 = specialized static MOBundleProcessingSession.signpostNameForAssetLoading(assetType:)(v36);
        v77 = v38;
        v40 = v39;

        if (one-time initialization token for assetRendering != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v41, static MOAngelSignposter.assetRendering);
        OSSignposter.logHandle.getter();
        OSSignpostID.init(log:)();
        v42 = OSSignposter.logHandle.getter();
        v43 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          if (v40)
          {
            if (v37 >> 32)
            {
              goto LABEL_44;
            }

            if ((v37 & 0xFFFFF800) == 0xD800)
            {
              goto LABEL_47;
            }

            if (v37 >> 16 > 0x10)
            {
              goto LABEL_46;
            }

            v44 = &v80;
          }

          else
          {
            if (!v37)
            {
              goto LABEL_45;
            }

            v44 = v37;
          }

          v18 = swift_slowAlloc();
          *v18 = 0;
          v45 = v75;
          v46 = OSSignpostID.rawValue.getter();
          v47 = v44;
          v19 = v45;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, v43, v46, v47, "", v18, 2u);
        }

        (*v65)(v72, v19, v11);
        type metadata accessor for OSSignpostIntervalState();
        swift_allocObject();
        v19 = OSSignpostIntervalState.init(id:isOpen:)();
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v48 = static MOSuggestionAssetCacheManager.shared;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v49 = swift_allocObject();
        *(v49 + 16) = v64;
        *(v49 + 32) = v12;
        if (v34 >= *(v74 + 16))
        {
          goto LABEL_43;
        }

        v50 = v49;
        v76 = *(v61 + v34);
        v51 = swift_allocObject();
        swift_weakInit();
        v52 = swift_allocObject();
        v53 = v77;
        *(v52 + 16) = v37;
        *(v52 + 24) = v53;
        *(v52 + 32) = v40;
        *(v52 + 40) = v19;
        *(v52 + 48) = v51;
        v54 = v69;
        v55 = v70;
        *(v52 + 56) = v34;
        *(v52 + 64) = v54;
        *(v52 + 72) = v55;
        *(v52 + 80) = v73;
        v56 = v68;
        *(v52 + 88) = v78;
        *(v52 + 96) = v56;
        v57 = one-time initialization token for defaultQueue;

        if (v57 != -1)
        {
          swift_once();
        }

        ++v34;
        (*(*v48 + 232))(v50, 0, static MOSuggestionAssetCacheManager.defaultQueue, v76, partial apply for closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:), v52);

        v19 = v75;
        v11 = v63;
        (*v60)(v75, v63);

        v18 = v78;
        if (v62 == v34)
        {
          goto LABEL_40;
        }
      }
    }

    goto LABEL_40;
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall MOSuggestionCollectionViewCellViewModel.prioritizedAssetReferences(previewOnly:previewMax:style:typeSorted:)(Swift::Bool previewOnly, Swift::Int previewMax, MomentsUIService::SuggestionCellStyle style, Swift::Bool typeSorted)
{
  if (previewOnly)
  {
    result = MOEventBundle.orderedAssetReferencesForPreview(max:)(previewMax);
    rawValue = result.value._rawValue;
    goto LABEL_6;
  }

  result = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  rawValue = result.value._rawValue;
  if (!typeSorted)
  {
LABEL_6:
    if (rawValue)
    {
      goto LABEL_7;
    }

LABEL_28:
    result.value._rawValue = 0;
    return result;
  }

  if (!result.value._rawValue)
  {
    goto LABEL_28;
  }

  v47 = specialized Array._copyToContiguousArray()(v8, v7);
  specialized MutableCollection<>.sort(by:)(&v47);

  rawValue = v47;
LABEL_7:
  v47 = rawValue;
  v44 = rawValue >> 62;
  if (rawValue >> 62)
  {
LABEL_76:
    v46 = rawValue & 0xFFFFFFFFFFFFFF8;
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v46 = rawValue & 0xFFFFFFFFFFFFFF8;
    v45 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v45 == v9)
    {

      goto LABEL_73;
    }

    if ((rawValue & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v11;
    }

    else
    {
      if (v9 >= *(v46 + 16))
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v10 = *&rawValue[v9 + 4];
    }

    v12 = *(*v10 + 120);
    v13 = v12(v11);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {

      goto LABEL_33;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {

      goto LABEL_33;
    }

    v21 = v12(v20);
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
    {
      break;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_75;
    }
  }

LABEL_33:

  if (style == MomentsUIService_SuggestionCellStyle_halfWidth)
  {
    if (v44)
    {
      result.value._rawValue = _CocoaArrayWrapper.endIndex.getter();
      if (v9 > 3)
      {
        goto LABEL_73;
      }
    }

    else
    {
      result.value._rawValue = *(v46 + 16);
      if (v9 > 3)
      {
        goto LABEL_73;
      }
    }

    if (result.value._rawValue >= 4)
    {
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static MOAngelLogger.assets);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_71;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "[MOEventBundle] (Asset Prioritization Special Case) Adjusting map position to fix in top right (small), HALFWIDTH";
      goto LABEL_70;
    }
  }

  else if (style == MomentsUIService_SuggestionCellStyle_fullWidth)
  {
    if (v44)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v9 > 4 || v29 < 5)
      {
        v41 = _CocoaArrayWrapper.endIndex.getter();
        if (v9 == 2 || v41 != 3)
        {
          result.value._rawValue = _CocoaArrayWrapper.endIndex.getter();
LABEL_64:
          if (v9 > 2 || result.value._rawValue != 4)
          {
            goto LABEL_73;
          }

          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          __swift_project_value_buffer(v43, static MOAngelLogger.assets);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v37, v38))
          {
            goto LABEL_71;
          }

          v39 = swift_slowAlloc();
          *v39 = 0;
          v40 = "[MOEventBundle] (Asset Prioritization Special Case) Adjusting map position to fix in top right (mediumHoriziontal), FULLWIDTH";
          goto LABEL_70;
        }

LABEL_59:
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static MOAngelLogger.assets);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v37, v38))
        {
          goto LABEL_71;
        }

        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = "[MOEventBundle] (Asset Prioritization Special Case) Adjusting map position to fix in top right (mediumHoriziontal top), FULLWIDTH";
LABEL_70:
        _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);

LABEL_71:

        v34 = v9;
        v35 = 1;
LABEL_72:
        specialized MutableCollection.swapAt(_:_:)(v34, v35);
        goto LABEL_73;
      }
    }

    else
    {
      result.value._rawValue = *(v46 + 16);
      if (v9 > 4 || result.value._rawValue <= 4)
      {
        if (v9 == 2 || result.value._rawValue != 3)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }
    }

    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static MOAngelLogger.assets);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "[MOEventBundle] (Asset Prioritization Special Case) Adjusting map position to fix in top right (small), FULLWIDTH", v33, 2u);
    }

    v34 = v9;
    v35 = 2;
    goto LABEL_72;
  }

LABEL_73:
  result.value._rawValue = v47;
  return result;
}

void specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

void specialized Array.append<A>(contentsOf:)(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t key path getter for MOSuggestionCollectionViewModel.reloadCollectionViewHandler : MOSuggestionCollectionViewModel@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 344))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned Bool) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MOSuggestionCollectionViewModel.reloadCollectionViewHandler : MOSuggestionCollectionViewModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Bool) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 352);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t MOSuggestionCollectionViewModel.reloadCollectionViewHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v1);
  return v1;
}

double MOSuggestionCollectionViewModel.reloadCollectionViewHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
}

uint64_t key path getter for MOSuggestionCollectionViewModel.reloadCollectionViewIndexHandler : MOSuggestionCollectionViewModel@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 368))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MOSuggestionCollectionViewModel.reloadCollectionViewIndexHandler : MOSuggestionCollectionViewModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexPath) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 376);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t MOSuggestionCollectionViewModel.reloadCollectionViewIndexHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v1);
  return v1;
}

double MOSuggestionCollectionViewModel.reloadCollectionViewIndexHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
}

uint64_t key path getter for MOSuggestionCollectionViewModel.bundleLoadingChangedHandler : MOSuggestionCollectionViewModel@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 392))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MOSuggestionCollectionViewModel.bundleLoadingChangedHandler : MOSuggestionCollectionViewModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 400);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t MOSuggestionCollectionViewModel.bundleLoadingChangedHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v1);
  return v1;
}

double MOSuggestionCollectionViewModel.bundleLoadingChangedHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
}

uint64_t MOSuggestionCollectionViewModel.collectionViewDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + 128, &_s16MomentsUIService34MOSuggestionCollectionViewDelegate_pSgMd, &_s16MomentsUIService34MOSuggestionCollectionViewDelegate_pSgMR);
  return swift_endAccess();
}

uint64_t MOSuggestionCollectionViewModel.currentSegment.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 168) = a1 & 1;
  return result;
}

void *MOSuggestionCollectionViewModel.options.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

void MOSuggestionCollectionViewModel.options.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

uint64_t MOSuggestionCollectionViewModel.hasDismissedATip.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 192) = a1;
  return result;
}

double MOSuggestionCollectionViewModel.targetProtectedApps.getter()
{
  swift_beginAccess();

  return result;
}

double MOSuggestionCollectionViewModel.targetProtectedApps.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 208) = a1;

  return result;
}

uint64_t MOSuggestionCollectionViewModel.isCurrentlyPresentingProtectedShield.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 216) = a1;
  return result;
}

uint64_t MOSuggestionCollectionViewModel.hasSuccessfullyPulledToRefresh.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 217) = a1;
  return result;
}

uint64_t one-time initialization function for viewmodelQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  v8 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static MOSuggestionCollectionViewModel.viewmodelQueue = result;
  return result;
}

uint64_t *MOSuggestionCollectionViewModel.viewmodelQueue.unsafeMutableAddressor()
{
  if (one-time initialization token for viewmodelQueue != -1)
  {
    swift_once();
  }

  return &static MOSuggestionCollectionViewModel.viewmodelQueue;
}

id static MOSuggestionCollectionViewModel.viewmodelQueue.getter()
{
  if (one-time initialization token for viewmodelQueue != -1)
  {
    swift_once();
  }

  v1 = static MOSuggestionCollectionViewModel.viewmodelQueue;

  return v1;
}

uint64_t MOSuggestionCollectionViewModel.__allocating_init(clientDetails:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = swift_allocObject();
  MOSuggestionCollectionViewModel.init(clientDetails:clientId:)(v7, a2, a3, a4);
  return v8;
}

uint64_t MOSuggestionCollectionViewModel.init(clientDetails:clientId:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 48) = _swiftEmptyArrayStorage;
  *(v5 + 56) = _swiftEmptyArrayStorage;
  *(v5 + 64) = &_swiftEmptyDictionarySingleton;
  *(v5 + 72) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_Sb_SbtTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 153) = 0u;
  *(v5 + 176) = xmmword_1002A8980;
  *(v5 + 192) = 0;
  v10 = [objc_allocWithZone(type metadata accessor for MOProtectedAppsManager()) init];
  *(v5 + 200) = v10;
  swift_beginAccess();
  *(v5 + 208) = static MOProtectedAppSource.allFixedApps;
  *(v5 + 216) = 0;
  v11 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionCollectionViewModel_currentFetchSignpostState;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os23OSSignpostIntervalStateC_AA0B2IDVtMd, &_s2os23OSSignpostIntervalStateC_AA0B2IDVtMR);
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionCollectionViewModel_isLoadingBundles) = 0;
  *(v5 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionCollectionViewModel_shouldShowSupportingTextBelowIndicator) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v15[3] = type metadata accessor for MOSuggestionCollectionViewModel(0);
  v15[4] = &protocol witness table for MOSuggestionCollectionViewModel;
  v15[0] = v5;
  v13 = *((swift_isaMask & *v10) + 0x70);

  v13(v15);
  return v5;
}

id MOSuggestionCollectionViewModel.showNewEntryHeader.getter()
{
  v1 = (*(*v0 + 464))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 showBlankEntryButton];

  return v3;
}

uint64_t MOSuggestionCollectionViewModel.recentsTabSectionIndexOffset.getter()
{
  if ((*(*v0 + 440))())
  {
    return (*(*v0 + 616))() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MOSuggestionCollectionViewModel.isLoadingBundles.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionCollectionViewModel_isLoadingBundles;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*MOSuggestionCollectionViewModel.isLoadingBundles.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionCollectionViewModel.isLoadingBundles.modify;
}

Swift::Int __swiftcall MOSuggestionCollectionViewModel.bundleCount(section:)(Swift::Int section)
{
  if (((*(*v1 + 440))() & 1) == 0 || ((*(*v1 + 616))() & 1) == 0 || section)
  {
    swift_beginAccess();
    v3 = v1[7];
    v4 = *(*v1 + 632);

    v6 = v4(v5);
    v7 = section - v6;
    if (__OFSUB__(section, v6))
    {
      __break(1u);
      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0 && v7 < *(v3 + 16))
    {
      v8 = *(v3 + 8 * v7 + 32);

      if (!(v8 >> 62))
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

        return v9;
      }

LABEL_14:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t MOSuggestionCollectionViewModel.sectionCount.getter()
{
  if ((*(*v0 + 640))())
  {
    return 1;
  }

  v2 = swift_beginAccess();
  v3 = *(v0[7] + 16);
  v4 = (*(*v0 + 632))(v2);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

void MOSuggestionCollectionViewModel.date(section:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  swift_beginAccess();
  v12 = *(v2 + 56);
  v13 = *(*v2 + 632);

  v15 = v13(v14);
  v16 = a1 - v15;
  if (__OFSUB__(a1, v15))
  {
    __break(1u);
  }

  else
  {
    if (v16 < 0 || v16 >= *(v12 + 16))
    {
      goto LABEL_10;
    }

    v2 = *(v12 + 8 * v16 + 32);

    if (!(v2 >> 62))
    {
      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

LABEL_10:

      goto LABEL_11;
    }
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v18 = *(v21 + 16);
    swift_unknownObjectRelease();
    if (v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v2 + 32);

    v18 = *(v17 + 16);

    if (v18)
    {
LABEL_9:
      v19 = [v18 displayStartDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = *(v6 + 32);
      v20(v11, v8, v5);
      (*(v6 + 56))(v11, 0, 1, v5);
      v20(a2, v11, v5);
      return;
    }
  }

LABEL_11:
  (*(v6 + 56))(v11, 1, 1, v5);
  static Date.now.getter();
  if ((*(v6 + 48))(v11, 1, v5) != 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }
}

uint64_t MOSuggestionCollectionViewModel.shouldShowSupportingTextBelowIndicator.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionCollectionViewModel_shouldShowSupportingTextBelowIndicator;
  swift_beginAccess();
  return *(v0 + v1);
}

double MOSuggestionCollectionViewModel.isLoadingBundles.setter(char a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_beginAccess();
  *(v2 + v4) = a1;
  v6 = (*(*v2 + 392))(v5);
  if (v6)
  {
    v9 = v7;
    v10 = v6;
    v6();
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v10, v9);
  }

  return result;
}

uint64_t (*MOSuggestionCollectionViewModel.shouldShowSupportingTextBelowIndicator.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionCollectionViewModel.shouldShowSupportingTextBelowIndicator.modify;
}

double MOSuggestionCollectionViewModel.isLoadingBundles.modify(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = (*(**(a1 + 24) + 392))(v4);
    if (v6)
    {
      v8 = v7;
      v9 = v6;
      v6();

      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v9, v8);
    }
  }

  return result;
}

Swift::Bool __swiftcall MOSuggestionCollectionViewModel.shouldShowShowMoreFooterFor(section:)(Swift::Int section)
{
  if (((*(*v1 + 440))() & 1) == 0)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v3 = v1[8];
  v4 = *(*v1 + 632);

  v6 = v4(v5);
  v7 = __OFSUB__(section, v6);
  v8 = section - v6;
  if (v7)
  {
    __break(1u);
    return v8;
  }

  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v8);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:
    LOBYTE(v8) = 0;
    return v8;
  }

  LOBYTE(v8) = 1;
  return v8;
}

Swift::Bool __swiftcall MOSuggestionCollectionViewModel.shouldAllowPullToRefresh()()
{
  if ((*(*v0 + 560))())
  {
    return 0;
  }

  v5[3] = &type metadata for MOMomentsFeatureFlags;
  v5[4] = lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags();
  LOBYTE(v5[0]) = 4;
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isOnboarded];

  return v3;
}

void MOSuggestionCollectionViewModel._sectionedSuggestionCellViewModelsIndexPath(suggestionID:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v5 + 16);

  v8 = 0;
  while (1)
  {
    if (v6 == v8)
    {

      v13 = 1;
      goto LABEL_7;
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    v9 = v8 + 1;
    v10 = *(v5 + 8 * v8 + 32);
    __chkstk_darwin(v7);
    v15[2] = a1;

    specialized Collection.firstIndex(where:)(partial apply for closure #1 in MOSuggestionCollectionViewModel._sectionedSuggestionCellViewModelsIndexPath(suggestionID:), v15, v10);
    v12 = v11;

    v8 = v9;
    if ((v12 & 1) == 0)
    {

      IndexPath.init(row:section:)();
      v13 = 0;
LABEL_7:
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
      return;
    }
  }

  __break(1u);
}

uint64_t closure #1 in MOSuggestionCollectionViewModel._sectionedSuggestionCellViewModelsIndexPath(suggestionID:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*a1 + 16) suggestionID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t MOSuggestionCollectionViewModel.cellViewModelIndexPath(suggestionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v4 = type metadata accessor for UUID();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = __chkstk_darwin(v4);
  v73 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v72 = (&v70 - v8);
  __chkstk_darwin(v7);
  v10 = &v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v70 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v74 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v70 - v21;
  MOSuggestionCollectionViewModel._sectionedSuggestionCellViewModelsIndexPath(suggestionID:)(a1, v16);
  v23 = *(v18 + 48);
  if (v23(v16, 1, v17) != 1)
  {
    v73 = *(v18 + 32);
    (v73)(v22, v16, v17);
    v74 = v17;
    v27 = v18;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static MOAngelLogger.shared);
    v45 = v76;
    v44 = v77;
    (*(v76 + 16))(v10, a1, v77);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v79 = v72;
      *v48 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v27;
      v51 = v50;
      (*(v45 + 8))(v10, v44);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v79);
      v26 = v74;
      v27 = v75;

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "[HandleReviewSuggestion] Found suggestionID=%s in Recommended", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);

      v53 = v78;
    }

    else
    {

      (*(v45 + 8))(v10, v44);
      v53 = v78;
      v26 = v74;
    }

    (v73)(v53, v22, v26);
    goto LABEL_21;
  }

  v75 = v18;
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v24 = (*v2 + 824);
  v25 = *v24;
  (*v24)(1, 1, 1);
  MOSuggestionCollectionViewModel._sectionedSuggestionCellViewModelsIndexPath(suggestionID:)(a1, v14);
  v26 = v17;
  if (v23(v14, 1, v17) != 1)
  {
    v27 = v75;
    v54 = *(v75 + 32);
    (v54)(v74, v14, v17);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static MOAngelLogger.shared);
    v56 = v76;
    v57 = v77;
    v58 = v72;
    (*(v76 + 16))(v72, a1, v77);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v73 = v54;
      v62 = v61;
      v63 = v58;
      v71 = swift_slowAlloc();
      v79 = v71;
      *v62 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      (*(v56 + 8))(v63, v57);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v79);
      v27 = v75;

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v59, v60, "[HandleReviewSuggestion] Found suggestionID=%s in Recents", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);

      v54 = v73;
    }

    else
    {

      (*(v56 + 8))(v58, v57);
    }

    v53 = v78;
    (v54)(v78, v74, v26);
LABEL_21:
    v68 = 0;
    return (*(v27 + 56))(v53, v68, 1, v26);
  }

  v72 = v25;
  v74 = v24;
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v27 = v75;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static MOAngelLogger.shared);
  v29 = v76;
  v30 = v77;
  v31 = v73;
  (*(v76 + 16))(v73, a1, v77);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v71 = v2;
    v35 = v34;
    v36 = swift_slowAlloc();
    v79 = v36;
    *v35 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v31;
    v39 = v26;
    v41 = v40;
    (*(v29 + 8))(v38, v30);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v41, &v79);
    v26 = v39;

    *(v35 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "[HandleReviewSuggestion] Did not find suggestionID=%s anywhere, fallbacking to recommended", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {

    (*(v29 + 8))(v31, v30);
  }

  (v72)(0, 1, 1);
  v68 = 1;
  v53 = v78;
  return (*(v27 + 56))(v53, v68, 1, v26);
}