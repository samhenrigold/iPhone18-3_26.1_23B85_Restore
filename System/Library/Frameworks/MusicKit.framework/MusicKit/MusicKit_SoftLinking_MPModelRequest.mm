@interface MusicKit_SoftLinking_MPModelRequest
+ (MusicKit_SoftLinking_MPModelRequest)defaultUnpersonalizedRequest;
+ (id)_albumSupportedProperties;
+ (id)_albumSupportedPropertiesForPlayback;
+ (id)_artistSupportedProperties;
+ (id)_composerSupportedProperties;
+ (id)_curatorSupportedProperties;
+ (id)_genreSupportedProperties;
+ (id)_localFileAssetSupportedProperties;
+ (id)_lyricsSupportedProperties;
+ (id)_movieSupportedProperties;
+ (id)_movieSupportedPropertiesForPlayback;
+ (id)_pinSupportedProperties;
+ (id)_playbackItemSupportedProperties;
+ (id)_playbackPositionSupportedProperties;
+ (id)_playbackSectionSupportedProperties;
+ (id)_playlistAuthorSupportedProperties;
+ (id)_playlistEntryReactionSupportedProperties;
+ (id)_playlistEntrySupportedProperties;
+ (id)_playlistEntrySupportedPropertiesForPlayback;
+ (id)_playlistSupportedProperties;
+ (id)_playlistSupportedPropertiesForPlayback;
+ (id)_propertySetForRawProperties:(id)properties relationships:(id)relationships;
+ (id)_radioStationSupportedPropertiesForPlayback;
+ (id)_recentlyAddedObjectSupportedProperties;
+ (id)_representativeSongSupportedProperties;
+ (id)_socialPersonSupportedProperties;
+ (id)_songSupportedProperties;
+ (id)_songSupportedPropertiesForPlayback;
+ (id)_storeAssetSupportedProperties;
+ (id)_supportedPropertiesForModelObjectType:(int64_t)type;
+ (id)_tvEpisodeSupportedProperties;
+ (id)_tvEpisodeSupportedPropertiesForPlayback;
+ (id)_tvSeasonSupportedProperties;
+ (id)_tvSeasonSupportedPropertiesForPlayback;
+ (id)_tvShowSupportedProperties;
- (id)_initWithUnderlyingRequest:(id)request;
@end

@implementation MusicKit_SoftLinking_MPModelRequest

+ (id)_songSupportedPropertiesForPlayback
{
  v47[16] = *MEMORY[0x277D85DE8];
  v40 = objc_alloc(MEMORY[0x277CBEB18]);
  v38 = getMPModelPropertySongArtistUploadedContent();
  v47[0] = v38;
  v36 = getMPModelPropertySongArtwork();
  v47[1] = v36;
  v34 = getMPModelPropertySongCloudStatus();
  v47[2] = v34;
  v32 = getMPModelPropertySongDuration();
  v47[3] = v32;
  v30 = getMPModelPropertySongExplicit();
  v47[4] = v30;
  v27 = getMPModelPropertySongHasVideo();
  v47[5] = v27;
  v26 = getMPModelPropertySongIsFavorite();
  v47[6] = v26;
  v2 = getMPModelPropertySongDateFavorited();
  v47[7] = v2;
  v3 = getMPModelPropertySongLibraryAdded();
  v47[8] = v3;
  v4 = getMPModelPropertySongLibraryAddEligible();
  v47[9] = v4;
  v5 = getMPModelPropertySongShouldShowComposer();
  v47[10] = v5;
  v6 = getMPModelPropertySongTitle();
  v47[11] = v6;
  v7 = get_MPModelPropertySongTrackCount();
  v47[12] = v7;
  v8 = getMPModelPropertySongTrackNumber();
  v47[13] = v8;
  v9 = getMPModelPropertySongTraits();
  v47[14] = v9;
  v10 = getMPModelPropertySongUserRating();
  v47[15] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:16];
  v41 = [v40 initWithArray:v11];

  if (_os_feature_enabled_impl())
  {
    v12 = getMPModelPropertySongIsDisliked();
    [v41 addObject:v12];
  }

  v28 = objc_alloc(getMPPropertySetClass());
  v39 = getMPModelRelationshipSongComposer();
  v45[0] = v39;
  MPPropertySetClass = getMPPropertySetClass();
  v37 = getMPModelPropertyComposerName();
  v44 = v37;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v33 = [MPPropertySetClass propertySetWithProperties:v35];
  v46[0] = v33;
  v31 = getMPModelRelationshipSongAlbum();
  v45[1] = v31;
  v14 = getMPPropertySetClass();
  v15 = getMPModelPropertyAlbumTitle();
  v43[0] = v15;
  v16 = getMPModelPropertyAlbumYear();
  v43[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v18 = [v14 propertySetWithProperties:v17];
  v46[1] = v18;
  v19 = getMPModelRelationshipSongArtist();
  v45[2] = v19;
  v20 = getMPPropertySetClass();
  v21 = getMPModelPropertyArtistName();
  v42 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  v23 = [v20 propertySetWithProperties:v22];
  v46[2] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
  v29 = [v28 initWithProperties:v41 relationships:v24];

  return v29;
}

+ (id)_tvEpisodeSupportedPropertiesForPlayback
{
  v23[8] = *MEMORY[0x277D85DE8];
  v14 = objc_alloc(getMPPropertySetClass());
  v19 = getMPModelPropertyTVEpisodeArtwork();
  v23[0] = v19;
  v18 = getMPModelPropertyTVEpisodeDuration();
  v23[1] = v18;
  v17 = getMPModelPropertyTVEpisodeHasCloudSyncSource();
  v23[2] = v17;
  v16 = getMPModelPropertyTVEpisodeLibraryAdded();
  v23[3] = v16;
  v15 = getMPModelPropertyTVEpisodeLibraryAddEligible();
  v23[4] = v15;
  v2 = getMPModelPropertyTVEpisodeNumber();
  v23[5] = v2;
  v3 = getMPModelPropertyTVEpisodeTitle();
  v23[6] = v3;
  v4 = getMPModelPropertyTVEpisodeType();
  v23[7] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:8];
  v6 = getMPModelRelationshipTVEpisodeShow();
  v21 = v6;
  MPPropertySetClass = getMPPropertySetClass();
  v8 = getMPModelPropertyTVShowTitle();
  v20 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v10 = [MPPropertySetClass propertySetWithProperties:v9];
  v22 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v12 = [v14 initWithProperties:v5 relationships:v11];

  return v12;
}

+ (id)_movieSupportedPropertiesForPlayback
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyMovieArtwork();
  v12[0] = v3;
  v4 = getMPModelPropertyMovieDuration();
  v12[1] = v4;
  v5 = getMPModelPropertyMovieHasCloudSyncSource();
  v12[2] = v5;
  v6 = getMPModelPropertyMovieLibraryAdded();
  v12[3] = v6;
  v7 = getMPModelPropertyMovieLibraryAddEligible();
  v12[4] = v7;
  v8 = getMPModelPropertyMovieTitle();
  v12[5] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];
  v10 = [v2 initWithProperties:v9 relationships:MEMORY[0x277CBEC10]];

  return v10;
}

+ (id)_albumSupportedPropertiesForPlayback
{
  v27[9] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v23 = getMPModelPropertyAlbumArtwork();
  v27[0] = v23;
  v3 = getMPModelPropertyAlbumLibraryAdded();
  v27[1] = v3;
  v4 = getMPModelPropertyAlbumLibraryAddEligible();
  v27[2] = v4;
  v5 = getMPModelPropertyAlbumIsFavorite();
  v27[3] = v5;
  v6 = getMPModelPropertyAlbumDateFavorited();
  v27[4] = v6;
  v7 = getMPModelPropertyAlbumTitle();
  v27[5] = v7;
  v8 = getMPModelPropertyAlbumTrackCount();
  v27[6] = v8;
  v9 = getMPModelPropertyAlbumTraits();
  v27[7] = v9;
  v10 = getMPModelPropertyAlbumYear();
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:9];
  v12 = [v2 initWithArray:v11];

  if (_os_feature_enabled_impl())
  {
    v13 = getMPModelPropertyAlbumIsDisliked();
    [v12 addObject:v13];
  }

  v14 = objc_alloc(getMPPropertySetClass());
  v15 = getMPModelRelationshipAlbumArtist();
  v25 = v15;
  MPPropertySetClass = getMPPropertySetClass();
  v17 = getMPModelPropertyArtistName();
  v24 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v19 = [MPPropertySetClass propertySetWithProperties:v18];
  v26 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v21 = [v14 initWithProperties:v12 relationships:v20];

  return v21;
}

+ (id)_playlistSupportedPropertiesForPlayback
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = getMPModelPropertyPlaylistArtwork();
  v15 = v3;
  v4 = getMPModelPropertyPlaylistName();
  v16 = v4;
  v5 = getMPModelPropertyPlaylistType();
  v17 = v5;
  v6 = getMPModelPropertyPlaylistLibraryAdded();
  v18 = v6;
  v7 = getMPModelPropertyPlaylistTraits();
  v19 = v7;
  v8 = getMPModelPropertyPlaylistIsFavorite();
  v20 = v8;
  v9 = getMPModelPropertyPlaylistDateFavorited();
  v21 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:7];
  v11 = [v2 initWithArray:{v10, v15, v16, v17, v18, v19, v20}];

  if (_os_feature_enabled_impl())
  {
    v12 = getMPModelPropertyPlaylistIsDisliked();
    [v11 addObject:v12];
  }

  v13 = [objc_alloc(getMPPropertySetClass()) initWithProperties:v11 relationships:MEMORY[0x277CBEC10]];

  return v13;
}

+ (id)_playbackItemSupportedProperties
{
  v27[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v4 = getMPModelRelationshipGenericPlaylistEntrySymbolLoc_ptr;
  v24 = getMPModelRelationshipGenericPlaylistEntrySymbolLoc_ptr;
  if (!getMPModelRelationshipGenericPlaylistEntrySymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v22[3] = dlsym(v5, "MPModelRelationshipGenericPlaylistEntry");
    getMPModelRelationshipGenericPlaylistEntrySymbolLoc_ptr = v22[3];
    v4 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = *v4;
  v25[0] = v6;
  _playlistEntrySupportedPropertiesForPlayback = [self _playlistEntrySupportedPropertiesForPlayback];
  v27[0] = _playlistEntrySupportedPropertiesForPlayback;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v8 = getMPModelRelationshipGenericSongSymbolLoc_ptr_0;
  v24 = getMPModelRelationshipGenericSongSymbolLoc_ptr_0;
  if (!getMPModelRelationshipGenericSongSymbolLoc_ptr_0)
  {
    v9 = MediaPlayerLibrary_6();
    v22[3] = dlsym(v9, "MPModelRelationshipGenericSong");
    getMPModelRelationshipGenericSongSymbolLoc_ptr_0 = v22[3];
    v8 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v8)
  {
    goto LABEL_13;
  }

  v10 = *v8;
  v25[1] = v10;
  _songSupportedPropertiesForPlayback = [self _songSupportedPropertiesForPlayback];
  v27[1] = _songSupportedPropertiesForPlayback;
  v12 = getMPModelRelationshipGenericMovie();
  v25[2] = v12;
  _movieSupportedPropertiesForPlayback = [self _movieSupportedPropertiesForPlayback];
  v27[2] = _movieSupportedPropertiesForPlayback;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v14 = getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr_0;
  v24 = getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr_0;
  if (!getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr_0)
  {
    v15 = MediaPlayerLibrary_6();
    v22[3] = dlsym(v15, "MPModelRelationshipGenericTVEpisode");
    getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr_0 = v22[3];
    v14 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v14)
  {
LABEL_13:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v26 = *v14;
  v16 = v26;
  _tvEpisodeSupportedPropertiesForPlayback = [self _tvEpisodeSupportedPropertiesForPlayback];
  v27[3] = _tvEpisodeSupportedPropertiesForPlayback;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v25 count:4];
  v19 = [v3 initWithProperties:MEMORY[0x277CBEBF8] relationships:v18];

  return v19;
}

+ (id)_playlistEntrySupportedPropertiesForPlayback
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v4 = getMPModelRelationshipPlaylistEntrySong();
  v13[0] = v4;
  _songSupportedPropertiesForPlayback = [self _songSupportedPropertiesForPlayback];
  v14[0] = _songSupportedPropertiesForPlayback;
  v6 = getMPModelRelationshipPlaylistEntryMovie();
  v13[1] = v6;
  _movieSupportedPropertiesForPlayback = [self _movieSupportedPropertiesForPlayback];
  v14[1] = _movieSupportedPropertiesForPlayback;
  v8 = getMPModelRelationshipPlaylistEntryTVEpisode();
  v13[2] = v8;
  _tvEpisodeSupportedPropertiesForPlayback = [self _tvEpisodeSupportedPropertiesForPlayback];
  v14[2] = _tvEpisodeSupportedPropertiesForPlayback;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v11 = [v3 initWithProperties:MEMORY[0x277CBEBF8] relationships:v10];

  return v11;
}

+ (id)_playbackSectionSupportedProperties
{
  v24[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v4 = getMPModelRelationshipGenericAlbum();
  v21[0] = v4;
  _albumSupportedPropertiesForPlayback = [self _albumSupportedPropertiesForPlayback];
  v24[0] = _albumSupportedPropertiesForPlayback;
  v6 = getMPModelRelationshipGenericPlaylist_0();
  v21[1] = v6;
  _playlistSupportedPropertiesForPlayback = [self _playlistSupportedPropertiesForPlayback];
  v24[1] = _playlistSupportedPropertiesForPlayback;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v8 = getMPModelRelationshipGenericRadioStationSymbolLoc_ptr;
  v20 = getMPModelRelationshipGenericRadioStationSymbolLoc_ptr;
  if (!getMPModelRelationshipGenericRadioStationSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v18[3] = dlsym(v9, "MPModelRelationshipGenericRadioStation");
    getMPModelRelationshipGenericRadioStationSymbolLoc_ptr = v18[3];
    v8 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v8)
  {
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v22 = *v8;
  v10 = v22;
  _radioStationSupportedPropertiesForPlayback = [self _radioStationSupportedPropertiesForPlayback];
  v24[2] = _radioStationSupportedPropertiesForPlayback;
  v12 = getMPModelRelationshipGenericTVSeason();
  v23 = v12;
  _tvSeasonSupportedPropertiesForPlayback = [self _tvSeasonSupportedPropertiesForPlayback];
  v24[3] = _tvSeasonSupportedPropertiesForPlayback;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v21 count:4];
  v15 = [v3 initWithProperties:MEMORY[0x277CBEBF8] relationships:v14];

  return v15;
}

+ (id)_radioStationSupportedPropertiesForPlayback
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v3 = getMPModelPropertyRadioStationNameSymbolLoc_ptr;
  v34 = getMPModelPropertyRadioStationNameSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationNameSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v32[3] = dlsym(v4, "MPModelPropertyRadioStationName");
    getMPModelPropertyRadioStationNameSymbolLoc_ptr = v32[3];
    v3 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v3)
  {
    goto LABEL_28;
  }

  v5 = *v3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v6 = getMPModelPropertyRadioStationAttributionLabelSymbolLoc_ptr;
  v34 = getMPModelPropertyRadioStationAttributionLabelSymbolLoc_ptr;
  v35[0] = v5;
  if (!getMPModelPropertyRadioStationAttributionLabelSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v32[3] = dlsym(v7, "MPModelPropertyRadioStationAttributionLabel");
    getMPModelPropertyRadioStationAttributionLabelSymbolLoc_ptr = v32[3];
    v6 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v6)
  {
    goto LABEL_28;
  }

  v8 = *v6;
  v35[1] = v8;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v9 = getMPModelPropertyRadioStationTypeSymbolLoc_ptr;
  v34 = getMPModelPropertyRadioStationTypeSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationTypeSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_6();
    v32[3] = dlsym(v10, "MPModelPropertyRadioStationType");
    getMPModelPropertyRadioStationTypeSymbolLoc_ptr = v32[3];
    v9 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v9)
  {
    goto LABEL_28;
  }

  v11 = *v9;
  v35[2] = v11;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v12 = getMPModelPropertyRadioStationSubtypeSymbolLoc_ptr;
  v34 = getMPModelPropertyRadioStationSubtypeSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationSubtypeSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v32[3] = dlsym(v13, "MPModelPropertyRadioStationSubtype");
    getMPModelPropertyRadioStationSubtypeSymbolLoc_ptr = v32[3];
    v12 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v12)
  {
    goto LABEL_28;
  }

  v14 = *v12;
  v35[3] = v14;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v15 = getMPModelPropertyRadioStationProviderUniversalLinkSymbolLoc_ptr;
  v34 = getMPModelPropertyRadioStationProviderUniversalLinkSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationProviderUniversalLinkSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v32[3] = dlsym(v16, "MPModelPropertyRadioStationProviderUniversalLink");
    getMPModelPropertyRadioStationProviderUniversalLinkSymbolLoc_ptr = v32[3];
    v15 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v15)
  {
    goto LABEL_28;
  }

  v17 = *v15;
  v35[4] = v17;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v18 = getMPModelPropertyRadioStationProviderBundleIdentifierSymbolLoc_ptr;
  v34 = getMPModelPropertyRadioStationProviderBundleIdentifierSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationProviderBundleIdentifierSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v32[3] = dlsym(v19, "MPModelPropertyRadioStationProviderBundleIdentifier");
    getMPModelPropertyRadioStationProviderBundleIdentifierSymbolLoc_ptr = v32[3];
    v18 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v18)
  {
    goto LABEL_28;
  }

  v20 = *v18;
  v35[5] = v20;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v21 = getMPModelPropertyRadioStationProviderIDSymbolLoc_ptr;
  v34 = getMPModelPropertyRadioStationProviderIDSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationProviderIDSymbolLoc_ptr)
  {
    v22 = MediaPlayerLibrary_6();
    v32[3] = dlsym(v22, "MPModelPropertyRadioStationProviderID");
    getMPModelPropertyRadioStationProviderIDSymbolLoc_ptr = v32[3];
    v21 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v21)
  {
    goto LABEL_28;
  }

  v23 = *v21;
  v35[6] = v23;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v24 = getMPModelPropertyRadioStationArtworkSymbolLoc_ptr;
  v34 = getMPModelPropertyRadioStationArtworkSymbolLoc_ptr;
  if (!getMPModelPropertyRadioStationArtworkSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary_6();
    v32[3] = dlsym(v25, "MPModelPropertyRadioStationArtwork");
    getMPModelPropertyRadioStationArtworkSymbolLoc_ptr = v32[3];
    v24 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v24)
  {
LABEL_28:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v36 = *v24;
  v26 = MEMORY[0x277CBEA60];
  v27 = v36;
  v28 = [v26 arrayWithObjects:v35 count:8];

  v29 = [v2 initWithProperties:v28 relationships:MEMORY[0x277CBEC10]];

  return v29;
}

