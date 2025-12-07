@interface GEOLocalizedString
- (GEOLocalizedString)init;
- (NSString)locale;
- (NSString)stringValue;
- (void)_readLocale;
- (void)_readStringValue;
@end

@implementation GEOLocalizedString

- (GEOLocalizedString)init
{
  v6.receiver = self;
  v6.super_class = GEOLocalizedString;
  v2 = [(GEOLocalizedString *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readLocale
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 52) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLocalizedStringReadSpecified(self, *(self + 8), &_readLocale_tags_673);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (NSString)locale
{
  [(GEOLocalizedString *)self _readLocale];
  locale = self->_locale;

  return locale;
}

- (NSString)stringValue
{
  [(GEOLocalizedString *)self _readStringValue];
  stringValue = self->_stringValue;

  return stringValue;
}

- (void)_readStringValue
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 52) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLocalizedStringReadSpecified(self, *(self + 8), &_readStringValue_tags_138350);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

@end