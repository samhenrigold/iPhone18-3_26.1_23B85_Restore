@interface BMMediaNowPlaying
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMediaNowPlaying)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMediaNowPlaying)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp playbackState:(int)state album:(id)album artist:(id)artist duration:(id)duration genre:(id)genre title:(id)self0 elapsed:(id)self1 mediaType:(id)self2 iTunesStoreIdentifier:(id)self3 iTunesSubscriptionIdentifier:(id)self4 isAirPlayVideo:(id)self5 outputDevices:(id)self6 bundleID:(id)self7 iTunesArtistIdentifier:(id)self8 iTunesAlbumIdentifier:(id)self9 groupIdentifier:(id)groupIdentifier isRemoteControl:(id)control itemMediaType:(int)mediaType itemMediaSubtype:(int)subtype isAirPlayActive:(id)active parentGroupContainsDiscoverableGroupLeader:(id)leader excludeFromSuggestions:(id)suggestions;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_outputDevicesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMediaNowPlaying

+ (id)columns
{
  v28[24] = *MEMORY[0x1E69E9840];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"playbackState" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"album" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"artist" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"duration" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"genre" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"elapsed" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaType" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"iTunesStoreIdentifier" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"iTunesSubscriptionIdentifier" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAirPlayVideo" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"outputDevices_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_353];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"iTunesArtistIdentifier" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"iTunesAlbumIdentifier" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"groupIdentifier" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRemoteControl" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemMediaType" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemMediaSubtype" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAirPlayActive" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parentGroupContainsDiscoverableGroupLeader" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"excludeFromSuggestions" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:12 convertedType:0];
  v28[0] = v27;
  v28[1] = v26;
  v28[2] = v25;
  v28[3] = v24;
  v28[4] = v23;
  v28[5] = v22;
  v28[6] = v21;
  v28[7] = v20;
  v28[8] = v19;
  v28[9] = v18;
  v28[10] = v17;
  v28[11] = v16;
  v28[12] = v15;
  v28[13] = v14;
  v28[14] = v2;
  v28[15] = v3;
  v28[16] = v4;
  v28[17] = v13;
  v28[18] = v5;
  v28[19] = v6;
  v28[20] = v7;
  v28[21] = v12;
  v28[22] = v8;
  v28[23] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:24];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMMediaNowPlaying *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMMediaNowPlaying *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_97;
      }
    }

    absoluteTimestamp = [(BMMediaNowPlaying *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v15 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMMediaNowPlaying *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v18 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v18)
      {
        goto LABEL_97;
      }
    }

    playbackState = [(BMMediaNowPlaying *)self playbackState];
    if (playbackState == [v5 playbackState])
    {
      album = [(BMMediaNowPlaying *)self album];
      album2 = [v5 album];
      v22 = album2;
      if (album == album2)
      {
      }

      else
      {
        album3 = [(BMMediaNowPlaying *)self album];
        album4 = [v5 album];
        v25 = [album3 isEqual:album4];

        if (!v25)
        {
          goto LABEL_97;
        }
      }

      artist = [(BMMediaNowPlaying *)self artist];
      artist2 = [v5 artist];
      v28 = artist2;
      if (artist == artist2)
      {
      }

      else
      {
        artist3 = [(BMMediaNowPlaying *)self artist];
        artist4 = [v5 artist];
        v31 = [artist3 isEqual:artist4];

        if (!v31)
        {
          goto LABEL_97;
        }
      }

      if (-[BMMediaNowPlaying hasDuration](self, "hasDuration") || [v5 hasDuration])
      {
        if (![(BMMediaNowPlaying *)self hasDuration])
        {
          goto LABEL_97;
        }

        if (![v5 hasDuration])
        {
          goto LABEL_97;
        }

        duration = [(BMMediaNowPlaying *)self duration];
        if (duration != [v5 duration])
        {
          goto LABEL_97;
        }
      }

      genre = [(BMMediaNowPlaying *)self genre];
      genre2 = [v5 genre];
      v35 = genre2;
      if (genre == genre2)
      {
      }

      else
      {
        genre3 = [(BMMediaNowPlaying *)self genre];
        genre4 = [v5 genre];
        v38 = [genre3 isEqual:genre4];

        if (!v38)
        {
          goto LABEL_97;
        }
      }

      title = [(BMMediaNowPlaying *)self title];
      title2 = [v5 title];
      v41 = title2;
      if (title == title2)
      {
      }

      else
      {
        title3 = [(BMMediaNowPlaying *)self title];
        title4 = [v5 title];
        v44 = [title3 isEqual:title4];

        if (!v44)
        {
          goto LABEL_97;
        }
      }

      if (-[BMMediaNowPlaying hasElapsed](self, "hasElapsed") || [v5 hasElapsed])
      {
        if (![(BMMediaNowPlaying *)self hasElapsed])
        {
          goto LABEL_97;
        }

        if (![v5 hasElapsed])
        {
          goto LABEL_97;
        }

        elapsed = [(BMMediaNowPlaying *)self elapsed];
        if (elapsed != [v5 elapsed])
        {
          goto LABEL_97;
        }
      }

      mediaType = [(BMMediaNowPlaying *)self mediaType];
      mediaType2 = [v5 mediaType];
      v48 = mediaType2;
      if (mediaType == mediaType2)
      {
      }

      else
      {
        mediaType3 = [(BMMediaNowPlaying *)self mediaType];
        mediaType4 = [v5 mediaType];
        v51 = [mediaType3 isEqual:mediaType4];

        if (!v51)
        {
          goto LABEL_97;
        }
      }

      iTunesStoreIdentifier = [(BMMediaNowPlaying *)self iTunesStoreIdentifier];
      iTunesStoreIdentifier2 = [v5 iTunesStoreIdentifier];
      v54 = iTunesStoreIdentifier2;
      if (iTunesStoreIdentifier == iTunesStoreIdentifier2)
      {
      }

      else
      {
        iTunesStoreIdentifier3 = [(BMMediaNowPlaying *)self iTunesStoreIdentifier];
        iTunesStoreIdentifier4 = [v5 iTunesStoreIdentifier];
        v57 = [iTunesStoreIdentifier3 isEqual:iTunesStoreIdentifier4];

        if (!v57)
        {
          goto LABEL_97;
        }
      }

      iTunesSubscriptionIdentifier = [(BMMediaNowPlaying *)self iTunesSubscriptionIdentifier];
      iTunesSubscriptionIdentifier2 = [v5 iTunesSubscriptionIdentifier];
      v60 = iTunesSubscriptionIdentifier2;
      if (iTunesSubscriptionIdentifier == iTunesSubscriptionIdentifier2)
      {
      }

      else
      {
        iTunesSubscriptionIdentifier3 = [(BMMediaNowPlaying *)self iTunesSubscriptionIdentifier];
        iTunesSubscriptionIdentifier4 = [v5 iTunesSubscriptionIdentifier];
        v63 = [iTunesSubscriptionIdentifier3 isEqual:iTunesSubscriptionIdentifier4];

        if (!v63)
        {
          goto LABEL_97;
        }
      }

      if (-[BMMediaNowPlaying hasIsAirPlayVideo](self, "hasIsAirPlayVideo") || [v5 hasIsAirPlayVideo])
      {
        if (![(BMMediaNowPlaying *)self hasIsAirPlayVideo])
        {
          goto LABEL_97;
        }

        if (![v5 hasIsAirPlayVideo])
        {
          goto LABEL_97;
        }

        isAirPlayVideo = [(BMMediaNowPlaying *)self isAirPlayVideo];
        if (isAirPlayVideo != [v5 isAirPlayVideo])
        {
          goto LABEL_97;
        }
      }

      outputDevices = [(BMMediaNowPlaying *)self outputDevices];
      outputDevices2 = [v5 outputDevices];
      v67 = outputDevices2;
      if (outputDevices == outputDevices2)
      {
      }

      else
      {
        outputDevices3 = [(BMMediaNowPlaying *)self outputDevices];
        outputDevices4 = [v5 outputDevices];
        v70 = [outputDevices3 isEqual:outputDevices4];

        if (!v70)
        {
          goto LABEL_97;
        }
      }

      bundleID = [(BMMediaNowPlaying *)self bundleID];
      bundleID2 = [v5 bundleID];
      v73 = bundleID2;
      if (bundleID == bundleID2)
      {
      }

      else
      {
        bundleID3 = [(BMMediaNowPlaying *)self bundleID];
        bundleID4 = [v5 bundleID];
        v76 = [bundleID3 isEqual:bundleID4];

        if (!v76)
        {
          goto LABEL_97;
        }
      }

      iTunesArtistIdentifier = [(BMMediaNowPlaying *)self iTunesArtistIdentifier];
      iTunesArtistIdentifier2 = [v5 iTunesArtistIdentifier];
      v79 = iTunesArtistIdentifier2;
      if (iTunesArtistIdentifier == iTunesArtistIdentifier2)
      {
      }

      else
      {
        iTunesArtistIdentifier3 = [(BMMediaNowPlaying *)self iTunesArtistIdentifier];
        iTunesArtistIdentifier4 = [v5 iTunesArtistIdentifier];
        v82 = [iTunesArtistIdentifier3 isEqual:iTunesArtistIdentifier4];

        if (!v82)
        {
          goto LABEL_97;
        }
      }

      iTunesAlbumIdentifier = [(BMMediaNowPlaying *)self iTunesAlbumIdentifier];
      iTunesAlbumIdentifier2 = [v5 iTunesAlbumIdentifier];
      v85 = iTunesAlbumIdentifier2;
      if (iTunesAlbumIdentifier == iTunesAlbumIdentifier2)
      {
      }

      else
      {
        iTunesAlbumIdentifier3 = [(BMMediaNowPlaying *)self iTunesAlbumIdentifier];
        iTunesAlbumIdentifier4 = [v5 iTunesAlbumIdentifier];
        v88 = [iTunesAlbumIdentifier3 isEqual:iTunesAlbumIdentifier4];

        if (!v88)
        {
          goto LABEL_97;
        }
      }

      groupIdentifier = [(BMMediaNowPlaying *)self groupIdentifier];
      groupIdentifier2 = [v5 groupIdentifier];
      v91 = groupIdentifier2;
      if (groupIdentifier == groupIdentifier2)
      {
      }

      else
      {
        groupIdentifier3 = [(BMMediaNowPlaying *)self groupIdentifier];
        groupIdentifier4 = [v5 groupIdentifier];
        v94 = [groupIdentifier3 isEqual:groupIdentifier4];

        if (!v94)
        {
          goto LABEL_97;
        }
      }

      if (!-[BMMediaNowPlaying hasIsRemoteControl](self, "hasIsRemoteControl") && ![v5 hasIsRemoteControl] || -[BMMediaNowPlaying hasIsRemoteControl](self, "hasIsRemoteControl") && objc_msgSend(v5, "hasIsRemoteControl") && (v95 = -[BMMediaNowPlaying isRemoteControl](self, "isRemoteControl"), v95 == objc_msgSend(v5, "isRemoteControl")))
      {
        itemMediaType = [(BMMediaNowPlaying *)self itemMediaType];
        if (itemMediaType == [v5 itemMediaType])
        {
          itemMediaSubtype = [(BMMediaNowPlaying *)self itemMediaSubtype];
          if (itemMediaSubtype == [v5 itemMediaSubtype])
          {
            if (!-[BMMediaNowPlaying hasIsAirPlayActive](self, "hasIsAirPlayActive") && ![v5 hasIsAirPlayActive] || -[BMMediaNowPlaying hasIsAirPlayActive](self, "hasIsAirPlayActive") && objc_msgSend(v5, "hasIsAirPlayActive") && (v98 = -[BMMediaNowPlaying isAirPlayActive](self, "isAirPlayActive"), v98 == objc_msgSend(v5, "isAirPlayActive")))
            {
              if (!-[BMMediaNowPlaying hasParentGroupContainsDiscoverableGroupLeader](self, "hasParentGroupContainsDiscoverableGroupLeader") && ![v5 hasParentGroupContainsDiscoverableGroupLeader] || -[BMMediaNowPlaying hasParentGroupContainsDiscoverableGroupLeader](self, "hasParentGroupContainsDiscoverableGroupLeader") && objc_msgSend(v5, "hasParentGroupContainsDiscoverableGroupLeader") && (v99 = -[BMMediaNowPlaying parentGroupContainsDiscoverableGroupLeader](self, "parentGroupContainsDiscoverableGroupLeader"), v99 == objc_msgSend(v5, "parentGroupContainsDiscoverableGroupLeader")))
              {
                if (!-[BMMediaNowPlaying hasExcludeFromSuggestions](self, "hasExcludeFromSuggestions") && ![v5 hasExcludeFromSuggestions])
                {
                  LOBYTE(v12) = 1;
                  goto LABEL_98;
                }

                if (-[BMMediaNowPlaying hasExcludeFromSuggestions](self, "hasExcludeFromSuggestions") && [v5 hasExcludeFromSuggestions])
                {
                  excludeFromSuggestions = [(BMMediaNowPlaying *)self excludeFromSuggestions];
                  v12 = excludeFromSuggestions ^ [v5 excludeFromSuggestions] ^ 1;
LABEL_98:

                  goto LABEL_99;
                }
              }
            }
          }
        }
      }
    }

