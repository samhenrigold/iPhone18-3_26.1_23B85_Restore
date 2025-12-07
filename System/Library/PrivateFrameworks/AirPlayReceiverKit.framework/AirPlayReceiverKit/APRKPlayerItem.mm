@interface APRKPlayerItem
- (APRKPlayerItem)initWithDictionary:(id)dictionary resourceLoaderHelper:(id)helper contentKeyHelper:(id)keyHelper options:(id)options;
- (BOOL)enabledStateForTrackWithID:(int)d;
- (CGSize)naturalSize;
- (id)UUIDOnlyDictionaryRepresentation;
- (id)playbackAccessLog;
- (id)playbackErrorLog;
- (id)selectedMediaArray;
- (void)setEnabledState:(BOOL)state forTrackWithID:(int)d;
- (void)setStartPosition:(id *)position;
- (void)setTextStyleRulesUsingArray:(id)array;
@end

@implementation APRKPlayerItem

- (APRKPlayerItem)initWithDictionary:(id)dictionary resourceLoaderHelper:(id)helper contentKeyHelper:(id)keyHelper options:(id)options
{
  dictionaryCopy = dictionary;
  helperCopy = helper;
  keyHelperCopy = keyHelper;
  optionsCopy = options;
  if (dictionaryCopy)
  {
    v14 = [dictionaryCopy objectForKey:?];
    if (v14)
    {
      memset(&v53, 0, sizeof(v53));
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v16 = [dictionaryCopy objectForKey:?];
      [v16 integerValue];

      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      [dictionary setObject:? forKey:?];

      v18 = [dictionaryCopy objectForKey:?];
      if (v18)
      {
        [dictionary setObject:? forKey:?];
      }

      v50 = v18;
      v19 = [dictionaryCopy objectForKey:?];
      v20 = MEMORY[0x277CCABB0];
      v49 = v19;
      if (v19)
      {
        [v19 BOOLValue];
      }

      v22 = [v20 numberWithBool:?];
      [dictionary setObject:? forKey:?];

      if (optionsCopy)
      {
        [dictionary addEntriesFromDictionary:?];
      }

      v23 = [dictionaryCopy objectForKey:?];
      v24 = +[APRKReachability reachabilityForInternetConnection];
      currentReachabilityStatus = [v24 currentReachabilityStatus];

      if ((v23 && currentReachabilityStatus || ([dictionaryCopy objectForKey:?], v26 = objc_claimAutoreleasedReturnValue(), v23, (v23 = v26) != 0)) && (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:"), (v27 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v28 = v27;
        v29 = [objc_alloc(MEMORY[0x277CE6650]) initWithURL:? options:?];
        v47 = v28;
        v48 = v29;
        v46 = helperCopy;
        if (v29)
        {
          v30 = v29;
          [helperCopy registerAVURLAsset:?];
          [keyHelperCopy registerAVURLAsset:?];
          v31 = [dictionaryCopy objectForKey:?];

          if (v31)
          {
            [v31 longValue];
            resourceLoader = [v30 resourceLoader];
            [resourceLoader setAllowedCommonMediaClientDataKeys:?];

            if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
            {
              [APRKPlayerItem initWithDictionary:v31 resourceLoaderHelper:? contentKeyHelper:? options:?];
            }
          }
        }

        else
        {
          [keyHelperCopy registerAVURLAsset:?];
          v31 = v23;
        }

        v52.receiver = self;
        v52.super_class = APRKPlayerItem;
        v34 = [(APRKPlayerItem *)&v52 initWithAsset:v48];
        v35 = v34;
        if (v34)
        {
          [(APRKPlayerItem *)v34 setUUIDString:?];
          objc_storeStrong(&v35->_contentLocation, v28);
          v36 = [dictionaryCopy objectForKey:?];

          if (v36)
          {
            CMTimeMakeFromDictionary(&v53, v36);
            v51 = v53;
            [(APRKPlayerItem *)v35 setForwardPlaybackEndTime:?];
          }

          v37 = [dictionaryCopy objectForKey:?];

          if (v37)
          {
            CMTimeMakeFromDictionary(&v51, v37);
            v53 = v51;
            [(APRKPlayerItem *)v35 setReversePlaybackEndTime:?];
          }

          v38 = [dictionaryCopy objectForKey:?];

          if (v38)
          {
            objc_storeStrong(&v35->_startDate, v38);
          }

          v39 = [dictionaryCopy objectForKey:?];

          if (v39)
          {
            CMTimeMakeFromDictionary(&v51, v39);
            v40 = *&v51.value;
            v35->_startPosition.epoch = v51.epoch;
            *&v35->_startPosition.value = v40;
          }

          v41 = [dictionaryCopy objectForKey:?];

          if (v41)
          {
            v35->_expectsSecureStop = [v41 BOOLValue];
          }

          v42 = [dictionaryCopy objectForKey:?];

          if (v42)
          {
            v35->_isAudioOnly = [v42 BOOLValue];
          }

          v43 = [dictionaryCopy objectForKey:?];

          v35->_actionAtItemEnd = v43;
          v44 = [dictionaryCopy objectForKey:?];

          if (v44)
          {
            [(APRKPlayerItem *)v35 setTextStyleRulesUsingArray:?];
          }

          v31 = [dictionaryCopy objectForKey:?];

          if (v31)
          {
            [v31 integerValue];
            [(APRKPlayerItem *)v35 setRestrictions:?];
          }

          v28 = v47;
        }

        self = v35;

        v23 = v31;
        selfCopy = self;
        v33 = v49;
        helperCopy = v46;
      }

      else
      {
        if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKPlayerItem initWithDictionary:resourceLoaderHelper:contentKeyHelper:options:];
        }

        selfCopy = 0;
        v33 = v49;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)playbackAccessLog
{
  accessLog = [(APRKPlayerItem *)self accessLog];
  accessLogArray = [accessLog accessLogArray];

  return accessLogArray;
}

- (id)playbackErrorLog
{
  errorLog = [(APRKPlayerItem *)self errorLog];
  errorLogArray = [errorLog errorLogArray];

  return errorLogArray;
}

- (id)UUIDOnlyDictionaryRepresentation
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setValue:? forKey:?];

  return v2;
}

- (void)setTextStyleRulesUsingArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    selfCopy = self;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        v10 = 0;
        do
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(8 * v10);
          v12 = [MEMORY[0x277CE6638] textStyleRuleWithTextMarkupAttributes:selfCopy];
          if (v12)
          {
            [v5 addObject:?];
            if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
            {
              [APRKPlayerItem setTextStyleRulesUsingArray:v12];
            }
          }

          else if (gLogCategory_AirPlayReceiverKit <= 60 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            [APRKPlayerItem setTextStyleRulesUsingArray:v11];
          }

          v10 = (v10 + 1);
        }

        while (v8 != v10);
        v13 = [v6 countByEnumeratingWithState:? objects:? count:?];
        v8 = v13;
      }

      while (v13);
    }

    if ([v5 count])
    {
      [(APRKPlayerItem *)selfCopy setTextStyleRules:?];
    }
  }
}

- (BOOL)enabledStateForTrackWithID:(int)d
{
  v3 = *&d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  asset = [(APRKPlayerItem *)self asset];

  if (asset)
  {
    v6 = dispatch_semaphore_create(0);
    v7 = dispatch_time(0, 60000000000);
    asset2 = [(APRKPlayerItem *)self asset];
    v12 = MEMORY[0x277D85DD0];
    v9 = v6;
    [asset2 loadTrackWithTrackID:? completionHandler:?];

    if (dispatch_semaphore_wait(v9, v7) && gLogCategory_AirPlayReceiverKit <= 60 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKPlayerItem enabledStateForTrackWithID:]", 33554492, "Loading Track %d timed out for item %@", v3, self, v12, 3221225472, __45__APRKPlayerItem_enabledStateForTrackWithID___block_invoke, &unk_278C62C18);
    }
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

intptr_t __45__APRKPlayerItem_enabledStateForTrackWithID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 isEnabled];
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (void)setEnabledState:(BOOL)state forTrackWithID:(int)d
{
  asset = [(APRKPlayerItem *)self asset];

  if (asset)
  {
    asset2 = [(APRKPlayerItem *)self asset];
    v7 = [asset2 trackWithTrackID:?];

    if (v7)
    {
      tracks = [(APRKPlayerItem *)self tracks];
      v9 = [tracks countByEnumeratingWithState:0 objects:? count:?];
      if (v9)
      {
        v10 = v9;
        v11 = MEMORY[0];
        while (2)
        {
          for (i = 0; i != v10; i = (i + 1))
          {
            if (MEMORY[0] != v11)
            {
              objc_enumerationMutation(tracks);
            }

            v13 = *(8 * i);
            assetTrack = [v13 assetTrack];
            v15 = [assetTrack isEqual:?];

            if (v15)
            {
              [v13 setEnabled:?];
              goto LABEL_13;
            }
          }

          v10 = [tracks countByEnumeratingWithState:? objects:? count:?];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }
}

- (id)selectedMediaArray
{
  currentMediaSelection = [(APRKPlayerItem *)self currentMediaSelection];
  propertyList = [currentMediaSelection propertyList];

  return propertyList;
}

- (CGSize)naturalSize
{
  asset = [(APRKPlayerItem *)self asset];
  v3 = [asset tracksWithMediaType:?];

  if ([v3 count])
  {
    firstObject = [v3 firstObject];
    [firstObject naturalSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setStartPosition:(id *)position
{
  var3 = position->var3;
  *&self->_startPosition.value = *&position->var0;
  self->_startPosition.epoch = var3;
}

- (void)setTextStyleRulesUsingArray:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 debugDescription];
  LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKPlayerItem setTextStyleRulesUsingArray:]", 33554442, "Adding text style rule: %@", v1);
}

@end