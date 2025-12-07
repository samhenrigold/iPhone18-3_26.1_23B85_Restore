@interface GEOConditionalFormattedString
- (GEOConditionalFormattedString)init;
- (GEOServerCondition)condition;
- (GEOServerFormattedString)formattedString;
- (void)_readCondition;
- (void)_readFormattedString;
@end

@implementation GEOConditionalFormattedString

- (GEOConditionalFormattedString)init
{
  v6.receiver = self;
  v6.super_class = GEOConditionalFormattedString;
  v2 = [(GEOConditionalFormattedString *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readFormattedString
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 52) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOConditionalFormattedStringReadSpecified(self, *(self + 8), &_readFormattedString_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (void)_readCondition
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 52) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOConditionalFormattedStringReadSpecified(self, *(self + 8), &_readCondition_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (GEOServerFormattedString)formattedString
{
  [(GEOConditionalFormattedString *)self _readFormattedString];
  formattedString = self->_formattedString;

  return formattedString;
}

- (GEOServerCondition)condition
{
  [(GEOConditionalFormattedString *)self _readCondition];
  condition = self->_condition;

  return condition;
}

@end