@interface PMMTelephonyConnection
- (BOOL)phoneCallActiveOrHeld;
- (PMMTelephonyConnection)init;
- (void)dealloc;
@end

@implementation PMMTelephonyConnection

- (PMMTelephonyConnection)init
{
  v5.receiver = self;
  v5.super_class = PMMTelephonyConnection;
  v2 = [(PMMTelephonyConnection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_ctServerConnnectionRef = _CTServerConnectionCreate();
  }

  return v3;
}

- (void)dealloc
{
  ctServerConnnectionRef = self->_ctServerConnnectionRef;
  if (ctServerConnnectionRef)
  {
    CFRelease(ctServerConnnectionRef);
    self->_ctServerConnnectionRef = 0;
  }

  v4.receiver = self;
  v4.super_class = PMMTelephonyConnection;
  [(PMMTelephonyConnection *)&v4 dealloc];
}

- (BOOL)phoneCallActiveOrHeld
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_ctServerConnnectionRef)
  {
    v2 = _CTServerConnectionIsAnyCallActiveOrHeld();
    v3 = v2;
    if (v2)
    {
      v4 = __atxlog_handle_pmm(v2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v8 = v3;
        v9 = 1024;
        v10 = HIDWORD(v3);
        _os_log_impl(&dword_22639A000, v4, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionIsAnyCallActiveOrHeld failed %d, %d", buf, 0xEu);
      }
    }

    v5 = __atxlog_handle_pmm(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = 0;
      _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_DEFAULT, "PhoneCallState is %{BOOL}d", buf, 8u);
    }
  }

  else
  {
    v5 = __atxlog_handle_pmm(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_DEFAULT, "Telephony Connection is NULL", buf, 2u);
    }
  }

  return 0;
}

@end