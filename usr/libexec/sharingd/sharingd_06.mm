void sub_100170200(uint64_t a1)
{
  v1 = [*(a1 + 40) UUIDString];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100170290()
{
  sub_100021E7C();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1000088C4();
  sub_100008870();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100170394(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 48);
  sub_100021E88();
  *v4 = v1;
  sub_100019DC4(&_mh_execute_header, v1, v2, "failed to activate link client for destination device: %@ (%@)", v3, DWORD2(v3), *&v4[2]);
}

void sub_10017040C()
{
  sub_100021E7C();
  v2 = [v1 deviceIdentifier];
  v3 = [*v0 devices];
  sub_100019CC4();
  sub_100008860();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10017065C()
{
  sub_100021E7C();
  v2 = [v1 deviceIdentifier];
  v3 = [*(v0 + 16) devices];
  sub_100019CC4();
  sub_100008860();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100170778()
{
  sub_10002A804();
  v1 = [*v0 devices];
  sub_100170124();
  sub_100019CC4();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100170814()
{
  sub_100021E7C();
  v1 = [v0 UUIDString];
  sub_1000088C4();
  sub_100008870();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001708AC()
{
  sub_100021E7C();
  v2 = [v1 UUIDString];
  v3 = [v0 uniqueIDOverride];
  sub_100019CC4();
  sub_100008870();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10017095C()
{
  sub_10002A804();
  v1 = [v0 deviceIdentifier];
  sub_100170124();
  sub_100019CC4();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100170AC8()
{
  sub_10002A804();
  v1 = [*v0 devices];
  sub_100170124();
  sub_100019CC4();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100170B64()
{
  sub_100021E7C();
  v1 = SFHexStringForData();
  [v0 length];
  sub_100021E88();
  sub_100008870();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x30u);
}

void sub_100170C3C(uint64_t a1)
{
  v1 = SFHexStringForData();
  sub_100021E88();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_100170D00()
{
  sub_100021E7C();
  v2 = v1;
  v3 = [v1 deviceIdentifier];
  v4 = [*v0 devices];
  v5 = [v2 requestIdentifier];
  sub_100021E88();
  sub_100008860();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100171050(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDActivityPayloadManager.m" lineNumber:1149 description:{@"Demo mode enabled, yet cannot find any destinations on service"}];
}

void sub_1001710B4()
{
  sub_10002A804();
  [v0 length];
  sub_100170124();
  sub_100008870();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100172E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) _handleCertificate:*(a1 + 40) intermediateCertificate:*(a1 + 48) withTrustResult:a3 error:a4];
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_100173604(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = a2;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = a3;
  v4 = *(a1 + 32);
  v5 = *(v4 + 168);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100173BC0;
  v6[3] = &unk_1008D1EA8;
  v7 = a4;
  v6[4] = v4;
  v6[5] = v9;
  v6[6] = v8;
  dispatch_async(v5, v6);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
}

uint64_t sub_100173BA4()
{

  return DebugGetErrorString();
}

void sub_100173BC0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v4 = *(a1 + 32);
  if (*(v4 + 128))
  {
    v3 = 0;
    v2 = -6723;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    if (v5 && *(*(*(a1 + 48) + 8) + 24))
    {
      *(v4 + 136) = v5;
      *(*(a1 + 32) + 152) = *(*(*(a1 + 48) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v2 = SFAppleIDCopyKeychainReferenceForKey();
      v6 = 0;
      v3 = v6;
      if (v2)
      {
        goto LABEL_9;
      }

      if ([v6 length])
      {
        objc_storeStrong((*(a1 + 32) + 144), 0);
        [*(a1 + 32) _handleKeyPairAvailable];
        v2 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v3 = 0;
    }

    v2 = -6762;
  }

LABEL_9:
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(*(*(a1 + 48) + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v2)
  {
    v9 = *(a1 + 32);
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v2 userInfo:0];
    [v9 _responseHandlerWithIdentity:0 error:v10];
  }
}

uint64_t sub_100173D6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C(&dword_100971998, "[SDAppleIDIdentityRequest _activate]", a3, "### Object invalidated\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C(&dword_100971998, "[SDAppleIDIdentityRequest _activate]", a3, "### Object invalidated\n");
    }
  }

  return result;
}

void sub_100173DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_100971998 <= 60 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    sub_100019C4C(&dword_100971998, "[SDAppleIDIdentityRequest _activate]", a3, "### Already activated\n");
  }
}

uint64_t sub_100173E40(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C(&dword_100971998, "[SDAppleIDIdentityRequest _invalidate]", a3, "### Object invalidated\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C(&dword_100971998, "[SDAppleIDIdentityRequest _invalidate]", a3, "### Object invalidated\n");
    }
  }

  return result;
}

void sub_100173E98(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF(&dword_100971998, "[SDAppleIDIdentityRequest _handleCertificateCreateResponseError:]", 90, "### Create Certificate request failed with error %@\n", v1);
}

void sub_100173F74()
{
  sub_100019DF0();
  *v2 = NSLocalizedDescriptionKey;
  sub_100173BA4();
  v3 = [sub_10002A810() stringWithUTF8String:?];
  sub_100035DC4(v3, @"?");
  sub_100019CD4();
  [v4 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  *v0 = [sub_1000089B8() errorWithDomain:? code:? userInfo:?];
}

uint64_t sub_10017401C(uint64_t *a1)
{
  result = [NSError errorWithDomain:SFAppleIDErrorDomain code:201227 userInfo:0];
  *a1 = result;
  return result;
}

void sub_100174068()
{
  sub_100019DF0();
  *v1 = NSLocalizedDescriptionKey;
  DebugGetErrorString();
  v2 = [sub_10002A810() stringWithUTF8String:?];
  sub_100035DC4(v2, @"?");
  sub_100019CD4();
  v4 = [v3 dictionaryWithObjects:? forKeys:? count:?];
  *v0 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6705 userInfo:v4];
}

uint64_t sub_1001742B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C(&dword_100971998, "[SDAppleIDIdentityRequest _scheduleCreateCertificateTaskWithDelay:]", a3, "### Create certificate task already scheduled\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C(&dword_100971998, "[SDAppleIDIdentityRequest _scheduleCreateCertificateTaskWithDelay:]", a3, "### Create certificate task already scheduled\n");
    }
  }

  return result;
}

uint64_t sub_10017434C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C(&dword_100971998, "[SDAppleIDIdentityRequest _scheduleFetchCertificateTaskWithDelay:]", a3, "### Fetch certificate task already scheduled\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C(&dword_100971998, "[SDAppleIDIdentityRequest _scheduleFetchCertificateTaskWithDelay:]", a3, "### Fetch certificate task already scheduled\n");
    }
  }

  return result;
}

void sub_1001743E4(uint64_t a1, void *a2)
{
  v3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:a1 userInfo:0];
  [a2 _responseHandlerWithIdentity:0 error:v3];
}

void sub_100174458(uint64_t a1, void *a2)
{
  v3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:a1 userInfo:0];
  [a2 _responseHandlerWithIdentity:0 error:v3];
}

void sub_10017514C(id a1)
{
  v1 = objc_alloc_init(SharingDaemon);
  v2 = qword_100989FF8;
  qword_100989FF8 = v1;
}

void sub_10017699C(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_error)
  {
    v6 = xpc_connection_get_context(*(a1 + 32));
    if (v3 == &_xpc_error_connection_invalid)
    {
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "XPC_ERROR_CONNECTION_INVALID <%p>", &v12, 0xCu);
      }
    }

    else if (v3 == &_xpc_error_connection_interrupted)
    {
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001781B8();
      }
    }

    else
    {
      v7 = daemon_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v3 == &_xpc_error_termination_imminent)
      {
        if (v8)
        {
          sub_100178148();
        }
      }

      else if (v8)
      {
        sub_1001780D8();
      }
    }

    if (v6)
    {
      [v6 invalidate];
      v11 = [v6 objectKey];
      if (v11)
      {
        [*(*(a1 + 40) + 112) removeObjectForKey:v11];
      }

      [*(*(a1 + 40) + 8) removeObject:v6];
      xpc_connection_set_context(*(a1 + 32), 0);
    }
  }

  else
  {
    if (type == &_xpc_type_dictionary)
    {
      string = xpc_dictionary_get_string(v3, "Object");
      if (!string)
      {
        goto LABEL_27;
      }

      v10 = string;
      if (!strcmp(string, "Browser"))
      {
        [*(a1 + 40) handleBrowserMessage:v3 forConnection:*(a1 + 32)];
        goto LABEL_27;
      }

      if (!strcmp(v10, "Operation"))
      {
        [*(a1 + 40) handleOperationMessage:v3 forConnection:*(a1 + 32)];
        goto LABEL_27;
      }

      v5 = daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1001780A4();
      }
    }

    else
    {
      v5 = daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100178070();
      }
    }
  }

LABEL_27:
}

void sub_1001773FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017741C(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_error)
  {
    v5 = daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v3 == &_xpc_error_termination_imminent)
    {
      if (v6)
      {
        sub_100178338();
      }
    }

    else if (v6)
    {
      sub_100178304();
    }

    goto LABEL_11;
  }

  if (type != &_xpc_type_connection)
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001782D0();
    }

LABEL_11:

    goto LABEL_12;
  }

  [*(a1 + 32) handleNewConnection:v3];
LABEL_12:
}

void sub_1001774F8(id a1)
{
  v1 = GestaltCopyAnswer();
  byte_100971A08 = [v1 isEqual:{@"AppleTV5, 3"}] ^ 1;
}

Class sub_100177854(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A010)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100177980;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D1FB0;
    v5 = 0;
    qword_10098A010 = _sl_dlopen();
  }

  if (!qword_10098A010)
  {
    sub_1001783E8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DDUICoreAgent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10017836C();
  }

  qword_10098A008 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100177980(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10098A010 = result;
  return result;
}

void sub_100177AA4(void *a1, NSObject *a2)
{
  v5 = [a1 connection];
  v6 = sub_10000C344(v5);
  v7 = v6;
  if (!v6)
  {
    v2 = [a1 connection];
    pid = xpc_connection_get_pid(v2);
    v7 = NSPrintF("%#{pid}", pid);
  }

  *buf = 138412290;
  v10 = v7;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ is not entitled to do AirDrop discovery", buf, 0xCu);
  if (!v6)
  {
  }
}

void sub_100177BA0(void *a1)
{
  v1 = sub_10000C344(a1);
  sub_10000883C();
  sub_10002FC78(&_mh_execute_header, v2, v3, "%@ is not entitled to get the AirDrop discoverable mode", v4, v5, v6, v7);
}

void sub_100177C24()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100177C94()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100177D04()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100177D74()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100177EE8(void *a1)
{
  v1 = sub_10000C344(a1);
  sub_10000883C();
  sub_10002FC78(&_mh_execute_header, v2, v3, "%@ is not entitled to set the AirDrop discoverable mode", v4, v5, v6, v7);
}

void sub_1001780D8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100178148()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001781B8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10017836C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getDDUICoreAgentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SharingDaemon.m" lineNumber:83 description:{@"Unable to find class %s", "DDUICoreAgent"}];

  __break(1u);
}

void sub_1001783E8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *DeviceDiscoveryUICoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SharingDaemon.m" lineNumber:82 description:{@"%s", *a1}];

  __break(1u);
}

id sub_10017B2C0(uint64_t a1)
{
  [*(a1 + 32) clearCache];
  v2 = *(a1 + 32);

  return [v2 notifyClient];
}

void sub_10017BCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017BD14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = airdrop_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10017DE74();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated RPIdentity for %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

const __CFString *sub_10017C210(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"?";
  }

  else
  {
    return *(&off_1008D20B0 + a1 - 1);
  }
}

void sub_10017DA5C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10017DB8C()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10017DBFC()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10017DC6C()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10017DCDC()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10017DD4C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10017DD88()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10017DE38()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10017DEF8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10017DFC8()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10017E038()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10017E0A8()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

uint64_t SDAuthenticationPairingCreateRecordReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          v41 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v41 & 0x7F) << v23;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_58;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_58:
        v38 = 8;
LABEL_63:
        *(a1 + v38) = v29;
        goto LABEL_66;
      }

      if (v13 == 4)
      {
        v21 = PBReaderReadData();
        v22 = 24;
LABEL_43:
        v30 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_66;
      }

      if (v13 != 5)
      {
        goto LABEL_53;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 4u;
      while (1)
      {
        v43 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v43 & 0x7F) << v14;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_65;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_65:
      *(a1 + 36) = v20;
LABEL_66:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        v42 = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v42 & 0x7F) << v31;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v11 = v32++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_62;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v33;
      }

LABEL_62:
      v38 = 32;
      goto LABEL_63;
    }

    if (v13 != 2)
    {
LABEL_53:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_66;
    }

    v21 = PBReaderReadString();
    v22 = 16;
    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

void sub_10017F4BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) invalidateResponseTimer];
    v3 = *(a1 + 32);
    v4 = SFAutoUnlockErrorDomain;
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Failed to send step data";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:v4 code:103 userInfo:v5];
    [v3 notifyDelegateWithError:v6];
  }
}

id *sub_10017F914(id *result)
{
  if (*(result + 24) == 503)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockMessageTypeRegistrationStep", v5, 2u);
    }

    [v3[4] invalidateResponseTimer];
    return [v3[4] handleStepData:v3[5]];
  }

  return result;
}

uint64_t SDAuthenticationPairingDisableReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_52:
          v31 = 24;
          goto LABEL_53;
        }

        if (v13 != 4)
        {
LABEL_25:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      else
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v35 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v35 & 0x7F) << v18;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_48:
          v31 = 28;
LABEL_53:
          *(a1 + v31) = v24;
          goto LABEL_54;
        }

        if (v13 != 2)
        {
          goto LABEL_25;
        }

        v14 = PBReaderReadString();
        v15 = 8;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100180A5C(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 256));
  [WeakRetained fileZipper:a1[4] event:a1[5] withProperty:a1[6]];

  v3 = a1[6];

  CFRelease(v3);
}

uint64_t sub_100182CF0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001849D8(a2, a3, v5);
  }

  return 2;
}

void sub_100182D50(uint64_t a1, uint64_t a2)
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100184A90();
  }

  v4 = BOMCopierUserData();
  [v4 bomCopierFatalError:a2];
}

void sub_100182DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = BOMCopierUserData();
  [v4 notifyProgress:a3 force:0];
}

void sub_100182E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100184B00();
  }

  v5 = BOMCopierUserData();
  [v5 bomCopierFatalFileError:a3];
}

void sub_100182E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = BOMCopierUserData();
  [v9 bomCopierCopyFileFinished:a2 type:a3 size:a4 operation:a5];
}

uint64_t sub_100182F04(uint64_t a1, uint64_t a2)
{
  v2 = airdrop_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100184B84();
  }

  return 2;
}

void sub_100182F54(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 168);
  if (v2)
  {
    [v3 executeReadWithAdaptiveCompression];
  }

  else
  {
    [v3 executeWriteWithAdaptiveCompression];
  }

  v4 = a1[6];

  dispatch_group_leave(v4);
}

uint64_t sub_100183478(uint64_t a1)
{
  result = BOMCopierFree();
  *(*(a1 + 32) + 56) = 0;
  return result;
}

void sub_100183B0C(uint64_t a1)
{
  if ([*(a1 + 32) initBomWithFiles])
  {
    writeStream = 0;
    v2 = objc_opt_new();
    [v2 setObject:*(*(a1 + 32) + 40) forKeyedSubscript:@"indexbom"];
    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"copyResources"];
    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"sourceIsAppSandboxed"];
    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"copyExtendedAttributes"];
    if (*(*(a1 + 32) + 208) == 1)
    {
      v3 = airdrop_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Zip: AirDrop is using PKZip archiving", buf, 2u);
      }

      [v2 setObject:&off_10090BE80 forKeyedSubscript:@"zlibCompressionLevel"];
      [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"createPKZip"];
      writeStream = CFRetain(*(*(a1 + 32) + 96));
      v4 = off_1008D3E38;
    }

    else
    {
      *buf = 0;
      v6 = airdrop_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Zip: AirDrop is using CPIO archiving with adaptive compression", v13, 2u);
      }

      [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"createCPIO"];
      CFStreamCreateBoundPair(0, buf, &writeStream, *(*(a1 + 32) + 200));
      v7 = [SDAirDropCompressor alloc];
      v8 = [(SDAirDropCompressor *)v7 initWithReadStream:*buf writeStream:*(*(a1 + 32) + 96)];
      v9 = *(a1 + 32);
      v10 = *(v9 + 168);
      *(v9 + 168) = v8;

      CFRelease(*buf);
      v4 = off_1008D3E40;
    }

    objc_storeStrong((*(a1 + 32) + 240), *v4);
    v11 = sub_1001F0874(*(*(a1 + 32) + 216));
    if (writeStream)
    {
      if (CFWriteStreamOpen(writeStream))
      {
        [v2 setObject:writeStream forKeyedSubscript:@"outputStream"];
      }

      else
      {
        v12 = airdrop_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100185040();
        }
      }

      CFRelease(writeStream);
    }

    [*(a1 + 32) startBomCopy:v11 destination:*(*(a1 + 32) + 48) options:v2];
  }

  else
  {
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100185004();
    }

    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    [*(a1 + 32) notifyClientForEvent:10 withProperty:v2];
  }
}

