@interface SGEvent
+ (SGEvent)eventWithRecordId:(id)id origin:(id)origin uniqueKey:(id)key opaqueKey:(id)opaqueKey title:(id)title notes:(id)notes start:(id)start startTimeZone:(id)self0 end:(id)self1 endTimeZone:(id)self2 isAllDay:(BOOL)self3 creationDate:(id)self4 lastModifiedDate:(id)self5 locations:(id)self6 tags:(id)self7 URL:(id)self8;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEvent:(id)event;
- (BOOL)isNaturalLanguageEvent;
- (BOOL)shouldAllowNotificationsInCalendarForBundleId:(id)id appIsInForeground:(BOOL)foreground allowListOverride:(id)override;
- (BOOL)shouldAllowNotificationsInCalendarWithAllowListOverride:(id)override;
- (SGEvent)initWithCoder:(id)coder;
- (SGEvent)initWithRecordId:(id)id origin:(id)origin uniqueKey:(id)key opaqueKey:(id)opaqueKey title:(id)title notes:(id)notes start:(id)start startTimeZone:(id)self0 end:(id)self1 endTimeZone:(id)self2 isAllDay:(BOOL)self3 creationDate:(id)self4 lastModifiedDate:(id)self5 locations:(id)self6 tagStrings:(id)self7 URL:(id)self8 naturalLanguageEventIdentifier:(id)self9 naturalLanguageEventAttributes:(unint64_t)attributes schemaOrg:(id)org;
- (SGEvent)initWithRecordId:(id)id origin:(id)origin uniqueKey:(id)key opaqueKey:(id)opaqueKey title:(id)title notes:(id)notes start:(id)start startTimeZone:(id)self0 end:(id)self1 endTimeZone:(id)self2 isAllDay:(BOOL)self3 creationDate:(id)self4 lastModifiedDate:(id)self5 locations:(id)self6 tags:(id)self7 URL:(id)self8;
- (double)duration;
- (id)_componentsForDate:(id)date timeZone:(id)zone isEnd:(BOOL)end calendar:(id)calendar;
- (id)_naturalLanguageEventTagsInTags:(id)tags;
- (id)dateForUTCDate:(id)date withTimeZone:(id)zone;
- (id)endDateComponents;
- (id)firstLocationForType:(unint64_t)type;
- (id)geocodedEventWithStartDate:(id)date startTimeZone:(id)zone endDate:(id)endDate endTimeZone:(id)timeZone locations:(id)locations;
- (id)loggingIdentifier;
- (id)poiFilters;
- (id)startDateComponents;
- (id)toEKEventWithStore:(id)store;
- (int64_t)ekEventAvailabilityState;
- (unint64_t)geocodingMode;
- (void)_applyTimeRangeToEKEvent:(id)event withTZID:(id)d;
- (void)_mergeTagsIntoEKEvent:(id)event withStore:(id)store;
- (void)encodeWithCoder:(id)coder;
- (void)mergeIntoEKEvent:(id)event;
- (void)mergeIntoEKEvent:(id)event withStore:(id)store preservingValuesDifferentFrom:(id)from;
- (void)setAttributeSetForEvent:(id)event;
@end

@implementation SGEvent

- (void)setAttributeSetForEvent:(id)event
{
  self->_attributeSetForEvent = [event copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)loggingIdentifier
{
  p_opaqueKey = &self->_opaqueKey;
  if (self->_opaqueKey || (p_opaqueKey = &self->_uniqueKey, self->_uniqueKey))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu", -[NSString hash](*p_opaqueKey, "hash")];
  }

  else
  {
    v3 = &stru_1F385B250;
  }

  if ([(__CFString *)v3 length]> 0xC)
  {
    v4 = [(__CFString *)v3 substringWithRange:0, 12];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)_naturalLanguageEventTagsInTags:(id)tags
{
  v22 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [tagsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    longLongValue = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(tagsCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isNaturalLanguageEventTypeIdentifier])
        {
          value = [v10 value];

          v6 = value;
        }

        if ([v10 isNaturalLanguageEventAttributes])
        {
          value2 = [v10 value];
          longLongValue = [value2 longLongValue];
        }
      }

      v5 = [tagsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    longLongValue = 0;
  }

  v13 = MEMORY[0x1E69C5D98];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:longLongValue];
  v15 = [v13 tupleWithFirst:v6 second:v14];

  return v15;
}

- (BOOL)isNaturalLanguageEvent
{
  tags = self->_tags;
  v3 = +[SGEntityTag naturalLanguageEvent];
  name = [v3 name];
  LOBYTE(tags) = [(NSArray *)tags containsObject:name];

  return tags;
}

- (id)geocodedEventWithStartDate:(id)date startTimeZone:(id)zone endDate:(id)endDate endTimeZone:(id)timeZone locations:(id)locations
{
  locationsCopy = locations;
  timeZoneCopy = timeZone;
  endDateCopy = endDate;
  zoneCopy = zone;
  dateCopy = date;
  v27 = [SGEvent alloc];
  recordId = [(SGObject *)self recordId];
  origin = [(SGObject *)self origin];
  uniqueKey = self->_uniqueKey;
  v25 = origin;
  opaqueKey = self->_opaqueKey;
  title = self->_title;
  notes = self->_notes;
  LOBYTE(zone) = self->_isAllDay;
  creationDate = self->_creationDate;
  lastModifiedDate = self->_lastModifiedDate;
  tags = self->_tags;
  v19 = [(SGEvent *)self URL];
  LOBYTE(v22) = zone;
  v20 = [(SGEvent *)v27 initWithRecordId:recordId origin:v25 uniqueKey:uniqueKey opaqueKey:opaqueKey title:title notes:notes start:dateCopy startTimeZone:zoneCopy end:endDateCopy endTimeZone:timeZoneCopy isAllDay:v22 creationDate:creationDate lastModifiedDate:lastModifiedDate locations:locationsCopy tagStrings:tags URL:v19 naturalLanguageEventIdentifier:self->_naturalLanguageEventTypeIdentifier naturalLanguageEventAttributes:self->_naturalLanguageEventAttributes schemaOrg:self->_schemaOrg];

  return v20;
}

