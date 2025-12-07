@interface ATXHeroEntriesPb
- (BOOL)isEqual:(id)equal;
- (BOOL)isTouristAppAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)deltaLatitudeAtIndex:(unint64_t)index;
- (int)deltaLongitudeAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unint64_t)muidAtIndex:(unint64_t)index;
- (unsigned)adamIdAtIndex:(unint64_t)index;
- (unsigned)radiusAtIndex:(unint64_t)index;
- (unsigned)rankAtIndex:(unint64_t)index;
- (void)addPoiCategory:(id)category;
- (void)addUrlHash:(id)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXHeroEntriesPb

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedBOOLClear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = ATXHeroEntriesPb;
  [(ATXHeroEntriesPb *)&v3 dealloc];
}

- (int)deltaLatitudeAtIndex:(unint64_t)index
{
  p_deltaLatitudes = &self->_deltaLatitudes;
  count = self->_deltaLatitudes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_deltaLatitudes->list[index];
}

- (int)deltaLongitudeAtIndex:(unint64_t)index
{
  p_deltaLongitudes = &self->_deltaLongitudes;
  count = self->_deltaLongitudes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_deltaLongitudes->list[index];
}

- (unsigned)adamIdAtIndex:(unint64_t)index
{
  p_adamIds = &self->_adamIds;
  count = self->_adamIds.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_adamIds->list[index];
}

- (BOOL)isTouristAppAtIndex:(unint64_t)index
{
  p_isTouristApps = &self->_isTouristApps;
  count = self->_isTouristApps.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_isTouristApps->list[index];
}

- (unsigned)rankAtIndex:(unint64_t)index
{
  p_ranks = &self->_ranks;
  count = self->_ranks.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_ranks->list[index];
}

- (unsigned)radiusAtIndex:(unint64_t)index
{
  p_radius = &self->_radius;
  count = self->_radius.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_radius->list[index];
}

- (void)addUrlHash:(id)hash
{
  hashCopy = hash;
  urlHashs = self->_urlHashs;
  v8 = hashCopy;
  if (!urlHashs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_urlHashs;
    self->_urlHashs = v6;

    hashCopy = v8;
    urlHashs = self->_urlHashs;
  }

  [(NSMutableArray *)urlHashs addObject:hashCopy];
}

- (void)addPoiCategory:(id)category
{
  categoryCopy = category;
  poiCategorys = self->_poiCategorys;
  v8 = categoryCopy;
  if (!poiCategorys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_poiCategorys;
    self->_poiCategorys = v6;

    categoryCopy = v8;
    poiCategorys = self->_poiCategorys;
  }

  [(NSMutableArray *)poiCategorys addObject:categoryCopy];
}

