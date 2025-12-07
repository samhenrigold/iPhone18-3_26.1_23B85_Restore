@interface MPMediaRemoteEntityTranslator
+ (void)buildSchemaIfNeeded;
- (id)sectionObjectForPropertySet:(id)set contentItem:(id)item context:(id)context;
- (void)_mapPropertyKey:(uint64_t)key toKeyPath:;
- (void)mapAnimatedArtworkPropertyKey:(id)key;
- (void)mapArtworkPropertyKey:(id)key;
- (void)mapIdentifierCreationBlock:(id)block;
- (void)mapPropertyKey:(id)key toDeviceSpecificUserInfoKey:(id)infoKey;
- (void)mapPropertyKey:(id)key toMPContentItemSelector:(SEL)selector;
- (void)mapPropertyKey:(id)key toUserInfoKey:(id)infoKey;
- (void)mapPropertyKey:(id)key toValueTransformer:(id)transformer;
- (void)mapRelationshipKey:(id)key toModelClass:(Class)class;
@end

@implementation MPMediaRemoteEntityTranslator

+ (void)buildSchemaIfNeeded
{
  if (buildSchemaIfNeeded_onceToken_44264 != -1)
  {
    dispatch_once(&buildSchemaIfNeeded_onceToken_44264, &__block_literal_global_44265);
  }
}

