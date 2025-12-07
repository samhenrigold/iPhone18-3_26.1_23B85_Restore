uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Artist(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Artist.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return Artist.shareURL.getter(v2);
}

{

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist, 0, 0);
}

uint64_t Composer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Composer.failureMessage.getter()
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Composer()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Composer(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t Curator.failureMessage.getter()
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Curator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance Curator, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Curator()
{
  Curator.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Curator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance EditorialItem(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance EditorialItem, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance EditorialItem()
{
  EditorialItem.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance EditorialItem(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t Genre.failureMessage.getter()
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Genre(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance Genre, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Genre()
{
  Genre.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Genre(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t MusicMovie.failureMessage.getter()
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

uint64_t MusicMovie.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal0A5MovieVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal0A5MovieVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A5MovieVSgMd, &_s16MusicKitInternal0A5MovieVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal0A5MovieVGMd, &_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal0A5MovieVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal0A5MovieVGMd, &_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal0A5MovieVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(MusicMovie.shareURL.getter, 0, 0);
}

uint64_t MusicMovie.shareURL.getter()
{
  v1 = v0[16];
  MusicMovie.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = MusicMovie.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for MusicMovie();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = MusicMovie.shareURL.getter;
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
    v2 = MusicMovie.shareURL.getter;
  }

  else
  {

    v2 = MusicMovie.shareURL.getter;
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
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal0A5MovieVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal0A5MovieVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<MusicMovie> and conformance MusicItemCollection<A>, &type metadata accessor for MusicMovie, v2);
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
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal0A5MovieVSgMd, &_s16MusicKitInternal0A5MovieVSgMR);
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
    MusicMovie.url.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for music movie catalogID: %{public}s: %{public}@", v4, 0x16u);
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance MusicMovie(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return MusicMovie.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicMovie(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicMovie, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicMovie()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return MusicMovie.shareURL.getter(v2);
}

uint64_t MusicVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA0A5VideoVGMd, &_s8MusicKit0A14ItemCollectionVyAA0A5VideoVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A5VideoVSgMd, &_s8MusicKit0A5VideoVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA0A5VideoVGMd, &_s8MusicKit0A23CatalogResourceResponseVyAA0A5VideoVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA0A5VideoVGMd, &_s8MusicKit0A22CatalogResourceRequestVyAA0A5VideoVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(MusicVideo.shareURL.getter, 0, 0);
}

uint64_t MusicVideo.shareURL.getter()
{
  v1 = v0[16];
  MusicVideo.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = MusicVideo.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for MusicVideo();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type MusicVideo and conformance MusicVideo, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = MusicVideo.shareURL.getter;
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
    v2 = MusicVideo.shareURL.getter;
  }

  else
  {

    v2 = MusicVideo.shareURL.getter;
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
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA0A5VideoVGMd, &_s8MusicKit0A14ItemCollectionVyAA0A5VideoVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<MusicVideo> and conformance MusicItemCollection<A>, &type metadata accessor for MusicVideo, v2);
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
    outlined destroy of TaskPriority?(v12, &_s8MusicKit0A5VideoVSgMd, &_s8MusicKit0A5VideoVSgMR);
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
    MusicVideo.url.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for music video catalogID: %{public}s: %{public}@", v4, 0x16u);
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance MusicVideo(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return MusicVideo.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicVideo(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicVideo, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicVideo()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return MusicVideo.shareURL.getter(v2);
}

uint64_t Playlist.failureMessage.getter()
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

uint64_t Playlist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA8PlaylistVGMd, &_s8MusicKit0A23CatalogResourceResponseVyAA8PlaylistVGMR);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA8PlaylistVGMd, &_s8MusicKit0A22CatalogResourceRequestVyAA8PlaylistVGMR);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(Playlist.shareURL.getter, 0, 0);
}

uint64_t Playlist.shareURL.getter()
{
  v1 = v0[17];
  Playlist.url.getter();
  v2 = type metadata accessor for URL();
  v0[18] = v2;
  v3 = *(v2 - 8);
  v0[19] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[17], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = Playlist.catalogID.getter();
    v0[20] = v4;
    v0[21] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[22] = type metadata accessor for Playlist();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[23] = v8;
      *v8 = v0;
      v8[1] = Playlist.shareURL.getter;
      v9 = v0[13];
      v10 = v0[14];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[25] = v13;
      *v13 = v0;
      v13[1] = Playlist.shareURL.getter;
      v14 = v0[9];

      return Playlist.publish()(v14);
    }
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[17], v2);
    (*(v3 + 56))(v11, 0, 1, v2);

    v12 = v0[1];

    return v12();
  }
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = Playlist.shareURL.getter;
  }

  else
  {

    v2 = Playlist.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[22];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>, &type metadata accessor for Playlist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[18];
    v8 = v0[19];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[22];
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[10];
    Playlist.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{

  return _swift_task_switch(Playlist.shareURL.getter, 0, 0);
}

{
  v1 = v0[9];
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[4];
    outlined destroy of TaskPriority?(v1, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
    (*(v5 + 56))(v6, 1, 1, v4);
  }

  else
  {
    Playlist.url.getter();
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[1];

  return v7();
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
    v17 = v0[15];
    v18 = v0[14];
    v19 = v0[16];
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for playlist catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[19] + 56))(v0[4], 1, 1, v0[18]);

  v15 = v0[1];

  return v15();
}

uint64_t Playlist.publish()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VGMd, &_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VGMR);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A22LibraryPlaylistRequestV16CompletionPolicyOy0aB00E0V_GMd, &_s16MusicKitInternal0A22LibraryPlaylistRequestV16CompletionPolicyOy0aB00E0V_GMR);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7CuratorVSgMd, &_s8MusicKit7CuratorVSgMR);
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VGMd, &_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VGMR);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(Playlist.publish(), 0, 0);
}

uint64_t Playlist.publish()()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = type metadata accessor for Curator();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:isPublic:isVisible:curator:)();
  outlined destroy of TaskPriority?(v1, &_s8MusicKit7CuratorVSgMd, &_s8MusicKit7CuratorVSgMR);
  (*(v3 + 104))(v2, enum case for MusicLibraryPlaylistRequest.CompletionPolicy.afterCloudLibraryChanges<A>(_:), v4);
  MusicLibraryPlaylistRequest.completionPolicy.setter();
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = Playlist.publish();
  v7 = v0[10];

  return MusicLibraryPlaylistRequest.response<>()(v7);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = Playlist.publish();
  }

  else
  {
    v2 = Playlist.publish();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  MusicLibraryPlaylistResponse.item.getter();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v8 + 56))(v9, 0, 1, v7);

  v10 = v0[1];

  return v10();
}

{
  v30 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.sharing);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v8)
  {
    v26 = v7;
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v16 = 136446466;
    lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v27 = v12;
    v28 = v10;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v0[2] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(describing:)();
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v21, v22, &v29);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v6, v26, "Failed to make playlist=%{public}s public with error=%{public}s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v28, v27);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  (*(v0[6] + 56))(v0[3], 1, 1, v0[5]);

  v24 = v0[1];

  return v24();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Playlist(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Playlist.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Playlist(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Playlist, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Playlist()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return Playlist.shareURL.getter(v2);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance RadioShow(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance RadioShow, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance RadioShow()
{
  RadioShow.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance RadioShow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t RecordLabel.failureMessage.getter()
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance RecordLabel(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance RecordLabel, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance RecordLabel()
{
  RecordLabel.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance RecordLabel(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t SocialProfile.failureMessage.getter()
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance SocialProfile(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance SocialProfile, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance SocialProfile()
{
  SocialProfile.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance SocialProfile(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t Song.failureMessage.getter()
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

uint64_t Song.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd, &_s8MusicKit0A14ItemCollectionVyAA4SongVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA4SongVGMd, &_s8MusicKit0A23CatalogResourceResponseVyAA4SongVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA4SongVGMd, &_s8MusicKit0A22CatalogResourceRequestVyAA4SongVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(Song.shareURL.getter, 0, 0);
}

uint64_t Song.shareURL.getter()
{
  v1 = v0[16];
  Song.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = Song.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for Song();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song, &protocol conformance descriptor for Song);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = Song.shareURL.getter;
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
    v2 = Song.shareURL.getter;
  }

  else
  {

    v2 = Song.shareURL.getter;
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
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd, &_s8MusicKit0A14ItemCollectionVyAA4SongVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Song> and conformance MusicItemCollection<A>, &type metadata accessor for Song, v2);
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
    outlined destroy of TaskPriority?(v12, &_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
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
    Song.url.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for song catalogID: %{public}s: %{public}@", v4, 0x16u);
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

uint64_t key path getter for MusicVideoFilter.id : MusicVideoFilter@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t Song.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for PreviewAsset();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MusicOffer.Kind();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for MusicOffer();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd, &_s8MusicKit0A14ItemCollectionVyAA4SongVGMR);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA4SongVGMd, &_s8MusicKit0A23CatalogResourceResponseVyAA4SongVGMR);
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA4SongVGMd, &_s8MusicKit0A22CatalogResourceRequestVyAA4SongVGMR);
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(Song.augmentMetadata(_:), 0, 0);
}

{
  v2 = Song.catalogID.getter();
  *(v1 + 240) = v2;
  *(v1 + 248) = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = **(v1 + 32);
    *(v1 + 256) = v6;
    v7 = [v6 specialization];
    *(v1 + 264) = v7;
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      *(v1 + 272) = v9;
      if (v9)
      {
        swift_getKeyPath();
        *(v1 + 16) = v4;
        *(v1 + 24) = v5;
        *(v1 + 280) = type metadata accessor for Song();
        lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song, &protocol conformance descriptor for Song);

        MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1004F2F10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA4SongVGMd, &_s8MusicKit07PartialA13AsyncPropertyCyAA4SongVGMR);
        *(v10 + 32) = static PartialMusicProperty<A>.offers.getter();
        MusicCatalogResourceRequest.properties.setter();
        v11 = swift_task_alloc();
        *(v1 + 288) = v11;
        *v11 = v1;
        v11[1] = Song.augmentMetadata(_:);
        v12 = *(v1 + 208);
        v13 = *(v1 + 216);

        return MusicCatalogResourceRequest.response()(v12, v13);
      }
    }
  }

  v14 = *(v1 + 8);

  return v14();
}

uint64_t Song.augmentMetadata(_:)()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = Song.augmentMetadata(_:);
  }

  else
  {

    v2 = Song.augmentMetadata(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd, &_s8MusicKit0A14ItemCollectionVyAA4SongVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Song> and conformance MusicItemCollection<A>, &type metadata accessor for Song, v2);
  (*(v5 + 8))(v4, v6);
  outlined init with copy of TaskPriority?(v2, v3, &_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 128);
    outlined destroy of TaskPriority?(*(v0 + 176), &_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 176);
    v14 = *(v0 + 128);
    Song.url.getter();
    (*(v7 + 8))(v13, v12);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 128);
      URL._bridgeToObjectiveC()(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  [*(v0 + 256) setOriginalURL:v11];

  outlined init with copy of TaskPriority?(v21, v22, &_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
  if (v8(v22, 1, v20) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 168);
    v26 = Song.offers.getter();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v71 = v8;
        v72 = v7;
        v28 = *(v0 + 104);
        v29 = *(v0 + 80);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v70 = v26;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v75 = *(v28 + 56);
        v76 = v30;
        v77 = v0;
        v73 = (v28 - 8);
        v74 = (v29 + 8);
        do
        {
          v32 = *(v0 + 112);
          v33 = *(v0 + 88);
          v34 = *(v0 + 96);
          v35 = *(v0 + 72);
          v76(v32, v31, v34);
          MusicOffer.kind.getter();
          v36 = MusicOffer.Kind.rawValue.getter();
          v38 = v37;
          (*v74)(v33, v35);
          (*v73)(v32, v34);
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
          v31 += v75;
          --v27;
          v0 = v77;
        }

        while (v27);

        v7 = v72;
        v8 = v71;
      }

      else
      {
      }

      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 280);
  v43 = *(v0 + 184);
  v44 = *(v0 + 160);
  [*(v0 + 272) setOffers:{isa, v70}];

  outlined init with copy of TaskPriority?(v43, v44, &_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
  if (v8(v44, 1, v42) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 160), &_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
LABEL_24:
    v58 = *(v0 + 120);
    v59 = type metadata accessor for URL();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    v55 = 0;
    goto LABEL_25;
  }

  v45 = *(v0 + 280);
  v46 = *(v0 + 160);
  v47 = Song.previewAssets.getter();
  (*(v7 + 8))(v46, v45);
  if (!v47)
  {
    goto LABEL_24;
  }

  if (!*(v47 + 16))
  {

    goto LABEL_24;
  }

  v48 = *(v0 + 120);
  v50 = *(v0 + 56);
  v49 = *(v0 + 64);
  v51 = *(v0 + 48);
  (*(v50 + 16))(v49, v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v51);

  PreviewAsset.url.getter();
  (*(v50 + 8))(v49, v51);
  v52 = type metadata accessor for URL();
  v53 = *(v52 - 8);
  v55 = 0;
  if ((*(v53 + 48))(v48, 1, v52) != 1)
  {
    v56 = *(v0 + 120);
    URL._bridgeToObjectiveC()(v54);
    v55 = v57;
    (*(v53 + 8))(v56, v52);
  }