void sub_100183F00(uint64_t a1)
{
  readStream = 0;
  v2 = objc_opt_new();
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"copyResources"];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"copyExtendedAttributes"];
  if ([*(*(a1 + 32) + 232) isEqual:@"pkzip"])
  {
    v3 = airdrop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unzip: AirDrop is using PKZip compression", buf, 2u);
    }

    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"extractPKZip"];
    v4 = @"sequesterResources";
    v5 = v2;
    v6 = &__kCFBooleanTrue;
    goto LABEL_13;
  }

  if (![*(*(a1 + 32) + 232) isEqual:@"dvzip"])
  {
    v13 = airdrop_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unzip: AirDrop is using CPIO archiving with auto compression detection", buf, 2u);
    }

    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"extractCPIO"];
    v6 = @"auto";
    v4 = @"compressCPIO";
    v5 = v2;
LABEL_13:
    [v5 setObject:v6 forKeyedSubscript:v4];
    v12 = CFRetain(*(*(a1 + 32) + 88));
    readStream = v12;
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  *buf = 0;
  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unzip: AirDrop is using CPIO archiving with adaptive compression", v15, 2u);
  }

  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"extractCPIO"];
  CFStreamCreateBoundPair(0, &readStream, buf, *(*(a1 + 32) + 200));
  v8 = [SDAirDropCompressor alloc];
  v9 = [(SDAirDropCompressor *)v8 initWithReadStream:*(*(a1 + 32) + 88) writeStream:*buf];
  v10 = *(a1 + 32);
  v11 = *(v10 + 168);
  *(v10 + 168) = v9;

  CFRelease(*buf);
  v12 = readStream;
  if (readStream)
  {
LABEL_14:
    if (CFReadStreamOpen(v12))
    {
      [v2 setObject:readStream forKeyedSubscript:@"inputStream"];
    }

    else
    {
      v14 = airdrop_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1001850EC();
      }
    }

    CFRelease(readStream);
  }

LABEL_20:
  [*(a1 + 32) startBomCopy:0 destination:*(*(a1 + 32) + 32) options:v2];
}

void sub_100184268(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 7))
  {
    v3 = WeakRetained;
    BOMCopierCancelCopy();
    v2 = v3;
  }
}

void sub_100184554()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184590()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001845CC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10018463C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001846AC(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SDAirDropFileZipper: createPlaceholderFiles conflict not handled", buf, 2u);
}

void sub_1001846EC(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SDAirDropFileZipper: CFURLCopyLastPathComponent returned NULL", buf, 2u);
}

void sub_10018472C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100184810()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10018484C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184888()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001848F8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100184968()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001849D8(uint64_t a1, int __errnum, NSObject *a3)
{
  v4 = 136315650;
  v5 = a1;
  v6 = 1024;
  v7 = __errnum;
  v8 = 2080;
  v9 = strerror(__errnum);
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "SDAirDropFileZipper: bomCopierFileErrorPtr - %s, errno = %d (%s)", &v4, 0x1Cu);
}

void sub_100184A90()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100184B00()
{
  sub_10000883C();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "SDAirDropFileZipper: bomCopierFatalFileErrorPtr - %s (%d)", v2, 0x12u);
}

void sub_100184B84()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100184C84()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184D34()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184D70()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184DAC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184E60()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184E9C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184ED8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184F14()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184F50()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184F8C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100184FC8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100185004()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100185040()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10018507C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001850EC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

id sub_10018572C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100971A10 <= 50)
  {
    if (dword_100971A10 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001929D0(a1, a2, a3);
    }
  }

  [*(*(v3 + 32) + 16) prefsChanged];
  [*(*(v3 + 32) + 32) prefsChanged];
  [*(*(v3 + 32) + 64) prefsChanged];
  [*(*(v3 + 32) + 72) prefsChanged];
  [*(*(v3 + 32) + 88) prefsChanged];
  [*(*(v3 + 32) + 96) prefsChanged];
  [*(*(v3 + 32) + 104) prefsChanged];
  [*(*(v3 + 32) + 120) prefsChanged];
  [*(*(v3 + 32) + 24) prefsChanged];
  v4 = *(*(v3 + 32) + 112);

  return [v4 prefsChanged];
}

void sub_100186480(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(*(a1 + 32) + 112) + 56));
  v2 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v2 autoFillDismissUserNotification];
}

void sub_1001864E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 112) + 56);
  v6 = a3;
  dispatch_assert_queue_V2(v5);
  v7 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v7 autoFillPairingSucceeded:a2 completion:v6];
}

void sub_10018656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch_assert_queue_V2(*(*(*(a1 + 32) + 112) + 56));
  v6 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v6 autoFillPromptForPIN:a2 throttleSeconds:a3];
}

void sub_100186CC8(uint64_t a1)
{
  v1 = daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_100192F84(v1);
  }
}

void sub_100187834(uint64_t a1)
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v80[0] = CNContactEmailAddressesKey;
  v80[1] = CNContactPhoneNumbersKey;
  v3 = [NSArray arrayWithObjects:v80 count:2];
  v4 = [*(a1 + 32) contactIdentifier];
  if (v4)
  {
    v5 = [v2 contactWithContactIdentifier:v4];
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 48) == 1 && (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 contactIsBlocked:v6], v7, v8))
      {
        v9 = *(a1 + 40);
        v10 = NSErrorWithOSStatusF(4294896150, "Contact is blocked");
        (*(v9 + 16))(v9, 0, v10);
      }

      else
      {
        (*(*(a1 + 40) + 16))();
      }

LABEL_22:

LABEL_23:
      goto LABEL_24;
    }
  }

  v4 = [*(a1 + 32) emailAddress];
  if (v4)
  {
    v58 = v3;
    [v2 contactsWithPhoneNumberOrEmail:v4 keys:v3];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v6 = v75 = 0u;
    v11 = [v6 countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v73;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v73 != v13)
          {
            objc_enumerationMutation(v6);
          }

          if (*(a1 + 48) == 1)
          {
            v15 = *(*(&v72 + 1) + 8 * i);
            v16 = +[SDStatusMonitor sharedMonitor];
            LOBYTE(v15) = [v16 contactIsBlocked:v15];

            if (v15)
            {
              v19 = *(a1 + 40);
              v20 = NSErrorWithOSStatusF(4294896150, "Contact is blocked");
              (*(v19 + 16))(v19, 0, v20);

              v17 = v6;
              goto LABEL_20;
            }
          }
        }

        v12 = [v6 countByEnumeratingWithState:&v72 objects:v79 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    if ([v6 count])
    {
      v17 = [v2 contactWithPreferredIdentifierForContacts:v6];
      v18 = [v17 identifier];
      [*(a1 + 32) setContactIdentifier:v18];

      (*(*(a1 + 40) + 16))();
LABEL_20:
      v3 = v58;
LABEL_21:

      goto LABEL_22;
    }

    v57 = v2;
    v21 = @"@icloud.com";
    if ([v4 rangeOfString:@"@icloud.com" options:13] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = @"@mac.com";
      v3 = v58;
      if ([v4 rangeOfString:@"@mac.com" options:13] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = @"@me.com";
        if ([v4 rangeOfString:@"@me.com" options:13] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = @"@gmail.com";
          if ([v4 rangeOfString:@"@gmail.com" options:13] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v21 = @"@googlemail.com";
            if ([v4 rangeOfString:@"@googlemail.com" options:13] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = 0;
              v22 = 0;
            }

            else
            {
              v22 = &off_100910250;
            }
          }

          else
          {
            v22 = &off_100910238;
          }
        }

        else
        {
          v22 = &off_100910220;
        }
      }

      else
      {
        v22 = &off_100910208;
      }
    }

    else
    {
      v22 = &off_1009101F0;
      v3 = v58;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v23)
    {
      v24 = *v69;
      v52 = v22;
      v53 = v21;
      v51 = *v69;
      while (2)
      {
        v25 = 0;
        v54 = v23;
        do
        {
          if (*v69 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v55 = v25;
          v17 = [v4 stringByReplacingOccurrencesOfString:v21 withString:*(*(&v68 + 1) + 8 * v25)];
          v26 = [v2 contactsWithPhoneNumberOrEmail:v17 keys:v3];

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v6 = v26;
          v27 = [v6 countByEnumeratingWithState:&v64 objects:v77 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v65;
            while (2)
            {
              for (j = 0; j != v28; j = j + 1)
              {
                if (*v65 != v29)
                {
                  objc_enumerationMutation(v6);
                }

                v31 = *(*(&v64 + 1) + 8 * j);
                v32 = +[SDStatusMonitor sharedMonitor];
                LODWORD(v31) = [v32 contactIsBlocked:v31];

                if (v31)
                {
                  v47 = *(a1 + 40);
                  v48 = NSErrorWithOSStatusF(4294896150, "Contact is blocked");
                  (*(v47 + 16))(v47, 0, v48);

                  v49 = v6;
                  v2 = v57;
                  goto LABEL_72;
                }
              }

              v28 = [v6 countByEnumeratingWithState:&v64 objects:v77 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          if ([v6 count])
          {
            v2 = v57;
            v49 = [v57 contactWithPreferredIdentifierForContacts:v6];
            v50 = [v49 identifier];
            [*(a1 + 32) setContactIdentifier:v50];

            [*(a1 + 32) setEmailAddress:v17];
            (*(*(a1 + 40) + 16))();
LABEL_72:
            v3 = v58;

            goto LABEL_21;
          }

          v25 = v55 + 1;
          v2 = v57;
          v3 = v58;
          v22 = v52;
          v21 = v53;
          v24 = v51;
        }

        while ((v55 + 1) != v54);
        v23 = [v52 countByEnumeratingWithState:&v68 objects:v78 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }
  }

  v33 = [*(a1 + 32) phoneNumber];
  v34 = v33 != 0;
  if (v33)
  {
    v35 = [v2 contactsWithPhoneNumberOrEmail:v33 keys:v3];
    if ([v35 count])
    {
      v59 = v3;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v56 = v35;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v60 objects:v76 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v61;
        while (2)
        {
          for (k = 0; k != v38; k = k + 1)
          {
            if (*v61 != v39)
            {
              objc_enumerationMutation(v36);
            }

            if (*(a1 + 48) == 1)
            {
              v41 = *(*(&v60 + 1) + 8 * k);
              v42 = +[SDStatusMonitor sharedMonitor];
              LOBYTE(v41) = [v42 contactIsBlocked:v41];

              if (v41)
              {
                v44 = *(a1 + 40);
                v45 = NSErrorWithOSStatusF(4294896150, "Contact is blocked");
                (*(v44 + 16))(v44, 0, v45);

                goto LABEL_67;
              }
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v60 objects:v76 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v36 = [v2 contactWithPreferredIdentifierForContacts:v36];
      v43 = [v36 identifier];
      [*(a1 + 32) setContactIdentifier:v43];

      (*(*(a1 + 40) + 16))();
LABEL_67:

      v3 = v59;
      v34 = v33 != 0;
      v35 = v56;
    }

    else
    {
      v34 = 0;
    }
  }

  if (!v34)
  {
    v46 = *(a1 + 40);
    v4 = NSErrorWithOSStatusF(4294960569, "Contact not found");
    (*(v46 + 16))(v46, 0, v4);
    goto LABEL_23;
  }

LABEL_24:
}

void sub_1001883E4(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100188434(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10018844C(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_100971A10 <= 90)
  {
    if (dword_100971A10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&dword_100971A10, "[SDXPCConnection getDeviceAssets:completion:]_block_invoke", 90, "### GetDeviceAssets failed: %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

void sub_100188518(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(*(a1 + 32) + 112) + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100188600;
  v11[3] = &unk_1008D2218;
  v12 = v5;
  v15 = *(a1 + 48);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void sub_100188600(uint64_t a1)
{
  v6 = [*(a1 + 32) path];
  if (v6)
  {
    if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection getDeviceAssets:completion:]_block_invoke_3", 30, "GetDeviceAssets complete: XID 0x%X, BundlePath '%@'\n", *(a1 + 56), v6);
    }

    v4 = objc_alloc_init(SFClientGetDeviceAssetsResults);
    [v4 setAssetBundlePath:v6];
    v5 = *(*(a1 + 48) + 16);
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = NSErrorF(NSOSStatusErrorDomain, 4294960596, "No bundle without error");
    }

    v4 = v3;
    if (dword_100971A10 <= 90 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection getDeviceAssets:completion:]_block_invoke_3", 90, "### GetDeviceAssets failed: XID 0x%X, %{error}\n", *(a1 + 56), v4);
    }

    v5 = *(*(a1 + 48) + 16);
  }

  v5();
}

void sub_100188784(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v13 = a5;
  v8 = [a2 bundlePath];
  if (v8)
  {
    if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      v9 = "no";
      if (a4)
      {
        v9 = "yes";
      }

      LogPrintF(&dword_100971A10, "[SDXPCConnection getDeviceAssets:completion:]_block_invoke_4", 30, "GetDeviceAssets complete: XID 0x%X, BundlePath '%@', Fallback %s\n", *(a1 + 40), v8, v9);
    }

    v11 = objc_alloc_init(SFClientGetDeviceAssetsResults);
    [v11 setAssetBundlePath:v8];
    v12 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = NSErrorF(NSOSStatusErrorDomain, 4294960596, "No bundle without error");
    }

    v11 = v10;
    if (dword_100971A10 <= 90 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection getDeviceAssets:completion:]_block_invoke_4", 90, "### GetDeviceAssets failed: XID 0x%X, %{error}\n", *(a1 + 40), v11);
    }

    v12 = *(*(a1 + 32) + 16);
  }

  v12();
}

void sub_100189458(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_100971A10 <= 90 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_100193190(v5);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (dword_100971A10 <= 30 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
    {
      sub_1001931D0(v7);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_100189EF0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_100971A10 <= 90)
  {
    v5 = v2;
    if (dword_100971A10 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100193234(v3);
      v3 = v5;
    }
  }
}

void sub_10018B168(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 deviceDiscoveryFoundDevice:v4];
}

void sub_10018B1E8(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 deviceDiscoveryLostDevice:v4];
}

void sub_10018B268(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 112) + 56);
  v6 = a2;
  dispatch_assert_queue_V2(v5);
  v7 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v7 deviceDiscoveryDeviceChanged:v6 changes:a3];
}

void sub_10018B2F0(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(*(*(a1 + 32) + 112) + 56));
  v4 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v4 deviceDiscoveryScanStateChanged:a2];
}

void sub_10018D4A0(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 proximityClientDeviceEnteredImmediate:v4];
}

void sub_10018D520(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 proximityClientDeviceExitedImmediate:v4];
}

void sub_10018D5A0(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 proximityClientDeviceEnteredNearby:v4];
}

void sub_10018D620(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 proximityClientDeviceExitedNearby:v4];
}

void sub_10018D6A0(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 proximityClientDeviceWasDismissedHandler:v4 reason:0];
}

void sub_10018D724(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 112) + 56);
  v6 = a2;
  dispatch_assert_queue_V2(v5);
  v7 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v7 proximityClientDeviceWasDismissedHandler:v6 reason:a3];
}

void sub_10018D7AC(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 proximityClientDeviceWasSelectedHandler:v4];
}

void sub_10018D82C(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 proximityClientDeviceWillTriggerHandler:v4];
}

void sub_10018D8AC(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 proximityClientDeviceDidUntriggerHandler:v4];
}

void sub_10018D92C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(*(a1 + 32) + 112) + 56);
  v8 = a2;
  dispatch_assert_queue_V2(v7);
  v9 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v9 proximityClientDeviceUpdated:v8 rssi:a3 state:a4];
}

void sub_10018E44C(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 remoteInteractionSessionRemoteTextEvent:v4];
}

void sub_10018E4CC(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 remoteInteractionSessionTextSessionDidBegin:v4];
}

void sub_10018E54C(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 remoteInteractionSessionTextSessionDidEnd:v4];
}

void sub_10018E5CC(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 remoteInteractionSessionTextSessionDidChange:v4];
}

void sub_10018E6E8(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 serviceError:v4];
}

void sub_10018E768(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100194010(v4);
  }

  dispatch_assert_queue_V2(*(*(*(a1 + 32) + 112) + 56));
  v3 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v3 serviceReceivedEvent:v4];
}

void sub_10018E814(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 112) + 56);
  v6 = a3;
  v7 = a2;
  dispatch_assert_queue_V2(v5);
  [*(a1 + 32) servicePeerDisconnected:v7 error:v6];
  v8 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v8 servicePeerDisconnected:v7 error:v6];
}