- (unint64_t)muidAtIndex:(unint64_t)index
{
  p_muids = &self->_muids;
  count = self->_muids.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_muids->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXHeroEntriesPb;
  v4 = [(ATXHeroEntriesPb *)&v8 description];
  dictionaryRepresentation = [(ATXHeroEntriesPb *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_tileLatitudeE7];
  [dictionary setObject:v4 forKey:@"tileLatitudeE7"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_tileLongitudeE7];
  [dictionary setObject:v5 forKey:@"tileLongitudeE7"];

  v6 = PBRepeatedInt32NSArray();
  [dictionary setObject:v6 forKey:@"deltaLatitude"];

  v7 = PBRepeatedInt32NSArray();
  [dictionary setObject:v7 forKey:@"deltaLongitude"];

  v8 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v8 forKey:@"adamId"];

  v9 = PBRepeatedBOOLNSArray();
  [dictionary setObject:v9 forKey:@"isTouristApp"];

  v10 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v10 forKey:@"rank"];

  v11 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v11 forKey:@"radius"];

  urlHashs = self->_urlHashs;
  if (urlHashs)
  {
    [dictionary setObject:urlHashs forKey:@"urlHash"];
  }

  poiCategorys = self->_poiCategorys;
  if (poiCategorys)
  {
    [dictionary setObject:poiCategorys forKey:@"poiCategory"];
  }

  v14 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v14 forKey:@"muid"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v34 = *MEMORY[0x277D85DE8];
  toCopy = to;
  PBDataWriterWriteSfixed32Field();
  PBDataWriterWriteSfixed32Field();
  if (self->_deltaLatitudes.count)
  {
    v31 = 0;
    PBDataWriterPlaceMark();
    if (self->_deltaLatitudes.count)
    {
      v5 = 0;
      do
      {
        PBDataWriterWriteInt32Field();
        ++v5;
      }

      while (v5 < self->_deltaLatitudes.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_deltaLongitudes.count)
  {
    v31 = 0;
    PBDataWriterPlaceMark();
    if (self->_deltaLongitudes.count)
    {
      v6 = 0;
      do
      {
        PBDataWriterWriteInt32Field();
        ++v6;
      }

      while (v6 < self->_deltaLongitudes.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_adamIds.count)
  {
    v31 = 0;
    PBDataWriterPlaceMark();
    if (self->_adamIds.count)
    {
      v7 = 0;
      do
      {
        PBDataWriterWriteUint32Field();
        ++v7;
      }

      while (v7 < self->_adamIds.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_isTouristApps.count)
  {
    v31 = 0;
    PBDataWriterPlaceMark();
    if (self->_isTouristApps.count)
    {
      v8 = 0;
      do
      {
        PBDataWriterWriteBOOLField();
        ++v8;
      }

      while (v8 < self->_isTouristApps.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_ranks.count)
  {
    v31 = 0;
    PBDataWriterPlaceMark();
    if (self->_ranks.count)
    {
      v9 = 0;
      do
      {
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v9 < self->_ranks.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_radius.count)
  {
    v31 = 0;
    PBDataWriterPlaceMark();
    if (self->_radius.count)
    {
      v10 = 0;
      do
      {
        PBDataWriterWriteUint32Field();
        ++v10;
      }

      while (v10 < self->_radius.count);
    }

    PBDataWriterRecallMark();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = self->_urlHashs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteDataField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v13);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_poiCategorys;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteStringField();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v18);
  }

  p_muids = &self->_muids;
  if (p_muids->count)
  {
    v31 = 0;
    PBDataWriterPlaceMark();
    if (p_muids->count)
    {
      v22 = 0;
      do
      {
        PBDataWriterWriteUint64Field();
        ++v22;
      }

      while (v22 < p_muids->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[46] = self->_tileLatitudeE7;
  v34 = toCopy;
  toCopy[47] = self->_tileLongitudeE7;
  if ([(ATXHeroEntriesPb *)self deltaLatitudesCount])
  {
    [v34 clearDeltaLatitudes];
    deltaLatitudesCount = [(ATXHeroEntriesPb *)self deltaLatitudesCount];
    if (deltaLatitudesCount)
    {
      v6 = deltaLatitudesCount;
      for (i = 0; i != v6; ++i)
      {
        [v34 addDeltaLatitude:{-[ATXHeroEntriesPb deltaLatitudeAtIndex:](self, "deltaLatitudeAtIndex:", i)}];
      }
    }
  }

  if ([(ATXHeroEntriesPb *)self deltaLongitudesCount])
  {
    [v34 clearDeltaLongitudes];
    deltaLongitudesCount = [(ATXHeroEntriesPb *)self deltaLongitudesCount];
    if (deltaLongitudesCount)
    {
      v9 = deltaLongitudesCount;
      for (j = 0; j != v9; ++j)
      {
        [v34 addDeltaLongitude:{-[ATXHeroEntriesPb deltaLongitudeAtIndex:](self, "deltaLongitudeAtIndex:", j)}];
      }
    }
  }

  if ([(ATXHeroEntriesPb *)self adamIdsCount])
  {
    [v34 clearAdamIds];
    adamIdsCount = [(ATXHeroEntriesPb *)self adamIdsCount];
    if (adamIdsCount)
    {
      v12 = adamIdsCount;
      for (k = 0; k != v12; ++k)
      {
        [v34 addAdamId:{-[ATXHeroEntriesPb adamIdAtIndex:](self, "adamIdAtIndex:", k)}];
      }
    }
  }

  if ([(ATXHeroEntriesPb *)self isTouristAppsCount])
  {
    [v34 clearIsTouristApps];
    isTouristAppsCount = [(ATXHeroEntriesPb *)self isTouristAppsCount];
    if (isTouristAppsCount)
    {
      v15 = isTouristAppsCount;
      for (m = 0; m != v15; ++m)
      {
        [v34 addIsTouristApp:{-[ATXHeroEntriesPb isTouristAppAtIndex:](self, "isTouristAppAtIndex:", m)}];
      }
    }
  }

  if ([(ATXHeroEntriesPb *)self ranksCount])
  {
    [v34 clearRanks];
    ranksCount = [(ATXHeroEntriesPb *)self ranksCount];
    if (ranksCount)
    {
      v18 = ranksCount;
      for (n = 0; n != v18; ++n)
      {
        [v34 addRank:{-[ATXHeroEntriesPb rankAtIndex:](self, "rankAtIndex:", n)}];
      }
    }
  }

  if ([(ATXHeroEntriesPb *)self radiusCount])
  {
    [v34 clearRadius];
    radiusCount = [(ATXHeroEntriesPb *)self radiusCount];
    if (radiusCount)
    {
      v21 = radiusCount;
      for (ii = 0; ii != v21; ++ii)
      {
        [v34 addRadius:{-[ATXHeroEntriesPb radiusAtIndex:](self, "radiusAtIndex:", ii)}];
      }
    }
  }

  if ([(ATXHeroEntriesPb *)self urlHashsCount])
  {
    [v34 clearUrlHashs];
    urlHashsCount = [(ATXHeroEntriesPb *)self urlHashsCount];
    if (urlHashsCount)
    {
      v24 = urlHashsCount;
      for (jj = 0; jj != v24; ++jj)
      {
        v26 = [(ATXHeroEntriesPb *)self urlHashAtIndex:jj];
        [v34 addUrlHash:v26];
      }
    }
  }

  if ([(ATXHeroEntriesPb *)self poiCategorysCount])
  {
    [v34 clearPoiCategorys];
    poiCategorysCount = [(ATXHeroEntriesPb *)self poiCategorysCount];
    if (poiCategorysCount)
    {
      v28 = poiCategorysCount;
      for (kk = 0; kk != v28; ++kk)
      {
        v30 = [(ATXHeroEntriesPb *)self poiCategoryAtIndex:kk];
        [v34 addPoiCategory:v30];
      }
    }
  }

  if ([(ATXHeroEntriesPb *)self muidsCount])
  {
    [v34 clearMuids];
    muidsCount = [(ATXHeroEntriesPb *)self muidsCount];
    if (muidsCount)
    {
      v32 = muidsCount;
      for (mm = 0; mm != v32; ++mm)
      {
        [v34 addMuid:{-[ATXHeroEntriesPb muidAtIndex:](self, "muidAtIndex:", mm)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[46] = self->_tileLatitudeE7;
  v5[47] = self->_tileLongitudeE7;
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedBOOLCopy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_urlHashs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addUrlHash:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_poiCategorys;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
        [v5 addPoiCategory:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  PBRepeatedUInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_tileLatitudeE7 == *(equalCopy + 46) && self->_tileLongitudeE7 == *(equalCopy + 47) && PBRepeatedInt32IsEqual() && PBRepeatedInt32IsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedBOOLIsEqual() && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual() && ((urlHashs = self->_urlHashs, !(urlHashs | *(equalCopy + 24))) || -[NSMutableArray isEqual:](urlHashs, "isEqual:")) && ((poiCategorys = self->_poiCategorys, !(poiCategorys | *(equalCopy + 22))) || -[NSMutableArray isEqual:](poiCategorys, "isEqual:")))
  {
    IsEqual = PBRepeatedUInt64IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_tileLongitudeE7) ^ (2654435761 * self->_tileLatitudeE7);
  v4 = PBRepeatedInt32Hash();
  v5 = v4 ^ PBRepeatedInt32Hash();
  v6 = v5 ^ PBRepeatedUInt32Hash();
  v7 = v6 ^ PBRepeatedBOOLHash();
  v8 = v7 ^ PBRepeatedUInt32Hash();
  v9 = v8 ^ PBRepeatedUInt32Hash();
  v10 = v9 ^ [(NSMutableArray *)self->_urlHashs hash];
  v11 = v10 ^ [(NSMutableArray *)self->_poiCategorys hash];
  return v3 ^ v11 ^ PBRepeatedUInt64Hash();
}

- (void)mergeFrom:(id)from
{
  v46 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  self->_tileLatitudeE7 = *(fromCopy + 46);
  self->_tileLongitudeE7 = *(fromCopy + 47);
  deltaLatitudesCount = [fromCopy deltaLatitudesCount];
  if (deltaLatitudesCount)
  {
    v6 = deltaLatitudesCount;
    for (i = 0; i != v6; ++i)
    {
      -[ATXHeroEntriesPb addDeltaLatitude:](self, "addDeltaLatitude:", [fromCopy deltaLatitudeAtIndex:i]);
    }
  }

  deltaLongitudesCount = [fromCopy deltaLongitudesCount];
  if (deltaLongitudesCount)
  {
    v9 = deltaLongitudesCount;
    for (j = 0; j != v9; ++j)
    {
      -[ATXHeroEntriesPb addDeltaLongitude:](self, "addDeltaLongitude:", [fromCopy deltaLongitudeAtIndex:j]);
    }
  }

  adamIdsCount = [fromCopy adamIdsCount];
  if (adamIdsCount)
  {
    v12 = adamIdsCount;
    for (k = 0; k != v12; ++k)
    {
      -[ATXHeroEntriesPb addAdamId:](self, "addAdamId:", [fromCopy adamIdAtIndex:k]);
    }
  }

  isTouristAppsCount = [fromCopy isTouristAppsCount];
  if (isTouristAppsCount)
  {
    v15 = isTouristAppsCount;
    for (m = 0; m != v15; ++m)
    {
      -[ATXHeroEntriesPb addIsTouristApp:](self, "addIsTouristApp:", [fromCopy isTouristAppAtIndex:m]);
    }
  }

  ranksCount = [fromCopy ranksCount];
  if (ranksCount)
  {
    v18 = ranksCount;
    for (n = 0; n != v18; ++n)
    {
      -[ATXHeroEntriesPb addRank:](self, "addRank:", [fromCopy rankAtIndex:n]);
    }
  }

  radiusCount = [fromCopy radiusCount];
  if (radiusCount)
  {
    v21 = radiusCount;
    for (ii = 0; ii != v21; ++ii)
    {
      -[ATXHeroEntriesPb addRadius:](self, "addRadius:", [fromCopy radiusAtIndex:ii]);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = *(fromCopy + 24);
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      v27 = 0;
      do
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(ATXHeroEntriesPb *)self addUrlHash:*(*(&v40 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v25);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = *(fromCopy + 22);
  v29 = [v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      v32 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(ATXHeroEntriesPb *)self addPoiCategory:*(*(&v36 + 1) + 8 * v32++), v36];
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v30);
  }

  muidsCount = [fromCopy muidsCount];
  if (muidsCount)
  {
    v34 = muidsCount;
    for (jj = 0; jj != v34; ++jj)
    {
      -[ATXHeroEntriesPb addMuid:](self, "addMuid:", [fromCopy muidAtIndex:{jj, v36}]);
    }
  }
}

@end