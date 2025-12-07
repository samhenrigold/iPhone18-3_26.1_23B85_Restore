void sub_1E36D9B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36D9EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36DC30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36DEC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36DF654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36DFD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36E0B78(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1E36E1AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36E2B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36E5808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36E5E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36E64A4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id VUIMediaEntityFetchRequestAllPropertiesSet(uint64_t a1)
{
  if (VUIMediaEntityFetchRequestAllPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestAllPropertiesSet_cold_1();
  }

  v2 = VUIMediaEntityFetchRequestAllPropertiesSet___fetchAllPropertiesSet;

  return v2;
}

void __VUIMediaEntityFetchRequestAllPropertiesSet_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObject:@"__All__"];
  v1 = VUIMediaEntityFetchRequestAllPropertiesSet___fetchAllPropertiesSet;
  VUIMediaEntityFetchRequestAllPropertiesSet___fetchAllPropertiesSet = v0;
}

uint64_t VUIMediaEntityFetchRequestIsAllPropertiesSet(void *a1)
{
  v1 = a1;
  v2 = VUIMediaEntityFetchRequestAllPropertiesSet(v1);
  v3 = [v1 isEqualToSet:v2];

  return v3;
}

id VUIMediaEntityFetchRequestMinimalPropertiesSet(uint64_t a1)
{
  if (VUIMediaEntityFetchRequestMinimalPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalPropertiesSet_cold_1();
  }

  v2 = VUIMediaEntityFetchRequestMinimalPropertiesSet___minimalPropertiesSet;

  return v2;
}

void __VUIMediaEntityFetchRequestMinimalPropertiesSet_block_invoke(uint64_t a1)
{
  v5 = VUIMediaEntityFetchRequestRequiredProperties(a1);
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"genreTitle", @"resolution", @"HLSResolution", @"colorCapability", @"audioCapability", @"HLSColorCapability", @"HLSAudioCapability", 0}];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 unionSet:v5];
  [v2 unionSet:v1];
  v3 = [v2 copy];
  v4 = VUIMediaEntityFetchRequestMinimalPropertiesSet___minimalPropertiesSet;
  VUIMediaEntityFetchRequestMinimalPropertiesSet___minimalPropertiesSet = v3;
}

id VUIMediaEntityFetchRequestRequiredProperties(uint64_t a1)
{
  if (VUIMediaEntityFetchRequestRequiredProperties___onceToken != -1)
  {
    VUIMediaEntityFetchRequestRequiredProperties_cold_1();
  }

  v2 = VUIMediaEntityFetchRequestRequiredProperties___requiredProperties;

  return v2;
}

id VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet(uint64_t a1)
{
  if (VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet_cold_1();
  }

  v2 = VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet___minimalMoviesPropertiesSet;

  return v2;
}

void __VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet_block_invoke(uint64_t a1)
{
  v5 = VUIMediaEntityFetchRequestMinimalPropertiesSet(a1);
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"extrasURL", 0}];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 unionSet:v5];
  [v2 unionSet:v1];
  v3 = [v2 copy];
  v4 = VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet___minimalMoviesPropertiesSet;
  VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet___minimalMoviesPropertiesSet = v3;
}

id VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet(uint64_t a1)
{
  if (VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet_cold_1();
  }

  v2 = VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet___minimalMoviesPropertiesSet;

  return v2;
}

void __VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet_block_invoke(uint64_t a1)
{
  v5 = VUIMediaEntityFetchRequestMinimalPropertiesSet(a1);
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"rentalPlaybackDuration", @"rentalExpirationDate", 0}];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 unionSet:v5];
  [v2 unionSet:v1];
  v3 = [v2 copy];
  v4 = VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet___minimalMoviesPropertiesSet;
  VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet___minimalMoviesPropertiesSet = v3;
}

id VUIMediaEntityFetchRequestMinimalShowPropertiesSet(uint64_t a1)
{
  if (VUIMediaEntityFetchRequestMinimalShowPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalShowPropertiesSet_cold_1();
  }

  v2 = VUIMediaEntityFetchRequestMinimalShowPropertiesSet___minimalShowsPropertiesSet;

  return v2;
}

void __VUIMediaEntityFetchRequestMinimalShowPropertiesSet_block_invoke(uint64_t a1)
{
  v5 = VUIMediaEntityFetchRequestMinimalPropertiesSet(a1);
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"seasonCount", 0}];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 unionSet:v5];
  [v2 unionSet:v1];
  v3 = [v2 copy];
  v4 = VUIMediaEntityFetchRequestMinimalShowPropertiesSet___minimalShowsPropertiesSet;
  VUIMediaEntityFetchRequestMinimalShowPropertiesSet___minimalShowsPropertiesSet = v3;
}

id VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet(uint64_t a1)
{
  if (VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet_cold_1();
  }

  v2 = VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet___minimalSeasonPropertiesSet;

  return v2;
}

void __VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet_block_invoke(uint64_t a1)
{
  v5 = VUIMediaEntityFetchRequestMinimalPropertiesSet(a1);
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"isLocal", @"genreTitle", @"releaseYear", @"releaseDate", @"seasonNumber", @"resolution", @"HLSResolution", @"colorCapability", @"HLSColorCapability", @"audioCapability", @"HLSAudioCapability", 0}];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 unionSet:v5];
  [v2 unionSet:v1];
  v3 = [v2 copy];
  v4 = VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet___minimalSeasonPropertiesSet;
  VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet___minimalSeasonPropertiesSet = v3;
}

id VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet(uint64_t a1)
{
  if (VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet_cold_1();
  }

  v2 = VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet___minimalSeasonPropertiesSet;

  return v2;
}

void __VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet_block_invoke(uint64_t a1)
{
  v5 = VUIMediaEntityFetchRequestMinimalPropertiesSet(a1);
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"releaseYear", @"releaseDate", @"isLocal", @"seasonNumber", @"storeID", @"isPlayable", @"duration", @"previewFrameImageIdentifier", @"episodeNumber", @"fractionalEpisodeNumber", 0}];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 unionSet:v5];
  [v2 unionSet:v1];
  v3 = [v2 copy];
  v4 = VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet___minimalSeasonPropertiesSet;
  VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet___minimalSeasonPropertiesSet = v3;
}

void __VUIMediaEntityFetchRequestRequiredProperties_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"type", @"title", @"identifier", @"coverArtImageIdentifier", 0}];
  v1 = VUIMediaEntityFetchRequestRequiredProperties___requiredProperties;
  VUIMediaEntityFetchRequestRequiredProperties___requiredProperties = v0;
}

void sub_1E36ECAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1E36EE07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36EF024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36EF8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36F1154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36F134C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36F15E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36F3F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_1E36F56F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36F6474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36F68CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36F6FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E36F9ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36FB1E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36FC6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36FD714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36FDB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36FE8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E3702B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 192), 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

id VUISidebandSeriesMediaCollectionKind(uint64_t a1)
{
  if (VUISidebandSeriesMediaCollectionKind_onceToken != -1)
  {
    VUISidebandSeriesMediaCollectionKind_cold_1();
  }

  v2 = VUISidebandSeriesMediaCollectionKind_entityKind;

  return v2;
}

void __VUISidebandSeriesMediaCollectionKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUISidebandSeriesMediaCollectionKind_entityKind;
  VUISidebandSeriesMediaCollectionKind_entityKind = v3;

  v7 = VUIMediaCollectionPropertyDescriptors();
  v5 = VUISidebandSeriesMediaCollectionKind_entityKind;
  v6 = [v7 allValues];
  [v5 setPropertyDescriptors:v6];
}

void sub_1E37038F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3703AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3703CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3703EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3704070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3706AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E370A9A0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1E370D4AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E370EAB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E370ECEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E370F054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_1E370F388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_1E370FB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_sync_exit(v16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E37100D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1E3711058(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 40));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void VUIRunLoopSourceCancelCallBack(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [a1 _sourceCanceledOnRunLoop:a2];

  objc_autoreleasePoolPop(v4);
}

void sub_1E37137E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E371703C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3719B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E371AE4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1E371B88C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 72));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_1E371C26C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1E371CC7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E371E448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E371F318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E371FB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E37205C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3722644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak((v70 + 40));
  objc_destroyWeak((v68 + 40));
  objc_destroyWeak((v67 + 40));
  objc_destroyWeak((v69 + 48));
  objc_destroyWeak(&a46);
  objc_destroyWeak(&a51);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&a65);
  objc_destroyWeak(&a66);
  objc_destroyWeak(&STACK[0x218]);
  objc_destroyWeak(&STACK[0x240]);
  objc_destroyWeak(&STACK[0x268]);
  objc_destroyWeak(&STACK[0x290]);
  objc_destroyWeak(&STACK[0x2B8]);
  objc_destroyWeak(&STACK[0x2E0]);
  objc_destroyWeak(&STACK[0x308]);
  objc_destroyWeak(&STACK[0x330]);
  objc_destroyWeak(&STACK[0x358]);
  objc_destroyWeak(&STACK[0x380]);
  objc_destroyWeak(&STACK[0x3A8]);
  objc_destroyWeak(&STACK[0x3D0]);
  objc_destroyWeak(&STACK[0x3F8]);
  objc_destroyWeak(&STACK[0x428]);
  objc_destroyWeak(&STACK[0x458]);
  objc_destroyWeak(&STACK[0x480]);
  objc_destroyWeak(&STACK[0x4A8]);
  objc_destroyWeak(&STACK[0x4D0]);
  objc_destroyWeak(&STACK[0x500]);
  objc_destroyWeak(&STACK[0x528]);
  objc_destroyWeak(&STACK[0x550]);
  objc_destroyWeak(&STACK[0x578]);
  objc_destroyWeak(&STACK[0x5A0]);
  objc_destroyWeak(&STACK[0x5C8]);
  objc_destroyWeak(&STACK[0x5F8]);
  objc_destroyWeak(&STACK[0x620]);
  objc_destroyWeak(&STACK[0x628]);
  _Unwind_Resume(a1);
}

void sub_1E37277A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1E372A060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __PlaybackDelayTimeIntervalOverride_block_invoke_0()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v1 doubleForKey:@"mediaControllerPlaybackDelay"];
  PlaybackDelayTimeIntervalOverride_playbackDelayInterval_0 = v0;
}

void sub_1E372BC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E372BE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E372C4B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1E3731AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1E373432C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3734500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3735008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3735858(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E3736A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E37376CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3737C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3738A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id VUIFamilySharingMediaCollectionKind(uint64_t a1)
{
  if (VUIFamilySharingMediaCollectionKind_onceToken[0] != -1)
  {
    VUIFamilySharingMediaCollectionKind_cold_1();
  }

  v2 = VUIFamilySharingMediaCollectionKind_entityKind;

  return v2;
}

void __VUIFamilySharingMediaCollectionKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUIFamilySharingMediaCollectionKind_entityKind;
  VUIFamilySharingMediaCollectionKind_entityKind = v3;

  v7 = VUIMediaCollectionPropertyDescriptors();
  v5 = VUIFamilySharingMediaCollectionKind_entityKind;
  v6 = [v7 allValues];
  [v5 setPropertyDescriptors:v6];
}

id VUIMPMediaItemKind(uint64_t a1)
{
  if (VUIMPMediaItemKind_onceToken != -1)
  {
    VUIMPMediaItemKind_cold_1();
  }

  v2 = VUIMPMediaItemKind_entityKind;

  return v2;
}

void __VUIMPMediaItemKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUIMPMediaItemKind_entityKind;
  VUIMPMediaItemKind_entityKind = v3;

  v41 = VUIMediaItemPropertyDescriptors();
  VUIUpdateMPMediaEntityPropertyDescriptors(v41);
  v40 = [v41 objectForKey:@"isPlayable"];
  v5 = *MEMORY[0x1E696FB60];
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA38], *MEMORY[0x1E696FA68], *MEMORY[0x1E696FB60], *MEMORY[0x1E696FA10], *MEMORY[0x1E696FA58], 0}];
  [v40 setSourcePropertyNames:v6];

  [v40 setSourceFilterBlock:&__block_literal_global_6_3];
  v39 = [v41 objectForKey:@"duration"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FAB0]];
  [v39 setSourcePropertyNames:v7];

  v38 = [v41 objectForKey:@"previewFrameImageIdentifier"];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FA98]];
  [v38 setSourcePropertyNames:v8];

  v37 = [v41 objectForKey:@"storeID"];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  [v37 setSourcePropertyNames:v9];

  [v37 setSourceSupportsFiltering:1];
  v36 = [v41 objectForKey:@"purchaseHistoryID"];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FAC8]];
  [v36 setSourcePropertyNames:v10];

  v11 = [v41 objectForKey:@"extrasURL"];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB50]];
  [v11 setSourcePropertyNames:v12];

  [v11 setSourceSupportsFiltering:1];
  v35 = [v41 objectForKey:@"seasonTitle"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB08]];
  [v35 setSourcePropertyNames:v13];

  v34 = [v41 objectForKey:@"seasonIdentifier"];
  VUIUpdateMPSeasonMediaCollectionIdentifierPropertyDescriptor(v34);
  v33 = [v41 objectForKey:@"episodeNumber"];
  v14 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F998]];
  [v33 setSourcePropertyNames:v14];

  v15 = [v41 objectForKey:@"studio"];
  v16 = *MEMORY[0x1E696FA90];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FA90]];
  [v15 setSourcePropertyNames:v17];

  v18 = [v41 objectForKey:@"credits"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:v16];
  [v18 setSourcePropertyNames:v19];

  v20 = [v41 objectForKey:@"rentalExpirationDate"];
  v21 = *MEMORY[0x1E696FAF0];
  v22 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FB00], *MEMORY[0x1E696FAE0], *MEMORY[0x1E696FAF8], *MEMORY[0x1E696FAF0], 0}];
  [v20 setSourcePropertyNames:v22];

  v23 = [v41 objectForKey:@"rentalPlaybackDuration"];
  v24 = [MEMORY[0x1E695DFD8] setWithObject:v21];
  [v23 setSourcePropertyNames:v24];

  [v23 setSourceSupportsFiltering:1];
  v25 = [v41 objectForKey:@"hasBeenPlayed"];
  v26 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FA00]];
  [v25 setSourcePropertyNames:v26];

  [v25 setSourceSupportsFiltering:1];
  v27 = [v41 objectForKey:@"playCount"];
  v28 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FAA0]];
  [v27 setSourcePropertyNames:v28];

  [v27 setSourceSupportsFiltering:1];
  v29 = [v41 objectForKey:@"bookmark"];
  v30 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F950]];
  [v29 setSourcePropertyNames:v30];

  v31 = VUIMPMediaItemKind_entityKind;
  v32 = [v41 allValues];
  [v31 setPropertyDescriptors:v32];
}

uint64_t __VUIMPMediaItemKind_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E6970608];
  v6 = [a4 BOOLValue];
  v7 = [MEMORY[0x1E6970610] vui_mediaPropertyPredicateComparisonWithPredicateOperatorType:a3];

  return [v5 vui_isPlayablePredicate:v6 comparison:v7];
}

uint64_t sub_1E373AFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC80, &qword_1E42AD1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

double sub_1E373B090@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
  result = 0.0;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  return result;
}

double sub_1E373B0B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  result = 0.0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 80) = a3;
  return result;
}

uint64_t sub_1E373B0DC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

