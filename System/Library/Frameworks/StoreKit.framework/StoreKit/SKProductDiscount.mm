@interface SKProductDiscount
- (SKProductDiscount)init;
- (void)_setIdentifier:(id)identifier;
- (void)_setPrice:(id)price;
- (void)_setPriceLocale:(id)locale;
- (void)_setSubscriptionPeriod:(id)period;
@end

@implementation SKProductDiscount

- (SKProductDiscount)init
{
  v6.receiver = self;
  v6.super_class = SKProductDiscount;
  v2 = [(SKProductDiscount *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKProductDiscountInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (void)_setPrice:(id)price
{
  objc_storeStrong(self->_internal + 1, price);
  priceCopy = price;
}

- (void)_setPriceLocale:(id)locale
{
  objc_storeStrong(self->_internal + 2, locale);
  localeCopy = locale;
}

- (void)_setSubscriptionPeriod:(id)period
{
  objc_storeStrong(self->_internal + 4, period);
  periodCopy = period;
}

- (void)_setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  internal = self->_internal;
  v6 = internal[7];
  internal[7] = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

@end