+ (id)_tvSeasonSupportedPropertiesForPlayback
{
  v20[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v16 = getMPModelPropertyTVSeasonArtwork();
  v20[0] = v16;
  v15 = getMPModelPropertyTVSeasonEpisodesCount();
  v20[1] = v15;
  v3 = getMPModelPropertyTVSeasonLibraryAdded();
  v20[2] = v3;
  v4 = getMPModelPropertyTVSeasonLibraryAddEligible();
  v20[3] = v4;
  v5 = getMPModelPropertyTVSeasonNumber();
  v20[4] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];
  v7 = getMPModelRelationshipTVSeasonShow();
  v18 = v7;
  MPPropertySetClass = getMPPropertySetClass();
  v9 = getMPModelPropertyTVShowTitle();
  v17 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v11 = [MPPropertySetClass propertySetWithProperties:v10];
  v19 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v13 = [v2 initWithProperties:v6 relationships:v12];

  return v13;
}

+ (id)_recentlyAddedObjectSupportedProperties
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v4 = getMPModelRelationshipGenericAlbum();
  v15[0] = v4;
  _albumSupportedProperties = [self _albumSupportedProperties];
  v16[0] = _albumSupportedProperties;
  v6 = getMPModelRelationshipGenericMovie();
  v15[1] = v6;
  _movieSupportedProperties = [self _movieSupportedProperties];
  v16[1] = _movieSupportedProperties;
  v8 = getMPModelRelationshipGenericPlaylist_0();
  v15[2] = v8;
  _playlistSupportedProperties = [self _playlistSupportedProperties];
  v16[2] = _playlistSupportedProperties;
  v10 = getMPModelRelationshipGenericTVSeason();
  v15[3] = v10;
  _tvSeasonSupportedProperties = [self _tvSeasonSupportedProperties];
  v16[3] = _tvSeasonSupportedProperties;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v13 = [v3 initWithProperties:MEMORY[0x277CBEBF8] relationships:v12];

  return v13;
}

+ (id)_albumSupportedProperties
{
  v117 = *MEMORY[0x277D85DE8];
  v105 = objc_alloc(MEMORY[0x277CBEB18]);
  v103 = getMPModelPropertyAlbumTitle();
  v115[0] = v103;
  v102 = getMPModelPropertyAlbumTrackCount();
  v115[1] = v102;
  v101 = getMPModelPropertyAlbumCleanDownloadedTrackCount();
  v115[2] = v101;
  v100 = getMPModelPropertyAlbumCleanSongCount();
  v115[3] = v100;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v2 = getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v3, "MPModelPropertyAlbumMaximumItemTrackNumber");
    getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_ptr = v108[3];
    v2 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v2)
  {
    goto LABEL_72;
  }

  v91 = *v2;
  v115[4] = v91;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v4 = getMPModelPropertyAlbumHasCleanContentSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumHasCleanContentSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumHasCleanContentSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v5, "MPModelPropertyAlbumHasCleanContent");
    getMPModelPropertyAlbumHasCleanContentSymbolLoc_ptr = v108[3];
    v4 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v4)
  {
    goto LABEL_72;
  }

  v90 = *v4;
  v115[5] = v90;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v6 = getMPModelPropertyAlbumHasExplicitContentSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumHasExplicitContentSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumHasExplicitContentSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v7, "MPModelPropertyAlbumHasExplicitContent");
    getMPModelPropertyAlbumHasExplicitContentSymbolLoc_ptr = v108[3];
    v6 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v6)
  {
    goto LABEL_72;
  }

  v89 = *v6;
  v115[6] = v89;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v8 = getMPModelPropertyAlbumIsCompilationSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumIsCompilationSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumIsCompilationSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v9, "MPModelPropertyAlbumIsCompilation");
    getMPModelPropertyAlbumIsCompilationSymbolLoc_ptr = v108[3];
    v8 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v8)
  {
    goto LABEL_72;
  }

  v88 = *v8;
  v115[7] = v88;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v10 = getMPModelPropertyAlbumIsClassicalSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumIsClassicalSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumIsClassicalSymbolLoc_ptr)
  {
    v11 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v11, "MPModelPropertyAlbumIsClassical");
    getMPModelPropertyAlbumIsClassicalSymbolLoc_ptr = v108[3];
    v10 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v10)
  {
    goto LABEL_72;
  }

  v87 = *v10;
  v115[8] = v87;
  v99 = getMPModelPropertyAlbumIsFavorite();
  v115[9] = v99;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v12 = getMPModelPropertyAlbumIsPinnedSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumIsPinnedSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumIsPinnedSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v13, "MPModelPropertyAlbumIsPinned");
    getMPModelPropertyAlbumIsPinnedSymbolLoc_ptr = v108[3];
    v12 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v12)
  {
    goto LABEL_72;
  }

  v86 = *v12;
  v115[10] = v86;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v14 = getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_ptr)
  {
    v15 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v15, "MPModelPropertyAlbumClassicalExperienceAvailable");
    getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_ptr = v108[3];
    v14 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v14)
  {
    goto LABEL_72;
  }

  v85 = *v14;
  v115[11] = v85;
  v98 = getMPModelPropertyAlbumDateFavorited();
  v115[12] = v98;
  v97 = getMPModelPropertyAlbumReleaseDateComponents();
  v115[13] = v97;
  v96 = getMPModelPropertyAlbumArtwork();
  v115[14] = v96;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v16 = getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_ptr)
  {
    v17 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v17, "MPModelPropertyAlbumLastDevicePlaybackDate");
    getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_ptr = v108[3];
    v16 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v16)
  {
    goto LABEL_72;
  }

  v84 = *v16;
  v115[15] = v84;
  v95 = getMPModelPropertyAlbumLibraryAddEligible();
  v115[16] = v95;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v18 = getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v19, "MPModelPropertyAlbumDownloadedDate");
    getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr = v108[3];
    v18 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v18)
  {
    goto LABEL_72;
  }

  v83 = *v18;
  v115[17] = v83;
  v94 = getMPModelPropertyAlbumYear();
  v115[18] = v94;
  v93 = getMPModelPropertyAlbumLibraryAdded();
  v115[19] = v93;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v20 = getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr)
  {
    v21 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v21, "MPModelPropertyAlbumLibraryAddedDate");
    getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr = v108[3];
    v20 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v20)
  {
    goto LABEL_72;
  }

  v82 = *v20;
  v115[20] = v82;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v22 = getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_ptr)
  {
    v23 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v23, "MPModelPropertyAlbumKeepLocalEnableState");
    getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_ptr = v108[3];
    v22 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v22)
  {
    goto LABEL_72;
  }

  v81 = *v22;
  v115[21] = v81;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v24 = getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v25, "MPModelPropertyAlbumKeepLocalManagedStatus");
    getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_ptr = v108[3];
    v24 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v24)
  {
    goto LABEL_72;
  }

  v80 = *v24;
  v115[22] = v80;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v26 = getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_ptr)
  {
    v27 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v27, "MPModelPropertyAlbumKeepLocalManagedStatusReason");
    getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_ptr = v108[3];
    v26 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v26)
  {
    goto LABEL_72;
  }

  v28 = *v26;
  v115[23] = v28;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v29 = getMPModelPropertyAlbumCopyrightTextSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumCopyrightTextSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumCopyrightTextSymbolLoc_ptr)
  {
    v30 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v30, "MPModelPropertyAlbumCopyrightText");
    getMPModelPropertyAlbumCopyrightTextSymbolLoc_ptr = v108[3];
    v29 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v29)
  {
    goto LABEL_72;
  }

  v31 = *v29;
  v115[24] = v31;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v32 = getMPModelPropertyAlbumPreorderSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumPreorderSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumPreorderSymbolLoc_ptr)
  {
    v33 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v33, "MPModelPropertyAlbumPreorder");
    getMPModelPropertyAlbumPreorderSymbolLoc_ptr = v108[3];
    v32 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v32)
  {
    goto LABEL_72;
  }

  v34 = *v32;
  v115[25] = v34;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v35 = getMPModelPropertyAlbumEditorNotesSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumEditorNotesSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumEditorNotesSymbolLoc_ptr)
  {
    v36 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v36, "MPModelPropertyAlbumEditorNotes");
    getMPModelPropertyAlbumEditorNotesSymbolLoc_ptr = v108[3];
    v35 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v35)
  {
    goto LABEL_72;
  }

  v37 = *v35;
  v115[26] = v37;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v38 = getMPModelPropertyAlbumShortEditorNotesSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumShortEditorNotesSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumShortEditorNotesSymbolLoc_ptr)
  {
    v39 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v39, "MPModelPropertyAlbumShortEditorNotes");
    getMPModelPropertyAlbumShortEditorNotesSymbolLoc_ptr = v108[3];
    v38 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v38)
  {
    goto LABEL_72;
  }

  v40 = *v38;
  v115[27] = v40;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v41 = getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_ptr)
  {
    v42 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v42, "MPModelPropertyAlbumVolumeNormalization");
    getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_ptr = v108[3];
    v41 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v41)
  {
    goto LABEL_72;
  }

  v43 = *v41;
  v115[28] = v43;
  v44 = getMPModelPropertyAlbumTraits();
  v115[29] = v44;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v45 = getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_ptr)
  {
    v46 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v46, "MPModelPropertyAlbumIsStoreRedownloadable");
    getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_ptr = v108[3];
    v45 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v45)
  {
    goto LABEL_72;
  }

  v47 = *v45;
  v115[30] = v47;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v48 = getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_ptr;
  v110 = getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_ptr)
  {
    v49 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v49, "MPModelPropertyAlbumDownloadedTrackCount");
    getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_ptr = v108[3];
    v48 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v48)
  {
    goto LABEL_72;
  }

  v116 = *v48;
  v50 = MEMORY[0x277CBEA60];
  v51 = v116;
  v52 = [v50 arrayWithObjects:v115 count:32];

  v106 = [v105 initWithArray:v52];
  v53 = objc_alloc(MEMORY[0x277CBEB18]);
  v104 = getMPModelPropertyArtistName();
  v114[0] = v104;
  v54 = getMPModelPropertyArtistCleanSongCount();
  v114[1] = v54;
  v55 = getMPModelPropertyArtistCleanDownloadedSongCount();
  v114[2] = v55;
  v56 = getMPModelPropertyArtistDownloadedSongCount();
  v114[3] = v56;
  v57 = getMPModelPropertyArtistSongCount();
  v114[4] = v57;
  v58 = getMPModelPropertyArtistAlbumCount();
  v114[5] = v58;
  v59 = getMPModelPropertyArtistLibraryAddedDate();
  v114[6] = v59;
  v60 = getMPModelPropertyArtistIsFavorite();
  v114[7] = v60;
  v61 = getMPModelPropertyArtistDateFavorited();
  v114[8] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:9];
  v63 = [v53 initWithArray:v62];

  if (_os_feature_enabled_impl())
  {
    v64 = getMPModelPropertyAlbumIsDisliked();
    [v106 addObject:v64];

    v65 = getMPModelPropertyArtistIsDisliked();
    [v63 addObject:v65];
  }

  v66 = objc_alloc(getMPPropertySetClass());
  v67 = getMPModelRelationshipAlbumArtist();
  v111[0] = v67;
  v68 = [getMPPropertySetClass() propertySetWithProperties:v63];
  v113[0] = v68;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v69 = getMPModelRelationshipAlbumGenreSymbolLoc_ptr;
  v110 = getMPModelRelationshipAlbumGenreSymbolLoc_ptr;
  if (!getMPModelRelationshipAlbumGenreSymbolLoc_ptr)
  {
    v70 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v70, "MPModelRelationshipAlbumGenre");
    getMPModelRelationshipAlbumGenreSymbolLoc_ptr = v108[3];
    v69 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v69)
  {
    goto LABEL_72;
  }

  v71 = *v69;
  v111[1] = v71;
  _genreSupportedProperties = [self _genreSupportedProperties];
  v113[1] = _genreSupportedProperties;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v73 = getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_ptr;
  v110 = getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_ptr;
  if (!getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_ptr)
  {
    v74 = MediaPlayerLibrary_6();
    v108[3] = dlsym(v74, "MPModelRelationshipAlbumRepresentativeSong");
    getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_ptr = v108[3];
    v73 = v108[3];
  }

  _Block_object_dispose(&v107, 8);
  if (!v73)
  {
LABEL_72:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v112 = *v73;
  v75 = v112;
  _representativeSongSupportedProperties = [self _representativeSongSupportedProperties];
  v113[2] = _representativeSongSupportedProperties;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v111 count:3];
  v78 = [v66 initWithProperties:v106 relationships:v77];

  return v78;
}