LABEL_97:
    LOBYTE(v12) = 0;
    goto LABEL_98;
  }

  LOBYTE(v12) = 0;
LABEL_99:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v81[24] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMMediaNowPlaying *)self uniqueID];
  absoluteTimestamp = [(BMMediaNowPlaying *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v5 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMMediaNowPlaying *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaNowPlaying playbackState](self, "playbackState")}];
  album = [(BMMediaNowPlaying *)self album];
  artist = [(BMMediaNowPlaying *)self artist];
  if ([(BMMediaNowPlaying *)self hasDuration])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMediaNowPlaying duration](self, "duration")}];
  }

  else
  {
    v10 = 0;
  }

  genre = [(BMMediaNowPlaying *)self genre];
  title = [(BMMediaNowPlaying *)self title];
  if ([(BMMediaNowPlaying *)self hasElapsed])
  {
    v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMediaNowPlaying elapsed](self, "elapsed")}];
  }

  else
  {
    v77 = 0;
  }

  mediaType = [(BMMediaNowPlaying *)self mediaType];
  iTunesStoreIdentifier = [(BMMediaNowPlaying *)self iTunesStoreIdentifier];
  iTunesSubscriptionIdentifier = [(BMMediaNowPlaying *)self iTunesSubscriptionIdentifier];
  if ([(BMMediaNowPlaying *)self hasIsAirPlayVideo])
  {
    v73 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isAirPlayVideo](self, "isAirPlayVideo")}];
  }

  else
  {
    v73 = 0;
  }

  _outputDevicesJSONArray = [(BMMediaNowPlaying *)self _outputDevicesJSONArray];
  bundleID = [(BMMediaNowPlaying *)self bundleID];
  iTunesArtistIdentifier = [(BMMediaNowPlaying *)self iTunesArtistIdentifier];
  iTunesAlbumIdentifier = [(BMMediaNowPlaying *)self iTunesAlbumIdentifier];
  groupIdentifier = [(BMMediaNowPlaying *)self groupIdentifier];
  if ([(BMMediaNowPlaying *)self hasIsRemoteControl])
  {
    v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isRemoteControl](self, "isRemoteControl")}];
  }

  else
  {
    v67 = 0;
  }

  v66 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaNowPlaying itemMediaType](self, "itemMediaType")}];
  v65 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaNowPlaying itemMediaSubtype](self, "itemMediaSubtype")}];
  if ([(BMMediaNowPlaying *)self hasIsAirPlayActive])
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isAirPlayActive](self, "isAirPlayActive")}];
  }

  else
  {
    v64 = 0;
  }

  if ([(BMMediaNowPlaying *)self hasParentGroupContainsDiscoverableGroupLeader])
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying parentGroupContainsDiscoverableGroupLeader](self, "parentGroupContainsDiscoverableGroupLeader")}];
  }

  else
  {
    v63 = 0;
  }

  if ([(BMMediaNowPlaying *)self hasExcludeFromSuggestions])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying excludeFromSuggestions](self, "excludeFromSuggestions")}];
  }

  else
  {
    v12 = 0;
  }

  v80[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null;
  v81[0] = null;
  v80[1] = @"absoluteTimestamp";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null2;
  v81[1] = null2;
  v80[2] = @"playbackState";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null3;
  v81[2] = null3;
  v80[3] = @"album";
  null4 = album;
  if (!album)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = null4;
  v81[3] = null4;
  v80[4] = @"artist";
  null5 = artist;
  if (!artist)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = null5;
  v81[4] = null5;
  v80[5] = @"duration";
  null6 = v10;
  if (!v10)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = null6;
  v81[5] = null6;
  v80[6] = @"genre";
  null7 = genre;
  if (!genre)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null7;
  v81[6] = null7;
  v80[7] = @"title";
  null8 = title;
  if (!title)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v81[7] = null8;
  v80[8] = @"elapsed";
  null9 = v77;
  if (!v77)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v81[8] = null9;
  v80[9] = @"mediaType";
  null10 = mediaType;
  if (!mediaType)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null10;
  v81[9] = null10;
  v80[10] = @"iTunesStoreIdentifier";
  null11 = iTunesStoreIdentifier;
  if (!iTunesStoreIdentifier)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null11;
  v81[10] = null11;
  v80[11] = @"iTunesSubscriptionIdentifier";
  null12 = iTunesSubscriptionIdentifier;
  if (!iTunesSubscriptionIdentifier)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null12;
  v81[11] = null12;
  v80[12] = @"isAirPlayVideo";
  null13 = v73;
  if (!v73)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = null13;
  v81[12] = null13;
  v80[13] = @"outputDevices";
  null14 = _outputDevicesJSONArray;
  if (!_outputDevicesJSONArray)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null14;
  v81[13] = null14;
  v80[14] = @"bundleID";
  null15 = bundleID;
  if (!bundleID)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null15;
  v81[14] = null15;
  v80[15] = @"iTunesArtistIdentifier";
  null16 = iTunesArtistIdentifier;
  if (!iTunesArtistIdentifier)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = genre;
  v42 = null16;
  v81[15] = null16;
  v80[16] = @"iTunesAlbumIdentifier";
  null17 = iTunesAlbumIdentifier;
  if (!iTunesAlbumIdentifier)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null9;
  v41 = null17;
  v81[16] = null17;
  v80[17] = @"groupIdentifier";
  null18 = groupIdentifier;
  if (!groupIdentifier)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v8;
  v39 = null18;
  v81[17] = null18;
  v80[18] = @"isRemoteControl";
  null19 = v67;
  if (!v67)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v12;
  v59 = album;
  v81[18] = null19;
  v80[19] = @"itemMediaType";
  null20 = v66;
  if (!v66)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v10;
  v81[19] = null20;
  v80[20] = @"itemMediaSubtype";
  null21 = v65;
  if (!v65)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v81[20] = null21;
  v80[21] = @"isAirPlayActive";
  null22 = v64;
  if (!v64)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v81[21] = null22;
  v80[22] = @"parentGroupContainsDiscoverableGroupLeader";
  null23 = v63;
  if (!v63)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v81[22] = null23;
  v80[23] = @"excludeFromSuggestions";
  null24 = v62;
  if (!v62)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v81[23] = null24;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:{24, v39}];
  if (!v62)
  {
  }

  v37 = v79;
  if (!v63)
  {

    v37 = v79;
  }

  if (!v64)
  {

    v37 = v79;
  }

  if (!v65)
  {

    v37 = v79;
  }

  if (!v66)
  {

    v37 = v79;
  }

  if (!v67)
  {

    v37 = v79;
  }

  if (!groupIdentifier)
  {

    v37 = v79;
  }

  if (!iTunesAlbumIdentifier)
  {

    v37 = v79;
  }

  if (!iTunesArtistIdentifier)
  {

    v37 = v79;
  }

  if (!bundleID)
  {

    v37 = v79;
  }

  if (!_outputDevicesJSONArray)
  {

    v37 = v79;
  }

  if (!v73)
  {
  }

  if (!iTunesSubscriptionIdentifier)
  {
  }

  if (!iTunesStoreIdentifier)
  {
  }

  if (!mediaType)
  {
  }

  if (!v77)
  {
  }

  if (title)
  {
    if (v58)
    {
      goto LABEL_107;
    }
  }

  else
  {

    if (v58)
    {
LABEL_107:
      if (v54)
      {
        goto LABEL_108;
      }

      goto LABEL_118;
    }
  }

  if (v54)
  {
LABEL_108:
    if (artist)
    {
      goto LABEL_109;
    }

    goto LABEL_119;
  }

