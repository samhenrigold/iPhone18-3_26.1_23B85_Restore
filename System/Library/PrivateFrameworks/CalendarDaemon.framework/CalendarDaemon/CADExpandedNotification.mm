@interface CADExpandedNotification
- (CADExpandedNotification)initWithType:(int)type objectID:(id)d occurrenceDate:(double)date expirationDate:(double)expirationDate attendeeObjectID:(id)iD;
@end

@implementation CADExpandedNotification

- (CADExpandedNotification)initWithType:(int)type objectID:(id)d occurrenceDate:(double)date expirationDate:(double)expirationDate attendeeObjectID:(id)iD
{
  v11 = *&type;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = CADExpandedNotification;
  v14 = [(CADNotification *)&v17 initWithType:v11 objectID:d occurrenceDate:date expirationDate:expirationDate];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_attendeeObjectID, iD);
  }

  return v15;
}

@end