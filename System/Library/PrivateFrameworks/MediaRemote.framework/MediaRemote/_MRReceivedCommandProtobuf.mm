@interface _MRReceivedCommandProtobuf
- (BOOL)isEqual:(id)equal;
- (id)commandAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCommand:(id)command;
- (int)command;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCommand:(BOOL)command;
- (void)setHasOriginUID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation _MRReceivedCommandProtobuf

- (int)command
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_command;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCommand:(BOOL)command
{
  if (command)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)commandAsString:(int)string
{
  v4 = @"Unknown";
  switch(string)
  {
    case 0:
      goto LABEL_198;
    case 1:
      v4 = @"Play";

      break;
    case 2:
      v4 = @"Pause";

      break;
    case 3:
      v4 = @"TogglePlayPause";

      break;
    case 4:
      v4 = @"Stop";

      break;
    case 5:
      v4 = @"NextTrack";

      break;
    case 6:
      v4 = @"PreviousTrack";

      break;
    case 7:
      v4 = @"AdvanceShuffleMode";

      break;
    case 8:
      v4 = @"AdvanceRepeatMode";

      break;
    case 9:
      v4 = @"BeginFastForward";

      break;
    case 10:
      v4 = @"EndFastForward";

      break;
    case 11:
      v4 = @"BeginRewind";

      break;
    case 12:
      v4 = @"EndRewind";

      break;
    case 13:
      v4 = @"Rewind15Seconds";

      break;
    case 14:
      v4 = @"FastForward15Seconds";

      break;
    case 15:
      v4 = @"Rewind30Seconds";

      break;
    case 16:
      v4 = @"FastForward30Seconds";

      break;
    case 18:
      v4 = @"SkipForward";

      break;
    case 19:
      v4 = @"SkipBackward";

      break;
    case 20:
      v4 = @"ChangePlaybackRate";

      break;
    case 21:
      v4 = @"RateTrack";

      break;
    case 22:
      v4 = @"LikeTrack";

      break;
    case 23:
      v4 = @"DislikeTrack";

      break;
    case 24:
      v4 = @"BookmarkTrack";

      break;
    case 25:
      v4 = @"NextChapter";

      break;
    case 26:
      v4 = @"PreviousChapter";

      break;
    case 27:
      v4 = @"NextAlbum";

      break;
    case 28:
      v4 = @"PreviousAlbum";

      break;
    case 29:
      v4 = @"NextPlaylist";

      break;
    case 30:
      v4 = @"PreviousPlaylist";

      break;
    case 31:
      v4 = @"BanTrack";

      break;
    case 32:
      v4 = @"AddTrackToWishList";

      break;
    case 33:
      v4 = @"RemoveTrackFromWishList";

      break;
    case 34:
      v4 = @"NextInContext";

      break;
    case 35:
      v4 = @"PreviousInContext";

      break;
    case 41:
      v4 = @"ResetPlaybackTimeout";

      break;
    case 45:
      v4 = @"SeekToPlaybackPosition";

      break;
    case 46:
      v4 = @"ChangeRepeatMode";

      break;
    case 47:
      v4 = @"ChangeShuffleMode";

      break;
    case 48:
      v4 = @"SetPlaybackQueue";

      break;
    case 49:
      v4 = @"AddNowPlayingItemToLibrary";

      break;
    case 50:
      v4 = @"CreateRadioStation";

      break;
    case 51:
      v4 = @"AddItemToLibrary";

      break;
    case 52:
      v4 = @"InsertIntoPlaybackQueue";

      break;
    case 53:
      v4 = @"EnableLanguageOption";

      break;
    case 54:
      v4 = @"DisableLanguageOption";

      break;
    case 55:
      v4 = @"ReorderPlaybackQueue";

      break;
    case 56:
      v4 = @"RemoveFromPlaybackQueue";

      break;
    case 57:
      v4 = @"PlayItemInPlaybackQueue";

      break;
    case 58:
      v4 = @"PrepareForSetQueue";

      break;
    case 59:
      v4 = @"SetPlaybackSession";

      break;
    case 60:
      v4 = @"PreloadPlaybackSession";

      break;
    case 61:
      v4 = @"SetPriorityForPlaybackSession";

      break;
    case 62:
      v4 = @"DiscardPlaybackSession";

      break;
    case 63:
      v4 = @"Reshuffle";

      break;
    case 64:
      v4 = @"LeaveSharedPlaybackSession";

      break;
    case 65:
      v4 = @"PostEventNotice";

      break;
    case 124:
      v4 = @"SetSleepTimer";

      break;
    case 135:
      v4 = @"ChangeQueueEndAction";

      break;
    case 142:
      v4 = @"VocalsControl";

      break;
    case 143:
      v4 = @"PrepareVocalsControl";

      break;
    case 144:
      v4 = @"ClearUpNextQueue";

      break;
    case 145:
      v4 = @"PerformDialogAction";

      break;
    case 146:
      v4 = @"DelegateAccount";

      break;
    case 147:
      v4 = @"EnhanceDialogue";

      break;
    case 149:
      v4 = @"ToggleTransitions";

      break;
    default:
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
LABEL_198:

      break;
  }

  return v4;
}