LABEL_25:
  v60 = *(v0 + 264);
  v61 = *(v0 + 224);
  v62 = *(v0 + 232);
  v64 = *(v0 + 208);
  v63 = *(v0 + 216);
  v65 = *(v0 + 192);
  v66 = *(v0 + 200);
  v67 = *(v0 + 184);
  [*(v0 + 272) setPreviewURL:v55];

  outlined destroy of TaskPriority?(v67, &_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
  (*(v66 + 8))(v64, v65);
  (*(v61 + 8))(v62, v63);

  v68 = *(v0 + 8);

  return v68();
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
    v17 = *(v0 + 264);
    v18 = *(v0 + 224);
    v19 = *(v0 + 216);
    v20 = *(v0 + 232);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL and offers for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 216);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Song(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Song.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Song(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Song.augmentMetadata(_:)(a1);
}

uint64_t Station.failureMessage.getter()
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

uint64_t Station.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA7StationVGMd, &_s8MusicKit0A14ItemCollectionVyAA7StationVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationVSgMd, &_s8MusicKit7StationVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA7StationVGMd, &_s8MusicKit0A23CatalogResourceResponseVyAA7StationVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA7StationVGMd, &_s8MusicKit0A22CatalogResourceRequestVyAA7StationVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(Station.shareURL.getter, 0, 0);
}

uint64_t Station.shareURL.getter()
{
  v1 = v0[16];
  Station.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = Station.id.getter();
    v6 = v5;
    v0[19] = v4;
    v0[20] = v5;
    swift_getKeyPath();
    v0[2] = v4;
    v0[3] = v6;
    v0[21] = type metadata accessor for Station();
    lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Station and conformance Station, &type metadata accessor for Station, &protocol conformance descriptor for Station);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = Station.shareURL.getter;
    v8 = v0[12];
    v9 = v0[13];

    return MusicCatalogResourceRequest.response()(v8, v9);
  }

  else
  {
    v10 = v0[4];
    (*(v3 + 32))(v10, v0[16], v2);
    (*(v3 + 56))(v10, 0, 1, v2);

    v11 = v0[1];

    return v11();
  }
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = Station.shareURL.getter;
  }

  else
  {

    v2 = Station.shareURL.getter;
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
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA7StationVGMd, &_s8MusicKit0A14ItemCollectionVyAA7StationVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Station> and conformance MusicItemCollection<A>, &type metadata accessor for Station, v2);
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
    outlined destroy of TaskPriority?(v12, &_s8MusicKit7StationVSgMd, &_s8MusicKit7StationVSgMR);
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
    Station.url.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for station catalogID: %{public}s: %{public}@", v4, 0x16u);
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Station(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Station.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Station(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Station, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Station()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return Station.shareURL.getter(v2);
}

uint64_t Track.failureMessage.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = type metadata accessor for Track();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v0, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for Track.song(_:) || v12 == enum case for Track.musicVideo(_:))
  {
    (*(v8 + 8))(v11, v7);
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
    v14 = Track.failureMessage.getter();
    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

uint64_t Track.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Song();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for MusicVideo();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Track();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(Track.shareURL.getter, 0, 0);
}

uint64_t Track.shareURL.getter()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Track.song(_:))
  {
    v5 = v0[12];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    (*(v0[11] + 96))(v5, v0[10]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = Track.shareURL.getter;
    v10 = v0[2];

    return Song.shareURL.getter(v10);
  }

  else if (v4 == enum case for Track.musicVideo(_:))
  {
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[8];
    (*(v0[11] + 96))(v12, v0[10]);
    (*(v15 + 32))(v13, v12, v14);
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = Track.shareURL.getter;
    v17 = v0[2];

    return MusicVideo.shareURL.getter(v17);
  }

  else
  {
    v18 = v0[2];
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v0[11] + 8))(v0[12], v0[10]);

    v20 = v0[1];

    return v20();
  }
}

{

  return _swift_task_switch(Track.shareURL.getter, 0, 0);
}

{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(Track.shareURL.getter, 0, 0);
}

{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Track(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Track.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Track(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Track, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Track()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return Track.shareURL.getter(v2);
}

uint64_t TVEpisode.failureMessage.getter()
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

uint64_t TVEpisode.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal9TVEpisodeVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal9TVEpisodeVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal9TVEpisodeVSgMd, &_s16MusicKitInternal9TVEpisodeVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal9TVEpisodeVGMd, &_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal9TVEpisodeVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal9TVEpisodeVGMd, &_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal9TVEpisodeVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(TVEpisode.shareURL.getter, 0, 0);
}

uint64_t TVEpisode.shareURL.getter()
{
  v1 = v0[16];
  TVEpisode.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = TVEpisode.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for TVEpisode();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = TVEpisode.shareURL.getter;
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
    v2 = TVEpisode.shareURL.getter;
  }

  else
  {

    v2 = TVEpisode.shareURL.getter;
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
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal9TVEpisodeVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal9TVEpisodeVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<TVEpisode> and conformance MusicItemCollection<A>, &type metadata accessor for TVEpisode, v2);
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
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal9TVEpisodeVSgMd, &_s16MusicKitInternal9TVEpisodeVSgMR);
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
    TVEpisode.url.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVEpisode catalogID: %{public}s: %{public}@", v4, 0x16u);
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance TVEpisode(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return TVEpisode.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVEpisode(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVEpisode, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVEpisode()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return TVEpisode.shareURL.getter(v2);
}

uint64_t TVSeason.failureMessage.getter()
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

uint64_t TVSeason.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal8TVSeasonVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal8TVSeasonVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal8TVSeasonVGMd, &_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal8TVSeasonVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal8TVSeasonVGMd, &_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal8TVSeasonVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(TVSeason.shareURL.getter, 0, 0);
}

uint64_t TVSeason.shareURL.getter()
{
  v1 = v0[16];
  TVSeason.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = TVSeason.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for TVSeason();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVSeason and conformance TVSeason, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVSeason and conformance TVSeason, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = TVSeason.shareURL.getter;
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
    v2 = TVSeason.shareURL.getter;
  }

  else
  {

    v2 = TVSeason.shareURL.getter;
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
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal8TVSeasonVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal8TVSeasonVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<TVSeason> and conformance MusicItemCollection<A>, &type metadata accessor for TVSeason, v2);
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
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
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
    TVSeason.url.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVSeason catalogID: %{public}s: %{public}@", v4, 0x16u);
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance TVSeason(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return TVSeason.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVSeason(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVSeason, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVSeason()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return TVSeason.shareURL.getter(v2);
}

uint64_t RadioShow.failureMessage.getter()
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

uint64_t TVShow.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal6TVShowVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal6TVShowVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal6TVShowVGMd, &_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal6TVShowVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal6TVShowVGMd, &_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal6TVShowVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(TVShow.shareURL.getter, 0, 0);
}

uint64_t TVShow.shareURL.getter()
{
  v1 = v0[16];
  TVShow.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = TVShow.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for TVShow();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVShow and conformance TVShow, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVShow and conformance TVShow, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = TVShow.shareURL.getter;
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
    v2 = TVShow.shareURL.getter;
  }

  else
  {

    v2 = TVShow.shareURL.getter;
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
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal6TVShowVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal6TVShowVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<TVShow> and conformance MusicItemCollection<A>, &type metadata accessor for TVShow, v2);
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
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
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
    TVShow.url.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVShow catalogID: %{public}s: %{public}@", v4, 0x16u);
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance TVShow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return TVShow.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVShow(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVShow, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVShow()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return TVShow.shareURL.getter(v2);
}

uint64_t UploadedAudio.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedAudioVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedAudioVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13UploadedAudioVSgMd, &_s16MusicKitInternal13UploadedAudioVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal13UploadedAudioVGMd, &_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal13UploadedAudioVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13UploadedAudioVGMd, &_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13UploadedAudioVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(UploadedAudio.shareURL.getter, 0, 0);
}

uint64_t UploadedAudio.shareURL.getter()
{
  v1 = v0[16];
  UploadedAudio.postURL.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = UploadedAudio.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for UploadedAudio();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedAudio and conformance UploadedAudio, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedAudio and conformance UploadedAudio, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = UploadedAudio.shareURL.getter;
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
    v2 = UploadedAudio.shareURL.getter;
  }

  else
  {

    v2 = UploadedAudio.shareURL.getter;
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
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedAudioVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedAudioVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<UploadedAudio> and conformance MusicItemCollection<A>, &type metadata accessor for UploadedAudio, v2);
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
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal13UploadedAudioVSgMd, &_s16MusicKitInternal13UploadedAudioVSgMR);
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
    UploadedAudio.postURL.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for uploaded audio catalogID: %{public}s: %{public}@", v4, 0x16u);
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance UploadedAudio(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return UploadedAudio.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedAudio(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedAudio, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedAudio()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return UploadedAudio.shareURL.getter(v2);
}

uint64_t MusicVideo.failureMessage.getter()
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

uint64_t UploadedVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedVideoVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedVideoVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13UploadedVideoVSgMd, &_s16MusicKitInternal13UploadedVideoVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal13UploadedVideoVGMd, &_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal13UploadedVideoVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13UploadedVideoVGMd, &_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13UploadedVideoVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(UploadedVideo.shareURL.getter, 0, 0);
}

