uint64_t __UIKitServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMPModelStoreBrowseContentItemClass_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_23)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_23;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27822A148;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_23 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_23)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPModelStoreBrowseContentItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelStoreBrowseContentItemClass_block_invoke_cold_1_1();
  }

  getMPModelStoreBrowseContentItemClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_23(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_23 = result;
  return result;
}

void sub_21725874C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelSongKindClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelSongKindClass_softClass_0;
  v7 = getMPModelSongKindClass_softClass_0;
  if (!getMPModelSongKindClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelSongKindClass_block_invoke_0;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelSongKindClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217258840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelTVEpisodeKindClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelTVEpisodeKindClass_softClass;
  v7 = getMPModelTVEpisodeKindClass_softClass;
  if (!getMPModelTVEpisodeKindClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelTVEpisodeKindClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelTVEpisodeKindClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217258920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelGenericObjectKindClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPModelGenericObjectKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenericObjectKindClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenericObjectKindClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_24(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_24(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_24 = result;
  return result;
}

Class __getMPModelAlbumKindClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPModelAlbumKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumKindClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumKindClass_block_invoke_cold_1_0();
    return __getMPModelArtistKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelArtistKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPModelArtistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelArtistKindClass_block_invoke_cold_1();
  }

  getMPModelArtistKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelComposerKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPModelComposerKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelComposerKindClass_block_invoke_cold_1();
  }

  getMPModelComposerKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelMovieKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPModelMovieKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelMovieKindClass_block_invoke_cold_1();
  }

  getMPModelMovieKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelPlaylistKindClass_block_invoke_2(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1_0();
    return __getMPModelSongKindClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelSongKindClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPModelSongKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelSongKindClass_block_invoke_cold_1_0();
  }

  getMPModelSongKindClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelTVEpisodeKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPModelTVEpisodeKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelTVEpisodeKindClass_block_invoke_cold_1();
  }

  getMPModelTVEpisodeKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_217258E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21725926C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelSortDescriptorClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelSortDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelSortDescriptorClass_block_invoke_cold_1();
  }

  getMPModelSortDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_25(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_25 = result;
  return result;
}

void *__getMPModelRelationshipGenericAlbumSymbolLoc_block_invoke_2(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelRelationshipGenericAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericAlbumSymbolLoc_ptr_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelPropertyAlbumLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericMovieSymbolLoc_block_invoke_2(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelRelationshipGenericMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericMovieSymbolLoc_ptr_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieLibraryAddedDateSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelPropertyMovieLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericPlaylistSymbolLoc_block_invoke_2(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelRelationshipGenericPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelPropertyPlaylistLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericTVSeasonSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelRelationshipGenericTVSeason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelPropertyTVSeasonLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumDownloadedDateSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelPropertyAlbumDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieDownloadedDateSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelPropertyMovieDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistDownloadedDateSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelPropertyPlaylistDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPModelPropertyTVSeasonDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_217259968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlayerLibraryCore_block_invoke_26(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_26 = result;
  return result;
}

uint64_t sub_217259B58(uint64_t a1)
{
  result = sub_21720FE64(&unk_280BE8410, type metadata accessor for MusicKit_SoftLinking_MPModelAlbumVariants, &unk_217757A84);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217259BC4(uint64_t a1)
{
  result = sub_21720FE64(&qword_280BE8458, type metadata accessor for MusicKit_SoftLinking_MPModelAlbumOptions, &unk_217757A4C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217259CC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177566E0;
  KeyPath = swift_getKeyPath(byte_217757CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240F8, &qword_217757CE8);
  v2 = swift_allocObject();
  *(v2 + 16) = KeyPath;
  *(v2 + 24) = 1;
  *(v2 + 32) = sub_217259EDC;
  *(v2 + 40) = 0;
  *(v2 + 48) = MEMORY[0x277D84F90];
  *(v0 + 32) = v2;
  swift_getKeyPath(byte_217757CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24100, &qword_217757D18);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_14_7();
  *(v0 + 40) = sub_2173836F4(v3);
  swift_getKeyPath(byte_217757D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&byte_27CB24108, &qword_217757D48);
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_14_7();
  *(v0 + 48) = sub_2173836F4(v4);
  swift_getKeyPath(byte_217757D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24110, &qword_217757D78);
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_14_7();
  *(v0 + 56) = sub_217383700(v5);
  v6 = swift_getKeyPath("pm=e");
  v7 = sub_217382704(v6, 25);

  *(v0 + 64) = v7;
  swift_getKeyPath("Pm=e");
  v8 = sub_21738287C();

  *(v0 + 72) = v8;
  qword_27CB8A220 = v0;
  return result;
}

uint64_t sub_217259E84@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_217259EDC(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 80) = v3 & 0xFFFFFFFFFFFFFFFELL;
  }

  return result;
}

uint64_t sub_217259F28(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_217259F80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_217259FD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21725A030@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_21725A088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177566E0;
  KeyPath = swift_getKeyPath(byte_217757BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240F0, &qword_217757BF0);
  swift_allocObject();
  *(v0 + 32) = sub_217383564(KeyPath, 29, 11);
  swift_getKeyPath(byte_217757BF8);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_12_5();
  *(v0 + 40) = sub_217383498(v2, 21);
  swift_getKeyPath(byte_217757C20);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_12_5();
  *(v0 + 48) = sub_217383498(v3, 22);
  swift_getKeyPath("pn=e");
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_12_5();
  *(v0 + 56) = sub_217383498(v4, 23);
  swift_getKeyPath("Pn=e");
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_12_5();
  *(v0 + 64) = sub_217383498(v5, 25);
  swift_getKeyPath("0n=e");
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_12_5();
  result = sub_217383498(v6, 26);
  *(v0 + 72) = result;
  qword_280C02590 = v0;
  return result;
}

uint64_t sub_21725A1E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21725A240(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_21725A298(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_21725A2F0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_21725A348@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21725A3A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  return result;
}

void sub_21725A3F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_21725A450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_21725A4A4(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MusicKit_SoftLinking_MPModelAlbumKind);

  return [v4 initWithVariants:a1 options:a2];
}

unint64_t sub_21725A4F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240B8, &qword_217757AF0);
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    OUTLINED_FUNCTION_23_4();
    OUTLINED_FUNCTION_22_1();
    MEMORY[0x21CEA23B0]();
    v14 = OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_28(v14, v15, v14, MEMORY[0x277D84698], MEMORY[0x277D846A8], v16, v17, v18);
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_21_0();
    goto LABEL_23;
  }

  v2 = v1;
  v3 = qword_280BE9638;

  if (v3 != -1)
  {
    swift_once();
  }

  if ((OUTLINED_FUNCTION_19_0(qword_280C027F0) & 1) == 0)
  {
    v4 = qword_280BE9600;

    if (v4 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_19_0(qword_280BE9608);
    OUTLINED_FUNCTION_15_2();
    if ((v4 & 1) == 0)
    {
      v7 = qword_280BE9558;

      if (v7 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB240E0, &qword_217757BB8);
      v8 = OUTLINED_FUNCTION_12_5();
      v10 = v9;
      static AnyMusicProperty.== infix(_:_:)(v8, v2);
      OUTLINED_FUNCTION_15_2();
      if ((v10 & 1) == 0)
      {
        v11 = qword_280BE81F8;

        if (v11 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_19_0(qword_280C024C8);
        OUTLINED_FUNCTION_15_2();
        if ((v11 & 1) == 0)
        {
          v12 = qword_280BE9430;

          if (v12 != -1)
          {
            OUTLINED_FUNCTION_7_4(&qword_280BE9430);
          }

          OUTLINED_FUNCTION_19_0(qword_280BE9438);
          OUTLINED_FUNCTION_15_2();
          if ((v12 & 1) == 0)
          {
            v13 = qword_280BE9460;

            if (v13 != -1)
            {
              OUTLINED_FUNCTION_6_3(&qword_280BE9460);
            }

            OUTLINED_FUNCTION_19_0(qword_280BE9468);
            OUTLINED_FUNCTION_15_2();
            if ((v13 & 1) == 0)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_1();
                sub_217752AA8();
                OUTLINED_FUNCTION_23_4();
                OUTLINED_FUNCTION_22_1();
                MEMORY[0x21CEA23B0](0xD000000000000021);
                v19 = OUTLINED_FUNCTION_29_4();
                OUTLINED_FUNCTION_28(v19, v20, v19, MEMORY[0x277D84698], MEMORY[0x277D846A8], v21, v22, v23);
                OUTLINED_FUNCTION_17_1();
                OUTLINED_FUNCTION_21_0();
LABEL_23:
                OUTLINED_FUNCTION_4("Fatal error");
                __break(1u);
              }
            }
          }
        }
      }
    }
  }

  v5 = Album.LegacyModelAlbumPropertyKey.rawValue.getter();

  return v5;
}

uint64_t sub_21725A828@<X0>(char *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240B8, &qword_217757AF0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    OUTLINED_FUNCTION_23_4();
    v12 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v12, 0xE900000000000020);
    v13 = OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_28(v13, v14, v13, MEMORY[0x277D84698], MEMORY[0x277D846A8], v15, v16, v17);
    OUTLINED_FUNCTION_22_1();
    MEMORY[0x21CEA23B0](0xD00000000000001ALL);
    OUTLINED_FUNCTION_21_0();
    goto LABEL_16;
  }

  v5 = v4;
  v6 = qword_280BE9430;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_7_4(&qword_280BE9430);
  }

  if (static AnyMusicProperty.== infix(_:_:)(qword_280BE9438, v5))
  {
    v7 = 2;
  }

  else
  {
    v8 = qword_280BE9460;

    if (v8 != -1)
    {
      OUTLINED_FUNCTION_6_3(&qword_280BE9460);
    }

    v9 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9468, v5);

    if (v9)
    {
      v7 = 8;
    }

    else
    {
      v10 = qword_280BE9448;

      if (v10 != -1)
      {
        OUTLINED_FUNCTION_8_5(&qword_280BE9448);
      }

      static AnyMusicProperty.== infix(_:_:)(qword_280BE9450, v5);
      OUTLINED_FUNCTION_15_2();
      if ((v3 & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          sub_217752AA8();
          OUTLINED_FUNCTION_23_4();
          OUTLINED_FUNCTION_22_1();
          MEMORY[0x21CEA23B0](v18);
          v19 = OUTLINED_FUNCTION_29_4();
          OUTLINED_FUNCTION_28(v19, v20, v19, MEMORY[0x277D84698], MEMORY[0x277D846A8], v21, v22, v23);
          OUTLINED_FUNCTION_17_1();
          OUTLINED_FUNCTION_21_0();
LABEL_16:
          OUTLINED_FUNCTION_4("Fatal error");
          __break(1u);
        }
      }

      v7 = 34;
    }
  }

  *a2 = v7;
  return result;
}

uint64_t sub_21725AA50(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 568) = v4;
  *(v5 + 560) = a4;
  *(v5 + 552) = a2;
  *(v5 + 544) = a1;
  *(v5 + 193) = *a3;
  return MEMORY[0x2822009F8](sub_21725AA84, 0, 0);
}

uint64_t sub_21725AA84()
{
  v1 = v0[69];
  v0[72] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240B8, &qword_217757AF0);
  v2 = swift_dynamicCastClass();
  v0[73] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[74] = v3;
    *v3 = v0;
    v3[1] = sub_21725AC28;

    return sub_217624F28((v0 + 55), 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    v0[62] = v6;
    v0[63] = v7;
    v5 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v5, 0xE900000000000020);
    v0[66] = v1;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000001ALL, 0x80000002177AABF0);
    return OUTLINED_FUNCTION_4("Fatal error");
  }
}

uint64_t sub_21725AC28()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 600) = v0;

  if (v0)
  {
    v5 = sub_21725B0A4;
  }

  else
  {
    v5 = sub_21725AD30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21725AD30()
{
  v1 = qword_280BE9448;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_8_5(&qword_280BE9448);
  }

  v2 = *(v0 + 576);
  static AnyMusicProperty.== infix(_:_:)(qword_280BE9450, *(v0 + 584));
  OUTLINED_FUNCTION_15_2();
  if (v2)
  {
    v3 = *(v0 + 193);
    sub_21749A834();
    *(v0 + 224) = v3;
    KeyPath = swift_getKeyPath(byte_217757AF8);
    sub_21725B398(KeyPath, v0 + 440);

    v5 = swift_getKeyPath("ho=e");
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB240C0, &qword_217757B48);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;

    MEMORY[0x21CEA25D0](v7);
    OUTLINED_FUNCTION_26_2();
    if (v8)
    {
      OUTLINED_FUNCTION_16_10();
    }

    sub_217752378();

    swift_getKeyPath("@o=e");
    v9 = OUTLINED_FUNCTION_27_5();
    *(v9 + 16) = v5;
    *(v9 + 24) = 1;

    MEMORY[0x21CEA25D0](v10);
    OUTLINED_FUNCTION_26_2();
    if (v8)
    {
      OUTLINED_FUNCTION_16_10();
    }

    sub_217752378();

    swift_getKeyPath(" o=e");
    v11 = OUTLINED_FUNCTION_27_5();
    *(v11 + 16) = v5;
    *(v11 + 24) = 1;

    MEMORY[0x21CEA25D0](v12);
    if (*((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2177522F8();
    }

    v13 = *(v0 + 560);
    sub_217752378();

    *(v0 + 200) = v13;
    memcpy((v0 + 120), (v0 + 200), 0x49uLL);
    v14 = swift_task_alloc();
    *(v0 + 608) = v14;
    *v14 = v0;
    v14[1] = sub_21725B100;

    return sub_2173E7EA4();
  }

  else
  {
    v16 = *(v0 + 552);
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 512) = v17;
    *(v0 + 520) = v18;
    MEMORY[0x21CEA23B0](0xD000000000000028, 0x80000002177AAC10);
    *(v0 + 536) = v16;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    return OUTLINED_FUNCTION_4("Fatal error");
  }
}

uint64_t sub_21725B0A4()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21725B100()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 616) = v0;

  if (v0)
  {
    v5 = sub_21725B2D4;
  }

  else
  {
    v5 = sub_21725B208;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21725B208()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[68];
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240D0, &unk_21775D400);
  v1[4] = &protocol witness table for MusicItemCollection<A>;
  v2 = swift_allocObject();
  *v1 = v2;
  memcpy((v2 + 16), v0 + 2, 0x68uLL);

  sub_21725CE44((v0 + 55));
  memcpy(v0 + 45, v0 + 25, 0x49uLL);
  sub_21725CE98((v0 + 45));
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21725B2D4()
{
  OUTLINED_FUNCTION_10();

  sub_21725CE44(v0 + 440);
  memcpy((v0 + 280), (v0 + 200), 0x49uLL);
  sub_21725CE98(v0 + 280);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21725B350(void *a1)
{
  OUTLINED_FUNCTION_11_11(a1);
  v2 = OUTLINED_FUNCTION_5_4();
  return v3(v2, v1);
}

uint64_t sub_21725B398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21725CF0C(a2, v11);
  v12[24] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240D8, &qword_217757BB0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = v11[1];
  *(v6 + 24) = v11[0];
  *(v6 + 40) = v7;
  *(v6 + 56) = *v12;
  *(v6 + 65) = *&v12[9];

  MEMORY[0x21CEA25D0](v8);
  sub_217204C70(*((*(v3 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_217752378();
  sub_21770B774();
  v9 = *(*(v3 + 64) + 16);
  sub_21770BAA4(v9);

  sub_21725CF0C(a2, v11);
  return sub_21725CFC4(v9, v11, v3 + 64, &type metadata for Album, &protocol witness table for Album, &unk_2829609A8);
}

uint64_t sub_21725B4F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  sub_21725CF68(a2, v15);
  v16[24] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = v15[1];
  *(v10 + 24) = v15[0];
  *(v10 + 40) = v11;
  *(v10 + 56) = *v16;
  *(v10 + 65) = *&v16[9];

  MEMORY[0x21CEA25D0](v12);
  sub_217204C70(*((*(v7 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_217752378();
  sub_21770B774();
  v13 = *(*(v7 + 64) + 16);
  sub_21770BAA4(v13);

  sub_21725CF68(a2, v15);
  return sub_21725CFC4(v13, v15, v7 + 64, &type metadata for Artist, &protocol witness table for Artist, &unk_2829609D0);
}

uint64_t sub_21725B620(void *a1)
{
  OUTLINED_FUNCTION_11_11(a1);
  v2 = OUTLINED_FUNCTION_5_4();
  v4 = v3(v2, v1);
  return OUTLINED_FUNCTION_3_13(v4, v5);
}

uint64_t sub_21725B668(void *a1)
{
  OUTLINED_FUNCTION_11_11(a1);
  v2 = OUTLINED_FUNCTION_5_4();
  v4 = v3(v2, v1);
  return OUTLINED_FUNCTION_3_13(v4, v5);
}

uint64_t sub_21725B6B0(void *a1)
{
  OUTLINED_FUNCTION_11_11(a1);
  v3 = OUTLINED_FUNCTION_5_4();
  result = v4(v3, v2);
  *v1 = result;
  v1[1] = v6;
  return result;
}

uint64_t sub_21725B740(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_21725B7AC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21725B86C;

  return sub_21725AA50(a1, a2, a3, a4);
}

uint64_t sub_21725B86C()
{
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21725B95C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21725B97C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_21725BA6C@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_11_19();
  *a1 = result;
  return result;
}

uint64_t sub_21725BAA0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_2174AFDB8(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_21725BAEC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_217751988();
}

uint64_t sub_21725BC44(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  swift_getWitnessTable();
  sub_217751998();
  return sub_217753238();
}

uint64_t sub_21725BD38(uint64_t a1, id *a2)
{
  v3 = sub_217751F38();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21725BDB8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_21725CDC4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21725BE08()
{
  v1 = OUTLINED_FUNCTION_24_5();
  result = sub_217515F34(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21725BE44(uint64_t a1)
{
  v2 = sub_21720FE64(&qword_280BE75F8, type metadata accessor for ICError, &unk_21775800C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_21725BEB0(uint64_t a1)
{
  v2 = sub_21720FE64(&qword_280BE75F8, type metadata accessor for ICError, &unk_21775800C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21725BF1C(void *a1, uint64_t a2)
{
  v4 = sub_21720FE64(&qword_280BE75F8, type metadata accessor for ICError, &unk_21775800C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_21725BFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21720FE64(&qword_280BE75F8, type metadata accessor for ICError, &unk_21775800C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_21725C054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2177531E8();
  sub_217751EB8();
  return sub_217753238();
}

void sub_21725C0B4()
{
  OUTLINED_FUNCTION_24_5();
  nullsub_1();
  *v0 = v1;
}

void sub_21725C31C(uint64_t *a2@<X8>)
{
  v3 = sub_217751F18();

  *a2 = v3;
}

uint64_t sub_21725C364(uint64_t a1)
{
  v2 = sub_21720FE64(&qword_27CB240A8, type metadata accessor for Name, &unk_21775786C);
  v3 = sub_21720FE64(&qword_27CB240B0, type metadata accessor for Name, &unk_21775780C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21725C420(uint64_t a1)
{
  v2 = sub_21720FE64(&qword_280BE7600, type metadata accessor for ICError, &unk_217757FCC);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21725C48C(uint64_t a1)
{
  v2 = sub_21720FE64(&qword_280BE7600, type metadata accessor for ICError, &unk_217757FCC);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21725C4FC(uint64_t a1)
{
  v2 = sub_21720FE64(&qword_280BE75F8, type metadata accessor for ICError, &unk_21775800C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_21725C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21720FE64(&qword_280BE75F8, type metadata accessor for ICError, &unk_21775800C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_21725C904(uint64_t a1)
{
  v1 = sub_217751F48();
  v2 = MEMORY[0x21CEA2430](v1);

  return v2;
}

double sub_21725C93C(uint64_t a1, uint64_t a2)
{
  sub_217751F48();
  sub_217751FF8();
}

uint64_t sub_21725C990(uint64_t a1, uint64_t a2)
{
  sub_217751F48();
  sub_2177531E8();
  sub_217751FF8();
  v2 = sub_217753238();

  return v2;
}

uint64_t sub_21725CDC4(uint64_t a1)
{
  sub_217751F48();
  v1 = sub_217751F18();

  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21725CE98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27660, &unk_217757BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_21725CF00(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21725CFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a4;
  v15 = a5;
  v9 = swift_allocObject();
  *&v13 = v9;
  v10 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a2 + 32);
  *(v9 + 64) = *(a2 + 48);
  v11 = *a3 + 40 * a1;
  *(*a3 + 16) = a1 + 1;
  return sub_2171F3F0C(&v13, v11 + 32);
}

uint64_t objectdestroy_395Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_21725D2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7608;
  if (!qword_280BE7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7608);
  }

  return result;
}

void *OUTLINED_FUNCTION_11_11(void *a1)
{
  v2 = a1[3];

  return __swift_project_boxed_opaque_existential_1(a1, v2);
}

uint64_t OUTLINED_FUNCTION_16_10()
{

  return sub_2177522F8();
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return type metadata accessor for AnyMusicProperty();
}

void sub_21725D480()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = HIBYTE(v2) & 0xF;
  v6 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_70;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    sub_217751DE8();
    v10 = sub_2175B1ECC();
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v8 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v8 = sub_217752B88();
    }

    v9 = *v8;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          v10 = 0;
          if (v8)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v12 & v11)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_7();
              if (!v12)
              {
                goto LABEL_68;
              }

              v10 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_2_5();
              if (v12)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_77;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        v10 = 0;
        if (v8)
        {
          while (1)
          {
            v22 = *v8 - 48;
            if (v22 > 9)
            {
              goto LABEL_68;
            }

            v23 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_68;
            }

            v10 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_68;
            }

            ++v8;
            if (!--v6)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v10 = 0;
      v15 = 1;
LABEL_69:
      if ((v15 & 1) == 0)
      {
LABEL_71:
        sub_21725D794();
        sub_217751DE8();
        sub_21725D718(v10, v3, v4);
        return;
      }

LABEL_70:
      v10 = 0;
      goto LABEL_71;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        v10 = 0;
        if (v8)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v12 & v11)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_7();
            if (!v12)
            {
              goto LABEL_68;
            }

            v10 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_5();
            if (v12)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v15 = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v1 != 43)
  {
    if (v1 != 45)
    {
      if (v5)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_0_7();
          if (!v12)
          {
            break;
          }

          v10 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
          if (v12)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v5)
    {
      if (v5 != 1)
      {
        OUTLINED_FUNCTION_3_14();
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_0_7();
          if (!v12)
          {
            break;
          }

          v10 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
          if (v12)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_76;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      OUTLINED_FUNCTION_3_14();
      while (1)
      {
        OUTLINED_FUNCTION_1_2();
        if (!v12 & v11)
        {
          break;
        }

        OUTLINED_FUNCTION_0_7();
        if (!v12)
        {
          break;
        }

        v10 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        OUTLINED_FUNCTION_2_5();
        if (v12)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_78:
  __break(1u);
}

id sub_21725D718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_217751F18();
  v6 = [v4 initWithValue:a1 databaseID:{v5, }];

  return v6;
}

unint64_t sub_21725D794()
{
  result = qword_280BE22E0;
  if (!qword_280BE22E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE22E0);
  }

  return result;
}

uint64_t sub_21725D7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(a6, a7, (a8 + 4));
  v10 = *(*(a6 - 8) + 8);

  return v10(a5, a6);
}

uint64_t sub_21725D850()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 312) = v2;
  *(v1 + 320) = v0;
  *(v1 + 296) = v3;
  *(v1 + 304) = v4;
  *(v1 + 169) = v5;
  *(v1 + 288) = v6;
  sub_217751908();
  *(v1 + 328) = swift_task_alloc();
  v7 = sub_217751928();
  *(v1 + 336) = v7;
  *(v1 + 344) = *(v7 - 8);
  *(v1 + 352) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21725D944, 0, 0);
}

uint64_t sub_21725D944()
{
  v1 = *(v0 + 320);
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v0 + 169);
    v4 = *(v0 + 296);
    v5 = *(v1 + 16);
    *(v0 + 16) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 1;
    swift_beginAccess();
    v6 = off_280BEBCD0;
    sub_217751DE8();

    (v6)((v0 + 224));

    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v7);
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v7, v8, v0 + 56);
    __swift_destroy_boxed_opaque_existential_1((v0 + 224));
    *(v0 + 96) = v5;
    *(v0 + 104) = v2;
    *(v0 + 168) = 1;
    sub_21725EE54(v1 + 32, v0 + 56);
    *(v0 + 24) = v4;
    *(v0 + 32) = v3 & 1;
    v9 = swift_task_alloc();
    *(v0 + 360) = v9;
    *v9 = v0;
    v9[1] = sub_21725DB78;

    return sub_2173BC97C();
  }

  else
  {
    v12 = *(v0 + 344);
    v11 = *(v0 + 352);
    v13 = *(v0 + 336);
    sub_2177518E8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_21725EDFC();
    sub_217751618();
    sub_217751918();
    (*(v12 + 8))(v11, v13);
    swift_willThrow();

    OUTLINED_FUNCTION_20_0();

    return v14();
  }
}

uint64_t sub_21725DB78()
{
  OUTLINED_FUNCTION_10();
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_21725DD80;
  }

  else
  {
    v2 = sub_21725DC88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21725DC88()
{
  sub_2175E6EE4(*(v0 + 304), *(v0 + 312), *(v0 + 288));

  sub_21725EEB0(v0 + 16);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21725DD80()
{
  OUTLINED_FUNCTION_10();
  sub_21725EEB0(v0 + 16);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21725DDF0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_217753058() & 1) != 0)
  {
    v5 = a1[3];
    v6 = a2[3];
    if (v5)
    {
      if (v6)
      {
        v7 = a1[2] == a2[2] && v5 == v6;
        if (v7 || (sub_217753058() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v6)
    {
LABEL_13:
      v8 = a1[7];
      v9 = a1[8];
      __swift_project_boxed_opaque_existential_1(a1 + 4, v8);
      v10 = *(v9 + 112);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
      return v10(a2 + 4, v11, v8, v9) & 1;
    }
  }

  return 0;
}

uint64_t sub_21725DED4(uint64_t a1)
{
  v2 = v1;
  sub_217751FF8();
  if (v2[3])
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  v4 = v2[7];
  v5 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v4);
  return (*(v5 + 120))(a1, v4, v5);
}

uint64_t sub_21725DF70()
{
  sub_2177531E8();
  sub_21725DED4(v1);
  return sub_217753238();
}

uint64_t sub_21725DFB0()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

uint64_t sub_21725DFE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21725E0A8;

  return sub_21725D850();
}

uint64_t sub_21725E0A8()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21725E1A0(uint64_t a1)
{
  sub_2177531E8();
  sub_21725DED4(v2);
  return sub_217753238();
}

void sub_21725E1DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v11);
  v15 = &__src[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v16 = *(v5 + 64);
  if (v16)
  {
    v17 = *(v5 + 56);
    (*(v13 + 16))(v15, v12, a3);
    sub_217751DE8();
    sub_217751DE8();
    sub_21725D7D8(a1, a2, v17, v16, v15, a3, a4, __src);
    v18 = swift_allocObject();
    memcpy((v18 + 16), __src, 0x48uLL);
    sub_21725EA28(a5);
    *a5 = v18;
    *(a5 + 24) = &type metadata for MusicCatalogChartsIncrementalLoader;
    *(a5 + 32) = &off_282960BF0;
  }
}

uint64_t sub_21725E340(uint64_t a1, uint64_t a2)
{
  v2 = sub_217752DC8();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21725E3CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21725E340(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21725E3FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21721FA70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21725E430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21725E340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21725E478@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21725E394();
  *a1 = result;
  return result;
}

uint64_t sub_21725E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21725E8A8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21725E4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21725E8A8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_21725E518(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24168, &qword_217758180);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21725E8A8(v6, v7, v8);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15[0] = OUTLINED_FUNCTION_4_13();
    v15[1] = v9;
    v16 = 1;
    v15[2] = OUTLINED_FUNCTION_4_13();
    v15[3] = v10;
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    Decoder.dataRequestConfiguration.getter(v11, v12);
    v13 = OUTLINED_FUNCTION_1_3();
    v14(v13);
    sub_21725E8FC(v15, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21725E934(v15);
  }
}

uint64_t sub_21725E6F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24178, &qword_217758188);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21725E8A8(v11, v12, v13);
  sub_2177532F8();
  LOBYTE(v16) = 0;
  sub_217752F48();
  if (!v2)
  {
    v16 = *(v3 + 16);
    v15[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
    sub_21725E964();
    sub_217752F88();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_21725E8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24170;
  if (!qword_27CB24170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24170);
  }

  return result;
}

unint64_t sub_21725E964()
{
  result = qword_27CB24180;
  if (!qword_27CB24180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CB24B10, &unk_217758190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24180);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21725EA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24188, &dword_217758930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for MusicCatalogChartsIncrementalLoader.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogChartsIncrementalLoader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21725EBFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21725EC3C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21725ECA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24190;
  if (!qword_27CB24190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24190);
  }

  return result;
}

unint64_t sub_21725ECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24198;
  if (!qword_27CB24198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24198);
  }

  return result;
}

unint64_t sub_21725ED50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB241A0;
  if (!qword_27CB241A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB241A0);
  }

  return result;
}

unint64_t sub_21725EDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB241A8;
  if (!qword_27CB241A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB241A8);
  }

  return result;
}

unint64_t sub_21725EDFC()
{
  result = qword_27CB241B0;
  if (!qword_27CB241B0)
  {
    sub_217751928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB241B0);
  }

  return result;
}

uint64_t WeakValuesDictionary.keys.getter(uint64_t a1)
{
  sub_2171F5808();
  sub_217751DE8();
  OUTLINED_FUNCTION_9_6();
  sub_217751DD8();
  swift_getWitnessTable();
  return sub_217752468();
}

void WeakValuesDictionary.values.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = *(v2 + 24);
  v88 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v103 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v102 = v85 - v7;
  OUTLINED_FUNCTION_0();
  v101 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  v87 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v86 = v85 - v13;
  v14 = *(v3 + 16);
  OUTLINED_FUNCTION_0();
  v90 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v92 = v18 - v17;
  v19 = sub_2171F5808();
  v100 = v14;
  v85[1] = v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9_6();
  v98 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_1();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v85 - v28;
  v30 = *v1;
  sub_217751DE8();
  v106 = sub_217752338();
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = sub_217752CE8();
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v30 = v31 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_8_6();
    v34 = v35 & v36;
  }

  v37 = 0;
  v91 = v90 + 32;
  v85[0] = v33;
  v38 = (v33 + 64) >> 6;
  v89 = v90 + 16;
  v96 = (v22 + 32);
  v85[5] = v103 + 8;
  v85[4] = v101 + 32;
  v85[3] = v101 + 16;
  v85[2] = v101 + 8;
  v93 = v29;
  v94 = (v90 + 8);
  v99 = TupleTypeMetadata2;
  v103 = v26;
  v97 = v30;
  v95 = v32;
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v39 = v37;
  if (v34)
  {
LABEL_9:
    OUTLINED_FUNCTION_11_12();
    v101 = v40;
    v42 = v41 | (v39 << 6);
    v43 = v90;
    v44 = *(v30 + 48) + *(v90 + 72) * v42;
    v45 = v92;
    v46 = v30;
    v47 = v100;
    (*(v90 + 16))(v92, v44, v100);
    v48 = *(*(v46 + 56) + 8 * v42);
    v49 = v4;
    v50 = *(v99 + 48);
    v51 = *(v43 + 32);
    TupleTypeMetadata2 = v99;
    v52 = v45;
    v29 = v93;
    v51(v103, v52, v47);
    *(v103 + v50) = v48;
    v4 = v49;
    v26 = v103;
    OUTLINED_FUNCTION_4_14();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, TupleTypeMetadata2);
    v56 = v48;
    v37 = v39;
    goto LABEL_15;
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return;
    }

    if (v39 >= v38)
    {
      break;
    }

    ++v37;
    if (*(v32 + 8 * v39))
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, TupleTypeMetadata2);
  v101 = 0;
