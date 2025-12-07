void sub_1000AF1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, void *a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, char a60)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  sub_100078598(&a60);
  _Unwind_Resume(a1);
}

void SACompanionDetector::create(void *a1)
{
  v3 = a1;
  if (*(sub_100042820() + 160) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000AF6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001E0C0(va);
  operator delete();
}

void *sub_1000AF714(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10001EF44(v7, a3);
  sub_1000AF7EC(a1, v5, v7);
  sub_10001E0C0(v7);
  *a1 = off_10013F558;

  return a1;
}

void sub_1000AF7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001E0C0(va);

  _Unwind_Resume(a1);
}

void *sub_1000AF7EC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = off_10013F5A8;
  v6 = v5;
  a1[1] = v6;
  sub_10001EF44((a1 + 2), a3);

  return a1;
}

uint64_t sub_1000AF870(uint64_t a1)
{
  *a1 = off_10013F5A8;
  sub_10001E0C0(a1 + 16);

  return a1;
}

void sub_1000AF8BC(uint64_t a1)
{
  *a1 = off_10013F5A8;
  sub_10001E0C0(a1 + 16);

  operator delete();
}

void SACoreLocation::create(void *a1)
{
  a1;
  if (*(sub_100042820() + 8) == 1)
  {
    sub_1000AF9D4();
  }

  sub_1000AFAE0();
}

void sub_1000AFAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10008B31C(va1);
  operator delete();
}

void sub_1000AFBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10008B31C(va1);
  operator delete();
}

void SANetworkReachability::create(void *a1)
{
  v4 = a1;
  if (*(sub_100042820() + 74) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000AFDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A2500(va);
  operator delete();
}

uint64_t sub_1000AFE5C(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000053C4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1000AFEB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void SALogInit(void)
{
  if (!SALogObjectGeneral)
  {
    v0 = os_log_create("com.apple.safetyalertsd", "general");
    v1 = SALogObjectGeneral;
    SALogObjectGeneral = v0;
  }

  if (!SALogObjectWarning)
  {
    SALogObjectWarning = os_log_create("com.apple.safetyalertsd", "warning");

    _objc_release_x1();
  }
}

SafetyAlertsDaemonInterface *SafetyAlertsDaemonInterfaceProd::SafetyAlertsDaemonInterfaceProd(SafetyAlertsDaemonInterface *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_1000A1E08(v7, a3);
  SafetyAlertsDaemonInterface::SafetyAlertsDaemonInterface(a1, v5, v7);
  sub_1000A242C(&v16);
  sub_1000A222C(&v15);
  sub_1000A22AC(&v14);
  sub_10000F274(&v13);
  sub_10001E0C0(&v12);
  sub_10000F274(&v11);
  sub_1000A232C(&v10);
  sub_1000A23AC(&v9);
  sub_10000F274(&v8);
  sub_1000A1D88(v7);
  *a1 = off_10013F620;

  return a1;
}

void sub_1000B00D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10009D160(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1000B0100(uint64_t a1)
{
  *a1 = off_10013F668;

  sub_1000A242C(a1 + 296);
  sub_1000A222C(a1 + 264);
  sub_1000A22AC(a1 + 232);
  sub_10000F274(a1 + 200);
  sub_10001E0C0(a1 + 168);
  sub_10000F274(a1 + 136);
  sub_1000A232C(a1 + 104);
  sub_1000A23AC(a1 + 72);
  sub_10000F274(a1 + 40);
  sub_1000A1D88(a1 + 8);
  return a1;
}

void sub_1000B01A4(uint64_t a1)
{
  sub_1000B0100(a1);

  operator delete();
}

void sub_1000B01DC(void *a1, void *a2)
{
  original = a2;
  string = xpc_dictionary_get_string(original, "message");
  if ([*SAPlatformInfo::instance(string) isEqualToString:@"iPhone"] && !strncmp(string, "userTapped", 0xAuLL))
  {
    v18 = xpc_dictionary_get_string(original, "WeaMessage");
    if (a1[4])
    {
      sub_1000B6218((a1 + 1), v18);
    }

    goto LABEL_41;
  }

  if (!strncmp(string, "networkChanged", 0xEuLL))
  {
    v8 = a1[8];
    if (!v8)
    {
      goto LABEL_41;
    }

    goto LABEL_19;
  }

  if (!strncmp(string, "testMessage", 0xBuLL))
  {
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].__r_.__value_.__r.__words[0] = 68289283;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = "testMessage";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,processMessage, message:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v16 = sub_1000175DC();
    sub_1000176C8(v16, original);
    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      xpc_dictionary_send_reply();
    }

    goto LABEL_41;
  }

  if (!strncmp(string, "isEnabledSync", 0xDuLL) || !strncmp(string, "isEnabled", 9uLL))
  {
    v9 = xpc_dictionary_create_reply(original);
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].__r_.__value_.__r.__words[0] = 68289283;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,processMessage, message:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    if (v9)
    {
      v11 = a1[12];
      if (v11)
      {
        v12 = (*(*v11 + 48))(v11);
        v13 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf[0].__r_.__value_.__r.__words[0] = 68289282;
          LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
          *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1026;
          HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,isSafetyAlertsEnabled(), isEnabled:%{public}hhd}", buf, 0x18u);
        }

        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      xpc_dictionary_set_uint64(v9, "isEnabledResult", v14);
      xpc_dictionary_send_reply();
    }

    goto LABEL_40;
  }

  if (strncmp(string, "significantEvent", 0x10uLL))
  {
    if (!strncmp(string, "fetchAvailableAlertTypes", 0x18uLL))
    {
      xdict = xpc_dictionary_create_reply(original);
      v21 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].__r_.__value_.__r.__words[0] = 68289283;
        LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
        *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,processMessage, message:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      v22 = xdict;
      if (xdict)
      {
        if (a1[16])
        {
          value[0] = 0;
          v68 = objc_alloc_init(NSMutableDictionary);
          sub_1000B1344((a1 + 13), v68, value);
          v23 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].__r_.__value_.__r.__words[0] = 68289539;
            LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
            *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2113;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v68;
            WORD2(buf[1].__r_.__value_.__r.__words[0]) = 1025;
            *(buf[1].__r_.__value_.__r.__words + 6) = value[0];
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,onAvailableAlertSettingsRequest(), availableAlerts:%{private, location:escape_only}@, initialized:%{private}hhd}", buf, 0x22u);
          }

          xpc_dictionary_set_BOOL(xdict, "isInitialized", value[0]);
          if (value[0])
          {
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v24 = v68;
            v25 = [v24 countByEnumeratingWithState:&v71 objects:v95 count:16];
            if (v25)
            {
              v26 = *v72;
              do
              {
                for (i = 0; i != v25; i = i + 1)
                {
                  if (*v72 != v26)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v28 = *(*(&v71 + 1) + 8 * i);
                  v29 = xpc_dictionary_create(0, 0, 0);
                  v30 = [v24 objectForKeyedSubscript:v28];
                  v31 = [v30 objectForKeyedSubscript:@"defaultValue"];

                  xpc_dictionary_set_BOOL(v29, "defaultValue", [v31 BOOLValue]);
                  v32 = [v24 objectForKeyedSubscript:v28];
                  v33 = [v32 objectForKeyedSubscript:@"preferencesKey"];

                  v34 = v33;
                  xpc_dictionary_set_string(v29, "preferencesKey", [v33 UTF8String]);
                  v35 = v28;
                  xpc_dictionary_set_value(xdict, [v28 UTF8String], v29);
                }

                v25 = [v24 countByEnumeratingWithState:&v71 objects:v95 count:16];
              }

              while (v25);
            }
          }
        }

        v22 = xdict;
        xpc_dictionary_send_reply();
      }

      goto LABEL_41;
    }

    if (!strncmp(string, "settingsChanged", 0xFuLL))
    {
      v36 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].__r_.__value_.__r.__words[0] = 68289283;
        LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
        *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,processMessage, message:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      v37 = 17;
    }

    else
    {
      if (!strncmp(string, "saDelivery", 0xAuLL))
      {
        v38 = xpc_dictionary_get_BOOL(original, "Enabled");
        v39 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf[0].__r_.__value_.__r.__words[0] = 68289539;
          LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
          *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = "saDelivery";
          WORD2(buf[1].__r_.__value_.__r.__words[0]) = 1026;
          *(buf[1].__r_.__value_.__r.__words + 6) = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,enhancedDelivery, message:%{private, location:escape_only}s, isEnabled:%{public}hhd}", buf, 0x22u);
        }

        v40 = a1[24];
        if (v40)
        {
          buf[0].__r_.__value_.__s.__data_[0] = v38;
          (*(*v40 + 48))(v40, buf);
        }

        goto LABEL_41;
      }

      if (strncmp(string, "enhancedDeliveryPageVisited", 0x1BuLL))
      {
        if (!strncmp(string, "saIgneousTestState", 0x12uLL))
        {
          v42 = xpc_dictionary_create_reply(original);
          v43 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].__r_.__value_.__r.__words[0] = 68289283;
            LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
            *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,Igneous test, message:%{private, location:escape_only}s}", buf, 0x1Cu);
          }

          if (v42)
          {
            v89 = 0;
            v88 = 0u;
            memset(buf, 0, sizeof(buf));
            v44 = a1[32];
            if (v44)
            {
              (*(*v44 + 48))(value);
              sub_1000B13D0(buf, value);
              sub_10002F7E4(value);
              v45 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                data = &buf[1];
                if ((buf[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  data = buf[1].__r_.__value_.__l.__data_;
                }

                *value = 68290050;
                *&value[4] = 0;
                v77 = 2082;
                v78 = "";
                v79 = 2082;
                v80 = data;
                v81 = 1026;
                v82 = v94;
                v83 = 2050;
                v84 = v90;
                v85 = 2050;
                v86 = v91;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,igneousStatusInfoForTestAlert, Uid:%{public, location:escape_only}s, ErrorCode:%{public}d, originatedLatency:%{public}0.3f, ingressLatency:%{public}0.3f}", value, 0x36u);
              }

              if ((buf[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v47 = &buf[1];
              }

              else
              {
                v47 = buf[1].__r_.__value_.__l.__data_;
              }
            }

            else
            {
              v47 = &buf[1];
            }

            xpc_dictionary_set_string(v42, "igneousStateInfoUID", v47);
            if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v65 = buf;
            }

            else
            {
              v65 = buf[0].__r_.__value_.__r.__words[0];
            }

            xpc_dictionary_set_string(v42, "igneousStateInfoChannel", v65);
            if (v89 >= 0)
            {
              v66 = &v88;
            }

            else
            {
              v66 = v88;
            }

            xpc_dictionary_set_string(v42, "weaText", v66);
            xpc_dictionary_set_int64(v42, "igneousStateInfoError", v94);
            xpc_dictionary_set_double(v42, "igneousStateInfoOriginiatedLatency", v90);
            xpc_dictionary_set_double(v42, "weaAlertReceivedTs", v92);
            xpc_dictionary_set_double(v42, "igneousAlertReceivedTs", v93);
            xpc_dictionary_set_double(v42, "igneousStateInfoIngressLatency", v91);
            xpc_dictionary_send_reply();
            sub_10002F7E4(buf);
          }

          goto LABEL_41;
        }

        if (strncmp(string, "saIgneousEnableState", 0x14uLL))
        {
          if (!strncmp(string, "saUiUserTap", 0xBuLL))
          {
            v58 = xpc_dictionary_get_string(original, "userTappedUid");
            v59 = xpc_dictionary_get_double(original, "userTappedTsSeconds");
            v60 = xpc_dictionary_get_double(original, "userSnapshotCompleteTsSeconds");
            if (v58)
            {
              v61 = *&v60;
              v62 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                buf[0].__r_.__value_.__r.__words[0] = 68289795;
                LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
                *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
                WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
                *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v58;
                WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2049;
                *(buf[1].__r_.__value_.__r.__words + 6) = v59;
                HIWORD(buf[1].__r_.__value_.__r.__words[1]) = 2049;
                buf[1].__r_.__value_.__r.__words[2] = v61;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,userTappedOnUI, uid:%{private, location:escape_only}s, userTappedTs:%{private}.1f, snapshotCompleteTsSeconds:%{private}.1f}", buf, 0x30u);
              }

              v63 = strlen(v58);
              std::string::__init(buf, v58, v63);
              v75 = v61;
              *value = v59;
              v64 = a1[40];
              if (!v64)
              {
                sub_1000053C4();
              }

              (*(*v64 + 48))(v64, buf, value, &v75);
              if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf[0].__r_.__value_.__l.__data_);
              }
            }
          }

          else
          {
            v4 = SALogObjectGeneral;
            v5 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
            if (!string)
            {
              if (!v5)
              {
                goto LABEL_41;
              }

              buf[0].__r_.__value_.__r.__words[0] = 68289026;
              LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
              *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
              v6 = "{msg%{public}.0s:#daemonInterfaceProd,unknownMessage,nil}";
              v7 = v4;
              v20 = 18;
              goto LABEL_37;
            }

            if (v5)
            {
              buf[0].__r_.__value_.__r.__words[0] = 68289283;
              LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
              *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
              WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
              *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
              v6 = "{msg%{public}.0s:#daemonInterfaceProd,unknownMessage, message:%{private, location:escape_only}s}";
              v7 = v4;
LABEL_36:
              v20 = 28;
LABEL_37:
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v20);
              goto LABEL_41;
            }
          }

          goto LABEL_41;
        }

        v9 = xpc_dictionary_create_reply(original);
        v48 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf[0].__r_.__value_.__r.__words[0] = 68289283;
          LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
          *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,enablement, message:%{private, location:escape_only}s}", buf, 0x1Cu);
        }

        if (v9)
        {
          v49 = a1[36];
          if (v49)
          {
            v50 = (*(*v49 + 48))(v49);
            v51 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf[0].__r_.__value_.__r.__words[0] = 68290819;
              LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
              *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
              WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1025;
              HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v50 & 1;
              LOWORD(buf[1].__r_.__value_.__l.__data_) = 1025;
              *&buf[1].__r_.__value_.__s.__data_[2] = (v50 >> 8) & 1;
              HIWORD(buf[1].__r_.__value_.__r.__words[0]) = 1025;
              LODWORD(buf[1].__r_.__value_.__r.__words[1]) = BYTE3(v50) & 1;
              WORD2(buf[1].__r_.__value_.__r.__words[1]) = 1025;
              *(&buf[1].__r_.__value_.__r.__words[1] + 6) = WORD1(v50) & 1;
              WORD1(buf[1].__r_.__value_.__r.__words[2]) = 1025;
              HIDWORD(buf[1].__r_.__value_.__r.__words[2]) = BYTE4(v50) & 1;
              LOWORD(v88) = 1025;
              *(&v88 + 2) = (v50 >> 40) & 1;
              WORD3(v88) = 1025;
              DWORD2(v88) = HIWORD(v50) & 1;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,igneousEnablementStateInfo, inCoverageRegion:%{private}hhd, inSupportedCountry:%{private}hhd, isInMagnetMode:%{private}hhd, isUserOptedIn:%{private}hhd, isEnabled:%{private}hhd, isEmergencyAlertEnabled:%{private}hhd, isMotionHarvestAllowed:%{private}hhd}", buf, 0x3Cu);
            }

            v52 = BYTE6(v50);
            v53 = BYTE5(v50);
            v54 = HIDWORD(v50) & 0xFFFFFF;
            v55 = v50 >> 24;
            v56 = v50 >> 16;
            v57 = v50 >> 8;
          }

          else
          {
            v52 = 0;
            v53 = 0;
            LOBYTE(v54) = 0;
            LOBYTE(v55) = 0;
            LOBYTE(v56) = 0;
            LOBYTE(v57) = 0;
            LOBYTE(v50) = 0;
          }

          xpc_dictionary_set_BOOL(v9, "saEnablementStateInCountry", v57 & 1);
          xpc_dictionary_set_BOOL(v9, "saEnablementStateInCoverageArea", v50 & 1);
          xpc_dictionary_set_BOOL(v9, "saEnablementStateInMagnetMode", v55 & 1);
          xpc_dictionary_set_BOOL(v9, "saEnablementStateOptedIn", v56 & 1);
          xpc_dictionary_set_BOOL(v9, "saEnablementStateEnabled", v54 & 1);
          xpc_dictionary_set_BOOL(v9, "saEmergencyAlertSwitchEnabled", v53 & 1);
          xpc_dictionary_set_BOOL(v9, "saMotionHarvestAllowed", v52 & 1);
          xpc_dictionary_send_reply();
          v67 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].__r_.__value_.__r.__words[0] = 68289026;
            LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
            *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,igneousEnablementStateInfo}", buf, 0x12u);
          }
        }

LABEL_40:

        goto LABEL_41;
      }

      v41 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].__r_.__value_.__r.__words[0] = 68289283;
        LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
        *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = "saDelivery";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,enhancedDeliveryPageVisited, message:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      if (!a1[28])
      {
        goto LABEL_41;
      }

      v37 = 25;
    }

    v8 = a1[v37 + 3];
    if (!v8)
    {
      sub_1000053C4();
    }

LABEL_19:
    (*(*v8 + 48))();
    goto LABEL_41;
  }

  v19 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf[0].__r_.__value_.__r.__words[0] = 68289283;
    LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
    *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
    WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
    *(&buf[0].__r_.__value_.__r.__words[2] + 4) = "testMessage";
    v6 = "{msg%{public}.0s:#daemonInterfaceProd,significantEvent, message:%{private, location:escape_only}s}";
    v7 = v19;
    goto LABEL_36;
  }

LABEL_41:
}

void sub_1000B1344(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_1000053C4();
  }

  (*(*v4 + 48))(v4, &v6, &v5);
}

uint64_t sub_1000B13D0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 26);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  return a1;
}

void sub_1000B1488(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v3);
  if (v4)
  {
    sub_10002A838(v4);
  }
}

void sub_1000B14D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void *SAPlatformInfo::instance(SAPlatformInfo *this)
{
  if ((atomic_load_explicit(&qword_10014AE38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10014AE38))
  {
    SAPlatformInfo::SAPlatformInfo(&unk_10014AE28);
    __cxa_guard_release(&qword_10014AE38);
  }

  return &unk_10014AE28;
}

void SAPlatformInfo::SAPlatformInfo(SAPlatformInfo *this)
{
  *this = 0;
  *(this + 12) = 0;
  v2 = MGCopyAnswer();
  v3 = *this;
  *this = v2;

  *(this + 8) = MGGetBoolAnswer();
  *(this + 9) = os_variant_has_internal_content();
  v4 = [*this isEqualToString:@"iPhone"];
  if (v4)
  {
    LOBYTE(v4) = MGGetBoolAnswer();
  }

  *(this + 10) = v4;
  *(this + 11) = 0;
  v5 = MGCopyAnswer();
  v6 = v5;
  if (v5)
  {
    *(this + 12) = CFBooleanGetValue(v5) != 0;
    CFRelease(v6);
  }
}

void *SALockMonitorTest::SALockMonitorTest(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  sub_10000F1DC(v10, a3);
  sub_10001EF44(v9, a4);
  sub_1000B1748(a1, v7, v10, v9);
  sub_10001E0C0(v9);
  sub_10000F274(v10);
  *a1 = off_10013F6A8;

  return a1;
}

void sub_1000B1710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

void *sub_1000B1748(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  *a1 = off_10013F6F8;
  sub_10000F1DC((a1 + 1), a3);
  sub_10001EF44((a1 + 5), a4);
  a1[9] = v7;
  return a1;
}

void sub_1000B17C8(_Unwind_Exception *a1)
{
  sub_10000F274(v2);

  _Unwind_Resume(a1);
}

void sub_1000B17EC(uint64_t a1)
{
  sub_1000B1828(a1);

  operator delete();
}

uint64_t sub_1000B1828(uint64_t a1)
{
  *a1 = off_10013F6F8;

  sub_10001E0C0(a1 + 40);
  sub_10000F274(a1 + 8);
  return a1;
}

double sub_1000B1880(unint64_t a1)
{
  v2 = *&qword_10014AE40;
  if (*&qword_10014AE40 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_10014AE40 = v2;
  }

  return v2 * a1;
}

uint64_t SATime::getTimeUncertaintyBucket(SATime *this)
{
  v1 = *(this + 1);
  if (v1 <= 0.0)
  {
    return 0;
  }

  if (v1 < 1.0)
  {
    return 1;
  }

  if (v1 < 2.0)
  {
    return 2;
  }

  if (v1 < 5.0)
  {
    return 3;
  }

  if (v1 < 10.0)
  {
    return 4;
  }

  if (v1 < 20.0)
  {
    return 5;
  }

  if (v1 < 35.0)
  {
    return 6;
  }

  if (v1 < 50.0)
  {
    return 7;
  }

  if (v1 < 75.0)
  {
    return 8;
  }

  if (v1 < 100.0)
  {
    return 9;
  }

  if (v1 < 200.0)
  {
    return 10;
  }

  if (v1 >= 300.0)
  {
    return 12;
  }

  return 11;
}

uint64_t SAGridMetrics::SAGridMetrics(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 16) = 0;
  *a1 = off_10013F720;
  *(a1 + 8) = v3;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 64;
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,gridMetric object created}", v6, 0x12u);
  }

  return a1;
}

