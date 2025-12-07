@interface CalAppleConferenceFormat
+ (BOOL)_line:(id)_line matchesRegex:(id)regex outFoundRange:(_NSRange *)range;
+ (id)_buildDeserializationResultFromState:(id)state;
+ (id)_conferenceTitleRegex;
+ (id)_detailsDelimiterRegex;
+ (id)_joinMethodTitleAndFeaturesRegex;
+ (id)_startDelimiterRegex;
+ (id)calConferenceSerializationHandle;
+ (void)_parseBlockTitle:(id)title state:(id)state;
+ (void)_parseConferenceTitle:(id)title state:(id)state;
+ (void)_parseJoinMethodTitleAndFeatures:(id)features state:(id)state;
+ (void)_parseURL:(id)l state:(id)state;
- (id)deserializeConferences:(id)conferences;
- (id)serializeConference:(id)conference serializationBlockTitle:(id)title;
@end

@implementation CalAppleConferenceFormat

+ (id)calConferenceSerializationHandle
{
  if (calConferenceSerializationHandle_onceToken != -1)
  {
    +[CalAppleConferenceFormat calConferenceSerializationHandle];
  }

  v3 = calConferenceSerializationHandle_logHandle;

  return v3;
}

uint64_t __60__CalAppleConferenceFormat_calConferenceSerializationHandle__block_invoke()
{
  calConferenceSerializationHandle_logHandle = os_log_create("com.apple.calendar.calendarFoundation", "appleConferenceSerialization");

  return MEMORY[0x1EEE66BB8]();
}

- (id)serializeConference:(id)conference serializationBlockTitle:(id)title
{
  v54 = *MEMORY[0x1E69E9840];
  conferenceCopy = conference;
  titleCopy = title;
  joinMethods = [conferenceCopy joinMethods];
  v8 = [joinMethods count];

  if (v8)
  {
    array = [MEMORY[0x1E695DF70] array];
    v47 = titleCopy;
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"----( ", titleCopy, @")----"];
    [array addObject:?];
    title = [conferenceCopy title];
    v11 = [title length];

    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      title2 = [conferenceCopy title];
      v14 = [v12 stringWithFormat:@"%@%@%@", @"[", title2, @"]"];
      [array addObject:v14];

      [array addObject:&stru_1F379FFA8];
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    joinMethods2 = [conferenceCopy joinMethods];
    v16 = [joinMethods2 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v49;
      do
      {
        v19 = 0;
        do
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(joinMethods2);
          }

          v20 = *(*(&v48 + 1) + 8 * v19);
          title3 = [v20 title];
          v22 = [title3 length];

          isBroadcast = [v20 isBroadcast];
          if (v22)
          {
            v24 = isBroadcast == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            v26 = MEMORY[0x1E696AEC0];
            title4 = [v20 title];
            [v26 stringWithFormat:@"%@%@%@ %@%@%@", @"[", title4, @"]", @"(", @"Broadcast", @")"];
            goto LABEL_16;
          }

          if (v22)
          {
            v25 = MEMORY[0x1E696AEC0];
            title4 = [v20 title];
            [v25 stringWithFormat:@"%@%@%@", @"[", title4, @"]", v43, v44, v45];
            v28 = LABEL_16:;
            [array addObject:v28];

LABEL_17:
            goto LABEL_18;
          }

          if (isBroadcast)
          {
            title4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"(", @"Broadcast", @")"];
            [array addObject:title4];
            goto LABEL_17;
          }

LABEL_18:
          v29 = [v20 URL];
          absoluteString = [v29 absoluteString];
          [array addObject:absoluteString];

          joinMethods3 = [conferenceCopy joinMethods];
          lastObject = [joinMethods3 lastObject];
          v33 = [v20 isEqual:lastObject];

          if ((v33 & 1) == 0)
          {
            [array addObject:&stru_1F379FFA8];
          }

          ++v19;
        }

        while (v17 != v19);
        v34 = [joinMethods2 countByEnumeratingWithState:&v48 objects:v53 count:16];
        v17 = v34;
      }

      while (v34);
    }

    conferenceDetails = [conferenceCopy conferenceDetails];
    v36 = [conferenceDetails length];

    if (v36)
    {
      [array addObject:&stru_1F379FFA8];
      calBundle = [objc_opt_class() calBundle];
      v38 = [calBundle localizedStringForKey:@"Details" value:&stru_1F379FFA8 table:0];

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"---( ", v38, @")---"];
      [array addObject:v39];
      [array addObject:&stru_1F379FFA8];
      conferenceDetails2 = [conferenceCopy conferenceDetails];
      [array addObject:conferenceDetails2];
    }

    [array addObject:@"---===---"];
    v41 = [array componentsJoinedByString:@"\n"];

    titleCopy = v47;
  }

  else
  {
    array = [objc_opt_class() calConferenceSerializationHandle];
    if (os_log_type_enabled(array, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B990D000, array, OS_LOG_TYPE_DEFAULT, "Conference has no joinMethods but at least 1 is required for serializing", buf, 2u);
    }

    v41 = 0;
  }

  return v41;
}

