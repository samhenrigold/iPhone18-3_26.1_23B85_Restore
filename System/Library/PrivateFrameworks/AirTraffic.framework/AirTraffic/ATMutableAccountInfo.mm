@interface ATMutableAccountInfo
- (void)setAltDSID:(id)d;
- (void)setAppleID:(id)d;
- (void)setDSID:(id)d;
@end

@implementation ATMutableAccountInfo

- (void)setAppleID:(id)d
{
  if (self->super._appleID != d)
  {
    self->super._appleID = [d copy];

    MEMORY[0x2821F96F8]();
  }
}

- (void)setAltDSID:(id)d
{
  if (self->super._altDSID != d)
  {
    self->super._altDSID = [d copy];

    MEMORY[0x2821F96F8]();
  }
}

- (void)setDSID:(id)d
{
  if (self->super._DSID != d)
  {
    self->super._DSID = [d copy];

    MEMORY[0x2821F96F8]();
  }
}

@end