uint64_t sub_1000B1B64(uint64_t a1)
{
  *a1 = off_10013F720;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,gridMetric release}", v5, 0x12u);
  }

  sub_100015A38(a1 + 56, *(a1 + 64));
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1000B1C68(uint64_t a1)
{
  sub_1000B1B64(a1);

  operator delete();
}

void SAGridMetrics::onHistoricalLocationReceivedCb(void *a1, const void **a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a2[1] - *a2) >> 5;
    v20[0] = 68289283;
    v20[1] = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2049;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,OnHistoricalLocationReceivedCb, HistoricalLocationCount:%{private}lu}", v20, 0x1Cu);
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = (a1 + 4);
  if (*a2 != v7 && v8 != a2)
  {
    v10 = v7 - v6;
    v11 = a1[6];
    v12 = a1[4];
    if (v11 - v12 < (v7 - v6))
    {
      v13 = v10 >> 5;
      if (v12)
      {
        a1[5] = v12;
        operator delete(v12);
        v11 = 0;
        *v8 = 0;
        a1[5] = 0;
        a1[6] = 0;
      }

      if (!(v13 >> 59))
      {
        v14 = v11 >> 4;
        if (v11 >> 4 <= v13)
        {
          v14 = v10 >> 5;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        sub_100067018(a1 + 4, v15);
      }

      sub_10000509C();
    }

    v16 = a1[5];
    v17 = v16 - v12;
    if (v16 - v12 >= v10)
    {
      memmove(a1[4], v6, v7 - v6);
      v19 = &v12[v10];
    }

    else
    {
      v18 = &v6[v17];
      if (v16 != v12)
      {
        memmove(a1[4], v6, v17);
        v16 = a1[5];
      }

      if (v7 != v18)
      {
        memmove(v16, v18, v7 - v18);
      }

      v19 = &v16[v7 - v18];
    }

    a1[5] = v19;
  }
}

void SAGridMetrics::onSlcHistoryCb(void *a1, void *a2)
{
  v3 = (a1 + 7);
  if (a1 + 7 != a2)
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (a1[9])
    {
      v7 = (a1 + 8);
      v6 = a1[8];
      v8 = a1[7];
      a1[7] = a1 + 8;
      *(v6 + 16) = 0;
      a1[8] = 0;
      a1[9] = 0;
      if (*(v8 + 8))
      {
        v9 = *(v8 + 8);
      }

      else
      {
        v9 = v8;
      }

      v21 = (a1 + 7);
      *v22 = v9;
      *&v22[8] = v9;
      if (!v9 || (v10 = sub_100033560(v9), *v22 = v10, v5 == v4))
      {
        v17 = v5;
      }

      else
      {
        do
        {
          v11 = v10;
          v12 = v5[4];
          v9[4] = v12;
          v13 = *v7;
          v14 = (a1 + 8);
          v15 = (a1 + 8);
          if (*v7)
          {
            do
            {
              while (1)
              {
                v14 = v13;
                if (v12 >= v13[4])
                {
                  break;
                }

                v13 = *v13;
                v15 = v14;
                if (!*v14)
                {
                  goto LABEL_14;
                }
              }

              v13 = v13[1];
            }

            while (v13);
            v15 = v14 + 1;
          }

LABEL_14:
          sub_100015ED8(v3, v14, v15, v9);
          if (v11)
          {
            v10 = sub_100033560(v11);
          }

          else
          {
            v10 = 0;
          }

          v16 = v5[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v5[2];
              v18 = *v17 == v5;
              v5 = v17;
            }

            while (!v18);
          }

          if (!v11)
          {
            break;
          }

          v9 = v11;
          v5 = v17;
        }

        while (v17 != v4);
        *v22 = v10;
        *&v22[8] = v11;
      }

      sub_1000B2BA4(&v21);
      v5 = v17;
    }

    if (v5 != v4)
    {
      operator new();
    }
  }

  v19 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v20 = a1[9];
    v21 = 68289283;
    *v22 = 2082;
    *&v22[2] = "";
    *&v22[10] = 2049;
    *&v22[12] = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,onSlcHistoryCb, fSlcTimesamps:%{private}lu}", &v21, 0x1Cu);
  }
}

void sub_1000B2148(uint64_t a1, double a2, double a3)
{
  v5 = &SALogObjectGeneral;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (*(a1 + 40) - *(a1 + 32)) >> 5;
    *buf = 68289283;
    *&buf[4] = 0;
    *v68 = 2082;
    *&v68[2] = "";
    *&v68[10] = 2049;
    *&v68[12] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,run, HistoricalLocationCount:%{private}lu}", buf, 0x1Cu);
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v9 != v8)
  {
    v63 = 0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        v14 = *v9;
        v15 = *(v9 + 1);
        v16 = *(v9 + 2);
        v17 = *(v9 + 3);
        *buf = 68290051;
        *&buf[4] = 0;
        *v68 = 2082;
        *&v68[2] = "";
        *&v68[10] = 2049;
        *&v68[12] = v14;
        *&v68[20] = 2053;
        *&v68[22] = v15;
        *&v68[30] = 2053;
        v69 = v16;
        v70 = 2049;
        v71 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareGridTransitionMetric, Time:%{private}0.3f, Lat:%{sensitive}0.3f, Lon:%{sensitive}0.3f, hAcc:%{private}0.3f}", buf, 0x3Au);
      }

      if (fabs(v9[1]) > 90.0 || fabs(v9[2]) > 180.0 || v9[3] <= 0.0)
      {
        v28 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *v68 = 2082;
          *&v68[2] = "";
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareGridTransitionMetric,#warning,skippingInvalidLocation}", buf, 0x12u);
        }
      }

      else
      {
        v18 = v5;
        v19 = fabs(v12) <= 90.0;
        if (fabs(v11) > 180.0)
        {
          v19 = 0;
        }

        v20 = v10 > 0.0 && v19;
        if (v20 && (GEOCalculateDistance(), v21 = v9[3], v22 < v10 + v21 + 300.0))
        {
          if (v21 < v10)
          {
            v12 = v9[1];
            v11 = v9[2];
            v10 = v9[3];
          }

          v29 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v68 = 2082;
            *&v68[2] = "";
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareGridTransitionMetric,NoSignificantLocationChange}", buf, 0x12u);
          }
        }

        else
        {
          *v72 = 0;
          v66 = 0.0;
          v23 = sub_10008E020();
          sub_10008EF84(v23, v72, &v66, v9[1], v9[2]);
          GlobalTileIdFromLatLonAndGridSizeInDegrees = SAGridId::generateGlobalTileIdFromLatLonAndGridSizeInDegrees(v24, v9[1], v9[2], 0.2, *v72, v66);
          v26 = *v5;
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
          {
            v27 = *(a1 + 20);
            *buf = 68289795;
            *&buf[4] = 0;
            *v68 = 2082;
            *&v68[2] = "";
            *&v68[10] = 2049;
            *&v68[12] = GlobalTileIdFromLatLonAndGridSizeInDegrees;
            *&v68[20] = 2049;
            *&v68[22] = v63;
            *&v68[30] = 2049;
            v69 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareGridTransitionMetric, curGridId:%{private}lu, prevGridId:%{private}lu, gridTransitionCount:%{private}lu}", buf, 0x30u);
          }

          if (v20)
          {
            if (GlobalTileIdFromLatLonAndGridSizeInDegrees == v63)
            {
              GlobalTileIdFromLatLonAndGridSizeInDegrees = v63;
            }

            else
            {
              ++*(a1 + 20);
            }
          }

          else
          {
            v12 = v9[1];
            v11 = v9[2];
            v10 = v9[3];
          }

          v5 = v18;
          v63 = GlobalTileIdFromLatLonAndGridSizeInDegrees;
        }
      }

      v9 += 4;
    }

    while (v9 != v8);
  }

  v30 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 20);
    *buf = 68289283;
    *&buf[4] = 0;
    *v68 = 2082;
    *&v68[2] = "";
    *&v68[10] = 2049;
    *&v68[12] = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareGridTransitionMetric, gridTransitionCount:%{private}lu}", buf, 0x1Cu);
    v30 = *v5;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 72);
    *buf = 68289795;
    *&buf[4] = 0;
    *v68 = 2082;
    *&v68[2] = "";
    *&v68[10] = 2049;
    *&v68[12] = a2;
    *&v68[20] = 2049;
    *&v68[22] = a3;
    *&v68[30] = 2049;
    v69 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,prepareSLCMetric, startTsSeconds:%{private}lu, endTsSeconds:%{private}lu, slcTimesampsCount:%{private}lu}", buf, 0x30u);
  }

  v33 = *(a1 + 56);
  v34 = (a1 + 64);
  if (v33 != (a1 + 64))
  {
    v65 = 0;
    v64 = 0;
    v35 = 0;
    v36 = (*(a1 + 40) - *(a1 + 32)) >> 5;
    do
    {
      if (v36 <= v35)
      {
        v41 = v35;
      }

      else
      {
        v37 = v34;
        v38 = v35;
        v39 = *v5;
        v40 = v33[4];
        v41 = v35;
        while (1)
        {
          v42 = *(a1 + 32) + 32 * v38;
          v44 = *v42;
          v43 = *(v42 + 8);
          v45 = *(v42 + 16);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *v68 = 2082;
            *&v68[2] = "";
            *&v68[10] = 2049;
            *&v68[12] = v40;
            *&v68[20] = 2049;
            *&v68[22] = v44;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareSLCMetric,, t:%{private}lu, locData.timestamp:%{private}lu}", buf, 0x26u);
            v39 = *v5;
            v40 = v33[4];
          }

          if (v44 + -3.0 < v40 && v44 + 3.0 > v40)
          {
            break;
          }

          v38 = (v41 + 1);
          v41 = v38;
          if (v36 <= v38)
          {
            v41 = v35;
            v34 = v37;
            goto LABEL_58;
          }
        }

        *v72 = 0;
        v66 = 0.0;
        v47 = sub_10008E020();
        v34 = v37;
        sub_10008EF84(v47, v72, &v66, v43, v45);
        v49 = SAGridId::generateGlobalTileIdFromLatLonAndGridSizeInDegrees(v48, v43, v45, 0.2, *v72, v66);
        v50 = v49;
        if (v65 == v49)
        {
          v51 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289795;
            *&buf[4] = 0;
            *v68 = 2082;
            *&v68[2] = "";
            *&v68[10] = 2049;
            *&v68[12] = v64;
            *&v68[20] = 2049;
            *&v68[22] = v65;
            *&v68[30] = 2049;
            v69 = v65;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareSLCMetric,no match, totalGridTransition:%{private}lu, curGridId:%{private}lu, prevGridId:%{private}lu}", buf, 0x30u);
          }

          v50 = v65;
        }

        else
        {
          v52 = v64 + 1;
          v53 = *v5;
          ++v64;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289795;
            *&buf[4] = 0;
            *v68 = 2082;
            *&v68[2] = "";
            *&v68[10] = 2049;
            *&v68[12] = v52;
            *&v68[20] = 2049;
            *&v68[22] = v50;
            *&v68[30] = 2049;
            v69 = v65;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareSLCMetric, totalGridTransition:%{private}lu, curGridId:%{private}lu, prevGridId:%{private}lu}", buf, 0x30u);
          }
        }

        v65 = v50;
      }

LABEL_58:
      v54 = v33[1];
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v55 = v33[2];
          v56 = *v55 == v33;
          v33 = v55;
        }

        while (!v56);
      }

      v35 = v41;
      v33 = v55;
    }

    while (v55 != v34);
    if (v64)
    {
      *(a1 + 24) = v64;
    }
  }

  *buf = _NSConcreteStackBlock;
  *v68 = 3221225472;
  *&v68[8] = sub_1000B2A98;
  *&v68[16] = &unk_10013A308;
  *&v68[24] = a1 + 20;
  AnalyticsSendEventLazy();
  v57 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v58 = *(a1 + 20);
    v59 = *(a1 + 24);
    *v72 = 68289539;
    *&v72[4] = 0;
    *v73 = 2082;
    *&v73[2] = "";
    *&v73[10] = 2049;
    *&v73[12] = v58;
    v74 = 2049;
    v75 = v59;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,submitGridMetric, gridTransitions:%{private}lu, slcCount:%{private}lu}", v72, 0x26u);
  }

  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = *(a1 + 32);
  if (*(a1 + 72))
  {
    v60 = *(a1 + 56);
    *(a1 + 56) = v34;
    *(*v34 + 16) = 0;
    *v34 = 0;
    v34[1] = 0;
    if (*(v60 + 8))
    {
      v61 = *(v60 + 8);
    }

    else
    {
      v61 = v60;
    }

    *v72 = a1 + 56;
    *v73 = v61;
    *&v73[8] = v61;
    if (v61)
    {
      *v73 = sub_100033560(v61);
    }

    sub_1000B2BA4(v72);
  }

  *(a1 + 16) = 0;
}

id sub_1000B2A98(uint64_t a1)
{
  v6[0] = @"gridTransitions";
  v1 = a1 + 32;
  v2 = [NSNumber numberWithUnsignedInt:**(a1 + 32)];
  v6[1] = @"slcCount";
  v7[0] = v2;
  v3 = [NSNumber numberWithUnsignedInt:*(*v1 + 4)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

uint64_t sub_1000B2BA4(uint64_t a1)
{
  sub_100015A38(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100015A38(*a1, v2);
  }

  return a1;
}

void *SALockMonitorProd::SALockMonitorProd(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  sub_10000F1DC(v10, a3);
  sub_10001EF44(v9, a4);
  sub_1000B1748(a1, v7, v10, v9);
  sub_10001E0C0(v9);
  sub_10000F274(v10);
  *a1 = &off_10013F768;

  return a1;
}

void sub_1000B2CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

void sub_1000B2D00(void *a1)
{
  v2 = sub_100003014();
  v3 = a1[9];
  v10 = _NSConcreteStackBlock;
  *&v11 = 3221225472;
  *(&v11 + 1) = sub_10000313C;
  v12 = &unk_10013F780;
  v13 = a1;
  v14 = v2;
  dispatch_async(v3, &v10);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100002E2C, kMobileKeyBagLockStatusNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = MKBDeviceUnlockedSinceBoot();
  v6 = SALogObjectGeneral;
  v7 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 68289026;
      LOWORD(v11) = 2082;
      *(&v11 + 2) = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,firstUnlockedAtStartup}", &v10, 0x12u);
    }

    v8 = a1[9];
    v10 = _NSConcreteStackBlock;
    *&v11 = 3221225472;
    *(&v11 + 1) = sub_1000B3108;
    v12 = &unk_1001390D0;
    v13 = a1;
    dispatch_async(v8, &v10);
  }

  else
  {
    if (v7)
    {
      v10 = 68289026;
      LOWORD(v11) = 2082;
      *(&v11 + 2) = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,neverUnlockedAtStartup}", &v10, 0x12u);
    }

    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, a1, sub_1000B2F2C, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void sub_1000B2F2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v9 = [a3 UTF8String];
    }

    else
    {
      v9 = "Unknown__";
    }

    v12 = 68289539;
    *v13 = 2082;
    *&v13[2] = "";
    *&v13[10] = 2081;
    *&v13[12] = v9;
    *&v13[20] = 2113;
    *&v13[22] = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,onKeybagFirstUnlock, name:%{private, location:escape_only}s, userInfo:%{private, location:escape_only}@}", &v12, 0x26u);
  }

  if (a2)
  {
    v10 = *(a2 + 72);
    v12 = _NSConcreteStackBlock;
    *v13 = 3221225472;
    *&v13[8] = sub_1000B3108;
    *&v13[16] = &unk_1001390D0;
    *&v13[24] = a2;
    dispatch_async(v10, &v12);
  }

  else
  {
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      *v13 = 2082;
      *&v13[2] = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,invalidObjectOnFirstUnlock}", &v12, 0x12u);
    }
  }
}

void sub_1000B3108(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B3190;
  v3[3] = &unk_1001390D0;
  v3[4] = v1;
  sub_1000B3190(v3);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000B3190(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,onFirstUnlocked}", v5, 0x12u);
  }

  *(sub_100002DB0() + 70) = 257;
  v3 = *(v1 + 32);
  if (!v3)
  {
    sub_1000053C4();
  }

  return (*(*v3 + 48))(v3);
}

void sub_1000B3288(uint64_t a1)
{
  sub_1000B1828(a1);

  operator delete();
}

uint64_t SACoreRoutineProd::SACoreRoutineProd(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v7 = a2;
  if (a3[23] < 0)
  {
    sub_100004CEC(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    v18 = *(a3 + 2);
  }

  sub_10001CA20(v23, a4);
  *a1 = off_10013F938;
  sub_10001CAB8(v23);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_10013F7C8;
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v9 = v7;
  *(a1 + 32) = v9;
  sub_10001CA20(a1 + 40, a4);
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,SACoreRoutineProd}", buf, 0x12u);
  }

  if ((a3[23] & 0x8000000000000000) != 0)
  {
    if (*(a3 + 1))
    {
      goto LABEL_10;
    }
  }

  else if (a3[23])
  {
LABEL_10:
    v11 = [RTRoutineManager alloc];
    if (a3[23] < 0)
    {
      a3 = *a3;
    }

    v12 = [NSString stringWithUTF8String:a3, __p[0], __p[1], v18];
    v13 = [v11 initWithRestorationIdentifier:v12];
    v14 = *v8;
    *v8 = v13;

    goto LABEL_16;
  }

  v15 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,SACoreRoutineProd,failed,invalid UniqueId}", buf, 0x12u);
  }

LABEL_16:

  return a1;
}

uint64_t sub_1000B3598(uint64_t a1)
{
  *a1 = off_10013F7C8;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,SACoreRoutineProd released}", v5, 0x12u);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  sub_10001CAB8(a1 + 40);

  return a1;
}

void sub_1000B36A0(uint64_t a1)
{
  sub_1000B3598(a1);

  operator delete();
}

void sub_1000B36D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2050;
    v16 = a2;
    v17 = 2050;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,getHistoricalLocation, starTime:%{public}llu, endTime:%{public}llu}", buf, 0x26u);
  }

  if (!*(a1 + 8))
  {
    v7 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v8 = "{msg%{public}.0s:#coreRoutine,getHistoricalLocation,invalid instance}";
    goto LABEL_12;
  }

  if (a2 > a3)
  {
    v7 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v8 = "{msg%{public}.0s:#coreRoutine,invalid time/duration}";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    return;
  }

  if (*(a1 + 72) == 1)
  {
    v7 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v8 = "{msg%{public}.0s:#coreRoutine,getHistoricalLocation,request in progress}";
    goto LABEL_12;
  }

  *(a1 + 72) = 1;
  *(a1 + 88) = *(a1 + 80);
  v9 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B3938;
  block[3] = &unk_10013F818;
  block[4] = a1;
  block[5] = a3;
  block[6] = a2;
  dispatch_async(v9, block);
}

void sub_1000B3938(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B39D4;
  v4[3] = &unk_10013F818;
  v4[4] = v2;
  v5 = *(a1 + 40);
  sub_1000B39D4(v4);
  objc_autoreleasePoolPop(v3);
}

void sub_1000B39D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 16) = vcvtq_f64_s64(*(a1 + 40));
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(a1 + 48)];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,getHistoricalLocation,invalid endTime or startTime}", buf, 0x12u);
    }
  }

  else
  {
    v8 = [[NSDateInterval alloc] initWithStartDate:v4 endDate:v3];
    v9 = v8;
    if (v8)
    {
      v10 = [[RTStoredLocationEnumerationOptions alloc] initWithDateInterval:v8 horizontalAccuracy:200 batchSize:0 boundingBoxLocation:6378135.0];
      if (v10)
      {
        v11 = *(v2 + 8);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000B3CA8;
        v14[3] = &unk_10013F7F8;
        v14[4] = v2;
        [v11 enumerateStoredLocationsWithOptions:v10 usingBlock:v14];
      }

      else
      {
        v13 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          v16 = 0;
          v17 = 2082;
          v18 = "";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,getHistoricalLocation,invalid enumerationOptions}", buf, 0x12u);
        }
      }
    }

    else
    {
      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,getHistoricalLocation,invalid interval}", buf, 0x12u);
      }
    }
  }
}