- (id)poiFilters
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_tags;
  value = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (value)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [SGEntityTag resolveName:*(*(&v8 + 1) + 8 * i), v8];
        if ([v6 isPOIFilters])
        {
          value = [v6 value];

          goto LABEL_11;
        }
      }

      value = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return value;
}

- (unint64_t)geocodingMode
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = self->_tags;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  v5 = *v17;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [SGEntityTag resolveName:*(*(&v16 + 1) + 8 * i), v16];
      v8 = +[SGEntityTag geocodingModeAddressOnly];
      v9 = [v7 isEqualToEntityTag:v8];

      if (v9)
      {
        v14 = 1;
LABEL_15:

        goto LABEL_17;
      }

      v10 = +[SGEntityTag geocodingModePOIOnly];
      v11 = [v7 isEqualToEntityTag:v10];

      if (v11)
      {
        v14 = 2;
        goto LABEL_15;
      }

      v12 = +[SGEntityTag geocodingModeAddressThenPOI];
      v13 = [v7 isEqualToEntityTag:v12];

      if (v13)
      {
        v14 = 3;
        goto LABEL_17;
      }
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    v14 = 0;
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_17:

  return v14;
}

- (id)firstLocationForType:(unint64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_locations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 locationType] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)mergeIntoEKEvent:(id)event withStore:(id)store preservingValuesDifferentFrom:(id)from
{
  v193[2] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  storeCopy = store;
  fromCopy = from;
  v12 = [fromCopy objectForKeyedSubscript:@"summary"];
  if (!v12 || ([eventCopy title], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v14))
  {
    [eventCopy setTitle:self->_title];
  }

  v15 = [fromCopy objectForKeyedSubscript:@"description"];
  if (!v15 || ([eventCopy notes], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v17))
  {
    [eventCopy setNotes:self->_notes];
  }

  v18 = objc_opt_new();
  date = [MEMORY[0x1E695DF00] date];
  [v18 addObject:date];

  if (self->_creationDate)
  {
    [v18 addObject:?];
  }

  v20 = [v18 sortedArrayUsingSelector:sel_compare_];
  firstObject = [v20 firstObject];

  v175 = firstObject;
  [eventCopy setCreationDate:firstObject];
  [eventCopy setLastModifiedDate:self->_lastModifiedDate];
  origin = [(SGObject *)self origin];
  v177 = v15;
  v178 = v12;
  v176 = v18;
  if ([origin type] == 1)
  {
    goto LABEL_14;
  }

  origin2 = [(SGObject *)self origin];
  if ([origin2 type] == 4)
  {
    goto LABEL_13;
  }

  origin3 = [(SGObject *)self origin];
  if ([origin3 type] == 6)
  {

LABEL_13:
LABEL_14:

    goto LABEL_15;
  }

  [(SGObject *)self origin];
  v162 = v161 = self;
  if ([v162 type] == 5)
  {

    self = v161;
    goto LABEL_14;
  }

  origin4 = [(SGObject *)v161 origin];
  v172 = fromCopy;
  type = [origin4 type];

  v165 = type == 7;
  fromCopy = v172;
  self = v161;
  if (!v165)
  {
    origin = [MEMORY[0x1E696AAA8] currentHandler];
    [origin handleFailureInMethod:a2 object:v161 file:@"SGEvent.m" lineNumber:534 description:{@"Suggested events can only come from Mail, Messages, Safari, Interactions or schema.org"}];
    goto LABEL_14;
  }

LABEL_15:
  origin5 = [(SGObject *)self origin];
  if ([origin5 type] == 1)
  {
  }

  else
  {
    origin6 = [(SGObject *)self origin];
    type2 = [origin6 type];

    if (type2 != 4)
    {
      goto LABEL_29;
    }
  }

  v28 = [(SGEvent *)self URL];
  selfCopy = self;
  if (!v28 || (v30 = v28, -[SGEvent tags](self, "tags"), v31 = objc_claimAutoreleasedReturnValue(), +[SGEntityTag fromCalendarAttachment](SGEntityTag, "fromCalendarAttachment"), v32 = objc_claimAutoreleasedReturnValue(), [v32 name], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v31, "containsObject:", v33), v33, v32, v31, v30, !v34))
  {
    origin7 = [(SGObject *)selfCopy origin];
    self = selfCopy;
    if ([origin7 type] == 1)
    {
      opaqueKey = selfCopy->_opaqueKey;

      if (opaqueKey)
      {
        origin8 = [(SGObject *)selfCopy origin];
        externalKey = [origin8 externalKey];
        v39 = [SGEKEventConversions urlForEKEventFromMailMessageWithId:externalKey sentAt:selfCopy->_creationDate opaqueKey:selfCopy->_opaqueKey];
LABEL_27:
        v42 = v39;
        [eventCopy setURL:v39];

        goto LABEL_28;
      }
    }

    else
    {
    }

    origin9 = [(SGObject *)selfCopy origin];
    type3 = [origin9 type];

    if (type3 != 4)
    {
      goto LABEL_29;
    }

    origin8 = [(SGObject *)selfCopy origin];
    externalKey = [origin8 externalKey];
    v39 = [SGEKEventConversions urlForEKEventFromTextMessageWithUniqueIdentifier:externalKey];
    goto LABEL_27;
  }

  origin8 = [(SGEvent *)selfCopy URL];
  [eventCopy setURL:origin8];
  self = selfCopy;
LABEL_28:

LABEL_29:
  v43 = [(SGEvent *)self firstLocationForType:0];
  selfCopy2 = self;
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = [(SGEvent *)self firstLocationForType:2];

    if (!v44)
    {
      goto LABEL_49;
    }
  }

  if (([v44 isGeocoded] & 1) == 0)
  {
    handle = [v44 handle];

    if (!handle)
    {
      label = [v44 label];
      if (label)
      {
        v151 = label;
        address = [v44 address];
        if (address)
        {
          v153 = address;
          label2 = [v44 label];
          address2 = [v44 address];
          v156 = [label2 isEqualToString:address2];

          if ((v156 & 1) == 0)
          {
            label3 = [v44 label];
            v193[0] = label3;
            address3 = [v44 address];
            v193[1] = address3;
            v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:2];
            v160 = [v159 _pas_componentsJoinedByString:@"\n"];
            [eventCopy setLocation:v160];

            self = selfCopy2;
            goto LABEL_49;
          }
        }

        else
        {
        }
      }

      address4 = [v44 address];
      if ([address4 length])
      {

        self = selfCopy2;
      }

      else
      {
        label4 = [v44 label];
        v168 = [label4 length];

        self = selfCopy2;
        if (!v168)
        {
          goto LABEL_49;
        }
      }

      address5 = [v44 address];
      if (address5)
      {
        [eventCopy setLocation:address5];
        goto LABEL_48;
      }

      label5 = [v44 label];
      [eventCopy setLocation:label5];
LABEL_47:

LABEL_48:
      goto LABEL_49;
    }
  }

  label6 = [v44 label];
  if (label6)
  {
    [eventCopy setLocation:label6];
  }

  else
  {
    address6 = [v44 address];
    [eventCopy setLocation:address6];
  }

  v48 = SGWeakLinkClass(@"EKStructuredLocation", 0);
  label7 = [v44 label];
  address7 = label7;
  if (!label7)
  {
    address7 = [v44 address];
  }

  v51 = [(objc_class *)v48 locationWithTitle:address7];
  [eventCopy setStructuredLocation:v51];

  if (!label7)
  {
  }

  address8 = [v44 address];

  if (address8)
  {
    address9 = [v44 address];
    structuredLocation = [eventCopy structuredLocation];
    [structuredLocation setAddress:address9];
  }

  if ([v44 isGeocoded])
  {
    v55 = objc_alloc(MEMORY[0x1E6985C40]);
    [v44 latitude];
    v57 = v56;
    [v44 longitude];
    v59 = [v55 initWithLatitude:v57 longitude:v58];
    structuredLocation2 = [eventCopy structuredLocation];
    [structuredLocation2 setGeoLocation:v59];
  }

  handle2 = [v44 handle];

  if (handle2)
  {
    address5 = [v44 handle];
    label5 = [eventCopy structuredLocation];
    [label5 setMapKitHandle:address5];
    goto LABEL_47;
  }

