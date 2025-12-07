@interface CRMailAccountAnalyzer
- (BOOL)isAddressRestricted:(id)restricted;
- (CRMailAccountAnalyzer)init;
- (CRMailAccountAnalyzer)initWithLocale:(id)locale;
- (void)addAddress:(id)address isRestricted:(BOOL)restricted;
- (void)dealloc;
@end

@implementation CRMailAccountAnalyzer

- (CRMailAccountAnalyzer)init
{
  v3 = +[NSLocale currentLocale];

  return [(CRMailAccountAnalyzer *)self initWithLocale:v3];
}

- (CRMailAccountAnalyzer)initWithLocale:(id)locale
{
  v6.receiver = self;
  v6.super_class = CRMailAccountAnalyzer;
  v4 = [(CRMailAccountAnalyzer *)&v6 init];
  if (v4)
  {
    v4->_cache = objc_alloc_init(CNCache);
    v4->_locale = locale;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRMailAccountAnalyzer;
  [(CRMailAccountAnalyzer *)&v3 dealloc];
}

- (void)addAddress:(id)address isRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  v6 = [(CRMailAccountAnalyzer *)self normalizeAddress:address];
  if (([-[CNCache objectForKey:onCacheMiss:](self->_cache objectForKey:v6 onCacheMiss:{&stru_10002D3D0), "isEqualToNumber:", &__kCFBooleanTrue}] & 1) == 0)
  {
    cache = self->_cache;
    v8 = [NSNumber numberWithBool:restrictedCopy];

    [(CNCache *)cache setObject:v8 forKey:v6];
  }
}

- (BOOL)isAddressRestricted:(id)restricted
{
  v3 = [(CNCache *)self->_cache objectForKey:[(CRMailAccountAnalyzer *)self normalizeAddress:restricted]];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

@end