void __52__MPMediaRemoteEntityTranslator_buildSchemaIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v2 mapIdentifierCreationBlock:&__block_literal_global_44423];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericSong" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericAlbum" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericArtist" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericPlaylist" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericPlaylistEntry" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericTVEpisode" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericTVSeason" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericTVShow" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericMovie" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericPodcast" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericPodcastEpisode" toModelClass:objc_opt_class()];
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericRadioStation" toModelClass:objc_opt_class()];

  v3 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v3 mapIdentifierCreationBlock:&__block_literal_global_15];
  [v3 mapPropertyKey:@"MPModelPropertySongTitle" toValueTransformer:&__block_literal_global_21_44424];
  [v3 mapPropertyKey:@"MPModelPropertySongHasCredits" toValueTransformer:&__block_literal_global_31_44425];
  [v3 mapPropertyKey:@"_MPModelPropertySongTrackCount" toMPContentItemSelector:sel_totalTrackCount];
  [v3 mapPropertyKey:@"MPModelPropertySongTrackNumber" toMPContentItemSelector:sel_trackNumber];
  [v3 mapPropertyKey:@"MPModelPropertySongDiscNumber" toMPContentItemSelector:sel_discNumber];
  [v3 mapPropertyKey:@"MPModelPropertySongExplicit" toMPContentItemSelector:?];
  [v3 mapPropertyKey:@"MPModelPropertySongDuration" toMPContentItemSelector:sel_duration];
  [v3 mapPropertyKey:@"MPModelPropertySongHasVideo" toValueTransformer:&__block_literal_global_41_44426];
  [v3 mapPropertyKey:@"MPModelPropertySongShouldShowComposer" toUserInfoKey:@"shComp"];
  [v3 mapPropertyKey:@"MPModelPropertySongArtistUploadedContent" toUserInfoKey:@"arUp"];
  [v3 mapUnsupportedPropertyKey:@"MPModelPropertySongHasCloudSyncSource"];
  [v3 mapArtworkPropertyKey:@"MPModelPropertySongArtwork"];
  if (_os_feature_enabled_impl())
  {
    [v3 mapAnimatedArtworkPropertyKey:@"MPModelPropertySongAnimatedArtwork"];
  }

  else
  {
    [v3 mapUnsupportedPropertyKey:@"MPModelPropertySongAnimatedArtwork"];
  }

  [v3 mapPropertyKey:@"MPModelPropertySongKeepLocalEnableState" toDeviceSpecificUserInfoKey:@"klEnable"];
  [v3 mapPropertyKey:@"MPModelPropertySongKeepLocalManagedStatus" toDeviceSpecificUserInfoKey:@"klStatus"];
  [v3 mapPropertyKey:@"MPModelPropertySongLibraryAdded" toDeviceSpecificUserInfoKey:@"libAdded"];
  [v3 mapPropertyKey:@"MPModelPropertySongLibraryAddEligible" toValueTransformer:&__block_literal_global_46_44429];
  [v3 mapPropertyKey:@"MPModelPropertySongUserRating" toDeviceSpecificUserInfoKey:@"rating"];
  [v3 mapPropertyKey:@"MPModelPropertySongIsDisliked" toDeviceSpecificUserInfoKey:@"isDisliked"];
  [v3 mapPropertyKey:@"MPModelPropertySongIsFavorite" toDeviceSpecificUserInfoKey:@"isFav"];
  [v3 mapPropertyKey:@"MPModelPropertySongIsPinned" toDeviceSpecificUserInfoKey:@"libPinned"];
  [v3 mapUnsupportedPropertyKey:@"MPModelPropertySongCloudStatus"];
  [v3 mapPropertyKey:@"MPModelPropertySongTraits" toMPContentItemSelector:sel_songTraits];
  [v3 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalConstraints"];
  [v3 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalManagedStatusReason"];
  [v3 mapUnsupportedPropertyKey:@"MPModelPropertySongDateFavorited"];
  [v3 mapUnsupportedPropertyKey:@"MPModelPropertySongSupportsExtendedLyricsAttribute"];
  [v3 mapUnsupportedPropertyKey:@"MPModelPropertySongImmersiveDeeplinkURL"];
  [v3 mapUnsupportedPropertyKey:@"MPModelPropertySongDateReleased"];
  [v3 mapRelationshipKey:@"MPModelRelationshipSongArtist" toModelClass:objc_opt_class()];
  [v3 mapRelationshipKey:@"MPModelRelationshipSongAlbum" toModelClass:objc_opt_class()];
  [v3 mapRelationshipKey:@"MPModelRelationshipSongComposer" toModelClass:objc_opt_class()];
  [v3 mapRelationshipKey:@"MPModelRelationshipSongGenre" toModelClass:objc_opt_class()];
  [v3 mapRelationshipKey:@"MPModelRelationshipSongLyrics" toModelClass:objc_opt_class()];
  [v3 mapRelationshipKey:@"MPModelRelationshipSongLocalFileAsset" toModelClass:objc_opt_class()];
  [v3 mapRelationshipKey:@"MPModelRelationshipSongStoreAsset" toModelClass:objc_opt_class()];
  [v3 mapRelationshipKey:@"MPModelRelationshipSongPlaybackPosition" toModelClass:objc_opt_class()];

  v4 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v4 mapIdentifierCreationBlock:&__block_literal_global_57];
  [v4 mapPropertyKey:@"MPModelPropertyFileAssetNonPurgeable" toDeviceSpecificUserInfoKey:@"nonPurge"];
  [v4 mapPropertyKey:@"MPModelPropertyFileAssetProtectionType" toDeviceSpecificUserInfoKey:@"procType"];

  v5 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v5 mapIdentifierCreationBlock:&__block_literal_global_59_44430];
  [v5 mapPropertyKey:@"MPModelPropertyStoreAssetRedownloadable" toUserInfoKey:@"rdwn"];
  [v5 mapPropertyKey:@"MPModelPropertyStoreAssetEndpointType" toValueTransformer:&__block_literal_global_61_44431];
  [v5 mapPropertyKey:@"MPModelPropertyStoreAssetSubscriptionRequired" toUserInfoKey:@"subReq"];

  v6 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v6 mapIdentifierCreationBlock:&__block_literal_global_63_44432];
  [v6 mapPropertyKey:@"MPModelPropertyLyricsHasStoreLyrics" toUserInfoKey:@"hsStLy"];
  [v6 mapPropertyKey:@"MPModelPropertyLyricsHasLibraryLyrics" toDeviceSpecificUserInfoKey:@"hsLibLy"];
  [v6 mapPropertyKey:@"MPModelPropertyLyricsHasTimeSyncedLyrics" toUserInfoKey:@"hsTSL"];
  [v6 mapPropertyKey:@"MPModelPropertyLyricsText" toValueTransformer:&__block_literal_global_65_44433];

  v7 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v7 mapIdentifierCreationBlock:&__block_literal_global_68_44434];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumTitle" toMPContentItemSelector:sel_albumName];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumLibraryAdded" toValueTransformer:&__block_literal_global_72_44435];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumLibraryAddEligible" toValueTransformer:&__block_literal_global_74];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumTrackCount" toMPContentItemSelector:sel_totalTrackCount];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumDiscCount" toMPContentItemSelector:sel_totalDiscCount];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumYear" toMPContentItemSelector:sel_albumYear];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumTraits" toMPContentItemSelector:sel_albumTraits];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumReleaseDateComponents" toValueTransformer:&__block_literal_global_82_44436];
  [v7 mapArtworkPropertyKey:@"MPModelPropertyAlbumArtwork"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumStaticTallEditorialArtwork"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumSuperHeroTallEditorialArtwork"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsFavorite"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsDisliked"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumDateFavorited"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsPinned"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumCleanDownloadedTrackCount"];
  [v7 mapRelationshipKey:@"MPModelRelationshipAlbumGenre" toModelClass:objc_opt_class()];
  [v7 mapRelationshipKey:@"MPModelRelationshipAlbumArtist" toModelClass:objc_opt_class()];
  [v7 mapRelationshipKey:@"MPModelRelationshipAlbumRepresentativeSong" toModelClass:objc_opt_class()];

  v8 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v8 mapIdentifierCreationBlock:&__block_literal_global_85];
  [v8 mapPropertyKey:@"MPModelPropertyPlaylistName" toValueTransformer:&__block_literal_global_87];
  [v8 mapPropertyKey:@"MPModelPropertyPlaylistLibraryAdded" toValueTransformer:&__block_literal_global_89_44437];
  [v8 mapPropertyKey:@"MPModelPropertyPlaylistType" toValueTransformer:&__block_literal_global_91];
  [v8 mapPropertyKey:@"MPModelPropertyPlaylistTraits" toMPContentItemSelector:sel_playlistTraits];
  [v8 mapArtworkPropertyKey:@"MPModelPropertyPlaylistArtwork"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistSuperHeroTallEditorialArtwork"];
  [v8 mapPropertyKey:@"MPModelPropertyPlaylistIsCollaborative" toValueTransformer:&__block_literal_global_99];
  [v8 mapPropertyKey:@"MPModelPropertyPlaylistCollaboratorStatus" toValueTransformer:&__block_literal_global_102];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsFavorite"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsDisliked"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistDateFavorited"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsPinned"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsFavoriteSongsPlaylist"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanTracks"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCoverArtworkRecipe"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationSharingMode"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationMode"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaboratorPermissions"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURL"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationJoinRequestIsPending"];

  v9 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v9 mapIdentifierCreationBlock:&__block_literal_global_104_44438];
  [v9 mapPropertyKey:@"MPModelPropertyPersonName" toValueTransformer:&__block_literal_global_106_44439];
  [v9 mapRelationshipKey:@"MPModelRelationshipArtistGenre" toModelClass:objc_opt_class()];

  v10 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v10 mapIdentifierCreationBlock:&__block_literal_global_108_44440];
  [v10 mapPropertyKey:@"MPModelPropertyPersonName" toValueTransformer:&__block_literal_global_110];
  [v10 mapRelationshipKey:@"MPModelRelationshipArtistGenre" toModelClass:objc_opt_class()];

  v11 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v11 mapIdentifierCreationBlock:&__block_literal_global_112_44441];
  [v11 mapPropertyKey:@"MPModelPropertyPersonName" toMPContentItemSelector:sel_composerName];

  v12 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v12 mapIdentifierCreationBlock:&__block_literal_global_116];
  [v12 mapPropertyKey:@"MPModelPropertyGenreName" toMPContentItemSelector:sel_genreName];

  v13 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v13 mapIdentifierCreationBlock:&__block_literal_global_120_44442];
  [v13 mapRelationshipKey:@"MPModelRelationshipPlaylistEntrySong" toModelClass:objc_opt_class()];
  [v13 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryTVEpisode" toModelClass:objc_opt_class()];
  [v13 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryMovie" toModelClass:objc_opt_class()];

  v14 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v14 mapIdentifierCreationBlock:&__block_literal_global_122];
  [v14 mapPropertyKey:@"MPModelPropertyMovieTitle" toValueTransformer:&__block_literal_global_124_44443];
  [v14 mapPropertyKey:@"MPModelPropertyMovieDuration" toMPContentItemSelector:sel_duration];
  [v14 mapPropertyKey:@"MPModelPropertyMovieKeepLocalEnableState" toValueTransformer:&__block_literal_global_126];
  [v14 mapPropertyKey:@"MPModelPropertyMovieKeepLocalManagedStatus" toValueTransformer:&__block_literal_global_128];
  [v14 mapUnsupportedPropertyKey:@"MPModelPropertyMovieKeepLocalManagedStatusReason"];
  [v14 mapUnsupportedPropertyKey:@"MPModelPropertyMovieKeepLocalConstraints"];
  [v14 mapPropertyKey:@"MPModelPropertyMovieLibraryAdded" toValueTransformer:&__block_literal_global_130];
  [v14 mapPropertyKey:@"MPModelPropertyMovieLibraryAddEligible" toValueTransformer:&__block_literal_global_132_44444];
  [v14 mapPropertyKey:@"MPModelPropertyMovieHasCloudSyncSource" toValueTransformer:&__block_literal_global_134];
  [v14 mapArtworkPropertyKey:@"MPModelPropertyMovieArtwork"];
  [v14 mapUnsupportedPropertyKey:@"MPModelPropertyMovieStoreCanonicalID"];
  [v14 mapRelationshipKey:@"MPModelRelationshipMovieLocalFileAsset" toModelClass:objc_opt_class()];
  [v14 mapRelationshipKey:@"MPModelRelationshipMovieStoreAsset" toModelClass:objc_opt_class()];

  v15 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v15 mapIdentifierCreationBlock:&__block_literal_global_136];
  [v15 mapPropertyKey:@"MPModelPropertyTVEpisodeTitle" toValueTransformer:&__block_literal_global_138_44445];
  [v15 mapPropertyKey:@"MPModelPropertyTVEpisodeNumber" toMPContentItemSelector:sel_episodeNumber];
  [v15 mapPropertyKey:@"MPModelPropertyTVEpisodeDuration" toMPContentItemSelector:sel_duration];
  [v15 mapPropertyKey:@"MPModelPropertyTVEpisodeType" toValueTransformer:&__block_literal_global_142];
  [v15 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalEnableState" toValueTransformer:&__block_literal_global_144];
  [v15 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatus" toValueTransformer:&__block_literal_global_146];
  [v15 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason"];
  [v15 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalConstraints"];
  [v15 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAdded" toValueTransformer:&__block_literal_global_148];
  [v15 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAddEligible" toValueTransformer:&__block_literal_global_150];
  [v15 mapPropertyKey:@"MPModelPropertyTVEpisodeHasCloudSyncSource" toValueTransformer:&__block_literal_global_152];
  [v15 mapArtworkPropertyKey:@"MPModelPropertyTVEpisodeArtwork"];
  [v15 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeStoreCanonicalID"];
  [v15 mapRelationshipKey:@"MPModelRelationshipTVEpisodeSeason" toModelClass:objc_opt_class()];
  [v15 mapRelationshipKey:@"MPModelRelationshipTVEpisodeShow" toModelClass:objc_opt_class()];
  [v15 mapRelationshipKey:@"MPModelRelationshipTVEpisodeLocalFileAsset" toModelClass:objc_opt_class()];
  [v15 mapRelationshipKey:@"MPModelRelationshipTVEpisodeStoreAsset" toModelClass:objc_opt_class()];

  v16 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v16 mapIdentifierCreationBlock:&__block_literal_global_154];
  [v16 mapPropertyKey:@"MPModelPropertyTVSeasonNumber" toMPContentItemSelector:sel_seasonNumber];
  [v16 mapArtworkPropertyKey:@"MPModelPropertyTVSeasonArtwork"];
  [v16 mapRelationshipKey:@"MPModelRelationshipTVSeasonShow" toModelClass:objc_opt_class()];

  v17 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v17 mapIdentifierCreationBlock:&__block_literal_global_158];
  [v17 mapPropertyKey:@"MPModelPropertyTVShowTitle" toMPContentItemSelector:sel_trackArtistName];
  [v17 mapArtworkPropertyKey:@"MPModelPropertyTVShowArtwork"];
  [v17 mapUnsupportedPropertyKey:@"MPModelPropertyTVShowStoreCanonicalID"];

  v18 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v18 mapIdentifierCreationBlock:&__block_literal_global_162];
  [v18 mapPropertyKey:@"MPModelPropertyRadioStationName" toMPContentItemSelector:sel_radioStationName];
  [v18 mapPropertyKey:@"MPModelPropertyRadioStationAttributionLabel" toValueTransformer:&__block_literal_global_167_44446];
  [v18 mapArtworkPropertyKey:@"MPModelPropertyRadioStationArtwork"];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationEditorialArtwork"];
  [v18 mapPropertyKey:@"MPModelPropertyRadioStationType" toValueTransformer:&__block_literal_global_169_44447];
  [v18 mapPropertyKey:@"MPModelPropertyRadioStationSubtype" toValueTransformer:&__block_literal_global_171];
  [v18 mapPropertyKey:@"MPModelPropertyRadioStationProviderUniversalLink" toValueTransformer:&__block_literal_global_173];
  [v18 mapPropertyKey:@"MPModelPropertyRadioStationProviderBundleIdentifier" toValueTransformer:&__block_literal_global_176];
  [v18 mapPropertyKey:@"MPModelPropertyRadioStationProviderID" toValueTransformer:&__block_literal_global_178_44448];

  v19 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v19 mapIdentifierCreationBlock:&__block_literal_global_180_44449];
  [v19 mapPropertyKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime" toValueTransformer:&__block_literal_global_182];
  [v19 mapPropertyKey:@"MPModelPropertyPlaybackPositionHasBeenPlayed" toValueTransformer:&__block_literal_global_184_44450];
  [v19 mapPropertyKey:@"MPModelPropertyPlaybackPositionStartTime" toValueTransformer:&__block_literal_global_186_44451];
  [v19 mapPropertyKey:@"MPModelPropertyPlaybackPositionStopTime" toValueTransformer:&__block_literal_global_189];
  [v19 mapPropertyKey:@"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier" toValueTransformer:&__block_literal_global_192];
  [v19 mapPropertyKey:@"MPModelPropertyPlaybackPositionUserPlayCount" toValueTransformer:&__block_literal_global_195];

  v20 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v20 mapIdentifierCreationBlock:&__block_literal_global_200];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastTitle" toMPContentItemSelector:sel_albumName];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastFeedURL" toValueTransformer:&__block_literal_global_204_44452];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastShareURL" toValueTransformer:&__block_literal_global_206_44453];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastSupportsSubscription" toValueTransformer:&__block_literal_global_208_44454];
  [v20 mapPropertyKey:@"MPModelPropertyPodcastSortType" toValueTransformer:&__block_literal_global_210];
  [v20 mapArtworkPropertyKey:@"MPModelPropertyPodcastArtwork"];
  [v20 mapRelationshipKey:@"MPModelRelationshipPodcastAuthor" toModelClass:objc_opt_class()];

  v21 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v21 mapIdentifierCreationBlock:&__block_literal_global_213_44455];
  [v21 mapPropertyKey:@"MPModelPropertyPersonName" toMPContentItemSelector:sel_albumArtistName];

  v22 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v22 mapIdentifierCreationBlock:&__block_literal_global_217_44456];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeTitle" toValueTransformer:&__block_literal_global_221_44457];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeSubtitle" toMPContentItemSelector:sel_subtitle];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeSubtitleShort" toMPContentItemSelector:sel_subtitleShort];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeDuration" toMPContentItemSelector:sel_duration];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeExplicit" toMPContentItemSelector:sel_isExplicitItem];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeNumber" toMPContentItemSelector:sel_episodeNumber];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeSeasonNumber" toMPContentItemSelector:sel_seasonNumber];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeDescriptionText" toMPContentItemSelector:sel_info];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeTranscriptAlignments" toValueTransformer:&__block_literal_global_229_44458];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeReleaseDateComponents" toValueTransformer:&__block_literal_global_234_44459];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeHasVideo" toValueTransformer:&__block_literal_global_236];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeUserRating" toValueTransformer:&__block_literal_global_238];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeStreamURL" toValueTransformer:&__block_literal_global_240];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeShareURL" toValueTransformer:&__block_literal_global_242];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeType" toValueTransformer:&__block_literal_global_244];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeShowArtworkTemplateURL" toUserInfoKey:@"podArtURL"];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeArtworkInfo" toUserInfoKey:@"podArtInfo"];
  [v22 mapArtworkPropertyKey:@"MPModelPropertyPodcastEpisodeArtwork"];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodePriceType" toUserInfoKey:@"podEpPrTy"];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeTranscriptIdentifier" toUserInfoKey:@"podEpTrId"];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeTranscriptSource" toUserInfoKey:@"podEpTrSrc"];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeShouldShowChapterArtwork" toUserInfoKey:@"podShoChapArt"];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeAreChaptersGenerated" toUserInfoKey:@"podEpChapGen"];
  [v22 mapPropertyKey:@"MPModelPropertyPodcastEpisodeChapters" toValueTransformer:&__block_literal_global_246_44460];
  [v22 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodeAuthor" toModelClass:objc_opt_class()];
  [v22 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodePodcast" toModelClass:objc_opt_class()];
  [v22 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodeLocalFileAsset" toModelClass:objc_opt_class()];
  [v22 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodePlaybackPosition" toModelClass:objc_opt_class()];

  v23 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v23 mapIdentifierCreationBlock:&__block_literal_global_253_44461];
  [v23 mapPropertyKey:@"MPModelPropertyPersonName" toMPContentItemSelector:sel_trackArtistName];

  v24 = [(MPBaseEntityTranslator *)MPMediaRemoteEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v24 mapIdentifierCreationBlock:&__block_literal_global_255_44462];
  [v24 mapPropertyKey:@"MPModelPropertyPodcastChapterTitle" toMPContentItemSelector:sel_title];
  [v24 mapPropertyKey:@"MPModelPropertyPodcastChapterDuration" toMPContentItemSelector:sel_duration];
  [v24 mapPropertyKey:@"MPModelPropertyPodcastChapterStartTime" toMPContentItemSelector:sel_startTime];
  [v24 mapPropertyKey:@"MPModelPropertyPodcastChapterPlayable" toMPContentItemSelector:sel_isPlayable];
}

- (void)mapRelationshipKey:(id)key toModelClass:(Class)class
{
  keyCopy = key;
  v7 = [[_MPBaseEntityRelationshipTranslator alloc] initWithRelatedMPModelClass:class];
  [MPBaseEntityTranslator mapRelationshipKey:keyCopy ofModelClass:v7 toRelationshipTranslator:?];
}

- (void)mapPropertyKey:(id)key toValueTransformer:(id)transformer
{
  keyCopy = key;
  v7 = [_MPMediaRemoteEntityPropertyTranslator translatorWithBlock:transformer];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:keyCopy toPropertyTranslator:v7];
}

- (void)mapPropertyKey:(id)key toDeviceSpecificUserInfoKey:(id)infoKey
{
  keyCopy = key;
  v7 = [@"deviceSpecificUserInfo." stringByAppendingString:infoKey];
  [(MPMediaRemoteEntityTranslator *)&self->super.super.isa _mapPropertyKey:keyCopy toKeyPath:v7];
}

- (void)_mapPropertyKey:(uint64_t)key toKeyPath:
{
  if (self)
  {
    v5 = a2;
    v6 = [_MPMediaRemoteEntityPropertyTranslator translatorWithKeyPath:key];
    [(MPBaseEntityTranslator *)self mapPropertyKey:v5 toPropertyTranslator:v6];
  }
}

- (void)mapPropertyKey:(id)key toUserInfoKey:(id)infoKey
{
  keyCopy = key;
  v7 = [@"userInfo." stringByAppendingString:infoKey];
  [(MPMediaRemoteEntityTranslator *)&self->super.super.isa _mapPropertyKey:keyCopy toKeyPath:v7];
}

- (void)mapAnimatedArtworkPropertyKey:(id)key
{
  keyCopy = key;
  v5 = [_MPMediaRemoteEntityPropertyTranslator translatorWithBlock:&__block_literal_global_83];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:keyCopy toPropertyTranslator:v5];
}

