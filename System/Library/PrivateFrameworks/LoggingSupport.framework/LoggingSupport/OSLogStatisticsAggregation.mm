@interface OSLogStatisticsAggregation
+ (id)_labelFromProxy:(id)proxy forTier:(unsigned __int8)tier;
+ (id)_stringForTier:(unsigned __int8)tier;
- (NSString)tierString;
- (OSLogStatisticsAggregation)initWithLabel:(id)label tier:(unsigned __int8)tier;
- (OSLogStatisticsAggregation)initWithOSLogProxy:(id)proxy tier:(unsigned __int8)tier;
- (id)_descendingChildren;
- (id)_descriptionTierCap:(unsigned __int8)cap withDepth:(unint64_t)depth;
- (id)_dictRepresentation:(unsigned __int8)representation;
- (id)_tracePointSizeString;
- (id)aggregationForTier:(unsigned __int8)tier withLabel:(id)label;
- (id)aggregationsForTier:(unsigned __int8)tier;
- (id)jsonDescription:(unint64_t)description tierCap:(unsigned __int8)cap;
- (void)_addToChildren:(id)children;
- (void)_addTraceEvent:(id)event;
@end

@implementation OSLogStatisticsAggregation

- (id)aggregationForTier:(unsigned __int8)tier withLabel:(id)label
{
  tierCopy = tier;
  v20 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  [(OSLogStatisticsAggregation *)self aggregationsForTier:tierCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        label = [v11 label];
        v13 = [label isEqualToString:labelCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)aggregationsForTier:(unsigned __int8)tier
{
  tierCopy = tier;
  v20[1] = *MEMORY[0x277D85DE8];
  if ([(OSLogStatisticsAggregation *)self tier]<= tier)
  {
    if ([(OSLogStatisticsAggregation *)self tier]== tierCopy)
    {
      v20[0] = self;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      labelToChildTiers = [(OSLogStatisticsAggregation *)self labelToChildTiers];
      allValues = [labelToChildTiers allValues];

      v9 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(allValues);
            }

            v13 = [*(*(&v15 + 1) + 8 * i) aggregationsForTier:tierCopy];
            if (v13)
            {
              [array addObjectsFromArray:v13];
            }
          }

          v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }

      v5 = [array copy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_descriptionTierCap:(unsigned __int8)cap withDepth:(unint64_t)depth
{
  capCopy = cap;
  v27 = *MEMORY[0x277D85DE8];
  string = &stru_2841AD290;
  if ([(OSLogStatisticsAggregation *)self tier]<= cap)
  {
    string = [MEMORY[0x277CCAB68] string];
    if (depth)
    {
      v8 = 1;
      do
      {
        [(__CFString *)string appendString:@"  "];
        v9 = v8++;
      }

      while (v9 < depth);
    }

    label = [(OSLogStatisticsAggregation *)self label];
    _tracePointSizeString = [(OSLogStatisticsAggregation *)self _tracePointSizeString];
    eventCount = [(OSLogStatisticsAggregation *)self eventCount];
    eventCount2 = [(OSLogStatisticsAggregation *)self eventCount];
    v14 = @"s";
    if (eventCount2 <= 1)
    {
      v14 = &stru_2841AD290;
    }

    [(__CFString *)string appendFormat:@"%@: %@ (%llu event%@)\n", label, _tracePointSizeString, eventCount, v14];

    if ([(OSLogStatisticsAggregation *)self _childTier]<= capCopy)
    {
      _descendingChildren = [(OSLogStatisticsAggregation *)self _descendingChildren];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v16 = [_descendingChildren countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(_descendingChildren);
            }

            v20 = [*(*(&v22 + 1) + 8 * i) _descriptionTierCap:capCopy withDepth:depth + 1];
            [(__CFString *)string appendString:v20];
          }

          v17 = [_descendingChildren countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v17);
      }
    }
  }

  return string;
}

- (id)_tracePointSizeString
{
  v2 = MEMORY[0x277CCA8E8];
  eventBytes = [(OSLogStatisticsAggregation *)self eventBytes];

  return [v2 stringFromByteCount:eventBytes countStyle:0];
}

- (id)jsonDescription:(unint64_t)description tierCap:(unsigned __int8)cap
{
  v5 = [(OSLogStatisticsAggregation *)self _dictRepresentation:cap];
  if (v5)
  {
    v9 = 0;
    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:description error:&v9];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    }

    else
    {
      v7 = &stru_2841AD290;
    }
  }

  else
  {
    v7 = &stru_2841AD290;
  }

  return v7;
}