void sub_10018E8B8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(*(*(a1 + 32) + 112) + 56);
  v8 = a4;
  v9 = a3;
  dispatch_assert_queue_V2(v7);
  v10 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v10 serviceReceivedFrameType:a2 data:v9 peer:v8];
}

void sub_10018E95C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100194050(v4);
  }

  dispatch_assert_queue_V2(*(*(*(a1 + 32) + 112) + 56));
  v3 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v3 serviceReceivedRequest:v4];
}

void sub_10018EA08(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_100971A10 <= 10 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    sub_100194090(v4);
  }

  dispatch_assert_queue_V2(*(*(*(a1 + 32) + 112) + 56));
  v3 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v3 serviceReceivedResponse:v4];
}

void sub_10018EF00(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(*(*(a1 + 32) + 112) + 56));
  v4 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v4 sessionBluetoothStateChanged:a2];
}

void sub_10018EF6C(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 sessionError:v4];
}

void sub_10018EFEC(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 sessionReceivedEvent:v4];
}

void sub_10018F06C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 112) + 56);
  v6 = a3;
  dispatch_assert_queue_V2(v5);
  v7 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v7 sessionReceivedFrameType:a2 data:v6];
}

void sub_10018F0F4(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 sessionReceivedRequest:v4];
}

void sub_10018F174(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 112) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [*(*(a1 + 32) + 136) remoteObjectProxy];
  [v5 sessionReceivedResponse:v4];
}

void sub_10018F7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018F824(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_100971A10 <= 90)
  {
    if (dword_100971A10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&dword_100971A10, "[SDXPCConnection shareAudioSessionActivate:completion:]_block_invoke", 90, "### %@ failed: %{error}\n", @"ShareAudioSession activate", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

void sub_10018F8F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 120))
  {
    v6 = *(v4 + 136);
    v7 = a3;
    v8 = [v6 remoteObjectProxy];
    [v8 shareAudioProgressEvent:a2 info:v7];
  }
}

void sub_10018FB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13, a2, a3, a4, a5, a6, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018FBB0(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_100971A10 <= 90)
  {
    if (dword_100971A10 != -1)
    {
      return LogPrintF(&dword_100971A10, "[SDXPCConnection shareAudioUserConfirmed]_block_invoke", 90, "### %@ failed: %{error}\n", @"ShareAudioSession UserConfirmed", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_100971A10, "[SDXPCConnection shareAudioUserConfirmed]_block_invoke", 90, "### %@ failed: %{error}\n", @"ShareAudioSession UserConfirmed", v1);
    }
  }

  return result;
}

Class sub_10018FCC8(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A020)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10018FDF4;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D2408;
    v5 = 0;
    qword_10098A020 = _sl_dlopen();
  }

  if (!qword_10098A020)
  {
    sub_10019498C(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("UNUserNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100194910();
  }

  qword_10098A018 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10018FDF4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10098A020 = result;
  return result;
}

uint64_t sub_100190000(uint64_t a1, uint64_t a2)
{

  return DebugGetErrorString();
}

uint64_t sub_100190078(uint64_t a1)
{

  return DebugGetErrorString();
}

id sub_1001900C0()
{
  v3 = *(*(v1 + 112) + 56);

  return [v0 setDispatchQueue:v3];
}

void sub_1001900DC()
{
  v2 = *(*(v0 + 112) + 56);

  dispatch_assert_queue_V2(v2);
}

id sub_1001900F8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v3 _entitled:a3 state:v3 + 50 label:?];
}

void sub_100192B28()
{
  if (dword_100971A10 <= 60)
  {
    sub_100019C80();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection autoFillHelperDidPickUsername:password:error:]", 60, "### %@ failed: %#m\n", @"AutoFillHelperTryPIN", v0);
    }
  }
}

void sub_100192BF0()
{
  if (dword_100971A10 <= 60)
  {
    sub_100019C80();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection autoFillHelperTryPIN:]", 60, "### %@ failed: %#m\n", @"AutoFillHelperTryPIN", v0);
    }
  }
}

void sub_100192CB8()
{
  if (dword_100971A10 <= 60)
  {
    sub_100019C80();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection autoFillHelperUserNotificationDidActivate:]", 60, "### %@ failed: %#m\n", @"AutoFillHelperNotificationDidActivate", v0);
    }
  }
}

void sub_100192D80()
{
  if (dword_100971A10 <= 60)
  {
    sub_100019C80();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection autoFillHelperUserNotificationDidDismiss:]", 60, "### %@ failed: %#m\n", @"AutoFillHelperNotificationDidDismiss", v0);
    }
  }
}

void sub_100192EC0(uint64_t a1)
{
  if (a1)
  {
    sub_100190124();
    sub_10018FEC4();
    *v3 = NSLocalizedDescriptionKey;
    sub_100190000(v4, v5);
    v6 = [sub_10019003C() stringWithUTF8String:?];
    sub_10002A81C(v6, @"?");
    sub_100023F7C();
    [v7 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1000089D0() errorWithDomain:? code:? userInfo:?];
    objc_claimAutoreleasedReturnValue();
    v8 = sub_100019E00();
    v9(v8, 0, v2);

    sub_100190138();
  }
}

uint64_t sub_100192FC8(void *a1)
{
  v2 = [a1 maxPeople];
  v3 = [a1 excludeBackfills];
  v4 = "NO";
  if (v3)
  {
    v4 = "YES";
  }

  return LogPrintF(&dword_100971A10, "[SDXPCConnection getPeopleSuggestions:completion:]", 30, "GetPeopleSuggestions start: max %d, excludeBackfills %s\n", v2, v4);
}

void sub_100193274(uint64_t a1)
{
  if (a1)
  {
    sub_100190124();
    sub_10018FEC4();
    *v3 = NSLocalizedDescriptionKey;
    sub_100190000(v4, v5);
    v6 = [sub_10019003C() stringWithUTF8String:?];
    sub_10002A81C(v6, @"?");
    sub_100023F7C();
    [v7 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1000089D0() errorWithDomain:? code:? userInfo:?];
    objc_claimAutoreleasedReturnValue();
    v8 = sub_100019E00();
    v9(v8, v2);

    sub_100190138();
  }
}

void sub_100193350(uint64_t a1)
{
  if (a1)
  {
    sub_100190124();
    sub_100190110();
    sub_100186CC8(v4);
    *v1 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithUTF8String:sub_100190078(v3)];
    sub_10002A81C(v5, @"?");
    sub_100023F7C();
    v7 = [v6 dictionaryWithObjects:? forKeys:? count:?];
    [sub_1001900B0() errorWithDomain:? code:? userInfo:?];
    objc_claimAutoreleasedReturnValue();
    v8 = sub_100019E00();
    v9(v8, 0, v2);

    sub_100190138();
  }
}

void sub_100193444(uint64_t a1)
{
  if (a1)
  {
    sub_100190124();
    sub_10018FEC4();
    *v3 = NSLocalizedDescriptionKey;
    sub_100190000(v4, v5);
    v6 = [sub_10019003C() stringWithUTF8String:?];
    sub_10002A81C(v6, @"?");
    sub_100023F7C();
    [v7 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1000089D0() errorWithDomain:? code:? userInfo:?];
    objc_claimAutoreleasedReturnValue();
    v8 = sub_100019E00();
    v9(v8, 1, v2);

    sub_100190138();
  }
}

void sub_100193684()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection deviceDiscoveryUpdate:]", 60, "### %@ failed: %#m\n", @"DeviceDiscoveryUpdate", 4294960576);
  }
}

void sub_100193748()
{
  sub_100190124();
  v1 = v0;
  *v2 = NSLocalizedDescriptionKey;
  sub_100190000(v3, v4);
  v5 = [sub_10019003C() stringWithUTF8String:?];
  sub_10018FED4();
  *v1 = v6;
  sub_100190180();
  v8 = [v7 dictionaryWithObjects:? forKeys:? count:?];
  v9 = [sub_10018FE88() errorWithDomain:? code:? userInfo:?];
  v10 = sub_100190090();
  v11(v10, v9);

  sub_100190138();
}

void sub_10019391C()
{
  if (dword_100971A10 <= 60)
  {
    sub_100019C80();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection diagnosticUnlockTestClientWithDevice:]", 60, "### %@ failed: %#m\n", @"DiagnosticUnlockTestClientWithDevice", v0);
    }
  }
}

void sub_10019399C()
{
  if (dword_100971A10 <= 60)
  {
    sub_100019C80();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection diagnosticUnlockTestServer]", 60, "### %@ failed: %#m\n", @"DiagnosticUnlockTestServer", v0);
    }
  }
}

void sub_100193A64()
{
  sub_100190110();
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection nfcTagReaderUIActivateWithEndpoint:params:completion:]", 60, "### %@ failed: %#m\n", @"NFCTagReaderUIActivate", v3);
  }

  if (v0)
  {
    *v1 = NSLocalizedDescriptionKey;
    v4 = [NSString stringWithUTF8String:sub_100190078(v3)];
    sub_10002A81C(v4, @"?");
    sub_100023F7C();
    v6 = [v5 dictionaryWithObjects:? forKeys:? count:?];
    [sub_1001900B0() errorWithDomain:? code:? userInfo:?];
    objc_claimAutoreleasedReturnValue();
    v7 = sub_100019E00();
    v8(v7, v2);
  }
}

void sub_100193D98()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection proximityClientUpdate:]", 60, "### %@ failed: %#m\n", @"ProximityClientUpdate", 4294960576);
  }
}

void sub_100193E14(uint64_t a1, NSErrorUserInfoKey *a2, void *a3)
{
  if (dword_100971A10 <= 90 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    *a2 = NSLocalizedDescriptionKey;
    sub_100190078(a1);
    v6 = [sub_10019003C() stringWithUTF8String:?];
    sub_10018FED4();
    *a3 = v7;
    v8 = [NSDictionary dictionaryWithObjects:a3 forKeys:a2 count:1];
    v9 = [sub_10018FE88() errorWithDomain:? code:? userInfo:?];
    LogPrintF(&dword_100971A10, "[SDXPCConnection proximityClientRequestScannerTimerReset]", 90, "### Request scanner timer reset failed: %@\n", v9);
  }
}

void sub_100193F94()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection remoteInteractionSessionSendPayload:]", 60, "### %@ failed: %#m\n", @"RemoteInteractionSessionSendData", 4294960576);
  }
}

void sub_100194118()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection serviceUpdate:]", 60, "### %@ failed: %#m\n", @"ServiceUpdate", 4294960576);
  }
}

void sub_1001941DC()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection servicePeerDisconnected:error:]", 60, "### %@ failed: %#m\n", @"ServicePeerDisconnected", 4294960551);
  }
}

void sub_1001942A0()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection serviceSendEvent:]", 60, "### %@ failed: %#m\n", @"ServiceSendEvent", 4294960551);
  }
}

uint64_t sub_10019431C(unsigned __int8 a1, void *a2)
{
  if (a1 > 0x41u)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1008D2790[a1];
  }

  return LogPrintF(&dword_100971A10, "-[SDXPCConnection serviceSendFrameType:data:peer:]", 10, "%@: %s, %ld bytes\n", @"ServiceSendFrame", v2, [a2 length]);
}

void sub_1001943A0()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection serviceSendFrameType:data:peer:]", 60, "### %@ failed: %#m\n", @"ServiceSendFrame", 4294960551);
  }
}

void sub_100194464()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection serviceSendRequest:]", 60, "### %@ failed: %#m\n", @"ServiceSendRequest", 4294960551);
  }
}

void sub_100194528()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection serviceSendResponse:]", 60, "### %@ failed: %#m\n", @"ServiceSendResponse", 4294960551);
  }
}

void sub_1001945EC()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection sessionSendEvent:]", 60, "### %@ failed: %#m\n", @"SessionSendEvent", 4294960551);
  }
}

uint64_t sub_100194668(unsigned __int8 a1, void *a2)
{
  if (a1 > 0x41u)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1008D2790[a1];
  }

  return LogPrintF(&dword_100971A10, "-[SDXPCConnection sessionSendFrameType:data:]", 10, "%@: %s, %ld bytes\n", @"SessionSendFrame", v2, [a2 length]);
}

void sub_1001946EC()
{
  if (dword_100971A10 <= 60)
  {
    sub_100019C80();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_100971A10, "[SDXPCConnection sessionSendFrameType:data:]", 60, "### %@ failed: %#m\n", @"SessionSendFrame", v0);
    }
  }
}

void sub_1001947B4()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection sessionSendRequest:]", 60, "### %@ failed: %#m\n", @"SessionSendRequest", 4294960551);
  }
}

void sub_100194878()
{
  if (dword_100971A10 <= 60 && (dword_100971A10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971A10, "[SDXPCConnection sessionSendResponse:]", 60, "### %@ failed: %#m\n", @"SessionSendResponse", 4294960551);
  }
}

void sub_100194910()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNUserNotificationCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDXPCServer.m" lineNumber:71 description:{@"Unable to find class %s", "UNUserNotificationCenter"}];

  __break(1u);
}

void sub_10019498C(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *UserNotificationsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDXPCServer.m" lineNumber:70 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100194FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) _queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001950A4;
  v8[3] = &unk_1008CE028;
  v9 = WeakRetained;
  v10 = v3;
  v6 = v3;
  v7 = WeakRetained;
  dispatch_async(v5, v8);
}

void sub_1001950A4(uint64_t a1)
{
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  if (([*(a1 + 32) invalidateCalled] & 1) == 0)
  {
    [*(a1 + 32) updateRestrictedActivityTypes:*(a1 + 40)];
    [*(a1 + 32) nodesPotentiallyUpdated];
  }

  objc_sync_exit(obj);
}

void sub_100195284(uint64_t a1)
{
  v2 = objc_alloc_init(UINotificationFeedbackGenerator);
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;

  [*(*(a1 + 32) + 136) prepare];
  v5 = [[UIImpactFeedbackGenerator alloc] initWithStyle:1];
  v6 = *(a1 + 32);
  v7 = *(v6 + 152);
  *(v6 + 152) = v5;

  [*(*(a1 + 32) + 152) prepare];
  v8 = objc_alloc_init(UISelectionFeedbackGenerator);
  v9 = *(a1 + 32);
  v10 = *(v9 + 144);
  *(v9 + 144) = v8;

  [*(*(a1 + 32) + 144) prepare];
  if ((+[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled]& 1) == 0)
  {
    v11 = [*(a1 + 32) peopleBrowser];
    [v11 start];
  }
}

void sub_100196988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 transportBundleID];
  v5 = [*(a1 + 32) screenTimeMonitor];
  v27 = [v5 cachedPolicyForBundleID:v4];

  v6 = +[SDStatusMonitor sharedMonitor];
  v7 = [v6 effectiveBlockedAppBundleIDs];
  v25 = v4;
  v26 = [v7 containsObject:v4];

  v8 = [*(a1 + 32) realNameToNodeID];
  v9 = [v3 realName];
  v10 = [v8 objectForKeyedSubscript:v9];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [*(a1 + 32) peopleNodes];
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v16 identifier];
        v18 = v10;
        v19 = v17;
        v20 = v19;
        if (v18 == v19)
        {

LABEL_15:
          [v16 setIsDisabled:v27 != 0];
          [v16 setIsRestricted:v26];
          goto LABEL_16;
        }

        if ((v10 != 0) != (v19 == 0))
        {
          v21 = [v18 isEqual:v19];

          if (v21)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v22 = share_sheet_log([v3 setDisabled:v27 != 0]);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = "no";
    v34 = 2112;
    *buf = 138413058;
    if (v27)
    {
      v24 = "yes";
    }

    else
    {
      v24 = "no";
    }

    v33 = v3;
    v35 = v10;
    if (v26)
    {
      v23 = "yes";
    }

    v36 = 2080;
    v37 = v24;
    v38 = 2080;
    v39 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating policy for %@/%@, isDisabled:%s, isRestricted:%s", buf, 0x2Au);
  }
}

void sub_100196C8C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v6 = a2;
  v3 = [v2 screenTimeMonitor];
  v4 = [v6 transportBundleIdentifier];
  v5 = [v3 cachedPolicyForBundleID:v4] != 0;

  [v6 setIsRestricted:v5];
}

void sub_1001974EC(id a1, _UIActivityMatchingContext *a2)
{
  v2 = a2;
  [(_UIActivityMatchingContext *)v2 setShouldMatchOnlyUserElectedExtensions:0];
  [(_UIActivityMatchingContext *)v2 setAllowMatchingExtensionActivities:1];
}

void sub_100198C88(uint64_t a1)
{
  if ([*(a1 + 32) isFileURL])
  {
    v2 = [*(a1 + 32) path];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 pathExtension];
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v4, 0);
      if (PreferredIdentifierForTag)
      {
        v6 = PreferredIdentifierForTag;
        if (UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeImage))
        {
          v7 = [UIImage imageWithContentsOfFile:v3];
        }

        else
        {
          v7 = 0;
        }

        CFRelease(v6);
      }

      else
      {
        v8 = airdrop_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1001B1D04();
        }

        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [SFAirDropPayload newPayloadWithURL:*(a1 + 32) description:*(a1 + 40) previewImage:v7 identifier:*(*(a1 + 48) + 72)];
  v10 = *(*(a1 + 48) + 112);
  v11 = [NSNumber numberWithInt:*(a1 + 56)];
  [v10 setObject:v9 forKeyedSubscript:v11];
}

