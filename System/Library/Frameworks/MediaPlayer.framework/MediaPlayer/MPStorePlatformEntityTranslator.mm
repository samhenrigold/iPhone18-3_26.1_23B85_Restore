@interface MPStorePlatformEntityTranslator
+ (id)translatorForKind:(id)kind;
+ (void)buildSchemaIfNeeded;
- (id)prepareSource:(id)source context:(id)context properties:(id)properties;
- (void)mapIdentifierCreationKeyPaths:(id)paths transformBlock:(id)block;
- (void)mapPropertyKey:(id)key toPayloadKeyPath:(id)path;
- (void)mapPropertyKey:(id)key toPayloadKeyPaths:(id)paths valueTransformer:(id)transformer;
- (void)mapPropertyKey:(id)key toPayloadKeyPaths:(id)paths valueTransformerFunction:(void *)function;
- (void)mapRelationshipKey:(id)key toModelClass:(Class)class payloadTransform:(id)transform;
@end

@implementation MPStorePlatformEntityTranslator

- (void)mapRelationshipKey:(id)key toModelClass:(Class)class payloadTransform:(id)transform
{
  transformCopy = transform;
  keyCopy = key;
  v10 = [[_MPStorePlatformEntityRelationshipTranslator alloc] initWithRelatedMPModelClass:class payloadTransformBlock:transformCopy];

  [MPBaseEntityTranslator mapRelationshipKey:keyCopy ofModelClass:v10 toRelationshipTranslator:?];
}

- (void)mapPropertyKey:(id)key toPayloadKeyPaths:(id)paths valueTransformerFunction:(void *)function
{
  keyCopy = key;
  v9 = [(_MPKeyPathEntityPropertyTranslator *)_MPStorePlatformEntityPropertyTranslator translatorForKeyPaths:paths valueTransformFunction:function];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:keyCopy toPropertyTranslator:v9];
}

- (void)mapPropertyKey:(id)key toPayloadKeyPaths:(id)paths valueTransformer:(id)transformer
{
  keyCopy = key;
  v9 = [(_MPKeyPathEntityPropertyTranslator *)_MPStorePlatformEntityPropertyTranslator translatorForKeyPaths:paths valueTransformBlock:transformer];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:keyCopy toPropertyTranslator:v9];
}

- (void)mapPropertyKey:(id)key toPayloadKeyPath:(id)path
{
  v12 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = MEMORY[0x1E695DEC8];
  pathCopy2 = path;
  keyCopy = key;
  v9 = [v6 arrayWithObjects:&pathCopy count:1];
  v10 = [(_MPKeyPathEntityPropertyTranslator *)_MPStorePlatformEntityPropertyTranslator translatorForKeyPaths:v9 valueTransformFunction:_MPKeyPathValueTransformFirstKeyPath, pathCopy, v12];

  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:keyCopy toPropertyTranslator:v10];
}

- (void)mapIdentifierCreationKeyPaths:(id)paths transformBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__MPStorePlatformEntityTranslator_mapIdentifierCreationKeyPaths_transformBlock___block_invoke;
  v9[3] = &unk_1E767F318;
  v9[4] = self;
  v10 = blockCopy;
  v7 = blockCopy;
  v8 = [(_MPKeyPathEntityPropertyTranslator *)_MPStorePlatformEntityPropertyTranslator translatorForKeyPaths:paths valueTransformBlock:v9];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapIdentifiersToPropertyTranslator:v8];
}

MPIdentifierSet *__80__MPStorePlatformEntityTranslator_mapIdentifierCreationKeyPaths_transformBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MPIdentifierSet alloc];
  v8 = +[MPModelKind kindWithModelClass:](MPModelKind, "kindWithModelClass:", [*(a1 + 32) MPModelClass]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__MPStorePlatformEntityTranslator_mapIdentifierCreationKeyPaths_transformBlock___block_invoke_2;
  v14[3] = &unk_1E767F2F0;
  v9 = *(a1 + 40);
  v16 = v6;
  v17 = v9;
  v15 = v5;
  v10 = v6;
  v11 = v5;
  v12 = [(MPIdentifierSet *)v7 initWithSource:@"StorePlatform::Translator" modelKind:v8 block:v14];

  return v12;
}

