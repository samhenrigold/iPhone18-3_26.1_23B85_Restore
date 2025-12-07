@interface MusicKit_SoftLinking_MPModelSortDescriptor
+ (NSSortDescriptor)recentlyAddedModelObjectSortDescriptor;
+ (NSSortDescriptor)recentlyDownloadedModelObjectSortDescriptor;
- (MusicKit_SoftLinking_MPModelSortDescriptor)initWithKey:(id)key isAscending:(BOOL)ascending;
- (MusicKit_SoftLinking_MPModelSortDescriptor)initWithKeyPath:(id)path isAscending:(BOOL)ascending;
@end

@implementation MusicKit_SoftLinking_MPModelSortDescriptor

+ (NSSortDescriptor)recentlyAddedModelObjectSortDescriptor
{
  v30 = *MEMORY[0x277D85DE8];
  MPMultiSortDescriptorClass = getMPMultiSortDescriptorClass();
  v3 = getMPModelRelationshipGenericAlbum_1();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v4 = getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr_0;
  v26 = getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr_0;
  v27[0] = v3;
  if (!getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr_0)
  {
    v5 = MediaPlayerLibrary_13();
    v24[3] = dlsym(v5, "MPModelPropertyAlbumLibraryAddedDate");
    getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr_0 = v24[3];
    v4 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  v6 = *v4;
  v28[0] = v6;
  v7 = getMPModelRelationshipGenericMovie_1();
  v27[1] = v7;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v8 = getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr_0;
  v26 = getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr_0)
  {
    v9 = MediaPlayerLibrary_13();
    v24[3] = dlsym(v9, "MPModelPropertyMovieLibraryAddedDate");
    getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr_0 = v24[3];
    v8 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v8)
  {
    goto LABEL_16;
  }

  v10 = *v8;
  v28[1] = v10;
  v11 = getMPModelRelationshipGenericPlaylist_2();
  v27[2] = v11;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v12 = getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr_0;
  v26 = getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr_0)
  {
    v13 = MediaPlayerLibrary_13();
    v24[3] = dlsym(v13, "MPModelPropertyPlaylistLibraryAddedDate");
    getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr_0 = v24[3];
    v12 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v12)
  {
    goto LABEL_16;
  }

  v14 = *v12;
  v28[2] = v14;
  v15 = getMPModelRelationshipGenericTVSeason_1();
  v27[3] = v15;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v16 = getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr_0;
  v26 = getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr_0)
  {
    v17 = MediaPlayerLibrary_13();
    v24[3] = dlsym(v17, "MPModelPropertyTVSeasonLibraryAddedDate");
    getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr_0 = v24[3];
    v16 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v16)
  {
LABEL_16:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v29 = *v16;
  v18 = MEMORY[0x277CBEAC0];
  v19 = v29;
  v20 = [v18 dictionaryWithObjects:v28 forKeys:v27 count:4];

  v21 = [MPMultiSortDescriptorClass sortDescriptorWithRelatedProperties:v20 ascending:0];

  return v21;
}

- (MusicKit_SoftLinking_MPModelSortDescriptor)initWithKey:(id)key isAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPModelSortDescriptor;
  v7 = [(MusicKit_SoftLinking_MPModelSortDescriptor *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:keyCopy ascending:ascendingCopy];
    sortDescriptor = v7->_sortDescriptor;
    v7->_sortDescriptor = v8;
  }

  return v7;
}

- (MusicKit_SoftLinking_MPModelSortDescriptor)initWithKeyPath:(id)path isAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = MusicKit_SoftLinking_MPModelSortDescriptor;
  v7 = [(MusicKit_SoftLinking_MPModelSortDescriptor *)&v13 init];
  if (v7)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v8 = getMPModelSortDescriptorClass_softClass;
    v18 = getMPModelSortDescriptorClass_softClass;
    if (!getMPModelSortDescriptorClass_softClass)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __getMPModelSortDescriptorClass_block_invoke;
      v14[3] = &unk_278229610;
      v14[4] = &v15;
      __getMPModelSortDescriptorClass_block_invoke(v14);
      v8 = v16[3];
    }

    v9 = v8;
    _Block_object_dispose(&v15, 8);
    v10 = [v8 sortDescriptorWithKeyPath:pathCopy ascending:ascendingCopy];
    sortDescriptor = v7->_sortDescriptor;
    v7->_sortDescriptor = v10;
  }

  return v7;
}

+ (NSSortDescriptor)recentlyDownloadedModelObjectSortDescriptor
{
  v30 = *MEMORY[0x277D85DE8];
  MPMultiSortDescriptorClass = getMPMultiSortDescriptorClass();
  v3 = getMPModelRelationshipGenericAlbum_1();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v4 = getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr_0;
  v26 = getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr_0;
  v27[0] = v3;
  if (!getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr_0)
  {
    v5 = MediaPlayerLibrary_13();
    v24[3] = dlsym(v5, "MPModelPropertyAlbumDownloadedDate");
    getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr_0 = v24[3];
    v4 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  v6 = *v4;
  v28[0] = v6;
  v7 = getMPModelRelationshipGenericMovie_1();
  v27[1] = v7;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v8 = getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr_0;
  v26 = getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr_0)
  {
    v9 = MediaPlayerLibrary_13();
    v24[3] = dlsym(v9, "MPModelPropertyMovieDownloadedDate");
    getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr_0 = v24[3];
    v8 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v8)
  {
    goto LABEL_16;
  }

  v10 = *v8;
  v28[1] = v10;
  v11 = getMPModelRelationshipGenericPlaylist_2();
  v27[2] = v11;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v12 = getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr_0;
  v26 = getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr_0)
  {
    v13 = MediaPlayerLibrary_13();
    v24[3] = dlsym(v13, "MPModelPropertyPlaylistDownloadedDate");
    getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr_0 = v24[3];
    v12 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v12)
  {
    goto LABEL_16;
  }

  v14 = *v12;
  v28[2] = v14;
  v15 = getMPModelRelationshipGenericTVSeason_1();
  v27[3] = v15;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v16 = getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr_0;
  v26 = getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr_0)
  {
    v17 = MediaPlayerLibrary_13();
    v24[3] = dlsym(v17, "MPModelPropertyTVSeasonDownloadedDate");
    getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr_0 = v24[3];
    v16 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v16)
  {
LABEL_16:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v29 = *v16;
  v18 = MEMORY[0x277CBEAC0];
  v19 = v29;
  v20 = [v18 dictionaryWithObjects:v28 forKeys:v27 count:4];

  v21 = [MPMultiSortDescriptorClass sortDescriptorWithRelatedProperties:v20 ascending:0];

  return v21;
}

@end