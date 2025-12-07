@interface GEOMapItemClientAttributes
- (GEOMapItemAddressBookAttributes)addressBookAttributes;
- (GEOMapItemClientAttributes)init;
- (GEOMapItemMapsSyncAttributes)mapsSyncAttributes;
- (GEOMapItemRoutineAttributes)routineAttributes;
- (unint64_t)hash;
- (void)_readAddressBookAttributes;
- (void)_readCorrectedLocationAttributes;
- (void)_readMapsSyncAttributes;
- (void)_readRoutineAttributes;
@end

@implementation GEOMapItemClientAttributes

- (GEOMapItemClientAttributes)init
{
  v6.receiver = self;
  v6.super_class = GEOMapItemClientAttributes;
  v2 = [(GEOMapItemClientAttributes *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readCorrectedLocationAttributes
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 68) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemClientAttributesReadSpecified(self, *(self + 8), &_readCorrectedLocationAttributes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

- (unint64_t)hash
{
  [(GEOMapItemClientAttributes *)self readAll:1];
  v3 = [(GEOMapItemAddressBookAttributes *)self->_addressBookAttributes hash];
  v4 = [(GEOMapItemRoutineAttributes *)self->_routineAttributes hash]^ v3;
  v5 = [(GEOMapItemCorrectedLocationAttributes *)self->_correctedLocationAttributes hash];
  return v4 ^ v5 ^ [(GEOMapItemMapsSyncAttributes *)self->_mapsSyncAttributes hash];
}

- (GEOMapItemMapsSyncAttributes)mapsSyncAttributes
{
  [(GEOMapItemClientAttributes *)self _readMapsSyncAttributes];
  mapsSyncAttributes = self->_mapsSyncAttributes;

  return mapsSyncAttributes;
}

- (void)_readMapsSyncAttributes
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 68) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemClientAttributesReadSpecified(self, *(self + 8), &_readMapsSyncAttributes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

- (GEOMapItemAddressBookAttributes)addressBookAttributes
{
  [(GEOMapItemClientAttributes *)self _readAddressBookAttributes];
  addressBookAttributes = self->_addressBookAttributes;

  return addressBookAttributes;
}

- (void)_readAddressBookAttributes
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 68) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemClientAttributesReadSpecified(self, *(self + 8), &_readAddressBookAttributes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

- (void)_readRoutineAttributes
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 68) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemClientAttributesReadSpecified(self, *(self + 8), &_readRoutineAttributes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

- (GEOMapItemRoutineAttributes)routineAttributes
{
  [(GEOMapItemClientAttributes *)self _readRoutineAttributes];
  routineAttributes = self->_routineAttributes;

  return routineAttributes;
}

@end