uint64_t UploadedVideo.shareURL.getter()
{
  v1 = v0[16];
  UploadedVideo.postURL.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = UploadedVideo.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for UploadedVideo();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedVideo and conformance UploadedVideo, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedVideo and conformance UploadedVideo, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = UploadedVideo.shareURL.getter;
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
    v2 = UploadedVideo.shareURL.getter;
  }

  else
  {

    v2 = UploadedVideo.shareURL.getter;
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
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedVideoVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedVideoVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<UploadedVideo> and conformance MusicItemCollection<A>, &type metadata accessor for UploadedVideo, v2);
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
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal13UploadedVideoVSgMd, &_s16MusicKitInternal13UploadedVideoVSgMR);
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
    UploadedVideo.postURL.getter();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for uploaded video catalogID: %{public}s: %{public}@", v4, 0x16u);
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

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance UploadedVideo(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return UploadedVideo.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedVideo(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedVideo, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedVideo()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return UploadedVideo.shareURL.getter(v2);
}

uint64_t GenericMusicItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v55 = type metadata accessor for UploadedVideo();
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v53 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UploadedAudio();
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TVShow();
  v60 = *(v61 - 8);
  __chkstk_darwin();
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TVSeason();
  v63 = *(v64 - 8);
  __chkstk_darwin();
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TVEpisode();
  v66 = *(v67 - 8);
  __chkstk_darwin();
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Station();
  v69 = *(v70 - 8);
  __chkstk_darwin();
  v68 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Song();
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v71 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for SocialProfile();
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v74 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for RecordLabel();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RadioShow();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin();
  v80 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Playlist();
  v84 = *(v12 - 8);
  v85 = v12;
  __chkstk_darwin();
  v83 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicVideo();
  v87 = *(v14 - 8);
  v88 = v14;
  __chkstk_darwin();
  v86 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v90 = *(v16 - 8);
  v91 = v16;
  __chkstk_darwin();
  v89 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Genre();
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin();
  v92 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EditorialItem();
  v96 = *(v20 - 8);
  v97 = v20;
  __chkstk_darwin();
  v95 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Curator();
  v98 = *(v22 - 8);
  v99 = v22;
  __chkstk_darwin();
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Artist();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Album();
  v30 = *(v29 - 8);
  __chkstk_darwin();
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GenericMusicItem();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin();
  v37 = &v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v100, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v34 + 96))(v37, v33);
    (*(v30 + 32))(v32, v37, v29);
    Album.url.getter();
    return (*(v30 + 8))(v32, v29);
  }

  v40 = v101;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v34 + 96))(v37, v33);
    (*(v26 + 32))(v28, v37, v25);
    Artist.url.getter();
    return (*(v26 + 8))(v28, v25);
  }

  if (v38 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v34 + 8))(v37, v33);
    v41 = type metadata accessor for URL();
    return (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  }

  v42 = v101;
  if (v38 == enum case for GenericMusicItem.creditArtist(_:))
  {
    goto LABEL_8;
  }

  if (v38 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v34 + 96))(v37, v33);
    v45 = v98;
    v44 = v99;
    (*(v98 + 32))(v24, v37, v99);
    Curator.url.getter();
    return (*(v45 + 8))(v24, v44);
  }

  if (v38 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v95;
    v47 = v96;
    v48 = v97;
    (*(v96 + 32))(v95, v37, v97);
    EditorialItem.url.getter();
  }

  else if (v38 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v92;
    v47 = v93;
    v48 = v94;
    (*(v93 + 32))(v92, v37, v94);
    Genre.url.getter();
  }

  else if (v38 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v89;
    v47 = v90;
    v48 = v91;
    (*(v90 + 32))(v89, v37, v91);
    MusicMovie.url.getter();
  }

  else if (v38 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v86;
    v47 = v87;
    v48 = v88;
    (*(v87 + 32))(v86, v37, v88);
    MusicVideo.url.getter();
  }

  else if (v38 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v83;
    v47 = v84;
    v48 = v85;
    (*(v84 + 32))(v83, v37, v85);
    Playlist.url.getter();
  }

  else
  {
    if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
    {
LABEL_8:
      (*(v34 + 8))(v37, v33);
      v43 = type metadata accessor for URL();
      return (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    }

    if (v38 == enum case for GenericMusicItem.radioShow(_:))
    {
      (*(v34 + 96))(v37, v33);
      v47 = v81;
      v48 = v82;
      v46 = v80;
      (*(v81 + 32))(v80, v37, v82);
      RadioShow.url.getter();
    }

    else if (v38 == enum case for GenericMusicItem.recordLabel(_:))
    {
      (*(v34 + 96))(v37, v33);
      v47 = v78;
      v46 = v77;
      v48 = v79;
      (*(v78 + 32))(v77, v37, v79);
      RecordLabel.url.getter();
    }

    else
    {
      if (v38 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v38 == enum case for GenericMusicItem.song(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v72;
          v50 = v71;
          v51 = v73;
          (*(v72 + 32))(v71, v37, v73);
          Song.url.getter();
        }

        else if (v38 == enum case for GenericMusicItem.station(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v69;
          v50 = v68;
          v51 = v70;
          (*(v69 + 32))(v68, v37, v70);
          Station.url.getter();
        }

        else if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v66;
          v50 = v65;
          v51 = v67;
          (*(v66 + 32))(v65, v37, v67);
          TVEpisode.url.getter();
        }

        else if (v38 == enum case for GenericMusicItem.tvSeason(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v63;
          v50 = v62;
          v51 = v64;
          (*(v63 + 32))(v62, v37, v64);
          TVSeason.url.getter();
        }

        else if (v38 == enum case for GenericMusicItem.tvShow(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v60;
          v50 = v59;
          v51 = v61;
          (*(v60 + 32))(v59, v37, v61);
          TVShow.url.getter();
        }

        else if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v57;
          v50 = v56;
          v51 = v58;
          (*(v57 + 32))(v56, v37, v58);
          UploadedAudio.postURL.getter();
        }

        else
        {
          if (v38 != enum case for GenericMusicItem.uploadedVideo(_:))
          {
            v42 = v101;
            if (v38 != enum case for GenericMusicItem.other(_:))
            {
              v52 = type metadata accessor for URL();
              (*(*(v52 - 8) + 56))(v40, 1, 1, v52);
              return (*(v34 + 8))(v37, v33);
            }

            goto LABEL_8;
          }

          (*(v34 + 96))(v37, v33);
          v49 = v54;
          v50 = v53;
          v51 = v55;
          (*(v54 + 32))(v53, v37, v55);
          UploadedVideo.postURL.getter();
        }

        return (*(v49 + 8))(v50, v51);
      }

      (*(v34 + 96))(v37, v33);
      v47 = v75;
      v46 = v74;
      v48 = v76;
      (*(v75 + 32))(v74, v37, v76);
      SocialProfile.url.getter();
    }
  }

  return (*(v47 + 8))(v46, v48);
}

uint64_t GenericMusicItem.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UploadedVideo();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for UploadedAudio();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for TVShow();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for TVSeason();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for TVEpisode();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  v2[22] = v9;
  v2[23] = *(v9 - 8);
  v2[24] = swift_task_alloc();
  v10 = type metadata accessor for MusicVideo();
  v2[25] = v10;
  v2[26] = *(v10 - 8);
  v2[27] = swift_task_alloc();
  v11 = type metadata accessor for MusicMovie();
  v2[28] = v11;
  v2[29] = *(v11 - 8);
  v2[30] = swift_task_alloc();
  v12 = type metadata accessor for Artist();
  v2[31] = v12;
  v2[32] = *(v12 - 8);
  v2[33] = swift_task_alloc();
  v13 = type metadata accessor for Album();
  v2[34] = v13;
  v2[35] = *(v13 - 8);
  v2[36] = swift_task_alloc();
  v14 = type metadata accessor for GenericMusicItem();
  v2[37] = v14;
  v2[38] = *(v14 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

uint64_t GenericMusicItem.shareURL.getter()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for GenericMusicItem.album(_:))
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[34];
    v8 = v0[35];
    (*(v0[38] + 96))(v5, v0[37]);
    (*(v8 + 32))(v6, v5, v7);
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = GenericMusicItem.shareURL.getter;
    v10 = v0[2];

    return Album.shareURL.getter(v10);
  }

  if (v4 == enum case for GenericMusicItem.artist(_:))
  {
    v12 = v0[39];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[31];
    (*(v0[38] + 96))(v12, v0[37]);
    (*(v14 + 32))(v13, v12, v15);
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = GenericMusicItem.shareURL.getter;
    v17 = v0[2];

    return Artist.shareURL.getter(v17);
  }

  if (v4 == enum case for GenericMusicItem.composer(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.creditArtist(_:))
  {
LABEL_12:
    v19 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    goto LABEL_13;
  }

  if (v4 == enum case for GenericMusicItem.curator(_:) || v4 == enum case for GenericMusicItem.editorialItem(_:) || v4 == enum case for GenericMusicItem.genre(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.musicMovie(_:))
  {
    v24 = v0[39];
    v26 = v0[29];
    v25 = v0[30];
    v27 = v0[28];
    (*(v0[38] + 96))(v24, v0[37]);
    (*(v26 + 32))(v25, v24, v27);
    v28 = swift_task_alloc();
    v0[42] = v28;
    *v28 = v0;
    v28[1] = GenericMusicItem.shareURL.getter;
    v29 = v0[2];

    return MusicMovie.shareURL.getter(v29);
  }

  if (v4 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v30 = v0[39];
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    (*(v0[38] + 96))(v30, v0[37]);
    (*(v32 + 32))(v31, v30, v33);
    v34 = swift_task_alloc();
    v0[43] = v34;
    *v34 = v0;
    v34[1] = GenericMusicItem.shareURL.getter;
    v35 = v0[2];

    return MusicVideo.shareURL.getter(v35);
  }

  if (v4 == enum case for GenericMusicItem.playlist(_:))
  {
    v36 = v0[39];
    v38 = v0[23];
    v37 = v0[24];
    v39 = v0[22];
    (*(v0[38] + 96))(v36, v0[37]);
    (*(v38 + 32))(v37, v36, v39);
    v40 = swift_task_alloc();
    v0[44] = v40;
    *v40 = v0;
    v40[1] = GenericMusicItem.shareURL.getter;
    v41 = v0[2];

    return Playlist.shareURL.getter(v41);
  }

  if (v4 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    goto LABEL_12;
  }

  if (v4 == enum case for GenericMusicItem.radioShow(_:) || v4 == enum case for GenericMusicItem.recordLabel(_:) || v4 == enum case for GenericMusicItem.socialProfile(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.song(_:))
  {
    v42 = v0[39];
    v44 = v0[20];
    v43 = v0[21];
    v45 = v0[19];
    (*(v0[38] + 96))(v42, v0[37]);
    (*(v44 + 32))(v43, v42, v45);
    v46 = swift_task_alloc();
    v0[45] = v46;
    *v46 = v0;
    v46[1] = GenericMusicItem.shareURL.getter;
    v47 = v0[2];

    return Song.shareURL.getter(v47);
  }

  if (v4 == enum case for GenericMusicItem.station(_:))
  {
LABEL_10:
    v18 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    GenericMusicItem.url.getter(v18);
LABEL_13:

    v21 = v0[1];

    return v21();
  }

  if (v4 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    v48 = v0[39];
    v50 = v0[17];
    v49 = v0[18];
    v51 = v0[16];
    (*(v0[38] + 96))(v48, v0[37]);
    (*(v50 + 32))(v49, v48, v51);
    v52 = swift_task_alloc();
    v0[46] = v52;
    *v52 = v0;
    v52[1] = GenericMusicItem.shareURL.getter;
    v53 = v0[2];

    return TVEpisode.shareURL.getter(v53);
  }

  else if (v4 == enum case for GenericMusicItem.tvSeason(_:))
  {
    v54 = v0[39];
    v56 = v0[14];
    v55 = v0[15];
    v57 = v0[13];
    (*(v0[38] + 96))(v54, v0[37]);
    (*(v56 + 32))(v55, v54, v57);
    v58 = swift_task_alloc();
    v0[47] = v58;
    *v58 = v0;
    v58[1] = GenericMusicItem.shareURL.getter;
    v59 = v0[2];

    return TVSeason.shareURL.getter(v59);
  }

  else if (v4 == enum case for GenericMusicItem.tvShow(_:))
  {
    v60 = v0[39];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    (*(v0[38] + 96))(v60, v0[37]);
    (*(v62 + 32))(v61, v60, v63);
    v64 = swift_task_alloc();
    v0[48] = v64;
    *v64 = v0;
    v64[1] = GenericMusicItem.shareURL.getter;
    v65 = v0[2];

    return TVShow.shareURL.getter(v65);
  }

  else if (v4 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    v66 = v0[39];
    v68 = v0[8];
    v67 = v0[9];
    v69 = v0[7];
    (*(v0[38] + 96))(v66, v0[37]);
    (*(v68 + 32))(v67, v66, v69);
    v70 = swift_task_alloc();
    v0[49] = v70;
    *v70 = v0;
    v70[1] = GenericMusicItem.shareURL.getter;
    v71 = v0[2];

    return UploadedAudio.shareURL.getter(v71);
  }

  else
  {
    if (v4 != enum case for GenericMusicItem.uploadedVideo(_:))
    {
      if (v4 != enum case for GenericMusicItem.other(_:))
      {
        v79 = v0[38];
        v78 = v0[39];
        v80 = v0[37];
        GenericMusicItem.url.getter(v0[2]);
        (*(v79 + 8))(v78, v80);
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v72 = v0[39];
    v74 = v0[5];
    v73 = v0[6];
    v75 = v0[4];
    (*(v0[38] + 96))(v72, v0[37]);
    (*(v74 + 32))(v73, v72, v75);
    v76 = swift_task_alloc();
    v0[50] = v76;
    *v76 = v0;
    v76[1] = GenericMusicItem.shareURL.getter;
    v77 = v0[2];

    return UploadedVideo.shareURL.getter(v77);
  }
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t GenericMusicItem.failureMessage.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = type metadata accessor for GenericMusicItem();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v0, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for GenericMusicItem.album(_:) || v12 == enum case for GenericMusicItem.artist(_:) || v12 == enum case for GenericMusicItem.composer(_:) || v12 == enum case for GenericMusicItem.curator(_:) || v12 == enum case for GenericMusicItem.genre(_:) || v12 == enum case for GenericMusicItem.musicMovie(_:) || v12 == enum case for GenericMusicItem.musicVideo(_:) || v12 == enum case for GenericMusicItem.playlist(_:) || v12 == enum case for GenericMusicItem.radioShow(_:) || v12 == enum case for GenericMusicItem.recordLabel(_:) || v12 == enum case for GenericMusicItem.socialProfile(_:) || v12 == enum case for GenericMusicItem.song(_:) || v12 == enum case for GenericMusicItem.station(_:) || v12 == enum case for GenericMusicItem.tvEpisode(_:) || v12 == enum case for GenericMusicItem.tvSeason(_:) || v12 == enum case for GenericMusicItem.tvShow(_:) || v12 == enum case for GenericMusicItem.uploadedAudio(_:) || v12 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v8 + 8))(v11, v7);
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
    v14 = GenericMusicItem.failureMessage.getter();
    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance GenericMusicItem(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return GenericMusicItem.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance GenericMusicItem(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance GenericMusicItem, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance GenericMusicItem()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance GenericMusicItem;
  v2 = *(v0 + 32);

  return GenericMusicItem.shareURL.getter(v2);
}

{

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance GenericMusicItem, 0, 0);
}

{
  v1 = *(v0 + 32);
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

  [*(v0 + 40) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t one-time initialization function for sharing()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sharing);
  __swift_project_value_buffer(v0, static Logger.sharing);
  return Logger.init(subsystem:category:)();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Composer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Composer and conformance Composer, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for EditorialItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type EditorialItem and conformance EditorialItem, &type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MusicMovie(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SocialProfile(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type SocialProfile and conformance SocialProfile, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TVEpisode(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TVSeason(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVSeason and conformance TVSeason, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TVShow(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVShow and conformance TVShow, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UploadedAudio(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedAudio and conformance UploadedAudio, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UploadedVideo(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedVideo and conformance UploadedVideo, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for GenericMusicItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type GenericMusicItem and conformance GenericMusicItem, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Album and conformance Album(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for Actions.Share.Context(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Actions.Share.Context(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t lazy protocol witness table accessor for type MusicItemCollection<UploadedVideo> and conformance MusicItemCollection<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a7;
  v53 = a8;
  v54 = a6;
  v55 = a9;
  v49 = a5;
  v47 = a4;
  v51 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v57 = a1;
  v58 = v12;
  v14 = *(v12 + 64);
  v56 = a11;
  __chkstk_darwin();
  v46 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v41 - v15;
  v48 = v14;
  v17 = __chkstk_darwin();
  v19 = &v41 - v18;
  v42 = *(v13 + 16);
  v42(&v41 - v18, v17);
  v45 = *(v13 + 80);
  v20 = (v45 + 40) & ~v45;
  v21 = v20 + v14;
  v43 = v45 | 7;
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 2) = a10;
  *(v22 + 3) = a11;
  v44 = a2;
  *(v22 + 4) = a2;
  v23 = *(v58 + 32);
  v58 += 32;
  v23(v22 + v20, v19, a10);
  (v42)(v16, v57, a10);
  v24 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v56;
  *(v26 + 2) = a10;
  *(v26 + 3) = v27;
  *(v26 + 4) = a2;
  v23(v26 + v20, v16, a10);
  v28 = v26 + v24;
  v29 = v47;
  v30 = v47[1];
  *v28 = *v47;
  *(v28 + 1) = v30;
  *(v28 + 4) = *(v29 + 4);
  outlined init with take of URL?(v49, v26 + v25, &_s9MusicCore18PresentationSourceVSgMd, &_s9MusicCore18PresentationSourceVSgMR);
  outlined init with take of ActionPerforming(v51, v26 + ((v25 + 103) & 0xFFFFFFFFFFFFFFF8));
  v31 = v46;
  v23(v46, v57, a10);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v45 + v33) & ~v45;
  v35 = swift_allocObject();
  v36 = v56;
  *(v35 + 2) = a10;
  *(v35 + 3) = v36;
  v37 = v53;
  *(v35 + 4) = v52;
  *(v35 + 5) = v37;
  outlined init with take of URL?(v54, v35 + v33, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v23(v35 + v34, v31, a10);

  v39 = v55;
  v40 = v50;
  *v55 = partial apply for closure #1 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v39[1] = v40;
  v39[2] = &async function pointer to partial apply for closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v39[3] = v26;
  v39[4] = &async function pointer to partial apply for closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v39[5] = v35;
  return result;
}

uint64_t Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a7;
  v53 = a8;
  v54 = a6;
  v55 = a9;
  v49 = a5;
  v47 = a4;
  v51 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v57 = a1;
  v58 = v12;
  v14 = *(v12 + 64);
  v56 = a11;
  __chkstk_darwin();
  v46 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v41 - v15;
  v48 = v14;
  v17 = __chkstk_darwin();
  v19 = &v41 - v18;
  v42 = *(v13 + 16);
  v42(&v41 - v18, v17);
  v45 = *(v13 + 80);
  v20 = (v45 + 40) & ~v45;
  v21 = v20 + v14;
  v43 = v45 | 7;
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 2) = a10;
  *(v22 + 3) = a11;
  v44 = a2;
  *(v22 + 4) = a2;
  v23 = *(v58 + 32);
  v58 += 32;
  v23(v22 + v20, v19, a10);
  (v42)(v16, v57, a10);
  v24 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v56;
  *(v26 + 2) = a10;
  *(v26 + 3) = v27;
  *(v26 + 4) = a2;
  v23(v26 + v20, v16, a10);
  v28 = v26 + v24;
  v29 = v47;
  v30 = v47[1];
  *v28 = *v47;
  *(v28 + 1) = v30;
  *(v28 + 4) = *(v29 + 4);
  outlined init with take of URL?(v49, v26 + v25, &_s9MusicCore18PresentationSourceVSgMd, &_s9MusicCore18PresentationSourceVSgMR);
  outlined init with take of ActionPerforming(v51, v26 + ((v25 + 103) & 0xFFFFFFFFFFFFFFF8));
  v31 = v46;
  v23(v46, v57, a10);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v45 + v33) & ~v45;
  v35 = swift_allocObject();
  v36 = v56;
  *(v35 + 2) = a10;
  *(v35 + 3) = v36;
  v37 = v53;
  *(v35 + 4) = v52;
  *(v35 + 5) = v37;
  outlined init with take of URL?(v54, v35 + v33, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v23(v35 + v34, v31, a10);

  v39 = v55;
  v40 = v50;
  *v55 = partial apply for closure #1 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v39[1] = v40;
  v39[2] = &async function pointer to partial apply for closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v39[3] = v26;
  v39[4] = &async function pointer to partial apply for closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v39[5] = v35;
  return result;
}

uint64_t Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v48 = a4;
  v49 = a7;
  v46 = a3;
  v50 = a1;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v44 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = v38 - v12;
  v14 = v13;
  v45 = v13;
  v15 = __chkstk_darwin();
  v17 = v38 - v16;
  v39 = *(v10 + 16);
  v39(v38 - v16, v15);
  v43 = *(v10 + 80);
  v18 = (v43 + 40) & ~v43;
  v19 = swift_allocObject();
  v47 = v19;
  *(v19 + 2) = a5;
  *(v19 + 3) = a6;
  v41 = a6;
  v42 = a2;
  v20 = a2;
  *(v19 + 4) = a2;
  v21 = *(v10 + 32);
  v38[1] = v10 + 32;
  v21(v19 + v18, v17, a5);
  v22 = v40;
  (v39)(v40, v50, a5);
  v23 = swift_allocObject();
  *(v23 + 2) = a5;
  *(v23 + 3) = a6;
  *(v23 + 4) = v20;
  v24 = v22;
  v25 = v21;
  v21(v23 + v18, v24, a5);
  v26 = v23 + ((v18 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v27 = v46;
  v28 = v46[1];
  *v26 = *v46;
  *(v26 + 1) = v28;
  *(v26 + 4) = *(v27 + 4);
  v29 = v44;
  v21(v44, v50, a5);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v43 + v31) & ~v43;
  v33 = swift_allocObject();
  v34 = v41;
  *(v33 + 16) = a5;
  *(v33 + 24) = v34;
  outlined init with take of URL?(v48, v33 + v31, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v25(v33 + v32, v29, a5);

  v36 = v49;
  v37 = v47;
  *v49 = partial apply for closure #1 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v36[1] = v37;
  v36[2] = &async function pointer to partial apply for closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v36[3] = v23;
  v36[4] = &async function pointer to partial apply for closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v36[5] = v33;
  return result;
}

uint64_t Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (**a6)()@<X8>)
{
  v40 = a3;
  v41 = a6;
  v37 = a2;
  v33 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v31 - v11;
  __chkstk_darwin();
  v13 = &v31 - v12;
  outlined destroy of TaskPriority?(v14, &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  v34 = *(v9 + 16);
  v34(v13, a1, a4);
  v36 = *(v9 + 80);
  v15 = (v36 + 40) & ~v36;
  v16 = swift_allocObject();
  v38 = v16;
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  v17 = v37;
  *(v16 + 4) = v37;
  v32 = *(v9 + 32);
  v42 = v9 + 32;
  v32(v16 + v15, v13, a4);
  v18 = v35;
  v19 = v33;
  v34(v35, v33, a4);
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  *(v20 + 4) = v17;
  v21 = v18;
  v22 = v32;
  v32(v20 + v15, v21, a4);
  v23 = v39;
  v22(v39, v19, a4);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = (*(v24 + 64) + v36 + v25) & ~v36;
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  outlined init with take of URL?(v40, v27 + v25, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v22((v27 + v26), v23, a4);

  v29 = v41;
  v30 = v38;
  *v41 = partial apply for closure #1 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v29[1] = v30;
  v29[2] = &async function pointer to partial apply for closure #2 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v29[3] = v20;
  v29[4] = &async function pointer to partial apply for closure #3 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v29[5] = v27;
  return result;
}

uint64_t closure #1 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for MusicLibrary.FavoriteAction();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14FavoriteActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14FavoriteActionVGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  static MusicLibraryAction<>.favorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v5 + 8))(v7, v4);
  v12 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = type metadata accessor for MusicLibrary.FavoriteAction.UnsupportedReason();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = type metadata accessor for MusicLibrary.FavoriteAction();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14FavoriteActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14FavoriteActionVGMR);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1)
{
  v2 = v1[68];
  v3 = v1[66];
  v37 = v1[65];
  v38 = v1[67];
  v4 = v1[63];
  v5 = v1[64];
  v6 = v1[62];
  static MusicLibraryAction<>.favorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v4 + 8))(v5, v6);
  (*(v3 + 16))(v38, v2, v37);
  v7 = (*(v3 + 88))(v38, v37);
  if (v7 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v8 = v1[67];
    v10 = v1[58];
    v9 = v1[59];
    v11 = v1[56];
    v12 = v1[57];
    (*(v1[66] + 96))(v8, v1[65]);
    (*(v12 + 32))(v9, v8, v11);
    (*(v12 + 16))(v10, v9, v11);
    v13 = (*(v12 + 88))(v10, v11);
    if (v13 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      outlined init with copy of TaskPriority?(v1[52], (v1 + 14), &_s9MusicCore18PresentationSourceVSgMd, &_s9MusicCore18PresentationSourceVSgMR);
      if (v1[22] != 1)
      {
        outlined init with take of PresentationSource((v1 + 14), (v1 + 2));
        v1[81] = type metadata accessor for MainActor();
        v1[82] = static MainActor.shared.getter();
        v33 = dispatch thunk of Actor.unownedExecutor.getter();
        v29 = v34;
        v1[83] = v33;
        v1[84] = v34;
        v27 = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
        v28 = v33;
        goto LABEL_14;
      }

      v14 = v1[53];
      outlined destroy of TaskPriority?((v1 + 14), &_s9MusicCore18PresentationSourceVSgMd, &_s9MusicCore18PresentationSourceVSgMR);
      v15 = v14[3];
      v1[76] = v15;
      v1[77] = v14[4];
      v1[78] = __swift_project_boxed_opaque_existential_0Tm(v14, v15);
      type metadata accessor for MainActor();
      v1[79] = static MainActor.shared.getter();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
      v19 = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
LABEL_11:
      v27 = v19;
      v28 = v16;
      v29 = v18;
LABEL_14:

      return _swift_task_switch(v27, v28, v29);
    }

    if (v13 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v24 = v1[53];
      v25 = v24[3];
      v1[88] = v25;
      v1[89] = v24[4];
      v1[90] = __swift_project_boxed_opaque_existential_0Tm(v24, v25);
      type metadata accessor for MainActor();
      v1[91] = static MainActor.shared.getter();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v26;
      v19 = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
      goto LABEL_11;
    }

    v30 = v1 + 59;
    v31 = v1 + 57;
    v32 = v1 + 56;
    (*(v1[57] + 8))(v1[58], v1[56]);
    goto LABEL_18;
  }

  if (v7 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v30 = v1 + 67;
    v31 = v1 + 66;
    v32 = v1 + 65;
LABEL_18:
    (*(*v31 + 8))(*v30, *v32);
    (*(v1[66] + 8))(v1[68], v1[65]);

    v35 = v1[1];

    return v35();
  }

  v20 = swift_task_alloc();
  v1[69] = v20;
  *v20 = v1;
  v20[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v21 = v1[54];
  v22 = v1[55];
  v23 = v1[50];

  return MusicLibrary.favorite<A>(_:)(v23, v21, v22);
}

{
  v2 = static MainActor.shared.getter();
  v1[85] = v2;
  v3 = swift_task_alloc();
  v1[86] = v3;
  *(v3 + 16) = 5;
  *(v3 + 24) = v1 + 2;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v1[87] = v4;
  *v4 = v1;
  v4[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 93, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)partial apply, v3, &type metadata for Bool);
}

uint64_t closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  }

  else
  {
    v2 = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  outlined init with copy of TaskPriority?(v0[51], (v0 + 44), &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = __swift_project_boxed_opaque_existential_0Tm(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MainActor();
    v0[74] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v3, v2);
  }

  else
  {
    outlined destroy of TaskPriority?((v0 + 44), &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
    v4 = swift_task_alloc();
    v0[75] = v4;
    *v4 = v0;
    v4[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
    v5 = v0[52];

    return specialized static AppReview.requestReview(in:)(v5);
  }
}

{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  NoticePresenting.present(_:internalOnly:)(v3, 0, v2, v1);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 44);
  v1 = swift_task_alloc();
  v0[75] = v1;
  *v1 = v0;
  v1[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v2 = v0[52];

  return specialized static AppReview.requestReview(in:)(v2);
}

{

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

{
  v6 = v0[77];

  specialized static Alert.enableCloudLibraryAlert(context:)(5, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v2 = v0[77];
  v3 = v0[76];

  return v5(v0 + 35, v3, v2);
}

{
  v1 = *v0;

  outlined destroy of Alert(v1 + 280);

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  v1 = *v0;

  v2 = *(v1 + 672);
  v3 = *(v1 + 664);

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v3, v2);
}

{

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  v6 = v0[89];

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[92] = v1;
  *v1 = v0;
  v1[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v2 = v0[89];
  v3 = v0[88];

  return v5(v0 + 26, v3, v2);
}

{
  v1 = *v0;

  outlined destroy of Alert(v1 + 208);

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t partial apply for closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
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

  return closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return _swift_task_switch(closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(2);
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
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
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

    return _swift_task_switch(closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v21, v20);
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
  *(v6 + 16) = 5637;
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
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
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

uint64_t partial apply for closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
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

  return closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t closure #1 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for MusicLibrary.UndoFavoriteAction();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE18UndoFavoriteActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE18UndoFavoriteActionVGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  static MusicLibraryAction<>.undoFavorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v5 + 8))(v7, v4);
  v12 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = type metadata accessor for MusicLibrary.UndoFavoriteAction.UnsupportedReason();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = type metadata accessor for MusicLibrary.UndoFavoriteAction();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE18UndoFavoriteActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE18UndoFavoriteActionVGMR);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1)
{
  v2 = v1[68];
  v3 = v1[66];
  v37 = v1[65];
  v38 = v1[67];
  v4 = v1[63];
  v5 = v1[64];
  v6 = v1[62];
  static MusicLibraryAction<>.undoFavorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v4 + 8))(v5, v6);
  (*(v3 + 16))(v38, v2, v37);
  v7 = (*(v3 + 88))(v38, v37);
  if (v7 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v8 = v1[67];
    v10 = v1[58];
    v9 = v1[59];
    v11 = v1[56];
    v12 = v1[57];
    (*(v1[66] + 96))(v8, v1[65]);
    (*(v12 + 32))(v9, v8, v11);
    (*(v12 + 16))(v10, v9, v11);
    v13 = (*(v12 + 88))(v10, v11);
    if (v13 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      outlined init with copy of TaskPriority?(v1[52], (v1 + 14), &_s9MusicCore18PresentationSourceVSgMd, &_s9MusicCore18PresentationSourceVSgMR);
      if (v1[22] != 1)
      {
        outlined init with take of PresentationSource((v1 + 14), (v1 + 2));
        v1[80] = type metadata accessor for MainActor();
        v1[81] = static MainActor.shared.getter();
        v33 = dispatch thunk of Actor.unownedExecutor.getter();
        v29 = v34;
        v1[82] = v33;
        v1[83] = v34;
        v27 = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
        v28 = v33;
        goto LABEL_14;
      }

      v14 = v1[53];
      outlined destroy of TaskPriority?((v1 + 14), &_s9MusicCore18PresentationSourceVSgMd, &_s9MusicCore18PresentationSourceVSgMR);
      v15 = v14[3];
      v1[75] = v15;
      v1[76] = v14[4];
      v1[77] = __swift_project_boxed_opaque_existential_0Tm(v14, v15);
      type metadata accessor for MainActor();
      v1[78] = static MainActor.shared.getter();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
      v19 = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
LABEL_11:
      v27 = v19;
      v28 = v16;
      v29 = v18;
LABEL_14:

      return _swift_task_switch(v27, v28, v29);
    }

    if (v13 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v24 = v1[53];
      v25 = v24[3];
      v1[87] = v25;
      v1[88] = v24[4];
      v1[89] = __swift_project_boxed_opaque_existential_0Tm(v24, v25);
      type metadata accessor for MainActor();
      v1[90] = static MainActor.shared.getter();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v26;
      v19 = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
      goto LABEL_11;
    }

    v30 = v1 + 59;
    v31 = v1 + 57;
    v32 = v1 + 56;
    (*(v1[57] + 8))(v1[58], v1[56]);
    goto LABEL_18;
  }

  if (v7 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v30 = v1 + 67;
    v31 = v1 + 66;
    v32 = v1 + 65;
LABEL_18:
    (*(*v31 + 8))(*v30, *v32);
    (*(v1[66] + 8))(v1[68], v1[65]);

    v35 = v1[1];

    return v35();
  }

  v20 = swift_task_alloc();
  v1[69] = v20;
  *v20 = v1;
  v20[1] = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v21 = v1[54];
  v22 = v1[55];
  v23 = v1[50];

  return MusicLibrary.undoFavorite<A>(_:)(v23, v21, v22);
}

{
  v2 = static MainActor.shared.getter();
  v1[84] = v2;
  v3 = swift_task_alloc();
  v1[85] = v3;
  *(v3 + 16) = 5;
  *(v3 + 24) = v1 + 2;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v1[86] = v4;
  *v4 = v1;
  v4[1] = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 92, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v3, &type metadata for Bool);
}

uint64_t closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  }

  else
  {
    v2 = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  outlined init with copy of TaskPriority?(v0[51], (v0 + 44), &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = __swift_project_boxed_opaque_existential_0Tm(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MainActor();
    v0[74] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v3, v2);
  }

  else
  {
    outlined destroy of TaskPriority?((v0 + 44), &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v4 = v0[1];

    return v4();
  }
}

{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  NoticePresenting.present(_:internalOnly:)(v3, 0, v2, v1);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 44);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

{
  v6 = v0[76];

  specialized static Alert.enableCloudLibraryAlert(context:)(5, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[79] = v1;
  *v1 = v0;
  v1[1] = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v2 = v0[76];
  v3 = v0[75];

  return v5(v0 + 35, v3, v2);
}

{
  v1 = *v0;

  outlined destroy of Alert(v1 + 280);

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  v1 = *v0;

  v2 = *(v1 + 664);
  v3 = *(v1 + 656);

  return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v3, v2);
}

{

  return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  outlined destroy of PresentationSource((v0 + 2));
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

{
  v6 = v0[88];

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[91] = v1;
  *v1 = v0;
  v1[1] = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v2 = v0[88];
  v3 = v0[87];

  return v5(v0 + 26, v3, v2);
}

{
  v1 = *v0;

  outlined destroy of Alert(v1 + 208);

  return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v4));
  }

  v6 = v0 + v5;
  if (*(v0 + v5 + 64) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v7 = *(v6 + 48);
    if (v7 != 255)
    {
      outlined consume of PresentationSource.Position.Source(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
    }

    if (*(v6 + 64))
    {
    }

    if (*(v6 + 80))
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
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

  return closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return _swift_task_switch(closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(3);
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
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
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

    return _swift_task_switch(closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v21, v20);
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
  *(v6 + 16) = 5893;
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
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
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

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(*(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  if (*(v0 + 32))
  {
  }

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

uint64_t partial apply for closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
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

  return closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t (*Actions.Favorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*Actions.Favorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Favorite.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemCompactStyleImage.getter in conformance Actions.Favorite.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.UndoFavorite.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemCompactStyleImage.getter in conformance Actions.UndoFavorite.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t closure #1 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for MusicLibrary.DislikeAction();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE13DislikeActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE13DislikeActionVGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  static MusicLibraryAction<>.dislike.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v5 + 8))(v7, v4);
  v12 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a3;
  v5[8] = type metadata accessor for Notice.Variant(0);
  v5[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[10] = v9;
  *v9 = v5;
  v9[1] = closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);

  return MusicLibrary.new_dislike<A>(_:)(a2, a4, a5);
}

uint64_t closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), 0, 0);
  }
}

{
  outlined init with copy of TaskPriority?(v0[7], (v0 + 2), &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  v1 = v0[5];
  v0[11] = v1;
  if (v1)
  {
    v0[12] = v0[6];
    v0[13] = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v1);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MainActor();
    v0[14] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), v3, v2);
  }

  else
  {
    outlined destroy of TaskPriority?((v0 + 2), &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);

    v4 = v0[1];

    return v4();
  }
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  NoticePresenting.present(_:internalOnly:)(v3, 0, v2, v1);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BFFA4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v4));
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
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
    v9 = *(*(v8 + 8) + 8);
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

    return _swift_task_switch(closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), v20, v19);
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
  *(v6 + 16) = 6149;
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v20, type metadata accessor for MetricsEvent.Page);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v27, type metadata accessor for MetricsEvent.Page);
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
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v36, type metadata accessor for MetricsEvent.Page);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v40, type metadata accessor for MetricsEvent.Page);
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
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v45, type metadata accessor for MetricsEvent.Page);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v50, type metadata accessor for MetricsEvent.Page);
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
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v58, type metadata accessor for MetricsEvent.Page);
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
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
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

  return closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t closure #1 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for MusicLibrary.UndoDislikeAction();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE17UndoDislikeActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE17UndoDislikeActionVGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  static MusicLibraryAction<>.undoDislike.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v5 + 8))(v7, v4);
  v12 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t closure #2 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return MusicLibrary.new_undoDislike<A>(_:)(a2, a3, a4);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = v0[4];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v5, v0 + v4, v2, v3);
}