+ (id)_genreSupportedProperties
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v3 = getMPModelPropertyGenreNameSymbolLoc_ptr;
  v16 = getMPModelPropertyGenreNameSymbolLoc_ptr;
  if (!getMPModelPropertyGenreNameSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v14[3] = dlsym(v4, "MPModelPropertyGenreName");
    getMPModelPropertyGenreNameSymbolLoc_ptr = v14[3];
    v3 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = *v3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v6 = getMPModelPropertyGenreLibraryAddedDateSymbolLoc_ptr;
  v16 = getMPModelPropertyGenreLibraryAddedDateSymbolLoc_ptr;
  v17 = v5;
  if (!getMPModelPropertyGenreLibraryAddedDateSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v14[3] = dlsym(v7, "MPModelPropertyGenreLibraryAddedDate");
    getMPModelPropertyGenreLibraryAddedDateSymbolLoc_ptr = v14[3];
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v6)
  {
LABEL_10:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v18 = *v6;
  v8 = MEMORY[0x277CBEA60];
  v9 = v18;
  v10 = [v8 arrayWithObjects:&v17 count:2];

  v11 = [v2 initWithProperties:v10 relationships:MEMORY[0x277CBEC10]];

  return v11;
}

+ (id)_representativeSongSupportedProperties
{
  v60[19] = *MEMORY[0x277D85DE8];
  v52 = objc_alloc(MEMORY[0x277CBEB18]);
  v50 = getMPModelPropertySongArtistUploadedContent();
  v60[0] = v50;
  v48 = getMPModelPropertySongArtwork();
  v60[1] = v48;
  v46 = getMPModelPropertySongCloudStatus();
  v60[2] = v46;
  v44 = getMPModelPropertySongDuration();
  v60[3] = v44;
  v42 = getMPModelPropertySongExplicit();
  v60[4] = v42;
  v40 = getMPModelPropertySongHasVideo();
  v60[5] = v40;
  v38 = getMPModelPropertySongIsFavorite();
  v60[6] = v38;
  v36 = getMPModelPropertySongDateFavorited();
  v60[7] = v36;
  v34 = getMPModelPropertySongKeepLocalEnableState();
  v60[8] = v34;
  v32 = getMPModelPropertySongKeepLocalManagedStatus();
  v60[9] = v32;
  v2 = getMPModelPropertySongKeepLocalManagedStatusReason();
  v60[10] = v2;
  v3 = getMPModelPropertySongLibraryAdded();
  v60[11] = v3;
  v4 = getMPModelPropertySongLibraryAddEligible();
  v60[12] = v4;
  v5 = getMPModelPropertySongShouldShowComposer();
  v60[13] = v5;
  v6 = getMPModelPropertySongTitle();
  v60[14] = v6;
  v7 = get_MPModelPropertySongTrackCount();
  v60[15] = v7;
  v8 = getMPModelPropertySongTrackNumber();
  v60[16] = v8;
  v9 = getMPModelPropertySongTraits();
  v60[17] = v9;
  v10 = getMPModelPropertySongUserRating();
  v60[18] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:19];
  v53 = [v52 initWithArray:v11];

  if (_os_feature_enabled_impl())
  {
    v12 = getMPModelPropertySongIsDisliked();
    [v53 addObject:v12];
  }

  v13 = objc_alloc(getMPPropertySetClass());
  v51 = getMPModelRelationshipSongLocalFileAsset();
  v58[0] = v51;
  MPPropertySetClass = getMPPropertySetClass();
  v49 = getMPModelPropertyFileAssetNonPurgeable();
  v57[0] = v49;
  v47 = getMPModelPropertyFileAssetProtectionType();
  v57[1] = v47;
  v45 = getMPModelPropertyFileAssetTraits();
  v57[2] = v45;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
  v41 = [MPPropertySetClass propertySetWithProperties:v43];
  v59[0] = v41;
  v39 = getMPModelRelationshipSongStoreAsset();
  v58[1] = v39;
  v15 = getMPPropertySetClass();
  v37 = getMPModelPropertyStoreAssetRedownloadable();
  v56[0] = v37;
  v35 = getMPModelPropertyStoreAssetSubscriptionRequired();
  v56[1] = v35;
  v33 = getMPModelPropertyStoreAssetNeedsUserUpload();
  v56[2] = v33;
  v31 = getMPModelPropertyStoreAssetEndpointType();
  v56[3] = v31;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
  v29 = [v15 propertySetWithProperties:v30];
  v59[1] = v29;
  v16 = getMPModelRelationshipSongHomeSharingAsset();
  v58[2] = v16;
  v17 = getMPPropertySetClass();
  v18 = getMPModelPropertyHomeSharingAssetAvailable();
  v55 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v20 = [v17 propertySetWithProperties:v19];
  v59[2] = v20;
  v21 = getMPModelRelationshipSongArtist();
  v58[3] = v21;
  v22 = getMPPropertySetClass();
  v23 = getMPModelPropertyArtistName();
  v54 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v25 = [v22 propertySetWithProperties:v24];
  v59[3] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];
  v28 = [v13 initWithProperties:v53 relationships:v26];

  return v28;
}

+ (id)_movieSupportedProperties
{
  v63[16] = *MEMORY[0x277D85DE8];
  v50 = objc_alloc(getMPPropertySetClass());
  v55 = getMPModelPropertyMovieArtwork();
  v63[0] = v55;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v3 = getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr;
  v59 = getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr;
  if (!getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v4, "MPModelPropertyMovieDownloadedDate");
    getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr = v57[3];
    v3 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v3)
  {
    goto LABEL_43;
  }

  v49 = *v3;
  v63[1] = v49;
  v54 = getMPModelPropertyMovieDuration();
  v63[2] = v54;
  v53 = getMPModelPropertyMovieHasCloudSyncSource();
  v63[3] = v53;
  v52 = getMPModelPropertyMovieLibraryAdded();
  v63[4] = v52;
  v51 = getMPModelPropertyMovieLibraryAddEligible();
  v63[5] = v51;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v5 = getMPModelPropertyMovieKeepLocalEnableStateSymbolLoc_ptr;
  v59 = getMPModelPropertyMovieKeepLocalEnableStateSymbolLoc_ptr;
  if (!getMPModelPropertyMovieKeepLocalEnableStateSymbolLoc_ptr)
  {
    v6 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v6, "MPModelPropertyMovieKeepLocalEnableState");
    getMPModelPropertyMovieKeepLocalEnableStateSymbolLoc_ptr = v57[3];
    v5 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v5)
  {
    goto LABEL_43;
  }

  v48 = *v5;
  v63[6] = v48;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v7 = getMPModelPropertyMovieKeepLocalManagedStatusSymbolLoc_ptr;
  v59 = getMPModelPropertyMovieKeepLocalManagedStatusSymbolLoc_ptr;
  if (!getMPModelPropertyMovieKeepLocalManagedStatusSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v8, "MPModelPropertyMovieKeepLocalManagedStatus");
    getMPModelPropertyMovieKeepLocalManagedStatusSymbolLoc_ptr = v57[3];
    v7 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v7)
  {
    goto LABEL_43;
  }

  v47 = *v7;
  v63[7] = v47;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v9 = getMPModelPropertyMovieKeepLocalManagedStatusReasonSymbolLoc_ptr;
  v59 = getMPModelPropertyMovieKeepLocalManagedStatusReasonSymbolLoc_ptr;
  if (!getMPModelPropertyMovieKeepLocalManagedStatusReasonSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v10, "MPModelPropertyMovieKeepLocalManagedStatusReason");
    getMPModelPropertyMovieKeepLocalManagedStatusReasonSymbolLoc_ptr = v57[3];
    v9 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v9)
  {
    goto LABEL_43;
  }

  v46 = *v9;
  v63[8] = v46;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v11 = getMPModelPropertyMovieLastDevicePlaybackDateSymbolLoc_ptr;
  v59 = getMPModelPropertyMovieLastDevicePlaybackDateSymbolLoc_ptr;
  if (!getMPModelPropertyMovieLastDevicePlaybackDateSymbolLoc_ptr)
  {
    v12 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v12, "MPModelPropertyMovieLastDevicePlaybackDate");
    getMPModelPropertyMovieLastDevicePlaybackDateSymbolLoc_ptr = v57[3];
    v11 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v11)
  {
    goto LABEL_43;
  }

  v45 = *v11;
  v63[9] = v45;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v13 = getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr;
  v59 = getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr)
  {
    v14 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v14, "MPModelPropertyMovieLibraryAddedDate");
    getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr = v57[3];
    v13 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v13)
  {
    goto LABEL_43;
  }

  v44 = *v13;
  v63[10] = v44;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v15 = getMPModelPropertyMovieInfoDictionarySymbolLoc_ptr;
  v59 = getMPModelPropertyMovieInfoDictionarySymbolLoc_ptr;
  if (!getMPModelPropertyMovieInfoDictionarySymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v16, "MPModelPropertyMovieInfoDictionary");
    getMPModelPropertyMovieInfoDictionarySymbolLoc_ptr = v57[3];
    v15 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v15)
  {
    goto LABEL_43;
  }

  v43 = *v15;
  v63[11] = v43;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v17 = getMPModelPropertyMovieReleaseDateSymbolLoc_ptr;
  v59 = getMPModelPropertyMovieReleaseDateSymbolLoc_ptr;
  if (!getMPModelPropertyMovieReleaseDateSymbolLoc_ptr)
  {
    v18 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v18, "MPModelPropertyMovieReleaseDate");
    getMPModelPropertyMovieReleaseDateSymbolLoc_ptr = v57[3];
    v17 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v17)
  {
    goto LABEL_43;
  }

  v42 = *v17;
  v63[12] = v42;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v19 = getMPModelPropertyMovieDescriptionTextSymbolLoc_ptr;
  v59 = getMPModelPropertyMovieDescriptionTextSymbolLoc_ptr;
  if (!getMPModelPropertyMovieDescriptionTextSymbolLoc_ptr)
  {
    v20 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v20, "MPModelPropertyMovieDescriptionText");
    getMPModelPropertyMovieDescriptionTextSymbolLoc_ptr = v57[3];
    v19 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v19)
  {
    goto LABEL_43;
  }

  v41 = *v19;
  v63[13] = v41;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v21 = getMPModelPropertyMovieTaglineSymbolLoc_ptr;
  v59 = getMPModelPropertyMovieTaglineSymbolLoc_ptr;
  if (!getMPModelPropertyMovieTaglineSymbolLoc_ptr)
  {
    v22 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v22, "MPModelPropertyMovieTagline");
    getMPModelPropertyMovieTaglineSymbolLoc_ptr = v57[3];
    v21 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v21)
  {
    goto LABEL_43;
  }

  v40 = *v21;
  v63[14] = v40;
  v23 = getMPModelPropertyMovieTitle();
  v63[15] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:16];
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v25 = getMPModelRelationshipMoviePlaybackPositionSymbolLoc_ptr;
  v59 = getMPModelRelationshipMoviePlaybackPositionSymbolLoc_ptr;
  if (!getMPModelRelationshipMoviePlaybackPositionSymbolLoc_ptr)
  {
    v26 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v26, "MPModelRelationshipMoviePlaybackPosition");
    getMPModelRelationshipMoviePlaybackPositionSymbolLoc_ptr = v57[3];
    v25 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v25)
  {
    goto LABEL_43;
  }

  v27 = *v25;
  v60[0] = v27;
  _playbackPositionSupportedProperties = [self _playbackPositionSupportedProperties];
  v62[0] = _playbackPositionSupportedProperties;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v29 = getMPModelRelationshipMovieLocalFileAssetSymbolLoc_ptr;
  v59 = getMPModelRelationshipMovieLocalFileAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipMovieLocalFileAssetSymbolLoc_ptr)
  {
    v30 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v30, "MPModelRelationshipMovieLocalFileAsset");
    getMPModelRelationshipMovieLocalFileAssetSymbolLoc_ptr = v57[3];
    v29 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v29)
  {
    goto LABEL_43;
  }

  v31 = *v29;
  v60[1] = v31;
  _localFileAssetSupportedProperties = [self _localFileAssetSupportedProperties];
  v62[1] = _localFileAssetSupportedProperties;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v33 = getMPModelRelationshipMovieStoreAssetSymbolLoc_ptr;
  v59 = getMPModelRelationshipMovieStoreAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipMovieStoreAssetSymbolLoc_ptr)
  {
    v34 = MediaPlayerLibrary_6();
    v57[3] = dlsym(v34, "MPModelRelationshipMovieStoreAsset");
    getMPModelRelationshipMovieStoreAssetSymbolLoc_ptr = v57[3];
    v33 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v33)
  {
LABEL_43:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v61 = *v33;
  v35 = v61;
  _storeAssetSupportedProperties = [self _storeAssetSupportedProperties];
  v62[2] = _storeAssetSupportedProperties;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v60 count:3];
  v38 = [v50 initWithProperties:v24 relationships:v37];

  return v38;
}

+ (id)_playbackPositionSupportedProperties
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v3 = getMPModelPropertyPlaybackPositionBookmarkTimeSymbolLoc_ptr;
  v28 = getMPModelPropertyPlaybackPositionBookmarkTimeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaybackPositionBookmarkTimeSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v4, "MPModelPropertyPlaybackPositionBookmarkTime");
    getMPModelPropertyPlaybackPositionBookmarkTimeSymbolLoc_ptr = v26[3];
    v3 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v3)
  {
    goto LABEL_22;
  }

  v5 = *v3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v6 = getMPModelPropertyPlaybackPositionShouldRememberBookmarkTimeSymbolLoc_ptr;
  v28 = getMPModelPropertyPlaybackPositionShouldRememberBookmarkTimeSymbolLoc_ptr;
  v29[0] = v5;
  if (!getMPModelPropertyPlaybackPositionShouldRememberBookmarkTimeSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v7, "MPModelPropertyPlaybackPositionShouldRememberBookmarkTime");
    getMPModelPropertyPlaybackPositionShouldRememberBookmarkTimeSymbolLoc_ptr = v26[3];
    v6 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v6)
  {
    goto LABEL_22;
  }

  v8 = *v6;
  v29[1] = v8;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v9 = getMPModelPropertyPlaybackPositionHasBeenPlayedSymbolLoc_ptr;
  v28 = getMPModelPropertyPlaybackPositionHasBeenPlayedSymbolLoc_ptr;
  if (!getMPModelPropertyPlaybackPositionHasBeenPlayedSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v10, "MPModelPropertyPlaybackPositionHasBeenPlayed");
    getMPModelPropertyPlaybackPositionHasBeenPlayedSymbolLoc_ptr = v26[3];
    v9 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v9)
  {
    goto LABEL_22;
  }

  v11 = *v9;
  v29[2] = v11;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v12 = getMPModelPropertyPlaybackPositionUserPlayCountSymbolLoc_ptr;
  v28 = getMPModelPropertyPlaybackPositionUserPlayCountSymbolLoc_ptr;
  if (!getMPModelPropertyPlaybackPositionUserPlayCountSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v13, "MPModelPropertyPlaybackPositionUserPlayCount");
    getMPModelPropertyPlaybackPositionUserPlayCountSymbolLoc_ptr = v26[3];
    v12 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v12)
  {
    goto LABEL_22;
  }

  v14 = *v12;
  v29[3] = v14;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v15 = getMPModelPropertyPlaybackPositionStartTimeSymbolLoc_ptr;
  v28 = getMPModelPropertyPlaybackPositionStartTimeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaybackPositionStartTimeSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v16, "MPModelPropertyPlaybackPositionStartTime");
    getMPModelPropertyPlaybackPositionStartTimeSymbolLoc_ptr = v26[3];
    v15 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v15)
  {
    goto LABEL_22;
  }

  v17 = *v15;
  v29[4] = v17;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v18 = getMPModelPropertyPlaybackPositionStopTimeSymbolLoc_ptr;
  v28 = getMPModelPropertyPlaybackPositionStopTimeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaybackPositionStopTimeSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v19, "MPModelPropertyPlaybackPositionStopTime");
    getMPModelPropertyPlaybackPositionStopTimeSymbolLoc_ptr = v26[3];
    v18 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v18)
  {
LABEL_22:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v30 = *v18;
  v20 = MEMORY[0x277CBEA60];
  v21 = v30;
  v22 = [v20 arrayWithObjects:v29 count:6];

  v23 = [v2 initWithProperties:v22 relationships:MEMORY[0x277CBEC10]];

  return v23;
}

+ (id)_localFileAssetSupportedProperties
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyFileAssetNonPurgeable();
  v9 = v3;
  v4 = getMPModelPropertyFileAssetProtectionType();
  v10 = v4;
  v5 = getMPModelPropertyFileAssetTraits();
  v11 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:3];
  v7 = [v2 initWithProperties:v6 relationships:{MEMORY[0x277CBEC10], v9, v10}];

  return v7;
}

+ (id)_storeAssetSupportedProperties
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyStoreAssetRedownloadable();
  v10[0] = v3;
  v4 = getMPModelPropertyStoreAssetSubscriptionRequired();
  v10[1] = v4;
  v5 = getMPModelPropertyStoreAssetNeedsUserUpload();
  v10[2] = v5;
  v6 = getMPModelPropertyStoreAssetEndpointType();
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
  v8 = [v2 initWithProperties:v7 relationships:MEMORY[0x277CBEC10]];

  return v8;
}

