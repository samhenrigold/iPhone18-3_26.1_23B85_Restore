@interface CALNMutableNotificationRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContent:(id)content;
- (void)setDate:(id)date;
- (void)setSourceClientIdentifier:(id)identifier;
- (void)setSourceIdentifier:(id)identifier;
@end

@implementation CALNMutableNotificationRecord

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CALNNotificationRecord allocWithZone:zone];
  sourceIdentifier = [(CALNNotificationRecord *)self sourceIdentifier];
  sourceClientIdentifier = [(CALNNotificationRecord *)self sourceClientIdentifier];
  content = [(CALNNotificationRecord *)self content];
  date = [(CALNNotificationRecord *)self date];
  v9 = [(CALNNotificationRecord *)v4 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier content:content date:date shouldPresentAlert:[(CALNNotificationRecord *)self shouldPresentAlert] shouldPlaySound:[(CALNNotificationRecord *)self shouldPlaySound]];

  return v9;
}

- (void)setSourceIdentifier:(id)identifier
{
  self->super._sourceIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSourceClientIdentifier:(id)identifier
{
  self->super._sourceClientIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setContent:(id)content
{
  self->super._content = [content copy];

  MEMORY[0x2821F96F8]();
}

- (void)setDate:(id)date
{
  self->super._date = [date copy];

  MEMORY[0x2821F96F8]();
}

@end