uint64_t closure #3 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(closure #3 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
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
    v9 = *(*(v8 + 8) + 8);
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

    return _swift_task_switch(closure #3 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), v20, v19);
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
  *(v6 + 16) = 6405;
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v20, type metadata accessor for MetricsEvent.Page);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v27, type metadata accessor for MetricsEvent.Page);
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
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v36, type metadata accessor for MetricsEvent.Page);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v40, type metadata accessor for MetricsEvent.Page);
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
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v45, type metadata accessor for MetricsEvent.Page);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v50, type metadata accessor for MetricsEvent.Page);
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
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v58, type metadata accessor for MetricsEvent.Page);
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
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), 0, 0);
}

uint64_t partial apply for closure #3 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
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

  return closure #3 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t Actions.Favorite.Context.menuItemTitle.getter(uint64_t a1, uint64_t a2)
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

uint64_t (*Actions.SuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.Favorite.Context(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.SuggestLess.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*Actions.UndoSuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x80000001004C6D40;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x80000001004C6D40;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.UndoSuggestLess.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x80000001004C6D40;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x80000001004C6D40;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t specialized Actions.UndoSuggestLess.Context.menuItemTitle.getter()
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

uint64_t specialized Actions.UndoFavorite.Context.menuItemCompactStyleTitle.getter()
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

uint64_t sub_1000C3464()
{

  return swift_deallocObject();
}

uint64_t _s9MusicCore12MetricsEventV5ClickVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t (*Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v31 = a8;
  v32 = a3;
  v29 = a7;
  v30 = a2;
  v33 = a4;
  v34 = a5;
  v28 = a1;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v27 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = &v27 - v14;
  (*(v11 + 16))(&v27 - v14, v13);
  v16 = *(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a6;
  *(v17 + 3) = a7;
  v18 = v31;
  *(v17 + 4) = v31;
  *(v17 + 5) = a2;
  v19 = *(v11 + 32);
  v19(&v17[(v16 + 48) & ~v16], v15, a6);
  v19(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28, a6);
  v20 = (v16 + 56) & ~v16;
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 2) = a6;
  *(v22 + 3) = v23;
  v25 = v32;
  v24 = v33;
  *(v22 + 4) = v18;
  *(v22 + 5) = v25;
  *(v22 + 6) = v24;
  v19(&v22[v20], v27, a6);
  *&v22[v21] = v30;
  outlined init with take of PresentationSource(v34, &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8]);

  return partial apply for closure #1 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:);
}

uint64_t static Actions.RateSong.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 38;
  *(a5 + 40) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &async function pointer to closure #2 in static Actions.RateSong.action(context:);
  *(a5 + 72) = 0;
  *(a5 + 80) = &async function pointer to closure #3 in static Actions.RateSong.action(context:);
  *(a5 + 88) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.RateSong@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 38;
  *(a2 + 40) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &async function pointer to closure #2 in static Actions.RateSong.action(context:);
  *(a2 + 72) = 0;
  *(a2 + 80) = &async function pointer to closure #3 in static Actions.RateSong.action(context:);
  *(a2 + 88) = 0;
}