+ (id)_playlistSupportedProperties
{
  v145[42] = *MEMORY[0x277D85DE8];
  v131 = objc_alloc(MEMORY[0x277CBEB18]);
  v137 = getMPModelPropertyPlaylistName();
  v145[0] = v137;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v2 = getMPModelPropertyPlaylistEditorNotesSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistEditorNotesSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEditorNotesSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v3, "MPModelPropertyPlaylistEditorNotes");
    getMPModelPropertyPlaylistEditorNotesSymbolLoc_ptr = v139[3];
    v2 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v2)
  {
    goto LABEL_114;
  }

  v4 = *v2;
  v145[1] = v4;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v5 = getMPModelPropertyPlaylistShortEditorNotesSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistShortEditorNotesSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistShortEditorNotesSymbolLoc_ptr)
  {
    v6 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v6, "MPModelPropertyPlaylistShortEditorNotes");
    getMPModelPropertyPlaylistShortEditorNotesSymbolLoc_ptr = v139[3];
    v5 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v5)
  {
    goto LABEL_114;
  }

  v7 = *v5;
  v145[2] = v7;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v8 = getMPModelPropertyPlaylistReleaseDateComponentsSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistReleaseDateComponentsSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistReleaseDateComponentsSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v9, "MPModelPropertyPlaylistReleaseDateComponents");
    getMPModelPropertyPlaylistReleaseDateComponentsSymbolLoc_ptr = v139[3];
    v8 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v8)
  {
    goto LABEL_114;
  }

  v130 = *v8;
  v145[3] = v130;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v10 = getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr)
  {
    v11 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v11, "MPModelPropertyPlaylistLastModifiedDateComponents");
    getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr = v139[3];
    v10 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v10)
  {
    goto LABEL_114;
  }

  v127 = v4;
  v128 = v7;
  v129 = *v10;
  v145[4] = v129;
  v136 = getMPModelPropertyPlaylistArtwork();
  v145[5] = v136;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v12 = getMPModelPropertyPlaylistCoverArtworkRecipeSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistCoverArtworkRecipeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCoverArtworkRecipeSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v13, "MPModelPropertyPlaylistCoverArtworkRecipe");
    getMPModelPropertyPlaylistCoverArtworkRecipeSymbolLoc_ptr = v139[3];
    v12 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v12)
  {
    goto LABEL_114;
  }

  v14 = *v12;
  v145[6] = v14;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v15 = getMPModelPropertyPlaylistEditorialArtworkSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistEditorialArtworkSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEditorialArtworkSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v16, "MPModelPropertyPlaylistEditorialArtwork");
    getMPModelPropertyPlaylistEditorialArtworkSymbolLoc_ptr = v139[3];
    v15 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v15)
  {
    goto LABEL_114;
  }

  v17 = *v15;
  v145[7] = v17;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v18 = getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v19, "MPModelPropertyPlaylistTracksTiledArtwork");
    getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr = v139[3];
    v18 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v18)
  {
    goto LABEL_114;
  }

  v126 = *v18;
  v145[8] = v126;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v20 = getMPModelPropertyPlaylistHasAnyCleanDownloadedTracksSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistHasAnyCleanDownloadedTracksSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistHasAnyCleanDownloadedTracksSymbolLoc_ptr)
  {
    v21 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v21, "MPModelPropertyPlaylistHasAnyCleanDownloadedTracks");
    getMPModelPropertyPlaylistHasAnyCleanDownloadedTracksSymbolLoc_ptr = v139[3];
    v20 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v20)
  {
    goto LABEL_114;
  }

  v125 = *v20;
  v145[9] = v125;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v22 = getMPModelPropertyPlaylistHasAnyCleanTracksSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistHasAnyCleanTracksSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistHasAnyCleanTracksSymbolLoc_ptr)
  {
    v23 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v23, "MPModelPropertyPlaylistHasAnyCleanTracks");
    getMPModelPropertyPlaylistHasAnyCleanTracksSymbolLoc_ptr = v139[3];
    v22 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v22)
  {
    goto LABEL_114;
  }

  v124 = *v22;
  v145[10] = v124;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v24 = getMPModelPropertyPlaylistHasCleanContentSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistHasCleanContentSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistHasCleanContentSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v25, "MPModelPropertyPlaylistHasCleanContent");
    getMPModelPropertyPlaylistHasCleanContentSymbolLoc_ptr = v139[3];
    v24 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v24)
  {
    goto LABEL_114;
  }

  v123 = *v24;
  v145[11] = v123;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v26 = getMPModelPropertyPlaylistHasExplicitContentSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistHasExplicitContentSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistHasExplicitContentSymbolLoc_ptr)
  {
    v27 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v27, "MPModelPropertyPlaylistHasExplicitContent");
    getMPModelPropertyPlaylistHasExplicitContentSymbolLoc_ptr = v139[3];
    v26 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v26)
  {
    goto LABEL_114;
  }

  v120 = v14;
  v121 = v17;
  v122 = *v26;
  v145[12] = v122;
  v135 = getMPModelPropertyPlaylistType();
  v145[13] = v135;
  v134 = getMPModelPropertyPlaylistIsFavorite();
  v145[14] = v134;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v28 = getMPModelPropertyPlaylistIsPinnedSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistIsPinnedSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistIsPinnedSymbolLoc_ptr)
  {
    v29 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v29, "MPModelPropertyPlaylistIsPinned");
    getMPModelPropertyPlaylistIsPinnedSymbolLoc_ptr = v139[3];
    v28 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v28)
  {
    goto LABEL_114;
  }

  v119 = *v28;
  v145[15] = v119;
  v133 = getMPModelPropertyPlaylistDateFavorited();
  v145[16] = v133;
  v132 = getMPModelPropertyPlaylistLibraryAdded();
  v145[17] = v132;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v30 = getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr)
  {
    v31 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v31, "MPModelPropertyPlaylistLibraryAddedDate");
    getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr = v139[3];
    v30 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v30)
  {
    goto LABEL_114;
  }

  v32 = *v30;
  v145[18] = v32;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v33 = getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr)
  {
    v34 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v34, "MPModelPropertyPlaylistDownloadedDate");
    getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr = v139[3];
    v33 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v33)
  {
    goto LABEL_114;
  }

  v35 = *v33;
  v145[19] = v35;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v36 = getMPModelPropertyPlaylistLastDevicePlaybackDateSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistLastDevicePlaybackDateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistLastDevicePlaybackDateSymbolLoc_ptr)
  {
    v37 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v37, "MPModelPropertyPlaylistLastDevicePlaybackDate");
    getMPModelPropertyPlaylistLastDevicePlaybackDateSymbolLoc_ptr = v139[3];
    v36 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v36)
  {
    goto LABEL_114;
  }

  v118 = *v36;
  v145[20] = v118;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v38 = getMPModelPropertyPlaylistKeepLocalEnableStateSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistKeepLocalEnableStateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistKeepLocalEnableStateSymbolLoc_ptr)
  {
    v39 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v39, "MPModelPropertyPlaylistKeepLocalEnableState");
    getMPModelPropertyPlaylistKeepLocalEnableStateSymbolLoc_ptr = v139[3];
    v38 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v38)
  {
    goto LABEL_114;
  }

  v117 = *v38;
  v145[21] = v117;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v40 = getMPModelPropertyPlaylistKeepLocalManagedStatusSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistKeepLocalManagedStatusSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistKeepLocalManagedStatusSymbolLoc_ptr)
  {
    v41 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v41, "MPModelPropertyPlaylistKeepLocalManagedStatus");
    getMPModelPropertyPlaylistKeepLocalManagedStatusSymbolLoc_ptr = v139[3];
    v40 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v40)
  {
    goto LABEL_114;
  }

  v116 = *v40;
  v145[22] = v116;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v42 = getMPModelPropertyPlaylistKeepLocalManagedStatusReasonSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistKeepLocalManagedStatusReasonSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistKeepLocalManagedStatusReasonSymbolLoc_ptr)
  {
    v43 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v43, "MPModelPropertyPlaylistKeepLocalManagedStatusReason");
    getMPModelPropertyPlaylistKeepLocalManagedStatusReasonSymbolLoc_ptr = v139[3];
    v42 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v42)
  {
    goto LABEL_114;
  }

  v115 = *v42;
  v145[23] = v115;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v44 = getMPModelPropertyPlaylistIsOwnerSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistIsOwnerSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistIsOwnerSymbolLoc_ptr)
  {
    v45 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v45, "MPModelPropertyPlaylistIsOwner");
    getMPModelPropertyPlaylistIsOwnerSymbolLoc_ptr = v139[3];
    v44 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v44)
  {
    goto LABEL_114;
  }

  v114 = *v44;
  v145[24] = v114;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v46 = getMPModelPropertyPlaylistIsCollaborativeSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistIsCollaborativeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistIsCollaborativeSymbolLoc_ptr)
  {
    v47 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v47, "MPModelPropertyPlaylistIsCollaborative");
    getMPModelPropertyPlaylistIsCollaborativeSymbolLoc_ptr = v139[3];
    v46 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v46)
  {
    goto LABEL_114;
  }

  v113 = *v46;
  v145[25] = v113;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v48 = getMPModelPropertyPlaylistCuratorPlaylistSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistCuratorPlaylistSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCuratorPlaylistSymbolLoc_ptr)
  {
    v49 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v49, "MPModelPropertyPlaylistCuratorPlaylist");
    getMPModelPropertyPlaylistCuratorPlaylistSymbolLoc_ptr = v139[3];
    v48 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v48)
  {
    goto LABEL_114;
  }

  v112 = *v48;
  v145[26] = v112;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v50 = getMPModelPropertyPlaylistPublicPlaylistSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistPublicPlaylistSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistPublicPlaylistSymbolLoc_ptr)
  {
    v51 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v51, "MPModelPropertyPlaylistPublicPlaylist");
    getMPModelPropertyPlaylistPublicPlaylistSymbolLoc_ptr = v139[3];
    v50 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v50)
  {
    goto LABEL_114;
  }

  v111 = *v50;
  v145[27] = v111;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v52 = getMPModelPropertyPlaylistVisiblePlaylistSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistVisiblePlaylistSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistVisiblePlaylistSymbolLoc_ptr)
  {
    v53 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v53, "MPModelPropertyPlaylistVisiblePlaylist");
    getMPModelPropertyPlaylistVisiblePlaylistSymbolLoc_ptr = v139[3];
    v52 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v52)
  {
    goto LABEL_114;
  }

  v110 = *v52;
  v145[28] = v110;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v54 = getMPModelPropertyPlaylistSubscribedSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistSubscribedSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistSubscribedSymbolLoc_ptr)
  {
    v55 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v55, "MPModelPropertyPlaylistSubscribed");
    getMPModelPropertyPlaylistSubscribedSymbolLoc_ptr = v139[3];
    v54 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v54)
  {
    goto LABEL_114;
  }

  v109 = *v54;
  v145[29] = v109;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v56 = getMPModelPropertyPlaylistUserEditableComponentsSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistUserEditableComponentsSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistUserEditableComponentsSymbolLoc_ptr)
  {
    v57 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v57, "MPModelPropertyPlaylistUserEditableComponents");
    getMPModelPropertyPlaylistUserEditableComponentsSymbolLoc_ptr = v139[3];
    v56 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v56)
  {
    goto LABEL_114;
  }

  v108 = *v56;
  v145[30] = v108;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v58 = getMPModelPropertyPlaylistShareURLSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistShareURLSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistShareURLSymbolLoc_ptr)
  {
    v59 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v59, "MPModelPropertyPlaylistShareURL");
    getMPModelPropertyPlaylistShareURLSymbolLoc_ptr = v139[3];
    v58 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v58)
  {
    goto LABEL_114;
  }

  v107 = *v58;
  v145[31] = v107;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v60 = getMPModelPropertyPlaylistDescriptionTextSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistDescriptionTextSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistDescriptionTextSymbolLoc_ptr)
  {
    v61 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v61, "MPModelPropertyPlaylistDescriptionText");
    getMPModelPropertyPlaylistDescriptionTextSymbolLoc_ptr = v139[3];
    v60 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v60)
  {
    goto LABEL_114;
  }

  v106 = *v60;
  v145[32] = v106;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v62 = getMPModelPropertyPlaylistCloudVersionHashSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistCloudVersionHashSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCloudVersionHashSymbolLoc_ptr)
  {
    v63 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v63, "MPModelPropertyPlaylistCloudVersionHash");
    getMPModelPropertyPlaylistCloudVersionHashSymbolLoc_ptr = v139[3];
    v62 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v62)
  {
    goto LABEL_114;
  }

  v103 = v32;
  v104 = v35;
  v105 = *v62;
  v145[33] = v105;
  v64 = getMPModelPropertyPlaylistTraits();
  v145[34] = v64;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v65 = getMPModelPropertyPlaylistCollaborationInvitationURLSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistCollaborationInvitationURLSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCollaborationInvitationURLSymbolLoc_ptr)
  {
    v66 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v66, "MPModelPropertyPlaylistCollaborationInvitationURL");
    getMPModelPropertyPlaylistCollaborationInvitationURLSymbolLoc_ptr = v139[3];
    v65 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v65)
  {
    goto LABEL_114;
  }

  v67 = *v65;
  v145[35] = v67;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v68 = getMPModelPropertyPlaylistCollaborationInvitationURLExpirationDateSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistCollaborationInvitationURLExpirationDateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCollaborationInvitationURLExpirationDateSymbolLoc_ptr)
  {
    v69 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v69, "MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate");
    getMPModelPropertyPlaylistCollaborationInvitationURLExpirationDateSymbolLoc_ptr = v139[3];
    v68 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v68)
  {
    goto LABEL_114;
  }

  v70 = *v68;
  v145[36] = v70;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v71 = getMPModelPropertyPlaylistCollaboratorStatusSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistCollaboratorStatusSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCollaboratorStatusSymbolLoc_ptr)
  {
    v72 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v72, "MPModelPropertyPlaylistCollaboratorStatus");
    getMPModelPropertyPlaylistCollaboratorStatusSymbolLoc_ptr = v139[3];
    v71 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v71)
  {
    goto LABEL_114;
  }

  v73 = *v71;
  v145[37] = v73;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v74 = getMPModelPropertyPlaylistCollaborationSharingModeSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistCollaborationSharingModeSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistCollaborationSharingModeSymbolLoc_ptr)
  {
    v75 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v75, "MPModelPropertyPlaylistCollaborationSharingMode");
    getMPModelPropertyPlaylistCollaborationSharingModeSymbolLoc_ptr = v139[3];
    v74 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v74)
  {
    goto LABEL_114;
  }

  v76 = *v74;
  v145[38] = v76;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v77 = getMPModelPropertyPlaylistEditSessionIDSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistEditSessionIDSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEditSessionIDSymbolLoc_ptr)
  {
    v78 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v78, "MPModelPropertyPlaylistEditSessionID");
    getMPModelPropertyPlaylistEditSessionIDSymbolLoc_ptr = v139[3];
    v77 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v77)
  {
    goto LABEL_114;
  }

  v79 = *v77;
  v145[39] = v79;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v80 = getMPModelPropertyPlaylistParentPersistentIDSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistParentPersistentIDSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistParentPersistentIDSymbolLoc_ptr)
  {
    v81 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v81, "MPModelPropertyPlaylistParentPersistentID");
    getMPModelPropertyPlaylistParentPersistentIDSymbolLoc_ptr = v139[3];
    v80 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v80)
  {
    goto LABEL_114;
  }

  v82 = *v80;
  v145[40] = v82;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v83 = getMPModelPropertyPlaylistDownloadedTrackCountSymbolLoc_ptr;
  v141 = getMPModelPropertyPlaylistDownloadedTrackCountSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistDownloadedTrackCountSymbolLoc_ptr)
  {
    v84 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v84, "MPModelPropertyPlaylistDownloadedTrackCount");
    getMPModelPropertyPlaylistDownloadedTrackCountSymbolLoc_ptr = v139[3];
    v83 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v83)
  {
    goto LABEL_114;
  }

  v85 = *v83;
  v145[41] = v85;
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:42];
  v87 = [v131 initWithArray:v86];

  if (_os_feature_enabled_impl())
  {
    v88 = getMPModelPropertyPlaylistIsDisliked();
    [v87 addObject:v88];
  }

  v89 = objc_alloc(getMPPropertySetClass());
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v90 = getMPModelRelationshipPlaylistCuratorSymbolLoc_ptr;
  v141 = getMPModelRelationshipPlaylistCuratorSymbolLoc_ptr;
  if (!getMPModelRelationshipPlaylistCuratorSymbolLoc_ptr)
  {
    v91 = MediaPlayerLibrary_6();
    v139[3] = dlsym(v91, "MPModelRelationshipPlaylistCurator");
    getMPModelRelationshipPlaylistCuratorSymbolLoc_ptr = v139[3];
    v90 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v90)
  {
LABEL_114:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v92 = *v90;
  v143 = v92;
  v93 = objc_alloc(getMPPropertySetClass());
  v94 = getMPModelPropertyCuratorName();
  v142[0] = v94;
  v95 = getMPModelPropertyCuratorKind();
  v142[1] = v95;
  v96 = getMPModelPropertyCuratorSubKind();
  v142[2] = v96;
  v97 = getMPModelPropertyCuratorHandle();
  v142[3] = v97;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:4];
  v99 = [v93 initWithProperties:v98 relationships:MEMORY[0x277CBEC10]];
  v144 = v99;
  v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
  v101 = [v89 initWithProperties:v87 relationships:v100];

  return v101;
}

