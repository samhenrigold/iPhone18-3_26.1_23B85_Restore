@interface GEOLocalizationCapabilities
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation GEOLocalizationCapabilities

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOLocalizationCapabilities;
  [(GEOLocalizationCapabilities *)&v3 dealloc];
}

- (unint64_t)hash
{
  [(GEOLocalizationCapabilities *)self readAll:1];
  v3 = PBRepeatedInt32Hash();
  if (*&self->_flags)
  {
    v4 = 2654435761 * self->_supportsLocalizedTrafficControlIcons;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

@end