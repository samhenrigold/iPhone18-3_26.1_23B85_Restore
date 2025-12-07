@interface MusicKit_RemoteLibraryPlaybackQueue
- (MusicKit_RemoteLibraryPlaybackQueue)initWithContainer:(id)container startItem:(id)item replaceQueueIntent:(int64_t)intent;
- (MusicKit_RemoteLibraryPlaybackQueue)initWithItem:(id)item replaceQueueIntent:(int64_t)intent;
- (MusicKit_RemoteLibraryPlaybackQueue)initWithRequest:(id)request startItem:(id)item replaceQueueIntent:(int64_t)intent;
- (int64_t)_persistentIDForStartItem;
- (void)_insertQueueWithPath:(id)path position:(int64_t)position sessionID:(id)d completionHandler:(id)handler;
- (void)_resolveMediaQueryForLibraryRequest:(id)request completionHandler:(id)handler;
- (void)_setQueueWithPath:(id)path shuffleMode:(int64_t)mode sessionID:(id)d completionHandler:(id)handler;
- (void)insertQueueWithPath:(id)path position:(int64_t)position sessionID:(id)d completionHandler:(id)handler;
- (void)setQueueWithPath:(id)path shuffleMode:(int64_t)mode sessionID:(id)d completionHandler:(id)handler;
@end

@implementation MusicKit_RemoteLibraryPlaybackQueue

- (MusicKit_RemoteLibraryPlaybackQueue)initWithRequest:(id)request startItem:(id)item replaceQueueIntent:(int64_t)intent
{
  v95 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  itemCopy = item;
  v84.receiver = self;
  v84.super_class = MusicKit_RemoteLibraryPlaybackQueue;
  v9 = [(MusicKit_RemotePlaybackQueue *)&v84 initWithReplaceQueueIntent:intent];
  if (!v9)
  {
    goto LABEL_51;
  }

  v10 = requestCopy;
  if (([v10 filteringOptions] & 2) != 0)
  {
    v15 = v10;
    libraryRequest = v9->_libraryRequest;
    v9->_libraryRequest = v15;
    goto LABEL_48;
  }

  v11 = objc_alloc_init(getMPMediaQueryClass());
  [v11 setGroupingType:0];
  sectionKind = [v10 sectionKind];
  getMPModelAlbumKindClass();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    albumsQuery = [getMPMediaQueryClass() albumsQuery];
LABEL_8:
    libraryRequest = albumsQuery;

    goto LABEL_10;
  }

  sectionKind2 = [v10 sectionKind];
  getMPModelPlaylistKindClass();
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    albumsQuery = [getMPMediaQueryClass() playlistsQuery];
    goto LABEL_8;
  }

  libraryRequest = v11;
