@interface BRQueryItem(BRCAdditions)
- (id)asFileProviderItem;
@end

@implementation BRQueryItem(BRCAdditions)

- (id)asFileProviderItem
{
  if ([self isDead] & 1) != 0 || (objc_msgSend(self, "_isAppLibraryTrashFolder") & 1) != 0 || (objc_msgSend(self, "creationDate"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "timeIntervalSince1970"), busy = BRCIsBusyDate(v3), v2, (busy) || (objc_msgSend(self, "filename"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, !v6))
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end