LABEL_118:

  if (artist)
  {
LABEL_109:
    if (v59)
    {
      goto LABEL_110;
    }

    goto LABEL_120;
  }

LABEL_119:

  if (v59)
  {
LABEL_110:
    if (v60)
    {
      goto LABEL_111;
    }

    goto LABEL_121;
  }

LABEL_120:

  if (v60)
  {
LABEL_111:
    if (v7)
    {
      goto LABEL_112;
    }

LABEL_122:

    if (uniqueID)
    {
      goto LABEL_113;
    }

    goto LABEL_123;
  }

LABEL_121:

  if (!v7)
  {
    goto LABEL_122;
  }

LABEL_112:
  if (uniqueID)
  {
    goto LABEL_113;
  }

LABEL_123:

LABEL_113:

  return v53;
}

- (id)_outputDevicesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  outputDevices = [(BMMediaNowPlaying *)self outputDevices];
  v5 = [outputDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(outputDevices);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [outputDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMediaNowPlaying)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v343[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  v284 = dictionaryCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v285 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v285 = v6;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
    v281 = v7;
    if (!v7 || (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v279 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
      v13 = objc_alloc(MEMORY[0x1E695DF00]);
      [v12 doubleValue];
      v279 = [v13 initWithTimeIntervalSinceReferenceDate:?];

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v19 = v8;
      v279 = [v18 dateFromString:v19];

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v279 = v8;
LABEL_7:
      v9 = [dictionaryCopy objectForKeyedSubscript:@"playbackState"];
      v283 = v9;
      errorCopy = error;
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = v285;
        v11 = 0;
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v285;
        v11 = v9;
LABEL_22:

LABEL_23:
        v21 = [dictionaryCopy objectForKeyedSubscript:@"album"];
        v280 = v21;
        v285 = v10;
        if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v276 = 0;
          goto LABEL_26;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v276 = v22;
LABEL_26:
          v23 = [dictionaryCopy objectForKeyedSubscript:@"artist"];
          v277 = v23;
          if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v275 = 0;
            goto LABEL_29;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v275 = v24;
LABEL_29:
            v25 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
            if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v26 = 0;
LABEL_32:
              v27 = [dictionaryCopy objectForKeyedSubscript:@"genre"];
              v273 = v25;
              if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!errorCopy)
                  {
                    v274 = 0;
                    v17 = 0;
                    v16 = v279;
                    v44 = v275;
                    v48 = v276;
LABEL_228:
                    v25 = v273;
                    goto LABEL_229;
                  }

                  v64 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v65 = v11;
                  v66 = v26;
                  v67 = v6;
                  v68 = v66;
                  v69 = v64;
                  v70 = *MEMORY[0x1E698F240];
                  v330 = *MEMORY[0x1E696A578];
                  v71 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v219 = objc_opt_class();
                  v72 = v71;
                  v9 = v283;
                  v73 = [v72 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v219, @"genre"];
                  v331 = v73;
                  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v331 forKeys:&v330 count:1];
                  v75 = v69;
                  v76 = v68;
                  v6 = v67;
                  v26 = v76;
                  v11 = v65;
                  v272 = v74;
                  v274 = 0;
                  v17 = 0;
                  *errorCopy = [v75 initWithDomain:v70 code:2 userInfo:?];
                  v77 = v73;
                  v16 = v279;
                  v44 = v275;
                  v48 = v276;
                  goto LABEL_227;
                }

                v274 = v27;
              }

              else
              {
                v274 = 0;
              }

              v28 = [dictionaryCopy objectForKeyedSubscript:@"title"];
              v270 = v11;
              v272 = v28;
              v267 = v27;
              if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v266 = 0;
                goto LABEL_38;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v266 = v29;
LABEL_38:
                v30 = [dictionaryCopy objectForKeyedSubscript:@"elapsed"];
                v268 = v30;
                if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v32 = 0;
                  goto LABEL_41;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v32 = v31;
LABEL_41:
                  v33 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
                  v264 = v32;
                  v265 = v33;
                  if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v269 = 0;
LABEL_44:
                    v35 = [dictionaryCopy objectForKeyedSubscript:@"iTunesStoreIdentifier"];
                    v263 = v35;
                    if (v35 && (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!errorCopy)
                        {
                          v37 = 0;
                          selfCopy = 0;
                          v16 = v279;
                          v44 = v275;
                          v48 = v276;
                          goto LABEL_223;
                        }

                        v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v114 = *MEMORY[0x1E698F240];
                        v322 = *MEMORY[0x1E696A578];
                        v115 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v224 = objc_opt_class();
                        v116 = v115;
                        v9 = v283;
                        v38 = [v116 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v224, @"iTunesStoreIdentifier"];
                        v323 = v38;
                        v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
                        v118 = v113;
                        v32 = v264;
                        v257 = v117;
                        v37 = 0;
                        selfCopy = 0;
                        *errorCopy = [v118 initWithDomain:v114 code:2 userInfo:?];
                        goto LABEL_165;
                      }

                      v37 = v36;
                    }

                    else
                    {
                      v37 = 0;
                    }

                    v38 = [dictionaryCopy objectForKeyedSubscript:@"iTunesSubscriptionIdentifier"];
                    v254 = v37;
                    v257 = v38;
                    if (!v38)
                    {
LABEL_80:
                      v83 = [dictionaryCopy objectForKeyedSubscript:@"isAirPlayVideo"];
                      v252 = v26;
                      v255 = v83;
                      if (v83 && (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (errorCopy)
                          {
                            v142 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v143 = *MEMORY[0x1E698F240];
                            v318 = *MEMORY[0x1E696A578];
                            v144 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v226 = objc_opt_class();
                            v145 = v144;
                            v9 = v283;
                            v256 = [v145 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v226, @"isAirPlayVideo"];
                            v319 = v256;
                            v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v319 forKeys:&v318 count:1];
                            v253 = 0;
                            selfCopy = 0;
                            *errorCopy = [v142 initWithDomain:v143 code:2 userInfo:v146];
                            v129 = v146;
                            v16 = v279;
                            v44 = v275;
                            v48 = v276;
                            v32 = v264;
                            goto LABEL_219;
                          }

                          v253 = 0;
                          selfCopy = 0;
                          v16 = v279;
                          v44 = v275;
                          v48 = v276;
                          v32 = v264;
                          goto LABEL_221;
                        }

                        v85 = v38;
                        v253 = v84;
                      }

                      else
                      {
                        v85 = v38;
                        v253 = 0;
                      }

                      v86 = [dictionaryCopy objectForKeyedSubscript:@"outputDevices"];
                      null = [MEMORY[0x1E695DFB0] null];
                      v88 = [v86 isEqual:null];

                      v251 = v85;
                      if (v88)
                      {
                        v249 = v6;
                      }

                      else
                      {
                        v32 = v264;
                        if (v86)
                        {
                          objc_opt_class();
                          v256 = v86;
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            v38 = v85;
                            if (errorCopy)
                            {
                              v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v155 = *MEMORY[0x1E698F240];
                              v316 = *MEMORY[0x1E696A578];
                              v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"outputDevices"];
                              v317 = v129;
                              v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v317 forKeys:&v316 count:1];
                              v157 = v154;
                              v32 = v264;
                              v158 = v155;
                              v159 = v156;
                              selfCopy = 0;
                              *errorCopy = [v157 initWithDomain:v158 code:2 userInfo:v156];
                              v16 = v279;
                              v48 = v276;
                              v27 = v267;
                              goto LABEL_218;
                            }

                            selfCopy = 0;
                            v16 = v279;
                            v44 = v275;
                            v48 = v276;
                            v27 = v267;
                            goto LABEL_220;
                          }

                          v249 = v6;
                          v89 = v86;
                          goto LABEL_110;
                        }

                        v249 = v6;
                      }

                      v89 = 0;