void sub_100198DEC(uint64_t a1)
{
  v4 = [SFAirDropPayload newPayloadWithURL:*(a1 + 32) description:*(a1 + 40) previewImage:*(a1 + 48) identifier:*(*(a1 + 56) + 72)];
  v2 = *(*(a1 + 56) + 112);
  v3 = [NSNumber numberWithInt:*(a1 + 64)];
  [v2 setObject:v4 forKeyedSubscript:v3];
}

void sub_100199174(uint64_t a1)
{
  v6 = UIImageJPEGRepresentation(*(a1 + 32), 1.0);
  [v6 writeToFile:*(a1 + 40) atomically:1];
  v2 = [NSURL fileURLWithPath:*(a1 + 40)];
  v3 = [SFAirDropPayload newPayloadWithURL:v2 description:*(a1 + 48) previewImage:*(a1 + 56) identifier:*(*(a1 + 64) + 72)];

  v4 = *(*(a1 + 64) + 112);
  v5 = [NSNumber numberWithInt:*(a1 + 72)];
  [v4 setObject:v3 forKeyedSubscript:v5];
}

void sub_100199828(uint64_t a1)
{
  [*(a1 + 32) writeToFile:*(a1 + 40) atomically:1];
  v2 = [NSURL fileURLWithPath:*(a1 + 40)];
  v6 = [SFAirDropPayload newPayloadWithURL:v2 description:*(a1 + 48) previewImage:*(a1 + 56) identifier:*(*(a1 + 64) + 72)];

  v3 = *(*(a1 + 64) + 112);
  v4 = [NSNumber numberWithInt:*(a1 + 80)];
  [v3 setObject:v6 forKeyedSubscript:v4];

  v5 = *(a1 + 72);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void sub_10019B8AC(id a1)
{
  v1 = objc_alloc_init(SDShareSheetSlotManager);
  v2 = qword_10098A028;
  qword_10098A028 = v1;
}

void sub_10019CDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019CDD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1001B20E8(a1);
  }
}

void sub_10019E10C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = share_sheet_log(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001B227C();
    }
  }

  else
  {
    [a1[4] prepareWithActivityItemData:v8];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019E250;
    block[3] = &unk_1008D2BA8;
    v13 = a1[5];
    v14 = v7;
    v15 = v8;
    v16 = a1[6];
    v17 = a1[7];
    dispatch_async(&_dispatch_main_q, block);

    v11 = v13;
  }
}

void sub_10019EA00(uint64_t a1)
{
  v1 = daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1001B22EC();
  }
}

id sub_10019EA4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = share_sheet_log(v6);
  v8 = share_sheet_log(v7);
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LoadShortcutsActivities", " enableTelemetry=YES ", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = [*(a1 + 40) urlsBeingShared];
  v12 = objc_loadWeakRetained((a1 + 56));
  v13 = [v12 hostConfiguration];
  v14 = [WeakRetained _shortcutActivitiesForMatchingDictionaries:v6 resolvedActivityItems:v11 hostBundleID:v5 configuration:v13];

  v16 = share_sheet_log(v15);
  v17 = share_sheet_log(v16);
  v18 = os_signpost_id_make_with_pointer(v17, *(a1 + 32));

  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v18, "LoadShortcutsActivities", " enableTelemetry=YES ", v20, 2u);
  }

  return v14;
}

void sub_10019EC10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAirDropTransferUpdated:v3];
}

void sub_10019EC6C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleAirDropNodesChanged:v3 sessionID:*(a1 + 32)];
}

void sub_10019F1E8(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if ([v13 iconImage])
  {
    v5 = [v13 iconImage];
    [v13 iconScale];
    v6 = [UIImage imageWithCGImage:v5 scale:0 orientation:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [UIShortcutActivity alloc];
  v8 = *(a1 + 32);
  v9 = [v13 name];
  v10 = [v13 identifier];
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  v12 = [v7 initWithApplicationExtension:v8 partialShortcutWithName:v9 identifier:v10 image:v6 sortValue:v11];

  [*(a1 + 40) addObject:v12];
}

id sub_10019F970(void *a1, uint64_t a2)
{
  v3 = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B1A0C;
  v7[3] = &unk_1008D30B8;
  v7[4] = a2;
  v4 = [v3 indexesOfObjectsPassingTest:v7];
  if ([v4 count])
  {
    v5 = [v3 objectsAtIndexes:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10019FA40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) shareUserDefaults];
  v5 = [v4 activityIsHidden:v3];

  v7 = share_sheet_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "no";
    if (v5)
    {
      v8 = "yes";
    }

    v10 = 138412546;
    v11 = v3;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@, isHidden:%s>", &v10, 0x16u);
  }

  return v5 ^ 1;
}

void sub_10019FB40(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 dataSourceDidUpdateForSession:WeakRetained animated:0];
}

void sub_1001A0098(uint64_t a1, void *a2)
{
  v3 = [a2 transportBundleID];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

uint64_t sub_1001A04E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionUserDefaults];
  v5 = [v4 activityIsHidden:v3];

  v7 = share_sheet_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "no";
    if (v5)
    {
      v8 = "yes";
    }

    v12 = 138412546;
    v13 = v3;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@, isHidden:%s>", &v12, 0x16u);
  }

  if (v5)
  {
    v9 = 0;
  }

  else if ([*(a1 + 40) sharingExpanded])
  {
    v10 = [v3 activityType];
    v9 = [v10 isEqualToString:UIActivityTypeShare] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void sub_1001A1650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _configureSharingSectionsForSession:*(a1 + 32)];
}

void sub_1001A1764(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  if (v4)
  {

LABEL_5:
    (*(*(a1 + 40) + 16))();
    goto LABEL_6;
  }

  v5 = [*(a1 + 32) activityType];
  v6 = [v5 isEqual:UIActivityTypeMail];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [[SFCollaborationCloudSharingMailRequest alloc] initWithCloudSharingRequest:*(a1 + 32) result:v3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A1898;
  v8[3] = &unk_1008D2CC0;
  v9 = v3;
  v10 = *(a1 + 40);
  [SFCollaborationUtilities createMailContentForRequest:v7 completionHandler:v8];

LABEL_6:
}

uint64_t sub_1001A1898(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setMailResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

id sub_1001A283C(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcHelperCnx];
  v3 = [v2 perspectiveDataForNearbyBadgeWithCount:*(a1 + 40)];

  return v3;
}

CGImageRef sub_1001A2894(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcHelperCnx];
  v3 = CGImageRetain([v2 CGImgForNearbyBadgeWithCount:*(a1 + 40)]);

  return v3;
}

void sub_1001A2F34(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 _defaultSortGroup] == 4)
  {
    v3 = [v4 activityUUID];
    [*(a1 + 32) setActivityIdentifierShare:v3];
LABEL_3:

    goto LABEL_9;
  }

  if ([v4 _defaultSortGroup] == 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v4 activityUUID];
      [*(a1 + 32) setActivityIdentifierOpen:v3];
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v4 activityUUID];
      [*(a1 + 32) setActivityIdentifierCopy:v3];
      goto LABEL_3;
    }
  }

LABEL_9:
}

id sub_1001A363C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _loadActionProxy:v3 configuration:*(a1 + 32)];

  return v5;
}

CGImageRef sub_1001A4EA4(uint64_t a1)
{
  v1 = [*(a1 + 32) CGImgForActionPlatterWithTitle:*(a1 + 40) tintColor:*(a1 + 48)];

  return CGImageRetain(v1);
}

void sub_1001A53D8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = share_sheet_log(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Created suggestion %@", &v12, 0xCu);
    }

    v9 = [a1[4] suggestionBrowser];
    [v9 provideFeedbackForPeopleSuggestion:v5];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001B2A10();
    }

    v9 = [a1[4] suggestionBrowser];
    v10 = [a1[5] activityType];
    [v9 provideFeedbackForNodeAtIndex:0 bundleID:v10 selectedActionBundleID:0 abandoned:0];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained _performSelectedActivity:a1[5] inSession:a1[4]];
}

void sub_1001A5AE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = share_sheet_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2B3C(a1);
    }
  }

  v9 = *(a1 + 40);
  objc_sync_enter(v9);
  [*(a1 + 40) _instructHostToPerformShortcutActivity:*(a1 + 32) singleUseToken:v5 session:*(a1 + 48)];
  objc_sync_exit(v9);
}

void sub_1001A7CC0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v9, v7);
  }

  [*(a1 + 32) didPerformInServiceActivityWithIdentifier:*(a1 + 40) completed:a2 items:v9 error:v7];
}

void sub_1001A7D54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = share_sheet_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001B2E08(a1);
    }
  }

  else
  {
    [*(a1 + 32) prepareWithActivityItemData:a3];
    [*(a1 + 32) performActivity];
  }
}

void sub_1001A8C94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = share_sheet_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1001B3048(a1);
    }
  }

  v9 = *(a1 + 40);
  objc_sync_enter(v9);
  [*(a1 + 40) _instructHostToPerformShortcutActivity:*(a1 + 32) singleUseToken:v5 session:*(a1 + 48)];
  objc_sync_exit(v9);
}

void sub_1001A910C(uint64_t a1)
{
  v2 = +[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v5 = [v3 airDropController];
    v4 = [*(a1 + 32) hostAppBundleID];
    [v5 activateWithBundleID:v4];
  }

  else
  {
    v5 = [v3 peopleBrowser];
    [v5 start];
  }
}

void sub_1001A9344(uint64_t a1)
{
  v2 = +[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 airDropController];
    [v4 invalidate];
  }

  else
  {
    v4 = [v3 peopleBrowser];
    [v4 stop];
  }
}

void sub_1001A9790(uint64_t a1)
{
  v2 = +[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 airDropController];
    [v4 invalidate];
  }

  else
  {
    v4 = [v3 peopleBrowser];
    [v4 stop];
  }
}

void sub_1001A99B8(uint64_t a1)
{
  v2 = +[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v5 = [v3 airDropController];
    v4 = [*(a1 + 32) hostAppBundleID];
    [v5 activateWithBundleID:v4];
  }

  else
  {
    v5 = [v3 peopleBrowser];
    [v5 start];
  }
}

uint64_t sub_1001AA038(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 shareUserDefaults];
  v5 = [v4 activityIsHidden:v3];

  return v5 ^ 1;
}

uint64_t sub_1001AA52C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionUserDefaults];
  if ([v4 activityIsHidden:v3])
  {
    v5 = 0;
  }

  else if ([*(a1 + 40) sharingExpanded])
  {
    v6 = [v3 activityType];
    v5 = [v6 isEqualToString:UIActivityTypeShare] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t sub_1001AA7D4(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = SFCreateCGImageFromData();

  return v2;
}

id sub_1001AD70C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained _loadAirDropProxy:v3 forAirDropNode:*(a1 + 32) configuration:*(a1 + 40)];

  return v5;
}

CGImageRef sub_1001AF014(uint64_t a1)
{
  v1 = [*(a1 + 32) CGImgForNameLabelWithString:*(a1 + 40) textColor:*(a1 + 48) maxNumberOfLines:*(a1 + 56) isAirDrop:*(a1 + 64) ignoreNameWrapping:*(a1 + 65) processOppositeColor:1];

  return CGImageRetain(v1);
}

void sub_1001AF2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_1001AF304(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_copyWeak(&to, (a1 + 40));
  v3 = objc_loadWeakRetained(&to);
  objc_sync_enter(v3);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&to);
    [v4 connectionInvalidated:WeakRetained];
  }

  objc_sync_exit(v3);

  objc_destroyWeak(&to);
}

void sub_1001AF390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_sync_exit(v10);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B0600(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = share_sheet_log(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v19 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Deleting slots for activity proxy %@", buf, 0xCu);
        }

        v10 = [v8 iconImageSlotID];
        v4 = [v8 labelSlotID];
        v11 = v4;
        if (v10)
        {
          v4 = [*(a1 + 32) deleteSlot:v10];
        }

        if (v11)
        {
          [*(a1 + 32) deleteSlot:v11];
          v12 = *(a1 + 40);
          v13 = [NSNumber numberWithUnsignedInt:v11];
          [v12 addObject:v13];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
      v5 = v4;
    }

    while (v4);
  }
}

void sub_1001B07C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = share_sheet_log(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Deleting slots for people proxy %@", buf, 0xCu);
        }

        v10 = [v8 avatarImageSlotID];
        v11 = [v8 mainLabelSlotID];
        v12 = [v8 transportImageSlotID];
        v4 = [v8 bottomLabelSlotID];
        v13 = v4;
        if (v10)
        {
          v4 = [*(a1 + 32) deleteSlot:v10];
        }

        if (v11)
        {
          [*(a1 + 32) deleteSlot:v11];
          v14 = *(a1 + 40);
          v15 = [NSNumber numberWithUnsignedInt:v11];
          [v14 addObject:v15];
        }

        if (v12)
        {
          [*(a1 + 32) deleteSlot:v12];
          v16 = *(a1 + 40);
          v17 = [NSNumber numberWithUnsignedInt:v12];
          [v16 addObject:v17];
        }

        if (v13)
        {
          [*(a1 + 32) deleteSlot:v13];
          v18 = *(a1 + 40);
          v19 = [NSNumber numberWithUnsignedInt:v13];
          [v18 addObject:v19];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
      v5 = v4;
    }

    while (v4);
  }
}

BOOL sub_1001B0ED8(id a1, INPersonHandle *a2)
{
  v2 = a2;
  if ([(INPersonHandle *)v2 type]== 1)
  {
    v3 = [(INPersonHandle *)v2 value];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1001B11BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SFShareSheetRecipient alloc] initWithRealName:0 displayName:0 formattedHandles:v3 contactIdentifier:0];

  v5 = IsAppleInternalBuild();
  if (v5)
  {
    v6 = share_sheet_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Returning Messages recipient %@ for session ID %@", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001B1404(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (*(a1 + 32))
    {
      v8 = [NSURL fileURLWithPath:@"/private/var/tmp/ShareSheetTestingSnapshots/" isDirectory:1];
      v9 = [*(a1 + 32) testSuiteName];

      if (v9)
      {
        v11 = [*(a1 + 32) testSuiteName];
        v12 = [v8 URLByAppendingPathComponent:v11 isDirectory:1];

        v8 = v12;
      }

      if (v8)
      {
        v35 = 1;
        v13 = [v5 url];
        v43 = v13;
        v14 = [NSArray arrayWithObjects:&v43 count:1];
        v34 = 0;
        v15 = sub_1001F1DAC(v14, v8, &v35, &v34);
        v16 = v34;
        v17 = [v15 firstObject];

        if (v17)
        {
          v19 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v17];

          v21 = share_sheet_log(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v19 url];
            v23 = *(a1 + 40);
            *buf = 138412546;
            v38 = v22;
            v39 = 2112;
            v40 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "activityViewControllerSessionDidEnd: wrote snapshot to %@ for session ID %@", buf, 0x16u);
          }
        }

        else
        {
          v21 = share_sheet_log(v18);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v38 = v5;
            v39 = 2112;
            v40 = v8;
            v41 = 2112;
            v42 = v16;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to move Share Sheet snapshot (URL: %@) to %@: %@", buf, 0x20u);
          }

          v19 = v5;
        }

        v5 = v19;
      }

      else
      {
        v32 = share_sheet_log(v10);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1001B3794();
        }

        v16 = 0;
      }
    }

    else
    {
      v24 = +[NSFileManager defaultManager];
      v25 = [v5 url];
      v36 = 0;
      v8 = [v24 _doc_importItemAtURL:v25 toDestination:1 error:&v36];
      v16 = v36;

      if (v8)
      {
        v27 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v8];

        v29 = share_sheet_log(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v27 url];
          v31 = *(a1 + 40);
          *buf = 138412546;
          v38 = v30;
          v39 = 2112;
          v40 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "activityViewControllerSessionDidEnd: wrote snapshot to %@ for session ID %@", buf, 0x16u);
        }
      }

      else
      {
        v29 = share_sheet_log(v26);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1001B3804();
        }

        v27 = v5;
      }

      v5 = v27;
    }
  }

  else
  {
    v16 = share_sheet_log(v6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1001B3870(a1, v7, v16);
    }

    v5 = 0;
  }

  v33 = *(a1 + 48);
  if (v33)
  {
    (*(v33 + 16))(v33, v5);
  }
}

Class sub_1001B1A44()
{
  if (qword_10098A040 != -1)
  {
    sub_1001B38EC();
  }

  result = objc_getClass("_PSPredictionContext");
  qword_10098A038 = result;
  off_100972140 = sub_1001B1A98;
  return result;
}