- (id)_dictRepresentation:(unsigned __int8)representation
{
  representationCopy = representation;
  v33[4] = *MEMORY[0x277D85DE8];
  if ([(OSLogStatisticsAggregation *)self tier]<= representation)
  {
    v32[0] = @"eventCount";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogStatisticsAggregation eventCount](self, "eventCount")}];
    v33[0] = v6;
    v32[1] = @"eventBytes";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSLogStatisticsAggregation eventBytes](self, "eventBytes")}];
    v33[1] = v7;
    v32[2] = @"tier";
    tierString = [(OSLogStatisticsAggregation *)self tierString];
    v33[2] = tierString;
    v32[3] = @"label";
    label = [(OSLogStatisticsAggregation *)self label];
    v33[3] = label;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
    v11 = [v10 mutableCopy];

    senderUUID = [(OSLogStatisticsAggregation *)self senderUUID];

    if (senderUUID)
    {
      senderUUID2 = [(OSLogStatisticsAggregation *)self senderUUID];
      uUIDString = [senderUUID2 UUIDString];
      [v11 setObject:uUIDString forKeyedSubscript:@"senderUUID"];

      senderOffset = [(OSLogStatisticsAggregation *)self senderOffset];
      [v11 setObject:senderOffset forKeyedSubscript:@"senderOffset"];
    }

    formatString = [(OSLogStatisticsAggregation *)self formatString];

    if (formatString)
    {
      formatString2 = [(OSLogStatisticsAggregation *)self formatString];
      [v11 setObject:formatString2 forKeyedSubscript:@"formatString"];
    }

    if ([(OSLogStatisticsAggregation *)self _childTier]<= representationCopy)
    {
      array = [MEMORY[0x277CBEB18] array];
      _descendingChildren = [(OSLogStatisticsAggregation *)self _descendingChildren];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = [_descendingChildren countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v28;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(_descendingChildren);
            }

            v24 = [*(*(&v27 + 1) + 8 * i) _dictRepresentation:representationCopy];
            if (v24)
            {
              [array addObject:v24];
            }
          }

          v21 = [_descendingChildren countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v21);
      }

      v25 = [array copy];
      [v11 setObject:v25 forKeyedSubscript:@"childAggregations"];
    }

    v5 = [v11 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_descendingChildren
{
  labelToChildTiers = [(OSLogStatisticsAggregation *)self labelToChildTiers];
  allValues = [labelToChildTiers allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_2600];

  return v4;
}

uint64_t __49__OSLogStatisticsAggregation__descendingChildren__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 eventBytes];
  if (v6 <= [v5 eventBytes])
  {
    v8 = [v4 eventBytes];
    v7 = v8 != [v5 eventBytes];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)_addTraceEvent:(id)event
{
  v11 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([(OSLogStatisticsAggregation *)self tier]>= 9)
  {
    v7 = 0;
    memset(v10, 0, sizeof(v10));
    v4 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v8 = 134217984;
    v9 = 0;
    _os_log_send_and_compose_impl(v5, &v7, v10, 80, &dword_22E01A000, v4, 16, "assertion failure: self.tier <= OSLogStatisticsAggregationTier_MAXIMUM -> %llu", &v8);
    _os_crash_msg();
    __break(1u);
  }

  [(OSLogStatisticsAggregation *)self setEventCount:[(OSLogStatisticsAggregation *)self eventCount]+ 1];
  -[OSLogStatisticsAggregation setEventBytes:](self, "setEventBytes:", -[OSLogStatisticsAggregation eventBytes](self, "eventBytes") + [eventCopy size]);
  if ([(OSLogStatisticsAggregation *)self tier]!= 8)
  {
    [(OSLogStatisticsAggregation *)self _addToChildren:eventCopy];
  }
}

- (void)_addToChildren:(id)children
{
  childrenCopy = children;
  _childTier = [(OSLogStatisticsAggregation *)self _childTier];
  v5 = [objc_opt_class() _labelFromProxy:childrenCopy forTier:_childTier];
  labelToChildTiers = [(OSLogStatisticsAggregation *)self labelToChildTiers];

  if (!labelToChildTiers)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    labelToChildTiers = self->_labelToChildTiers;
    self->_labelToChildTiers = dictionary;
  }

  labelToChildTiers2 = [(OSLogStatisticsAggregation *)self labelToChildTiers];
  v10 = [labelToChildTiers2 objectForKeyedSubscript:v5];

  if (!v10)
  {
    v10 = [[OSLogStatisticsAggregation alloc] initWithOSLogProxy:childrenCopy tier:_childTier];
    labelToChildTiers3 = [(OSLogStatisticsAggregation *)self labelToChildTiers];
    [labelToChildTiers3 setObject:v10 forKeyedSubscript:v5];
  }

  [(OSLogStatisticsAggregation *)v10 _addTraceEvent:childrenCopy];
}