LABEL_110:
                      v129 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v89, "count")}];
                      v287 = 0u;
                      v288 = 0u;
                      v289 = 0u;
                      v290 = 0u;
                      v130 = v89;
                      v131 = [v130 countByEnumeratingWithState:&v287 objects:v315 count:16];
                      v256 = v130;
                      if (!v131)
                      {
                        goto LABEL_120;
                      }

                      v132 = v131;
                      v133 = *v288;
LABEL_112:
                      v134 = 0;
                      while (1)
                      {
                        if (*v288 != v133)
                        {
                          objc_enumerationMutation(v130);
                        }

                        v135 = *(*(&v287 + 1) + 8 * v134);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          break;
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v147 = errorCopy;
                          if (errorCopy)
                          {
                            v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v149 = *MEMORY[0x1E698F240];
                            v311 = *MEMORY[0x1E696A578];
                            v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"outputDevices"];
                            v312 = v136;
                            v150 = MEMORY[0x1E695DF20];
                            v151 = &v312;
                            v152 = &v311;
                            goto LABEL_132;
                          }

                          goto LABEL_142;
                        }

                        v136 = v135;
                        v137 = [BMMediaNowPlayingOutputDevice alloc];
                        v286 = 0;
                        v138 = [(BMMediaNowPlayingOutputDevice *)v137 initWithJSONDictionary:v136 error:&v286];
                        v139 = v286;
                        if (v139)
                        {
                          v140 = v139;
                          if (errorCopy)
                          {
                            v153 = v139;
                            *errorCopy = v140;
                          }

                          selfCopy = 0;
                          goto LABEL_137;
                        }

                        [v129 addObject:v138];

                        ++v134;
                        v9 = v283;
                        if (v132 == v134)
                        {
                          v132 = [v130 countByEnumeratingWithState:&v287 objects:v315 count:16];
                          dictionaryCopy = v284;
                          if (v132)
                          {
                            goto LABEL_112;
                          }

LABEL_120:

                          v136 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
                          if (!v136 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v248 = 0;
                            goto LABEL_123;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v248 = v136;
                            dictionaryCopy = v284;
LABEL_123:
                            v140 = [dictionaryCopy objectForKeyedSubscript:@"iTunesArtistIdentifier"];
                            v246 = v140;
                            if (v140)
                            {
                              objc_opt_class();
                              v6 = v249;
                              v38 = v251;
                              v27 = v267;
                              v32 = v264;
                              v141 = v269;
                              if (objc_opt_isKindOfClass())
                              {
                                v140 = 0;
LABEL_152:
                                v160 = [dictionaryCopy objectForKeyedSubscript:@"iTunesAlbumIdentifier"];
                                v269 = v141;
                                v244 = v160;
                                if (v160 && (v161 = v160, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v245 = v161;
                                    v32 = v264;
                                    goto LABEL_155;
                                  }

                                  if (!errorCopy)
                                  {
                                    v245 = 0;
                                    selfCopy = 0;
                                    v16 = v279;
                                    v48 = v276;
                                    v26 = v252;
                                    v32 = v264;
                                    goto LABEL_214;
                                  }

                                  v176 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v177 = *MEMORY[0x1E698F240];
                                  v305 = *MEMORY[0x1E696A578];
                                  v250 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"iTunesAlbumIdentifier"];
                                  v306 = v250;
                                  v243 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v306 forKeys:&v305 count:1];
                                  v245 = 0;
                                  selfCopy = 0;
                                  *errorCopy = [v176 initWithDomain:v177 code:2 userInfo:?];
                                }

                                else
                                {
                                  v245 = 0;
LABEL_155:
                                  v162 = [dictionaryCopy objectForKeyedSubscript:@"groupIdentifier"];
                                  v243 = v162;
                                  if (!v162 || (v163 = v162, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v250 = 0;
LABEL_158:
                                    v164 = [dictionaryCopy objectForKeyedSubscript:@"isRemoteControl"];
                                    v241 = v164;
                                    if (v164 && (v165 = v164, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v242 = v165;
                                        goto LABEL_161;
                                      }

                                      v180 = v129;
                                      if (!errorCopy)
                                      {
                                        v242 = 0;
                                        selfCopy = 0;
                                        v16 = v279;
                                        v48 = v276;
                                        v38 = v251;
                                        v26 = v252;
                                        goto LABEL_212;
                                      }

                                      v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v182 = *MEMORY[0x1E698F240];
                                      v301 = *MEMORY[0x1E696A578];
                                      v183 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v227 = objc_opt_class();
                                      v184 = v183;
                                      v32 = v264;
                                      v240 = [v184 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v227, @"isRemoteControl"];
                                      v302 = v240;
                                      v238 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v302 forKeys:&v301 count:1];
                                      v242 = 0;
                                      selfCopy = 0;
                                      *errorCopy = [v181 initWithDomain:v182 code:2 userInfo:?];
                                      v16 = v279;
                                      v48 = v276;
                                      v26 = v252;
                                    }

                                    else
                                    {
                                      v242 = 0;
LABEL_161:
                                      v166 = [dictionaryCopy objectForKeyedSubscript:@"itemMediaType"];
                                      v238 = v166;
                                      if (!v166 || (v167 = v166, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v240 = 0;
                                        goto LABEL_189;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v172 = v167;
LABEL_188:
                                        v240 = v172;

                                        v32 = v264;
LABEL_189:
                                        v186 = [dictionaryCopy objectForKeyedSubscript:@"itemMediaSubtype"];
                                        v236 = v186;
                                        if (v186)
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v186 = 0;
                                            goto LABEL_197;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v187 = v186;
LABEL_196:

                                            v32 = v264;
                                            v186 = v187;
                                            goto LABEL_197;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v188 = v186;
                                            v187 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaNowPlayingMediaSubtypeFromString(v188)];

                                            dictionaryCopy = v284;
                                            goto LABEL_196;
                                          }

                                          v180 = v129;
                                          if (errorCopy)
                                          {
                                            v214 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v262 = *MEMORY[0x1E698F240];
                                            v297 = *MEMORY[0x1E696A578];
                                            v239 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"itemMediaSubtype"];
                                            v298 = v239;
                                            v234 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
                                            v215 = [v214 initWithDomain:v262 code:2 userInfo:?];
                                            v235 = 0;
                                            selfCopy = 0;
                                            *errorCopy = v215;
                                            v16 = v279;
                                            v48 = v276;
                                            v26 = v252;
                                            v32 = v264;
                                            goto LABEL_260;
                                          }

                                          v235 = 0;
                                          selfCopy = 0;
LABEL_266:
                                          v16 = v279;
                                          v48 = v276;
                                          v32 = v264;
                                          v129 = v180;
                                          v38 = v251;
                                          v26 = v252;
LABEL_210:

LABEL_211:
LABEL_212:

LABEL_213:
LABEL_214:

LABEL_215:
LABEL_216:

                                          v9 = v283;
                                          goto LABEL_217;
                                        }

LABEL_197:
                                        v189 = [dictionaryCopy objectForKeyedSubscript:@"isAirPlayActive"];
                                        v234 = v189;
                                        v235 = v186;
                                        if (v189 && (v190 = v189, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v239 = v190;
                                            goto LABEL_200;
                                          }

                                          v180 = v129;
                                          if (!errorCopy)
                                          {
                                            v239 = 0;
                                            selfCopy = 0;
                                            v16 = v279;
                                            v48 = v276;
                                            v26 = v252;
LABEL_260:
                                            v129 = v180;
                                            v38 = v251;
                                            goto LABEL_209;
                                          }

                                          v201 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v202 = *MEMORY[0x1E698F240];
                                          v295 = *MEMORY[0x1E696A578];
                                          v203 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v228 = objc_opt_class();
                                          v204 = v203;
                                          v32 = v264;
                                          v237 = [v204 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v228, @"isAirPlayActive"];
                                          v296 = v237;
                                          v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
                                          v239 = 0;
                                          selfCopy = 0;
                                          *errorCopy = [v201 initWithDomain:v202 code:2 userInfo:?];
                                        }

                                        else
                                        {
                                          v239 = 0;
LABEL_200:
                                          v191 = [dictionaryCopy objectForKeyedSubscript:@"parentGroupContainsDiscoverableGroupLeader"];
                                          v232 = v191;
                                          if (!v191 || (v192 = v191, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v237 = 0;
LABEL_203:
                                            v193 = [dictionaryCopy objectForKeyedSubscript:@"excludeFromSuggestions"];
                                            v231 = v193;
                                            if (!v193 || (v194 = v193, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v233 = 0;
                                              v16 = v279;
                                              goto LABEL_206;
                                            }

                                            objc_opt_class();
                                            isKindOfClass = objc_opt_isKindOfClass();
                                            v200 = v194;
                                            v16 = v279;
                                            if (isKindOfClass)
                                            {
                                              v233 = v200;
LABEL_206:
                                              intValue = [v270 intValue];
                                              intValue2 = [v240 intValue];
                                              v230 = __PAIR64__([v186 intValue], intValue2);
                                              v197 = intValue;
                                              v32 = v264;
                                              v48 = v276;
                                              v26 = v252;
                                              self = [BMMediaNowPlaying initWithUniqueID:"initWithUniqueID:absoluteTimestamp:playbackState:album:artist:duration:genre:title:elapsed:mediaType:iTunesStoreIdentifier:iTunesSubscriptionIdentifier:isAirPlayVideo:outputDevices:bundleID:iTunesArtistIdentifier:iTunesAlbumIdentifier:groupIdentifier:isRemoteControl:itemMediaType:itemMediaSubtype:isAirPlayActive:parentGroupContainsDiscoverableGroupLeader:excludeFromSuggestions:" absoluteTimestamp:v285 playbackState:v16 album:v197 artist:v276 duration:v275 genre:v274 title:v266 elapsed:v264 mediaType:v269 iTunesStoreIdentifier:v254 iTunesSubscriptionIdentifier:v38 isAirPlayVideo:v253 outputDevices:v129 bundleID:v248 iTunesArtistIdentifier:v140 iTunesAlbumIdentifier:v245 groupIdentifier:v250 isRemoteControl:v242 itemMediaType:v230 itemMediaSubtype:v239 isAirPlayActive:v237 parentGroupContainsDiscoverableGroupLeader:v233 excludeFromSuggestions:?];
                                              selfCopy = self;
                                            }

                                            else
                                            {
                                              if (errorCopy)
                                              {
                                                v209 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v260 = *MEMORY[0x1E698F240];
                                                v291 = *MEMORY[0x1E696A578];
                                                v210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"excludeFromSuggestions"];
                                                v292 = v210;
                                                v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
                                                *errorCopy = [v209 initWithDomain:v260 code:2 userInfo:v211];

                                                v32 = v264;
                                              }

                                              v233 = 0;
                                              selfCopy = 0;
                                              v48 = v276;
                                              v26 = v252;
                                              v27 = v267;
                                            }

LABEL_207:

LABEL_208:
LABEL_209:

                                            goto LABEL_210;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v237 = v192;
                                            goto LABEL_203;
                                          }

                                          v180 = v129;
                                          if (errorCopy)
                                          {
                                            v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v206 = *MEMORY[0x1E698F240];
                                            v293 = *MEMORY[0x1E696A578];
                                            v207 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v229 = objc_opt_class();
                                            v208 = v207;
                                            v32 = v264;
                                            v233 = [v208 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v229, @"parentGroupContainsDiscoverableGroupLeader"];
                                            v294 = v233;
                                            v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
                                            v237 = 0;
                                            selfCopy = 0;
                                            *errorCopy = [v205 initWithDomain:v206 code:2 userInfo:?];
                                            v16 = v279;
                                            v48 = v276;
                                            v38 = v251;
                                            v26 = v252;
                                            goto LABEL_207;
                                          }

                                          v237 = 0;
                                          selfCopy = 0;
                                        }

                                        v16 = v279;
                                        v48 = v276;
                                        v129 = v180;
                                        v38 = v251;
                                        v26 = v252;
                                        goto LABEL_208;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v185 = v167;
                                        v172 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaNowPlayingMediaTypeFromString(v185)];

                                        dictionaryCopy = v284;
                                        goto LABEL_188;
                                      }

                                      v180 = v129;
                                      if (errorCopy)
                                      {
                                        v212 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v261 = *MEMORY[0x1E698F240];
                                        v299 = *MEMORY[0x1E696A578];
                                        v235 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"itemMediaType"];
                                        v300 = v235;
                                        v236 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
                                        v213 = [v212 initWithDomain:v261 code:2 userInfo:?];
                                        v240 = 0;
                                        selfCopy = 0;
                                        *errorCopy = v213;
                                        goto LABEL_266;
                                      }

                                      v240 = 0;
                                      selfCopy = 0;
                                      v16 = v279;
                                      v48 = v276;
                                      v26 = v252;
                                      v32 = v264;
                                    }

                                    v129 = v180;
                                    v38 = v251;
                                    goto LABEL_211;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v250 = v163;
                                    v32 = v264;
                                    goto LABEL_158;
                                  }

                                  if (errorCopy)
                                  {
                                    v178 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v179 = *MEMORY[0x1E698F240];
                                    v303 = *MEMORY[0x1E696A578];
                                    v242 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"groupIdentifier"];
                                    v304 = v242;
                                    v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v304 forKeys:&v303 count:1];
                                    v250 = 0;
                                    selfCopy = 0;
                                    *errorCopy = [v178 initWithDomain:v179 code:2 userInfo:?];
                                    v16 = v279;
                                    v48 = v276;
                                    v26 = v252;
                                    v32 = v264;
                                    goto LABEL_212;
                                  }

                                  v250 = 0;
                                  selfCopy = 0;
                                }

                                v16 = v279;
                                v48 = v276;
                                v26 = v252;
                                v32 = v264;
                                goto LABEL_213;
                              }

                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                if (errorCopy)
                                {
                                  v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v174 = *MEMORY[0x1E698F240];
                                  v307 = *MEMORY[0x1E696A578];
                                  v245 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"iTunesArtistIdentifier"];
                                  v308 = v245;
                                  v244 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v308 forKeys:&v307 count:1];
                                  v175 = [v173 initWithDomain:v174 code:2 userInfo:?];
                                  v140 = 0;
                                  selfCopy = 0;
                                  *errorCopy = v175;
                                  v16 = v279;
                                  v48 = v276;
                                  v32 = v264;
                                  v38 = v251;
                                  v26 = v252;
                                  goto LABEL_214;
                                }

                                v140 = 0;
                                selfCopy = 0;
                                v16 = v279;
                                v48 = v276;
                                v32 = v264;
                                v38 = v251;
                                v26 = v252;
                                goto LABEL_215;
                              }

                              v140 = v140;
                              v32 = v264;
                            }

                            else
                            {
                              v6 = v249;
                              v27 = v267;
                              v32 = v264;
                            }

                            v141 = v269;
                            v38 = v251;
                            goto LABEL_152;
                          }

                          v6 = v249;
                          v38 = v251;
                          v32 = v264;
                          if (errorCopy)
                          {
                            v259 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v168 = *MEMORY[0x1E698F240];
                            v309 = *MEMORY[0x1E696A578];
                            v140 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
                            v310 = v140;
                            v169 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v310 forKeys:&v309 count:1];
                            v170 = v168;
                            v32 = v264;
                            v38 = v251;
                            v247 = v169;
                            v171 = [v259 initWithDomain:v170 code:2 userInfo:?];
                            v248 = 0;
                            selfCopy = 0;
                            *errorCopy = v171;
                            v16 = v279;
                            v48 = v276;
                            v27 = v267;

                            goto LABEL_216;
                          }

                          v248 = 0;
                          selfCopy = 0;
                          v16 = v279;
                          v48 = v276;
                          v27 = v267;
