@interface _INPBFindEventsIntent
- (BOOL)isEqual:(id)equal;
- (_INPBFindEventsIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)requestedEventAttributeAsString:(int)string;
- (int)StringAsRequestedEventAttribute:(id)attribute;
- (unint64_t)hash;
- (void)addParticipants:(id)participants;
- (void)encodeWithCoder:(id)coder;
- (void)setParticipants:(id)participants;
- (void)setRequestedEventAttribute:(int)attribute;
- (void)setSearchQuery:(id)query;
- (void)writeTo:(id)to;
@end

@implementation _INPBFindEventsIntent

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dateTimeRange = [(_INPBFindEventsIntent *)self dateTimeRange];
  dictionaryRepresentation = [dateTimeRange dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dateTimeRange"];

  intentMetadata = [(_INPBFindEventsIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  location = [(_INPBFindEventsIntent *)self location];
  dictionaryRepresentation3 = [location dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"location"];

  if ([(NSArray *)self->_participants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = self->_participants;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation4 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation4];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"participants"];
  }

  if ([(_INPBFindEventsIntent *)self hasRequestedEventAttribute])
  {
    requestedEventAttribute = [(_INPBFindEventsIntent *)self requestedEventAttribute];
    if ((requestedEventAttribute - 1) >= 3)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", requestedEventAttribute];
    }

    else
    {
      v18 = off_1E727F610[(requestedEventAttribute - 1)];
    }

    [dictionary setObject:v18 forKeyedSubscript:@"requestedEventAttribute"];
  }

  if (self->_searchQuery)
  {
    searchQuery = [(_INPBFindEventsIntent *)self searchQuery];
    v20 = [searchQuery copy];
    [dictionary setObject:v20 forKeyedSubscript:@"searchQuery"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v5 = [(_INPBLocation *)self->_location hash];
  v6 = [(NSArray *)self->_participants hash];
  if ([(_INPBFindEventsIntent *)self hasRequestedEventAttribute])
  {
    v7 = 2654435761 * self->_requestedEventAttribute;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_searchQuery hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  dateTimeRange = [(_INPBFindEventsIntent *)self dateTimeRange];
  dateTimeRange2 = [equalCopy dateTimeRange];
  if ((dateTimeRange != 0) == (dateTimeRange2 == 0))
  {
    goto LABEL_30;
  }

  dateTimeRange3 = [(_INPBFindEventsIntent *)self dateTimeRange];
  if (dateTimeRange3)
  {
    v8 = dateTimeRange3;
    dateTimeRange4 = [(_INPBFindEventsIntent *)self dateTimeRange];
    dateTimeRange5 = [equalCopy dateTimeRange];
    v11 = [dateTimeRange4 isEqual:dateTimeRange5];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  dateTimeRange = [(_INPBFindEventsIntent *)self intentMetadata];
  dateTimeRange2 = [equalCopy intentMetadata];
  if ((dateTimeRange != 0) == (dateTimeRange2 == 0))
  {
    goto LABEL_30;
  }

  intentMetadata = [(_INPBFindEventsIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBFindEventsIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  dateTimeRange = [(_INPBFindEventsIntent *)self location];
  dateTimeRange2 = [equalCopy location];
  if ((dateTimeRange != 0) == (dateTimeRange2 == 0))
  {
    goto LABEL_30;
  }

  location = [(_INPBFindEventsIntent *)self location];
  if (location)
  {
    v18 = location;
    location2 = [(_INPBFindEventsIntent *)self location];
    location3 = [equalCopy location];
    v21 = [location2 isEqual:location3];

    if (!v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  dateTimeRange = [(_INPBFindEventsIntent *)self participants];
  dateTimeRange2 = [equalCopy participants];
  if ((dateTimeRange != 0) == (dateTimeRange2 == 0))
  {
    goto LABEL_30;
  }

  participants = [(_INPBFindEventsIntent *)self participants];
  if (participants)
  {
    v23 = participants;
    participants2 = [(_INPBFindEventsIntent *)self participants];
    participants3 = [equalCopy participants];
    v26 = [participants2 isEqual:participants3];

    if (!v26)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  hasRequestedEventAttribute = [(_INPBFindEventsIntent *)self hasRequestedEventAttribute];
  if (hasRequestedEventAttribute != [equalCopy hasRequestedEventAttribute])
  {
    goto LABEL_31;
  }

  if ([(_INPBFindEventsIntent *)self hasRequestedEventAttribute])
  {
    if ([equalCopy hasRequestedEventAttribute])
    {
      requestedEventAttribute = self->_requestedEventAttribute;
      if (requestedEventAttribute != [equalCopy requestedEventAttribute])
      {
        goto LABEL_31;
      }
    }
  }

  dateTimeRange = [(_INPBFindEventsIntent *)self searchQuery];
  dateTimeRange2 = [equalCopy searchQuery];
  if ((dateTimeRange != 0) != (dateTimeRange2 == 0))
  {
    searchQuery = [(_INPBFindEventsIntent *)self searchQuery];
    if (!searchQuery)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = searchQuery;
    searchQuery2 = [(_INPBFindEventsIntent *)self searchQuery];
    searchQuery3 = [equalCopy searchQuery];
    v33 = [searchQuery2 isEqual:searchQuery3];

    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_30:
  }

LABEL_31:
  v34 = 0;
LABEL_32:

  return v34;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBFindEventsIntent allocWithZone:](_INPBFindEventsIntent init];
  v6 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange copyWithZone:zone];
  [(_INPBFindEventsIntent *)v5 setDateTimeRange:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBFindEventsIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBLocation *)self->_location copyWithZone:zone];
  [(_INPBFindEventsIntent *)v5 setLocation:v8];

  v9 = [(NSArray *)self->_participants copyWithZone:zone];
  [(_INPBFindEventsIntent *)v5 setParticipants:v9];

  if ([(_INPBFindEventsIntent *)self hasRequestedEventAttribute])
  {
    [(_INPBFindEventsIntent *)v5 setRequestedEventAttribute:[(_INPBFindEventsIntent *)self requestedEventAttribute]];
  }

  v10 = [(NSString *)self->_searchQuery copyWithZone:zone];
  [(_INPBFindEventsIntent *)v5 setSearchQuery:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFindEventsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFindEventsIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFindEventsIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  dateTimeRange = [(_INPBFindEventsIntent *)self dateTimeRange];

  if (dateTimeRange)
  {
    dateTimeRange2 = [(_INPBFindEventsIntent *)self dateTimeRange];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBFindEventsIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBFindEventsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  location = [(_INPBFindEventsIntent *)self location];

  if (location)
  {
    location2 = [(_INPBFindEventsIntent *)self location];
    PBDataWriterWriteSubmessage();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_participants;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  if ([(_INPBFindEventsIntent *)self hasRequestedEventAttribute])
  {
    PBDataWriterWriteInt32Field();
  }

  searchQuery = [(_INPBFindEventsIntent *)self searchQuery];

  if (searchQuery)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setSearchQuery:(id)query
{
  v4 = [query copy];
  searchQuery = self->_searchQuery;
  self->_searchQuery = v4;

  MEMORY[0x1EEE66BB8](v4, searchQuery);
}

- (int)StringAsRequestedEventAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ([attributeCopy isEqualToString:@"EVENT_LOCATION"])
  {
    v4 = 1;
  }

  else if ([attributeCopy isEqualToString:@"PARTICIPANTS"])
  {
    v4 = 2;
  }

  else if ([attributeCopy isEqualToString:@"DATETIME"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)requestedEventAttributeAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E727F610[string - 1];
  }

  return v4;
}

- (void)setRequestedEventAttribute:(int)attribute
{
  has = self->_has;
  if (attribute == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_requestedEventAttribute = attribute;
  }
}

- (void)addParticipants:(id)participants
{
  participantsCopy = participants;
  participants = self->_participants;
  v8 = participantsCopy;
  if (!participants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_participants;
    self->_participants = array;

    participantsCopy = v8;
    participants = self->_participants;
  }

  [(NSArray *)participants addObject:participantsCopy];
}

- (void)setParticipants:(id)participants
{
  v4 = [participants mutableCopy];
  participants = self->_participants;
  self->_participants = v4;

  MEMORY[0x1EEE66BB8](v4, participants);
}

@end