- (id)deserializeConferences:(id)conferences
{
  conferencesCopy = conferences;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([conferencesCopy length])
  {
    v6 = objc_alloc_init(StateData);
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v7 = [conferencesCopy length];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__CalAppleConferenceFormat_deserializeConferences___block_invoke;
    v14[3] = &unk_1E7EC6928;
    v8 = v6;
    v15 = v8;
    selfCopy = self;
    v19 = v20;
    v17 = conferencesCopy;
    v9 = v5;
    v18 = v9;
    [v17 enumerateSubstringsInRange:0 options:v7 usingBlock:{0, v14}];
    if ([(StateData *)v8 state]== 8)
    {
      v10 = [objc_opt_class() _buildDeserializationResultFromState:v8];
      [v9 addObject:v10];
    }

    v11 = v18;
    v12 = v9;

    _Block_object_dispose(v20, 8);
  }

  return v5;
}

void __51__CalAppleConferenceFormat_deserializeConferences___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = [*(a1 + 32) state];
  if (v11 > 3)
  {
    if (v11 > 5)
    {
      if (v11 != 6)
      {
        if (v11 != 7)
        {
          if (v11 == 8)
          {
            v12 = *(a1 + 56);
            v13 = [objc_opt_class() _buildDeserializationResultFromState:*(a1 + 32)];
            [v12 addObject:v13];
          }

          goto LABEL_56;
        }

        v32 = [v10 isEqualToString:@"---===---"];
        v33 = [*(a1 + 32) conferenceDetails];
        v30 = v33;
        if (v32)
        {
          v34 = [(CalVirtualConferenceJoinMethod *)v33 count];

          if (v34)
          {
            [*(a1 + 32) setEndRange:{a5, a6}];
            v23 = *(a1 + 32);
            v24 = 8;
            goto LABEL_32;
          }

          v35 = [objc_opt_class() calConferenceSerializationHandle];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v36 = "No conferenceDetails lines were found when end delimiter was hit, despite conferenceDetails delimiter being present";
            goto LABEL_54;
          }

LABEL_55:

          [*(a1 + 32) resetToNewSection];
          goto LABEL_56;
        }

        [(CalVirtualConferenceJoinMethod *)v33 addObject:v10];
LABEL_43:

        goto LABEL_56;
      }

      if ([v10 isEqualToString:&stru_1F379FFA8])
      {
        v23 = *(a1 + 32);
        v24 = 7;
        goto LABEL_32;
      }

      v35 = [objc_opt_class() calConferenceSerializationHandle];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      *buf = 0;
      v36 = "ConferenceDetails delimiter was not followed by an empty string";
LABEL_54:
      _os_log_impl(&dword_1B990D000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 2u);
      goto LABEL_55;
    }

    if (v11 != 4)
    {
      [*(a1 + 32) setJoinMethodTitle:0];
      [*(a1 + 32) setJoinMethodIsBroadcast:0];
      v21 = objc_opt_class();
      v22 = [objc_opt_class() _detailsDelimiterRegex];
      LODWORD(v21) = [v21 _line:v10 matchesRegex:v22 outFoundRange:0];

      if (v21)
      {
        v23 = *(a1 + 32);
        v24 = 6;
        goto LABEL_32;
      }

      if (([v10 hasPrefix:@"["] & 1) != 0 || objc_msgSend(v10, "hasPrefix:", @"("))
      {
        [objc_opt_class() _parseJoinMethodTitleAndFeatures:v10 state:*(a1 + 32)];
        goto LABEL_56;
      }

      goto LABEL_17;
    }

    if ([v10 isEqualToString:@"---===---"])
    {
      v27 = [CalVirtualConferenceJoinMethod alloc];
      v28 = [*(a1 + 32) joinMethodTitle];
      v29 = [*(a1 + 32) joinMethodURL];
      v30 = -[CalVirtualConferenceJoinMethod initWithTitle:URL:isBroadcast:](v27, "initWithTitle:URL:isBroadcast:", v28, v29, [*(a1 + 32) joinMethodIsBroadcast]);

      v31 = [*(a1 + 32) joinMethods];
      [v31 addObject:v30];

      [*(a1 + 32) setEndRange:{a5, a6}];
      [*(a1 + 32) setState:8];
      goto LABEL_43;
    }

    if (![v10 isEqualToString:&stru_1F379FFA8])
    {
      v35 = [objc_opt_class() calConferenceSerializationHandle];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      *buf = 0;
      v36 = "URL was not followed by the end delimiter or an empty string";
      goto LABEL_54;
    }

    v37 = [CalVirtualConferenceJoinMethod alloc];
    v38 = [*(a1 + 32) joinMethodTitle];
    v39 = [*(a1 + 32) joinMethodURL];
    v19 = -[CalVirtualConferenceJoinMethod initWithTitle:URL:isBroadcast:](v37, "initWithTitle:URL:isBroadcast:", v38, v39, [*(a1 + 32) joinMethodIsBroadcast]);

    v40 = [*(a1 + 32) joinMethods];
    [v40 addObject:v19];

    [*(a1 + 32) setState:5];
