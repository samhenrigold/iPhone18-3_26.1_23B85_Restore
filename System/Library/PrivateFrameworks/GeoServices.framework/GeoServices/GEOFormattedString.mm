@interface GEOFormattedString
- (GEOFormattedString)init;
- (GEOFormattedStringMetaData)metaData;
- (GEOServerConditionalString)alternativeString;
- (NSArray)formatStrings;
- (NSArray)formatStyles;
- (NSArray)separators;
- (NSMutableArray)formatArguments;
- (void)_readAlternativeString;
- (void)_readFormatArguments;
- (void)_readFormatStrings;
- (void)_readFormatStyles;
- (void)_readMetaData;
- (void)_readSeparators;
@end

@implementation GEOFormattedString

- (GEOFormattedString)init
{
  v6.receiver = self;
  v6.super_class = GEOFormattedString;
  v2 = [(GEOFormattedString *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (NSMutableArray)formatArguments
{
  [(GEOFormattedString *)self _readFormatArguments];
  formatArguments = self->_formatArguments;

  return formatArguments;
}

- (void)_readFormatArguments
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 84) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormattedStringReadSpecified(self, *(self + 8), &_readFormatArguments_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (NSArray)formatStyles
{
  [(GEOFormattedString *)self _readFormatStyles];
  formatStyles = self->_formatStyles;

  return formatStyles;
}

- (void)_readFormatStyles
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 84) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormattedStringReadSpecified(self, *(self + 8), &_readFormatStyles_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (NSArray)formatStrings
{
  [(GEOFormattedString *)self _readFormatStrings];
  formatStrings = self->_formatStrings;

  return formatStrings;
}

- (void)_readFormatStrings
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 84) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormattedStringReadSpecified(self, *(self + 8), &_readFormatStrings_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (NSArray)separators
{
  [(GEOFormattedString *)self _readSeparators];
  separators = self->_separators;

  return separators;
}

- (void)_readSeparators
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 84) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormattedStringReadSpecified(self, *(self + 8), &_readSeparators_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (GEOServerConditionalString)alternativeString
{
  [(GEOFormattedString *)self _readAlternativeString];
  alternativeString = self->_alternativeString;

  return alternativeString;
}

- (void)_readAlternativeString
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 84) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormattedStringReadSpecified(self, *(self + 8), &_readAlternativeString_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (GEOFormattedStringMetaData)metaData
{
  [(GEOFormattedString *)self _readMetaData];
  metaData = self->_metaData;

  return metaData;
}

- (void)_readMetaData
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 84) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOFormattedStringReadSpecified(self, *(self + 8), &_readMetaData_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

@end