Class sub_1001B1AD0()
{
  if (qword_10098A040 != -1)
  {
    sub_1001B38EC();
  }

  result = objc_getClass("_PSAttachment");
  qword_10098A050 = result;
  off_100972148 = sub_1001B1B24;
  return result;
}

id sub_1001B1B30(uint64_t a1, void *a2)
{
  v3 = [a2 ss_activityTypeToReportToHost];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1001B1B74(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "process %d tried to enable instant share sheet but it was not entitled!", buf, 8u);
}

void sub_1001B1BBC()
{
  sub_100019DF0();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SDShareSheetSlotManager.m" lineNumber:913 description:{@"node is not SFAirDropNode: %@", v0}];
}

void sub_1001B1C28()
{
  sub_100019DF0();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SDShareSheetSlotManager.m" lineNumber:907 description:{@"endpointUUID is nil for node:%@", v0}];
}

void sub_1001B1C94()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001B1D04()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001B1DF4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B20AC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B20E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained sd_description];
  sub_1000088C4();
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1001B2194()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B21D0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B220C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001B227C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001B2434()
{
  sub_100019C0C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B2470()
{
  sub_100019C0C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B24AC()
{
  sub_100019C0C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B2550()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B265C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001B26CC()
{
  sub_100019C0C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B2770()
{
  sub_100019C0C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B27AC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDShareSheetSlotManager.m" lineNumber:2930 description:{@"Invalid parameter not satisfying: %@", @"activity"}];
}

void sub_1001B2824()
{
  sub_100019DF0();
  v1 = [v0 activityTitle];
  sub_1000088C4();
  sub_100023F8C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1001B28C4()
{
  sub_100019C0C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B2900()
{
  sub_100019DF0();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SDShareSheetSlotManager.m" lineNumber:2988 description:{@"activity is nil for proxy:%@", v0}];
}

void sub_1001B296C()
{
  sub_100019C0C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B2A10()
{
  sub_100019DF0();
  v2 = [*(v1 + 32) recipients];
  v8 = [*(v0 + 40) activityType];
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1001B2B3C(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  sub_10000883C();
  sub_100023F8C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001B2BE8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B2C24()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B2D98()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001B2E08(uint64_t a1)
{
  v1 = [*(a1 + 32) activityType];
  sub_1000088C4();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001B3048(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  sub_10000883C();
  sub_100023F8C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001B3434(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1001B3534(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "suggestionBrowserDidUpdateSuggestions: No session for ID %@", buf, 0xCu);
}

void sub_1001B365C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B3700(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "didUpdatePeople: No session for ID %@", buf, 0xCu);
}

void sub_1001B3758()
{
  sub_100019C0C();
  sub_100019CE4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001B3794()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001B3870(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 40);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100019DC4(&_mh_execute_header, a2, a3, "Failed to write testing snapshot for Share Sheet session ID %@: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_1001B4094(id a1)
{
  v1 = +[SDStatusMonitor sharedMonitor];
  v2 = [v1 enableContinuity];

  if (v2)
  {
    v3 = objc_opt_new();
    v4 = qword_10098A058;
    qword_10098A058 = v3;
  }
}

void sub_1001B580C(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 length];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to initialize key from data. Incorrect size %d", v3, 8u);
}

void sub_1001B5898(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Generated new advertising encryption key %@, and saved to keychain", &v3, 0xCu);
}

void sub_1001B5988(void *a1, NSObject *a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a1 encryptionKey];
  sub_100008848();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@: Encryption key invalid %@", v7, 0x16u);
}

void sub_1001B5A40(void *a1, NSObject *a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a1 encryptionKey];
  sub_100008848();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@: Persisted last used counter and key to keychain %@", v7, 0x16u);
}

void sub_1001B5AF8()
{
  sub_1000089A0();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001B5C38()
{
  sub_1000089A0();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001B5D9C(char a1, uint64_t a2, NSObject *a3)
{
  v3 = @"NO";
  if (a1)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (a2)
  {
    v3 = @"YES";
  }

  *v5 = 138412546;
  *&v5[4] = v4;
  *&v5[12] = 2112;
  *&v5[14] = v3;
  sub_100035DA4(&_mh_execute_header, a2, a3, "Successfully deleted encryption key:%@, decryption keys:%@", *v5, *&v5[8], *&v5[16]);
}

void sub_1001B5F1C()
{
  sub_10002FCA8();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1001B5F8C()
{
  sub_10002FCA8();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1001B8F68(void *a1)
{
  v1 = [a1 streamError];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001B906C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001B91C4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001B92D0()
{
  v0 = __error();
  strerror(*v0);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001B93F4()
{
  v0 = __error();
  strerror(*v0);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001B947C(uint64_t a1, id *a2)
{
  [*a2 length];
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1001B9EFC(id a1)
{
  v3 = +[AKDevice currentDevice];
  v1 = [v3 serverFriendlyDescription];
  v2 = qword_10098A068;
  qword_10098A068 = v1;
}

void sub_1001B9F58(id a1)
{
  v1 = MGCopyAnswer();
  v2 = qword_10098A078;
  qword_10098A078 = v1;

  if (!qword_10098A078 && dword_1009724B0 <= 90 && (dword_1009724B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001BA024();
  }
}

const __CFString *SFHotspotNetworkTypeString(unsigned int a1)
{
  if (a1 < 9 && ((0x1DFu >> a1) & 1) != 0)
  {
    return *(&off_1008D3180 + a1);
  }

  if (SFRemoteHotspotNetworkTypeHSDPA == a1)
  {
    return @"HSDPA";
  }

  return @"Unknown";
}

uint64_t SFHotspotTypeStringToType(void *a1, _BYTE *a2)
{
  v3 = [a1 lowercaseString];
  v4 = v3;
  if (a2)
  {
    *a2 = 1;
  }

  if ([v3 isEqualToString:@"none"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"1x"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"gprs"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"edge"])
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:@"3g"])
  {
    v5 = 4;
  }

  else if ([v4 isEqualToString:@"4g"])
  {
    v5 = 6;
  }

  else if ([v4 isEqualToString:@"lte"])
  {
    v5 = 7;
  }

  else
  {
    v6 = [v4 isEqualToString:@"5g"];
    if (v6)
    {
      v5 = 8;
    }

    else
    {
      v5 = -1;
    }

    if (a2 && (v6 & 1) == 0)
    {
      *a2 = 0;
      v5 = -1;
    }
  }

  return v5;
}

id SFHotspotResponseAdvertisementString(uint64_t a1)
{
  v1 = BYTE3(a1);
  v2 = BYTE1(a1);
  v3 = a1;
  v4 = BYTE2(a1);
  v5 = BYTE5(a1);
  v6 = SFHotspotNetworkTypeString(BYTE4(a1));
  v7 = [NSString stringWithFormat:@"<version: %d, flags: %d battery life: %d, signal strength: %d, network type: %@, additional flags: %d>", v3, v2, v4, v5, v6, v1];

  return v7;
}

uint64_t SDUnlockClassALongTermKeyResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_65;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_59:
        v36 = 8;
        goto LABEL_64;
      }

      v34 = PBReaderReadData();
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;

LABEL_65:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        v41 = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v41 & 0x7F) << v28;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v30;
      }

LABEL_63:
      v36 = 28;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_40;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        v40 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v40 & 0x7F) << v14;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_55;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_55:
      v36 = 24;
    }

LABEL_64:
    *(a1 + v36) = v20;
    goto LABEL_65;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001BB994()
{
  if (dword_100972520 <= 50 && (dword_100972520 != -1 || _LogCategory_Initialize()))
  {
    sub_1001BBE34();
  }

  pthread_mutex_lock(&stru_100972590);
  [qword_10098A088 removeAllObjects];

  return pthread_mutex_unlock(&stru_100972590);
}

void sub_1001BBA14()
{
  pthread_mutex_lock(&stru_100972590);
  v0 = qword_10098A088;
  if (!qword_10098A088)
  {
    v1 = objc_alloc_init(NSMutableDictionary);
    v2 = qword_10098A088;
    qword_10098A088 = v1;

    v0 = qword_10098A088;
  }

  v3 = [v0 objectForKeyedSubscript:@"counter"];
  v4 = [v3 integerValue];

  v5 = 2 * v4;
  if (2 * v4 >= 86400)
  {
    v5 = 86400;
  }

  if (v4 <= 0)
  {
    v6 = 16;
  }

  else
  {
    v6 = v5;
  }

  v7 = [NSNumber numberWithInteger:v6];
  [qword_10098A088 setObject:v7 forKeyedSubscript:@"counter"];

  v9 = +[NSDate date];
  v8 = [v9 dateByAddingTimeInterval:v6];
  [qword_10098A088 setObject:v8 forKeyedSubscript:@"startDate"];
  if (dword_100972520 <= 50 && (dword_100972520 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100972520, "void SDAppleIDThrottleUpdate(void)", 50, "Updated throttle: %ld -> %ld seconds\n", v4, v6);
  }

  pthread_mutex_unlock(&stru_100972590);
}

id sub_1001BBB9C()
{
  pthread_mutex_lock(&stru_100972590);
  v0 = [qword_10098A088 objectForKeyedSubscript:@"startDate"];
  pthread_mutex_unlock(&stru_100972590);
  v1 = +[NSDate date];
  v2 = v1;
  if (!v0)
  {
    v0 = v1;
  }

  if (dword_100972520 <= 30 && (dword_100972520 != -1 || _LogCategory_Initialize()))
  {
    sub_1001BBE54(v0, v2);
  }

  return v0;
}

void sub_1001BBC60()
{
  pthread_mutex_lock(&stru_100972590);
  if (!qword_10098A088)
  {
    v0 = objc_alloc_init(NSMutableDictionary);
    v1 = qword_10098A088;
    qword_10098A088 = v0;
  }

  v2 = [NSNumber numberWithInteger:86400];
  [qword_10098A088 setObject:v2 forKeyedSubscript:@"counter"];

  v3 = +[NSDate date];
  v4 = [v3 dateByAddingTimeInterval:86400.0];
  [qword_10098A088 setObject:? forKeyedSubscript:?];
  if (dword_100972520 <= 50 && (dword_100972520 != -1 || _LogCategory_Initialize()))
  {
    sub_1001BBEAC();
  }

  pthread_mutex_unlock(&stru_100972590);
}

id sub_1001BBD7C()
{
  pthread_mutex_lock(&stru_100972590);
  v0 = qword_10098A090;
  pthread_mutex_unlock(&stru_100972590);

  return v0;
}

uint64_t sub_1001BBDD4()
{
  pthread_mutex_lock(&stru_100972590);
  v0 = +[NSDate date];
  v1 = qword_10098A090;
  qword_10098A090 = v0;

  return pthread_mutex_unlock(&stru_100972590);
}

__SecKey *sub_1001BBEF4(void *a1, uint64_t a2)
{
  v14[0] = kSecAttrKeyType;
  v14[1] = kSecAttrKeySizeInBits;
  v15[0] = a1;
  v3 = a1;
  v4 = [NSNumber numberWithUnsignedInteger:a2];
  v15[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  RandomKey = SecKeyCreateRandomKey(v5, 0);
  v7 = SecKeyCopyPublicKey(RandomKey);
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (v7)
  {
    CFRelease(v7);
  }

  if (SelfSignedCertificate)
  {
    v9 = SecIdentityCreate();
    CFRelease(SelfSignedCertificate);
    if (RandomKey)
    {
      CFRelease(RandomKey);
    }

    if (v9)
    {
      RandomKey = sec_identity_create(v9);
      CFRelease(v9);
      if (!RandomKey)
      {
        v10 = airdrop_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1001BC558();
        }
      }

      goto LABEL_19;
    }

    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001BC58C();
    }

LABEL_18:
    RandomKey = 0;
    goto LABEL_19;
  }

  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1001BC5C0();
  }

  if (RandomKey)
  {
    CFRelease(RandomKey);
    goto LABEL_18;
  }

LABEL_19:

  return RandomKey;
}

__SecIdentity *sub_1001BC0FC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_16;
  }

  v3 = sec_identity_copy_ref(v1);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_17;
  }

  privateKeyRef = 0;
  v5 = SecIdentityCopyPrivateKey(v3, &privateKeyRef);
  CFRelease(v4);
  if (v5)
  {
    if (privateKeyRef)
    {
      CFRelease(privateKeyRef);
      privateKeyRef = 0;
    }

    v6 = airdrop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BC5F4();
    }
  }

  if (!privateKeyRef)
  {
    goto LABEL_16;
  }

  v7 = SecKeyCopyPublicKey(privateKeyRef);
  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
    privateKeyRef = 0;
  }

  if (v7)
  {
    v4 = SecKeyCopySubjectPublicKeyInfo();
    CFRelease(v7);
    if (v4)
    {
      v8 = v4;
    }
  }

  else
  {
LABEL_16:
    v4 = 0;
  }

LABEL_17:

  return v4;
}

void sub_1001BC200(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = a1;
  v17 = [sub_1001BC2D0() sharedInstance];
  [v17 startNFCServerWithLocalIdentity:v16 listenerUUID:v15 remotePublicKey:v14 contactID:v13 deviceModel:v12 deviceName:v11];
}

id sub_1001BC2D0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10098A098;
  v7 = qword_10098A098;
  if (!qword_10098A098)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001BC3B8;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_1001BC3B8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001BC398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1001BC3B8(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A0A0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1001BC4E4;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D31C8;
    v5 = 0;
    qword_10098A0A0 = _sl_dlopen();
  }

  if (!qword_10098A0A0)
  {
    sub_1001BC6A4(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DDUICoreAgent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001BC628();
  }

  qword_10098A098 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001BC4E4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10098A0A0 = result;
  return result;
}

void sub_1001BC628()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getDDUICoreAgentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNearFieldUtils.m" lineNumber:22 description:{@"Unable to find class %s", "DDUICoreAgent"}];

  __break(1u);
}

void sub_1001BC6A4(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *DeviceDiscoveryUICoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNearFieldUtils.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t sub_1001BC7CC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001BC7E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001BC898;
    v5[3] = &unk_1008CDE10;
    v6 = v4;
    [v3 regenerateTemporarySelfIdentityWithCompletion:v5];
  }
}

id sub_1001BC8A8(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSData);
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 pkData];

    v2 = v3;
  }

  return v2;
}

id sub_1001BC928(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 deviceName];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1001BC98C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 deviceModel];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1001BC9F0(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 accountID];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1001BCA54(void *a1)
{
  v1 = a1;
  v2 = +[NSUUID UUID];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 bonjourListenerUUID];

    v2 = v3;
  }

  return v2;
}

id sub_1001BCB0C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 isKnownIdentity];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1001BCB80(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 isUnsupportedApplicationLabel];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1001BD280(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(v2 + 8) < 1)
  {
    return [v1 loadRemainingProxies];
  }

  else
  {
    return [v1 loadBatchWithSize:?];
  }
}

void sub_1001BD680(id *a1, uint64_t a2)
{
  v3 = share_sheet_log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "did load proxies from loader:%@ with result:%@", buf, 0x16u);
  }

  v6 = [a1[5] state];
  if (v6 != 1)
  {
    v7 = objc_alloc_init(SDShareSheetProxyLoaderChangeDetails);
    v8 = a1[5];
    v9 = [a1[4] proxySection];
    [(SDShareSheetProxyLoaderChangeDetails *)v7 addResult:v8 forProxySection:v9];

    v10 = [a1[6] delegate];
    [v10 proxyLoaderManager:a1[6] didLoadProxiesWithChangeDetails:v7];
  }

  v11 = [a1[4] remainingProxiesCount];
  v12 = a1[6];
  if (v6 == 1 || !v11)
  {
    [a1[6] _didFinishLoadingLoader:a1[4] cancelled:v6 == 1];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001BD848;
    v13[3] = &unk_1008CDEA0;
    v14 = a1[4];
    [v12 _scheduleLoadingBlock:v13 synchronously:0];
  }
}

void sub_1001BD930(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDShareSheetProxyLoaderManager.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"result"}];
}

void sub_1001BD9AC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDShareSheetProxyLoaderManager.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"proxySection"}];
}

void sub_1001BDA28(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "loader was already removed:%@", &v2, 0xCu);
}

void sub_1001BDAA0(id a1)
{
  v1 = objc_alloc_init(SDNotificationManager);
  v2 = qword_10098A0B0;
  qword_10098A0B0 = v1;
}

id sub_1001BE4C0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10098A0E8;
  v7 = qword_10098A0E8;
  if (!qword_10098A0E8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001C4F78;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_1001C4F78(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001BE588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BE5A0(uint64_t a1, void *a2)
{
  if ([a2 authorizationStatus] > 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 144);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001BE678;
    v8[3] = &unk_1008CE708;
    v8[4] = v4;
    v9 = v3;
    dispatch_async(v5, v8);
  }
}

void sub_1001BE678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100972630 <= 30)
  {
    if (dword_100972630 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001C6890(a1, a2, a3);
    }
  }

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v5 + 72);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BE744;
  v7[3] = &unk_1008D3208;
  v7[4] = v5;
  v8 = v4;
  [v6 requestAuthorizationWithOptions:70 completionHandler:v7];
}