LABEL_217:

                          v159 = v248;
LABEL_218:

                          v44 = v275;
LABEL_219:

                          v37 = v254;
LABEL_220:

LABEL_221:
LABEL_222:

LABEL_223:
                          v77 = v266;
LABEL_224:

                          v17 = selfCopy;
                          goto LABEL_225;
                        }
                      }

                      v147 = errorCopy;
                      if (errorCopy)
                      {
                        v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v149 = *MEMORY[0x1E698F240];
                        v313 = *MEMORY[0x1E696A578];
                        v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"outputDevices"];
                        v314 = v136;
                        v150 = MEMORY[0x1E695DF20];
                        v151 = &v314;
                        v152 = &v313;
LABEL_132:
                        v140 = [v150 dictionaryWithObjects:v151 forKeys:v152 count:1];
                        selfCopy = 0;
                        *v147 = [v148 initWithDomain:v149 code:2 userInfo:v140];
LABEL_137:
                        v248 = v256;
                        v6 = v249;
                        v38 = v251;
                        v16 = v279;
                        v48 = v276;
                        v27 = v267;
                        v32 = v264;
                        goto LABEL_216;
                      }

LABEL_142:
                      selfCopy = 0;
                      v159 = v256;
                      v6 = v249;
                      v38 = v251;
                      v16 = v279;
                      v48 = v276;
                      v27 = v267;
                      v32 = v264;
                      goto LABEL_218;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v38 = 0;
                      goto LABEL_80;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v38 = v38;
                      goto LABEL_80;
                    }

                    if (errorCopy)
                    {
                      v123 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v124 = *MEMORY[0x1E698F240];
                      v320 = *MEMORY[0x1E696A578];
                      v125 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v225 = objc_opt_class();
                      v126 = v125;
                      v9 = v283;
                      v253 = [v126 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v225, @"iTunesSubscriptionIdentifier"];
                      v321 = v253;
                      v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v321 forKeys:&v320 count:1];
                      v128 = v123;
                      v32 = v264;
                      v255 = v127;
                      v38 = 0;
                      selfCopy = 0;
                      *errorCopy = [v128 initWithDomain:v124 code:2 userInfo:?];
                      v16 = v279;
                      v44 = v275;
                      v48 = v276;
                      goto LABEL_221;
                    }

                    v38 = 0;
                    selfCopy = 0;
