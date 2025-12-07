@interface MusicKit_SoftLinking_MPLibraryAddStatusObserver
- (MusicKit_SoftLinking_MPLibraryAddStatusObserver)initWithIdentifyingModelObject:(id)object;
- (MusicKit_SoftLinking_MPModelObject)identifyingModelObject;
- (int64_t)_libraryAddStatusFromUnderlyingStatus:(int64_t)status;
- (int64_t)currentStatus;
- (void)_handleUpdatedUnderlyingLibraryAddStatus:(int64_t)status;
- (void)calculateDetailedAddStatusWithIdentifyingModelObject:(id)object children:(id)children;
- (void)setIdentifyingModelObject:(id)object;
@end

@implementation MusicKit_SoftLinking_MPLibraryAddStatusObserver

- (MusicKit_SoftLinking_MPLibraryAddStatusObserver)initWithIdentifyingModelObject:(id)object
{
  objectCopy = object;
  v28.receiver = self;
  v28.super_class = MusicKit_SoftLinking_MPLibraryAddStatusObserver;
  v5 = [(MusicKit_SoftLinking_MPLibraryAddStatusObserver *)&v28 init];
  if (v5)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2810000000;
    v25 = &unk_1D5749B1F;
    v26 = 0;
    v27 = 0;
    MPModelObjectClass_0 = getMPModelObjectClass_0();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__MusicKit_SoftLinking_MPLibraryAddStatusObserver_initWithIdentifyingModelObject___block_invoke;
    v19[3] = &unk_1E84C3998;
    v21 = &v22;
    v7 = objectCopy;
    v20 = v7;
    [MPModelObjectClass_0 performWithoutEnforcement:v19];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v8 = getMPLibraryAddStatusObserverClass_softClass;
    v33 = getMPLibraryAddStatusObserverClass_softClass;
    if (!getMPLibraryAddStatusObserverClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getMPLibraryAddStatusObserverClass_block_invoke;
      location[3] = &unk_1E84C3838;
      location[4] = &v30;
      __getMPLibraryAddStatusObserverClass_block_invoke(location);
      v8 = v31[3];
    }

    v9 = v8;
    _Block_object_dispose(&v30, 8);
    v10 = objc_alloc_init(v8);
    underlyingLibraryAddStatusObserver = v5->_underlyingLibraryAddStatusObserver;
    v5->_underlyingLibraryAddStatusObserver = v10;

    v12 = v5->_underlyingLibraryAddStatusObserver;
    v13 = v23;
    _underlyingModelObject = [v7 _underlyingModelObject];
    [(MPLibraryAddStatusObserver *)v12 setConfiguration:*(v13 + 8) | (*(v13 + 36) << 32) identifyingModelObject:_underlyingModelObject];

    objc_initWeak(location, v5);
    v15 = v5->_underlyingLibraryAddStatusObserver;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__MusicKit_SoftLinking_MPLibraryAddStatusObserver_initWithIdentifyingModelObject___block_invoke_2;
    v17[3] = &unk_1E84C42E8;
    objc_copyWeak(&v18, location);
    [(MPLibraryAddStatusObserver *)v15 setStatusBlock:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(location);

    _Block_object_dispose(&v22, 8);
  }

  return v5;
}

- (MusicKit_SoftLinking_MPModelObject)identifyingModelObject
{
  v3 = objc_alloc(MEMORY[0x1E6977640]);
  identifyingModelObject = [(MPLibraryAddStatusObserver *)self->_underlyingLibraryAddStatusObserver identifyingModelObject];
  v5 = [v3 initWithUnderlyingModelObject:identifyingModelObject];

  return v5;
}

- (void)setIdentifyingModelObject:(id)object
{
  objectCopy = object;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2810000000;
  v16 = &unk_1D5749B1F;
  v17 = 0;
  v18 = 0;
  MPModelObjectClass_0 = getMPModelObjectClass_0();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__MusicKit_SoftLinking_MPLibraryAddStatusObserver_setIdentifyingModelObject___block_invoke;
  v10[3] = &unk_1E84C3998;
  v12 = &v13;
  v6 = objectCopy;
  v11 = v6;
  [MPModelObjectClass_0 performWithoutEnforcement:v10];
  underlyingLibraryAddStatusObserver = self->_underlyingLibraryAddStatusObserver;
  v8 = v14;
  _underlyingModelObject = [v6 _underlyingModelObject];
  [(MPLibraryAddStatusObserver *)underlyingLibraryAddStatusObserver setConfiguration:*(v8 + 8) | (*(v8 + 36) << 32) identifyingModelObject:_underlyingModelObject];

  _Block_object_dispose(&v13, 8);
}