+ (id)_tvSeasonSupportedProperties
{
  v48 = *MEMORY[0x277D85DE8];
  v33 = objc_alloc(getMPPropertySetClass());
  v38 = getMPModelPropertyTVSeasonArtwork();
  v46[0] = v38;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v2 = getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr;
  v42 = getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_6();
    v40[3] = dlsym(v3, "MPModelPropertyTVSeasonDownloadedDate");
    getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr = v40[3];
    v2 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v2)
  {
    goto LABEL_25;
  }

  v32 = *v2;
  v46[1] = v32;
  v37 = getMPModelPropertyTVSeasonEpisodesCount();
  v46[2] = v37;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v4 = getMPModelPropertyTVSeasonHasCleanContentSymbolLoc_ptr;
  v42 = getMPModelPropertyTVSeasonHasCleanContentSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonHasCleanContentSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v40[3] = dlsym(v5, "MPModelPropertyTVSeasonHasCleanContent");
    getMPModelPropertyTVSeasonHasCleanContentSymbolLoc_ptr = v40[3];
    v4 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v4)
  {
    goto LABEL_25;
  }

  v31 = *v4;
  v46[3] = v31;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v6 = getMPModelPropertyTVSeasonHasExplicitContentSymbolLoc_ptr;
  v42 = getMPModelPropertyTVSeasonHasExplicitContentSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonHasExplicitContentSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v40[3] = dlsym(v7, "MPModelPropertyTVSeasonHasExplicitContent");
    getMPModelPropertyTVSeasonHasExplicitContentSymbolLoc_ptr = v40[3];
    v6 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v6)
  {
    goto LABEL_25;
  }

  v30 = *v6;
  v46[4] = v30;
  v36 = getMPModelPropertyTVSeasonLibraryAdded();
  v46[5] = v36;
  v35 = getMPModelPropertyTVSeasonLibraryAddEligible();
  v46[6] = v35;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v8 = getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr;
  v42 = getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v40[3] = dlsym(v9, "MPModelPropertyTVSeasonLibraryAddedDate");
    getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr = v40[3];
    v8 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v8)
  {
    goto LABEL_25;
  }

  v29 = *v8;
  v46[7] = v29;
  v34 = getMPModelPropertyTVSeasonNumber();
  v46[8] = v34;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v10 = getMPModelPropertyTVSeasonSortTypeSymbolLoc_ptr;
  v42 = getMPModelPropertyTVSeasonSortTypeSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonSortTypeSymbolLoc_ptr)
  {
    v11 = MediaPlayerLibrary_6();
    v40[3] = dlsym(v11, "MPModelPropertyTVSeasonSortType");
    getMPModelPropertyTVSeasonSortTypeSymbolLoc_ptr = v40[3];
    v10 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v10)
  {
    goto LABEL_25;
  }

  v12 = *v10;
  v46[9] = v12;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v13 = getMPModelPropertyTVSeasonDescriptionTextSymbolLoc_ptr;
  v42 = getMPModelPropertyTVSeasonDescriptionTextSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonDescriptionTextSymbolLoc_ptr)
  {
    v14 = MediaPlayerLibrary_6();
    v40[3] = dlsym(v14, "MPModelPropertyTVSeasonDescriptionText");
    getMPModelPropertyTVSeasonDescriptionTextSymbolLoc_ptr = v40[3];
    v13 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v13)
  {
    goto LABEL_25;
  }

  v15 = *v13;
  v46[10] = v15;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v16 = getMPModelPropertyTVSeasonYearSymbolLoc_ptr;
  v42 = getMPModelPropertyTVSeasonYearSymbolLoc_ptr;
  if (!getMPModelPropertyTVSeasonYearSymbolLoc_ptr)
  {
    v17 = MediaPlayerLibrary_6();
    v40[3] = dlsym(v17, "MPModelPropertyTVSeasonYear");
    getMPModelPropertyTVSeasonYearSymbolLoc_ptr = v40[3];
    v16 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v16)
  {
LABEL_25:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v47 = *v16;
  v18 = MEMORY[0x277CBEA60];
  v19 = v47;
  v20 = [v18 arrayWithObjects:v46 count:12];
  v21 = getMPModelRelationshipTVSeasonShow();
  v44 = v21;
  MPPropertySetClass = getMPPropertySetClass();
  v23 = getMPModelPropertyTVShowTitle();
  v43 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v25 = [MPPropertySetClass propertySetWithProperties:v24];
  v45 = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v27 = [v33 initWithProperties:v20 relationships:v26];

  return v27;
}

+ (MusicKit_SoftLinking_MPModelRequest)defaultUnpersonalizedRequest
{
  v68[1] = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = &v61;
  v63 = 0x2050000000;
  v3 = getMPModelRequestClass_softClass;
  v64 = getMPModelRequestClass_softClass;
  if (!getMPModelRequestClass_softClass)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelRequestClass_block_invoke;
    v59 = &unk_278229610;
    v60 = &v61;
    __getMPModelRequestClass_block_invoke(&v56);
    v3 = v62[3];
  }

  v4 = v3;
  _Block_object_dispose(&v61, 8);
  v55 = objc_alloc_init(v3);
  v61 = 0;
  v62 = &v61;
  v63 = 0x2050000000;
  v5 = getMPModelKindClass_softClass;
  v64 = getMPModelKindClass_softClass;
  if (!getMPModelKindClass_softClass)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelKindClass_block_invoke;
    v59 = &unk_278229610;
    v60 = &v61;
    __getMPModelKindClass_block_invoke(&v56);
    v5 = v62[3];
  }

  v6 = v5;
  _Block_object_dispose(&v61, 8);
  v61 = 0;
  v62 = &v61;
  v63 = 0x2050000000;
  v7 = getMPModelStoreBrowseContentItemClass_softClass_0;
  v64 = getMPModelStoreBrowseContentItemClass_softClass_0;
  if (!getMPModelStoreBrowseContentItemClass_softClass_0)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelStoreBrowseContentItemClass_block_invoke_0;
    v59 = &unk_278229610;
    v60 = &v61;
    __getMPModelStoreBrowseContentItemClass_block_invoke_0(&v56);
    v7 = v62[3];
  }

  v8 = v7;
  _Block_object_dispose(&v61, 8);
  v9 = [v5 kindWithModelClass:v7];
  [v55 setItemKind:v9];

  v50 = objc_alloc(getMPPropertySetClass());
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v10 = getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_ptr;
  v64 = getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_ptr)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_block_invoke;
    v59 = &unk_278229610;
    v60 = &v61;
    v11 = MediaPlayerLibrary_6();
    v12 = dlsym(v11, "MPModelStoreBrowseContentItemPropertyItemType");
    *(v60[1] + 24) = v12;
    getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_ptr = *(v60[1] + 24);
    v10 = v62[3];
  }

  _Block_object_dispose(&v61, 8);
  if (!v10)
  {
    goto LABEL_34;
  }

  v49 = *v10;
  v68[0] = v49;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v13 = getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_ptr;
  v64 = getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_ptr)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_block_invoke;
    v59 = &unk_278229610;
    v60 = &v61;
    v14 = MediaPlayerLibrary_6();
    v15 = dlsym(v14, "MPModelStoreBrowseContentItemRelationshipAlbum");
    *(v60[1] + 24) = v15;
    getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_ptr = *(v60[1] + 24);
    v13 = v62[3];
  }

  _Block_object_dispose(&v61, 8);
  if (!v13)
  {
    goto LABEL_34;
  }

  v48 = *v13;
  v65[0] = v48;
  _albumSupportedProperties = [self _albumSupportedProperties];
  v67[0] = _albumSupportedProperties;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v16 = getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_ptr;
  v64 = getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_ptr)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_block_invoke;
    v59 = &unk_278229610;
    v60 = &v61;
    v17 = MediaPlayerLibrary_6();
    v18 = dlsym(v17, "MPModelStoreBrowseContentItemRelationshipArtist");
    *(v60[1] + 24) = v18;
    getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_ptr = *(v60[1] + 24);
    v16 = v62[3];
  }

  _Block_object_dispose(&v61, 8);
  if (!v16)
  {
    goto LABEL_34;
  }

  v47 = *v16;
  v65[1] = v47;
  _artistSupportedProperties = [self _artistSupportedProperties];
  v67[1] = _artistSupportedProperties;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v19 = getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_ptr;
  v64 = getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_ptr)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_block_invoke;
    v59 = &unk_278229610;
    v60 = &v61;
    v20 = MediaPlayerLibrary_6();
    v21 = dlsym(v20, "MPModelStoreBrowseContentItemRelationshipSong");
    *(v60[1] + 24) = v21;
    getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_ptr = *(v60[1] + 24);
    v19 = v62[3];
  }

  _Block_object_dispose(&v61, 8);
  if (!v19)
  {
    goto LABEL_34;
  }

  v46 = *v19;
  v65[2] = v46;
  _songSupportedProperties = [self _songSupportedProperties];
  v67[2] = _songSupportedProperties;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v22 = getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_ptr;
  v64 = getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_ptr)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_block_invoke;
    v59 = &unk_278229610;
    v60 = &v61;
    v23 = MediaPlayerLibrary_6();
    v24 = dlsym(v23, "MPModelStoreBrowseContentItemRelationshipMovie");
    *(v60[1] + 24) = v24;
    getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_ptr = *(v60[1] + 24);
    v22 = v62[3];
  }

  _Block_object_dispose(&v61, 8);
  if (!v22)
  {
    goto LABEL_34;
  }

  v45 = *v22;
  v65[3] = v45;
  _movieSupportedProperties = [self _movieSupportedProperties];
  v67[3] = _movieSupportedProperties;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v26 = getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_ptr;
  v64 = getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_ptr)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_block_invoke;
    v59 = &unk_278229610;
    v60 = &v61;
    v27 = MediaPlayerLibrary_6();
    v28 = dlsym(v27, "MPModelStoreBrowseContentItemRelationshipPlaylist");
    *(v60[1] + 24) = v28;
    getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_ptr = *(v60[1] + 24);
    v26 = v62[3];
  }

  _Block_object_dispose(&v61, 8);
  if (!v26)
  {
    goto LABEL_34;
  }

  v29 = *v26;
  v65[4] = v29;
  _playlistSupportedProperties = [self _playlistSupportedProperties];
  v67[4] = _playlistSupportedProperties;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v31 = getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_ptr;
  v64 = getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_ptr)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_block_invoke;
    v59 = &unk_278229610;
    v60 = &v61;
    v32 = MediaPlayerLibrary_6();
    v33 = dlsym(v32, "MPModelStoreBrowseContentItemRelationshipTVEpisode");
    *(v60[1] + 24) = v33;
    getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_ptr = *(v60[1] + 24);
    v31 = v62[3];
  }

  _Block_object_dispose(&v61, 8);
  if (!v31)
  {
    goto LABEL_34;
  }

  v34 = *v31;
  v65[5] = v34;
  _tvEpisodeSupportedProperties = [self _tvEpisodeSupportedProperties];
  v67[5] = _tvEpisodeSupportedProperties;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v36 = getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_ptr;
  v64 = getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_ptr;
  if (!getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_ptr)
  {
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_block_invoke;
    v59 = &unk_278229610;
    v60 = &v61;
    v37 = MediaPlayerLibrary_6();
    v38 = dlsym(v37, "MPModelStoreBrowseContentItemRelationshipTVSeason");
    *(v60[1] + 24) = v38;
    getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_ptr = *(v60[1] + 24);
    v36 = v62[3];
  }

  _Block_object_dispose(&v61, 8);
  if (!v36)
  {
LABEL_34:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v66 = *v36;
  v39 = v66;
  _tvSeasonSupportedProperties = [self _tvSeasonSupportedProperties];
  v67[6] = _tvSeasonSupportedProperties;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v65 count:7];
  v42 = [v50 initWithProperties:v51 relationships:v41];
  [v55 setItemProperties:v42];

  v43 = [[self alloc] _initWithUnderlyingRequest:v55];

  return v43;
}

- (id)_initWithUnderlyingRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPModelRequest;
  v6 = [(MusicKit_SoftLinking_MPModelRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingRequest, request);
  }

  return v7;
}

+ (id)_supportedPropertiesForModelObjectType:(int64_t)type
{
  v3 = 0;
  v16[1] = *MEMORY[0x277D85DE8];
  switch(type)
  {
    case 0:
      _albumSupportedProperties = [self _albumSupportedProperties];
      goto LABEL_23;
    case 2:
      _albumSupportedProperties = [self _artistSupportedProperties];
      goto LABEL_23;
    case 3:
      _albumSupportedProperties = [self _composerSupportedProperties];
      goto LABEL_23;
    case 5:
      _albumSupportedProperties = [self _curatorSupportedProperties];
      goto LABEL_23;
    case 9:
      _albumSupportedProperties = [self _genreSupportedProperties];
      goto LABEL_23;
    case 12:
      _albumSupportedProperties = [self _lyricsSupportedProperties];
      goto LABEL_23;
    case 13:
      _albumSupportedProperties = [self _movieSupportedProperties];
      goto LABEL_23;
    case 14:
    case 28:
    case 32:
    case 36:
    case 37:
      _albumSupportedProperties = [self _songSupportedProperties];
      goto LABEL_23;
    case 15:
      _albumSupportedProperties = [self _pinSupportedProperties];
      goto LABEL_23;
    case 17:
    case 21:
    case 22:
      _albumSupportedProperties = [self _playlistSupportedProperties];
      goto LABEL_23;
    case 18:
      _albumSupportedProperties = [self _playlistAuthorSupportedProperties];
      goto LABEL_23;
    case 19:
      _albumSupportedProperties = [self _playlistEntrySupportedProperties];
      goto LABEL_23;
    case 20:
      _albumSupportedProperties = [self _playlistEntryReactionSupportedProperties];
      goto LABEL_23;
    case 25:
      _albumSupportedProperties = [self _recentlyAddedObjectSupportedProperties];
      goto LABEL_23;
    case 31:
      v5 = objc_alloc(getMPPropertySetClass());
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v6 = getMPModelPropertySectionTitleSymbolLoc_ptr;
      v15 = getMPModelPropertySectionTitleSymbolLoc_ptr;
      if (!getMPModelPropertySectionTitleSymbolLoc_ptr)
      {
        v7 = MediaPlayerLibrary_6();
        v13[3] = dlsym(v7, "MPModelPropertySectionTitle");
        getMPModelPropertySectionTitleSymbolLoc_ptr = v13[3];
        v6 = v13[3];
      }

      _Block_object_dispose(&v12, 8);
      if (!v6)
      {
        +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
        __break(1u);
      }

      v16[0] = *v6;
      v8 = MEMORY[0x277CBEA60];
      v9 = v16[0];
      v10 = [v8 arrayWithObjects:v16 count:1];

      v3 = [v5 initWithProperties:v10 relationships:MEMORY[0x277CBEC10]];
      break;
    case 33:
      _albumSupportedProperties = [self _tvEpisodeSupportedProperties];
      goto LABEL_23;
    case 34:
      _albumSupportedProperties = [self _tvSeasonSupportedProperties];
      goto LABEL_23;
    case 35:
      _albumSupportedProperties = [self _tvShowSupportedProperties];
LABEL_23:
      v3 = _albumSupportedProperties;
      break;
    default:
      break;
  }

  return v3;
}