LABEL_165:
                    v16 = v279;
                    v44 = v275;
                    v48 = v276;
                    goto LABEL_222;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v269 = v34;
                    goto LABEL_44;
                  }

                  if (errorCopy)
                  {
                    v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v108 = *MEMORY[0x1E698F240];
                    v324 = *MEMORY[0x1E696A578];
                    v109 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v223 = objc_opt_class();
                    v110 = v109;
                    v9 = v283;
                    v37 = [v110 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v223, @"mediaType"];
                    v325 = v37;
                    v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v325 forKeys:&v324 count:1];
                    v112 = v107;
                    v32 = v264;
                    v77 = v266;
                    v263 = v111;
                    v269 = 0;
                    selfCopy = 0;
                    *errorCopy = [v112 initWithDomain:v108 code:2 userInfo:?];
                    v16 = v279;
                    v44 = v275;
                    v48 = v276;
                    goto LABEL_224;
                  }

                  v269 = 0;
                  v17 = 0;
                  v16 = v279;
                  v44 = v275;
                  v48 = v276;
                  v77 = v266;
LABEL_225:

                  goto LABEL_226;
                }

                v17 = errorCopy;
                if (errorCopy)
                {
                  v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v103 = *MEMORY[0x1E698F240];
                  v326 = *MEMORY[0x1E696A578];
                  v104 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v222 = objc_opt_class();
                  v105 = v104;
                  v9 = v283;
                  v269 = [v105 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v222, @"elapsed"];
                  v327 = v269;
                  v265 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v327 forKeys:&v326 count:1];
                  v106 = [v102 initWithDomain:v103 code:2 userInfo:?];
                  v32 = 0;
                  *errorCopy = v106;
                  v17 = 0;
                  v16 = v279;
                  v44 = v275;
                  v48 = v276;
                  v77 = v266;
                  goto LABEL_225;
                }

                v32 = 0;
                v16 = v279;
                v44 = v275;
                v48 = v276;
                v77 = v266;
LABEL_226:

                v11 = v270;
                goto LABEL_227;
              }

              if (errorCopy)
              {
                v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                v91 = v26;
                v92 = v6;
                v93 = v91;
                v94 = v90;
                v95 = *MEMORY[0x1E698F240];
                v328 = *MEMORY[0x1E696A578];
                v96 = objc_alloc(MEMORY[0x1E696AEC0]);
                v221 = objc_opt_class();
                v97 = v96;
                v9 = v283;
                v98 = [v97 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v221, @"title"];
                v329 = v98;
                v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v329 forKeys:&v328 count:1];
                v100 = v94;
                v101 = v93;
                v6 = v92;
                v26 = v101;
                v32 = v98;
                v268 = v99;
                v77 = 0;
                v17 = 0;
                *errorCopy = [v100 initWithDomain:v95 code:2 userInfo:?];
                v16 = v279;
                v44 = v275;
                v48 = v276;
                goto LABEL_226;
              }

              v77 = 0;
              v17 = 0;
              v16 = v279;
              v44 = v275;
              v48 = v276;
LABEL_227:

              goto LABEL_228;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = v25;
              goto LABEL_32;
            }

            v17 = errorCopy;
            if (errorCopy)
            {
              v58 = v11;
              v59 = objc_alloc(MEMORY[0x1E696ABC0]);
              v60 = *MEMORY[0x1E698F240];
              v332 = *MEMORY[0x1E696A578];
              v61 = objc_alloc(MEMORY[0x1E696AEC0]);
              v218 = objc_opt_class();
              v62 = v61;
              v9 = v283;
              v274 = [v62 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v218, @"duration"];
              v333 = v274;
              v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v333 forKeys:&v332 count:1];
              v63 = v59;
              v11 = v58;
              v26 = 0;
              *errorCopy = [v63 initWithDomain:v60 code:2 userInfo:v27];
              v17 = 0;
              v16 = v279;
              v44 = v275;
              v48 = v276;
LABEL_229:

              goto LABEL_230;
            }

            v26 = 0;
            v16 = v279;
            v44 = v275;
            v48 = v276;
LABEL_230:

            goto LABEL_231;
          }

          if (errorCopy)
          {
            v271 = v11;
            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v50 = *MEMORY[0x1E698F240];
            v334 = *MEMORY[0x1E696A578];
            v51 = objc_alloc(MEMORY[0x1E696AEC0]);
            v217 = objc_opt_class();
            v52 = v51;
            v9 = v283;
            v53 = v6;
            v54 = [v52 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v217, @"artist"];
            v335 = v54;
            v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
            v56 = v49;
            v11 = v271;
            v44 = 0;
            *errorCopy = [v56 initWithDomain:v50 code:2 userInfo:v55];
            v16 = v279;
            v48 = v276;
            v17 = 0;
            v57 = v54;
            v6 = v53;
            v26 = v57;
            v25 = v55;
            goto LABEL_230;
          }

          v44 = 0;
          v16 = v279;
          v48 = v276;
          v17 = 0;
LABEL_231:

          goto LABEL_232;
        }

        if (errorCopy)
        {
          v39 = v11;
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v336 = *MEMORY[0x1E696A578];
          v42 = objc_alloc(MEMORY[0x1E696AEC0]);
          v216 = objc_opt_class();
          v43 = v42;
          v9 = v283;
          v44 = [v43 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v216, @"album"];
          v337 = v44;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v337 forKeys:&v336 count:1];
          v46 = v40;
          v11 = v39;
          v277 = v45;
          v47 = [v46 initWithDomain:v41 code:2 userInfo:?];
          v48 = 0;
          v17 = 0;
          *errorCopy = v47;
          v16 = v279;
          goto LABEL_231;
        }

        v48 = 0;
        v17 = 0;
LABEL_96:
        v16 = v279;
LABEL_232:

        goto LABEL_233;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v285;
        v20 = v9;
        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaNowPlayingPlaybackStateFromString(v20)];

        goto LABEL_22;
      }

      if (error)
      {
        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
        v79 = *MEMORY[0x1E698F240];
        v338 = *MEMORY[0x1E696A578];
        v80 = objc_alloc(MEMORY[0x1E696AEC0]);
        v220 = objc_opt_class();
        v81 = v80;
        v9 = v283;
        v48 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v220, @"playbackState"];
        v339 = v48;
        v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v339 forKeys:&v338 count:1];
        v82 = [v78 initWithDomain:v79 code:2 userInfo:?];
        v11 = 0;
        v17 = 0;
        *error = v82;
        goto LABEL_96;
      }

      v11 = 0;
      v17 = 0;
      v16 = v279;
LABEL_233:

      goto LABEL_234;
    }

    if (error)
    {
      v119 = objc_alloc(MEMORY[0x1E696ABC0]);
      v120 = *MEMORY[0x1E698F240];
      v340 = *MEMORY[0x1E696A578];
      v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v341 = v121;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
      v122 = v119;
      v11 = v121;
      v16 = 0;
      *error = [v122 initWithDomain:v120 code:2 userInfo:v9];
      v17 = 0;
      goto LABEL_233;
    }

    v16 = 0;
    v17 = 0;
LABEL_234:

    goto LABEL_235;
  }

  if (error)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v342 = *MEMORY[0x1E696A578];
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
    v343[0] = v16;
    v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v343 forKeys:&v342 count:1];
    v285 = 0;
    v17 = 0;
    *error = [v14 initWithDomain:v15 code:2 userInfo:?];
    goto LABEL_234;
  }

  v285 = 0;
  v17 = 0;