id __63__MPMediaRemoteEntityTranslator_mapAnimatedArtworkPropertyKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 artworkGenerator];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [v5 artworkGenerator];
    v9 = [v8 formattedAnimatedArtworkCatalogBlockForContentItem:v4];

    if (v9)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __63__MPMediaRemoteEntityTranslator_mapAnimatedArtworkPropertyKey___block_invoke_2;
      aBlock[3] = &unk_1E767E1B0;
      v13 = v9;
      v10 = _Block_copy(aBlock);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __63__MPMediaRemoteEntityTranslator_mapAnimatedArtworkPropertyKey___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_7;
    }

    v3 = MEMORY[0x1E69B0908];
  }

  else
  {
    v3 = MEMORY[0x1E69B0900];
  }

  v4 = *v3;
  if (v4)
  {
    v5 = v4;
    v6 = (*(*(a1 + 32) + 16))();

    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:

  return v6;
}

- (void)mapArtworkPropertyKey:(id)key
{
  keyCopy = key;
  v5 = [_MPMediaRemoteEntityPropertyTranslator translatorWithBlock:&__block_literal_global_81];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:keyCopy toPropertyTranslator:v5];
}

id __55__MPMediaRemoteEntityTranslator_mapArtworkPropertyKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 artworkGenerator];
  v6 = [v5 artworkCatalogBlockForContentItem:v4];

  return v6;
}

