@interface PrintBandService
- (PrintBandService)initWithXPCConnection:(id)connection;
- (void)dealloc;
- (void)znProcessBand:(id)band withBandDescription:(id *)description reply:(id)reply;
@end

@implementation PrintBandService

- (PrintBandService)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = PrintBandService;
  v6 = [(PrintBandService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcConnection, connection);
  }

  return v7;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100034D34();
  }

  znProcessData = self->znProcessData;
  if (znProcessData)
  {
    znTerminate(znProcessData, v3);
    znCleanup(0, v5, v6, v7, v8);
  }

  v9.receiver = self;
  v9.super_class = PrintBandService;
  [(PrintBandService *)&v9 dealloc];
}

- (void)znProcessBand:(id)band withBandDescription:(id *)description reply:(id)reply
{
  bandCopy = band;
  replyCopy = reply;
  v10 = *&description->var8;
  v11 = *&description->var4;
  *&self->bandCombo.bandDescription.pageWidth_pixels = *&description->var0;
  *&self->bandCombo.bandDescription.bitsPerColor = v11;
  *&self->bandCombo.bandDescription.extendedColorspace = v10;
  self->bandCombo.raster = [bandCopy bytes];
  if (!description->var7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100034DB8();
    }

    initZn(&self->znProcessData, &self->bandCombo);
  }

  v13 = znProcessImageData(self->znProcessData, &self->bandCombo.imageParams, 0, v12);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100034E3C();
  }

  if (!v13)
  {
    v13 = znAcknowledge(self->bandCombo.token, 0, self->znProcessData, v14);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100034EB8();
    }

    if (!v13)
    {
      if (description->var6 + description->var7 >= description->var1)
      {
        v13 = znTerminateBanding(self->znProcessData, v15);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100034F44();
        }
      }

      else
      {
        v13 = 0;
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    var6 = description->var6;
    var7 = description->var7;
    var1 = description->var1;
    bandIsOkay = self->bandCombo.bandIsOkay;
    v21 = 136316418;
    v22 = "[PrintBandService znProcessBand:withBandDescription:reply:]";
    v23 = 1024;
    v24 = var7;
    v25 = 1024;
    v26 = var6;
    v27 = 1024;
    v28 = var1;
    v29 = 1024;
    v30 = v13;
    v31 = 1024;
    v32 = bandIsOkay;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: bandY=%d bandHeight=%d pageHeight=%d result=%d bandOkay=%d", &v21, 0x2Au);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100034FC0();
  }

  if (self->bandCombo.bandIsOkay)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  replyCopy[2](replyCopy, v16);
}

@end