+ (id)_propertySetForRawProperties:(id)properties relationships:(id)relationships
{
  v6 = MEMORY[0x277CBEB38];
  relationshipsCopy = relationships;
  propertiesCopy = properties;
  v9 = objc_alloc_init(v6);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __82__MusicKit_SoftLinking_MPModelRequest__propertySetForRawProperties_relationships___block_invoke;
  v17 = &unk_278229DA8;
  v18 = v9;
  selfCopy = self;
  v10 = v9;
  [relationshipsCopy enumerateKeysAndObjectsUsingBlock:&v14];

  v11 = objc_alloc(getMPPropertySetClass());
  v12 = [v11 initWithProperties:propertiesCopy relationships:{v10, v14, v15, v16, v17}];

  return v12;
}

+ (id)_artistSupportedProperties
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v25 = getMPModelPropertyArtistName();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v3 = getMPModelPropertyArtistArtworkSymbolLoc_ptr;
  v29 = getMPModelPropertyArtistArtworkSymbolLoc_ptr;
  v30[0] = v25;
  if (!getMPModelPropertyArtistArtworkSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v4, "MPModelPropertyArtistArtwork");
    getMPModelPropertyArtistArtworkSymbolLoc_ptr = v27[3];
    v3 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v3)
  {
    goto LABEL_15;
  }

  v23 = *v3;
  v30[1] = v23;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v5 = getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_ptr;
  v29 = getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_ptr;
  if (!getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_ptr)
  {
    v6 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v6, "MPModelPropertyArtistClassicalExperienceAvailable");
    getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_ptr = v27[3];
    v5 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v5)
  {
    goto LABEL_15;
  }

  v22 = *v5;
  v30[2] = v22;
  v24 = getMPModelPropertyArtistCleanSongCount();
  v30[3] = v24;
  v7 = getMPModelPropertyArtistCleanDownloadedSongCount();
  v30[4] = v7;
  v8 = getMPModelPropertyArtistDownloadedSongCount();
  v30[5] = v8;
  v9 = getMPModelPropertyArtistSongCount();
  v30[6] = v9;
  v10 = getMPModelPropertyArtistAlbumCount();
  v30[7] = v10;
  v11 = getMPModelPropertyArtistLibraryAddedDate();
  v30[8] = v11;
  v12 = getMPModelPropertyArtistIsFavorite();
  v30[9] = v12;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v13 = getMPModelPropertyArtistIsPinnedSymbolLoc_ptr;
  v29 = getMPModelPropertyArtistIsPinnedSymbolLoc_ptr;
  if (!getMPModelPropertyArtistIsPinnedSymbolLoc_ptr)
  {
    v14 = MediaPlayerLibrary_6();
    v27[3] = dlsym(v14, "MPModelPropertyArtistIsPinned");
    getMPModelPropertyArtistIsPinnedSymbolLoc_ptr = v27[3];
    v13 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v13)
  {
LABEL_15:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v31 = *v13;
  v15 = v31;
  v16 = getMPModelPropertyArtistDateFavorited();
  v32 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:12];
  v18 = [v2 initWithArray:v17];

  if (_os_feature_enabled_impl())
  {
    v19 = getMPModelPropertyArtistIsDisliked();
    [v18 addObject:v19];
  }

  v20 = [objc_alloc(getMPPropertySetClass()) initWithProperties:v18 relationships:MEMORY[0x277CBEC10]];

  return v20;
}

+ (id)_curatorSupportedProperties
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyCuratorHandle();
  v10[0] = v3;
  v4 = getMPModelPropertyCuratorKind();
  v10[1] = v4;
  v5 = getMPModelPropertyCuratorSubKind();
  v10[2] = v5;
  v6 = getMPModelPropertyCuratorName();
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
  v8 = [v2 initWithProperties:v7 relationships:MEMORY[0x277CBEC10]];

  return v8;
}

+ (id)_composerSupportedProperties
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyComposerName();
  v15 = v3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = getMPModelPropertyComposerLibraryAddedDateSymbolLoc_ptr;
  v14 = getMPModelPropertyComposerLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyComposerLibraryAddedDateSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v12[3] = dlsym(v5, "MPModelPropertyComposerLibraryAddedDate");
    getMPModelPropertyComposerLibraryAddedDateSymbolLoc_ptr = v12[3];
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v4)
  {
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v16 = *v4;
  v6 = MEMORY[0x277CBEA60];
  v7 = v16;
  v8 = [v6 arrayWithObjects:&v15 count:2];

  v9 = [v2 initWithProperties:v8 relationships:MEMORY[0x277CBEC10]];

  return v9;
}

+ (id)_lyricsSupportedProperties
{
  v19 = *MEMORY[0x277D85DE8];
  MPPropertySetClass = getMPPropertySetClass();
  v3 = getMPModelPropertyLyricsHasLibraryLyrics();
  v17[0] = v3;
  v4 = getMPModelPropertyLyricsHasStoreLyrics();
  v17[1] = v4;
  v5 = getMPModelPropertyLyricsHasTimeSyncedLyrics();
  v17[2] = v5;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v6 = getMPModelPropertyLyricsTextSymbolLoc_ptr;
  v16 = getMPModelPropertyLyricsTextSymbolLoc_ptr;
  if (!getMPModelPropertyLyricsTextSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v14[3] = dlsym(v7, "MPModelPropertyLyricsText");
    getMPModelPropertyLyricsTextSymbolLoc_ptr = v14[3];
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v6)
  {
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v18 = *v6;
  v8 = MEMORY[0x277CBEA60];
  v9 = v18;
  v10 = [v8 arrayWithObjects:v17 count:4];

  v11 = [MPPropertySetClass propertySetWithProperties:v10];

  return v11;
}

+ (id)_pinSupportedProperties
{
  v44[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v4 = getMPModelPropertyLibraryPinDefaultActionSymbolLoc_ptr;
  v40 = getMPModelPropertyLibraryPinDefaultActionSymbolLoc_ptr;
  if (!getMPModelPropertyLibraryPinDefaultActionSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v38[3] = dlsym(v5, "MPModelPropertyLibraryPinDefaultAction");
    getMPModelPropertyLibraryPinDefaultActionSymbolLoc_ptr = v38[3];
    v4 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v4)
  {
    goto LABEL_28;
  }

  v35 = *v4;
  v44[0] = v35;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v6 = getMPModelPropertyLibraryPinEntityTypeSymbolLoc_ptr;
  v40 = getMPModelPropertyLibraryPinEntityTypeSymbolLoc_ptr;
  if (!getMPModelPropertyLibraryPinEntityTypeSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v38[3] = dlsym(v7, "MPModelPropertyLibraryPinEntityType");
    getMPModelPropertyLibraryPinEntityTypeSymbolLoc_ptr = v38[3];
    v6 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v6)
  {
    goto LABEL_28;
  }

  v34 = *v6;
  v44[1] = v34;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v8 = getMPModelPropertyLibraryPinPositionSymbolLoc_ptr;
  v40 = getMPModelPropertyLibraryPinPositionSymbolLoc_ptr;
  if (!getMPModelPropertyLibraryPinPositionSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v38[3] = dlsym(v9, "MPModelPropertyLibraryPinPosition");
    getMPModelPropertyLibraryPinPositionSymbolLoc_ptr = v38[3];
    v8 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v8)
  {
    goto LABEL_28;
  }

  v33 = *v8;
  v44[2] = v33;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v10 = getMPModelPropertyLibraryPinPositionUUIDSymbolLoc_ptr;
  v40 = getMPModelPropertyLibraryPinPositionUUIDSymbolLoc_ptr;
  if (!getMPModelPropertyLibraryPinPositionUUIDSymbolLoc_ptr)
  {
    v11 = MediaPlayerLibrary_6();
    v38[3] = dlsym(v11, "MPModelPropertyLibraryPinPositionUUID");
    getMPModelPropertyLibraryPinPositionUUIDSymbolLoc_ptr = v38[3];
    v10 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v10)
  {
    goto LABEL_28;
  }

  v32 = v3;
  v31 = *v10;
  v44[3] = v31;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v12 = getMPModelRelationshipLibraryPinAlbumSymbolLoc_ptr;
  v40 = getMPModelRelationshipLibraryPinAlbumSymbolLoc_ptr;
  if (!getMPModelRelationshipLibraryPinAlbumSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v38[3] = dlsym(v13, "MPModelRelationshipLibraryPinAlbum");
    getMPModelRelationshipLibraryPinAlbumSymbolLoc_ptr = v38[3];
    v12 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v12)
  {
    goto LABEL_28;
  }

  v14 = *v12;
  v41[0] = v14;
  _albumSupportedProperties = [self _albumSupportedProperties];
  v43[0] = _albumSupportedProperties;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v16 = getMPModelRelationshipLibraryPinArtistSymbolLoc_ptr;
  v40 = getMPModelRelationshipLibraryPinArtistSymbolLoc_ptr;
  if (!getMPModelRelationshipLibraryPinArtistSymbolLoc_ptr)
  {
    v17 = MediaPlayerLibrary_6();
    v38[3] = dlsym(v17, "MPModelRelationshipLibraryPinArtist");
    getMPModelRelationshipLibraryPinArtistSymbolLoc_ptr = v38[3];
    v16 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v16)
  {
    goto LABEL_28;
  }

  v18 = *v16;
  v41[1] = v18;
  _artistSupportedProperties = [self _artistSupportedProperties];
  v43[1] = _artistSupportedProperties;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v20 = getMPModelRelationshipLibraryPinPlaylistSymbolLoc_ptr;
  v40 = getMPModelRelationshipLibraryPinPlaylistSymbolLoc_ptr;
  if (!getMPModelRelationshipLibraryPinPlaylistSymbolLoc_ptr)
  {
    v21 = MediaPlayerLibrary_6();
    v38[3] = dlsym(v21, "MPModelRelationshipLibraryPinPlaylist");
    getMPModelRelationshipLibraryPinPlaylistSymbolLoc_ptr = v38[3];
    v20 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v20)
  {
    goto LABEL_28;
  }

  v22 = *v20;
  v41[2] = v22;
  _playlistSupportedProperties = [self _playlistSupportedProperties];
  v43[2] = _playlistSupportedProperties;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v24 = getMPModelRelationshipLibraryPinSongSymbolLoc_ptr;
  v40 = getMPModelRelationshipLibraryPinSongSymbolLoc_ptr;
  if (!getMPModelRelationshipLibraryPinSongSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary_6();
    v38[3] = dlsym(v25, "MPModelRelationshipLibraryPinSong");
    getMPModelRelationshipLibraryPinSongSymbolLoc_ptr = v38[3];
    v24 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v24)
  {
LABEL_28:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v42 = *v24;
  v26 = v42;
  _songSupportedProperties = [self _songSupportedProperties];
  v43[3] = _songSupportedProperties;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v41 count:4];
  v29 = [v32 initWithProperties:v36 relationships:v28];

  return v29;
}

+ (id)_playlistAuthorSupportedProperties
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v4 = getMPModelPropertyPlaylistAuthorIsPendingApprovalSymbolLoc_ptr;
  v21 = getMPModelPropertyPlaylistAuthorIsPendingApprovalSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistAuthorIsPendingApprovalSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v19[3] = dlsym(v5, "MPModelPropertyPlaylistAuthorIsPendingApproval");
    getMPModelPropertyPlaylistAuthorIsPendingApprovalSymbolLoc_ptr = v19[3];
    v4 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = *v4;
  v24[0] = v6;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v7 = getMPModelPropertyPlaylistAuthorRoleSymbolLoc_ptr;
  v21 = getMPModelPropertyPlaylistAuthorRoleSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistAuthorRoleSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_6();
    v19[3] = dlsym(v8, "MPModelPropertyPlaylistAuthorRole");
    getMPModelPropertyPlaylistAuthorRoleSymbolLoc_ptr = v19[3];
    v7 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v24[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v11 = getMPModelRelationshipPlaylistAuthorSocialProfileSymbolLoc_ptr;
  v21 = getMPModelRelationshipPlaylistAuthorSocialProfileSymbolLoc_ptr;
  if (!getMPModelRelationshipPlaylistAuthorSocialProfileSymbolLoc_ptr)
  {
    v12 = MediaPlayerLibrary_6();
    v19[3] = dlsym(v12, "MPModelRelationshipPlaylistAuthorSocialProfile");
    getMPModelRelationshipPlaylistAuthorSocialProfileSymbolLoc_ptr = v19[3];
    v11 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v11)
  {
LABEL_13:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v22 = *v11;
  v13 = v22;
  _socialPersonSupportedProperties = [self _socialPersonSupportedProperties];
  v23 = _socialPersonSupportedProperties;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v16 = [v3 initWithProperties:v10 relationships:v15];

  return v16;
}

+ (id)_playlistEntrySupportedProperties
{
  v35[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v4 = getMPModelPropertyPlaylistEntryPositionSymbolLoc_ptr;
  v31 = getMPModelPropertyPlaylistEntryPositionSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEntryPositionSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v29[3] = dlsym(v5, "MPModelPropertyPlaylistEntryPosition");
    getMPModelPropertyPlaylistEntryPositionSymbolLoc_ptr = v29[3];
    v4 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  v26 = *v4;
  v35[0] = v26;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v6 = getMPModelPropertyPlaylistEntryUniversalIdentifierSymbolLoc_ptr;
  v31 = getMPModelPropertyPlaylistEntryUniversalIdentifierSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEntryUniversalIdentifierSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v29[3] = dlsym(v7, "MPModelPropertyPlaylistEntryUniversalIdentifier");
    getMPModelPropertyPlaylistEntryUniversalIdentifierSymbolLoc_ptr = v29[3];
    v6 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v6)
  {
    goto LABEL_16;
  }

  v25 = *v6;
  v35[1] = v25;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v8 = getMPModelPropertyPlaylistEntryPositionUniversalIdentifierSymbolLoc_ptr;
  v31 = getMPModelPropertyPlaylistEntryPositionUniversalIdentifierSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEntryPositionUniversalIdentifierSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v29[3] = dlsym(v9, "MPModelPropertyPlaylistEntryPositionUniversalIdentifier");
    getMPModelPropertyPlaylistEntryPositionUniversalIdentifierSymbolLoc_ptr = v29[3];
    v8 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v8)
  {
    goto LABEL_16;
  }

  v24 = v3;
  v23 = *v8;
  v35[2] = v23;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
  v10 = getMPModelRelationshipPlaylistEntrySong();
  v32[0] = v10;
  _songSupportedProperties = [self _songSupportedProperties];
  v34[0] = _songSupportedProperties;
  v12 = getMPModelRelationshipPlaylistEntryMovie();
  v32[1] = v12;
  _movieSupportedProperties = [self _movieSupportedProperties];
  v34[1] = _movieSupportedProperties;
  v14 = getMPModelRelationshipPlaylistEntryTVEpisode();
  v32[2] = v14;
  _tvEpisodeSupportedProperties = [self _tvEpisodeSupportedProperties];
  v34[2] = _tvEpisodeSupportedProperties;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v16 = getMPModelRelationshipPlaylistEntrySocialContributorSymbolLoc_ptr;
  v31 = getMPModelRelationshipPlaylistEntrySocialContributorSymbolLoc_ptr;
  if (!getMPModelRelationshipPlaylistEntrySocialContributorSymbolLoc_ptr)
  {
    v17 = MediaPlayerLibrary_6();
    v29[3] = dlsym(v17, "MPModelRelationshipPlaylistEntrySocialContributor");
    getMPModelRelationshipPlaylistEntrySocialContributorSymbolLoc_ptr = v29[3];
    v16 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v16)
  {
LABEL_16:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v33 = *v16;
  v18 = v33;
  _socialPersonSupportedProperties = [self _socialPersonSupportedProperties];
  v34[3] = _socialPersonSupportedProperties;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v32 count:4];
  v21 = [v24 initWithProperties:v27 relationships:v20];

  return v21;
}

+ (id)_playlistEntryReactionSupportedProperties
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(getMPPropertySetClass());
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v4 = getMPModelPropertyPlaylistEntryReactionTextSymbolLoc_ptr;
  v21 = getMPModelPropertyPlaylistEntryReactionTextSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEntryReactionTextSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v19[3] = dlsym(v5, "MPModelPropertyPlaylistEntryReactionText");
    getMPModelPropertyPlaylistEntryReactionTextSymbolLoc_ptr = v19[3];
    v4 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = *v4;
  v24[0] = v6;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v7 = getMPModelPropertyPlaylistEntryReactionDateSymbolLoc_ptr;
  v21 = getMPModelPropertyPlaylistEntryReactionDateSymbolLoc_ptr;
  if (!getMPModelPropertyPlaylistEntryReactionDateSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_6();
    v19[3] = dlsym(v8, "MPModelPropertyPlaylistEntryReactionDate");
    getMPModelPropertyPlaylistEntryReactionDateSymbolLoc_ptr = v19[3];
    v7 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v24[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v11 = getMPModelRelationshipPlaylistEntryReactionSocialProfileSymbolLoc_ptr;
  v21 = getMPModelRelationshipPlaylistEntryReactionSocialProfileSymbolLoc_ptr;
  if (!getMPModelRelationshipPlaylistEntryReactionSocialProfileSymbolLoc_ptr)
  {
    v12 = MediaPlayerLibrary_6();
    v19[3] = dlsym(v12, "MPModelRelationshipPlaylistEntryReactionSocialProfile");
    getMPModelRelationshipPlaylistEntryReactionSocialProfileSymbolLoc_ptr = v19[3];
    v11 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v11)
  {
LABEL_13:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v22 = *v11;
  v13 = v22;
  _socialPersonSupportedProperties = [self _socialPersonSupportedProperties];
  v23 = _socialPersonSupportedProperties;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v16 = [v3 initWithProperties:v10 relationships:v15];

  return v16;
}

+ (id)_socialPersonSupportedProperties
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v3 = getMPModelPropertySocialPersonArtworkSymbolLoc_ptr;
  v28 = getMPModelPropertySocialPersonArtworkSymbolLoc_ptr;
  if (!getMPModelPropertySocialPersonArtworkSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v4, "MPModelPropertySocialPersonArtwork");
    getMPModelPropertySocialPersonArtworkSymbolLoc_ptr = v26[3];
    v3 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v3)
  {
    goto LABEL_22;
  }

  v5 = *v3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v6 = getMPModelPropertySocialPersonHandleSymbolLoc_ptr;
  v28 = getMPModelPropertySocialPersonHandleSymbolLoc_ptr;
  v29[0] = v5;
  if (!getMPModelPropertySocialPersonHandleSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v7, "MPModelPropertySocialPersonHandle");
    getMPModelPropertySocialPersonHandleSymbolLoc_ptr = v26[3];
    v6 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v6)
  {
    goto LABEL_22;
  }

  v8 = *v6;
  v29[1] = v8;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v9 = getMPModelPropertySocialPersonHasLightweightProfileSymbolLoc_ptr;
  v28 = getMPModelPropertySocialPersonHasLightweightProfileSymbolLoc_ptr;
  if (!getMPModelPropertySocialPersonHasLightweightProfileSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v10, "MPModelPropertySocialPersonHasLightweightProfile");
    getMPModelPropertySocialPersonHasLightweightProfileSymbolLoc_ptr = v26[3];
    v9 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v9)
  {
    goto LABEL_22;
  }

  v11 = *v9;
  v29[2] = v11;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v12 = getMPModelPropertySocialPersonIsPrivateSymbolLoc_ptr;
  v28 = getMPModelPropertySocialPersonIsPrivateSymbolLoc_ptr;
  if (!getMPModelPropertySocialPersonIsPrivateSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v13, "MPModelPropertySocialPersonIsPrivate");
    getMPModelPropertySocialPersonIsPrivateSymbolLoc_ptr = v26[3];
    v12 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v12)
  {
    goto LABEL_22;
  }

  v14 = *v12;
  v29[3] = v14;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v15 = getMPModelPropertySocialPersonIsVerifiedSymbolLoc_ptr;
  v28 = getMPModelPropertySocialPersonIsVerifiedSymbolLoc_ptr;
  if (!getMPModelPropertySocialPersonIsVerifiedSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v16, "MPModelPropertySocialPersonIsVerified");
    getMPModelPropertySocialPersonIsVerifiedSymbolLoc_ptr = v26[3];
    v15 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v15)
  {
    goto LABEL_22;
  }

  v17 = *v15;
  v29[4] = v17;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v18 = getMPModelPropertySocialPersonNameSymbolLoc_ptr;
  v28 = getMPModelPropertySocialPersonNameSymbolLoc_ptr;
  if (!getMPModelPropertySocialPersonNameSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v26[3] = dlsym(v19, "MPModelPropertySocialPersonName");
    getMPModelPropertySocialPersonNameSymbolLoc_ptr = v26[3];
    v18 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v18)
  {
LABEL_22:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v30 = *v18;
  v20 = MEMORY[0x277CBEA60];
  v21 = v30;
  v22 = [v20 arrayWithObjects:v29 count:6];

  v23 = [v2 initWithProperties:v22 relationships:MEMORY[0x277CBEC10]];

  return v23;
}

