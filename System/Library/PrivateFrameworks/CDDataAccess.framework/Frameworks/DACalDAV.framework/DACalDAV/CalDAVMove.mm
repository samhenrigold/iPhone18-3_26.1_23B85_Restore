@interface CalDAVMove
- (CalDAVMove)initWithSourceCalendarID:(int)d itemID:(int)iD oldExternalID:(id)externalID changeID:(int)changeID objectType:(int64_t)type;
@end

@implementation CalDAVMove

- (CalDAVMove)initWithSourceCalendarID:(int)d itemID:(int)iD oldExternalID:(id)externalID changeID:(int)changeID objectType:(int64_t)type
{
  v8 = *&changeID;
  v9 = *&iD;
  v10 = *&d;
  externalIDCopy = externalID;
  v16.receiver = self;
  v16.super_class = CalDAVMove;
  v13 = [(CalDAVMove *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(CalDAVMove *)v13 setSourceCalendarID:v10];
    [(CalDAVMove *)v14 setItemID:v9];
    [(CalDAVMove *)v14 setOldExternalID:externalIDCopy];
    [(CalDAVMove *)v14 setChangeID:v8];
    [(CalDAVMove *)v14 setObjectType:type];
  }

  return v14;
}

@end