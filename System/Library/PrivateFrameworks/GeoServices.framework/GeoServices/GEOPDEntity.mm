@interface GEOPDEntity
- (GEOPDEntity)init;
- (GEOStyleAttributes)styleAttributes;
- (NSMutableArray)altTelephones;
- (NSMutableArray)localizedCategorys;
- (NSMutableArray)names;
- (NSString)telephone;
- (NSString)url;
- (id)bestLocalizedName;
- (int)placeDisplayType;
- (int)type;
- (unint64_t)namesCount;
- (unint64_t)spokenNamesCount;
- (void)_readAltTelephones;
- (void)_readLocalizedCategorys;
- (void)_readNames;
- (void)_readSpokenNames;
- (void)_readStyleAttributes;
- (void)_readTelephone;
- (void)_readUrl;
- (void)dealloc;
@end

@implementation GEOPDEntity

- (GEOPDEntity)init
{
  v6.receiver = self;
  v6.super_class = GEOPDEntity;
  v2 = [(GEOPDEntity *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readNames
{
  if (self)
  {
    os_unfair_lock_lock((self + 288));
    if ((*(self + 332) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDEntityReadSpecified(self, *(self + 8), &_readNames_tags_4810);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 288));
  }
}

- (id)bestLocalizedName
{
  names = [(GEOPDEntity *)self names];
  v3 = [GEOLocalizedString bestLocalizedStringForCurrentLocale:names fallbackToFirstAvailable:1];

  return v3;
}

- (NSMutableArray)names
{
  [(GEOPDEntity *)self _readNames];
  names = self->_names;

  return names;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = GEOPDEntity;
  [(GEOPDEntity *)&v3 dealloc];
}

- (GEOStyleAttributes)styleAttributes
{
  [(GEOPDEntity *)self _readStyleAttributes];
  styleAttributes = self->_styleAttributes;

  return styleAttributes;
}

- (void)_readStyleAttributes
{
  if (self)
  {
    os_unfair_lock_lock((self + 288));
    if ((*(self + 332) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDEntityReadSpecified(self, *(self + 8), &_readStyleAttributes_tags_4812);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 288));
  }
}

- (int)type
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x800) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)namesCount
{
  [(GEOPDEntity *)self _readNames];
  names = self->_names;

  return [(NSMutableArray *)names count];
}

- (unint64_t)spokenNamesCount
{
  [(GEOPDEntity *)self _readSpokenNames];
  spokenNames = self->_spokenNames;

  return [(NSMutableArray *)spokenNames count];
}

- (void)_readSpokenNames
{
  if (self)
  {
    os_unfair_lock_lock((self + 288));
    if ((*(self + 332) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDEntityReadSpecified(self, *(self + 8), &_readSpokenNames_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 288));
  }
}

- (void)_readTelephone
{
  if (self)
  {
    os_unfair_lock_lock((self + 288));
    if ((*(self + 332) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDEntityReadSpecified(self, *(self + 8), &_readTelephone_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 288));
  }
}

- (NSString)telephone
{
  [(GEOPDEntity *)self _readTelephone];
  telephone = self->_telephone;

  return telephone;
}

- (void)_readUrl
{
  if (self)
  {
    os_unfair_lock_lock((self + 288));
    if ((*(self + 333) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDEntityReadSpecified(self, *(self + 8), &_readUrl_tags_4809);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 288));
  }
}

- (NSString)url
{
  [(GEOPDEntity *)self _readUrl];
  url = self->_url;

  return url;
}

- (NSMutableArray)localizedCategorys
{
  [(GEOPDEntity *)self _readLocalizedCategorys];
  localizedCategorys = self->_localizedCategorys;

  return localizedCategorys;
}

- (void)_readLocalizedCategorys
{
  if (self)
  {
    os_unfair_lock_lock((self + 288));
    if ((*(self + 331) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDEntityReadSpecified(self, *(self + 8), &_readLocalizedCategorys_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 288));
  }
}

- (int)placeDisplayType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x200) != 0)
  {
    return self->_placeDisplayType;
  }

  else
  {
    return 0;
  }
}

- (NSMutableArray)altTelephones
{
  [(GEOPDEntity *)self _readAltTelephones];
  altTelephones = self->_altTelephones;

  return altTelephones;
}

- (void)_readAltTelephones
{
  if (self)
  {
    os_unfair_lock_lock((self + 288));
    if ((*(self + 330) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDEntityReadSpecified(self, *(self + 8), &_readAltTelephones_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 288));
  }
}

@end