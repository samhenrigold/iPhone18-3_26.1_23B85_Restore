@interface CNMutableDonationOrigin
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBundleIdentifier:(id)identifier;
- (void)setClusterIdentifier:(id)identifier;
- (void)setDonationDate:(id)date;
- (void)setDonationIdentifier:(id)identifier;
- (void)setExpirationDate:(id)date;
@end

@implementation CNMutableDonationOrigin

- (void)setBundleIdentifier:(id)identifier
{
  if (self->super._bundleIdentifier != identifier)
  {
    self->super._bundleIdentifier = [identifier copy];

    MEMORY[0x2821F96F8]();
  }
}

- (void)setDonationIdentifier:(id)identifier
{
  if (self->super._donationIdentifier != identifier)
  {
    self->super._donationIdentifier = [identifier copy];

    MEMORY[0x2821F96F8]();
  }
}

- (void)setClusterIdentifier:(id)identifier
{
  if (self->super._clusterIdentifier != identifier)
  {
    self->super._clusterIdentifier = [identifier copy];

    MEMORY[0x2821F96F8]();
  }
}

- (void)setDonationDate:(id)date
{
  if (self->super._donationDate != date)
  {
    self->super._donationDate = [date copy];

    MEMORY[0x2821F96F8]();
  }
}

- (void)setExpirationDate:(id)date
{
  if (self->super._expirationDate != date)
  {
    self->super._expirationDate = [date copy];

    MEMORY[0x2821F96F8]();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNDonationOrigin alloc];

  return [(CNDonationOrigin *)v4 initWithDonationOrigin:self];
}

@end