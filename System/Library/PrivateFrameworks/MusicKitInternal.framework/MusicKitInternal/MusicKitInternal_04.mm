uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_5(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_5 = result;
  return result;
}

void sub_1D4EAEF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EAEFE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class __getMPAVEndpointRoutingDataSourceClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_5();
  result = objc_getClass("MPAVEndpointRoutingDataSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVEndpointRoutingDataSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPAVEndpointRoutingDataSourceClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_9(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_9(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_9 = result;
  return result;
}

void sub_1D4EAF5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryEndCollaborationChangeRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_10)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_10;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3D10;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_10 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_10)
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
  result = objc_getClass("MPModelLibraryEndCollaborationChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryEndCollaborationChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryEndCollaborationChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_10(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_10 = result;
  return result;
}

void sub_1D4EAFC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPRemotePlaybackQueueClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_11)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_11;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3D50;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_11 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_11)
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
  result = objc_getClass("MPRemotePlaybackQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPRemotePlaybackQueueClass_block_invoke_cold_1();
  }

  getMPRemotePlaybackQueueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_11(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_11 = result;
  return result;
}

void sub_1D4EAFFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaLibraryClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_12)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_12;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3D68;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_12 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_12)
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
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMediaLibraryClass_block_invoke_cold_1();
  }

  getMPMediaLibraryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_12(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_12 = result;
  return result;
}

void sub_1D4EB02D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPServerObjectDatabaseMediaKitImportRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_13)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_13;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3D80;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_13 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_13)
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
  result = objc_getClass("MPServerObjectDatabaseMediaKitImportRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPServerObjectDatabaseMediaKitImportRequestClass_block_invoke_cold_1();
  }

  getMPServerObjectDatabaseMediaKitImportRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_13(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_13 = result;
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_14(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_14 = result;
  return result;
}

id getMPModelLibraryPlaylistEditChangeDetailsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPlaylistEditChangeDetailsClass_softClass;
  v7 = getMPModelLibraryPlaylistEditChangeDetailsClass_softClass;
  if (!getMPModelLibraryPlaylistEditChangeDetailsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPlaylistEditChangeDetailsClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryPlaylistEditChangeDetailsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB16D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPlaylistEditChangeDetailsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_15)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_15;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3DB0;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_15 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_15)
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
  result = objc_getClass("MPModelLibraryPlaylistEditChangeDetails");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryPlaylistEditChangeDetailsClass_block_invoke_cold_1();
  }

  getMPModelLibraryPlaylistEditChangeDetailsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_15(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_15 = result;
  return result;
}

id getMPCPlayerResponseTracklistClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCPlayerResponseTracklistClass_softClass;
  v7 = getMPCPlayerResponseTracklistClass_softClass;
  if (!getMPCPlayerResponseTracklistClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCPlayerResponseTracklistClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCPlayerResponseTracklistClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB1EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerResponseTracklistClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_1();
  result = objc_getClass("MPCPlayerResponseTracklist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerResponseTracklistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCPlayerResponseTracklistClass_block_invoke_cold_1();
    return __MediaPlaybackCoreLibraryCore_block_invoke_6(v3);
  }

  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_6(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_6 = result;
  return result;
}

void *__getMPCPlayerResponseTracklistDisplaySectionPreviousItemsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_1();
  result = dlsym(v2, "MPCPlayerResponseTracklistDisplaySectionPreviousItems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerResponseTracklistDisplaySectionPreviousItemsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCPlayerResponseTracklistDisplaySectionPlayingItemSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_1();
  result = dlsym(v2, "MPCPlayerResponseTracklistDisplaySectionPlayingItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerResponseTracklistDisplaySectionPlayingItemSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCPlayerResponseTracklistDisplaySectionUpNextItemsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_1();
  result = dlsym(v2, "MPCPlayerResponseTracklistDisplaySectionUpNextItems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerResponseTracklistDisplaySectionUpNextItemsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCPlayerResponseTracklistDisplaySectionNextItemsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_1();
  result = dlsym(v2, "MPCPlayerResponseTracklistDisplaySectionNextItems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerResponseTracklistDisplaySectionNextItemsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCPlayerResponseTracklistDisplaySectionAutoPlayItemsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlaybackCoreLibrary_1();
  result = dlsym(v2, "MPCPlayerResponseTracklistDisplaySectionAutoPlayItems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCPlayerResponseTracklistDisplaySectionAutoPlayItemsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EB2E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryFavoriteEntityRequestActionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_6();
  result = objc_getClass("MPModelLibraryFavoriteEntityRequestAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryFavoriteEntityRequestActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryFavoriteEntityRequestActionClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_16(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_16(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_16 = result;
  return result;
}

void __getMPModelLibraryFavoriteEntityChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_6();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPModelLibraryFavoriteEntityChangeRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryFavoriteEntityChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getMPModelLibraryFavoriteEntityChangeRequestClass_block_invoke_cold_1();
    [(MusicKit_SoftLinking_DownloadedSongs *)v2 requestDownloadedSongsForMediaLibrary:v3 completionHandler:v4, v5];
  }
}

void sub_1D4EB3190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryRequestClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_17)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_17;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3E48;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_17 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_17)
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
  result = objc_getClass("MPModelLibraryRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryRequestClass_block_invoke_cold_1_0();
  }

  getMPModelLibraryRequestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_17(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_17 = result;
  return result;
}

void sub_1D4EB36B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose((v19 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getMPModelObjectClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelObjectClass_softClass_0;
  v7 = getMPModelObjectClass_softClass_0;
  if (!getMPModelObjectClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelObjectClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelObjectClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB37DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB3A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB3CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getMPModelObjectClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_7();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1_0();
    return __MediaPlayerLibraryCore_block_invoke_18(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_18(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_18 = result;
  return result;
}

MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest *__getMPLibraryKeepLocalStatusObserverClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_7();
  result = objc_getClass("MPLibraryKeepLocalStatusObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPLibraryKeepLocalStatusObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPLibraryKeepLocalStatusObserverClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest *)v3 initWithPlaylist:v4, v5];
  }

  return result;
}

void sub_1D4EB4210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB44D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryDuplicatePlaylistChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_8();
  result = objc_getClass("MPModelLibraryDuplicatePlaylistChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryDuplicatePlaylistChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryDuplicatePlaylistChangeRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_19(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_19(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_19 = result;
  return result;
}

Class __getMPMediaLibraryClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_8();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaLibraryClass_block_invoke_cold_1();
    return __getMPIdentifierSetClass_block_invoke(v3);
  }

  return result;
}

Class __getMPIdentifierSetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_8();
  result = objc_getClass("MPIdentifierSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPIdentifierSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPIdentifierSetClass_block_invoke_cold_1();
    return __getMPModelPlaylistKindClass_block_invoke(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest *__getMPModelPlaylistKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_8();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest *)v3 init];
  }

  return result;
}

id getMPModelLibraryDownloadQueueRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryDownloadQueueRequestClass_softClass;
  v7 = getMPModelLibraryDownloadQueueRequestClass_softClass;
  if (!getMPModelLibraryDownloadQueueRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryDownloadQueueRequestClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryDownloadQueueRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB494C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelSongClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelSongClass_softClass_0;
  v7 = getMPModelSongClass_softClass_0;
  if (!getMPModelSongClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelSongClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelSongClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB4A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelResponseDidInvalidateNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelResponseDidInvalidateNotificationSymbolLoc_ptr;
  v8 = getMPModelResponseDidInvalidateNotificationSymbolLoc_ptr;
  if (!getMPModelResponseDidInvalidateNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_9();
    v6[3] = dlsym(v1, "MPModelResponseDidInvalidateNotification");
    getMPModelResponseDidInvalidateNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1D4EB4D44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryDownloadQueueRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_9();
  result = objc_getClass("MPModelLibraryDownloadQueueRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryDownloadQueueRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryDownloadQueueRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_20(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_20(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_20 = result;
  return result;
}

Class __getMPModelSongClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_9();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1_0();
    return __getMPModelResponseDidInvalidateNotificationSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPModelResponseDidInvalidateNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_9();
  result = dlsym(v2, "MPModelResponseDidInvalidateNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelResponseDidInvalidateNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EB5358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryJoinCollaborationChangeRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_21)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_21;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3FE0;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_21 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_21)
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
  result = objc_getClass("MPModelLibraryJoinCollaborationChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryJoinCollaborationChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryJoinCollaborationChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_21(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_21 = result;
  return result;
}

Class __getMPModelLibraryDeleteEntityChangeRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_22)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_22;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3FF8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_22 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_22)
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
  result = objc_getClass("MPModelLibraryDeleteEntityChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryDeleteEntityChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryDeleteEntityChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_22(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_22 = result;
  return result;
}

void sub_1D4EB6058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlayerLibraryCore_block_invoke_23(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_23 = result;
  return result;
}

void *__getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPCloudControllerIsUpdateInProgressDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCloudControllerGetMaxAllowedPinsForUserIdentitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPCloudControllerGetMaxAllowedPinsForUserIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudControllerGetMaxAllowedPinsForUserIdentitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCloudControllerEnableCloudLibraryOptionStartInitialImportSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPCloudControllerEnableCloudLibraryOptionStartInitialImport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudControllerEnableCloudLibraryOptionStartInitialImportSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMPModelLibraryPlaylistEditChangeRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPlaylistEditChangeRequestClass_softClass;
  v7 = getMPModelLibraryPlaylistEditChangeRequestClass_softClass;
  if (!getMPModelLibraryPlaylistEditChangeRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB682C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass_2;
  v7 = getMPMediaLibraryClass_softClass_2;
  if (!getMPMediaLibraryClass_softClass_2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke_2;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMutableSectionedCollectionClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMutableSectionedCollectionClass_softClass_2;
  v7 = getMPMutableSectionedCollectionClass_softClass_2;
  if (!getMPMutableSectionedCollectionClass_softClass_2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMutableSectionedCollectionClass_block_invoke_2;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMutableSectionedCollectionClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB69F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIImageClass_softClass_0;
  v7 = getUIImageClass_softClass_0;
  if (!getUIImageClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUIImageClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getUIImageClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB6AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB6E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPIdentifierSetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPIdentifierSetClass_softClass_0;
  v7 = getMPIdentifierSetClass_softClass_0;
  if (!getMPIdentifierSetClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPIdentifierSetClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPIdentifierSetClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB6EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPlaylistEntryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistEntryClass_softClass;
  v7 = getMPModelPlaylistEntryClass_softClass;
  if (!getMPModelPlaylistEntryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistEntryClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelPlaylistEntryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB74A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB76E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelLibraryPlaylistEditChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPlaylistEditChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke_cold_1();
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

Class __getMPMediaLibraryClass_block_invoke_2(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaLibraryClass_block_invoke_cold_1();
    return __getMPMutableSectionedCollectionClass_block_invoke_2(v3);
  }

  return result;
}

Class __getMPMutableSectionedCollectionClass_block_invoke_2(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    return __getUIImageClass_block_invoke_0(v3);
  }

  return result;
}

Class __getUIImageClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C4188;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (UIKitLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIImageClass_block_invoke_cold_1_0();
  }

  getUIImageClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getMPIdentifierSetClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPIdentifierSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPIdentifierSetClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPIdentifierSetClass_block_invoke_cold_1();
    return __getMPModelPlaylistKindClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelPlaylistKindClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1();
    return __getMPModelPlaylistClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistClass_block_invoke_cold_1();
    return __getMPModelSongClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPModelSongClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1_0();
    return __getMPModelPlaylistEntryClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistEntryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelPlaylistEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryClass_block_invoke_cold_1();
    return __getMPModelLibraryImportChangeRequestClass_block_invoke(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPServerObjectDatabase *__getMPModelLibraryImportChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelLibraryImportChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryImportChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPModelLibraryImportChangeRequestClass_block_invoke_cold_1();
    return +[(MusicKit_SoftLinking_MPServerObjectDatabase *)v3];
  }

  return result;
}

void sub_1D4EB8198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EB8504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPServerObjectDatabaseClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPServerObjectDatabase");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPServerObjectDatabaseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPServerObjectDatabaseClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_25(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_25(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_25 = result;
  return result;
}

Class __getMPModelGenericObjectKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPModelGenericObjectKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenericObjectKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenericObjectKindClass_block_invoke_cold_1();
    return __getMPIdentifierSetClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPIdentifierSetClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_12();
  result = objc_getClass("MPIdentifierSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPIdentifierSetClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPIdentifierSetClass_block_invoke_cold_1();
    return __getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_12();
  result = dlsym(v2, "MPStoreItemMetadataInt64NormalizeStoreIDValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EB93D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaQueryClass_softClass;
  v7 = getMPMediaQueryClass_softClass;
  if (!getMPMediaQueryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaQueryClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMediaQueryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB94CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelAlbumKindClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelAlbumKindClass_softClass;
  v7 = getMPModelAlbumKindClass_softClass;
  if (!getMPModelAlbumKindClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelAlbumKindClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelAlbumKindClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB95AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPlaylistKindClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistKindClass_softClass_1;
  v7 = getMPModelPlaylistKindClass_softClass_1;
  if (!getMPModelPlaylistKindClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistKindClass_block_invoke_1;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelPlaylistKindClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB968C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaPropertyPredicateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaPropertyPredicateClass_softClass;
  v7 = getMPMediaPropertyPredicateClass_softClass;
  if (!getMPMediaPropertyPredicateClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaPropertyPredicateClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMediaPropertyPredicateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaItemPropertyAlbumPersistentID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_13();
    v6[3] = dlsym(v1, "MPMediaItemPropertyAlbumPersistentID");
    getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaPlaylistPropertyPersistentID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr;
  v8 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr;
  if (!getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_13();
    v6[3] = dlsym(v1, "MPMediaPlaylistPropertyPersistentID");
    getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelAlbumClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelAlbumClass_softClass;
  v7 = getMPModelAlbumClass_softClass;
  if (!getMPModelAlbumClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelAlbumClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelAlbumClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB9A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPlaylistClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistClass_softClass_0;
  v7 = getMPModelPlaylistClass_softClass_0;
  if (!getMPModelPlaylistClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelPlaylistClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EB9B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaItemPropertyComposerPersistentID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_13();
    v6[3] = dlsym(v1, "MPMediaItemPropertyComposerPersistentID");
    getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1D4EBA460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaLibraryClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass_3;
  v7 = getMPMediaLibraryClass_softClass_3;
  if (!getMPMediaLibraryClass_softClass_3)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke_3;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBA548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EBAB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPlaylistEntryClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistEntryClass_softClass_0;
  v7 = getMPModelPlaylistEntryClass_softClass_0;
  if (!getMPModelPlaylistEntryClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistEntryClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelPlaylistEntryClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBAF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPMediaQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaQueryClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_26(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_26(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_26 = result;
  return result;
}

Class __getMPModelAlbumKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelAlbumKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumKindClass_block_invoke_cold_1();
    return __getMPModelPlaylistKindClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPModelPlaylistKindClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1();
    return __getMPMediaPropertyPredicateClass_block_invoke(v3);
  }

  return result;
}

Class __getMPMediaPropertyPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPMediaPropertyPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaPropertyPredicateClass_block_invoke_cold_1();
    return __getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPMediaItemPropertyAlbumPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPMediaPlaylistPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelAlbumClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumClass_block_invoke_cold_1();
    return __getMPModelPlaylistClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelPlaylistClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistClass_block_invoke_cold_1();
    return __getMPModelArtistClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelArtistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelArtistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelArtistClass_block_invoke_cold_1();
    return __getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPMediaItemPropertyAlbumArtistPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelComposerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelComposerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelComposerClass_block_invoke_cold_1();
    return __getMPMediaItemPropertyComposerPersistentIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyComposerPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPMediaItemPropertyComposerPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelGenreClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenreClass_block_invoke_cold_1();
    return __getMPMediaLibraryClass_block_invoke_3(v3);
  }

  return result;
}

Class __getMPMediaLibraryClass_block_invoke_3(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaLibraryClass_block_invoke_cold_1();
    return __getMPRemotePlaybackQueueClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPRemotePlaybackQueueClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPRemotePlaybackQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPRemotePlaybackQueueClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPRemotePlaybackQueueClass_block_invoke_cold_1_0();
    return __getMPMediaItemPropertyPersistentIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_13();
  result = dlsym(v2, "MPMediaItemPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelPlaylistEntryClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_13();
  result = objc_getClass("MPModelPlaylistEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPServerObjectDatabaseImportResult *)v3 _initWithUnderlyingImportResult:v4, v5];
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_27(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_27 = result;
  return result;
}

void *__getMPContentTasteControllerDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_14();
  result = dlsym(v2, "MPContentTasteControllerDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPContentTasteControllerDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_28(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_28 = result;
  return result;
}

void *__getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_15();
  result = dlsym(v2, "MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EBC290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose((v20 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelObjectClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelObjectClass_softClass_1;
  v7 = getMPModelObjectClass_softClass_1;
  if (!getMPModelObjectClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelObjectClass_block_invoke_1;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelObjectClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBC39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EBC5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EBCB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelObjectClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_16();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1_0();
    return __MediaPlayerLibraryCore_block_invoke_29(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_29(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_29 = result;
  return result;
}

Class __getMPLibraryAddStatusObserverClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_16();
  result = objc_getClass("MPLibraryAddStatusObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPLibraryAddStatusObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPLibraryAddStatusObserverClass_block_invoke_cold_1();
    return __getMPModelAlbumClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelAlbumClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_16();
  result = objc_getClass("MPModelAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumClass_block_invoke_cold_1();
    return __getMPModelSongClass_block_invoke_2(v3);
  }

  return result;
}

MusicKit_SoftLinking_MPModelLibraryImportChangeRequest *__getMPModelSongClass_block_invoke_2(uint64_t a1)
{
  MediaPlayerLibrary_16();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1_0();
    return [(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest *)v3 init];
  }

  return result;
}

void sub_1D4EBD0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryImportChangeRequestClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_17();
  result = objc_getClass("MPModelLibraryImportChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryImportChangeRequestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPModelLibraryImportChangeRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_30(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_30(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_30 = result;
  return result;
}

void __getMPMutableSectionedCollectionClass_block_invoke_3(uint64_t a1)
{
  MediaPlayerLibrary_17();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMutableSectionedCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    +[(MusicKit_SoftLinking_MPMediaDownloadManager *)v2];
  }
}

void sub_1D4EBD3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaDownloadManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_31)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_31;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C4338;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_31 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_31)
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
  result = objc_getClass("MPMediaDownloadManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMediaDownloadManagerClass_block_invoke_cold_1();
  }

  getMPMediaDownloadManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_31(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_31 = result;
  return result;
}

void sub_1D4EBD8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryRemoveCollaboratorsChangeRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_32)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_32;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C4350;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_32 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_32)
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
  result = objc_getClass("MPModelLibraryRemoveCollaboratorsChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryRemoveCollaboratorsChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryRemoveCollaboratorsChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_32(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_32 = result;
  return result;
}

void sub_1D4EBDC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerChangeRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_7)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlaybackCoreLibraryCore_block_invoke_7;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C4390;
    v6 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_7 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_7)
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
  result = objc_getClass("MPCPlayerChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlayerChangeRequestClass_block_invoke_cold_1();
  }

  getMPCPlayerChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_7(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_7 = result;
  return result;
}

id getMPCPlaybackIntentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCPlaybackIntentClass_softClass;
  v7 = getMPCPlaybackIntentClass_softClass;
  if (!getMPCPlaybackIntentClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCPlaybackIntentClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCPlaybackIntentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBE1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPCModelStorePlaybackItemsRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCModelStorePlaybackItemsRequestClass_softClass_0;
  v7 = getMPCModelStorePlaybackItemsRequestClass_softClass_0;
  if (!getMPCModelStorePlaybackItemsRequestClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCModelStorePlaybackItemsRequestClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCModelStorePlaybackItemsRequestClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBE3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPCModelPlaybackIntentTracklistTokenClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCModelPlaybackIntentTracklistTokenClass_softClass;
  v7 = getMPCModelPlaybackIntentTracklistTokenClass_softClass;
  if (!getMPCModelPlaybackIntentTracklistTokenClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCModelPlaybackIntentTracklistTokenClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCModelPlaybackIntentTracklistTokenClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBE48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelAlbumClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelAlbumClass_softClass_1;
  v7 = getMPModelAlbumClass_softClass_1;
  if (!getMPModelAlbumClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelAlbumClass_block_invoke_1;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelAlbumClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBE948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelArtistClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelArtistClass_softClass_0;
  v7 = getMPModelArtistClass_softClass_0;
  if (!getMPModelArtistClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelArtistClass_block_invoke_0;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelArtistClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBEA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelSongClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelSongClass_softClass_3;
  v7 = getMPModelSongClass_softClass_3;
  if (!getMPModelSongClass_softClass_3)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelSongClass_block_invoke_3;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelSongClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBEB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelRadioStationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelRadioStationClass_softClass;
  v7 = getMPModelRadioStationClass_softClass;
  if (!getMPModelRadioStationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelRadioStationClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelRadioStationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBEBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4EBF0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlaybackIntentClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_2();
  result = objc_getClass("MPCPlaybackIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlaybackIntentClass_block_invoke_cold_1();
  }

  getMPCPlaybackIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_8(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_8 = result;
  return result;
}

Class __getMPCModelStorePlaybackItemsRequestClass_block_invoke_0(uint64_t a1)
{
  MediaPlaybackCoreLibrary_2();
  result = objc_getClass("MPCModelStorePlaybackItemsRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCModelStorePlaybackItemsRequestClass_block_invoke_cold_1_0();
  }

  getMPCModelStorePlaybackItemsRequestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPCModelPlaybackIntentTracklistTokenClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_2();
  result = objc_getClass("MPCModelPlaybackIntentTracklistToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCModelPlaybackIntentTracklistTokenClass_block_invoke_cold_1();
  }

  getMPCModelPlaybackIntentTracklistTokenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelAlbumClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_33(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_33(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_33 = result;
  return result;
}

Class __getMPModelArtistClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelArtistClass_block_invoke_cold_1_0();
  }

  getMPModelArtistClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelSongClass_block_invoke_3(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongClass_block_invoke_cold_1_0();
    return __getMPModelRadioStationClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelRadioStationClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelRadioStation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelRadioStationClass_block_invoke_cold_1();
  }

  getMPModelRadioStationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelAlbumKindClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelAlbumKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelAlbumKindClass_block_invoke_cold_1_0();
  }

  getMPModelAlbumKindClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelArtistKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelArtistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelArtistKindClass_block_invoke_cold_1();
  }

  getMPModelArtistKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelSongKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelSongKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelSongKindClass_block_invoke_cold_1();
  }

  getMPModelSongKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelRadioStationKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_18();
  result = objc_getClass("MPModelRadioStationKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelRadioStationKindClass_block_invoke_cold_1();
  }

  getMPModelRadioStationKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_34(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_34 = result;
  return result;
}

id getMPModelLibraryPlaylistEditTransactionDetailsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPlaylistEditTransactionDetailsClass_softClass;
  v7 = getMPModelLibraryPlaylistEditTransactionDetailsClass_softClass;
  if (!getMPModelLibraryPlaylistEditTransactionDetailsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPlaylistEditTransactionDetailsClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryPlaylistEditTransactionDetailsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EBF978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPlaylistEditTransactionDetailsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_35)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_35;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C4430;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_35 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_35)
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
  result = objc_getClass("MPModelLibraryPlaylistEditTransactionDetails");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryPlaylistEditTransactionDetailsClass_block_invoke_cold_1();
  }

  getMPModelLibraryPlaylistEditTransactionDetailsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_35(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_35 = result;
  return result;
}

Class __getMPMediaLibraryAlbumAppDataClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_19();
  result = objc_getClass("MPMediaLibraryAlbumAppData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMediaLibraryAlbumAppDataClass_block_invoke_cold_1();
  }

  getMPMediaLibraryAlbumAppDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_36(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_36 = result;
  return result;
}

Class __getMPModelLibraryAlbumAppDataChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_19();
  result = objc_getClass("MPModelLibraryAlbumAppDataChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryAlbumAppDataChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryAlbumAppDataChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4EC02DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerResponseClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_9)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlaybackCoreLibraryCore_block_invoke_9;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C4488;
    v6 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_9 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlaybackCoreLibraryCore_frameworkLibrary_9)
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
  result = objc_getClass("MPCPlayerResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPCPlayerResponseClass_block_invoke_cold_1();
  }

  getMPCPlayerResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_9(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_9 = result;
  return result;
}

id getMPModelLibraryPinnedEntityChangeRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPinnedEntityChangeRequestClass_softClass;
  v7 = getMPModelLibraryPinnedEntityChangeRequestClass_softClass;
  if (!getMPModelLibraryPinnedEntityChangeRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPinnedEntityChangeRequestClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPModelLibraryPinnedEntityChangeRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4EC0804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPinnedEntityChangeRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_37)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_37;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C44A0;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_37 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_37)
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
  result = objc_getClass("MPModelLibraryPinnedEntityChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibraryPinnedEntityChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibraryPinnedEntityChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_37(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_37 = result;
  return result;
}

uint64_t sub_1D4EC0C04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4EC0C24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
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

uint64_t type metadata accessor for PlaylistCollaboratorPropertyProvider(uint64_t a1)
{
  result = qword_1EC7E9CB8;
  if (!qword_1EC7E9CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4EC0F68(uint64_t a1)
{
  sub_1D4EC11C4(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E78254(319, &qword_1EDD5F070, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D4E78254(319, &qword_1EDD5F550, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1D4EC11C4(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_1D4E78254(319, &unk_1EC7E9CC8, &type metadata for Playlist.Collaborator.Role, MEMORY[0x1E69E6720]);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_1D4EC11C4(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
      if (v10 > 0x3F)
      {
        return v6;
      }

      v6 = sub_1D560D838();
      if (v11 > 0x3F)
      {
        return v6;
      }

      v6 = sub_1D5610088();
      if (v12 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1D4E5CF94(319);
        v2 = v13;
        if (v14 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1D4EC11C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D4EC12F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D567E360);
    v50 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    v47 = *(&v48 + 1);
    v46 = v48;
    goto LABEL_54;
  }

  v14 = v13;
  v15 = qword_1EC7E9430;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_20_14(&qword_1EC7E9430);
  }

  *&v48 = qword_1EC87C520;
  v50 = v14;
  sub_1D4EC5794(&qword_1EC7E9FA8, &qword_1EC7E9FA0, &qword_1D561B990);
  if (sub_1D5614D18())
  {
    sub_1D4E69910(v2, v3, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v16 = sub_1D56140F8();
    OUTLINED_FUNCTION_10(v3);
    if (!v17)
    {
      *(&v49 + 1) = v16;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
      (*(*(v16 - 8) + 32))(boxed_opaque_existential_0, v3, v16);
LABEL_14:

      goto LABEL_15;
    }

    v18 = &qword_1EC7E9CA0;
    v19 = &unk_1D561A0C0;
    v20 = v3;
    goto LABEL_8;
  }

  v22 = qword_1EC7E9438;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_19_5(&qword_1EC7E9438);
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C528);
  OUTLINED_FUNCTION_34_6();
  if (v22)
  {
    v23 = (v2 + *(type metadata accessor for PlaylistCollaboratorPropertyProvider(0) + 20));
    v24 = v23[1];
    if (!v24)
    {
      v26 = 0;
      v25 = 0;
      goto LABEL_25;
    }

LABEL_13:
    v25 = *v23;

    v26 = MEMORY[0x1E69E6158];
LABEL_25:

    *a2 = v25;
    a2[1] = v24;
    a2[2] = 0;
    a2[3] = v26;
    return result;
  }

  v29 = qword_1EC7E9440;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_1EC7E9440);
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C530);
  OUTLINED_FUNCTION_34_6();
  if (v29)
  {
    v30 = *(type metadata accessor for PlaylistCollaboratorPropertyProvider(0) + 24);
LABEL_34:
    v34 = *(v2 + v30);

    v35 = v34 & 1;
    v36 = MEMORY[0x1E69E6370];
    goto LABEL_35;
  }

  v31 = qword_1EC7E9448;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_17(&qword_1EC7E9448);
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C538);
  OUTLINED_FUNCTION_34_6();
  if (v31)
  {
    v30 = *(type metadata accessor for PlaylistCollaboratorPropertyProvider(0) + 28);
    goto LABEL_34;
  }

  v32 = qword_1EC7E9450;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_16_9(&qword_1EC7E9450);
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C540);
  OUTLINED_FUNCTION_34_6();
  if (v32)
  {
    v30 = *(type metadata accessor for PlaylistCollaboratorPropertyProvider(0) + 32);
    goto LABEL_34;
  }

  v33 = qword_1EC7E9458;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_15_9(&qword_1EC7E9458);
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C548);
  OUTLINED_FUNCTION_34_6();
  if (v33)
  {
    v30 = *(type metadata accessor for PlaylistCollaboratorPropertyProvider(0) + 36);
    goto LABEL_34;
  }

  v37 = qword_1EC7E9460;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_13_7(&qword_1EC7E9460);
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C550);
  OUTLINED_FUNCTION_34_6();
  if (v37)
  {
    v23 = (v2 + *(type metadata accessor for PlaylistCollaboratorPropertyProvider(0) + 40));
    v24 = v23[1];
    if (!v24)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v38 = qword_1EC7E9468;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_12_9(&qword_1EC7E9468);
  }

  OUTLINED_FUNCTION_1_2(qword_1EC87C558);
  OUTLINED_FUNCTION_34_6();
  if (v38)
  {
    v39 = type metadata accessor for PlaylistCollaboratorPropertyProvider(0);
    sub_1D4E69910(v2 + *(v39 + 44), v10, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v40 = sub_1D560C0A8();
    OUTLINED_FUNCTION_10(v10);
    if (!v17)
    {
      *(&v49 + 1) = v40;
      v43 = __swift_allocate_boxed_opaque_existential_0(&v48);
      (*(*(v40 - 8) + 32))(v43, v10, v40);
      goto LABEL_14;
    }

    v18 = &unk_1EC7E9CA8;
    v19 = &unk_1D561D1D0;
    v20 = v10;
LABEL_8:
    result = sub_1D4E50004(v20, v18, v19);
    v48 = 0u;
    v49 = 0u;
LABEL_15:
    v28 = v49;
    *a2 = v48;
    *(a2 + 1) = v28;
    return result;
  }

  v41 = qword_1EC7E9470;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EC7E9470);
  }

  v42 = OUTLINED_FUNCTION_1_2(qword_1EC7F46F8);

  if ((v42 & 1) == 0)
  {
    while (1)
    {
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
      v50 = a1;
      sub_1D560CDE8();
      sub_1D5615D48();
      OUTLINED_FUNCTION_33_0();
      v47 = *(&v48 + 1);
      v46 = v48;
LABEL_54:
      OUTLINED_FUNCTION_23_3("Fatal error", v44, v45, v46, v47, "MusicKitInternal/PlaylistCollaboratorPropertyProvider.swift");
      __break(1u);
    }
  }

  v34 = *(v4 + *(type metadata accessor for PlaylistCollaboratorPropertyProvider(0) + 48));

  v35 = v34 & 1;
  v36 = &type metadata for Playlist.Collaborator.Role;
LABEL_35:
  if (v34 == 2)
  {
    v36 = 0;
  }

  *a2 = v35;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v36;
  return result;
}

uint64_t sub_1D4EC1994(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_6;
  }

  v3 = qword_1EC7E9470;
  swift_retain_n();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EC7E9470);
  }

  v8 = qword_1EC7F46F8;
  sub_1D4EC5794(&qword_1EC7E9FA8, &qword_1EC7E9FA0, &qword_1D561B990);
  v4 = sub_1D5614D18();

  if (v4)
  {
    swift_getKeyPath();
    sub_1D4EC4008(&qword_1EC7E9F58, type metadata accessor for PlaylistCollaboratorPropertyProvider, &unk_1D561A44C);
    sub_1D5612248();

    return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_35_9();
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    result = OUTLINED_FUNCTION_23_3("Fatal error", v6, v7, v8, v9, "MusicKitInternal/PlaylistCollaboratorPropertyProvider.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4EC1BCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5619CC0;
  if (qword_1EC7E9430 != -1)
  {
    OUTLINED_FUNCTION_20_14(&qword_1EC7E9430);
  }

  *(v0 + 32) = qword_1EC87C520;
  v1 = qword_1EC7E9438;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_19_5(&qword_1EC7E9438);
  }

  *(v0 + 40) = qword_1EC87C528;
  v2 = qword_1EC7E9440;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_1EC7E9440);
  }

  *(v0 + 48) = qword_1EC87C530;
  v3 = qword_1EC7E9448;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_17(&qword_1EC7E9448);
  }

  *(v0 + 56) = qword_1EC87C538;
  v4 = qword_1EC7E9450;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_16_9(&qword_1EC7E9450);
  }

  *(v0 + 64) = qword_1EC87C540;
  v5 = qword_1EC7E9458;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_15_9(&qword_1EC7E9458);
  }

  *(v0 + 72) = qword_1EC87C548;
  v6 = qword_1EC7E9460;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_13_7(&qword_1EC7E9460);
  }

  *(v0 + 80) = qword_1EC87C550;
  v7 = qword_1EC7E9468;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_12_9(&qword_1EC7E9468);
  }

  *(v0 + 88) = qword_1EC87C558;
  v8 = qword_1EC7E9470;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EC7E9470);
  }

  *(v0 + 96) = qword_1EC7F46F8;
  qword_1EC87BE40 = v0;
}