LABEL_10:
  allowedSectionIdentifiers = [v10 allowedSectionIdentifiers];
  v20 = [allowedSectionIdentifiers count] == 0;

  if (v20)
  {
    scopedContainers = [v10 scopedContainers];
    v30 = [scopedContainers count] == 0;

    if (!v30)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = [v10 scopedContainers];
      v31 = [obj countByEnumeratingWithState:&v80 objects:v94 count:16];
      if (v31)
      {
        v78 = *v81;
        v76 = &v87;
LABEL_16:
        v32 = 0;
        while (1)
        {
          if (*v81 != v78)
          {
            objc_enumerationMutation(obj);
          }

          identifiers = [*(*(&v80 + 1) + 8 * v32) identifiers];
          library = [identifiers library];
          persistentID = [library persistentID];

          if (!persistentID)
          {
            break;
          }

          getMPModelAlbumClass();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
            v37 = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID];
            v38 = getMPMediaItemPropertyAlbumPersistentID();
            v39 = [MPMediaPropertyPredicateClass predicateWithValue:v37 forProperty:v38 comparisonType:0];
            [libraryRequest addFilterPredicate:v39];
          }

          else
          {
            getMPModelPlaylistClass();
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = getMPMediaPropertyPredicateClass();
              v41 = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID];
              v42 = getMPMediaPlaylistPropertyPersistentID();
              v43 = [v40 predicateWithValue:v41 forProperty:v42 comparisonType:0];
              [libraryRequest addFilterPredicate:v43];

              [libraryRequest setShouldIncludeNonLibraryEntities:1];
            }

            else
            {
              v90 = 0;
              v91 = &v90;
              v92 = 0x2050000000;
              v44 = getMPModelArtistClass_softClass;
              v93 = getMPModelArtistClass_softClass;
              if (!getMPModelArtistClass_softClass)
              {
                v85 = MEMORY[0x1E69E9820];
                v86 = 3221225472;
                v87 = __getMPModelArtistClass_block_invoke;
                v88 = &unk_1E84C3838;
                v89 = &v90;
                __getMPModelArtistClass_block_invoke(&v85);
                v44 = v91[3];
              }

              v45 = v44;
              _Block_object_dispose(&v90, 8);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 sectionKind], v46 = objc_claimAutoreleasedReturnValue(), getMPModelAlbumKindClass(), objc_opt_class(), v47 = objc_opt_isKindOfClass(), v46, (v47))
              {
                v48 = getMPMediaPropertyPredicateClass();
                v49 = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID];
                v90 = 0;
                v91 = &v90;
                v92 = 0x2020000000;
                v50 = getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_ptr;
                v93 = getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_ptr;
                if (!getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_ptr)
                {
                  v85 = MEMORY[0x1E69E9820];
                  v86 = 3221225472;
                  v87 = __getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_block_invoke;
                  v88 = &unk_1E84C3838;
                  v89 = &v90;
                  v51 = MediaPlayerLibrary_13();
                  v52 = dlsym(v51, "MPMediaItemPropertyAlbumArtistPersistentID");
                  *(v89[1] + 24) = v52;
                  getMPMediaItemPropertyAlbumArtistPersistentIDSymbolLoc_ptr = *(v89[1] + 24);
                  v50 = v91[3];
                }

                _Block_object_dispose(&v90, 8);
                if (!v50)
                {
                  getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
                  __break(1u);
                }

                v53 = *v50;
                v54 = [v48 predicateWithValue:v49 forProperty:v53 comparisonType:0];
                [libraryRequest addFilterPredicate:v54];
              }

              else
              {
                v90 = 0;
                v91 = &v90;
                v92 = 0x2050000000;
                v55 = getMPModelComposerClass_softClass;
                v93 = getMPModelComposerClass_softClass;
                if (!getMPModelComposerClass_softClass)
                {
                  v85 = MEMORY[0x1E69E9820];
                  v86 = 3221225472;
                  v87 = __getMPModelComposerClass_block_invoke;
                  v88 = &unk_1E84C3838;
                  v89 = &v90;
                  __getMPModelComposerClass_block_invoke(&v85);
                  v55 = v91[3];
                }

                v56 = v55;
                _Block_object_dispose(&v90, 8);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  sectionKind3 = [v10 sectionKind];
                  getMPModelAlbumKindClass();
                  objc_opt_class();
                  v58 = objc_opt_isKindOfClass();

                  if (v58)
                  {
                    goto LABEL_40;
                  }
                }

                v90 = 0;
                v91 = &v90;
                v92 = 0x2050000000;
                v59 = getMPModelGenreClass_softClass;
                v93 = getMPModelGenreClass_softClass;
                if (!getMPModelGenreClass_softClass)
                {
                  v85 = MEMORY[0x1E69E9820];
                  v86 = 3221225472;
                  v87 = __getMPModelGenreClass_block_invoke;
                  v88 = &unk_1E84C3838;
                  v89 = &v90;
                  __getMPModelGenreClass_block_invoke(&v85);
                  v59 = v91[3];
                }

                v60 = v59;
                _Block_object_dispose(&v90, 8);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  sectionKind4 = [v10 sectionKind];
                  getMPModelAlbumKindClass();
                  objc_opt_class();
                  v62 = objc_opt_isKindOfClass();

                  if (v62)
                  {
LABEL_40:
                    v63 = getMPMediaPropertyPredicateClass();
                    v64 = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID];
                    v65 = getMPMediaItemPropertyComposerPersistentID();
                    v66 = [v63 predicateWithValue:v64 forProperty:v65 comparisonType:0];
                    [libraryRequest addFilterPredicate:v66];
                  }
                }
              }
            }
          }

          if (v31 == ++v32)
          {
            v31 = [obj countByEnumeratingWithState:&v80 objects:v94 count:16];
            if (v31)
            {
              goto LABEL_16;
            }

            goto LABEL_47;
          }
        }
      }

      goto LABEL_47;
    }
  }

  else
  {
    allowedSectionIdentifiers2 = [v10 allowedSectionIdentifiers];
    firstObject = [allowedSectionIdentifiers2 firstObject];
    library2 = [firstObject library];
    persistentID2 = [library2 persistentID];

    sectionKind5 = [v10 sectionKind];
    getMPModelAlbumKindClass();
    objc_opt_class();
    LOBYTE(firstObject) = objc_opt_isKindOfClass();

    if (firstObject)
    {
      v26 = getMPMediaPropertyPredicateClass();
      obj = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID2];
      v27 = getMPMediaItemPropertyAlbumPersistentID();
      v28 = [v26 predicateWithValue:obj forProperty:v27 comparisonType:0];
LABEL_46:
      v70 = v28;
      [libraryRequest addFilterPredicate:v28];

LABEL_47:
      objc_storeStrong(&v9->_mediaQuery, libraryRequest);
      goto LABEL_48;
    }

    sectionKind6 = [v10 sectionKind];
    getMPModelPlaylistKindClass();
    objc_opt_class();
    v68 = objc_opt_isKindOfClass();

    if (v68)
    {
      v69 = getMPMediaPropertyPredicateClass();
      obj = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID2];
      v27 = getMPMediaPlaylistPropertyPersistentID();
      v28 = [v69 predicateWithValue:obj forProperty:v27 comparisonType:0];
      goto LABEL_46;
    }
  }

