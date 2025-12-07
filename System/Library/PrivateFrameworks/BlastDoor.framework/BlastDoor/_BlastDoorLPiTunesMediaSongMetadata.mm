@interface _BlastDoorLPiTunesMediaSongMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPiTunesMediaSongMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPiTunesMediaSongMetadata

- (_BlastDoorLPiTunesMediaSongMetadata)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = _BlastDoorLPiTunesMediaSongMetadata;
  v5 = [(_BlastDoorLPiTunesMediaSongMetadata *)&v30 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"name");
    name = v5->_name;
    v5->_name = v10;

    v12 = decodeStringForKey(coderCopy, @"artist");
    artist = v5->_artist;
    v5->_artist = v12;

    v14 = decodeStringForKey(coderCopy, @"album");
    album = v5->_album;
    v5->_album = v14;

    v16 = decodeStringForKey(coderCopy, @"lyrics");
    lyrics = v5->_lyrics;
    v5->_lyrics = v16;

    v18 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v18;

    v20 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v20;

    v22 = decodeURLForKey(coderCopy, @"previewURL");
    previewURL = v5->_previewURL;
    v5->_previewURL = v22;

    v24 = decodeArrayOfStringsForKey(coderCopy);
    offers = v5->_offers;
    v5->_offers = v24;

    v26 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"lyricExcerpt"];
    lyricExcerpt = v5->_lyricExcerpt;
    v5->_lyricExcerpt = v26;

    v28 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  storeFrontIdentifier = self->_storeFrontIdentifier;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"name"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artist forKey:@"artist"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_album forKey:@"album"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_lyrics forKey:@"lyrics"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [coderCopy _bd_lp_encodeURLIfNotNilOrLocalFile:self->_previewURL forKey:@"previewURL"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_lyricExcerpt forKey:@"lyricExcerpt"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPiTunesMediaSongMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(_BlastDoorLPiTunesMediaSongMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(_BlastDoorLPiTunesMediaSongMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(_BlastDoorLPiTunesMediaSongMetadata *)self name];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setName:name];

    artist = [(_BlastDoorLPiTunesMediaSongMetadata *)self artist];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setArtist:artist];

    album = [(_BlastDoorLPiTunesMediaSongMetadata *)self album];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setAlbum:album];

    lyrics = [(_BlastDoorLPiTunesMediaSongMetadata *)self lyrics];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setLyrics:lyrics];

    artwork = [(_BlastDoorLPiTunesMediaSongMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(_BlastDoorLPiTunesMediaSongMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setArtworkMetadata:artworkMetadata];

    previewURL = [(_BlastDoorLPiTunesMediaSongMetadata *)self previewURL];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setPreviewURL:previewURL];

    offers = [(_BlastDoorLPiTunesMediaSongMetadata *)self offers];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setOffers:offers];

    lyricExcerpt = [(_BlastDoorLPiTunesMediaSongMetadata *)self lyricExcerpt];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setLyricExcerpt:lyricExcerpt];

    v16 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v20 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v19.receiver = self;
  v19.super_class = _BlastDoorLPiTunesMediaSongMetadata;
  if ([(_BlastDoorLPiTunesMediaSongMetadata *)&v19 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6[2];
      if (v7 | self->_storeFrontIdentifier && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_storeIdentifier) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_name) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_artist) && !objc_msgSend(v10, "isEqual:") || (v11 = v6[6], v11 | self->_album) && !objc_msgSend(v11, "isEqual:") || (v12 = v6[7], v12 | self->_lyrics) && !objc_msgSend(v12, "isEqual:") || (v13 = v6[8], v13 | self->_artwork) && !objc_msgSend(v13, "isEqual:") || (v14 = v6[9], v14 | self->_artworkMetadata) && !objc_msgSend(v14, "isEqual:") || (v15 = v6[10], v15 | self->_previewURL) && !objc_msgSend(v15, "isEqual:") || (v16 = v6[11], v16 | self->_offers) && !objc_msgSend(v16, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v17 = v6[12];
        if (v17 | self->_lyricExcerpt)
        {
          v5 = [v17 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end