LABEL_51:

    goto LABEL_56;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      if (![v10 isEqualToString:&stru_1F379FFA8])
      {
        v35 = [objc_opt_class() calConferenceSerializationHandle];
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        *buf = 0;
        v36 = "Conference title was not followed by an empty line";
        goto LABEL_54;
      }

      v23 = *(a1 + 32);
      v24 = 5;
LABEL_32:
      [v23 setState:v24];
      goto LABEL_56;
    }

LABEL_17:
    [objc_opt_class() _parseURL:v10 state:*(a1 + 32)];
    goto LABEL_56;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_56;
    }

    [*(a1 + 32) setConferenceTitle:0];
    v14 = [v10 hasPrefix:@"["];
    v15 = objc_msgSend(v10, "hasPrefix:", @"(");
    if ((v14 & 1) == 0 && !v15)
    {
      goto LABEL_17;
    }

    v16 = *(*(*(a1 + 64) + 8) + 24) + 1;
    v17 = [MEMORY[0x1E695DF70] array];
    v18 = *(a1 + 48);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __51__CalAppleConferenceFormat_deserializeConferences___block_invoke_2;
    v43[3] = &unk_1E7EC6900;
    v19 = v17;
    v44 = v19;
    [v18 enumerateLinesUsingBlock:v43];
    if (v16 <= [(CalVirtualConferenceJoinMethod *)v19 count]- 1)
    {
      if (v14 && (-[CalVirtualConferenceJoinMethod objectAtIndexedSubscript:](v19, "objectAtIndexedSubscript:", v16), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 isEqualToString:&stru_1F379FFA8], v41, v42))
      {
        [objc_opt_class() _parseConferenceTitle:v10 state:*(a1 + 32)];
      }

      else
      {
        [objc_opt_class() _parseJoinMethodTitleAndFeatures:v10 state:*(a1 + 32)];
      }
    }

    else
    {
      v20 = [objc_opt_class() calConferenceSerializationHandle];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B990D000, v20, OS_LOG_TYPE_DEFAULT, "Input does not have enough lines to be a valid section", buf, 2u);
      }

      [*(a1 + 32) resetToNewSection];
    }

    goto LABEL_51;
  }

  *buf = 0;
  v46 = 0;
  v25 = objc_opt_class();
  v26 = [objc_opt_class() _startDelimiterRegex];
  LODWORD(v25) = [v25 _line:v10 matchesRegex:v26 outFoundRange:buf];

  if (v25)
  {
    [*(a1 + 32) setStartRange:{*buf + a3, v46}];
    [*(a1 + 32) setState:1];
    [objc_opt_class() _parseBlockTitle:v10 state:*(a1 + 32)];
  }

LABEL_56:
  ++*(*(*(a1 + 64) + 8) + 24);
}

+ (void)_parseURL:(id)l state:(id)state
{
  stateCopy = state;
  v7 = [MEMORY[0x1E695DFF8] URLWithString:l encodingInvalidCharacters:0];
  [stateCopy setJoinMethodURL:v7];

  joinMethodURL = [stateCopy joinMethodURL];

  if (joinMethodURL)
  {
    [stateCopy setState:4];
  }

  else
  {
    calConferenceSerializationHandle = [self calConferenceSerializationHandle];
    if (os_log_type_enabled(calConferenceSerializationHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B990D000, calConferenceSerializationHandle, OS_LOG_TYPE_DEFAULT, "Url was invalid when parsed from string", v10, 2u);
    }

    [stateCopy resetToNewSection];
  }
}