uint64_t sub_1E373B10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1E373B354(0, v1, 0);
    v2 = v22;
    v4 = a1 + 32;
    do
    {
      sub_1E327F454(v4, v20);
      sub_1E327F454(v20, v17);
      v5 = v18;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      OUTLINED_FUNCTION_0_7();
      __src[0] = (*(v6 + 16))(v5);
      __src[1] = v7;
      v8 = v18;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      OUTLINED_FUNCTION_0_7();
      __src[2] = (*(v9 + 8))(v8);
      __src[3] = v10;
      LOBYTE(__src[4]) = 0;
      v11 = v18;
      v12 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v13 = (*(v12 + 64))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v20);
      BYTE1(__src[4]) = v13 & 1;
      sub_1E327F454(v17, &__src[5]);
      __src[10] = 0;
      __swift_destroy_boxed_opaque_existential_1(v17);
      v22 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1E373B354((v14 > 1), v15 + 1, 1);
        v2 = v22;
      }

      *(v2 + 16) = v15 + 1;
      memcpy((v2 + 88 * v15 + 32), __src, 0x58uLL);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E373B2C4()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E373B310(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

char *sub_1E373B354(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E373B490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1E373B378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE283800;
  if (!qword_1EE283800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283800);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI11SidebarItem_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E373B3EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1E373B42C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_1E373B490(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC90, qword_1E42AD1D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[88 * v8] <= v12)
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E373B5B4(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseCollectionView();
  objc_msgSendSuper2(&v3, sel_setDelegate_, v1);
  return swift_unknownObjectRelease();
}

void (*sub_1E373B654(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI18BaseCollectionView_vuiDelegate;
  v3[6] = v1;
  v3[7] = v4;
  OUTLINED_FUNCTION_1_45();
  v3[5] = swift_unknownObjectWeakLoadStrong();
  return sub_1E373B6C8;
}

void sub_1E373B6C8(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = *(v3 + 48);
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = type metadata accessor for BaseCollectionView();
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    objc_msgSendSuper2((v3 + 24), sel_setDelegate_, v4);
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t (*sub_1E373B7B8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI18BaseCollectionView_vuiScrollDelegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_1_45();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E373B82C;
}

uint64_t sub_1E373B88C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1E373B8E8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI18BaseCollectionView_vuiContextMenuDelegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_1_45();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E373BC78;
}

void sub_1E373B95C(void **a1, char a2)
{
  v3 = *a1;
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

id sub_1E373BA04(void *a1)
{
  OUTLINED_FUNCTION_0_8();
  v3 = objc_allocWithZone(v1);
  v4 = OUTLINED_FUNCTION_2_15();
  v7 = [v5 v6];

  return v7;
}

id sub_1E373BA64(void *a1)
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_14();
  v8 = type metadata accessor for BaseCollectionView();
  v3 = OUTLINED_FUNCTION_2_15();
  v6 = objc_msgSendSuper2(v4, v5, a1, v3, v1, v8);

  return v6;
}

id sub_1E373BB38(void *a1)
{
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_14();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseCollectionView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E373BBE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseCollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E373BC7C()
{
  result = [v0 vuiView];
  if (result)
  {
    v2 = result;
    type metadata accessor for DescriptionTemplateView();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void sub_1E373BCD8(void *a1)
{
  [v1 setVuiView_];
}

char *sub_1E373BD54(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI29DescriptionTemplateController_templateViewModel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DescriptionTemplateController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
  *&v3[OBJC_IVAR____TtC8VideosUI29DescriptionTemplateController_templateViewModel] = a1;

  return v3;
}

void sub_1E373BDEC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI29DescriptionTemplateController_templateViewModel) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E373BE6C()
{
  type metadata accessor for DescriptionTemplateView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1E373BCD8(v1);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  [v0 setVuiView_];
}

void *sub_1E373BF50(uint64_t a1, void *a2)
{
  v41 = (*(*a1 + 464))();
  if (!v41)
  {
    return 0;
  }

  if (a2)
  {
    type metadata accessor for DescriptionTemplateController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = a2;
    }
  }

  else
  {
    v3 = 0;
  }

  v45 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28850, &unk_1E4297B80);
  sub_1E4148C68(sub_1E373C494, v6, v42);

  v7 = *&v42[0];
  v8 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  sub_1E373C4DC();
  type metadata accessor for ViewModel();
  sub_1E373C520();
  v9 = sub_1E4205CB4();
  v10 = sub_1E32AE9B0(v41);
  v38 = v7;
  if (!v10)
  {
    v39 = v8;
    v40 = v8;
LABEL_38:

    v5 = v38;
    v31 = *((*MEMORY[0x1E69E7D40] & *v38) + 0xC0);
    if (v31(v30))
    {
      OUTLINED_FUNCTION_0_9();
      (*(v32 + 168))(v40);
    }

    else
    {
    }

    if (v31(v33))
    {
      OUTLINED_FUNCTION_0_9();
      (*(v34 + 192))(v39);
    }

    else
    {
    }

    if (v31(v35))
    {
      OUTLINED_FUNCTION_0_9();
      (*(v36 + 216))(v9);
    }

    else
    {
    }

    return v5;
  }

  v11 = v10;
  if (v10 < 1)
  {
    goto LABEL_51;
  }

  v12 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](v12, v41);
    }

    else
    {
      v13 = *(v41 + 8 * v12 + 32);
    }

    v14 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v15 = v14;
    v16 = sub_1E393D9C4(v13, 0, v42, 0);

    sub_1E373C624(v42);
    if (!v16)
    {
      goto LABEL_35;
    }

    v17 = v16;
    MEMORY[0x1E6910BF0]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    v18 = sub_1E4206324();
    v40 = v45;
    if (!(*(*v13 + 392))(v18))
    {
      type metadata accessor for ViewLayout();
      sub_1E3C2F968();
    }

    MEMORY[0x1E6910BF0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();
    v39 = v44;
    if ((v9 & 0xC000000000000001) != 0)
    {
      if (v9 < 0)
      {
        v19 = v9;
      }

      else
      {
        v19 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v20 = sub_1E4207384();
      if (__OFADD__(v20, 1))
      {
        goto LABEL_49;
      }

      v9 = sub_1E373C6D0(v19, v20 + 1);
    }

    else
    {
    }

    swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v9;
    v21 = sub_1E373C68C(v17);
    if (__OFADD__(*(v9 + 16), (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28858, &unk_1E4297B90);
    if (sub_1E4207644())
    {
      v25 = sub_1E373C68C(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_52;
      }

      v23 = v25;
    }

    v9 = *&v42[0];
    if (v24)
    {
      *(*(*&v42[0] + 56) + 8 * v23) = v13;
    }

    else
    {
      *(*&v42[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
      *(*(v9 + 48) + 8 * v23) = v17;
      *(*(v9 + 56) + 8 * v23) = v13;
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_50;
      }

      *(v9 + 16) = v29;
    }

LABEL_35:

    if (v11 == ++v12)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

char *sub_1E373C494@<X0>(char **a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for DescriptionTemplateController());

  result = sub_1E373BD54(v3);
  *a1 = result;
  return result;
}

unint64_t sub_1E373C4DC()
{
  result = qword_1EE23AE80;
  if (!qword_1EE23AE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AE80);
  }

  return result;
}

unint64_t sub_1E373C520()
{
  result = qword_1EE23AE78;
  if (!qword_1EE23AE78)
  {
    sub_1E373C4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23AE78);
  }

  return result;
}

id sub_1E373C5E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DescriptionTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E373C624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF296C0, &unk_1E429BBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E373C68C(uint64_t a1)
{
  v2 = sub_1E4206F54();

  return sub_1E373CB30(a1, v2);
}

uint64_t sub_1E373C6D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28860, &unk_1E4297BC0);
    v2 = sub_1E4207734();
    v17 = v2;
    sub_1E4207674();
    while (1)
    {
      v3 = sub_1E42076A4();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_1E373C4DC();
      swift_dynamicCast();
      type metadata accessor for ViewModel();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_1E373C8C4(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_1E4206F54();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E373C8C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28860, &unk_1E4297BC0);
  result = sub_1E4207724();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v31 = v2;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_32;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      sub_1E373CBF0(0, (v30 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v19;
    }

    result = sub_1E4206F54();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v19;
    *(*(v7 + 56) + 8 * v25) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1E373CB30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1E373C4DC();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1E4206F64();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E373CBF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1E4297170;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

double sub_1E373CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E373CCC4(a1, a2, a3);
  sub_1E4201AC4();
  return v4;
}

void sub_1E373CC94(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  *a1 = sub_1E373CC54(a2, a3, a4);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
}

unint64_t sub_1E373CCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF439B8[0];
  if (!qword_1ECF439B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF439B8);
  }

  return result;
}

void *sub_1E373CD18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = memcpy(__dst, a2, sizeof(__dst));
  v17 = OUTLINED_FUNCTION_42_12(v9, v10, v11, v12, v13, v14, v15, v16, v49, a3, a5, a4, __src[0]);
  v18 = v65;
  v26 = OUTLINED_FUNCTION_42_12(v17, v19, v20, v21, v22, v23, v24, v25, v66, v53, v57, v61, __src[0]);
  v27 = v65;
  v28 = v66;
  __src[9] = 0;
  OUTLINED_FUNCTION_42_12(v26, v29, v30, v31, v32, v33, v34, v35, v50, v54, v58, v62, __src[0]);
  v36 = v65;
  v37 = v66;
  KeyPath = swift_getKeyPath();
  LOBYTE(v65) = 0;
  v39 = [objc_opt_self() sharedInstance];
  OUTLINED_FUNCTION_36();
  v41 = *(v40 + 392);

  v43 = v41(v42);

  if (v43)
  {
    v45 = dynamic_cast_existential_1_conditional(v43, *v43, &protocol descriptor for FlexibleGridPaddedLayout);
    if (v45)
    {
      v46 = v44;
      goto LABEL_7;
    }
  }

  else
  {
    v45 = 0;
  }

  v46 = 0;
LABEL_7:
  if (a2[6] == 1)
  {
    sub_1E3EBA478(__src);
  }

  else
  {
    memcpy(__src, __dst, 0x41uLL);
  }

  v47 = v65;
  *a6 = v18;
  *(a6 + 8) = v51;
  *(a6 + 16) = v27;
  *(a6 + 24) = v28;
  *(a6 + 32) = v36;
  *(a6 + 40) = v37;
  *(a6 + 48) = KeyPath;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *(a6 + 56) = 0;
  *(a6 + 80) = v47;
  *(a6 + 88) = a1;
  *(a6 + 96) = v45;
  *(a6 + 104) = v46;
  result = memcpy((a6 + 112), __src, 0x41uLL);
  *(a6 + 184) = v59;
  *(a6 + 192) = v55;
  *(a6 + 200) = v63;
  *(a6 + 208) = v39;
  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1E373CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B48, &qword_1E4298068);
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B50, &qword_1E4298070);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B58, &qword_1E4298078);
  v41 = v40 - 8;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4_6();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &a9 - v46;
  *v47 = sub_1E4201D44();
  *(v47 + 1) = 0;
  v47[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B60, &qword_1E4298080);
  sub_1E373D27C();
  *&v47[*(v41 + 44)] = 256;
  if (!*(v23 + 160) || (*(v23 + 176) & 1) == 0)
  {
    sub_1E373D8B8();
    (*(v28 + 32))(v39, v31, v26);
  }

  OUTLINED_FUNCTION_37_6();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  sub_1E3743538(v47, v44, &qword_1ECF28B58, &qword_1E4298078);
  v52 = OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_51_5(v52, v53);
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v54, v55, v56, &qword_1E4298078);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B68, &qword_1E4298088);
  OUTLINED_FUNCTION_51_5(v36, v25 + *(v57 + 48));
  OUTLINED_FUNCTION_52_4(v39);
  sub_1E325F69C(v47, &qword_1ECF28B58);
  OUTLINED_FUNCTION_52_4(v36);
  sub_1E325F69C(v44, &qword_1ECF28B58);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E373D504()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v0;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288A0, &qword_1E4297C58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288A8, &qword_1E4297C60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_36();
  v9 = (*(v8 + 1040))();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  if (!sub_1E32AE9B0(v9))
  {

    goto LABEL_9;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1E6911E60](0, v10);
LABEL_6:

    v13 = (*(*v11 + 872))(v12);

    if (v13)
    {
      v44 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
      sub_1E4203914();
      v40 = v42;
      v41 = v43;
      v44 = v3[2];
      sub_1E4203914();
      v38 = v43;
      v39 = v42;
      v44 = v3[1];
      v14 = sub_1E4203914();
      v37 = &v33;
      v34 = v43;
      v35 = v42;
      MEMORY[0x1EEE9AC00](v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288B8, &qword_1E4297C68);
      v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF288C0, &qword_1E4297C70);
      v36 = v5;
      v17 = v16;
      OUTLINED_FUNCTION_1();
      v19 = sub_1E3743478(v18);
      v42 = v17;
      v43 = v19;
      OUTLINED_FUNCTION_15_20();
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v20 = OUTLINED_FUNCTION_6();
      sub_1E40A1CE8(v21, v22, v39, v38, v35, v34, v23, v24, v20, v25, v26, v27, v15, OpaqueTypeConformance2);

      sub_1E3743538(v2, v1, &qword_1ECF288A8, &qword_1E4297C60);
      OUTLINED_FUNCTION_35_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_14_19();
      OUTLINED_FUNCTION_21_1();
      sub_1E3743478(v28);
      OUTLINED_FUNCTION_34();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v29, v30);
LABEL_10:
      OUTLINED_FUNCTION_10_3();
      return;
    }

LABEL_9:
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_14_19();
    sub_1E3743478(v31);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    goto LABEL_10;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1E373D8B8()
{
  v6 = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288D0, &qword_1E4297C78);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288D8, &qword_1E4297C80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  *v2 = sub_1E4201D44();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288E0, &qword_1E4297C88);
  sub_1E373F790();
  v11 = sub_1E4202754();
  if (![objc_opt_self() isIpadInterface] || (v12 = 0, objc_msgSend(objc_opt_self(), sel_isIpadInterface)) && ((type metadata accessor for LayoutGrid(), v13 = sub_1E3A256EC(), (sub_1E373F630(v13, 0, v14) & 1) != 0) || (v15 = sub_1E3A256EC(), (sub_1E373F630(v15, 1, v16) & 1) != 0)))
  {
    sub_1E37407A0();
    v12 = v17;
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v1, &qword_1ECF288D0, &qword_1E4297C78);
  v18 = v1 + *(v9 + 36);
  *v18 = v11;
  *(v18 + 8) = v12;
  *(v18 + 16) = v3;
  *(v18 + 24) = v4;
  *(v18 + 32) = v5;
  *(v18 + 40) = 0;
  v19 = *(v0 + 96);
  if (!v19 || (v20 = (*(*(v6 + 104) + 16))(*v19)) == 0)
  {
    v20 = [objc_opt_self() clearColor];
  }

  v21 = v20;
  sub_1E3740B5C();
  v22 = OUTLINED_FUNCTION_39_3();
  sub_1E39B87A4(v22, v23, v24);

  return sub_1E325F69C(v1, &qword_1ECF288D8);
}

uint64_t sub_1E373DB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A90, &qword_1E4297F88);
  OUTLINED_FUNCTION_0_10();
  v27[0] = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A80, &qword_1E4297F78);
  OUTLINED_FUNCTION_0_10();
  v27[1] = v9;
  v27[2] = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_4();
  memcpy(v32, (v2 + 112), 0x41uLL);
  OUTLINED_FUNCTION_36();
  v13 = *(v12 + 968);

  v14 = sub_1E3741F40(v32, __dst);
  v15 = v13(v14);
  v16 = sub_1E3E321AC(a1, v32, v15, 1, v31);
  v19 = sub_1E3741E4C(v16, v17, v18);
  sub_1E40443A0();
  memcpy(__dst, v31, 0x68uLL);
  sub_1E3741F9C(__dst);
  v30 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E4203914();
  v21 = v31[0];
  v20 = v31[1];
  v22 = *&v31[2];
  v31[0] = &type metadata for FlexibleGridRow;
  v31[1] = v19;
  v31[2] = &off_1F5D87880;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3CEB108(v21, v20, v4, v22);

  (*(v27[0] + 8))(v8, v4);
  v28 = v2;
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A88, &qword_1E4297F80);
  v31[0] = v4;
  v31[1] = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_15_20();
  swift_getOpaqueTypeConformance2();
  sub_1E3743478(&unk_1ECF28A98);
  sub_1E42033A4();
  v24 = OUTLINED_FUNCTION_39_3();
  return v25(v24);
}

uint64_t sub_1E373DE7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288F8, &qword_1E4297C90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28900, &qword_1E4297C98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E42038F4();
  if (v5 >= 0.0)
  {
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    sub_1E3740C14();
    OUTLINED_FUNCTION_34();
    return sub_1E4201F44();
  }

  else
  {
    sub_1E4203CD4();
    sub_1E3743538(v1, v0, &qword_1ECF28900, &qword_1E4297C98);
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    sub_1E3740C14();
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    return sub_1E325F69C(v1, &qword_1ECF28900);
  }
}

uint64_t sub_1E373E010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E3740AE8(a1, a2, a3);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void sub_1E373E060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28978, &qword_1E4297E18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B18, &qword_1E4298040);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28968, &qword_1E4297E10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_36();
  if ((*(v26 + 968))())
  {
    if (*(v22 + 160) && (*(v22 + 176) & 1) != 0)
    {
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1();
      sub_1E3743478(v27);
      sub_1E4201F44();
    }

    else
    {
      *v20 = sub_1E4201D44();
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B20, &qword_1E4298048);
      sub_1E373E35C();
      OUTLINED_FUNCTION_33_4();
      sub_1E3743538(v28, v29, v30, &qword_1E4297E18);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1();
      sub_1E3743478(v31);
      sub_1E4201F44();

      sub_1E325F69C(v20, &qword_1ECF28978);
    }

    v32 = OUTLINED_FUNCTION_38_0();
    sub_1E37434C8(v32, v33);
    OUTLINED_FUNCTION_37_6();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  }
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

void sub_1E373E35C()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v50 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B28, &qword_1E4298050);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v51 = v17 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  sub_1E373E730(&v75);
  memcpy(v74, v7 + 14, 0x41uLL);

  sub_1E3741F40(v74, v57);
  v22 = OUTLINED_FUNCTION_18();
  sub_1E3E321AC(v5, v74, 0, v22 & 1, v71);
  v23 = v7[12];
  if (v23 && ((*(v7[13] + 8))(v72, *v23), (v73 & 1) == 0))
  {
    v27.n128_u64[0] = v72[3];
    v26.n128_u64[0] = v72[2];
    v25.n128_u64[0] = v72[1];
    v24.n128_u64[0] = v72[0];
    j_nullsub_1(v24, v25, v26, v27);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v28 = sub_1E4202734();
  v70 = 0;
  memcpy(v56, v71, 0x68uLL);
  v56[104] = v28;
  *&v56[112] = v0;
  *&v56[120] = v1;
  *&v56[128] = v2;
  *&v56[136] = v3;
  v56[144] = 0;
  sub_1E4201CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B30, &qword_1E4298058);
  sub_1E3741BFC(&unk_1ECF28B38);
  sub_1E4203294();
  (*(v11 + 8))(v14, v50);
  memcpy(v57, v56, 0x91uLL);
  sub_1E325F69C(v57, &qword_1ECF28B30);
  sub_1E373E730(&v52);
  v29 = v51;
  sub_1E3743538(v21, v51, &qword_1ECF28B28, &qword_1E4298050);
  v30 = v76;
  v58 = v75;
  v59 = v76;
  v31 = v77;
  v32 = v78;
  v60 = v77;
  v61 = v78;
  *v9 = v75;
  v9[1] = v30;
  v9[2] = v31;
  v9[3] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B40, &qword_1E4298060);
  sub_1E3743538(v29, v9 + *(v33 + 48), &qword_1ECF28B28, &qword_1E4298050);
  v34 = (v9 + *(v33 + 64));
  v35 = v53;
  v62 = v52;
  v63 = v53;
  v36 = v54;
  v37 = v55;
  v64 = v54;
  v65 = v55;
  *v34 = v52;
  v34[1] = v35;
  v34[2] = v36;
  v34[3] = v37;
  OUTLINED_FUNCTION_50_2();
  sub_1E3743538(v38, v39, v40, v41);
  OUTLINED_FUNCTION_50_2();
  sub_1E3743538(v42, v43, v44, v45);
  sub_1E325F69C(v21, &qword_1ECF28B28);
  v66 = v52;
  v67 = v53;
  v68 = v54;
  v69 = v55;
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v46, v47);
  sub_1E325F69C(v29, &qword_1ECF28B28);
  *v56 = v75;
  *&v56[16] = v76;
  *&v56[32] = v77;
  *&v56[48] = v78;
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v48, v49);
  OUTLINED_FUNCTION_10_3();
}