LABEL_48:

  if (!v9->_mediaQuery)
  {
    songsQuery = [getMPMediaQueryClass() songsQuery];
    mediaQuery = v9->_mediaQuery;
    v9->_mediaQuery = songsQuery;
  }

  _underlyingModelObject = [itemCopy _underlyingModelObject];
  underlyingStartObject = v9->_underlyingStartObject;
  v9->_underlyingStartObject = _underlyingModelObject;

LABEL_51:
  return v9;
}

- (MusicKit_RemoteLibraryPlaybackQueue)initWithItem:(id)item replaceQueueIntent:(int64_t)intent
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = MusicKit_RemoteLibraryPlaybackQueue;
  v7 = [(MusicKit_RemotePlaybackQueue *)&v13 initWithReplaceQueueIntent:intent];
  if (v7)
  {
    songsQuery = [getMPMediaQueryClass() songsQuery];
    mediaQuery = v7->_mediaQuery;
    v7->_mediaQuery = songsQuery;

    _underlyingModelObject = [itemCopy _underlyingModelObject];
    underlyingStartObject = v7->_underlyingStartObject;
    v7->_underlyingStartObject = _underlyingModelObject;
  }

  return v7;
}

- (MusicKit_RemoteLibraryPlaybackQueue)initWithContainer:(id)container startItem:(id)item replaceQueueIntent:(int64_t)intent
{
  containerCopy = container;
  itemCopy = item;
  v28.receiver = self;
  v28.super_class = MusicKit_RemoteLibraryPlaybackQueue;
  v10 = [(MusicKit_RemotePlaybackQueue *)&v28 initWithReplaceQueueIntent:intent];
  if (v10)
  {
    _underlyingModelObject = [containerCopy _underlyingModelObject];
    v12 = objc_alloc_init(getMPMediaQueryClass());
    [v12 setGroupingType:0];
    getMPModelAlbumClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
      v14 = MEMORY[0x1E696AD98];
      identifiers = [_underlyingModelObject identifiers];
      library = [identifiers library];
      v17 = [v14 numberWithLongLong:{objc_msgSend(library, "persistentID")}];
      v18 = getMPMediaItemPropertyAlbumPersistentID();
    }

    else
    {
      getMPModelPlaylistClass();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        songsQuery = [getMPMediaQueryClass() songsQuery];
        mediaQuery = v10->_mediaQuery;
        v10->_mediaQuery = songsQuery;
        goto LABEL_8;
      }

      MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
      v19 = MEMORY[0x1E696AD98];
      identifiers = [_underlyingModelObject identifiers];
      library = [identifiers library];
      v17 = [v19 numberWithLongLong:{objc_msgSend(library, "persistentID")}];
      v18 = getMPMediaPlaylistPropertyPersistentID();
    }

    v20 = v18;
    v21 = [MPMediaPropertyPredicateClass predicateWithValue:v17 forProperty:v18 comparisonType:0];
    [v12 addFilterPredicate:v21];

    v22 = v12;
    mediaQuery = v10->_mediaQuery;
    v10->_mediaQuery = v22;
LABEL_8:

    _underlyingModelObject2 = [itemCopy _underlyingModelObject];
    underlyingStartObject = v10->_underlyingStartObject;
    v10->_underlyingStartObject = _underlyingModelObject2;
  }

  return v10;
}