- (void)mapPropertyKey:(id)key toMPContentItemSelector:(SEL)selector
{
  keyCopy = key;
  v7 = NSStringFromSelector(selector);
  [(MPMediaRemoteEntityTranslator *)&self->super.super.isa _mapPropertyKey:keyCopy toKeyPath:v7];
}

- (void)mapIdentifierCreationBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MPMediaRemoteEntityTranslator_mapIdentifierCreationBlock___block_invoke;
  v7[3] = &unk_1E767E188;
  v7[4] = self;
  v8 = blockCopy;
  v5 = blockCopy;
  v6 = [_MPMediaRemoteEntityPropertyTranslator translatorWithBlock:v7];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapIdentifiersToPropertyTranslator:v6];
}

MPIdentifierSet *__60__MPMediaRemoteEntityTranslator_mapIdentifierCreationBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MPIdentifierSet alloc];
  v5 = +[MPModelKind kindWithModelClass:](MPModelKind, "kindWithModelClass:", [*(a1 + 32) MPModelClass]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MPMediaRemoteEntityTranslator_mapIdentifierCreationBlock___block_invoke_2;
  v10[3] = &unk_1E767FA50;
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v6;
  v7 = v3;
  v8 = [(MPIdentifierSet *)v4 initWithSource:@"MediaRemote" modelKind:v5 block:v10];

  return v8;
}