double sub_1E373E730@<D0>(uint64_t a1@<X8>)
{
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E42038F4();
  if (v9 >= 0.0)
  {
    v3 = sub_1E42036E4();
  }

  else
  {
    sub_1E42036C4();
    v3 = sub_1E4203734();
  }

  KeyPath = swift_getKeyPath();
  sub_1E4203DA4();
  sub_1E4200D94();
  *a1 = KeyPath;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_1E373E81C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF288C0, &qword_1E4297C70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  *v2 = sub_1E4201D44();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A08, &qword_1E4297F08);
  sub_1E373E96C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E4203914();
  OUTLINED_FUNCTION_1();
  sub_1E3743478(v5);
  sub_1E3CEB108(v9, v10, v3, v11);

  v6 = OUTLINED_FUNCTION_38_0();
  return sub_1E325F69C(v6, v7);
}

void sub_1E373E96C()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v4 = v3;
  v87 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
  OUTLINED_FUNCTION_0_10();
  v74 = v7;
  v75 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v73 = v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A10, &qword_1E4297F10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v79 = v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A18, &qword_1E4297F18);
  OUTLINED_FUNCTION_0_10();
  v77 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v76 = v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A20, &qword_1E4297F20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v80 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A28, &qword_1E4297F28);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v86 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v72 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A30, &qword_1E4297F30);
  OUTLINED_FUNCTION_0_10();
  v83 = v24;
  v84 = v23;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v27 = v25 - v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_28_6();
  v92 = sub_1E3741880(v4);
  swift_getKeyPath();
  v29 = swift_allocObject();
  memcpy((v29 + 16), v2, 0xD8uLL);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1E3741A48;
  *(v30 + 24) = v29;
  sub_1E3741A84(v2, v89);
  v31 = OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A40, &qword_1E4297F60);
  sub_1E3743478(&qword_1ECF28A48);
  sub_1E3741ABC(qword_1EE23BA70);
  sub_1E3741B00();
  v82 = v0;
  sub_1E4203B34();
  if (*(v2 + 160) && (*(v2 + 176) & 1) != 0)
  {
    v33 = *(v2 + 192);
    if (v33)
    {
      v34 = *(v2 + 112);
      v35 = *(v2 + 120);
      v36 = *(v2 + 128);
      v37 = *(v2 + 136);
      v38 = *(v2 + 144);
      v39 = *(v2 + 152);

      sub_1E3EB9AB8(&v92);
      v89[0] = v34;
      v89[1] = v35;
      v89[2] = v36 & 1;
      v89[3] = v37;
      v89[4] = v38;
      v90 = v39 & 1;
      v91 = 0;
      v40 = v73;
      sub_1E382A9B4(v33, v89, 0, v73);
      v42 = *(v2 + 96);
      v41 = *(v2 + 104);
      if (v42 && ((*(v41 + 8))(v93, *v42, v41), (v94 & 1) == 0))
      {
        v45.n128_u64[0] = v93[2];
        v46.n128_u64[0] = v93[3];
        v43.n128_u64[0] = v93[0];
        v44.n128_u64[0] = v93[1];
        j_nullsub_1(v43, v44, v45, v46);
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
      }

      OUTLINED_FUNCTION_3();
      v52 = v78;
      v51 = v79;
      sub_1E4202734();
      (*(v74 + 32))(v51, v40, v75);
      OUTLINED_FUNCTION_7_3(v51 + *(v52 + 36));
      if (v42 && (v53 = (*(v41 + 16))(*v42, v41)) != 0)
      {
        v54 = v53;
      }

      else
      {
        v54 = [objc_opt_self() clearColor];
      }

      v55 = sub_1E3741EEC(&unk_1ECF28AA8);
      v56 = v76;
      sub_1E39B87A4(v54, v52, v55);

      sub_1E325F69C(v51, &qword_1ECF28A10);
      v50 = v80;
      v49 = v81;
      (*(v77 + 32))(v80, v56, v81);
      v48 = 0;
    }

    else
    {
      v48 = 1;
      v50 = v80;
      v49 = v81;
    }

    __swift_storeEnumTagSinglePayload(v50, v48, 1, v49);
    sub_1E3741EA0(v50, v88, &qword_1ECF28A20, &qword_1E4297F20);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v57 = v88;
  __swift_storeEnumTagSinglePayload(v88, v47, 1, v85);
  v59 = v82;
  v58 = v83;
  v60 = *(v83 + 16);
  v61 = OUTLINED_FUNCTION_39_3();
  v62 = v84;
  v60(v61);
  v63 = v86;
  sub_1E3743538(v57, v86, &qword_1ECF28A28, &qword_1E4297F28);
  v64 = v87;
  (v60)(v87, v27, v62);
  v65 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AA0, &qword_1E4297F90) + 48);
  sub_1E3743538(v63, v65, &qword_1ECF28A28, &qword_1E4297F28);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v66, v67);
  v68 = *(v58 + 8);
  v68(v59, v62);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v69, v70);
  v71 = OUTLINED_FUNCTION_24_4();
  (v68)(v71);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E373F0B4()
{
  OUTLINED_FUNCTION_9_4();
  v7 = v6;
  v9 = v8;
  v61 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AB0, &qword_1E4297F98);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_2();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A70, &qword_1E4297F70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AB8, &qword_1E4297FA0);
  OUTLINED_FUNCTION_0_10();
  v58 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AC0, &qword_1E4297FA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8_4();
  v23 = v9[49];
  if (sub_1E373F6E0(v23, 113, v24, v25, v26, v27) & 1) != 0 || (sub_1E373F6E0(v23, 114, v28, v29, v30, v31))
  {
    v32 = sub_1E373F6E0(v23, 114, v28, v29, v30, v31);
    v33 = sub_1E383A2D0(0, 1, v32 & 1, &v69, 5.0, 6.0, 1.0, 4.0);
    if ((*(*v9 + 392))(v33) && (OUTLINED_FUNCTION_30(), (*(v34 + 176))(v73), v2 = v73[0], v3 = v73[1], v4 = v73[2], v5 = v73[3], , (v74 & 1) == 0))
    {
      v40.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v40, v41, v42, v43);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v44 = sub_1E4202734();
    LOBYTE(v67) = v72;
    v45 = v70;
    v64 = v69;
    v65 = v70;
    v46 = v71;
    v66 = v71;
    v68 = 0;
    *v1 = v69;
    *(v1 + 16) = v45;
    *(v1 + 32) = v46;
    *(v1 + 48) = v67;
    *(v1 + 56) = v44;
    *(v1 + 64) = v2;
    *(v1 + 72) = v3;
    *(v1 + 80) = v4;
    *(v1 + 88) = v5;
    *(v1 + 96) = 0;
    OUTLINED_FUNCTION_24_4();
    swift_storeEnumTagMultiPayload();
    v47 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
    OUTLINED_FUNCTION_13_29();
    OUTLINED_FUNCTION_21_1();
    sub_1E3741BFC(v49);
    v50 = sub_1E3741CB0();
    v62 = v59;
    v63 = v50;
    OUTLINED_FUNCTION_12_18();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_39_3();
    sub_1E4201F44();
  }

  else
  {
    sub_1E373DB20(v9, v0);
    v35 = *(v7 + 96);
    if (v35 && ((*(*(v7 + 104) + 8))(&v64, *v35), (v66 & 1) == 0))
    {
      v39.n128_u64[0] = *(&v65 + 1);
      v38.n128_u64[0] = v65;
      v37.n128_u64[0] = *(&v64 + 1);
      v36.n128_u64[0] = v64;
      j_nullsub_1(v36, v37, v38, v39);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    sub_1E4202734();
    (*(v13 + 32))(v17, v0, v11);
    v51 = v59;
    OUTLINED_FUNCTION_7_3(&v17[*(v59 + 36)]);
    if (*(v7 + 128))
    {
      v52 = 0.0;
    }

    else
    {
      v52 = *(v7 + 112);
    }

    v69 = *(v7 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
    sub_1E42038F4();
    v53 = *v73;
    v54 = sub_1E3741CB0();
    sub_1E3AEEBF8(v9, v51, v54, v52, v53);
    sub_1E325F69C(v17, &qword_1ECF28A70);
    (*(v58 + 16))(v1, v21, v60);
    OUTLINED_FUNCTION_24_4();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A60, &qword_1E4297F68);
    OUTLINED_FUNCTION_13_29();
    sub_1E3741BFC(v55);
    *&v69 = v51;
    *(&v69 + 1) = v54;
    OUTLINED_FUNCTION_12_18();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_24_4();
    sub_1E4201F44();
    v56 = OUTLINED_FUNCTION_47_4();
    v57(v56);
  }

  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E373F630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3741588(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E373F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1E3742F1C(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v11 == v9 && v12 == v10)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E42079A4();
  }

  return v7 & 1;
}

void sub_1E373F790()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289C8, &qword_1E4297EC8);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289D0, &qword_1E4297ED0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  if (*(v4 + 192))
  {
    if (*(v4 + 160) && (*(v4 + 176) & 1) != 0)
    {
      OUTLINED_FUNCTION_45_4();
      v20 = 2;
    }

    else
    {
      sub_1E383A2D0(0, 1, 0, &v34, 1.0, 0.0, 1.0, 4.0);
      v32 = v35;
      v33 = v34;
      v30 = v37;
      v31 = v36;
      v1 = v38;
      v2 = v39;
      v20 = v40;
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_4();
    v20 = 3;
  }

  *v0 = sub_1E4201B84();
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289D8, &qword_1E4297ED8);
  sub_1E373FA70();
  v21 = *(v4 + 96);
  if (v21 && ((*(*(v4 + 104) + 8))(v41, *v21), (v42 & 1) == 0))
  {
    v24.n128_u64[0] = v41[2];
    v25.n128_u64[0] = v41[3];
    v22.n128_u64[0] = v41[0];
    v23.n128_u64[0] = v41[1];
    j_nullsub_1(v22, v23, v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  sub_1E4202734();
  sub_1E3741EA0(v0, v16, &qword_1ECF289C8, &qword_1E4297EC8);
  OUTLINED_FUNCTION_7_3(&v16[*(v9 + 36)]);
  sub_1E3741EA0(v16, v19, &qword_1ECF289D0, &qword_1E4297ED0);
  sub_1E3743538(v19, v13, &qword_1ECF289D0, &qword_1E4297ED0);
  v26 = v32;
  *v6 = v33;
  *(v6 + 8) = v26;
  v27 = v30;
  *(v6 + 16) = v31;
  *(v6 + 24) = v27;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  *(v6 + 48) = v20;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E0, &qword_1E4297EE0);
  sub_1E3743538(v13, v6 + *(v28 + 48), &qword_1ECF289D0, &qword_1E4297ED0);
  sub_1E325F69C(v19, &qword_1ECF289D0);
  sub_1E325F69C(v13, &qword_1ECF289D0);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E373FA70()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v49 = v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E8, &qword_1E4297EE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289F0, &qword_1E4297EF0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289F8, &qword_1E4297EF8);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_28_6();
  v24 = *(v2 + 192);
  if (v24)
  {

    sub_1E3EB9AB8(&v50);
    v25 = *(v2 + 128) & 1;
    v26 = *(v2 + 152) & 1;
    v51 = *(v2 + 112);
    v52 = v25;
    v53 = *(v2 + 136);
    v54 = v26;
    sub_1E382A9B4(v24, &v51, 0, v20);

    (*(v17 + 32))(v0, v20, v15);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v27, 1, v15);
  v28 = *(v2 + 200);
  v29 = v48;
  if (v28)
  {

    if ((sub_1E39DFFC8() & 1) == 0)
    {
      sub_1E3EC24F4(v28, 0, 0, 0);
      v31 = sub_1E4202794();

      v32 = &v6[*(v29 + 36)];
      *v32 = v31;
      *(v32 + 8) = 0u;
      *(v32 + 24) = 0u;
      v32[40] = 1;
      sub_1E3741EA0(v6, v14, &qword_1ECF289E8, &qword_1E4297EE8);
      v30 = 0;
      goto LABEL_9;
    }
  }

  v30 = 1;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v14, v30, 1, v29);
  OUTLINED_FUNCTION_50_2();
  sub_1E3743538(v33, v34, v35, v36);
  OUTLINED_FUNCTION_51_5(v14, v11);
  v37 = v49;
  OUTLINED_FUNCTION_50_2();
  sub_1E3743538(v38, v39, v40, v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A00, &qword_1E4297F00);
  v43 = v37 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  OUTLINED_FUNCTION_51_5(v11, v37 + *(v42 + 64));
  OUTLINED_FUNCTION_52_4(v14);
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v44, v45);
  OUTLINED_FUNCTION_52_4(v11);
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v46, v47);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E373FE78(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v19 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    sub_1E3280A90(0, &qword_1ECF28920, 0x1E69DCE70);
    sub_1E37411B0();
    sub_1E4206664();
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
    v6 = v18;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!sub_1E42073C4() || (sub_1E3280A90(0, &qword_1ECF28920, 0x1E69DCE70), swift_dynamicCast(), (v12 = v13) == 0))
    {
LABEL_21:
      sub_1E34AF4DC(v2);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_12:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1E37400DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E3740D20(0, v1, 0);
    v4 = a1 + 56;
    v2 = v13;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AF8, &qword_1E4298010);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B00, &qword_1E4298018);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E3740D20((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + 32 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      v7[7] = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1E3740218()
{
  v1 = [v0 connectedScenes];
  sub_1E3280A90(0, &qword_1ECF28920, 0x1E69DCE70);
  sub_1E37411B0();
  OUTLINED_FUNCTION_32_0();
  v2 = sub_1E4206624();

  sub_1E373FE78(v2, v3);
  v5 = v4;

  v6 = 0;
  v40 = v5 & 0xC000000000000001;
  v41 = sub_1E32AE9B0(v5);
  v36 = v5;
  v38 = v5 + 32;
  v39 = v5 & 0xFFFFFFFFFFFFFF8;
  v7 = MEMORY[0x1E69E7CC0];
  while (v6 != v41)
  {
    if (v40)
    {
      v8 = MEMORY[0x1E6911E60](v6, v36);
    }

    else
    {
      if (v6 >= *(v39 + 16))
      {
        goto LABEL_49;
      }

      v8 = *(v38 + 8 * v6);
    }

    v9 = v8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    v11 = [v8 windows];
    sub_1E3280A90(0, &qword_1ECF28928, 0x1E69DD2E8);
    v12 = sub_1E42062B4();

    if (v12 >> 62)
    {
      v13 = sub_1E4207384();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v7 >> 62;
    if (v7 >> 62)
    {
      v15 = sub_1E4207384();
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_50;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v14)
      {
LABEL_17:
        sub_1E4207384();
      }

LABEL_18:
      v7 = sub_1E4207514();
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_19;
    }

    if (v14)
    {
      goto LABEL_17;
    }

    v17 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_19:
    v18 = *(v17 + 16);
    v19 = (*(v17 + 24) >> 1) - v18;
    v20 = v17 + 8 * v18;
    v42 = v17;
    if (v12 >> 62)
    {
      v22 = sub_1E4207384();
      if (!v22)
      {
        goto LABEL_33;
      }

      v23 = v22;
      v24 = sub_1E4207384();
      if (v19 < v24)
      {
        goto LABEL_56;
      }

      if (v23 < 1)
      {
        goto LABEL_57;
      }

      v21 = v24;
      v37 = v7;
      v25 = v20 + 32;
      sub_1E3743478(&unk_1ECF28938);
      for (i = 0; i != v23; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28930, &qword_1E4297CD8);
        v27 = sub_1E374111C(v43, i, v12);
        v29 = *v28;
        (v27)(v43, 0);
        *(v25 + 8 * i) = v29;
      }

      v7 = v37;
LABEL_29:

      if (v21 < v13)
      {
        goto LABEL_51;
      }

      if (v21 > 0)
      {
        v30 = *(v42 + 16);
        v10 = __OFADD__(v30, v21);
        v31 = v30 + v21;
        if (v10)
        {
          goto LABEL_54;
        }

        *(v42 + 16) = v31;
      }
    }

    else
    {
      v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        if (v19 < v21)
        {
          goto LABEL_55;
        }

        swift_arrayInitWithCopy();
        goto LABEL_29;
      }

LABEL_33:

      if (v13 > 0)
      {
        goto LABEL_51;
      }
    }
  }

  v32 = sub_1E32AE9B0(v7);
  for (j = 0; v32 != j; ++j)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1E6911E60](j, v7);
    }

    else
    {
      if (j >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v34 = *(v7 + 8 * j + 32);
    }

    v35 = v34;
    if (__OFADD__(j, 1))
    {
      goto LABEL_52;
    }

    if ([v34 isKeyWindow])
    {
      break;
    }
  }
}