- (int64_t)currentStatus
{
  currentStatus = [(MPLibraryAddStatusObserver *)self->_underlyingLibraryAddStatusObserver currentStatus];

  return [(MusicKit_SoftLinking_MPLibraryAddStatusObserver *)self _libraryAddStatusFromUnderlyingStatus:currentStatus];
}

- (void)calculateDetailedAddStatusWithIdentifyingModelObject:(id)object children:(id)children
{
  v62 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  childrenCopy = children;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2810000000;
  v49 = &unk_1D5749B1F;
  v50 = 0;
  v51 = 0;
  _underlyingModelObject = [objectCopy _underlyingModelObject];
  MPModelObjectClass_0 = getMPModelObjectClass_0();
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __113__MusicKit_SoftLinking_MPLibraryAddStatusObserver_calculateDetailedAddStatusWithIdentifyingModelObject_children___block_invoke;
  v43[3] = &unk_1E84C3998;
  v45 = &v46;
  v9 = _underlyingModelObject;
  v44 = v9;
  [MPModelObjectClass_0 performWithoutEnforcement:v43];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = v47[34];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2050000000;
  v10 = getMPModelAlbumClass_softClass_0;
  v60 = getMPModelAlbumClass_softClass_0;
  if (!getMPModelAlbumClass_softClass_0)
  {
    v52 = MEMORY[0x1E69E9820];
    v53 = 3221225472;
    v54 = __getMPModelAlbumClass_block_invoke_0;
    v55 = &unk_1E84C3838;
    v56 = &v57;
    __getMPModelAlbumClass_block_invoke_0(&v52);
    v10 = v58[3];
  }

  v11 = v10;
  _Block_object_dispose(&v57, 8);
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = v40;
  if ((isKindOfClass & 1) != 0 && (v40[3] & 1) == 0)
  {
    v29 = v9;
    v30 = objectCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = childrenCopy;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v61 count:16];
    if (v15)
    {
      v16 = *v36;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v14);
          }

          _underlyingModelObject2 = [*(*(&v35 + 1) + 8 * i) _underlyingModelObject];
          v57 = 0;
          v58 = &v57;
          v59 = 0x2050000000;
          v19 = getMPModelSongClass_softClass_2;
          v60 = getMPModelSongClass_softClass_2;
          if (!getMPModelSongClass_softClass_2)
          {
            v52 = MEMORY[0x1E69E9820];
            v53 = 3221225472;
            v54 = __getMPModelSongClass_block_invoke_2;
            v55 = &unk_1E84C3838;
            v56 = &v57;
            __getMPModelSongClass_block_invoke_2(&v52);
            v19 = v58[3];
          }

          v20 = v19;
          _Block_object_dispose(&v57, 8);
          if (objc_opt_isKindOfClass())
          {
            v21 = getMPModelObjectClass_0();
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __113__MusicKit_SoftLinking_MPLibraryAddStatusObserver_calculateDetailedAddStatusWithIdentifyingModelObject_children___block_invoke_2;
            v32[3] = &unk_1E84C3998;
            v34 = &v39;
            v22 = _underlyingModelObject2;
            v33 = v22;
            [v21 performWithoutEnforcement:v32];
            LOBYTE(v21) = *(v40 + 24);

            if (v21)
            {

              goto LABEL_18;
            }
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v35 objects:v61 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v13 = v40;
    objectCopy = v30;
    v9 = v29;
  }

  v23 = v47;
  if (*(v13 + 24) == 1 && (v47[34] & 1) == 0)
  {
    v24 = v47[32];
    v25 = 0x1000000;
    if (!v47[35])
    {
      v25 = 0;
    }

    v26 = 256;
    if (!v47[33])
    {
      v26 = 0;
    }

    v47[36] = v47[36] != 0;
    *(v23 + 8) = v26 | v24 | v25 | 0x10000;
  }

  underlyingLibraryAddStatusObserver = self->_underlyingLibraryAddStatusObserver;
  _underlyingModelObject3 = [objectCopy _underlyingModelObject];
  [(MPLibraryAddStatusObserver *)underlyingLibraryAddStatusObserver setConfiguration:*(v23 + 8) | (v23[36] << 32) identifyingModelObject:_underlyingModelObject3];

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v46, 8);
}

- (void)_handleUpdatedUnderlyingLibraryAddStatus:(int64_t)status
{
  [(MusicKit_SoftLinking_MPLibraryAddStatusObserver *)self _libraryAddStatusFromUnderlyingStatus:status];
  statusBlock = self->_statusBlock;
  if (statusBlock)
  {
    v5 = *(statusBlock + 2);

    v5();
  }
}

- (int64_t)_libraryAddStatusFromUnderlyingStatus:(int64_t)status
{
  if ((status - 1) >= 0xA)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

@end