- (int)StringAsCommand:(id)command
{
  commandCopy = command;
  if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 0;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 1;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 2;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 3;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 4;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 5;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 6;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 7;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 8;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 9;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 10;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 11;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 12;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 13;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 14;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 15;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 16;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 18;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 19;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 20;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 21;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 22;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 23;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 24;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 45;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 46;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 47;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 53;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 54;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 25;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 26;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 27;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 28;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 29;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 30;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 31;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 32;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 33;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 34;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 35;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 41;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 48;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 49;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 50;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 51;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 52;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 55;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 56;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 57;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 58;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 59;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 60;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 61;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 62;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 63;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 64;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 65;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 124;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 135;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 142;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 143;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 144;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 145;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 146;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 147;
  }

  else if (objc_msgSend_isEqualToString_(commandCopy))
  {
    v4 = 149;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasOriginUID:(BOOL)d
{
  if (d)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRReceivedCommandProtobuf;
  v4 = [(_MRReceivedCommandProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRReceivedCommandProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = @"Unknown";
    switch(self->_command)
    {
      case 0:
        break;
      case 1:
        v4 = @"Play";
        break;
      case 2:
        v4 = @"Pause";
        break;
      case 3:
        v4 = @"TogglePlayPause";
        break;
      case 4:
        v4 = @"Stop";
        break;
      case 5:
        v4 = @"NextTrack";
        break;
      case 6:
        v4 = @"PreviousTrack";
        break;
      case 7:
        v4 = @"AdvanceShuffleMode";
        break;
      case 8:
        v4 = @"AdvanceRepeatMode";
        break;
      case 9:
        v4 = @"BeginFastForward";
        break;
      case 0xA:
        v4 = @"EndFastForward";
        break;
      case 0xB:
        v4 = @"BeginRewind";
        break;
      case 0xC:
        v4 = @"EndRewind";
        break;
      case 0xD:
        v4 = @"Rewind15Seconds";
        break;
      case 0xE:
        v4 = @"FastForward15Seconds";
        break;
      case 0xF:
        v4 = @"Rewind30Seconds";
        break;
      case 0x10:
        v4 = @"FastForward30Seconds";
        break;
      case 0x12:
        v4 = @"SkipForward";
        break;
      case 0x13:
        v4 = @"SkipBackward";
        break;
      case 0x14:
        v4 = @"ChangePlaybackRate";
        break;
      case 0x15:
        v4 = @"RateTrack";
        break;
      case 0x16:
        v4 = @"LikeTrack";
        break;
      case 0x17:
        v4 = @"DislikeTrack";
        break;
      case 0x18:
        v4 = @"BookmarkTrack";
        break;
      case 0x19:
        v4 = @"NextChapter";
        break;
      case 0x1A:
        v4 = @"PreviousChapter";
        break;
      case 0x1B:
        v4 = @"NextAlbum";
        break;
      case 0x1C:
        v4 = @"PreviousAlbum";
        break;
      case 0x1D:
        v4 = @"NextPlaylist";
        break;
      case 0x1E:
        v4 = @"PreviousPlaylist";
        break;
      case 0x1F:
        v4 = @"BanTrack";
        break;
      case 0x20:
        v4 = @"AddTrackToWishList";
        break;
      case 0x21:
        v4 = @"RemoveTrackFromWishList";
        break;
      case 0x22:
        v4 = @"NextInContext";
        break;
      case 0x23:
        v4 = @"PreviousInContext";
        break;
      case 0x29:
        v4 = @"ResetPlaybackTimeout";
        break;
      case 0x2D:
        v4 = @"SeekToPlaybackPosition";
        break;
      case 0x2E:
        v4 = @"ChangeRepeatMode";
        break;
      case 0x2F:
        v4 = @"ChangeShuffleMode";
        break;
      case 0x30:
        v4 = @"SetPlaybackQueue";
        break;
      case 0x31:
        v4 = @"AddNowPlayingItemToLibrary";
        break;
      case 0x32:
        v4 = @"CreateRadioStation";
        break;
      case 0x33:
        v4 = @"AddItemToLibrary";
        break;
      case 0x34:
        v4 = @"InsertIntoPlaybackQueue";
        break;
      case 0x35:
        v4 = @"EnableLanguageOption";
        break;
      case 0x36:
        v4 = @"DisableLanguageOption";
        break;
      case 0x37:
        v4 = @"ReorderPlaybackQueue";
        break;
      case 0x38:
        v4 = @"RemoveFromPlaybackQueue";
        break;
      case 0x39:
        v4 = @"PlayItemInPlaybackQueue";
        break;
      case 0x3A:
        v4 = @"PrepareForSetQueue";
        break;
      case 0x3B:
        v4 = @"SetPlaybackSession";
        break;
      case 0x3C:
        v4 = @"PreloadPlaybackSession";
        break;
      case 0x3D:
        v4 = @"SetPriorityForPlaybackSession";
        break;
      case 0x3E:
        v4 = @"DiscardPlaybackSession";
        break;
      case 0x3F:
        v4 = @"Reshuffle";
        break;
      case 0x40:
        v4 = @"LeaveSharedPlaybackSession";
        break;
      case 0x41:
        v4 = @"PostEventNotice";
        break;
      case 0x7C:
        v4 = @"SetSleepTimer";
        break;
      case 0x87:
        v4 = @"ChangeQueueEndAction";
        break;
      case 0x8E:
        v4 = @"VocalsControl";
        break;
      case 0x8F:
        v4 = @"PrepareVocalsControl";
        break;
      case 0x90:
        v4 = @"ClearUpNextQueue";
        break;
      case 0x91:
        v4 = @"PerformDialogAction";
        break;
      case 0x92:
        v4 = @"DelegateAccount";
        break;
      case 0x93:
        v4 = @"EnhanceDialogue";
        break;
      case 0x95:
        v4 = @"ToggleTransitions";
        break;
      default:
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_command];
        break;
    }

    [dictionary setObject:v4 forKey:@"command"];
  }

  options = self->_options;
  if (options)
  {
    dictionaryRepresentation = [(_MRCommandOptionsProtobuf *)options dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"options"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_originUID];
    [dictionary setObject:v7 forKey:@"originUID"];
  }

  senderAppDisplayID = self->_senderAppDisplayID;
  if (senderAppDisplayID)
  {
    [dictionary setObject:senderAppDisplayID forKey:@"senderAppDisplayID"];
  }

  destinationAppDisplayID = self->_destinationAppDisplayID;
  if (destinationAppDisplayID)
  {
    [dictionary setObject:destinationAppDisplayID forKey:@"destinationAppDisplayID"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_destinationAppProcessID];
    [dictionary setObject:v10 forKey:@"destinationAppProcessID"];
  }

  remoteControlInterfaceID = self->_remoteControlInterfaceID;
  if (remoteControlInterfaceID)
  {
    [dictionary setObject:remoteControlInterfaceID forKey:@"remoteControlInterfaceID"];
  }

  appOptions = self->_appOptions;
  if (appOptions)
  {
    dictionaryRepresentation2 = [(_MRReceivedCommandAppOptionsProtobuf *)appOptions dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"appOptions"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation3 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"playerPath"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_options)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_senderAppDisplayID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_destinationAppDisplayID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }

  if (self->_remoteControlInterfaceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_appOptions)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[6] = self->_command;
    *(toCopy + 80) |= 2u;
  }

  v5 = toCopy;
  if (self->_options)
  {
    [toCopy setOptions:?];
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[12] = self->_originUID;
    *(toCopy + 80) |= 4u;
  }

  if (self->_senderAppDisplayID)
  {
    [v5 setSenderAppDisplayID:?];
    toCopy = v5;
  }

  if (self->_destinationAppDisplayID)
  {
    [v5 setDestinationAppDisplayID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_destinationAppProcessID;
    *(toCopy + 80) |= 1u;
  }

  if (self->_remoteControlInterfaceID)
  {
    [v5 setRemoteControlInterfaceID:?];
    toCopy = v5;
  }

  if (self->_appOptions)
  {
    [v5 setAppOptions:?];
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_command;
    *(v5 + 80) |= 2u;
  }

  v7 = [(_MRCommandOptionsProtobuf *)self->_options copyWithZone:zone];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 48) = self->_originUID;
    *(v6 + 80) |= 4u;
  }

  v9 = [(NSString *)self->_senderAppDisplayID copyWithZone:zone];
  v10 = *(v6 + 72);
  *(v6 + 72) = v9;

  v11 = [(NSString *)self->_destinationAppDisplayID copyWithZone:zone];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_destinationAppProcessID;
    *(v6 + 80) |= 1u;
  }

  v13 = [(NSString *)self->_remoteControlInterfaceID copyWithZone:zone];
  v14 = *(v6 + 64);
  *(v6 + 64) = v13;

  v15 = [(_MRReceivedCommandAppOptionsProtobuf *)self->_appOptions copyWithZone:zone];
  v16 = *(v6 + 16);
  *(v6 + 16) = v15;

  v17 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v18 = *(v6 + 56);
  *(v6 + 56) = v17;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_command != *(equalCopy + 6))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
    goto LABEL_30;
  }

  options = self->_options;
  if (options | *(equalCopy + 5))
  {
    if (![(_MRCommandOptionsProtobuf *)options isEqual:?])
    {
LABEL_30:
      v12 = 0;
      goto LABEL_31;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 80) & 4) == 0 || self->_originUID != *(equalCopy + 12))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 80) & 4) != 0)
  {
    goto LABEL_30;
  }

  senderAppDisplayID = self->_senderAppDisplayID;
  if (senderAppDisplayID | *(equalCopy + 9) && ![(NSString *)senderAppDisplayID isEqual:?])
  {
    goto LABEL_30;
  }

  destinationAppDisplayID = self->_destinationAppDisplayID;
  if (destinationAppDisplayID | *(equalCopy + 4))
  {
    if (![(NSString *)destinationAppDisplayID isEqual:?])
    {
      goto LABEL_30;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_destinationAppProcessID != *(equalCopy + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_30;
  }

  remoteControlInterfaceID = self->_remoteControlInterfaceID;
  if (remoteControlInterfaceID | *(equalCopy + 8) && ![(NSString *)remoteControlInterfaceID isEqual:?])
  {
    goto LABEL_30;
  }

  appOptions = self->_appOptions;
  if (appOptions | *(equalCopy + 2))
  {
    if (![(_MRReceivedCommandAppOptionsProtobuf *)appOptions isEqual:?])
    {
      goto LABEL_30;
    }
  }

  playerPath = self->_playerPath;
  if (playerPath | *(equalCopy + 7))
  {
    v12 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_31:

  return v12;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_command;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_MRCommandOptionsProtobuf *)self->_options hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_originUID;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_senderAppDisplayID hash];
  v7 = [(NSString *)self->_destinationAppDisplayID hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_destinationAppProcessID;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_remoteControlInterfaceID hash];
  v10 = [(_MRReceivedCommandAppOptionsProtobuf *)self->_appOptions hash];
  return v9 ^ v10 ^ [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[20] & 2) != 0)
  {
    self->_command = fromCopy[6];
    *&self->_has |= 2u;
  }

  options = self->_options;
  v7 = *(v5 + 5);
  v12 = v5;
  if (options)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_MRCommandOptionsProtobuf *)options mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_MRReceivedCommandProtobuf *)self setOptions:?];
  }

  v5 = v12;