- (id)prepareSource:(id)source context:(id)context properties:(id)properties
{
  v38 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v35.receiver = self;
  v35.super_class = MPStorePlatformEntityTranslator;
  v9 = [(MPBaseEntityTranslator *)&v35 prepareSource:source context:context properties:propertiesCopy];
  v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = propertiesCopy;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(MPBaseEntityTranslator *)&self->super.super.isa propertyTranslatorForPropertyKey:?];
        sourceKeyPaths = [v16 sourceKeyPaths];
        [v10 addObjectsFromArray:sourceKeyPaths];
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v13);
  }

  v18 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v10;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v27 + 1) + 8 * j);
        v25 = [v9 valueForKeyPath:{v24, v27}];
        [v18 setObject:v25 forKeyedSubscript:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v21);
  }

  return v18;
}

+ (id)translatorForKind:(id)kind
{
  v9[4] = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  v9[0] = @"song";
  v9[1] = @"musicVideo";
  v9[2] = @"uploadedAudio";
  v9[3] = @"uploadedVideo";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v6 = [v5 containsObject:kindCopy];

  if ((v6 & 1) != 0 || ([kindCopy isEqualToString:@"playlist"] & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"artist") & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"album") & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"radioStation") & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"tvEpisode") & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"tvSeason") & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"tvShow") & 1) != 0 || objc_msgSend(kindCopy, "isEqualToString:", @"movie"))
  {
    v7 = [self translatorForMPModelClass:objc_opt_class()];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)buildSchemaIfNeeded
{
  if (buildSchemaIfNeeded_onceToken_45473 != -1)
  {
    dispatch_once(&buildSchemaIfNeeded_onceToken_45473, &__block_literal_global_45474);
  }
}