LABEL_15:
  while (1)
  {
    (*v96)(v29, v26, v98);
    if (__swift_getEnumTagSinglePayload(v29, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v70 = *&v29[*(TupleTypeMetadata2 + 48)];
    if ([v70 weakObjectValue])
    {
      sub_2177529C8();
      swift_unknownObjectRelease();
      sub_2172124CC(&v104, v105);
    }

    else
    {
      memset(v105, 0, sizeof(v105));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
    if (swift_dynamicCast())
    {
      v71 = v102;
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v4);
      OUTLINED_FUNCTION_2_8();
      v75 = v86;
      v76(v86, v71, v4);
      OUTLINED_FUNCTION_2_8();
      v77(v87, v75, v4);
      sub_217752418();
      sub_2177523C8();

      OUTLINED_FUNCTION_2_8();
      v79 = v75;
      v26 = v103;
      v80 = v4;
    }

    else
    {

      v81 = v102;
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v4);
      OUTLINED_FUNCTION_2_8();
      v79 = v81;
      v80 = v88;
    }

    v78(v79, v80);
    v34 = v101;
    (*v94)(v29, v100);
    v30 = v97;
    v32 = v95;
    if ((v97 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (sub_217752CF8())
    {
      v58 = v57;
      v59 = v92;
      v60 = v100;
      sub_217753038();
      swift_unknownObjectRelease();
      *&v104 = v58;
      swift_dynamicCast();
      v61 = *&v105[0];
      v62 = *(v99 + 48);
      OUTLINED_FUNCTION_2_8();
      v63 = v59;
      TupleTypeMetadata2 = v99;
      v64(v26, v63, v60);
      *(v26 + v62) = v61;
      v65 = v26;
      v66 = 0;
    }

    else
    {
      v65 = v26;
      v66 = 1;
    }

    __swift_storeEnumTagSinglePayload(v65, v66, 1, TupleTypeMetadata2);
    v101 = v34;
    v29 = v93;
  }

  sub_2172303F0(v97);
  OUTLINED_FUNCTION_13();
}

void sub_21725F704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = sub_2177528F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v17 - v15, a3, v6, v14);
  (*(v10 + 16))(v12, a1, v9);
  type metadata accessor for WeakValuesDictionary(0, v6, v7, v8);
  WeakValuesDictionary.subscript.setter();
}

void (*WeakValuesDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  *v6 = a3;
  v6[1] = v3;
  v7 = sub_2177528F8();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v9 = *(v8 + 64);
  v6[4] = __swift_coroFrameAllocStub(v9);
  v6[5] = __swift_coroFrameAllocStub(v9);
  v6[6] = *(a3 + 16);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v6[7] = v10;
  v13 = *(v12 + 64);
  v6[8] = __swift_coroFrameAllocStub(v13);
  v6[9] = __swift_coroFrameAllocStub(v13);
  (*(v11 + 16))();
  WeakValuesDictionary.subscript.getter();
  return sub_21725FA2C;
}

void sub_21725FA2C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  if (a2)
  {
    v5 = v2[7];
    v10 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v10);
    WeakValuesDictionary.subscript.setter();
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    WeakValuesDictionary.subscript.setter();
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

Swift::Void __swiftcall WeakValuesDictionary.compact()()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v108 = *(v1 + 24);
  v92 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v107 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v83 - v5;
  v87 = v2;
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_0();
  v101 = v8;
  MEMORY[0x28223BE20](v9);
  v86 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  v84 = v14;
  MEMORY[0x28223BE20](v15);
  v102 = &v83 - v16;
  v89 = sub_2171F5808();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v98 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_1();
  v97 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  OUTLINED_FUNCTION_10_3();
  v111 = sub_217752338();
  v25 = *v0;
  v26 = (*v0 & 0xC000000000000001) == 0;
  v88 = v0;
  if (v26)
  {
    v28 = v25 + 64;
    OUTLINED_FUNCTION_8_6();
    v30 = v31 & v32;
    v100 = v25;
  }

  else
  {
    v27 = sub_217752CE8();
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v100 = v27 | 0x8000000000000000;
  }

  v106 = (v101 + 32);
  v85 = v29;
  v99 = (v29 + 64) >> 6;
  v104 = (v101 + 16);
  v94 = v18 + 32;
  v91 = v107 + 8;
  v33 = (v101 + 8);
  sub_217751DE8();
  v34 = 0;
  v90 = v13;
  v35 = TupleTypeMetadata2;
  v96 = v7;
  v95 = v28;
  v36 = v30;
  while (1)
  {
    v103 = v36;
    v93 = v34;
    if ((v100 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_217752CF8())
    {
      v55 = v54;
      sub_217753038();
      swift_unknownObjectRelease();
      *&v109[0] = v55;
      swift_dynamicCast();
      v56 = *&v110[0];
      v57 = *(v35 + 48);
      v58 = v97;
      OUTLINED_FUNCTION_3_15();
      v59();
      *(v58 + v57) = v56;
      v48 = v58;
      v60 = v58;
      v61 = 0;
    }

    else
    {
      v48 = v97;
      v60 = v97;
      v61 = 1;
    }

    __swift_storeEnumTagSinglePayload(v60, v61, 1, v35);
    v107 = v103;
    v13 = v90;
LABEL_16:
    OUTLINED_FUNCTION_2_8();
    v65(v24, v48, v98);
    if (__swift_getEnumTagSinglePayload(v24, 1, v35) == 1)
    {
      sub_2172303F0(v100);
      v75 = v111;
      sub_217751DE8();
      v76 = v96;
      v77 = sub_2177522A8();

      *&v110[0] = v77;
      v78 = sub_217752388();
      v79 = v86;
      if (v77 != v78)
      {
        do
        {
          v80 = sub_217752358();
          sub_2177522D8();
          if (v80)
          {
            (*(v101 + 16))(v79, v75 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v77, v76);
          }

          else
          {
            OUTLINED_FUNCTION_3_15();
            v82 = sub_217752AC8();
            if (v84 != 8)
            {
              goto LABEL_33;
            }

            *&v109[0] = v82;
            (*v104)(v79, v109, v76);
            swift_unknownObjectRelease();
          }

          OUTLINED_FUNCTION_3_15();
          sub_2177523E8();
          OUTLINED_FUNCTION_10_3();
          sub_217751E38();
          sub_217751DB8();

          (*v33)(v79, v76);
          v81 = sub_217752388();
          v77 = *&v110[0];
        }

        while (*&v110[0] != v81);
      }

      OUTLINED_FUNCTION_13();
      return;
    }

    v66 = *&v24[*(v35 + 48)];
    v7 = v96;
    (*v106)(v13, v24, v96);
    if ([v66 weakObjectValue])
    {
      sub_2177529C8();
      swift_unknownObjectRelease();
      sub_2172124CC(v109, v110);
    }

    else
    {
      memset(v110, 0, sizeof(v110));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
    if (swift_dynamicCast())
    {
      (*v33)(v13, v7);

      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v108);
      OUTLINED_FUNCTION_2_8();
      v70(v6, v92);
    }

    else
    {
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v71, v72, v73, v108);
      OUTLINED_FUNCTION_2_8();
      v74(v6, v92);
      (*v104)(v102, v13, v7);
      OUTLINED_FUNCTION_10_3();
      sub_217752418();
      v35 = TupleTypeMetadata2;
      sub_2177523C8();

      (*v33)(v13, v7);
    }

    v36 = v107;
    v28 = v95;
  }

  v37 = v34;
  if (v36)
  {
LABEL_10:
    OUTLINED_FUNCTION_11_12();
    v107 = v38;
    v40 = v39 | (v37 << 6);
    v42 = v101;
    v41 = v102;
    v44 = v43;
    (*(v101 + 16))(v102, *(v43 + 48) + *(v101 + 72) * v40, v7);
    v45 = *(*(v44 + 56) + 8 * v40);
    v46 = *(TupleTypeMetadata2 + 48);
    v47 = *(v42 + 32);
    v13 = v90;
    v48 = v97;
    v49 = v41;
    v35 = TupleTypeMetadata2;
    v47(v97, v49, v7);
    *(v48 + v46) = v45;
    OUTLINED_FUNCTION_4_14();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v35);
    v53 = v45;
    v34 = v37;
    goto LABEL_16;
  }

  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v37 >= v99)
    {
      v48 = v97;
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v35);
      v107 = 0;
      goto LABEL_16;
    }

    ++v34;
    if (*(v28 + 8 * v37))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t WeakValuesDictionary.description.getter(void *a1)
{
  OUTLINED_FUNCTION_3_15();
  swift_getTupleTypeMetadata2();
  sub_217752338();
  OUTLINED_FUNCTION_3_15();
  sub_217751DC8();
  WeakValuesDictionary.keys.getter(a1);
  sub_217752418();
  swift_getWitnessTable();
  sub_2177521C8();

  OUTLINED_FUNCTION_3_15();
  v2 = sub_217751DA8();

  return v2;
}

uint64_t sub_2172604A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2177528F8();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  (*(v15 + 16))(v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4, v13);
  v17[1] = a3;
  type metadata accessor for WeakValuesDictionary(0, a4, a5, a6);
  WeakValuesDictionary.subscript.getter();
  sub_217751E38();
  return sub_217751E78();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_21726068C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2172606CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21726071C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24200, &qword_217758588);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3_16();
  v2 = sub_2177518A8();
  OUTLINED_FUNCTION_0_0();
  v31 = v3;
  MEMORY[0x28223BE20](v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = sub_217751838();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v32 = sub_217751888();
  OUTLINED_FUNCTION_0_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = type metadata accessor for CloudFormatter(0);
  __swift_allocate_value_buffer(v22, qword_280BE8918);
  v23 = __swift_project_value_buffer(v22, qword_280BE8918);
  (*(v11 + 104))(v15, *MEMORY[0x277CC9830], v9);
  sub_217751848();
  (*(v11 + 8))(v15, v9);
  sub_217751898();
  if (__swift_getEnumTagSinglePayload(v0, 1, v2) == 1)
  {
    sub_2171F06D8(v0, &qword_27CB24200, &qword_217758588);
  }

  else
  {
    v24 = v31;
    (*(v31 + 32))(v8, v0, v2);
    (*(v24 + 16))(v30, v8, v2);
    sub_217751868();
    (*(v24 + 8))(v8, v2);
  }

  v25 = v32;
  (*(v17 + 16))(v23, v21, v32);
  v26 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  *(v23 + *(v22 + 20)) = v26;
  [v26 setFormatOptions_];
  v27 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  *(v23 + *(v22 + 24)) = v27;
  [v27 setFormatOptions_];
  return (*(v17 + 8))(v21, v25);
}

uint64_t static CloudFormatter.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CloudFormatter(0);
  v3 = __swift_project_value_buffer(v2, qword_280BE8918);

  return sub_217260BA4(v3, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for CloudFormatter(uint64_t a1)
{
  result = qword_280BE88F8;
  if (!qword_280BE88F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217260BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudFormatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CloudFormatter.date(from:withFormat:)@<X0>(uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = *a3;
  sub_2177517D8();
  OUTLINED_FUNCTION_5_6(v16, 1);
  if (a2)
  {
    v18 = type metadata accessor for CloudFormatter(0);
    if (v17)
    {
      v19 = *(v4 + *(v18 + 24));
      v20 = sub_217751F18();
      v21 = [v19 dateFromString_];

      if (v21)
      {
        sub_2177517C8();

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      sub_2171F06D8(v16, &qword_27CB241C0, &qword_217759480);
      OUTLINED_FUNCTION_5_6(v10, v22);
      v13 = v10;
    }

    else
    {
      v24 = *(v4 + *(v18 + 20));
      v25 = sub_217751F18();
      v26 = [v24 dateFromString_];

      if (v26)
      {
        sub_2177517C8();

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      sub_2171F06D8(v16, &qword_27CB241C0, &qword_217759480);
      OUTLINED_FUNCTION_5_6(v13, v27);
    }

    sub_217260E5C(v13, v16);
    return sub_217260E5C(v16, a4);
  }

  else
  {
    sub_2171F06D8(v16, &qword_27CB241C0, &qword_217759480);
    return OUTLINED_FUNCTION_5_6(a4, 1);
  }
}

uint64_t sub_217260E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CloudFormatter.string(from:withFormat:)(uint64_t a1, unsigned __int8 *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_3_16();
  v7 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = *a2;
  sub_2172610A0(a1, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    sub_2171F06D8(v3, &qword_27CB241C0, &qword_217759480);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v13, v3, v7);
    v16 = type metadata accessor for CloudFormatter(0);
    v17 = 20;
    if (v14)
    {
      v17 = 24;
    }

    v18 = *(v2 + *(v16 + v17));
    v19 = sub_2177517A8();
    v20 = [v18 stringFromDate_];

    v15 = sub_217751F48();
    (*(v9 + 8))(v13, v7);
  }

  return v15;
}

uint64_t sub_2172610A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double CloudFormatter.dateComponents(from:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C8, &qword_2177584A0);
  v1 = sub_217751878();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_217758490;
  v8 = v7 + v6;
  v9 = *(v3 + 104);
  v9(v8, *MEMORY[0x277CC9978], v1);
  v9(v8 + v5, *MEMORY[0x277CC9988], v1);
  v9(v8 + 2 * v5, *MEMORY[0x277CC9998], v1);
  v9(v8 + 3 * v5, *MEMORY[0x277CC9968], v1);
  sub_21726138C(v7);
  sub_217751858();
}

uint64_t CloudFormatter.DateFormat.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_217261348(uint64_t a1)
{
  v2 = *v1;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v2);
  return sub_217753238();
}

uint64_t sub_21726138C(uint64_t a1)
{
  v2 = sub_217751878();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241F8, &qword_217758580);
  result = sub_217752A78();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_217261C2C(&qword_280BE73F0, MEMORY[0x277CC99D8]);
    v14 = sub_217751EA8();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v4, *(v8 + 48) + v16 * v12, v2);
      sub_217261C2C(&qword_280BE73E8, MEMORY[0x277CC99E0]);
      v21 = sub_217751F08();
      v22 = *v11;
      (*v11)(v4, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_2172616AC()
{
  result = qword_27CB241D0;
  if (!qword_27CB241D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB241D8, &qword_2177584A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB241D0);
  }

  return result;
}

unint64_t sub_217261714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB241E0;
  if (!qword_27CB241E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB241E0);
  }

  return result;
}