LABEL_49:
  v64 = [(SGEvent *)self firstLocationForType:3];
  v65 = v64;
  if (v64)
  {
    if (([v64 isGeocoded] & 1) != 0 || (objc_msgSend(v65, "handle"), v66 = objc_claimAutoreleasedReturnValue(), v66, v66))
    {
      v67 = SGWeakLinkClass(@"EKStructuredLocation", 0);
      label8 = [v65 label];
      address10 = label8;
      if (!label8)
      {
        address10 = [v65 address];
      }

      v70 = [(objc_class *)v67 locationWithTitle:address10];
      [eventCopy setEndLocation:v70];

      if (!label8)
      {
      }

      address11 = [v65 address];

      if (address11)
      {
        address12 = [v65 address];
        endLocation = [eventCopy endLocation];
        [endLocation setAddress:address12];
      }

      if ([v65 isGeocoded])
      {
        v74 = objc_alloc(MEMORY[0x1E6985C40]);
        [v65 latitude];
        v76 = v75;
        [v65 longitude];
        v78 = [v74 initWithLatitude:v76 longitude:v77];
        endLocation2 = [eventCopy endLocation];
        [endLocation2 setGeoLocation:v78];
      }

      handle3 = [v65 handle];

      if (handle3)
      {
        handle4 = [v65 handle];
        endLocation3 = [eventCopy endLocation];
        [endLocation3 setMapKitHandle:handle4];
      }
    }
  }

  v174 = v44;
  tags = self->_tags;
  v84 = +[SGEntityTag extractedFlight];
  name = [v84 name];
  LODWORD(tags) = [(NSArray *)tags containsObject:name];

  if (tags)
  {
    [eventCopy setTravelAdvisoryBehavior:2];
  }

  v86 = self->_tags;
  v87 = +[SGEntityTag fromSync];
  name2 = [v87 name];
  LODWORD(v86) = [(NSArray *)v86 containsObject:name2];

  if (v86)
  {
    [eventCopy setLocalCustomObject:MEMORY[0x1E695E118] forKey:@"EKEventSuggestedEventSavedFromSyncKey"];
  }

  ekEventAvailabilityState = [(SGEvent *)self ekEventAvailabilityState];
  v90 = sgEventsLogHandle();
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v192 = ekEventAvailabilityState;
    _os_log_debug_impl(&dword_1BA729000, v90, OS_LOG_TYPE_DEBUG, "EKEvent Availability: %ld", buf, 0xCu);
  }

  v173 = v65;

  v91 = [MEMORY[0x1E696AD98] numberWithInteger:ekEventAvailabilityState];
  [eventCopy setLocalCustomObject:v91 forKey:@"EKEventAvailabilityState"];

  schemaOrg = self->_schemaOrg;
  if (schemaOrg)
  {
    [eventCopy setCustomObject:schemaOrg forKey:@"SuggestionsSchemaOrg"];
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v93 = self->_tags;
  v94 = [(NSArray *)v93 countByEnumeratingWithState:&v185 objects:v190 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v186;
    while (2)
    {
      for (i = 0; i != v95; ++i)
      {
        if (*v186 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v98 = [SGEntityTag resolveName:*(*(&v185 + 1) + 8 * i)];
        if ([v98 isEventMetadata])
        {
          eventMetadata = [v98 eventMetadata];
          if (eventMetadata)
          {
            [eventCopy setCustomObject:eventMetadata forKey:@"SGEventMetadataKey"];
          }

          self = selfCopy2;
          goto LABEL_82;
        }
      }

      v95 = [(NSArray *)v93 countByEnumeratingWithState:&v185 objects:v190 count:16];
      self = selfCopy2;
      if (v95)
      {
        continue;
      }

      break;
    }
  }

LABEL_82:

  if ([(SGEvent *)self isNaturalLanguageEvent])
  {
    v170 = eventCopy;
    v171 = fromCopy;
    v169 = storeCopy;
    v180 = objc_opt_new();
    v100 = objc_opt_new();
    [v100 setObject:self->_naturalLanguageEventTypeIdentifier forKeyedSubscript:@"SuggestionsNLEventDictionaryEventTypeKey"];
    v101 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_naturalLanguageEventAttributes];
    [v100 setObject:v101 forKeyedSubscript:@"SuggestionsNLEventDictionaryEventAttributesKey"];

    v102 = MEMORY[0x1E696AD98];
    v103 = self->_tags;
    v104 = 0x1E7EFA000uLL;
    v105 = +[SGEntityTag significantSender];
    name3 = [v105 name];
    v107 = [v102 numberWithBool:{-[NSArray containsObject:](v103, "containsObject:", name3)}];
    [v100 setObject:v107 forKeyedSubscript:@"SuggestionsNLEventDictionaryEventSignificantSenderKey"];

    v108 = selfCopy2->_tags;
    v109 = +[SGEntityTag titleGeneratedFromTemplate];
    name4 = [v109 name];
    LOBYTE(v108) = [(NSArray *)v108 containsObject:name4];

    if (v108)
    {
      v111 = kSuggestionsEkEventNLEventDictionaryEventTitleSourceTemplateValue;
    }

    else
    {
      v112 = selfCopy2->_tags;
      v113 = +[SGEntityTag titleGeneratedFromSubject];
      name5 = [v113 name];
      LODWORD(v112) = [(NSArray *)v112 containsObject:name5];

      if (!v112)
      {
LABEL_88:
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v115 = selfCopy2->_tags;
        v116 = [(NSArray *)v115 countByEnumeratingWithState:&v181 objects:v189 count:16];
        if (!v116)
        {
          goto LABEL_112;
        }

        v117 = v116;
        v118 = *v182;
        while (1)
        {
          v119 = 0;
          do
          {
            if (*v182 != v118)
            {
              objc_enumerationMutation(v115);
            }

            v120 = [*(v104 + 1224) resolveName:{*(*(&v181 + 1) + 8 * v119), v169}];
            if ([v120 isConfidenceScore])
            {
              v121 = MEMORY[0x1E696AD98];
              value = [v120 value];
              [value doubleValue];
              v123 = [v121 numberWithDouble:?];
              v124 = v100;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryEventConfidenceScoreKey";
              goto LABEL_97;
            }

            if ([v120 isParticipantCount])
            {
              v127 = MEMORY[0x1E696AD98];
              value = [v120 value];
              v123 = [v127 numberWithInteger:{objc_msgSend(value, "integerValue")}];
              v124 = v100;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryEventParticipantCountKey";
              goto LABEL_97;
            }

            if ([v120 isNaturalLanguageEventLanguageID])
            {
              value = [v120 value];
              [v100 setObject:value forKeyedSubscript:@"SuggestionsNLEventDictionaryEventLanguageIDKey"];
              goto LABEL_98;
            }

            if ([v120 isCalendarAppUsageLevel])
            {
              v128 = MEMORY[0x1E696AD98];
              value = [v120 value];
              [value floatValue];
              v123 = [v128 numberWithFloat:?];
              v124 = v180;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryCalendarAppUsageLevelKey";
              goto LABEL_97;
            }

            if ([v120 isMailAppUsageLevel])
            {
              v129 = MEMORY[0x1E696AD98];
              value = [v120 value];
              v123 = [v129 numberWithInteger:{objc_msgSend(value, "integerValue")}];
              v124 = v180;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryMailAppUsageLevelKey";
              goto LABEL_97;
            }

            if ([v120 isMessagesAppUsageLevel])
            {
              v130 = MEMORY[0x1E696AD98];
              value = [v120 value];
              v123 = [v130 numberWithInteger:{objc_msgSend(value, "integerValue")}];
              v124 = v180;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryMessagesAppUsageLevelKey";
              goto LABEL_97;
            }

            if ([v120 isUsedBubblesCount])
            {
              v131 = MEMORY[0x1E696AD98];
              value = [v120 value];
              v123 = [v131 numberWithInteger:{objc_msgSend(value, "integerValue")}];
              v124 = v180;
              v125 = v123;
              v126 = @"SuggestionsNLEventDictionaryEventUsedBubblesCountKey";
LABEL_97:
              [v124 setObject:v125 forKeyedSubscript:v126];

              v104 = 0x1E7EFA000;
LABEL_98:
            }

            ++v119;
          }

          while (v117 != v119);
          v132 = [(NSArray *)v115 countByEnumeratingWithState:&v181 objects:v189 count:16];
          v117 = v132;
          if (!v132)
          {
LABEL_112:

            v133 = [v180 copy];
            eventCopy = v170;
            [v170 setLocalCustomObject:v133 forKey:@"SuggestionsNLEventDictionaryKey"];

            v134 = [v100 copy];
            [v170 setCustomObject:v134 forKey:@"SuggestionsNLEventDictionaryKey"];

            storeCopy = v169;
            fromCopy = v171;
            self = selfCopy2;
            goto LABEL_113;
          }
        }
      }

      v111 = kSuggestionsEkEventNLEventDictionaryEventTitleSourceSubjectValue;
    }

    [v100 setObject:*v111 forKeyedSubscript:{@"SuggestionsNLEventDictionaryEventTitleSourceKey", storeCopy}];
    goto LABEL_88;
  }

LABEL_113:
  origin10 = [(SGObject *)self origin];
  bundleId = [origin10 bundleId];
  [eventCopy setLocalCustomObject:bundleId forKey:@"SuggestionsOriginBundleId"];

  origin11 = [(SGObject *)self origin];
  fromPerson = [origin11 fromPerson];
  displayName = [fromPerson displayName];
  [eventCopy setLocalCustomObject:displayName forKey:@"SuggestionsOriginDisplayName"];

  v140 = objc_alloc(SGWeakLinkClass(@"EKSuggestedEventInfo", 0));
  v141 = self->_opaqueKey;
  uniqueKey = self->_uniqueKey;
  origin12 = [(SGObject *)self origin];
  [origin12 externalKey];
  v145 = v144 = self;
  v146 = [v140 initWithEventStore:storeCopy opaqueKey:v141 uniqueKey:uniqueKey extractionGroupIdentifier:v145];

  [eventCopy setSuggestionInfo:v146];
  [(NSDate *)v144->_creationDate timeIntervalSince1970];
  v148 = v147;
  suggestionInfo = [eventCopy suggestionInfo];
  [suggestionInfo setTimestamp:v148];

  [(SGEvent *)v144 _mergeTagsIntoEKEvent:eventCopy withStore:storeCopy];
}