void sub_1E3740680()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_1E3740218();
  v2 = v1;

  if (v2)
  {
    [v2 safeAreaInsets];
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_6();
}

void sub_1E3740710(void *a1@<X8>)
{
  sub_1E3740680();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1E374073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E374148C(a1, a2, a3);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1E37407A0()
{
  v1 = sub_1E4201AB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[32] == 1)
  {
    return *v0;
  }

  v6 = sub_1E4206804();
  v7 = sub_1E42026D4();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = *&v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1E3270FC8(0x65736E4965676445, 0xEA00000000007374, &v10);
    _os_log_impl(&dword_1E323F000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E69143B0](v9, -1, -1);
    MEMORY[0x1E69143B0](v8, -1, -1);
  }

  sub_1E4201AA4();
  swift_getAtKeyPath();
  sub_1E325F69C(v0, &unk_1ECF289C0);
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t sub_1E3740994()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

char *sub_1E37409F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C4E0, &qword_1E4297EC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1E3740AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E37414E0(a1, a2, a3);
  v4 = sub_1E4205DA4();
  return sub_1E3740E70(a1, v4, v5);
}

unint64_t sub_1E3740B5C()
{
  result = qword_1ECF288E8;
  if (!qword_1ECF288E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF288D8, &qword_1E4297C80);
    sub_1E3743478(&unk_1ECF288F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF288E8);
  }

  return result;
}

unint64_t sub_1E3740C14()
{
  result = qword_1ECF28908;
  if (!qword_1ECF28908)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28900, &qword_1E4297C98);
    sub_1E3740CCC(v1, v2, v3);
    sub_1E3743478(&unk_1ECF28910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28908);
  }

  return result;
}

unint64_t sub_1E3740CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2883B8;
  if (!qword_1EE2883B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883B8);
  }

  return result;
}

void *sub_1E3740D20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3740D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3740D40(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B08, &unk_1E4298020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B00, &qword_1E4298018);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E3740E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  for (i = a2 & v4; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1E3741534(a1, a2, a3);
    a1 = sub_1E4205E84();
    if (a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E3740F30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4201814();
  *a1 = result;
  return result;
}

char *sub_1E3740F88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3741090(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [a3 localizedStringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1E4205F14();

  return v6;
}

void (*sub_1E374111C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1E34AF588(a3);
  sub_1E34AF4E4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1E6911E60](a2, a3);
  }

  *a1 = v7;
  return sub_1E37411A8;
}

unint64_t sub_1E37411B0()
{
  result = qword_1ECF36410;
  if (!qword_1ECF36410)
  {
    sub_1E3280A90(255, &qword_1ECF28920, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36410);
  }

  return result;
}

uint64_t sub_1E3741248(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_1E3741288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
      *(result + 216) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E374130C()
{
  result = qword_1ECF28940;
  if (!qword_1ECF28940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28878, &qword_1E4297C30);
    sub_1E3743478(&unk_1ECF28948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28940);
  }

  return result;
}

unint64_t sub_1E37413C4()
{
  result = qword_1ECF28988;
  if (!qword_1ECF28988)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28990, &unk_1E429CCF0);
    sub_1E3740CCC(v1, v2, v3);
    sub_1E3743478(&qword_1EE288788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28988);
  }

  return result;
}

unint64_t sub_1E374148C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF289A0;
  if (!qword_1ECF289A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF289A0);
  }

  return result;
}

unint64_t sub_1E37414E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE283390;
  if (!qword_1EE283390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283390);
  }

  return result;
}

unint64_t sub_1E3741534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE283380;
  if (!qword_1EE283380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283380);
  }

  return result;
}

unint64_t sub_1E3741588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287F98;
  if (!qword_1EE287F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287F98);
  }

  return result;
}

void *sub_1E37415DC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v7 = swift_allocObject();
    v8 = 2 * ((_swift_stdlib_malloc_size(v7) - 32) / 32);
    v7[2] = v6;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v10 = v7 + 4;
  v11 = v8 >> 1;
  v36 = v5;
  if (v6)
  {
    v12 = 0;
    v11 -= v6;
    v13 = v6;
    do
    {
      v14 = *(v3 + v12 + 40);
      v15 = *(v2 + v12 + 32);
      v16 = *(v2 + v12 + 40);
      *v10 = *(v3 + v12 + 32);
      v10[1] = v14;
      v10[2] = v15;
      v10[3] = v16;
      v10 += 4;

      v12 += 16;
      --v13;
    }

    while (v13);
    v5 = v36;
  }

  v34 = v4;
  v35 = 16 * v6;
  while (1)
  {
    if (v4 == v6)
    {
LABEL_35:
      v31 = v7[3];
      if (v31 >= 2)
      {
        v32 = v31 >> 1;
        v30 = __OFSUB__(v32, v11);
        v33 = v32 - v11;
        if (v30)
        {
          goto LABEL_44;
        }

        v7[2] = v33;
      }

      return v7;
    }

    if (v6 >= v4)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_40;
    }

    if (v5 == v6)
    {
      goto LABEL_35;
    }

    if (v6 >= v5)
    {
      goto LABEL_41;
    }

    v17 = *(v3 + v35 + 32);
    v18 = *(v3 + v35 + 40);
    v37 = v2;
    v19 = v2 + v35;
    v20 = *(v2 + v35 + 32);
    v21 = *(v19 + 40);
    if (v11)
    {

      v22 = v7;
    }

    else
    {
      v23 = v7[3];
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_43;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
      v22 = swift_allocObject();
      v26 = (_swift_stdlib_malloc_size(v22) - 32) / 32;
      v22[2] = v25;
      v22[3] = 2 * v26;
      v27 = v22 + 4;
      v28 = v7[3] >> 1;
      v10 = &v22[4 * v28 + 4];
      v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;
      if (v7[2])
      {
        if (v22 != v7 || v27 >= &v7[4 * v28 + 4])
        {
          memmove(v27, v7 + 4, 32 * v28);
        }

        v7[2] = 0;
      }

      else
      {
      }
    }

    v30 = __OFSUB__(v11--, 1);
    if (v30)
    {
      goto LABEL_42;
    }

    *v10 = v17;
    v10[1] = v18;
    v10[2] = v20;
    v10[3] = v21;
    v10 += 4;
    ++v6;
    v5 = v36;
    v2 = v37 + 16;
    v3 += 16;
    v7 = v22;
    v4 = v34;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void *sub_1E3741880(unint64_t a1)
{
  v1 = a1;
  result = sub_1E32AE9B0(a1);
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  v27 = v1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x1E6911E60](v4, v1);
      v10 = result;
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B10, &qword_1E429FF10);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      v1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E3741A3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

unint64_t sub_1E3741ABC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3741B00()
{
  result = qword_1ECF28A50;
  if (!qword_1ECF28A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A40, &qword_1E4297F60);
    sub_1E3741BFC(&unk_1ECF28A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A70, &qword_1E4297F70);
    sub_1E3741CB0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28A50);
  }

  return result;
}

unint64_t sub_1E3741BFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v8 = v5();
    result = OUTLINED_FUNCTION_16_7(v8, v9, v10, v11, v12, v13, v14, v15, v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3741C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF28A68;
  if (!qword_1ECF28A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28A68);
  }

  return result;
}

unint64_t sub_1E3741CB0()
{
  result = qword_1ECF28A78;
  if (!qword_1ECF28A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A70, &qword_1E4297F70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A80, &qword_1E4297F78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A88, &qword_1E4297F80);
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28A90, &qword_1E4297F88);
    sub_1E3741E4C(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3743478(&unk_1ECF28A98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28A78);
  }

  return result;
}

unint64_t sub_1E3741E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE280E30[0];
  if (!qword_1EE280E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE280E30);
  }

  return result;
}

uint64_t sub_1E3741EA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return v4;
}

unint64_t sub_1E3741EEC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v7 = OUTLINED_FUNCTION_18_2(v6);
    result = OUTLINED_FUNCTION_16_7(v7, v8, v9, v10, v11, v12, v13, v14, v7);
    atomic_store(result, v1);
  }

  return result;
}

void sub_1E3741FF0()
{
  OUTLINED_FUNCTION_31_1();
  v136 = v1;
  v2 = *(v0 + 24);
  __src = *(v0 + 16);
  v3 = (*(*v2 + 464))();
  v140 = v2;
  if (!v3)
  {
    v15 = 0;
    v11 = 0;
    goto LABEL_24;
  }

  v4 = v3;
  v5 = sub_1E32AE9B0(v3);
  v6 = 0;
  v142 = v4 & 0xC000000000000001;
  v7 = &qword_1F5D5CE68;
  while (1)
  {
    if (v5 == v6)
    {

      v15 = 0;
      v11 = 0;
LABEL_23:
      v2 = v140;
      goto LABEL_24;
    }

    if (v142)
    {
      v14 = OUTLINED_FUNCTION_38_0();
      v8 = MEMORY[0x1E6911E60](v14);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_156;
      }
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_155;
    }

    v11 = v8;
    v144 = *(v8 + 98);
    *&v143[4] = 261;
    sub_1E3742F1C(v8, v9, v10);
    OUTLINED_FUNCTION_47_4();
    sub_1E4206254();
    OUTLINED_FUNCTION_47_4();
    sub_1E4206254();
    if (v145 == v149 && v146 == v150)
    {
      break;
    }

    v13 = sub_1E42079A4();

    if (v13)
    {
      goto LABEL_18;
    }

    ++v6;
  }

LABEL_18:

  v16 = *(*v11 + 488);

  v18 = v16(v17);

  if (!v18)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v15 = sub_1E373E010(17, v18, v19);

  v2 = v140;
  if (v15 && *v15 != _TtC8VideosUI13TextViewModel)
  {

    v15 = 0;
  }

LABEL_24:
  v147 = &unk_1F5D5D528;
  v148 = &off_1F5D5C858;
  LOBYTE(v145) = 0;
  v20 = type metadata accessor for ViewModel();
  v21 = j__OUTLINED_FUNCTION_18();
  v22 = sub_1E39C3418(&v145, v21 & 1, v11);
  __swift_destroy_boxed_opaque_existential_1(&v145);
  if (v15)
  {

    v132 = sub_1E3C27024();
    v138 = v23;
  }

  else
  {
    v132 = 0;
    v138 = 0;
  }

  v134 = v15;
  v135 = v11;
  v137 = v20;
  if ((v22 & 1) != 0 && (v24 = __src[26]) != 0)
  {
    v139 = sub_1E3741090(0xD00000000000002ALL, 0x80000001E4259AF0, v24);
    v142 = v25;
  }

  else
  {
    v139 = 0;
    v142 = 0;
  }

  v26 = (*(*v2 + 464))();
  if (v26)
  {
    v4 = v26;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v149 = MEMORY[0x1E69E7CC0];
  v27 = sub_1E32AE9B0(v4);
  v28 = 0;
  v7 = v4 & 0xC000000000000001;
  while (2)
  {
    if (v27 == v28)
    {

      v4 = v149;
      v30 = sub_1E32AE9B0(v149);
      v31 = 0;
      v7 = v4 & 0xC000000000000001;
      v127 = "gs.Accessibility.Column";
      if (v142)
      {
        v32 = v139;
      }

      else
      {
        v32 = 0;
      }

      v33 = 0xE000000000000000;
      if (v142)
      {
        v33 = v142;
      }

      v130 = v33;
      v131 = v32;
      v139 = MEMORY[0x1E69E7CC0];
      v128 = xmmword_1E4297BD0;
      v133 = xmmword_1E4297BE0;
      while (1)
      {
        while (1)
        {
          if (v30 == v31)
          {

            OUTLINED_FUNCTION_36();
            v64 = (*(v63 + 1040))();
            if (!v64)
            {
              v67 = MEMORY[0x1E69E7CC0];
              goto LABEL_103;
            }

            v4 = v64;
            v7 = v140;
            if (!sub_1E32AE9B0(v64))
            {

              v67 = MEMORY[0x1E69E7CC0];
              goto LABEL_105;
            }

            if ((v4 & 0xC000000000000001) != 0)
            {
              goto LABEL_158;
            }

            if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v65 = *(v4 + 32);

            goto LABEL_88;
          }

          if (v7)
          {
            v35 = MEMORY[0x1E6911E60](v31, v4);
            v34 = v35;
          }

          else
          {
            if (v31 >= *(v4 + 16))
            {
              goto LABEL_148;
            }

            v34 = *(v4 + 8 * v31 + 32);
          }

          v38 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_147;
          }

          v39 = *(v34 + 98);
          LOWORD(v145) = v39;
          LOWORD(v149) = 25;
          sub_1E3741534(v35, v36, v37);
          if ((sub_1E4205E84() & 1) == 0 && *v34 == _TtC8VideosUI13TextViewModel)
          {
            v40 = sub_1E3C27024();
            if (v41)
            {
              break;
            }
          }

          ++v31;
        }

        v43 = v41;
        v126 = v40;
        v144 = v39;
        *&v143[4] = 23;
        sub_1E3742F1C(v40, v41, v42);
        sub_1E4206254();
        sub_1E4206254();
        if (v145 == v149 && v146 == v150)
        {
          break;
        }

        v45 = sub_1E42079A4();

        if (v45)
        {
          goto LABEL_70;
        }

LABEL_77:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = OUTLINED_FUNCTION_27();
          v139 = sub_1E3740F88(v59, v60, v61, v62);
        }

        v57 = *(v139 + 16);
        v56 = *(v139 + 24);
        if (v57 >= v56 >> 1)
        {
          v139 = sub_1E3740F88((v56 > 1), v57 + 1, 1, v139);
        }

        *(v139 + 16) = v57 + 1;
        v58 = v139 + 16 * v57;
        *(v58 + 32) = v126;
        *(v58 + 40) = v43;
        v31 = v38;
      }

LABEL_70:
      if (!v138)
      {
        goto LABEL_77;
      }

      v46 = __src[26];
      if (v46)
      {

        sub_1E3741090(0xD000000000000025, 0x80000001E4259AC0, v46);
        if (v47)
        {
          goto LABEL_76;
        }
      }

      else
      {
      }

LABEL_76:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1E4297BD0;
      *(v48 + 32) = v126;
      *(v48 + 40) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1E4297BE0;
      *(v49 + 56) = MEMORY[0x1E69E6158];
      *(v49 + 64) = sub_1E3283528(v49, v50, v51);
      *(v49 + 32) = v132;
      *(v49 + 40) = v138;
      v52 = sub_1E4205F44();
      v54 = v53;

      *(v48 + 48) = v52;
      *(v48 + 56) = v54;
      *(v48 + 64) = v131;
      *(v48 + 72) = v130;
      v145 = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
      OUTLINED_FUNCTION_11_21();
      sub_1E3743478(&qword_1EE23B510);
      v126 = sub_1E4205DF4();
      v43 = v55;

      goto LABEL_77;
    }

    if (v7)
    {
      v29 = MEMORY[0x1E6911E60](v28, v4);
    }

    else
    {
      if (v28 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_146;
      }

      v29 = *(v4 + 8 * v28 + 32);
    }

    if (!__OFADD__(v28, 1))
    {
      LOBYTE(v144) = 2;
      (*(*v29 + 776))(&v145, &v144, &unk_1F5D5D5B8, &off_1F5D5C878);
      if (v147)
      {
        if ((swift_dynamicCast() & 1) != 0 && v144 == 1)
        {

LABEL_46:
          ++v28;
          continue;
        }
      }

      else
      {
        sub_1E325F69C(&v145, &unk_1ECF296E0);
      }

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
      goto LABEL_46;
    }

    break;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  do
  {
    __break(1u);
LABEL_158:
    v65 = MEMORY[0x1E6911E60](0, v4);
LABEL_88:

    v4 = (*(*v65 + 872))(v66);

    v67 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v145 = MEMORY[0x1E69E7CC0];
      v68 = sub_1E32AE9B0(v4);
      v69 = 0;
      v7 = v4 & 0xC000000000000001;
      while (v68 != v69)
      {
        if (v7)
        {
          v91 = OUTLINED_FUNCTION_38_0();
          v71 = MEMORY[0x1E6911E60](v91);
          v70 = v71;
        }

        else
        {
          if (v69 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_154;
          }

          v70 = *(v4 + 8 * v69 + 32);
        }

        if (__OFADD__(v69, 1))
        {
          goto LABEL_153;
        }

        v74 = *(v70 + 98);
        LOWORD(v149) = v74;
        v144 = 114;
        v75 = sub_1E3741534(v71, v72, v73);
        v83 = OUTLINED_FUNCTION_41_16(v75, v76, v77, v78, v79, v80, v81, v82, v124, v125, v126, v127, v128, *(&v128 + 1), v129, v130, v131, v132, v133, *(&v133 + 1), v134, v135, v136, v137, v138, v139, v140, __src, v142, *v143, *&v143[4], v144);
        if (v83 & 1) != 0 || (LOWORD(v149) = v74, (OUTLINED_FUNCTION_41_16(v83, v84, v85, v86, v87, v88, v89, v90, v124, v125, v126, v127, v128, *(&v128 + 1), v129, v130, v131, v132, v133, *(&v133 + 1), v134, v135, v136, v137, v138, v139, v140, __src, v142, *v143, *&v143[4], 113)))
        {
        }

        else
        {
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          sub_1E4207554();
        }

        ++v69;
      }

      v67 = v145;
LABEL_103:
      v7 = v140;
    }

