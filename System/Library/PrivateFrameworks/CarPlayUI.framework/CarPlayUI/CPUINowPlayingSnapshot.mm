@interface CPUINowPlayingSnapshot
+ (NSArray)knownJumpIntervals;
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot;
- (BOOL)shouldEnableBackButton;
- (BOOL)shouldEnableNextButton;
- (BOOL)showsStopButton;
- (CPUINowPlayingSnapshot)initWithResponse:(id)response;
- (NSNumber)jumpBackInterval;
- (NSNumber)jumpForwardInterval;
- (id)_getSongIsNext:(BOOL)next;
- (id)commandWithType:(unint64_t)type;
@end

@implementation CPUINowPlayingSnapshot

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot
{
  v3 = *&self[2].var0;
  *&retstr->var0 = *&self[1].var5;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[2].var2;
  *&retstr->var7 = self[2].var4;
  return self;
}

- (NSNumber)jumpForwardInterval
{
  responseItem = [(CPUINowPlayingSnapshot *)self responseItem];
  seekCommand = [responseItem seekCommand];
  preferredForwardJumpIntervals = [seekCommand preferredForwardJumpIntervals];
  firstObject = [preferredForwardJumpIntervals firstObject];

  return firstObject;
}

- (BOOL)shouldEnableNextButton
{
  jumpForwardInterval = [(CPUINowPlayingSnapshot *)self jumpForwardInterval];

  if (jumpForwardInterval)
  {
    return 1;
  }

  tracklist = [(CPUINowPlayingSnapshot *)self tracklist];
  changeItemCommand = [tracklist changeItemCommand];
  nextItem = [changeItemCommand nextItem];

  if (!nextItem)
  {
    return 0;
  }

  song = [(CPUINowPlayingSnapshot *)self song];
  v4 = song != 0;

  return v4;
}

- (NSNumber)jumpBackInterval
{
  responseItem = [(CPUINowPlayingSnapshot *)self responseItem];
  seekCommand = [responseItem seekCommand];
  preferredBackwardJumpIntervals = [seekCommand preferredBackwardJumpIntervals];
  firstObject = [preferredBackwardJumpIntervals firstObject];

  return firstObject;
}

- (BOOL)shouldEnableBackButton
{
  jumpBackInterval = [(CPUINowPlayingSnapshot *)self jumpBackInterval];

  if (jumpBackInterval)
  {
    return 1;
  }

  tracklist = [(CPUINowPlayingSnapshot *)self tracklist];
  changeItemCommand = [tracklist changeItemCommand];
  previousItem = [changeItemCommand previousItem];

  if (!previousItem)
  {
    return 0;
  }

  song = [(CPUINowPlayingSnapshot *)self song];
  v4 = song != 0;

  return v4;
}

