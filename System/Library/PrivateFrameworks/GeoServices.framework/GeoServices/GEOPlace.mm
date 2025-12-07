@interface GEOPlace
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (GEOAddress)address;
- (GEOBusiness)firstBusiness;
- (GEOLatLng)center;
- (GEOMapRegion)mapRegion;
- (GEOPlace)init;
- (GEOTimezone)timezone;
- (NSMutableArray)business;
- (NSString)name;
- (id)bestName;
- (id)geoMapItem;
- (int)type;
- (unint64_t)entryPointsCount;
- (void)_readAddress;
- (void)_readBusiness;
- (void)_readCenter;
- (void)_readEntryPoints;
- (void)_readMapRegion;
- (void)_readName;
- (void)_readTimezone;
@end

@implementation GEOPlace

- (void)_readBusiness
{
  if (self)
  {
    os_unfair_lock_lock((self + 176));
    if ((*(self + 201) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPlaceReadSpecified(self, *(self + 8), &_readBusiness_tags_104891);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 176));
  }
}

- (id)geoMapItem
{
  v2 = [[_GEOPlaceItem alloc] initWithPlace:self];

  return v2;
}

- (GEOPlace)init
{
  v6.receiver = self;
  v6.super_class = GEOPlace;
  v2 = [(GEOPlace *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readMapRegion
{
  if (self)
  {
    os_unfair_lock_lock((self + 176));
    if ((*(self + 201) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPlaceReadSpecified(self, *(self + 8), &_readMapRegion_tags_104889);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 176));
  }
}

- (GEOMapRegion)mapRegion
{
  [(GEOPlace *)self _readMapRegion];
  mapRegion = self->_mapRegion;

  return mapRegion;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  if ([(GEOPlace *)self hasCenter])
  {
    center = [(GEOPlace *)self center];
    if (!center)
    {
LABEL_7:
      v6 = 0xC066800000000000;
      v8 = 0xC066800000000000;
      goto LABEL_8;
    }
  }

  else
  {
    if (![(GEOPlace *)self entryPointsCount])
    {
      goto LABEL_7;
    }

    entryPoints = [(GEOPlace *)self entryPoints];
    center = [entryPoints objectAtIndex:0];

    if (!center)
    {
      goto LABEL_7;
    }
  }

  [center coordinate];
  v6 = v5;
  v8 = v7;

LABEL_8:
  v9 = *&v6;
  v10 = *&v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (void)_readCenter
{
  if (self)
  {
    os_unfair_lock_lock((self + 176));
    if ((*(self + 201) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPlaceReadSpecified(self, *(self + 8), &_readCenter_tags_1870);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 176));
  }
}

- (GEOLatLng)center
{
  [(GEOPlace *)self _readCenter];
  center = self->_center;

  return center;
}

- (GEOAddress)address
{
  [(GEOPlace *)self _readAddress];
  address = self->_address;

  return address;
}

- (void)_readAddress
{
  if (self)
  {
    os_unfair_lock_lock((self + 176));
    if ((*(self + 201) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPlaceReadSpecified(self, *(self + 8), &_readAddress_tags_105050);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 176));
  }
}

- (id)bestName
{
  name = [(GEOPlace *)self name];
  if ([name length])
  {
    v4 = name;
LABEL_5:
    bestName = v4;
    name2 = v4;
    goto LABEL_6;
  }

  firstBusiness = [(GEOPlace *)self firstBusiness];
  name2 = [firstBusiness name];

  if ([name2 length])
  {
    v4 = name2;
    goto LABEL_5;
  }

  address = [(GEOPlace *)self address];
  bestName = [address bestName];

LABEL_6:

  return bestName;
}

- (NSString)name
{
  [(GEOPlace *)self _readName];
  name = self->_name;

  return name;
}

- (void)_readName
{
  if (self)
  {
    os_unfair_lock_lock((self + 176));
    if ((*(self + 201) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPlaceReadSpecified(self, *(self + 8), &_readName_tags_1868);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 176));
  }
}

- (GEOTimezone)timezone
{
  [(GEOPlace *)self _readTimezone];
  timezone = self->_timezone;

  return timezone;
}

- (void)_readTimezone
{
  if (self)
  {
    os_unfair_lock_lock((self + 176));
    if ((*(self + 202) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPlaceReadSpecified(self, *(self + 8), &_readTimezone_tags_105048);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 176));
  }
}

- (unint64_t)entryPointsCount
{
  [(GEOPlace *)self _readEntryPoints];
  entryPoints = self->_entryPoints;

  return [(NSMutableArray *)entryPoints count];
}

- (void)_readEntryPoints
{
  if (self)
  {
    os_unfair_lock_lock((self + 176));
    if ((*(self + 201) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPlaceReadSpecified(self, *(self + 8), &_readEntryPoints_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 176));
  }
}

- (GEOBusiness)firstBusiness
{
  business = [(GEOPlace *)self business];
  if ([business count])
  {
    v4 = [(GEOPlace *)self businessAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSMutableArray)business
{
  [(GEOPlace *)self _readBusiness];
  business = self->_business;

  return business;
}

- (int)type
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x40) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

@end