LABEL_235:

  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaNowPlaying *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_album)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_artist)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDuration)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_genre)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasElapsed)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_mediaType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesStoreIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesSubscriptionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsAirPlayVideo)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_outputDevices;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesArtistIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesAlbumIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsRemoteControl)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_hasIsAirPlayActive)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasParentGroupContainsDiscoverableGroupLeader)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasExcludeFromSuggestions)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v94.receiver = self;
  v94.super_class = BMMediaNowPlaying;
  v5 = [(BMEventBase *)&v94 init];
  if (!v5)
  {
    goto LABEL_169;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v95[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v95[0] & 0x7F) << v8;
        if ((v95[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      switch((v15 >> 3))
      {
        case 1u:
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_91;
        case 2u:
          v5->_hasRaw_absoluteTimestamp = 1;
          v95[0] = 0;
          v32 = [fromCopy position] + 8;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 8, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          *&v5->_raw_absoluteTimestamp = v95[0];
          goto LABEL_163;
        case 3u:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (v95[0] & 0x7F) << v25;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v31 = v26++ > 8;
            if (v31)
            {
              goto LABEL_134;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v27 > 5)
          {
LABEL_134:
            LODWORD(v27) = 0;
          }

          v85 = 48;
          goto LABEL_159;
        case 4u:
          v16 = PBReaderReadString();
          v17 = 80;
          goto LABEL_91;
        case 5u:
          v16 = PBReaderReadString();
          v17 = 88;
          goto LABEL_91;
        case 6u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v5->_hasDuration = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v42 = [fromCopy position] + 1;
            if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v41 |= (v95[0] & 0x7F) << v39;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v14 = v40++ >= 9;
            if (v14)
            {
              v45 = 0;
              goto LABEL_143;
            }
          }

          if ([fromCopy hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_143:
          v86 = 52;
          goto LABEL_152;
        case 7u:
          v16 = PBReaderReadString();
          v17 = 96;
          goto LABEL_91;
        case 8u:
          v16 = PBReaderReadString();
          v17 = 104;
          goto LABEL_91;
        case 9u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v5->_hasElapsed = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v64 = [fromCopy position] + 1;
            if (v64 >= [fromCopy position] && (v65 = objc_msgSend(fromCopy, "position") + 1, v65 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v63 |= (v95[0] & 0x7F) << v61;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v14 = v62++ >= 9;
            if (v14)
            {
              v45 = 0;
              goto LABEL_151;
            }
          }

          if ([fromCopy hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v63;
          }

LABEL_151:
          v86 = 56;
LABEL_152:
          *(&v5->super.super.isa + v86) = v45;
          goto LABEL_163;
        case 0xAu:
          v16 = PBReaderReadString();
          v17 = 112;
          goto LABEL_91;
        case 0xBu:
          v16 = PBReaderReadString();
          v17 = 120;
          goto LABEL_91;
        case 0xCu:
          v16 = PBReaderReadString();
          v17 = 128;
          goto LABEL_91;
        case 0xDu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasIsAirPlayVideo = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v95[0] & 0x7F) << v18;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v14 = v19++ >= 9;
            if (v14)
            {
              LOBYTE(v24) = 0;
              goto LABEL_131;
            }
          }

          v24 = (v20 != 0) & ~[fromCopy hasError];
LABEL_131:
          v84 = 34;
          goto LABEL_162;
        case 0xEu:
          v95[0] = 0;
          v95[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_171;
          }

          v52 = [[BMMediaNowPlayingOutputDevice alloc] initByReadFrom:fromCopy];
          if (!v52)
          {
            goto LABEL_171;
          }

          v53 = v52;
          [v6 addObject:v52];
          PBReaderRecallMark();

          goto LABEL_163;
        case 0xFu:
          v16 = PBReaderReadString();
          v17 = 144;
          goto LABEL_91;
        case 0x10u:
          v16 = PBReaderReadString();
          v17 = 152;
          goto LABEL_91;
        case 0x11u:
          v16 = PBReaderReadString();
          v17 = 160;
          goto LABEL_91;
        case 0x12u:
          v16 = PBReaderReadString();
          v17 = 168;
LABEL_91:
          v60 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_163;
        case 0x13u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v5->_hasIsRemoteControl = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v57 = [fromCopy position] + 1;
            if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v56 |= (v95[0] & 0x7F) << v54;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v14 = v55++ >= 9;
            if (v14)
            {
              LOBYTE(v24) = 0;
              goto LABEL_147;
            }
          }

          v24 = (v56 != 0) & ~[fromCopy hasError];
LABEL_147:
          v84 = 36;
          goto LABEL_162;
        case 0x14u:
          v73 = 0;
          v74 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v75 = [fromCopy position] + 1;
            if (v75 >= [fromCopy position] && (v76 = objc_msgSend(fromCopy, "position") + 1, v76 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (v95[0] & 0x7F) << v73;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v31 = v74++ > 8;
            if (v31)
            {
              goto LABEL_157;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v27 > 2)
          {
LABEL_157:
            LODWORD(v27) = 0;
          }

          v85 = 60;
          goto LABEL_159;
        case 0x15u:
          v34 = 0;
          v35 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v36 = [fromCopy position] + 1;
            if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (v95[0] & 0x7F) << v34;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v31 = v35++ > 8;
            if (v31)
            {
              goto LABEL_138;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v27 > 7)
          {
LABEL_138:
            LODWORD(v27) = 0;
          }

          v85 = 64;
LABEL_159:
          *(&v5->super.super.isa + v85) = v27;
          goto LABEL_163;
        case 0x16u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v5->_hasIsAirPlayActive = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v49 = [fromCopy position] + 1;
            if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 1, v50 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v48 |= (v95[0] & 0x7F) << v46;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v14 = v47++ >= 9;
            if (v14)
            {
              LOBYTE(v24) = 0;
              goto LABEL_145;
            }
          }

          v24 = (v48 != 0) & ~[fromCopy hasError];
LABEL_145:
          v84 = 38;
          goto LABEL_162;
        case 0x17u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v5->_hasParentGroupContainsDiscoverableGroupLeader = 1;
          while (1)
          {
            LOBYTE(v95[0]) = 0;
            v70 = [fromCopy position] + 1;
            if (v70 >= [fromCopy position] && (v71 = objc_msgSend(fromCopy, "position") + 1, v71 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v69 |= (v95[0] & 0x7F) << v67;
            if ((v95[0] & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v14 = v68++ >= 9;
            if (v14)
            {
              LOBYTE(v24) = 0;
              goto LABEL_154;
            }
          }

          v24 = (v69 != 0) & ~[fromCopy hasError];
LABEL_154:
          v84 = 40;
          goto LABEL_162;
        case 0x18u:
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v5->_hasExcludeFromSuggestions = 1;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_163;
          }

LABEL_171:

          goto LABEL_168;
      }

      while (1)
      {
        LOBYTE(v95[0]) = 0;
        v81 = [fromCopy position] + 1;
        if (v81 >= [fromCopy position] && (v82 = objc_msgSend(fromCopy, "position") + 1, v82 <= objc_msgSend(fromCopy, "length")))
        {
          data12 = [fromCopy data];
          [data12 getBytes:v95 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v80 |= (v95[0] & 0x7F) << v78;
        if ((v95[0] & 0x80) == 0)
        {
          break;
        }

        v78 += 7;
        v14 = v79++ >= 9;
        if (v14)
        {
          LOBYTE(v24) = 0;
          goto LABEL_161;
        }
      }

      v24 = (v80 != 0) & ~[fromCopy hasError];
LABEL_161:
      v84 = 42;
LABEL_162:
      *(&v5->super.super.isa + v84) = v24;
LABEL_163:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v89 = [v6 copy];
  outputDevices = v5->_outputDevices;
  v5->_outputDevices = v89;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_168:
    v92 = 0;
  }

  else
  {
LABEL_169:
    v92 = v5;
  }

  return v92;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMMediaNowPlaying *)self uniqueID];
  absoluteTimestamp = [(BMMediaNowPlaying *)self absoluteTimestamp];
  v27 = BMMediaNowPlayingPlaybackStateAsString([(BMMediaNowPlaying *)self playbackState]);
  album = [(BMMediaNowPlaying *)self album];
  artist = [(BMMediaNowPlaying *)self artist];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMediaNowPlaying duration](self, "duration")}];
  genre = [(BMMediaNowPlaying *)self genre];
  title = [(BMMediaNowPlaying *)self title];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMediaNowPlaying elapsed](self, "elapsed")}];
  mediaType = [(BMMediaNowPlaying *)self mediaType];
  iTunesStoreIdentifier = [(BMMediaNowPlaying *)self iTunesStoreIdentifier];
  iTunesSubscriptionIdentifier = [(BMMediaNowPlaying *)self iTunesSubscriptionIdentifier];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isAirPlayVideo](self, "isAirPlayVideo")}];
  outputDevices = [(BMMediaNowPlaying *)self outputDevices];
  bundleID = [(BMMediaNowPlaying *)self bundleID];
  iTunesArtistIdentifier = [(BMMediaNowPlaying *)self iTunesArtistIdentifier];
  iTunesAlbumIdentifier = [(BMMediaNowPlaying *)self iTunesAlbumIdentifier];
  groupIdentifier = [(BMMediaNowPlaying *)self groupIdentifier];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isRemoteControl](self, "isRemoteControl")}];
  v3 = BMMediaNowPlayingMediaTypeAsString([(BMMediaNowPlaying *)self itemMediaType]);
  v4 = BMMediaNowPlayingMediaSubtypeAsString([(BMMediaNowPlaying *)self itemMediaSubtype]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying isAirPlayActive](self, "isAirPlayActive")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying parentGroupContainsDiscoverableGroupLeader](self, "parentGroupContainsDiscoverableGroupLeader")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaNowPlaying excludeFromSuggestions](self, "excludeFromSuggestions")}];
  v19 = [v18 initWithFormat:@"BMMediaNowPlaying with uniqueID: %@, absoluteTimestamp: %@, playbackState: %@, album: %@, artist: %@, duration: %@, genre: %@, title: %@, elapsed: %@, mediaType: %@, iTunesStoreIdentifier: %@, iTunesSubscriptionIdentifier: %@, isAirPlayVideo: %@, outputDevices: %@, bundleID: %@, iTunesArtistIdentifier: %@, iTunesAlbumIdentifier: %@, groupIdentifier: %@, isRemoteControl: %@, itemMediaType: %@, itemMediaSubtype: %@, isAirPlayActive: %@, parentGroupContainsDiscoverableGroupLeader: %@, excludeFromSuggestions: %@", uniqueID, absoluteTimestamp, v27, album, artist, v23, genre, title, v22, mediaType, iTunesStoreIdentifier, iTunesSubscriptionIdentifier, v20, outputDevices, bundleID, iTunesArtistIdentifier, iTunesAlbumIdentifier, groupIdentifier, v9, v3, v4, v5, v6, v7];

  return v19;
}

