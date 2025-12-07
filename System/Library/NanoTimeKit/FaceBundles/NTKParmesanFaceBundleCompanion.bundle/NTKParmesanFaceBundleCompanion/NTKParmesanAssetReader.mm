@interface NTKParmesanAssetReader
+ (id)readerForAlbumWithResourceDirectory:(id)directory;
+ (id)readerForResourceDirectory:(id)directory;
- (NTKParmesanAssetReader)initWithResourceDirectory:(id)directory;
- (NTKParmesanAssetReaderDelegate)delegate;
- (NTKParmesanShuffleSelection)shuffleSelection;
- (id)description;
- (id)firstObject;
- (id)lastObject;
- (unint64_t)contentType;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation NTKParmesanAssetReader

- (NTKParmesanAssetReader)initWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v14.receiver = self;
  v14.super_class = NTKParmesanAssetReader;
  v7 = [(NTKParmesanAssetReader *)&v14 init];
  if (v7)
  {
    if (directoryCopy)
    {
      v8 = objc_msgSend_copy(directoryCopy, v5, v6);
      resourceDirectory = v7->_resourceDirectory;
      v7->_resourceDirectory = v8;
    }

    assetCollectionIdentifier = v7->_assetCollectionIdentifier;
    v7->_assetCollectionIdentifier = 0;

    peopleIdentifiers = v7->_peopleIdentifiers;
    v7->_peopleIdentifiers = 0;

    v7->_hasDailyPhotos = 0;
    *&v7->_hasPeople = 0;
    uuidString = v7->_uuidString;
    v7->_uuidString = 0;
  }

  return v7;
}

- (unint64_t)contentType
{
  if (!self->_uuidString)
  {
    return 1;
  }

  if (self->_hasPeople || self->_hasPets || self->_hasNature || self->_hasCityscapes)
  {
    return 2;
  }

  if (self->_assetCollectionIdentifier)
  {
    return 3;
  }

  if (self->_hasDailyPhotos)
  {
    return 4;
  }

  v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_23BFF7CE0(self, v5);
  }

  return 0;
}

- (NTKParmesanShuffleSelection)shuffleSelection
{
  v4 = objc_msgSend_contentType(self, a2, v2);
  switch(v4)
  {
    case 4:
      v15 = objc_msgSend_initDaily(NTKParmesanShuffleSelection, v5, v6);
      goto LABEL_15;
    case 3:
      v13 = [NTKParmesanShuffleSelection alloc];
      v15 = objc_msgSend_initWithCollection_(v13, v14, self->_assetCollectionIdentifier);
LABEL_15:
      v12 = v15;
      break;
    case 2:
      v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
      v9 = v7;
      if (self->_hasPeople)
      {
        objc_msgSend_addObject_(v7, v8, &unk_284ED4560);
      }

      if (self->_hasPets)
      {
        objc_msgSend_addObject_(v9, v8, &unk_284ED4578);
      }

      if (self->_hasNature)
      {
        objc_msgSend_addObject_(v9, v8, &unk_284ED4590);
      }

      if (self->_hasCityscapes)
      {
        objc_msgSend_addObject_(v9, v8, &unk_284ED45A8);
      }

      v10 = [NTKParmesanShuffleSelection alloc];
      v12 = objc_msgSend_initWithShuffleTypesAsNSNumbers_personIdentifiers_(v10, v11, v9, self->_peopleIdentifiers);

      break;
    default:
      v12 = 0;
      break;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_assetCollectionIdentifier(self, v5, v6);
  v10 = objc_msgSend_peopleIdentifiers(self, v8, v9);
  hasPeople = objc_msgSend_hasPeople(self, v11, v12);
  hasPets = objc_msgSend_hasPets(self, v14, v15);
  hasNature = objc_msgSend_hasNature(self, v17, v18);
  hasCityscapes = objc_msgSend_hasCityscapes(self, v20, v21);
  hasDailyPhotos = objc_msgSend_hasDailyPhotos(self, v23, v24);
  v27 = objc_msgSend_stringWithFormat_(v3, v26, @"%@[album=%@, people=%@, hasPeople=%d, hasPets=%d, hasNature=%d, hasCityscapes=%d, hasDailyPhotos=%d]", v4, v7, v10, hasPeople, hasPets, hasNature, hasCityscapes, hasDailyPhotos);

  return v27;
}

+ (id)readerForResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [_NTKParmesanImageListReader alloc];
  v6 = objc_msgSend_initWithResourceDirectory_(v4, v5, directoryCopy);

  return v6;
}

+ (id)readerForAlbumWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [_NTKParmesanImageListReader alloc];
  v6 = objc_msgSend_initWithResourceDirectory_(v4, v5, directoryCopy);

  return v6;
}

- (id)firstObject
{
  v4 = objc_msgSend_count(self, a2, v2);
  if (v4)
  {
    v4 = objc_msgSend_objectAtIndex_(self, v5, 0);
  }

  return v4;
}

- (id)lastObject
{
  v4 = objc_msgSend_count(self, a2, v2);
  if (v4)
  {
    v7 = objc_msgSend_count(self, v5, v6);
    v4 = objc_msgSend_objectAtIndex_(self, v8, v7 - 1);
  }

  return v4;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  state->var2 = &self->_mutationCount;
  state->var0 = 1;
  v8 = state->var3[0];
  v9 = v8 + count;
  if (v8 + count > objc_msgSend_count(self, a2, state))
  {
    v9 = objc_msgSend_count(self, v10, v11);
  }

  v12 = v9 - v8;
  if (v9 > v8)
  {
    objectsCopy = objects;
    do
    {
      *objectsCopy++ = objc_msgSend_objectAtIndex_(self, v10, v8++);
    }

    while (v9 != v8);
  }

  state->var3[0] = v9;
  state->var1 = objects;
  return v12;
}

- (NTKParmesanAssetReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end