- (OSLogStatisticsAggregation)initWithOSLogProxy:(id)proxy tier:(unsigned __int8)tier
{
  tierCopy = tier;
  proxyCopy = proxy;
  v7 = [objc_opt_class() _labelFromProxy:proxyCopy forTier:tierCopy];
  v8 = [(OSLogStatisticsAggregation *)self initWithLabel:v7 tier:tierCopy];
  if (!v8)
  {
    goto LABEL_10;
  }

  switch(tierCopy)
  {
    case 3:
      processImageUUID = [proxyCopy processImageUUID];
      goto LABEL_8;
    case 4:
      processImageUUID = [proxyCopy senderImageUUID];
LABEL_8:
      formatString = processImageUUID;
      v15 = 56;
      goto LABEL_9;
    case 8:
      senderImageUUID = [proxyCopy senderImageUUID];
      v10 = [senderImageUUID copy];
      senderUUID = v8->_senderUUID;
      v8->_senderUUID = v10;

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "senderImageOffset")}];
      senderOffset = v8->_senderOffset;
      v8->_senderOffset = v12;

      formatString = [proxyCopy formatString];
      v15 = 40;
LABEL_9:
      v17 = [formatString copy];
      v18 = *(&v8->super.isa + v15);
      *(&v8->super.isa + v15) = v17;

      break;
  }

LABEL_10:

  return v8;
}

- (OSLogStatisticsAggregation)initWithLabel:(id)label tier:(unsigned __int8)tier
{
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = OSLogStatisticsAggregation;
  v8 = [(OSLogStatisticsAggregation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_label, label);
    v9->_tier = tier;
  }

  return v9;
}

- (NSString)tierString
{
  v3 = objc_opt_class();
  tier = self->_tier;

  return [v3 _stringForTier:tier];
}

+ (id)_labelFromProxy:(id)proxy forTier:(unsigned __int8)tier
{
  tierCopy = tier;
  proxyCopy = proxy;
  v6 = proxyCopy;
  if (tierCopy <= 3)
  {
    if (tierCopy <= 1)
    {
      if (!tierCopy)
      {
        v13 = 0;
        goto LABEL_26;
      }

      if (tierCopy == 1)
      {
        v13 = @"All";
        goto LABEL_26;
      }

LABEL_32:
      v13 = &stru_2841AD290;
      goto LABEL_26;
    }

    if (tierCopy == 2)
    {
      if ([proxyCopy type] == 1536)
      {
        v13 = @"os_signpost";
      }

      else if ([v6 type] == 1024)
      {
        v13 = @"os_log";
      }

      else
      {
        v13 = @"Unexpected";
      }

      goto LABEL_26;
    }

    process = [proxyCopy process];
LABEL_22:
    v8 = process;
    v15 = @"Unknown";
    if (process)
    {
      v15 = process;
    }

    v13 = v15;
    goto LABEL_25;
  }

  if (tierCopy <= 5)
  {
    if (tierCopy == 4)
    {
      [proxyCopy sender];
    }

    else
    {
      [proxyCopy subsystem];
    }
    process = ;
    goto LABEL_22;
  }

  if (tierCopy == 6)
  {
    process = [proxyCopy category];
    goto LABEL_22;
  }

  if (tierCopy != 7)
  {
    if (tierCopy == 8)
    {
      senderImageUUID = [proxyCopy senderImageUUID];
      v8 = [senderImageUUID copy];

      if (v8)
      {
        v9 = MEMORY[0x277CCACA8];
        uUIDString = [v8 UUIDString];
        senderImageOffset = [v6 senderImageOffset];
        formatString = [v6 formatString];
        v13 = [v9 stringWithFormat:@"%@ + %llu : %@", uUIDString, senderImageOffset, formatString];
      }

      else
      {
        v13 = @"<Unknown>";
      }

LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if ([proxyCopy type] == 1536)
  {
    signpostType = [v6 signpostType];
    if (signpostType <= 2)
    {
      v13 = off_2787AE7B0[signpostType];
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  if ([v6 type] != 1024)
  {
LABEL_46:
    v13 = @"Unexpected";
    goto LABEL_26;
  }

  logType = [v6 logType];
  if (logType <= 1)
  {
    if (logType)
    {
      if (logType == 1)
      {
        v13 = @"Info";
        goto LABEL_26;
      }

      goto LABEL_46;
    }

    v13 = @"Default";
  }

  else
  {
    switch(logType)
    {
      case 2:
        v13 = @"Debug";
        break;
      case 16:
        v13 = @"Error";
        break;
      case 17:
        v13 = @"Fault";
        break;
      default:
        goto LABEL_46;
    }
  }

LABEL_26:

  return v13;
}

+ (id)_stringForTier:(unsigned __int8)tier
{
  if (tier > 8u)
  {
    return @"Unexpected";
  }

  else
  {
    return off_2787AE768[tier];
  }
}

@end