void sub_1000B3CA8(uint64_t a1, void *a2, void *a3, unsigned __int8 *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  v60 = v7;
  if (!a4)
  {
    v16 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 68289026;
    *v71 = 2082;
    *&v71[2] = "";
    v17 = "{msg%{public}.0s:#coreRoutine,received update from CoreRoutine,Stop nil}";
    v18 = v16;
    goto LABEL_9;
  }

  v10 = *(a1 + 32);
  if (v8)
  {
    v58 = v8;
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v58 description];
      v13 = [v12 UTF8String];
      v14 = *a4;
      *buf = 68289538;
      *v71 = 2082;
      *&v71[2] = "";
      *&v71[10] = 2082;
      *&v71[12] = v13;
      *&v71[20] = 1026;
      *&v71[22] = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,received update from CoreRoutine, Error:%{public, location:escape_only}s, stop:%{public}hhd}", buf, 0x22u);
    }

    v15 = *(v10 + 64);
    if (!v15)
    {
      sub_1000053C4();
    }

    v9 = v58;
    (*(*v15 + 48))(v15, v10 + 80);
    *(v10 + 72) = 0;
    goto LABEL_35;
  }

  v20 = SALogObjectGeneral;
  if (!v7)
  {
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 68289026;
    *v71 = 2082;
    *&v71[2] = "";
    v17 = "{msg%{public}.0s:#coreRoutine,received update from CoreRoutine,locations nil}";
    v18 = v20;
LABEL_9:
    v19 = 18;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_35;
  }

  v59 = 0;
  v21 = SALogObjectGeneral;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v7 count];
    v23 = *a4;
    *buf = 68289538;
    *v71 = 2082;
    *&v71[2] = "";
    *&v71[10] = 1026;
    *&v71[12] = v22;
    *&v71[16] = 1026;
    *&v71[18] = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,received update from CoreRoutine, locationCount:%{public}d, stop:%{public}hhd}", buf, 0x1Eu);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v24 = v7;
  v25 = [v24 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v25)
  {
    v26 = *v62;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v62 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v61 + 1) + 8 * i);
        memset(v71, 0, 24);
        v29 = [v28 timestamp];
        [v29 timeIntervalSinceReferenceDate];
        v31 = v30;
        *buf = v30;

        v32 = *(v10 + 24);
        if (v31 >= v32)
        {
          v32 = *(v10 + 16);
          if (v31 <= v32)
          {
            if (*(v10 + 80) == *(v10 + 88))
            {
              [v28 coordinate];
              *v71 = v51;
              [v28 coordinate];
              *&v71[8] = v52;
              [v28 horizontalAccuracy];
              *&v71[16] = v53;
              sub_1000B4344(v10 + 80, buf);
              v54 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *v65 = 68289026;
                v66 = 0;
                v67 = 2082;
                v68 = "";
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fHistoricalLocation empty}", v65, 0x12u);
              }
            }

            else
            {
              [v28 coordinate];
              v34 = v33;
              *v71 = v33;
              [v28 coordinate];
              v36 = v35;
              *&v71[8] = v35;
              [v28 horizontalAccuracy];
              *&v71[16] = v37;
              v38 = *(v10 + 88);
              v40 = *(v38 - 32);
              v39 = *(v38 - 24);
              v41 = v39 * 3.14159265 / 180.0;
              v42 = v34 * 3.14159265 / 180.0;
              v43 = (v39 - v34) * 3.14159265 / 180.0;
              v44 = (*(v38 - 16) - v36) * 3.14159265 / 180.0;
              v45 = sin(v43 * 0.5);
              v46 = v45 * v45;
              v47 = sin(v44 * 0.5);
              v48 = cos(v41) * (v47 * v47);
              v49 = cos(v42);
              v50 = asin(sqrt(v46 + v48 * v49));
              if ((v50 + v50) * 6371000.0 > 100.0 || (v32 = v31 - v40, v31 - v40 > 180.0))
              {
                sub_1000B4344(v10 + 80, buf);
              }
            }
          }
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v61 objects:v69 count:{16, v32}];
    }

    while (v25);
  }

  v9 = v59;
  if (![v24 count])
  {
    v55 = *(v10 + 64);
    if (!v55)
    {
      sub_1000053C4();
    }

    (*(*v55 + 48))(v55, v10 + 80);
    *(v10 + 72) = 0;
    v56 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v57 = (*(v10 + 88) - *(v10 + 80)) >> 5;
      *buf = 68289282;
      *v71 = 2082;
      *&v71[2] = "";
      *&v71[10] = 2050;
      *&v71[12] = v57;
      v17 = "{msg%{public}.0s:#coreRoutine,fHistoricalLocation, historicalDataLen:%{public}lu}";
      v18 = v56;
      v19 = 28;
      goto LABEL_10;
    }
  }

LABEL_35:
}

void sub_1000B4344(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_10000509C();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100067054(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_1000B441C(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,stopMonitoringForPeopleDensity}", &buf, 0x12u);
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    buf = 68289026;
    v11 = 2082;
    v12 = "";
    v7 = "{msg%{public}.0s:#coreRoutine,stopMonitoringForPeopleDensity,invalid instance}";
    goto LABEL_10;
  }

  if (*(a2 + 24))
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3321888768;
    v8[2] = sub_1000B4620;
    v8[3] = &unk_10013F838;
    v8[4] = a1;
    sub_10000F1DC(v9, a2);
    [v5 stopMonitoringForPeopleDiscoveryWithHandler:v8];
    sub_10000F274(v9);
    return;
  }

  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    buf = 68289026;
    v11 = 2082;
    v12 = "";
    v7 = "{msg%{public}.0s:#coreRoutine,stopMonitoringForPeopleDensity,null callback}";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, &buf, 0x12u);
  }
}

void sub_1000B4620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 description];
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,stopMonitoringForPeopleDensity,, Error:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  v7 = *(v4 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_1000B47C0;
  v8[3] = &unk_1001390F0;
  sub_10000F1DC(v9, a1 + 40);
  dispatch_async(v7, v8);
  sub_10000F274(v9);
}

uint64_t sub_1000B47C0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1000B4808(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v24) = 2082;
    *(&v24 + 2) = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchVisits}", buf, 0x12u);
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    v10 = *(a1 + 8);
    v11 = SALogObjectGeneral;
    v12 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 68289539;
        *&buf[4] = 0;
        LOWORD(v24) = 2082;
        *(&v24 + 2) = "";
        WORD5(v24) = 1025;
        HIDWORD(v24) = a3;
        v25 = 1025;
        v26 = a4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchVisits, startTimestamp:%{private}d, endTimestamp:%{private}d}", buf, 0x1Eu);
      }

      v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
      v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
      v15 = [[NSDateInterval alloc] initWithStartDate:v13 endDate:v14];
      v16 = [RTStoredVisitFetchOptions alloc];
      v17 = [NSNumber numberWithDouble:RTVisitConfidenceHigh];
      v18 = [v16 initWithAscending:1 confidence:v17 dateInterval:v15 labelVisit:1 limit:0];

      v19 = *(a1 + 8);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3321888768;
      v21[2] = sub_1000B4C0C;
      v21[3] = &unk_10013F8A0;
      v21[4] = a1;
      sub_10001CA20(v22, a2);
      [v19 fetchStoredVisitsWithOptions:v18 handler:v21];
      sub_10001CAB8(v22);
    }

    else
    {
      if (v12)
      {
        *buf = 68289026;
        *&buf[4] = 0;
        LOWORD(v24) = 2082;
        *(&v24 + 2) = "";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchVisits,uninitialized}", buf, 0x12u);
        v9 = *(a2 + 24);
        *buf = 0;
        v24 = 0uLL;
        if (!v9)
        {
          sub_1000053C4();
        }
      }

      else
      {
        *buf = 0;
        v24 = 0uLL;
      }

      (*(*v9 + 48))(v9, buf);
      if (*buf)
      {
        *&v24 = *buf;
        operator delete(*buf);
      }
    }
  }

  else
  {
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v24) = 2082;
      *(&v24 + 2) = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchVisits,callback not init}", buf, 0x12u);
    }
  }
}

void sub_1000B4B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B4C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *v14 = 2082;
      *&v14[2] = "";
      *&v14[10] = 2113;
      *&v14[12] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,fetchVisits,cb, error:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    *buf = 0;
    *v14 = 0;
    *&v14[8] = 0;
    v8 = *(a1 + 64);
    if (!v8)
    {
      sub_1000053C4();
    }

    (*(*v8 + 48))(v8, buf);
    if (*buf)
    {
      *v14 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    v9 = *(*(a1 + 32) + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_1000B4E0C;
    block[3] = &unk_10013F870;
    v11 = v5;
    sub_10001CA20(v12, a1 + 40);
    dispatch_async(v9, block);
    sub_10001CAB8(v12);
  }
}

void sub_1000B4E0C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1000B4F1C;
  v3[3] = &unk_10013F870;
  v4 = *(a1 + 32);
  sub_10001CA20(v5, a1 + 40);
  sub_1000B4F1C(v3);
  sub_10001CAB8(v5);

  objc_autoreleasePoolPop(v2);
}

void sub_1000B4EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10001CAB8(v13 + 40);

  _Unwind_Resume(a1);
}

void sub_1000B4F1C(uint64_t a1)
{
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) count];
    *buf = 68289283;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 1025;
    LODWORD(v41) = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchVisits,cb, visistsSize:%{private}d}", buf, 0x18u);
  }

  __src = 0;
  v34 = 0;
  v35 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v46 count:16];
  if (v4)
  {
    v5 = *v30;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [v7 location];
        [v8 latitude];
        v10 = v9;

        v11 = [v7 location];
        [v11 longitude];
        v13 = v12;

        v14 = [v7 location];
        [v14 horizontalUncertainty];
        v16 = v15;

        v17 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289795;
          v37 = 0;
          v38 = 2082;
          v39 = "";
          v40 = 2053;
          v41 = v10;
          v42 = 2053;
          v43 = v13;
          v44 = 2049;
          v45 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,onHistoricalVisitsReceived, lat:%{sensitive}0.1f, lon:%{sensitive}0.1f, hunc:%{private}0.1f}", buf, 0x30u);
        }

        v18 = v34;
        if (v34 >= v35)
        {
          v20 = __src;
          v21 = v34 - __src;
          v22 = (v34 - __src) >> 5;
          v23 = v22 + 1;
          if ((v22 + 1) >> 59)
          {
            sub_10000509C();
          }

          v24 = v35 - __src;
          if ((v35 - __src) >> 4 > v23)
          {
            v23 = v24 >> 4;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFE0)
          {
            v23 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v23)
          {
            sub_100067054(&__src, v23);
          }

          v25 = (32 * v22);
          *v25 = 0;
          v25[1] = v10;
          v25[2] = v13;
          v25[3] = v16;
          v19 = 32 * v22 + 32;
          memcpy(0, v20, v21);
          v26 = __src;
          __src = 0;
          v34 = v19;
          v35 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v34 = 0;
          v18[1] = v10;
          v18[2] = v13;
          v19 = (v18 + 4);
          v18[3] = v16;
        }

        v34 = v19;
      }

      v4 = [v3 countByEnumeratingWithState:&v29 objects:v46 count:16];
    }

    while (v4);
  }

  v27 = *(a1 + 64);
  if (!v27)
  {
    sub_1000053C4();
  }

  (*(*v27 + 48))(v27, &__src);
  if (__src)
  {
    v34 = __src;
    operator delete(__src);
  }
}

BOOL sub_1000B5328(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI,called}", buf, 0x12u);
  }

  if (!*(a3 + 24))
  {
    v18 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 68289026;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI,invalidCallback}", buf, 0x12u);
    return 0;
  }

  if (!*(a1 + 8))
  {
    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI, RTRoutineManager not initialized}", buf, 0x12u);
    }

    sub_1000B56A8(a3, 0);
    return 0;
  }

  v7 = +[NSDate now];
  v8 = [v7 dateByAddingTimeInterval:-a2];
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 description];
    v11 = v10;
    v12 = [v10 UTF8String];
    v13 = [v7 description];
    v14 = v13;
    v15 = [v13 UTF8String];
    *buf = 68289794;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = v12;
    v28 = 2082;
    v29 = v15;
    v30 = 1026;
    v31 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI,dateRange, startDate:%{public, location:escape_only}s, endDate:%{public, location:escape_only}s, durationSeconds:%{public}d}", buf, 0x2Cu);
  }

  v16 = *(a1 + 8);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3321888768;
  v20[2] = sub_1000B572C;
  v20[3] = &unk_10013F8D0;
  sub_1000B5964(v21, a3);
  [v16 fetchLocationsOfInterestVisitedBetweenStartDate:v8 endDate:v7 withHandler:v20];
  sub_10001ED8C(v21);

  return 1;
}

void sub_1000B56A8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000053C4();
  }

  (*(*v3 + 48))(v3, &v4);
}

void sub_1000B572C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 description];
      v10 = [v9 UTF8String];
      v11 = [v6 code];
      v12 = [v6 domain];
      v14 = 68289794;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = v10;
      v20 = 1026;
      v21 = v11;
      v22 = 2082;
      v23 = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI,fetchError, errorDescription:%{public, location:escape_only}s, errorCode:%{public}d, domain:%{public, location:escape_only}s}", &v14, 0x2Cu);
    }

    v13 = 0;
  }

  else
  {
    v13 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      LODWORD(v19) = [v5 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI,fetchSuccess, totalLocationsFound:%{public}d}", &v14, 0x18u);
      v13 = v5;
    }
  }

  sub_1000B56A8(a1 + 32, v13);
}

uint64_t sub_1000B5964(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void SAMobileAsset::create(void *a1)
{
  v3 = a1;
  if (*(sub_100042820() + 128) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000B5AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000F274(va);
  operator delete();
}

void SACloudChannel::create(void *a1)
{
  a1;
  if (*(sub_100042820() + 25) == 1)
  {
    sub_1000B5C14();
  }

  sub_1000B5D20();
}

void sub_1000B5CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10003197C(va);
  sub_100031C34(va1);
  operator delete();
}

void sub_1000B5DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10003197C(va);
  sub_100031C34(va1);
  operator delete();
}

void SafetyAlertsDaemonInterface::create(void *a1)
{
  v3 = a1;
  if (*(sub_100042820() + 73) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000B5F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10009D160(va);
  operator delete();
}

SafetyAlertsDaemonInterface *SafetyAlertsDaemonInterface::SafetyAlertsDaemonInterface(SafetyAlertsDaemonInterface *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = off_10013F668;
  sub_1000A1E08(a1 + 8, a3);
  v6 = v5;
  *(a1 + 41) = v6;
  *(a1 + 42) = 0;
  SafetyAlertsDaemonInterface::setupXpcConnection(a1);

  return a1;
}

void sub_1000B6054(_Unwind_Exception *a1)
{
  sub_10009D160(v3);

  _Unwind_Resume(a1);
}

void SafetyAlertsDaemonInterface::setupXpcConnection(SafetyAlertsDaemonInterface *this)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterface,setupXpcConnection}", buf, 0x12u);
  }

  mach_service = xpc_connection_create_mach_service("com.apple.safetyalerts", *(this + 41), 1uLL);
  v4 = *(this + 42);
  *(this + 42) = mach_service;

  v5 = *(this + 42);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B626C;
  handler[3] = &unk_10013F968;
  handler[4] = this;
  xpc_connection_set_event_handler(v5, handler);
  xpc_connection_activate(*(this + 42));
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterface,xpc_connection_resumed}", buf, 0x12u);
  }
}

uint64_t sub_1000B6218(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000053C4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1000B626C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_autoreleasePoolPush();
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    v8 = v3;
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 68289026;
      *v12 = 2082;
      *&v12[2] = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterface,handleXpcConnection}", &v11, 0x12u);
    }

    v11 = _NSConcreteStackBlock;
    *v12 = 3221225472;
    *&v12[8] = sub_1000B64A0;
    *&v12[16] = &unk_10013F990;
    v14 = v4;
    v10 = v8;
    v13 = v10;
    xpc_connection_set_event_handler(v10, &v11);
    xpc_connection_activate(v10);
  }

  else
  {
    v6 = xpc_copy_description(v3);
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 68289283;
      *v12 = 2082;
      *&v12[2] = "";
      *&v12[10] = 2081;
      *&v12[12] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received object, description:%{private, location:escape_only}s}", &v11, 0x1Cu);
    }

    free(v6);
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1000B64A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = objc_autoreleasePoolPush();
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    v6 = xpc_copy_description(v3);
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 68289283;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = v6;
      v8 = "{msg%{public}.0s:#daemonInterface,Connection received error, description:%{private, location:escape_only}s}";
      goto LABEL_7;
    }

LABEL_8:
    free(v6);
    goto LABEL_9;
  }

  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v6 = xpc_copy_description(v3);
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 68289283;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = v6;
      v8 = "{msg%{public}.0s:#daemonInterface,Connection received object, description:%{private, location:escape_only}s}";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v13, 0x1Cu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = xpc_connection_copy_entitlement_value();
  v10 = v9;
  if (v9 && xpc_get_type(v9) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v10);

    if (value)
    {
      (*(*v4 + 24))(v4, v3);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 68289283;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2081;
    v18 = "com.apple.safetyalerts.spi";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterface,notEntitled, entitlement:%{private, location:escape_only}s}", &v13, 0x1Cu);
  }

LABEL_9:
  objc_autoreleasePoolPop(v5);
}

SafetyAlertsDaemonInterface *SafetyAlertsDaemonInterfaceTest::SafetyAlertsDaemonInterfaceTest(SafetyAlertsDaemonInterface *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_1000A1E08(v7, a3);
  SafetyAlertsDaemonInterface::SafetyAlertsDaemonInterface(a1, v5, v7);
  sub_1000A242C(&v16);
  sub_1000A222C(&v15);
  sub_1000A22AC(&v14);
  sub_10000F274(&v13);
  sub_10001E0C0(&v12);
  sub_10000F274(&v11);
  sub_1000A232C(&v10);
  sub_1000A23AC(&v9);
  sub_10000F274(&v8);
  sub_1000A1D88(v7);
  *a1 = &off_10013F9C0;

  return a1;
}

void sub_1000B685C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10009D160(va);

  _Unwind_Resume(a1);
}

void sub_1000B6888(uint64_t a1)
{
  sub_1000B0100(a1);

  operator delete();
}

void sub_1000B68C0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = "testMessage";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceTest,processMessage, message:%{private, location:escape_only}s}", v6, 0x1Cu);
  }

  v4 = sub_1000175DC();
  sub_1000176C8(v4, v2);
  reply = xpc_dictionary_create_reply(v2);
  if (reply)
  {
    xpc_dictionary_send_reply();
  }
}

void sub_1000B69BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void *SACoreRoutineTest::SACoreRoutineTest(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100004CEC(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  sub_10001CA20(v16, a4);
  *a1 = off_10013F938;
  sub_10001CAB8(v16);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_10013FA08;
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,SACoreRoutineTest}", buf, 0x12u);
  }

  return a1;
}

void sub_1000B6B90()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,Test,getHistoricalLocation}", v1, 0x12u);
  }
}

uint64_t sub_1000B6C44(uint64_t a1, uint64_t a2)
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,Test,stopMonitoringForPeopleDensity}", v5, 0x12u);
  }

  result = *(a2 + 24);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

void sub_1000B6D28()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,Test,fetchVisits}", v1, 0x12u);
  }
}

uint64_t sub_1000B6DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,Test,fetchLearnedLOI}", v6, 0x12u);
  }

  if (*(a3 + 24))
  {
    sub_1000B56A8(a3, 0);
  }

  return 0;
}

uint64_t SAGridId::generateGlobalTileIdFromLatLonAndGridSizeInDegrees(SAGridId *this, double a2, double a3, double a4, double a5, double a6)
{
  if (a2 - a5 < -90.0 || a3 - a6 > 180.0 || a2 - a5 > 90.0 || a3 - a6 < -180.0)
  {
    v12 = SALogObjectGeneral;
    v13 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 68289795;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2053;
      v25 = a2;
      v26 = 2053;
      v27 = a3;
      v28 = 2049;
      v29 = a5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gi,#generateGlobalTileIdFromLatLonAndGridSizeInDegrees,invalidLoc, lat:%{sensitive}0.3f, lon:%{sensitive}0.3f, gridLatOffset:%{private}0.3f}", &v20, 0x30u);
      return 0;
    }
  }

  else
  {
    LODWORD(v6) = vcvtad_u64_f64(100.0 / (a4 * 100.0));
    LODWORD(v8) = vcvtpd_u64_f64((360.0 - a6) * v6);
    LODWORD(v7) = vcvtmd_u64_f64((a3 + 180.0 - a6) * v6);
    v16 = (floor((a2 + 90.0 - a5) * v6) * LODWORD(v8));
    v13 = (v16 + v7);
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v18) = vcvtpd_u64_f64((180.0 - a5) * v6);
      v20 = 68291843;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2049;
      v25 = v8;
      v26 = 2049;
      v27 = v18;
      v28 = 2049;
      v29 = a4;
      v30 = 2049;
      v31 = v7;
      v32 = 2049;
      v33 = v16;
      v34 = 2049;
      v35 = (v16 + v7);
      v36 = 2049;
      v37 = v6;
      v38 = 2053;
      v39 = a2;
      v40 = 2053;
      v41 = a3;
      v42 = 2049;
      v43 = a5;
      v44 = 2049;
      v45 = a6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gi,#generateGlobalTileIdFromLatLonAndGridSizeInDegrees, totalGridsInEachRow:%{private}lu, totalGridsInEachCol:%{private}lu, gridSizeInDegrees:%{private}0.3f, swXIndex:%{private}lu, swYIndex:%{private}lu, curGlobalIndex:%{private}lu, multiplier:%{private}lu, lat:%{sensitive}0.3f, lon:%{sensitive}0.3f, gridLatOffset:%{private}0.3f, gridLonOffset:%{private}0.3f}", &v20, 0x80u);
    }
  }

  return v13;
}