uint64_t sub_217261790(uint64_t a1)
{
  result = sub_217751888();
  if (v2 <= 0x3F)
  {
    result = sub_217261814();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217261814()
{
  result = qword_280BE22F0;
  if (!qword_280BE22F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE22F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudFormatter.DateFormat(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_217261934(uint64_t a1)
{
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241F0, &qword_217758578), v3 = sub_217752A78(), (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    while (v5 < *(a1 + 16))
    {
      v6 = (a1 + 32 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_2177531E8();
      sub_217751DE8();
      sub_217751FF8();
      sub_217753238();
      OUTLINED_FUNCTION_4_15();
      while (1)
      {
        OUTLINED_FUNCTION_2_9();
        if (v13)
        {
          break;
        }

        v12 = (*(v3 + 48) + 16 * v1);
        v13 = *v12 == v8 && v12[1] == v7;
        if (v13 || (sub_217753058() & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      *(v3 + 56 + 8 * v9) = v11 | v10;
      v14 = (*(v3 + 48) + 16 * v1);
      *v14 = v8;
      v14[1] = v7;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v17;
LABEL_15:
      if (v5 == v4)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

void sub_217261AA8(uint64_t a1)
{
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241E8, &qword_217771930), v3 = sub_217752A78(), (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    while (v5 < *(a1 + 16))
    {
      v6 = a1 + 32 + 32 * v5;
      v18 = *v6;
      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      ++v5;
      sub_2177531E8();
      sub_217751DE8();
      sub_217751FF8();
      sub_217753238();
      OUTLINED_FUNCTION_4_15();
      while (1)
      {
        OUTLINED_FUNCTION_2_9();
        if (v13)
        {
          break;
        }

        v12 = *(v3 + 48) + 32 * v1;
        v13 = *(v12 + 16) == v8 && *(v12 + 24) == v7;
        if (v13 || (sub_217753058() & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      *(v3 + 56 + 8 * v9) = v11 | v10;
      v14 = *(v3 + 48) + 32 * v1;
      *v14 = v18;
      *(v14 + 16) = v8;
      *(v14 + 24) = v7;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v17;
LABEL_15:
      if (v5 == v4)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

uint64_t sub_217261C2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217751878();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 Artwork._Gradient.init(color:y1:y2:isDisabled:_color:rawValues:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = *a7;
  v10 = *(a7 + 16);
  *(a9 + 40) = *a7;
  v11 = *(a7 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 33) = a6;
  *(a9 + 56) = v10;
  *(a9 + 72) = v11;
  *(a9 + 80) = a8;
  return result;
}

id Artwork._Gradient.color.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t Artwork._Gradient._color.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
  return sub_217751DE8();
}

void static Artwork._Gradient.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 33);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = *(a2 + 64);
  v22 = *(a2 + 72);
  if (*a1)
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    v40 = *(a2 + 64);
    v41 = *(a1 + 8);
    v37 = a1[5];
    v34 = a1[6];
    v38 = *(a2 + 33);
    v39 = *(a1 + 33);
    v35 = *(a2 + 32);
    v36 = *(a1 + 32);
    type metadata accessor for CGColor(0);
    OUTLINED_FUNCTION_21_5();
    sub_217269EAC(v23, v24, &unk_217757ABC);
    v25 = v12;
    v26 = sub_217751988();

    v16 = v35;
    v5 = v36;
    v17 = v38;
    v6 = v39;
    v8 = v34;
    v7 = v37;
    v21 = v40;
    v10 = v41;
    if ((v26 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v12)
  {
    goto LABEL_31;
  }

  if (v3)
  {
    if (!v14)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v2 == v13)
    {
      v27 = v14;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_31;
    }
  }

  if (v5)
  {
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else if ((v16 & 1) != 0 || v4 != v15)
  {
    goto LABEL_31;
  }

  if ((v6 ^ v17))
  {
LABEL_31:
    OUTLINED_FUNCTION_75_0();
    return;
  }

  if (!v11)
  {
    if (!v22)
    {

      goto LABEL_39;
    }

LABEL_30:
    sub_217751DE8();

    goto LABEL_31;
  }

  if (!v22)
  {
    goto LABEL_30;
  }

  if (v7 != v18 || v8 != v19 || v9 != v20)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_31;
  }

  v30 = v10 == v21 && v11 == v22;
  if (!v30 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_39:
  OUTLINED_FUNCTION_75_0();

  sub_217261FB0(v31, v32);
}

void sub_217261FB0(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 64;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_46_4();
  v8 = v7 >> 6;
  v94 = v3;
  while (2)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_5_7();
      v95 = v10;
      goto LABEL_11;
    }

    v11 = v4;
    do
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= v8)
      {
        return;
      }

      ++v11;
    }

    while (!*(v5 + 8 * v4));
    OUTLINED_FUNCTION_18_6();
    v95 = v13 & v12;
LABEL_11:
    v14 = (*(v3 + 48) + 16 * (v9 | (v4 << 6)));
    v16 = *v14;
    v15 = v14[1];
    OUTLINED_FUNCTION_17_2();
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    sub_217751DE8();
    v21 = OUTLINED_FUNCTION_16_0();
    sub_21726A5E0(v21, v22, v20);
    if (!v15)
    {
      return;
    }

    v23 = sub_21763246C(v16, v15);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_46;
    }

    v26 = *(a2 + 56) + 24 * v23;
    v27 = *v26;
    v28 = *(v26 + 16);
    switch(*(v26 + 16))
    {
      case 1:
        if (v20 != 1)
        {
          goto LABEL_45;
        }

        v58 = OUTLINED_FUNCTION_15();
        v60 = OUTLINED_FUNCTION_12_6(v58, v59, 1);
        sub_21726A608(v60, v61, 1);
        v3 = v94;
        v6 = v95;
        if (((v27 ^ v18) & 1) == 0)
        {
          continue;
        }

        return;
      case 2:
        if (v20 != 2)
        {
          goto LABEL_45;
        }

        v49 = OUTLINED_FUNCTION_15();
        v51 = OUTLINED_FUNCTION_12_6(v49, v50, 2);
        sub_21726A608(v51, v52, 2);
        v53 = v27 == v18;
        goto LABEL_26;
      case 3:
        if (v20 != 3)
        {
          goto LABEL_45;
        }

        v54 = OUTLINED_FUNCTION_15();
        v56 = OUTLINED_FUNCTION_12_6(v54, v55, 3);
        sub_21726A608(v56, v57, 3);
        v53 = *&v27 == *&v18;
LABEL_26:
        v3 = v94;
        v6 = v95;
        if (!v53)
        {
          return;
        }

        continue;
      case 4:
        if (v20 != 4)
        {
          goto LABEL_44;
        }

        v36 = OUTLINED_FUNCTION_15();
        sub_21726A5E0(v36, v37, 4);
        v38 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v38, v39, 4);
        v40 = OUTLINED_FUNCTION_15();
        sub_21726A5E0(v40, v41, 4);
        sub_21726F024();
        v30 = v42;
        v43 = OUTLINED_FUNCTION_15();
        v45 = OUTLINED_FUNCTION_12_6(v43, v44, 4);
        sub_21726A608(v45, v46, 4);
        v47 = OUTLINED_FUNCTION_15();
        v33 = OUTLINED_FUNCTION_12_6(v47, v48, 4);
        v35 = 4;
        goto LABEL_33;
      case 5:
        if (v20 != 5)
        {
          goto LABEL_44;
        }

        v62 = OUTLINED_FUNCTION_15();
        sub_21726A5E0(v62, v63, 5);
        v64 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v64, v65, 5);
        v66 = OUTLINED_FUNCTION_15();
        sub_21726A5E0(v66, v67, 5);
        v30 = sub_217261FB0(v27, v18);
        v68 = OUTLINED_FUNCTION_15();
        v70 = OUTLINED_FUNCTION_12_6(v68, v69, 5);
        sub_21726A608(v70, v71, 5);
        v72 = OUTLINED_FUNCTION_15();
        v33 = OUTLINED_FUNCTION_12_6(v72, v73, 5);
        v35 = 5;
        goto LABEL_33;
      case 6:
        if (v20 != 6 || (v19 | v18) != 0)
        {
          goto LABEL_45;
        }

        v75 = OUTLINED_FUNCTION_15();
        sub_21726A608(v75, v76, 6);
        v77 = 0;
        v78 = 0;
        v79 = 6;
        goto LABEL_42;
      default:
        if (!v20)
        {
          if (v27 == v18 && *(v26 + 8) == v19)
          {
            sub_217751DE8();
            v80 = OUTLINED_FUNCTION_16_0();
            v77 = OUTLINED_FUNCTION_12_6(v80, v81, 0);
            v79 = 0;
LABEL_42:
            sub_21726A608(v77, v78, v79);
            v3 = v94;
            v6 = v95;
          }

          else
          {
            OUTLINED_FUNCTION_15();
            v30 = sub_217753058();
            sub_217751DE8();
            v31 = OUTLINED_FUNCTION_15();
            v33 = OUTLINED_FUNCTION_12_6(v31, v32, 0);
            v35 = 0;
LABEL_33:
            sub_21726A608(v33, v34, v35);
            v3 = v94;
            v6 = v95;
            if ((v30 & 1) == 0)
            {
              return;
            }
          }

          continue;
        }

LABEL_44:
        v82 = OUTLINED_FUNCTION_15();
        sub_21726A5E0(v82, v83, v28);
        sub_217751DE8();
LABEL_45:
        v84 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v84, v85, v20);
        v86 = OUTLINED_FUNCTION_15();
        v88 = OUTLINED_FUNCTION_12_6(v86, v87, v28);
        sub_21726A608(v88, v89, v20);
        v90 = OUTLINED_FUNCTION_15();
        sub_21726A608(v90, v91, v28);
LABEL_46:
        v92 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v92, v93, v20);
        return;
    }
  }
}

void sub_217262380()
{
  OUTLINED_FUNCTION_12();
  if (v3 != v4 && (OUTLINED_FUNCTION_8_7(), v5))
  {
    v6 = 0;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_42_3();
    while (v2)
    {
      OUTLINED_FUNCTION_92();
LABEL_12:
      v11 = v7 | (v6 << 6);
      v12 = (*(v0 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(v0 + 56) + 8 * v11);
      sub_217751DE8();
      sub_217751DE8();
      sub_21763246C(v13, v14);
      v17 = v16;

      if ((v17 & 1) == 0)
      {

        goto LABEL_17;
      }

      v18 = sub_217751DE8();
      sub_217262498(v18, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v8 = v6;
    while (1)
    {
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v6 >= v1)
      {
        goto LABEL_17;
      }

      ++v8;
      if (*(v0 + 64 + 8 * v6))
      {
        OUTLINED_FUNCTION_18_6();
        v2 = v10 & v9;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_13();
  }
}

void sub_217262498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24218, &qword_217758658);
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    v50 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v48 = (&v42 - v13);
    v49 = v14;
    v15 = 0;
    v45 = a2;
    v46 = a1;
    v16 = *(a1 + 64);
    v43 = a1 + 64;
    v44 = v7;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v47 = v20;
    while (v19)
    {
      v51 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v15 << 6);
      v22 = v49;
LABEL_13:
      v25 = (*(v46 + 48) + 16 * v21);
      v27 = *v25;
      v26 = v25[1];
      sub_21726A630(*(v46 + 56) + *(v5 + 72) * v21, v10, &qword_27CB24210, &unk_21776DB90);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24220, &qword_217758660);
      v29 = *(v28 + 48);
      *v22 = v27;
      v22[1] = v26;
      sub_21726A594(v10, v22 + v29, &qword_27CB24210, &unk_21776DB90);
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v28);
      sub_217751DE8();
      v7 = v44;
      a2 = v45;
LABEL_14:
      v30 = v22;
      v31 = v48;
      sub_21726A594(v30, v48, &qword_27CB24218, &qword_217758658);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24220, &qword_217758660);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v32);
      v50 = EnumTagSinglePayload == 1;
      if (EnumTagSinglePayload == 1)
      {
        return;
      }

      v34 = *(v32 + 48);
      v36 = *v31;
      v35 = v31[1];
      sub_21726A594(v31 + v34, v7, &qword_27CB24210, &unk_21776DB90);
      v37 = sub_21763246C(v36, v35);
      v39 = v38;

      if ((v39 & 1) == 0)
      {
        sub_2171F0738(v7, &qword_27CB24210, &unk_21776DB90);
        goto LABEL_21;
      }

      sub_21726A630(*(a2 + 56) + *(v5 + 72) * v37, v10, &qword_27CB24210, &unk_21776DB90);
      v40 = sub_21767E710(v10);
      sub_2171F0738(v10, &qword_27CB24210, &unk_21776DB90);
      sub_2171F0738(v7, &qword_27CB24210, &unk_21776DB90);
      v20 = v47;
      v19 = v51;
      if ((v40 & 1) == 0)
      {
        return;
      }
    }

    v22 = v49;
    while (1)
    {
      v23 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24220, &qword_217758660);
        __swift_storeEnumTagSinglePayload(v22, 1, 1, v41);
        v51 = 0;
        goto LABEL_14;
      }

      v24 = *(v43 + 8 * v23);
      ++v15;
      if (v24)
      {
        v51 = (v24 - 1) & v24;
        v21 = __clz(__rbit64(v24)) | (v23 << 6);
        v15 = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v50 = 0;
  }
}

void sub_2172628A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_97_0();
  if (v2 == v3 || (v4 = v3, *(v2 + 16) != *(v3 + 16)))
  {
LABEL_21:
    OUTLINED_FUNCTION_95_0();
  }

  else
  {
    v5 = 0;
    v6 = v2 + 64;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_46_4();
    v9 = v8 >> 6;
    while (v7)
    {
      OUTLINED_FUNCTION_5_7();
      v27 = v12;
LABEL_11:
      v16 = (*(v10 + 56) + 16 * (v11 | (v5 << 6)));
      v18 = *v16;
      v17 = v16[1];
      sub_217751DE8();
      sub_217751DE8();
      v19 = OUTLINED_FUNCTION_47_2();
      v21 = sub_21763246C(v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {

        goto LABEL_21;
      }

      v24 = (*(v4 + 56) + 16 * v21);
      if (*v24 == v18 && v24[1] == v17)
      {

        v7 = v27;
      }

      else
      {
        v26 = sub_217753058();

        v7 = v27;
        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_21;
      }

      ++v13;
      if (*(v6 + 8 * v5))
      {
        OUTLINED_FUNCTION_18_6();
        v27 = v15 & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_217262A00()
{
  OUTLINED_FUNCTION_12();
  if (v3 != v4 && (OUTLINED_FUNCTION_8_7(), v5))
  {
    v6 = 0;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_42_3();
    if (v2)
    {
      while (1)
      {
        OUTLINED_FUNCTION_92();
        v8 = v7 | (v6 << 6);
LABEL_11:
        v11 = (*(v0 + 48) + 16 * v8);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*(v0 + 56) + 440 * v8);
        memcpy(__dst, v14, sizeof(__dst));
        memcpy(__src, v14, sizeof(__src));
        v27 = v12;
        v28 = v13;
        memcpy(v29, __src, sizeof(v29));
        nullsub_1();
        sub_217751DE8();
        sub_21726A630(__dst, v24, &qword_27CB243F0, &qword_21775D690);
        v15 = v27;
        v16 = v28;
        memcpy(v30, v29, sizeof(v30));
        v9 = v6;
LABEL_12:
        memcpy(v29, v30, sizeof(v29));
        v27 = v15;
        v28 = v16;
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(&v27) == 1)
        {
          goto LABEL_23;
        }

        memcpy(__src, v30, sizeof(__src));
        sub_21763246C(v15, v16);
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_117_1(__dst);
        OUTLINED_FUNCTION_117_1(v24);
        memcpy(v23, __src, sizeof(v23));
        sub_21726A630(__dst, &v22, &qword_27CB243F0, &qword_21775D690);
        if ((static CloudArtwork.== infix(_:_:)(v24, v23) & 1) == 0)
        {
          sub_2171F0738(__src, &qword_27CB243F0, &qword_21775D690);
          v21 = __dst;
          goto LABEL_22;
        }

        sub_217261FB0(__dst[54], __src[54]);
        v20 = v19;
        sub_2171F0738(__src, &qword_27CB243F0, &qword_21775D690);
        sub_2171F0738(__dst, &qword_27CB243F0, &qword_21775D690);
        if ((v20 & 1) == 0)
        {
          goto LABEL_23;
        }

        v6 = v9;
        if (!v2)
        {
          goto LABEL_6;
        }
      }

      v21 = __src;
LABEL_22:
      sub_2171F0738(v21, &qword_27CB243F0, &qword_21775D690);
      goto LABEL_23;
    }

LABEL_6:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v6 >= v1)
      {
        sub_21726A67C(&v27);
        v15 = v27;
        v16 = v28;
        memcpy(v30, v29, sizeof(v30));
        v2 = 0;
        goto LABEL_12;
      }

      v10 = *(v0 + 64 + 8 * v6);
      ++v9;
      if (v10)
      {
        v2 = (v10 - 1) & v10;
        v8 = __clz(__rbit64(v10)) | (v6 << 6);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_13();
  }
}

void sub_217262CB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_83_3();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243D8, &qword_217788BC0);
  OUTLINED_FUNCTION_0_0();
  v76 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_80();
  v70 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E0, &qword_2177586B8);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v73 = (v14 - v15);
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  if (v0 == v1)
  {
    v74 = 1;
LABEL_22:
    OUTLINED_FUNCTION_13();
    return;
  }

  if (*(v0 + 16) != *(v1 + 16))
  {
LABEL_21:
    v74 = 0;
    goto LABEL_22;
  }

  v68 = v0;
  v69 = v1;
  v72 = (&v65 - v17);
  v18 = 0;
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_26_3();
  v66 = v20;
  v67 = v0 + 64;
  while (v19)
  {
    OUTLINED_FUNCTION_5_7();
    v75 = v21;
    v23 = v22 | (v18 << 6);
LABEL_11:
    v30 = (*(v68 + 48) + 16 * v23);
    v31 = *v30;
    v32 = v30[1];
    v33 = v70;
    sub_21726A630(*(v68 + 56) + *(v76 + 72) * v23, v70, &qword_27CB243D8, &qword_217788BC0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E8, &unk_2177586C0);
    v35 = *(v34 + 48);
    v36 = v73;
    *v73 = v31;
    v36[1] = v32;
    sub_21726A594(v33, v36 + v35, &qword_27CB243D8, &qword_217788BC0);
    OUTLINED_FUNCTION_4_14();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v34);
    sub_217751DE8();
    v25 = v72;
LABEL_12:
    v40 = OUTLINED_FUNCTION_20_6();
    sub_21726A594(v40, v41, &qword_27CB243E0, &qword_2177586B8);
    v42 = OUTLINED_FUNCTION_19_1();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v44);
    v74 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      goto LABEL_22;
    }

    v46 = v76;
    v47 = *(v44 + 48);
    v49 = *v25;
    v48 = v25[1];
    sub_21726A594(v25 + v47, v9, &qword_27CB243D8, &qword_217788BC0);
    v50 = v69;
    v51 = sub_21763246C(v49, v48);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_21726A630(*(v50 + 56) + *(v46 + 72) * v51, v6, &qword_27CB243D8, &qword_217788BC0);
    if (!static CloudVideoArtwork.== infix(_:_:)(v6))
    {
      sub_2171F0738(v6, &qword_27CB243D8, &qword_217788BC0);
LABEL_20:
      sub_2171F0738(v9, &qword_27CB243D8, &qword_217788BC0);
      goto LABEL_21;
    }

    sub_217261FB0(*(v6 + *(v71 + 28)), *&v9[*(v71 + 28)]);
    v55 = v54;
    OUTLINED_FUNCTION_29_5();
    sub_2171F0738(v56, v57, v58);
    OUTLINED_FUNCTION_29_5();
    sub_2171F0738(v59, v60, v61);
    v19 = v75;
    if ((v55 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v25 = v72;
  v24 = v73;
  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v66)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E8, &unk_2177586C0);
      OUTLINED_FUNCTION_120_2(v24, v63, v64, v62);
      v75 = 0;
      goto LABEL_12;
    }

    ++v18;
    if (*(v67 + 8 * v26))
    {
      OUTLINED_FUNCTION_78();
      v75 = v27;
      v23 = v29 | (v28 << 6);
      v18 = v28;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_2172630B0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_83_3();
  v2 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v68 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_80();
  v67 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24310, &qword_217758680);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v12);
  v63 = v1;
  if (v0 == v1 || *(v0 + 16) != *(v63 + 16))
  {
LABEL_18:
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v61 = (&v57 - v13);
    v62 = v14;
    v60 = v7;
    v15 = 0;
    v58 = v0;
    v57 = v0 + 64;
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_46_4();
    v18 = v17 >> 6;
    v64 = v68 + 16;
    v65 = (v68 + 32);
    v59 = (v68 + 8);
    while (1)
    {
      v19 = v62;
      if (!v16)
      {
        break;
      }

      OUTLINED_FUNCTION_5_7();
      v66 = v20;
      v22 = v21 | (v15 << 6);
LABEL_10:
      v27 = (*(v58 + 48) + 16 * v22);
      v28 = *v27;
      v29 = v27[1];
      v31 = v67;
      v30 = v68;
      (*(v68 + 16))(v67, *(v58 + 56) + *(v68 + 72) * v22, v2);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24318, &qword_217758688);
      v33 = *(v32 + 48);
      *v19 = v28;
      *(v19 + 1) = v29;
      (*(v30 + 32))(&v19[v33], v31, v2);
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v32);
      sub_217751DE8();
