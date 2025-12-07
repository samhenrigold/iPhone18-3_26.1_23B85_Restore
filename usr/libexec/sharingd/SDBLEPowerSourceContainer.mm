@interface SDBLEPowerSourceContainer
- (BOOL)isEqual:(id)equal;
- (SDBLEPowerSourceContainer)initWithPowerSource:(id)source;
- (id)description;
- (int)publish;
- (void)_invalidate;
- (void)dealloc;
- (void)invalidate;
- (void)setInvalidationHandler:(id)handler;
- (void)trigger;
@end

@implementation SDBLEPowerSourceContainer

- (SDBLEPowerSourceContainer)initWithPowerSource:(id)source
{
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = SDBLEPowerSourceContainer;
  v6 = [(SDBLEPowerSourceContainer *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v18 = 0;
    v17 = 0;
    ASPrintF(&v17, "SDBLEPowerSourceContainer-%{ptr}", v6);
    v7->_ucat = LogCategoryCreateEx();
    if (v18)
    {
      v7->_ucat = LogCategoryCreateEx();
    }

    if (v17)
    {
      free(v17);
    }

    objc_storeStrong(&v7->_powerSource, source);
    v8 = objc_opt_new();
    powerSourceIdleCoalescer = v7->_powerSourceIdleCoalescer;
    v7->_powerSourceIdleCoalescer = v8;

    [(CUCoalescer *)v7->_powerSourceIdleCoalescer setMinDelay:30.0];
    objc_initWeak(&location, v7);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100088E24;
    v14[3] = &unk_1008CDD98;
    objc_copyWeak(&v15, &location);
    [(CUCoalescer *)v7->_powerSourceIdleCoalescer setActionHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100088EB4;
    v12[3] = &unk_1008CDD98;
    objc_copyWeak(&v13, &location);
    [(CUCoalescer *)v7->_powerSourceIdleCoalescer setInvalidationHandler:v12];
    p_var0 = &v7->_ucat->var0;
    if (*p_var0 > 10)
    {
      goto LABEL_10;
    }

    if (*p_var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      p_var0 = &v7->_ucat->var0;
    }

    LogPrintF(p_var0, "[SDBLEPowerSourceContainer initWithPowerSource:]", 10, "%s %@", "[SDBLEPowerSourceContainer initWithPowerSource:]", v7->_powerSource);
LABEL_10:
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    powerSource = [(SDBLEPowerSourceContainer *)self powerSource];
    LogPrintF(ucat, "[SDBLEPowerSourceContainer dealloc]", 10, "%s %@", "[SDBLEPowerSourceContainer dealloc]", powerSource);
  }

LABEL_5:
  [(SDBLEPowerSourceContainer *)self _invalidate];
  v5 = self->_ucat;
  if (v5 && (v5->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v6.receiver = self;
  v6.super_class = SDBLEPowerSourceContainer;
  [(SDBLEPowerSourceContainer *)&v6 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    powerSource = [(SDBLEPowerSourceContainer *)self powerSource];
    powerSource2 = [equalCopy powerSource];
    v7 = powerSource;
    v8 = powerSource2;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else if ((v7 != 0) == (v8 == 0))
    {
      v10 = 0;
    }

    else
    {
      v10 = [v7 isEqual:v8];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v12 = 0;
  v3 = objc_opt_class();
  NSAppendPrintF(&v12, "<%@: %{ptr}", v3, self);
  v4 = v12;
  v11 = v4;
  powerSource = [(SDBLEPowerSourceContainer *)self powerSource];
  NSAppendPrintF(&v11, ", %@", powerSource);
  v6 = v11;

  v10 = v6;
  NSAppendPrintF(&v10, ">");
  v7 = v10;
  v8 = v10;

  return v7;
}

- (void)setInvalidationHandler:(id)handler
{
  if (self->_invalidationHandler != handler)
  {
    v5 = [handler copy];
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = v5;
  }
}

- (void)trigger
{
  if (self->_invalidateCalled)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    powerSource = [(SDBLEPowerSourceContainer *)self powerSource];
    LogPrintF(ucat, "[SDBLEPowerSourceContainer trigger]", 10, "%s %@", "[SDBLEPowerSourceContainer trigger]", powerSource);
  }

LABEL_6:
  powerSourceIdleCoalescer = self->_powerSourceIdleCoalescer;

  [(CUCoalescer *)powerSourceIdleCoalescer trigger];
}

- (int)publish
{
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (!self->_invalidateCalled)
  {
    if (var0 <= 10)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      powerSource = [(SDBLEPowerSourceContainer *)self powerSource];
      LogPrintF(ucat, "[SDBLEPowerSourceContainer publish]", 10, "%s %@", "[SDBLEPowerSourceContainer publish]", powerSource);
    }

LABEL_11:
    [(SDBLEPowerSourceContainer *)self trigger];
    powerSource2 = [(SDBLEPowerSourceContainer *)self powerSource];
    publish = [powerSource2 publish];
    goto LABEL_12;
  }

  if (var0 <= 90)
  {
    if (var0 != -1)
    {
LABEL_4:
      powerSource2 = [(SDBLEPowerSourceContainer *)self powerSource];
      LogPrintF(ucat, "[SDBLEPowerSourceContainer publish]", 90, "%s not publishing, already invalidated %@", "[SDBLEPowerSourceContainer publish]", powerSource2);
      publish = -6703;
LABEL_12:

      return publish;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

  return -6703;
}

- (void)invalidate
{
  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      powerSource = [(SDBLEPowerSourceContainer *)self powerSource];
      LogPrintF(ucat, "[SDBLEPowerSourceContainer invalidate]", 10, "%s %@", "[SDBLEPowerSourceContainer invalidate]", powerSource);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(SDBLEPowerSourceContainer *)self _invalidate];
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      powerSource = [(SDBLEPowerSourceContainer *)self powerSource];
      LogPrintF(ucat, "[SDBLEPowerSourceContainer _invalidate]", 10, "%s %@", "[SDBLEPowerSourceContainer _invalidate]", powerSource);

      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  [(CUCoalescer *)self->_powerSourceIdleCoalescer setActionHandler:0];
  [(CUCoalescer *)self->_powerSourceIdleCoalescer setInvalidationHandler:0];
  [(CUCoalescer *)self->_powerSourceIdleCoalescer invalidate];
  powerSourceIdleCoalescer = self->_powerSourceIdleCoalescer;
  self->_powerSourceIdleCoalescer = 0;

  powerSource2 = [(SDBLEPowerSourceContainer *)self powerSource];
  [powerSource2 invalidate];

  invalidationHandler = [(SDBLEPowerSourceContainer *)self invalidationHandler];

  if (invalidationHandler)
  {
    invalidationHandler2 = [(SDBLEPowerSourceContainer *)self invalidationHandler];
    invalidationHandler2[2]();

    [(SDBLEPowerSourceContainer *)self setInvalidationHandler:0];
  }
}

@end