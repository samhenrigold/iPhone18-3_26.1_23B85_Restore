@interface CSQueuedTrack
- (CSQueuedTrack)initWithDictionary:(id)dictionary;
- (CSQueuedTrack)initWithSongTitle:(id)title artistName:(id)name artworkThumbnailImage:(id)image catalogID:(id)d trackType:(int64_t)type;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CSQueuedTrack

- (CSQueuedTrack)initWithSongTitle:(id)title artistName:(id)name artworkThumbnailImage:(id)image catalogID:(id)d trackType:(int64_t)type
{
  titleCopy = title;
  nameCopy = name;
  imageCopy = image;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = CSQueuedTrack;
  v16 = [(CSQueuedTrack *)&v22 init];
  if (v16)
  {
    v17 = [titleCopy copy];
    songTitle = v16->_songTitle;
    v16->_songTitle = v17;

    v19 = [nameCopy copy];
    artistName = v16->_artistName;
    v16->_artistName = v19;

    objc_storeStrong(&v16->_artworkThumbnailImage, image);
    objc_storeStrong(&v16->_catalogID, d);
    v16->_trackType = type;
  }

  return v16;
}

- (CSQueuedTrack)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = CSQueuedTrack;
  v5 = [(CSQueuedTrack *)&v19 init];
  if (!v5 || (CFStringGetTypeID(), CFDictionaryGetTypedValue(), v6 = objc_claimAutoreleasedReturnValue(), songTitle = v5->_songTitle, v5->_songTitle = v6, songTitle, CFStringGetTypeID(), CFDictionaryGetTypedValue(), v8 = objc_claimAutoreleasedReturnValue(), artistName = v5->_artistName, v5->_artistName = v8, artistName, CFStringGetTypeID(), CFDictionaryGetTypedValue(), v10 = objc_claimAutoreleasedReturnValue(), catalogID = v5->_catalogID, v5->_catalogID = v10, catalogID, CFDataGetTypeID(), CFDictionaryGetTypedValue(), v12 = objc_claimAutoreleasedReturnValue(), artworkThumbnailImage = v5->_artworkThumbnailImage, v5->_artworkThumbnailImage = v12, artworkThumbnailImage, NSDictionaryGetNSNumber(), v14 = objc_claimAutoreleasedReturnValue(), v5->_trackType = [v14 integerValue], v14, v5->_songTitle) && v5->_artistName)
  {
    v16 = v5;
  }

  else
  {
    v17 = ContinuitySingLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(CSQueuedTrack *)dictionaryCopy initWithDictionary:v17];
    }

    v16 = 0;
  }

  return v16;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NSString *)self->_songTitle copy];
  [dictionary setObject:v4 forKeyedSubscript:@"SongTitle"];

  v5 = [(NSString *)self->_artistName copy];
  [dictionary setObject:v5 forKeyedSubscript:@"ArtistName"];

  v6 = [(NSString *)self->_catalogID copy];
  [dictionary setObject:v6 forKeyedSubscript:@"CatalogID"];

  artworkThumbnailImage = self->_artworkThumbnailImage;
  if (artworkThumbnailImage)
  {
    [dictionary setObject:artworkThumbnailImage forKeyedSubscript:@"ArtworkThumbnailImage"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_trackType];
  [dictionary setObject:v8 forKeyedSubscript:@"TrackType"];

  v9 = [dictionary copy];

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = *&self->_songTitle;
  catalogID = self->_catalogID;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_trackType];
  v6 = [v3 initWithFormat:@"<CSQueuedTrack title:%@; artist:%@; catalogID:%@; type:%@", v8, catalogID, v5];

  return v6;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[CSQueuedTrack initWithDictionary:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2441FB000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to decode CSQueuedTrack with dictionary: %@", &v2, 0x16u);
}

@end