void __54__MPStorePlatformEntityTranslator_buildSchemaIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(MPBaseEntityTranslator *)MPStorePlatformEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  v3 = MEMORY[0x1E695E0F0];
  [v2 mapIdentifierCreationKeyPaths:MEMORY[0x1E695E0F0] transformBlock:&__block_literal_global_45500];

  v4 = [(MPBaseEntityTranslator *)MPStorePlatformEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v4 mapIdentifierCreationKeyPaths:&unk_1F150A8B8 transformBlock:&__block_literal_global_20];
  [v4 mapPropertyKey:@"MPModelPropertySongTitle" toPayloadKeyPaths:&unk_1F150A8D0 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v4 mapPropertyKey:@"MPModelPropertySongDuration" toPayloadKeyPaths:&unk_1F150A8E8 valueTransformer:&__block_literal_global_43_45503];
  [v4 mapPropertyKey:@"_MPModelPropertySongTrackCount" toPayloadKeyPaths:&unk_1F150A900 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v4 mapPropertyKey:@"MPModelPropertySongTrackNumber" toPayloadKeyPath:@"trackNumber"];
  [v4 mapPropertyKey:@"MPModelPropertySongDiscNumber" toPayloadKeyPath:@"discNumber"];
  [v4 mapPropertyKey:@"MPModelPropertySongHasCredits" toPayloadKeyPath:@"hasCredits"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongGrouping"];
  [v4 mapPropertyKey:@"MPModelPropertySongExplicit" toPayloadKeyPaths:&unk_1F150A918 valueTransformerFunction:MPTranslatorUtilitiesTransformIsExplicit];
  [v4 mapPropertyKey:@"MPModelPropertySongArtistUploadedContent" toPayloadKeyPaths:&unk_1F150A930 valueTransformer:&__block_literal_global_79];
  [v4 mapPropertyKey:@"MPModelPropertySongHasVideo" toPayloadKeyPaths:&unk_1F150A948 valueTransformer:&__block_literal_global_90_45507];
  [v4 mapPropertyKey:@"MPModelPropertySongArtwork" toPayloadKeyPaths:v3 valueTransformer:&__block_literal_global_95];
  [v4 mapPropertyKey:@"MPModelPropertySongShouldShowComposer" toPayloadKeyPath:@"showComposer"];
  [v4 mapPropertyKey:@"MPModelPropertySongCopyrightText" toPayloadKeyPath:@"copyright"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongVolumeNormalization"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongLibraryAdded"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalEnableState"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalManagedStatus"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalManagedStatusReason"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalConstraints"];
  [v4 mapPropertyKey:@"MPModelPropertySongLibraryAddEligible" toPayloadKeyPaths:&unk_1F150A960 valueTransformer:&__block_literal_global_109_45510];
  [v4 mapPropertyKey:@"MPModelPropertySongClassicalWork" toPayloadKeyPath:@"workName"];
  [v4 mapPropertyKey:@"MPModelPropertySongClassicalMovement" toPayloadKeyPath:@"movementName"];
  [v4 mapPropertyKey:@"MPModelPropertySongClassicalMovementCount" toPayloadKeyPath:@"movementCount"];
  [v4 mapPropertyKey:@"MPModelPropertySongClassicalMovementNumber" toPayloadKeyPath:@"movementNumber"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongHasCloudSyncSource"];
  [v4 mapPropertyKey:@"MPModelPropertySongYear" toPayloadKeyPaths:&unk_1F150A978 valueTransformer:&__block_literal_global_132_45515];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongUserRating"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongCloudStatus"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongGaplessInfo"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongIsFavorite"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongIsDisliked"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongDateFavorited"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongSupportsExtendedLyricsAttribute"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongAnimatedArtwork"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongIsPinned"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongImmersiveDeeplinkURL"];
  [v4 mapUnsupportedPropertyKey:@"MPModelPropertySongDateReleased"];
  [v4 mapPropertyKey:@"MPModelPropertySongVolumeAdjustment" toPayloadKeyPaths:v3 valueTransformer:&__block_literal_global_134_45516];
  [v4 mapRelationshipKey:@"MPModelRelationshipSongAlbum" toModelClass:objc_opt_class() payloadTransform:&__block_literal_global_139];
  [v4 mapRelationshipKey:@"MPModelRelationshipSongArtist" toModelClass:objc_opt_class() payloadTransform:&__block_literal_global_164];
  [v4 mapRelationshipKey:@"MPModelRelationshipSongComposer" toModelClass:objc_opt_class() payloadTransform:&__block_literal_global_174];
  [v4 mapRelationshipKey:@"MPModelRelationshipSongGenre" toModelClass:objc_opt_class() payloadTransform:&__block_literal_global_181_45517];
  [v4 mapUnsupportedRelationshipKey:@"MPModelRelationshipSongLocalFileAsset"];
  [v4 mapRelationshipKey:@"MPModelRelationshipSongLyrics" toModelClass:objc_opt_class() payloadTransform:&__block_literal_global_185];
  [v4 mapRelationshipKey:@"MPModelRelationshipSongStoreAsset" toModelClass:objc_opt_class() payloadTransform:&__block_literal_global_195_45518];
  [v4 mapRelationshipKey:@"MPModelRelationshipSongPlaybackPosition" toModelClass:objc_opt_class() payloadTransform:&__block_literal_global_199_45519];

  v5 = [(MPBaseEntityTranslator *)MPStorePlatformEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v5 mapIdentifierCreationKeyPaths:&unk_1F150A990 transformBlock:&__block_literal_global_230_45520];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumTitle" toPayloadKeyPaths:&unk_1F150A9A8 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumTrackCount" toPayloadKeyPaths:&unk_1F150A9C0 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumMaximumItemTrackNumber" toPayloadKeyPath:@"@max.children.trackNumber"];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumDiscCount" toPayloadKeyPath:@"discCount"];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumHasCleanContent" toPayloadKeyPaths:&unk_1F150A9D8 valueTransformer:&__block_literal_global_247_45523];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumHasExplicitContent" toPayloadKeyPaths:&unk_1F150A9F0 valueTransformer:&__block_literal_global_255_45524];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumIsCompilation" toPayloadKeyPath:@"isCompilation"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsClassical"];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumReleaseDateComponents" toPayloadKeyPaths:&unk_1F150AA08 valueTransformer:&__block_literal_global_266];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumArtwork" toPayloadKeyPaths:v3 valueTransformer:&__block_literal_global_268_45526];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumStaticTallEditorialArtwork"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumSuperHeroTallEditorialArtwork"];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumLibraryAddEligible" toPayloadKeyPaths:&unk_1F150AA20 valueTransformer:&__block_literal_global_279_45527];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumYear" toPayloadKeyPaths:&unk_1F150AA38 valueTransformer:&__block_literal_global_284];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumVersionHash"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumLibraryAdded"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumKeepLocalEnableState"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumKeepLocalManagedStatus"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumKeepLocalManagedStatusReason"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumKeepLocalConstraints"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsPinned"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumCleanDownloadedTrackCount"];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumCopyrightText" toPayloadKeyPath:@"copyright"];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumPreorder" toPayloadKeyPath:@"isPreorder"];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumEditorNotes" toPayloadKeyPaths:&unk_1F150AA50 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumShortEditorNotes" toPayloadKeyPaths:&unk_1F150AA68 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumVolumeNormalization" toPayloadKeyPaths:v3 valueTransformer:&__block_literal_global_298];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumSongPopularity" toPayloadKeyPaths:&unk_1F150AA80 valueTransformer:&__block_literal_global_303];
  [v5 mapPropertyKey:@"MPModelPropertyAlbumClassicalExperienceAvailable" toPayloadKeyPaths:&unk_1F150AA98 valueTransformer:&__block_literal_global_311];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsFavorite"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsDisliked"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumDateFavorited"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsStoreRedownloadable"];
  [v5 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumDownloadedTrackCount"];
  [v5 mapRelationshipKey:@"MPModelRelationshipAlbumArtist" toModelClass:objc_opt_class() payloadTransform:&__block_literal_global_313_45529];
  [v5 mapRelationshipKey:@"MPModelRelationshipAlbumGenre" toModelClass:objc_opt_class() payloadTransform:&__block_literal_global_315];

  v6 = [(MPBaseEntityTranslator *)MPStorePlatformEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v6 mapIdentifierCreationKeyPaths:&unk_1F150AAB0 transformBlock:&__block_literal_global_320];
  [v6 mapPropertyKey:@"MPModelPropertyArtistClassicalExperienceAvailable" toPayloadKeyPaths:&unk_1F150AAC8 valueTransformer:&__block_literal_global_327];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyArtistIsFavorite"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyArtistIsDisliked"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyArtistDateFavorited"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyArtistLibraryAdded"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyArtistIsPinned"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyArtistDownloadedSongCount"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyArtistCleanDownloadedSongCount"];
  [v6 mapPropertyKey:@"MPModelPropertyPlaylistName" toPayloadKeyPath:@"name"];

  v7 = [(MPBaseEntityTranslator *)MPStorePlatformEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v7 mapIdentifierCreationKeyPaths:&unk_1F150AAE0 transformBlock:&__block_literal_global_336_45531];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistStaticTallEditorialArtwork"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistSuperHeroTallEditorialArtwork"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsFavorite"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsDisliked"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistDateFavorited"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsFavoriteSongsPlaylist"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsStoreRedownloadable"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistDownloadedTrackCount"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsPinned"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanTracks"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks"];
  [v7 mapPropertyKey:@"MPModelPropertyPersonName" toPayloadKeyPath:@"name"];

  v8 = [(MPBaseEntityTranslator *)MPStorePlatformEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v8 mapIdentifierCreationKeyPaths:&unk_1F150AAF8 transformBlock:&__block_literal_global_344_45532];
  [v8 mapPropertyKey:@"MPModelPropertyTVEpisodeTitle" toPayloadKeyPath:@"name"];

  v9 = [(MPBaseEntityTranslator *)MPStorePlatformEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v9 mapIdentifierCreationKeyPaths:&unk_1F150AB10 transformBlock:&__block_literal_global_350_45534];
  [v9 mapPropertyKey:@"MPModelPropertyMovieTitle" toPayloadKeyPath:@"name"];

  v10 = [(MPBaseEntityTranslator *)MPStorePlatformEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v10 mapIdentifierCreationKeyPaths:&unk_1F150AB28 transformBlock:&__block_literal_global_356_45535];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationName" toPayloadKeyPath:@"name"];
  [v10 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationEditorialArtwork"];
}

@end