uint64_t Actions.RateSong.Context.menuItemTitle.getter()
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

uint64_t (*Actions.RateSong.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001004C6F00;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x80000001004C6F00;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.RateSong.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001004C6F00;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x80000001004C6F00;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

unint64_t closure #1 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a2;
  v22[3] = a3;
  v5 = type metadata accessor for MusicLibrary.AddAction();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v22 - v11;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v13 = static MusicLibrary.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  v22[1] = a4;
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 BOOLForKey:v15];

  if (!v16)
  {
    return 0xD000000000000018;
  }

  static MusicLibraryAction<>.add.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 88))(v12, v9) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v12, v9);
    v17 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 88))(v12, v17);
    v20 = enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:);
    (*(v18 + 8))(v12, v17);
    if (v19 == v20)
    {
      return 0;
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  return 0xD000000000000011;
}

uint64_t sub_1000C3F74()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id NSUserDefaults.showStarRatings.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  v9 = *(a6 - 8);
  v8[34] = v9;
  v8[35] = *(v9 + 64);
  v8[36] = swift_task_alloc();
  type metadata accessor for Locale();
  v8[37] = swift_task_alloc();
  v10 = type metadata accessor for String.LocalizationValue();
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[42] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:), v12, v11);
}

uint64_t closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)()
{
  v1 = v0[41];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  String.LocalizationValue.init(stringLiteral:)();
  v50 = *(v3 + 16);
  v50(v2, v1, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v5 = v0[41];
  v48 = v0[40];
  v6 = v0[38];
  v7 = v0[39];
  v43 = v0[36];
  v46 = v0[30];
  v44 = v0[33];
  v45 = v0[29];
  v42 = v0[34];
  v39 = v0[28];
  v40 = v0[26];
  v8 = static NSBundle.module;
  v49 = *(v0 + 31);
  static Locale.current.getter();
  v9 = v8;
  String.init(localized:table:bundle:locale:comment:)();
  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = String._bridgeToObjectiveC()();

  v37 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  v50(v48, v5, v6);
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10(v5, v6);
  v12 = String._bridgeToObjectiveC()();

  v38 = objc_opt_self();
  v13 = [v38 actionWithTitle:v12 style:1 handler:0];

  v47 = v13;
  [v37 addAction:v13];
  v14 = v40(v39);
  v41 = v15;
  String.LocalizationValue.init(stringLiteral:)();
  v50(v48, v5, v6);
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10(v5, v6);
  (*(v42 + 16))(v43, v39, v49);
  v16 = (*(v42 + 80) + 64) & ~*(v42 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v49;
  *(v17 + 32) = v44;
  *(v17 + 40) = v14;
  *(v17 + 48) = v41;
  *(v17 + 56) = v45;
  (*(v42 + 32))(v17 + v16, v43, v49);
  v18 = v14;

  v19 = String._bridgeToObjectiveC()();

  v0[18] = partial apply for closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:);
  v0[19] = v17;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v0[17] = &block_descriptor_7;
  v20 = _Block_copy(v0 + 14);

  v21 = [v38 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v37 addAction:v21];
  [v37 setPreferredAction:v21];
  [v37 setContentViewController:v18];
  v22 = *(v46 + 80);
  if (v22)
  {
    v23 = *(v46 + 88);
    v24 = one-time initialization token for logger;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static PresentationSource.logger);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Deferring presentation…", v28, 2u);
    }

    v29 = v0[30];

    v30 = objc_allocWithZone(MSVBlockGuard);
    v0[24] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    v0[25] = 0;
    v0[20] = _NSConcreteStackBlock;
    v0[21] = 1107296256;
    v0[22] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    v0[23] = &block_descriptor_24;
    v31 = _Block_copy(v0 + 20);
    v32 = [v30 initWithTimeout:v31 interruptionHandler:10.0];
    _Block_release(v31);

    outlined init with copy of PresentationSource(v29, (v0 + 2));
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    outlined init with take of PresentationSource((v0 + 2), v33 + 24);
    *(v33 + 120) = v37;
    *(v33 + 128) = 257;
    *(v33 + 136) = 0;
    *(v33 + 144) = 0;
    v34 = v32;
    v22(v29, v37, partial apply for closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:), v33);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v22, v23);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v37, 1, 1, 0, 0);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1000C49FC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

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