void SAGeometry::SAGeometry(SAGeometry *this, NSDictionary *a2)
{
  v105 = a2;
  *this = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0xBFF0000000000000;
  *(this + 10) = 4;
  v3 = objc_alloc_init(NSMutableArray);
  v4 = *this;
  *this = v3;

  if (!*this)
  {
    v92 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v129 = 2082;
      v130 = "";
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#geometry,CannotInstantiate}", &buf, 0x12u);
      v92 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      buf = 68289795;
      v129 = 2082;
      v130 = "";
      v131 = 2081;
      *v132 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/geometry/SAGeometry.mm";
      *&v132[8] = 2081;
      *&v132[10] = "SAGeometry";
      v133 = 1026;
      v134 = 42;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", &buf, 0x2Cu);
    }

    __assert_rtn("SAGeometry", "SAGeometry.mm", 42, "false && #geometry,CannotInstantiate");
  }

  v112 = [(NSDictionary *)v105 objectForKey:@"type"];
  v111 = this;
  v108 = [(NSDictionary *)v105 objectForKey:@"coordinates"];
  if (!v112 || !v108)
  {
    v9 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    buf = 68289026;
    v129 = 2082;
    v130 = "";
    v10 = "{msg%{public}.0s:#geometry,MissingEntries}";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &buf, 0x12u);
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    buf = 68289026;
    v129 = 2082;
    v130 = "";
    v10 = "{msg%{public}.0s:#geometry,BadPolygonType}";
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v101 = v112;
    if ([v101 isEqualToString:@"Polygon"])
    {
      v5 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        buf = 68289026;
        v129 = 2082;
        v130 = "";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,Polygon}", &buf, 0x12u);
      }

      v7 = SAGeometry::getPolygonFromCoordinates(v108, v6);
      if (v7)
      {
        v8 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2113;
          *v132 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,CLPolygonCreated, polygon:%{private, location:escape_only}@}", &buf, 0x1Cu);
        }

        [*this addObject:v7];
      }

      *(this + 10) = 1;
      goto LABEL_42;
    }

    if ([v101 isEqualToString:@"MultiPolygon"])
    {
      v11 = v108;
      v102 = v11;
      v104 = [(SAGeometry *)v11 count];
      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289539;
        v129 = 2082;
        v130 = "";
        v131 = 1025;
        *v132 = v104;
        *&v132[4] = 2113;
        *&v132[6] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,MultiPolygon, count:%{private}d, coordinateObjects:%{private, location:escape_only}@}", &buf, 0x22u);
      }

      if (v104)
      {
        v13 = 0;
        do
        {
          v109 = v13;
          v14 = [(SAGeometry *)v102 objectAtIndex:?];
          v15 = v14;
          v17 = SAGeometry::getPolygonFromCoordinates(v14, v16);
          if (v17)
          {
            v18 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf = 68289283;
              v129 = 2082;
              v130 = "";
              v131 = 2113;
              *v132 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,CLPolygonCreated, polygon:%{private, location:escape_only}@}", &buf, 0x1Cu);
            }

            v106 = v17;
            v19 = [v17 vertices];
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v20 = v19;
            v21 = [v20 countByEnumeratingWithState:&v121 objects:v127 count:16];
            if (v21)
            {
              v22 = *v122;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v122 != v22)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v24 = *(*(&v121 + 1) + 8 * i);
                  v25 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
                  {
                    buf = 68289283;
                    v129 = 2082;
                    v130 = "";
                    v131 = 2113;
                    *v132 = v24;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,vertex, vertex:%{private, location:escape_only}@}", &buf, 0x1Cu);
                  }
                }

                v14 = v15;
                v21 = [v20 countByEnumeratingWithState:&v121 objects:v127 count:16];
              }

              while (v21);
            }

            [*v111 addObject:v106];
            v17 = v106;
          }

          this = v111;
          v13 = v109 + 1;
        }

        while ((v109 + 1) != v104);
      }

      *(this + 10) = 2;
      goto LABEL_41;
    }

    if ([v101 isEqualToString:@"Grids"])
    {
      v27 = [(NSDictionary *)v105 objectForKey:@"resolution"];
      if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v84 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289026;
          v129 = 2082;
          v130 = "";
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,BadPolygonResolution}", &buf, 0x12u);
        }

        goto LABEL_46;
      }

      v102 = v27;
      [v27 doubleValue];
      v29 = v28;
      v30 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        buf = 68289026;
        v129 = 2082;
        v130 = "";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,Grids}", &buf, 0x12u);
      }

      v31 = v108;
      v32 = [(SAGeometry *)v31 count];
      v33 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289539;
        v129 = 2082;
        v130 = "";
        v131 = 1025;
        *v132 = v32;
        *&v132[4] = 2113;
        *&v132[6] = v31;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,Grids, count:%{private}d, coordinateObjects:%{private, location:escape_only}@}", &buf, 0x22u);
      }

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      obj = v31;
      v34 = [(SAGeometry *)obj countByEnumeratingWithState:&v117 objects:v126 count:16];
      if (!v34)
      {
LABEL_96:

        *(v111 + 10) = 3;
LABEL_41:
        v7 = v102;
LABEL_42:

LABEL_43:
        v26 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289026;
          v129 = 2082;
          v130 = "";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,created}", &buf, 0x12u);
        }

        *(v111 + 8) = *(v111 + 10) != 4;
        goto LABEL_46;
      }

      v107 = *v118;
LABEL_57:
      v110 = v34;
      v35 = 0;
      while (1)
      {
        if (*v118 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v117 + 1) + 8 * v35);
        v37 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289026;
          v129 = 2082;
          v130 = "";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,getPolygonFromGridCoordinate}", &buf, 0x12u);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if ([v36 count] < 2 || objc_msgSend(v36, "count") > 3)
        {
          goto LABEL_89;
        }

        v38 = [v36 objectAtIndex:0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_89:
          v76 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf = 68289026;
            v129 = 2082;
            v130 = "";
            v74 = v76;
            v75 = "{msg%{public}.0s:#geometry,getPolygonFromGridCoordinate,Invalid Args}";
LABEL_91:
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, v75, &buf, 0x12u);
          }

          goto LABEL_92;
        }

        v39 = [v36 objectAtIndex:1];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_89;
        }

        v41 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2113;
          *v132 = v36;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,getPolygonFromGridCoordinate, object:%{private, location:escape_only}@}", &buf, 0x1Cu);
        }

        v42 = [v36 objectAtIndex:1];
        [v42 doubleValue];
        v44 = v43;

        v45 = [v36 objectAtIndex:0];
        [v45 doubleValue];
        v47 = v46;

        v48 = objc_alloc_init(NSMutableArray);
        v49 = [_CLVertex alloc];
        v50 = CLLocationCoordinate2DMake(v44, v47);
        v51 = [v49 initWithCoordinate:{v50.latitude, v50.longitude}];
        [v48 addObject:v51];
        v52 = [_CLVertex alloc];
        v53 = CLLocationCoordinate2DMake(v29 + v44, v47);
        v54 = [v52 initWithCoordinate:{v53.latitude, v53.longitude}];
        [v48 addObject:?];
        v55 = [_CLVertex alloc];
        v56 = v29 + v47;
        v57 = CLLocationCoordinate2DMake(v29 + v44, v56);
        v58 = [v55 initWithCoordinate:{v57.latitude, v57.longitude}];
        [v48 addObject:v58];
        v59 = [_CLVertex alloc];
        v60 = CLLocationCoordinate2DMake(v44, v56);
        v61 = [v59 initWithCoordinate:{v60.latitude, v60.longitude}];
        [v48 addObject:v61];
        [v48 addObject:v51];
        v62 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2113;
          *v132 = v48;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,vertices, vertices:%{private, location:escape_only}@}", &buf, 0x1Cu);
        }

        v63 = [[_CLPolygonalRegion alloc] initWithVertices:v48 identifier:@"polygon"];
        v64 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2113;
          *v132 = v63;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,region, region:%{private, location:escape_only}@}", &buf, 0x1Cu);
        }

        if (!v63)
        {
          goto LABEL_94;
        }

        v65 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2113;
          *v132 = v63;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,Grids,CLPolygonCreated, polygon:%{private, location:escape_only}@}", &buf, 0x1Cu);
        }

        v66 = [v63 vertices];
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v67 = v66;
        v68 = [v67 countByEnumeratingWithState:&v113 objects:v125 count:16];
        if (v68)
        {
          v69 = *v114;
          do
          {
            for (j = 0; j != v68; j = j + 1)
            {
              if (*v114 != v69)
              {
                objc_enumerationMutation(v67);
              }

              v71 = *(*(&v113 + 1) + 8 * j);
              v72 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
              {
                buf = 68289283;
                v129 = 2082;
                v130 = "";
                v131 = 2113;
                *v132 = v71;
                _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,Grids, vertex:%{private, location:escape_only}@}", &buf, 0x1Cu);
              }
            }

            v68 = [v67 countByEnumeratingWithState:&v113 objects:v125 count:16];
          }

          while (v68);
        }

        [*v111 addObject:v63];
LABEL_93:

LABEL_94:
        if (++v35 == v110)
        {
          v34 = [(SAGeometry *)obj countByEnumeratingWithState:&v117 objects:v126 count:16];
          if (!v34)
          {
            goto LABEL_96;
          }

          goto LABEL_57;
        }
      }

      v73 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289026;
        v129 = 2082;
        v130 = "";
        v74 = v73;
        v75 = "{msg%{public}.0s:#geometry,getPolygonFromGridCoordinate,invalid Type}";
        goto LABEL_91;
      }

LABEL_92:
      v63 = 0;
      v67 = v36;
      goto LABEL_93;
    }

    if (![v101 isEqualToString:@"Circle"])
    {
      goto LABEL_43;
    }

    v77 = v108;
    if ([(SAGeometry *)v77 count]!= 2)
    {
      v85 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289026;
        v129 = 2082;
        v130 = "";
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,BadCircleCenterCoordCount}", &buf, 0x12u);
      }

      goto LABEL_46;
    }

    v78 = [(SAGeometry *)v77 objectAtIndex:0];
    if (!v78 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v82 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289283;
        v129 = 2082;
        v130 = "";
        v131 = 2113;
        *v132 = v78;
        v83 = "{msg%{public}.0s:#geometry,BadCircleCenterLat, value:%{private, location:escape_only}@}";
        goto LABEL_112;
      }

LABEL_113:

      goto LABEL_46;
    }

    [v78 doubleValue];
    v80 = v79;
    v81 = fabs(v79);
    if (v81 > 90.0)
    {
      v82 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289283;
        v129 = 2082;
        v130 = "";
        v131 = 2049;
        *v132 = v80;
        v83 = "{msg%{public}.0s:#geometry,InvalidCircleLat, value:%{private}0.1f}";
LABEL_112:
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, v83, &buf, 0x1Cu);
        goto LABEL_113;
      }

      goto LABEL_113;
    }

    v86 = [(SAGeometry *)v77 objectAtIndex:1];
    if (v86 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v86 doubleValue];
      v88 = v87;
      v89 = fabs(v87);
      if (v89 <= 180.0)
      {
        if (fabs(v81 + -0.0000001) > 0.0000001 || fabs(v89 + -0.0000001) > 0.0000001)
        {
          v95 = [(NSDictionary *)v105 objectForKey:@"radiusMeters"];
          if (!v95 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v98 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf = 68289283;
              v129 = 2082;
              v130 = "";
              v131 = 2113;
              *v132 = v95;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,BadCircleRadius, value:%{private, location:escape_only}@}", &buf, 0x1Cu);
            }

            goto LABEL_46;
          }

          [v95 doubleValue];
          v97 = v96;
          if (v96 <= 0.0)
          {
            v100 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf = 68289283;
              v129 = 2082;
              v130 = "";
              v131 = 2049;
              *v132 = v97;
              _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,InvalidCircleRadiusValue, value:%{private}0.1f}", &buf, 0x1Cu);
            }
          }

          else
          {
            *(this + 2) = v80;
            *(this + 3) = v88;
            *(this + 4) = v96;
            *(this + 10) = 0;
          }

          if (v97 > 0.0)
          {
            goto LABEL_43;
          }

LABEL_46:

          goto LABEL_47;
        }

        v99 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289539;
          v129 = 2082;
          v130 = "";
          v131 = 2049;
          *v132 = v80;
          *&v132[8] = 2049;
          *&v132[10] = v88;
          v91 = "{msg%{public}.0s:#geometry,InvalidCircleCenter, value:%{private}0.1f, value:%{private}0.1f}";
          v93 = v99;
          v94 = 38;
          goto LABEL_127;
        }
      }

      else
      {
        v90 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2049;
          *v132 = v88;
          v91 = "{msg%{public}.0s:#geometry,InvalidCircleLon, value:%{private}0.1f}";
LABEL_126:
          v93 = v90;
          v94 = 28;
LABEL_127:
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, v91, &buf, v94);
        }
      }
    }

    else
    {
      v90 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289283;
        v129 = 2082;
        v130 = "";
        v131 = 2113;
        *v132 = v86;
        v91 = "{msg%{public}.0s:#geometry,BadCircleCenterLon, value:%{private, location:escape_only}@}";
        goto LABEL_126;
      }
    }

    goto LABEL_46;
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v129 = 2082;
    v130 = "";
    v10 = "{msg%{public}.0s:#geometry,BadCoordinateType}";
    goto LABEL_20;
  }

LABEL_47:
}

SAGeometry *SAGeometry::getPolygonFromCoordinates(SAGeometry *this, objc_object *a2)
{
  v2 = this;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,getPolygonFromCoordinates}", buf, 0x12u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (![(SAGeometry *)v2 count]|| ([(SAGeometry *)v2 objectAtIndex:0], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) == 0))
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:
      *buf = 68289026;
      v38 = 0;
      v39 = 2082;
      v40 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,BadLinearRing}", buf, 0x12u);
    }

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v41 = 2113;
    v42 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,linearRingsObject, object:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v36 = [(SAGeometry *)v2 objectAtIndex:0];
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v41 = 2113;
    v42 = v36;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,points, points:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v8 = [(SAGeometry *)v36 count];
  v9 = v8;
  if ((v8 - 101) > 0xFFFFFFFFFFFFFF9ELL)
  {
    v35 = v8;
    v34 = objc_alloc_init(NSMutableArray);
    v14 = 0;
    v15 = &IOIteratorNext_ptr;
    *&v16 = 68289026;
    v33 = v16;
    do
    {
      v17 = [(SAGeometry *)v36 objectAtIndex:v14, v33];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v17 count] != 2)
      {
        v32 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v33;
          v38 = 0;
          v39 = 2082;
          v40 = "";
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,InvalidCoordinate}", buf, 0x12u);
        }

LABEL_38:
        v11 = 0;
        goto LABEL_39;
      }

      v18 = v17;
      v19 = [v18 objectAtIndex:1];
      v20 = [v18 objectAtIndex:0];
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();
      v22 = v15;
      objc_opt_class();
      v23 = v21 & objc_opt_isKindOfClass();
      if (v23)
      {
        [v19 doubleValue];
        v25 = v24;
        [v20 doubleValue];
        v27 = CLLocationCoordinate2DMake(v25, v26);
        v28 = [[_CLVertex alloc] initWithCoordinate:{v27.latitude, v27.longitude}];
        [v34 addObject:v28];
      }

      else
      {
        v29 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v33;
          v38 = 0;
          v39 = 2082;
          v40 = "";
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,CoordinateIsNaN}", buf, 0x12u);
        }
      }

      if ((v23 & 1) == 0)
      {
        goto LABEL_38;
      }

      ++v14;
      v15 = v22;
    }

    while (v35 != v14);
    v30 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289283;
      v38 = 0;
      v39 = 2082;
      v40 = "";
      v41 = 2113;
      v42 = v34;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,vertices, vertices:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v11 = [[_CLPolygonalRegion alloc] initWithVertices:v34 identifier:@"polygon"];
    v31 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289283;
      v38 = 0;
      v39 = 2082;
      v40 = "";
      v41 = 2113;
      v42 = v11;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,region, region:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

LABEL_39:
  }

  else
  {
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v38 = 0;
      v39 = 2082;
      v40 = "";
      v41 = 1026;
      LODWORD(v42) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,InvalidNumberOfPoints, pointsLen:%{public}d}", buf, 0x18u);
    }

    v11 = 0;
  }

LABEL_19:

  return v11;
}

uint64_t SAGeometry::isLocationInCircle(SAGeometry *this, double a2, double a3, double a4, NSArray *a5)
{
  v31 = this;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v38 = 2082;
    v39 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocationInCircle}", &buf, 0x12u);
  }

  if (v31)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v31;
    v8 = [(SAGeometry *)v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = *v33;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count] == 3)
          {
            v12 = 0;
            while (1)
            {
              v13 = [v11 objectAtIndex:v12];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                break;
              }

              if (++v12 == 3)
              {
                goto LABEL_19;
              }
            }

            v16 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf = 68289026;
              v38 = 2082;
              v39 = "";
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocationInCircle,skipping invalid circle}", &buf, 0x12u);
            }

LABEL_19:
            v17 = [v11 objectAtIndex:0];
            [v17 doubleValue];

            v18 = [v11 objectAtIndex:1];
            [v18 doubleValue];

            v19 = [v11 objectAtIndex:2];
            [v19 doubleValue];
            v21 = v20;

            GEOCalculateDistance();
            if (v22 + a4 <= v21)
            {
              v29 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
              {
                buf = 68289026;
                v38 = 2082;
                v39 = "";
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,isLocationInCircle,true}", &buf, 0x12u);
              }

              v28 = 1;
              goto LABEL_31;
            }
          }

          else
          {
            v15 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf = 68289026;
              v38 = 2082;
              v39 = "";
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocationInCircle,skipping invalid circle}", &buf, 0x12u);
            }
          }
        }

        v8 = [(SAGeometry *)v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v23 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289026;
      v38 = 2082;
      v39 = "";
      v24 = "{msg%{public}.0s:#geometry,isLocationInCircle,false}";
      v25 = v23;
      v26 = OS_LOG_TYPE_DEBUG;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v25, v26, v24, &buf, 0x12u);
    }
  }

  else
  {
    v27 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v38 = 2082;
      v39 = "";
      v24 = "{msg%{public}.0s:#geometry,isLocationInCircle,empty circles}";
      v25 = v27;
      v26 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_26;
    }
  }

  v28 = 0;
LABEL_31:

  return v28;
}

uint64_t SAGeometry::isCircleInGeometryHelper(SAGeometry *this, CLLocationDegrees a2, CLLocationDegrees a3, double a4, double *a5, const NSArray *a6)
{
  v10 = a5;
  v11 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    v38 = 2053;
    latitude = a2;
    v40 = 2053;
    longitude = a3;
    v42 = 2049;
    *v43 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry, lat:%{sensitive}0.6f, lon:%{sensitive}0.6f, radiusMeters:%{private}0.6f}", buf, 0x30u);
  }

  if (!v10)
  {
    v27 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v28 = "{msg%{public}.0s:#geometry,isCircleInGeometry,fPolygons is nil}";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x12u);
    }

LABEL_27:
    v29 = 0;
    *this = 0xBFF0000000000000;
    goto LABEL_35;
  }

  v12 = [v10 count];
  if (!v12)
  {
    v27 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v28 = "{msg%{public}.0s:#geometry,isCircleInGeometry,fPolygons is empty}";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  *this = 0xBFF0000000000000;
  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    v38 = 2053;
    latitude = a2;
    v40 = 2053;
    longitude = a3;
    v42 = 2049;
    *v43 = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry, lat:%{sensitive}0.6f, lon:%{sensitive}0.6f, radiusMeters:%{private}0.6f}", buf, 0x30u);
  }

  v15 = 0;
  *&v14 = 68289539;
  v32 = v14;
  do
  {
    v16 = [v10 objectAtIndex:{v15, v32}];
    v33 = -1.0;
    v17 = CLLocationCoordinate2DMake(a2, a3);
    v18 = [v16 containsCoordinate:&v33 withDistanceToBorder:?];
    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68290051;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2053;
      latitude = v17.latitude;
      v40 = 2053;
      longitude = v17.longitude;
      v42 = 1025;
      LODWORD(v43[0]) = v18;
      WORD2(v43[0]) = 2049;
      *(v43 + 6) = v33;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInPolygonResult, lat:%{sensitive}0.6f, lon:%{sensitive}0.6f, inside:%{private}hhd, distance:%{private}0.6f}", buf, 0x36u);
    }

    if (v18)
    {
      v30 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry,YES}", buf, 0x12u);
      }

      goto LABEL_31;
    }

    v20 = *this;
    v21 = v33;
    if (*this == -1.0)
    {
      *this = v33;
      v22 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v32;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2049;
        latitude = v21;
        v40 = 2049;
        longitude = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,initClosestDistance, distance:%{private}0.2f, closestDistance:%{private}0.2f}", buf, 0x26u);
      }
    }

    else if (v20 > v33)
    {
      v23 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v32;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2049;
        latitude = v21;
        v40 = 2049;
        longitude = v20;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,adjustClosestDistance, distance:%{private}0.2f, closestDistance:%{private}0.2f}", buf, 0x26u);
        v21 = v33;
      }

      *this = v21;
    }

    ++v15;
  }

  while (v12 != v15);
  v24 = *this;
  v25 = SALogObjectGeneral;
  v26 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v24 < a4)
  {
    if (v26)
    {
      *buf = v32;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2049;
      latitude = a4;
      v40 = 2049;
      longitude = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry,closeEnough, radiusMeters:%{private}0.2f, distance:%{private}0.2f}", buf, 0x26u);
    }