- (void)setQueueWithPath:(id)path shuffleMode:(int64_t)mode sessionID:(id)d completionHandler:(id)handler
{
  pathCopy = path;
  dCopy = d;
  handlerCopy = handler;
  libraryRequest = self->_libraryRequest;
  if (libraryRequest)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __96__MusicKit_RemoteLibraryPlaybackQueue_setQueueWithPath_shuffleMode_sessionID_completionHandler___block_invoke;
    v14[3] = &unk_1E84C4230;
    v14[4] = self;
    v15 = pathCopy;
    modeCopy = mode;
    v16 = dCopy;
    v17 = handlerCopy;
    [(MusicKit_RemoteLibraryPlaybackQueue *)self _resolveMediaQueryForLibraryRequest:libraryRequest completionHandler:v14];
  }

  else
  {
    [(MusicKit_RemoteLibraryPlaybackQueue *)self _setQueueWithPath:pathCopy shuffleMode:mode sessionID:dCopy completionHandler:handlerCopy];
  }
}

- (void)_setQueueWithPath:(id)path shuffleMode:(int64_t)mode sessionID:(id)d completionHandler:(id)handler
{
  v38[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  handlerCopy = handler;
  v12 = MRSystemAppPlaybackQueueCreate();
  protobufferEncodableObject = [(MPMediaQuery *)self->_mediaQuery protobufferEncodableObject];
  [protobufferEncodableObject data];
  MRSystemAppPlaybackQueueSetLocalQueryData();

  _persistentIDForStartItem = [(MusicKit_RemoteLibraryPlaybackQueue *)self _persistentIDForStartItem];
  if (_persistentIDForStartItem)
  {
    v15 = _persistentIDForStartItem;
    defaultMediaLibrary = [getMPMediaLibraryClass_0() defaultMediaLibrary];
    v17 = [defaultMediaLibrary multiverseIdentifierForTrackWithPersistentID:v15];

    [v17 data];
    MRSystemAppPlaybackQueueSetLocalQueryFirstItemMultiverseIDData();
  }

  MRSystemAppPlaybackQueueSetLocalQueryShuffleMode();
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v18 = getMPRemotePlaybackQueueClass_softClass_0;
  v36 = getMPRemotePlaybackQueueClass_softClass_0;
  if (!getMPRemotePlaybackQueueClass_softClass_0)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __getMPRemotePlaybackQueueClass_block_invoke_0;
    v32[3] = &unk_1E84C3838;
    v32[4] = &v33;
    __getMPRemotePlaybackQueueClass_block_invoke_0(v32);
    v18 = v34[3];
  }

  v19 = v18;
  _Block_object_dispose(&v33, 8);
  v20 = [v18 queueWithMediaRemotePlaybackQueue:v12];
  v21 = v20;
  [v20 _mediaRemotePlaybackQueue];
  [(MusicKit_RemotePlaybackQueue *)self mrReplaceIntentFromMusicKitReplaceQueueIntent:[(MusicKit_RemotePlaybackQueue *)self replaceQueueIntent]];
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  v23 = dCopy;
  v24 = v23;
  if (!v23)
  {
    v25 = +[MusicKit_PlayerPathSessionManager sharedSessionManager];
    v24 = [v25 sessionIDForPlayerPath:pathCopy];
  }

  v26 = *MEMORY[0x1E69B1090];
  v37[0] = *MEMORY[0x1E69B10E8];
  v37[1] = v26;
  v38[0] = v24;
  v38[1] = MEMORY[0x1E695E118];
  v37[2] = *MEMORY[0x1E69B1268];
  v38[2] = ExternalRepresentation;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v31 = 0;
  v28 = [(MusicKit_RemotePlaybackQueue *)self mrPlayerPathFromPlaybackPath:pathCopy error:&v31];
  v29 = v31;
  if (v29)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v29);
    }
  }

  else
  {
    v30 = handlerCopy;
    MRMediaRemoteSendCommandToPlayerWithResult();
  }
}