void sub_1001BE744(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v6 = a3;
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C68AC();
  }

  *(*(a1 + 32) + 80) = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_1001BE958(uint64_t a1, void *a2)
{
  if ([a2 authorizationStatus] > 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 144);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001BEA30;
    v8[3] = &unk_1008CE708;
    v8[4] = v4;
    v9 = v3;
    dispatch_async(v5, v8);
  }
}

void sub_1001BEA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100972630 <= 30)
  {
    if (dword_100972630 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001C6924(a1, a2, a3);
    }
  }

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v5 + 128);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BEAFC;
  v7[3] = &unk_1008D3208;
  v7[4] = v5;
  v8 = v4;
  [v6 requestAuthorizationWithOptions:6 completionHandler:v7];
}

void sub_1001BEAFC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v6 = a3;
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6940();
  }

  *(*(a1 + 32) + 136) = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_1001BEE6C(uint64_t a1, void *a2)
{
  if ([a2 authorizationStatus] > 1)
  {
    v6 = *(a1 + 40);

    dispatch_group_leave(v6);
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 144);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001BEF34;
    v7[3] = &unk_1008CE028;
    v7[4] = v4;
    v8 = v3;
    dispatch_async(v5, v7);
  }
}

void sub_1001BEF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100972630 <= 30)
  {
    if (dword_100972630 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001C69EC(a1, a2, a3);
    }
  }

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v5 + 24);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BF000;
  v7[3] = &unk_1008D3258;
  v7[4] = v5;
  v8 = v4;
  [v6 requestAuthorizationWithOptions:6 completionHandler:v7];
}

void sub_1001BF000(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6A08();
  }

  *(*(a1 + 32) + 40) = v3;
  dispatch_group_leave(*(a1 + 40));
}

void sub_1001BF094(uint64_t a1, void *a2)
{
  if ([a2 authorizationStatus] > 1)
  {
    v6 = *(a1 + 40);

    dispatch_group_leave(v6);
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 144);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001BF15C;
    v7[3] = &unk_1008CE028;
    v7[4] = v4;
    v8 = v3;
    dispatch_async(v5, v7);
  }
}

void sub_1001BF15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100972630 <= 30)
  {
    if (dword_100972630 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001C6A64(a1, a2, a3);
    }
  }

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v5 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BF228;
  v7[3] = &unk_1008D3258;
  v7[4] = v5;
  v8 = v4;
  [v6 requestAuthorizationWithOptions:6 completionHandler:v7];
}

void sub_1001BF228(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6A80();
  }

  *(*(a1 + 32) + 40) = v3;
  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_1001BF2BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001BF400(uint64_t a1, void *a2)
{
  if ([a2 authorizationStatus] > 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 144);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001BF4D8;
    v8[3] = &unk_1008CE708;
    v8[4] = v4;
    v9 = v3;
    dispatch_async(v5, v8);
  }
}

void sub_1001BF4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100972630 <= 30)
  {
    if (dword_100972630 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001C6AF8(a1, a2, a3);
    }
  }

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v5 + 104);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BF5A4;
  v7[3] = &unk_1008D3208;
  v7[4] = v5;
  v8 = v4;
  [v6 requestAuthorizationWithOptions:6 completionHandler:v7];
}

void sub_1001BF5A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v6 = a3;
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6B14();
  }

  *(*(a1 + 32) + 112) = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t sub_1001BF9E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1001BFCDC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001C02A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C02C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_100972630 <= 60 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100972630, "[SDNotificationManager _addRequestWithID:content:type:isHomePodMini:]_block_invoke", 60, "### Error adding request %@: %@\n", *(a1 + 32), v3);
    }

    v4 = [v3 domain];
    v5 = off_1009726B0(v4);
    v6 = v4;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if ((v6 != 0) == (v7 == 0))
      {

LABEL_18:
        goto LABEL_19;
      }

      v9 = [v6 isEqual:v7];

      if (!v9)
      {
        goto LABEL_18;
      }
    }

    v10 = [v3 code];

    if (v10 == 100)
    {
      v11 = [*(a1 + 40) mutableCopy];
      [v11 setAttachments:&__NSArray0__struct];
      v13 = *(a1 + 48);
      v12 = *(a1 + 56);
      v14 = *(v13 + 144);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001C04E4;
      block[3] = &unk_1008D32A8;
      block[4] = v13;
      v17 = v12;
      v18 = v11;
      v19 = *(a1 + 64);
      v20 = *(a1 + 68);
      v15 = v11;
      dispatch_sync(v14, block);
    }
  }

  else if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6DA4();
  }

LABEL_19:
}

void sub_1001C071C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C0C8C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1001C0CA4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10098A130;
  v7 = qword_10098A130;
  if (!qword_10098A130)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001C54F8;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_1001C54F8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001C0D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001C0D84()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10098A138;
  v7 = qword_10098A138;
  if (!qword_10098A138)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001C5550;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_1001C5550(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001C0E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001C0F1C(void *a1)
{
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6E24(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];

  return [v2 _addRequestWithID:v3 content:v4 type:5];
}

void sub_1001C11FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_100972630 <= 60)
    {
      v7 = v3;
      if (dword_100972630 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        sub_1001C6EA0(a1, v7);
LABEL_13:
        v4 = v7;
      }
    }
  }

  else if (dword_100972630 <= 30)
  {
    v7 = 0;
    if (dword_100972630 != -1 || (v6 = _LogCategory_Initialize(), v4 = 0, v6))
    {
      sub_1001C6F08();
      goto LABEL_13;
    }
  }
}

id sub_1001C17D0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10098A140;
  v7 = qword_10098A140;
  if (!qword_10098A140)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001C55A8;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_1001C55A8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001C1898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C18B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_100972630 <= 60)
    {
      v7 = v3;
      if (dword_100972630 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        sub_1001C6F64(a1, v7);
LABEL_13:
        v4 = v7;
      }
    }
  }

  else if (dword_100972630 <= 30)
  {
    v7 = 0;
    if (dword_100972630 != -1 || (v6 = _LogCategory_Initialize(), v4 = 0, v6))
    {
      sub_1001C6FCC();
      goto LABEL_13;
    }
  }
}

void sub_1001C1A18(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  v4 = objc_alloc_init(sub_1001C0CA4());
  v5 = SFLocalizedStringForKey();
  [v4 setBody:v5];

  [v4 setCategoryIdentifier:@"continuityRemoteCategory"];
  [v4 setShouldHideTime:1];
  [v4 setShouldHideDate:1];
  [v4 setShouldSuppressDefaultAction:1];
  [v4 setShouldIgnoreDoNotDisturb:1];
  v6 = [sub_1001C0D84() soundWithAlertType:23];
  [v4 setSound:v6];

  v7 = SFLocalizedStringForKey();
  [v4 setSubtitle:v7];

  v10[0] = @"af";
  v10[1] = @"deviceIdentifier";
  v8 = *(a1 + 32);
  v11[0] = &__kCFBooleanTrue;
  v11[1] = v8;
  v10[2] = @"sessionID";
  v11[2] = v3;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v4 setUserInfo:v9];

  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C700C((a1 + 32));
  }

  [*(a1 + 40) _addRequestWithID:*(a1 + 32) content:v4 type:4];
}

id sub_1001C1DD4(void *a1)
{
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C7050();
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];

  return [v2 _addRequestWithID:v3 content:v4 type:6];
}

void sub_1001C20B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_100972630 <= 60)
    {
      v7 = v3;
      if (dword_100972630 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        sub_1001C70AC(a1, v7);
LABEL_13:
        v4 = v7;
      }
    }
  }

  else if (dword_100972630 <= 30)
  {
    v7 = 0;
    if (dword_100972630 != -1 || (v6 = _LogCategory_Initialize(), v4 = 0, v6))
    {
      sub_1001C7114();
      goto LABEL_13;
    }
  }
}

void sub_1001C2684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_100972630 <= 60)
    {
      v7 = v3;
      if (dword_100972630 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        sub_1001C7170(a1, v7);
LABEL_13:
        v4 = v7;
      }
    }
  }

  else if (dword_100972630 <= 30)
  {
    v7 = 0;
    if (dword_100972630 != -1 || (v6 = _LogCategory_Initialize(), v4 = 0, v6))
    {
      sub_1001C71D8();
      goto LABEL_13;
    }
  }
}

id sub_1001C2D88(uint64_t a1)
{
  v2 = [*(a1 + 32) homePodType];
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C72D4(a1);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) notificationType];

  return [v3 _addRequestWithID:v5 content:v4 type:v6 isHomePodMini:v2 == 2];
}

void sub_1001C3398(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    if (dword_100972630 <= 60 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      sub_1001C73FC(a1, v10);
    }

    v3 = [v10 domain];
    v4 = off_1009726B0(v3);
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if ((v5 != 0) == (v6 == 0))
      {

LABEL_17:
LABEL_18:

        goto LABEL_19;
      }

      v8 = [v5 isEqual:v6];

      if (!v8)
      {
        goto LABEL_17;
      }
    }

    v9 = [v10 code];

    if (v9 != 100)
    {
      goto LABEL_19;
    }

    v5 = [*(a1 + 40) copy];
    [v5 setAttachmentURL:0];
    [*(a1 + 48) homePodHandoffUpdateIfNeeded:*(a1 + 32) info:v5];
    goto LABEL_18;
  }

  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C7464();
  }

LABEL_19:
}

uint64_t sub_1001C3984(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001C3DE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = +[NSUUID UUID];
  v3 = [v4 UUIDString];
  [v2 _addRequestWithID:v3 content:*(a1 + 40) type:8];
}

Class sub_1001C4F78(uint64_t a1)
{
  sub_1001C4FD0();
  result = objc_getClass("UNUserNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001C76E8();
  }

  qword_10098A0E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001C4FD0()
{
  v2[0] = 0;
  if (!qword_10098A0F0)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_1001C50C8;
    v2[4] = &unk_1008CF110;
    v2[5] = v2;
    v3 = off_1008D3318;
    v4 = 0;
    qword_10098A0F0 = _sl_dlopen();
  }

  v0 = qword_10098A0F0;
  if (!qword_10098A0F0)
  {
    sub_1001C7764(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_1001C50C8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10098A0F0 = result;
  return result;
}

id sub_1001C513C(uint64_t a1)
{
  if (qword_10098A0F8 != -1)
  {
    sub_1001C77E4();
  }

  v2 = qword_10098A0D0;

  return v2;
}

void sub_1001C5180(id a1)
{
  v1 = sub_1001C4FD0();
  v2 = dlsym(v1, "UNNotificationDefaultActionIdentifier");
  if (v2)
  {
    objc_storeStrong(&qword_10098A0D0, *v2);
  }

  off_1009726A0 = sub_1001C51CC;
}

id sub_1001C51D8(uint64_t a1)
{
  if (qword_10098A100 != -1)
  {
    sub_1001C77F8();
  }

  v2 = qword_10098A0D8;

  return v2;
}

void sub_1001C521C(id a1)
{
  v1 = sub_1001C4FD0();
  v2 = dlsym(v1, "UNNotificationDismissActionIdentifier");
  if (v2)
  {
    objc_storeStrong(&qword_10098A0D8, *v2);
  }

  off_1009726A8 = sub_1001C5268;
}

Class sub_1001C5274(uint64_t a1)
{
  sub_1001C4FD0();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001C780C();
  }

  qword_10098A108 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1001C52CC(uint64_t a1)
{
  if (qword_10098A110 != -1)
  {
    sub_1001C7888();
  }

  v2 = qword_10098A0B8;

  return v2;
}

void sub_1001C5310(id a1)
{
  v1 = sub_1001C4FD0();
  v2 = dlsym(v1, "UNErrorDomain");
  if (v2)
  {
    objc_storeStrong(&qword_10098A0B8, *v2);
  }

  off_1009726B0 = sub_1001C535C;
}

id sub_1001C5368(uint64_t a1)
{
  if (qword_10098A118 != -1)
  {
    sub_1001C789C();
  }

  v2 = qword_10098A0C8;

  return v2;
}

void sub_1001C53AC(id a1)
{
  v1 = sub_1001C4FD0();
  v2 = dlsym(v1, "UNNotificationAttachmentOptionsTypeHintKey");
  if (v2)
  {
    objc_storeStrong(&qword_10098A0C8, *v2);
  }

  off_1009726B8 = sub_1001C53F8;
}

id sub_1001C5404(uint64_t a1)
{
  if (qword_10098A120 != -1)
  {
    sub_1001C78B0();
  }

  v2 = qword_10098A0C0;

  return v2;
}

void sub_1001C5448(id a1)
{
  v1 = sub_1001C4FD0();
  v2 = dlsym(v1, "UNNotificationAttachmentOptionsHiddenFromDefaultExpandedViewKey");
  if (v2)
  {
    objc_storeStrong(&qword_10098A0C0, *v2);
  }

  off_1009726C0 = sub_1001C5494;
}

Class sub_1001C54A0(uint64_t a1)
{
  sub_1001C4FD0();
  result = objc_getClass("UNNotificationAttachment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001C78C4();
  }

  qword_10098A128 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1001C54F8(uint64_t a1)
{
  sub_1001C4FD0();
  result = objc_getClass("UNMutableNotificationContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001C7940();
  }

  qword_10098A130 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1001C5550(uint64_t a1)
{
  sub_1001C4FD0();
  result = objc_getClass("UNNotificationSound");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001C79BC();
  }

  qword_10098A138 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1001C55A8(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A148)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1001C56D4;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D33D0;
    v5 = 0;
    qword_10098A148 = _sl_dlopen();
  }

  if (!qword_10098A148)
  {
    sub_1001C7AB4(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("RTIInputSystemDataPayload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001C7A38();
  }

  qword_10098A140 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001C56D4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10098A148 = result;
  return result;
}

id sub_1001C5748(uint64_t a1)
{
  if (qword_10098A150 != -1)
  {
    sub_1001C7B34();
  }

  v2 = qword_10098A0E0;

  return v2;
}

void sub_1001C578C(id a1)
{
  v1 = sub_1001C4FD0();
  v2 = dlsym(v1, "UNNotificationSilenceActionIdentifier");
  if (v2)
  {
    objc_storeStrong(&qword_10098A0E0, *v2);
  }

  off_1009726C8 = sub_1001C57D8;
}

id sub_1001C5814(uint64_t a1)
{

  return [v1 removeDeliveredNotificationsWithIdentifiers:a1];
}

id sub_1001C5868(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = v17;

  return [a1 replaceContentForRequestWithIdentifier:v17 replacementContent:v16 completionHandler:{&a12, a6, a7, a8}];
}

void sub_1001C5888()
{
  v2 = *(v0 + 144);

  dispatch_assert_queue_V2(v2);
}

uint64_t sub_1001C68AC()
{
  sub_100023F9C();
  sub_100019CF0();
  return LogPrintF(&dword_100972630, "[SDNotificationManager _riServerEnsureStarted:completion:]_block_invoke_3", 30, "TV Notification granted: %s %@");
}

uint64_t sub_1001C6940()
{
  sub_100023F9C();
  sub_100019CF0();
  return LogPrintF(&dword_100972630, "[SDNotificationManager _watchEnsureStarted:completion:]_block_invoke_3", 30, "Watch Notification granted: %s %@");
}

uint64_t sub_1001C6A08()
{
  sub_100023F9C();
  sub_100019CF0();
  return LogPrintF(&dword_100972630, "[SDNotificationManager _homePodEnsureStarted:completion:]_block_invoke_3", 30, "HomePod Notification granted: %s %@");
}

uint64_t sub_1001C6A80()
{
  sub_100023F9C();
  sub_100019CF0();
  return LogPrintF(&dword_100972630, "[SDNotificationManager _homePodEnsureStarted:completion:]_block_invoke_6", 30, "HomePod mini Notification granted: %s %@");
}

uint64_t sub_1001C6B14()
{
  sub_100023F9C();
  sub_100019CF0();
  return LogPrintF(&dword_100972630, "[SDNotificationManager _visionUnlockiOSEnsureStarted:completion:]_block_invoke_3", 30, "Vision Notification granted: %s %@");
}

uint64_t sub_1001C6CF8(uint64_t result, void *a2)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_100972630, "[SDNotificationManager _addRequestWithID:content:type:isHomePodMini:]", 90, "### No notification center for request");
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1001C6E24(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&dword_100972630, "[SDNotificationManager _riServerPostIfNeeded:backgroundAction:]_block_invoke", 30, "TV KBPost %@ backgroundAction: %s\n", *(a1 + 32), v1);
}

void sub_1001C6EA0(uint64_t a1, uint64_t a2)
{
  [sub_1001C5808(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_100972630, "[SDNotificationManager _riServerUpdate:info:]_block_invoke", 60, "### Error updating %@: %@\n");
}

void sub_1001C6F64(uint64_t a1, uint64_t a2)
{
  [sub_1001C5808(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_100972630, "[SDNotificationManager _riServerUpdate:rtiData:]_block_invoke", 60, "### Error updating %@: %@\n");
}

void sub_1001C70AC(uint64_t a1, uint64_t a2)
{
  [sub_1001C5808(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_100972630, "[SDNotificationManager _watchKeyboardUpdate:info:]_block_invoke", 60, "### Error updating %@: %@\n");
}

void sub_1001C7170(uint64_t a1, uint64_t a2)
{
  [sub_1001C5808(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_100972630, "[SDNotificationManager _watchKeyboardUpdate:rtiData:]_block_invoke", 60, "### Error updating %@: %@\n");
}

uint64_t sub_1001C7318(uint64_t a1, uint64_t a2)
{
  if ((a1 - 1) > 3)
  {
    v4 = @"?";
  }

  else
  {
    v4 = off_1008D3440[a1 - 1];
  }

  return LogPrintF(&dword_100972630, "[SDNotificationManager _homePodHandoffRemove:reason:]", 30, "HHRemove %@, %@\n", a2, v4, v2, v3);
}

void sub_1001C73FC(uint64_t a1, uint64_t a2)
{
  [sub_1001C5808(a1 a2)];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_100972630, "[SDNotificationManager _homePodHandoffUpdateIfNeeded:info:]_block_invoke", 60, "### Error updating %@: %@\n");
}

void sub_1001C74C4(NSErrorUserInfoKey *a1, const __CFString **a2)
{
  *a1 = NSLocalizedDescriptionKey;
  v4 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v5 = v4;
  v6 = @"?";
  if (v4)
  {
    v6 = v4;
  }

  *a2 = v6;
  v7 = [NSDictionary dictionaryWithObjects:a2 forKeys:a1 count:1];
  v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6705 userInfo:v7];
  LogPrintF(&dword_100972630, "[SDNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", 60, "### Error handling notification response: %@\n", v8);
}

void sub_1001C76E8()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNUserNotificationCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNotificationManager.m" lineNumber:71 description:{@"Unable to find class %s", "UNUserNotificationCenter"}];

  __break(1u);
}

void sub_1001C7764(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *UserNotificationsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNotificationManager.m" lineNumber:46 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1001C780C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNNotificationRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNotificationManager.m" lineNumber:61 description:{@"Unable to find class %s", "UNNotificationRequest"}];

  __break(1u);
}

void sub_1001C78C4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNNotificationAttachmentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNotificationManager.m" lineNumber:49 description:{@"Unable to find class %s", "UNNotificationAttachment"}];

  __break(1u);
}

void sub_1001C7940()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNMutableNotificationContentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNotificationManager.m" lineNumber:67 description:{@"Unable to find class %s", "UNMutableNotificationContent"}];

  __break(1u);
}