LABEL_31:
    v29 = 1;
    goto LABEL_35;
  }

  if (v26)
  {
    *buf = 68289026;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry,NO}", buf, 0x12u);
  }

  v29 = 0;
LABEL_35:

  return v29;
}

uint64_t SAGeometry::isCircleInGeometry(double **this, CLLocationDegrees a2, CLLocationDegrees a3, double a4, SAGeometry *a5)
{
  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry}", &v25, 0x12u);
  }

  if (*(this + 10))
  {
    return SAGeometry::isCircleInGeometryHelper(a5, a2, a3, a4, *this, v11);
  }

  v13 = this[2];
  v14 = this[3];
  v15 = *(this + 4);
  *a5 = 0;
  if (v15 <= 0.0)
  {
    goto LABEL_8;
  }

  v16 = fabs(*&v13);
  if (v16 > 90.0)
  {
    goto LABEL_8;
  }

  v17 = fabs(*&v14);
  if (v17 > 180.0)
  {
    goto LABEL_8;
  }

  v20 = fabs(v16 + -0.0000001) > 0.0000001;
  if (fabs(v17 + -0.0000001) > 0.0000001)
  {
    v20 = 1;
  }

  if (a4 > 0.0 && v20 && (v21 = fabs(a2), v21 <= 90.0) && (v22 = fabs(a3), v22 <= 180.0) && (fabs(v21 + -0.0000001) > 0.0000001 || fabs(v22 + -0.0000001) > 0.0000001))
  {
    CLClientGetDistanceCoordinates();
    v24 = v23 - (v15 + a4);
    if (v24 >= 0.0)
    {
      result = 0;
      *a5 = v24 + a4;
    }

    else
    {
      return 1;
    }
  }

  else
  {
LABEL_8:
    v18 = SALogObjectGeneral;
    v19 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v19)
    {
      v25 = 68289026;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,doCirclesOverlap,invalidCircles}", &v25, 0x12u);
      return 0;
    }
  }

  return result;
}

void SAGeometry::area(id *this)
{
  v2 = *this;
  if (!*this && !sub_1000BA270(this + 2))
  {
    v31 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v32 = "{msg%{public}.0s:#geometry,area,#warning,fPolygons and fCircle is nil}";
    goto LABEL_23;
  }

  if (sub_1000BA270(this + 2))
  {
    return;
  }

  v3 = [v2 count];
  if (!v3)
  {
    v31 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v32 = "{msg%{public}.0s:#geometry,area,#warning,fPolygons is empty}";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0x12u);
    return;
  }

  v5 = 0;
  v6 = 0.0;
  *&v4 = 68289283;
  v35 = v4;
  v36 = v3;
LABEL_6:
  v37 = v6;
  v38 = [*this objectAtIndex:{v5, v35}];
  v7 = [v38 vertices];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 count];
    v10 = v9;
    if ((v9 - 3) <= 0x61)
    {
      v11 = 0;
      v12 = v9 - 1;
      v13 = 0.0;
      while (1)
      {
        v14 = [v8 objectAtIndexedSubscript:v11];
        if (!v14)
        {
          goto LABEL_25;
        }

        if (v12 == v11)
        {
          v15 = 0;
        }

        else
        {
          v15 = v11 + 1;
        }

        v16 = [v8 objectAtIndexedSubscript:v15];
        if (!v16)
        {

          goto LABEL_25;
        }

        v17 = v14;
        [v17 coordinate];
        v19 = v18;
        [v17 coordinate];
        v21 = v20;
        v22 = cos(v19 * 3.14159265 / 180.0);

        v23 = v16;
        [v23 coordinate];
        v25 = v24;
        [v23 coordinate];
        v27 = v26;
        v28 = cos(v25 * 3.14159265 / 180.0);

        ++v11;
        v13 = v13 + v22 * (v21 * 111320.119) * (v25 * -111320.119) + v28 * (v27 * 111320.119) * (v19 * 111320.119);
        if (v10 == v11)
        {

          v29 = fabs(v13 * 0.5);
          v30 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v35;
            v40 = 0;
            v41 = 2082;
            v42 = "";
            v43 = 2049;
            v44 = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,area,subArea, subArea:%{private}0.1f}", buf, 0x1Cu);
          }

          v6 = v37 + v29;
          if (++v5 != v36)
          {
            goto LABEL_6;
          }

          return;
        }
      }
    }

    v33 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      v34 = "{msg%{public}.0s:#geometry,area,#warning,invalidCount}";
      goto LABEL_31;
    }
  }

  else
  {
    v33 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      v34 = "{msg%{public}.0s:#geometry,area,#warning,noVertices}";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0x12u);
    }
  }

LABEL_25:
}

BOOL sub_1000BA270(double *a1)
{
  if (a1[2] <= 0.0)
  {
    return 0;
  }

  v1 = fabs(*a1);
  if (v1 > 90.0)
  {
    return 0;
  }

  v2 = fabs(a1[1]);
  if (v2 > 180.0)
  {
    return 0;
  }

  v4 = fabs(v1 + -0.0000001) > 0.0000001;
  return fabs(v2 + -0.0000001) > 0.0000001 || v4;
}

uint64_t SAGeometry::isLocInGeometryForGivenTime(double **a1, double ***a2, double *a3, double a4, double a5)
{
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = ((*a2)[1] - **a2) >> 5;
    *buf = 68289795;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 2049;
    v41 = a4;
    v42 = 2049;
    v43 = a5;
    v44 = 1025;
    LODWORD(v45) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime, startTime:%{private}0.3f, stopTime:%{private}0.3f, historicalLocationsLen:%{private}d}", buf, 0x2Cu);
  }

  v35 = 0.0;
  v12 = **a2;
  v11 = (*a2)[1];
  if (v12 != v11)
  {
    v13 = 0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    while (1)
    {
      v18 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *v12;
        *buf = 68289795;
        v37 = 0;
        v38 = 2082;
        v39 = "";
        v40 = 2049;
        v41 = v19;
        v42 = 2049;
        v43 = a4;
        v44 = 2049;
        v45 = a5;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime, hLoc.timestamp:%{private}0.3f, startTime:%{private}0.3f, stopTime:%{private}0.3f}", buf, 0x30u);
      }

      v20 = *v12;
      v13 |= *v12 >= a4;
      if (v13)
      {
        v21 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v37 = 0;
          v38 = 2082;
          v39 = "";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime,past start timestamp}", buf, 0x12u);
          v20 = *v12;
        }

        if (v20 >= a4 && v20 <= a5)
        {
          if (fabs(v17) <= 90.0 && fabs(v16) <= 180.0 && v15 > 0.0)
          {
            if (SAGeometry::isCircleInGeometry(a1, v17, v16, v15, &v35))
            {
              *a3 = v14;
              a3[1] = v17;
              a3[2] = v16;
              a3[3] = v15;
              v27 = SALogObjectGeneral;
              v23 = 1;
              if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_40;
              }

              *buf = 68290051;
              v37 = 0;
              v38 = 2082;
              v39 = "";
              v40 = 2053;
              v41 = v17;
              v42 = 2053;
              v43 = v16;
              v44 = 2049;
              v45 = v14;
              v46 = 1025;
              v47 = 1;
              v25 = "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime,looking at last loc before start timestamp, lat:%{sensitive}0.4f, lon:%{sensitive}0.4f, timestamp:%{private}0.2f, isInsidePolygon:%{private}hhd}";
LABEL_39:
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v25, buf, 0x36u);
              goto LABEL_40;
            }

            v15 = -1.0;
            v17 = 0.0;
            v16 = 0.0;
          }

          if (SAGeometry::isCircleInGeometry(a1, v12[1], v12[2], v12[3], &v35))
          {
            v26 = *(v12 + 1);
            *a3 = *v12;
            *(a3 + 1) = v26;
            v27 = SALogObjectGeneral;
            v28 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
            v23 = 1;
            if (v28)
            {
              v30 = v12[1];
              v29 = v12[2];
              v31 = *v12;
              *buf = 68290051;
              v37 = 0;
              v38 = 2082;
              v39 = "";
              v40 = 2053;
              v41 = v30;
              v42 = 2053;
              v43 = v29;
              v44 = 2049;
              v45 = v31;
              v46 = 1025;
              v47 = 1;
              v25 = "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime,location in polygon, lat:%{sensitive}0.4f, lon:%{sensitive}0.4f, timestamp:%{private}0.2f, isInsidePolygon:%{private}hhd}";
              goto LABEL_39;
            }

            goto LABEL_40;
          }
        }
      }

      else
      {
        v14 = *v12;
        v17 = v12[1];
        v16 = v12[2];
        v15 = v12[3];
      }

      v12 += 4;
      if (v12 == v11)
      {
        goto LABEL_26;
      }
    }
  }

  v14 = 0.0;
  v17 = 0.0;
  v16 = 0.0;
  v15 = 0.0;
LABEL_26:
  v23 = 0;
  if (fabs(v17) <= 90.0 && fabs(v16) <= 180.0 && v15 > 0.0)
  {
    v24 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime,all locations before start timestamp}", buf, 0x12u);
    }

    if (SAGeometry::isCircleInGeometry(a1, v17, v16, v15, &v35))
    {
      *a3 = v14;
      a3[1] = v17;
      a3[2] = v16;
      a3[3] = v15;
      v27 = SALogObjectGeneral;
      v23 = 1;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290051;
        v37 = 0;
        v38 = 2082;
        v39 = "";
        v40 = 2053;
        v41 = v17;
        v42 = 2053;
        v43 = v16;
        v44 = 2049;
        v45 = v14;
        v46 = 1025;
        v47 = 1;
        v25 = "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime,last location in polygon, lat:%{sensitive}0.4f, lon:%{sensitive}0.4f, timestamp:%{private}0.2f, isInsidePolygon:%{private}hhd}";
        goto LABEL_39;
      }
    }

    else
    {
      v23 = 0;
    }
  }

LABEL_40:
  v32 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 1025;
    LODWORD(v41) = v23;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime, isInsidePolygon:%{private}hhd}", buf, 0x18u);
  }

  return v23;
}

void SALockMonitor::create(void *a1)
{
  a1;
  if (*(sub_100042820() + 256) == 1)
  {
    sub_1000BA96C();
  }

  sub_1000BAA78();
}

void sub_1000BAA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10000F274(va1);
  operator delete();
}

void sub_1000BAB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10000F274(va1);
  operator delete();
}

void SACoreTelephony::create(void *a1)
{
  v3 = a1;
  if (*(sub_100042820() + 24) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000BAD58(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  _Unwind_Resume(a1);
}

void SACoreTelephony::onWeaDisplayedNotification(SACoreTelephony *this, const char *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2081;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saCoreTelephony,onWeaDisplayedNotification, message:%{private, location:escape_only}s}", v5, 0x1Cu);
  }

  if (*(this + 5))
  {
    sub_1000B6218(this + 16, a2);
  }
}

void SACoreTelephony::onWeaReceivedNotification(SACoreTelephony *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [(NSDictionary *)v3 enumerateKeysAndObjectsUsingBlock:&stru_10013FA50];
    if (*(this + 9))
    {
      sub_10004485C(this + 48, v4);
    }
  }

  else
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 68289026;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saCoreTelephony,onWeaReceivedNotification,alert does not have any info,ignoring.}", v6, 0x12u);
    }
  }
}

void sub_1000BAFF0(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saCoreTelephony,onWeaReceivedNotification, key:%{private, location:escape_only}@, value:%{private, location:escape_only}@}", v8, 0x26u);
  }
}

__int128 *SACoreTelephony::onEnhanceDeliveryStateChange(SACoreTelephony *this, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onEnhanceDeliveryStateChange,, enhancedDeliveryState,:%{public}hhd}", v6, 0x18u);
  }

  result = sub_100002DB0();
  *(result + 62) = a2 | 0x100;
  if (*(this + 17))
  {
    return sub_1000030E8(this + 112, a2);
  }

  return result;
}

uint64_t SACoreTelephony::onUserSettingsChanged(SACoreTelephony *this)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onUserSettingsChanged}", v4, 0x12u);
  }

  result = *(this + 25);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

void SACoreTelephony::onMotionHarvestWeaTrigger(SACoreTelephony *this, NSDictionary *a2)
{
  v3 = a2;
  if ([*SAPlatformInfo::instance(v3) isEqualToString:@"iPhone"])
  {
    if (v3)
    {
      if (*(this + 21))
      {
        sub_10004485C(this + 144, v3);
      }
    }

    else
    {
      v4 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 68289026;
        v5[1] = 0;
        v6 = 2082;
        v7 = "";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saCoreTelephony,onMotionHarvestWeaTrigger,alert does not have any info,ignoring.}", v5, 0x12u);
      }
    }
  }
}

uint64_t SACoreTelephony::getEnhancedDeliveryState(uint64_t a1, uint64_t a2)
{
  _CTServerConnectionGetCellBroadcastConfig();
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,GetCellBroadcastConfig error}", &buf, 0x12u);
  }

  return 0;
}

void sub_1000BBA88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000BBAC0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1000BBAF0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1000BBB34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000BBB6C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1000BBB9C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double SACommonUtils::extractCFAbsoluteTimeFromTimeString(unsigned __int8 *a1)
{
  v1 = a1;
  v2 = a1[23];
  if (v2 < 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v3 = *a1;
      goto LABEL_6;
    }

LABEL_21:
    v10 = SALogObjectGeneral;
    v11 = -1.0;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return v11;
    }

    *buf = 68289026;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v12 = "{msg%{public}.0s:#sa_util,#warning,failed to compute cfabsolutetime from timestring length is 0}";
    v13 = v10;
    v14 = 18;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    return v11;
  }

  if (!a1[23])
  {
    goto LABEL_21;
  }

  v3 = a1;
  v4 = a1[23];
LABEL_6:
  v5 = 0;
  do
  {
    v6 = *v3++;
    if (v6 == 58)
    {
      ++v5;
    }

    --v4;
  }

  while (v4);
  if (v2 < 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  if (!v2)
  {
    LODWORD(v8) = 0;
LABEL_24:
    v15 = SALogObjectGeneral;
    v11 = -1.0;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return v11;
    }

    *buf = 68289538;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v41 = 1026;
    *v42 = v5;
    *&v42[4] = 1026;
    *&v42[6] = v8;
    v12 = "{msg%{public}.0s:#sa_util,#warning,timestring format not supported, colonCount:%{public}d, dashCount:%{public}d}";
    v13 = v15;
    v14 = 30;
    goto LABEL_26;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    if (a1[v7] == 45)
    {
      ++v8;
    }

    ++v7;
  }

  while (v2 != v7);
  if ((v5 - 3) < 0xFFFFFFFFFFFFFFFELL || v8 != 2)
  {
    goto LABEL_24;
  }

  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  if (v5 == 2)
  {
    sscanf(a1, "%d-%d-%d%c%d:%d:%d%c", &v35, &v34 + 4, &v34, &v36 + 1, &v33 + 4, &v33, &v32, &v36);
    v9 = v32 < 0x3C;
  }

  else
  {
    sscanf(a1, "%d-%d-%d%c%d:%d%c", &v35, &v34 + 4, &v34, &v36 + 1, &v33 + 4, &v33, &v36);
    v9 = 1;
  }

  v17 = v35;
  v18 = SALogObjectGeneral;
  if ((v35 - 2022) > 0x1B || (v19 = HIDWORD(v34), (HIDWORD(v34) - 1) > 0xB) || (v20 = v34, (v34 - 1) > 0x1E) || (v21 = HIDWORD(v33), HIDWORD(v33) > 0x17) || (v22 = v33, v33 > 0x3B) || !v9)
  {
    v11 = -1.0;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return v11;
    }

    if ((v1[23] & 0x80u) == 0)
    {
      v31 = v1;
    }

    else
    {
      v31 = *v1;
    }

    *buf = 68289795;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v41 = 2081;
    *v42 = v31;
    *&v42[8] = 1026;
    v43 = v5;
    v44 = 1026;
    v45 = 2;
    v12 = "{msg%{public}.0s:#sa_util,#warning,failed to compute cfabsolutetime from timestring, timeString:%{private, location:escape_only}s, colonCount:%{public}d, dashCount:%{public}d}";
    v13 = v18;
    v14 = 40;
    goto LABEL_26;
  }

  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v41 = 1026;
    *v42 = v5;
    *&v42[4] = 1026;
    *&v42[6] = 2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,time extracted from timestring, colonCount:%{public}d, dashCount:%{public}d}", buf, 0x1Eu);
    v22 = v33;
    v21 = HIDWORD(v33);
    v20 = v34;
    v19 = HIDWORD(v34);
    v17 = v35;
  }

  v23 = v32;
  v24 = +[NSCalendar currentCalendar];
  v25 = +[NSDate date];
  v26 = [v24 components:28 fromDate:v25];

  if (v20 >= 1 && v19 >= 1 && v17 >= 1)
  {
    [v26 setYear:v17];
    [v26 setMonth:v19];
    [v26 setDay:v20];
  }

  [v26 setHour:v21];
  [v26 setMinute:v22];
  [v26 setSecond:v23];
  v27 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v26 setTimeZone:v27];

  v28 = +[NSCalendar currentCalendar];
  v29 = [v28 dateFromComponents:v26];
  [v29 timeIntervalSinceReferenceDate];
  v11 = v30;

  return v11;
}

void sub_1000BC0C8(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void SACommonUtils::getHashForString(uint64_t *__return_ptr a1@<X8>, char *__s@<X0>)
{
  if (__s[23] < 0)
  {
    if (!*(__s + 1))
    {
LABEL_17:

      sub_1000060C4(a1, "");
      return;
    }

    v4 = *__s;
  }

  else
  {
    v4 = __s;
    if (!__s[23])
    {
      goto LABEL_17;
    }
  }

  v5 = strlen(v4);
  CC_SHA256(v4, v5, md);
  v6 = [NSMutableString stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v6 appendFormat:@"%02x", md[i]];
  }

  v8 = v6;
  sub_1000060C4(a1, [v6 UTF8String]);
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (__s[23] >= 0)
    {
      v10 = __s;
    }

    else
    {
      v10 = *__s;
    }

    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v10;
    v18 = 2081;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,getHashForString, body:%{private, location:escape_only}s, hash:%{private, location:escape_only}s}", buf, 0x26u);
  }
}

uint64_t SACommonUtils::isHashMatch(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (!v4)
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v42 = "{msg%{public}.0s:#sa_util,isHashMatchFailed,hashIsEmpty}";
LABEL_90:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v42, buf, 0x12u);
    }

