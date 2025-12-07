@interface GEOLocalizedAttribution
- (GEOLocalizedAttribution)init;
- (id)language;
- (id)logoURLs;
- (id)snippetLogoURLs;
- (os_unfair_lock_s)captionDisplayString;
- (os_unfair_lock_s)displayName;
- (void)_readLanguage;
- (void)_readLogoURLs;
- (void)_readSnippetLogoURLs;
@end

@implementation GEOLocalizedAttribution

- (GEOLocalizedAttribution)init
{
  v6.receiver = self;
  v6.super_class = GEOLocalizedAttribution;
  v2 = [(GEOLocalizedAttribution *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readLogoURLs
{
  os_unfair_lock_lock((self + 72));
  if ((*(self + 76) & 0x10) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOLocalizedAttributionReadSpecified(self, *(self + 8), &_readLogoURLs_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 72));
}

- (void)_readSnippetLogoURLs
{
  os_unfair_lock_lock((self + 72));
  if ((*(self + 76) & 0x20) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOLocalizedAttributionReadSpecified(self, *(self + 8), &_readSnippetLogoURLs_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 72));
}

- (id)logoURLs
{
  if (self)
  {
    selfCopy = self;
    [(GEOLocalizedAttribution *)self _readLogoURLs];
    self = selfCopy[6];
    v1 = vars8;
  }

  return self;
}

- (id)snippetLogoURLs
{
  if (self)
  {
    selfCopy = self;
    [(GEOLocalizedAttribution *)self _readSnippetLogoURLs];
    self = selfCopy[7];
    v1 = vars8;
  }

  return self;
}

- (void)_readLanguage
{
  os_unfair_lock_lock((self + 72));
  if ((*(self + 76) & 8) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOLocalizedAttributionReadSpecified(self, *(self + 8), &_readLanguage_tags_115040);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 72));
}

- (os_unfair_lock_s)displayName
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 18);
    if ((selfCopy[19]._os_unfair_lock_opaque & 4) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLocalizedAttributionReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readDisplayName_tags_115037);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 18);
    self = *&selfCopy[8]._os_unfair_lock_opaque;
  }

  return self;
}

- (os_unfair_lock_s)captionDisplayString
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 18);
    if ((selfCopy[19]._os_unfair_lock_opaque & 2) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLocalizedAttributionReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readCaptionDisplayString_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 18);
    self = *&selfCopy[6]._os_unfair_lock_opaque;
  }

  return self;
}

- (id)language
{
  if (self)
  {
    selfCopy = self;
    [(GEOLocalizedAttribution *)self _readLanguage];
    self = selfCopy[5];
    v1 = vars8;
  }

  return self;
}

@end