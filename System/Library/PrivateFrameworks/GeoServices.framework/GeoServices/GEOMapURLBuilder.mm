@interface GEOMapURLBuilder
- (id)buildForWeb;
@end

@implementation GEOMapURLBuilder

- (id)buildForWeb
{
  BOOL = GEOConfigGetBOOL(60, &MapsFeaturesConfig_URLUnification_Metadata);
  dict = self->_dict;
  actionType = self->_actionType;
  if (BOOL)
  {
    v6 = 5;
  }

  else
  {
    v6 = 2;
  }

  return _geo_URLForDictionary(v6, dict, actionType);
}

@end