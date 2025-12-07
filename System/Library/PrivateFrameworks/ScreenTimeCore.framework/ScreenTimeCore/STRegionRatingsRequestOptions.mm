@interface STRegionRatingsRequestOptions
- (STRegionRatingsRequestOptions)initWithUnrated:(BOOL)unrated userDSID:(id)d;
- (STRegionRatingsRequestOptions)initWithUnrated:(BOOL)unrated userDSID:(id)d localDeviceLocale:(id)locale;
@end

@implementation STRegionRatingsRequestOptions

- (STRegionRatingsRequestOptions)initWithUnrated:(BOOL)unrated userDSID:(id)d
{
  unratedCopy = unrated;
  v6 = MEMORY[0x1E695DF58];
  dCopy = d;
  currentLocale = [v6 currentLocale];
  v9 = [(STRegionRatingsRequestOptions *)self initWithUnrated:unratedCopy userDSID:dCopy localDeviceLocale:currentLocale];

  return v9;
}

- (STRegionRatingsRequestOptions)initWithUnrated:(BOOL)unrated userDSID:(id)d localDeviceLocale:(id)locale
{
  unratedCopy = unrated;
  dCopy = d;
  localeCopy = locale;
  v13.receiver = self;
  v13.super_class = STRegionRatingsRequestOptions;
  v10 = [(STRegionRatingsRequestOptions *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(STRegionRatingsRequestOptions *)v10 setUnrated:unratedCopy];
    [(STRegionRatingsRequestOptions *)v11 setUserDSID:dCopy];
    [(STRegionRatingsRequestOptions *)v11 setLocalDeviceLocale:localeCopy];
  }

  return v11;
}

@end