LABEL_11:
      v37 = v61;
      sub_21726A594(v19, v61, &qword_27CB24310, &qword_217758680);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24318, &qword_217758688);
      OUTLINED_FUNCTION_108(v37, 1);
      if (v39)
      {
        goto LABEL_18;
      }

      v40 = *(v38 + 48);
      v42 = *v37;
      v41 = v37[1];
      v43 = v63;
      v44 = v60;
      (*v65)(v60, v37 + v40, v2);
      v45 = sub_21763246C(v42, v41);
      v47 = v46;

      if ((v47 & 1) == 0)
      {
        (*v59)(v44, v2, v48);
        goto LABEL_18;
      }

      v50 = v67;
      v49 = v68;
      (*(v68 + 16))(v67, *(v43 + 56) + *(v68 + 72) * v45, v2, v48);
      OUTLINED_FUNCTION_4_16();
      sub_217269EAC(&qword_280BE7408, v51, MEMORY[0x277CC9278]);
      v52 = sub_217751F08();
      v53 = *(v49 + 8);
      v53(v50, v2);
      v53(v44, v2);
      v16 = v66;
      if ((v52 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      v23 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v23 >= v18)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24318, &qword_217758688);
        OUTLINED_FUNCTION_120_2(v19, v55, v56, v54);
        v66 = 0;
        goto LABEL_11;
      }

      ++v15;
      if (*(v57 + 8 * v23))
      {
        OUTLINED_FUNCTION_78();
        v66 = v24;
        v22 = v26 | (v25 << 6);
        v15 = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_2172634BC()
{
  OUTLINED_FUNCTION_12();
  if (v4 != v5 && (OUTLINED_FUNCTION_8_7(), v6))
  {
    v7 = 0;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_40_6();
    while (v3)
    {
      v8 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v12 = *(*(v0 + 56) + 8 * (v8 | (v7 << 6)));
      sub_217751DE8();
      v13 = OUTLINED_FUNCTION_16_0();
      v15 = sub_21763246C(v13, v14);
      v17 = v16;

      if ((v17 & 1) == 0 || *(*(v1 + 56) + 8 * v15) != v12)
      {
        goto LABEL_14;
      }
    }

    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v7 >= v2)
      {
        goto LABEL_14;
      }

      ++v9;
      if (*(v0 + 64 + 8 * v7))
      {
        OUTLINED_FUNCTION_18_6();
        v3 = v11 & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_13();
  }
}

void sub_2172635A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_97_0();
  if (v4 == v5 || (OUTLINED_FUNCTION_8_7(), !v26))
  {
LABEL_30:
    OUTLINED_FUNCTION_95_0();
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_46_4();
  v8 = v7 >> 6;
  if (v9)
  {
    do
    {
      OUTLINED_FUNCTION_5_7();
      v30 = v11;
LABEL_11:
      v15 = v10 | (v6 << 6);
      v16 = *(v2 + 48) + 24 * v15;
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(*(v2 + 56) + 16 * v15 + 8);
      sub_217751DE8();

      if (!v17)
      {
        goto LABEL_30;
      }

      v21 = sub_2176324F4(v18, v17, v19);
      v23 = v22;

      if ((v23 & 1) == 0 || (v24 = *(*(v3 + 56) + 16 * v21 + 8), v25 = *(v24 + 16), v25 != *(v20 + 16)))
      {
LABEL_29:

        goto LABEL_30;
      }

      if (v25)
      {
        v26 = v24 == v20;
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        v27 = (v24 + 40);
        v28 = (v20 + 40);
        while (v25)
        {
          v29 = *(v27 - 1) == *(v28 - 1) && *v27 == *v28;
          if (!v29 && (sub_217753058() & 1) == 0)
          {
            goto LABEL_29;
          }

          v27 += 2;
          v28 += 2;
          if (!--v25)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_26:
    }

    while (v30);
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v8)
    {
      goto LABEL_30;
    }

    ++v12;
    if (*(v2 + 64 + 8 * v6))
    {
      OUTLINED_FUNCTION_18_6();
      v30 = v14 & v13;
      goto LABEL_11;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t Artwork._Gradient.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  if (*v0)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    OUTLINED_FUNCTION_21_5();
    sub_217269EAC(v5, v6, &unk_217757ABC);
    OUTLINED_FUNCTION_93();
    sub_217751998();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    OUTLINED_FUNCTION_24();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x21CEA3580](v8);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_25();
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_3:
  OUTLINED_FUNCTION_25();
  if (!v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_24();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x21CEA3580](v7);
    goto LABEL_14;
  }

LABEL_13:
  OUTLINED_FUNCTION_25();
LABEL_14:
  sub_217753208();
  OUTLINED_FUNCTION_11_7();
  sub_21726519C();
  v9 = OUTLINED_FUNCTION_20_6();

  return sub_217265A08(v9, v10);
}

uint64_t Artwork._Gradient.hashValue.getter()
{
  sub_2177531E8();
  Artwork._Gradient.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2172638AC(uint64_t a1)
{
  sub_2177531E8();
  Artwork._Gradient.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2172638E8(uint64_t a1)
{
  v3 = v1[45];
  v4 = v1[47];
  memcpy(__dst, v1, sizeof(__dst));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(__dst) == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_24();
  memcpy(v10, v1, 0x161uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v10) == 1)
  {
    OUTLINED_FUNCTION_25();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    OUTLINED_FUNCTION_25();
    if (v4)
    {
      goto LABEL_5;
    }

    return OUTLINED_FUNCTION_25();
  }

  memcpy(v7, v1, sizeof(v7));
  OUTLINED_FUNCTION_24();
  memcpy(v8, v1, 0x161uLL);
  sub_217269EF4(v8, v9);
  v6 = OUTLINED_FUNCTION_11_7();
  MusicIdentifierSet.hash(into:)(v6);
  memcpy(v9, v7, 0x161uLL);
  sub_217269F50(v9);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  OUTLINED_FUNCTION_24();
  sub_21727D208(a1, v3);
  if (v4)
  {
LABEL_5:
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20_6();
    return sub_217751FF8();
  }

  return OUTLINED_FUNCTION_25();
}

uint64_t sub_217263A08()
{
  sub_21726A630(v0, __src, &qword_27CB24268, &qword_21777DBE0);
  if (__src[2] == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(__dst, __src, sizeof(__dst));
  v2 = OUTLINED_FUNCTION_24();
  v8 = OUTLINED_FUNCTION_101_0(v2, v3, &qword_27CB24270, &unk_21775D640, v4, v5, v6, v7, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  if (v116)
  {
    OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_24();
    v16 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v16);
    sub_2171F0738(&v98, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v17 = OUTLINED_FUNCTION_100_0(&qword_27CB24280, &unk_21775D680, __dst, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
  if (v116)
  {
    OUTLINED_FUNCTION_10_1(v17, v18, v19, v20, v21, v22, v23, v24, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_24();
    v25 = OUTLINED_FUNCTION_11_7();
    sub_2172DE754(v25);
    sub_2171F0738(&v98, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v26 = sub_21726A630(&__dst[256], v114, &qword_27CB24290, &unk_21775D550);
  if (v116)
  {
    OUTLINED_FUNCTION_10_1(v26, v27, v28, v29, v30, v31, v32, v33, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_24();
    v34 = OUTLINED_FUNCTION_11_7();
    sub_2172DE7FC(v34);
    sub_2171F0738(&v98, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v35 = sub_21726A630(&__dst[384], v114, &qword_27CB242A0, &unk_21777EEF0);
  if (v116)
  {
    OUTLINED_FUNCTION_10_1(v35, v36, v37, v38, v39, v40, v41, v42, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_24();
    v43 = OUTLINED_FUNCTION_11_7();
    sub_2172DE814(v43);
    sub_2171F0738(&v98, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v44 = sub_21726A630(&__dst[512], v114, &qword_27CB242B0, &unk_21775D630);
  if (v116)
  {
    OUTLINED_FUNCTION_10_1(v44, v45, v46, v47, v48, v49, v50, v51, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_24();
    v52 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v52);
    sub_2171F0738(&v98, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v53 = sub_21726A630(&__dst[640], v114, &qword_27CB242C0, &unk_21775D650);
  if (v116)
  {
    OUTLINED_FUNCTION_10_1(v53, v54, v55, v56, v57, v58, v59, v60, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_24();
    v61 = OUTLINED_FUNCTION_11_7();
    sub_2172DE724(v61);
    sub_2171F0738(&v98, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v62 = sub_21726A630(&__dst[768], v114, &qword_27CB242D0, &unk_21775D660);
  if (v116)
  {
    OUTLINED_FUNCTION_10_1(v62, v63, v64, v65, v66, v67, v68, v69, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_24();
    v70 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6C4(v70);
    sub_2171F0738(&v98, &qword_27CB242D8, &unk_21777EEB0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v71 = sub_21726A630(&__dst[896], v114, &qword_27CB242E0, &unk_21777EEE0);
  if (v116)
  {
    OUTLINED_FUNCTION_10_1(v71, v72, v73, v74, v75, v76, v77, v78, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_24();
    v79 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6AC(v79);
    sub_2171F0738(&v98, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v80 = sub_21726A630(&__dst[1024], v114, &qword_27CB242F0, &unk_217797B80);
  if (v116)
  {
    OUTLINED_FUNCTION_10_1(v80, v81, v82, v83, v84, v85, v86, v87, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_24();
    v88 = OUTLINED_FUNCTION_11_7();
    sub_2172DE664(v88);
    sub_2171F0738(&v98, &qword_27CB242F8, &qword_21775D6C0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v89 = sub_21726A630(&__dst[1152], v114, &qword_27CB24300, &qword_217771D70);
  if (v116)
  {
    OUTLINED_FUNCTION_10_1(v89, v90, v91, v92, v93, v94, v95, v96, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_24();
    v97 = OUTLINED_FUNCTION_11_7();
    sub_2172DE4CC(v97);
    sub_2171F0738(&v98, &qword_27CB24308, &unk_217767A90);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  return sub_217269E58(__dst);
}

uint64_t sub_217263DE0(uint64_t a1)
{
  v3 = sub_21726A630(v1, v64, &qword_27CB24340, &unk_2177650B0);
  if (v65 == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_60_2(v3, v4, v5, v6, v7, v8, v9, v10, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0]);
  OUTLINED_FUNCTION_24();
  if (v25 == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_24();
  if (!v25)
  {
    OUTLINED_FUNCTION_25();
    if (v27)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_25();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_73_2();
  if (!v27)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20_6();
  sub_217751FF8();
LABEL_9:
  if (v30)
  {
    OUTLINED_FUNCTION_24();
    if (v29)
    {
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_72_1();
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217751DE8();
    v12 = OUTLINED_FUNCTION_20_6();
    sub_217265A08(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v31)
  {
    OUTLINED_FUNCTION_24();
    v14 = OUTLINED_FUNCTION_20_6();
    sub_21727DDE0(v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_33_2();
  sub_2172642C4(a1, v21, v22, v23);
  return sub_21726A258(&v24);
}

void sub_217263F54()
{
  OUTLINED_FUNCTION_49_1();
  v2 = v1[3];
  if (v2 == 1)
  {
    goto LABEL_13;
  }

  v3 = *v1;
  v4 = v1[4];
  v5 = *(v1 + 4);
  sub_217753208();
  if (v3 == 1 || (sub_217753208(), !v3))
  {
    sub_217753208();
    if ((v5 & 1) == 0)
    {
LABEL_5:
      sub_217753208();
      v6 = OUTLINED_FUNCTION_23_6();
      MEMORY[0x21CEA3580](v6);
      if (v2)
      {
        goto LABEL_6;
      }

LABEL_12:
      sub_217753208();
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_13:
      sub_217753208();
      return;
    }
  }

  else
  {
    sub_217753208();
    sub_2172849D8();
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_217753208();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_217753208();
  v7 = OUTLINED_FUNCTION_35();
  sub_21727DDE0(v7, v8, v9, v10, v11, v12, v13);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_7:
  sub_217753208();

  sub_2172A98C8(v0, v4);
}

uint64_t sub_217264058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_44_3(a1, a2, &qword_27CB242D0, &unk_21775D660, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  if (!v34)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_11_7();
  sub_2172DE6C4(v16);
  return sub_2171F0738(&v18, &qword_27CB242D8, &unk_21777EEB0);
}

uint64_t sub_2172640D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_44_3(a1, a2, &qword_27CB24270, &unk_21775D640, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  if (!v34)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_11_7();
  sub_2172DE6DC(v16);
  return sub_2171F0738(&v18, &qword_27CB24278, &unk_217759070);
}

uint64_t sub_217264150(uint64_t a1)
{
  v3 = sub_21726A630(v1, v64, &qword_27CB243C0, &unk_21775D3A0);
  if (v65 == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_60_2(v3, v4, v5, v6, v7, v8, v9, v10, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0]);
  OUTLINED_FUNCTION_24();
  if (v25 == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_24();
  if (!v25)
  {
    OUTLINED_FUNCTION_25();
    if (v27)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_25();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_73_2();
  if (!v27)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20_6();
  sub_217751FF8();
LABEL_9:
  if (v30)
  {
    OUTLINED_FUNCTION_24();
    if (v29)
    {
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_72_1();
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217751DE8();
    v12 = OUTLINED_FUNCTION_20_6();
    sub_217265A08(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v31)
  {
    OUTLINED_FUNCTION_24();
    v14 = OUTLINED_FUNCTION_20_6();
    sub_21727DDE0(v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_32_1();
  sub_2172642C4(a1, v21, v22, v23);
  return sub_21726A498(&v24);
}

uint64_t sub_2172642C4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  sub_21726A630(v4, __src, a2, a3);
  if (__src[2] == 1)
  {
    return sub_217753208();
  }

  memcpy(__dst, __src, sizeof(__dst));
  v8 = sub_217753208();
  v14 = OUTLINED_FUNCTION_101_0(v8, v9, &qword_27CB24230, &unk_21775E9D0, v10, v11, v12, v13, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  if (v48)
  {
    OUTLINED_FUNCTION_10_1(v14, v15, v16, v17, v18, v19, v20, v21, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    sub_217753208();
    sub_2172DE694(a1);
    sub_2171F0738(&v30, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    sub_217753208();
  }

  v22 = OUTLINED_FUNCTION_100_0(&qword_27CB24240, &qword_217758668, __dst, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  if (v48)
  {
    OUTLINED_FUNCTION_10_1(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    sub_217753208();
    sub_2172DE67C(a1);
    sub_2171F0738(&v30, &qword_27CB24248, &qword_217758670);
  }

  else
  {
    sub_217753208();
  }

  return a4(__dst);
}

uint64_t sub_217264414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_44_3(a1, a2, &qword_27CB242B0, &unk_21775D630, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  if (!v34)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_11_7();
  sub_2172DE6F4(v16);
  return sub_2171F0738(&v18, &qword_27CB242B8, &unk_21777EEA0);
}

void sub_217264490(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5 == 1)
  {
    goto LABEL_11;
  }

  sub_217753208();
  if (a2 != 1)
  {
    sub_217753208();
    if (a2)
    {
      sub_217753208();
      sub_2172849D8();
      if ((a4 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_10:
      sub_217753208();
      if (a5)
      {
        goto LABEL_6;
      }

LABEL_11:
      sub_217753208();
      return;
    }
  }

  sub_217753208();
  if (a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_217753208();
  v9 = OUTLINED_FUNCTION_37();
  MEMORY[0x21CEA3580](v9);
  if (!a5)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_217753208();

  sub_21727DDE0(a1, a5, v10, v11, v12, v13, v14);
}

uint64_t sub_217264574(uint64_t a1)
{
  sub_21726A630(v1, __src, &qword_27CB243A8, &unk_217777720);
  if (__src[2] == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_90();
  memcpy(v5, __src, 0x300uLL);
  OUTLINED_FUNCTION_24();
  v6 = OUTLINED_FUNCTION_89_1();
  sub_2172640D4(v6, v7, v8, v9, v10, v11, v12, v13);
  sub_217264A60(a1, v14, v15, v16, v17, v18, v19, v20);
  sub_217264414(a1, v21, v22, v23, v24, v25, v26, v27);
  v28 = sub_21726A630(v2 + 384, v70, &qword_27CB243B0, &unk_21775D670);
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v28, v29, v30, v31, v32, v33, v34, v35, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
    OUTLINED_FUNCTION_24();
    v36 = OUTLINED_FUNCTION_11_7();
    sub_2172DE70C(v36);
    sub_2171F0738(&v54, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v37 = OUTLINED_FUNCTION_41_3();
  sub_217264414(v37, v38, v39, v40, v41, v42, v43, v44);
  v45 = sub_21726A630(v2 + 640, v70, &qword_27CB242E0, &unk_21777EEE0);
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
    OUTLINED_FUNCTION_24();
    v53 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6AC(v53);
    sub_2171F0738(&v54, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  return sub_21726A3FC(v72);
}

uint64_t sub_2172646C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_44_3(a1, a2, &qword_27CB243B0, &unk_21775D670, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  if (!v34)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_11_7();
  sub_2172DE70C(v16);
  return sub_2171F0738(&v18, &qword_27CB243B8, &qword_2177586B0);
}

uint64_t sub_21726473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_44_3(a1, a2, &qword_27CB242C0, &unk_21775D650, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  if (!v34)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_11_7();
  sub_2172DE724(v16);
  return sub_2171F0738(&v18, &qword_27CB242C8, &unk_217758970);
}

uint64_t sub_2172647B8(uint64_t a1)
{
  v3 = sub_21726A630(v1, v64, &qword_27CB24348, &unk_21775D520);
  if (v65 == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_60_2(v3, v4, v5, v6, v7, v8, v9, v10, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0]);
  OUTLINED_FUNCTION_24();
  if (v25 == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_24();
  if (!v25)
  {
    OUTLINED_FUNCTION_25();
    if (v27)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_25();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_73_2();
  if (!v27)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20_6();
  sub_217751FF8();
LABEL_9:
  if (v30)
  {
    OUTLINED_FUNCTION_24();
    if (v29)
    {
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_72_1();
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217751DE8();
    v12 = OUTLINED_FUNCTION_20_6();
    sub_217265A08(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v31)
  {
    OUTLINED_FUNCTION_24();
    v14 = OUTLINED_FUNCTION_20_6();
    sub_21727DDE0(v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_31_1();
  sub_2172642C4(a1, v21, v22, v23);
  return sub_21726A2AC(&v24);
}

uint64_t sub_21726492C(uint64_t a1)
{
  sub_21726A630(v1, __src, &qword_27CB24350, &unk_21776A5D0);
  if (__src[2] == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(__dst, __src, sizeof(__dst));
  v4 = OUTLINED_FUNCTION_24();
  v10 = OUTLINED_FUNCTION_101_0(v4, v5, &qword_27CB24258, &unk_217791F50, v6, v7, v8, v9, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  if (v60)
  {
    OUTLINED_FUNCTION_10_1(v10, v11, v12, v13, v14, v15, v16, v17, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
    OUTLINED_FUNCTION_24();
    v18 = OUTLINED_FUNCTION_11_7();
    sub_2172DE73C(v18);
    sub_2171F0738(&v42, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v19 = OUTLINED_FUNCTION_100_0(&qword_27CB24230, &unk_21775E9D0, __dst, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  if (v60)
  {
    OUTLINED_FUNCTION_10_1(v19, v20, v21, v22, v23, v24, v25, v26, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
    OUTLINED_FUNCTION_24();
    v27 = OUTLINED_FUNCTION_11_7();
    sub_2172DE694(v27);
    sub_2171F0738(&v42, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_217264A60(a1, v28, v29, v30, v31, v32, v33, v34);
  sub_21726473C(a1, v35, v36, v37, v38, v39, v40, v41);
  return sub_21726A300(__dst);
}

uint64_t sub_217264A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_44_3(a1, a2, &qword_27CB24280, &unk_21775D680, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  if (!v34)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_11_7();
  sub_2172DE754(v16);
  return sub_2171F0738(&v18, &qword_27CB24288, &qword_217758F80);
}

uint64_t sub_217264ADC(uint64_t a1)
{
  sub_21726A630(v1, __src, &qword_27CB24328, &unk_21775D440);
  if (__src[2] == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_90();
  memcpy(v5, __src, 0x380uLL);
  OUTLINED_FUNCTION_24();
  v6 = OUTLINED_FUNCTION_89_1();
  sub_2172640D4(v6, v7, v8, v9, v10, v11, v12, v13);
  sub_217264A60(a1, v14, v15, v16, v17, v18, v19, v20);
  v21 = sub_21726A630(v2 + 256, v76, &qword_27CB24330, &unk_21775D460);
  if (v77)
  {
    OUTLINED_FUNCTION_10_1(v21, v22, v23, v24, v25, v26, v27, v28, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
    OUTLINED_FUNCTION_24();
    v29 = OUTLINED_FUNCTION_11_7();
    sub_2172DE76C(v29);
    sub_2171F0738(&v60, &qword_27CB24338, &unk_217796E10);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_2172646C0(a1, v30, v31, v32, v33, v34, v35, v36);
  sub_217264414(a1, v37, v38, v39, v40, v41, v42, v43);
  sub_21726473C(a1, v44, v45, v46, v47, v48, v49, v50);
  v51 = sub_21726A630(&v79, v76, &qword_27CB242F0, &unk_217797B80);
  if (v77)
  {
    OUTLINED_FUNCTION_10_1(v51, v52, v53, v54, v55, v56, v57, v58, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
    OUTLINED_FUNCTION_24();
    v59 = OUTLINED_FUNCTION_11_7();
    sub_2172DE664(v59);
    sub_2171F0738(&v60, &qword_27CB242F8, &qword_21775D6C0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  return sub_21726A204(v78);
}

uint64_t sub_217264C3C(uint64_t a1)
{
  sub_21726A630(v1, __src, &qword_27CB24358, &unk_21775D510);
  if (__src[2] == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_90();
  memcpy(v5, __src, 0x380uLL);
  OUTLINED_FUNCTION_24();
  v6 = OUTLINED_FUNCTION_89_1();
  sub_21726473C(v6, v7, v8, v9, v10, v11, v12, v13);
  v14 = sub_21726A630(v2 + 128, v81, &qword_27CB24360, &qword_217758690);
  if (v82)
  {
    OUTLINED_FUNCTION_10_1(v14, v15, v16, v17, v18, v19, v20, v21, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_24();
    v22 = OUTLINED_FUNCTION_11_7();
    sub_2172DE7E4(v22);
    sub_2171F0738(&v65, &qword_27CB24368, &qword_217758698);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_217264FD0(a1, v23, v24, v25, v26, v27, v28, v29);
  v30 = sub_21726A630(&v84, v81, &qword_27CB24370, &qword_2177586A0);
  if (v82)
  {
    OUTLINED_FUNCTION_10_1(v30, v31, v32, v33, v34, v35, v36, v37, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_24();
    v38 = OUTLINED_FUNCTION_11_7();
    sub_2172DE7CC(v38);
    sub_2171F0738(&v65, &qword_27CB24378, &qword_21775D7D0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v39 = OUTLINED_FUNCTION_41_3();
  sub_21726473C(v39, v40, v41, v42, v43, v44, v45, v46);
  v47 = sub_21726A630(&v85, v81, &qword_27CB24380, &unk_217759010);
  if (v82)
  {
    OUTLINED_FUNCTION_10_1(v47, v48, v49, v50, v51, v52, v53, v54, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_24();
    v55 = OUTLINED_FUNCTION_11_7();
    sub_2172DE79C(v55);
    sub_2171F0738(&v65, &qword_27CB24388, &unk_217781F60);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v56 = sub_21726A630(&v86, v81, &qword_27CB24390, &unk_21775D7C0);
  if (v82)
  {
    OUTLINED_FUNCTION_10_1(v56, v57, v58, v59, v60, v61, v62, v63, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_24();
    v64 = OUTLINED_FUNCTION_11_7();
    sub_2172DE784(v64);
    sub_2171F0738(&v65, &qword_27CB24398, &unk_2177784D0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  return sub_21726A354(v83);
}

uint64_t sub_217264E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_44_3(a1, a2, &qword_27CB24380, &unk_217759010, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  if (!v34)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_11_7();
  sub_2172DE79C(v16);
  return sub_2171F0738(&v18, &qword_27CB24388, &unk_217781F60);
}

uint64_t sub_217264EA8(uint64_t a1)
{
  sub_21726A630(v1, __src, &qword_27CB24250, &qword_217791F90);
  if (__src[2] == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(__dst, __src, sizeof(__dst));
  v4 = OUTLINED_FUNCTION_24();
  v10 = OUTLINED_FUNCTION_101_0(v4, v5, &qword_27CB24258, &unk_217791F50, v6, v7, v8, v9, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  if (v53)
  {
    OUTLINED_FUNCTION_10_1(v10, v11, v12, v13, v14, v15, v16, v17, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    OUTLINED_FUNCTION_24();
    v18 = OUTLINED_FUNCTION_11_7();
    sub_2172DE73C(v18);
    sub_2171F0738(&v35, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v19 = OUTLINED_FUNCTION_100_0(&qword_27CB24258, &unk_217791F50, __dst, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  if (v53)
  {
    OUTLINED_FUNCTION_10_1(v19, v20, v21, v22, v23, v24, v25, v26, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    OUTLINED_FUNCTION_24();
    v27 = OUTLINED_FUNCTION_11_7();
    sub_2172DE73C(v27);
    sub_2171F0738(&v35, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_21726473C(a1, v28, v29, v30, v31, v32, v33, v34);
  return sub_217269E04(__dst);
}

uint64_t sub_217264FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_44_3(a1, a2, &qword_27CB24290, &unk_21775D550, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  if (!v34)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_11_7();
  sub_2172DE7FC(v16);
  return sub_2171F0738(&v18, &qword_27CB24298, &qword_21777CD60);
}

uint64_t sub_21726504C(uint64_t a1)
{
  sub_21726A630(v1, __src, &qword_27CB243C8, &unk_21775D390);
  if (__src[2] == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_90();
  memcpy(v5, __src, 0x300uLL);
  OUTLINED_FUNCTION_24();
  v6 = OUTLINED_FUNCTION_89_1();
  sub_217264A60(v6, v7, v8, v9, v10, v11, v12, v13);
  sub_2172640D4(a1, v14, v15, v16, v17, v18, v19, v20);
  v21 = sub_21726A630(v2 + 256, v70, &qword_27CB243B0, &unk_21775D670);
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v21, v22, v23, v24, v25, v26, v27, v28, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
    OUTLINED_FUNCTION_24();
    v29 = OUTLINED_FUNCTION_11_7();
    sub_2172DE70C(v29);
    sub_2171F0738(&v54, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v30 = sub_21726A630(&v73, v70, &qword_27CB24240, &qword_217758668);
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v30, v31, v32, v33, v34, v35, v36, v37, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
    OUTLINED_FUNCTION_24();
    v38 = OUTLINED_FUNCTION_11_7();
    sub_2172DE67C(v38);
    sub_2171F0738(&v54, &qword_27CB24248, &qword_217758670);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v39 = OUTLINED_FUNCTION_41_3();
  sub_2172640D4(v39, v40, v41, v42, v43, v44, v45, v46);
  sub_217264058(a1, v47, v48, v49, v50, v51, v52, v53);
  return sub_21726A4EC(v72);
}

uint64_t sub_21726519C()
{
  OUTLINED_FUNCTION_49_1();
  if (!v0[4])
  {
    return sub_217753208();
  }

  v1 = v0[2];
  v2 = *v0;
  sub_217753208();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x21CEA3580](v3);
  v4 = OUTLINED_FUNCTION_23_6();
  MEMORY[0x21CEA3580](v4);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x21CEA3580](v5);
  OUTLINED_FUNCTION_35();

  return sub_217751FF8();
}

void sub_217265238()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_49_1();
  v1 = v0[1];
  if (v1 == 1)
  {
    goto LABEL_12;
  }

  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[7];
  sub_217753208();
  if (v1)
  {
    sub_217753208();
    sub_217751FF8();
    if (v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_217753208();
    if (v2)
    {
LABEL_4:
      sub_217753208();
      sub_217751FF8();
      if (v3)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_217753208();
      if (v4)
      {
        goto LABEL_6;
      }

LABEL_12:
      sub_217753208();
      OUTLINED_FUNCTION_13();
      return;
    }
  }

  sub_217753208();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_217753208();
  sub_217751FF8();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_217753208();
  OUTLINED_FUNCTION_13();

  sub_217751FF8();
}

void sub_217265348()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[9];
  v15 = v0[8];
  v8 = v0[10];
  v13 = v0[4];
  v14 = v0[11];
  v9 = v0[13];
  v26 = v0[12];
  v27 = v0[7];
  v12 = v0[14];
  v11 = v0[15];
  v24 = v0[17];
  v25 = v0[16];
  v22 = v0[19];
  v23 = v0[18];
  v20 = v0[21];
  v21 = v0[20];
  v18 = v0[23];
  v19 = v0[22];
  v16 = *(v0 + 12);
  v17 = *(v0 + 13);
  v10 = v0[28];
  memcpy(__dst, v1, sizeof(__dst));
  if (sub_21726A450(__dst) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    if (v3)
    {
      OUTLINED_FUNCTION_25();
    }

    else
    {
      OUTLINED_FUNCTION_24();
      MEMORY[0x21CEA3550](v2);
    }

    if (v4)
    {
      OUTLINED_FUNCTION_24();
      sub_217751FF8();
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    v28[0] = v13;
    v28[1] = v5;
    v28[2] = v6;
    v28[3] = v27;
    v28[4] = v15;
    v28[5] = v7;
    v28[6] = v8;
    v28[7] = v14;
    v28[8] = v26;
    v28[9] = v9;
    v28[10] = v12;
    v28[11] = v11;
    v28[12] = v25;
    v28[13] = v24;
    v28[14] = v23;
    v28[15] = v22;
    v28[16] = v21;
    v28[17] = v20;
    v28[18] = v19;
    v28[19] = v18;
    if (sub_21726A474(v28) == 1)
    {
      OUTLINED_FUNCTION_25();
    }

    else
    {
      sub_217753208();
      v48 = v13;
      v49 = v5;
      v50 = v6;
      v51 = v27;
      v52 = v15;
      v43 = v7;
      v44 = v8;
      v45 = v14;
      v46 = v26;
      v47 = v9;
      v38 = v12;
      v39 = v11;
      v40 = v25;
      v41 = v24;
      v42 = v23;
      v33 = v22;
      v34 = v21;
      v35 = v20;
      v36 = v19;
      v37 = v18;
      sub_21726519C();
      sub_21726519C();
      sub_21726519C();
      sub_21726519C();
    }

    v30 = v16;
    v31 = v17;
    v32 = v10;
    sub_21726519C();
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_217265574(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1)
  {
    return sub_217753208();
  }

  sub_217753208();
  if (a2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if ((a2 & 0xFF00) != 0x200)
  {
    sub_217753208();
  }

  sub_217753208();
  if ((*&a2 & 0xFF0000) != 0x20000)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!a4)
  {
    return sub_217753208();
  }

  sub_217753208();
  OUTLINED_FUNCTION_35();

  return sub_217751FF8();
}

void sub_217265660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_49_1();
  if (*(v3 + 58))
  {
    goto LABEL_13;
  }

  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = v3[4];
  v9 = v3[5];
  v13 = v3[6];
  v10 = *(v3 + 56);
  v11 = *(v3 + 57);
  v12 = *(v3 + 25);
  sub_217753208();
  if ((v12 & 1) == 0)
  {
    sub_217753208();
    if (v5)
    {
      sub_217753208();
      if ((v7 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_217753208();
      MEMORY[0x21CEA3550](v4);
      if ((v7 & 1) == 0)
      {
LABEL_5:
        sub_217753208();
        MEMORY[0x21CEA3550](v6);
        if (v11)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }
    }
  }

  sub_217753208();
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_217753208();
  if ((v9 & 1) == 0)
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v8);
    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_217753208();
    goto LABEL_14;
  }

  sub_217753208();
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_217753208();
  MEMORY[0x21CEA3550](v13);
LABEL_14:
  OUTLINED_FUNCTION_95_0();
}

uint64_t sub_217265760(uint64_t a1)
{
  OUTLINED_FUNCTION_49_1();
  if (*(v1 + 41))
  {
    return sub_217753208();
  }

  v2 = *v1;
  v3 = v1[2];
  v4 = v1[4];
  v5 = *(v1 + 40);
  v6 = *(v1 + 6);
  v7 = *(v1 + 2);
  sub_217753208();
  if (v7)
  {
    sub_217753208();
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_217753208();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v2;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x21CEA3580](v11);
    if ((v6 & 1) == 0)
    {
LABEL_4:
      sub_217753208();
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x21CEA3580](v8);
      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if (v5)
  {
    return sub_217753208();
  }

LABEL_8:
  sub_217753208();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x21CEA3580](v9);
}

uint64_t sub_21726582C()
{
  v1 = v0[128];
  v2 = v0[144];
  memcpy(__dst, v0, 0x91uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) != 1)
  {
    memcpy(v7, v0, sizeof(v7));
    OUTLINED_FUNCTION_24();
    v3 = OUTLINED_FUNCTION_11_7();
    PlayParameters.hash(into:)(v3);
    if (v1)
    {
      OUTLINED_FUNCTION_25();
      if ((v2 & 1) == 0)
      {
LABEL_4:
        OUTLINED_FUNCTION_24();
        v4 = OUTLINED_FUNCTION_37();
        return MEMORY[0x21CEA3580](v4);
      }
    }

    else
    {
      OUTLINED_FUNCTION_24();
      v6 = OUTLINED_FUNCTION_23_6();
      MEMORY[0x21CEA3580](v6);
      if ((v2 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  return OUTLINED_FUNCTION_25();
}

void sub_2172658E8(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__src, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_98_1();
  a29 = v32;
  a30 = v33;
  __srca = v34;
  v36 = v35 + 64;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_42_3();
  sub_217751DE8();
  v37 = 0;
  v38 = 0;
  if (v31)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v30)
    {

      MEMORY[0x21CEA3550](v37);
      OUTLINED_FUNCTION_96();
      return;
    }

    v31 = *(v36 + 8 * v39);
    ++v38;
    if (v31)
    {
      v38 = v39;
      do
      {
LABEL_7:
        v31 &= v31 - 1;
        memcpy(&__dst, __srca, 0x48uLL);
        sub_217751DE8();
        v40 = sub_217751DE8();
        OUTLINED_FUNCTION_61(v40);

        sub_217751FF8();

        v37 ^= sub_217753238();
      }

      while (v31);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_217265A08(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  OUTLINED_FUNCTION_0_1();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  result = sub_217751DE8();
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v25 = v10;
    if (!v6)
    {
      break;
    }

LABEL_7:
    v13 = *(*(a2 + 48) + 16 * (__clz(__rbit64(v6)) | (v11 << 6)) + 8);
    OUTLINED_FUNCTION_17_2();
    v15 = *v14;
    v16 = *(v14 + 16);
    sub_217751DE8();
    v17 = OUTLINED_FUNCTION_47_2();
    sub_21726A5E0(v17, v18, v16);
    if (!v13)
    {
LABEL_19:

      return MEMORY[0x21CEA3550](v25);
    }

    OUTLINED_FUNCTION_88_0();
    memcpy(__dst, a1, sizeof(__dst));
    sub_217751FF8();

    switch(v16)
    {
      case 1:
        MEMORY[0x21CEA3550](2, v19);
        sub_217753208();
        goto LABEL_18;
      case 2:
        MEMORY[0x21CEA3550](3, v19);
        v23 = v15;
        goto LABEL_13;
      case 3:
        MEMORY[0x21CEA3550](4, v19);
        v23 = OUTLINED_FUNCTION_23_6();
LABEL_13:
        MEMORY[0x21CEA3580](v23);
        goto LABEL_18;
      case 4:
        MEMORY[0x21CEA3550](5, v19);
        sub_21728054C();
        v20 = OUTLINED_FUNCTION_47_2();
        v22 = 4;
        goto LABEL_16;
      case 5:
        MEMORY[0x21CEA3550](6, v19);
        sub_217265A08(__dst, v15);
        v20 = OUTLINED_FUNCTION_47_2();
        v22 = 5;
        goto LABEL_16;
      case 6:
        MEMORY[0x21CEA3550](0, v19);
        goto LABEL_18;
      default:
        MEMORY[0x21CEA3550](1, v19);
        sub_217751FF8();
        v20 = OUTLINED_FUNCTION_47_2();
        v22 = 0;
LABEL_16:
        sub_21726A608(v20, v21, v22);
LABEL_18:
        result = sub_217753238();
        v10 = result ^ v25;
        break;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_19;
    }

    v6 = *(v3 + 8 * v12);
    ++v11;
    if (v6)
    {
      v11 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_217265C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24208;
  if (!qword_27CB24208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24208);
  }

  return result;
}

uint64_t sub_217265C8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217265CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_217265D30()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v54 = v2;
  v57 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  v56 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24310, &qword_217758680);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v55 = (v9 - v10);
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v11);
  v13 = v48 - v12;
  v14 = v1 + 64;
  OUTLINED_FUNCTION_0_1();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v48[1] = v4 + 16;
  v20 = (v4 + 32);
  v50 = v4;
  v51 = v1;
  v53 = (v4 + 8);
  sub_217751DE8();
  v21 = 0;
  v22 = 0;
  v49 = v13;
  v48[0] = v4 + 32;
  for (i = v1 + 64; ; v14 = i)
  {
    v58 = v21;
    if (!v17)
    {
      break;
    }

LABEL_8:
    v17 &= v17 - 1;
    v25 = v50;
    OUTLINED_FUNCTION_14_8();
    v28 = *v26;
    v27 = v26[1];
    v32 = v56;
    v31 = v57;
    (*(v25 + 16))(v56, v30 + *(v25 + 72) * v29, v57);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24318, &qword_217758688);
    v34 = *(v33 + 48);
    v35 = v55;
    *v55 = v28;
    *(v35 + 1) = v27;
    v23 = v35;
    v36 = v32;
    v20 = v48[0];
    (*(v25 + 32))(&v35[v34], v36, v31);
    OUTLINED_FUNCTION_4_14();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
    sub_217751DE8();
    v13 = v49;
LABEL_9:
    sub_21726A594(v23, v13, &qword_27CB24310, &qword_217758680);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24318, &qword_217758688);
    OUTLINED_FUNCTION_108(v13, 1);
    if (v41)
    {

      MEMORY[0x21CEA3550](v58);
      OUTLINED_FUNCTION_13();
      return;
    }

    v43 = v56;
    v42 = v57;
    (*v20)(v56, &v13[*(v40 + 48)], v57);
    memcpy(v59, v54, sizeof(v59));
    sub_217751FF8();

    OUTLINED_FUNCTION_4_16();
    sub_217269EAC(&qword_27CB24320, v44, MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*v53)(v43, v42);
    v21 = sub_217753238() ^ v58;
  }

  v23 = v55;
  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24318, &qword_217758688);
      OUTLINED_FUNCTION_120_2(v23, v46, v47, v45);
      v17 = 0;
      goto LABEL_9;
    }

    v17 = *(v14 + 8 * v24);
    ++v22;
    if (v17)
    {
      v22 = v24;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2172660B4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v314 = v2;
  v313 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  v308 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v302 - v9;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243D8, &qword_217788BC0);
  OUTLINED_FUNCTION_0_0();
  v310 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v328 = v13 - v14;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_80();
  v309 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E0, &qword_2177586B8);
  v18 = OUTLINED_FUNCTION_45_0(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_1();
  v317 = (v19 - v20);
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_80();
  v315 = v22;
  v316 = v1 + 64;
  OUTLINED_FUNCTION_1_4();
  v323 = v24 & v23;
  v307 = v4 + 32;
  v305 = (v25 + 63) >> 6;
  v306 = v4 + 8;
  v311 = v1;
  sub_217751DE8();
  v26 = 0;
  v27 = 0;
  for (i = v10; ; v10 = i)
  {
    v28 = v323;
    v322 = v26;
    if (!v323)
    {
      break;
    }

    v321 = v27;
LABEL_9:
    v323 = (v28 - 1) & v28;
    OUTLINED_FUNCTION_14_8();
    v33 = *v31;
    v32 = v31[1];
    v34 = v309;
    sub_21726A630(v36 + *(v310 + 72) * v35, v309, &qword_27CB243D8, &qword_217788BC0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E8, &unk_2177586C0);
    v38 = *(v37 + 48);
    v29 = v317;
    *v317 = v33;
    *(v29 + 8) = v32;
    sub_21726A594(v34, v29 + v38, &qword_27CB243D8, &qword_217788BC0);
    OUTLINED_FUNCTION_4_14();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);
    sub_217751DE8();
    v10 = i;
LABEL_10:
    v42 = v315;
    sub_21726A594(v29, v315, &qword_27CB243E0, &qword_2177586B8);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E8, &unk_2177586C0);
    OUTLINED_FUNCTION_108(v42, 1);
    if (v44)
    {
LABEL_265:

      MEMORY[0x21CEA3550](v322);
      OUTLINED_FUNCTION_13();
      return;
    }

    sub_21726A594(v42 + *(v43 + 48), v328, &qword_27CB243D8, &qword_217788BC0);
    memcpy(v353, v314, sizeof(v353));
    sub_217751FF8();

    OUTLINED_FUNCTION_117_1(v354);
    OUTLINED_FUNCTION_117_1(v355);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v355) == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v356, v354, sizeof(v356));
      sub_217753208();
      sub_2172DE90C(v353);
    }

    v45 = 24;
    v46 = type metadata accessor for CloudVideoArtwork(0);
    sub_21726A630(v328 + *(v46 + 20), v10, &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_108(v10, 1);
    if (v44)
    {
      sub_217753208();
    }

    else
    {
      v47 = OUTLINED_FUNCTION_13_2();
      v48(v47);
      sub_217753208();
      OUTLINED_FUNCTION_4_16();
      sub_217269EAC(&qword_27CB24320, v49, MEMORY[0x277CC9270]);
      sub_217751EB8();
      v50 = OUTLINED_FUNCTION_13_2();
      v51(v50);
    }

    if (*(v328 + *(v46 + 24)))
    {
      sub_217753208();
      sub_21728115C();
    }

    else
    {
      sub_217753208();
    }

    OUTLINED_FUNCTION_82_0();
    v325 = v52;
    OUTLINED_FUNCTION_1_4();
    v55 = v54 & v53;
    OUTLINED_FUNCTION_26_3();
    v324 = v56;
    v329 = v57;
    sub_217751DE8();
    v338 = 0;
    v58 = 0;
    if (!v55)
    {
LABEL_21:
      while (1)
      {
        v59 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v59 >= v324)
        {
          goto LABEL_262;
        }

        v55 = *(v325 + 8 * v59);
        ++v58;
        if (v55)
        {
          v58 = v59;
          goto LABEL_25;
        }
      }

LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

LABEL_25:
    v333 = v58;
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_14_8();
    v61 = *(v60 + 8);
    v64 = v63 + v62 * v45;
    v65 = *v64;
    v66 = *(v64 + 8);
    v67 = v55;
    v68 = *(v64 + 16);
    sub_217751DE8();
    v339 = v65;
    v327 = v66;
    sub_21726A5E0(v65, v66, v68);
    if (v61)
    {
      v332 = (v67 - 1) & v67;
      memcpy(v352, v353, sizeof(v352));
      sub_217751FF8();

      switch(v68)
      {
        case 1:
          OUTLINED_FUNCTION_112_1();
          sub_217753208();
          goto LABEL_260;
        case 2:
          OUTLINED_FUNCTION_113_0();
          v187 = v339;
          goto LABEL_156;
        case 3:
          OUTLINED_FUNCTION_116_0();
          v187 = OUTLINED_FUNCTION_28_0(v339);
LABEL_156:
          MEMORY[0x21CEA3580](v187);
          goto LABEL_260;
        case 4:
          OUTLINED_FUNCTION_114_0();
          v72 = v339;
          MEMORY[0x21CEA3550](*(v339 + 16));
          v69 = v72;
          v336 = *(v72 + 16);
          if (!v336)
          {
            goto LABEL_153;
          }

          v73 = 0;
          v335 = v72 + 32;
LABEL_30:
          v74 = v335 + v73 * v45;
          v76 = *v74;
          v75 = *(v74 + 8);
          switch(*(v74 + 16))
          {
            case 1:
              OUTLINED_FUNCTION_112_1();
              sub_217753208();
              goto LABEL_151;
            case 2:
              OUTLINED_FUNCTION_113_0();
              v128 = v76;
              goto LABEL_90;
            case 3:
              OUTLINED_FUNCTION_116_0();
              if ((v76 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v128 = v76;
              }

              else
              {
                v128 = 0;
              }

LABEL_90:
              MEMORY[0x21CEA3580](v128);
              goto LABEL_151;
            case 4:
              v326 = *(v74 + 8);
              OUTLINED_FUNCTION_114_0();
              MEMORY[0x21CEA3550](*(v76 + 16));
              v80 = *(v76 + 16);
              if (!v80)
              {
                goto LABEL_151;
              }

              v81 = v76 + 32;
              sub_217751DE8();
              v82 = 0;
              v330 = v76 + 32;
              v331 = v80;
              v334 = v73;
              v337 = v76;
LABEL_34:
              v83 = v81 + v82 * v45;
              v84 = *v83;
              v85 = *(v83 + 8);
              switch(*(v83 + 16))
              {
                case 1:
                  OUTLINED_FUNCTION_112_1();
                  sub_217753208();
                  goto LABEL_83;
                case 2:
                  OUTLINED_FUNCTION_113_0();
                  v102 = v84;
                  goto LABEL_55;
                case 3:
                  OUTLINED_FUNCTION_116_0();
                  v102 = OUTLINED_FUNCTION_37();
LABEL_55:
                  MEMORY[0x21CEA3580](v102);
                  goto LABEL_83;
                case 4:
                  v341 = *(v83 + 8);
                  OUTLINED_FUNCTION_114_0();
                  MEMORY[0x21CEA3550](*(v84 + 16));
                  v86 = OUTLINED_FUNCTION_85_0();
                  if (!v84)
                  {
                    goto LABEL_83;
                  }

                  v340 = v82;
                  v87 = v86 + 32;
                  v88 = v86;
                  sub_217751DE8();
                  v89 = 0;
                  while (2)
                  {
                    v90 = v87 + v89 * v45;
                    v91 = *v90;
                    switch(*(v90 + 16))
                    {
                      case 1:
                        OUTLINED_FUNCTION_112_1();
                        sub_217753208();
                        goto LABEL_51;
                      case 2:
                        OUTLINED_FUNCTION_113_0();
                        v101 = v91;
                        goto LABEL_46;
                      case 3:
                        OUTLINED_FUNCTION_116_0();
                        v101 = OUTLINED_FUNCTION_23_6();
LABEL_46:
                        MEMORY[0x21CEA3580](v101);
                        goto LABEL_51;
                      case 4:
                        OUTLINED_FUNCTION_114_0();
                        MEMORY[0x21CEA3550](*(v91 + 16));
                        v95 = *(v91 + 16);
                        if (v95)
                        {
                          sub_217751DE8();
                          v96 = (v91 + 48);
                          do
                          {
                            v97 = *(v96 - 1);
                            v349 = *(v96 - 2);
                            v350 = v97;
                            v98 = *v96;
                            v96 += 24;
                            v351 = v98;
                            sub_21726A5E0(v349, v97, v98);
                            JSONValue.hash(into:)(v352);
                            sub_21726A608(v349, v350, v351);
                            --v95;
                          }

                          while (v95);
                          v99 = OUTLINED_FUNCTION_13_2();
                          sub_21726A608(v99, v100, 4);
                          v45 = 24;
                        }

                        goto LABEL_51;
                      case 5:
                        OUTLINED_FUNCTION_110();
                        sub_217751DE8();
                        sub_217265A08(v352, v91);
                        v92 = OUTLINED_FUNCTION_13_2();
                        v94 = 5;
                        goto LABEL_49;
                      case 6:
                        OUTLINED_FUNCTION_115();
                        goto LABEL_51;
                      default:
                        OUTLINED_FUNCTION_111_0();
                        sub_217751DE8();
                        OUTLINED_FUNCTION_29_5();
                        sub_217751FF8();
                        v92 = OUTLINED_FUNCTION_13_2();
                        v94 = 0;
LABEL_49:
                        sub_21726A608(v92, v93, v94);
LABEL_51:
                        if (++v89 != v84)
                        {
                          continue;
                        }

                        sub_21726A608(v88, v341, 4);
                        break;
                    }

                    goto LABEL_82;
                  }

                case 5:
                  v340 = v82;
                  OUTLINED_FUNCTION_110();
                  v103 = v84;
                  v104 = v84 + 64;
                  OUTLINED_FUNCTION_3_17();
                  v107 = v106 & v105;
                  v341 = v85;
                  OUTLINED_FUNCTION_50_1(v103, v85);
                  v109 = v108 >> 6;
                  v342 = v103;
                  sub_217751DE8();
                  v343 = 0;
                  v45 = 0;
                  if (v107)
                  {
                    goto LABEL_62;
                  }

                  break;
                case 6:
                  OUTLINED_FUNCTION_115();
                  goto LABEL_83;
                default:
                  OUTLINED_FUNCTION_111_0();
                  sub_217751DE8();
                  sub_217751FF8();
                  sub_21726A608(v84, v85, 0);
                  goto LABEL_83;
              }

              while (1)
              {
                v110 = v45 + 1;
                if (__OFADD__(v45, 1))
                {
                  break;
                }

                if (v110 >= v109)
                {
                  goto LABEL_81;
                }

                v107 = *(v104 + 8 * v110);
                ++v45;
                if (v107)
                {
                  v45 = v110;
LABEL_62:
                  OUTLINED_FUNCTION_14_8();
                  v112 = *(v111 + 8);
                  OUTLINED_FUNCTION_17_2();
                  v114 = *v113;
                  v115 = *(v113 + 16);
                  sub_217751DE8();
                  v116 = OUTLINED_FUNCTION_48_2();
                  sub_21726A5E0(v116, v117, v115);
                  if (v112)
                  {
                    v107 &= v107 - 1;
                    OUTLINED_FUNCTION_63_0();
                    sub_217751FF8();

                    switch(v115)
                    {
                      case 1:
                        OUTLINED_FUNCTION_66();
                        sub_217753208();
                        goto LABEL_78;
                      case 2:
                        OUTLINED_FUNCTION_67_2();
                        v125 = v114;
                        goto LABEL_73;
                      case 3:
                        OUTLINED_FUNCTION_70_1();
                        if ((v114 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                        {
                          v125 = v114;
                        }

                        else
                        {
                          v125 = 0;
                        }

LABEL_73:
                        MEMORY[0x21CEA3580](v125);
                        goto LABEL_78;
                      case 4:
                        OUTLINED_FUNCTION_68_3();
                        MEMORY[0x21CEA3550](*(v114 + 16));
                        v121 = *(v114 + 16);
                        if (v121)
                        {
                          v122 = (v114 + 48);
                          do
                          {
                            v123 = *(v122 - 1);
                            v348[0] = *(v122 - 2);
                            v348[1] = v123;
                            v124 = *v122;
                            v122 += 24;
                            OUTLINED_FUNCTION_77_0(v348[0], v123, v124);
                            sub_21726A608(v348[0], v348[1], v348[2]);
                            --v121;
                          }

                          while (v121);
                        }

                        v118 = OUTLINED_FUNCTION_48_2();
                        v120 = 4;
                        goto LABEL_76;
                      case 5:
                        OUTLINED_FUNCTION_64_1();
                        sub_217265A08(&v349, v114);
                        v118 = OUTLINED_FUNCTION_48_2();
                        v120 = 5;
                        goto LABEL_76;
                      case 6:
                        OUTLINED_FUNCTION_69_1();
                        goto LABEL_78;
                      default:
                        OUTLINED_FUNCTION_65_1();
                        sub_217751FF8();
                        v118 = OUTLINED_FUNCTION_48_2();
                        v120 = 0;
LABEL_76:
                        sub_21726A608(v118, v119, v120);
LABEL_78:
                        v126 = sub_217753238();
                        OUTLINED_FUNCTION_39(v126);
                        if (!v107)
                        {
                          continue;
                        }

                        goto LABEL_62;
                    }
                  }

LABEL_81:
                  v127 = v342;

                  MEMORY[0x21CEA3550](v343);
                  OUTLINED_FUNCTION_119_0(v127, v341);
LABEL_82:
                  v73 = v334;
                  v76 = v337;
                  v81 = v330;
                  v80 = v331;
                  v82 = v340;
LABEL_83:
                  if (++v82 == v80)
                  {
                    v77 = v76;
                    v78 = v326;
                    v79 = 4;
LABEL_85:
                    sub_21726A608(v77, v78, v79);
LABEL_151:
                    if (++v73 == v336)
                    {
                      v69 = v339;
LABEL_153:
                      v70 = v327;
                      v71 = 4;
                      goto LABEL_259;
                    }

                    goto LABEL_30;
                  }

                  goto LABEL_34;
                }
              }

              __break(1u);
              goto LABEL_265;
            case 5:
              v334 = v73;
              OUTLINED_FUNCTION_110();
              OUTLINED_FUNCTION_3_17();
              v131 = v130 & v129;
              v326 = v75;
              v132 = v75;
              v134 = v133;
              OUTLINED_FUNCTION_50_1(v76, v132);
              v331 = v135 >> 6;
              sub_217751DE8();
              v136 = 0;
              v137 = 0;
              v330 = v134;
LABEL_93:
              v341 = v136;
              if (v131)
              {
                goto LABEL_98;
              }

              break;
            case 6:
              OUTLINED_FUNCTION_115();
              goto LABEL_151;
            default:
              OUTLINED_FUNCTION_111_0();
              sub_217751DE8();
              sub_217751FF8();
              v77 = v76;
              v78 = v75;
              v79 = 0;
              goto LABEL_85;
          }

          do
          {
            v138 = v137 + 1;
            if (__OFADD__(v137, 1))
            {
              __break(1u);
              goto LABEL_267;
            }

            if (v138 >= v331)
            {
              goto LABEL_150;
            }

            v131 = *(v134 + 8 * v138);
            ++v137;
          }

          while (!v131);
          v137 = v138;
LABEL_98:
          v139 = __clz(__rbit64(v131)) | (v137 << 6);
          v140 = *(*(v76 + 48) + 16 * v139 + 8);
          v141 = *(v76 + 56) + v139 * v45;
          v142 = v76;
          v143 = *v141;
          v144 = *(v141 + 8);
          v145 = *(v141 + 16);
          sub_217751DE8();
          v342 = v143;
          v340 = v144;
          v146 = v144;
          v76 = v142;
          v45 = 24;
          sub_21726A5E0(v143, v146, v145);
          v136 = v341;
          if (!v140)
          {
LABEL_150:

            MEMORY[0x21CEA3550](v136);
            sub_21726A608(v76, v326, 5);
            v73 = v334;
            goto LABEL_151;
          }

          v131 &= v131 - 1;
          OUTLINED_FUNCTION_63_0();
          sub_217751FF8();

          switch(v145)
          {
            case 1:
              OUTLINED_FUNCTION_66();
              sub_217753208();
              goto LABEL_147;
            case 2:
              OUTLINED_FUNCTION_67_2();
              v164 = v342;
              goto LABEL_121;
            case 3:
              OUTLINED_FUNCTION_70_1();
              v164 = OUTLINED_FUNCTION_28_0(v342);
LABEL_121:
              MEMORY[0x21CEA3580](v164);
              goto LABEL_147;
            case 4:
              OUTLINED_FUNCTION_68_3();
              v149 = v342;
              MEMORY[0x21CEA3550](*(v342 + 16));
              v150 = OUTLINED_FUNCTION_85_0();
              if (!v149)
              {
                sub_21726A608(v150, v340, 4);
                v134 = v330;
                goto LABEL_147;
              }

              v151 = 0;
              v343 = v150 + 32;
              v337 = v76;
              while (2)
              {
                v152 = v343 + 24 * v151;
                v153 = *v152;
                switch(*(v152 + 16))
                {
                  case 1:
                    OUTLINED_FUNCTION_66();
                    sub_217753208();
                    goto LABEL_117;
                  case 2:
                    OUTLINED_FUNCTION_67_2();
                    v163 = v153;
                    goto LABEL_112;
                  case 3:
                    OUTLINED_FUNCTION_70_1();
                    v163 = OUTLINED_FUNCTION_23_6();
LABEL_112:
                    MEMORY[0x21CEA3580](v163);
                    goto LABEL_117;
                  case 4:
                    OUTLINED_FUNCTION_68_3();
                    MEMORY[0x21CEA3550](*(v153 + 16));
                    v157 = *(v153 + 16);
                    if (v157)
                    {
                      sub_217751DE8();
                      v158 = (v153 + 48);
                      do
                      {
                        v159 = *(v158 - 1);
                        v348[0] = *(v158 - 2);
                        v348[1] = v159;
                        v160 = *v158;
                        v158 += 24;
                        OUTLINED_FUNCTION_77_0(v348[0], v159, v160);
                        sub_21726A608(v348[0], v348[1], v348[2]);
                        --v157;
                      }

                      while (v157);
                      v161 = OUTLINED_FUNCTION_13_2();
                      sub_21726A608(v161, v162, 4);
                      v45 = 24;
                    }

                    v76 = v337;
                    goto LABEL_117;
                  case 5:
                    OUTLINED_FUNCTION_64_1();
                    sub_217751DE8();
                    sub_217265A08(&v349, v153);
                    v154 = OUTLINED_FUNCTION_13_2();
                    v156 = 5;
                    goto LABEL_115;
                  case 6:
                    OUTLINED_FUNCTION_69_1();
                    goto LABEL_117;
                  default:
                    OUTLINED_FUNCTION_65_1();
                    sub_217751DE8();
                    OUTLINED_FUNCTION_29_5();
                    sub_217751FF8();
                    v154 = OUTLINED_FUNCTION_13_2();
                    v156 = 0;
LABEL_115:
                    sub_21726A608(v154, v155, v156);
LABEL_117:
                    if (++v151 != v149)
                    {
                      continue;
                    }

                    sub_21726A608(v342, v340, 4);
                    break;
                }

                goto LABEL_146;
              }

            case 5:
              OUTLINED_FUNCTION_64_1();
              OUTLINED_FUNCTION_82_0();
              v319 = v165;
              OUTLINED_FUNCTION_1_4();
              v168 = v167 & v166;
              OUTLINED_FUNCTION_26_3();
              v318 = v169;
              sub_217751DE8();
              v343 = 0;
              v45 = 0;
              v337 = v76;
              if (v168)
              {
                goto LABEL_128;
              }

              break;
            case 6:
              OUTLINED_FUNCTION_69_1();
              goto LABEL_147;
            default:
              OUTLINED_FUNCTION_65_1();
              v147 = v342;
              v148 = v340;
              sub_217751FF8();
              sub_21726A608(v147, v148, 0);
              goto LABEL_147;
          }

          while (1)
          {
            v170 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_269;
            }

            if (v170 >= v318)
            {
              goto LABEL_145;
            }

            v168 = *(v319 + 8 * v170);
            ++v45;
            if (v168)
            {
              v45 = v170;
LABEL_128:
              OUTLINED_FUNCTION_6_9();
              v172 = *v171;
              v173 = *(v171 + 16);
              sub_217751DE8();
              v174 = OUTLINED_FUNCTION_13_2();
              sub_21726A5E0(v174, v175, v173);
              if (v140)
              {
                v168 &= v168 - 1;
                OUTLINED_FUNCTION_52_1();
                OUTLINED_FUNCTION_109_0(v348);

                switch(v173)
                {
                  case 1:
                    MEMORY[0x21CEA3550](2, v176);
                    sub_217753208();
                    goto LABEL_142;
                  case 2:
                    MEMORY[0x21CEA3550](3, v176);
                    v184 = v172;
                    goto LABEL_137;
                  case 3:
                    MEMORY[0x21CEA3550](4, v176);
                    v184 = OUTLINED_FUNCTION_23_6();
LABEL_137:
                    MEMORY[0x21CEA3580](v184);
                    goto LABEL_142;
                  case 4:
                    MEMORY[0x21CEA3550](5, v176);
                    MEMORY[0x21CEA3550](*(v172 + 16));
                    v180 = *(v172 + 16);
                    if (v180)
                    {
                      v181 = (v172 + 48);
                      do
                      {
                        v182 = *(v181 - 1);
                        v344[0] = *(v181 - 2);
                        v344[1] = v182;
                        v183 = *v181;
                        v181 += 24;
                        OUTLINED_FUNCTION_76_0(v344[0], v182, v183);
                        sub_21726A608(v344[0], v344[1], v344[2]);
                        --v180;
                      }

                      while (v180);
                    }

                    v177 = OUTLINED_FUNCTION_13_2();
                    v179 = 4;
                    goto LABEL_140;
                  case 5:
                    MEMORY[0x21CEA3550](6, v176);
                    sub_217265A08(v348, v172);
                    v177 = OUTLINED_FUNCTION_13_2();
                    v179 = 5;
                    goto LABEL_140;
                  case 6:
                    MEMORY[0x21CEA3550](0, v176);
                    goto LABEL_142;
                  default:
                    MEMORY[0x21CEA3550](1, v176);
                    OUTLINED_FUNCTION_29_5();
                    sub_217751FF8();
                    v177 = OUTLINED_FUNCTION_13_2();
                    v179 = 0;
LABEL_140:
                    sub_21726A608(v177, v178, v179);
LABEL_142:
                    v140 = v348;
                    v185 = sub_217753238();
                    OUTLINED_FUNCTION_39(v185);
                    if (!v168)
                    {
                      continue;
                    }

                    goto LABEL_128;
                }
              }

LABEL_145:
              v186 = v342;

              MEMORY[0x21CEA3550](v343);
              OUTLINED_FUNCTION_119_0(v186, v340);
              v76 = v337;
LABEL_146:
              v134 = v330;
              v136 = v341;
LABEL_147:
              v136 ^= sub_217753238();
              goto LABEL_93;
            }
          }

        case 5:
          OUTLINED_FUNCTION_110();
          v188 = v339 + 64;
          OUTLINED_FUNCTION_1_4();
          v191 = v190 & v189;
          OUTLINED_FUNCTION_26_3();
          v319 = v192;
          sub_217751DE8();
          v193 = 0;
          v194 = 0;
          v337 = v188;
          if (v191)
          {
            goto LABEL_159;
          }

          break;
        case 6:
          OUTLINED_FUNCTION_115();
          goto LABEL_260;
        default:
          OUTLINED_FUNCTION_111_0();
          sub_217751FF8();
          v69 = OUTLINED_FUNCTION_35();
          v71 = 0;
          goto LABEL_259;
      }

LABEL_160:
      while (1)
      {
        v196 = v194 + 1;
        if (__OFADD__(v194, 1))
        {
          break;
        }

        if (v196 >= v319)
        {
          goto LABEL_258;
        }

        v191 = *(v188 + 8 * v196);
        ++v194;
        if (v191)
        {
          v195 = v193;
          v194 = v196;
LABEL_164:
          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_14_8();
          v197 = v191;
          v199 = *(v198 + 8);
          v202 = v201 + v200 * v45;
          v204 = *v202;
          v203 = *(v202 + 8);
          v205 = *(v202 + 16);
          sub_217751DE8();
          v340 = v204;
          v335 = v203;
          sub_21726A5E0(v204, v203, v205);
          v193 = v195;
          v188 = v337;
          if (v199)
          {
            v336 = (v197 - 1) & v197;
            OUTLINED_FUNCTION_63_0();
            sub_217751FF8();

            switch(v205)
            {
              case 1:
                OUTLINED_FUNCTION_66();
                sub_217753208();
                goto LABEL_255;
              case 2:
                OUTLINED_FUNCTION_67_2();
                v255 = v340;
                goto LABEL_223;
              case 3:
                OUTLINED_FUNCTION_70_1();
                v255 = OUTLINED_FUNCTION_28_0(v340);
LABEL_223:
                MEMORY[0x21CEA3580](v255);
                goto LABEL_255;
              case 4:
                OUTLINED_FUNCTION_68_3();
                v209 = v340;
                v210 = &v349;
                MEMORY[0x21CEA3550](*(v340 + 16));
                v206 = v209;
                v211 = *(v209 + 16);
                if (!v211)
                {
                  goto LABEL_219;
                }

                v212 = 0;
                v342 = v209 + 32;
                v318 = v211;
                v326 = v193;
                do
                {
                  v213 = v342 + v212 * v45;
                  v214 = *v213;
                  v215 = *(v213 + 8);
                  switch(*(v213 + 16))
                  {
                    case 1:
                      OUTLINED_FUNCTION_66();
                      v210 = &v349;
                      sub_217753208();
                      goto LABEL_217;
                    case 2:
                      OUTLINED_FUNCTION_67_2();
                      v210 = &v349;
                      v231 = v214;
                      goto LABEL_191;
                    case 3:
                      OUTLINED_FUNCTION_70_1();
                      v231 = OUTLINED_FUNCTION_37();
                      v210 = &v349;
LABEL_191:
                      MEMORY[0x21CEA3580](v231);
                      goto LABEL_217;
                    case 4:
                      v334 = *(v213 + 8);
                      OUTLINED_FUNCTION_68_3();
                      v210 = &v349;
                      MEMORY[0x21CEA3550](*(v214 + 16));
                      v216 = OUTLINED_FUNCTION_85_0();
                      if (!v214)
                      {
                        goto LABEL_217;
                      }

                      v331 = v212;
                      v217 = v216 + 32;
                      v341 = v216;
                      sub_217751DE8();
                      v218 = 0;
                      while (2)
                      {
                        v219 = v217 + v218 * v45;
                        v220 = *v219;
                        switch(*(v219 + 16))
                        {
                          case 1:
                            OUTLINED_FUNCTION_66();
                            v210 = &v349;
                            sub_217753208();
                            goto LABEL_187;
                          case 2:
                            OUTLINED_FUNCTION_67_2();
                            v210 = &v349;
                            v230 = v220;
                            goto LABEL_182;
                          case 3:
                            OUTLINED_FUNCTION_70_1();
                            v230 = OUTLINED_FUNCTION_23_6();
                            v210 = &v349;
LABEL_182:
                            MEMORY[0x21CEA3580](v230);
                            goto LABEL_187;
                          case 4:
                            OUTLINED_FUNCTION_68_3();
                            v210 = &v349;
                            MEMORY[0x21CEA3550](*(v220 + 16));
                            v224 = *(v220 + 16);
                            if (v224)
                            {
                              sub_217751DE8();
                              v225 = (v220 + 48);
                              do
                              {
                                v226 = *(v225 - 1);
                                v348[0] = *(v225 - 2);
                                v348[1] = v226;
                                v227 = *v225;
                                v225 += 24;
                                OUTLINED_FUNCTION_77_0(v348[0], v226, v227);
                                sub_21726A608(v348[0], v348[1], v348[2]);
                                --v224;
                              }

                              while (v224);
                              v228 = OUTLINED_FUNCTION_13_2();
                              sub_21726A608(v228, v229, 4);
                            }

                            v45 = 24;
                            goto LABEL_187;
                          case 5:
                            OUTLINED_FUNCTION_64_1();
                            sub_217751DE8();
                            sub_217265A08(&v349, v220);
                            v221 = OUTLINED_FUNCTION_13_2();
                            v223 = 5;
                            goto LABEL_185;
                          case 6:
                            OUTLINED_FUNCTION_69_1();
                            goto LABEL_187;
                          default:
                            OUTLINED_FUNCTION_65_1();
                            sub_217751DE8();
                            OUTLINED_FUNCTION_29_5();
                            sub_217751FF8();
                            v221 = OUTLINED_FUNCTION_13_2();
                            v223 = 0;
LABEL_185:
                            sub_21726A608(v221, v222, v223);
LABEL_187:
                            if (++v218 != v214)
                            {
                              continue;
                            }

                            sub_21726A608(v341, v334, 4);
                            break;
                        }

                        goto LABEL_216;
                      }

                    case 5:
                      v331 = v212;
                      OUTLINED_FUNCTION_64_1();
                      v330 = v214 + 64;
                      OUTLINED_FUNCTION_3_17();
                      v232 = v214;
                      v235 = v234 & v233;
                      v334 = v215;
                      OUTLINED_FUNCTION_50_1(v232, v215);
                      v45 = v236 >> 6;
                      v341 = v232;
                      sub_217751DE8();
                      v343 = 0;
                      v237 = 0;
                      if (v235)
                      {
                        goto LABEL_198;
                      }

                      break;
                    case 6:
                      OUTLINED_FUNCTION_69_1();
                      goto LABEL_217;
                    default:
                      OUTLINED_FUNCTION_65_1();
                      sub_217751DE8();
                      sub_217751FF8();
                      sub_21726A608(v214, v215, 0);
                      goto LABEL_217;
                  }

                  do
                  {
LABEL_194:
                    v238 = v237 + 1;
                    if (__OFADD__(v237, 1))
                    {
                      goto LABEL_268;
                    }

                    if (v238 >= v45)
                    {
                      goto LABEL_215;
                    }

                    v235 = *(v330 + 8 * v238);
                    ++v237;
                  }

                  while (!v235);
                  v237 = v238;
LABEL_198:
                  while (2)
                  {
                    OUTLINED_FUNCTION_6_9();
                    v240 = *v239;
                    v241 = *(v239 + 16);
                    sub_217751DE8();
                    v242 = OUTLINED_FUNCTION_13_2();
                    sub_21726A5E0(v242, v243, v241);
                    if (v210)
                    {
                      v235 &= v235 - 1;
                      OUTLINED_FUNCTION_52_1();
                      OUTLINED_FUNCTION_109_0(v348);

                      switch(v241)
                      {
                        case 1:
                          MEMORY[0x21CEA3550](2, v244);
                          sub_217753208();
                          goto LABEL_212;
                        case 2:
                          MEMORY[0x21CEA3550](3, v244);
                          v252 = v240;
                          goto LABEL_207;
                        case 3:
                          MEMORY[0x21CEA3550](4, v244);
                          v252 = OUTLINED_FUNCTION_23_6();
LABEL_207:
                          MEMORY[0x21CEA3580](v252);
                          goto LABEL_212;
                        case 4:
                          MEMORY[0x21CEA3550](5, v244);
                          MEMORY[0x21CEA3550](*(v240 + 16));
                          v248 = *(v240 + 16);
                          if (v248)
                          {
                            v249 = (v240 + 48);
                            do
                            {
                              v250 = *(v249 - 1);
                              v344[0] = *(v249 - 2);
                              v344[1] = v250;
                              v251 = *v249;
                              v249 += 24;
                              OUTLINED_FUNCTION_76_0(v344[0], v250, v251);
                              sub_21726A608(v344[0], v344[1], v344[2]);
                              --v248;
                            }

                            while (v248);
                          }

                          v245 = OUTLINED_FUNCTION_13_2();
                          v247 = 4;
                          goto LABEL_210;
                        case 5:
                          MEMORY[0x21CEA3550](6, v244);
                          sub_217265A08(v348, v240);
                          v245 = OUTLINED_FUNCTION_13_2();
                          v247 = 5;
                          goto LABEL_210;
                        case 6:
                          MEMORY[0x21CEA3550](0, v244);
                          goto LABEL_212;
                        default:
                          MEMORY[0x21CEA3550](1, v244);
                          OUTLINED_FUNCTION_29_5();
                          sub_217751FF8();
                          v245 = OUTLINED_FUNCTION_13_2();
                          v247 = 0;
LABEL_210:
                          sub_21726A608(v245, v246, v247);
LABEL_212:
                          v210 = v348;
                          v253 = sub_217753238();
                          OUTLINED_FUNCTION_39(v253);
                          if (!v235)
                          {
                            goto LABEL_194;
                          }

                          continue;
                      }
                    }

                    break;
                  }

LABEL_215:
                  v254 = v341;

                  v210 = &v349;
                  MEMORY[0x21CEA3550](v343);
                  OUTLINED_FUNCTION_119_0(v254, v334);
LABEL_216:
                  v188 = v337;
                  v193 = v326;
                  v211 = v318;
                  v212 = v331;
LABEL_217:
                  ++v212;
                }

                while (v212 != v211);
                v206 = v340;
LABEL_219:
                v207 = v335;
                v208 = 4;
LABEL_220:
                sub_21726A608(v206, v207, v208);
                goto LABEL_255;
              case 5:
                v326 = v193;
                OUTLINED_FUNCTION_64_1();
                v256 = v340 + 64;
                OUTLINED_FUNCTION_1_4();
                v45 = v258 & v257;
                v260 = (v259 + 63) >> 6;
                sub_217751DE8();
                v261 = 0;
                v262 = 0;
                v341 = v256;
LABEL_226:
                v342 = v261;
                if (v45)
                {
                  goto LABEL_231;
                }

                break;
              case 6:
                OUTLINED_FUNCTION_69_1();
                goto LABEL_255;
              default:
                OUTLINED_FUNCTION_65_1();
                sub_217751FF8();
                v206 = OUTLINED_FUNCTION_35();
                v208 = 0;
                goto LABEL_220;
            }

            while (1)
            {
              v263 = v262 + 1;
              if (__OFADD__(v262, 1))
              {
                goto LABEL_271;
              }

              if (v263 >= v260)
              {
                goto LABEL_254;
              }

              v45 = *(v256 + 8 * v263);
              ++v262;
              if (v45)
              {
                v262 = v263;
LABEL_231:
                OUTLINED_FUNCTION_14_8();
                v265 = *(v264 + 8);
                OUTLINED_FUNCTION_17_2();
                v268 = *v266;
                v267 = *(v266 + 8);
                v269 = *(v266 + 16);
                sub_217751DE8();
                v343 = v268;
                v270 = v268;
                v271 = v267;
                sub_21726A5E0(v270, v267, v269);
                v256 = v341;
                if (v265)
                {
                  v45 &= v45 - 1;
                  OUTLINED_FUNCTION_52_1();
                  sub_217751FF8();

                  switch(v269)
                  {
                    case 1:
                      MEMORY[0x21CEA3550](2, v272);
                      sub_217753208();
                      goto LABEL_250;
                    case 2:
                      MEMORY[0x21CEA3550](3, v272);
                      v280 = v343;
                      goto LABEL_240;
                    case 3:
                      MEMORY[0x21CEA3550](4, v272);
                      v280 = OUTLINED_FUNCTION_28_0(v343);
LABEL_240:
                      MEMORY[0x21CEA3580](v280);
                      goto LABEL_250;
                    case 4:
                      v274 = v260;
                      MEMORY[0x21CEA3550](5, v272);
                      v275 = v343;
                      MEMORY[0x21CEA3550](*(v343 + 16));
                      v276 = *(v275 + 16);
                      if (v276)
                      {
                        v277 = (v343 + 48);
                        do
                        {
                          v278 = *(v277 - 1);
                          v344[0] = *(v277 - 2);
                          v344[1] = v278;
                          v279 = *v277;
                          v277 += 24;
                          OUTLINED_FUNCTION_76_0(v344[0], v278, v279);
                          sub_21726A608(v344[0], v344[1], v344[2]);
                          --v276;
                        }

                        while (v276);
                      }

                      sub_21726A608(v343, v271, 4);
                      v260 = v274;
                      goto LABEL_250;
                    case 5:
                      v303 = v271;
                      v304 = v260;
                      MEMORY[0x21CEA3550](6, v272);
                      OUTLINED_FUNCTION_82_0();
                      v330 = v281;
                      OUTLINED_FUNCTION_1_4();
                      v284 = v283 & v282;
                      OUTLINED_FUNCTION_26_3();
                      v318 = v285;
                      sub_217751DE8();
                      v334 = 0;
                      v286 = 0;
                      if (v284)
                      {
                        goto LABEL_243;
                      }

                      break;
                    case 6:
                      MEMORY[0x21CEA3550](0, v272);
                      goto LABEL_250;
                    default:
                      MEMORY[0x21CEA3550](1, v272);
                      v273 = v343;
                      sub_217751FF8();
                      sub_21726A608(v273, v271, 0);
LABEL_250:
                      v294 = v342;
                      goto LABEL_251;
                  }

                  while (1)
                  {
                    v287 = v286 + 1;
                    if (__OFADD__(v286, 1))
                    {
                      goto LABEL_273;
                    }

                    if (v287 >= v318)
                    {
                      goto LABEL_252;
                    }

                    ++v286;
                    if (*(v330 + 8 * v287))
                    {
                      while (1)
                      {
                        OUTLINED_FUNCTION_14_8();
                        v289 = v288[1];
                        v331 = *v288;
                        OUTLINED_FUNCTION_17_2();
                        v291 = *v290;
                        v292 = *(v290 + 8);
                        v293 = *(v290 + 16);
                        sub_217751DE8();
                        sub_21726A5E0(v291, v292, v293);
                        if (!v289)
                        {
                          break;
                        }

                        OUTLINED_FUNCTION_88_0();
                        v345 = v291;
                        v346 = v292;
                        v347 = v293;
                        memcpy(v344, v348, sizeof(v344));
                        sub_217751FF8();

                        JSONValue.hash(into:)(v344);
                        sub_21726A608(v345, v346, v347);
                        v334 ^= sub_217753238();
                        v286 = v287;
LABEL_243:
                        v287 = v286;
                      }

LABEL_252:
                      v295 = v343;

                      MEMORY[0x21CEA3550](v334);
                      sub_21726A608(v295, v303, 5);
                      v256 = v341;
                      v294 = v342;
                      v260 = v304;
LABEL_251:
                      v261 = sub_217753238() ^ v294;
                      goto LABEL_226;
                    }
                  }
                }

LABEL_254:
                v296 = v340;

                MEMORY[0x21CEA3550](v342);
                OUTLINED_FUNCTION_119_0(v296, v335);
                v188 = v337;
                v193 = v326;
LABEL_255:
                v193 ^= sub_217753238();
                v191 = v336;
                if (v336)
                {
LABEL_159:
                  v195 = v193;
                  goto LABEL_164;
                }

                goto LABEL_160;
              }
            }
          }

LABEL_258:
          v297 = v339;

          MEMORY[0x21CEA3550](v193);
          v69 = v297;
          v70 = v327;
          v71 = 5;
LABEL_259:
          sub_21726A608(v69, v70, v71);
LABEL_260:
          v338 ^= sub_217753238();
          v55 = v332;
          v58 = v333;
          if (v332)
          {
            goto LABEL_25;
          }

          goto LABEL_21;
        }
      }

LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
      goto LABEL_272;
    }

LABEL_262:

    MEMORY[0x21CEA3550](v338);
    sub_2171F0738(v328, &qword_27CB243D8, &qword_217788BC0);
    v298 = sub_217753238();
    v27 = v321;
    v26 = v298 ^ v322;
  }

  v29 = v317;
  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v305)
    {
      v321 = v27;
      v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E8, &unk_2177586C0);
      OUTLINED_FUNCTION_120_2(v29, v300, v301, v299);
      v323 = 0;
      goto LABEL_10;
    }

    v28 = *(v316 + 8 * v30);
    ++v27;
    if (v28)
    {
      v321 = v30;
      goto LABEL_9;
    }
  }

LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
}

void sub_217267C90()
{
  OUTLINED_FUNCTION_12();
  v400 = v0;
  v2 = v1 + 64;
  OUTLINED_FUNCTION_1_4();
  v5 = v4 & v3;
  v7 = ((v6 + 63) >> 6);
  v397 = v8;
  sub_217751DE8();
  v9 = 0;
  v10 = 0;
  v398 = v7;
  v399 = v2;
LABEL_2:
  v404 = v9;
  if (v5)
  {
    v403 = v10;
LABEL_8:
    v402 = (v5 - 1) & v5;
    OUTLINED_FUNCTION_14_8();
    v13 = *v12;
    v2 = v12[1];
    v7 = (v15 + 440 * v14);
    memcpy(__dst, v7, sizeof(__dst));
    memcpy(__src, v7, sizeof(__src));
    v443 = v13;
    v444 = v2;
    memcpy(v445, __src, sizeof(v445));
    nullsub_1();
    sub_217751DE8();
    sub_21726A630(__dst, v440, &qword_27CB243F0, &qword_21775D690);
    OUTLINED_FUNCTION_62_1();
LABEL_9:
    memcpy(v445, v446, sizeof(v445));
    v443 = v7;
    v444 = v2;
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(&v443) == 1)
    {
LABEL_274:

      MEMORY[0x21CEA3550](v404);
      OUTLINED_FUNCTION_13();
      return;
    }

    memcpy(__src, v446, sizeof(__src));
    memcpy(v440, v400, 0x48uLL);
    sub_217751FF8();

    memcpy(__dst, __src, 0x1B0uLL);
    CloudArtwork.hash(into:)(v440);
    v16 = __src[54];
    sub_217751DE8();
    sub_2171F0738(__src, &qword_27CB243F0, &qword_21775D690);
    v407 = v16 + 64;
    OUTLINED_FUNCTION_1_4();
    v19 = v18 & v17;
    OUTLINED_FUNCTION_26_3();
    v406 = v20;
    v410 = v16;
    sub_217751DE8();
    v422 = 0;
    v21 = 0;
    if (v19)
    {
      goto LABEL_15;
    }

LABEL_11:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v406)
      {
        goto LABEL_271;
      }

      v19 = *(v407 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
LABEL_15:
        while (1)
        {
          v416 = v21;
          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_14_8();
          v23 = v19;
          v25 = *(v24 + 8);
          OUTLINED_FUNCTION_17_2();
          v27 = *v26;
          v28 = *(v26 + 8);
          v29 = *(v26 + 16);
          sub_217751DE8();
          v423 = v27;
          v409 = v28;
          sub_21726A5E0(v27, v28, v29);
          if (!v25)
          {
            break;
          }

          OUTLINED_FUNCTION_88_0();
          v415 = v23;
          memcpy(__dst, v440, 0x48uLL);
          sub_217751FF8();

          switch(v29)
          {
            case 1:
              OUTLINED_FUNCTION_103_0();
              sub_217753208();
              goto LABEL_269;
            case 2:
              OUTLINED_FUNCTION_104_0();
              v216 = v27;
              goto LABEL_151;
            case 3:
              OUTLINED_FUNCTION_107();
              v216 = OUTLINED_FUNCTION_28_0(v27);
LABEL_151:
              MEMORY[0x21CEA3580](v216);
              goto LABEL_269;
            case 4:
              OUTLINED_FUNCTION_105_2();
              MEMORY[0x21CEA3550](*(v27 + 16));
              v30 = v27;
              v420 = *(v27 + 16);
              if (!v420)
              {
                goto LABEL_148;
              }

              v33 = 0;
              v418 = v27 + 32;
LABEL_20:
              v34 = v418 + 24 * v33;
              v36 = *v34;
              v35 = *(v34 + 8);
              v424 = *v34;
              switch(*(v34 + 16))
              {
                case 1:
                  OUTLINED_FUNCTION_103_0();
                  sub_217753208();
                  goto LABEL_146;
                case 2:
                  OUTLINED_FUNCTION_104_0();
                  v94 = v36;
                  goto LABEL_81;
                case 3:
                  OUTLINED_FUNCTION_107();
                  v94 = OUTLINED_FUNCTION_37();
LABEL_81:
                  MEMORY[0x21CEA3580](v94);
                  goto LABEL_146;
                case 4:
                  v408 = *(v34 + 8);
                  OUTLINED_FUNCTION_105_2();
                  v37 = __dst;
                  MEMORY[0x21CEA3550](*(v36 + 16));
                  v38 = *(v36 + 16);
                  if (!v38)
                  {
                    goto LABEL_146;
                  }

                  v428 = v36 + 32;
                  sub_217751DE8();
                  v39 = 0;
                  v411 = v38;
                  v417 = v33;
LABEL_24:
                  v40 = v428 + 24 * v39;
                  v41 = *v40;
                  v42 = *(v40 + 8);
                  switch(*(v40 + 16))
                  {
                    case 1:
                      OUTLINED_FUNCTION_103_0();
                      v37 = __dst;
                      sub_217753208();
                      goto LABEL_77;
                    case 2:
                      OUTLINED_FUNCTION_104_0();
                      v37 = __dst;
                      v62 = v41;
                      goto LABEL_51;
                    case 3:
                      OUTLINED_FUNCTION_107();
                      if ((v41 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v62 = v41;
                      }

                      else
                      {
                        v62 = 0;
                      }

                      v37 = __dst;
LABEL_51:
                      MEMORY[0x21CEA3580](v62);
                      goto LABEL_77;
                    case 4:
                      OUTLINED_FUNCTION_105_2();
                      v37 = __dst;
                      MEMORY[0x21CEA3550](*(v41 + 16));
                      v43 = v41;
                      v44 = *(v41 + 16);
                      if (!v44)
                      {
                        goto LABEL_77;
                      }

                      v45 = v43 + 32;
                      v426 = v43;
                      sub_217751DE8();
                      v46 = 0;
                      while (2)
                      {
                        v47 = v45 + 24 * v46;
                        v48 = *v47;
                        v49 = *(v47 + 8);
                        switch(*(v47 + 16))
                        {
                          case 1:
                            OUTLINED_FUNCTION_103_0();
                            v37 = __dst;
                            sub_217753208();
                            goto LABEL_44;
                          case 2:
                            OUTLINED_FUNCTION_104_0();
                            v37 = __dst;
                            v57 = v48;
                            goto LABEL_39;
                          case 3:
                            OUTLINED_FUNCTION_107();
                            if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                            {
                              v57 = v48;
                            }

                            else
                            {
                              v57 = 0;
                            }

                            v37 = __dst;
LABEL_39:
                            MEMORY[0x21CEA3580](v57);
                            goto LABEL_44;
                          case 4:
                            OUTLINED_FUNCTION_105_2();
                            v37 = __dst;
                            MEMORY[0x21CEA3550](*(v48 + 16));
                            v53 = *(v48 + 16);
                            if (!v53)
                            {
                              goto LABEL_44;
                            }

                            sub_217751DE8();
                            v54 = (v48 + 48);
                            do
                            {
                              v55 = *(v54 - 1);
                              v437 = *(v54 - 2);
                              v438 = v55;
                              v56 = *v54;
                              v54 += 24;
                              v439 = v56;
                              sub_21726A5E0(v437, v55, v56);
                              v37 = &v437;
                              JSONValue.hash(into:)(__dst);
                              sub_21726A608(v437, v438, v439);
                              --v53;
                            }

                            while (v53);
                            v50 = v48;
                            v51 = v49;
                            v52 = 4;
LABEL_42:
                            sub_21726A608(v50, v51, v52);
LABEL_44:
                            if (++v46 != v44)
                            {
                              continue;
                            }

                            v59 = v426;
                            v60 = v42;
                            v61 = 4;
                            break;
                          case 5:
                            v58 = OUTLINED_FUNCTION_84_1();
                            MEMORY[0x21CEA3550](v58);
                            sub_217751DE8();
                            sub_217265A08(__dst, v48);
                            v50 = v48;
                            v51 = v49;
                            v52 = 5;
                            goto LABEL_42;
                          case 6:
                            OUTLINED_FUNCTION_106_0();
                            goto LABEL_44;
                          default:
                            OUTLINED_FUNCTION_102_2();
                            sub_217751DE8();
                            sub_217751FF8();
                            v50 = v48;
                            v51 = v49;
                            v52 = 0;
                            goto LABEL_42;
                        }

                        goto LABEL_76;
                      }

                    case 5:
                      v63 = OUTLINED_FUNCTION_84_1();
                      MEMORY[0x21CEA3550](v63);
                      v64 = v41;
                      v65 = v41 + 64;
                      OUTLINED_FUNCTION_3_17();
                      v68 = v67 & v66;
                      v412 = v42;
                      OUTLINED_FUNCTION_50_1(v64, v42);
                      v70 = v69 >> 6;
                      v426 = v64;
                      sub_217751DE8();
                      v429 = 0;
                      v71 = 0;
                      if (v68)
                      {
                        goto LABEL_57;
                      }

                      break;
                    case 6:
                      OUTLINED_FUNCTION_106_0();
                      goto LABEL_77;
                    default:
                      OUTLINED_FUNCTION_102_2();
                      sub_217751DE8();
                      sub_217751FF8();
                      sub_21726A608(v41, v42, 0);
                      goto LABEL_77;
                  }

                  while (1)
                  {
                    v72 = v71 + 1;
                    if (__OFADD__(v71, 1))
                    {
                      break;
                    }

                    if (v72 >= v70)
                    {
                      goto LABEL_75;
                    }

                    ++v71;
                    if (*(v65 + 8 * v72))
                    {
LABEL_57:
                      while (1)
                      {
                        OUTLINED_FUNCTION_6_9();
                        v74 = *v73;
                        v75 = *(v73 + 16);
                        sub_217751DE8();
                        v76 = OUTLINED_FUNCTION_86();
                        sub_21726A5E0(v76, v77, v75);
                        if (!v37)
                        {
                          break;
                        }

                        OUTLINED_FUNCTION_88_0();
                        OUTLINED_FUNCTION_74_0(v78, v79, v80, v81, v82, v83, v84, v85, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v415, v416, v417, v418, v420, v422, v423, v424, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
                        OUTLINED_FUNCTION_109_0(&v437);

                        switch(v75)
                        {
                          case 1:
                            OUTLINED_FUNCTION_55_1();
                            sub_217753208();
                            goto LABEL_73;
                          case 2:
                            OUTLINED_FUNCTION_56_1();
                            v93 = v74;
                            goto LABEL_68;
                          case 3:
                            OUTLINED_FUNCTION_59_1();
                            if ((v74 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                            {
                              v93 = v74;
                            }

                            else
                            {
                              v93 = 0;
                            }

LABEL_68:
                            MEMORY[0x21CEA3580](v93);
                            goto LABEL_73;
                          case 4:
                            OUTLINED_FUNCTION_57_1();
                            MEMORY[0x21CEA3550](*(v74 + 16));
                            v89 = *(v74 + 16);
                            if (v89)
                            {
                              v90 = (v74 + 48);
                              do
                              {
                                v91 = *(v90 - 1);
                                v436[0] = *(v90 - 2);
                                v436[1] = v91;
                                v92 = *v90;
                                v90 += 24;
                                LOBYTE(v436[2]) = v92;
                                sub_21726A5E0(v436[0], v91, v92);
                                JSONValue.hash(into:)(&v437);
                                sub_21726A608(v436[0], v436[1], v436[2]);
                                --v89;
                              }

                              while (v89);
                            }

                            v86 = OUTLINED_FUNCTION_86();
                            v88 = 4;
                            goto LABEL_71;
                          case 5:
                            OUTLINED_FUNCTION_53_0();
                            sub_217265A08(&v437, v74);
                            v86 = OUTLINED_FUNCTION_86();
                            v88 = 5;
                            goto LABEL_71;
                          case 6:
                            OUTLINED_FUNCTION_58_2();
                            goto LABEL_73;
                          default:
                            OUTLINED_FUNCTION_54_1();
                            sub_217751FF8();
                            v86 = OUTLINED_FUNCTION_86();
                            v88 = 0;
LABEL_71:
                            sub_21726A608(v86, v87, v88);
LABEL_73:
                            v37 = &v437;
                            v429 = sub_217753238() ^ v430;
                            break;
                        }
                      }

LABEL_75:

                      v37 = __dst;
                      MEMORY[0x21CEA3550](v429);
                      v59 = v426;
                      v60 = v412;
                      v61 = 5;
LABEL_76:
                      sub_21726A608(v59, v60, v61);
                      v33 = v417;
                      v36 = v424;
                      v38 = v411;
LABEL_77:
                      if (++v39 == v38)
                      {
                        sub_21726A608(v36, v408, 4);
                        goto LABEL_146;
                      }

                      goto LABEL_24;
                    }
                  }

                  __break(1u);
                  goto LABEL_274;
                case 5:
                  v417 = v33;
                  v95 = OUTLINED_FUNCTION_84_1();
                  v96 = v35;
                  MEMORY[0x21CEA3550](v95);
                  v97 = v36 + 64;
                  v98 = 1 << *(v36 + 32);
                  if (v98 < 64)
                  {
                    v99 = ~(-1 << v98);
                  }

                  else
                  {
                    v99 = -1;
                  }

                  v100 = v99 & *(v36 + 64);
                  v408 = v96;
                  sub_21726A5E0(v36, v96, 5);
                  v101 = v98 + 63;
                  v102 = v36 + 64;
                  v103 = v101 >> 6;
                  sub_217751DE8();
                  v104 = 0;
                  v105 = 0;
                  v413 = v103;
                  v405 = v97;
                  if (v100)
                  {
                    goto LABEL_87;
                  }

                  break;
                case 6:
                  OUTLINED_FUNCTION_106_0();
                  goto LABEL_146;
                default:
                  OUTLINED_FUNCTION_102_2();
                  sub_217751DE8();
                  sub_217751FF8();
                  sub_21726A608(v36, v35, 0);
                  goto LABEL_146;
              }

LABEL_88:
              while (1)
              {
                v108 = v105 + 1;
                if (__OFADD__(v105, 1))
                {
                  break;
                }

                if (v108 >= v103)
                {
                  goto LABEL_145;
                }

                v100 = *(v102 + 8 * v108);
                ++v105;
                if (v100)
                {
                  v106 = v103;
                  v107 = v104;
                  v105 = v108;
                  while (1)
                  {
                    OUTLINED_FUNCTION_14_8();
                    v110 = *(v109 + 8);
                    OUTLINED_FUNCTION_17_2();
                    v112 = *v111;
                    v113 = *(v111 + 8);
                    v114 = *(v111 + 16);
                    sub_217751DE8();
                    v428 = v113;
                    v429 = v112;
                    v115 = sub_21726A5E0(v112, v113, v114);
                    v104 = v107;
                    if (!v110)
                    {
                      break;
                    }

                    v103 = v106;
                    v100 &= v100 - 1;
                    OUTLINED_FUNCTION_74_0(v115, v116, v117, v118, v119, v120, v121, v122, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v413, v415, v416, v417, v418, v420, v422, v423, v424, v426, v428, v112, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
                    sub_217751FF8();

                    v123 = v114;
                    v124 = v429;
                    switch(v123)
                    {
                      case 1:
                        OUTLINED_FUNCTION_55_1();
                        sub_217753208();
                        goto LABEL_142;
                      case 2:
                        OUTLINED_FUNCTION_56_1();
                        v167 = v429;
                        goto LABEL_115;
                      case 3:
                        OUTLINED_FUNCTION_59_1();
                        v167 = OUTLINED_FUNCTION_38();
LABEL_115:
                        MEMORY[0x21CEA3580](v167);
                        goto LABEL_142;
                      case 4:
                        OUTLINED_FUNCTION_57_1();
                        MEMORY[0x21CEA3550](*(v429 + 16));
                        v133 = *(v429 + 16);
                        if (v133)
                        {
                          v134 = 0;
                          v135 = v429 + 32;
                          v411 = v104;
                          while (2)
                          {
                            v136 = v135 + 24 * v134;
                            v137 = *v136;
                            switch(*(v136 + 16))
                            {
                              case 1:
                                OUTLINED_FUNCTION_55_1();
                                sub_217753208();
                                goto LABEL_111;
                              case 2:
                                OUTLINED_FUNCTION_56_1();
                                v155 = v137;
                                goto LABEL_106;
                              case 3:
                                OUTLINED_FUNCTION_59_1();
                                v155 = OUTLINED_FUNCTION_38();
LABEL_106:
                                MEMORY[0x21CEA3580](v155);
                                goto LABEL_111;
                              case 4:
                                OUTLINED_FUNCTION_57_1();
                                MEMORY[0x21CEA3550](*(v137 + 16));
                                v149 = *(v137 + 16);
                                if (v149)
                                {
                                  sub_217751DE8();
                                  v150 = (v137 + 48);
                                  do
                                  {
                                    v151 = *(v150 - 1);
                                    v436[0] = *(v150 - 2);
                                    v436[1] = v151;
                                    v152 = *v150;
                                    v150 += 24;
                                    LOBYTE(v436[2]) = v152;
                                    sub_21726A5E0(v436[0], v151, v152);
                                    JSONValue.hash(into:)(&v437);
                                    sub_21726A608(v436[0], v436[1], v436[2]);
                                    --v149;
                                  }

                                  while (v149);
                                  v153 = OUTLINED_FUNCTION_34_2();
                                  sub_21726A608(v153, v154, 4);
                                  v104 = v411;
                                }

                                v103 = v413;
                                goto LABEL_111;
                              case 5:
                                OUTLINED_FUNCTION_53_0();
                                v156 = sub_217751DE8();
                                v164 = OUTLINED_FUNCTION_51_0(v156, v157, v158, v159, v160, v161, v162, v163, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v413, v415, v416, v417, v418, v420, v422, v423, v424, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
                                sub_217265A08(v164, v165);
                                v146 = OUTLINED_FUNCTION_34_2();
                                v148 = 5;
                                goto LABEL_109;
                              case 6:
                                OUTLINED_FUNCTION_58_2();
                                goto LABEL_111;
                              default:
                                OUTLINED_FUNCTION_54_1();
                                v138 = sub_217751DE8();
                                OUTLINED_FUNCTION_51_0(v138, v139, v140, v141, v142, v143, v144, v145, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v413, v415, v416, v417, v418, v420, v422, v423, v424, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
                                sub_217751FF8();
                                v146 = OUTLINED_FUNCTION_34_2();
                                v148 = 0;
LABEL_109:
                                sub_21726A608(v146, v147, v148);
LABEL_111:
                                if (++v134 != v133)
                                {
                                  continue;
                                }

                                v166 = v429;
                                break;
                            }

                            break;
                          }
                        }

                        else
                        {
                          v166 = v429;
                        }

                        sub_21726A608(v166, v428, 4);
                        v102 = v405;
                        goto LABEL_142;
                      case 5:
                        OUTLINED_FUNCTION_53_0();
                        v168 = v429 + 64;
                        OUTLINED_FUNCTION_1_4();
                        v171 = v170 & v169;
                        OUTLINED_FUNCTION_26_3();
                        v401 = v172;
                        sub_217751DE8();
                        v426 = 0;
                        v173 = 0;
                        v411 = v104;
                        if (v171)
                        {
                          goto LABEL_122;
                        }

                        break;
                      case 6:
                        OUTLINED_FUNCTION_58_2();
                        goto LABEL_142;
                      default:
                        OUTLINED_FUNCTION_54_1();
                        OUTLINED_FUNCTION_51_0(v125, v126, v127, v128, v129, v130, v131, v132, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v413, v415, v416, v417, v418, v420, v422, v423, v424, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
                        sub_217751FF8();
                        sub_21726A608(v124, v428, 0);
                        goto LABEL_142;
                    }

                    do
                    {
LABEL_118:
                      v174 = v173 + 1;
                      if (__OFADD__(v173, 1))
                      {
                        goto LABEL_278;
                      }

                      if (v174 >= v401)
                      {
                        goto LABEL_139;
                      }

                      v171 = *(v168 + 8 * v174);
                      ++v173;
                    }

                    while (!v171);
                    v173 = v174;
LABEL_122:
                    while (2)
                    {
                      OUTLINED_FUNCTION_14_8();
                      v176 = *(v175 + 8);
                      OUTLINED_FUNCTION_17_2();
                      v178 = *v177;
                      v179 = *(v177 + 16);
                      sub_217751DE8();
                      v180 = OUTLINED_FUNCTION_19_1();
                      v182 = sub_21726A5E0(v180, v181, v179);
                      if (v176)
                      {
                        v171 &= v171 - 1;
                        OUTLINED_FUNCTION_71_1(v182, v183, v184, v185, v186, v187, v188, v189, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v413, v415, v416, v417, v418, v420, v422, v423, v424, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
                        sub_217751FF8();

                        switch(v179)
                        {
                          case 1:
                            OUTLINED_FUNCTION_123_0();
                            sub_217753208();
                            goto LABEL_136;
                          case 2:
                            OUTLINED_FUNCTION_124_0();
                            v205 = v178;
                            goto LABEL_131;
                          case 3:
                            OUTLINED_FUNCTION_127();
                            v205 = OUTLINED_FUNCTION_38();
LABEL_131:
                            MEMORY[0x21CEA3580](v205);
                            goto LABEL_136;
                          case 4:
                            OUTLINED_FUNCTION_125_0();
                            OUTLINED_FUNCTION_118_0();
                            v201 = *(v178 + 16);
                            if (v201)
                            {
                              v202 = (v178 + 48);
                              do
                              {
                                v203 = *(v202 - 1);
                                v432[0] = *(v202 - 2);
                                v432[1] = v203;
                                v204 = *v202;
                                v202 += 24;
                                LOBYTE(v432[2]) = v204;
                                sub_21726A5E0(v432[0], v203, v204);
                                JSONValue.hash(into:)(v436);
                                sub_21726A608(v432[0], v432[1], v432[2]);
                                --v201;
                              }

                              while (v201);
                            }

                            v198 = OUTLINED_FUNCTION_19_1();
                            v200 = 4;
                            goto LABEL_134;
                          case 5:
                            OUTLINED_FUNCTION_121_0();
                            v214 = OUTLINED_FUNCTION_36_2(v206, v207, v208, v209, v210, v211, v212, v213, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v413, v415, v416, v417, v418, v420, v422, v423, v424, v427, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0]);
                            sub_217265A08(v214, v215);
                            v198 = OUTLINED_FUNCTION_19_1();
                            v200 = 5;
                            goto LABEL_134;
                          case 6:
                            OUTLINED_FUNCTION_126_0();
                            goto LABEL_136;
                          default:
                            OUTLINED_FUNCTION_122();
                            OUTLINED_FUNCTION_36_2(v190, v191, v192, v193, v194, v195, v196, v197, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v413, v415, v416, v417, v418, v420, v422, v423, v424, v427, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0]);
                            sub_217751FF8();
                            v198 = OUTLINED_FUNCTION_19_1();
                            v200 = 0;
LABEL_134:
                            sub_21726A608(v198, v199, v200);
LABEL_136:
                            v426 = sub_217753238() ^ v427;
                            if (!v171)
                            {
                              goto LABEL_118;
                            }

                            continue;
                        }
                      }

                      break;
                    }

LABEL_139:

                    MEMORY[0x21CEA3550](v426);
                    sub_21726A608(v429, v428, 5);
                    v102 = v405;
                    v104 = v411;
                    v103 = v413;
LABEL_142:
                    v104 ^= sub_217753238();
                    if (!v100)
                    {
                      goto LABEL_88;
                    }

LABEL_87:
                    v106 = v103;
                    v107 = v104;
                  }

LABEL_145:

                  MEMORY[0x21CEA3550](v104);
                  sub_21726A608(v424, v408, 5);
                  v33 = v417;
LABEL_146:
                  if (++v33 == v420)
                  {
                    v30 = v423;
LABEL_148:
                    v31 = v409;
                    v32 = 4;
                    goto LABEL_268;
                  }

                  goto LABEL_20;
                }
              }

              __break(1u);
              goto LABEL_276;
            case 5:
              v217 = OUTLINED_FUNCTION_84_1();
              MEMORY[0x21CEA3550](v217);
              v218 = v27 + 64;
              OUTLINED_FUNCTION_1_4();
              v221 = v220 & v219;
              v223 = (v222 + 63) >> 6;
              sub_217751DE8();
              v224 = 0;
              v225 = 0;
              v411 = v223;
              v414 = v423 + 64;
              if (!v221)
              {
                goto LABEL_154;
              }

              break;
            case 6:
              OUTLINED_FUNCTION_106_0();
              goto LABEL_269;
            default:
              OUTLINED_FUNCTION_102_2();
              sub_217751FF8();
              v30 = OUTLINED_FUNCTION_93();
              v32 = 0;
              goto LABEL_268;
          }

LABEL_158:
          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_14_8();
          v227 = v221;
          v229 = *(v228 + 8);
          OUTLINED_FUNCTION_17_2();
          v232 = *v230;
          v231 = *(v230 + 8);
          v233 = *(v230 + 16);
          sub_217751DE8();
          v234 = sub_21726A5E0(v232, v231, v233);
          if (v229)
          {
            OUTLINED_FUNCTION_74_0(v234, v235, v236, v237, v238, v239, v240, v241, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v414, v415, v416, v417, v231, (v227 - 1) & v227, v422, v423, v232, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
            sub_217751FF8();

            switch(v233)
            {
              case 1:
                OUTLINED_FUNCTION_55_1();
                sub_217753208();
                goto LABEL_264;
              case 2:
                OUTLINED_FUNCTION_56_1();
                v321 = v425;
                goto LABEL_215;
              case 3:
                OUTLINED_FUNCTION_59_1();
                v321 = OUTLINED_FUNCTION_28_0(v425);
LABEL_215:
                MEMORY[0x21CEA3580](v321);
                goto LABEL_264;
              case 4:
                OUTLINED_FUNCTION_57_1();
                MEMORY[0x21CEA3550](*(v425 + 16));
                v242 = v425;
                v245 = *(v425 + 16);
                if (!v245)
                {
                  goto LABEL_211;
                }

                v246 = 0;
                v428 = v425 + 32;
                v401 = *(v425 + 16);
                v408 = v224;
                do
                {
                  v247 = v428 + 24 * v246;
                  v248 = *v247;
                  v249 = *(v247 + 8);
                  switch(*(v247 + 16))
                  {
                    case 1:
                      OUTLINED_FUNCTION_55_1();
                      sub_217753208();
                      goto LABEL_209;
                    case 2:
                      OUTLINED_FUNCTION_56_1();
                      v277 = v248;
                      goto LABEL_184;
                    case 3:
                      OUTLINED_FUNCTION_59_1();
                      v277 = OUTLINED_FUNCTION_37();
LABEL_184:
                      MEMORY[0x21CEA3580](v277);
                      goto LABEL_209;
                    case 4:
                      OUTLINED_FUNCTION_57_1();
                      MEMORY[0x21CEA3550](*(v248 + 16));
                      v250 = OUTLINED_FUNCTION_85_0();
                      if (v248)
                      {
                        v417 = v246;
                        v245 = (v250 + 32);
                        v426 = v250;
                        sub_217751DE8();
                        v218 = 0;
                        while (2)
                        {
                          v251 = &v245[24 * v218];
                          v224 = *v251;
                          v223 = *(v251 + 1);
                          switch(v251[16])
                          {
                            case 1:
                              OUTLINED_FUNCTION_55_1();
                              sub_217753208();
                              goto LABEL_180;
                            case 2:
                              OUTLINED_FUNCTION_56_1();
                              v266 = v224;
                              goto LABEL_175;
                            case 3:
                              OUTLINED_FUNCTION_59_1();
                              v266 = OUTLINED_FUNCTION_38();
LABEL_175:
                              MEMORY[0x21CEA3580](v266);
                              goto LABEL_180;
                            case 4:
                              OUTLINED_FUNCTION_57_1();
                              MEMORY[0x21CEA3550](*(v224 + 16));
                              v263 = *(v224 + 16);
                              if (!v263)
                              {
                                goto LABEL_180;
                              }

                              sub_217751DE8();
                              v246 = v224 + 48;
                              do
                              {
                                v264 = *(v246 - 8);
                                v436[0] = *(v246 - 16);
                                v436[1] = v264;
                                v265 = *v246;
                                v246 += 24;
                                LOBYTE(v436[2]) = v265;
                                sub_21726A5E0(v436[0], v264, v265);
                                JSONValue.hash(into:)(&v437);
                                sub_21726A608(v436[0], v436[1], v436[2]);
                                --v263;
                              }

                              while (v263);
                              v260 = OUTLINED_FUNCTION_34_2();
                              v262 = 4;
LABEL_178:
                              sub_21726A608(v260, v261, v262);
LABEL_180:
                              if (++v218 != v248)
                              {
                                continue;
                              }

                              sub_21726A608(v426, v249, 4);
                              OUTLINED_FUNCTION_87_3();
                              break;
                            case 5:
                              OUTLINED_FUNCTION_53_0();
                              v267 = sub_217751DE8();
                              v275 = OUTLINED_FUNCTION_51_0(v267, v268, v269, v270, v271, v272, v273, v274, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v414, v415, v416, v417, v419, v421, v422, v423, v425, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
                              sub_217265A08(v275, v276);
                              v260 = OUTLINED_FUNCTION_34_2();
                              v262 = 5;
                              goto LABEL_178;
                            case 6:
                              OUTLINED_FUNCTION_58_2();
                              goto LABEL_180;
                            default:
                              OUTLINED_FUNCTION_54_1();
                              v252 = sub_217751DE8();
                              OUTLINED_FUNCTION_51_0(v252, v253, v254, v255, v256, v257, v258, v259, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v414, v415, v416, v417, v419, v421, v422, v423, v425, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
                              sub_217751FF8();
                              v260 = OUTLINED_FUNCTION_34_2();
                              v262 = 0;
                              goto LABEL_178;
                          }

                          break;
                        }
                      }

                      goto LABEL_209;
                    case 5:
                      OUTLINED_FUNCTION_53_0();
                      v245 = (v248 + 64);
                      OUTLINED_FUNCTION_3_17();
                      v280 = v279 & v278;
                      v405 = v249;
                      OUTLINED_FUNCTION_50_1(v248, v249);
                      v223 = v281 >> 6;
                      v426 = v248;
                      sub_217751DE8();
                      v429 = 0;
                      v282 = 0;
                      v417 = v246;
                      if (v280)
                      {
                        goto LABEL_191;
                      }

                      break;
                    case 6:
                      OUTLINED_FUNCTION_58_2();
                      goto LABEL_209;
                    default:
                      OUTLINED_FUNCTION_54_1();
                      sub_217751DE8();
                      sub_217751FF8();
                      sub_21726A608(v248, v249, 0);
                      goto LABEL_209;
                  }

                  do
                  {
LABEL_187:
                    v283 = v282 + 1;
                    if (__OFADD__(v282, 1))
                    {
                      goto LABEL_277;
                    }

                    if (v283 >= v223)
                    {
                      goto LABEL_208;
                    }

                    v280 = *&v245[8 * v283];
                    ++v282;
                  }

                  while (!v280);
                  v282 = v283;
LABEL_191:
                  while (2)
                  {
                    OUTLINED_FUNCTION_14_8();
                    v246 = *v284;
                    v285 = v284[1];
                    OUTLINED_FUNCTION_17_2();
                    v224 = *v286;
                    v218 = *(v286 + 16);
                    sub_217751DE8();
                    v287 = OUTLINED_FUNCTION_19_1();
                    v289 = sub_21726A5E0(v287, v288, v218);
                    if (v285)
                    {
                      v280 &= v280 - 1;
                      OUTLINED_FUNCTION_71_1(v289, v290, v291, v292, v293, v294, v295, v296, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v414, v415, v416, v417, v419, v421, v422, v423, v425, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
                      sub_217751FF8();

                      switch(v218)
                      {
                        case 1:
                          OUTLINED_FUNCTION_123_0();
                          sub_217753208();
                          goto LABEL_205;
                        case 2:
                          OUTLINED_FUNCTION_124_0();
                          v310 = v224;
                          goto LABEL_200;
                        case 3:
                          OUTLINED_FUNCTION_127();
                          v310 = OUTLINED_FUNCTION_38();
LABEL_200:
                          MEMORY[0x21CEA3580](v310);
                          goto LABEL_205;
                        case 4:
                          OUTLINED_FUNCTION_125_0();
                          OUTLINED_FUNCTION_118_0();
                          v218 = *(v224 + 16);
                          if (v218)
                          {
                            v246 = v224 + 48;
                            do
                            {
                              v308 = *(v246 - 8);
                              v432[0] = *(v246 - 16);
                              v432[1] = v308;
                              v309 = *v246;
                              v246 += 24;
                              LOBYTE(v432[2]) = v309;
                              sub_21726A5E0(v432[0], v308, v309);
                              JSONValue.hash(into:)(v436);
                              sub_21726A608(v432[0], v432[1], v432[2]);
                              --v218;
                            }

                            while (v218);
                          }

                          v305 = OUTLINED_FUNCTION_19_1();
                          v307 = 4;
                          goto LABEL_203;
                        case 5:
                          OUTLINED_FUNCTION_121_0();
                          v319 = OUTLINED_FUNCTION_36_2(v311, v312, v313, v314, v315, v316, v317, v318, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v414, v415, v416, v417, v419, v421, v422, v423, v425, v426, v428, v431, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0]);
                          sub_217265A08(v319, v320);
                          v305 = OUTLINED_FUNCTION_19_1();
                          v307 = 5;
                          goto LABEL_203;
                        case 6:
                          OUTLINED_FUNCTION_126_0();
                          goto LABEL_205;
                        default:
                          OUTLINED_FUNCTION_122();
                          OUTLINED_FUNCTION_36_2(v297, v298, v299, v300, v301, v302, v303, v304, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v414, v415, v416, v417, v419, v421, v422, v423, v425, v426, v428, v431, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0]);
                          sub_217751FF8();
                          v305 = OUTLINED_FUNCTION_19_1();
                          v307 = 0;
LABEL_203:
                          sub_21726A608(v305, v306, v307);
LABEL_205:
                          v429 = sub_217753238() ^ v431;
                          if (!v280)
                          {
                            goto LABEL_187;
                          }

                          continue;
                      }
                    }

                    break;
                  }

LABEL_208:

                  MEMORY[0x21CEA3550](v429);
                  sub_21726A608(v426, v405, 5);
                  OUTLINED_FUNCTION_87_3();
LABEL_209:
                  ++v246;
                }

                while (v246 != v245);
                v242 = v425;
LABEL_211:
                v243 = v419;
                v244 = 4;
LABEL_212:
                sub_21726A608(v242, v243, v244);
                goto LABEL_264;
              case 5:
                v408 = v224;
                OUTLINED_FUNCTION_53_0();
                v322 = v425 + 64;
                OUTLINED_FUNCTION_1_4();
                v325 = v324 & v323;
                v327 = (v326 + 63) >> 6;
                sub_217751DE8();
                v328 = 0;
                v329 = 0;
                v405 = v327;
                if (v325)
                {
                  goto LABEL_218;
                }

                break;
              case 6:
                OUTLINED_FUNCTION_58_2();
                goto LABEL_264;
              default:
                OUTLINED_FUNCTION_54_1();
                sub_217751FF8();
                v242 = OUTLINED_FUNCTION_35();
                v244 = 0;
                goto LABEL_212;
            }

LABEL_219:
            while (1)
            {
              v330 = v329 + 1;
              if (__OFADD__(v329, 1))
              {
                goto LABEL_280;
              }

              if (v330 >= v327)
              {
                goto LABEL_263;
              }

              v325 = *(v322 + 8 * v330);
              ++v329;
              if (v325)
              {
                v428 = v328;
                v329 = v330;
LABEL_223:
                OUTLINED_FUNCTION_14_8();
                v332 = *(v331 + 8);
                OUTLINED_FUNCTION_17_2();
                v334 = *v333;
                v335 = *(v333 + 8);
                v336 = *(v333 + 16);
                sub_217751DE8();
                v429 = v334;
                v426 = v335;
                v337 = sub_21726A5E0(v334, v335, v336);
                v328 = v428;
                if (v332)
                {
                  v325 &= v325 - 1;
                  OUTLINED_FUNCTION_71_1(v337, v338, v339, v340, v341, v342, v343, v344, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v414, v415, v416, v417, v419, v421, v422, v423, v425, v426, v428, v334, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0], v436[1], v436[2], v436[3], v436[4], v436[5], v436[6], v436[7], v436[8], v437);
                  sub_217751FF8();

                  switch(v336)
                  {
                    case 1:
                      OUTLINED_FUNCTION_123_0();
                      sub_217753208();
                      goto LABEL_259;
                    case 2:
                      OUTLINED_FUNCTION_124_0();
                      v381 = v429;
                      goto LABEL_245;
                    case 3:
                      OUTLINED_FUNCTION_127();
                      v381 = OUTLINED_FUNCTION_28_0(v429);
LABEL_245:
                      MEMORY[0x21CEA3580](v381);
                      goto LABEL_259;
                    case 4:
                      OUTLINED_FUNCTION_125_0();
                      OUTLINED_FUNCTION_118_0();
                      v345 = *(v429 + 16);
                      if (!v345)
                      {
                        sub_21726A608(v429, v426, 4);
                        goto LABEL_258;
                      }

                      v401 = v322;
                      v346 = 0;
                      v347 = v429 + 32;
                      v417 = v429 + 32;
                      while (2)
                      {
                        v348 = v347 + 24 * v346;
                        v349 = *v348;
                        switch(*(v348 + 16))
                        {
                          case 1:
                            OUTLINED_FUNCTION_123_0();
                            sub_217753208();
                            goto LABEL_241;
                          case 2:
                            OUTLINED_FUNCTION_124_0();
                            v367 = v349;
                            goto LABEL_236;
                          case 3:
                            OUTLINED_FUNCTION_127();
                            v367 = OUTLINED_FUNCTION_38();
LABEL_236:
                            MEMORY[0x21CEA3580](v367);
                            goto LABEL_241;
                          case 4:
                            OUTLINED_FUNCTION_125_0();
                            OUTLINED_FUNCTION_118_0();
                            v361 = *(v349 + 16);
                            if (v361)
                            {
                              sub_217751DE8();
                              v362 = (v349 + 48);
                              do
                              {
                                v363 = *(v362 - 1);
                                v432[0] = *(v362 - 2);
                                v432[1] = v363;
                                v364 = *v362;
                                v362 += 24;
                                LOBYTE(v432[2]) = v364;
                                sub_21726A5E0(v432[0], v363, v364);
                                JSONValue.hash(into:)(v436);
                                sub_21726A608(v432[0], v432[1], v432[2]);
                                --v361;
                              }

                              while (v361);
                              v365 = OUTLINED_FUNCTION_19_1();
                              sub_21726A608(v365, v366, 4);
                              v347 = v417;
                            }

                            goto LABEL_241;
                          case 5:
                            OUTLINED_FUNCTION_121_0();
                            v368 = sub_217751DE8();
                            v376 = OUTLINED_FUNCTION_36_2(v368, v369, v370, v371, v372, v373, v374, v375, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v414, v415, v416, v417, v419, v421, v422, v423, v425, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0]);
                            sub_217265A08(v376, v377);
                            v358 = OUTLINED_FUNCTION_19_1();
                            v360 = 5;
                            goto LABEL_239;
                          case 6:
                            OUTLINED_FUNCTION_126_0();
                            goto LABEL_241;
                          default:
                            OUTLINED_FUNCTION_122();
                            v350 = sub_217751DE8();
                            OUTLINED_FUNCTION_36_2(v350, v351, v352, v353, v354, v355, v356, v357, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v414, v415, v416, v417, v419, v421, v422, v423, v425, v426, v428, v429, v432[0], v432[1], v432[2], v432[3], v432[4], v432[5], v432[6], v432[7], v432[8], v433, v434, v435, v436[0]);
                            sub_217751FF8();
                            v358 = OUTLINED_FUNCTION_19_1();
                            v360 = 0;
LABEL_239:
                            sub_21726A608(v358, v359, v360);
LABEL_241:
                            if (++v346 != v345)
                            {
                              continue;
                            }

                            v378 = v429;
                            v379 = v426;
                            v380 = 4;
                            break;
                        }

                        goto LABEL_257;
                      }

                    case 5:
                      v401 = v322;
                      OUTLINED_FUNCTION_121_0();
                      OUTLINED_FUNCTION_82_0();
                      v396 = v382;
                      OUTLINED_FUNCTION_1_4();
                      v385 = v384 & v383;
                      OUTLINED_FUNCTION_26_3();
                      v395 = v386;
                      sub_217751DE8();
                      v417 = 0;
                      v387 = 0;
                      if (v385)
                      {
                        goto LABEL_248;
                      }

                      break;
                    case 6:
                      OUTLINED_FUNCTION_126_0();
                      goto LABEL_259;
                    default:
                      OUTLINED_FUNCTION_122();
                      sub_217751FF8();
                      sub_21726A608(v429, v426, 0);
                      goto LABEL_259;
                  }

LABEL_249:
                  while (1)
                  {
                    v388 = v387 + 1;
                    if (__OFADD__(v387, 1))
                    {
                      goto LABEL_282;
                    }

                    if (v388 >= v395)
                    {
                      goto LABEL_256;
                    }

                    v385 = *(v396 + 8 * v388);
                    ++v387;
                    if (v385)
                    {
                      while (1)
                      {
                        OUTLINED_FUNCTION_6_9();
                        v390 = *v389;
                        v391 = *(v389 + 8);
                        v392 = *(v389 + 16);
                        sub_217751DE8();
                        sub_21726A5E0(v390, v391, v392);
                        if (!v332)
                        {
                          break;
                        }

                        v385 &= v385 - 1;
                        v433 = v390;
                        v434 = v391;
                        LOBYTE(v435) = v392;
                        memcpy(v432, v436, sizeof(v432));
                        OUTLINED_FUNCTION_109_0(v432);

                        JSONValue.hash(into:)(v432);
                        sub_21726A608(v433, v434, v435);
                        v332 = v432;
                        v417 ^= sub_217753238();
                        v387 = v388;
                        if (!v385)
                        {
                          goto LABEL_249;
                        }

LABEL_248:
                        v388 = v387;
                      }

LABEL_256:

                      MEMORY[0x21CEA3550](v417);
                      v378 = v429;
                      v379 = v426;
                      v380 = 5;
LABEL_257:
                      sub_21726A608(v378, v379, v380);
                      v322 = v401;
                      v328 = v428;
LABEL_258:
                      v327 = v405;
LABEL_259:
                      v328 ^= sub_217753238();
                      if (v325)
                      {
LABEL_218:
                        v428 = v328;
                        goto LABEL_223;
                      }

                      goto LABEL_219;
                    }
                  }
                }

LABEL_263:

                MEMORY[0x21CEA3550](v328);
                sub_21726A608(v425, v419, 5);
                v223 = v411;
                v218 = v414;
                v224 = v408;
LABEL_264:
                v224 ^= sub_217753238();
                v221 = v421;
                if (!v421)
                {
LABEL_154:
                  while (1)
                  {
                    v226 = v225 + 1;
                    if (__OFADD__(v225, 1))
                    {
                      goto LABEL_279;
                    }

                    if (v226 >= v223)
                    {
                      goto LABEL_267;
                    }

                    v221 = *(v218 + 8 * v226);
                    ++v225;
                    if (v221)
                    {
                      v225 = v226;
                      goto LABEL_158;
                    }
                  }
                }

                goto LABEL_158;
              }
            }
          }

LABEL_267:

          MEMORY[0x21CEA3550](v224);
          v30 = v423;
          v31 = v409;
          v32 = 5;
LABEL_268:
          sub_21726A608(v30, v31, v32);
LABEL_269:
          v422 ^= sub_217753238();
          v19 = v415;
          v21 = v416;
          if (!v415)
          {
            goto LABEL_11;
          }
        }

LABEL_271:

        MEMORY[0x21CEA3550](v422);

        v393 = sub_217753238();
        v10 = v403;
        v9 = v393 ^ v404;
        v7 = v398;
        v2 = v399;
        v5 = v402;
        goto LABEL_2;
      }
    }

LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        v403 = v10;
        sub_21726A67C(&v443);
        OUTLINED_FUNCTION_62_1();
        v402 = 0;
        goto LABEL_9;
      }

      v5 = *(v2 + 8 * v11);
      ++v10;
      if (v5)
      {
        v403 = v11;
        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_282:
  __break(1u);
}