uint64_t partial apply for closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v7 = (*(*(v2 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0[6];
  v10 = *(v0 + v7);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(v5, v9, v0 + v6, v10, v0 + v8, v2, v3, v4);
}

uint64_t sub_1000C4C80()
{

  return swift_deallocObject();
}

uint64_t closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v13 + 16))(v15, a5, a6);
  type metadata accessor for MainActor();
  v19 = a2;

  v20 = static MainActor.shared.getter();
  v21 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v20;
  *(v22 + 3) = &protocol witness table for MainActor;
  v24 = v26;
  v23 = v27;
  *(v22 + 4) = a6;
  *(v22 + 5) = v24;
  *(v22 + 6) = v23;
  *(v22 + 7) = v19;
  *(v22 + 8) = a3;
  *(v22 + 9) = a4;
  (*(v13 + 32))(&v22[v21], v15, a6);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:), v22);
}

uint64_t sub_1000C4EDC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v13;
  v8[9] = v14;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[10] = *(a8 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[14] = v10;
  v8[15] = v9;

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:), v10, v9);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)()
{
  v1 = v0[8];
  v2 = v0[4];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  v0[16] = v4;
  v5 = v4 / 5.0;
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = *(v1 + 8);
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:);
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11.n128_f64[0] = v5;

  return MusicLibrary.setUserRating<A>(_:for:)(v10, v9, v7, v8, v11);
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = closure #1 in closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v31 = v0;

  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.actions);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v12 = v0[11];
    v11 = v0[12];
    v29 = v8;
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[16] / 5.0;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 134349570;
    *(v16 + 4) = v15;
    *(v16 + 12) = 2082;
    v6(v12, v11, v14);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v30);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(describing:)();
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v21, v22, &v30);

    *(v16 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v7, v29, "Failed to set userRating=%{public}f for item=%{public}s with error=%{public}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[12];
    v25 = v0[10];
    v26 = v0[7];

    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000C5690()
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

uint64_t sub_1000C5724()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[7];
  v5 = (*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in closure #2 in Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(a1, v6, v7, v4, v8, v9, v1 + v5, v3);
}

uint64_t View.alertPresenting(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentedViewStateCyAA5AlertVGMd, _s9MusicCore18PresentedViewStateCyAA5AlertVGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PresentedViewState<Alert> and conformance PresentedViewState<A>, &_s9MusicCore18PresentedViewStateCyAA5AlertVGMd, _s9MusicCore18PresentedViewStateCyAA5AlertVGMR, &protocol conformance descriptor for PresentedViewState<A>);
  ObservedObject.init(wrappedValue:)();
  v7 = lazy protocol witness table accessor for type Modifier and conformance Modifier();
  View.viewPresenting<A, B>(_:modifier:)(a1, a3, v7, x8_0);
}

unint64_t lazy protocol witness table accessor for type Modifier and conformance Modifier()
{
  result = lazy protocol witness table cache variable for type Modifier and conformance Modifier;
  if (!lazy protocol witness table cache variable for type Modifier and conformance Modifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Modifier and conformance Modifier);
  }

  return result;
}

uint64_t sub_1000C5A5C(void *a1)
{
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore18PresentedViewStateCyAD5AlertVGSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore18PresentedViewStateCyAD5AlertVGSgGMR);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type Modifier and conformance Modifier();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PresentedViewState<Alert>?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore18PresentedViewStateCyAD5AlertVGSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore18PresentedViewStateCyAD5AlertVGSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for Modifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for Modifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in Modifier.body(content:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAcAE16keyboardShortcutyQrAA08KeyboardT0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GA3_SgQo_Md, &_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAcAE16keyboardShortcutyQrAA08KeyboardT0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GA3_SgQo_MR);
  v56 = *(v5 - 8);
  __chkstk_darwin();
  v58 = &v44 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0L0Oqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAgAE16keyboardShortcutyQrAA08KeyboardZ0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GA10_SgQo_AgAE5alert_AikLQrqd___AOqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAS_SSA13_A14_Qo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0L0Oqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAgAE16keyboardShortcutyQrAA08KeyboardZ0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GA10_SgQo_AgAE5alert_AikLQrqd___AOqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAS_SSA13_A14_Qo__GMR);
  __chkstk_darwin();
  v60 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAcAE16keyboardShortcutyQrAA08KeyboardW0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GA6_SgQo_Md, &_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAcAE16keyboardShortcutyQrAA08KeyboardW0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GA6_SgQo_MR);
  v55 = *(v8 - 8);
  __chkstk_darwin();
  v57 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAeAE16keyboardShortcutyQrAA08KeyboardY0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GA8_SgQo_AeAE5alert_AgiJQrqd___AMqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAQ_SSA11_A12_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAeAE16keyboardShortcutyQrAA08KeyboardY0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GA8_SgQo_AeAE5alert_AgiJQrqd___AMqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAQ_SSA11_A12_Qo_GMR);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v61 = &v44 - v12;
  v13 = (a2 + *(*a2 + 96));
  swift_beginAccess();
  v14 = v13[3];
  v82 = v13[2];
  v83 = v14;
  v84 = *(v13 + 8);
  v15 = v13[1];
  v81[0] = *v13;
  v81[1] = v15;
  if (!*(&v83 + 1))
  {
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  v50 = v8;
  v51 = v11;
  v52 = v10;
  v53 = v5;
  v54 = a3;
  v16 = v82;
  v17 = v81[0];
  v75 = v81[0];
  *v78 = *(v13 + 33);
  v18 = v13[3];
  v73[2] = v13[2];
  v73[3] = v18;
  v19 = *v13;
  v76 = v13[1];
  v77 = v82;
  *&v78[15] = *(v13 + 6);
  v79 = *(&v83 + 1);
  v80 = v84;
  v74 = *(v13 + 8);
  v73[0] = v19;
  v73[1] = v76;
  outlined init with copy of Alert(v73, &v65);
  v20 = static Color.clear.getter();
  if (*(&v17 + 1))
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (*(&v17 + 1))
  {
    v22 = *(&v17 + 1);
  }

  v48 = v22;
  v49 = v20;
  v63 = v22;
  v64 = v20;
  v62 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentedViewStateCyAA5AlertVGMd, _s9MusicCore18PresentedViewStateCyAA5AlertVGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PresentedViewState<Alert> and conformance PresentedViewState<A>, &_s9MusicCore18PresentedViewStateCyAA5AlertVGMd, _s9MusicCore18PresentedViewStateCyAA5AlertVGMR, &protocol conformance descriptor for PresentedViewState<A>);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  if (v16)
  {
    v58 = &v44;
    LODWORD(v56) = v67;
    __chkstk_darwin();
    __chkstk_darwin();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAA4ViewPAAE16keyboardShortcutyQrAA08KeyboardM0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GMd, &_s7SwiftUI7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAA4ViewPAAE16keyboardShortcutyQrAA08KeyboardM0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GMR);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd, &_s7SwiftUI4TextVSgMR);
    v45 = lazy protocol witness table accessor for type String and conformance String();
    v46 = lazy protocol witness table accessor for type ForEach<EnumeratedSequence<[Alert.Action]>, String, <<opaque return type of View.keyboardShortcut(_:)>>.0> and conformance <> ForEach<A, B, C>();
    v47 = lazy protocol witness table accessor for type Text? and conformance <A> A?();
    v25 = v57;
    View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)();

    v26 = v55;
    v27 = v50;
    (*(v55 + 16))(v60, v25, v50);
    swift_storeEnumTagMultiPayload();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v23;
    v68 = v24;
    v28 = v23;
    v29 = v45;
    v30 = v46;
    v69 = &protocol witness table for Color;
    v70 = v45;
    v31 = v47;
    v71 = v46;
    v72 = v47;
    swift_getOpaqueTypeConformance2();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v28;
    v68 = v24;
    v69 = &protocol witness table for Color;
    v70 = v29;
    v71 = v30;
    v72 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v61;
    _ConditionalContent<>.init(storage:)();

    outlined destroy of TaskPriority?(v81, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);
    (*(v26 + 8))(v57, v27);
  }

  else
  {
    v57 = &v44;
    LODWORD(v55) = v67;
    __chkstk_darwin();
    __chkstk_darwin();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAA4ViewPAAE16keyboardShortcutyQrAA08KeyboardM0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GMd, &_s7SwiftUI7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAA4ViewPAAE16keyboardShortcutyQrAA08KeyboardM0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GMR);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd, &_s7SwiftUI4TextVSgMR);
    v45 = lazy protocol witness table accessor for type String and conformance String();
    v46 = lazy protocol witness table accessor for type ForEach<EnumeratedSequence<[Alert.Action]>, String, <<opaque return type of View.keyboardShortcut(_:)>>.0> and conformance <> ForEach<A, B, C>();
    v47 = lazy protocol witness table accessor for type Text? and conformance <A> A?();
    v36 = v35;
    v37 = v58;
    View.alert<A, B, C>(_:isPresented:actions:message:)();

    v38 = v56;
    v39 = v53;
    (*(v56 + 16))(v60, v37, v53);
    swift_storeEnumTagMultiPayload();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v34;
    v68 = v36;
    v40 = v45;
    v41 = v46;
    v69 = &protocol witness table for Color;
    v70 = v45;
    v42 = v47;
    v71 = v46;
    v72 = v47;
    swift_getOpaqueTypeConformance2();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v34;
    v68 = v36;
    v69 = &protocol witness table for Color;
    v70 = v40;
    v71 = v41;
    v72 = v42;
    swift_getOpaqueTypeConformance2();
    v32 = v61;
    _ConditionalContent<>.init(storage:)();

    outlined destroy of TaskPriority?(v81, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);
    (*(v38 + 8))(v58, v39);
  }

  v43 = v54;
  sub_1000C74B8(v32, v54);
  return (*(v51 + 56))(v43, 0, 1, v52);
}

uint64_t key path getter for PresentedViewState.isPresented : PresentedViewState<Alert>@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for PresentedViewState.isPresented : PresentedViewState<Alert>(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t closure #1 in closure #1 in Modifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[9] = *(a1 + 56);
  swift_getKeyPath();
  v7 = swift_allocObject();
  v8 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a1 + 64);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = v7;

  outlined init with copy of Alert(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGMd, &_ss18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16keyboardShortcutyQrAA08KeyboardE0VSgFQOyAA6ButtonVyAA4TextVG_Qo_Md, &_s7SwiftUI4ViewPAAE16keyboardShortcutyQrAA08KeyboardE0VSgFQOyAA6ButtonVyAA4TextVG_Qo_MR);
  lazy protocol witness table accessor for type EnumeratedSequence<[Alert.Action]> and conformance <> EnumeratedSequence<A>();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v12 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, &protocol conformance descriptor for Button<A>);
  v14[0] = v11;
  v14[1] = v12;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #2 in closure #1 in Modifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    lazy protocol witness table accessor for type String and conformance String();

    result = Text.init<A>(_:)();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t closure #1 in static Modifier.actionItems(alert:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16KeyboardShortcutVSgMd, &_s7SwiftUI16KeyboardShortcutVSgMR);
  __chkstk_darwin();
  v7 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v26 - v12;
  v32 = a2[1];
  v30 = a2[1];
  v14 = *(a2 + 32);
  if (v14 == 2)
  {
    v15 = type metadata accessor for ButtonRole();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  else
  {

    if (v14)
    {
      static ButtonRole.destructive.getter();
    }

    else
    {
      static ButtonRole.cancel.getter();
    }

    v16 = type metadata accessor for ButtonRole();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  v31 = *a2;
  v18 = *(a2 + 5);
  v17 = *(a2 + 6);
  v19 = swift_allocObject();
  v20 = a2[1];
  *(v19 + 16) = *a2;
  *(v19 + 32) = v20;
  *(v19 + 48) = a2[2];
  v21 = *a3;
  *(v19 + 88) = a3[1];
  v22 = a3[3];
  *(v19 + 104) = a3[2];
  *(v19 + 120) = v22;
  *(v19 + 64) = *(a2 + 6);
  *(v19 + 136) = *(a3 + 8);
  *(v19 + 72) = v21;
  outlined init with copy of String(&v32, v29);
  outlined init with copy of String(&v31, v29);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v18, v17);
  outlined init with copy of Alert(a3, v29);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:role:action:)();
  v23 = 1;
  if ((a3[3] & 1) == 0 && *(a3 + 5) == v27)
  {
    static KeyboardShortcut.defaultAction.getter();
    v23 = 0;
  }

  v24 = type metadata accessor for KeyboardShortcut();
  (*(*(v24 - 8) + 56))(v7, v23, 1, v24);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, &protocol conformance descriptor for Button<A>);
  View.keyboardShortcut(_:)();
  outlined destroy of TaskPriority?(v7, &_s7SwiftUI16KeyboardShortcutVSgMd, &_s7SwiftUI16KeyboardShortcutVSgMR);
  return (*(v11 + 8))(v13, v10);
}