- (void)_mergeTagsIntoEKEvent:(id)event withStore:(id)store
{
  v23 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  storeCopy = store;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  tags = [(SGEvent *)self tags];
  v7 = [tags countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(tags);
        }

        v12 = [SGEntityTag resolveName:*(*(&v18 + 1) + 8 * i)];
        name = [v12 name];
        v14 = [name hasPrefix:@"TZID"];

        if (v14)
        {
          value = [v12 value];

          v9 = value;
        }
      }

      v8 = [tags countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [(SGEvent *)self _applyTimeRangeToEKEvent:eventCopy withTZID:v9];
}

- (void)_applyTimeRangeToEKEvent:(id)event withTZID:(id)d
{
  dCopy = d;
  v6 = MEMORY[0x1E695DEE8];
  v7 = *MEMORY[0x1E695D850];
  eventCopy = event;
  v9 = [v6 calendarWithIdentifier:v7];
  v10 = [dCopy isEqualToString:@"floating"];
  if (dCopy && (v10 & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DFE8] timeZoneWithName:dCopy];
LABEL_6:
    v12 = v11;
    v13 = v12;
    endTimeZone = v12;
    goto LABEL_7;
  }

  if (dCopy)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v12 = self->_startTimeZone;
  v13 = 0;
  endTimeZone = self->_endTimeZone;
LABEL_7:
  start = self->_start;
  v16 = endTimeZone;
  v17 = [(SGEvent *)self _componentsForDate:start timeZone:v12 isEnd:0 calendar:v9];
  v18 = [(SGEvent *)self _componentsForDate:self->_end timeZone:v16 isEnd:1 calendar:v9];

  v19 = [SGSimpleTimeRange rangeWithGregorianStartComponents:v17 endComponents:v18];
  [v19 applyToEKEvent:eventCopy isAllDay:-[SGEvent isAllDay](self isFloating:{"isAllDay"), v10}];
}

- (BOOL)shouldAllowNotificationsInCalendarForBundleId:(id)id appIsInForeground:(BOOL)foreground allowListOverride:(id)override
{
  v53[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  overrideCopy = override;
  if ([(SGEvent *)self isNaturalLanguageEvent])
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Not allowing notification for NL event.";
LABEL_8:
      _os_log_impl(&dword_1BA729000, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (!idCopy || [idCopy isEqualToString:&stru_1F385B250])
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Not allowing notification for event without bundleid";
      goto LABEL_8;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  if (!foreground)
  {
    v10 = sgLogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Not allowing notification for app not in foreground.";
    goto LABEL_8;
  }

  lowercaseString = [@"com.apple.MobileSMS" lowercaseString];
  v53[0] = lowercaseString;
  lowercaseString2 = [@"com.apple.mobilemail" lowercaseString];
  v53[1] = lowercaseString2;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];

  v39 = overrideCopy;
  v40 = idCopy;
  if (overrideCopy)
  {
    v10 = [v16 mutableCopy];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = overrideCopy;
    v18 = [v17 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v47;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v46 + 1) + 8 * i);
          lowercaseString3 = [v22 lowercaseString];
          v24 = [v16 containsObject:lowercaseString3];

          if (v24)
          {
            lowercaseString4 = [v22 lowercaseString];
            [v10 removeObject:lowercaseString4];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v19);
    }

    idCopy = v40;
  }

  else
  {
    v10 = v16;
  }

  lowercaseString5 = [idCopy lowercaseString];
  v27 = [v10 containsObject:lowercaseString5];

  if (v27)
  {
    v28 = sgLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v28, OS_LOG_TYPE_INFO, "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Not allowing notification from excluded bundleId.", buf, 2u);
    }

    v12 = 0;
    overrideCopy = v39;
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [(SGEvent *)self tags];
    v29 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v43;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v43 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = [SGEntityTag resolveName:*(*(&v42 + 1) + 8 * j)];
          name = [v33 name];
          v35 = +[SGEntityTag fromSync];
          name2 = [v35 name];
          v37 = [name isEqualToString:name2];

          if (v37)
          {
            v38 = sgLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1BA729000, v38, OS_LOG_TYPE_INFO, "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Not allowing notification from synced event.", buf, 2u);
            }

            v12 = 0;
            overrideCopy = v39;
            idCopy = v40;
            v28 = obj;
            goto LABEL_44;
          }
        }

        v30 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v28 = sgLogHandle();
    v12 = 1;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v28, OS_LOG_TYPE_INFO, "SGEvent-shouldAllowNotificationsInCalendarForBundleId: Allowing notification.", buf, 2u);
    }

    overrideCopy = v39;
    idCopy = v40;
  }

LABEL_44:

LABEL_10:
  return v12;
}