+ (id)_songSupportedProperties
{
  v152 = *MEMORY[0x277D85DE8];
  v134 = objc_alloc(MEMORY[0x277CBEB18]);
  v132 = getMPModelPropertySongTitle();
  v150[0] = v132;
  v130 = getMPModelPropertySongDuration();
  v150[1] = v130;
  v128 = get_MPModelPropertySongTrackCount();
  v150[2] = v128;
  v126 = getMPModelPropertySongTrackNumber();
  v150[3] = v126;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v2 = getMPModelPropertySongDiscNumberSymbolLoc_ptr;
  v139 = getMPModelPropertySongDiscNumberSymbolLoc_ptr;
  if (!getMPModelPropertySongDiscNumberSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v3, "MPModelPropertySongDiscNumber");
    getMPModelPropertySongDiscNumberSymbolLoc_ptr = v137[3];
    v2 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v2)
  {
    goto LABEL_66;
  }

  v100 = *v2;
  v150[4] = v100;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v4 = getMPModelPropertySongGroupingSymbolLoc_ptr;
  v139 = getMPModelPropertySongGroupingSymbolLoc_ptr;
  if (!getMPModelPropertySongGroupingSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v5, "MPModelPropertySongGrouping");
    getMPModelPropertySongGroupingSymbolLoc_ptr = v137[3];
    v4 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v4)
  {
    goto LABEL_66;
  }

  v98 = *v4;
  v150[5] = v98;
  v124 = getMPModelPropertySongExplicit();
  v150[6] = v124;
  v122 = getMPModelPropertySongArtistUploadedContent();
  v150[7] = v122;
  v120 = getMPModelPropertySongHasVideo();
  v150[8] = v120;
  v118 = getMPModelPropertySongArtwork();
  v150[9] = v118;
  v116 = getMPModelPropertySongShouldShowComposer();
  v150[10] = v116;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v6 = getMPModelPropertySongCopyrightTextSymbolLoc_ptr;
  v139 = getMPModelPropertySongCopyrightTextSymbolLoc_ptr;
  if (!getMPModelPropertySongCopyrightTextSymbolLoc_ptr)
  {
    v7 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v7, "MPModelPropertySongCopyrightText");
    getMPModelPropertySongCopyrightTextSymbolLoc_ptr = v137[3];
    v6 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v6)
  {
    goto LABEL_66;
  }

  v96 = *v6;
  v150[11] = v96;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v8 = getMPModelPropertySongVolumeNormalizationSymbolLoc_ptr;
  v139 = getMPModelPropertySongVolumeNormalizationSymbolLoc_ptr;
  if (!getMPModelPropertySongVolumeNormalizationSymbolLoc_ptr)
  {
    v9 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v9, "MPModelPropertySongVolumeNormalization");
    getMPModelPropertySongVolumeNormalizationSymbolLoc_ptr = v137[3];
    v8 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v8)
  {
    goto LABEL_66;
  }

  v94 = *v8;
  v150[12] = v94;
  v114 = getMPModelPropertySongIsFavorite();
  v150[13] = v114;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v10 = getMPModelPropertySongIsPinnedSymbolLoc_ptr;
  v139 = getMPModelPropertySongIsPinnedSymbolLoc_ptr;
  if (!getMPModelPropertySongIsPinnedSymbolLoc_ptr)
  {
    v11 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v11, "MPModelPropertySongIsPinned");
    getMPModelPropertySongIsPinnedSymbolLoc_ptr = v137[3];
    v10 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v10)
  {
    goto LABEL_66;
  }

  v92 = *v10;
  v150[14] = v92;
  v112 = getMPModelPropertySongDateFavorited();
  v150[15] = v112;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v12 = getMPModelPropertySongDateReleasedSymbolLoc_ptr;
  v139 = getMPModelPropertySongDateReleasedSymbolLoc_ptr;
  if (!getMPModelPropertySongDateReleasedSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v13, "MPModelPropertySongDateReleased");
    getMPModelPropertySongDateReleasedSymbolLoc_ptr = v137[3];
    v12 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v12)
  {
    goto LABEL_66;
  }

  v90 = *v12;
  v150[16] = v90;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v14 = getMPModelPropertySongLastDevicePlaybackDateSymbolLoc_ptr;
  v139 = getMPModelPropertySongLastDevicePlaybackDateSymbolLoc_ptr;
  if (!getMPModelPropertySongLastDevicePlaybackDateSymbolLoc_ptr)
  {
    v15 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v15, "MPModelPropertySongLastDevicePlaybackDate");
    getMPModelPropertySongLastDevicePlaybackDateSymbolLoc_ptr = v137[3];
    v14 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v14)
  {
    goto LABEL_66;
  }

  v88 = *v14;
  v150[17] = v88;
  v110 = getMPModelPropertySongLibraryAdded();
  v150[18] = v110;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v16 = getMPModelPropertySongLibraryAddedDateSymbolLoc_ptr;
  v139 = getMPModelPropertySongLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertySongLibraryAddedDateSymbolLoc_ptr)
  {
    v17 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v17, "MPModelPropertySongLibraryAddedDate");
    getMPModelPropertySongLibraryAddedDateSymbolLoc_ptr = v137[3];
    v16 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v16)
  {
    goto LABEL_66;
  }

  v86 = *v16;
  v150[19] = v86;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v18 = getMPModelPropertySongPlayCountSymbolLoc_ptr;
  v139 = getMPModelPropertySongPlayCountSymbolLoc_ptr;
  if (!getMPModelPropertySongPlayCountSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v19, "MPModelPropertySongPlayCount");
    getMPModelPropertySongPlayCountSymbolLoc_ptr = v137[3];
    v18 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v18)
  {
    goto LABEL_66;
  }

  v84 = *v18;
  v150[20] = v84;
  v108 = getMPModelPropertySongKeepLocalEnableState();
  v150[21] = v108;
  v106 = getMPModelPropertySongKeepLocalManagedStatus();
  v150[22] = v106;
  v104 = getMPModelPropertySongKeepLocalManagedStatusReason();
  v150[23] = v104;
  v102 = getMPModelPropertySongLibraryAddEligible();
  v150[24] = v102;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v20 = getMPModelPropertySongClassicalMovementSymbolLoc_ptr;
  v139 = getMPModelPropertySongClassicalMovementSymbolLoc_ptr;
  if (!getMPModelPropertySongClassicalMovementSymbolLoc_ptr)
  {
    v21 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v21, "MPModelPropertySongClassicalMovement");
    getMPModelPropertySongClassicalMovementSymbolLoc_ptr = v137[3];
    v20 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v20)
  {
    goto LABEL_66;
  }

  v82 = *v20;
  v150[25] = v82;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v22 = getMPModelPropertySongClassicalMovementCountSymbolLoc_ptr;
  v139 = getMPModelPropertySongClassicalMovementCountSymbolLoc_ptr;
  if (!getMPModelPropertySongClassicalMovementCountSymbolLoc_ptr)
  {
    v23 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v23, "MPModelPropertySongClassicalMovementCount");
    getMPModelPropertySongClassicalMovementCountSymbolLoc_ptr = v137[3];
    v22 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v22)
  {
    goto LABEL_66;
  }

  v80 = *v22;
  v150[26] = v80;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v24 = getMPModelPropertySongClassicalMovementNumberSymbolLoc_ptr;
  v139 = getMPModelPropertySongClassicalMovementNumberSymbolLoc_ptr;
  if (!getMPModelPropertySongClassicalMovementNumberSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v25, "MPModelPropertySongClassicalMovementNumber");
    getMPModelPropertySongClassicalMovementNumberSymbolLoc_ptr = v137[3];
    v24 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v24)
  {
    goto LABEL_66;
  }

  v78 = *v24;
  v150[27] = v78;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v26 = getMPModelPropertySongClassicalWorkSymbolLoc_ptr;
  v139 = getMPModelPropertySongClassicalWorkSymbolLoc_ptr;
  if (!getMPModelPropertySongClassicalWorkSymbolLoc_ptr)
  {
    v27 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v27, "MPModelPropertySongClassicalWork");
    getMPModelPropertySongClassicalWorkSymbolLoc_ptr = v137[3];
    v26 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v26)
  {
    goto LABEL_66;
  }

  v76 = *v26;
  v150[28] = v76;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v28 = getMPModelPropertySongHasCloudSyncSourceSymbolLoc_ptr;
  v139 = getMPModelPropertySongHasCloudSyncSourceSymbolLoc_ptr;
  if (!getMPModelPropertySongHasCloudSyncSourceSymbolLoc_ptr)
  {
    v29 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v29, "MPModelPropertySongHasCloudSyncSource");
    getMPModelPropertySongHasCloudSyncSourceSymbolLoc_ptr = v137[3];
    v28 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v28)
  {
    goto LABEL_66;
  }

  v30 = *v28;
  v150[29] = v30;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v31 = getMPModelPropertySongYearSymbolLoc_ptr;
  v139 = getMPModelPropertySongYearSymbolLoc_ptr;
  if (!getMPModelPropertySongYearSymbolLoc_ptr)
  {
    v32 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v32, "MPModelPropertySongYear");
    getMPModelPropertySongYearSymbolLoc_ptr = v137[3];
    v31 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v31)
  {
    goto LABEL_66;
  }

  v33 = *v31;
  v150[30] = v33;
  v34 = getMPModelPropertySongUserRating();
  v150[31] = v34;
  v35 = getMPModelPropertySongCloudStatus();
  v150[32] = v35;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v36 = getMPModelPropertySongGaplessInfoSymbolLoc_ptr;
  v139 = getMPModelPropertySongGaplessInfoSymbolLoc_ptr;
  if (!getMPModelPropertySongGaplessInfoSymbolLoc_ptr)
  {
    v37 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v37, "MPModelPropertySongGaplessInfo");
    getMPModelPropertySongGaplessInfoSymbolLoc_ptr = v137[3];
    v36 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v36)
  {
    goto LABEL_66;
  }

  v38 = *v36;
  v150[33] = v38;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v39 = getMPModelPropertySongVolumeAdjustmentSymbolLoc_ptr;
  v139 = getMPModelPropertySongVolumeAdjustmentSymbolLoc_ptr;
  if (!getMPModelPropertySongVolumeAdjustmentSymbolLoc_ptr)
  {
    v40 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v40, "MPModelPropertySongVolumeAdjustment");
    getMPModelPropertySongVolumeAdjustmentSymbolLoc_ptr = v137[3];
    v39 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v39)
  {
    goto LABEL_66;
  }

  v41 = *v39;
  v150[34] = v41;
  v42 = getMPModelPropertySongTraits();
  v150[35] = v42;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v43 = getMPModelPropertySongSupportsExtendedLyricsAttributeSymbolLoc_ptr;
  v139 = getMPModelPropertySongSupportsExtendedLyricsAttributeSymbolLoc_ptr;
  if (!getMPModelPropertySongSupportsExtendedLyricsAttributeSymbolLoc_ptr)
  {
    v44 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v44, "MPModelPropertySongSupportsExtendedLyricsAttribute");
    getMPModelPropertySongSupportsExtendedLyricsAttributeSymbolLoc_ptr = v137[3];
    v43 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v43)
  {
    goto LABEL_66;
  }

  v45 = *v43;
  v150[36] = v45;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v46 = getMPModelPropertySongImmersiveDeeplinkURLSymbolLoc_ptr;
  v139 = getMPModelPropertySongImmersiveDeeplinkURLSymbolLoc_ptr;
  if (!getMPModelPropertySongImmersiveDeeplinkURLSymbolLoc_ptr)
  {
    v47 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v47, "MPModelPropertySongImmersiveDeeplinkURL");
    getMPModelPropertySongImmersiveDeeplinkURLSymbolLoc_ptr = v137[3];
    v46 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v46)
  {
    goto LABEL_66;
  }

  v151 = *v46;
  v48 = MEMORY[0x277CBEA60];
  v49 = v151;
  v50 = [v48 arrayWithObjects:v150 count:38];

  v135 = [v134 initWithArray:v50];
  if (_os_feature_enabled_impl())
  {
    v51 = getMPModelPropertySongIsDisliked();
    [v135 addObject:v51];
  }

  v72 = objc_alloc(getMPPropertySetClass());
  v133 = getMPModelRelationshipSongAlbum();
  v147[0] = v133;
  MPPropertySetClass = getMPPropertySetClass();
  v131 = getMPModelPropertyAlbumTitle();
  v146[0] = v131;
  v129 = getMPModelPropertyAlbumReleaseDateComponents();
  v146[1] = v129;
  v127 = getMPModelPropertyAlbumYear();
  v146[2] = v127;
  v125 = getMPModelPropertyAlbumCleanDownloadedTrackCount();
  v146[3] = v125;
  v123 = getMPModelPropertyAlbumCleanSongCount();
  v146[4] = v123;
  v121 = getMPModelPropertyAlbumTrackCount();
  v146[5] = v121;
  v119 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:6];
  v117 = [MPPropertySetClass propertySetWithProperties:v119];
  v149[0] = v117;
  v115 = getMPModelRelationshipSongArtist();
  v147[1] = v115;
  v53 = getMPPropertySetClass();
  v113 = getMPModelPropertyArtistName();
  v145 = v113;
  v111 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
  v109 = [v53 propertySetWithProperties:v111];
  v149[1] = v109;
  v107 = getMPModelRelationshipSongLocalFileAsset();
  v147[2] = v107;
  v54 = getMPPropertySetClass();
  v105 = getMPModelPropertyFileAssetNonPurgeable();
  v144[0] = v105;
  v103 = getMPModelPropertyFileAssetProtectionType();
  v144[1] = v103;
  v101 = getMPModelPropertyFileAssetTraits();
  v144[2] = v101;
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:3];
  v97 = [v54 propertySetWithProperties:v99];
  v149[2] = v97;
  v95 = getMPModelRelationshipSongStoreAsset();
  v147[3] = v95;
  v55 = getMPPropertySetClass();
  v93 = getMPModelPropertyStoreAssetRedownloadable();
  v143[0] = v93;
  v91 = getMPModelPropertyStoreAssetSubscriptionRequired();
  v143[1] = v91;
  v89 = getMPModelPropertyStoreAssetNeedsUserUpload();
  v143[2] = v89;
  v87 = getMPModelPropertyStoreAssetEndpointType();
  v143[3] = v87;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:4];
  v83 = [v55 propertySetWithProperties:v85];
  v149[3] = v83;
  v81 = getMPModelRelationshipSongHomeSharingAsset();
  v147[4] = v81;
  v56 = getMPPropertySetClass();
  v79 = getMPModelPropertyHomeSharingAssetAvailable();
  v142 = v79;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
  v75 = [v56 propertySetWithProperties:v77];
  v149[4] = v75;
  v74 = getMPModelRelationshipSongComposer();
  v147[5] = v74;
  v57 = getMPPropertySetClass();
  v58 = getMPModelPropertyComposerName();
  v141 = v58;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
  v60 = [v57 propertySetWithProperties:v59];
  v149[5] = v60;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v61 = getMPModelRelationshipSongLyricsSymbolLoc_ptr;
  v139 = getMPModelRelationshipSongLyricsSymbolLoc_ptr;
  if (!getMPModelRelationshipSongLyricsSymbolLoc_ptr)
  {
    v62 = MediaPlayerLibrary_6();
    v137[3] = dlsym(v62, "MPModelRelationshipSongLyrics");
    getMPModelRelationshipSongLyricsSymbolLoc_ptr = v137[3];
    v61 = v137[3];
  }

  _Block_object_dispose(&v136, 8);
  if (!v61)
  {
LABEL_66:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v148 = *v61;
  v63 = v148;
  v64 = getMPPropertySetClass();
  v65 = getMPModelPropertyLyricsHasLibraryLyrics();
  v140[0] = v65;
  v66 = getMPModelPropertyLyricsHasStoreLyrics();
  v140[1] = v66;
  v67 = getMPModelPropertyLyricsHasTimeSyncedLyrics();
  v140[2] = v67;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:3];
  v69 = [v64 propertySetWithProperties:v68];
  v149[6] = v69;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v147 count:7];
  v73 = [v72 initWithProperties:v135 relationships:v70];

  return v73;
}