void sub_1001C79BC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUNNotificationSoundClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNotificationManager.m" lineNumber:65 description:{@"Unable to find class %s", "UNNotificationSound"}];

  __break(1u);
}

void sub_1001C7A38()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getRTIInputSystemDataPayloadClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNotificationManager.m" lineNumber:33 description:{@"Unable to find class %s", "RTIInputSystemDataPayload"}];

  __break(1u);
}

void sub_1001C7AB4(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *RemoteTextInputLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNotificationManager.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

id sub_1001C7F8C(uint64_t a1)
{
  [*(a1 + 32) onqueue_updateTetheringSupported];
  v2 = *(a1 + 32);

  return [v2 onqueue_updateHostAPNetwork];
}

id sub_1001C85EC(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Personal hotspot settings changed", v4, 2u);
  }

  return [*(a1 + 32) onqueue_updateTetheringSupported];
}

id sub_1001C86D4(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating tethering support on wifi restart", v4, 2u);
  }

  return [*(a1 + 32) onqueue_updateTetheringSupported];
}

id sub_1001C92A8(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting tethering", v4, 2u);
  }

  return [*(a1 + 32) onqueue_startTetheringWithCompletionHandler:*(a1 + 56) modelID:*(a1 + 40) productVersion:*(a1 + 48) canConnectOn5GHz:*(a1 + 64) retry:0];
}

id sub_1001C9AA0(uint64_t a1)
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 wifiManager];

  if (v3)
  {
    v4 = tethering_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning shut down of wifi discovery", buf, 2u);
    }

    *buf = *&off_1008D34A8;
    v9[0] = kCFBooleanFalse;
    v9[1] = kCFBooleanFalse;
    v5 = CFDictionaryCreate(kCFAllocatorDefault, buf, v9, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v5)
    {
      v6 = v5;
      WiFiManagerClientSetMISDiscoveryStateExt();
      CFRelease(v6);
    }

    else
    {
      v7 = tethering_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001CB7C0();
      }
    }
  }

  [*(a1 + 32) clearQueuedDiscoveryRequest];
  return [*(a1 + 32) releasePowerAssertion];
}

void sub_1001C9FA4(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Restarting network timer", v8, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if (v4)
  {
    [v4 invalidate];
    v3 = *(a1 + 32);
  }

  v5 = [NSTimer scheduledTimerWithTimeInterval:v3 target:"networkTimerFired:" selector:0 userInfo:0 repeats:8.0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;
}

id sub_1001CA0FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  [*(a1 + 32) onqueue_cleanUpFailedNetworkBringUp];
  v4 = *(a1 + 32);

  return [v4 onqueue_captureTailspin];
}

void sub_1001CA4A8(uint64_t a1, int a2)
{
  *(*(a1 + 32) + 20) = 0;
  [*(a1 + 40) closeFile];
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished capturing tailspin (success: %@)", &v5, 0xCu);
  }
}

id sub_1001CAEA0(uint64_t a1)
{
  [*(a1 + 32) onqueue_updateTetheringSupported];
  v2 = *(a1 + 32);

  return [v2 onqueue_handleSwitchConditionsChanged];
}

void sub_1001CB224(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"com.apple.sharingd.HotspotMISStateChanged" object:0 userInfo:0];
}

id sub_1001CB280(uint64_t a1)
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retrying to start tethering after system wake", v4, 2u);
  }

  return [*(a1 + 32) onqueue_startTetheringWithCompletionHandler:*(*(a1 + 32) + 88) modelID:*(*(a1 + 32) + 96) productVersion:*(*(a1 + 32) + 104) canConnectOn5GHz:*(*(a1 + 32) + 23) retry:1];
}

void sub_1001CB748()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CB784()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CB7C0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CB7FC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CBC10(id a1)
{
  v1 = objc_alloc_init(SDPowerChargingStatusNotifier);
  v2 = qword_10098A158;
  qword_10098A158 = v1;
}

void sub_1001CBC5C(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kSFPowerSourceStatusNotificationFromWatch, 0, 0, 0);
  v2 = charging_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "notifying battery status change.", v3, 2u);
  }
}

void sub_1001CEDC8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CEE44()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001CEEB4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001CEF24()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CEF60()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001CEFD0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001CF040()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001CF0B0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001CF120(void *a1)
{
  v1 = [a1 longTermKeyStorageFilePath];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001CF1AC(void *a1)
{
  v1 = [a1 pairingStorePath];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001CF250()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001CF2C0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CF2FC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CF338(void *a1)
{
  v2 = [a1 localLongTermKey];
  v8 = [a1 remoteLongTermKey];
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1001CF3F4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CF430(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LOWORD(v3) = 1024;
  HIWORD(v3) = a2;
  sub_100019D70(&_mh_execute_header, a2, a3, "Step failed with output length = %d, error = %x", 67109376, v3);
}

void sub_1001CF4AC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CF5E0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CF61C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CF658(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LOWORD(v3) = 1024;
  HIWORD(v3) = a2;
  sub_100019D70(&_mh_execute_header, a2, a3, "Failed to store escrow data (add status:%d, delete status:%d)", 67109376, v3);
}

void sub_1001CF744()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001CF7F4(id a1)
{
  v1 = objc_alloc_init(SDAutoUnlockTransport);
  v2 = qword_10098A168;
  qword_10098A168 = v1;
}

void sub_1001CFAF0(uint64_t a1)
{
  v2 = [*(a1 + 32) clientMap];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_1001CFBF8(uint64_t a1)
{
  v2 = [*(a1 + 32) clientMap];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = objc_opt_new();
  v4 = [*(a1 + 32) sendIdentifierToSessionID];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001CFDC0;
  v17[3] = &unk_1008D15D0;
  v18 = *(a1 + 40);
  v5 = v3;
  v19 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v17];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [*(a1 + 32) sendIdentifierToSessionID];
        [v12 removeObjectForKey:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v8);
  }
}

void sub_1001CFDC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_1001D0058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D0070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001D0088(uint64_t a1)
{
  v2 = [*(a1 + 32) onqueue_bluetoothIDForIDSID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001D0360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D0378(uint64_t a1)
{
  v2 = [*(a1 + 32) onqueue_bluetoothDeviceIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001D0D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D0D98(uint64_t a1)
{
  v2 = [*(a1 + 32) onqueue_autoUnlockEligibleDevices:*(a1 + 56) deviceType:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001D1538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D1550(uint64_t a1)
{
  v2 = [*(a1 + 32) onqueue_enabledAutoUnlockDevicesUsingCache:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001D18FC(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) idsService];
  v3 = [v2 devices];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = +[SDAutoUnlockAKSManager sharedManager];
        v10 = [v8 uniqueIDOverride];
        v11 = [v9 deviceEnabledAsKeyForIDSDeviceID:v10];

        if (v11)
        {
          v12 = [*(a1 + 32) autoUnlockDeviceForIDSDevice:v8 cloudPaired:1 cached:0];
          if (v12)
          {
            [*(a1 + 40) addObject:v12];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_1001D3580(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) clientMap];
    v3 = [*(a1 + 32) UUIDString];
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      v6 = [*(a1 + 32) UUIDString];
      v5 = [*(a1 + 40) sendIdentifierToSessionID];
      [v5 setObject:v6 forKeyedSubscript:*(a1 + 48)];
    }
  }
}

uint64_t sub_1001D3C84(uint64_t a1, char a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if ((a2 & 1) == 0)
    {
      return (*(result + 16))(result, a3);
    }
  }

  return result;
}

void sub_1001D3EF4(uint64_t a1)
{
  v2 = [*(a1 + 32) primaryClient];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) primaryClient];
    [v4 transportDidChangeDevices:*(a1 + 32)];
  }
}

void sub_1001D40A8(uint64_t a1)
{
  v2 = [*(a1 + 32) primaryClient];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) primaryClient];
    [v4 transportDidChangeNearbyState:*(a1 + 32)];
  }
}

void sub_1001D4240(uint64_t a1)
{
  v2 = [*(a1 + 32) idsService];
  v3 = [v2 deviceForFromID:*(a1 + 40)];
  v4 = [v3 uniqueIDOverride];

  v5 = auto_unlock_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 48) type];
      v8 = [*(a1 + 48) data];
      v9 = [v8 length];
      v10 = [*(a1 + 56) outgoingResponseIdentifier];
      v42 = 67109634;
      *v43 = v7;
      *&v43[4] = 1024;
      *&v43[6] = v9;
      *v44 = 2112;
      *&v44[2] = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received protobuf (type = %d, size = %u, identifier = %@)", &v42, 0x18u);
    }

    v11 = [SDAutoUnlockSessionWrapper alloc];
    v12 = [*(a1 + 48) data];
    v6 = [(SDAutoUnlockSessionWrapper *)v11 initWithData:v12];

    if (!-[NSObject hasSessionID](v6, "hasSessionID") || (-[NSObject sessionID](v6, "sessionID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 length], v13, v14 != 16))
    {
      v18 = auto_unlock_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1001D59A8(v6, (a1 + 48), v18);
      }

      goto LABEL_37;
    }

    v15 = [*(a1 + 48) type];
    v16 = [NSUUID alloc];
    v17 = [v6 sessionID];
    v18 = [v16 initWithUUIDBytes:{objc_msgSend(v17, "bytes")}];

    if (v15 > 500)
    {
      if (v15 == 501)
      {
        v37 = auto_unlock_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [*(a1 + 56) serverReceivedTime];
          v39 = [*(a1 + 56) fromServerStorage];
          v40 = @"NO";
          if (v39)
          {
            v40 = @"YES";
          }

          v42 = 138412546;
          *v43 = v38;
          *&v43[8] = 2112;
          *v44 = v40;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Received registration request (date: %@, from storage: %@)", &v42, 0x16u);
        }

        v23 = [*(a1 + 32) primaryClient];
        v41 = *(a1 + 32);
        v25 = [v6 payload];
        [v23 transport:v41 didReceiveRegistrationRequestWithSessionID:v18 deviceID:v4 requestData:v25];
        goto LABEL_36;
      }

      if (v15 == 505)
      {
        v26 = auto_unlock_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [*(a1 + 56) serverReceivedTime];
          v28 = [*(a1 + 56) fromServerStorage];
          v29 = @"NO";
          if (v28)
          {
            v29 = @"YES";
          }

          v42 = 138412546;
          *v43 = v27;
          *&v43[8] = 2112;
          *v44 = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Received key originating registration request (date: %@, from storage: %@)", &v42, 0x16u);
        }

        v23 = [*(a1 + 32) primaryClient];
        v30 = *(a1 + 32);
        v25 = [v6 payload];
        [v23 transport:v30 didReceiveKeyOriginatingRegistrationRequestWithSessionID:v18 deviceID:v4 requestData:v25];
        goto LABEL_36;
      }
    }

    else
    {
      if (v15 == 2)
      {
        v23 = [*(a1 + 32) primaryClient];
        v36 = *(a1 + 32);
        v25 = [v6 payload];
        [v23 transport:v36 didReceiveDisableMessage:v25 fromDeviceID:v4];
        goto LABEL_36;
      }

      if (v15 == 101)
      {
        v19 = auto_unlock_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 56) serverReceivedTime];
          v21 = [*(a1 + 56) fromServerStorage];
          v22 = @"NO";
          if (v21)
          {
            v22 = @"YES";
          }

          v42 = 138412546;
          *v43 = v20;
          *&v43[8] = 2112;
          *v44 = v22;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received pairing request (date: %@, from storage: %@)", &v42, 0x16u);
        }

        if (![*(a1 + 32) pairingRequestIsValidForDeviceID:v4 messageContext:*(a1 + 56)])
        {
          goto LABEL_37;
        }

        v23 = [*(a1 + 32) primaryClient];
        v24 = *(a1 + 32);
        v25 = [v6 payload];
        [v23 transport:v24 didReceivePairingRequestWithSessionID:v18 deviceID:v4 requestData:v25];
LABEL_36:

LABEL_37:
        goto LABEL_38;
      }
    }

    v31 = [*(a1 + 32) clientMap];
    v32 = [v18 UUIDString];
    v23 = [v31 objectForKey:v32];

    if (objc_opt_respondsToSelector())
    {
      v33 = *(a1 + 32);
      v34 = [v6 payload];
      [v23 transport:v33 didReceivePayload:v34 type:v15 deviceID:v4];
    }

    v25 = auto_unlock_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v35 = [*(a1 + 32) clientMap];
      v42 = 138412802;
      *v43 = v23;
      *&v43[8] = 2112;
      *v44 = v18;
      *&v44[8] = 2112;
      v45 = v35;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "client:%@, sessionID:%@, clients:%@", &v42, 0x20u);
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10005C2A4(v6);
  }

LABEL_38:
}

void sub_1001D492C(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) sendIdentifierToSessionID];
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received IDS ACK (identifier: %@, mapping: %@)", &v12, 0x16u);
  }

  v5 = [*(a1 + 40) sendIdentifierToSessionID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v7 = [*(a1 + 40) clientMap];
    v8 = [v7 objectForKey:v6];

    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling client for ACK (client: %@, session ID: %@, identifier: %@)", &v12, 0x20u);
    }

    if (objc_opt_respondsToSelector())
    {
      [v8 transport:*(a1 + 40) didReceiveMessageACKForIdentifier:*(a1 + 32)];
    }

    v11 = [*(a1 + 40) sendIdentifierToSessionID];
    [v11 removeObjectForKey:*(a1 + 32)];
  }
}

void sub_1001D5674(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Watch OS too old. Skipping", buf, 2u);
}

void sub_1001D5854(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[SDAutoUnlockTransport macVersionEligibleForDeviceID:]";
  v5 = 2112;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s: called with deviceID:%@ whose deviceClass is %d", &v3, 0x1Cu);
}

void sub_1001D59A8(void *a1, id *a2, NSObject *a3)
{
  v6 = [a1 sessionID];
  v7 = [*a2 data];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = a1;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Incoming message missing info (session = %@, wrapper = %@, data = %@)", &v8, 0x20u);
}

void sub_1001D5BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D5C08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEndpointsChanged:v3];
}