LABEL_91:
    v44 = 0;
    goto LABEL_100;
  }

  v6 = SALogObjectGeneral;
  v7 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v7)
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v42 = "{msg%{public}.0s:#sa_util,isHashMatchFailed,dictionaryIsEmpty}";
      goto LABEL_90;
    }

    goto LABEL_91;
  }

  if (v7)
  {
    v8 = *a1;
    if (v5 >= 0)
    {
      v8 = a1;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#sa_util,isHashMatch, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v9 = [v3 objectForKey:@"info"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = v9;
    v11 = [v10 count];
    if (v11)
    {
      v12 = 0;
      v49 = v9;
      v50 = v3;
      do
      {
        v13 = [v10 objectAtIndexedSubscript:{v12, v49, v50}];
        v14 = [v13 objectForKey:@"CMAMtext"];

        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v15 = v14;
          sub_1000060C4(buf, [v14 UTF8String]);
          SACommonUtils::getHashForString(__p, buf);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v16 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v17 = __p;
            if (v54 < 0)
            {
              v17 = __p[0];
            }

            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2113;
            *&buf[20] = v14;
            v56 = 2081;
            v57 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#sa_util,isHashMatch,element, cmam:%{private, location:escape_only}@, hash:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v18 = *(a1 + 23);
          if (v18 >= 0)
          {
            v19 = *(a1 + 23);
          }

          else
          {
            v19 = *(a1 + 8);
          }

          if (v18 >= 0)
          {
            v20 = a1;
          }

          else
          {
            v20 = *a1;
          }

          if (v54 >= 0)
          {
            v21 = HIBYTE(v54);
          }

          else
          {
            v21 = __p[1];
          }

          if (v54 >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          if (v21 >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = v21;
          }

          v24 = memcmp(v20, v22, v23);
          if (v21 != v19 || v24)
          {
            v28 = [v10 objectAtIndexedSubscript:v12];
            v29 = [v28 objectForKey:@"CMAMlongtext"];

            if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v30 = v29;
              sub_1000060C4(v51, [v29 UTF8String]);
              SACommonUtils::getHashForString(buf, v51);
              if (SHIBYTE(v54) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = *buf;
              v54 = *&buf[16];
              buf[23] = 0;
              buf[0] = 0;
              if (v52 < 0)
              {
                operator delete(v51[0]);
              }

              v31 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                v32 = __p;
                if (v54 < 0)
                {
                  v32 = __p[0];
                }

                *buf = 68289539;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2113;
                *&buf[20] = v29;
                v56 = 2081;
                v57 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#sa_util,isHashMatch,element, cmam_long_text:%{private, location:escape_only}@, hash:%{private, location:escape_only}s}", buf, 0x26u);
              }

              v33 = *(a1 + 23);
              if (v33 >= 0)
              {
                v34 = *(a1 + 23);
              }

              else
              {
                v34 = *(a1 + 8);
              }

              if (v33 >= 0)
              {
                v35 = a1;
              }

              else
              {
                v35 = *a1;
              }

              if (v54 >= 0)
              {
                v36 = HIBYTE(v54);
              }

              else
              {
                v36 = __p[1];
              }

              if (v54 >= 0)
              {
                v37 = __p;
              }

              else
              {
                v37 = __p[0];
              }

              if (v36 >= v34)
              {
                v38 = v34;
              }

              else
              {
                v38 = v36;
              }

              v39 = memcmp(v35, v37, v38);
              v26 = 0;
              if (v36 == v34)
              {
                v9 = v49;
                v3 = v50;
                if (!v39)
                {
                  v40 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289026;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,isHashMatch,cmam_long,matched}", buf, 0x12u);
                  }

                  v26 = 1;
                }
              }

              else
              {
                v9 = v49;
                v3 = v50;
              }
            }

            else
            {

              v41 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289026;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#sa_util,isHashMatch,cmam_long_text nil}", buf, 0x12u);
              }

              v29 = 0;
              v26 = 14;
            }
          }

          else
          {
            v25 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,isHashMatch,cmam,matched}", buf, 0x12u);
            }

            v26 = 1;
          }

          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p[0]);
          }

          if (v26 != 14 && v26)
          {
            v44 = 1;
            goto LABEL_98;
          }
        }

        else
        {

          v27 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#sa_util,isHashMatch,cmam_text nil}", buf, 0x12u);
          }
        }

        ++v12;
      }

      while (v11 != v12);
      v45 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v47 = "{msg%{public}.0s:#sa_util,isHashMatch,noMatch}";
        goto LABEL_96;
      }
    }

    else
    {
      v45 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v47 = "{msg%{public}.0s:#sa_util,isHashMatch,invalidInfoCount,noMatch}";
LABEL_96:
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v47, buf, 0x12u);
      }
    }

    v44 = 0;
LABEL_98:
  }

  else
  {
    v43 = SALogObjectGeneral;
    v44 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,isHashMatch,noInfoFound,noMatch}", buf, 0x12u);
      v44 = 0;
    }
  }

LABEL_100:
  return v44;
}

void sub_1000BCB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void SACommonUtils::getAnyCmam(uint64_t *__return_ptr a1@<X8>, SACommonUtils *this@<X0>)
{
  v3 = this;
  v4 = v3;
  if (v3)
  {
    v5 = [(SACommonUtils *)v3 objectForKey:@"info"];
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,#warning,getAnyCmamFailed,invalidInfo}", buf, 0x12u);
      }

      sub_1000060C4(a1, "");
LABEL_25:

      goto LABEL_26;
    }

    v6 = v5;
    v7 = [v6 count];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = [v6 objectAtIndexedSubscript:i];
        v10 = [v9 objectForKey:@"CMAMtext"];

        if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v10, [v6 objectAtIndexedSubscript:i], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", @"CMAMlongtext"), v10 = objc_claimAutoreleasedReturnValue(), v11, v10) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          sub_1000060C4(a1, [v10 UTF8String]);

          goto LABEL_24;
        }
      }

      v12 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v13 = "{msg%{public}.0s:#sa_util,#warning,getAnyCmamFailed,noCmamFound}";
    }

    else
    {
      v12 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v13 = "{msg%{public}.0s:#sa_util,#warning,getAnyCmamFailed,invalidInfoCount}";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x12u);
LABEL_22:
    sub_1000060C4(a1, "");
LABEL_24:

    goto LABEL_25;
  }

  v15 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,#warning,getAnyCmamFailed,dictionaryIsEmpty}", buf, 0x12u);
  }

  sub_1000060C4(a1, "");
LABEL_26:
}

void SACommonUtils::getLongestCmam(uint64_t *__return_ptr a1@<X8>, SACommonUtils *this@<X0>)
{
  v3 = this;
  v4 = v3;
  if (v3)
  {
    v5 = [(SACommonUtils *)v3 objectForKey:@"info"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = v5;
      v7 = [v6 count];
      if (v7)
      {
        v8 = 0;
        while (1)
        {
          v9 = [v6 objectAtIndexedSubscript:v8];
          v10 = [v9 objectForKey:@"CMAMlongtext"];

          if (v10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }
          }

          if (v7 == ++v8)
          {
            v11 = 0;
            while (1)
            {
              v12 = [v6 objectAtIndexedSubscript:v11];
              v10 = [v12 objectForKey:@"CMAMtext"];

              if (v10)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  goto LABEL_25;
                }
              }

              if (v7 == ++v11)
              {
                v13 = SALogObjectGeneral;
                if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_24;
                }

                v17 = 68289026;
                v18 = 0;
                v19 = 2082;
                v20 = "";
                v14 = "{msg%{public}.0s:#sa_util,#warning,getLongestCmam,noCmamFound}";
                goto LABEL_23;
              }
            }
          }
        }

LABEL_25:
        sub_1000060C4(a1, [v10 UTF8String]);
      }

      else
      {
        v13 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 68289026;
          v18 = 0;
          v19 = 2082;
          v20 = "";
          v14 = "{msg%{public}.0s:#sa_util,#warning,getLongestCmam,invalidInfoCount}";
LABEL_23:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v17, 0x12u);
        }

LABEL_24:
        sub_1000060C4(a1, "");
      }
    }

    else
    {
      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,#warning,getLongestCmam,invalidInfo}", &v17, 0x12u);
      }

      sub_1000060C4(a1, "");
    }
  }

  else
  {
    v16 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,#warning,getLongestCmam,dictionaryIsEmpty}", &v17, 0x12u);
    }

    sub_1000060C4(a1, "");
  }
}

uint64_t SACommonUtils::getStringFromDictionary(void *a1, uint64_t a2, std::string *a3)
{
  v4 = [a1 objectForKey:a2];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    sub_10001D128(a3, [v4 UTF8String]);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void SACommonUtils::getWEAHandling(void *a1, std::string *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"info"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      memset(&__str, 0, sizeof(__str));
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v26 count:16];
      if (v7)
      {
        v8 = *v16;
        while (2)
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v15 + 1) + 8 * v9);
            if (v10)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (SACommonUtils::getStringFromDictionary(v10, @"WEAHandling", &__str))
                {
                  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    size = __str.__r_.__value_.__l.__size_;
                  }

                  if (size)
                  {
                    std::string::operator=(a2, &__str);
                    v13 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v14 = a2;
                      }

                      else
                      {
                        v14 = a2->__r_.__value_.__r.__words[0];
                      }

                      *buf = 68289283;
                      v21 = 0;
                      v22 = 2082;
                      v23 = "";
                      v24 = 2081;
                      v25 = v14;
                      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,getWEAHandling, weaHandling:%{private, location:escape_only}s}", buf, 0x1Cu);
                    }

                    goto LABEL_26;
                  }
                }
              }
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v6 countByEnumeratingWithState:&v15 objects:v26 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,getWEAHandling,keyword not found}", buf, 0x12u);
      }

LABEL_26:

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
    }
  }
}

void sub_1000BD6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SACommonUtils::getWeaHandlingType(unint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if ((v2 & 0x80000000) == 0)
  {
    result = 0;
    if (v2 <= 0xBu)
    {
      if (v2 != 5)
      {
        if (v2 != 8)
        {
          if (v2 != 10)
          {
            return result;
          }

          goto LABEL_12;
        }

        goto LABEL_50;
      }

LABEL_36:
      v11 = *v1;
      v12 = *(v1 + 4);
      if (v11 == 1700949313 && v12 == 114)
      {
        return 2;
      }

      return 0;
    }

    if (v2 != 12)
    {
      if (v2 == 13)
      {
        if (*v1 ^ 0x532063696C627550 | *(v1 + 5) ^ 0x7974656661532063)
        {
          return 0;
        }

        else
        {
          return 5;
        }
      }

      if (v2 != 15)
      {
        return result;
      }

LABEL_26:
      v8 = *v1;
      v9 = *(v1 + 7);
      if (v8 == 0x746E656E696D6D49 && v9 == 0x7461657268542074)
      {
        return 3;
      }

      return 0;
    }

LABEL_43:
    v14 = *v1;
    v15 = *(v1 + 8);
    return v14 == 0x6E65646973657250 && v15 == 1818323316;
  }

  result = 0;
  v4 = *(v1 + 8);
  if (v4 > 11)
  {
    switch(v4)
    {
      case 12:
        v1 = *v1;
        goto LABEL_43;
      case 13:
        v21 = *v1;
        v22 = *v21;
        v23 = *(v21 + 5);
        if (v22 == 0x532063696C627550 && v23 == 0x7974656661532063)
        {
          return 5;
        }

        return 0;
      case 15:
        v1 = *v1;
        goto LABEL_26;
    }
  }

  else
  {
    switch(v4)
    {
      case 5:
        v1 = *v1;
        goto LABEL_36;
      case 8:
        v1 = *v1;
LABEL_50:
        v17 = bswap64(*v1);
        v18 = v17 >= 0x5745412054657374;
        v19 = v17 > 0x5745412054657374;
        v20 = !v18;
        if (v19 == v20)
        {
          return 6;
        }

        else
        {
          return 0;
        }

      case 10:
        v1 = *v1;
LABEL_12:
        v5 = *v1;
        v6 = *(v1 + 8);
        if (v5 == 0x6175716874726145 && v6 == 25963)
        {
          return 4;
        }

        return 0;
    }
  }

  return result;
}

id SACommonUtils::SACommonGetRunLoop(SACommonUtils *this)
{
  v1 = +[NSRunLoop currentRunLoop];
  v2 = [v1 getCFRunLoop];

  return v2;
}

uint64_t SACommonUtils::isLivabiltyEnabled(SACommonUtils *this)
{
  if (*(sub_100042820() + 321))
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

uint64_t SACommonUtils::weightedMedian(char **a1, float **a2, _DWORD *a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4 || (v6 = *a2, v7 = a2[1], *a2 == v7))
  {
    v18 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v19 = *a2 == a2[1];
    v22 = 68289539;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 1025;
    LODWORD(v27[0]) = v5 == v4;
    WORD2(v27[0]) = 1025;
    *(v27 + 6) = v19;
    v15 = "{msg%{public}.0s:#commonUtils,weightedMedian,#warning,empty size, isArrayEmpty:%{private}d, isWeightEmpty:%{private}d}";
LABEL_13:
    v16 = v18;
    v17 = 30;
    goto LABEL_14;
  }

  v8 = v7 - v6;
  v9 = v4 - v5;
  if (v7 - v6 != v9)
  {
    v18 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v22 = 68289539;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 1025;
    LODWORD(v27[0]) = v9 >> 2;
    WORD2(v27[0]) = 1025;
    *(v27 + 6) = v8 >> 2;
    v15 = "{msg%{public}.0s:#commonUtils,weightedMedian,#warning,unequal size, arraySize:%{private}d, weightsSize:%{private}d}";
    goto LABEL_13;
  }

  v10 = 0.0;
  do
  {
    v11 = *v6++;
    v10 = v10 + v11;
  }

  while (v6 != v7);
  v12 = v10;
  v13 = v12;
  if (fabs(v12 + -1.0) > 0.001)
  {
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v22 = 68289283;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2049;
      *v27 = v13;
      v15 = "{msg%{public}.0s:#commonUtils,weightedMedian,#warning,sumWeights invalid, sumWeights:%{private}.4f}";
      v16 = v14;
      v17 = 28;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v15, &v22, v17);
    }

    return 0;
  }

  if (v8 != 4)
  {
    operator new();
  }

  *a3 = *v5;
  return 1;
}

void sub_1000BDE98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL SACommonUtils::didRebootSince(SACommonUtils *this, double a2)
{
  v3 = mach_continuous_time();
  v4 = sub_1000B1880(v3);
  return (time(0) - v4 + -978307200.0) >= a2;
}

uint64_t SACommonUtils::currentHourOfDay(SACommonUtils *this)
{
  v4 = 0;
  v1 = CFCalendarCopyCurrent();
  Current = CFAbsoluteTimeGetCurrent();
  CFCalendarDecomposeAbsoluteTime(v1, Current, "H", &v4);
  if (v1)
  {
    CFRelease(v1);
  }

  return v4;
}

void SACommonUtils::convertDictionaryToString(void **__return_ptr a1@<X8>, SACommonUtils *this@<X0>)
{
  v3 = this;
  sub_1000060C4(a1, "{}");
  if (v3)
  {
    v12 = 0;
    v4 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v12];
    v5 = v12;
    if (v5 || !v4)
    {
      v10 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2113;
        *&buf[20] = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#commonUtils,convertDictionaryToString, error:%{private, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    else
    {
      v6 = [[NSString alloc] initWithData:v4 encoding:4];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
        sub_1000060C4(buf, [v7 UTF8String]);
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *a1 = *buf;
        a1[2] = *&buf[16];
      }

      else
      {
        v11 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#commonUtils,convertDictionaryToString,str nil}", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#commonUtils,convertDictionaryToString,dict nil}", buf, 0x12u);
    }
  }
}

void sub_1000BE1DC(_Unwind_Exception *a1)
{
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

id SACommonUtils::convertStringToDictionary(uint64_t *a1)
{
  v1 = a1;
  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v2 = [NSData dataWithBytes:v1 length:?];
    v3 = sub_1000BE350(v2);

    goto LABEL_10;
  }

  if (a1[1])
  {
    v1 = *a1;
    goto LABEL_6;
  }

LABEL_7:
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#commonUtils,convertStringToDictionary,empty string}", v6, 0x12u);
  }

  v3 = 0;
LABEL_10:

  return v3;
}

id sub_1000BE350(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v9 = 0;
    v2 = [NSJSONSerialization JSONObjectWithData:v1 options:1 error:&v9];
    v3 = v9;
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 == 0;
    }

    if (v4)
    {
      v5 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v11 = 0;
        v12 = 2082;
        v13 = "";
        v14 = 2113;
        v15 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#commonUtils,convertStringToDictionary, error:%{private, location:escape_only}@}", buf, 0x1Cu);
      }

      v7 = 0;
    }

    else
    {
      [v2 enumerateKeysAndObjectsUsingBlock:&stru_10013FBB0];
      v7 = v2;
    }
  }

  else
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#commonUtils,convertStringToDictionary,null data}", buf, 0x12u);
    }

    v7 = 0;
  }

  return v7;
}

id SACommonUtils::getDictionaryFromJsonFile(uint64_t *a1)
{
  v1 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v2 = [NSString stringWithUTF8String:v1];
    v3 = [NSData dataWithContentsOfFile:v2];

    v4 = sub_1000BE350(v3);

    goto LABEL_10;
  }

  if (a1[1])
  {
    v1 = *a1;
    goto LABEL_6;
  }

LABEL_7:
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#commonUtils,getDictionaryFromJsonFile,invalidFilename}", v7, 0x12u);
  }

  v4 = 0;
LABEL_10:

  return v4;
}

BOOL SACommonUtils::convertHexToChar(uint64_t **a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (a3 < v4 >> 1)
  {
    v6 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v27 = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 1025;
      v32 = a3;
      v33 = 2049;
      v34 = v4;
      v8 = "{msg%{public}.0s:#commonUtils,convertHexToChar,invalid len, len:%{private}d, hex.size():%{private}llu}";
      v9 = v6;
      v10 = 34;
      goto LABEL_7;
    }

    return result;
  }

  *a4 = 0;
  v11 = *(a1 + 23);
  v12 = a1[1];
  if ((v11 & 0x80000000) == 0)
  {
    v12 = *(a1 + 23);
  }

  if (!v12)
  {
    v23 = 0;
LABEL_31:
    *a4 = v23;
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v15 = v11 >> 63;
  v16 = 2;
  while (1)
  {
    v17 = *a1;
    if ((v15 & 1) == 0)
    {
      v17 = a1;
    }

    if (*(v17 + v13) - 48 >= 0xA)
    {
      if (*(v17 + v13) - 97 >= 6)
      {
        if (*(v17 + v13) - 65 >= 6)
        {
          v26 = SALogObjectGeneral;
          result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          goto LABEL_36;
        }

        v18 = -55;
      }

      else
      {
        v18 = -87;
      }
    }

    else
    {
      v18 = -48;
    }

    v19 = *(v17 + v13);
    v20 = v16 - 1;
    if (*(v17 + v16 - 1) - 48 >= 0xA)
    {
      break;
    }

    v21 = -48;
LABEL_26:
    v22 = (*(v17 + v20) + v21) | (16 * (v19 + v18));
    v23 = v14 + 1;
    *(a2 + v14) = v22;
    v13 = v16;
    v24 = *(a1 + 23);
    v15 = v24 >> 63;
    if ((v24 & 0x80000000) != 0)
    {
      v24 = a1[1];
    }

    v25 = v24 > v16;
    v16 += 2;
    v14 = v23;
    if (!v25)
    {
      goto LABEL_31;
    }
  }

  if (*(v17 + v20) - 97 < 6)
  {
    v21 = -87;
    goto LABEL_26;
  }

  if (*(v17 + v20) - 65 < 6)
  {
    v21 = -55;
    goto LABEL_26;
  }

  v26 = SALogObjectGeneral;
  result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    return result;
  }

LABEL_36:
  v27 = 68289026;
  v28 = 0;
  v29 = 2082;
  v30 = "";
  v8 = "{msg%{public}.0s:#commonUtils,convertHexToChar,error}";
  v9 = v26;
  v10 = 18;
LABEL_7:
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v27, v10);
  return 0;
}

uint64_t SACommonUtils::convertCharToHex(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = 0;
    v6 = a2;
    do
    {
      v7 = 1;
      do
      {
        v8 = *(a1 + v5);
        v9 = v7;
        v10 = v8 >> 4;
        v11 = v8 & 0xF;
        if (v9)
        {
          v11 = v10;
        }

        if (v11 > 9)
        {
          v12 = v11 + 87;
        }

        else
        {
          v12 = v11 | 0x30;
        }

        sub_1000BEA20(a3, v12, &v14);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = v14;
        *(a3 + 16) = v15;
        v7 = 0;
      }

      while ((v9 & 1) != 0);
      ++v5;
    }

    while (v5 != v6);
  }

  return 1;
}

char *sub_1000BEA20@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = sub_100038F64(a3, v5 + 1);
  if (result[23] >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

uint64_t SACommonUtils::copyDataAndReturnNewLen(SACommonUtils *this, void *a2, const void *a3, unsigned int a4, size_t __n, _DWORD *a6, unsigned int *a7)
{
  if (this && a2 && (v7 = __n, __n <= a4) && *a6 + __n <= a3)
  {
    memcpy(this, a2, __n);
    result = (*a6 + v7);
    *a6 = result;
  }

  else
  {
    v10 = SALogObjectGeneral;
    v11 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v11)
    {
      v12[0] = 68289026;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,copyDataAndReturnNewLen invalid data}", v12, 0x12u);
      return 0;
    }
  }

  return result;
}

void SACommonUtils::getStringValue(uint64_t *__return_ptr a1@<X8>, SACommonUtils *this@<X0>)
{
  v3 = this;
  v4 = v3;
  if (v3)
  {
    sub_1000060C4(a1, [(SACommonUtils *)v3 UTF8String]);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t SACommonUtils::readDoubleFromKey(SACommonUtils *this, objc_object *a2, NSString *a3, double *a4)
{
  v6 = this;
  v7 = a2;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(SACommonUtils *)v6 objectForKey:v7];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v9 doubleValue];
      v11 = v10;
      *a3 = v10;
      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2049;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,readFloat,value, value:%{private}0.3f}", &v17, 0x1Cu);
      }

      v13 = 1;
    }

    else
    {
      v15 = SALogObjectGeneral;
      v13 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,readFloat,keyIdObjectFailed}", &v17, 0x12u);
        v13 = 0;
      }
    }
  }

  else
  {
    v14 = SALogObjectGeneral;
    v13 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,invalid dictionary or Key}", &v17, 0x12u);
      v13 = 0;
    }
  }

  return v13;
}

uint64_t SACommonUtils::readArrayFromKey(void *a1, void *a2, unsigned int *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (v7 && v8 && a4)
  {
    v10 = [v7 objectForKey:v8];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = v10;
      v12 = v11;
      *a4 = v12;
      v13 = [v12 count];
      *a3 = v13;
      v14 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 68289283;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2049;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,arrayLen,size, arrayLen:%{private}lu}", &v19, 0x1Cu);
      }

      v15 = 1;
    }

    else
    {
      v17 = SALogObjectGeneral;
      v15 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 68289026;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,invalid_keyId}", &v19, 0x12u);
        v15 = 0;
      }
    }
  }

  else
  {
    v16 = SALogObjectGeneral;
    v15 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 68289026;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,invalid dictionary or Key}", &v19, 0x12u);
      v15 = 0;
    }
  }

  return v15;
}