uint64_t closure #1 in closure #1 in static Modifier.actionItems(alert:)(__int128 *a1, __int128 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v5 = &v17[-v4 - 8];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *a1;
  v18 = a1[1];
  v19 = v7;
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  type metadata accessor for MainActor();
  outlined init with copy of String(&v19, v17);
  outlined init with copy of String(&v18, v17);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  outlined init with copy of Alert(a2, v17);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v12;
  *(v11 + 64) = a1[2];
  v13 = *a2;
  *(v11 + 104) = a2[1];
  v14 = a2[3];
  *(v11 + 120) = a2[2];
  *(v11 + 136) = v14;
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 80) = *(a1 + 6);
  *(v11 + 152) = *(a2 + 8);
  *(v11 + 88) = v13;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static Modifier.actionItems(alert:), v11);
}

uint64_t closure #1 in closure #1 in closure #1 in static Modifier.actionItems(alert:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v7;
  *(v5 + 80) = *(a5 + 64);
  v8 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v8;
  *(v5 + 88) = type metadata accessor for MainActor();
  *(v5 + 96) = static MainActor.shared.getter();
  v9 = *(a4 + 40);
  if (v9)
  {
    v14 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v5 + 104) = v10;
    *v10 = v5;
    v10[1] = closure #1 in closure #1 in closure #1 in static Modifier.actionItems(alert:);

    return v14(a4, v5 + 16);
  }

  else
  {
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in closure #1 in closure #1 in static Modifier.actionItems(alert:), v13, v12);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in static Modifier.actionItems(alert:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in static Modifier.actionItems(alert:), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance Modifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy9MusicCore0F033_FB4130BB87D89130B6178CCB0F9FE735LLVGAA08_OverlayF0VyAA012_ConditionalD0VyAA0E0PAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0W0Oqd_0_yXEqd_1_yXEtSyRd__AaORd_0_AaORd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySayAF5AlertV6ActionVGGSSApAE16keyboardShortcutyQrAA16KeyboardShortcutVSgFQOyAA6ButtonVyAA4TextVG_Qo_GA18_SgQo_ApAE5alert_ArtUQrqd___AXqd_0_yXEqd_1_yXEtSyRd__AaORd_0_AaORd_1_r1_lFQOyA0__SSA21_A22_Qo_GSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy9MusicCore0F033_FB4130BB87D89130B6178CCB0F9FE735LLVGAA08_OverlayF0VyAA012_ConditionalD0VyAA0E0PAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0W0Oqd_0_yXEqd_1_yXEtSyRd__AaORd_0_AaORd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySayAF5AlertV6ActionVGGSSApAE16keyboardShortcutyQrAA16KeyboardShortcutVSgFQOyAA6ButtonVyAA4TextVG_Qo_GA18_SgQo_ApAE5alert_ArtUQrqd___AXqd_0_yXEqd_1_yXEtSyRd__AaORd_0_AaORd_1_r1_lFQOyA0__SSA21_A22_Qo_GSgGGMR) + 36);
  closure #1 in Modifier.body(content:)(v5, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA19_ConditionalContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAgAE16keyboardShortcutyQrAA16KeyboardShortcutVSgFQOyAA6ButtonVyAA4TextVG_Qo_GA10_SgQo_AgAE5alert_AikLQrqd___AOqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAS_SSA13_A14_Qo_GSgGMd, &_s7SwiftUI16_OverlayModifierVyAA19_ConditionalContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAgAE16keyboardShortcutyQrAA16KeyboardShortcutVSgFQOyAA6ButtonVyAA4TextVG_Qo_GA10_SgQo_AgAE5alert_AikLQrqd___AOqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAS_SSA13_A14_Qo_GSgGMR) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy9MusicCore0D033_FB4130BB87D89130B6178CCB0F9FE735LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore0D033_FB4130BB87D89130B6178CCB0F9FE735LLVGMR);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

unint64_t lazy protocol witness table accessor for type ForEach<EnumeratedSequence<[Alert.Action]>, String, <<opaque return type of View.keyboardShortcut(_:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<EnumeratedSequence<[Alert.Action]>, String, <<opaque return type of View.keyboardShortcut(_:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<EnumeratedSequence<[Alert.Action]>, String, <<opaque return type of View.keyboardShortcut(_:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAA4ViewPAAE16keyboardShortcutyQrAA08KeyboardM0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GMd, &_s7SwiftUI7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAA4ViewPAAE16keyboardShortcutyQrAA08KeyboardM0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<EnumeratedSequence<[Alert.Action]>, String, <<opaque return type of View.keyboardShortcut(_:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Text? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Text? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4TextVSgMd, &_s7SwiftUI4TextVSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text? and conformance <A> A?);
  }

  return result;
}

uint64_t sub_1000C74B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAeAE16keyboardShortcutyQrAA08KeyboardY0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GA8_SgQo_AeAE5alert_AgiJQrqd___AMqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAQ_SSA11_A12_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAeAE16keyboardShortcutyQrAA08KeyboardY0VSgFQOyAA6ButtonVyAA4TextVG_Qo_GA8_SgQo_AeAE5alert_AgiJQrqd___AMqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAQ_SSA11_A12_Qo_GMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[Alert.Action]> and conformance <> EnumeratedSequence<A>()
{
  result = lazy protocol witness table cache variable for type EnumeratedSequence<[Alert.Action]> and conformance <> EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[Alert.Action]> and conformance <> EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGMd, &_ss18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [Alert.Action] and conformance [A], &_sSay9MusicCore5AlertV6ActionVGMd, &_sSay9MusicCore5AlertV6ActionVGMR, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnumeratedSequence<[Alert.Action]> and conformance <> EnumeratedSequence<A>);
  }

  return result;
}

uint64_t sub_1000C7658()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C76D4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static Modifier.actionItems(alert:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in closure #1 in static Modifier.actionItems(alert:)(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t objectdestroyTm_6()
{

  return swift_deallocObject();
}

uint64_t sub_1000C7850()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed Alert.Action) -> (@out <<opaque return type of View.keyboardShortcut(_:)>>.0)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<Modifier>, _OverlayModifier<_ConditionalContent<<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0, <<opaque return type of View.alert<A, B, C>(_:isPresented:actions:message:)>>.0>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<Modifier>, _OverlayModifier<_ConditionalContent<<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0, <<opaque return type of View.alert<A, B, C>(_:isPresented:actions:message:)>>.0>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<Modifier>, _OverlayModifier<_ConditionalContent<<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0, <<opaque return type of View.alert<A, B, C>(_:isPresented:actions:message:)>>.0>?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy9MusicCore0F033_FB4130BB87D89130B6178CCB0F9FE735LLVGAA08_OverlayF0VyAA012_ConditionalD0VyAA0E0PAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0W0Oqd_0_yXEqd_1_yXEtSyRd__AaORd_0_AaORd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySayAF5AlertV6ActionVGGSSApAE16keyboardShortcutyQrAA16KeyboardShortcutVSgFQOyAA6ButtonVyAA4TextVG_Qo_GA18_SgQo_ApAE5alert_ArtUQrqd___AXqd_0_yXEqd_1_yXEtSyRd__AaORd_0_AaORd_1_r1_lFQOyA0__SSA21_A22_Qo_GSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy9MusicCore0F033_FB4130BB87D89130B6178CCB0F9FE735LLVGAA08_OverlayF0VyAA012_ConditionalD0VyAA0E0PAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0W0Oqd_0_yXEqd_1_yXEtSyRd__AaORd_0_AaORd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySayAF5AlertV6ActionVGGSSApAE16keyboardShortcutyQrAA16KeyboardShortcutVSgFQOyAA6ButtonVyAA4TextVG_Qo_GA18_SgQo_ApAE5alert_ArtUQrqd___AXqd_0_yXEqd_1_yXEtSyRd__AaORd_0_AaORd_1_r1_lFQOyA0__SSA21_A22_Qo_GSgGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<Modifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore0D033_FB4130BB87D89130B6178CCB0F9FE735LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore0D033_FB4130BB87D89130B6178CCB0F9FE735LLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<_ConditionalContent<<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0, <<opaque return type of View.alert<A, B, C>(_:isPresented:actions:message:)>>.0>?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA19_ConditionalContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAgAE16keyboardShortcutyQrAA16KeyboardShortcutVSgFQOyAA6ButtonVyAA4TextVG_Qo_GA10_SgQo_AgAE5alert_AikLQrqd___AOqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAS_SSA13_A14_Qo_GSgGMd, &_s7SwiftUI16_OverlayModifierVyAA19_ConditionalContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAA5ColorV_SSAA7ForEachVys18EnumeratedSequenceVySay9MusicCore5AlertV6ActionVGGSSAgAE16keyboardShortcutyQrAA16KeyboardShortcutVSgFQOyAA6ButtonVyAA4TextVG_Qo_GA10_SgQo_AgAE5alert_AikLQrqd___AOqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAS_SSA13_A14_Qo_GSgGMR, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<Modifier>, _OverlayModifier<_ConditionalContent<<<opaque return type of View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)>>.0, <<opaque return type of View.alert<A, B, C>(_:isPresented:actions:message:)>>.0>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t closure #1 in static UIAlertController.alertController(with:overrideStyle:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v6 = &v18[-v5 - 8];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *a2;
  v19 = a2[1];
  v20 = v8;
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  type metadata accessor for MainActor();
  outlined init with copy of String(&v20, v18);
  outlined init with copy of String(&v19, v18);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v9, v10);
  outlined init with copy of Alert(a3, v18);
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v13;
  *(v12 + 64) = a2[2];
  v14 = *a3;
  *(v12 + 104) = a3[1];
  v15 = a3[3];
  *(v12 + 120) = a3[2];
  *(v12 + 136) = v15;
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 80) = *(a2 + 6);
  *(v12 + 152) = *(a3 + 8);
  *(v12 + 88) = v14;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in static UIAlertController.alertController(with:overrideStyle:), v12);
}

id static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v40 = a7;
  v41 = a8;
  v42 = type metadata accessor for URL();
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v38 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v38 - v20;
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(a1, a2, a3, a4, a5, a6, v40, v41, v21, a9 & 1);
    outlined init with copy of URL?(v21, v19);
    v22 = v42;
    if ((*(v15 + 48))(v19, 1, v42) == 1)
    {
      outlined destroy of URL?(v21);
      v23 = v19;
    }

    else
    {
      v24 = *(v15 + 32);
      v25 = v39;
      v24();
      v26 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v30 = [v26 canOpenURL:v28];

      if (v30)
      {
        v31 = v38;
        (*(v15 + 16))(v38, v25, v22);
        v32 = (*(v15 + 80) + 16) & ~*(v15 + 80);
        v33 = swift_allocObject();
        (v24)(v33 + v32, v31, v22);
        v34 = String._bridgeToObjectiveC()();
        aBlock[4] = partial apply for closure #1 in static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:);
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        aBlock[3] = &block_descriptor_8;
        v35 = _Block_copy(aBlock);

        v36 = [swift_getObjCClassFromMetadata() actionWithTitle:v34 style:0 handler:v35];
        _Block_release(v35);

        (*(v15 + 8))(v25, v22);
        outlined destroy of URL?(v21);
        return v36;
      }

      (*(v15 + 8))(v25, v22);
      v23 = v21;
    }

    outlined destroy of URL?(v23);
  }

  return 0;
}

