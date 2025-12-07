@interface NRNWActivityReporter
- (id)description;
- (void)dealloc;
@end

@implementation NRNWActivityReporter

- (void)dealloc
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      nrUUID = self->_nrUUID;
    }

    else
    {
      nrUUID = 0;
    }

    v7 = nrUUID;
    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d %@: dealloc", ", "[NRNWActivityReporter dealloc]"", 63, self);
  }

  if (self)
  {
    self->_started = 0;
    objc_setProperty_nonatomic_copy(self, v5, 0, 40);
    v9 = self->_nrUUID;
    v10 = [(NRNWActivityReporter *)self description];
    sub_1000059A8(v9, 40003, v10, 0);
  }

  v11.receiver = self;
  v11.super_class = NRNWActivityReporter;
  [(NRNWActivityReporter *)&v11 dealloc];
}

- (id)description
{
  v3 = [NSString alloc];
  if (self->_started)
  {
    v4 = "";
  }

  else
  {
    v4 = "!";
  }

  v5 = [v3 initWithFormat:@"[%llu %sreporting %@]", self->_identifier, v4, self->_nrUUID];

  return v5;
}

@end