LABEL_105:
    v4 = sub_1E32AE9B0(v67);
    v92 = 0;
    while (1)
    {
      if (v4 == v92)
      {
        v97 = 0;
        goto LABEL_117;
      }

      if ((v67 & 0xC000000000000001) != 0)
      {
        v96 = OUTLINED_FUNCTION_35_5();
        v93 = MEMORY[0x1E6911E60](v96);
      }

      else
      {
        if (v92 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_149;
        }

        v93 = *(v67 + 8 * v92 + 32);
      }

      v94 = static ViewModel.== infix(_:_:)(v93, v7);

      if (v94)
      {
        break;
      }

      if (__OFADD__(v92++, 1))
      {
        goto LABEL_150;
      }
    }

    v97 = v92;
LABEL_117:

    v98 = __src[26];
    if (!v98 || (sub_1E3741090(0xD000000000000024, 0x80000001E4259A60, v98), !v99))
    {
    }

    if (v4 == v92)
    {

      v101 = 0;
      v102 = 0xE000000000000000;
      goto LABEL_124;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v103 = swift_allocObject();
    *(v103 + 16) = v133;
  }

  while (__OFADD__(v97, 1));
  v104 = MEMORY[0x1E69E65A8];
  *(v103 + 56) = MEMORY[0x1E69E6530];
  *(v103 + 64) = v104;
  *(v103 + 32) = v97 + 1;
  v101 = sub_1E4205F44();
  v102 = v105;

LABEL_124:
  if (!(*(*__src[11] + 968))(v100) || (OUTLINED_FUNCTION_30(), v107 = (*(v106 + 464))(), , !v107))
  {
    v109 = MEMORY[0x1E69E7CC0];
    goto LABEL_144;
  }

  v140 = v101;
  v142 = v102;
  v108 = sub_1E32AE9B0(v107);
  v7 = 0;
  v109 = MEMORY[0x1E69E7CC0];
  while (v108 != v7)
  {
    if ((v107 & 0xC000000000000001) != 0)
    {
      v110 = MEMORY[0x1E6911E60](v7, v107);
    }

    else
    {
      if (v7 >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_152;
      }

      v110 = *(v107 + 8 * v7 + 32);
    }

    v4 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_151;
    }

    if (*v110 != _TtC8VideosUI13TextViewModel)
    {

LABEL_140:
      ++v7;
      continue;
    }

    v111 = sub_1E3C27024();
    v113 = v112;

    if (!v113)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = OUTLINED_FUNCTION_27();
      v109 = sub_1E3740F88(v117, v118, v119, v109);
    }

    v115 = *(v109 + 2);
    v114 = *(v109 + 3);
    if (v115 >= v114 >> 1)
    {
      v109 = sub_1E3740F88((v114 > 1), v115 + 1, 1, v109);
    }

    *(v109 + 2) = v115 + 1;
    v116 = &v109[16 * v115];
    *(v116 + 4) = v111;
    *(v116 + 5) = v113;
    ++v7;
  }

  v102 = v142;
LABEL_144:
  v120 = sub_1E37415DC(v139, v109);

  v121 = sub_1E37400DC(v120);

  *v136 = sub_1E4201B84();
  *(v136 + 8) = 0;
  *(v136 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AC8, qword_1E4297FB0);
  v122 = *(v121 + 16);
  v149 = 0;
  v150 = v122;
  swift_getKeyPath();
  v123 = swift_allocObject();
  memcpy(v123 + 2, __src, 0xD8uLL);
  v123[29] = v121;
  v123[30] = v101;
  v123[31] = v102;
  sub_1E3741A84(__src, &v145);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD8, &qword_1E4297FE8);
  sub_1E37432DC();
  sub_1E37433BC();
  sub_1E4203B34();

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3742F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE283370;
  if (!qword_1EE283370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283370);
  }

  return result;
}

uint64_t sub_1E3742F70(unint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 224);
  v4 = *(v1 + 232);
  if (!v3 || (result = sub_1E3741090(0xD000000000000027, 0x80000001E4259A90, v3), !v6))
  {
  }

  v7 = (v4 + 32 * v2);
  if (!v2)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v2 < *(v4 + 16))
  {
    v8 = v7[6];
    v9 = v7[7];

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750, &unk_1E4297FF0);
    result = swift_initStackObject();
    *(result + 16) = xmmword_1E4297BD0;
    if (v2 < *(v4 + 16))
    {
      v10 = result;
      v11 = v7[5];
      *(result + 32) = v7[4];
      *(result + 40) = v11;
      *(result + 48) = v8;
      *(result + 56) = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1E4297BE0;
      v13 = MEMORY[0x1E69E65A8];
      *(v12 + 56) = MEMORY[0x1E69E6530];
      *(v12 + 64) = v13;
      *(v12 + 32) = v2 + 1;

      v14 = sub_1E4205F44();
      v16 = v15;

      v17 = 0;
      *(v10 + 64) = v14;
      *(v10 + 72) = v16;
      v18 = MEMORY[0x1E69E7CC0];
LABEL_11:
      v19 = v17 - 1;
      v20 = 16 * v17 + 40;
      while (1)
      {
        if (v19 == 2)
        {
          swift_setDeallocating();
          sub_1E3740994();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
          OUTLINED_FUNCTION_11_21();
          sub_1E3743478(v33);
          sub_1E4205DF4();

          sub_1E32822E0(v34, v35, v36);
          sub_1E4202C44();
          v38 = v37 & 1;

          v39 = sub_1E4202C44();
          v41 = v40;
          v43 = v42;
          sub_1E4203124();
          sub_1E37434B8(v39, v41, v43 & 1);

          v44 = OUTLINED_FUNCTION_24_4();
          sub_1E37434B8(v44, v45, v38);
        }

        if (++v19 > 2)
        {
          break;
        }

        v21 = v20 + 16;
        v22 = *(v10 + v20);
        v20 += 16;
        if (v22)
        {
          v23 = *(v10 + v21 - 24);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            v26 = OUTLINED_FUNCTION_27();
            result = sub_1E3740F88(v26, v27, v28, v18);
            v18 = result;
          }

          v24 = *(v18 + 16);
          if (v24 >= *(v18 + 24) >> 1)
          {
            OUTLINED_FUNCTION_37_6();
            result = sub_1E3740F88(v29, v30, v31, v32);
            v18 = result;
          }

          v17 = v19 + 1;
          *(v18 + 16) = v24 + 1;
          v25 = v18 + 16 * v24;
          *(v25 + 32) = v23;
          *(v25 + 40) = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1E37432DC()
{
  result = qword_1ECF28AE0;
  if (!qword_1ECF28AE0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28AD0, &qword_1E4297FE0);
    sub_1E3743368(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28AE0);
  }

  return result;
}

unint64_t sub_1E3743368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF28AE8;
  if (!qword_1ECF28AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28AE8);
  }

  return result;
}

unint64_t sub_1E37433BC()
{
  result = qword_1ECF28AF0;
  if (!qword_1ECF28AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28AD8, &qword_1E4297FE8);
    sub_1E3741ABC(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28AF0);
  }

  return result;
}

unint64_t sub_1E3743478(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E37434B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E37434C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28968, &qword_1E4297E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3743538(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return v4;
}

void *sub_1E3743588(uint64_t a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B88, &qword_1E42980B0);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - v19;
  if (!a2)
  {
    sub_1E3E37F30();
    OUTLINED_FUNCTION_0_11();
    v30(v9);

    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52[0] = v34;
      *v33 = 136315138;
      sub_1E384EE08(*(a1 + 98));
      v37 = sub_1E3270FC8(v35, v36, v52);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1E323F000, v31, v32, "SportsPlayByPlayCell: Failed to get correct cell for [%s]", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v9, v4);
    return 0;
  }

  if (*a1 != _TtC8VideosUI25SportsPlayByPlayViewModel)
  {
    v38 = a2;
    sub_1E3E37F30();
    OUTLINED_FUNCTION_0_11();
    v39(v12);
    v40 = sub_1E41FFC94();
    v41 = sub_1E4206814();
    if (os_log_type_enabled(v40, v41))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v42, v43, "SportsPlayByPlayCell: Unexpected view model type");
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v6 + 8))(v12, v4);
    return 0;
  }

  v50 = v18;
  v21 = off_1EED67040[0];

  v51 = a2;
  v23 = v21(v51, v22);
  if (!v23)
  {
LABEL_20:
    sub_1E3E37F30();
    OUTLINED_FUNCTION_0_11();
    v44(v15);
    v45 = sub_1E41FFC94();
    v46 = sub_1E4206814();
    if (os_log_type_enabled(v45, v46))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v47, v48, "SportsPlayByPlayCell: layout is missing");
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v6 + 8))(v15, v4);
    return 0;
  }

  v24 = v23;
  if (*v23 != _TtC8VideosUI22SportsPlayByPlayLayout)
  {

    goto LABEL_20;
  }

  MEMORY[0x1EEE9AC00](v23);
  *(&v50 - 2) = a1;
  *(&v50 - 1) = v24;
  v51 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B90, &qword_1E42980B8);
  sub_1E3743DF4();
  sub_1E42021C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  v26 = sub_1E4202764();
  *(inited + 32) = v26;
  v27 = sub_1E4202784();
  *(inited + 33) = v27;
  v28 = sub_1E4202744();
  *(inited + 34) = v28;
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v26)
  {
    sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v27)
  {
    sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v28)
  {
    sub_1E4202774();
  }

  v52[3] = v16;
  v52[4] = sub_1E3743ED8();
  __swift_allocate_boxed_opaque_existential_1(v52);
  sub_1E42021B4();
  (*(v50 + 8))(v20, v16);
  v29 = v51;
  MEMORY[0x1E6911580](v52);

  return a2;
}

uint64_t sub_1E3743B9C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v19 - v6);

  sub_1E39320DC(v7);
  sub_1E39320F8(v7, a2, a3);
  v8 = sub_1E4202754();
  sub_1E4200A54();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B90, &qword_1E42980B8);
  v18 = a3 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

id sub_1E3743CB0()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
}

id sub_1E3743D24(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id _s8VideosUI13VUIJetPackURLCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3743DF4()
{
  result = qword_1ECF28B98;
  if (!qword_1ECF28B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28B90, &qword_1E42980B8);
    sub_1E3743E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28B98);
  }

  return result;
}

unint64_t sub_1E3743E80()
{
  result = qword_1ECF28BA0;
  if (!qword_1ECF28BA0)
  {
    type metadata accessor for SportsPlayByPlayContentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28BA0);
  }

  return result;
}

unint64_t sub_1E3743ED8()
{
  result = qword_1ECF28BB0;
  if (!qword_1ECF28BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28B88, &qword_1E42980B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28BB0);
  }

  return result;
}

uint64_t sub_1E3743F60(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1E3743FB0(a1, a2);
  return v4;
}

uint64_t sub_1E3743FB0(uint64_t a1, void *a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v41 = v11;
  v42 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = v2;
  *(v2 + 16) = 0;
  v15 = (v2 + 16);
  *(v2 + 24) = 0;
  sub_1E327F454(a2, &v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
  type metadata accessor for EpisodeCollectionServiceRequestContext(0);
  if (swift_dynamicCast())
  {
    v16 = v45[0];
  }

  else
  {
    v16 = 0;
  }

  ViewModelKeys.rawValue.getter(5);
  sub_1E3277E60(v17, v18, a1, &v47);

  if (!v48)
  {
    sub_1E329505C(&v47);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v25 = sub_1E324FBDC();
    (*(v7 + 16))(v10, v25, v5);
    v26 = v16;

    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v47 = v30;
      *v29 = 136315138;
      v45[0] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC8, &unk_1E4298100);
      v31 = sub_1E42070D4();
      v33 = sub_1E3270FC8(v31, v32, &v47);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1E323F000, v27, v28, "EpisodeCollectionFragment:: Failed to create fragment from JSON <%s>.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E69143B0](v30, -1, -1);
      MEMORY[0x1E69143B0](v29, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v43);
    (*(v7 + 8))(v10, v5);
    return v44;
  }

  v19 = v45[0];
  if (!*(v45[0] + 16))
  {

    goto LABEL_11;
  }

  v20 = sub_1E4206BA4();
  v21 = VUISignpostLogObject(v20);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v22 = *(v42 + 8);
  v42 += 8;
  v40 = v22;
  v22(v14, v41);
  if (v16)
  {
    v23 = *(*v16 + 176);

    v23(v24);
  }

  type metadata accessor for ViewModel();
  v35 = OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_3_0(v15, v46);
  *v15 = v35;

  v48 = &type metadata for ViewModelKeys;
  v49 = &off_1F5D7BCA8;
  LOBYTE(v47) = 26;
  sub_1E3F9F164(&v47, v19, MEMORY[0x1E69E7CA0] + 8);

  if (!v45[3])
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    sub_1E329505C(v45);
LABEL_28:
    v38 = sub_1E4206B94();
    v39 = VUISignpostLogObject(v38);
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    __swift_destroy_boxed_opaque_existential_1(v43);
    v40(v14, v41);
    return v44;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v47);
    goto LABEL_28;
  }

  __swift_destroy_boxed_opaque_existential_1(&v47);
  v36 = OUTLINED_FUNCTION_2_16();

  if (!v36)
  {
LABEL_26:
    v37 = 0;
    goto LABEL_27;
  }

  result = sub_1E32AE9B0(v36);
  if (!result)
  {

    goto LABEL_26;
  }

  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1E6911E60](0, v36);
    goto LABEL_22;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v36 + 32);

LABEL_22:

LABEL_27:
    OUTLINED_FUNCTION_3_0(v2 + 24, &v47);
    *(v2 + 24) = v37;

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E374457C()
{

  return v0;
}

uint64_t sub_1E37445A4()
{
  sub_1E374457C();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E37445D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E3743F60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3744600(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0, &qword_1E429A1F0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1E328438C(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1E329504C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1E329504C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1E329504C(v31, v32);
    result = sub_1E42073F4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_1E329504C(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_1E37448C4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sub_1E4205C44();

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_1E4205C44();

LABEL_6:
  v6 = [v2 initWithDictionary:v4 andMetadataDictionary:v5];

  return v6;
}

uint64_t sub_1E37449C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 888))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3744A84(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v3;
}

uint64_t sub_1E3744AF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 936))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3744B84(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3744BFC(void *a1)
{
  OUTLINED_FUNCTION_11_3(v1 + *a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3744C70(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v7 + 16))(&v13[-v10 - 8], a1, v5, v9);
  OUTLINED_FUNCTION_11_3(v2 + *a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t sub_1E3744E04(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1E3744E58()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 984))())
  {
    OUTLINED_FUNCTION_30();
    (*(v1 + 896))();
  }
}

uint64_t sub_1E3744F10()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (!v1)
  {
    v4 = 0u;
    v5 = 0u;
    goto LABEL_8;
  }

  v3[3] = &type metadata for ViewModelKeys.Sports;
  v3[4] = &off_1F5D7BC68;
  LOBYTE(v3[0]) = 12;
  sub_1E3F9F164(v3, v1, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v3);
  if (!*(&v5 + 1))
  {
LABEL_8:
    sub_1E325F6F0(&v4, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v3[0];
  }

  else
  {
    return 0;
  }
}

void sub_1E3745060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a2;
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v12 = OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isLoading;
  LOBYTE(v70) = 1;
  sub_1E4200634();
  v13 = *(v8 + 32);
  v13(v3 + v12, v11, v6);
  v14 = OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isUnavailable;
  LOBYTE(v70) = 0;
  sub_1E4200634();
  v13(v3 + v14, v11, v6);
  *(v3 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_playerStatsViewModel) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_teamStatsViewModel) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_statsUnavailableTextViewModel) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_finalStatsUnavailableTextViewModel) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_cancellables) = MEMORY[0x1E69E7CC0];

  v68 = a3;
  v15 = sub_1E39BEDCC(v5, v69, a3);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_105;
  }

  v17 = *(*v15 + 464);
  v18 = *v15 + 464;
  v19 = swift_retain_n();
  v20 = v17(v19);
  v69 = v16;
  v66 = v18;
  v67 = v17;
  if (v20)
  {
    v21 = v20;
    sub_1E32AE9B0(v20);
    OUTLINED_FUNCTION_9_15();
    while (1)
    {
      if (a3 == v16)
      {

        v28 = 0;
        goto LABEL_21;
      }

      if (v13)
      {
        v23 = MEMORY[0x1E6911E60](v16, v21);
        v22 = v23;
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_113;
        }

        v22 = *(v21 + 8 * v16 + 32);
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_112;
      }

      LOWORD(v78) = *(v22 + 98);
      LOWORD(v73) = 243;
      sub_1E3742F1C(v23, v24, v25);
      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_10_15();
      if (v70 == v80 && v71 == v81)
      {
        break;
      }

      v27 = sub_1E42079A4();

      if (v27)
      {
        goto LABEL_19;
      }

      ++v16;
    }

LABEL_19:

    type metadata accessor for PlayerStatsViewModel(0);
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
    }

