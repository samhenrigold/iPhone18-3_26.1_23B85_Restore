@interface UNSNotificationContactServiceMatchDetails
- (UNSNotificationContactServiceMatchDetails)initWithCnContactIdentifier:(id)identifier cnContactFullname:(id)fullname isSuggestedContact:(BOOL)contact;
@end

@implementation UNSNotificationContactServiceMatchDetails

- (UNSNotificationContactServiceMatchDetails)initWithCnContactIdentifier:(id)identifier cnContactFullname:(id)fullname isSuggestedContact:(BOOL)contact
{
  contactCopy = contact;
  identifierCopy = identifier;
  fullnameCopy = fullname;
  v13.receiver = self;
  v13.super_class = UNSNotificationContactServiceMatchDetails;
  v10 = [(UNSNotificationContactServiceMatchDetails *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(UNSNotificationContactServiceMatchDetails *)v10 setCnContactIdentifier:identifierCopy];
    [(UNSNotificationContactServiceMatchDetails *)v11 setCnContactFullname:fullnameCopy];
    [(UNSNotificationContactServiceMatchDetails *)v11 setIsSuggestedMatch:contactCopy];
  }

  return v11;
}

@end