uint64_t sub_1D4EC1DDC(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F78, &unk_1D561B970);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for PlaylistCollaboratorPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F80, &unk_1D564CE00);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000003ALL, 0x80000001D567E2B0);
    v26 = a1;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v24 = 89;
LABEL_12:
    v25 = v24;
    result = OUTLINED_FUNCTION_23_3("Fatal error", v20, v21, v22, v23, "MusicKitInternal/PlaylistCollaboratorPropertyProvider.swift");
    __break(1u);
    return result;
  }

  v14 = v13;
  sub_1D4E628D4(a2, &v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    sub_1D4E50004(v10, &qword_1EC7E9F78, &unk_1D561B970);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000030, 0x80000001D567E2F0);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v24 = 93;
    goto LABEL_12;
  }

  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  sub_1D4EC568C(v10, v3);
  v15 = qword_1EC7E9470;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EC7E9470);
  }

  v25 = qword_1EC7F46F8;
  v26 = v14;
  sub_1D4EC5794(&qword_1EC7E9F90, &qword_1EC7E9F80, &unk_1D564CE00);
  v16 = sub_1D5614D18();

  if ((v16 & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000028, 0x80000001D567E330);
    v26 = v14;
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v24 = 101;
    goto LABEL_12;
  }

  v17 = *(v3 + *(v11 + 48));
  result = sub_1D4EC5738(v3);
  v19 = *(v11 + 48);
  if (v17 == 2)
  {
    LOBYTE(v17) = *(v4 + v19);
  }

  *(v4 + v19) = v17;
  return result;
}

