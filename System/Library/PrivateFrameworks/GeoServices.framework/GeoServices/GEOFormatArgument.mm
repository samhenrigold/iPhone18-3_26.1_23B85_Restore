@interface GEOFormatArgument
- (GEOFormatArgument)init;
- (GEOGenericCombinations)genericCombinations;
- (GEOGenericStringData)stringSubstituteData;
- (GEOMeasurementData)measurementData;
- (NSString)token;
- (int)format;
- (int)waypointIndex;
- (void)_readGenericCombinations;
- (void)_readMeasurementData;
- (void)_readStringSubstituteData;
- (void)_readToken;
- (void)_readValString;
- (void)dealloc;
@end

@implementation GEOFormatArgument

- (GEOMeasurementData)measurementData
{
  [(GEOFormatArgument *)self _readMeasurementData];
  measurementData = self->_measurementData;

  return measurementData;
}

- (void)_readMeasurementData
{
  if (self)
  {
    os_unfair_lock_lock((self + 152));
    if ((*(self + 173) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormatArgumentReadSpecified(self, *(self + 8), &_readMeasurementData_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 152));
  }
}

- (GEOFormatArgument)init
{
  v6.receiver = self;
  v6.super_class = GEOFormatArgument;
  v2 = [(GEOFormatArgument *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (int)format
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if (*&flags)
  {
    return self->_format;
  }

  else
  {
    return 0;
  }
}

- (NSString)token
{
  [(GEOFormatArgument *)self _readToken];
  token = self->_token;

  return token;
}

- (void)_readToken
{
  if (self)
  {
    os_unfair_lock_lock((self + 152));
    if ((*(self + 173) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormatArgumentReadSpecified(self, *(self + 8), &_readToken_tags_46037);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 152));
  }
}

- (void)_readGenericCombinations
{
  if (self)
  {
    os_unfair_lock_lock((self + 152));
    if ((*(self + 173) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormatArgumentReadSpecified(self, *(self + 8), &_readGenericCombinations_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 152));
  }
}

- (int)waypointIndex
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 8) != 0)
  {
    return self->_waypointIndex;
  }

  else
  {
    return -1;
  }
}

- (GEOGenericStringData)stringSubstituteData
{
  [(GEOFormatArgument *)self _readStringSubstituteData];
  stringSubstituteData = self->_stringSubstituteData;

  return stringSubstituteData;
}

- (void)_readStringSubstituteData
{
  if (self)
  {
    os_unfair_lock_lock((self + 152));
    if ((*(self + 173) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormatArgumentReadSpecified(self, *(self + 8), &_readStringSubstituteData_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 152));
  }
}

- (GEOGenericCombinations)genericCombinations
{
  [(GEOFormatArgument *)self _readGenericCombinations];
  genericCombinations = self->_genericCombinations;

  return genericCombinations;
}

- (void)_readValString
{
  if (self)
  {
    os_unfair_lock_lock((self + 152));
    if ((*(self + 174) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormatArgumentReadSpecified(self, *(self + 8), &_readValString_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 152));
  }
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOFormatArgument;
  [(GEOFormatArgument *)&v3 dealloc];
}

@end