- (void)insertQueueWithPath:(id)path position:(int64_t)position sessionID:(id)d completionHandler:(id)handler
{
  pathCopy = path;
  dCopy = d;
  handlerCopy = handler;
  libraryRequest = self->_libraryRequest;
  if (libraryRequest)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __96__MusicKit_RemoteLibraryPlaybackQueue_insertQueueWithPath_position_sessionID_completionHandler___block_invoke;
    v14[3] = &unk_1E84C4230;
    v14[4] = self;
    v15 = pathCopy;
    positionCopy = position;
    v16 = dCopy;
    v17 = handlerCopy;
    [(MusicKit_RemoteLibraryPlaybackQueue *)self _resolveMediaQueryForLibraryRequest:libraryRequest completionHandler:v14];
  }

  else
  {
    [(MusicKit_RemoteLibraryPlaybackQueue *)self _insertQueueWithPath:pathCopy position:position sessionID:dCopy completionHandler:handlerCopy];
  }
}

- (void)_insertQueueWithPath:(id)path position:(int64_t)position sessionID:(id)d completionHandler:(id)handler
{
  v41[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  handlerCopy = handler;
  MRSystemAppPlaybackQueueCreate();
  _persistentIDForStartItem = [(MusicKit_RemoteLibraryPlaybackQueue *)self _persistentIDForStartItem];
  if (_persistentIDForStartItem)
  {
    v12 = _persistentIDForStartItem;
    mediaQuery = self->_mediaQuery;
    MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
    v15 = handlerCopy;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v16 = getMPMediaItemPropertyPersistentIDSymbolLoc_ptr;
    v39 = getMPMediaItemPropertyPersistentIDSymbolLoc_ptr;
    if (!getMPMediaItemPropertyPersistentIDSymbolLoc_ptr)
    {
      v17 = MediaPlayerLibrary_13();
      v37[3] = dlsym(v17, "MPMediaItemPropertyPersistentID");
      getMPMediaItemPropertyPersistentIDSymbolLoc_ptr = v37[3];
      v16 = v37[3];
    }

    _Block_object_dispose(&v36, 8);
    if (!v16)
    {
      getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
      __break(1u);
    }

    v18 = *v16;
    [MPMediaPropertyPredicateClass predicateWithValue:v14 forProperty:v18 comparisonType:0];
    v19 = handlerCopy = v15;
    [(MPMediaQuery *)mediaQuery addFilterPredicate:v19];
  }

  protobufferEncodableObject = [(MPMediaQuery *)self->_mediaQuery protobufferEncodableObject];
  [protobufferEncodableObject data];
  MRSystemAppPlaybackQueueSetLocalQueryData();

  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  v22 = dCopy;
  v23 = v22;
  if (!v22)
  {
    v24 = +[MusicKit_PlayerPathSessionManager sharedSessionManager];
    v23 = [v24 sessionIDForPlayerPath:pathCopy];
  }

  if (position == 2)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2 * (position == 1);
  }

  v26 = *MEMORY[0x1E69B10E8];
  v41[0] = v23;
  v27 = *MEMORY[0x1E69B1178];
  v40[0] = v26;
  v40[1] = v27;
  v28 = [MEMORY[0x1E696AD98] numberWithInt:v25];
  v41[1] = v28;
  v40[2] = *MEMORY[0x1E69B1268];
  v41[2] = ExternalRepresentation;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];

  mrPlayerPath = [pathCopy mrPlayerPath];
  v35 = handlerCopy;
  v31 = handlerCopy;
  MRMediaRemoteSendCommandToPlayerWithResult();
}

- (void)_resolveMediaQueryForLibraryRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__MusicKit_RemoteLibraryPlaybackQueue__resolveMediaQueryForLibraryRequest_completionHandler___block_invoke;
  v7[3] = &unk_1E84C3B38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [request performWithResponseHandler:v7];
}

- (int64_t)_persistentIDForStartItem
{
  underlyingStartObject = self->_underlyingStartObject;
  if (!underlyingStartObject)
  {
    return 0;
  }

  identifiers = [(MPModelObject *)underlyingStartObject identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  getMPModelPlaylistEntryClass_0();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = self->_underlyingStartObject;
    song = [(MPModelObject *)v7 song];

    if (song)
    {
      song2 = [(MPModelObject *)v7 song];
    }

    else
    {
      tvEpisode = [(MPModelObject *)v7 tvEpisode];

      if (tvEpisode)
      {
        song2 = [(MPModelObject *)v7 tvEpisode];
      }

      else
      {
        movie = [(MPModelObject *)v7 movie];

        if (!movie)
        {
LABEL_11:

          return persistentID;
        }

        song2 = [(MPModelObject *)v7 movie];
      }
    }

    v12 = song2;
    identifiers2 = [song2 identifiers];
    library2 = [identifiers2 library];
    persistentID = [library2 persistentID];

    goto LABEL_11;
  }

  return persistentID;
}

@end