uint64_t sub_1D4EC218C(uint64_t a1, uint64_t a2)
{
  v98 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v95 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v93 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v93 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v93 - v13;
  v14 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v93 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v93 - v25;
  v27 = *(v24 + 56);
  v99 = a1;
  sub_1D4E69910(a1, &v93 - v25, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v100 = a2;
  sub_1D4E69910(a2, &v26[v27], &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v26);
  if (v28)
  {
    OUTLINED_FUNCTION_10(&v26[v27]);
    if (v28)
    {
      sub_1D4E50004(v26, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_14;
    }

LABEL_9:
    v29 = &qword_1EC7E9FB8;
    v30 = &unk_1D561B9C0;
    v31 = v26;
LABEL_10:
    sub_1D4E50004(v31, v29, v30);
LABEL_11:
    v32 = 0;
    return v32 & 1;
  }

  sub_1D4E69910(v26, v21, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(&v26[v27]);
  if (v28)
  {
    (*(v16 + 8))(v21, v14);
    goto LABEL_9;
  }

  (*(v16 + 32))(v2, &v26[v27], v14);
  OUTLINED_FUNCTION_9_5();
  sub_1D4EC4008(v34, v35, MEMORY[0x1E6976F80]);
  v36 = sub_1D5614D18();
  v37 = *(v16 + 8);
  v37(v2, v14);
  v37(v21, v14);
  sub_1D4E50004(v26, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v38 = type metadata accessor for PlaylistCollaboratorPropertyProvider(0);
  v40 = v99;
  v39 = v100;
  OUTLINED_FUNCTION_21_2();
  if (v43)
  {
    if (!v41)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_31_0(v42);
    v46 = v28 && v44 == v45;
    if (!v46 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v41)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_7();
  if (v28)
  {
    if (v47 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v32 = OUTLINED_FUNCTION_39();
    if (v48 || ((v49 ^ v50) & 1) != 0)
    {
      return v32 & 1;
    }
  }

  OUTLINED_FUNCTION_6_7();
  if (v28)
  {
    if (v51 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v32 = OUTLINED_FUNCTION_39();
    if (v52 || ((v53 ^ v54) & 1) != 0)
    {
      return v32 & 1;
    }
  }

  OUTLINED_FUNCTION_6_7();
  if (v28)
  {
    if (v55 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v32 = OUTLINED_FUNCTION_39();
    if (v56 || ((v57 ^ v58) & 1) != 0)
    {
      return v32 & 1;
    }
  }

  OUTLINED_FUNCTION_6_7();
  if (v28)
  {
    if (v59 != 2)
    {
      goto LABEL_11;
    }

LABEL_47:
    OUTLINED_FUNCTION_21_2();
    if (v65)
    {
      if (!v63)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_31_0(v64);
      v68 = v28 && v66 == v67;
      if (!v68 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (v63)
    {
      goto LABEL_11;
    }

    v69 = *(v38 + 44);
    v70 = v97;
    v71 = *(v96 + 48);
    sub_1D4E69910(v40 + v69, v97, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4E69910(v39 + v69, v70 + v71, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v72 = v98;
    if (__swift_getEnumTagSinglePayload(v70, 1, v98) == 1)
    {
      OUTLINED_FUNCTION_43_0(v70 + v71);
      if (!v28)
      {
        goto LABEL_63;
      }

      sub_1D4E50004(v70, &unk_1EC7E9CA8, &unk_1D561D1D0);
    }

    else
    {
      v73 = v94;
      sub_1D4E69910(v70, v94, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_43_0(v70 + v71);
      if (v28)
      {
        (*(v95 + 8))(v73, v72);
LABEL_63:
        v29 = &qword_1EC7E9FB0;
        v30 = &qword_1D562C590;
        v31 = v70;
        goto LABEL_10;
      }

      v74 = v95;
      v75 = v70 + v71;
      v76 = v93;
      (*(v95 + 32))(v93, v75, v72);
      OUTLINED_FUNCTION_8_5();
      sub_1D4EC4008(v77, v78, MEMORY[0x1E6968FC8]);
      v79 = sub_1D5614D18();
      v80 = *(v74 + 8);
      v80(v76, v72);
      v80(v73, v72);
      sub_1D4E50004(v70, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v79 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_6_7();
    if (v28)
    {
      if (v81 != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v81 == 2 || ((v81 ^ v82) & 1) != 0)
    {
      goto LABEL_11;
    }

    sub_1D4EF6F7C();
    if ((v83 & 1) == 0 || (sub_1D560D6E8() & 1) == 0 || (sub_1D4F3B22C() & 1) == 0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_21_2();
    if (v86)
    {
      if (!v84)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_31_0(v85);
      v89 = v28 && v87 == v88;
      if (!v89 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (v84)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_24_11();
    if (v90)
    {
      OUTLINED_FUNCTION_24_11();
      if (v91)
      {
        OUTLINED_FUNCTION_24_11();
        if (v92)
        {
          OUTLINED_FUNCTION_24_11();
          return v32 & 1;
        }
      }
    }

    goto LABEL_11;
  }

  v32 = OUTLINED_FUNCTION_39();
  if (!v60 && ((v61 ^ v62) & 1) == 0)
  {
    goto LABEL_47;
  }

  return v32 & 1;
}

void sub_1D4EC289C(uint64_t a1)
{
  v3 = v1;
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v35 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v34 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  sub_1D4E69910(v3, &v34 - v19, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v13) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v15 + 32))(v2, v20, v13);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_9_5();
    sub_1D4EC4008(v21, v22, MEMORY[0x1E6976F78]);
    sub_1D5614CB8();
    (*(v15 + 8))(v2, v13);
  }

  v23 = type metadata accessor for PlaylistCollaboratorPropertyProvider(0);
  if (*(v3 + v23[5] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_40_6();
  if (!v24)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_40_6();
  if (!v24)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_40_6();
  if (!v24)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_40_6();
  if (!v24)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v3 + v23[10] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v3 + v23[11], v12, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_43_0(v12);
  if (v24)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v26 = v34;
    v25 = v35;
    (*(v35 + 32))(v34, v12, v4);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_8_5();
    sub_1D4EC4008(v27, v28, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v25 + 8))(v26, v4);
  }

  v29 = *(v3 + v23[12]);
  if (v29 == 2)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v29 & 1);
  }

  v30 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v30, v31);
  sub_1D560D838();
  v32 = sub_1D4EC4008(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_42(v32);
  sub_1D5610088();
  v33 = sub_1D4EC4008(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_42(v33);
  if (*(v3 + v23[16] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
}

uint64_t sub_1D4EC2DB0()
{
  sub_1D56162D8();
  sub_1D4EC289C(v1);
  return sub_1D5616328();
}

void (*sub_1D4EC2DF8(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D4EC12F0(a2, v5);
  return sub_1D4EC2E64;
}

void sub_1D4EC2E64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_1D4E69910(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D4EC1994(v2 + 32, v3);
    sub_1D4E50004(v2, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {

    sub_1D4EC1994(v2, v3);
  }

  free(v2);
}

uint64_t sub_1D4EC2F24(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4EC289C(v2);
  return sub_1D5616328();
}

uint64_t sub_1D4EC2F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D4EC4008(&qword_1EC7E9F58, type metadata accessor for PlaylistCollaboratorPropertyProvider, &unk_1D561A44C);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D4EC3000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4EC3074(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D4EC310C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4EC3180(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_1D4EC31E8(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9F58, type metadata accessor for PlaylistCollaboratorPropertyProvider, &unk_1D561A44C);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D4EC3264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4EC4008(&qword_1EC7E9D68, type metadata accessor for PlaylistCollaboratorPropertyProvider, &unk_1D561A424);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D4EC32F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4EC4008(&qword_1EC7E9F50, type metadata accessor for PlaylistCollaboratorPropertyProvider, &unk_1D561A3E4);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D4EC337C(uint64_t a1, id *a2)
{
  result = sub_1D5614D48();
  *a2 = 0;
  return result;
}

uint64_t sub_1D4EC33F4(uint64_t a1, id *a2)
{
  v3 = sub_1D5614D58();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D4EC3474(uint64_t a1)
{
  sub_1D5614D68();
  v1 = sub_1D5614D38();

  return v1;
}

uint64_t sub_1D4EC34AC@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_8();
  *a1 = result;
  return result;
}

uint64_t sub_1D4EC34D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D560C518();
}

uint64_t sub_1D4EC362C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  swift_getWitnessTable();
  sub_1D560C528();
  return sub_1D5616328();
}

uint64_t sub_1D4EC3694(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52A20, type metadata accessor for ICError, &unk_1D561A344);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D4EC3700(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52A20, type metadata accessor for ICError, &unk_1D561A344);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D4EC376C(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError, &unk_1D561B844);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

void sub_1D4EC37D8()
{
  OUTLINED_FUNCTION_7_13();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1D4EC3800@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_8();
  *a1 = result;
  return result;
}

uint64_t sub_1D4EC3834@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D54E4BA4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D4EC3864(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_2(a1);
  result = sub_1D5002190(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D4EC388C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_2(a1);
  result = sub_1D54E4BCC(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D4EC38BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D54E4BA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D4EC38F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D54E4B9C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D4EC393C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D54E4BB8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D4EC3994(uint64_t a1)
{
  v1 = sub_1D5614D68();
  v2 = MEMORY[0x1DA6EAD20](v1);

  return v2;
}

uint64_t sub_1D4EC39CC(uint64_t a1, uint64_t a2)
{
  sub_1D5614D68();
  sub_1D5614E28();
}

uint64_t sub_1D4EC3A20(uint64_t a1, uint64_t a2)
{
  sub_1D5614D68();
  sub_1D56162D8();
  sub_1D5614E28();
  v2 = sub_1D5616328();

  return v2;
}

uint64_t sub_1D4EC3AC0(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError, &unk_1D561B844);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D4EC3B2C(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError, &unk_1D561B844);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D4EC3B98(void *a1, uint64_t a2)
{
  v4 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError, &unk_1D561B844);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D4EC3C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError, &unk_1D561B844);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D4EC3CA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54E4BC0();
  *a1 = result;
  return result;
}

uint64_t sub_1D4EC3CDC(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9DC0, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError, &unk_1D561A5AC);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D4EC3D48(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9DC0, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError, &unk_1D561A5AC);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D4EC3DB4(void *a1, uint64_t a2)
{
  v4 = sub_1D4EC4008(&qword_1EC7E9DC0, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError, &unk_1D561A5AC);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D4EC3E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4EC4008(&qword_1EC7E9DC0, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError, &unk_1D561A5AC);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D4EC3EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D56162D8();
  sub_1D5614CB8();
  return sub_1D5616328();
}

_DWORD *sub_1D4EC3F2C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D4EC3F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4EC4008(&qword_1EDD52A10, type metadata accessor for ICError, &unk_1D561B844);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D4EC4008(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4EC40E0()
{
  v1 = OUTLINED_FUNCTION_7_13();
  result = sub_1D4EC4108(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1D4EC410C(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9F60, type metadata accessor for MSVAutoBugCaptureDomain, &unk_1D561B6EC);
  v3 = sub_1D4EC4008(&qword_1EC7E9F68, type metadata accessor for MSVAutoBugCaptureDomain, &unk_1D561B68C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D4EC41C8(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9D88, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError, &unk_1D561A56C);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D4EC4234(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9D88, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError, &unk_1D561A56C);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D4EC42A0(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EC7E9DC0, type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError, &unk_1D561A5AC);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

unint64_t sub_1D4EC44F0()
{
  result = qword_1EC7E9DB0;
  if (!qword_1EC7E9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E9DB0);
  }

  return result;
}

uint64_t sub_1D4EC45D4(void *a1, void *a2)
{
  sub_1D4EC5648();
  v4 = a1;
  v5 = a2;
  LOBYTE(a1) = sub_1D5615848();

  return a1 & 1;
}

uint64_t sub_1D4EC463C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D5614D38();

  *a2 = v3;
  return result;
}

uint64_t sub_1D4EC4684(uint64_t a1)
{
  v2 = sub_1D4EC4008(&qword_1EDD52690, type metadata accessor for FileAttributeKey, &unk_1D561BF30);
  v3 = sub_1D4EC4008(&qword_1EC7EA258, type metadata accessor for FileAttributeKey, &unk_1D561BE84);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D4EC4740(uint64_t a1)
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

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1D4EC5648()
{
  result = qword_1EC7E9F70;
  if (!qword_1EC7E9F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7E9F70);
  }

  return result;
}

uint64_t sub_1D4EC568C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCollaboratorPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_1D4EC5738(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCollaboratorPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4EC5794(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D4EC5984(uint64_t a1, int a2)
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

uint64_t sub_1D4EC59A4(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1D4EC5ADC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4EC5AFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1D4EC5B58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4EC5BAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_6()
{
}

uint64_t Playlist.GeoLocation.convertToCloudGeoLocationAttribute()()
{
  v0 = sub_1D5610AE8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;

  sub_1D5610AC8();
  (*(v1 + 16))(v4, v6, v0);
  sub_1D56106F8();
  return (*(v1 + 8))(v6, v0);
}

uint64_t Genre.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D4EC6038(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v2);
  return sub_1D5616328();
}

uint64_t ResourceType.convertToGenreKind()@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D5610088();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  (*(v5 + 16))(&v16 - v9, v2, v4);
  sub_1D560FE78();
  sub_1D4EC620C();
  v11 = OUTLINED_FUNCTION_0_11();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    result = (v12)(v10, v4);
    v14 = 0;
  }

  else
  {
    sub_1D560FFC8();
    v15 = OUTLINED_FUNCTION_0_11();
    v12(v8, v4);
    result = (v12)(v10, v4);
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a1 = v14;
  return result;
}

unint64_t sub_1D4EC620C()
{
  result = qword_1EDD53350;
  if (!qword_1EDD53350)
  {
    sub_1D5610088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53350);
  }

  return result;
}

unint64_t sub_1D4EC6268()
{
  result = qword_1EC7EA320;
  if (!qword_1EC7EA320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA328, &qword_1D561BF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA320);
  }

  return result;
}

unint64_t sub_1D4EC62D0()
{
  result = qword_1EC7EA330;
  if (!qword_1EC7EA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA330);
  }

  return result;
}

uint64_t _s4KindOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D4EC6488()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EA338);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 104);

  return v4();
}

uint64_t static TVSeason.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8968 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EA338);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

void TVSeason.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)()
{
  OUTLINED_FUNCTION_47();
  v148 = v0;
  v154 = v1;
  v3 = v2;
  v5 = v4;
  v149 = v6;
  v145 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v163 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v144 = v10 - v9;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v158 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v157 = v15 - v14;
  OUTLINED_FUNCTION_70_0();
  v152 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v151 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v156 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA350, &unk_1D561C060);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v161 = &v142 - v22;
  v23 = OUTLINED_FUNCTION_70_0();
  v24 = type metadata accessor for TVSeasonPropertyProvider(v23);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  v142 = v26 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v164 = &v142 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v142 - v36;
  v147 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v146 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  v42 = v41 - v40;
  v153 = v3;
  sub_1D560F7E8();
  v159 = sub_1D4EC7654();
  v162 = sub_1D5614C68();

  sub_1D5610068();
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v11);
  sub_1D5610068();
  v160 = v11;
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v11);
  v150 = v42;
  v155 = v5;
  sub_1D560D4D8();
  sub_1D4E765C8(v34, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E765C8(v37, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4EC76A8(v154, v165);
  v143 = v24;
  if (!v165[3])
  {
    sub_1D4E765C8(v165, &qword_1EC7EEC40, &unk_1D561C070);
    v166 = 0u;
    v167 = 0u;
    v168 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    goto LABEL_8;
  }

  if (!*(&v167 + 1))
  {
LABEL_8:
    sub_1D4E765C8(&v166, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_9;
  }

  sub_1D4E48324(&v166, v169);
  __swift_project_boxed_opaque_existential_1(v169, v170);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v43 = v161;
  if (swift_dynamicCast())
  {
    v44 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v24);
    v47 = v142;
    sub_1D4ECCBF4();
    OUTLINED_FUNCTION_37_8();
    v48 = v164;
    sub_1D4ECCC4C();
    v49 = v156;
    sub_1D560D718();
    (*(v151 + 40))(&v48[v24[29]], v49, v152);
    v50 = v157;
    sub_1D5612468();
    (*(v158 + 40))(&v48[v24[30]], v50, v160);
    v51 = sub_1D5612458();
    v53 = v52;
    OUTLINED_FUNCTION_36_2();
    sub_1D4ECCBA0(v47, v54);
    v55 = &v48[v24[31]];

    *v55 = v51;
    v55[1] = v53;
    __swift_destroy_boxed_opaque_existential_1(v169);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v24);
  sub_1D4E765C8(v43, &qword_1EC7EA350, &unk_1D561C060);
  __swift_destroy_boxed_opaque_existential_1(v169);
LABEL_9:
  sub_1D56140F8();
  v56 = v164;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  v61 = sub_1D560C328();
  v62 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
  v65 = sub_1D5610978();
  v66 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v65);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v61);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v65);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v61);
  sub_1D560C0A8();
  v78 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v82 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v86 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v90 = OUTLINED_FUNCTION_25_11();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  (*(v151 + 16))(&v56[v24[29]], v155, v152);
  sub_1D5612468();
  v94 = sub_1D5612458();
  v161 = v95;
  sub_1D5614A88();
  v160 = OUTLINED_FUNCTION_41_9();
  v96 = OUTLINED_FUNCTION_41_9();
  v97 = OUTLINED_FUNCTION_41_9();
  v98 = OUTLINED_FUNCTION_41_9();
  *&v56[v24[5]] = 0;
  OUTLINED_FUNCTION_65_3(v24[6]);
  *&v56[v24[8]] = 0;
  *&v56[v24[10]] = 0;
  v99 = &v56[v24[11]];
  *v99 = 0;
  v99[8] = 1;
  *&v56[v24[12]] = 0;
  v56[v24[13]] = 2;
  v56[v24[14]] = 2;
  v100 = &v56[v24[16]];
  *v100 = 0;
  v100[8] = 1;
  *&v56[v24[17]] = 0;
  OUTLINED_FUNCTION_65_3(v24[20]);
  OUTLINED_FUNCTION_65_3(v24[21]);
  OUTLINED_FUNCTION_65_3(v24[22]);
  OUTLINED_FUNCTION_65_3(v24[23]);
  if (qword_1EC7E9378 != -1)
  {
    swift_once();
  }

  v101 = qword_1EC87C4B8;
  if (qword_1EC87C4B8 >> 62)
  {
    sub_1D560CDE8();

    OUTLINED_FUNCTION_71();
    v141 = sub_1D5615E18();

    v101 = v141;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v102 = v164;
  *&v164[v24[28]] = v101;
  v103 = &v102[v24[31]];
  v104 = v160;
  v105 = v161;
  *v103 = v94;
  v103[1] = v105;
  *&v102[v24[32]] = v104;
  *&v102[v24[33]] = v96;
  *&v102[v24[34]] = v97;
  *&v102[v24[35]] = v98;
LABEL_14:
  swift_getKeyPath();
  LOBYTE(v169[0]) = 0;
  LODWORD(v156) = *MEMORY[0x1E6976668];
  v106 = v163;
  v107 = v163 + 104;
  v108 = *(v163 + 104);
  v109 = v144;
  v110 = v145;
  v108(v144);
  v161 = sub_1D4ECCCF8(&qword_1EC7EA388, type metadata accessor for TVSeasonPropertyProvider, &unk_1D564A220);
  sub_1D5610D98();

  v158 = *(v106 + 8);
  v111 = OUTLINED_FUNCTION_45_3();
  v112(v111);
  v113 = v106 + 8;
  swift_getKeyPath();
  v114 = OUTLINED_FUNCTION_52_3(1);
  v115 = v156;
  v160 = v108;
  (v108)(v114, v156, v110);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v116 = OUTLINED_FUNCTION_45_3();
  (v158)(v116);
  swift_getKeyPath();
  v117 = OUTLINED_FUNCTION_52_3(2);
  (v108)(v117, v115, v110);
  v157 = v107;
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v118 = OUTLINED_FUNCTION_45_3();
  v119 = v158;
  (v158)(v118);
  swift_getKeyPath();
  v120 = OUTLINED_FUNCTION_52_3(5);
  v121 = v156;
  v160(v120, v156, v110);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v122 = OUTLINED_FUNCTION_45_3();
  v119(v122);
  v163 = v113;
  swift_getKeyPath();
  v123 = OUTLINED_FUNCTION_52_3(6);
  v124 = v160;
  v160(v123, v121, v110);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v125 = OUTLINED_FUNCTION_45_3();
  v126 = v158;
  (v158)(v125);
  swift_getKeyPath();
  v127 = OUTLINED_FUNCTION_52_3(7);
  v124(v127, v156, v110);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v128 = OUTLINED_FUNCTION_45_3();
  v126(v128);
  swift_getKeyPath();
  LOBYTE(v169[0]) = 8;
  LODWORD(v156) = *MEMORY[0x1E6976670];
  v129 = v160;
  (v160)(v109);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v130 = OUTLINED_FUNCTION_45_3();
  v126(v130);
  swift_getKeyPath();
  LOBYTE(v169[0]) = 13;
  type metadata accessor for TVShow(0);
  LOBYTE(v166) = 7;
  v131 = v156;
  v129(v109, v156, v110);
  sub_1D4ECCCF8(&qword_1EC7EA390, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D5610D48();

  v132 = OUTLINED_FUNCTION_45_3();
  v126(v132);
  swift_getKeyPath();
  v133 = OUTLINED_FUNCTION_52_3(10);
  v134 = v164;
  v160(v133, v131, v110);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_48_3();
  sub_1D5610D68();

  v135 = OUTLINED_FUNCTION_45_3();
  v126(v135);
  swift_getKeyPath();
  LOBYTE(v169[0]) = 13;
  type metadata accessor for TVSeason(0);
  if (qword_1EC7E8C08 != -1)
  {
    swift_once();
  }

  sub_1D4ECCCF8(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D4ECCCF8(&qword_1EC7EA398, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D4ECCCF8(&qword_1EC7EA3A0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v136 = v161;
  sub_1D5610DC8();

  v170 = v143;
  v171 = v136;
  __swift_allocate_boxed_opaque_existential_0(v169);
  OUTLINED_FUNCTION_37_8();
  sub_1D4ECCC4C();
  TVSeason.init(propertyProvider:)(v169, v149);
  swift_unknownObjectRelease();
  sub_1D4E765C8(v154, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v151 + 8))(v155, v152);
  (*(v146 + 8))(v150, v147);
  OUTLINED_FUNCTION_36_2();
  sub_1D4ECCBA0(v134, v137);
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4EC7654()
{
  result = qword_1EC7EA360;
  if (!qword_1EC7EA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA360);
  }

  return result;
}

uint64_t sub_1D4EC76A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC40, &unk_1D561C070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void TVSeason.convertToLegacyModelStorageDictionary(for:)()
{
  OUTLINED_FUNCTION_47();
  v81 = v0;
  v83 = type metadata accessor for TVShow(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v80 = v3 - v2;
  OUTLINED_FUNCTION_70_0();
  v79 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v77 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v78 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  sub_1D4ECA864();
  v23 = MEMORY[0x1E69E7CC0];
  v86 = sub_1D5614BD8();
  if (qword_1EC7E8B58 != -1)
  {
    swift_once();
  }

  v24 = qword_1EC87BFB0;
  v25 = sub_1D56140F8();
  sub_1D4ECCCF8(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D4ECCCF8(&qword_1EC7EA3C8, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_32_10(v24, v25);
  if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
  {
    sub_1D4E765C8(v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v84 = 0u;
    v85 = 0u;
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0();
    (*(v26 + 8))(v22, v25);
  }

  v27 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v27, 0);
  if (qword_1EC7E8B70 != -1)
  {
    swift_once();
  }

  v28 = qword_1EC87BFC8;
  v29 = sub_1D560C328();
  OUTLINED_FUNCTION_32_10(v28, v29);
  if (__swift_getEnumTagSinglePayload(v18, 1, v29) == 1)
  {
    sub_1D4E765C8(v18, &qword_1EC7EA3B8, &unk_1D561E370);
    v84 = 0u;
    v85 = 0u;
  }

  else
  {
    *(&v85 + 1) = v29;
    __swift_allocate_boxed_opaque_existential_0(&v84);
    OUTLINED_FUNCTION_24_0();
    (*(v30 + 32))();
  }

  v31 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v31, 1);
  if (qword_1EC7E8B88 != -1)
  {
    swift_once();
  }

  v32 = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_32_10(qword_1EC87BFE0, MEMORY[0x1E69E6530]);
  v33 = v84;
  if (BYTE8(v84))
  {
    v33 = 0;
  }

  *(&v85 + 1) = v32;
  *&v84 = v33;
  v34 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v34, 2);
  if (qword_1EC7E8B60 != -1)
  {
    swift_once();
  }

  v35 = qword_1EC87BFB8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_32_10(v35, v36);
  v37 = v23;
  if (v84)
  {
    v38 = v84;
  }

  else
  {
    v38 = v23;
  }

  if (*(v38 + 16))
  {
    v39 = *(v38 + 80);
    v40 = *(v38 + 88);

    if ((v40 & 1) == 0)
    {
      v41 = v39 < 500;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v41 = 0;
LABEL_25:
  v42 = MEMORY[0x1E69E6370];
  *(&v85 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v84) = v41;
  v43 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v43, 3);
  OUTLINED_FUNCTION_32_10(v35, v36);
  if (v84)
  {
    v44 = v84;
  }

  else
  {
    v44 = v37;
  }

  if (*(v44 + 16))
  {
    v45 = *(v44 + 80);
    v46 = *(v44 + 88);

    if ((v46 & 1) == 0)
    {
      v47 = v45 > 499;
      goto LABEL_33;
    }
  }

  else
  {
  }

  v47 = 0;
LABEL_33:
  *(&v85 + 1) = v42;
  LOBYTE(v84) = v47;
  v48 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v48, 4);
  v49 = v82;
  if (qword_1EC7E8B98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_10(qword_1EC87BFF0, MEMORY[0x1E69E6370]);
  if (v84 == 2)
  {
    v50 = 0;
    v84 = 0uLL;
    *&v85 = 0;
  }

  else
  {
    LOBYTE(v84) = v84 & 1;
    v50 = MEMORY[0x1E69E6370];
  }

  *(&v85 + 1) = v50;
  v51 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v51, 5);
  if (qword_1EC7E8BA0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_10(qword_1EC87BFF8, MEMORY[0x1E69E6370]);
  if (v84 == 2)
  {
    v52 = 0;
    v84 = 0uLL;
    *&v85 = 0;
  }

  else
  {
    LOBYTE(v84) = v84 & 1;
    v52 = MEMORY[0x1E69E6370];
  }

  *(&v85 + 1) = v52;
  v53 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v53, 6);
  if (qword_1EC7E8BA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_10(qword_1EC87C000, v29);
  if (__swift_getEnumTagSinglePayload(v15, 1, v29) == 1)
  {
    sub_1D4E765C8(v15, &qword_1EC7EA3B8, &unk_1D561E370);
    v84 = 0u;
    v85 = 0u;
  }

  else
  {
    *(&v85 + 1) = v29;
    __swift_allocate_boxed_opaque_existential_0(&v84);
    OUTLINED_FUNCTION_24_0();
    (*(v54 + 32))();
  }

  v55 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v55, 7);
  if (qword_1EC7E8BB0 != -1)
  {
    swift_once();
  }

  v56 = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_32_10(qword_1EC87C008, MEMORY[0x1E69E6530]);
  if (BYTE8(v84))
  {
    v57 = 0;
    v56 = 0;
    *(&v84 + 1) = 0;
    *&v85 = 0;
  }

  else
  {
    v57 = v84;
  }

  *&v84 = v57;
  *(&v85 + 1) = v56;
  v58 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v58, 8);
  if (qword_1EC7E8BD8 != -1)
  {
    swift_once();
  }

  v59 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_32_10(qword_1EC87C030, MEMORY[0x1E69E6158]);
  if (*(&v84 + 1))
  {
    v60 = v84;
    v61 = MEMORY[0x1E69E6158];
  }

  else
  {
    v60 = 0;
    v61 = 0;
    *&v85 = 0;
  }

  *&v84 = v60;
  *(&v85 + 1) = v61;
  v62 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v62, 10);
  TVSeason.show.getter();
  if (__swift_getEnumTagSinglePayload(v49, 1, v83) == 1)
  {
    sub_1D4E765C8(v49, &qword_1EC7EA3B0, &unk_1D561C1F0);
    v63 = 0;
  }

  else
  {
    (*(v77 + 16))(v78, v81, v79);
    sub_1D4ECCC4C();
    sub_1D4ECA950();
    v63 = v64;
    OUTLINED_FUNCTION_38_7();
    sub_1D4ECCBA0(v49, v65);
  }

  *(&v85 + 1) = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  if (!v63)
  {
    v66 = TVSeason.showName.getter();
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D8, &qword_1D561C200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x80000001D567CE50;
    *(inited + 72) = v59;
    *(inited + 48) = v66;
    *(inited + 56) = v68;
    v70 = sub_1D5614BD8();
    v71 = [objc_opt_self() emptyIdentifierSet];
    if (qword_1EC7E8B40 != -1)
    {
      swift_once();
    }

    v72 = sub_1D5613158();
    __swift_project_value_buffer(v72, qword_1EC7EE088);
    v73 = sub_1D5159818();
    v74 = objc_allocWithZone(MEMORY[0x1E6977640]);
    v63 = sub_1D4ECA8B8(v71, v73, v70);
  }

  *&v84 = v63;
  v75 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8178(v75, 13);
  OUTLINED_FUNCTION_46();
}

_OWORD *sub_1D4EC8178(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1D4E519A8(a1, v9);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    result = sub_1D4F13310();
    *v2 = v7;
  }

  else
  {
    sub_1D4E765C8(a1, &qword_1EC7E9F98, &qword_1D561C420);
    v4 = sub_1D4F0DF30();
    if (v5)
    {
      v6 = v4;
      swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA690, &qword_1D561C558);
      sub_1D5615D78();
      sub_1D4E519A8((*(v8 + 56) + 32 * v6), v9);
      sub_1D4ECA864();
      sub_1D5615D98();
      *v2 = v8;
    }

    else
    {
      memset(v9, 0, sizeof(v9));
    }

    return sub_1D4E765C8(v9, &qword_1EC7E9F98, &qword_1D561C420);
  }

  return result;
}

uint64_t sub_1D4EC82C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v4;
    v20[2] = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D4F133DC(v20, a2, isUniquelyReferenced_nonNull_native, v6, v7, v8, v9, v10, v18, *v2, *&v20[0], *(&v20[0] + 1));
    *v2 = v19;
    return OUTLINED_FUNCTION_43_9();
  }

  else
  {
    OUTLINED_FUNCTION_29_3();
    sub_1D4E765C8(v12, v13, v14);
    sub_1D55159C0(v20);
    OUTLINED_FUNCTION_43_9();
    OUTLINED_FUNCTION_29_3();
    return sub_1D4E765C8(v15, v16, v17);
  }
}

uint64_t sub_1D4EC8380()
{
  OUTLINED_FUNCTION_69_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_4();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    v8 = OUTLINED_FUNCTION_68_4();
    sub_1D4E765C8(v8, v9, &qword_1D561C510);
    sub_1D5515BE8(v0, v5);
    OUTLINED_FUNCTION_44_3();
    v10 = OUTLINED_FUNCTION_27_1();
    return sub_1D4E765C8(v10, v11, &qword_1D561C510);
  }

  else
  {
    OUTLINED_FUNCTION_68_4();
    sub_1D4ECCBF4();
    swift_isUniquelyReferenced_nonNull_native();
    v13 = OUTLINED_FUNCTION_51_5();
    sub_1D4F13640(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    *v1 = v22;
    return OUTLINED_FUNCTION_44_3();
  }
}

uint64_t sub_1D4EC84C0()
{
  OUTLINED_FUNCTION_69_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5E8, &qword_1D561C4F8);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    v8 = OUTLINED_FUNCTION_68_4();
    sub_1D4E765C8(v8, v9, &qword_1D561C4F8);
    sub_1D5515DE8(v5);
    sub_1D560C0A8();
    OUTLINED_FUNCTION_4_0();
    (*(v10 + 8))(v0);
    v11 = OUTLINED_FUNCTION_27_1();
    return sub_1D4E765C8(v11, v12, &qword_1D561C4F8);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_68_4();
    sub_1D4ECCB30(v14, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = OUTLINED_FUNCTION_51_5();
    sub_1D4F13E2C(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28);
    *v1 = v26;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_4_0();
    return (*(v24 + 8))(v0);
  }
}

uint64_t TVSeason.LegacyModelTVSeasonPropertyKey.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  v6 = 14;
  if (v4 < 0xE)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t TVSeason.LegacyModelTVSeasonPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
    case 0xA:
      result = 0xD000000000000026;
      break;
    case 4:
    case 6:
      result = 0xD000000000000029;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 0xB:
      result = 0xD00000000000001BLL;
      break;
    case 0xC:
      result = 0xD000000000000030;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D4EC9114@<X0>(unint64_t *a1@<X8>)
{
  result = TVSeason.LegacyModelTVSeasonPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TVSeason.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976890];
  sub_1D5613158();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D4EC91AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4ECCCF8(&qword_1EC7EA440, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D4EC9260(uint64_t a1, uint64_t a2)
{
  sub_1D4ECCCF8(&qword_1EC7EA438, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);

  return sub_1D56132F8();
}

double sub_1D4EC92E8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    memcpy(__dst, (a1 + 32), sizeof(__dst));
    memcpy(a2, (a1 + 32), 0x48uLL);
    sub_1D4ECCD40(__dst, &v5);
  }

  else
  {
    *(a2 + 8) = 0;
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D4EC9524@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1D4ECCCA4(a3, a1, a2);
  OUTLINED_FUNCTION_27_1();
  sub_1D5615608();
  OUTLINED_FUNCTION_27_1();
  sub_1D5615648();
  OUTLINED_FUNCTION_11_4();
  if (v10)
  {
    a4(0);
    OUTLINED_FUNCTION_33();
  }

  else
  {
    v11 = sub_1D5615688();
    v13 = v12;
    v14 = (a4)(0);
    OUTLINED_FUNCTION_14();
    v16 = (*(v15 + 16))(a5, v13, v14);
    v24 = OUTLINED_FUNCTION_28_8(v16, v17, v18, v19, v20, v21, v22, v23, v30, v31);
    v11(v24);
    v25 = OUTLINED_FUNCTION_60_0();
    v28 = v14;
  }

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

uint64_t sub_1D4ECA23C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if (v3)
  {
    OUTLINED_FUNCTION_24_0();
    v4 = OUTLINED_FUNCTION_66_2();
    v5(v4);
  }

  v6 = OUTLINED_FUNCTION_61_10();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1D4ECA3F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  a2(0);
  if (v3)
  {
    sub_1D4ECCC4C();
  }

  v4 = OUTLINED_FUNCTION_61_10();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1D4ECA64C(uint64_t a1)
{
  v2 = sub_1D4ECC51C(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_1D4ECC57C(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_1D4ECC768(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_1D4ECC79C(v7, v9, v11 & 1);
  v13 = OUTLINED_FUNCTION_62_6();
  if (v12)
  {
    sub_1D4ECC79C(v13, v14, v15);
    return 0;
  }

  else
  {
    sub_1D4ECC5D0(v13, v14, v15, a1);
    v16 = v17;
    v18 = OUTLINED_FUNCTION_62_6();
    sub_1D4ECC79C(v18, v19, v20);
  }

  return v16;
}

uint64_t sub_1D4ECA77C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  a2(0);
  if (v2)
  {
    OUTLINED_FUNCTION_24_0();
    v3 = OUTLINED_FUNCTION_66_2();
    v4(v3);
  }

  v5 = OUTLINED_FUNCTION_61_10();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

unint64_t sub_1D4ECA864()
{
  result = qword_1EC7EA3C0;
  if (!qword_1EC7EA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA3C0);
  }

  return result;
}

id sub_1D4ECA8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5614BA8();

  v7 = [v3 initWithIdentifierSet:a1 modelObjectType:a2 storageDictionary:v6];
  swift_unknownObjectRelease();

  return v7;
}

void sub_1D4ECA950()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_22_4(v1, v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_4();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_1_19();
  type metadata accessor for TVShow(v7);
  v8 = sub_1D4ECCCF8(&qword_1EC7EA3A0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_19_6(v8);
  v9 = OUTLINED_FUNCTION_6_8();
  v10(v9);
  sub_1D5159818();
  v11 = OUTLINED_FUNCTION_8_6();
  v12(v11);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1D4ECCCF8(v13, v14, v15);
  OUTLINED_FUNCTION_23_10(v16);
  OUTLINED_FUNCTION_38_7();
  sub_1D4ECCBA0(v0, v17);
  OUTLINED_FUNCTION_21_7();
  v18 = OUTLINED_FUNCTION_7_14();
  v19(v18);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v20 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v20, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v21 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4ECAB68()
{
  result = qword_1EC7EA3E0;
  if (!qword_1EC7EA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA3E0);
  }

  return result;
}

unint64_t sub_1D4ECABC4()
{
  result = qword_1EC7EA3E8;
  if (!qword_1EC7EA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA3E8);
  }

  return result;
}

uint64_t _s30LegacyModelTVSeasonPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s30LegacyModelTVSeasonPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4ECADF0()
{
  result = qword_1EC7EA458;
  if (!qword_1EC7EA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA458);
  }

  return result;
}

void sub_1D4ECAE94()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_22_4(v1, v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_4();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_1_19();
  type metadata accessor for SocialProfile(v7);
  v8 = sub_1D4ECCCF8(&qword_1EC7EA600, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_19_6(v8);
  v9 = OUTLINED_FUNCTION_6_8();
  v10(v9);
  sub_1D5159818();
  v11 = OUTLINED_FUNCTION_8_6();
  v12(v11);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1D4ECCCF8(v13, v14, v15);
  OUTLINED_FUNCTION_23_10(v16);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v17 = OUTLINED_FUNCTION_7_14();
  v18(v17);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v19 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v19, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECB128()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_22_4(v1, v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_4();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_1_19();
  type metadata accessor for UploadedVideo(v7);
  v8 = sub_1D4ECCCF8(&qword_1EC7EA590, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  OUTLINED_FUNCTION_19_6(v8);
  v9 = OUTLINED_FUNCTION_6_8();
  v10(v9);
  sub_1D5159818();
  v11 = OUTLINED_FUNCTION_8_6();
  v12(v11);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1D4ECCCF8(v13, v14, v15);
  OUTLINED_FUNCTION_23_10(v16);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v17 = OUTLINED_FUNCTION_7_14();
  v18(v17);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v19 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v19, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECB344()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_22_4(v1, v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_4();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_1_19();
  type metadata accessor for UploadedAudio(v7);
  v8 = sub_1D4ECCCF8(&qword_1EC7EA588, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_19_6(v8);
  v9 = OUTLINED_FUNCTION_6_8();
  v10(v9);
  sub_1D5159818();
  v11 = OUTLINED_FUNCTION_8_6();
  v12(v11);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1D4ECCCF8(v13, v14, v15);
  OUTLINED_FUNCTION_23_10(v16);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v17 = OUTLINED_FUNCTION_7_14();
  v18(v17);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v19 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v19, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECB560()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_22_4(v1, v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_4();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_1_19();
  type metadata accessor for MusicMovie(v7);
  v8 = sub_1D4ECCCF8(&qword_1EC7EA580, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_19_6(v8);
  v9 = OUTLINED_FUNCTION_6_8();
  v10(v9);
  sub_1D5159818();
  v11 = OUTLINED_FUNCTION_8_6();
  v12(v11);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1D4ECCCF8(v13, v14, v15);
  OUTLINED_FUNCTION_23_10(v16);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v17 = OUTLINED_FUNCTION_7_14();
  v18(v17);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v19 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v19, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECB77C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_22_4(v1, v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_4();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_1_19();
  type metadata accessor for TVEpisode(v7);
  v8 = sub_1D4ECCCF8(&qword_1EC7EA578, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  OUTLINED_FUNCTION_19_6(v8);
  v9 = OUTLINED_FUNCTION_6_8();
  v10(v9);
  sub_1D5159818();
  v11 = OUTLINED_FUNCTION_8_6();
  v12(v11);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1D4ECCCF8(v13, v14, v15);
  OUTLINED_FUNCTION_23_10(v16);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v17 = OUTLINED_FUNCTION_7_14();
  v18(v17);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v19 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v19, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECBA10()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_22_4(v1, v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_4();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_1_19();
  type metadata accessor for Playlist.Folder(v7);
  v8 = sub_1D4ECCCF8(&qword_1EC7EA530, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_19_6(v8);
  v9 = OUTLINED_FUNCTION_6_8();
  v10(v9);
  sub_1D5159818();
  v11 = OUTLINED_FUNCTION_8_6();
  v12(v11);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1D4ECCCF8(v13, v14, v15);
  OUTLINED_FUNCTION_23_10(v16);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v17 = OUTLINED_FUNCTION_7_14();
  v18(v17);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v19 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v19, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECBC2C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_22_4(v1, v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_4();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_1_19();
  type metadata accessor for Playlist.Folder.Item(v7);
  v8 = sub_1D4ECCCF8(&qword_1EC7EA528, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  OUTLINED_FUNCTION_19_6(v8);
  v9 = OUTLINED_FUNCTION_6_8();
  v10(v9);
  sub_1D5159818();
  v11 = OUTLINED_FUNCTION_8_6();
  v12(v11);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1D4ECCCF8(v13, v14, v15);
  OUTLINED_FUNCTION_23_10(v16);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v17 = OUTLINED_FUNCTION_7_14();
  v18(v17);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v19 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v19, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECBE48()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_22_4(v1, v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_4();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_1_19();
  type metadata accessor for MusicPin(v7);
  v8 = sub_1D4ECCCF8(&qword_1EC7EA4C0, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  OUTLINED_FUNCTION_19_6(v8);
  v9 = OUTLINED_FUNCTION_6_8();
  v10(v9);
  sub_1D5159818();
  v11 = OUTLINED_FUNCTION_8_6();
  v12(v11);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1D4ECCCF8(v13, v14, v15);
  OUTLINED_FUNCTION_23_10(v16);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v17 = OUTLINED_FUNCTION_7_14();
  v18(v17);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v19 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v19, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECC08C()
{
  OUTLINED_FUNCTION_47();
  v23 = v0;
  v2 = v1;
  v24 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v2(0);
  sub_1D56132E8();
  sub_1D56132C8();
  v16 = sub_1D5159818();
  (*(v11 + 8))(v15, v9);
  sub_1D560EC98();
  OUTLINED_FUNCTION_24_0();
  v17 = OUTLINED_FUNCTION_27_1();
  v18(v17);
  v19 = sub_1D4F42FA4(v16, v23);
  (*(v4 + 8))(v8, v24);
  v20 = objc_allocWithZone(MEMORY[0x1E6977640]);
  v21 = sub_1D5614BA8();

  [v20 initWithIdentifierSet:v19 modelObjectType:v16 storageDictionary:v21];
  swift_unknownObjectRelease();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v22 + 8))(v23);
  OUTLINED_FUNCTION_46();
}

void sub_1D4ECC300()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_22_4(v1, v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_4();
  sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_1_19();
  type metadata accessor for TVSeason(v7);
  v8 = sub_1D4ECCCF8(&qword_1EC7EA480, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_19_6(v8);
  v9 = OUTLINED_FUNCTION_6_8();
  v10(v9);
  sub_1D5159818();
  v11 = OUTLINED_FUNCTION_8_6();
  v12(v11);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1D4ECCCF8(v13, v14, v15);
  OUTLINED_FUNCTION_23_10(v16);
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_21_7();
  v17 = OUTLINED_FUNCTION_7_14();
  v18(v17);
  objc_allocWithZone(MEMORY[0x1E6977640]);
  OUTLINED_FUNCTION_57_7();
  v19 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_20_15(v19, sel_initWithIdentifierSet_modelObjectType_storageDictionary_);
  OUTLINED_FUNCTION_58_2();

  sub_1D56131C8();
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v0);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4ECC51C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1D5615DA8();
  }

  else
  {
    return sub_1D56159F8();
  }
}

uint64_t sub_1D4ECC57C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1D5615DF8();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_1D4ECC5D0(unint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = a2;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1D5615DE8();
      sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == v5)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (sub_1D5615DC8() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1D5615DD8();
  sub_1D4ECC7A8(0, &qword_1EC7EA460, 0x1E69B3470);
  swift_dynamicCast();
  v5 = v11;
  a1 = sub_1D4F0E9E8(v11);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v9 = *(*(a4 + 56) + 8 * a1);

  v10 = v9;
}

BOOL sub_1D4ECC768(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x1DA6EBBA0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_1D4ECC79C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1D4ECC7A8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D4ECC7E8()
{
  result = qword_1EDD56BA0;
  if (!qword_1EDD56BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56BA0);
  }

  return result;
}

unint64_t sub_1D4ECC83C()
{
  result = qword_1EC7EA478;
  if (!qword_1EC7EA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA478);
  }

  return result;
}

unint64_t sub_1D4ECC890()
{
  result = qword_1EC7EA490;
  if (!qword_1EC7EA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA490);
  }

  return result;
}

unint64_t sub_1D4ECC8E4()
{
  result = qword_1EDD5ED08;
  if (!qword_1EDD5ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5ED08);
  }

  return result;
}

unint64_t sub_1D4ECC938()
{
  result = qword_1EC7EA4B8;
  if (!qword_1EC7EA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA4B8);
  }

  return result;
}

unint64_t sub_1D4ECC98C()
{
  result = qword_1EC7EA4D0;
  if (!qword_1EC7EA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA4D0);
  }

  return result;
}

unint64_t sub_1D4ECC9E0()
{
  result = qword_1EDD593A0;
  if (!qword_1EDD593A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD593A0);
  }

  return result;
}

unint64_t sub_1D4ECCA34()
{
  result = qword_1EDD5F180;
  if (!qword_1EDD5F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F180);
  }

  return result;
}

unint64_t sub_1D4ECCA88()
{
  result = qword_1EC7EA5D0;
  if (!qword_1EC7EA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA5D0);
  }

  return result;
}

unint64_t sub_1D4ECCADC()
{
  result = qword_1EC7EA5E0;
  if (!qword_1EC7EA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA5E0);
  }

  return result;
}

uint64_t sub_1D4ECCB30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4ECCBA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4ECCBF4()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D4ECCC4C()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D4ECCCA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D4ECCCF8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

id OUTLINED_FUNCTION_20_15(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_23_10(uint64_t a1)
{

  return sub_1D560EC98();
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_1D5615D98();
}

uint64_t OUTLINED_FUNCTION_57_7()
{

  return sub_1D5614BA8();
}

uint64_t OUTLINED_FUNCTION_67_2(_OWORD *a1, _OWORD *a2)
{
  sub_1D4E519A8(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t type metadata accessor for StorePlatformPlaylistEntry(uint64_t a1)
{
  result = qword_1EC7EA698;
  if (!qword_1EC7EA698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4ECCF20(uint64_t a1)
{
  result = type metadata accessor for StorePlatformMusicMovie(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StorePlatformMusicVideo(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for StorePlatformSong(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for StorePlatformTVEpisode(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for StorePlatformUploadedAudio(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for StorePlatformUploadedVideo(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D4ECCFE8()
{
  result = qword_1EC7EA6A8;
  if (!qword_1EC7EA6A8)
  {
    type metadata accessor for StorePlatformPlaylistEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA6A8);
  }

  return result;
}

uint64_t sub_1D4ECD040(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v76 = a2;
  v2 = type metadata accessor for StorePlatformUploadedVideo(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v74 = v4;
  v5 = OUTLINED_FUNCTION_70_0();
  v6 = type metadata accessor for StorePlatformUploadedAudio(v5);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v73 = v8;
  v9 = OUTLINED_FUNCTION_70_0();
  v10 = type metadata accessor for StorePlatformTVEpisode(v9);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v72 = v12;
  v13 = OUTLINED_FUNCTION_70_0();
  v14 = type metadata accessor for StorePlatformSong(v13);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v71 = v16;
  v17 = OUTLINED_FUNCTION_70_0();
  v18 = type metadata accessor for StorePlatformMusicVideo(v17);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v70 = v20;
  v21 = OUTLINED_FUNCTION_70_0();
  v22 = type metadata accessor for StorePlatformMusicMovie(v21);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = (v25 - v24);
  type metadata accessor for StorePlatformPlaylistEntry(0);
  OUTLINED_FUNCTION_14();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = (&v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = (&v69 - v32);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = (&v69 - v35);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = (&v69 - v38);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = (&v69 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v44 = (&v69 - v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C8, &qword_1D561C648);
  v46 = OUTLINED_FUNCTION_22(v45);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v69 - v48;
  v50 = *(v47 + 56);
  sub_1D4ECE830(v75, &v69 - v48);
  sub_1D4ECE830(v76, &v49[v50]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4ECE830(v49, v42);
      if (OUTLINED_FUNCTION_22_5() == 1)
      {
        OUTLINED_FUNCTION_6_9();
        v62 = v70;
        sub_1D4ECE7D0(&v49[v50], v70, v63);
        v55 = sub_1D5382590(v42, v62);
        v56 = type metadata accessor for StorePlatformMusicVideo;
        sub_1D4ECE8FC(v62, type metadata accessor for StorePlatformMusicVideo);
        v57 = v42;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_11_5();
      v52 = v42;
      goto LABEL_19;
    case 2u:
      sub_1D4ECE830(v49, v39);
      if (OUTLINED_FUNCTION_22_5() == 2)
      {
        OUTLINED_FUNCTION_2_1();
        v58 = v71;
        sub_1D4ECE7D0(&v49[v50], v71, v59);
        v55 = sub_1D50F5698(v39, v58);
        v56 = type metadata accessor for StorePlatformSong;
        sub_1D4ECE8FC(v58, type metadata accessor for StorePlatformSong);
        v57 = v39;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_8_7();
      v52 = v39;
      goto LABEL_19;
    case 3u:
      sub_1D4ECE830(v49, v36);
      if (OUTLINED_FUNCTION_22_5() == 3)
      {
        OUTLINED_FUNCTION_0_13();
        v60 = v72;
        sub_1D4ECE7D0(&v49[v50], v72, v61);
        v55 = sub_1D500B87C(v36, v60);
        v56 = type metadata accessor for StorePlatformTVEpisode;
        sub_1D4ECE8FC(v60, type metadata accessor for StorePlatformTVEpisode);
        v57 = v36;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_13_11();
      v52 = v36;
      goto LABEL_19;
    case 4u:
      sub_1D4ECE830(v49, v33);
      if (OUTLINED_FUNCTION_22_5() == 4)
      {
        OUTLINED_FUNCTION_4_7();
        v53 = v73;
        sub_1D4ECE7D0(&v49[v50], v73, v54);
        v55 = sub_1D50C2744(v33, v53);
        v56 = type metadata accessor for StorePlatformUploadedAudio;
        sub_1D4ECE8FC(v53, type metadata accessor for StorePlatformUploadedAudio);
        v57 = v33;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_10_5();
      v52 = v33;
      goto LABEL_19;
    case 5u:
      sub_1D4ECE830(v49, v30);
      if (OUTLINED_FUNCTION_22_5() == 5)
      {
        OUTLINED_FUNCTION_3_5();
        v64 = v74;
        sub_1D4ECE7D0(&v49[v50], v74, v65);
        v55 = sub_1D52FF750(v30, v64);
        sub_1D4ECE8FC(v64, type metadata accessor for StorePlatformUploadedVideo);
        v57 = v30;
        v66 = type metadata accessor for StorePlatformUploadedVideo;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_9_6();
      v52 = v30;
      goto LABEL_19;
    default:
      sub_1D4ECE830(v49, v44);
      if (OUTLINED_FUNCTION_22_5())
      {
        OUTLINED_FUNCTION_12_11();
        v52 = v44;
LABEL_19:
        sub_1D4ECE8FC(v52, v51);
        sub_1D4ECE894(v49);
        v55 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_1_20();
        sub_1D4ECE7D0(&v49[v50], v26, v67);
        v55 = sub_1D52D8CB8(v44, v26);
        v56 = type metadata accessor for StorePlatformMusicMovie;
        sub_1D4ECE8FC(v26, type metadata accessor for StorePlatformMusicMovie);
        v57 = v44;
LABEL_21:
        v66 = v56;
LABEL_22:
        sub_1D4ECE8FC(v57, v66);
        sub_1D4ECE8FC(v49, type metadata accessor for StorePlatformPlaylistEntry);
      }

      return v55 & 1;
  }
}

uint64_t sub_1D4ECD60C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for StorePlatformUploadedVideo(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = type metadata accessor for StorePlatformUploadedAudio(0);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = type metadata accessor for StorePlatformTVEpisode(0);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = type metadata accessor for StorePlatformSong(0);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v22 = OUTLINED_FUNCTION_18_3();
  v23 = type metadata accessor for StorePlatformMusicVideo(v22);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = type metadata accessor for StorePlatformMusicMovie(0);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  type metadata accessor for StorePlatformPlaylistEntry(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  sub_1D4ECE830(v3, v35 - v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_9();
      sub_1D4ECE7D0(v36, v27, v43);
      MEMORY[0x1DA6EC0D0](1);
      sub_1D5383FB0(a1);
      OUTLINED_FUNCTION_11_5();
      v39 = v27;
      break;
    case 2u:
      OUTLINED_FUNCTION_2_1();
      sub_1D4ECE7D0(v36, v2, v41);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D50F7428(a1);
      OUTLINED_FUNCTION_8_7();
      v39 = v2;
      break;
    case 3u:
      OUTLINED_FUNCTION_0_13();
      sub_1D4ECE7D0(v36, v19, v42);
      MEMORY[0x1DA6EC0D0](3);
      sub_1D500D4CC(a1);
      OUTLINED_FUNCTION_13_11();
      v39 = v19;
      break;
    case 4u:
      OUTLINED_FUNCTION_4_7();
      sub_1D4ECE7D0(v36, v14, v40);
      MEMORY[0x1DA6EC0D0](4);
      sub_1D50C3924(a1);
      OUTLINED_FUNCTION_10_5();
      v39 = v14;
      break;
    case 5u:
      OUTLINED_FUNCTION_3_5();
      sub_1D4ECE7D0(v36, v9, v44);
      MEMORY[0x1DA6EC0D0](5);
      sub_1D5300AC4(a1);
      OUTLINED_FUNCTION_9_6();
      v39 = v9;
      break;
    default:
      OUTLINED_FUNCTION_1_20();
      sub_1D4ECE7D0(v36, v32, v37);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D52DA7D8(a1);
      OUTLINED_FUNCTION_12_11();
      v39 = v32;
      break;
  }

  return sub_1D4ECE8FC(v39, v38);
}

uint64_t sub_1D4ECD934()
{
  sub_1D56162D8();
  sub_1D4ECD60C(v1);
  return sub_1D5616328();
}

uint64_t sub_1D4ECD974(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D4ECD9EC()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t sub_1D4ECDA58(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4ECD60C(v2);
  return sub_1D5616328();
}

uint64_t sub_1D4ECDA9C(uint64_t a1)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t sub_1D4ECDAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4ECD974(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D4ECDB28@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_53_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D4ECDB54(uint64_t a1)
{
  v2 = sub_1D4ECE77C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4ECDB90(uint64_t a1)
{
  v2 = sub_1D4ECE77C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4ECDBCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5615C08();
  OUTLINED_FUNCTION_4();
  v88 = v4;
  v89 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v87 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v7 = type metadata accessor for StorePlatformUploadedVideo(v6);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v90 = v9;
  v10 = OUTLINED_FUNCTION_70_0();
  v11 = type metadata accessor for StorePlatformUploadedAudio(v10);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v91 = v13;
  v14 = OUTLINED_FUNCTION_70_0();
  v15 = type metadata accessor for StorePlatformTVEpisode(v14);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v92 = v17;
  v18 = OUTLINED_FUNCTION_70_0();
  v19 = type metadata accessor for StorePlatformSong(v18);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v93 = v21;
  v22 = OUTLINED_FUNCTION_70_0();
  v23 = type metadata accessor for StorePlatformMusicVideo(v22);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v94 = v25;
  v26 = OUTLINED_FUNCTION_70_0();
  v27 = type metadata accessor for StorePlatformMusicMovie(v26);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6B0, &qword_1D561C638);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v33);
  v34 = OUTLINED_FUNCTION_18_3();
  v35 = type metadata accessor for StorePlatformPlaylistEntry(v34);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4ECE77C();
  sub_1D5616398();
  if (!v97)
  {
    v97 = v35;
    v38 = a2;
    v39 = v32;
    v42 = sub_1D5615F98();
    v43 = v42 == 0x6569766F6DLL && v41 == 0xE500000000000000;
    if (v43 || (v86 = v42, v44 = v41, (OUTLINED_FUNCTION_25_18(0x6569766F6DLL, 0xE500000000000000, v42) & 1) != 0))
    {

      OUTLINED_FUNCTION_19_7();
      sub_1D52D76B0(v96, v31);
      v45 = OUTLINED_FUNCTION_17_1();
      v46(v45);
      OUTLINED_FUNCTION_1_20();
      OUTLINED_FUNCTION_21_8(v47, v48, v49);
      goto LABEL_8;
    }

    if (v86 == 0x646956636973756DLL && v44 == 0xEA00000000006F65)
    {
    }

    else
    {
      if ((OUTLINED_FUNCTION_25_18(0x646956636973756DLL, 0xEA00000000006F65, v86) & 1) == 0)
      {
        v57 = v86 == 1735290739 && v44 == 0xE400000000000000;
        if (v57 || (OUTLINED_FUNCTION_25_18(1735290739, 0xE400000000000000, v86) & 1) != 0)
        {

          OUTLINED_FUNCTION_19_7();
          sub_1D50F3F80(v96, v93);
          v58 = OUTLINED_FUNCTION_17_1();
          v59(v58);
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_21_8(v60, v61, v62);
        }

        else
        {
          v63 = v86 == 0x646F736970457674 && v44 == 0xE900000000000065;
          if (v63 || (OUTLINED_FUNCTION_25_18(0x646F736970457674, 0xE900000000000065, v86) & 1) != 0)
          {

            OUTLINED_FUNCTION_19_7();
            v39 = v92;
            sub_1D500A274(v96, v92);
            v64 = OUTLINED_FUNCTION_24_12();
            v65(v64);
            OUTLINED_FUNCTION_0_13();
            OUTLINED_FUNCTION_20_16(v66, v67, v68);
          }

          else
          {
            v69 = v86 == 0x646564616F6C7075 && v44 == 0xED00006F69647541;
            if (!v69 && (sub_1D5616168() & 1) == 0)
            {
              v75 = v86 == 0x646564616F6C7075 && v44 == 0xED00006F65646956;
              if (!v75 && (sub_1D5616168() & 1) == 0)
              {
                __swift_project_boxed_opaque_existential_1(v37, v37[3]);
                sub_1D5616348();
                v96[0] = 0;
                v96[1] = 0xE000000000000000;
                sub_1D5615B68();
                MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D567E3C0);
                MEMORY[0x1DA6EAC70](v86, v44);

                MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D567E3E0);
                sub_1D5615BF8();
                v81 = sub_1D5615C18();
                swift_allocError();
                v83 = v82;
                v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
                *v83 = v97;
                (*(v88 + 16))(v83 + v84, v87, v89);
                (*(*(v81 - 8) + 104))(v83, *MEMORY[0x1E69E6AF8], v81);
                swift_willThrow();
                (*(v88 + 8))(v87, v89);
                v85 = OUTLINED_FUNCTION_24_12();
                v40(v85);
                return __swift_destroy_boxed_opaque_existential_1(v37);
              }

              OUTLINED_FUNCTION_19_7();
              v39 = v90;
              sub_1D52FE818(v96, v90);
              v76 = OUTLINED_FUNCTION_24_12();
              v77(v76);
              OUTLINED_FUNCTION_3_5();
              OUTLINED_FUNCTION_20_16(v78, v79, v80);
              goto LABEL_8;
            }

            OUTLINED_FUNCTION_19_7();
            v39 = v91;
            sub_1D50C18F8(v96, v91);
            v70 = OUTLINED_FUNCTION_24_12();
            v71(v70);
            OUTLINED_FUNCTION_4_7();
            OUTLINED_FUNCTION_20_16(v72, v73, v74);
          }
        }

        v38 = a2;
LABEL_8:
        swift_storeEnumTagMultiPayload();
        sub_1D4ECE7D0(v39, v38, type metadata accessor for StorePlatformPlaylistEntry);
        return __swift_destroy_boxed_opaque_existential_1(v37);
      }

      v38 = a2;
    }

    OUTLINED_FUNCTION_19_7();
    sub_1D53810C4(v96, v94);
    v51 = OUTLINED_FUNCTION_17_1();
    v52(v51);
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_21_8(v54, v55, v56);
    goto LABEL_8;
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D4ECE418(void *a1)
{
  v3 = type metadata accessor for StorePlatformUploadedVideo(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = type metadata accessor for StorePlatformUploadedAudio(0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v10 = OUTLINED_FUNCTION_18_3();
  v11 = type metadata accessor for StorePlatformTVEpisode(v10);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = type metadata accessor for StorePlatformSong(0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = type metadata accessor for StorePlatformMusicVideo(0);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v26 = type metadata accessor for StorePlatformMusicMovie(0);
  v27 = OUTLINED_FUNCTION_22(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  type metadata accessor for StorePlatformPlaylistEntry(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  sub_1D4ECE830(v1, v33 - v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_9();
      sub_1D4ECE7D0(v34, v25, v41);
      sub_1D5381FAC(a1);
      OUTLINED_FUNCTION_11_5();
      v37 = v25;
      break;
    case 2u:
      OUTLINED_FUNCTION_2_1();
      sub_1D4ECE7D0(v34, v20, v39);
      sub_1D50F4FDC(a1);
      OUTLINED_FUNCTION_8_7();
      v37 = v20;
      break;
    case 3u:
      OUTLINED_FUNCTION_0_13();
      sub_1D4ECE7D0(v34, v15, v40);
      sub_1D500B1E8(a1);
      OUTLINED_FUNCTION_13_11();
      v37 = v15;
      break;
    case 4u:
      OUTLINED_FUNCTION_4_7();
      sub_1D4ECE7D0(v34, v2, v38);
      sub_1D50C22B0(a1);
      OUTLINED_FUNCTION_10_5();
      v37 = v2;
      break;
    case 5u:
      OUTLINED_FUNCTION_3_5();
      sub_1D4ECE7D0(v34, v7, v42);
      sub_1D52FF2D0(a1);
      OUTLINED_FUNCTION_9_6();
      v37 = v7;
      break;
    default:
      OUTLINED_FUNCTION_1_20();
      sub_1D4ECE7D0(v34, v30, v35);
      sub_1D52D8644(a1);
      OUTLINED_FUNCTION_12_11();
      v37 = v30;
      break;
  }

  return sub_1D4ECE8FC(v37, v36);
}

unint64_t sub_1D4ECE77C()
{
  result = qword_1EC7EA6B8;
  if (!qword_1EC7EA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA6B8);
  }

  return result;
}

uint64_t sub_1D4ECE7D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D4ECE830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformPlaylistEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4ECE894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C8, &qword_1D561C648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4ECE8FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformPlaylistEntry.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D4ECEA04()
{
  result = qword_1EC7EA6D0;
  if (!qword_1EC7EA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA6D0);
  }

  return result;
}

unint64_t sub_1D4ECEA5C()
{
  result = qword_1EC7EA6D8;
  if (!qword_1EC7EA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA6D8);
  }

  return result;
}

unint64_t sub_1D4ECEAB4()
{
  result = qword_1EC7EA6E0;
  if (!qword_1EC7EA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA6E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_16(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 208);

  return sub_1D4ECE7D0(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_25_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5616168();
}

uint64_t sub_1D4ECEBCC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D4ECEC14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D561C770;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6F0, &qword_1D561C880);
  swift_allocObject();
  OUTLINED_FUNCTION_0_6();

  sub_1D5374100(KeyPath | 0x8000000000000000);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 32) = v0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6F8, &unk_1D561C8B0);
  swift_allocObject();
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864();
}

uint64_t sub_1D4ECECFC()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 40) = v1;
  qword_1EDD767C0 = v0;
  return result;
}

void *sub_1D4ECED20@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D4ECED88()
{
  v0 = sub_1D5613348();
  sub_1D560E4E8();
  return v0(&v2, 0);
}

uint64_t sub_1D4ECEDE8()
{
  v0 = sub_1D5613D38();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D561C770;
  swift_getKeyPath();
  v8 = *MEMORY[0x1E6976E88];
  v14 = v1[13];
  v14(v6, v8, v0);
  v13 = v1[2];
  v13(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6E8, &qword_1D561C830);
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_1_21();
  v10 = v1[1];
  v10(v6, v0);
  *(v7 + 32) = v9;
  swift_getKeyPath();
  v14(v6, *MEMORY[0x1E6976E90], v0);
  v13(v4, v6, v0);
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_1_21();
  result = (v10)(v6, v0);
  *(v7 + 40) = v11;
  qword_1EC87BE48 = v7;
  return result;
}

uint64_t sub_1D4ECF024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1D4ECF084(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

id sub_1D4ECF0DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6977600]) initWithVariants:3 options:2];
  v1 = [objc_allocWithZone(MEMORY[0x1E6977608]) initWithAlbumKind_];

  return v1;
}

uint64_t sub_1D4ECF18C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4ECF1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = swift_task_alloc();
  *(v13 + 16) = v14;
  *v14 = v13;
  v14[1] = sub_1D4ECF4E0;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)();
}

uint64_t sub_1D4ECF2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_task_alloc();
  *(v10 + 16) = v17;
  *v17 = v10;
  v17[1] = sub_1D4ECF3E8;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(a1, a2, a3, a4, a5, a6, a9, a7);
}

uint64_t sub_1D4ECF3E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Playlist.Entry.InternalItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v172 = a4;
  v174 = a3;
  v176 = a1;
  v7 = type metadata accessor for TVEpisode(0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = type metadata accessor for MusicMovie(0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v158 = sub_1D5613D28();
  OUTLINED_FUNCTION_4();
  v160 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v161 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v159 = &v150 - v21;
  OUTLINED_FUNCTION_70_0();
  v167 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v157 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v156 = v25 - v24;
  v26 = OUTLINED_FUNCTION_70_0();
  v27 = type metadata accessor for UploadedAudio(v26);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v155 = v30 - v29;
  v31 = OUTLINED_FUNCTION_70_0();
  v32 = type metadata accessor for UploadedVideo(v31);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v154 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v150 - v38;
  v168 = sub_1D560E728();
  OUTLINED_FUNCTION_4();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v175 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v171 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13();
  v162 = v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v46);
  v166 = &v150 - v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v48);
  v170 = &v150 - v49;
  OUTLINED_FUNCTION_70_0();
  v169 = sub_1D5613598();
  OUTLINED_FUNCTION_4();
  v165 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13();
  v163 = v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v53);
  v164 = &v150 - v54;
  sub_1D560F7E8();
  sub_1D4ED048C();
  v55 = sub_1D5614C68();
  v56 = sub_1D4ED04E0(v55);
  if (v57)
  {
    v58 = 1;
  }

  else
  {
    v58 = v56;
  }

  v173 = a2;
  if (!sub_1D560F7B8())
  {
    goto LABEL_39;
  }

  if (v58 == 9)
  {

    if (qword_1EDD53D48 != -1)
    {
      v71 = swift_once();
    }

    OUTLINED_FUNCTION_18_4(v71, qword_1EDD53D50);
    sub_1D560D588();
    sub_1D560D4F8();
    v72 = v170;
    OUTLINED_FUNCTION_5_9();
    sub_1D4E50004(v39, &unk_1EC7EBF30, &qword_1D561C8C0);
    v73 = OUTLINED_FUNCTION_6_10();
    v74(v73);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_29_5();
    v75();
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_15_11();
    MusicMovie.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
    swift_unknownObjectRelease();
    sub_1D4E50004(9, &qword_1EC7EEC40, &unk_1D561C070);
    v76 = OUTLINED_FUNCTION_14_6();
    MEMORY[8](v76);
    MEMORY[8](v72, v55);
    OUTLINED_FUNCTION_7_1();
    sub_1D4ED1434(v16, a5, v77);
    goto LABEL_36;
  }

  if (v58 == 6)
  {

    if (qword_1EDD53C38 != -1)
    {
      v59 = swift_once();
    }

    OUTLINED_FUNCTION_18_4(v59, qword_1EDD53C40);
    sub_1D560D588();
    sub_1D560D4F8();
    v60 = v170;
    OUTLINED_FUNCTION_5_9();
    sub_1D4E50004(v39, &unk_1EC7EBF30, &qword_1D561C8C0);
    v61 = OUTLINED_FUNCTION_6_10();
    v62(v61);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_29_5();
    v63();
    OUTLINED_FUNCTION_16_10();
    v64 = OUTLINED_FUNCTION_15_11();
    TVEpisode.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v64, v65, v66, v67, v68);
    swift_unknownObjectRelease();
    sub_1D4E50004(6, &qword_1EC7EEC40, &unk_1D561C070);
    v69 = OUTLINED_FUNCTION_14_6();
    MEMORY[6](v69);
    MEMORY[6](v60, v55);
    OUTLINED_FUNCTION_9_7();
    sub_1D4ED1434(v11, a5, v70);
    goto LABEL_36;
  }

  v152 = v41;
  v151 = a5;
  if (v58 != 1)
  {
    v177 = 0;
    v178 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000039, 0x80000001D567E4D0);
    v180 = v58;
    type metadata accessor for MusicKit_SoftLinking_MPModelGenericObjectType();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    goto LABEL_39;
  }

  v78 = sub_1D560F7E8();
  v79 = *(v165 + 104);
  v79(v164, *MEMORY[0x1E6976AB0], v169);
  v80 = sub_1D5613588();
  v153 = v78;
  sub_1D4E494C8(v80, v81, v78);

  if (v179)
  {
    if (OUTLINED_FUNCTION_32_11(v82, v83, v84, MEMORY[0x1E69E6370]))
    {
      v85 = v180;
      goto LABEL_19;
    }
  }

  else
  {
    sub_1D4E50004(&v177, &qword_1EC7E9F98, &qword_1D561C420);
  }

  v85 = 0;
LABEL_19:
  v79(v163, *MEMORY[0x1E6976B00], v169);
  v86 = sub_1D5613588();
  sub_1D4E494C8(v86, v87, v153);

  if (!v179)
  {
    sub_1D4E50004(&v177, &qword_1EC7E9F98, &qword_1D561C420);
    v92 = v162;
LABEL_27:
    if (v85)
    {
      OUTLINED_FUNCTION_33_10();

LABEL_29:
      if (qword_1EC7E8F18 != -1)
      {
        v93 = swift_once();
      }

      OUTLINED_FUNCTION_18_4(v93, qword_1EC7F08A0);
      sub_1D560D588();
      sub_1D560D4F8();
      v109 = v170;
      OUTLINED_FUNCTION_5_9();
      sub_1D4E50004(v39, &unk_1EC7EBF30, &qword_1D561C8C0);
      v110 = OUTLINED_FUNCTION_6_10();
      v111(v110);
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_29_5();
      v112();
      OUTLINED_FUNCTION_16_10();
      v113 = OUTLINED_FUNCTION_15_11();
      UploadedAudio.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v113, v114, v115, v116);
      swift_unknownObjectRelease();
      sub_1D4E50004(v85, &qword_1EC7EEC40, &unk_1D561C070);
      v117 = OUTLINED_FUNCTION_14_6();
      (v85)(v117);
      (v85)(v109, v55);
      v118 = OUTLINED_FUNCTION_3_6();
      (v85)(v118);
      v119 = OUTLINED_FUNCTION_26_3();
      (v85)(v119);
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_30_2(v120, v121, v122);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v91 = OUTLINED_FUNCTION_32_11(v88, v89, v90, MEMORY[0x1E69E6370]);
  v92 = v162;
  if (!v91)
  {
    goto LABEL_27;
  }

  if (v85)
  {
    v85 = v180;
    OUTLINED_FUNCTION_33_10();

    if (v85)
    {
      if (qword_1EDD53CE8 != -1)
      {
        v93 = swift_once();
      }

      OUTLINED_FUNCTION_18_4(v93, qword_1EDD53CF0);
      sub_1D560D588();
      sub_1D560D4F8();
      v94 = v170;
      OUTLINED_FUNCTION_5_9();
      sub_1D4E50004(v39, &unk_1EC7EBF30, &qword_1D561C8C0);
      v95 = OUTLINED_FUNCTION_6_10();
      v96(v95);
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_29_5();
      v97();
      OUTLINED_FUNCTION_16_10();
      v98 = OUTLINED_FUNCTION_15_11();
      UploadedVideo.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v98, v99, v100, v101, v102);
      swift_unknownObjectRelease();
      sub_1D4E50004(v85, &qword_1EC7EEC40, &unk_1D561C070);
      v103 = OUTLINED_FUNCTION_14_6();
      (v85)(v103);
      (v85)(v94, v55);
      v104 = OUTLINED_FUNCTION_3_6();
      (v85)(v104);
      v105 = OUTLINED_FUNCTION_26_3();
      (v85)(v105);
      OUTLINED_FUNCTION_10_6();
      OUTLINED_FUNCTION_30_2(v106, v107, v108);
      goto LABEL_36;
    }

    goto LABEL_29;
  }

LABEL_32:
  v123 = v156;
  sub_1D560D928();
  sub_1D560D588();
  sub_1D560D4F8();
  OUTLINED_FUNCTION_5_9();
  sub_1D4E50004(v39, &unk_1EC7EBF30, &qword_1D561C8C0);
  v124 = OUTLINED_FUNCTION_6_10();
  v125(v124);
  (*(v157 + 8))(v123, v167);
  v126 = v171;
  (*(v171 + 16))(v170, v92, v175);
  OUTLINED_FUNCTION_16_10();
  swift_unknownObjectRetain();

  v127 = v159;
  sub_1D5613C88();
  v128 = v160;
  v129 = v161;
  v130 = v158;
  (*(v160 + 16))(v161, v127, v158);
  v131 = (*(v128 + 88))(v129, v130);
  if (v131 == *MEMORY[0x1E6976E18])
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_33_10();

    sub_1D4E50004(v123, &qword_1EC7EEC40, &unk_1D561C070);
    v132 = *(v126 + 8);
    v133 = v175;
    v132(v176, v175);
    (*(v128 + 8))(v127, v130);
    v132(v162, v133);
    v134 = OUTLINED_FUNCTION_3_6();
    (v132)(v134);
    v135 = OUTLINED_FUNCTION_26_3();
    (v132)(v135);
    v136 = v161;
    (*(v128 + 96))(v161, v130);
    sub_1D5613838();
    OUTLINED_FUNCTION_14();
    (*(v137 + 32))(v151, v136);
  }

  else
  {
    v138 = v175;
    v139 = v176;
    v140 = v130;
    v141 = v151;
    if (v131 != *MEMORY[0x1E6976DF8])
    {
      while (1)
      {
        v177 = 0;
        v178 = 0xE000000000000000;
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD000000000000048, 0x80000001D567E510);
        sub_1D4ED1740(&qword_1EC7EA708, MEMORY[0x1E6976E60], MEMORY[0x1E6976E80]);
        v149 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v149);

        MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
LABEL_39:
        sub_1D5615E08();
        __break(1u);
      }
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_33_10();

    sub_1D4E50004(v123, &qword_1EC7EEC40, &unk_1D561C070);
    v142 = *(v126 + 8);
    v142(v139, v138);
    v143 = v160;
    (*(v160 + 8))(v159, v140);
    v142(v162, v138);
    v144 = OUTLINED_FUNCTION_3_6();
    (v142)(v144);
    v145 = OUTLINED_FUNCTION_26_3();
    (v142)(v145);
    v146 = v161;
    (*(v143 + 96))(v161, v140);
    sub_1D560EEA8();
    OUTLINED_FUNCTION_14();
    (*(v147 + 32))(v141, v146);
  }

LABEL_36:
  type metadata accessor for Playlist.Entry.InternalItem(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1D4ED048C()
{
  result = qword_1EC7EA700;
  if (!qword_1EC7EA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA700);
  }

  return result;
}

id sub_1D4ED04E0(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1D4F15A70(), (v3 & 1) != 0) && (sub_1D4E5194C(*(a1 + 56) + 32 * v2, v6), (swift_dynamicCast() & 1) != 0))
  {
    return [objc_opt_self() typeForRawValue_];
  }

  else
  {
    return 0;
  }
}

double sub_1D4ED05AC()
{
  OUTLINED_FUNCTION_20_17();
  if (v2 && (v3 = v1, v4 = sub_1D4F0DF68(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 48 * v4;

    sub_1D4ED16E4(v6, v0);
  }

  else
  {
    result = 0.0;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
  }

  return result;
}

uint64_t sub_1D4ED0614()
{
  OUTLINED_FUNCTION_20_17();
  if (v1 && (sub_1D4F0DDB4(v0), (v2 & 1) != 0))
  {
    type metadata accessor for GenericMusicItem(0);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_26_2();
    sub_1D4ED1788(v3, v4, v5);
    v6 = OUTLINED_FUNCTION_27_2();
  }

  else
  {
    type metadata accessor for GenericMusicItem(0);
    v6 = OUTLINED_FUNCTION_25_9();
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1D4ED06DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a3 + 16) && (v10 = sub_1D4E4EFA0(a1, a2), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(a3 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_14();
    (*(v15 + 16))(a6, v13 + *(v15 + 72) * v12, v14);
    v16 = OUTLINED_FUNCTION_27_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v16 = OUTLINED_FUNCTION_25_9();
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t sub_1D4ED0798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1D4E4EFA0(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v3);
}

uint64_t sub_1D4ED07FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = a4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v4);
}

uint64_t sub_1D4ED087C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D4F0E41C(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v2);
}

uint64_t sub_1D4ED08E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1D4F15A78();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v3);
}

uint64_t sub_1D4ED092C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 4;
  }

  v3 = sub_1D4F0DDE0(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 4;
  }
}

double sub_1D4ED0978()
{
  OUTLINED_FUNCTION_20_17();
  if (!v1)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v2 = sub_1D4F0E758(v0);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v4 = OUTLINED_FUNCTION_12_12(v2);

  sub_1D4E5194C(v4, v5);
  return result;
}

double sub_1D4ED09E4()
{
  OUTLINED_FUNCTION_20_17();
  if (!v1)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v2 = v0();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v4 = OUTLINED_FUNCTION_12_12(v2);

  sub_1D4E5194C(v4, v5);
  return result;
}

double sub_1D4ED0A54()
{
  OUTLINED_FUNCTION_20_17();
  if (!v1)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v2 = v0();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v4 = OUTLINED_FUNCTION_12_12(v2);

  sub_1D4E5194C(v4, v5);
  return result;
}

uint64_t sub_1D4ED0AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v3);
}

uint64_t sub_1D4ED0B14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_1D4F0E41C(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_31_9(v2);
    }
  }

  return OUTLINED_FUNCTION_71();
}

uint64_t sub_1D4ED0B58(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D4F0E020();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_8(v2);
}

uint64_t Playlist.Entry.InternalItem.convertToRawDictionary(for:)(uint64_t a1)
{
  type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v61 = v3 - v2;
  v4 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for UploadedAudio(v4);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v60 = v7 - v6;
  v8 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for TVEpisode(v8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  type metadata accessor for MusicMovie(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v59 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  OUTLINED_FUNCTION_11_6();
  sub_1D4ED1788(v62, v33, v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v59 + 32))(v22, v33, v17);
      sub_1D4ED1740(&qword_1EC7EA728, MEMORY[0x1E69754E8], MEMORY[0x1E69754D8]);
      v39 = sub_1D56132F8();
      (*(v59 + 8))(v22, v17);
      return v39;
    case 2u:
      (*(v25 + 32))(v29, v33, v23);
      sub_1D4ED1740(&qword_1EC7EA730, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BD8]);
      v39 = sub_1D56132F8();
      (*(v25 + 8))(v29, v23);
      return v39;
    case 3u:
      OUTLINED_FUNCTION_9_7();
      sub_1D4ED1434(v33, v12, v49);
      sub_1D4ED1740(&qword_1EC7EA720, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_26_2();
      sub_1D4ED1740(v50, v51, v52);
      v39 = sub_1D56132F8();
      v40 = type metadata accessor for TVEpisode;
      v41 = v12;
      break;
    case 4u:
      OUTLINED_FUNCTION_8_8();
      v42 = v33;
      v43 = v60;
      sub_1D4ED1434(v42, v60, v44);
      sub_1D4ED1740(&qword_1EC7EA718, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_26_2();
      sub_1D4ED1740(v45, v46, v47);
      v39 = sub_1D56132F8();
      v48 = type metadata accessor for UploadedAudio;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_10_6();
      v53 = v33;
      v43 = v61;
      sub_1D4ED1434(v53, v61, v54);
      sub_1D4ED1740(&qword_1EC7EA710, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_26_2();
      sub_1D4ED1740(v55, v56, v57);
      v39 = sub_1D56132F8();
      v48 = type metadata accessor for UploadedVideo;
LABEL_8:
      v40 = v48;
      v41 = v43;
      break;
    default:
      OUTLINED_FUNCTION_7_1();
      sub_1D4ED1434(v33, v16, v35);
      sub_1D4ED1740(&qword_1EDD592F8, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_26_2();
      sub_1D4ED1740(v36, v37, v38);
      v39 = sub_1D56132F8();
      v40 = type metadata accessor for MusicMovie;
      v41 = v16;
      break;
  }

  sub_1D4ED1490(v41, v40);
  return v39;
}

uint64_t Playlist.Entry.InternalItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_11_6();
  sub_1D4ED1788(v1, v6, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D5613158();
  OUTLINED_FUNCTION_14();
  (*(v9 + 104))(a1, **(&unk_1E84C4560 + EnumCaseMultiPayload));
  return sub_1D4ED1490(v6, type metadata accessor for Playlist.Entry.InternalItem);
}

BOOL sub_1D4ED12B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5615EF8();

  return v2 != 0;
}

BOOL sub_1D4ED1328@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D4ED12B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D4ED135C@<X0>(void *a1@<X8>)
{
  result = sub_1D4ED12FC();
  *a1 = 0xD000000000000028;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4ED1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4ED1740(&qword_1EC7EA750, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D4ED1434(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D4ED1490(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *_s47LegacyModelPlaylistEntryInternalItemPropertyKeyOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D4ED15E0()
{
  result = qword_1EC7EA738;
  if (!qword_1EC7EA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA738);
  }

  return result;
}

unint64_t sub_1D4ED1638()
{
  result = qword_1EC7EA740;
  if (!qword_1EC7EA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA740);
  }

  return result;
}

unint64_t sub_1D4ED1690()
{
  result = qword_1EC7EA748;
  if (!qword_1EC7EA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA748);
  }

  return result;
}

uint64_t sub_1D4ED1740(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4ED1788(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_33_10()
{
}

void sub_1D4ED182C()
{
  OUTLINED_FUNCTION_47();
  v167 = v0;
  v157 = v1;
  v174 = v2;
  v172 = v3;
  v5 = v4;
  v160 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v159 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v164 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v175 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v166 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v168 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v161 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v178 = &v147 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E8, &qword_1D561CAD8);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  v181 = &v147 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  v180 = &v147 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EA7F8, &unk_1D56311B0);
  v36 = OUTLINED_FUNCTION_22(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v147 - v38;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4();
  v156 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  v171 = &v147 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA808, &unk_1D56311C0);
  v177 = v44;
  OUTLINED_FUNCTION_4();
  v163 = v45;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v147 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v162 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  v176 = &v147 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA818, &qword_1D561CAE0);
  OUTLINED_FUNCTION_4();
  v165 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v147 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v173 = v49;
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  v155 = v61;
  v158 = v5;
  sub_1D5612378();
  v170 = v39;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v55);
  OUTLINED_FUNCTION_33();
  v179 = v50;
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v50);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v44);
  OUTLINED_FUNCTION_33();
  v71 = v154;
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v154);
  v169 = v60;
  if (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8())
  {
    v75 = v170;
    sub_1D4E7661C(v170, &off_1EC7EA7F8, &unk_1D56311B0);
    (*(v165 + 16))(v75, v169, v55);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v55);
  }

  else
  {
    v76 = v151;
    sub_1D5612348();
    v77 = v76;
    v75 = v170;
    sub_1D4ED39C0(v77, v170, &off_1EC7EA7F8, &unk_1D56311B0);
    v78 = v152;
    sub_1D5612348();
    sub_1D4ED39C0(v78, v180, &qword_1EC7EA7F0, &unk_1D561E8C0);
    v79 = v153;
    sub_1D5612348();
    sub_1D4ED39C0(v79, v181, &qword_1EC7EA7E8, &qword_1D561CAD8);
    v80 = v161;
    sub_1D5612348();
    sub_1D4ED39C0(v80, v178, &qword_1EC7EA7E0, &unk_1D5623AB0);
  }

  v81 = 1;
  v161 = v55;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v55);
  v83 = v164;
  v84 = v157;
  v85 = v168;
  if (!EnumTagSinglePayload)
  {
    v86 = v165;
    v87 = v147;
    v88 = v161;
    (*(v165 + 16))(v147, v75, v161);
    sub_1D560CD98();
    v89 = v166;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    sub_1D56141F8();
    OUTLINED_FUNCTION_6_11();
    sub_1D4ED3808(v94, v95, MEMORY[0x1E6977028]);
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_19_9();
    sub_1D5612368();
    sub_1D4E7661C(v89, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v86 + 8))(v87, v88);
    v81 = 0;
  }

  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  __swift_storeEnumTagSinglePayload(v85, v81, 1, v96);
  if (!__swift_getEnumTagSinglePayload(v180, 1, v179))
  {
    v97 = v162;
    v98 = v148;
    v99 = v179;
    (*(v162 + 16))(v148, v180, v179);
    sub_1D560CD98();
    v100 = v166;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
    sub_1D5613C48();
    OUTLINED_FUNCTION_9_8();
    sub_1D4ED3808(v105, v106, MEMORY[0x1E6976DB0]);
    OUTLINED_FUNCTION_16_11();
    OUTLINED_FUNCTION_19_9();
    sub_1D5612368();
    sub_1D4E7661C(v100, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v107 = v98;
    v85 = v168;
    (*(v97 + 8))(v107, v99);
  }

  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v109 = 1;
  OUTLINED_FUNCTION_24_8(v175, v110, v111, v108);
  v112 = __swift_getEnumTagSinglePayload(v181, 1, v177);
  v113 = v178;
  if (!v112)
  {
    v114 = v163;
    v115 = v149;
    v116 = v177;
    (*(v163 + 16))(v149, v181, v177);
    sub_1D560CD98();
    v117 = v166;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
    sub_1D5614B68();
    OUTLINED_FUNCTION_7_15();
    sub_1D4ED3808(v122, v123, MEMORY[0x1E6977530]);
    OUTLINED_FUNCTION_16_11();
    sub_1D5612368();
    sub_1D4E7661C(v117, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v124 = v116;
    v113 = v178;
    (*(v114 + 8))(v115, v124);
    v109 = 0;
  }

  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  __swift_storeEnumTagSinglePayload(v83, v109, 1, v125);
  if (__swift_getEnumTagSinglePayload(v113, 1, v71))
  {

    OUTLINED_FUNCTION_24_0();
    (*(v126 + 8))(v172, v84);
    OUTLINED_FUNCTION_24_0();
    (*(v127 + 8))(v158);
    (*(v156 + 8))(v171, v71);
    v128 = v159;
  }

  else
  {
    v129 = v156;
    (*(v156 + 16))();
    sub_1D560CD98();
    v130 = v71;
    v131 = v166;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
    type metadata accessor for SocialProfile(0);
    sub_1D4ED3808(&qword_1EDD57510, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    OUTLINED_FUNCTION_10_1();
    sub_1D4ED3808(v136, type metadata accessor for SocialProfile, v137);
    v151 = v167;
    v128 = v159;
    v138 = v172;
    v113 = v178;
    sub_1D5612368();

    OUTLINED_FUNCTION_24_0();
    v85 = v168;
    (*(v139 + 8))(v138, v84);
    OUTLINED_FUNCTION_24_0();
    (*(v140 + 8))(v158);
    sub_1D4E7661C(v131, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v141 = *(v129 + 8);
    v83 = v164;
    v141(v150, v130);
    v141(v171, v130);
  }

  (*(v163 + 8))(v173, v177);
  (*(v162 + 8))(v176, v179);
  (*(v165 + 8))(v169, v161);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_24_8(v128, v143, v144, v142);
  v145 = v160;
  sub_1D4ED3A14(v85, v160, &qword_1EC7EA790, &unk_1D561FB10);
  v146 = type metadata accessor for CuratorRelationshipProvider(0);
  sub_1D4ED3A14(v175, v145 + v146[5], &qword_1EC7EA788, &unk_1D56223A0);
  sub_1D4ED3A14(v83, v145 + v146[6], &qword_1EC7EA780, &unk_1D561FB20);
  sub_1D4ED3A14(v128, v145 + v146[7], &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D4E7661C(v113, &qword_1EC7EA7E0, &unk_1D5623AB0);
  sub_1D4E7661C(v181, &qword_1EC7EA7E8, &qword_1D561CAD8);
  sub_1D4E7661C(v180, &qword_1EC7EA7F0, &unk_1D561E8C0);
  sub_1D4E7661C(v170, &off_1EC7EA7F8, &unk_1D56311B0);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4ED284C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getAtKeyPath();
}

void CloudResource<>.socialProfileRawResource.getter()
{
  OUTLINED_FUNCTION_47();
  v0 = sub_1D5611998();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1D5610A78();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  sub_1D5610648();
  v8 = OUTLINED_FUNCTION_15_2();
  if (v9(v8) == *MEMORY[0x1E6975F28])
  {
    v10 = OUTLINED_FUNCTION_15_2();
    v11(v10);
    v12 = OUTLINED_FUNCTION_18_5();
    v13(v12);
    OUTLINED_FUNCTION_8_9();
    sub_1D4ED3808(v14, v15, MEMORY[0x1E69762A0]);
    OUTLINED_FUNCTION_19_9();
    sub_1D5610598();
    (*(v2 + 8))(v6, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
    v16 = OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_15_2();
    v23(v22);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4ED2AC0()
{
  OUTLINED_FUNCTION_47();
  v0 = sub_1D5611998();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1D5610A78();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  sub_1D5610648();
  v8 = OUTLINED_FUNCTION_15_2();
  if (v9(v8) == *MEMORY[0x1E6975F28])
  {
    v10 = OUTLINED_FUNCTION_15_2();
    v11(v10);
    v12 = OUTLINED_FUNCTION_18_5();
    v13(v12);
    OUTLINED_FUNCTION_8_9();
    sub_1D4ED3808(v14, v15, MEMORY[0x1E69762A0]);
    OUTLINED_FUNCTION_19_9();
    sub_1D5610598();
    (*(v2 + 8))(v6, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
    v16 = OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_15_2();
    v23(v22);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4ED2CDC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v103 = v4;
  v94 = v5;
  v101 = v6;
  v92 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v93 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v90 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v88 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v87 = v17;
  v18 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v87 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  v89 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  OUTLINED_FUNCTION_13();
  v91 = v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v100 = &v87 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v87 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v87 - v37;
  v102 = v1;
  sub_1D4ED3750(v1, v28, &qword_1EC7EA790, &unk_1D561FB10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v39);
  v104 = v3;
  v97 = v18;
  v98 = v38;
  v95 = v24;
  v96 = v20;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v28, &qword_1EC7EA790, &unk_1D561FB10);
    v41 = v101;
  }

  else
  {
    sub_1D56141F8();
    OUTLINED_FUNCTION_6_11();
    sub_1D4ED3808(v42, v43, MEMORY[0x1E6977028]);
    v44 = v101;
    sub_1D4F1ABE8(v24);
    v38 = v98;
    sub_1D560DA88();
    (*(v20 + 8))(v24, v18);
    OUTLINED_FUNCTION_24_0();
    (*(v45 + 8))(v28, v39);
    v41 = v44;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_24_8(v38, v47, v48, v46);
  v49 = type metadata accessor for CuratorRelationshipProvider(0);
  v50 = v87;
  sub_1D4ED3750(v102 + v49[5], v87, &qword_1EC7EA788, &unk_1D56223A0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v52 = __swift_getEnumTagSinglePayload(v50, 1, v51);
  v99 = v36;
  if (v52 == 1)
  {
    sub_1D4E7661C(v50, &qword_1EC7EA788, &unk_1D56223A0);
    v53 = v90;
    v54 = v96;
  }

  else
  {
    sub_1D5613C48();
    OUTLINED_FUNCTION_9_8();
    sub_1D4ED3808(v55, v56, MEMORY[0x1E6976DB0]);
    v57 = v95;
    sub_1D4F1ABE8(v95);
    sub_1D560DA88();
    v54 = v96;
    (*(v96 + 8))(v57, v97);
    OUTLINED_FUNCTION_24_0();
    (*(v58 + 8))(v50, v51);
    v53 = v90;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  v59 = OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_24_8(v59, v60, v61, v62);
  v63 = v88;
  sub_1D4ED3750(v102 + v49[6], v88, &qword_1EC7EA780, &unk_1D561FB20);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  if (__swift_getEnumTagSinglePayload(v63, 1, v64) == 1)
  {
    sub_1D4E7661C(v63, &qword_1EC7EA780, &unk_1D561FB20);
    v65 = 1;
    v66 = v100;
    v67 = v95;
  }

  else
  {
    sub_1D5614B68();
    OUTLINED_FUNCTION_7_15();
    sub_1D4ED3808(v68, v69, MEMORY[0x1E6977530]);
    v67 = v95;
    OUTLINED_FUNCTION_22_6();
    sub_1D4F1ABE8(v70);
    v66 = v100;
    v54 = v96;
    sub_1D560DA88();
    (*(v54 + 8))(v67, v97);
    OUTLINED_FUNCTION_24_0();
    (*(v71 + 8))(v63, v64);
    v65 = 0;
  }

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v66, v65, 1, v72);
  sub_1D4ED3750(v102 + v49[7], v53, &qword_1EC7EA778, &qword_1D5622E60);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  if (__swift_getEnumTagSinglePayload(v53, 1, v73) == 1)
  {
    sub_1D4E7661C(v53, &qword_1EC7EA778, &qword_1D5622E60);
    v74 = 1;
    v75 = v91;
    v41 = v101;
  }

  else
  {
    type metadata accessor for SocialProfile(0);
    sub_1D4ED3808(&qword_1EDD57510, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    OUTLINED_FUNCTION_10_1();
    sub_1D4ED3808(v76, type metadata accessor for SocialProfile, v77);
    OUTLINED_FUNCTION_22_6();
    sub_1D4F1ABE8(v78);
    v75 = v91;
    sub_1D560DA88();
    (*(v54 + 8))(v67, v97);
    OUTLINED_FUNCTION_24_0();
    (*(v79 + 8))(v53, v73);
    v74 = 0;
  }

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v75, v74, 1, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A8, &unk_1D5623B40);
  v81 = *(v89 + 72);
  v82 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1D561CA30;
  v84 = v98;
  OUTLINED_FUNCTION_23_11(v98, v83 + v82);
  v85 = v99;
  OUTLINED_FUNCTION_23_11(v99, v83 + v82 + v81);
  v86 = v100;
  OUTLINED_FUNCTION_23_11(v100, v83 + v82 + 2 * v81);
  OUTLINED_FUNCTION_23_11(v75, v83 + v82 + 3 * v81);
  v105 = v83;
  (*(v92 + 16))(v93, v103, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7B0, &qword_1D5623B50);
  sub_1D4ED37A4();
  sub_1D5612408();
  OUTLINED_FUNCTION_25_2(v75);
  OUTLINED_FUNCTION_25_2(v86);
  OUTLINED_FUNCTION_25_2(v85);
  OUTLINED_FUNCTION_25_2(v84);
  OUTLINED_FUNCTION_46();
}