+ (id)_tvEpisodeSupportedProperties
{
  v83[19] = *MEMORY[0x277D85DE8];
  v60 = objc_alloc(getMPPropertySetClass());
  v72 = getMPModelPropertyTVEpisodeArtwork();
  v83[0] = v72;
  v71 = getMPModelPropertyTVEpisodeDuration();
  v83[1] = v71;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v3 = getMPModelPropertyTVEpisodeTypeDisplayNameSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeTypeDisplayNameSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeTypeDisplayNameSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v4, "MPModelPropertyTVEpisodeTypeDisplayName");
    getMPModelPropertyTVEpisodeTypeDisplayNameSymbolLoc_ptr = v74[3];
    v3 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v3)
  {
    goto LABEL_49;
  }

  v59 = *v3;
  v83[2] = v59;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v5 = getMPModelPropertyTVEpisodeDownloadedDateSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeDownloadedDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeDownloadedDateSymbolLoc_ptr)
  {
    v6 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v6, "MPModelPropertyTVEpisodeDownloadedDate");
    getMPModelPropertyTVEpisodeDownloadedDateSymbolLoc_ptr = v74[3];
    v5 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v5)
  {
    goto LABEL_49;
  }

  v58 = *v5;
  v83[3] = v58;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v7 = getMPModelPropertyTVEpisodeExplicitRatingSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeExplicitRatingSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeExplicitRatingSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v8, "MPModelPropertyTVEpisodeExplicitRating");
    getMPModelPropertyTVEpisodeExplicitRatingSymbolLoc_ptr = v74[3];
    v7 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v7)
  {
    goto LABEL_49;
  }

  v57 = *v7;
  v83[4] = v57;
  v70 = getMPModelPropertyTVEpisodeHasCloudSyncSource();
  v83[5] = v70;
  v69 = getMPModelPropertyTVEpisodeLibraryAdded();
  v83[6] = v69;
  v68 = getMPModelPropertyTVEpisodeLibraryAddEligible();
  v83[7] = v68;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v9 = getMPModelPropertyTVEpisodeMusicShowSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeMusicShowSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeMusicShowSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v10, "MPModelPropertyTVEpisodeMusicShow");
    getMPModelPropertyTVEpisodeMusicShowSymbolLoc_ptr = v74[3];
    v9 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v9)
  {
    goto LABEL_49;
  }

  v56 = *v9;
  v83[8] = v56;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v11 = getMPModelPropertyTVEpisodeKeepLocalEnableStateSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeKeepLocalEnableStateSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeKeepLocalEnableStateSymbolLoc_ptr)
  {
    v12 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v12, "MPModelPropertyTVEpisodeKeepLocalEnableState");
    getMPModelPropertyTVEpisodeKeepLocalEnableStateSymbolLoc_ptr = v74[3];
    v11 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v11)
  {
    goto LABEL_49;
  }

  v55 = *v11;
  v83[9] = v55;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v13 = getMPModelPropertyTVEpisodeKeepLocalManagedStatusSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeKeepLocalManagedStatusSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeKeepLocalManagedStatusSymbolLoc_ptr)
  {
    v14 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v14, "MPModelPropertyTVEpisodeKeepLocalManagedStatus");
    getMPModelPropertyTVEpisodeKeepLocalManagedStatusSymbolLoc_ptr = v74[3];
    v13 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v13)
  {
    goto LABEL_49;
  }

  v54 = *v13;
  v83[10] = v54;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v15 = getMPModelPropertyTVEpisodeKeepLocalManagedStatusReasonSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeKeepLocalManagedStatusReasonSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeKeepLocalManagedStatusReasonSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v16, "MPModelPropertyTVEpisodeKeepLocalManagedStatusReason");
    getMPModelPropertyTVEpisodeKeepLocalManagedStatusReasonSymbolLoc_ptr = v74[3];
    v15 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v15)
  {
    goto LABEL_49;
  }

  v53 = *v15;
  v83[11] = v53;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v17 = getMPModelPropertyTVEpisodeLastDevicePlaybackDateSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeLastDevicePlaybackDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeLastDevicePlaybackDateSymbolLoc_ptr)
  {
    v18 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v18, "MPModelPropertyTVEpisodeLastDevicePlaybackDate");
    getMPModelPropertyTVEpisodeLastDevicePlaybackDateSymbolLoc_ptr = v74[3];
    v17 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v17)
  {
    goto LABEL_49;
  }

  v52 = *v17;
  v83[12] = v52;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v19 = getMPModelPropertyTVEpisodeLibraryAddedDateSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeLibraryAddedDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeLibraryAddedDateSymbolLoc_ptr)
  {
    v20 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v20, "MPModelPropertyTVEpisodeLibraryAddedDate");
    getMPModelPropertyTVEpisodeLibraryAddedDateSymbolLoc_ptr = v74[3];
    v19 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v19)
  {
    goto LABEL_49;
  }

  v51 = *v19;
  v83[13] = v51;
  v67 = getMPModelPropertyTVEpisodeNumber();
  v83[14] = v67;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v21 = getMPModelPropertyTVEpisodeReleaseDateSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeReleaseDateSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeReleaseDateSymbolLoc_ptr)
  {
    v22 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v22, "MPModelPropertyTVEpisodeReleaseDate");
    getMPModelPropertyTVEpisodeReleaseDateSymbolLoc_ptr = v74[3];
    v21 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v21)
  {
    goto LABEL_49;
  }

  v50 = *v21;
  v83[15] = v50;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v23 = getMPModelPropertyTVEpisodeDescriptionTextSymbolLoc_ptr;
  v76 = getMPModelPropertyTVEpisodeDescriptionTextSymbolLoc_ptr;
  if (!getMPModelPropertyTVEpisodeDescriptionTextSymbolLoc_ptr)
  {
    v24 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v24, "MPModelPropertyTVEpisodeDescriptionText");
    getMPModelPropertyTVEpisodeDescriptionTextSymbolLoc_ptr = v74[3];
    v23 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v23)
  {
    goto LABEL_49;
  }

  v49 = *v23;
  v83[16] = v49;
  v66 = getMPModelPropertyTVEpisodeTitle();
  v83[17] = v66;
  v65 = getMPModelPropertyTVEpisodeType();
  v83[18] = v65;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:19];
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v25 = getMPModelRelationshipTVEpisodePlaybackPositionSymbolLoc_ptr;
  v76 = getMPModelRelationshipTVEpisodePlaybackPositionSymbolLoc_ptr;
  if (!getMPModelRelationshipTVEpisodePlaybackPositionSymbolLoc_ptr)
  {
    v26 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v26, "MPModelRelationshipTVEpisodePlaybackPosition");
    getMPModelRelationshipTVEpisodePlaybackPositionSymbolLoc_ptr = v74[3];
    v25 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v25)
  {
    goto LABEL_49;
  }

  v48 = *v25;
  v79[0] = v48;
  _playbackPositionSupportedProperties = [self _playbackPositionSupportedProperties];
  v82[0] = _playbackPositionSupportedProperties;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v27 = getMPModelRelationshipTVEpisodeStoreAssetSymbolLoc_ptr;
  v76 = getMPModelRelationshipTVEpisodeStoreAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipTVEpisodeStoreAssetSymbolLoc_ptr)
  {
    v28 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v28, "MPModelRelationshipTVEpisodeStoreAsset");
    getMPModelRelationshipTVEpisodeStoreAssetSymbolLoc_ptr = v74[3];
    v27 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v27)
  {
    goto LABEL_49;
  }

  v47 = *v27;
  v79[1] = v47;
  _storeAssetSupportedProperties = [self _storeAssetSupportedProperties];
  v82[1] = _storeAssetSupportedProperties;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v29 = getMPModelRelationshipTVEpisodeLocalFileAssetSymbolLoc_ptr;
  v76 = getMPModelRelationshipTVEpisodeLocalFileAssetSymbolLoc_ptr;
  if (!getMPModelRelationshipTVEpisodeLocalFileAssetSymbolLoc_ptr)
  {
    v30 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v30, "MPModelRelationshipTVEpisodeLocalFileAsset");
    getMPModelRelationshipTVEpisodeLocalFileAssetSymbolLoc_ptr = v74[3];
    v29 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v29)
  {
    goto LABEL_49;
  }

  v31 = *v29;
  v79[2] = v31;
  _localFileAssetSupportedProperties = [self _localFileAssetSupportedProperties];
  v82[2] = _localFileAssetSupportedProperties;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v33 = getMPModelRelationshipTVEpisodeSeasonSymbolLoc_ptr;
  v76 = getMPModelRelationshipTVEpisodeSeasonSymbolLoc_ptr;
  if (!getMPModelRelationshipTVEpisodeSeasonSymbolLoc_ptr)
  {
    v34 = MediaPlayerLibrary_6();
    v74[3] = dlsym(v34, "MPModelRelationshipTVEpisodeSeason");
    getMPModelRelationshipTVEpisodeSeasonSymbolLoc_ptr = v74[3];
    v33 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v33)
  {
LABEL_49:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v80 = *v33;
  v46 = v80;
  MPPropertySetClass = getMPPropertySetClass();
  v36 = getMPModelPropertyTVSeasonNumber();
  v78 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v38 = [MPPropertySetClass propertySetWithProperties:v37];
  v82[3] = v38;
  v39 = getMPModelRelationshipTVEpisodeShow();
  v81 = v39;
  v40 = getMPPropertySetClass();
  v41 = getMPModelPropertyTVShowTitle();
  v77 = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v43 = [v40 propertySetWithProperties:v42];
  v82[4] = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v79 count:5];
  v61 = [v60 initWithProperties:v62 relationships:v44];

  return v61;
}

+ (id)_tvShowSupportedProperties
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v3 = getMPModelPropertyTVShowTitle();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v4 = getMPModelPropertyTVShowArtworkSymbolLoc_ptr;
  v17 = getMPModelPropertyTVShowArtworkSymbolLoc_ptr;
  v18[0] = v3;
  if (!getMPModelPropertyTVShowArtworkSymbolLoc_ptr)
  {
    v5 = MediaPlayerLibrary_6();
    v15[3] = dlsym(v5, "MPModelPropertyTVShowArtwork");
    getMPModelPropertyTVShowArtworkSymbolLoc_ptr = v15[3];
    v4 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v18[1] = v6;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v7 = getMPModelPropertyTVShowEpisodeCountSymbolLoc_ptr;
  v17 = getMPModelPropertyTVShowEpisodeCountSymbolLoc_ptr;
  if (!getMPModelPropertyTVShowEpisodeCountSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_6();
    v15[3] = dlsym(v8, "MPModelPropertyTVShowEpisodeCount");
    getMPModelPropertyTVShowEpisodeCountSymbolLoc_ptr = v15[3];
    v7 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v7)
  {
LABEL_10:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v19 = *v7;
  v9 = MEMORY[0x277CBEA60];
  v10 = v19;
  v11 = [v9 arrayWithObjects:v18 count:3];

  v12 = [v2 initWithProperties:v11 relationships:MEMORY[0x277CBEC10]];

  return v12;
}

@end