- (id)sectionObjectForPropertySet:(id)set contentItem:(id)item context:(id)context
{
  v36[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contextCopy = context;
  v10 = itemCopy;
  setCopy = set;
  if (self)
  {
    if ([v10 mediaType] == 2)
    {
      v12 = @"MPModelRelationshipGenericPodcast";
      v13 = @"MPModelRelationshipGenericPodcast";
    }

    else
    {
      collectionInfo = [v10 collectionInfo];
      v15 = [collectionInfo objectForKeyedSubscript:@"_MPNowPlayingCollectionInfoKeyCollectionType"];
      v36[0] = @"_MPNowPlayingCollectionInfoCollectionTypePlaylist";
      v36[1] = @"_MPNowPlayingCollectionInfoCollectionTypePlaylistFolder";
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
      v17 = [v16 containsObject:v15];

      if (v17)
      {
        v18 = MPModelRelationshipGenericPlaylist;
      }

      else if ([v15 isEqualToString:@"_MPNowPlayingCollectionInfoCollectionTypeAlbum"])
      {
        v18 = MPModelRelationshipGenericAlbum;
      }

      else
      {
        if (![v15 isEqualToString:@"_MPNowPlayingCollectionInfoCollectionTypeRadio"])
        {
          v12 = 0;
          v28 = 0;
LABEL_17:

LABEL_19:
          goto LABEL_20;
        }

        v18 = MPModelRelationshipGenericRadioStation;
      }

      v12 = *v18;

      if (!v12)
      {
LABEL_18:
        v28 = 0;
        goto LABEL_19;
      }
    }

    relationships = [setCopy relationships];
    v20 = [relationships objectForKeyedSubscript:v12];

    if (v20)
    {
      selfCopy = self;
      v33 = contextCopy;
      v31 = setCopy;
      relationships2 = [setCopy relationships];
      collectionInfo = [relationships2 objectForKeyedSubscript:v12];

      v15 = +[MPModelGenericObject requiredStoreLibraryPersonalizationProperties];
      v22 = [MPPropertySet alloc];
      v34 = v12;
      relationships3 = [v15 relationships];
      v24 = [relationships3 objectForKeyedSubscript:v12];
      v25 = v24;
      if (!v24)
      {
        v25 = +[MPPropertySet emptyPropertySet];
      }

      v26 = [collectionInfo propertySetByCombiningWithPropertySet:v25];
      v35 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v28 = [(MPPropertySet *)v22 initWithProperties:0 relationships:v27];

      if (!v24)
      {
      }

      self = selfCopy;
      contextCopy = v33;
      setCopy = v31;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v28 = 0;
LABEL_20:

  if (v28)
  {
    v29 = [(MPMediaRemoteEntityTranslator *)self objectForPropertySet:v28 contentItem:v10 context:contextCopy];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end