LABEL_9:
  if ((*(v5 + 80) & 4) != 0)
  {
    self->_originUID = *(v5 + 12);
    *&self->_has |= 4u;
  }

  if (*(v5 + 9))
  {
    [(_MRReceivedCommandProtobuf *)self setSenderAppDisplayID:?];
    v5 = v12;
  }

  if (*(v5 + 4))
  {
    [(_MRReceivedCommandProtobuf *)self setDestinationAppDisplayID:?];
    v5 = v12;
  }

  if (*(v5 + 80))
  {
    self->_destinationAppProcessID = *(v5 + 1);
    *&self->_has |= 1u;
  }

  if (*(v5 + 8))
  {
    [(_MRReceivedCommandProtobuf *)self setRemoteControlInterfaceID:?];
    v5 = v12;
  }

  appOptions = self->_appOptions;
  v9 = *(v5 + 2);
  if (appOptions)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    [(_MRReceivedCommandAppOptionsProtobuf *)appOptions mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    [(_MRReceivedCommandProtobuf *)self setAppOptions:?];
  }

  v5 = v12;
LABEL_25:
  playerPath = self->_playerPath;
  v11 = *(v5 + 7);
  if (playerPath)
  {
    if (!v11)
    {
      goto LABEL_31;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_31;
    }

    [(_MRReceivedCommandProtobuf *)self setPlayerPath:?];
  }

  v5 = v12;
LABEL_31:
}

@end