BOOL SACommonUtils::readIntegerListFromKey(void *a1, void *a2, unsigned int *a3, const void **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  v40 = v7;
  if (v7 && v8)
  {
    v38 = v8;
    v10 = [v7 objectForKey:v8];
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v42 = 0;
        v43 = 2082;
        v44 = "";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,Array read failed}", buf, 0x12u);
      }
    }

    v12 = v10;
    v13 = [v12 count];
    *a3 = v13;
    v39 = v13 != 0;
    if (v13)
    {
      v14 = 0;
      while (1)
      {
        v15 = [v12 objectAtIndex:v14];
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }
        }

        v21 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          v42 = 0;
          v43 = 2082;
          v44 = "";
          v45 = 2049;
          v46[0] = v14;
          v22 = v21;
          v23 = "{msg%{public}.0s:#SACommonUtils,index, i:%{private}lu}";
          v24 = 28;
LABEL_27:
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
        }

LABEL_28:

        if (++v14 >= *a3)
        {
          goto LABEL_34;
        }
      }

      v16 = [v15 intValue];
      v17 = v16;
      v19 = a4[1];
      v18 = a4[2];
      if (v19 >= v18)
      {
        v25 = *a4;
        v26 = v19 - *a4;
        v27 = v26 >> 2;
        v28 = (v26 >> 2) + 1;
        if (v28 >> 62)
        {
          sub_10000509C();
        }

        v29 = v18 - v25;
        if (v29 >> 1 > v28)
        {
          v28 = v29 >> 1;
        }

        v30 = v29 >= 0x7FFFFFFFFFFFFFFCLL;
        v31 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v30)
        {
          v31 = v28;
        }

        if (v31)
        {
          sub_10001CF60(a4, v31);
        }

        *(4 * v27) = v16;
        v20 = (4 * v27 + 4);
        memcpy(0, v25, v26);
        v32 = *a4;
        *a4 = 0;
        a4[1] = v20;
        a4[2] = 0;
        if (v32)
        {
          operator delete(v32);
        }

        v9 = v38;
      }

      else
      {
        *v19 = v16;
        v20 = v19 + 4;
      }

      a4[1] = v20;
      v33 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v34 = (v20 - *a4) >> 2;
      *buf = 68289539;
      v42 = 0;
      v43 = 2082;
      v44 = "";
      v45 = 1025;
      LODWORD(v46[0]) = v17;
      WORD2(v46[0]) = 2049;
      *(v46 + 6) = v34;
      v22 = v33;
      v23 = "{msg%{public}.0s:#SACommonUtils,value, tempValue:%{private}d, valueSize:%{private}lu}";
      v24 = 34;
      goto LABEL_27;
    }

    v36 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v42 = 0;
      v43 = 2082;
      v44 = "";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,data array empty}", buf, 0x12u);
    }

LABEL_34:
  }

  else
  {
    v35 = SALogObjectGeneral;
    v39 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v42 = 0;
      v43 = 2082;
      v44 = "";
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,invalid dictionary or Key}", buf, 0x12u);
      v39 = 0;
    }
  }

  return v39;
}

BOOL SACommonUtils::readStringListFromKey(void *a1, void *a2, unsigned int *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v32 = v8;
  v33 = v7;
  if (v7 && v8)
  {
    v9 = [v7 objectForKey:v8];
    if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v28 = SALogObjectGeneral;
      v13 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v35 = 2082;
        v36 = "";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,invalid_keyId}", buf, 0x12u);
        v13 = 0;
      }

      goto LABEL_28;
    }

    v31 = a4;
    v11 = v9;
    v12 = [v11 count];
    *a3 = v12;
    v13 = v12 != 0;
    v14 = SALogObjectGeneral;
    v15 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (!v15 || (*buf = 68289283, *&buf[4] = 0, v35 = 2082, v36 = "", v37 = 1025, LODWORD(v38) = v12, _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,, numberOfItemsInArray:%{private}d}", buf, 0x18u), *a3))
      {
        v17 = 0;
        *&v16 = 68289283;
        v30 = v16;
        do
        {
          v18 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            v35 = 2082;
            v36 = "";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,channelNameArray}", buf, 0x12u);
          }

          v19 = [v11 objectAtIndex:{v17, v30}];
          if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v20 = v19;
            sub_1000060C4(buf, [v19 UTF8String]);
            sub_1000048B8(v31, buf);
            if (SBYTE3(v38) < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            v21 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v30;
              *&buf[4] = 0;
              v35 = 2082;
              v36 = "";
              v37 = 2049;
              v38 = v17;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,channel, i:%{private}lu}", buf, 0x1Cu);
            }
          }

          v9 = v10;
          ++v17;
        }

        while (v17 < *a3);
      }

      v22 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v23 = 0xAAAAAAAAAAAAAAABLL * ((v31[1] - *v31) >> 3);
      *buf = 68289283;
      *&buf[4] = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2049;
      v38 = v23;
      v24 = "{msg%{public}.0s:#SACommonUtils,channel, size:%{private}lu}";
      v25 = v22;
      v26 = 28;
    }

    else
    {
      if (!v15)
      {
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      v35 = 2082;
      v36 = "";
      v24 = "{msg%{public}.0s:#warning,#SACommonUtils,data array empty}";
      v25 = v14;
      v26 = 18;
    }

    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    goto LABEL_27;
  }

  v27 = SALogObjectGeneral;
  v13 = 0;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v35 = 2082;
    v36 = "";
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,invalid dictionary or Key}", buf, 0x12u);
    v13 = 0;
  }

LABEL_29:

  return v13;
}

