@interface APGreenTeaLogger
- (APGreenTeaLogger)init;
- (void)dealloc;
- (void)willAccessLocation;
- (void)willTransmitLocationFor:(unint64_t)for;
@end

@implementation APGreenTeaLogger

- (APGreenTeaLogger)init
{
  v4.receiver = self;
  v4.super_class = APGreenTeaLogger;
  v2 = [(APGreenTeaLogger *)&v4 init];
  if (v2)
  {
    v2->_logger = ct_green_tea_logger_create();
  }

  return v2;
}

- (void)dealloc
{
  ct_green_tea_logger_destroy();
  v3.receiver = self;
  v3.super_class = APGreenTeaLogger;
  [(APGreenTeaLogger *)&v3 dealloc];
}

- (void)willAccessLocation
{
  objc_msgSend_logger(self, a2, v2);
  v3 = getCTGreenTeaOsLogHandle();
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23E74A000, v4, OS_LOG_TYPE_INFO, "Accessing location for ad targeting", buf, 2u);
  }

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_23E74A000, v5, OS_LOG_TYPE_INFO, "Accessing location for ad targeting", v6, 2u);
  }
}

- (void)willTransmitLocationFor:(unint64_t)for
{
  if (for <= 1)
  {
    if (for)
    {
      if (for != 1)
      {
        return;
      }

      objc_msgSend_logger(self, a2, 1);
      v3 = getCTGreenTeaOsLogHandle();
      v4 = v3;
      if (v3)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&dword_23E74A000, v4, OS_LOG_TYPE_INFO, "Transmitting location to store platform for ad targeting", v13, 2u);
        }
      }

      v5 = APLogForCategory();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      *v13 = 0;
      v6 = "Transmitting location to store platform for ad targeting (TT)";
    }

    else
    {
      objc_msgSend_logger(self, a2, 0);
      v9 = getCTGreenTeaOsLogHandle();
      v10 = v9;
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_23E74A000, v10, OS_LOG_TYPE_INFO, "Transmitting location to store platform for ad targeting", v13, 2u);
      }

      v5 = APLogForCategory();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      *v13 = 0;
      v6 = "Transmitting location to store platform ad targeting (SLP)";
    }

    goto LABEL_26;
  }

  if (for == 2)
  {
    objc_msgSend_logger(self, a2, 2);
    v11 = getCTGreenTeaOsLogHandle();
    v12 = v11;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_23E74A000, v12, OS_LOG_TYPE_INFO, "Transmitting location to store platform for ad targeting", v13, 2u);
    }

    v5 = APLogForCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *v13 = 0;
    v6 = "Transmitting location to store platform for ad targeting (PP)";
    goto LABEL_26;
  }

  if (for != 3)
  {
    return;
  }

  objc_msgSend_logger(self, a2, 3);
  v7 = getCTGreenTeaOsLogHandle();
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_23E74A000, v8, OS_LOG_TYPE_INFO, "Transmitting location to store platform for ad targeting", v13, 2u);
  }

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    v6 = "Transmitting location to store platform for ad targeting (DP)";
LABEL_26:
    _os_log_impl(&dword_23E74A000, v5, OS_LOG_TYPE_INFO, v6, v13, 2u);
  }

LABEL_27:
}

@end