void closure #1 in static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)()
{
  v0 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

id specialized static UIAlertController.alertController(with:overrideStyle:)(__int128 *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    a2 = ~*(a1 + 32) & 1;
  }

  if (*(a1 + 1))
  {
    v5 = String._bridgeToObjectiveC()();
    if (*(a1 + 3))
    {
LABEL_5:
      v6 = String._bridgeToObjectiveC()();
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (*(a1 + 3))
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_8:
  v29 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:a2];

  v7 = *(a1 + 7);
  v28 = *(v7 + 16);
  if (v28)
  {
    v8 = 0;
    v9 = (v7 + 80);
    do
    {
      v31 = v8;
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 - 16);
      v15 = *(v9 - 4);
      v14 = *(v9 - 3);
      v16 = *(v9 - 6);
      v17 = *(v9 - 5);
      v18 = 1;
      if (v13)
      {
        v18 = 2;
      }

      if (v13 == 2)
      {
        v18 = 0;
      }

      v30 = v18;
      v19 = swift_allocObject();
      v20 = *a1;
      *(v19 + 88) = a1[1];
      v21 = a1[3];
      *(v19 + 104) = a1[2];
      *(v19 + 120) = v21;
      *(v19 + 16) = v16;
      *(v19 + 24) = v17;
      v22 = v12;
      v23 = v11;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      *(v19 + 48) = v13;
      *(v19 + 49) = *v33;
      *(v19 + 52) = *&v33[3];
      *(v19 + 56) = v11;
      *(v19 + 64) = v22;
      *(v19 + 136) = *(a1 + 8);
      *(v19 + 72) = v20;

      outlined copy of (@escaping @callee_guaranteed () -> ())?(v11, v22);

      outlined copy of (@escaping @callee_guaranteed () -> ())?(v11, v22);
      outlined init with copy of Alert(a1, aBlock);
      v24 = String._bridgeToObjectiveC()();
      aBlock[4] = partial apply for closure #1 in static UIAlertController.alertController(with:overrideStyle:);
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      aBlock[3] = &block_descriptor_6;
      v25 = _Block_copy(aBlock);

      v26 = [objc_opt_self() actionWithTitle:v24 style:v30 handler:v25];
      _Block_release(v25);

      [v29 addAction:v26];
      if (a1[3])
      {

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v11, v22);
        v10 = v31;
      }

      else
      {
        v10 = v31;
        if (v31 == *(a1 + 5))
        {
          [v29 setPreferredAction:v26];

          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v23, v22);
        }

        else
        {

          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v23, v22);
        }
      }

      v8 = v10 + 1;
      v9 += 7;
    }

    while (v28 != v8);
  }

  return v29;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C84E0()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void partial apply for closure #1 in static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)()
{
  type metadata accessor for URL();

  closure #1 in static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey()
{
  result = lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey;
  if (!lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey)
  {
    type metadata accessor for UIApplicationOpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey);
  }

  return result;
}

uint64_t sub_1000C8648()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C86C4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in static UIAlertController.alertController(with:overrideStyle:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in closure #1 in static Modifier.actionItems(alert:)(a1, v4, v5, v1 + 32, v1 + 88);
}

void Alert.Action.init(id:title:role:perform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a7;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v19;
    (*(v16 + 8))(v18, v15);
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  v20 = v22;
  *(a8 + 40) = a6;
  *(a8 + 48) = v20;
}

void __swiftcall Alert.init(title:message:image:style:preferredActionIndex:actions:)(MusicCore::Alert *__return_ptr retstr, Swift::String_optional title, Swift::String_optional message, UIImage_optional image, MusicCore::Alert::Style style, Swift::Int_optional preferredActionIndex, Swift::OpaquePointer actions)
{
  retstr->title = title;
  retstr->message = message;
  retstr->style = image.is_nil;
  *(&retstr->preferredActionIndex.value + 7) = style;
  LOBYTE(retstr->actions._rawValue) = preferredActionIndex.value & 1;
  retstr->image.value.super.isa = *&preferredActionIndex.is_nil;
  *&retstr->image.is_nil = image.value.super.isa;
}

uint64_t Alert.Action.perform(from:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v2 + 16) = v5;
    *v5 = v2;
    v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

    return v8(v1, a1);
  }

  else
  {
    v7 = *(v2 + 8);

    return v7();
  }
}

void *Alert.image.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

unint64_t lazy protocol witness table accessor for type Alert.Style and conformance Alert.Style()
{
  result = lazy protocol witness table cache variable for type Alert.Style and conformance Alert.Style;
  if (!lazy protocol witness table cache variable for type Alert.Style and conformance Alert.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Alert.Style and conformance Alert.Style);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Alert.Action.Role and conformance Alert.Action.Role()
{
  result = lazy protocol witness table cache variable for type Alert.Action.Role and conformance Alert.Action.Role;
  if (!lazy protocol witness table cache variable for type Alert.Action.Role and conformance Alert.Action.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Alert.Action.Role and conformance Alert.Action.Role);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Alert(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Alert(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_9MusicCore5AlertV6ActionVACSgIeghHgg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *TextFieldAlert.init(configuration:callback:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v38 = a2;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v38 - v11;
  *&v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction] = 0;
  v13 = &v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration];
  v14 = a1[3];
  *(v13 + 2) = a1[2];
  *(v13 + 3) = v14;
  *(v13 + 4) = a1[4];
  v15 = a1[1];
  *v13 = *a1;
  *(v13 + 1) = v15;
  outlined init with copy of TextFieldAlert.Configuration(a1, v42);
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  v17 = String._bridgeToObjectiveC()();
  [v16 setTitle:v17];

  if (*(a1 + 5))
  {

    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  [v16 setMessage:{v18, v38, v39}];

  v19 = v16;
  [v19 setPreferredStyle:1];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v22 = *a1;
  *(v21 + 40) = a1[1];
  v23 = a1[3];
  *(v21 + 56) = a1[2];
  *(v21 + 72) = v23;
  *(v21 + 88) = a1[4];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  aBlock[4] = partial apply for closure #1 in TextFieldAlert.init(configuration:callback:);
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);
  outlined init with copy of TextFieldAlert.Configuration(a1, v42);

  [v19 addTextFieldWithConfigurationHandler:v24];
  _Block_release(v24);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v8 + 16))(v10, v12, v7);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v25 = static NSBundle.module;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v8 + 8))(v12, v7);
  v26 = String._bridgeToObjectiveC()();

  v27 = objc_opt_self();
  v28 = [v27 actionWithTitle:v26 style:1 handler:0];

  [v19 addAction:v28];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = swift_allocObject();
  v31 = v38;
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v39;

  v32 = String._bridgeToObjectiveC()();
  v42[4] = partial apply for closure #2 in TextFieldAlert.init(configuration:callback:);
  v42[5] = v30;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 1107296256;
  v42[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v42[3] = &block_descriptor_11;
  v33 = _Block_copy(v42);

  v34 = [v27 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  outlined destroy of TextFieldAlert.Configuration(a1);
  [v34 setEnabled:0];
  v35 = *(v19 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  *(v19 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction) = v34;
  v36 = v34;

  [v19 addAction:v36];
  [v19 setPreferredAction:v36];

  return v19;
}

void closure #1 in TextFieldAlert.init(configuration:callback:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration);

    v9 = String._bridgeToObjectiveC()();
    outlined consume of ActionCondition.Result(v8, v7);
LABEL_6:
    [a1 setText:v9];
  }

  if (*(a3 + 56))
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [a1 setPlaceholder:v10];

  [a1 setAutocapitalizationType:2];
  [a1 setReturnKeyType:9];
  [a1 setDelegate:v6];
}

void closure #2 in TextFieldAlert.init(configuration:callback:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong textFields];
    if (!v6)
    {

      return;
    }

    v7 = v6;
    type metadata accessor for UITextField();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = [v10 text];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      a3(v13, v15);
      goto LABEL_14;
    }

LABEL_14:
  }
}

Swift::Bool __swiftcall TextFieldAlert.textField(_:shouldChangeCharactersIn:replacementString:)(UITextField _, __C::_NSRange shouldChangeCharactersIn, Swift::String replacementString)
{
  length = shouldChangeCharactersIn.length;
  location = shouldChangeCharactersIn.location;
  v6 = [(objc_class *)_.super.super.super.super.isa text];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = objc_allocWithZone(NSString);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithString:v9];

  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringByReplacingCharactersInRange:location withString:{length, v11}];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = String.trim()();

  v17 = v16._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v16._object & 0x2000000000000000) != 0)
  {
    v17 = (v16._object >> 56) & 0xF;
  }

  v18 = v17 != 0;
  v19 = *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (v19 == 1)
  {

    goto LABEL_14;
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  if (v19)
  {
    if (v13 == *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration) && v19 == v15)
    {
LABEL_11:

      v18 = 0;
      goto LABEL_14;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v20 ^ 1;
  }

  else
  {

    v18 = 1;
  }

LABEL_14:
  v21 = *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  if (v21)
  {
    [v21 setEnabled:v18 & 1];
  }

  return 1;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14TextFieldAlertC13ConfigurationV4ModeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TextFieldAlert.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for TextFieldAlert.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C9A30()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C9A68()
{

  if (*(v0 + 32) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C9AF4()
{

  return swift_deallocObject();
}

unint64_t type metadata accessor for UITextField()
{
  result = lazy cache variable for type metadata for UITextField;
  if (!lazy cache variable for type metadata for UITextField)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITextField);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextFieldAlert.Configuration.Mode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *destructiveInjectEnumTag for TextFieldAlert.Configuration.Mode(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t ArtworkVideoReportingController.__allocating_init()()
{
  v0 = swift_allocObject();
  ArtworkVideoReportingController.init()();
  return v0;
}

uint64_t *ArtworkVideoReportingController.init()()
{
  v1 = *v0;
  *(v0 + 16) = 0;
  v0[3] = 0;
  v0[4] = 0;
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  v3 = static Array._allocateUninitialized(_:)();
  v4 = specialized Dictionary.init(dictionaryLiteral:)(v3, v2, &type metadata for ComponentRenderEventSignposts, *(v1 + 88));

  v0[5] = v4;
  return v0;
}

uint64_t ArtworkVideoReportingController.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, *(v0 + 32));
  return v1;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
}

void ArtworkVideoReportingController.componentWillAppear(at:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v34 = *(v5 - 8);
  __chkstk_darwin();
  v36 = &v26[-v6];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v11 = *(v4 + 88);

  v35 = a1;
  v33 = v11;
  Dictionary.subscript.getter();

  v12 = v37;
  if (v37 == 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v27 = 4;
LABEL_6:
    v18 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
    v20 = [v18 serverTimeFromDate:isa];

    (*(v34 + 16))(v36, v35, v5);
    v21 = v31;
    v22 = v32;
    v37 = v20;
    v38 = v31;
    v24 = v29;
    v23 = v30;
    v39 = v32;
    v40 = v30;
    v25 = v28;
    v41 = v29;
    v42 = v28;
    v43 = v27;
    swift_beginAccess();
    v35 = type metadata accessor for Dictionary();
    v12 = v20;
    v16 = v21;
    v17 = v22;
    v15 = v23;
    v13 = v24;
    v14 = v25;
    Dictionary.subscript.setter();
    swift_endAccess();
    goto LABEL_7;
  }

  v13 = v41;
  v14 = v42;
  v15 = v40;
  if (!v37)
  {
    v27 = v43;
    v31 = v38;
    v32 = v39;
    v29 = v41;
    v30 = v40;
    v28 = v42;
    goto LABEL_6;
  }

  v16 = v38;
  v17 = v39;
LABEL_7:
}

void ArtworkVideoReportingController.placeholderDidAppear(at:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v30[-v7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (v2[16] == 1)
  {
    swift_beginAccess();
    v13 = *(v4 + 88);

    v33 = v13;
    v34 = a1;
    Dictionary.subscript.getter();

    v14 = v38;
    if (v38 == 1)
    {
      v32 = v2;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v15 = 0;
      v14 = 0;
      v16 = 4;
    }

    else
    {
      v36 = v42;
      v37 = v43;
      v15 = v40;
      v35 = v41;
      v17 = v39;
      if (v39)
      {

        v18 = v37;
LABEL_8:

        return;
      }

      v32 = v2;
      v16 = v44;
    }

    v31 = v16;
    v19 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v12, v9);
    v21 = [v19 serverTimeFromDate:isa];

    (*(v6 + 16))(v8, v34, v5);
    v38 = v14;
    v39 = v21;
    v22 = v35;
    v23 = v36;
    v40 = v15;
    v41 = v35;
    v24 = v37;
    v42 = v36;
    v43 = v37;
    v44 = v31;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v18 = v14;
    v25 = v21;
    v26 = v15;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    Dictionary.subscript.setter();
    swift_endAccess();

    goto LABEL_8;
  }
}

void ArtworkVideoReportingController.videoArtworkWasSelectedForPlayback(at:isReadyForDisplay:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v38 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v39 = v4;
    swift_beginAccess();
    v15 = *(v6 + 88);

    v38[1] = v15;
    Dictionary.subscript.getter();

    v16 = v41;
    v40 = a1;
    if (v41 == 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0uLL;
      v20 = 4;
      v21 = 0uLL;
    }

    else
    {
      v20 = v45;
      v21 = v44;
      v19 = v43;
      v17 = v42;
      v18 = v43;
    }

    v46 = v16;
    v47 = v17;
    v48 = v19;
    v49 = v21;
    v50 = v20;
    v22 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v14, v11);
    v24 = [v22 serverTimeFromDate:isa];

    *&v48 = v24;
    ComponentRenderEventSignposts.capturePreloadStatus(isReadyForDisplay:)(v39 & 1);
    (*(v8 + 16))(v10, v40, v7);
    v25 = v46;
    v26 = v47;
    v27 = v48;
    v28 = v49;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = *(&v27 + 1);
    v33 = v28;
    v34 = *(&v28 + 1);
    Dictionary.subscript.setter();
    swift_endAccess();
    v35 = v47;
    v36 = v48;
    v37 = v49;
  }
}