void SACommonUtils::getDistanceString(const char *a1@<X0>, int a2@<W1>, void *a3@<X8>, double a4@<D0>)
{
  if (a4 < 0.0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v8 = [NSMeasurement alloc];
  v9 = +[NSUnitLength meters];
  v10 = [v8 initWithDoubleValue:v9 unit:a4];

  if (!v10)
  {
    sub_100039774(v41);
    v12 = std::ostream::operator<<();
    sub_1000C1BC0(v12);
    if ((v52 & 0x10) != 0)
    {
      v18 = v51;
      if (v51 < v48)
      {
        v51 = v48;
        v18 = v48;
      }

      v19 = __src;
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v13 = 0;
        *(a3 + 23) = 0;
LABEL_35:
        *(a3 + v13) = 0;
        v42 = v24;
        if (v50 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v44);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_87;
      }

      v19 = v45;
      v18 = v46;
    }

    v13 = v18 - v19;
    if (v18 - v19 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100004D90();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = v13;
    if (v13)
    {
      memmove(a3, v19, v13);
    }

    goto LABEL_35;
  }

  if (a2)
  {
    +[NSUnitLength kilometers];
  }

  else
  {
    +[NSUnitLength miles];
  }
  v11 = ;
  v14 = [v10 measurementByConvertingToUnit:v11];

  if (!v14)
  {
    sub_100039774(v41);
    v16 = std::ostream::operator<<();
    sub_1000C1BC0(v16);
    if ((v52 & 0x10) != 0)
    {
      v22 = v51;
      if (v51 < v48)
      {
        v51 = v48;
        v22 = v48;
      }

      v23 = __src;
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v17 = 0;
        *(a3 + 23) = 0;
LABEL_50:
        *(a3 + v17) = 0;
        v42 = v27;
        if (v50 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v44);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_86;
      }

      v23 = v45;
      v22 = v46;
    }

    v17 = v22 - v23;
    if (v22 - v23 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100004D90();
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = v17;
    if (v17)
    {
      memmove(a3, v23, v17);
    }

    goto LABEL_50;
  }

  v15 = objc_alloc_init(NSMeasurementFormatter);
  if (!v15)
  {
    sub_100039774(v41);
    v20 = std::ostream::operator<<();
    sub_1000C1BC0(v20);
    if ((v52 & 0x10) != 0)
    {
      v25 = v51;
      if (v51 < v48)
      {
        v51 = v48;
        v25 = v48;
      }

      v26 = __src;
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v21 = 0;
        *(a3 + 23) = 0;
LABEL_60:
        *(a3 + v21) = 0;
        v42 = v28;
        if (v50 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v44);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_85;
      }

      v26 = v45;
      v25 = v46;
    }

    v21 = v25 - v26;
    if (v25 - v26 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100004D90();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = v21;
    if (v21)
    {
      memmove(a3, v26, v21);
    }

    goto LABEL_60;
  }

  if (a1[23] < 0)
  {
    if (*(a1 + 1))
    {
      a1 = *a1;
    }

    else
    {
      a1 = "en-US";
    }
  }

  else if (!a1[23])
  {
    a1 = "en-US";
  }

  v29 = [NSLocale alloc];
  v30 = [NSString stringWithUTF8String:a1];
  v31 = [v29 initWithLocaleIdentifier:v30];
  [v15 setLocale:v31];

  [v15 setUnitOptions:1];
  v32 = objc_alloc_init(NSNumberFormatter);
  v33 = v32;
  if (v32)
  {
    [v32 setRoundingMode:0];
    [v33 setMaximumFractionDigits:0];
    [v15 setNumberFormatter:v33];
  }

  v34 = [v15 stringFromMeasurement:v14];
  v35 = v34;
  if (!v34)
  {
    sub_100039774(v41);
    v36 = std::ostream::operator<<();
    sub_1000C1BC0(v36);
    if ((v52 & 0x10) != 0)
    {
      v38 = v51;
      if (v51 < v48)
      {
        v51 = v48;
        v38 = v48;
      }

      v39 = __src;
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v37 = 0;
        *(a3 + 23) = 0;
LABEL_81:
        *(a3 + v37) = 0;
        v42 = v40;
        if (v50 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v44);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_84;
      }

      v39 = v45;
      v38 = v46;
    }

    v37 = v38 - v39;
    if (v38 - v39 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100004D90();
    }

    if (v37 >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = v37;
    if (v37)
    {
      memmove(a3, v39, v37);
    }

    goto LABEL_81;
  }

  sub_1000060C4(a3, [v34 UTF8String]);
LABEL_84:

LABEL_85:
LABEL_86:

LABEL_87:
}

uint64_t sub_1000C0634(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v145 = *(v8 + 2);
          v146 = *v8;
          v147 = v8[3];
          v148 = v8[1];
          if (v145 == *v8)
          {
            v149 = v147 < v148;
          }

          else
          {
            v149 = v145 < *v8;
          }

          v150 = *(a2 - 2);
          v151 = *(a2 - 1);
          v152 = v151 < v147;
          if (v150 != v145)
          {
            v152 = v150 < v145;
          }

          if (!v149)
          {
            if (!v152)
            {
              return result;
            }

            *(v8 + 2) = v150;
            *(a2 - 2) = v145;
            v8[3] = v151;
            *(a2 - 1) = v147;
            v131 = *(v8 + 2);
            v139 = *v8;
            v133 = v8[3];
            goto LABEL_271;
          }

          if (v152)
          {
            *v8 = v150;
            *(a2 - 2) = v146;
            v8[1] = v151;
          }

          else
          {
            *v8 = v145;
            v8[2] = v146;
            v8[1] = v147;
            v8[3] = v148;
            v216 = *(a2 - 2);
            v217 = *(a2 - 1);
            v218 = v217 < v148;
            if (v216 != LODWORD(v146))
            {
              v218 = v216 < SLODWORD(v146);
            }

            if (!v218)
            {
              return result;
            }

            *(v8 + 2) = v216;
            *(a2 - 2) = v146;
            v8[3] = v217;
          }

          *(a2 - 1) = v148;
          return result;
        case 4:

          return sub_1000C14B4(v8, v8 + 2, v8 + 4, a2 - 2);
        case 5:
          result = sub_1000C14B4(v8, v8 + 2, v8 + 4, v8 + 6);
          v126 = *(a2 - 2);
          v127 = *(v8 + 6);
          v128 = *(a2 - 1);
          v129 = v8[7];
          v130 = v128 < v129;
          if (v126 != v127)
          {
            v130 = v126 < v127;
          }

          if (!v130)
          {
            return result;
          }

          *(v8 + 6) = v126;
          *(a2 - 2) = v127;
          v8[7] = v128;
          *(a2 - 1) = v129;
          v131 = *(v8 + 6);
          v132 = *(v8 + 4);
          v133 = v8[7];
          v134 = v8[5];
          v135 = v133 < v134;
          if (v131 != v132)
          {
            v135 = v131 < v132;
          }

          if (!v135)
          {
            return result;
          }

          *(v8 + 4) = v131;
          *(v8 + 6) = v132;
          v8[5] = v133;
          v8[7] = v134;
          v136 = *(v8 + 2);
          v137 = v8[3];
          v138 = v133 < v137;
          if (v131 != v136)
          {
            v138 = v131 < v136;
          }

          if (!v138)
          {
            return result;
          }

          *(v8 + 2) = v131;
          *(v8 + 4) = v136;
          v8[3] = v133;
          v8[5] = v137;
          v139 = *v8;
LABEL_271:
          v204 = v8[1];
          v205 = v133 < v204;
          if (v131 != LODWORD(v139))
          {
            v205 = v131 < SLODWORD(v139);
          }

          if (v205)
          {
            *v8 = v131;
            v8[2] = v139;
            v8[1] = v133;
            v8[3] = v204;
          }

          return result;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v140 = *(a2 - 2);
        v141 = *v8;
        v142 = *(a2 - 1);
        v143 = v8[1];
        v144 = v142 < v143;
        if (v140 != LODWORD(v141))
        {
          v144 = v140 < *v8;
        }

        if (v144)
        {
          *v8 = v140;
          *(a2 - 2) = v141;
          v8[1] = v142;
          *(a2 - 1) = v143;
        }

        return result;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v167 = (v9 - 2) >> 1;
      v168 = v167;
      do
      {
        v169 = v168;
        if (v167 >= v168)
        {
          v170 = (2 * v168) | 1;
          v171 = &v8[2 * v170];
          if (2 * v169 + 2 >= v9)
          {
            v172 = *v171;
          }

          else
          {
            v172 = *(v171 + 2);
            v173 = v171[1] < v171[3];
            result = *v171 < v172;
            if (*v171 != v172)
            {
              v173 = *v171 < v172;
            }

            if (v173)
            {
              v171 += 2;
              v170 = 2 * v169 + 2;
            }

            else
            {
              v172 = *v171;
            }
          }

          v174 = &v8[2 * v169];
          v175 = *v174;
          v176 = v171[1];
          v177 = v174[1];
          v178 = v176 < v177;
          if (v172 != *v174)
          {
            v178 = v172 < *v174;
          }

          if (!v178)
          {
            do
            {
              *v174 = v172;
              v174[1] = v176;
              v174 = v171;
              if (v167 < v170)
              {
                break;
              }

              v179 = (2 * v170) | 1;
              v171 = &v8[2 * v179];
              v170 = 2 * v170 + 2;
              if (v170 >= v9)
              {
                v172 = *v171;
                v170 = v179;
              }

              else
              {
                v172 = *(v171 + 2);
                result = *v171;
                v180 = v171[1] < v171[3];
                if (result != v172)
                {
                  v180 = result < v172;
                }

                if (v180)
                {
                  v171 += 2;
                }

                else
                {
                  v172 = *v171;
                  v170 = v179;
                }
              }

              v176 = v171[1];
              v181 = v176 < v177;
              if (v172 != v175)
              {
                v181 = v172 < v175;
              }
            }

            while (!v181);
            *v174 = v175;
            v174[1] = v177;
          }
        }

        v168 = v169 - 1;
      }

      while (v169);
      while (2)
      {
        v182 = 0;
        v183 = *v8;
        v184 = v8[1];
        v185 = v8;
        do
        {
          v186 = &v185[2 * v182];
          v187 = v186 + 2;
          v188 = (2 * v182) | 1;
          v182 = 2 * v182 + 2;
          if (v182 >= v9)
          {
            v190 = *v187;
            v182 = v188;
          }

          else
          {
            v191 = *(v186 + 4);
            v189 = v186 + 4;
            v190 = v191;
            v192 = *(v189 - 2);
            v193 = v192 < v191;
            if (v192 == v191)
            {
              result = *(v189 - 1) < v189[1];
            }

            else
            {
              result = v193;
            }

            if (result)
            {
              v187 = v189;
            }

            else
            {
              v190 = *(v189 - 2);
              v182 = v188;
            }
          }

          *v185 = v190;
          v185[1] = v187[1];
          v185 = v187;
        }

        while (v182 <= ((v9 - 2) >> 1));
        if (v187 != a2 - 2)
        {
          *v187 = *(a2 - 2);
          v187[1] = *(a2 - 1);
          *(a2 - 2) = v183;
          *(a2 - 1) = v184;
          v194 = (v187 - v8 + 8) >> 3;
          v195 = v194 < 2;
          v196 = v194 - 2;
          if (!v195)
          {
            v197 = v196 >> 1;
            v198 = &v8[2 * v197];
            v199 = *v198;
            v200 = *v187;
            v201 = v198[1];
            v184 = v187[1];
            v202 = v201 < v184;
            if (*v198 != *v187)
            {
              v202 = *v198 < *v187;
            }

            if (v202)
            {
              do
              {
                *v187 = v199;
                v187[1] = v201;
                v187 = v198;
                if (!v197)
                {
                  break;
                }

                v197 = (v197 - 1) >> 1;
                v198 = &v8[2 * v197];
                v199 = *v198;
                v201 = v198[1];
                v203 = v201 < v184;
                if (*v198 != v200)
                {
                  v203 = *v198 < v200;
                }
              }

              while (v203);
              *v187 = v200;
LABEL_265:
              v187[1] = v184;
            }
          }

          a2 -= 2;
          v195 = v9-- <= 2;
          if (v195)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v187 = v183;
      goto LABEL_265;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 2);
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      v15 = v10[1];
      v16 = v8[1];
      v17 = *v10 < *v8;
      if (*v10 == *v8)
      {
        v17 = v15 < v16;
      }

      v18 = v12 < v15;
      if (v11 != LODWORD(v13))
      {
        v18 = v11 < SLODWORD(v13);
      }

      if (v17)
      {
        if (v18)
        {
          *v8 = v11;
          *(a2 - 2) = v14;
          v8[1] = v12;
          goto LABEL_41;
        }

        *v8 = v13;
        *v10 = v14;
        v8[1] = v15;
        v10[1] = v16;
        v33 = *(a2 - 2);
        v34 = *(a2 - 1);
        v35 = v34 < v16;
        if (v33 != LODWORD(v14))
        {
          v35 = v33 < SLODWORD(v14);
        }

        if (v35)
        {
          *v10 = v33;
          *(a2 - 2) = v14;
          v10[1] = v34;
LABEL_41:
          *(a2 - 1) = v16;
        }
      }

      else if (v18)
      {
        *v10 = v11;
        *(a2 - 2) = v13;
        v10[1] = v12;
        *(a2 - 1) = v15;
        v25 = *v8;
        v26 = v10[1];
        v27 = v8[1];
        v28 = v26 < v27;
        if (*v10 != *v8)
        {
          v28 = *v10 < *v8;
        }

        if (v28)
        {
          *v8 = *v10;
          *v10 = v25;
          v8[1] = v26;
          v10[1] = v27;
        }
      }

      v36 = v10 - 2;
      v37 = *(v10 - 2);
      v38 = *(v8 + 2);
      v39 = *(v10 - 1);
      v40 = v8[3];
      if (v37 == v38)
      {
        v41 = v39 < v40;
      }

      else
      {
        v41 = v37 < v38;
      }

      v42 = *(a2 - 4);
      v43 = *(a2 - 3);
      v44 = v43 < v39;
      if (v42 != v37)
      {
        v44 = v42 < v37;
      }

      if (v41)
      {
        if (v44)
        {
          *(v8 + 2) = v42;
          *(a2 - 4) = v38;
          v8[3] = v43;
          goto LABEL_64;
        }

        *(v8 + 2) = v37;
        *v36 = v38;
        v8[3] = v39;
        *(v10 - 1) = v40;
        v52 = *(a2 - 4);
        v53 = *(a2 - 3);
        v54 = v53 < v40;
        if (v52 != v38)
        {
          v54 = v52 < v38;
        }

        if (v54)
        {
          *v36 = v52;
          *(a2 - 4) = v38;
          *(v10 - 1) = v53;
LABEL_64:
          *(a2 - 3) = v40;
        }
      }

      else if (v44)
      {
        *v36 = v42;
        *(a2 - 4) = v37;
        *(v10 - 1) = v43;
        *(a2 - 3) = v39;
        v45 = *(v8 + 2);
        v46 = *(v10 - 1);
        v47 = v8[3];
        v48 = v46 < v47;
        if (*v36 != v45)
        {
          v48 = *v36 < v45;
        }

        if (v48)
        {
          v8[2] = *v36;
          *v36 = v45;
          v8[3] = v46;
          *(v10 - 1) = v47;
        }
      }

      v55 = v10 + 2;
      v56 = *(v10 + 2);
      v57 = *(v8 + 4);
      v58 = v10[3];
      v59 = v8[5];
      if (v56 == v57)
      {
        v60 = v58 < v59;
      }

      else
      {
        v60 = v56 < v57;
      }

      v61 = *(a2 - 6);
      v62 = *(a2 - 5);
      v63 = v62 < v58;
      if (v61 != v56)
      {
        v63 = v61 < v56;
      }

      if (v60)
      {
        if (v63)
        {
          *(v8 + 4) = v61;
          *(a2 - 6) = v57;
          v8[5] = v62;
          goto LABEL_82;
        }

        *(v8 + 4) = v56;
        *v55 = v57;
        v8[5] = v58;
        v10[3] = v59;
        v68 = *(a2 - 6);
        v69 = *(a2 - 5);
        v70 = v69 < v59;
        if (v68 != v57)
        {
          v70 = v68 < v57;
        }

        if (v70)
        {
          *v55 = v68;
          *(a2 - 6) = v57;
          v10[3] = v69;
LABEL_82:
          *(a2 - 5) = v59;
        }
      }

      else if (v63)
      {
        *v55 = v61;
        *(a2 - 6) = v56;
        v10[3] = v62;
        *(a2 - 5) = v58;
        v64 = *(v8 + 4);
        v65 = v10[3];
        v66 = v8[5];
        v67 = v65 < v66;
        if (*v55 != v64)
        {
          v67 = *v55 < v64;
        }

        if (v67)
        {
          v8[4] = *v55;
          *v55 = v64;
          v8[5] = v65;
          v10[3] = v66;
        }
      }

      v71 = *v10;
      v72 = *v36;
      v73 = v10[1];
      v74 = *(v10 - 1);
      if (*v10 == *v36)
      {
        v75 = v73 < v74;
      }

      else
      {
        v75 = *v10 < *v36;
      }

      v76 = *v55;
      v77 = v10[3];
      v78 = v77 < v73;
      if (*v55 != LODWORD(v71))
      {
        v78 = SLODWORD(v76) < SLODWORD(v71);
      }

      if (v75)
      {
        if (!v78)
        {
          *v36 = v71;
          *v10 = v72;
          v79 = SLODWORD(v76) < SLODWORD(v72);
          if (LODWORD(v76) == LODWORD(v72))
          {
            v79 = v77 < v74;
          }

          *(v10 - 1) = v73;
          v10[1] = v74;
          v36 = v10;
          v73 = v77;
          v71 = v76;
          if (!v79)
          {
            v73 = v74;
            v71 = v72;
LABEL_100:
            v81 = *v8;
            *v8 = v71;
            *v10 = v81;
            v82 = *(v8 + 1);
            v8[1] = v73;
            *(v10 + 1) = v82;
            goto LABEL_101;
          }
        }
      }

      else
      {
        if (!v78)
        {
          goto LABEL_100;
        }

        *v10 = v76;
        *v55 = v71;
        v10[1] = v77;
        v10[3] = v73;
        if (LODWORD(v76) == LODWORD(v72))
        {
          v80 = v77 < v74;
        }

        else
        {
          v80 = SLODWORD(v76) < SLODWORD(v72);
        }

        v55 = v10;
        v73 = v74;
        v71 = v72;
        if (!v80)
        {
          v73 = v77;
          v71 = v76;
          goto LABEL_100;
        }
      }

      *v36 = v76;
      *v55 = v72;
      v36[1] = v77;
      v55[1] = v74;
      goto LABEL_100;
    }

    v19 = *v8;
    v20 = *v10;
    v21 = v8[1];
    v22 = v10[1];
    v23 = *v8 < *v10;
    if (*v8 == *v10)
    {
      v23 = v21 < v22;
    }

    v24 = v12 < v21;
    if (v11 != LODWORD(v19))
    {
      v24 = v11 < SLODWORD(v19);
    }

    if (v23)
    {
      if (v24)
      {
        *v10 = v11;
        *(a2 - 2) = v20;
        v10[1] = v12;
LABEL_59:
        *(a2 - 1) = v22;
        goto LABEL_101;
      }

      *v10 = v19;
      *v8 = v20;
      v10[1] = v21;
      v8[1] = v22;
      v49 = *(a2 - 2);
      v50 = *(a2 - 1);
      v51 = v50 < v22;
      if (v49 != LODWORD(v20))
      {
        v51 = v49 < SLODWORD(v20);
      }

      if (v51)
      {
        *v8 = v49;
        *(a2 - 2) = v20;
        v8[1] = v50;
        goto LABEL_59;
      }
    }

    else if (v24)
    {
      *v8 = v11;
      *(a2 - 2) = v19;
      v8[1] = v12;
      *(a2 - 1) = v21;
      v29 = *v10;
      v30 = v8[1];
      v31 = v10[1];
      v32 = v30 < v31;
      if (*v8 != *v10)
      {
        v32 = *v8 < *v10;
      }

      if (v32)
      {
        *v10 = *v8;
        *v8 = v29;
        v10[1] = v30;
        v8[1] = v31;
      }
    }

LABEL_101:
    --a3;
    v83 = *v8;
    if (a4)
    {
      v84 = v8[1];
      goto LABEL_106;
    }

    v85 = *(v8 - 2);
    v84 = v8[1];
    v154 = v85 == LODWORD(v83);
    v86 = v85 < SLODWORD(v83);
    if (v154)
    {
      v86 = *(v8 - 1) < v84;
    }

    if (v86)
    {
LABEL_106:
      v87 = 0;
      do
      {
        v88 = v8[v87 + 2];
        v89 = v8[v87 + 3] < v84;
        if (LODWORD(v88) != LODWORD(v83))
        {
          v89 = SLODWORD(v88) < SLODWORD(v83);
        }

        v87 += 2;
      }

      while (v89);
      v90 = &v8[v87];
      v91 = a2;
      if (v87 == 2)
      {
        v91 = a2;
        do
        {
          if (v90 >= v91)
          {
            break;
          }

          v94 = *(v91 - 2);
          v91 -= 2;
          v95 = v94 < SLODWORD(v83);
          if (v94 == LODWORD(v83))
          {
            v95 = v91[1] < v84;
          }
        }

        while (!v95);
      }

      else
      {
        do
        {
          v92 = *(v91 - 2);
          v91 -= 2;
          v93 = v92 < SLODWORD(v83);
          if (v92 == LODWORD(v83))
          {
            v93 = v91[1] < v84;
          }
        }

        while (!v93);
      }

      if (v90 >= v91)
      {
        v8 = v90;
      }

      else
      {
        v96 = *v91;
        v8 = v90;
        v97 = v91;
        do
        {
          *v8 = v96;
          *v97 = v88;
          v98 = *(v8 + 1);
          v8[1] = v97[1];
          *(v97 + 1) = v98;
          do
          {
            v99 = v8[2];
            v8 += 2;
            v88 = v99;
            v100 = v8[1] < v84;
            v101 = SLODWORD(v99) < SLODWORD(v83);
            if (LODWORD(v99) != LODWORD(v83))
            {
              v100 = v101;
            }
          }

          while (v100);
          do
          {
            v102 = *(v97 - 2);
            v97 -= 2;
            v96 = v102;
            v103 = v97[1] < v84;
            v104 = v102 < SLODWORD(v83);
            if (v102 != LODWORD(v83))
            {
              v103 = v104;
            }
          }

          while (!v103);
        }

        while (v8 < v97);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        *(v7 + 4) = *(v8 - 1);
      }

      *(v8 - 2) = v83;
      *(v8 - 1) = v84;
      if (v90 < v91)
      {
        goto LABEL_137;
      }

      v105 = sub_1000C1670(v7, v8 - 2);
      result = sub_1000C1670(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v105)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v105)
      {
LABEL_137:
        result = sub_1000C0634(v7, (v8 - 2), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v106 = *(a2 - 2);
      v154 = LODWORD(v83) == v106;
      v107 = SLODWORD(v83) < v106;
      if (v154)
      {
        v107 = v84 < *(a2 - 1);
      }

      if (v107)
      {
        do
        {
          v108 = *(v8 + 2);
          v8 += 2;
          v109 = SLODWORD(v83) < v108;
          if (LODWORD(v83) == v108)
          {
            v109 = v84 < v8[1];
          }
        }

        while (!v109);
      }

      else
      {
        v110 = v8 + 2;
        do
        {
          v8 = v110;
          if (v110 >= a2)
          {
            break;
          }

          v111 = *v110;
          v112 = v84 < v8[1];
          v154 = LODWORD(v83) == v111;
          v113 = SLODWORD(v83) < v111;
          if (!v154)
          {
            v112 = v113;
          }

          v110 = v8 + 2;
        }

        while (!v112);
      }

      v114 = a2;
      if (v8 < a2)
      {
        v114 = a2;
        do
        {
          v115 = *(v114 - 2);
          v114 -= 2;
          v116 = SLODWORD(v83) < v115;
          if (LODWORD(v83) == v115)
          {
            v116 = v84 < v114[1];
          }
        }

        while (v116);
      }

      if (v8 < v114)
      {
        v117 = *v8;
        v118 = *v114;
        do
        {
          *v8 = v118;
          *v114 = v117;
          v119 = *(v8 + 1);
          v8[1] = v114[1];
          *(v114 + 1) = v119;
          do
          {
            v120 = v8[2];
            v8 += 2;
            v117 = v120;
            v121 = v84 < v8[1];
            v122 = SLODWORD(v83) < SLODWORD(v120);
            if (LODWORD(v83) != LODWORD(v120))
            {
              v121 = v122;
            }
          }

          while (!v121);
          do
          {
            v123 = *(v114 - 2);
            v114 -= 2;
            v118 = v123;
            v124 = v84 < v114[1];
            v125 = SLODWORD(v83) < v123;
            if (LODWORD(v83) != v123)
            {
              v124 = v125;
            }
          }

          while (v124);
        }

        while (v8 < v114);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        *(v7 + 4) = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v83;
      *(v8 - 1) = v84;
    }
  }

  v153 = v8 + 2;
  v154 = v8 == a2 || v153 == a2;
  v155 = v154;
  if (a4)
  {
    if ((v155 & 1) == 0)
    {
      v156 = 0;
      v157 = v8;
      do
      {
        v158 = *(v157 + 2);
        v159 = *v157;
        v160 = v157[3];
        v161 = v157[1];
        v157 = v153;
        v162 = v160 < v161;
        if (v158 != v159)
        {
          v162 = v158 < v159;
        }

        if (v162)
        {
          v163 = v156;
          while (1)
          {
            v164 = v8 + v163;
            *(v164 + 2) = v159;
            *(v164 + 3) = *(v8 + v163 + 4);
            if (!v163)
            {
              break;
            }

            v159 = *(v164 - 2);
            v165 = v160 < *(v164 - 1);
            if (v158 != v159)
            {
              v165 = v158 < v159;
            }

            v163 -= 8;
            if (!v165)
            {
              v166 = v8 + v163 + 8;
              goto LABEL_215;
            }
          }

          v166 = v8;
LABEL_215:
          *v166 = v158;
          *(v166 + 4) = v160;
        }

        v153 = v157 + 2;
        v156 += 8;
      }

      while (v157 + 2 != a2);
    }
  }

  else if ((v155 & 1) == 0)
  {
    v206 = v8 + 3;
    do
    {
      v207 = *(v7 + 8);
      v208 = *v7;
      v209 = *(v7 + 12);
      v210 = *(v7 + 4);
      v7 = v153;
      v211 = v209 < v210;
      if (v207 != LODWORD(v208))
      {
        v211 = v207 < SLODWORD(v208);
      }

      if (v211)
      {
        v212 = v206;
        do
        {
          v213 = v212;
          *(v212 - 1) = v208;
          v214 = *(v212 - 2);
          v212 -= 2;
          *v213 = v214;
          v208 = *(v213 - 5);
          v215 = v209 < *(v213 - 4);
          if (v207 != LODWORD(v208))
          {
            v215 = v207 < SLODWORD(v208);
          }
        }

        while (v215);
        *(v212 - 1) = v207;
        *v212 = v209;
      }

      v153 = (v7 + 8);
      v206 += 2;
    }

    while ((v7 + 8) != a2);
  }

  return result;
}

float *sub_1000C14B4(float *result, float *a2, float *a3, float *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = a2[1];
  v7 = result[1];
  if (*a2 == *result)
  {
    v8 = v6 < v7;
  }

  else
  {
    v8 = *a2 < *result;
  }

  v9 = *a3;
  v10 = a3[1];
  v11 = v10 < v6;
  if (*a3 != v4)
  {
    v11 = *a3 < v4;
  }

  if (v8)
  {
    if (v11)
    {
      *result = v9;
      *a3 = v5;
      result[1] = v10;
LABEL_18:
      v6 = v7;
      v4 = v5;
      a3[1] = v7;
      goto LABEL_20;
    }

    *result = v4;
    *a2 = v5;
    result[1] = v6;
    a2[1] = v7;
    v4 = *a3;
    v6 = a3[1];
    v16 = v6 < v7;
    if (*a3 != v5)
    {
      v16 = *a3 < v5;
    }

    if (v16)
    {
      *a2 = v4;
      *a3 = v5;
      a2[1] = v6;
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    *a2 = v9;
    *a3 = v4;
    a2[1] = v10;
    a3[1] = v6;
    v12 = *result;
    v13 = a2[1];
    v14 = result[1];
    v15 = v13 < v14;
    if (*a2 != *result)
    {
      v15 = *a2 < *result;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
      result[1] = v13;
      a2[1] = v14;
      v4 = *a3;
      v6 = a3[1];
    }
  }

  else
  {
    v6 = a3[1];
    v4 = *a3;
  }

LABEL_20:
  v17 = a4[1];
  v18 = v17 < v6;
  if (*a4 != v4)
  {
    v18 = *a4 < v4;
  }

  if (v18)
  {
    *a3 = *a4;
    *a4 = v4;
    a3[1] = v17;
    a4[1] = v6;
    v19 = *a2;
    v20 = a3[1];
    v21 = a2[1];
    v22 = v20 < v21;
    if (*a3 != *a2)
    {
      v22 = *a3 < *a2;
    }

    if (v22)
    {
      *a2 = *a3;
      *a3 = v19;
      a2[1] = v20;
      a3[1] = v21;
      v23 = *result;
      v24 = a2[1];
      v25 = result[1];
      v26 = v24 < v25;
      if (*a2 != *result)
      {
        v26 = *a2 < *result;
      }

      if (v26)
      {
        *result = *a2;
        *a2 = v23;
        result[1] = v24;
        a2[1] = v25;
      }
    }
  }

  return result;
}

BOOL sub_1000C1670(float *a1, float *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 2);
        v6 = *a1;
        v7 = *(a2 - 1);
        v8 = a1[1];
        v9 = v7 < v8;
        if (v5 != *a1)
        {
          v9 = v5 < *a1;
        }

        if (v9)
        {
          *a1 = v5;
          *(a2 - 2) = v6;
          a1[1] = v7;
LABEL_69:
          result = 1;
          *(a2 - 1) = v8;
          return result;
        }

        return 1;
      }

      goto LABEL_32;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      v27 = *(a1 + 2);
      v28 = *a1;
      v29 = a1[3];
      v8 = a1[1];
      if (v27 == *a1)
      {
        v30 = v29 < v8;
      }

      else
      {
        v30 = v27 < *a1;
      }

      v31 = *(a2 - 2);
      v32 = *(a2 - 1);
      v33 = v32 < v29;
      if (v31 != v27)
      {
        v33 = v31 < v27;
      }

      if (v30)
      {
        if (v33)
        {
          *a1 = v31;
          *(a2 - 2) = v28;
          a1[1] = v32;
          goto LABEL_69;
        }

        *a1 = v27;
        *(a1 + 2) = v28;
        a1[1] = v29;
        a1[3] = v8;
        v64 = *(a2 - 2);
        v65 = *(a2 - 1);
        v66 = v65 < v8;
        if (v64 != v28)
        {
          v66 = v64 < v28;
        }

        if (v66)
        {
          *(a1 + 2) = v64;
          *(a2 - 2) = v28;
          a1[3] = v65;
          goto LABEL_69;
        }
      }

      else if (v33)
      {
        *(a1 + 2) = v31;
        *(a2 - 2) = v27;
        a1[3] = v32;
        *(a2 - 1) = v29;
        v47 = *(a1 + 2);
        v48 = *a1;
        v49 = a1[3];
        v50 = a1[1];
        v51 = v49 < v50;
        if (v47 != *a1)
        {
          v51 = v47 < *a1;
        }

        if (v51)
        {
          *a1 = v47;
          *(a1 + 2) = v48;
          a1[1] = v49;
          result = 1;
          a1[3] = v50;
          return result;
        }
      }

      return 1;
    case 4:
      sub_1000C14B4(a1, a1 + 2, a1 + 4, a2 - 2);
      return 1;
    case 5:
      sub_1000C14B4(a1, a1 + 2, a1 + 4, a1 + 6);
      v10 = *(a2 - 2);
      v11 = *(a1 + 6);
      v12 = *(a2 - 1);
      v13 = a1[7];
      v14 = v12 < v13;
      if (v10 != v11)
      {
        v14 = v10 < v11;
      }

      if (v14)
      {
        *(a1 + 6) = v10;
        *(a2 - 2) = v11;
        a1[7] = v12;
        *(a2 - 1) = v13;
        v15 = *(a1 + 6);
        v16 = *(a1 + 4);
        v17 = a1[7];
        v18 = a1[5];
        v19 = v17 < v18;
        if (v15 != v16)
        {
          v19 = v15 < v16;
        }

        if (v19)
        {
          *(a1 + 4) = v15;
          *(a1 + 6) = v16;
          a1[5] = v17;
          a1[7] = v18;
          v20 = *(a1 + 2);
          v21 = a1[3];
          v22 = v17 < v21;
          if (v15 != v20)
          {
            v22 = v15 < v20;
          }

          if (v22)
          {
            *(a1 + 2) = v15;
            *(a1 + 4) = v20;
            a1[3] = v17;
            a1[5] = v21;
            v23 = *a1;
            v24 = a1[1];
            v25 = v17 < v24;
            if (v15 != *a1)
            {
              v25 = v15 < *a1;
            }

            if (v25)
            {
              *a1 = v15;
              *(a1 + 2) = v23;
              a1[1] = v17;
              result = 1;
              a1[3] = v24;
              return result;
            }
          }
        }
      }

      return 1;
  }

LABEL_32:
  v34 = a1 + 4;
  v35 = *(a1 + 4);
  v36 = a1 + 2;
  v37 = *(a1 + 2);
  v38 = *a1;
  v39 = a1 + 3;
  v40 = a1[3];
  v41 = a1 + 1;
  v42 = a1[1];
  v43 = v37 < *a1;
  v44 = a1[5];
  if (v37 == *a1)
  {
    v43 = v40 < v42;
  }

  v45 = v44 < v40;
  if (v35 != v37)
  {
    v45 = v35 < v37;
  }

  if (v43)
  {
    if (v45)
    {
      v46 = a1;
      v36 = a1 + 4;
      v39 = a1 + 5;
LABEL_49:
      *v46 = v35;
      *v36 = v38;
      *v41 = v44;
      *v39 = v42;
      goto LABEL_50;
    }

    *a1 = v37;
    *(a1 + 2) = v38;
    if (v35 == v38)
    {
      v67 = v44 < v42;
    }

    else
    {
      v67 = v35 < v38;
    }

    v46 = a1 + 2;
    a1[1] = v40;
    a1[3] = v42;
    v36 = a1 + 4;
    v41 = a1 + 3;
    v39 = a1 + 5;
    if (v67)
    {
      goto LABEL_49;
    }
  }

  else if (v45)
  {
    *v36 = v35;
    *v34 = v37;
    *v39 = v44;
    a1[5] = v40;
    v52 = v44 < v42;
    if (v35 != v38)
    {
      v52 = v35 < v38;
    }

    v46 = a1;
    if (v52)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v53 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v56 = *v53;
    v57 = *v34;
    v58 = v53[1];
    v59 = v58 < v34[1];
    if (*v53 != v57)
    {
      v59 = *v53 < v57;
    }

    if (v59)
    {
      v60 = v54;
      while (1)
      {
        v61 = a1 + v60;
        *(v61 + 6) = v57;
        *(v61 + 7) = *(a1 + v60 + 20);
        if (v60 == -16)
        {
          break;
        }

        v57 = *(v61 + 2);
        v62 = v58 < *(v61 + 3);
        if (LODWORD(v56) != v57)
        {
          v62 = SLODWORD(v56) < v57;
        }

        v60 -= 8;
        if (!v62)
        {
          v63 = (a1 + v60 + 24);
          goto LABEL_62;
        }
      }

      v63 = a1;
LABEL_62:
      *v63 = v56;
      v63[1] = v58;
      if (++v55 == 8)
      {
        return v53 + 2 == a2;
      }
    }

    v34 = v53;
    v54 += 8;
    v53 += 2;
    if (v53 == a2)
    {
      return 1;
    }
  }
}