- (BOOL)shouldAllowNotificationsInCalendarWithAllowListOverride:(id)override
{
  overrideCopy = override;
  origin = [(SGObject *)self origin];
  bundleId = [origin bundleId];

  if (bundleId && ![bundleId isEqualToString:&stru_1F385B250])
  {
    v7 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:bundleId];
    v16 = 0;
    v9 = [MEMORY[0x1E69C75D0] handleForPredicate:v7 error:&v16];
    v10 = v9;
    if (!v9 || v16)
    {
      currentState = sgLogHandle();
      if (os_log_type_enabled(currentState, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_1BA729000, currentState, OS_LOG_TYPE_ERROR, "SGEvent-shouldAllowNotificationsInCalendar: Could not get handle for app.", v15, 2u);
      }

      v13 = 0;
    }

    else
    {
      currentState = [v9 currentState];
      endowmentNamespaces = [currentState endowmentNamespaces];
      v13 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
    }

    v8 = [(SGEvent *)self shouldAllowNotificationsInCalendarForBundleId:bundleId appIsInForeground:v13 allowListOverride:overrideCopy];
  }

  else
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA729000, v7, OS_LOG_TYPE_INFO, "SGEvent-shouldAllowNotificationsInCalendar: Not allowing notification for event without bundleid", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)mergeIntoEKEvent:(id)event
{
  eventCopy = event;
  SGWeakLinkClass(@"EKEventStore", 0);
  v5 = objc_opt_new();
  [(SGEvent *)self mergeIntoEKEvent:eventCopy withStore:v5];
}

- (id)toEKEventWithStore:(id)store
{
  storeCopy = store;
  storeCopy = [(objc_class *)SGWeakLinkClass(@"EKEvent" eventWithEventStore:"eventWithEventStore:", storeCopy];
  [(SGEvent *)self mergeIntoEKEvent:storeCopy withStore:storeCopy];

  return storeCopy;
}

- (int64_t)ekEventAvailabilityState
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_tags;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v3)
  {
    v6 = 3;
    goto LABEL_26;
  }

  v4 = v3;
  v5 = *v14;
  v6 = 3;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = [SGEntityTag resolveName:*(*(&v13 + 1) + 8 * i), v13];
      if ([v8 isEKEventAvailabilityState])
      {
        value = [v8 value];
        v10 = value;
        if (value)
        {
          if ([value isEqual:@"ekEventAvailabilityStateNotsupported"])
          {
            v6 = -1;
          }

          else if ([v10 isEqual:@"ekEventAvailabilityStateBusy"])
          {
            v6 = 0;
          }

          else if ([v10 isEqual:@"ekEventAvailabilityStateFree"])
          {
            v6 = 1;
          }

          else
          {
            if (([v10 isEqual:@"ekEventAvailabilityStateTentative"] & 1) == 0)
            {
              if ([v10 isEqual:@"ekEventAvailabilityStateUnavailable"])
              {
                goto LABEL_24;
              }

              goto LABEL_13;
            }

            v6 = 2;
          }

LABEL_24:

          goto LABEL_25;
        }

LABEL_13:
      }

      if ([v8 isExtractedEventCategory])
      {
        v11 = +[SGEntityTag extractedHotel];
        v6 = v8 == v11;

LABEL_25:
        goto LABEL_26;
      }
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_26:

  return v6;
}