- (id)_getSongIsNext:(BOOL)next
{
  nextCopy = next;
  items = [(MPCPlayerResponseTracklist *)self->_tracklist items];
  totalItemCount = [items totalItemCount];

  playingItem = [(MPCPlayerResponseTracklist *)self->_tracklist playingItem];
  items2 = [(MPCPlayerResponseTracklist *)self->_tracklist items];
  firstItem = [items2 firstItem];
  v10 = [playingItem isEqual:firstItem];

  if (totalItemCount == 3 || totalItemCount == 2 && v10 == nextCopy)
  {
    items3 = [(MPCPlayerResponseTracklist *)self->_tracklist items];
    v13 = items3;
    if (nextCopy)
    {
      [items3 lastItem];
    }

    else
    {
      [items3 firstItem];
    }
    v14 = ;

    objc_opt_class();
    metadataObject = [v14 metadataObject];
    anyObject = [metadataObject anyObject];
    if (objc_opt_isKindOfClass())
    {
      v11 = anyObject;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CPUINowPlayingSnapshot)initWithResponse:(id)response
{
  v59 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v55.receiver = self;
  v55.super_class = CPUINowPlayingSnapshot;
  v6 = [(CPUINowPlayingSnapshot *)&v55 init];
  if (v6)
  {
    playerPath = [responseCopy playerPath];
    representedBundleID = [playerPath representedBundleID];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = representedBundleID;

    objc_storeStrong(&v6->_response, response);
    tracklist = [responseCopy tracklist];
    playingItemIndexPath = [tracklist playingItemIndexPath];

    v13 = CarPlayUIGeneralLogging(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (playingItemIndexPath)
    {
      if (v14)
      {
        bundleIdentifier = [(CPUINowPlayingSnapshot *)v6 bundleIdentifier];
        *buf = 138543618;
        *&buf[4] = bundleIdentifier;
        *&buf[12] = 2114;
        *&buf[14] = playingItemIndexPath;
        _os_log_impl(&dword_243134000, v13, OS_LOG_TYPE_DEFAULT, "Received MPRequestResponseController response for %{public}@ with playing index path %{public}@", buf, 0x16u);
      }

      tracklist2 = [responseCopy tracklist];
      items = [tracklist2 items];
      v13 = [items itemAtIndexPath:playingItemIndexPath];

      objc_storeStrong(&v6->_responseItem, v13);
      v58 = 0;
      v57 = 0u;
      memset(buf, 0, sizeof(buf));
      if (v13)
      {
        objc_msgSend_duration(v13);
      }

      metadataObject = [v13 metadataObject];
      anyObject = [metadataObject anyObject];

      tracklist3 = [responseCopy tracklist];
      items2 = [tracklist3 items];
      v22 = [items2 sectionAtIndex:{objc_msgSend(playingItemIndexPath, "section")}];

      if (v22)
      {
        metadataObject2 = [v22 metadataObject];
        v6->_isRadioPlayback = [metadataObject2 type] == 13;
      }

      else
      {
        v6->_isRadioPlayback = 0;
      }

      title = [anyObject title];
      title = v6->_title;
      v6->_title = title;

      if ([anyObject shouldShowComposer])
      {
        [anyObject composer];
      }

      else
      {
        [anyObject artist];
      }
      v26 = ;
      name = [v26 name];
      artist = v6->_artist;
      v6->_artist = name;

      if (v6->_isRadioPlayback)
      {
        metadataObject3 = [v22 metadataObject];
        radioStation = [metadataObject3 radioStation];
        attributionLabel = [radioStation attributionLabel];

        if (attributionLabel)
        {
          v32 = attributionLabel;
          v33 = v6->_artist;
          v6->_artist = v32;
        }

        else
        {
          v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
          artist = [anyObject artist];
          name2 = [artist name];

          if ([name2 length])
          {
            [(NSString *)v33 addObject:name2];
          }

          v54 = name2;
          composer = [anyObject composer];
          name3 = [composer name];

          if ([anyObject shouldShowComposer] && objc_msgSend(name3, "length"))
          {
            v38 = MEMORY[0x277CCACA8];
            v53 = CPUILocalizedStringForKey(@"COMPOSED_BY_TITLE_%@");
            v39 = [v38 localizedStringWithFormat:v53, name3];

            [(NSString *)v33 addObject:v39];
          }

          v40 = [(NSString *)v33 count];
          if (v40)
          {
            v40 = [(NSString *)v33 componentsJoinedByString:@" — "];
          }

          v41 = v6->_artist;
          v6->_artist = v40;
        }
      }

      album = [anyObject album];
      title2 = [album title];
      album = v6->_album;
      v6->_album = title2;

      artworkCatalog = [anyObject artworkCatalog];
      artworkCatalog = v6->_artworkCatalog;
      v6->_artworkCatalog = artworkCatalog;

      v47 = *&buf[16];
      *&v6->_durationSnapshot.snapshotTime = *buf;
      *&v6->_durationSnapshot.endTime = v47;
      *&v6->_durationSnapshot.elapsedDuration = v57;
      *&v6->_durationSnapshot.isLiveContent = v58;
      v6->_state = [responseCopy state];
      tracklist4 = [responseCopy tracklist];
      tracklist = v6->_tracklist;
      v6->_tracklist = tracklist4;

      song = v6->_song;
      v6->_song = anyObject;
      v51 = anyObject;
    }

    else if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_243134000, v13, OS_LOG_TYPE_DEFAULT, "Received MPRequestResponseController response without any available now playing item.", buf, 2u);
    }
  }

  return v6;
}

+ (NSArray)knownJumpIntervals
{
  if (knownJumpIntervals_onceToken != -1)
  {
    +[CPUINowPlayingSnapshot knownJumpIntervals];
  }

  v3 = knownJumpIntervals___intervals;

  return v3;
}

void __44__CPUINowPlayingSnapshot_knownJumpIntervals__block_invoke()
{
  v0 = knownJumpIntervals___intervals;
  knownJumpIntervals___intervals = &unk_2855D84A0;
}

- (BOOL)showsStopButton
{
  response = [(CPUINowPlayingSnapshot *)self response];
  stop = [response stop];
  v5 = stop != 0;

  if (stop)
  {
    v7 = objc_msgSend_durationSnapshot(self);
    if (v11 != 1)
    {
      return 0;
    }

    v8 = CarPlayUIGeneralLogging(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Playing livestreaming content.";
LABEL_7:
      _os_log_impl(&dword_243134000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    }
  }

  else
  {
    v8 = CarPlayUIGeneralLogging(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Stop command is disabled.";
      goto LABEL_7;
    }
  }

  return v5;
}

- (id)commandWithType:(unint64_t)type
{
  v3 = 0;
  if (type > 4)
  {
    if (type > 6)
    {
      switch(type)
      {
        case 7uLL:
          responseItem = [(CPUINowPlayingSnapshot *)self responseItem];
          seekCommand = [responseItem seekCommand];
          seekCommand2 = seekCommand;
          v15 = 1;
          break;
        case 8uLL:
          responseItem = [(CPUINowPlayingSnapshot *)self responseItem];
          seekCommand = [responseItem seekCommand];
          seekCommand2 = seekCommand;
          v15 = -1;
          break;
        case 9uLL:
          responseItem = [(CPUINowPlayingSnapshot *)self responseItem];
          seekCommand2 = [responseItem seekCommand];
          endSeek = [seekCommand2 endSeek];
          goto LABEL_26;
        default:
          goto LABEL_28;
      }

      endSeek = [seekCommand beginSeekWithDirection:v15];
LABEL_26:
      v3 = endSeek;

      goto LABEL_27;
    }

    if (type == 5)
    {
      responseItem2 = [(CPUINowPlayingSnapshot *)self responseItem];
      responseItem = [responseItem2 seekCommand];

      [responseItem preferredForwardJumpIntervals];
    }

    else
    {
      responseItem3 = [(CPUINowPlayingSnapshot *)self responseItem];
      responseItem = [responseItem3 seekCommand];

      [responseItem preferredBackwardJumpIntervals];
    }
    v10 = ;
    firstObject = [v10 firstObject];
    [firstObject doubleValue];
    v13 = v12;

    play = [responseItem jumpByInterval:v13];
  }

  else if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_28;
      }

      responseItem = [(CPUINowPlayingSnapshot *)self response];
      play = [responseItem play];
    }

    else
    {
      responseItem = [(CPUINowPlayingSnapshot *)self response];
      play = [responseItem stop];
    }
  }

  else
  {
    if (type != 2)
    {
      if (type == 3)
      {
        responseItem = [(CPUINowPlayingSnapshot *)self tracklist];
        seekCommand2 = [responseItem changeItemCommand];
        [seekCommand2 nextItem];
      }

      else
      {
        responseItem = [(CPUINowPlayingSnapshot *)self tracklist];
        seekCommand2 = [responseItem changeItemCommand];
        [seekCommand2 previousItem];
      }
      endSeek = ;
      goto LABEL_26;
    }

    responseItem = [(CPUINowPlayingSnapshot *)self response];
    play = [responseItem pause];
  }

  v3 = play;
LABEL_27:

LABEL_28:

  return v3;
}

@end