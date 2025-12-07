@interface MFFakeMailboxUid
- (MFFakeMailboxUid)initWithAccount:(id)account URLString:(id)string fullPath:(id)path isSpecial:(BOOL)special;
@end

@implementation MFFakeMailboxUid

- (MFFakeMailboxUid)initWithAccount:(id)account URLString:(id)string fullPath:(id)path isSpecial:(BOOL)special
{
  specialCopy = special;
  stringCopy = string;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = MFFakeMailboxUid;
  v12 = [(MFMailboxUid *)&v15 initWithAccount:account];
  v13 = v12;
  if (v12)
  {
    [(MFFakeMailboxUid *)v12 setFakeURLString:stringCopy];
    [(MFFakeMailboxUid *)v13 setFakeFullPath:pathCopy];
    [(MFFakeMailboxUid *)v13 setFakeIsSpecialMailboxUid:specialCopy];
  }

  return v13;
}

@end