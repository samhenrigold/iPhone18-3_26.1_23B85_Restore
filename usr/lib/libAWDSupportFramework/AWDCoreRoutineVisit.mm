@interface AWDCoreRoutineVisit
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mapItemSourcesAsString:(int)string;
- (int)StringAsMapItemSources:(id)sources;
- (int)mapItemSourcesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addPossibleMapItems:(id)items;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineVisit

- (void)dealloc
{
  PBRepeatedInt32Clear();
  [(AWDCoreRoutineVisit *)self setPossibleMapItems:0];
  [(AWDCoreRoutineVisit *)self setSelectedMapItem:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineVisit;
  [(AWDCoreRoutineVisit *)&v3 dealloc];
}

- (int)mapItemSourcesAtIndex:(unint64_t)index
{
  p_mapItemSources = &self->_mapItemSources;
  count = self->_mapItemSources.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_mapItemSources->list[index];
}

- (id)mapItemSourcesAsString:(int)string
{
  if (string >= 0x12)
  {
    return [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    return off_29EE32648[string];
  }
}

- (int)StringAsMapItemSources:(id)sources
{
  if ([sources isEqualToString:@"CoreRoutineMapItemSourceNone"])
  {
    return 0;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceReverseGeocode"])
  {
    return 1;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceContacts"])
  {
    return 2;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapsSupport"])
  {
    return 3;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceUser"])
  {
    return 4;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapsSupportFavorite"])
  {
    return 5;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapsSupportHistoryEntry"])
  {
    return 6;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapsSupportHistoryEntryRoute"])
  {
    return 7;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapsSupportHistoryEntryPlaceDisplay"])
  {
    return 8;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceEventKit"])
  {
    return 9;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceLocalSearch"])
  {
    return 10;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapItemHandle"])
  {
    return 11;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceForwardGeocode"])
  {
    return 12;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceProactiveExperts"])
  {
    return 13;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourcePortrait"])
  {
    return 14;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceLearnedPlace"])
  {
    return 15;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceBluePOI"])
  {
    return 16;
  }

  if ([sources isEqualToString:@"CoreRoutineMapItemSourceMapItemURL"])
  {
    return 17;
  }

  return 0;
}

- (void)addPossibleMapItems:(id)items
{
  possibleMapItems = self->_possibleMapItems;
  if (!possibleMapItems)
  {
    possibleMapItems = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_possibleMapItems = possibleMapItems;
  }

  [(NSMutableArray *)possibleMapItems addObject:items];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineVisit;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineVisit description](&v3, sel_description), -[AWDCoreRoutineVisit dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  p_mapItemSources = &self->_mapItemSources;
  if (self->_mapItemSources.count)
  {
    v5 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:?];
    if (self->_mapItemSources.count)
    {
      v6 = 0;
      do
      {
        v7 = p_mapItemSources->list[v6];
        if (v7 >= 0x12)
        {
          v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", p_mapItemSources->list[v6]];
        }

        else
        {
          v8 = off_29EE32648[v7];
        }

        [v5 addObject:v8];
        ++v6;
      }

      while (v6 < self->_mapItemSources.count);
    }

    [dictionary setObject:v5 forKey:@"mapItemSources"];
  }

  if ([(NSMutableArray *)self->_possibleMapItems count])
  {
    v9 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_possibleMapItems, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    possibleMapItems = self->_possibleMapItems;
    v11 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(possibleMapItems);
          }

          [v9 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v12 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"possibleMapItems"];
  }

  selectedMapItem = self->_selectedMapItem;
  if (selectedMapItem)
  {
    [dictionary setObject:-[AWDCoreRoutineMapItem dictionaryRepresentation](selectedMapItem forKey:{"dictionaryRepresentation"), @"selectedMapItem"}];
  }

  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dwellTime), @"dwellTime"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x29EDCA608];
  p_mapItemSources = &self->_mapItemSources;
  if (self->_mapItemSources.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < p_mapItemSources->count);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  possibleMapItems = self->_possibleMapItems;
  v7 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(possibleMapItems);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (self->_selectedMapItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  if ([(AWDCoreRoutineVisit *)self mapItemSourcesCount])
  {
    [to clearMapItemSources];
    mapItemSourcesCount = [(AWDCoreRoutineVisit *)self mapItemSourcesCount];
    if (mapItemSourcesCount)
    {
      v6 = mapItemSourcesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addMapItemSources:{-[AWDCoreRoutineVisit mapItemSourcesAtIndex:](self, "mapItemSourcesAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCoreRoutineVisit *)self possibleMapItemsCount])
  {
    [to clearPossibleMapItems];
    possibleMapItemsCount = [(AWDCoreRoutineVisit *)self possibleMapItemsCount];
    if (possibleMapItemsCount)
    {
      v9 = possibleMapItemsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addPossibleMapItems:{-[AWDCoreRoutineVisit possibleMapItemsAtIndex:](self, "possibleMapItemsAtIndex:", j)}];
      }
    }
  }

  if (self->_selectedMapItem)
  {
    [to setSelectedMapItem:?];
  }

  if (*&self->_has)
  {
    *(to + 4) = self->_dwellTime;
    *(to + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt32Copy();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  possibleMapItems = self->_possibleMapItems;
  v7 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(possibleMapItems);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) copyWithZone:zone];
        [v5 addPossibleMapItems:v11];
      }

      v8 = [(NSMutableArray *)possibleMapItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  *(v5 + 48) = [(AWDCoreRoutineMapItem *)self->_selectedMapItem copyWithZone:zone];
  if (*&self->_has)
  {
    *(v5 + 32) = self->_dwellTime;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    IsEqual = PBRepeatedInt32IsEqual();
    if (IsEqual)
    {
      possibleMapItems = self->_possibleMapItems;
      if (!(possibleMapItems | *(equal + 5)) || (IsEqual = [(NSMutableArray *)possibleMapItems isEqual:?]) != 0)
      {
        selectedMapItem = self->_selectedMapItem;
        if (!(selectedMapItem | *(equal + 6)) || (IsEqual = [(AWDCoreRoutineMapItem *)selectedMapItem isEqual:?]) != 0)
        {
          LOBYTE(IsEqual) = (*(equal + 56) & 1) == 0;
          if (*&self->_has)
          {
            LOBYTE(IsEqual) = (*(equal + 56) & 1) != 0 && self->_dwellTime == *(equal + 4);
          }
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = PBRepeatedInt32Hash();
  v4 = [(NSMutableArray *)self->_possibleMapItems hash];
  v5 = [(AWDCoreRoutineMapItem *)self->_selectedMapItem hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_dwellTime;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x29EDCA608];
  mapItemSourcesCount = [from mapItemSourcesCount];
  if (mapItemSourcesCount)
  {
    v6 = mapItemSourcesCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDCoreRoutineVisit addMapItemSources:](self, "addMapItemSources:", [from mapItemSourcesAtIndex:i]);
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(from + 5);
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(AWDCoreRoutineVisit *)self addPossibleMapItems:*(*(&v15 + 1) + 8 * j)];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  selectedMapItem = self->_selectedMapItem;
  v14 = *(from + 6);
  if (selectedMapItem)
  {
    if (v14)
    {
      [(AWDCoreRoutineMapItem *)selectedMapItem mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(AWDCoreRoutineVisit *)self setSelectedMapItem:?];
  }

  if (*(from + 56))
  {
    self->_dwellTime = *(from + 4);
    *&self->_has |= 1u;
  }
}

@end