void sub_1001D6368(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = airdrop_nw_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AirDrop browse start handler called", &v16, 2u);
  }

  v8 = nw_agent_client_copy_browse_descriptor();
  if (v8)
  {
    if (nw_browse_descriptor_get_type() == 2)
    {
      v9 = [[_TtC16DaemoniOSLibrary20SDAirDropAgentClient alloc] initWithClient:v5 browseDescriptor:v8 browseResponse:v6];
      v10 = [*(a1 + 32) endpointService];
      v11 = [v10 addClient:v9];

      v12 = airdrop_nw_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 agentClient];
        v14 = [v13 id];
        v16 = 138412290;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Created AirDrop agent client %@", &v16, 0xCu);
      }

      v15 = [*(a1 + 32) clientTokens];
      [v15 addObject:v11];
    }

    else
    {
      v9 = airdrop_nw_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001D6D7C(v9);
      }
    }
  }

  else
  {
    v9 = airdrop_nw_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001D6DC0(v5, v9);
    }
  }
}

void sub_1001D658C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = airdrop_nw_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AirDrop browse stop handler called", &v11, 2u);
  }

  v5 = [*(a1 + 32) _agentClientTokenForClient:v3];

  if (v5)
  {
    v6 = airdrop_nw_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 agentClient];
      v8 = [v7 id];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing AirDrop agent client %@", &v11, 0xCu);
    }

    v9 = [*(a1 + 32) endpointService];
    [v9 removeClientWithToken:v5];

    v10 = [*(a1 + 32) clientTokens];
    [v10 removeObject:v5];
  }
}

void sub_1001D691C(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [*(a1 + 40) clientTokens];
  v3 = [obj countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v3)
  {
    v5 = v3;
    v24 = *v30;
    *&v4 = 138412546;
    v22 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v29 + 1) + 8 * i) agentClient];
        v8 = airdrop_nw_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 id];
          v10 = [v7 bundleID];
          v11 = [v7 pid];
          v12 = [v7 startTime];
          *buf = 138413058;
          v35 = v9;
          v36 = 2112;
          v37 = v10;
          v38 = 1024;
          v39 = v11;
          v40 = 2112;
          v41 = v12;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating browse results for client %@ - bundleID %@ - pid %d - startTime %@", buf, 0x26u);
        }

        v13 = nw_array_create();
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = v2;
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v14);
              }

              nw_array_append();
            }

            v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v16);
        }

        v19 = [v7 browseResponse];
        (v19)[2](v19, v13);

        v20 = airdrop_nw_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v7 id];
          *buf = v22;
          v35 = v21;
          v36 = 2112;
          v37 = v2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updated browse client %@ - endpoints %@ ", buf, 0x16u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v5);
  }
}

void sub_1001D6DC0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No browse descriptor for client:%@", &v2, 0xCu);
}

void sub_1001D9D20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SFNodeCopyKinds();
  if (([v7 containsObject:kSFNodeKindUnknown] & 1) == 0)
  {
    v8 = sub_1001EAE00();
    if (v8 || ([*(*(a1 + 32) + 248) objectForKeyedSubscript:v5], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
    }

    else
    {
      v10 = (arc4random() % 0x64 + 1) / 100.0;
      v11 = (arc4random() % 0x12D) / 100.0;
      v9 = objc_opt_new();
      [v9 setPtsScore:v10];
      [v9 setFlags:{objc_msgSend(v9, "flags") | 8}];
      [v9 setDistanceMeters:v11];
      [v9 setFlags:{objc_msgSend(v9, "flags") | 1}];
      if (![*(*(a1 + 32) + 248) count])
      {
        [v9 setHorizontalAngle:0.0];
        [v9 setFlags:{objc_msgSend(v9, "flags") | 2}];
      }

      [*(*(a1 + 32) + 248) setObject:v9 forKeyedSubscript:v5];
      [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
      v12 = SFNodeSetRangingData();
      v13 = magic_head_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = SFNodeCopyDisplayName();
        v15 = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Added fake ranging measurement %@ to %@", &v15, 0x16u);
      }
    }
  }
}

int64_t sub_1001DA520(id a1, id a2, id a3)
{
  v3 = a3;
  DisplayName = SFNodeGetDisplayName();
  v5 = SFNodeGetDisplayName();

  return [DisplayName localizedCaseInsensitiveCompare:v5];
}

int64_t sub_1001DA584(id a1, id a2, id a3)
{
  v3 = a3;
  DisplayName = SFNodeGetDisplayName();
  v5 = SFNodeGetDisplayName();

  return [DisplayName localizedCaseInsensitiveCompare:v5];
}

void sub_1001DB348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001DB370(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 34);
    [v2 nodeBrowser:v3 nodesChangedForParent:v3[2] protocol:v3[4] error:*(v3 + 12)];

    WeakRetained = v3;
  }
}

void sub_1001DBC1C(id a1)
{
  v2 = [off_1009728C0(a1) sharedManager];
  if ([v2 isMultiUser])
  {
    v1 = [v2 currentUser];
    byte_10098A180 = [v1 userType] == 1;
  }

  else
  {
    byte_10098A180 = 0;
  }
}

uint64_t sub_1001DC420(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 48));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001DC64C(uint64_t a1)
{
  if (dword_100972850 <= 50 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E42F0(a1);
  }

  v2 = SFAppleIDRemoveAllCertificatesFromKeychain();
  if (v2)
  {
    sub_1001E4338(v2);
  }

  else
  {
    v3 = SFAppleIDRemoveAllKeysFromKeychain();
    if (v3)
    {
      sub_1001E43B4(v3);
    }

    else
    {
      obj = *(a1 + 40);
      objc_sync_enter(obj);
      [*(a1 + 40) _setMetaInfoValue:&off_10090BEF8 forKey:@"KeychainCleanupTag"];
      objc_sync_exit(obj);
    }
  }
}

void sub_1001DC7B0(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _handlePeriodicVerifyTimerFired];
  objc_sync_exit(obj);
}

void sub_1001DC820(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _handleThrottledRetryTimerFired];
  objc_sync_exit(obj);
}

void sub_1001DD120(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (a3)
  {
    if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100972850, "[SDAppleIDAgent _handleInfoResponse:forAppleID:infoRequest:certificateSerialNumber:withError:completion:]_block_invoke", 60, "### SFAppleIDParseValidationRecordData failed with error %#m\n", a3);
    }

    v14 = *(a1 + 64);
    if (v14)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  if (([*(a1 + 40) isEqualToString:*(*(a1 + 32) + 24)] & 1) == 0)
  {
    v14 = *(a1 + 64);
    if (v14)
    {
      LODWORD(a3) = -6709;
LABEL_25:
      v19 = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithUTF8String:DebugGetErrorString()];
      v13 = v17;
      v18 = @"?";
      if (v17)
      {
        v18 = v17;
      }

      v20 = v18;
      v3 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:a3 userInfo:v3];
      v16 = 0;
      v11 = 0;
      goto LABEL_15;
    }

LABEL_28:
    v11 = 0;
    goto LABEL_17;
  }

  v8 = [v6 objectForKeyedSubscript:@"altDsID"];
  [*(a1 + 48) setAltDSID:v8];

  [*(a1 + 48) setSuggestedValidDuration:CFDictionaryGetInt64()];
  v9 = [v6 objectForKeyedSubscript:@"ValidatedEmailHashes"];
  if ([v9 count])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [*(a1 + 48) setValidatedEmailHashes:v10];
  v11 = [v6 objectForKeyedSubscript:@"ValidatedPhoneHashes"];

  if ([v11 count])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [*(a1 + 48) setValidatedPhoneHashes:v12];
  v13 = [v6 objectForKeyedSubscript:@"ValidAsOf"];
  [*(a1 + 48) setValidStartDate:v13];

  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100972850, "[SDAppleIDAgent _handleInfoResponse:forAppleID:infoRequest:certificateSerialNumber:withError:completion:]_block_invoke", 30, "Validation record for %{mask} is valid\n", *(a1 + 40));
  }

  [*(a1 + 32) _setCurrentAppleIDContactInfo:*(a1 + 56) validationRecord:*(a1 + 48)];
  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = 0;
    v16 = 1;
LABEL_15:
    (*(v14 + 16))(v14, v15);
    if ((v16 & 1) == 0)
    {
    }
  }

LABEL_17:

  objc_sync_exit(v7);
}

void sub_1001DE124(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 48));
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [v8 description];
    (*(v6 + 16))(v6, v7, v5);
  }
}

uint64_t sub_1001DE1C0(uint64_t a1)
{
  [*(a1 + 32) connection:0 didReceiveIncomingMessage:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001DE27C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v10 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v4 = v3;
    v5 = @"?";
    if (v3)
    {
      v5 = v3;
    }

    v11 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1, v1 + 16];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v2 userInfo:v6];
    (*(v1 + 16))(v1, 0, v7);
  }

  else
  {
    v8 = *(v1 + 16);
    v9 = *(a1 + 32);

    v8(v9, 0, 0);
  }
}

void sub_1001DED14(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1001DED4C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(*(*(a1 + 40) + 8) + 24) = a4;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  *(*(*(a1 + 56) + 8) + 24) = a3;
  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001DED78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    v10 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v4 = v3;
    v5 = @"?";
    if (v3)
    {
      v5 = v3;
    }

    v11 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1, v1 + 16];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v2 userInfo:v6];
    (*(v1 + 16))(v1, 0, v7);
  }

  else
  {
    v8 = *(v1 + 16);
    v9 = *(a1 + 32);

    v8(v9, 0, 0);
  }
}

void sub_1001DF0EC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(a1 + 32) _handleAltDSIDLookupResponse:v7 requestError:v5 serverTask:*(a1 + 40) completion:*(a1 + 48)];
  objc_sync_exit(v6);
}

void sub_1001DF18C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(a1 + 32) _handleFindPersonResponse:v7 forRequest:*(a1 + 40) emailOrPhone:*(a1 + 48) withError:v5 queue:*(a1 + 56) completion:*(a1 + 64)];
  objc_sync_exit(v6);
}

void sub_1001DF230(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v10 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v4 = v3;
    v5 = @"?";
    if (v3)
    {
      v5 = v3;
    }

    v11 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1, v1 + 16];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v2 userInfo:v6];
    (*(v1 + 16))(v1, 0, v7);
  }

  else
  {
    v8 = *(v1 + 16);
    v9 = *(a1 + 32);

    v8(v9, 0, 0);
  }
}

void sub_1001DF9C0(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(a1 + 32) _handleInfoResponse:v7 forAppleID:*(a1 + 40) infoRequest:*(a1 + 48) certificateSerialNumber:*(a1 + 56) withError:v5 completion:*(a1 + 64)];
  objc_sync_exit(v6);
}

void sub_1001DFEE4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(a1 + 32) _handleReceivedCertificateToken:v7 privateKeyPersistentReference:v5 forAppleID:*(a1 + 40)];
  objc_sync_exit(v6);
}

void sub_1001DFF80(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(a1 + 32) _handleReceivedIdentity:v7 forAppleID:*(a1 + 40) identityRequest:*(a1 + 48) withError:v5 completion:*(a1 + 56)];
  objc_sync_exit(v6);
}

void sub_1001E014C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) _handleServerTaskCompletionWithError:v4];
  objc_sync_exit(v3);
}

void sub_1001E01CC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) _handleServerTaskCompletionWithError:v4];
  objc_sync_exit(v3);
}

void sub_1001E024C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) _handleServerTaskCompletionWithError:v4];
  objc_sync_exit(v3);
}

void sub_1001E02CC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) _handleServerTaskCompletionWithError:v4];
  objc_sync_exit(v3);
}

void sub_1001E034C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (a3)
  {
    if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100972850, "[SDAppleIDAgent _verifyState]_block_invoke_5", 60, "### SFAppleIDParseValidationRecordData failed with error %#m\n", a3);
    }

    v17 = *(a1 + 32);
    v18 = v17[3];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001E061C;
    v21[3] = &unk_1008CDF90;
    v21[4] = v17;
    [v17 _requestInfoForAppleID:v18 completion:v21];
  }

  else
  {
    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      v7 = [*(a1 + 40) identity];
      v8 = [v7 appleID];
      LogPrintF(&dword_100972850, "[SDAppleIDAgent _verifyState]_block_invoke_5", 30, "Validation record for %{mask} is valid\n", v8);
    }

    v9 = [*(a1 + 40) identity];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) identity];
      LODWORD(v10) = [v10 _isCertificateBlocklisted:v11];

      if (v10)
      {
        if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100972850, "[SDAppleIDAgent _verifyState]_block_invoke_5", 60, "### Clearing identity state due to blocklisted certificate \n");
        }

        v15 = *(a1 + 32);
        v16 = [*(a1 + 40) identity];
        [v15 _clearIdentityState:v16];
      }

      else
      {
        v12 = *(a1 + 32);
        v13 = [*(a1 + 40) identity];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1001E069C;
        v19[3] = &unk_1008D3868;
        v14 = *(a1 + 40);
        v19[4] = *(a1 + 32);
        v20 = v14;
        [v12 _checkIfAppleIDCertificateChainIsValidForIdentity:v13 completion:v19];
      }
    }
  }

  objc_sync_exit(v6);
}

void sub_1001E061C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) _handleServerTaskCompletionWithError:v4];
  objc_sync_exit(v3);
}

void sub_1001E069C(uint64_t a1, char a2, uint64_t a3)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (a2)
  {
    if (dword_100972850 <= 30)
    {
      if (dword_100972850 != -1 || _LogCategory_Initialize())
      {
        v6 = [*(a1 + 40) identity];
        v7 = [v6 appleID];
        LogPrintF(&dword_100972850, "[SDAppleIDAgent _verifyState]_block_invoke_7", 30, "Certificate chain for %{mask} is trusted\n", v7);
      }

      if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100972850, "[SDAppleIDAgent _verifyState]_block_invoke_7", 30, "Agent state: all good.\n");
      }
    }

    v12 = *(a1 + 32);
    v11 = +[NSDate date];
    [v12 _setMetaInfoValue:v11 forKey:@"LastAllGoodDate"];
  }

  else
  {
    if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      v8 = [*(a1 + 40) identity];
      v9 = [v8 appleID];
      LogPrintF(&dword_100972850, "[SDAppleIDAgent _verifyState]_block_invoke_7", 60, "### Invalid certificate chain for %{mask}, error %#m\n", v9, a3);
    }

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) identity];
    [v10 _clearIdentityState:v11];
  }

  objc_sync_exit(obj);
}

void sub_1001E0934(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _verifyState];
  objc_sync_exit(obj);
}

void sub_1001E0BC0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100972850, "[SDAppleIDAgent verifiedIdentityForEmailOrPhone:queue:completion:]_block_invoke", 30, "Verified identity for %{mask}: %@\n", *(a1 + 32), v6);
  }

  SFMetricsLogUnexpectedEvent();
  (*(*(a1 + 40) + 16))();
}

void sub_1001E0E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E0E84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E0E9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  if (v9 && dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4F98(v9);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001E1488(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_100972850 <= 90 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4FD8(v5);
    }

    v7 = 0;
    v9 = 0;
  }

  else
  {
    if (v16)
    {
      v6 = [v16 accountIdentifier];
      if (v6)
      {
        v7 = v6;
        v8 = [[SDAppleIDVerifiedIdentity alloc] initWithAccountIdentifier:v6 emailOrPhone:*(a1 + 32)];
        v9 = 0;
        goto LABEL_5;
      }

      v13 = [NSError errorWithDomain:SFAppleIDErrorDomain code:201237 userInfo:0];
      v9 = v13;
      if (dword_100972850 <= 90)
      {
        if (dword_100972850 != -1 || (v13 = _LogCategory_Initialize(), v13))
        {
          sub_1001E5018(v13, v14, v15);
        }
      }
    }

    else
    {
      v10 = [NSError errorWithDomain:SFAppleIDErrorDomain code:201236 userInfo:0];
      v9 = v10;
      if (dword_100972850 <= 90)
      {
        if (dword_100972850 != -1 || (v10 = _LogCategory_Initialize(), v10))
        {
          sub_1001E5034(v10, v11, v12);
        }
      }
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_5:
  (*(*(a1 + 40) + 16))();
}

void sub_1001E19A8(id a1)
{
  v1 = objc_alloc_init(SDAppleIDAgent);
  v2 = gSDAppleIDAgent;
  gSDAppleIDAgent = v1;

  v3 = dispatch_get_global_queue(2, 0);
  dispatch_async(v3, &stru_1008D3948);
}

void sub_1001E2040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  objc_sync_exit(v11);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

Class sub_1001E2150()
{
  if (qword_10098A1B0 != -1)
  {
    sub_1001E5064();
  }

  result = objc_getClass("UMUserManager");
  qword_10098A1A8 = result;
  off_1009728C0 = sub_1001E21A4;
  return result;
}

id sub_1001E21DC(uint64_t a1)
{
  if (qword_10098A1C0 != -1)
  {
    sub_1001E5078();
  }

  v2 = qword_10098A1A0;

  return v2;
}

void sub_1001E2220(id a1)
{
  if (qword_10098A1C8 != -1)
  {
    sub_1001E508C();
  }

  v1 = dlsym(qword_10098A1D0, "APSEnvironmentProduction");
  if (v1)
  {
    objc_storeStrong(&qword_10098A1A0, *v1);
  }

  off_1009728C8 = sub_1001E2288;
}