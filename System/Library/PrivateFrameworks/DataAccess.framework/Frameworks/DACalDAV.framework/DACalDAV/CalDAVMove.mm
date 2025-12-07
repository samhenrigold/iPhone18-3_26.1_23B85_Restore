@interface CalDAVMove
- (CalDAVMove)initWithSourceCalendarID:(int)d itemID:(int)iD oldExternalID:(id)externalID changeID:(int)changeID objectType:(int)type uniqueIdentifier:(id)identifier;
@end

@implementation CalDAVMove

- (CalDAVMove)initWithSourceCalendarID:(int)d itemID:(int)iD oldExternalID:(id)externalID changeID:(int)changeID objectType:(int)type uniqueIdentifier:(id)identifier
{
  v9 = *&type;
  v10 = *&changeID;
  v11 = *&iD;
  v12 = *&d;
  externalIDCopy = externalID;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = CalDAVMove;
  v16 = [(CalDAVMove *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(CalDAVMove *)v16 setSourceCalendarID:v12];
    [(CalDAVMove *)v17 setItemID:v11];
    [(CalDAVMove *)v17 setOldExternalID:externalIDCopy];
    [(CalDAVMove *)v17 setChangeID:v10];
    [(CalDAVMove *)v17 setObjectType:v9];
    [(CalDAVMove *)v17 setUniqueIdentifier:identifierCopy];
  }

  return v17;
}

@end