+ (void)_parseBlockTitle:(id)title state:(id)state
{
  titleCopy = title;
  stateCopy = state;
  _startDelimiterRegex = [self _startDelimiterRegex];
  v9 = [_startDelimiterRegex matchesInString:titleCopy options:0 range:{0, objc_msgSend(titleCopy, "length")}];

  if ([v9 count] == 1 && (objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "numberOfRanges"), v10, v11 == 2))
  {
    firstObject = [v9 firstObject];
    v13 = [firstObject rangeWithName:@"blockTitle"];
    v15 = [titleCopy substringWithRange:{v13, v14}];
    [stateCopy setBlockTitle:v15];
  }

  else
  {
    calConferenceSerializationHandle = [self calConferenceSerializationHandle];
    if (os_log_type_enabled(calConferenceSerializationHandle, OS_LOG_TYPE_ERROR))
    {
      [CalAppleConferenceFormat _parseBlockTitle:calConferenceSerializationHandle state:?];
    }

    [stateCopy setBlockTitle:&stru_1F379FFA8];
  }
}

+ (void)_parseConferenceTitle:(id)title state:(id)state
{
  titleCopy = title;
  stateCopy = state;
  _conferenceTitleRegex = [self _conferenceTitleRegex];
  v9 = [_conferenceTitleRegex matchesInString:titleCopy options:0 range:{0, objc_msgSend(titleCopy, "length")}];

  if ([v9 count] == 1 && (objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "numberOfRanges"), v10, v11 == 2))
  {
    firstObject = [v9 firstObject];
    v13 = [firstObject rangeWithName:@"title"];
    v15 = [titleCopy substringWithRange:{v13, v14}];
    [stateCopy setConferenceTitle:v15];

    [stateCopy setState:2];
  }

  else
  {
    calConferenceSerializationHandle = [self calConferenceSerializationHandle];
    if (os_log_type_enabled(calConferenceSerializationHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1B990D000, calConferenceSerializationHandle, OS_LOG_TYPE_DEFAULT, "Conference title didn't match title regex", v17, 2u);
    }

    [stateCopy resetToNewSection];
  }
}

+ (void)_parseJoinMethodTitleAndFeatures:(id)features state:(id)state
{
  v38 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  stateCopy = state;
  _joinMethodTitleAndFeaturesRegex = [self _joinMethodTitleAndFeaturesRegex];
  v9 = [_joinMethodTitleAndFeaturesRegex matchesInString:featuresCopy options:0 range:{0, objc_msgSend(featuresCopy, "length")}];

  if ([v9 count] == 1 && (objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "numberOfRanges"), v10, v11 > 1))
  {
    firstObject = [v9 firstObject];
    v14 = [firstObject rangeWithName:@"title"];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [featuresCopy substringWithRange:{v14, v15}];
      [stateCopy setJoinMethodTitle:v16];
    }

    v17 = [firstObject rangeWithName:@"features"];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [featuresCopy substringWithRange:{v17, v18}];
      [v19 componentsSeparatedByString:{@", "}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = v35 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v21)
      {
        v22 = v21;
        v30 = v19;
        v31 = stateCopy;
        v23 = *v33;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v33 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v32 + 1) + 8 * i);
            whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v27 = [v25 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

            v28 = [v27 caseInsensitiveCompare:@"Broadcast"];
            if (!v28)
            {
              v29 = 1;
              goto LABEL_19;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }

        v29 = 0;
LABEL_19:
        stateCopy = v31;
        v19 = v30;
      }

      else
      {
        v29 = 0;
      }

      [stateCopy setJoinMethodIsBroadcast:v29];
    }

    [stateCopy setState:3];
  }

  else
  {
    calConferenceSerializationHandle = [self calConferenceSerializationHandle];
    if (os_log_type_enabled(calConferenceSerializationHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B990D000, calConferenceSerializationHandle, OS_LOG_TYPE_DEFAULT, "Join method title/features didn't match regex", buf, 2u);
    }

    [stateCopy resetToNewSection];
  }
}