- (BOOL)isEqualToEvent:(id)event
{
  eventCopy = event;
  v39.receiver = self;
  v39.super_class = SGEvent;
  if (![(SGObject *)&v39 isEqualToSuggestion:eventCopy])
  {
    goto LABEL_41;
  }

  v5 = self->_title;
  v6 = v5;
  if (v5 == eventCopy[6])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v8 = self->_notes;
  v9 = v8;
  if (v8 == eventCopy[7])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v11 = self->_start;
  v12 = v11;
  if (v11 == eventCopy[8])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v14 = self->_startTimeZone;
  v15 = v14;
  if (v14 == eventCopy[9])
  {
  }

  else
  {
    v16 = [(NSTimeZone *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v17 = self->_end;
  v18 = v17;
  if (v17 == eventCopy[10])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v20 = self->_endTimeZone;
  v21 = v20;
  if (v20 == eventCopy[11])
  {
  }

  else
  {
    v22 = [(NSTimeZone *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (self->_isAllDay != *(eventCopy + 40))
  {
LABEL_41:
    v35 = 0;
    goto LABEL_42;
  }

  v23 = self->_creationDate;
  v24 = v23;
  if (v23 == eventCopy[12])
  {
  }

  else
  {
    v25 = [(NSDate *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v26 = self->_lastModifiedDate;
  v27 = v26;
  if (v26 == eventCopy[13])
  {
  }

  else
  {
    v28 = [(NSDate *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v29 = self->_locations;
  v30 = v29;
  if (v29 == eventCopy[14])
  {
  }

  else
  {
    v31 = [(NSArray *)v29 isEqual:?];

    if ((v31 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v32 = self->_opaqueKey;
  v33 = v32;
  if (v32 == eventCopy[15])
  {
  }

  else
  {
    v34 = [(NSString *)v32 isEqual:?];

    if ((v34 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v37 = self->_attributeSetForEvent;
  v38 = v37;
  if (v37 == eventCopy[22])
  {
    v35 = 1;
  }

  else
  {
    v35 = [(CSSearchableItemAttributeSet *)v37 isEqual:?];
  }

LABEL_42:
  return v35;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGEvent *)self isEqualToEvent:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGEvent;
  coderCopy = coder;
  [(SGObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_uniqueKey forKey:{@"uniqueKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_opaqueKey forKey:@"opaqueKey"];
  [coderCopy encodeObject:self->_URL forKey:@"URL"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_notes forKey:@"notes"];
  [coderCopy encodeObject:self->_start forKey:@"start"];
  [coderCopy encodeObject:self->_startTimeZone forKey:@"startTimeZone"];
  [coderCopy encodeObject:self->_end forKey:@"end"];
  [coderCopy encodeObject:self->_endTimeZone forKey:@"endTimeZone"];
  [coderCopy encodeBool:self->_isAllDay forKey:@"isAllDay"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_lastModifiedDate forKey:@"lastModifiedDate"];
  [coderCopy encodeObject:self->_locations forKey:@"locations"];
  [coderCopy encodeObject:self->_tags forKey:@"tags"];
  [coderCopy encodeObject:self->_naturalLanguageEventTypeIdentifier forKey:@"naturalLanguageEventTypeIdentifier"];
  [coderCopy encodeInteger:self->_naturalLanguageEventAttributes forKey:@"naturalLanguageEventAttributes"];
  [coderCopy encodeObject:self->_schemaOrg forKey:@"schemaOrg"];
  [coderCopy encodeObject:self->_attributeSetForEvent forKey:@"attributeSetForEvent"];
}

- (SGEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v62.receiver = self;
  v62.super_class = SGEvent;
  v5 = [(SGObject *)&v62 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"uniqueKey"];
    uniqueKey = v5->_uniqueKey;
    v5->_uniqueKey = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"opaqueKey"];
    opaqueKey = v5->_opaqueKey;
    v5->_opaqueKey = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v13;

    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"title"];
    title = v5->_title;
    v5->_title = v16;

    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"notes"];
    notes = v5->_notes;
    v5->_notes = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"start"];
    start = v5->_start;
    v5->_start = v22;

    v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"startTimeZone"];
    startTimeZone = v5->_startTimeZone;
    v5->_startTimeZone = v25;

    v27 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"end"];
    end = v5->_end;
    v5->_end = v28;

    v30 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"endTimeZone"];
    endTimeZone = v5->_endTimeZone;
    v5->_endTimeZone = v31;

    v5->_isAllDay = [coderCopy decodeBoolForKey:@"isAllDay"];
    v33 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v34;

    v36 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"lastModifiedDate"];
    lastModifiedDate = v5->_lastModifiedDate;
    v5->_lastModifiedDate = v37;

    v39 = objc_alloc(MEMORY[0x1E695DFD8]);
    v40 = objc_opt_class();
    v41 = [v39 initWithObjects:{v40, objc_opt_class(), 0}];
    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"locations"];
    locations = v5->_locations;
    v5->_locations = v42;

    v44 = objc_alloc(MEMORY[0x1E695DFD8]);
    v45 = objc_opt_class();
    v46 = [v44 initWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [coderCopy decodeObjectOfClasses:v46 forKey:@"tags"];
    tags = v5->_tags;
    v5->_tags = v47;

    v49 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"naturalLanguageEventTypeIdentifier"];
    naturalLanguageEventTypeIdentifier = v5->_naturalLanguageEventTypeIdentifier;
    v5->_naturalLanguageEventTypeIdentifier = v50;

    v5->_naturalLanguageEventAttributes = [coderCopy decodeIntegerForKey:@"naturalLanguageEventAttributes"];
    v52 = objc_alloc(MEMORY[0x1E695DFD8]);
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v55 = [v52 initWithObjects:{v53, v54, objc_opt_class(), 0}];
    v56 = [coderCopy decodeObjectOfClasses:v55 forKey:@"schemaOrg"];
    schemaOrg = v5->_schemaOrg;
    v5->_schemaOrg = v56;

    v58 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v59 = [coderCopy decodeObjectOfClasses:v58 forKey:@"attributeSetForEvent"];
    attributeSetForEvent = v5->_attributeSetForEvent;
    v5->_attributeSetForEvent = v59;
  }

  return v5;
}

- (id)dateForUTCDate:(id)date withTimeZone:(id)zone
{
  v5 = MEMORY[0x1E695DEE8];
  zoneCopy = zone;
  dateCopy = date;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v10 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v9 setTimeZone:v10];

  v11 = [v9 components:1048828 fromDate:dateCopy];

  [v11 setTimeZone:zoneCopy];
  v12 = [v9 dateFromComponents:v11];

  return v12;
}

- (double)duration
{
  v3 = [(SGEvent *)self end];
  start = [(SGEvent *)self start];
  [v3 timeIntervalSinceDate:start];
  v6 = v5;

  return v6;
}

- (id)endDateComponents
{
  end = self->_end;
  endTimeZone = self->_endTimeZone;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [(SGEvent *)self _componentsForDate:end timeZone:endTimeZone isEnd:1 calendar:currentCalendar];

  return v6;
}

- (id)startDateComponents
{
  start = self->_start;
  startTimeZone = self->_startTimeZone;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [(SGEvent *)self _componentsForDate:start timeZone:startTimeZone isEnd:0 calendar:currentCalendar];

  return v6;
}

- (id)_componentsForDate:(id)date timeZone:(id)zone isEnd:(BOOL)end calendar:(id)calendar
{
  endCopy = end;
  dateCopy = date;
  zoneCopy = zone;
  v12 = objc_autoreleasePoolPush();
  v13 = [calendar copy];
  v14 = v13;
  if (zoneCopy)
  {
    [v13 setTimeZone:zoneCopy];
  }

  else
  {
    v15 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v14 setTimeZone:v15];
  }

  v16 = 1048604;
  if (self->_isAllDay)
  {
    v17 = 1048604;
  }

  else
  {
    v17 = 1048828;
  }

  if (!self->_isAllDay || !endCopy)
  {
    v16 = v17;
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:dateCopy sinceDate:-1.0];

    dateCopy = v19;
  }

  v20 = [v14 components:v16 fromDate:dateCopy];
  [v20 setTimeZone:zoneCopy];
  objc_autoreleasePoolPop(v12);

  return v20;
}

- (SGEvent)initWithRecordId:(id)id origin:(id)origin uniqueKey:(id)key opaqueKey:(id)opaqueKey title:(id)title notes:(id)notes start:(id)start startTimeZone:(id)self0 end:(id)self1 endTimeZone:(id)self2 isAllDay:(BOOL)self3 creationDate:(id)self4 lastModifiedDate:(id)self5 locations:(id)self6 tags:(id)self7 URL:(id)self8
{
  v68 = *MEMORY[0x1E69E9840];
  idCopy = id;
  originCopy = origin;
  keyCopy = key;
  opaqueKeyCopy = opaqueKey;
  titleCopy = title;
  notesCopy = notes;
  startCopy = start;
  zoneCopy = zone;
  endCopy = end;
  timeZoneCopy = timeZone;
  dateCopy = date;
  modifiedDateCopy = modifiedDate;
  locationsCopy = locations;
  tagsCopy = tags;
  lCopy = l;
  v46 = sgMapSelector(tagsCopy, sel_name);
  v27 = +[SGEntityTag naturalLanguageEvent];
  v28 = [tagsCopy containsObject:v27];

  if (v28)
  {
    v29 = [(SGEvent *)self _naturalLanguageEventTagsInTags:tagsCopy];
    first = [v29 first];
    second = [v29 second];
    unsignedIntegerValue = [second unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
    first = 0;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v33 = tagsCopy;
  v34 = [v33 countByEnumeratingWithState:&v63 objects:v67 count:16];
  v55 = zoneCopy;
  v56 = notesCopy;
  if (v34)
  {
    v45 = unsignedIntegerValue;
    v35 = *v64;
    while (2)
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v64 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v63 + 1) + 8 * i);
        if ([v37 isSchemaOrg])
        {
          v38 = MEMORY[0x1E696ACB0];
          value = [v37 value];
          v40 = [value dataUsingEncoding:4];
          v62 = 0;
          v41 = [v38 JSONObjectWithData:v40 options:0 error:&v62];
          v42 = v62;

          v34 = 0;
          if (!v42)
          {
            v34 = v41;
          }

          goto LABEL_16;
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }

LABEL_16:
    unsignedIntegerValue = v45;
  }

  LOBYTE(v44) = day;
  v54 = [(SGEvent *)self initWithRecordId:idCopy origin:originCopy uniqueKey:keyCopy opaqueKey:opaqueKeyCopy title:titleCopy notes:v56 start:startCopy startTimeZone:v55 end:endCopy endTimeZone:timeZoneCopy isAllDay:v44 creationDate:dateCopy lastModifiedDate:modifiedDateCopy locations:locationsCopy tagStrings:v46 URL:lCopy naturalLanguageEventIdentifier:first naturalLanguageEventAttributes:unsignedIntegerValue schemaOrg:v34];

  return v54;
}

- (SGEvent)initWithRecordId:(id)id origin:(id)origin uniqueKey:(id)key opaqueKey:(id)opaqueKey title:(id)title notes:(id)notes start:(id)start startTimeZone:(id)self0 end:(id)self1 endTimeZone:(id)self2 isAllDay:(BOOL)self3 creationDate:(id)self4 lastModifiedDate:(id)self5 locations:(id)self6 tagStrings:(id)self7 URL:(id)self8 naturalLanguageEventIdentifier:(id)self9 naturalLanguageEventAttributes:(unint64_t)attributes schemaOrg:(id)org
{
  keyCopy = key;
  opaqueKeyCopy = opaqueKey;
  titleCopy = title;
  notesCopy = notes;
  startCopy = start;
  zoneCopy = zone;
  endCopy = end;
  timeZoneCopy = timeZone;
  dateCopy = date;
  modifiedDateCopy = modifiedDate;
  locationsCopy = locations;
  stringsCopy = strings;
  lCopy = l;
  identifierCopy = identifier;
  orgCopy = org;
  v65.receiver = self;
  v65.super_class = SGEvent;
  v31 = [(SGObject *)&v65 initWithRecordId:id origin:origin];
  if (v31)
  {
    v32 = [opaqueKeyCopy copy];
    opaqueKey = v31->_opaqueKey;
    v31->_opaqueKey = v32;

    v34 = [keyCopy copy];
    uniqueKey = v31->_uniqueKey;
    v31->_uniqueKey = v34;

    v36 = [titleCopy copy];
    title = v31->_title;
    v31->_title = v36;

    v38 = [notesCopy copy];
    notes = v31->_notes;
    v31->_notes = v38;

    v40 = [startCopy copy];
    start = v31->_start;
    v31->_start = v40;

    objc_storeStrong(&v31->_startTimeZone, zone);
    v42 = [endCopy copy];
    end = v31->_end;
    v31->_end = v42;

    objc_storeStrong(&v31->_endTimeZone, timeZone);
    v31->_isAllDay = day;
    v44 = [dateCopy copy];
    creationDate = v31->_creationDate;
    v31->_creationDate = v44;

    v46 = [modifiedDateCopy copy];
    lastModifiedDate = v31->_lastModifiedDate;
    v31->_lastModifiedDate = v46;

    v48 = [locationsCopy sortedArrayWithOptions:16 usingComparator:&__block_literal_global_10611];
    locations = v31->_locations;
    v31->_locations = v48;

    objc_storeStrong(&v31->_tags, strings);
    v50 = [lCopy copy];
    URL = v31->_URL;
    v31->_URL = v50;

    objc_storeStrong(&v31->_naturalLanguageEventTypeIdentifier, identifier);
    v31->_naturalLanguageEventAttributes = attributes;
    objc_storeStrong(&v31->_schemaOrg, org);
    attributeSetForEvent = v31->_attributeSetForEvent;
    v31->_attributeSetForEvent = 0;
  }

  return v31;
}

+ (SGEvent)eventWithRecordId:(id)id origin:(id)origin uniqueKey:(id)key opaqueKey:(id)opaqueKey title:(id)title notes:(id)notes start:(id)start startTimeZone:(id)self0 end:(id)self1 endTimeZone:(id)self2 isAllDay:(BOOL)self3 creationDate:(id)self4 lastModifiedDate:(id)self5 locations:(id)self6 tags:(id)self7 URL:(id)self8
{
  lCopy = l;
  tagsCopy = tags;
  locationsCopy = locations;
  modifiedDateCopy = modifiedDate;
  dateCopy = date;
  timeZoneCopy = timeZone;
  endCopy = end;
  zoneCopy = zone;
  startCopy = start;
  notesCopy = notes;
  titleCopy = title;
  opaqueKeyCopy = opaqueKey;
  keyCopy = key;
  originCopy = origin;
  idCopy = id;
  LOBYTE(v24) = day;
  v22 = [[SGEvent alloc] initWithRecordId:idCopy origin:originCopy uniqueKey:keyCopy opaqueKey:opaqueKeyCopy title:titleCopy notes:notesCopy start:startCopy startTimeZone:zoneCopy end:endCopy endTimeZone:timeZoneCopy isAllDay:v24 creationDate:dateCopy lastModifiedDate:modifiedDateCopy locations:locationsCopy tags:tagsCopy URL:lCopy];

  return v22;
}

@end