LABEL_21:
    v16 = v69;
    v17 = v67;
  }

  else
  {
    v28 = 0;
  }

  v29 = OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_playerStatsViewModel;
  swift_beginAccess();
  *(v16 + v29) = v28;

  v31 = v17(v30);
  if (v31)
  {
    v32 = v31;
    sub_1E32AE9B0(v31);
    OUTLINED_FUNCTION_9_15();
    while (1)
    {
      if (v28 == v16)
      {

        v39 = 0;
        goto LABEL_41;
      }

      if (v13)
      {
        v34 = MEMORY[0x1E6911E60](v16, v32);
        v33 = v34;
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_115;
        }

        v33 = *(v32 + 8 * v16 + 32);
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_114;
      }

      LOWORD(v73) = *(v33 + 98);
      LOWORD(v77) = 242;
      sub_1E3742F1C(v34, v35, v36);
      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_10_15();
      if (v70 == v78 && v71 == v79)
      {
        break;
      }

      v38 = sub_1E42079A4();

      if (v38)
      {
        goto LABEL_39;
      }

      ++v16;
    }

LABEL_39:

    type metadata accessor for TeamStatsViewModel(0);
    v39 = swift_dynamicCastClass();
    if (!v39)
    {
    }

LABEL_41:
    v16 = v69;
    v40 = &unk_1EE2AA000;
    v17 = v67;
  }

  else
  {
    v39 = 0;
    v40 = &unk_1EE2AA000;
  }

  v41 = v40[471];
  swift_beginAccess();
  *(v16 + v41) = v39;

  v43 = v17(v42);

  v44 = MEMORY[0x1E69E7CC0];
  if (!v43)
  {
    goto LABEL_60;
  }

  v77 = MEMORY[0x1E69E7CC0];
  v45 = sub_1E32AE9B0(v43);
  for (i = 0; v45 != i; ++i)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1E6911E60](i, v43);
      v47 = v48;
    }

    else
    {
      if (i >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_107;
      }

      v47 = *(v43 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      return;
    }

    v76 = *(v47 + 98);
    v75 = 23;
    sub_1E3742F1C(v48, v49, v50);
    sub_1E4206254();
    sub_1E4206254();
    if (v70 == v73 && v71 == v74)
    {
    }

    else
    {
      v52 = sub_1E42079A4();

      if ((v52 & 1) == 0)
      {

        continue;
      }
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
  }

  v44 = v77;
LABEL_60:
  v53 = sub_1E32AE9B0(v44);
  v54 = 0;
  v55 = v44 & 0xC000000000000001;
  while (2)
  {
    if (v53 == v54)
    {
      goto LABEL_81;
    }

    if (v55)
    {
      v56 = MEMORY[0x1E6911E60](v54, v44);
    }

    else
    {
      if (v54 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_109;
      }

      v56 = *(v44 + 8 * v54 + 32);
    }

    if (__OFADD__(v54, 1))
    {
      goto LABEL_108;
    }

    LOBYTE(v73) = 7;
    OUTLINED_FUNCTION_8();
    (*(v57 + 776))(&v70, &v73, &unk_1F5D5DD98, &off_1F5D5CA38);
    if (!v72)
    {
      sub_1E325F6F0(&v70, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_75;
    }

    if (!swift_dynamicCast())
    {
LABEL_75:

LABEL_76:
      ++v54;
      continue;
    }

    break;
  }

  if (v73 != 0xD000000000000010 || 0x80000001E4259C50 != v74)
  {
    v59 = sub_1E42079A4();

    if (v59)
    {
      goto LABEL_79;
    }

    goto LABEL_76;
  }

LABEL_79:
  if (*v56 != _TtC8VideosUI13TextViewModel)
  {

LABEL_81:
    v56 = 0;
  }

  *(v69 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_statsUnavailableTextViewModel) = v56;

  v60 = 0;
  while (2)
  {
    if (v53 == v60)
    {

      v61 = 0;
      v65 = v69;
      goto LABEL_104;
    }

    if (v55)
    {
      v61 = MEMORY[0x1E6911E60](v60, v44);
    }

    else
    {
      if (v60 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_111;
      }

      v61 = *(v44 + 8 * v60 + 32);
    }

    if (__OFADD__(v60, 1))
    {
      goto LABEL_110;
    }

    LOBYTE(v73) = 7;
    OUTLINED_FUNCTION_8();
    (*(v62 + 776))(&v70, &v73, &unk_1F5D5DD98, &off_1F5D5CA38);
    if (!v72)
    {
      sub_1E325F6F0(&v70, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_97;
    }

    if (!swift_dynamicCast())
    {
LABEL_97:

LABEL_98:
      ++v60;
      continue;
    }

    break;
  }

  if (v73 != 0xD000000000000015 || 0x80000001E4259C70 != v74)
  {
    v64 = sub_1E42079A4();

    if (v64)
    {
      goto LABEL_102;
    }

    goto LABEL_98;
  }

LABEL_102:

  v65 = v69;
  if (*v61 != _TtC8VideosUI13TextViewModel)
  {

    v61 = 0;
  }

LABEL_104:
  *(v65 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_finalStatsUnavailableTextViewModel) = v61;

  sub_1E3745E14();

LABEL_105:
}

uint64_t sub_1E3745A58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD8, &qword_1E4298210);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BE0, &qword_1E4298218);
  OUTLINED_FUNCTION_0_10();
  v29 = v11;
  v30 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v32[0] = a1;
  sub_1E32ADE38();
  v16 = sub_1E4206A04();
  v32[3] = v16;
  v17 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BE8, &unk_1E4298220);
  OUTLINED_FUNCTION_1_37();
  sub_1E32752B0(v18, v19, &unk_1E4298220, v20);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F6F0(v4, &unk_1ECF2D2B0, &unk_1E429D3D0);

  OUTLINED_FUNCTION_3_15();
  sub_1E32752B0(v21, &qword_1ECF28BD8, &qword_1E4298210, v22);
  sub_1E42007B4();
  (*(v7 + 8))(v10, v5);
  swift_allocObject();
  v23 = v31;
  swift_weakInit();
  sub_1E32752B0(&qword_1ECF28C00, &qword_1ECF28BE0, &qword_1E4298218, MEMORY[0x1E695BDE0]);
  v24 = v29;
  sub_1E4200844();

  (*(v30 + 8))(v15, v24);
  OUTLINED_FUNCTION_11_3(v23 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_cancellables, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580, &qword_1E42A9B90);
  OUTLINED_FUNCTION_2_17();
  sub_1E32752B0(v25, &qword_1ECF32580, &qword_1E42A9B90, v26);
  sub_1E42004D4();
  swift_endAccess();
}

uint64_t sub_1E3745E14()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA90, &unk_1E42982A0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v37 = v0;
  sub_1E3744F10();
  if (v16)
  {
    sub_1E4205004();
    v17 = sub_1E4204FF4();
    v18 = sub_1E4204FB4();

    v38[0] = v18;
    sub_1E32ADE38();
    v19 = sub_1E4206A04();
    v38[3] = v19;
    v20 = sub_1E42069A4();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C08, &unk_1E42E3A90);
    OUTLINED_FUNCTION_1_37();
    sub_1E32752B0(v21, v22, &unk_1E42E3A90, v23);
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F6F0(v9, &unk_1ECF2D2B0, &unk_1E429D3D0);

    swift_allocObject();
    v24 = v37;
    swift_weakInit();
    OUTLINED_FUNCTION_3_15();
    sub_1E32752B0(v25, v26, v27, v28);
    sub_1E4200844();

    (*(v12 + 8))(v15, v10);
    OUTLINED_FUNCTION_11_3(v24 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel_cancellables, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580, &qword_1E42A9B90);
    OUTLINED_FUNCTION_2_17();
    sub_1E32752B0(v29, &qword_1ECF32580, &qword_1E42A9B90, v30);
    sub_1E42004D4();
    swift_endAccess();
  }

  else
  {
    v32 = sub_1E3E37F30();
    (*(v3 + 16))(v6, v32, v1);
    v33 = sub_1E41FFC94();
    v34 = sub_1E42067E4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1E323F000, v33, v34, "SportStatsViewModel: Error: Failed to observe subscription (canonicalId was nil).", v35, 2u);
      MEMORY[0x1E69143B0](v35, -1, -1);
    }

    return (*(v3 + 8))(v6, v1);
  }
}

uint64_t sub_1E3746230(uint64_t a1)
{
  v45 = sub_1E4204DD4();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v35 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E3746CB0(0, v7, 0);
  v8 = v50;
  result = sub_1E3746DC4(a1);
  v12 = 0;
  v13 = a1 + 56;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48);
      v17 = v8;
      v18 = v42;
      v19 = v43;
      v20 = *(v42 + 16);
      v21 = v45;
      v20(v43, v16 + *(v42 + 72) * result, v45);
      v22 = v44;
      v20(v44, v19, v21);
      v23 = sub_1E3D5C7A0(v22);
      v24 = *(v18 + 8);
      v8 = v17;
      result = v24(v19, v21);
      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1E3746CB0((v25 > 1), v26 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v26 + 1;
      *(v8 + v26 + 32) = v23;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E3746E04(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E37465AC()
{
  v1 = OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isLoading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isUnavailable, v2);
}

uint64_t sub_1E374668C()
{
  v0 = ViewModel.deinit();
  v1 = OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isLoading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI19SportStatsViewModel__isUnavailable, v2);

  return v0;
}

uint64_t sub_1E374676C()
{
  v0 = sub_1E374668C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E37467C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SportStatsViewModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

unint64_t sub_1E3746800()
{
  result = qword_1EE23B1E0;
  if (!qword_1EE23B1E0)
  {
    sub_1E32ADE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B1E0);
  }

  return result;
}

uint64_t sub_1E3746858(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = 0;
    v4 = *(v1 + 16);
    while (1)
    {
      if (v4 == v3)
      {
      }

      if (v3 >= *(v1 + 16))
      {
        break;
      }

      v5 = v3 + 1;
      result = OUTLINED_FUNCTION_189_0(*(v1 + 32 + v3));
      v3 = v5;
      if (result)
      {
        OUTLINED_FUNCTION_8();
        if ((*(v6 + 888))())
        {
          sub_1E3744B70(1);
          sub_1E3744A44(0);
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for SportStatsViewModel(uint64_t a1)
{
  result = qword_1EE29E400;
  if (!qword_1EE29E400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3746990(uint64_t a1)
{
  sub_1E32A995C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3746A40(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_1E42056D4();
    v5 = sub_1E3746230(v4);

    v6 = 0;
    v7 = *(v5 + 16);
    do
    {
      v8 = v7 != v6;
      if (v7 == v6)
      {
        break;
      }

      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v9 = v6 + 1;
      result = OUTLINED_FUNCTION_189_0(*(v5 + v6 + 32));
      v6 = v9;
    }

    while ((result & 1) == 0);

    v11 = (*v3 + 1008);
    v12 = *v11;
    v13 = (*v11)(v10);
    if (v13)
    {
      OUTLINED_FUNCTION_30();
      (*(v14 + 1080))(v1);
    }

    if (v12(v13))
    {
      OUTLINED_FUNCTION_30();
      v8 = (*(v15 + 1016))();
    }

    v16 = sub_1E3744B70(v8 & 1);
    v17 = (*(*v3 + 984))(v16);
    if (v17)
    {
      v18 = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      v19 = sub_1E4200664();
      (*(*v18 + 928))(v1);

      v19(&v20, 0);
    }

    sub_1E3744A44(0);
  }

  return result;
}

char *sub_1E3746CB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3746CD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3746CD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C10, &unk_1E42982B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E3746E04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E3746E10@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E42012F4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E374709C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF28C20, &qword_1E429F7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4201324();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0x694474756F79614CLL, 0xEF6E6F6974636572, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t type metadata accessor for SportsScoreboardView(uint64_t a1)
{
  result = qword_1EE29C850;
  if (!qword_1EE29C850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3747414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

uint64_t sub_1E37474CC@<X0>(uint64_t a1@<X0>, const void *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for SportsScoreboardView(0);
  v8 = v7[5];
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  *(a4 + v7[6]) = a1;
  memcpy(a4 + v7[7], a3, 0xC3uLL);
  v9 = (a4 + v7[8]);

  sub_1E3743538(a3, &v15, &qword_1ECF28C28, &qword_1E4298330);
  type metadata accessor for SportsScoreboardLayout();
  OUTLINED_FUNCTION_9_16();
  sub_1E374A938(v10, v11, &unk_1E42B10C0);

  *v9 = sub_1E42010C4();
  v9[1] = v12;
  v13 = sub_1E39DF25C();
  sub_1E325F69C(a3, &qword_1ECF28C28);

  *(a4 + v7[9]) = v13;
  return result;
}

void sub_1E3747664()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v57 = v3;
  sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v55 = v5;
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v54 = (v7 - v6);
  v8 = type metadata accessor for SportsScoreboardView(0);
  OUTLINED_FUNCTION_0_10();
  v49 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v50 = v11;
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C30, &qword_1E4298338) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C38, &qword_1E4298340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C40, &qword_1E4298348);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v48 = v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C48, &qword_1E4298350);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v52 = v20;
  sub_1E3747C24();
  v21 = sub_1E41F0A84();
  v22 = *v21;
  v23 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C50, &qword_1E4298358) + 36)];
  *v23 = v22;
  *(v23 + 1) = sub_1E37489F4;
  *(v23 + 2) = 0;
  v24 = sub_1E4201D44();
  v25 = *v21;
  v26 = &v15[*(v12 + 44)];
  sub_1E3748A1C(v26);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C58, &qword_1E4298360) + 36));
  *v27 = v24;
  v27[1] = v25;
  v53 = v8;
  memcpy(v59, (v2 + *(v8 + 28)), 0xC3uLL);
  sub_1E3748B78(v59);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v15, v1, &qword_1ECF28C30, &qword_1E4298338);
  memcpy((v1 + *(v45 + 36)), v58, 0x70uLL);
  v28 = v51;
  sub_1E374AC8C(v2, v51, type metadata accessor for SportsScoreboardView);
  v29 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v30 = swift_allocObject();
  sub_1E3748B9C(v28, v30 + v29);
  v31 = v48;
  sub_1E3741EA0(v1, v48, &qword_1ECF28C38, &qword_1E4298340);
  v32 = (v31 + *(v46 + 36));
  *v32 = sub_1E3748C00;
  v32[1] = v30;
  v32[2] = 0;
  v32[3] = 0;
  sub_1E374AC8C(v2, v28, type metadata accessor for SportsScoreboardView);
  v33 = swift_allocObject();
  sub_1E3748B9C(v28, v33 + v29);
  v34 = v52;
  sub_1E3741EA0(v31, v52, &qword_1ECF28C40, &qword_1E4298348);
  v35 = (v34 + *(v47 + 36));
  *v35 = 0;
  v35[1] = 0;
  v35[2] = sub_1E3748E34;
  v35[3] = v33;
  KeyPath = swift_getKeyPath();
  if (sub_1E382662C())
  {
    v38 = v54;
    v37 = v55;
    v39 = v56;
    (*(v55 + 104))(v54, *MEMORY[0x1E697E7D0], v56);
  }

  else
  {
    v38 = v54;
    sub_1E374709C(v54);
    v37 = v55;
    v39 = v56;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C60, &qword_1E4298368);
  v41 = v57;
  v42 = (v57 + *(v40 + 36));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C68, &qword_1E4298370);
  (*(v37 + 32))(v42 + *(v43 + 28), v38, v39);
  *v42 = KeyPath;
  sub_1E3741EA0(v34, v41, &qword_1ECF28C48, &qword_1E4298350);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3747C24()
{
  OUTLINED_FUNCTION_31_1();
  v36[1] = v0;
  v36[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C90, &qword_1E4298410);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CE8, &qword_1E4298468);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C88, &qword_1E4298408);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v36 - v4;
  v6 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E3746E10((v11 - v10));
  v13 = sub_1E3B02B0C();
  (*(v8 + 8))(v12, v6);
  if (v13)
  {
    *v5 = sub_1E4201D44();
    *(v5 + 1) = 0;
    v5[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CF0, &qword_1E4298470);
    sub_1E3747EF8();
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v14, v15, v16, v17);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E374AD40(v18, v19, v20, v21);
    OUTLINED_FUNCTION_7_39();
  }

  else
  {
    sub_1E374864C();
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v26, v27, v28, v29);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E374AD40(v30, v31, v32, v33);
    OUTLINED_FUNCTION_7_39();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E374A804(v22, v23, v24, v25);
  OUTLINED_FUNCTION_31_6();
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v34, v35);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3747EF8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v24 = v2;
  v3 = type metadata accessor for SportsScoreboardViewAccessibleView(0);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB0, &unk_1E4298430);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  sub_1E3748134(&v24 - v17);
  v19 = type metadata accessor for SportsScoreboardView(0);
  v20 = *(v1 + v19[6]);
  v21 = *(v1 + v19[8] + 8);
  memcpy(v26, (v1 + v19[7]), 0xC3uLL);

  sub_1E3743538(v26, &v25, &qword_1ECF28C28, &qword_1E4298330);
  sub_1E3800BD4(v20, v21, v26, v10);
  sub_1E3743538(v18, v15, &qword_1ECF28CB0, &unk_1E4298430);
  sub_1E374AC8C(v10, v7, type metadata accessor for SportsScoreboardViewAccessibleView);
  v22 = v24;
  sub_1E3743538(v15, v24, &qword_1ECF28CB0, &unk_1E4298430);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CF8, &qword_1E4298478);
  sub_1E374AC8C(v7, v22 + *(v23 + 48), type metadata accessor for SportsScoreboardViewAccessibleView);
  sub_1E374ACE8(v10, type metadata accessor for SportsScoreboardViewAccessibleView);
  sub_1E325F69C(v18, &qword_1ECF28CB0);
  sub_1E374ACE8(v7, type metadata accessor for SportsScoreboardViewAccessibleView);
  sub_1E325F69C(v15, &qword_1ECF28CB0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3748134(uint64_t a1@<X8>)
{
  v7 = v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v66 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v65 = v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_4();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC8, &qword_1E4298448);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v68 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CD0, &qword_1E4298450);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v20 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = (v25 - v24);
  v27 = type metadata accessor for SportsScoreboardView(0);
  v28 = sub_1E39C408C();
  if (v28)
  {
    if (*v28 == _TtC8VideosUI13TextViewModel)
    {
      sub_1E3746E10(v26);
      v29 = sub_1E3B02B0C();
      v30 = (*(v22 + 8))(v26, v20);
      if (v29)
      {
        v32 = *(v7 + *(v27 + 32) + 8);
        swift_beginAccess();
        if (*(v32 + 248))
        {
          v33 = *(v32 + 264);
        }

        else
        {
          v33 = 0;
        }

        v39 = v65;
      }

      else
      {
        v39 = v65;
        if (sub_1E3C27528(v30, v31))
        {
          type metadata accessor for TextLayout();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
          }
        }

        else
        {
          v33 = 0;
        }
      }

      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      if (v33 && (v40 = *(*v33 + 176), v41 = , v40(v70, v41), v3 = v70[0], v4 = v70[1], v5 = v70[2], v6 = v70[3], , (v71 & 1) == 0))
      {
        v42.n128_f64[0] = OUTLINED_FUNCTION_6();
        j_nullsub_1(v42, v43, v44, v45);
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
      }

      OUTLINED_FUNCTION_3();
      v46 = sub_1E4202734();
      (*(v66 + 32))(v2, v39, v67);
      v47 = v2 + *(v64 + 36);
      *v47 = v46;
      *(v47 + 8) = v3;
      *(v47 + 16) = v4;
      *(v47 + 24) = v5;
      *(v47 + 32) = v6;
      *(v47 + 40) = 0;
      v48 = sub_1E4203DA4();
      v50 = v49;
      v51 = v68 + *(v63 + 36);
      sub_1E374AA38();
      v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CD8, &qword_1E4298458) + 36));
      *v52 = v48;
      v52[1] = v50;
      sub_1E3741EA0(v2, v68, &qword_1ECF28CC0, &qword_1E4298440);
      v53 = *sub_1E41F0A84();

      sub_1E3741EA0(v68, v18, &qword_1ECF28CC8, &qword_1E4298448);
      v54 = (v18 + *(v14 + 36));
      *v54 = v53;
      v54[1] = sub_1E374AC64;
      v54[2] = 0;
      OUTLINED_FUNCTION_12_12();
      sub_1E3741EA0(v55, v56, v57, v58);
      OUTLINED_FUNCTION_12_12();
      sub_1E3741EA0(v59, v60, v61, v62);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v14);
      OUTLINED_FUNCTION_10_3();
      return;
    }
  }

  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
}