+ (id)_buildDeserializationResultFromState:(id)state
{
  stateCopy = state;
  conferenceDetails = [stateCopy conferenceDetails];
  v5 = [conferenceDetails componentsJoinedByString:@"\n"];

  conferenceDetails2 = [stateCopy conferenceDetails];
  [conferenceDetails2 removeAllObjects];

  if ([v5 isEqualToString:&stru_1F379FFA8])
  {

    v5 = 0;
  }

  v7 = [CalVirtualConference alloc];
  conferenceTitle = [stateCopy conferenceTitle];
  v9 = MEMORY[0x1E695DEC8];
  joinMethods = [stateCopy joinMethods];
  v11 = [v9 arrayWithArray:joinMethods];
  v12 = [(CalVirtualConference *)v7 initWithTitle:conferenceTitle joinMethods:v11 conferenceDetails:v5 source:0 isWritable:1];

  joinMethods2 = [stateCopy joinMethods];
  [joinMethods2 removeAllObjects];

  startRange = [stateCopy startRange];
  v16 = v15;
  v25.location = [stateCopy endRange];
  v25.length = v17;
  v24.location = startRange;
  v24.length = v16;
  v18 = NSUnionRange(v24, v25);
  v19 = [CalConferenceDeserializationResult alloc];
  blockTitle = [stateCopy blockTitle];
  v21 = [(CalConferenceDeserializationResult *)v19 initWithConference:v12 range:v18.location blockTitle:v18.length, blockTitle];

  [stateCopy setState:0];

  return v21;
}

+ (BOOL)_line:(id)_line matchesRegex:(id)regex outFoundRange:(_NSRange *)range
{
  regexCopy = regex;
  _lineCopy = _line;
  v9 = [regexCopy rangeOfFirstMatchInString:_lineCopy options:0 range:{0, objc_msgSend(_lineCopy, "length")}];
  v11 = v10;

  if (range)
  {
    range->location = v9;
    range->length = v11;
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL || v11 != 0;
}

+ (id)_joinMethodTitleAndFeaturesRegex
{
  if (_joinMethodTitleAndFeaturesRegex_onceToken != -1)
  {
    +[CalAppleConferenceFormat _joinMethodTitleAndFeaturesRegex];
  }

  v3 = _joinMethodTitleAndFeaturesRegex_regex;

  return v3;
}

uint64_t __60__CalAppleConferenceFormat__joinMethodTitleAndFeaturesRegex__block_invoke()
{
  _joinMethodTitleAndFeaturesRegex_regex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(?:\\[(?<title>.*)\\])? ?(?:\\((?<features>.+)\\))?$" options:16 error:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_conferenceTitleRegex
{
  if (_conferenceTitleRegex_onceToken != -1)
  {
    +[CalAppleConferenceFormat _conferenceTitleRegex];
  }

  v3 = _conferenceTitleRegex_regex;

  return v3;
}

uint64_t __49__CalAppleConferenceFormat__conferenceTitleRegex__block_invoke()
{
  _conferenceTitleRegex_regex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\[(?<title>.*)\\].*$" options:16 error:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_startDelimiterRegex
{
  if (_startDelimiterRegex_onceToken != -1)
  {
    +[CalAppleConferenceFormat _startDelimiterRegex];
  }

  v3 = _startDelimiterRegex_regex;

  return v3;
}

void __48__CalAppleConferenceFormat__startDelimiterRegex__block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = objc_msgSend(MEMORY[0x1E696AE70], "escapedPatternForString:", @"----( ");
  v2 = [MEMORY[0x1E696AE70] escapedPatternForString:@"----"]);
  v5 = [v0 stringWithFormat:@"%@(?<blockTitle>.*)%@$", v1, v2];

  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v5 options:16 error:0];
  v4 = _startDelimiterRegex_regex;
  _startDelimiterRegex_regex = v3;
}

+ (id)_detailsDelimiterRegex
{
  if (_detailsDelimiterRegex_onceToken != -1)
  {
    +[CalAppleConferenceFormat _detailsDelimiterRegex];
  }

  v3 = _detailsDelimiterRegex_regex;

  return v3;
}

void __50__CalAppleConferenceFormat__detailsDelimiterRegex__block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = objc_msgSend(MEMORY[0x1E696AE70], "escapedPatternForString:", @"---( ");
  v2 = [MEMORY[0x1E696AE70] escapedPatternForString:@"---"]);
  v5 = [v0 stringWithFormat:@"^%@.*%@$", v1, v2];

  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v5 options:16 error:0];
  v4 = _detailsDelimiterRegex_regex;
  _detailsDelimiterRegex_regex = v3;
}

@end