- (BMMediaNowPlaying)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp playbackState:(int)state album:(id)album artist:(id)artist duration:(id)duration genre:(id)genre title:(id)self0 elapsed:(id)self1 mediaType:(id)self2 iTunesStoreIdentifier:(id)self3 iTunesSubscriptionIdentifier:(id)self4 isAirPlayVideo:(id)self5 outputDevices:(id)self6 bundleID:(id)self7 iTunesArtistIdentifier:(id)self8 iTunesAlbumIdentifier:(id)self9 groupIdentifier:(id)groupIdentifier isRemoteControl:(id)control itemMediaType:(int)mediaType itemMediaSubtype:(int)subtype isAirPlayActive:(id)active parentGroupContainsDiscoverableGroupLeader:(id)leader excludeFromSuggestions:(id)suggestions
{
  dCopy = d;
  timestampCopy = timestamp;
  albumCopy = album;
  albumCopy2 = album;
  artistCopy = artist;
  artistCopy2 = artist;
  durationCopy = duration;
  genreCopy = genre;
  titleCopy = title;
  elapsedCopy = elapsed;
  typeCopy = type;
  identifierCopy = identifier;
  subscriptionIdentifierCopy = subscriptionIdentifier;
  videoCopy = video;
  devicesCopy = devices;
  iDCopy = iD;
  artistIdentifierCopy = artistIdentifier;
  albumIdentifierCopy = albumIdentifier;
  groupIdentifierCopy = groupIdentifier;
  controlCopy = control;
  activeCopy = active;
  leaderCopy = leader;
  suggestionsCopy = suggestions;
  v61.receiver = self;
  v61.super_class = BMMediaNowPlaying;
  v37 = [(BMEventBase *)&v61 init];
  if (v37)
  {
    v37->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v37->_uniqueID, d);
    if (timestampCopy)
    {
      v37->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v37->_hasRaw_absoluteTimestamp = 0;
      v38 = -1.0;
    }

    v37->_raw_absoluteTimestamp = v38;
    v37->_playbackState = state;
    objc_storeStrong(&v37->_album, albumCopy);
    objc_storeStrong(&v37->_artist, artistCopy);
    if (durationCopy)
    {
      v37->_hasDuration = 1;
      unsignedIntValue = [durationCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v37->_hasDuration = 0;
    }

    v37->_duration = unsignedIntValue;
    objc_storeStrong(&v37->_genre, genre);
    objc_storeStrong(&v37->_title, title);
    if (elapsedCopy)
    {
      v37->_hasElapsed = 1;
      unsignedIntValue2 = [elapsedCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v37->_hasElapsed = 0;
    }

    v37->_elapsed = unsignedIntValue2;
    objc_storeStrong(&v37->_mediaType, type);
    objc_storeStrong(&v37->_iTunesStoreIdentifier, identifier);
    objc_storeStrong(&v37->_iTunesSubscriptionIdentifier, subscriptionIdentifier);
    if (videoCopy)
    {
      v37->_hasIsAirPlayVideo = 1;
      v37->_isAirPlayVideo = [videoCopy BOOLValue];
    }

    else
    {
      v37->_hasIsAirPlayVideo = 0;
      v37->_isAirPlayVideo = 0;
    }

    objc_storeStrong(&v37->_outputDevices, devices);
    objc_storeStrong(&v37->_bundleID, iD);
    objc_storeStrong(&v37->_iTunesArtistIdentifier, artistIdentifier);
    objc_storeStrong(&v37->_iTunesAlbumIdentifier, albumIdentifier);
    objc_storeStrong(&v37->_groupIdentifier, groupIdentifier);
    if (controlCopy)
    {
      v37->_hasIsRemoteControl = 1;
      v37->_isRemoteControl = [controlCopy BOOLValue];
    }

    else
    {
      v37->_hasIsRemoteControl = 0;
      v37->_isRemoteControl = 0;
    }

    v37->_itemMediaType = mediaType;
    v37->_itemMediaSubtype = subtype;
    if (activeCopy)
    {
      v37->_hasIsAirPlayActive = 1;
      v37->_isAirPlayActive = [activeCopy BOOLValue];
    }

    else
    {
      v37->_hasIsAirPlayActive = 0;
      v37->_isAirPlayActive = 0;
    }

    if (leaderCopy)
    {
      v37->_hasParentGroupContainsDiscoverableGroupLeader = 1;
      v37->_parentGroupContainsDiscoverableGroupLeader = [leaderCopy BOOLValue];
    }

    else
    {
      v37->_hasParentGroupContainsDiscoverableGroupLeader = 0;
      v37->_parentGroupContainsDiscoverableGroupLeader = 0;
    }

    if (suggestionsCopy)
    {
      v37->_hasExcludeFromSuggestions = 1;
      v37->_excludeFromSuggestions = [suggestionsCopy BOOLValue];
    }

    else
    {
      v37->_hasExcludeFromSuggestions = 0;
      v37->_excludeFromSuggestions = 0;
    }
  }

  return v37;
}

+ (id)protoFields
{
  v28[24] = *MEMORY[0x1E69E9840];
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v28[0] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:0];
  v28[1] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"playbackState" number:3 type:4 subMessageClass:0];
  v28[2] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"album" number:4 type:13 subMessageClass:0];
  v28[3] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"artist" number:5 type:13 subMessageClass:0];
  v28[4] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"duration" number:6 type:4 subMessageClass:0];
  v28[5] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"genre" number:7 type:13 subMessageClass:0];
  v28[6] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:8 type:13 subMessageClass:0];
  v28[7] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"elapsed" number:9 type:4 subMessageClass:0];
  v28[8] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaType" number:10 type:13 subMessageClass:0];
  v28[9] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"iTunesStoreIdentifier" number:11 type:13 subMessageClass:0];
  v28[10] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"iTunesSubscriptionIdentifier" number:12 type:13 subMessageClass:0];
  v28[11] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAirPlayVideo" number:13 type:12 subMessageClass:0];
  v28[12] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"outputDevices" number:14 type:14 subMessageClass:objc_opt_class()];
  v28[13] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:15 type:13 subMessageClass:0];
  v28[14] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"iTunesArtistIdentifier" number:16 type:13 subMessageClass:0];
  v28[15] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"iTunesAlbumIdentifier" number:17 type:13 subMessageClass:0];
  v28[16] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"groupIdentifier" number:18 type:13 subMessageClass:0];
  v28[17] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRemoteControl" number:19 type:12 subMessageClass:0];
  v28[18] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemMediaType" number:20 type:4 subMessageClass:0];
  v28[19] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemMediaSubtype" number:21 type:4 subMessageClass:0];
  v28[20] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAirPlayActive" number:22 type:12 subMessageClass:0];
  v28[21] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parentGroupContainsDiscoverableGroupLeader" number:23 type:12 subMessageClass:0];
  v28[22] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"excludeFromSuggestions" number:24 type:12 subMessageClass:0];
  v28[23] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:24];

  return v11;
}

id __28__BMMediaNowPlaying_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _outputDevicesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMMediaNowPlaying alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[11] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end