void sub_1E374864C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v28 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CA8, &qword_1E4298428);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CA0, &qword_1E4298420);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D00, &qword_1E4298480);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for SportsScoreboardPostGameView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  v16 = type metadata accessor for SportsScoreboardView(0);
  v17 = *(v2 + *(v16 + 24));
  if ((*(*v17 + 1232))())
  {
    memcpy(v30, (v2 + *(v16 + 28)), 0xC3uLL);

    sub_1E3743538(v30, &v29, &qword_1ECF28C28, &qword_1E4298330);
    sub_1E3D873F8(v17, v30, v15);
    sub_1E374AC8C(v15, v0, type metadata accessor for SportsScoreboardPostGameView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_10_16();
    sub_1E374A938(v18, v19, &unk_1E42CFDC0);
    sub_1E374A980();
    sub_1E4201F44();
    sub_1E374ACE8(v15, type metadata accessor for SportsScoreboardPostGameView);
  }

  else
  {
    *v7 = *sub_1E41F0A04();
    *(v7 + 1) = 0;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D08, &qword_1E4298488);
    sub_1E3748ED0();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_23_3();
    sub_1E42015C4();
    sub_1E3741EA0(v7, v10, &qword_1ECF28CA8, &qword_1E4298428);
    memcpy(&v10[*(v27 + 36)], v30, 0x70uLL);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v20, v21, v22, v23);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_10_16();
    sub_1E374A938(v24, v25, &unk_1E42CFDC0);
    sub_1E374A980();
    sub_1E4201F44();
    OUTLINED_FUNCTION_29_2(v10);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3748A1C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB0, &unk_1E4298430);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  v5 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E3746E10((v10 - v9));
  v12 = sub_1E3B02B0C();
  (*(v7 + 8))(v11, v5);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    sub_1E3748134(v1);
    sub_1E3741EA0(v1, a1, &qword_1ECF28CB0, &unk_1E4298430);
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v13, 1, v3);
}

uint64_t sub_1E3748B78(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t sub_1E3748B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoreboardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3748C00()
{
  v0 = type metadata accessor for SportsScoreboardView(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_21_19();
  return (*(v1 + 1240))();
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SportsScoreboardView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v3 + v5);
  }

  else
  {
  }

  v7 = *(v3 + *(v1 + 28) + 80);
  if (v7 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3748E34()
{
  v0 = type metadata accessor for SportsScoreboardView(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_21_19();
  return (*(v1 + 1248))(0);
}

void sub_1E3748ED0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v187 = v2;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D10, &qword_1E4298490);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v4);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D18, &qword_1E4298498);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v6);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D20, &qword_1E42984A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D28, &qword_1E42984A8);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v12);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D30, &qword_1E42984B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v188 = v15;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D38, &qword_1E42984B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D40, &qword_1E42984C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D48, &qword_1E42984C8);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D50, &qword_1E42984D0);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v186 = v27 - v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70, &unk_1E42983D0);
  OUTLINED_FUNCTION_17_2(v31);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v191 = v33;
  v34 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4_6();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = (v156 - v42);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D58, &qword_1E42984D8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4_6();
  v183 = v45 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v184 = v156 - v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v156 - v51;
  v53 = type metadata accessor for SportsScoreboardView(0);
  v54 = *(v1 + v53[6]);
  v55 = *(v1 + v53[8] + 8);

  v182 = sub_1E38266E4();
  v56 = v53[5];
  v189 = v1;
  v170 = v56;
  sub_1E374709C(v43);
  v57 = *MEMORY[0x1E697E7D0];
  v58 = *(v36 + 104);
  v173 = v36 + 104;
  v172 = v58;
  v58(v40, v57, v34);
  v59 = sub_1E4201314();
  v60 = *(v36 + 8);
  v176 = v40;
  v60(v40, v34);
  v175 = v43;
  v179 = v34;
  v177 = v36 + 8;
  v171 = v60;
  v61 = (v60)(v43, v34);
  v62 = v55;
  v63 = v191;
  sub_1E3B29758(v61);
  sub_1E3B297BC(v63, v54, v182, v59 & 1, 0, v52);
  v64 = *(v190 + 36);
  v182 = v52;
  *&v52[v64] = 0x3FF0000000000000;
  if (sub_1E38271C0())
  {
    if (sub_1E3827218())
    {
      v65 = sub_1E38267CC();
      v66 = v161;
      sub_1E3749D5C(v65, v161);

      v67 = sub_1E41F0A04();
      v68 = (v66 + *(v159 + 36));
      *v68 = *v67;
      v68[1] = sub_1E374AE08;
      v68[2] = 0;
      OUTLINED_FUNCTION_21_1();
      sub_1E3743538(v69, v70, v71, &qword_1E42984C0);
      v72 = v156[1];
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v73, v74, v75, v76);
      v77 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D88, &qword_1E4298508) + 48);
      *v77 = 0;
      *(v77 + 8) = 0;
      OUTLINED_FUNCTION_29_2(v66);
      v78 = OUTLINED_FUNCTION_32_0();
      sub_1E325F69C(v78, v79);
      v80 = v174;
      sub_1E3741EA0(v72, v174, &qword_1ECF28D38, &qword_1E42984B8);
      v81 = 0;
      v82 = v180;
    }

    else
    {
      v81 = 1;
      v82 = v180;
      v80 = v174;
    }

    v93 = 1;
    __swift_storeEnumTagSinglePayload(v80, v81, 1, v158);

    v94 = v188;
    v158 = v62;
    sub_1E41EEC10(v54, v62, v188);
    v95 = sub_1E41F0A04();
    v96 = *v95;
    v97 = (v94 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D70, &qword_1E42984F0) + 36));
    *v97 = v96;
    v97[1] = sub_1E374A0BC;
    v97[2] = 0;
    *(v94 + *(v160 + 36)) = 0x4000000000000000;
    if (sub_1E3827218())
    {
      v98 = sub_1E38267D4();
      v99 = v161;
      sub_1E3749D5C(v98, v161);

      v100 = (v99 + *(v159 + 36));
      *v100 = *v95;
      v100[1] = sub_1E374AE08;
      v100[2] = 0;
      v101 = v162;
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v102, v103, v104, v105);
      v106 = v157;
      *v157 = 0;
      *(v106 + 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D80, &qword_1E4298500);
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v107, v108, v109, v110);
      OUTLINED_FUNCTION_29_2(v99);
      OUTLINED_FUNCTION_29_2(v101);
      sub_1E3741EA0(v106, v82, &qword_1ECF28D20, &qword_1E42984A0);
      v93 = 0;
    }

    __swift_storeEnumTagSinglePayload(v82, v93, 1, v164);
    v111 = v163;
    sub_1E3743538(v80, v163, &qword_1ECF28D48, &qword_1E42984C8);
    v164 = v54;
    v112 = v165;
    sub_1E3743538(v188, v165, &qword_1ECF28D30, &qword_1E42984B0);
    v113 = v166;
    sub_1E3743538(v82, v166, &qword_1ECF28D28, &qword_1E42984A8);
    v114 = v167;
    *v167 = 0;
    *(v114 + 8) = 0;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D78, &qword_1E42984F8);
    sub_1E3743538(v111, v114 + v115[12], &qword_1ECF28D48, &qword_1E42984C8);
    sub_1E3743538(v112, v114 + v115[16], &qword_1ECF28D30, &qword_1E42984B0);
    sub_1E3743538(v113, v114 + v115[20], &qword_1ECF28D28, &qword_1E42984A8);
    v116 = v114 + v115[24];
    *v116 = 0;
    *(v116 + 8) = 0;
    sub_1E325F69C(v113, &qword_1ECF28D28);
    sub_1E325F69C(v112, &qword_1ECF28D30);
    sub_1E325F69C(v111, &qword_1ECF28D48);
    sub_1E3743538(v114, v169, &qword_1ECF28D18, &qword_1E4298498);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60, &qword_1E42984E0);
    OUTLINED_FUNCTION_6_1();
    sub_1E374AD40(v117, &qword_1ECF28D18, &qword_1E4298498, v118);
    sub_1E374AD84();
    v92 = v178;
    sub_1E4201F44();
    sub_1E325F69C(v114, &qword_1ECF28D18);
    sub_1E325F69C(v180, &qword_1ECF28D28);
    v54 = v164;
    sub_1E325F69C(v188, &qword_1ECF28D30);
    sub_1E325F69C(v174, &qword_1ECF28D48);
  }

  else
  {
    swift_beginAccess();
    sub_1E4203DA4();
    sub_1E4200D94();
    v83 = v195;
    v84 = v196;
    v85 = v197;
    v86 = v198;
    v194 = 1;
    v193 = v196;
    v192 = v198;
    v87 = v169;
    *v169 = 0;
    *(v87 + 8) = 1;
    v87[2] = v83;
    *(v87 + 24) = v84;
    v87[4] = v85;
    *(v87 + 40) = v86;
    *(v87 + 3) = v199;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60, &qword_1E42984E0);
    OUTLINED_FUNCTION_6_1();
    sub_1E374AD40(v88, v89, v90, v91);
    sub_1E374AD84();
    v92 = v178;
    OUTLINED_FUNCTION_18_5();
    sub_1E4201F44();
  }

  v119 = sub_1E38266EC();
  v120 = v175;
  sub_1E374709C(v175);
  v121 = v176;
  v122 = v179;
  v172(v176, *MEMORY[0x1E697E7D8], v179);
  v123 = sub_1E4201314();
  v124 = v171;
  v171(v121, v122);
  v125 = (v124)(v120, v122);
  v126 = v191;
  sub_1E3B29758(v125);
  v127 = v181;
  sub_1E3B297BC(v126, v54, v119, v123 & 1, 0, v181);
  *(v127 + *(v190 + 36)) = 0x3FF0000000000000;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v128, v129, v130, v131);
  v132 = v186;
  sub_1E3743538(v92, v186, &qword_1ECF28D50, &qword_1E42984D0);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v133, v134, v135, v136);
  v137 = v187;
  *v187 = 0;
  *(v137 + 8) = 0;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D68, &qword_1E42984E8);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v139, v140, v141, v142);
  sub_1E3743538(v132, v137 + *(v138 + 64), &qword_1ECF28D50, &qword_1E42984D0);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v143, v144, v145, v146);
  v147 = v137 + *(v138 + 96);
  *v147 = 0;
  v147[8] = 0;
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v148, v149);
  sub_1E325F69C(v92, &qword_1ECF28D50);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v150, v151);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v152, v153);
  sub_1E325F69C(v132, &qword_1ECF28D50);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v154, v155);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3749D5C(__objc2_class **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v53 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28D90, &unk_1E4298510);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  if (a1 && *a1 == _TtC8VideosUI13TextViewModel)
  {
    v50 = v5;
    v52 = a2;

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v49 = type metadata accessor for SportsScoreboardView(0);
    v20 = *(v49 + 32);
    v51 = v2;
    v21 = *(**(*(v2 + v20 + 8) + 216) + 176);

    v21(v54, v22);
    v23 = v54[0];
    v24 = v54[1];
    v25 = v54[2];
    v26 = v54[3];

    if (v55)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v32.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v32, v33, v34, v35);
    }

    OUTLINED_FUNCTION_3();
    v36 = v52;
    v37 = v50;
    v38 = sub_1E4202734();
    (*(v53 + 32))(v13, v9, v37);
    v39 = &v13[*(v10 + 36)];
    *v39 = v38;
    *(v39 + 1) = v23;
    *(v39 + 2) = v24;
    *(v39 + 3) = v25;
    *(v39 + 4) = v26;
    v39[40] = 0;
    v40 = sub_1E3827278();

    if (v40)
    {
      v41 = 1.0;
    }

    else
    {
      v41 = 0.0;
    }

    sub_1E3741EA0(v13, v18, &qword_1ECF28CC0, &qword_1E4298440);
    *(v18 + *(v14 + 36)) = v41;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v42, v43, v44, v45);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v46, v47, v48, &unk_1E4298510);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v14);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

void sub_1E374A110(uint64_t a1)
{
  sub_1E374A21C(319, &qword_1EE289EB0, MEMORY[0x1E697E730]);
  if (v1 <= 0x3F)
  {
    sub_1E374A21C(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScoreboardViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_1E374A270();
        if (v4 <= 0x3F)
        {
          sub_1E374A2C0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E374A21C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4200B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E374A270()
{
  if (!qword_1EE278AC0)
  {
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE278AC0);
    }
  }
}

void sub_1E374A2C0(uint64_t a1)
{
  if (!qword_1EE289D28)
  {
    type metadata accessor for SportsScoreboardLayout();
    sub_1E374A938(&qword_1EE25F470, type metadata accessor for SportsScoreboardLayout, &unk_1E42B10C0);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289D28);
    }
  }
}

unint64_t sub_1E374A354()
{
  result = qword_1EE289410;
  if (!qword_1EE289410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C60, &qword_1E4298368);
    sub_1E374A40C();
    sub_1E374AD40(&qword_1EE2887B8, &qword_1ECF28C68, &qword_1E4298370, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289410);
  }

  return result;
}

unint64_t sub_1E374A40C()
{
  result = qword_1EE289418;
  if (!qword_1EE289418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C48, &qword_1E4298350);
    sub_1E374A498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289418);
  }

  return result;
}

unint64_t sub_1E374A498()
{
  result = qword_1EE289428;
  if (!qword_1EE289428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C40, &qword_1E4298348);
    sub_1E374A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289428);
  }

  return result;
}

unint64_t sub_1E374A524()
{
  result = qword_1EE289480;
  if (!qword_1EE289480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C38, &qword_1E4298340);
    sub_1E374A5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289480);
  }

  return result;
}

unint64_t sub_1E374A5B0()
{
  result = qword_1EE289598;
  if (!qword_1EE289598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C30, &qword_1E4298338);
    sub_1E374A668();
    sub_1E374AD40(&qword_1EE289300, &qword_1ECF28C58, &qword_1E4298360, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289598);
  }

  return result;
}

unint64_t sub_1E374A668()
{
  result = qword_1EE289878;
  if (!qword_1EE289878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C50, &qword_1E4298358);
    sub_1E374A804(&qword_1EE2886D8, &unk_1ECF28C78, &unk_1E42983F8, sub_1E374A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289878);
  }

  return result;
}

unint64_t sub_1E374A720()
{
  result = qword_1EE288D90;
  if (!qword_1EE288D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C80, &qword_1E4298400);
    sub_1E374AD40(&qword_1EE288480, &qword_1ECF28C88, &qword_1E4298408, MEMORY[0x1E6981870]);
    sub_1E374A804(&qword_1EE2886F8, &qword_1ECF28C90, &qword_1E4298410, sub_1E374A87C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D90);
  }

  return result;
}

uint64_t sub_1E374A804(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E374A87C()
{
  result = qword_1EE288FE8;
  if (!qword_1EE288FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28C98, &qword_1E4298418);
    sub_1E374A938(qword_1EE2499A8, type metadata accessor for SportsScoreboardPostGameView, &unk_1E42CFDC0);
    sub_1E374A980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FE8);
  }

  return result;
}

uint64_t sub_1E374A938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E374A980()
{
  result = qword_1EE2897C8;
  if (!qword_1EE2897C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CA0, &qword_1E4298420);
    sub_1E374AD40(&qword_1EE2885C0, &qword_1ECF28CA8, &qword_1E4298428, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897C8);
  }

  return result;
}

uint64_t sub_1E374AA38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CE0, &qword_1E4298460);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v7 = sub_1E3C27528(v5, v6);
  if (!v7 || (v8 = (*(*v7 + 744))(), v9 = , !v8))
  {
    v9 = [objc_opt_self() clearColor];
    v8 = v9;
  }

  sub_1E3740CCC(v9, v10, v11);
  sub_1E39BA034();

  v14 = sub_1E3C27528(v12, v13);
  if (v14)
  {
    (*(*v14 + 552))(&v20);

    if ((v21 & 1) == 0)
    {
      v15 = OUTLINED_FUNCTION_6();
      sub_1E3952BE8(v15, v16, v17, v18);
    }
  }

  swift_getOpaqueTypeConformance2();
  sub_1E3E361E8();
  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_1E374AC8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E374ACE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E374AD40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E374AD84()
{
  result = qword_1EE2897B8;
  if (!qword_1EE2897B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28D60, &qword_1E42984E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897B8);
  }

  return result;
}

uint64_t sub_1E374AE0C()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v9, v2);

  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_21();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    OUTLINED_FUNCTION_5_0(v1 + 16, v17);
    if (*(v1 + 16))
    {
      v14 = 0x64657472617473;
    }

    else
    {
      v14 = 0x646570706F7473;
    }

    v15 = sub_1E3270FC8(v14, 0xE700000000000000, &v18);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v10, v11, "TabItemsUpdater:: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1E374AFD8()
{
  v1 = OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_5_0(v1, v2);
  return *(v0 + 16);
}

uint64_t sub_1E374B000(char a1)
{
  OUTLINED_FUNCTION_10_17();
  swift_beginAccess();
  *(v1 + 16) = a1;
  return sub_1E374AE0C();
}

void *sub_1E374B040()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  OUTLINED_FUNCTION_5_0(v1 + 32, v21);
  v3 = *(v1 + 32);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1E4207344();
    sub_1E42004F4();
    sub_1E374E89C(&qword_1ECF28DA0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    result = sub_1E4206664();
    v6 = v22;
    v5 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v5 = v3 + 56;
    v7 = ~(-1 << *(v3 + 32));
    OUTLINED_FUNCTION_8_20();
    v9 = v10 & v11;
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v3;
  }

  v12 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_9:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_15:
      sub_1E34AF4DC(v6);

      v18 = *(v1 + 40);
      if (v18)
      {
        v19 = v18;
        sub_1E374C1B0();
      }

      sub_1E374BA48();

      return v1;
    }

    while (1)
    {
      sub_1E42004E4();

      v8 = v15;
      v9 = v16;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (sub_1E42073C4())
      {
        sub_1E42004F4();
        swift_dynamicCast();
        v15 = v8;
        v16 = v9;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_15;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E374B2C8()
{
  sub_1E374B040();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1E374B2FC()
{
  v0 = swift_allocObject();
  sub_1E374B334();
  return v0;
}

uint64_t sub_1E374B334()
{
  *(v0 + 16) = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 tabItemsUpdateConfig];

  v3 = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0;
  sub_1E374B650();
  return v0;
}

void sub_1E374B3B4()
{
  if ([objc_opt_self() userHasActiveAccount])
  {
    OUTLINED_FUNCTION_10_17();
    swift_beginAccess();
    *(v0 + 16) = 1;
    sub_1E374AE0C();
    sub_1E374B7FC();
  }
}

void sub_1E374B414()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  if (TVAppFeature.isEnabled.getter(12, v7, v8))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v9 = sub_1E41FF1E4();
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    v9 = [v10 isNetworkReachable];
  }

  if ([objc_opt_self() userHasActiveAccount] && (v9 & 1) != 0)
  {
    v15 = [objc_opt_self() sharedInstance];
    [v15 refreshTabBarItems];
  }

  else
  {
    v11 = sub_1E324FBDC();
    (*(v2 + 16))(v6, v11, v0);
    v12 = sub_1E41FFC94();
    v13 = sub_1E42067E4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v9 & 1;
      _os_log_impl(&dword_1E323F000, v12, v13, "TabItemsUpdater:: will skip refresh with network reachable status: %{BOOL}d", v14, 8u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v2 + 8))(v6, v0);
  }
}

uint64_t sub_1E374B650()
{
  v1 = v0;
  v2 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = [objc_opt_self() defaultCenter];
  v10 = *NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor();
  sub_1E4206C14();

  swift_allocObject();
  swift_weakInit();
  sub_1E374E89C(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1E4200844();

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_11_3(v1 + 32, v12);
  sub_1E42004C4();
  swift_endAccess();
}

void sub_1E374B7FC()
{
  v1 = swift_allocObject();
  swift_weakInit();
  updated = type metadata accessor for UpdateTabItemsEventMonitorController(0);
  v3 = objc_allocWithZone(updated);

  v4 = &v3[OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_registrationHandler];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_removableEvents;
  *&v3[v5] = sub_1E374BFFC(&unk_1F5D519E0);
  v6 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime;
  v7 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(&v3[v6], 1, 1, v7);
  v8 = &v3[OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber];
  *v8 = v0;
  *(v8 + 1) = &off_1F5D51A08;
  v9 = *v4;
  v10 = v4[1];
  *v4 = sub_1E374E7A8;
  v4[1] = v1;

  sub_1E34AF594(v9, v10);
  v14.receiver = v3;
  v14.super_class = updated;
  v11 = objc_msgSendSuper2(&v14, sel_init);

  v12 = *(v0 + 40);
  *(v0 + 40) = v11;
  v13 = v11;

  sub_1E374C0CC();
}

void sub_1E374B950(uint64_t a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() sharedMonitor];
  sub_1E374DF94();
  OUTLINED_FUNCTION_2_18();
  sub_1E374E89C(v6, v7, MEMORY[0x1E69E81B8]);
  v8 = sub_1E4206614();
  v9 = v8;
  if (a3)
  {
    [v5 updateDescriptorsForObserver:a1 eventDescriptors:v8];
  }

  else
  {
    [v5 addObserver:a1 forEventDescriptors:v8 viewController:0];
  }
}

void sub_1E374BA48()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedMonitor];
    [v4 removeObserver_];
  }
}

void sub_1E374BAE0()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E324FBDC();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_1E374D110(v11, v12, v13);
    v14 = sub_1E4207944();
    v16 = sub_1E3270FC8(v14, v15, &v17);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1E323F000, v8, v9, "TabItemsUpdater::update for event descriptor %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v2 + 8))(v6, v0);
  sub_1E374B414();
}

unint64_t sub_1E374BC90()
{
  v1 = [*(v0 + 24) eventDescriptors];
  v2 = sub_1E4205C64();

  v3 = sub_1E374BD08(v2);

  return v3;
}

unint64_t sub_1E374BD08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B470, &qword_1E42986E0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1E374E74C(*(a1 + 48) + 40 * v10, __src);
    sub_1E328438C(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1E374E74C(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1E328438C(&__dst[40], v20);
    sub_1E325F748(__dst, &qword_1ECF28E40, &unk_1E4298920);
    v21 = v18;
    sub_1E329504C(v20, v22);
    v11 = v21;
    sub_1E329504C(v22, v23);
    sub_1E329504C(v23, &v21);
    result = sub_1E327D33C(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v14);
      result = sub_1E329504C(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1E329504C(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1E325F748(__dst, &qword_1ECF28E40, &unk_1E4298920);

  return 0;
}

uint64_t sub_1E374BFFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for DocumentUpdateEventType();
  v4 = v3;
  v5 = sub_1E374E89C(&qword_1EE23AF50, type metadata accessor for DocumentUpdateEventType, &unk_1E4298628);
  v6 = MEMORY[0x1E6910FA0](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_1E374D328(&v11, *(a1 + v8));
      v8 += 8;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

uint64_t sub_1E374C0CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9[-v3 - 8];
  sub_1E374CDFC(*(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber), *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber + 8), *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_removableEvents), 0);
  sub_1E41FE5C4();
  v5 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime;
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime, v9);
  sub_1E32ABDC0(v4, v0 + v6);
  return swift_endAccess();
}

uint64_t sub_1E374C1B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12[-v3 - 8];
  v5 = (v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_registrationHandler);
  v6 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_registrationHandler);
  v7 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_registrationHandler + 8);
  *v5 = 0;
  v5[1] = 0;
  sub_1E34AF594(v6, v7);
  v8 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime;
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime, v12);
  sub_1E32ABDC0(v4, v0 + v9);
  return swift_endAccess();
}

id sub_1E374C280(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31[-v6 - 8];
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E324FBDC();
  (*(v10 + 16))(v14, v15, v8);
  v16 = a1;
  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_6_21();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_1E323F000, v17, v18, "TabItemsUpdater::::receive event %@", v19, 0xCu);
    sub_1E325F748(v20, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v10 + 8))(v14, v8);
  v22 = [v16 descriptor];
  v23 = sub_1E3CB1908(v22);

  v24 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber);
  v25 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber + 8);
  ObjectType = swift_getObjectType();
  (*(v25 + 16))(v23, ObjectType, v25);
  sub_1E374CDFC(v24, v25, *(v2 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_removableEvents), 1);
  result = [v16 isRefreshEvent];
  if (result)
  {
    sub_1E41FE5C4();
    v28 = sub_1E41FE5D4();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v28);
    v29 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime;
    OUTLINED_FUNCTION_11_3(v2 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime, v31);
    sub_1E32ABDC0(v7, v2 + v29);
    return swift_endAccess();
  }

  return result;
}

void sub_1E374C5A8()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v81 - v18;
  v19 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v94 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - v26;
  v28 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber);
  v29 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_subscriber + 8);
  ObjectType = swift_getObjectType();
  v90 = v29;
  v100 = ObjectType;
  v101 = *(v29 + 8);
  v99[0] = v28;
  v91 = v28;
  swift_unknownObjectRetain();
  v30 = sub_1E3CB0C34(v99);
  __swift_destroy_boxed_opaque_existential_1(v99);
  if (v30)
  {
    v81 = v16;
    v88 = v0;
    v83 = v24;
    v85 = v19;
    v86 = v3;
    v84 = v27;
    v87 = v1;
    if ((v30 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1E4207344();
      sub_1E374DF94();
      OUTLINED_FUNCTION_2_18();
      sub_1E374E89C(v31, v32, MEMORY[0x1E69E81B8]);
      sub_1E4206664();
      v34 = v99[0];
      v33 = v99[1];
      v35 = v99[2];
      v36 = v100;
      v37 = v101;
    }

    else
    {
      v33 = v30 + 56;
      v35 = ~(-1 << *(v30 + 32));
      OUTLINED_FUNCTION_8_20();
      v37 = v38 & v39;

      v36 = 0;
      v34 = v30;
    }

    v82 = v7;
    v96 = v35;
    if (v34 < 0)
    {
      goto LABEL_12;
    }

LABEL_6:
    v40 = v36;
    v41 = v37;
    v42 = v36;
    if (v37)
    {
LABEL_10:
      v43 = (v41 - 1) & v41;
      v44 = *(*(v34 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));
      if (v44)
      {
        while ([v44 type])
        {

          v36 = v42;
          v37 = v43;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_12:
          v45 = sub_1E42073C4();
          if (v45)
          {
            v97[0] = v45;
            sub_1E374DF94();
            swift_dynamicCast();
            v44 = v98;
            v42 = v36;
            v43 = v37;
            if (v98)
            {
              continue;
            }
          }

          goto LABEL_17;
        }

        OUTLINED_FUNCTION_11_22();
        objc_opt_self();
        v46 = swift_dynamicCastObjCClass();
        if (v46)
        {
          v47 = v46;
          v48 = OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime;
          v49 = v88;
          OUTLINED_FUNCTION_5_0(v88 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_lastRefreshOrRegistrationTime, &v98);
          v50 = v95;
          sub_1E329E324(v49 + v48, v95);
          v51 = v85;
          if (__swift_getEnumTagSinglePayload(v50, 1, v85) == 1)
          {
            sub_1E325F748(v50, &unk_1ECF28E20, &unk_1E42986D0);
            v52 = sub_1E324FBDC();
            v53 = v86;
            v54 = v82;
            v55 = v87;
            (*(v86 + 16))(v82, v52, v87);
            v56 = sub_1E41FFC94();
            v57 = sub_1E4206814();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&dword_1E323F000, v56, v57, "TabItemsUpdater::::ignore appDocumentHasBecomeActive", v58, 2u);
              OUTLINED_FUNCTION_6_0();
            }

            (*(v53 + 8))(v54, v55);
          }

          else
          {
            v59 = v94;
            (*(v94 + 32))(v84, v50, v51);
            v60 = [v47 delayInSeconds];
            sub_1E41FE5C4();
            sub_1E41FE4F4();
            v62 = v61;
            v63 = sub_1E324FBDC();
            v64 = v86;
            v65 = *(v86 + 16);
            v66 = v87;
            if (v62 >= v60)
            {
              v72 = v92;
              v65(v92, v63, v87);
              v73 = sub_1E41FFC94();
              v74 = sub_1E4206814();
              if (os_log_type_enabled(v73, v74))
              {
                v75 = OUTLINED_FUNCTION_6_21();
                *v75 = 134217984;
                *(v75 + 4) = v62;
                _os_log_impl(&dword_1E323F000, v73, v74, "TabItemsUpdater::::trigger tab update on app become active, time interval %f", v75, 0xCu);
                OUTLINED_FUNCTION_6_0();
              }

              (*(v64 + 8))(v72, v66);
              v77 = v90;
              v76 = v91;
              (*(v90 + 16))(0, ObjectType, v90);
              v78 = v81;
              v79 = v83;
              (*(v59 + 16))(v81, v83, v51);
              __swift_storeEnumTagSinglePayload(v78, 0, 1, v51);
              v80 = v88;
              OUTLINED_FUNCTION_11_3(v88 + v48, v97);
              sub_1E32ABDC0(v78, v80 + v48);
              swift_endAccess();
              sub_1E374CDFC(v76, v77, *(v80 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_removableEvents), 1);

              v71 = *(v59 + 8);
              v71(v79, v51);
            }

            else
            {
              v67 = v93;
              v65(v93, v63, v87);
              v68 = sub_1E41FFC94();
              v69 = sub_1E4206814();
              if (os_log_type_enabled(v68, v69))
              {
                v70 = OUTLINED_FUNCTION_6_21();
                *v70 = 134217984;
                *(v70 + 4) = v62;
                _os_log_impl(&dword_1E323F000, v68, v69, "TabItemsUpdater::::no update on app become active, timeIntervalSinceLastUpdate %f", v70, 0xCu);
                OUTLINED_FUNCTION_6_0();
              }

              (*(v64 + 8))(v67, v66);
              v71 = *(v59 + 8);
              v71(v83, v51);
            }

            v71(v84, v51);
          }
        }

        else
        {
        }
      }

      else
      {
LABEL_17:
        OUTLINED_FUNCTION_11_22();
      }
    }

    else
    {
      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v42 >= ((v35 + 64) >> 6))
        {
          goto LABEL_17;
        }

        v41 = *(v33 + 8 * v42);
        ++v40;
        if (v41)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1E374CDFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = *(a2 + 8);
  v16[3] = ObjectType;
  v16[4] = v10;
  v16[0] = a1;
  swift_unknownObjectRetain();
  v11 = sub_1E3CB0C34(v16);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  if (v11)
  {

    v13 = sub_1E374DD1C(v11, a3);
    if (!sub_1E374CEE0(v13))
    {
      v14 = *(v4 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_registrationHandler);
      if (v14)
      {
        v15 = *(v4 + OBJC_IVAR____TtC8VideosUIP33_A69B2854CB390679C506AD8487E2C37E36UpdateTabItemsEventMonitorController_registrationHandler + 8);

        v14(v4, v13, a4 & 1);
        sub_1E34AF594(v14, v15);
      }
    }
  }

  return result;
}

BOOL sub_1E374CEE0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1E4207384();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

id sub_1E374CF60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdateTabItemsEventMonitorController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E374D010(uint64_t a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E374D060(uint64_t a1, uint64_t a2)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a2);
  return sub_1E4207BA4();
}

void sub_1E374D0A4(uint64_t a2@<X8>)
{
  sub_1E374D0D8();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

unint64_t sub_1E374D110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF28DA8;
  if (!qword_1ECF28DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28DA8);
  }

  return result;
}

uint64_t type metadata accessor for UpdateTabItemsEventMonitorController(uint64_t a1)
{
  result = qword_1EE290BD8;
  if (!qword_1EE290BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E374D1DC(uint64_t a1)
{
  sub_1E3273C28(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for DocumentUpdateEventType()
{
  if (!qword_1EE23AF40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23AF40);
    }
  }
}

BOOL sub_1E374D328(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a2);
  v6 = sub_1E4207BA4();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_1E374D888(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1E374D418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28E48, &qword_1E42986E8);
  result = sub_1E4207444();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1E373CBF0(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_1E4207B44();
    MEMORY[0x1E69124B0](v16);
    result = sub_1E4207BA4();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E374D664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510, &unk_1E42B5270);
  result = sub_1E4207444();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1E373CBF0(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_1E4206F54();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}