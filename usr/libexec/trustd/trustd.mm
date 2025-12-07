void sub_1000012B0(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return;
  }

  v4 = *(a1 + 32);
  type = xpc_get_type(object);
  cf = 0;
  v60 = 0u;
  *v58 = 0u;
  v59 = 0u;
  *v57 = 0u;
  LOBYTE(v58[0]) = 1;
  euid = xpc_connection_get_euid(v4);
  HIDWORD(v58[0]) = euid;
  BYTE4(v59) = 0;
  BYTE9(v60) = 0;
  if (type != &_xpc_type_dictionary)
  {
    sub_100029B54(1, @"com.apple.security.xpc", v7, &cf, v8, @"Messages expect to be xpc dictionary, got: %@", object);
    v9 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      buf.val[0] = 138412546;
      *&buf.val[1] = 0;
      LOWORD(buf.val[3]) = 2112;
      *(&buf.val[3] + 2) = cf;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: returning error: %@", &buf, 0x16u);
    }

    v10 = sub_10002AE7C(cf);
    reply_with_format = xpc_create_reply_with_format(object, "{%string: %value}", "error", v10);
    v12 = 0;
    goto LABEL_6;
  }

  v13 = euid;
  reply = xpc_dictionary_create_reply(object);
  uint64 = xpc_dictionary_get_uint64(object, "operation");
  *bytes = 0u;
  v56 = 0u;
  objecta = v4;
  xpc_connection_get_audit_token();
  memset(&buf, 0, sizeof(buf));
  v14 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &buf);
  v57[0] = v14;
  v44 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
  v15 = sub_10000227C(v14, @"com.apple.developer.on-demand-install-capable");
  v16 = sub_1000021D8(v14, @"keychain-access-groups");
  v17 = sub_1000021D8(v14, @"com.apple.security.application-groups");
  v18 = sub_1000022EC(v14);
  v19 = sub_1000021D8(v14, @"com.apple.developer.associated-application-identifier");
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (v16)
  {
    v76.length = CFArrayGetCount(v16);
    v76.location = 0;
    CFArrayAppendArray(Mutable, v16, v76);
  }

  if (v19)
  {
    v77.length = CFArrayGetCount(v19);
    v77.location = 0;
    CFArrayAppendArray(Mutable, v19, v77);
  }

  if (v18)
  {
    CFArrayAppendValue(Mutable, v18);
  }

  if (v17)
  {
    if (v15)
    {
      v21 = sub_1000027AC("entitlements");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        buf.val[0] = 138412290;
        *&buf.val[1] = @"com.apple.security.application-groups";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Ignoring %@ because client is API-restricted", &buf, 0xCu);
      }
    }

    else
    {
      v78.length = CFArrayGetCount(v17);
      v78.location = 0;
      CFArrayAppendArray(Mutable, v17, v78);
    }
  }

  v75.length = CFArrayGetCount(Mutable);
  v75.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v75, kSecAttrAccessGroupToken);
  if (FirstIndexOfValue != -1)
  {
    v23 = FirstIndexOfValue;
    if (_os_feature_enabled_impl())
    {
      CFArrayRemoveValueAtIndex(Mutable, v23);
      CFArrayAppendValue(Mutable, kSecAttrAccessGroupToken);
    }

    else
    {
      v24 = sub_1000027AC("SecWarning");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.val[0]) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Keychain access group com.apple.token ignored, feature not available", &buf, 2u);
      }

      CFArrayRemoveValueAtIndex(Mutable, v23);
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v57[1] = Mutable;
  v25 = sub_1000027AC("serverxpc");
  v26 = uint64;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    if (uint64 > 0x88)
    {
      v28 = @"Unknown xpc operation";
    }

    else
    {
      v28 = *(&off_100085F70 + uint64);
    }

    buf.val[0] = 138412802;
    *&buf.val[1] = v14;
    LOWORD(buf.val[3]) = 2112;
    *(&buf.val[3] + 2) = v28;
    HIWORD(buf.val[5]) = 2048;
    *&buf.val[6] = uint64;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "XPC [%@] operation: %@ (%llu)", &buf, 0x20u);
  }

  if (uint64 <= 24)
  {
    if (uint64 <= 7)
    {
      reply_with_format = reply;
      v4 = objecta;
      v12 = v44;
      switch(uint64)
      {
        case 4:
          v27 = &qword_100081C50;
          break;
        case 5:
          v27 = &off_100081C60;
          break;
        case 6:
          v27 = &off_100081C90;
          break;
        default:
          goto LABEL_143;
      }
    }

    else if (uint64 > 19)
    {
      reply_with_format = reply;
      v4 = objecta;
      v12 = v44;
      if (uint64 == 20)
      {
        v27 = &qword_100081CE0;
      }

      else
      {
        if (uint64 != 23)
        {
          goto LABEL_143;
        }

        v27 = &qword_100081CF0;
      }
    }

    else
    {
      if (uint64 == 8)
      {
        *v62 = 0;
        v53 = 0;
        v54 = 0;
        v51 = 0;
        v52 = 0;
        v49 = 0;
        v50 = 0;
        v48 = 0;
        v29 = xpc_dictionary_get_BOOL(object, "anchorsOnly");
        v30 = xpc_dictionary_get_BOOL(object, "keychainsAllowed");
        v31 = xpc_dictionary_get_uint64(object, "attribution");
        if (sub_100002344(object, v62, &cf) && sub_1000023C0(object, &v54, &cf) && sub_100002414(object, &v53, &cf) && sub_10000246C(object, "responses", &v52, &cf) && sub_10000246C(object, "scts", &v51, &cf) && sub_10000260C(object, "trustedLogs", &v50, &cf))
        {
          v32 = xpc_dictionary_get_double(object, "verifyDate");
          if (sub_10000260C(object, "exceptions", &v49, &cf))
          {
            if (sub_1000026DC(object, "auditToken", &v48, &cf))
            {
              xpc_retain(objecta);
              if (v14)
              {
                CFRetain(v14);
              }

              v33 = v48;
              if (v48 && sub_100025058(8u, v14, @"com.apple.private.network.socket-delegate", &cf) || (v33 = v44) != 0)
              {
                CFRetain(v33);
              }

              v34 = sub_1000020D8();
              *buf.val = _NSConcreteStackBlock;
              *&buf.val[2] = 0x40000000;
              *&buf.val[4] = sub_10001A1F4;
              *&buf.val[6] = &unk_100081BF0;
              v68 = reply;
              v69 = objecta;
              v72 = v59;
              v73 = v60;
              v70 = *v57;
              v71 = *v58;
              v74 = v33;
              sub_10000319C(v34, v33, *v62, v54, v29, v30, v53, v52, v32, v51, v50, Mutable, v49, v31, &buf);
              reply = 0;
            }

            v26 = uint64;
          }
        }

        reply_with_format = reply;
        v4 = objecta;
        v12 = v44;
        if (v53)
        {
          CFRelease(v53);
        }

        if (v54)
        {
          CFRelease(v54);
        }

        if (*v62)
        {
          CFRelease(*v62);
        }

        if (v52)
        {
          CFRelease(v52);
        }

        if (v51)
        {
          CFRelease(v51);
        }

        if (v50)
        {
          CFRelease(v50);
        }

        if (v49)
        {
          CFRelease(v49);
        }

        v35 = v48;
        if (v48)
        {
LABEL_171:
          CFRelease(v35);
        }

        goto LABEL_143;
      }

      if (uint64 != 19)
      {
        reply_with_format = reply;
        v4 = objecta;
        v12 = v44;
        goto LABEL_143;
      }

      v27 = &qword_100081CD0;
      reply_with_format = reply;
      v4 = objecta;
      v12 = v44;
    }
  }

  else
  {
    reply_with_format = reply;
    v4 = objecta;
    v12 = v44;
    switch(uint64)
    {
      case 100:
        v27 = &off_100081C70;
        break;
      case 101:
        v27 = &off_100081C80;
        break;
      case 102:
        v27 = &qword_100081CA0;
        break;
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 131:
      case 132:
        goto LABEL_143;
      case 115:
        v27 = &qword_100081D20;
        break;
      case 116:
        v27 = &off_100081D30;
        break;
      case 117:
        v27 = &off_100081D40;
        break;
      case 118:
        v27 = &qword_100081D50;
        break;
      case 119:
        v27 = &qword_100081D60;
        break;
      case 120:
        v27 = &qword_100081D70;
        break;
      case 121:
        v27 = &off_100081D80;
        break;
      case 122:
        v27 = &off_100081D90;
        break;
      case 123:
        v27 = &off_100081DA0;
        break;
      case 124:
        v27 = &qword_100081DB0;
        break;
      case 125:
        v27 = &off_100081DC0;
        break;
      case 126:
        v27 = &off_100081DD0;
        break;
      case 127:
        *v62 = 0;
        v53 = 0;
        v54 = 0;
        if (!sub_10006117C(object, "domain", v62, &cf))
        {
          goto LABEL_170;
        }

        if (sub_1000026DC(object, "auth", &v54, &cf))
        {
          if (sub_1000026DC(object, "settings", &v53, &cf))
          {
            xpc_retain(objecta);
            if (v14)
            {
              CFRetain(v14);
            }

            if (v44)
            {
              CFRetain(v44);
            }

            v36 = v53;
            *buf.val = _NSConcreteStackBlock;
            *&buf.val[2] = 0x40000000;
            *&buf.val[4] = sub_1000250F4;
            *&buf.val[6] = &unk_100081C10;
            v68 = reply;
            v69 = objecta;
            v70 = *v57;
            v71 = *v58;
            v72 = v59;
            v73 = v60;
            v74 = v44;
            sub_100059858(v13, v44, *v62, v54, v53, &buf);
            reply_with_format = 0;
          }

          else
          {
            v36 = v53;
          }

          if (v36)
          {
            CFRelease(v36);
          }
        }

        v43 = v54;
        if (!v54)
        {
          goto LABEL_170;
        }

        goto LABEL_169;
      case 128:
        v27 = &qword_100081DF0;
        break;
      case 129:
        v27 = &off_100081E00;
        break;
      case 130:
        v27 = &qword_100081E10;
        break;
      case 133:
        *v62 = 0;
        v54 = 0;
        if (!sub_100025058(0x85u, v14, @"com.apple.private.security.storage.trustd-private", &cf))
        {
          goto LABEL_143;
        }

        if (sub_100061100(object, v62, &cf))
        {
          if (sub_100061030(object, "cfdict", &v54, &cf))
          {
            xpc_retain(objecta);
            if (v14)
            {
              CFRetain(v14);
            }

            v37 = v54;
            *buf.val = _NSConcreteStackBlock;
            *&buf.val[2] = 0x40000000;
            *&buf.val[4] = sub_1000251C4;
            *&buf.val[6] = &unk_100081C30;
            v68 = reply;
            v69 = objecta;
            v70 = *v57;
            v71 = *v58;
            v72 = v59;
            v73 = v60;
            sub_1000401CC(v13, *v62, v54, &buf);
            reply_with_format = 0;
          }

          else
          {
            v37 = v54;
          }

          if (v37)
          {
            v43 = v37;
LABEL_169:
            CFRelease(v43);
          }
        }

LABEL_170:
        v35 = *v62;
        if (*v62)
        {
          goto LABEL_171;
        }

        goto LABEL_143;
      case 134:
        v27 = &qword_100081CC0;
        break;
      case 135:
        v27 = &qword_100081CB0;
        break;
      default:
        reply_with_format = reply;
        v4 = objecta;
        v12 = v44;
        if (uint64 == 25)
        {
          v27 = &qword_100081D00;
        }

        else
        {
          if (uint64 != 26)
          {
            goto LABEL_143;
          }

          v27 = &qword_100081D10;
        }

        break;
    }
  }

  v38 = v27[1];
  if (!v38)
  {
    goto LABEL_143;
  }

  if (*v27)
  {
    if (!sub_100025058(uint64, v14, *v27, &cf))
    {
      goto LABEL_143;
    }

    v38 = v27[1];
  }

  v38(v57, object, reply_with_format, &cf);
LABEL_143:
  if (cf)
  {
    if (SecErrorGetOSStatus() == -25300)
    {
      goto LABEL_158;
    }

    if (SecErrorGetOSStatus() == -25330)
    {
      v39 = sub_1000027AC("SecWarning");
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_158;
      }

      if (v26 > 0x88)
      {
        v40 = @"Unknown xpc operation";
      }

      else
      {
        v40 = *(&off_100085F70 + v26);
      }

      *v62 = 138412802;
      *&v62[4] = v57[0];
      v63 = 2112;
      v64 = v40;
      v65 = 2112;
      v66 = cf;
      v42 = "Authentication is needed %@ %@ %@";
    }

    else
    {
      v39 = sub_1000027AC("SecError");
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_158;
      }

      if (v26 > 0x88)
      {
        v41 = @"Unknown xpc operation";
      }

      else
      {
        v41 = *(&off_100085F70 + v26);
      }

      *v62 = 138412802;
      *&v62[4] = v57[0];
      v63 = 2112;
      v64 = v41;
      v65 = 2112;
      v66 = cf;
      v42 = "%@ %@ %@";
    }

    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v42, v62, 0x20u);
LABEL_158:
    v10 = sub_10002AE7C(cf);
    if (reply_with_format)
    {
      xpc_dictionary_set_value(reply_with_format, "error", v10);
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:
  if (reply_with_format)
  {
    xpc_connection_send_message(v4, reply_with_format);
    xpc_release(reply_with_format);
  }

  if (v10)
  {
    xpc_release(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v57[1])
  {
    CFRelease(v57[1]);
  }

  if (v58[1])
  {
    CFRelease(v58[1]);
  }

  if (v57[0])
  {
    CFRelease(v57[0]);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

id sub_1000020D8()
{
  if (qword_100092BF0 != -1)
  {
    dispatch_once(&qword_100092BF0, &stru_100082710);
  }

  v1 = qword_100092BE8;

  return v1;
}

void sub_10000212C(id a1, void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_connection)
  {
    v3 = sub_1000020D8();
    xpc_connection_set_target_queue(a2, v3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000012B0;
    handler[3] = &unk_100081BD0;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_activate(a2);
  }
}

const void *sub_1000021D8(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFArrayGetTypeID())
    {
LABEL_8:
      CFRelease(v3);
      return 0;
    }

    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 != CFStringGetTypeID())
        {
          break;
        }

        if (v6 == ++v7)
        {
          return v3;
        }
      }

      goto LABEL_8;
    }
  }

  return v3;
}

BOOL sub_10000227C(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  TypeID = CFBooleanGetTypeID();
  v5 = TypeID == CFGetTypeID(v3) && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

const void *sub_1000022EC(__SecTask *a1)
{
  result = sub_10000283C(a1, @"application-identifier");
  if (!result)
  {

    return sub_10000283C(a1, @"com.apple.application-identifier");
  }

  return result;
}

BOOL sub_100002344(void *a1, uint64_t *a2, CFTypeRef *a3)
{
  if (xpc_dictionary_get_value(a1, "certificates"))
  {
    v5 = SecCertificateXPCArrayCopyArray();
    *a2 = v5;
    return v5 != 0;
  }

  else
  {
    sub_10001C2D4(-108, a3, @"no certs for key %s", "certificates");
    return 0;
  }
}

BOOL sub_1000023C0(void *a1, uint64_t *a2, uint64_t a3)
{
  value = xpc_dictionary_get_value(a1, "anchors");
  if (value)
  {
    value = SecCertificateXPCArrayCopyArray();
    v5 = value != 0;
  }

  else
  {
    v5 = 1;
  }

  *a2 = value;
  return v5;
}

BOOL sub_100002414(void *a1, uint64_t *a2, uint64_t a3)
{
  if (xpc_dictionary_get_value(a1, "policies"))
  {
    v4 = SecPolicyXPCArrayCopyArray();
    *a2 = v4;
    return v4 != 0;
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    return 1;
  }
}

BOOL sub_10000246C(void *a1, const char *a2, __CFArray **a3, CFTypeRef *a4)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    v7 = value;
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v7);
      v9 = count;
      if (count >= 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_10001C2D4(-108, a4, @"failed to create CFArray of capacity %zu", count);
      }

      else
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, count, &kCFTypeArrayCallBacks);
        if (!Mutable)
        {
          sub_10001C2D4(-108, a4, @"failed to create CFArray of capacity %zu", v9);
          goto LABEL_17;
        }

        if (!v9)
        {
LABEL_17:
          *a3 = Mutable;
          return Mutable != 0;
        }

        v11 = 0;
        while (1)
        {
          length = 0;
          data = xpc_array_get_data(v7, v11, &length);
          if (!data)
          {
            break;
          }

          if (length > 0x7FFFFFFFFFFFFFFELL)
          {
            break;
          }

          v13 = CFDataCreate(kCFAllocatorDefault, data, length);
          if (!v13)
          {
            break;
          }

          v14 = v13;
          CFArraySetValueAtIndex(Mutable, v11, v13);
          CFRelease(v14);
          if (v9 == ++v11)
          {
            goto LABEL_17;
          }
        }

        sub_10001C2D4(-50, a4, @"data_array[%zu] failed to decode", v11);
        CFRelease(Mutable);
      }
    }

    else
    {
      sub_10001C2D4(-50, a4, @"data_array xpc value is not an array");
    }

    Mutable = 0;
    goto LABEL_17;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

BOOL sub_10000260C(void *a1, const char *a2, void *a3, CFTypeRef *a4)
{
  if (xpc_dictionary_get_value(a1, a2))
  {
    v8 = sub_100060E9C(a1, a2, a4);
    v9 = v8;
    if (v8)
    {
      v10 = CFGetTypeID(v8);
      if (v10 != CFArrayGetTypeID())
      {
        v11 = CFCopyTypeIDDescription(v10);
        sub_10001C2D4(-50, a4, @"object for key %s not array but %@", a2, v11);
        if (v11)
        {
          CFRelease(v11);
        }

        CFRelease(v9);
        v9 = 0;
      }
    }

    result = v9 != 0;
  }

  else
  {
    v9 = 0;
    result = 1;
  }

  *a3 = v9;
  return result;
}

BOOL sub_1000026DC(void *a1, const char *a2, void *a3, CFTypeRef *a4)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data)
  {
    v13 = 0;
    v9 = xpc_dictionary_get_data(a1, a2, &v13);
    if (v9)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        sub_10001C2D4(-50, a4, @"too large data for key %s", a2);
      }

      else
      {
        data = CFDataCreate(kCFAllocatorDefault, v9, v13);
        if (data)
        {
LABEL_10:
          v10 = data != 0;
          goto LABEL_11;
        }

        sub_10001C2D4(-50, a4, @"failed to create data for key %s", a2);
      }
    }

    else
    {
      sub_10001C2D4(-50, a4, @"no data for key %s", a2);
    }

    data = 0;
    goto LABEL_10;
  }

  v10 = 1;
LABEL_11:
  *a3 = data;
  return v10;
}

const void *sub_1000027AC(const char *a1)
{
  pthread_mutex_lock(&stru_100092700);
  pthread_mutex_unlock(&stru_100092700);
  if (a1)
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
    v3 = sub_100002890(v2);
    if (v2)
    {
      CFRelease(v2);
    }

    return v3;
  }

  else
  {

    return sub_100002890(0);
  }
}

const void *sub_10000283C(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

const void *sub_100002890(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"logging";
  }

  os_unfair_lock_lock_with_options();
  Mutable = qword_100092B10;
  if (!qword_100092B10)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, 0);
    qword_100092B10 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_10002648C;
    v5[3] = &unk_100081F98;
    v5[4] = v1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100026744;
    v6[3] = &unk_100082030;
    v6[4] = v5;
    sub_1000054FC(v1, v6);
    Value = CFDictionaryGetValue(qword_100092B10, v1);
  }

  os_unfair_lock_unlock(&unk_100092B08);
  return Value;
}

uint64_t sub_1000029CC(uint64_t result, uint64_t a2)
{
  if (*(result + 184))
  {
    v2 = result;
    v7 = 0;
    v3 = *(result + 192);
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = *(*(v2 + 184) + 8 * i);
        if (v6)
        {
          result = (*(a2 + 16))(a2, v6, &v7);
          if (v7)
          {
            return result;
          }

          v3 = *(v2 + 192);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100002A58()
{
  if (qword_100092C38 != -1)
  {
    dispatch_once(&qword_100092C38, &stru_1000827E0);
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C978;
  block[3] = &unk_100083638;
  block[4] = &v3;
  dispatch_sync(qword_100092C10, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t sub_100002B2C(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    v6 = *(a1 + 16) + 1;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = -1;
    v6 = 1;
  }

  sub_1000034AC();
  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 24) = 0u;
    *(Instance + 40) = 0u;
    *(Instance + 120) = 0u;
    *(Instance + 104) = 0u;
    *(Instance + 88) = 0u;
    *(Instance + 72) = 0u;
    *(Instance + 56) = 0u;
    *(Instance + 16) = v6;
    *(Instance + 32) = v7;
    *(Instance + 40) = v8;
    v12 = v6 - 1;
    *(Instance + 48) = v9 & 1;
    if (v6 >= 2)
    {
      v13 = (a1 + 136);
      v14 = (Instance + 136);
      v15 = v6 - 1;
      do
      {
        v16 = *v13++;
        *v14++ = v16;
        CFRetain(v16);
        --v15;
      }

      while (v15);
    }

    if (!a2)
    {
      goto LABEL_63;
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 0x40000000;
    v51[2] = sub_100038E20;
    v51[3] = &unk_100082FD8;
    v51[4] = &qword_100092D58;
    if (qword_100092D50 != -1)
    {
      dispatch_once(&qword_100092D50, v51);
    }

    v17 = _CFRuntimeCreateInstance();
    if (!v17)
    {
      goto LABEL_64;
    }

    CFRetain(a2);
    *(v17 + 16) = a2;
    *(v17 + 42) = SecCertificateIsWeakHash();
    CertificatePolicies = SecCertificateGetCertificatePolicies();
    if (!CertificatePolicies)
    {
      goto LABEL_55;
    }

    v19 = CertificatePolicies;
    if (!*(CertificatePolicies + 8))
    {
      goto LABEL_55;
    }

    v20 = 0;
    v21 = 0;
    v22 = 1;
    do
    {
      v21 |= sub_100003364(*(v19 + 16) + 32 * v20) != 0;
      v20 = v22;
    }

    while (*(v19 + 8) > v22++);
    if ((v21 & 1) == 0)
    {
      goto LABEL_55;
    }

    BasicConstraints = SecCertificateGetBasicConstraints();
    if (BasicConstraints && *(BasicConstraints + 2))
    {
      v44 = sub_1000027AC("ev");
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      LOWORD(v51[0]) = 0;
      v45 = "Leaf has invalid basic constraints";
      v46 = v44;
      v47 = 2;
    }

    else
    {
      KeyUsage = SecCertificateGetKeyUsage();
      if ((KeyUsage & 0x60) == 0)
      {
        v51[0] = 256;
        v26 = CFNumberCreate(0, kCFNumberCFIndexType, v51);
        if (v26)
        {
          v27 = v26;
          Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            v29 = Mutable;
            CFDictionaryAddValue(Mutable, kSecAttrKeyTypeEC, v27);
            SecCertificateNotValidBefore();
            if (v30 >= 410227200.0)
            {
              v51[0] = 2048;
              v35 = CFNumberCreate(0, kCFNumberCFIndexType, v51);
              if (v35)
              {
                v32 = v35;
                CFDictionaryAddValue(v29, kSecAttrKeyTypeRSA, v35);
                if ((SecCertificateIsAtLeastMinKeySize() & 1) == 0)
                {
                  v33 = sub_1000027AC("ev");
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v51[0]) = 0;
                    v34 = "Leaf's public key is too small for issuance after 2013";
                    goto LABEL_60;
                  }

LABEL_61:
                  v37 = 0;
                  goto LABEL_32;
                }

LABEL_29:
                SecCertificateNotValidBefore();
                if (v36 <= 473299200.0 || SecCertificateGetSignatureHashAlgorithm() > 4)
                {
                  v37 = 1;
LABEL_32:
                  CFRelease(v32);
LABEL_33:
                  CFRelease(v27);
                  CFRelease(v29);
LABEL_34:
                  *(v17 + 40) = v37;
                  v38 = SecCertificateCopyQualifiedCertificateStatements();
                  if (v38)
                  {
                    v39 = v38;
                    if (qword_100092AC0 != -1)
                    {
                      dispatch_once(&qword_100092AC0, &stru_100081E78);
                    }

                    v41 = byte_100092AB8 == 1 && CFDictionaryContainsKey(v39, kSecQCStatementCompliance) && (Value = CFDictionaryGetValue(v39, kSecQCStatementType)) != 0 && CFSetContainsValue(Value, kSecQCStatementTypeWeb) != 0;
                    CFRelease(v39);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  *(v17 + 41) = v41;
                  if (a3)
                  {
                    CFRetain(a3);
                    *(v17 + 24) = a3;
LABEL_64:
                    *(v11 + 8 * v12 + 136) = v17;
                    return v11;
                  }

                  v42 = CFArrayCreate(kCFAllocatorDefault, 0, 0, &kCFTypeArrayCallBacks);
                  if (v42)
                  {
                    v43 = v42;
                    CFRetain(v42);
                    *(v17 + 24) = v43;
                    CFRelease(v43);
                    goto LABEL_64;
                  }

                  CFRelease(v17);
LABEL_63:
                  v17 = 0;
                  goto LABEL_64;
                }

                v33 = sub_1000027AC("ev");
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v51[0]) = 0;
                  v34 = "Leaf was issued with SHA-1 after 2015";
                  goto LABEL_60;
                }

                goto LABEL_61;
              }
            }

            else
            {
              v51[0] = 1024;
              v31 = CFNumberCreate(0, kCFNumberCFIndexType, v51);
              if (v31)
              {
                v32 = v31;
                CFDictionaryAddValue(v29, kSecAttrKeyTypeRSA, v31);
                if ((SecCertificateIsAtLeastMinKeySize() & 1) == 0)
                {
                  v33 = sub_1000027AC("ev");
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v51[0]) = 0;
                    v34 = "Leaf's public key is too small for issuance before 2014";
LABEL_60:
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v34, v51, 2u);
                    goto LABEL_61;
                  }

                  goto LABEL_61;
                }

                goto LABEL_29;
              }
            }

            v37 = 0;
            goto LABEL_33;
          }

          CFRelease(v27);
        }

LABEL_55:
        v37 = 0;
        goto LABEL_34;
      }

      v48 = KeyUsage;
      v49 = sub_1000027AC("ev");
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      LODWORD(v51[0]) = 67109120;
      HIDWORD(v51[0]) = v48;
      v45 = "Leaf has invalid key usage %u";
      v46 = v49;
      v47 = 8;
    }

    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v45, v51, v47);
    goto LABEL_55;
  }

  return v11;
}

uint64_t sub_100003140()
{
  v0 = os_variant_uses_ephemeral_storage();
  if (v0 && qword_100092BB0 != -1)
  {
    dispatch_once(&qword_100092BB0, &stru_100082670);
  }

  return v0 ^ 1u;
}

void sub_10000319C(NSObject *a1, const void *a2, const __CFArray *cf, const __CFArray *a4, int a5, int a6, const void *a7, const void *a8, double d0_0, const void *a9, void *a10, const void *a11, const void *a12, uint64_t a13, void (**a14)(void, void, void, void, void, void))
{
  if (cf && (v23 = CFGetTypeID(cf), v23 == CFArrayGetTypeID()) && CFArrayGetCount(cf) > 0)
  {
    v24 = _Block_copy(a14);
    v25 = sub_100003544(a1, a2, cf, a4, a5, a6, a7, a8, d0_0, a9, a10, a11, a12, a13, sub_10001A194, v24);

    sub_100004890(v25);
  }

  else
  {
    v26 = CFErrorCreate(0, kCFErrorDomainOSStatus, -26275, 0);
    (a14)[2](a14, 0, 0, 0, 0, v26);
    if (v26)
    {

      CFRelease(v26);
    }
  }
}

const void *sub_100003364(uint64_t a1)
{
  v1 = sub_100002A58();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *(v1 + 64);
  if (v3)
  {
    CFRetain(*(v1 + 64));
    CFRelease(v2);
    v4 = SecDERItemCopyOIDDecimalRepresentation();
    if (v4)
    {
      v5 = v4;
      Value = CFDictionaryGetValue(v3, v4);
      CFRelease(v5);
    }

    else
    {
      Value = 0;
    }

    v2 = v3;
  }

  else
  {
    Value = 0;
  }

  CFRelease(v2);
  return Value;
}

void sub_10000340C(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 8) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 64) = 4;
  values = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(a1 + 40) = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  CFRelease(values);
}

uint64_t sub_1000034AC()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100038E94;
  block[3] = &unk_100083058;
  block[4] = &qword_100092D68;
  if (qword_100092D60 != -1)
  {
    dispatch_once(&qword_100092D60, block);
  }

  return qword_100092D68;
}

uint64_t sub_100003544(NSObject *a1, const void *a2, const __CFArray *a3, const __CFArray *a4, int a5, int a6, const void *a7, const void *a8, double a9, CFTypeRef a10, void *a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10005BC48;
  block[3] = &unk_100085840;
  block[4] = &qword_100092F60;
  if (qword_100092F58 != -1)
  {
    dispatch_once(&qword_100092F58, block);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 272) = malloc_type_calloc(1uLL, 0x50uLL, 0x100004074E59A96uLL);
    **(Instance + 272) = mach_absolute_time();
    if (a2)
    {
      v26 = CFRetain(a2);
    }

    else
    {
      v26 = 0;
    }

    *(Instance + 32) = v26;
    if (a1)
    {
      dispatch_retain(a1);
    }

    else
    {
      a1 = dispatch_queue_create("com.apple.trustd.evaluation.builder", 0);
    }

    *(Instance + 16) = a1;
    *(Instance + 80) = 1;
    *(Instance + 178) = 1;
    *(Instance + 208) = 0;
    *(Instance + 280) = a14;
    *(Instance + 72) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(Instance + 88) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(Instance + 136) = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    *(Instance + 144) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(Instance + 152) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(Instance + 160) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(Instance + 184) = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
    **(Instance + 184) = malloc_type_malloc(0x48uLL, 0x10600407F7167BDuLL);
    sub_10000340C(**(Instance + 184), Instance, a7);
    *(Instance + 192) = 1;
    *(Instance + 120) = a9;
    if (a13)
    {
      CFRetain(a13);
    }

    *(Instance + 128) = a13;
    *(Instance + 40) = sub_100003AB8(a3);
    if (a4)
    {
      *(Instance + 56) = sub_100003AB8(a4);
    }

    if (qword_100092AE0 != -1)
    {
      dispatch_once(&qword_100092AE0, &stru_100081EF8);
    }

    if ((byte_100092AD8 & 1) == 0)
    {
      v27 = sub_100003C24();
      v28 = sub_100003B94(v27);
      *(Instance + 64) = sub_100003AB8(v28);
    }

    CFArrayAppendValue(*(Instance + 88), *(Instance + 40));
    if (sub_100003140() && a6)
    {
      v29 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
      *v29 = sub_1000198F8;
      v29[1] = 0;
      v29[2] = sub_100039D88;
      v29[3] = a12;
      if (a12)
      {
        CFRetain(a12);
      }

      *(Instance + 48) = v29;
      CFArrayAppendValue(*(Instance + 88), v29);
    }

    if (a5)
    {
      v30 = *(Instance + 64);
      if (v30)
      {
        CFArrayAppendValue(*(Instance + 88), v30);
      }

      CFArrayAppendValue(*(Instance + 88), off_1000927C0);
      if (qword_100092AF0 != -1)
      {
        dispatch_once(&qword_100092AF0, &stru_100081F38);
      }

      if ((byte_100092AE8 & 1) == 0)
      {
        CFArrayAppendValue(*(Instance + 88), off_1000927D8);
      }

      CFArrayAppendValue(*(Instance + 88), off_1000927A8);
      CFArrayAppendValue(*(Instance + 88), off_1000927F0);
    }

    if (a6 && *(Instance + 178) == 1)
    {
      CFArrayAppendValue(*(Instance + 88), &off_100092808);
    }

    v31 = *(Instance + 56);
    if (v31)
    {
      CFArrayAppendValue(*(Instance + 72), v31);
    }

    if ((a5 & 1) == 0)
    {
      v32 = *(Instance + 64);
      if (v32)
      {
        CFArrayAppendValue(*(Instance + 88), v32);
      }

      CFArrayAppendValue(*(Instance + 72), off_1000927C0);
      sub_100003140();
      CFArrayAppendValue(*(Instance + 72), off_1000927F0);
      if (qword_100092AF0 != -1)
      {
        dispatch_once(&qword_100092AF0, &stru_100081F38);
      }

      if ((byte_100092AE8 & 1) == 0)
      {
        CFArrayAppendValue(*(Instance + 72), off_1000927D8);
      }

      CFArrayAppendValue(*(Instance + 72), off_1000927A8);
    }

    if (a8)
    {
      CFRetain(a8);
    }

    *(Instance + 96) = a8;
    if (a10)
    {
      CFRetain(a10);
    }

    *(Instance + 104) = a10;
    if (a11)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = sub_10002C408(a11);
      objc_autoreleasePoolPop(v33);
      *(Instance + 112) = v34;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
    v36 = sub_100002B2C(0, ValueAtIndex, 0);
    CFSetAddValue(*(Instance + 136), v36);
    CFArrayAppendValue(*(Instance + 144), v36);
    if (v36)
    {
      CFRetain(v36);
      *(Instance + 200) = v36;
      v37 = Instance;
      v38 = v36;
    }

    else
    {
      *(Instance + 200) = 0;
      v37 = Instance;
      v38 = 0;
    }

    sub_100003F3C(v37, v38);
    CFRelease(v36);
    *(Instance + 248) = sub_10000403C;
    *(Instance + 256) = a15;
    *(Instance + 264) = a16;
  }

  return Instance;
}

void *sub_100003AB8(const __CFArray *a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0xA00406C891FDCuLL);
  *v2 = sub_100012BF0;
  v2[1] = 0;
  v2[2] = sub_1000071D8;
  Count = CFArrayGetCount(a1);
  v2[3] = CFSetCreateMutable(kCFAllocatorDefault, Count, &kCFTypeSetCallBacks);
  v2[4] = CFDictionaryCreateMutable(kCFAllocatorDefault, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5.location = 0;
  v5.length = Count;
  CFArrayApplyFunction(a1, v5, sub_100003DBC, v2);
  return v2;
}

uint64_t sub_100003B94(char a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000293A4;
  block[3] = &unk_1000825C8;
  v3 = a1;
  if (qword_100092B98 != -1)
  {
    dispatch_once(&qword_100092B98, block);
  }

  return qword_100092B90;
}

uint64_t sub_100003C24()
{
  if (qword_100092C90 != -1)
  {
    dispatch_once(&qword_100092C90, &stru_100082B98);
  }

  if (byte_100092C88)
  {
    v0 = 1;
  }

  else
  {
    if (qword_100092BD8 != -1)
    {
      dispatch_once(&qword_100092BD8, &stru_1000826D0);
    }

    if (byte_100092BD0 != 1)
    {
      goto LABEL_18;
    }

    if (qword_100092BE0 != -1)
    {
      dispatch_once(&qword_100092BE0, &stru_1000826F0);
    }

    if (byte_100092BD0)
    {
      v1 = CFPreferencesCopyKeyList(@"com.apple.security", kCFPreferencesAnyUser, kCFPreferencesAnyHost);
      v2 = sub_100035DA0(v1);
      if (v1)
      {
        CFRelease(v1);
      }

      if (v2)
      {
        goto LABEL_17;
      }

      v3 = CFPreferencesCopyKeyList(@"com.apple.security", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v4 = sub_100035DA0(v3);
      if (v3)
      {
        CFRelease(v3);
      }

      if (v4)
      {
LABEL_17:
        v0 = 1;
      }

      else
      {
        if (qword_100092CF8 != -1)
        {
          dispatch_once(&qword_100092CF8, &stru_100082C80);
        }

        dispatch_source_merge_data(qword_100092D00, 1uLL);
        v0 = 0;
      }

      byte_100092C88 = v0;
    }

    else
    {
LABEL_18:
      v0 = byte_100092C88;
    }
  }

  return v0 & 1;
}

void sub_100003DBC(void *value, uint64_t a2)
{
  if (!CFSetContainsValue(*(a2 + 24), value))
  {
    CFSetAddValue(*(a2 + 24), value);
    NormalizedSubjectContent = SecCertificateGetNormalizedSubjectContent();
    if (NormalizedSubjectContent)
    {
      v5 = NormalizedSubjectContent;
      v6 = *(a2 + 32);
      v7 = CFDictionaryGetValue(v6, NormalizedSubjectContent);
      if (v7)
      {
        Mutable = v7;
      }

      else
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        CFDictionaryAddValue(v6, v5, Mutable);
        CFRelease(Mutable);
        if (!Mutable)
        {
          return;
        }
      }

      CFArrayAppendValue(Mutable, value);
    }
  }
}

uint64_t sub_100003E94(uint64_t a1)
{
  if (*(a1 + 16) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = a1 + 136;
  do
  {
    v3 += CFHash(*(v4 + 8 * v2++));
  }

  while (v2 < *(a1 + 16));
  return v3;
}

CFHashCode sub_100003EFC(uint64_t a1)
{
  v2 = CFHash(*(a1 + 16));
  v3 = *(a1 + 24);
  if (v3)
  {
    v2 += CFHash(v3);
  }

  return v2;
}

uint64_t sub_100003F3C(uint64_t a1, CFTypeRef cf1)
{
  v4 = *(a1 + 200);
  if (cf1)
  {
    if (v4)
    {
      if (CFEqual(cf1, v4))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 200);
    }

    else
    {
      v5 = 0;
    }

    if (v5 != cf1)
    {
      CFRetain(cf1);
      v4 = *(a1 + 200);
      if (!v4)
      {
LABEL_11:
        *(a1 + 200) = cf1;
        goto LABEL_12;
      }

LABEL_10:
      CFRelease(v4);
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

LABEL_12:
  v6 = *(a1 + 232);
  if (v6)
  {
    *(a1 + 232) = 0;
    CFRelease(v6);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10000401C;
  v8[3] = &unk_100085860;
  v8[4] = cf1;
  return sub_1000029CC(a1, v8);
}

void sub_10000401C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  *(a2 + 64) = 4;
  v2 = *(a2 + 56);
  if (v2)
  {
    *(a2 + 56) = 0;
    CFRelease(v2);
  }
}

uint64_t sub_10000403C(uint64_t a1)
{
  v52 = *(a1 + 192);
  if (v52 >= 1)
  {
    v2 = 0;
    key = kSecPolicyCheckSSLHostname;
    v51 = kSecPolicyCheckCAspkiSHA256;
    do
    {
      v53 = v2;
      v3 = *(*(a1 + 184) + 8 * v2);
      v4 = *(v3 + 8);
      if (v4)
      {
        CFRetain(*(v3 + 8));
      }

      for (i = 0; i < CFArrayGetCount(v4); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        Name = SecPolicyGetName();
        Value = CFDictionaryGetValue(ValueAtIndex[4], key);
        if (Value)
        {
          v9 = Value;
          Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFDictionaryAddValue(Mutable, @"PinningPolicyName", Name);
          CFDictionaryAddValue(Mutable, @"PinningHostname", v9);
          v11 = objc_autoreleasePoolPush();
          if (qword_100092E18 != -1)
          {
            dispatch_once(&qword_100092E18, &stru_100083F48);
          }

          v12 = Mutable;
          v13 = [(__CFDictionary *)v12 objectForKey:@"PinningPolicyName"];
          v14 = [qword_100092E10 queryForPolicyName:v13];
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v16 = [(__CFDictionary *)v12 objectForKey:@"PinningHostname"];
            v15 = [qword_100092E10 queryForDomain:v16];
          }

          objc_autoreleasePoolPop(v11);
          if (v12)
          {
            CFRelease(v12);
          }

          if (v15)
          {
            MutableCopy = CFDictionaryGetValue(v15, @"PinningRules");
            v55 = CFDictionaryGetValue(v15, @"PinningPolicyName");
            v18 = CFDictionaryGetValue(v15, @"PinningTransparentConnection");
            v19 = sub_1000027AC("SecPinningDb");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              Count = CFArrayGetCount(MutableCopy);
              *context = 134218755;
              *&context[4] = Count;
              *&context[12] = 2112;
              *&context[14] = v55;
              *&context[22] = 2113;
              v59 = v9;
              LOWORD(v60[0]) = 2114;
              *(v60 + 2) = Name;
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "found pinning %lu %@ policies for hostname %{private}@, policyName %{public}@", context, 0x2Au);
            }

            LODWORD(valuePtr) = 0;
            if (v18)
            {
              if (CFNumberGetValue(v18, kCFNumberIntType, &valuePtr))
              {
                if (valuePtr == 1)
                {
                  v20 = sub_10003FD6C(0, 0);
                  if (v20)
                  {
                    v21 = v20;
                    if (CFArrayGetCount(v20))
                    {
                      v22 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      v23 = CFArrayGetCount(v21);
                      v24 = CFArrayCreateMutable(0, v23, &kCFTypeArrayCallBacks);
                      *context = _NSConcreteStackBlock;
                      *&context[8] = 0x40000000;
                      *&context[16] = sub_10005BCF8;
                      v59 = &unk_1000859D0;
                      v60[0] = v24;
                      v64.length = CFArrayGetCount(v21);
                      v64.location = 0;
                      CFArrayApplyFunction(v21, v64, sub_10005BDE0, context);
                      if (CFArrayGetCount(v24))
                      {
                        v25 = sub_1000027AC("SecPinningDb");
                        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                        {
                          v26 = CFArrayGetCount(v24);
                          LODWORD(buf) = 134217984;
                          *(&buf + 4) = v26;
                          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Adding %lu CA pins for Transparent Connection", &buf, 0xCu);
                        }

                        CFDictionaryAddValue(v22, v51, v24);
                        if (v24)
                        {
                          CFRelease(v24);
                        }

                        v27 = CFArrayGetCount(MutableCopy);
                        MutableCopy = CFArrayCreateMutableCopy(0, v27 + 1, MutableCopy);
                        CFArrayAppendValue(MutableCopy, v22);
                        if (v22)
                        {
                          CFRelease(v22);
                        }

                        CFRelease(v21);
                        goto LABEL_38;
                      }

                      if (v24)
                      {
                        CFRelease(v24);
                      }

                      if (v22)
                      {
                        CFRelease(v22);
                      }
                    }

                    CFRelease(v21);
                  }
                }
              }
            }

            if (MutableCopy)
            {
              CFRetain(MutableCopy);
            }

LABEL_38:
            v29 = 0;
LABEL_39:
            if (v29 >= CFArrayGetCount(MutableCopy))
            {
              CFRelease(v15);
              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }

              continue;
            }

            v30 = CFArrayGetValueAtIndex(MutableCopy, v29);
            if (v30)
            {
              v31 = CFGetTypeID(v30);
              if (v31 == CFDictionaryGetTypeID())
              {
                v32 = CFArrayGetValueAtIndex(MutableCopy, v29);
                SSL = SecPolicyCreateSSL(1u, v9);
                valuePtr = SSL;
                if (SSL)
                {
                  v34 = SSL;
                  *&buf = 0;
                  *(&buf + 1) = &buf;
                  v62 = 0x2000000000;
                  v63 = CFDictionaryCreateMutableCopy(0, 0, SSL[4]);
                  *context = _NSConcreteStackBlock;
                  *&context[8] = 0x40000000;
                  *&context[16] = sub_100006120;
                  v59 = &unk_1000859F8;
                  v60[0] = &buf;
                  CFDictionaryApplyFunction(v32, sub_10005BDC4, context);
                  v35 = *(*(&buf + 1) + 24);
                  v36 = v34[4];
                  if (v36)
                  {
                    CFRelease(v36);
                  }

                  v34[4] = v35;
                  _Block_object_dispose(&buf, 8);
                  SecPolicySetName();
                  v37 = CFArrayCreateMutableCopy(0, 0, v4);
                  if (v37)
                  {
                    v38 = v37;
                    v65.location = i;
                    v65.length = 1;
                    CFArrayReplaceValues(v37, v65, &valuePtr, 1);
                    if (v29)
                    {
                      *(a1 + 184) = malloc_type_realloc(*(a1 + 184), 8 * *(a1 + 192) + 8, 0x2004093837F09uLL);
                      v39 = malloc_type_malloc(0x48uLL, 0x10600407F7167BDuLL);
                      v40 = *(a1 + 192);
                      *(*(a1 + 184) + 8 * v40) = v39;
                      sub_10000340C(*(*(a1 + 184) + 8 * v40), a1, v38);
                      ++*(a1 + 192);
                    }

                    else
                    {
                      v41 = *(*(a1 + 184) + 8 * v53);
                      if (*(v41 + 8) != v38)
                      {
                        CFRetain(v38);
                        v42 = *(v41 + 8);
                        if (v42)
                        {
                          CFRelease(v42);
                        }

                        *(v41 + 8) = v38;
                      }
                    }

                    v43 = valuePtr;
                    if (valuePtr)
                    {
                      valuePtr = 0;
                      CFRelease(v43);
                    }

LABEL_56:
                    CFRelease(v38);
                  }

                  else
                  {
                    v38 = valuePtr;
                    if (valuePtr)
                    {
                      valuePtr = 0;
                      goto LABEL_56;
                    }
                  }
                }
              }
            }

            ++v29;
            goto LABEL_39;
          }
        }
      }

      if (v4)
      {
        CFRelease(v4);
      }

      v2 = v53 + 1;
    }

    while (v53 + 1 != v52);
  }

  v44 = *(a1 + 200);
  if (v44 && v44[2] >= 1 && (v45 = v44[17]) != 0)
  {
    v46 = *(v45 + 16);
  }

  else
  {
    v46 = 0;
  }

  *&buf = 0;
  v47 = sub_100007610(a1, v46, &buf);
  if (!buf || (v48 = *(buf + 8)) == 0)
  {
    sub_100007C68(v44, 0);
    if (!v47)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v49 = v48();
  sub_100007C68(v44, v49);
  if (v49)
  {
    CFRelease(v49);
  }

  if (v47)
  {
LABEL_74:
    sub_100013360(v44);
    CFArrayAppendValue(*(a1 + 160), v44);
  }

LABEL_75:
  *context = 0;
  *&context[8] = context;
  *&context[16] = 0x2000000000;
  LOBYTE(v59) = 1;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 0x40000000;
  v56[2] = sub_100006A90;
  v56[3] = &unk_1000859B0;
  v56[4] = context;
  sub_1000029CC(a1, v56);
  *(a1 + 176) = *(*&context[8] + 24);
  *(a1 + 248) = sub_1000066A8;
  _Block_object_dispose(context, 8);
  return 1;
}

void sub_100004890(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return;
  }

  *(a1 + 240) = 1;
  do
  {
    v2 = *(a1 + 248);
    if (!v2)
    {
      v5 = *(a1 + 240) - 1;
      *(a1 + 240) = v5;
      if (v5)
      {
        return;
      }

LABEL_9:
      v6 = sub_100015F54(a1);
      v7 = *(v6 + 64);
      if (v7 != 4 || *(a1 + 128) == 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = 1;
      }

      v10 = sub_1000027AC("trust");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 224);
        v17 = *(v6 + 56);
        v18 = 138478339;
        v19 = v16;
        v20 = 2114;
        v21 = v17;
        v22 = 1024;
        v23 = v9;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "completed: %{private}@ details: %{public}@ result: %d", &v18, 0x1Cu);
      }

      if (*(a1 + 256))
      {
        v11 = sub_100020884(*(a1 + 224));
        v12 = *(a1 + 232);
        if (v12)
        {
          CFRetain(*(a1 + 232));
        }

        v13 = *(v6 + 56);
        if (v13)
        {
          CFRetain(v13);
        }

        v15 = *(a1 + 256);
        v14 = *(a1 + 264);
        CFRelease(a1);
        v15(v14, v11, v13, v12, v9);
        if (v11)
        {
          CFRelease(v11);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        if (!v13)
        {
          return;
        }
      }

      else
      {
        v13 = a1;
      }

      CFRelease(v13);
      return;
    }
  }

  while ((v2(a1) & 1) != 0);
  v3 = *(a1 + 248);
  v4 = *(a1 + 240) - 1;
  *(a1 + 240) = v4;
  if (!v3 && !v4)
  {
    goto LABEL_9;
  }
}

uint64_t sub_100004A60(uint64_t a1, const __CFString *cf, CFErrorRef *a3, uint64_t a4)
{
  v6 = cf;
  CFRetain(cf);
  if (!v6)
  {
    return 1;
  }

  LOBYTE(v8) = 1;
  do
  {
    v11 = 0;
    if (v8)
    {
      v8 = sub_10000512C(a1, v6, &v11, a3);
      if (v8)
      {
        if (a4)
        {
          v9 = (*(a4 + 16))(a4, v8);
        }

        else
        {
          sub_10001C2D4(-50, a3, @"SecDbWithSQL perform block missing");
          v9 = 0;
        }

        v8 = (v9 & sub_100006318(v8, a3));
      }
    }

    else
    {
      sub_100026CFC(1, a3, @"Error with unexecuted sql remaining %@", v6);
      v8 = 0;
    }

    CFRelease(v6);
    v6 = v11;
  }

  while (v11);
  return v8;
}

BOOL sub_100004B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  sub_10000526C(a1, 1, &v6, a2);
  v4 = v6;
  if (v6)
  {
    (*(a3 + 16))(a3, v6);
    sub_100006380(v4);
  }

  return v4 != 0;
}

void sub_100004BDC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(v2 + 128))
  {
    goto LABEL_28;
  }

  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(v2 + 16);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 1;
  cf[0] = _NSConcreteStackBlock;
  cf[1] = 0x40000000;
  cf[2] = sub_100028C80;
  cf[3] = &unk_100082478;
  cf[4] = &v34;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v39 = sub_100026744;
  v40 = &unk_100082030;
  v41 = cf;
  sub_1000054FC(v5, &buf);
  v6 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);
  if (v6)
  {
    v32 = 0;
    v7 = sub_100028258(v2, 0);
    if (v7)
    {
      v8 = v7;
      cf[0] = 0;
      if (sub_10002836C(v7, &v32, cf))
      {
        v9 = cf[0];
        if (cf[0])
        {
          cf[0] = 0;
          CFRelease(v9);
        }

        if (v4)
        {
          *v4 = v8;
        }

        v10 = sub_1000027AC("#SecDB");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#SecDB starting maintenance", &buf, 2u);
        }

        if (*(v8 + 40))
        {
          goto LABEL_55;
        }

        v11 = *(v8 + 16);
        v12 = *(v11 + 136);
        if (!v12)
        {
          v13 = 0;
          goto LABEL_56;
        }

        v34 = 0;
        *(v11 + 144) = 0;
        v13 = (*(v12 + 16))(v12, v11, v8, v32, v11 + 144, &v34);
        *(v2 + 128) = v13;
        if ((v13 & 1) == 0)
        {
          v14 = sub_1000027AC("SecError");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v34;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "opened block failed: %@", &buf, 0xCu);
          }
        }

        if (!v3 || (*(v8 + 40) & 1) != 0 || *v3)
        {
          if (v34)
          {
            v15 = sub_1000027AC("SecError");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v34;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "opened block failed: error (%@) is being released and lost", &buf, 0xCu);
            }

            v16 = v34;
            if (v34)
            {
              v34 = 0;
              CFRelease(v16);
            }
          }
        }

        else
        {
          *v3 = v34;
        }

        if (*(v8 + 40))
        {
LABEL_55:
          v13 = sub_100027D48(v8, 0, v3);
        }

LABEL_56:
        v31 = sub_1000027AC("#SecDB");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "#SecDB ending maintenance", &buf, 2u);
          if (!v13)
          {
LABEL_59:
            CFRelease(v8);
            if (v4)
            {
              *v4 = 0;
            }

            goto LABEL_26;
          }
        }

        else if (!v13)
        {
          goto LABEL_59;
        }

        CFArrayAppendValue(*(v2 + 40), v8);
        goto LABEL_59;
      }

      v26 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = cf[0];
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Unable to create database: %@", &buf, 0xCu);
      }

      if (cf[0])
      {
        Domain = CFErrorGetDomain(cf[0]);
        if (CFEqual(Domain, @"com.apple.utilities.sqlite3"))
        {
          Code = CFErrorGetCode(cf[0]);
          v30 = Code == 11 || Code == 26;
          *(v8 + 40) = v30;
        }
      }

      LOBYTE(v13) = 0;
      if (!v3 || (*(v8 + 40) & 1) != 0)
      {
        goto LABEL_26;
      }

      if (!*v3)
      {
        LOBYTE(v13) = 0;
        *v3 = cf[0];
        goto LABEL_26;
      }
    }
  }

  else
  {
    v17 = *__error();
    v18 = __error();
    sub_100029B54(v17, kCFErrorDomainPOSIX, v19, v3, v20, @"Unable to process corruption marker: %{darwin.errno}d", *v18);
  }

  LOBYTE(v13) = 0;
LABEL_26:
  *(*(*(a1 + 48) + 8) + 24) = v13;
  *(*(*(a1 + 40) + 8) + 24) = v13;
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    return;
  }

  v2 = *(a1 + 64);
LABEL_28:
  v21 = 40;
  if (*(a1 + 88))
  {
    v21 = 48;
  }

  v22 = *(v2 + v21);
  if (CFArrayGetCount(v22) && !*(*(*(a1 + 56) + 8) + 24))
  {
    v23 = *(a1 + 32);
    ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
    if ((*(v23 + 16))(v23, ValueAtIndex))
    {
      v25 = *(*(*(a1 + 56) + 8) + 24);
      if (v25)
      {
        CFRetain(v25);
      }
    }

    CFArrayRemoveValueAtIndex(v22, 0);
  }
}

BOOL sub_1000050FC(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    *v2 = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

sqlite3_stmt *sub_10000512C(uint64_t a1, const __CFString *a2, CFStringRef *a3, CFErrorRef *a4)
{
  v12.location = 0;
  v12.length = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (a2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_100005620;
    v13[3] = &unk_100082548;
    v13[4] = &v14;
    v13[5] = a1;
    v13[6] = a4;
    v13[7] = &v12;
    sub_1000054FC(a2, v13);
    v7 = v15[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v14, 8);
  if (v12.length >= 1)
  {
    v8 = CFGetAllocator(a2);
    v9 = CFStringCreateWithSubstring(v8, a2, v12);
    v10 = v9;
    if (a3)
    {
      *a3 = v9;
    }

    else
    {
      sub_100026CFC(2, a4, @"prepare_v2: %@ unused sql: %@", a2, v9);
      if (v10)
      {
        CFRelease(v10);
      }

      sub_100006318(v7, a4);
      return 0;
    }
  }

  return v7;
}

void sub_10000526C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  CFRetain(a1);
  if (v6)
  {
    dispatch_semaphore_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    pthread_mutex_lock((a1 + 56));
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 0x40000000;
  v21 = sub_1000050FC;
  v22 = &unk_1000822A0;
  v23 = &v33;
  v24 = a3;
  v8 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100004BDC;
  block[3] = &unk_1000822C8;
  block[8] = a1;
  block[9] = a3;
  block[10] = a4;
  v19 = v6;
  block[6] = &v25;
  block[7] = &v33;
  block[4] = v20;
  block[5] = &v29;
  dispatch_sync(v8, block);
  v9 = v34;
  if (*(v30 + 24) == 1 && !v34[3])
  {
    v17 = 0;
    v10 = sub_100028258(a1, v6);
    v11 = (v21)(v20, v10);
    v9 = v34;
    if (v11)
    {
      v12 = sub_10002836C(v34[3], &v17, a4);
      v9 = v34;
      if ((v12 & 1) == 0)
      {
        v13 = v34[3];
        if (v13)
        {
          v34[3] = 0;
          CFRelease(v13);
          v9 = v34;
        }
      }
    }
  }

  v14 = v9[3];
  if (v14 && (v26[3] & 1) == 0 && *(*(v14 + 16) + 136) && (*(v14 + 24) & 1) == 0)
  {
    v15 = *(a1 + 24);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_10001801C;
    v16[3] = &unk_1000822F0;
    v16[4] = &v33;
    v16[5] = a1;
    v16[6] = a4;
    dispatch_sync(v15, v16);
    v14 = v34[3];
  }

  if (a3)
  {
    *a3 = v14;
  }

  if (!v14)
  {
    if (v6)
    {
      dispatch_semaphore_signal(*(a1 + 120));
    }

    else
    {
      pthread_mutex_unlock((a1 + 56));
    }

    CFRelease(a1);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
}

void sub_1000054FC(const __CFString *a1, uint64_t a2)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = strlen(CStringPtr);
    v7 = *(a2 + 16);

    v7(a2, v5, v6);
  }

  else
  {
    usedBufLen = 0;
    Length = CFStringGetLength(a1);
    v12.location = 0;
    v12.length = Length;
    CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_1000266C4;
    v9[3] = &unk_100082008;
    v9[6] = 0;
    v9[7] = Length;
    v9[8] = usedBufLen;
    v9[4] = a2;
    v9[5] = a1;
    sub_10002ACF4(usedBufLen + 1, v9);
  }
}

uint64_t sub_100005620(void *a1, char *zSql, unint64_t nByte)
{
  v33 = 0;
  v7 = a1[5];
  v6 = a1[6];
  if (qword_100092B00 != -1)
  {
    dispatch_once(&qword_100092B00, &stru_100081F78);
  }

  if (byte_100092AF8 == 1)
  {
    __s = 0;
    asprintf(&__s, "%s%s", "EXPLAIN QUERY PLAN ", zSql);
    v8 = sub_1000027AC("item");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = zSql;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EXPLAIN QUERY PLAN for %s:", &buf, 0xCu);
    }

    v9 = *(v7 + 64);
    pzTail = 0;
    ppStmt = 0;
    v10 = strlen(__s);
    v11 = sqlite3_prepare_v2(v9, __s, v10, &ppStmt, &pzTail);
    if (v11)
    {
      v12 = v11;
      v13 = sub_1000027AC("item");
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        free(__s);
        goto LABEL_27;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = v12;
      v14 = "Unable to prepare query: %d";
      p_buf = &buf;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, p_buf, 8u);
      goto LABEL_26;
    }

    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    cf = 0;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v41 = sub_100028194;
    v42 = &unk_100082520;
    v43 = ppStmt;
    v44 = Mutable;
    sub_100005D40(v7, ppStmt, &cf, &buf);
    CStringPtr = CFStringGetCStringPtr(Mutable, 0x8000100u);
    v18 = sub_1000027AC("item");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (CStringPtr)
    {
      if (v19)
      {
        *v38 = 136315138;
        v39 = CStringPtr;
        v20 = "query plan: %s";
        v21 = v18;
        v22 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, v38, v22);
      }
    }

    else if (v19)
    {
      *v38 = 0;
      v20 = "Failed to get query plan";
      v21 = v18;
      v22 = 2;
      goto LABEL_14;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (cf)
    {
      v23 = sub_1000027AC("item");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 138412290;
        v39 = cf;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to show plan: %@", v38, 0xCu);
      }

      v24 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v24);
      }
    }

    v25 = sqlite3_finalize(ppStmt);
    if (!v25)
    {
      goto LABEL_26;
    }

    v26 = v25;
    v13 = sub_1000027AC("item");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *v38 = 67109120;
    LODWORD(v39) = v26;
    v14 = "Unable to finalize query: %d";
    p_buf = v38;
    goto LABEL_25;
  }

LABEL_27:
  v27 = *(v7 + 64);
  if (nByte >> 31)
  {
    result = sub_100026D4C(18, *(v7 + 64), v6, @"prepare_v2: sql bigger than INT_MAX");
LABEL_29:
    v29 = 0;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      *&buf = 0;
      result = sqlite3_prepare_v2(v27, zSql, nByte, &buf, &v33);
      if (!result)
      {
        break;
      }

      result = sub_1000275F0(v7, result, @"preparev2", i, v6);
      if ((result & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v29 = buf;
  }

  *(*(a1[4] + 8) + 24) = v29;
  v31 = a1[7];
  if (v31)
  {
    v32 = v33 - zSql;
    if (v33 > zSql && v33 < &zSql[nByte])
    {
      *v31 = v32;
      v31[1] = nByte - v32;
    }
  }

  return result;
}

BOOL sub_100005A5C(sqlite3_stmt *a1, uint64_t a2, const char *a3, unint64_t a4, CFErrorRef *a5)
{
  if (a4 >> 31)
  {
    return sub_100005AD8(18, a1, a5, @"bind_text[%d]: text bigger than INT_MAX", a2);
  }

  v9 = sqlite3_bind_text(a1, a2, a3, a4, 0xFFFFFFFFFFFFFFFFLL);
  return sub_100005AD8(v9, a1, a5, @"bind_text[%d]", a2);
}

BOOL sub_100005AD8(uint64_t a1, sqlite3_stmt *a2, CFErrorRef *a3, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a3)
  {
    v7 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
    v8 = sqlite3_db_handle(a2);
    v9 = sqlite3_sql(a2);
    v10 = sqlite3_extended_errcode(v8);
    v11 = sqlite3_errmsg(v8);
    if (v10 == a1)
    {
      sub_100026CFC(a1, a3, @"%@: [%d] %s sql: %s", v7, a1, v11, v9, v13, va);
    }

    else
    {
      sub_100026CFC(a1, a3, @"%@: [%d->%d] %s sql: %s", v7, a1, v10, v11, v9, va);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return a1 == 0;
}

uint64_t sub_100005BE0(uint64_t a1, sqlite3_stmt *pStmt, CFErrorRef *a3)
{
  v6 = 0;
  while (1)
  {
    if (*(a1 + 24) == 1 && !sqlite3_stmt_readonly(pStmt))
    {
      v7 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sqlite3_sql(pStmt);
        *buf = 136315138;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_SecDbStep: SecDbConnection is readonly but we're about to write: %s", buf, 0xCu);
      }
    }

    v9 = sqlite3_step(pStmt);
    if (v9 == 100)
    {
      break;
    }

    if (v9 == 101)
    {
      sqlite3_reset(pStmt);
      return 2;
    }

    if (!sub_1000275F0(a1, v9, @"step", v6++, a3))
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_100005D40(uint64_t a1, sqlite3_stmt *pStmt, CFErrorRef *a3, uint64_t a4)
{
  while (1)
  {
    v8 = sub_100005BE0(a1, pStmt, a3);
    if (v8 != 1)
    {
      return v8 != 0;
    }

    if (!a4)
    {
      break;
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v13 = sub_100006104;
    v14 = &unk_100082278;
    v15 = a4;
    v16 = &v17;
    v9 = v12;
    v10 = objc_autoreleasePoolPush();
    v13(v9);
    objc_autoreleasePoolPop(v10);

    LOBYTE(v9) = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
    if (v9)
    {
      return 1;
    }
  }

  sub_100026CFC(1, a3, @"SecDbStep SQLITE_ROW returned without a row handler");
  return 0;
}

uint64_t sub_100005E88()
{
  if (sub_100003140())
  {
    if (qword_100092BB8 != -1)
    {
      dispatch_once(&qword_100092BB8, &stru_100082690);
    }

    if (byte_100092BC0 != 1)
    {
      return 1;
    }
  }

  if (qword_100092BC8 != -1)
  {
    dispatch_once(&qword_100092BC8, &stru_1000826B0);
  }

  return 0;
}

void sub_100005F7C(void *a1)
{
  v1 = a1;
  if (sub_100005E88())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034638;
    block[3] = &unk_100083DF8;
    v3 = v1;
    if (qword_100092C60 != -1)
    {
      dispatch_once(&qword_100092C60, block);
    }

    dispatch_source_merge_data(qword_100092C50, 1uLL);
  }
}

void sub_10000603C(uint64_t a1)
{
  if (qword_100092C30)
  {
    v2 = *(qword_100092C30 + 184);
    if (v2)
    {
      Value = CFDictionaryGetValue(v2, *(a1 + 32));
      if (Value)
      {
        if ((v4 = Value, v5 = CFGetTypeID(Value), v5 == CFNumberGetTypeID()) && CFNumberGetType(v4) == kCFNumberSInt64Type || (v6 = CFGetTypeID(v4), v6 == CFNumberGetTypeID()) && CFNumberGetType(v4) == kCFNumberSInt32Type)
        {
          v7 = (*(*(a1 + 40) + 8) + 40);

          objc_storeStrong(v7, v4);
        }
      }
    }
  }
}

void sub_100006130(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(v2 + 16))();
  }

  dispatch_suspend(*(a1 + 8));
  v3 = dispatch_time(0, 1000000000 * *(a1 + 24));
  v4 = *a1;
  v5 = *(a1 + 8);

  dispatch_after_f(v3, v4, v5, j__dispatch_resume);
}

void sub_1000061A8(uint64_t *a1, const void *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1[1], a1[3]);
  Value = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      if ((SecPolicyCheckCertSSLHostname() & 1) == 0)
      {
        sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
      }

      if (sub_100003140())
      {
        v8 = objc_autoreleasePoolPush();
        if ((sub_100006980(*a1) & 3) != 1)
        {
          ++qword_100092EF8;
          v9 = +[TrustAnalytics logger];
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_10005625C;
          v10[3] = &unk_1000854B8;
          v10[4] = a1;
          v10[5] = v6;
          [v9 trustd_logDetailedEventforEventNamed:@"PinningEvent" attributesCallback:v10];
        }

        objc_autoreleasePoolPop(v8);
      }
    }
  }
}

BOOL sub_100006318(sqlite3_stmt *a1, CFErrorRef *a2)
{
  v4 = sqlite3_db_handle(a1);
  v5 = sqlite3_finalize(a1);
  return !v5 || sub_100026D4C(v5, v4, a2, @"finalize: %p", a1);
}

void sub_100006380(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10000643C;
  block[3] = &unk_100082310;
  block[4] = a1;
  block[5] = v2;
  v6 = v3;
  dispatch_sync(v4, block);
  if (v3 == 1)
  {
    dispatch_semaphore_signal(*(v2 + 120));
  }

  else
  {
    pthread_mutex_unlock((v2 + 56));
  }

  CFRelease(a1);
  CFRelease(v2);
}

void sub_10000643C(uint64_t a1)
{
  if (*(*(a1 + 32) + 48) == 1)
  {
    v2 = sub_1000027AC("SecWarning");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecDbConnectionRelease: IO failure reported in connection, throwing away currently idle caches", &v20, 2u);
    }

    CFArrayRemoveAllValues(*(*(a1 + 40) + 40));
    CFArrayRemoveAllValues(*(*(a1 + 40) + 48));
  }

  else
  {
    Count = CFArrayGetCount(*(*(a1 + 40) + 48));
    v4 = CFArrayGetCount(*(*(a1 + 40) + 40)) + Count;
    v5 = 40;
    if (*(a1 + 48))
    {
      v5 = 48;
    }

    v6 = *(*(a1 + 40) + v5);
    v7 = CFArrayGetCount(v6);
    if (*(a1 + 48))
    {
      v8 = 5;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(*(a1 + 40) + 166);
    if (v7 >= v8 || v4 >= v9)
    {
      if (v9 < 6)
      {
        v17 = sub_1000027AC("dbconn");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v18 = "rw";
        if (*(a1 + 48))
        {
          v18 = "ro";
        }

        v19 = *(*(a1 + 40) + 166);
        v20 = 136315394;
        v21 = v18;
        v22 = 1024;
        v23 = v19;
        v13 = "releasing %s connection rather than storing in size %d cache";
        v14 = v17;
        v15 = 18;
      }

      else
      {
        v11 = sub_1000027AC("SecError");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (*(a1 + 48))
        {
          v12 = "ro";
        }

        else
        {
          v12 = "rw";
        }

        v20 = 136315138;
        v21 = v12;
        v13 = "dbconn: did not expect to run out of room in the %s cache when releasing connection";
        v14 = v11;
        v15 = 12;
      }

      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
      return;
    }

    v16 = *(a1 + 32);

    CFArrayAppendValue(v6, v16);
  }
}

uint64_t sub_1000066A8(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 160)))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 160), 0);
    CFArrayRemoveValueAtIndex(*(a1 + 160), 0);
LABEL_3:
    sub_100003F3C(a1, ValueAtIndex);
    v3 = sub_100012B10;
LABEL_4:
    *(a1 + 248) = v3;
    return 1;
  }

  if (*(a1 + 176) == 1)
  {
    Count = CFArrayGetCount(*(a1 + 152));
    if (Count)
    {
      v6 = Count - 1;
      v7 = CFArrayGetValueAtIndex(*(a1 + 152), Count - 1);
      if (sub_1000128D8(a1, v7))
      {
        v8 = *(a1 + 144);
        v9 = *(a1 + 168) + 1;
        *(a1 + 168) = v9;
        CFArrayInsertValueAtIndex(v8, v9, v7);
      }

      CFArrayRemoveValueAtIndex(*(a1 + 152), v6);
      return 1;
    }
  }

  v10 = *(a1 + 168);
  if (v10 < 0)
  {
    v11 = CFArrayGetCount(*(a1 + 88));
    v12 = *(a1 + 80);
    if (v12 >= v11)
    {
      if (*(a1 + 176))
      {
        if (*(a1 + 177))
        {
          v3 = sub_1000169B4;
          goto LABEL_4;
        }

        *(a1 + 177) = 1;
      }

      else
      {
        *(a1 + 176) = 1;
      }
    }

    else
    {
      *(a1 + 80) = v12 + 1;
    }

    v15 = CFArrayGetCount(*(a1 + 144)) - 1;
LABEL_35:
    *(a1 + 168) = v15;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 144), v10);
  if (*(a1 + 177) == 1)
  {
    --*(a1 + 168);
    goto LABEL_3;
  }

  if (CFSetGetCount(*(a1 + 136)) >= 101)
  {
    v13 = sub_1000027AC("trust");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = CFSetGetCount(*(a1 + 136));
      v22 = 134217984;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "not building any more paths, already have %ld", &v22, 0xCu);
    }

    v15 = -1;
    goto LABEL_35;
  }

  v16 = ValueAtIndex[3];
  v17 = CFArrayGetCount(*(a1 + 72));
  if (v16 >= *(a1 + 80) + v17)
  {
    v15 = *(a1 + 168) - 1;
    goto LABEL_35;
  }

  v18 = 88;
  if (v16 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v18 = 72;
    v19 = 0;
  }

  v20 = CFArrayGetValueAtIndex(*(a1 + v18), v16 - v19);
  ValueAtIndex[3] = v16 + 1;
  v21 = *v20;

  return v21();
}

uint64_t sub_100006980(uint64_t a1)
{
  v2 = sub_100006A50(a1);
  if (([(__SecTask *)v2 hasPrefix:@"com.apple.Safari"]& 1) != 0 || ([(__SecTask *)v2 hasPrefix:@"com.apple.mobilesafari"]& 1) != 0 || ([(__SecTask *)v2 hasPrefix:@"com.apple.WebKit.Networking"]& 1) != 0)
  {
    v3 = 1;
  }

  else if (([(__SecTask *)v2 hasPrefix:@"com.apple.mail"]& 1) != 0 || ([(__SecTask *)v2 hasPrefix:@"com.apple.mobilemail"]& 1) != 0)
  {
    v3 = 2;
  }

  else if (([(__SecTask *)v2 hasPrefix:@"com.apple.CaptiveNetworkAssistant"]& 1) != 0)
  {
    v3 = 3;
  }

  else if (sub_10005BF24(a1))
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  return v3;
}

__SecTask *sub_100006A50(uint64_t a1)
{
  result = sub_10005BE8C(a1);
  if (result)
  {
    v2 = result;
    v3 = SecTaskCopySigningIdentifier(result, 0);
    CFRelease(v2);
    return v3;
  }

  return result;
}

void sub_100006A90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  if (v5 != v4)
  {
    if (!v4 || (CFRetain(*(a2 + 40)), (v5 = *(a2 + 56)) != 0))
    {
      CFRelease(v5);
    }

    *(a2 + 56) = v4;
  }

  v6 = *(a2 + 8);
  Count = CFArrayGetCount(v6);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      *(a2 + 16) = qword_100092E20;
      *(a2 + 24) = i;
      CFDictionaryApplyFunction(ValueAtIndex[4], sub_100006C64, a2);
    }
  }

  v11 = *(a2 + 64);
  *(a2 + 48) = v11;
  v12 = *(a2 + 56);
  v13 = *(a2 + 40);
  if (v13 != v12)
  {
    if (!v12 || (CFRetain(*(a2 + 56)), (v13 = *(a2 + 40)) != 0))
    {
      CFRelease(v13);
    }

    *(a2 + 40) = v12;
    v11 = *(a2 + 64);
  }

  *(*(*(a1 + 32) + 8) + 24) &= (v11 < 8) & ((0x17u >> v11) ^ 1);
}

uint64_t sub_100006BE8(void *a1, void *a2, _BYTE *a3)
{
  result = (*(a1[5] + 16))();
  if (result)
  {
    v7 = a1[7];
    v8 = a1[5];
    if (v7)
    {
      *v7 = v8;
    }

    result = sub_10000B794(a2, v8, a1[6]);
    if (result)
    {
      *(*(a1[4] + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

void sub_100006C64(void *key, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 64);
  v6 = v5 > 7;
  v7 = (1 << v5) & 0xE8;
  v8 = v6 || v7 == 0;
  if (!v8 && !*(a3 + 56))
  {
    return;
  }

  Value = CFDictionaryGetValue(*(a3 + 16), key);
  if (Value)
  {

    Value(a3, key);
    return;
  }

  v10 = *(a3 + 16);
  if (v10 == qword_100092E20)
  {
    if (CFDictionaryContainsKey(qword_100092E28, key))
    {
      return;
    }

    v11 = sub_1000027AC("SecWarning");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = 138412290;
    v13 = key;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "policy: unknown policy key %@, skipping", &v12, 0xCu);
    return;
  }

  if (v10 != qword_100092E28)
  {
    *(a3 + 64) = 7;
    return;
  }

  if (!CFDictionaryContainsKey(qword_100092E20, key))
  {
    v11 = sub_1000027AC("SecWarning");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = key;
      goto LABEL_19;
    }
  }
}

uint64_t sub_100006E14(uint64_t *a1, __CFArray *a2, int a3, double a4)
{
  if (qword_100092E40 != -1)
  {
    dispatch_once(&qword_100092E40, &stru_100084050);
  }

  if (off_1000927D0(off_1000927C0, a2, a1))
  {
    return 1;
  }

  if (qword_100092AE0 != -1)
  {
    dispatch_once(&qword_100092AE0, &stru_100081EF8);
  }

  if ((byte_100092AD8 & 1) != 0 || (IsValid = 1, (sub_100008B24(a2, 1) & 1) == 0))
  {
    v8 = qword_100092E30;
    v37.length = CFArrayGetCount(qword_100092E30);
    v37.location = 0;
    if (CFArrayContainsValue(v8, v37, a2))
    {
      return 1;
    }

    if (a2 && qword_100092E38)
    {
      if (CFEqual(qword_100092E38, a2))
      {
        return 1;
      }
    }

    else if (qword_100092E38 == a2)
    {
      return 1;
    }

    IsValid = SecCertificateIsValid();
    if (IsValid && a3)
    {
      if (!SecIsInternalRelease())
      {
        return 1;
      }

      if (qword_100092AD0 != -1)
      {
        dispatch_once(&qword_100092AD0, &stru_100081EB8);
      }

      if (byte_100092AC8 != 1)
      {
        return 1;
      }

      if (sub_10000E860(*a1, a2) == 8)
      {
        return 1;
      }

      if ((sub_10005BF24(*a1) & 1) == 0)
      {
        v10 = sub_100006A50(*a1);
        if (!v10)
        {
          return 1;
        }

        v11 = v10;
        HasPrefix = CFStringHasPrefix(v10, @"com.apple.");
        CFRelease(v11);
        if (!HasPrefix)
        {
          return 1;
        }
      }

      SecCertificateNotValidAfter();
      SecCertificateNotValidBefore();
      if (SecCertificateIsValid())
      {
        return 1;
      }

      SecCertificateNotValidAfter();
      v14 = CFDateCreate(0, v13);
      v15 = sub_10000E860(*a1, a2);
      v16 = sub_100054FC0(v15);
      CFArrayGetValueAtIndex(a1[1], a1[3]);
      Name = SecPolicyGetName();
      v18 = SecCertificateCopyData(a2);
      Length = CFDataGetLength(v18);
      Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
      BytePtr = CFDataGetBytePtr(v18);
      v22 = CFDataGetLength(v18);
      if (v22 >= 1)
      {
        v23 = v22;
        do
        {
          v24 = *BytePtr++;
          CFStringAppendFormat(Mutable, 0, @"%02X", v24);
          --v23;
        }

        while (v23);
      }

      v25 = sub_100006A50(*a1);
      v26 = sub_1000027AC("earlyExpiration");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v28 = v14;
        v29 = 2112;
        v30 = v25;
        v31 = 2112;
        v32 = Name;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = Mutable;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "WARNING: Upcoming anchor expiration: %@. Evaluated by %@ against %@ using %@.\n%@", buf, 0x34u);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      return 0;
    }
  }

  return IsValid;
}

NSObject *sub_1000071FC(NSObject *result)
{
  if (result)
  {
    if (HIDWORD(result[4].isa) == 2)
    {
      v2 = geteuid();
    }

    else
    {
      v2 = 282;
    }

    return sub_100008190(v2);
  }

  return result;
}

BOOL sub_10000724C(uint64_t a1, uint64_t a2)
{
  NormalizedSubjectContent = SecCertificateGetNormalizedSubjectContent();
  v3 = sub_100002A58();
  if (v3)
  {
    v4 = v3;
    v5 = sub_100007B0C(NormalizedSubjectContent);
    if (v5 && (v6 = sub_10000CB3C(v5)) != 0)
    {
      v7 = v6;
      Length = SecCertificateGetLength();
      BytePtr = SecCertificateGetBytePtr();
      Count = CFArrayGetCount(v7);
      if (Count < 1)
      {
        v13 = 0;
      }

      else
      {
        v11 = Count;
        v12 = 0;
        v13 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v12);
          if (ValueAtIndex)
          {
            v15 = ValueAtIndex;
            v16 = CFGetTypeID(ValueAtIndex);
            if (v16 == CFDataGetTypeID())
            {
              v17 = CFDataGetLength(v15);
              v18 = CFDataGetBytePtr(v15);
              if (Length >= 1 && v17 == Length && !memcmp(BytePtr, v18, Length))
              {
                break;
              }
            }
          }

          v13 = ++v12 < v11;
        }

        while (v11 != v12);
      }

      CFRelease(v7);
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    return 0;
  }

  return v13;
}

void sub_100007390(uint64_t a1, const void *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  Value = CFDictionaryGetValue(ValueAtIndex[4], a2);
  v6 = SecPolicyCheckCertExtendedKeyUsageFiltered();
  if ((v6 & 1) == 0)
  {
    sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
  }

  if (*a1)
  {
    v7 = *(*a1 + 272);
  }

  else
  {
    v7 = 0;
  }

  v8 = SecPolicyCheckCertExtendedKeyUsageFiltered();
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1 && (v8 & 1) == 0)
  {
    *(v7 + 9) = 1;
  }

  v10 = SecCertificateCopyExtendedKeyUsage();
  v11 = v10;
  if (v7 && v10)
  {
    if (CFArrayGetCount(v10) >= 2)
    {
      *(v7 + 10) = 1;
    }

    goto LABEL_17;
  }

  if (v10)
  {
LABEL_17:
    CFRelease(v11);
  }

  if (Value && (v12 = CFGetTypeID(Value), v12 == CFDataGetTypeID()) && CFDataGetLength(Value) == 8)
  {
    BytePtr = CFDataGetBytePtr(Value);
    v14 = memcmp(BytePtr, &unk_10006879A, 8uLL) != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*a1 + 200);
  if (v15)
  {
    v16 = *(v15 + 16);
    if (v16 >= 3 && !v14)
    {
      v17 = 2 - v16;
      v18 = 18;
      do
      {
        v19 = SecCertificateCopyExtendedKeyUsage();
        if (v19)
        {
          v20 = v19;
          if (CFArrayGetCount(v19) && (SecPolicyCheckCertExtendedKeyUsage() & 1) == 0 && (SecPolicyCheckCertExtendedKeyUsage() & 1) == 0)
          {
            sub_100012178(a1, a2, v18 - 17, kCFBooleanFalse, 0, 0);
          }

          CFRelease(v20);
        }

        ++v18;
      }

      while (v17 + v18 != 18);
    }
  }
}

uint64_t sub_100007610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count <= 0)
  {
    v10 = *(v15 + 24);
  }

  else
  {
    v7 = 0;
    v8 = Count - 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v7);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 0x40000000;
      v13[2] = sub_100006BE8;
      v13[3] = &unk_100085A20;
      v13[6] = a2;
      v13[7] = a3;
      v13[8] = a1;
      v13[4] = &v14;
      v13[5] = ValueAtIndex;
      sub_1000029CC(a1, v13);
      v10 = *(v15 + 24);
      if (v10)
      {
        break;
      }
    }

    while (v8 != v7++);
  }

  _Block_object_dispose(&v14, 8);
  return v10 & 1;
}

uint64_t sub_100007738(uint64_t a1, __CFArray *a2, uint64_t a3)
{
  v4 = sub_100039694(a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFArrayGetTypeID() && (!a3 || !CFArrayGetValueAtIndex(*(a3 + 8), 0) ? (OidString = kSecPolicyAppleX509Basic) : (OidString = SecPolicyGetOidString()), (v8 = sub_10005BB30(v5, OidString)) != 0))
  {
    CFRelease(v8);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v5);
  return v9;
}

__CFArray *sub_1000077E0(const void *a1, const void *a2, const void *a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v7 = CFGetTypeID(a2);
  if (v7 == CFDataGetTypeID())
  {
    Length = CFDataGetLength(a2);
    v9 = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
    BytePtr = CFDataGetBytePtr(a2);
    v11 = CFDataGetLength(a2);
    if (v11 >= 1)
    {
      v12 = v11;
      do
      {
        v13 = *BytePtr++;
        CFStringAppendFormat(v9, 0, @"%02X", v13);
        --v12;
      }

      while (v12);
    }

    if (v9)
    {
      v14 = CFGetTypeID(v9);
      if (v14 == CFStringGetTypeID())
      {
        v15 = sub_100007A30();
        if (v15)
        {
          v16 = v15;
          v17 = CFGetTypeID(v15);
          if (v17 == CFDictionaryGetTypeID())
          {
            v18 = CFGetTypeID(a1);
            if (v18 == CFStringGetTypeID())
            {
              Value = CFDictionaryGetValue(v16, a1);
              if (Value)
              {
                v20 = Value;
                CFRetain(Value);
                CFGetTypeID(v20);
                CFArrayGetTypeID();
                CFRelease(v16);
                v21 = CFGetTypeID(v20);
                if (v21 == CFArrayGetTypeID())
                {
                  Count = CFArrayGetCount(v20);
                  if (Count >= 1)
                  {
                    v23 = Count;
                    for (i = 0; i != v23; ++i)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
                      if (ValueAtIndex)
                      {
                        v26 = ValueAtIndex;
                        v27 = CFGetTypeID(ValueAtIndex);
                        if (v27 == CFDictionaryGetTypeID())
                        {
                          v28 = CFDictionaryGetValue(v26, a3);
                          if (v28)
                          {
                            v29 = v28;
                            v30 = CFGetTypeID(v28);
                            if (v30 == CFStringGetTypeID() && CFStringCompare(v29, v9, 0) == kCFCompareEqualTo)
                            {
                              CFArrayAppendValue(Mutable, v26);
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v16 = v20;
              }
            }
          }

          CFRelease(v16);
        }
      }

      CFRelease(v9);
    }
  }

  if (CFArrayGetCount(Mutable) <= 0 && Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t sub_100007A30()
{
  v0 = qword_100092C10;
  if (!qword_100092C10)
  {
    if (qword_100092C38 != -1)
    {
      dispatch_once(&qword_100092C38, &stru_1000827E0);
    }

    v0 = qword_100092C10;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007C1C;
  block[3] = &unk_100083638;
  block[4] = &v4;
  dispatch_sync(v0, block);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

const __CFData *sub_100007B0C(const __CFData *a1)
{
  Value = a1;
  if (!a1)
  {
    return Value;
  }

  v2 = sub_100002A58();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v2[11];
  if (!v4)
  {
    CFRelease(v2);
    return 0;
  }

  CFRetain(v2[11]);
  CFRelease(v3);
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(Value);
  CC_SHA1(BytePtr, Length, v9);
  v7 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v9, 20, kCFAllocatorNull);
  Value = CFDictionaryGetValue(v4, v7);
  CFRelease(v4);
  if (v7)
  {
    CFRelease(v7);
  }

  return Value;
}

void *sub_100007C1C(void *result)
{
  if (qword_100092C30)
  {
    v1 = result;
    v2 = *(qword_100092C30 + 80);
    if (v2)
    {
      result = CFRetain(*(qword_100092C30 + 80));
    }

    *(*(v1[4] + 8) + 24) = v2;
  }

  return result;
}

void sub_100007C68(uint64_t a1, const __CFArray *cf)
{
  if (cf)
  {
    v3 = cf;
    v4 = 0;
  }

  else
  {
    v4 = CFArrayCreate(kCFAllocatorDefault, 0, 0, &kCFTypeArrayCallBacks);
    v3 = v4;
    if (!v4)
    {
      return;
    }
  }

  v5 = *(a1 + 136);
  CFRetain(v3);
  *(v5 + 24) = v3;
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t sub_100007D00(NSObject **a1, uint64_t a2, _BYTE *a3, Class *a4, const void **a5)
{
  if (a3)
  {
    *a3 = 0;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = sub_1000071FC(a1);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = SecCertificateCopySHA256Digest();
  v9 = v22[3];
  if (!v9)
  {
    v19 = @"failed to get cert sha256 digest";
LABEL_32:
    sub_10001C2D4(-108, a5, v19);
LABEL_33:
    *(v30 + 24) = 0;
    if (!a1)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  if (CFDataGetLength(v9) <= 0)
  {
    v19 = @"cert digest of bad length";
    goto LABEL_32;
  }

  if (!a1 || !a1[1])
  {
    sub_10001C2D4(-50, a5, @"ts is NULL");
    goto LABEL_33;
  }

  if (v26[3])
  {
    v10 = *a1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000082A8;
    block[3] = &unk_100085DD0;
    block[4] = &v29;
    block[5] = &v21;
    block[6] = &v25;
    block[7] = a1;
    block[8] = a5;
    block[9] = a3;
    block[10] = a4;
    dispatch_sync(v10, block);
  }

  else
  {
    sub_10001C2D4(-26276, a5, @"failed to get uuid");
    *(v30 + 24) = 0;
  }

LABEL_9:
  v11 = a1[5];
  if (v11 && (a3 && !*a3 || a4 && !*a4) && CFSetContainsValue(v11[1].isa, v22[3]))
  {
    if (a3)
    {
      *a3 = 1;
    }

    if (a4)
    {
      v12 = a1[5];
      isa = v12[3].isa;
      if (isa)
      {
        CFRetain(v12[3].isa);
      }

      *a4 = isa;
    }

    *(v30 + 24) = 1;
    if (a5)
    {
      v14 = *a5;
      if (*a5)
      {
        *a5 = 0;
        CFRelease(v14);
      }
    }
  }

LABEL_24:
  v15 = v26[3];
  if (v15)
  {
    v26[3] = 0;
    CFRelease(v15);
  }

  v16 = v22[3];
  if (v16)
  {
    v22[3] = 0;
    CFRelease(v16);
  }

  v17 = *(v30 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v17;
}

uint64_t sub_100007F74(CFTypeRef cf2, CFTypeRef *a2)
{
  if (!cf2)
  {
    v6 = 0;
    goto LABEL_7;
  }

  if (!CFEqual(@"user", cf2))
  {
    if (CFEqual(@"admin", cf2))
    {
      if (qword_100092F78 != -1)
      {
        dispatch_once(&qword_100092F78, &stru_100085BE8);
      }

      v4 = &qword_100092F80;
      goto LABEL_16;
    }

    if (CFEqual(@"system", cf2))
    {
      if (qword_100092F88 != -1)
      {
        dispatch_once(&qword_100092F88, &stru_100085C28);
      }

      v4 = &qword_100092F90;
      goto LABEL_16;
    }

    v6 = cf2;
LABEL_7:
    sub_10001C2D4(-50, a2, @"unknown domain: %@", v6);
    return 0;
  }

  if (qword_100092F68 != -1)
  {
    dispatch_once(&qword_100092F68, &stru_100085BA8);
  }

  v4 = &qword_100092F70;
LABEL_16:
  result = *v4;
  if (*v4)
  {
    return result;
  }

  sub_10001C2D4(-26276, a2, @"unable to initialize trust store for %@ domain", cf2);
  return 0;
}

uint64_t sub_1000080B8(uint64_t a1, uint64_t a2, _BYTE *a3, const void **a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a1 && *(a1 + 36) == 1)
  {
    if (a3)
    {
      if (qword_100092AF0 != -1)
      {
        v7 = a2;
        dispatch_once(&qword_100092AF0, &stru_100081F38);
        a2 = v7;
      }

      if (byte_100092AE8)
      {
        v5 = off_1000927A8;
      }

      else
      {
        v5 = off_1000927D8;
      }

      *a3 = (v5[2])(v5, a2);
    }

    return 1;
  }

  else
  {

    return sub_100007D00(a1, a2, a3, 0, a4);
  }
}

NSObject *sub_100008190(uid_t a1)
{
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v2 = mbr_uid_to_uuid(a1, v8);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = a1;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "failed to get UUID for user(%d) - %d", buf, 0xEu);
    }

    v5 = 0;
  }

  else
  {
    v6 = [[NSData alloc] initWithBytes:v8 length:16];
    v4 = v6;
    if (v6)
    {
      v4 = v6;
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void sub_1000082A8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 33))
  {
    v3 = *(v2 + 24);
    BytePtr = CFDataGetBytePtr(*(*(*(a1 + 40) + 8) + 24));
    Length = CFDataGetLength(*(*(*(a1 + 40) + 8) + 24));
    if (Length >> 31)
    {
LABEL_5:
      v10 = 18;
LABEL_6:
      v11 = sub_100005AD8(v10, *(*(a1 + 56) + 24), *(a1 + 64), @"sqlite3_bind_blob failed");
LABEL_7:
      v12 = 0;
      v13 = 0;
      *(*(*(a1 + 32) + 8) + 24) = v11;
      goto LABEL_8;
    }

    v6 = sqlite3_bind_blob(v3, 1, BytePtr, Length, 0);
    if (v6)
    {
      goto LABEL_35;
    }

    v7 = *(*(a1 + 56) + 24);
    v8 = CFDataGetBytePtr(*(*(*(a1 + 48) + 8) + 24));
    v9 = CFDataGetLength(*(*(*(a1 + 48) + 8) + 24));
    if (v9 >> 31)
    {
      goto LABEL_5;
    }

    v6 = sqlite3_bind_blob(v7, 2, v8, v9, 0);
    if (v6)
    {
LABEL_35:
      v10 = v6;
      goto LABEL_6;
    }

    v15 = sqlite3_step(*(*(a1 + 56) + 24));
    LODWORD(v10) = v15;
    v12 = 0;
    if (!v15 || v15 == 101)
    {
      v13 = 0;
      goto LABEL_8;
    }

    if (v15 != 100)
    {
      v11 = sub_100005AD8(v15, *(*(a1 + 56) + 24), *(a1 + 64), @"sqlite3_step failed");
      goto LABEL_7;
    }

    v16 = *(a1 + 72);
    if (v16)
    {
      *v16 = 1;
    }

    if (*(a1 + 80))
    {
      v17 = sqlite3_column_blob(*(*(a1 + 56) + 24), 0);
      v18 = sqlite3_column_bytes(*(*(a1 + 56) + 24), 0);
      v13 = CFDataCreate(0, v17, v18);
      if (v13)
      {
        v19 = CFPropertyListCreateWithData(0, v13, 0, 0, *(a1 + 64));
        v12 = v19;
        if (v19)
        {
          v20 = CFGetTypeID(v19);
          if (v20 == CFArrayGetTypeID())
          {
            **(a1 + 80) = CFRetain(v12);
LABEL_31:
            LODWORD(v10) = 100;
            goto LABEL_8;
          }
        }
      }

      else
      {
        v12 = 0;
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      goto LABEL_31;
    }

    v12 = 0;
    v13 = 0;
    goto LABEL_31;
  }

  v12 = 0;
  v13 = 0;
  LODWORD(v10) = 0;
  *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_8:
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v14 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21[0] = 67109120;
      v21[1] = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to query for cert in trust store: %d", v21, 8u);
    }

    sub_100054DC0(4, 3, v10);
  }

  sqlite3_reset(*(*(a1 + 56) + 24));
  sqlite3_clear_bindings(*(*(a1 + 56) + 24));
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_1000085B0(uint64_t a1, const void *a2)
{
  v4 = sub_100002A58();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 24);
    if (v6)
    {
      CFRetain(*(v4 + 24));
      CFRelease(v5);
      v7 = SecCertificateCopyPublicKeySHA1Digest();
      if (v7)
      {
        v8 = v7;
        if (CFSetContainsValue(v6, v7))
        {
          sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
        }

        CFRelease(v8);
      }
    }

    else
    {
      v6 = v4;
    }

    CFRelease(v6);
  }
}

void sub_1000086A0(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          NormalizedIssuerContent = SecCertificateGetNormalizedIssuerContent();
          if (NormalizedIssuerContent)
          {
            v8 = NormalizedIssuerContent;
            if (CFDataGetLength(NormalizedIssuerContent) == 151)
            {
              BytePtr = CFDataGetBytePtr(v8);
              if (!memcmp(&unk_10006C822, BytePtr, 0x97uLL))
              {
                v10 = SecCertificateCopySerialNumberData(v6, 0);
                if (v10)
                {
                  v11 = v10;
                  Length = CFDataGetLength(v10);
                  v13 = CFDataGetBytePtr(v11);
                  if (Length >= 1)
                  {
                    while (!*v13)
                    {
                      ++v13;
                      if (Length-- <= 1)
                      {
                        goto LABEL_32;
                      }
                    }

                    if (Length == 16)
                    {
                      v19 = &qword_10006C8B9;
                      v20 = 9;
                      while (*v19 != *v13 || v19[1] != *(v13 + 1))
                      {
                        v19 += 2;
                        if (!--v20)
                        {
                          goto LABEL_32;
                        }
                      }

                      sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
                      goto LABEL_22;
                    }
                  }

LABEL_32:
                  CFRelease(v11);
                }
              }
            }
          }
        }
      }
    }
  }

  v15 = sub_100002A58();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v11 = *(v15 + 16);
  if (v11)
  {
    CFRetain(*(v15 + 16));
    CFRelease(v16);
    v17 = SecCertificateCopyPublicKeySHA1Digest();
    if (v17)
    {
      v18 = v17;
      if (CFSetContainsValue(v11, v17))
      {
        sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
      }

      CFRelease(v18);
    }
  }

  else
  {
    v11 = v15;
  }

LABEL_22:

  CFRelease(v11);
}

uint64_t sub_100008888(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      result = SecPolicyCheckCertWeakSignature();
      if ((result & 1) == 0)
      {
        result = sub_100012178(a1, a2, i, kCFBooleanFalse, 0, 0);
        if (!result)
        {
          break;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100008978(uint64_t result, const void *a2)
{
  v2 = *(*result + 200);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 >= 1)
    {
      v5 = result;
      v6 = 0;
LABEL_4:
      if (v6 < 0 || *(v2 + 16) <= v6 || (v7 = *(v2 + 8 * v6 + 136)) == 0 || (result = *(v7 + 16)) == 0 || (result = SecCertificateIsWeakKey(), !result) || (result = sub_100012178(v5, a2, v6, kCFBooleanFalse, 0, 0), result))
      {
        while (++v6 < v3)
        {
          v2 = *(*v5 + 200);
          if (v2)
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100008A40(uint64_t result, const void *a2)
{
  v2 = *(*result + 200);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 >= 1)
    {
      v5 = result;
      v6 = 0;
      v7 = *(*result + 120);
      while (1)
      {
        v8 = 0;
        if (v2 && (v6 & 0x8000000000000000) == 0)
        {
          if (*(v2 + 16) > v6 && (v9 = *(v2 + 8 * v6 + 136)) != 0)
          {
            v8 = *(v9 + 16);
          }

          else
          {
            v8 = 0;
          }
        }

        result = sub_100006E14(v5, v8, 0, v7);
        if ((result & 1) == 0)
        {
          result = sub_100012178(v5, a2, v6, kCFBooleanFalse, 0, 0);
          if (!result)
          {
            break;
          }
        }

        if (++v6 >= v3)
        {
          break;
        }

        v2 = *(*v5 + 200);
      }
    }
  }

  return result;
}

uint64_t sub_100008B24(uint64_t a1, char a2)
{
  v3 = SecCertificateCopySHA256Digest();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (qword_100092BA0 != -1)
  {
    dispatch_once(&qword_100092BA0, &stru_100082608);
  }

  if (!qword_100092BA8)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(qword_100092BA8, v4);
  v6 = Value;
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID())
    {
      v8 = CFBooleanGetValue(v6);
      v6 = v8 != 0;
      if (a2)
      {
        v9 = v8;
        v10 = SecIsInternalRelease() | ((a2 & 2) >> 1);
        if (v9)
        {
          v6 = 1;
        }

        else
        {
          v6 = v10;
        }
      }

      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_11:
  CFRelease(v4);
  return v6;
}

CFURLRef sub_100008BFC(uint64_t a1)
{
  if (qword_100092C78 != -1)
  {
    dispatch_once(&qword_100092C78, &stru_100082A80);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = @"trustd/";
    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = [NSString stringWithFormat:@"trustd/%@", a1];
LABEL_6:
  v3 = sub_100009020(@"private/var/protected/", v2);

  return v3;
}

uint64_t sub_100008C98(uint64_t a1, uint64_t a2)
{
  if (qword_100092DD8 != -1)
  {
    dispatch_once(&qword_100092DD8, &stru_100083920);
  }

  v4 = sub_100008DD0();
  v5 = sub_100008E00(a1, a2, "CA Revocation Additions", byte_100092DD0, &dword_100092DD4, v4, &stru_1000838B8, &stru_1000838D8);

  return v5;
}

CFURLRef sub_100008D3C(uint64_t a1)
{
  if (qword_100092C80 != -1)
  {
    dispatch_once(&qword_100092C80, &stru_100082AC0);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = @"private/";
    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = [NSString stringWithFormat:@"private/%@", a1];
LABEL_6:
  v3 = sub_100008BFC(v2);

  return v3;
}

CFURLRef sub_100008DD0()
{
  v0 = sub_100008D3C(@"CARevocation.plist");

  return v0;
}

uint64_t sub_100008E00(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int *a5, void *a6, void *a7, void *a8)
{
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (sub_100003140())
  {
    v18 = objc_autoreleasePoolPush();
    if (qword_100092C70 != -1)
    {
      dispatch_once(&qword_100092C70, &stru_100082A60);
    }

    if (byte_100092C68 & 1) == 0 && (check = 0, v19 = notify_check(*a5, &check), v19 | check) || (v20 = atomic_load(a4), (v20))
    {
      v27 = 0;
      v21 = v16[2](v16, v15, &v27);
      v22 = v27;
      if (v21 && [v21 count])
      {
        if (a1)
        {
          v23 = [v21 objectForKeyedSubscript:a1];
        }

        else
        {
          v23 = v17[2](v17, v21, a2);
        }

        v24 = v23;
      }

      else
      {
        v25 = sub_1000027AC("config");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          check = 136446466;
          v29 = a3;
          v30 = 2112;
          v31 = v22;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "skipping further reads. no %{public}s found: %@", &check, 0x16u);
        }

        v24 = 0;
        atomic_store(0, a4);
      }
    }

    else
    {
      v24 = 0;
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

CFURLRef sub_100009020(const __CFString *a1, uint64_t a2)
{
  v4 = CFURLCreateWithFileSystemPath(0, @"/", kCFURLPOSIXPathStyle, 1u);
  if (a2)
  {
    v5 = kCFAllocatorDefault;
    Copy = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@", a1, a2);
  }

  else
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    v5 = kCFAllocatorDefault;
    Copy = CFStringCreateCopy(kCFAllocatorDefault, a1);
  }

  v7 = Copy;
  if (v4 && Copy)
  {
    v8 = CFURLCreateCopyAppendingPathComponent(v5, v4, Copy, a2 == 0);
    CFRelease(v7);
LABEL_11:
    CFRelease(v4);
    return v8;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_10:
  v8 = 0;
  if (v4)
  {
    goto LABEL_11;
  }

  return v8;
}

BOOL sub_10000910C(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + 16);
  if (v2 < 2)
  {
    return 1;
  }

  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = sub_100015F54(a1);
    if (*(a1 + 213) != 1 || (v7 = *(v6 + 64), v7 <= 7) && ((0x17u >> v7) & 1) == 0)
    {
      v8 = *(a1 + 200);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9 >= 1)
        {
          v10 = 0;
          for (i = 0; i != v9; ++i)
          {
            if (*(v1 + 88) > i)
            {
              v12 = *(v1 + 80);
              if (v12)
              {
                sub_100013C34((v12 + v10));
              }
            }

            v10 += 40;
          }
        }
      }

      return 1;
    }

    sub_10001C550(v1);
  }

  v88 = v5;
  v13 = 0;
  v14 = 0;
  *(v1 + 80) = malloc_type_calloc(0x28uLL, v2, 0x80DB4902uLL);
  *(v1 + 88) = v2;
  atomic_store(v2, (a1 + 208));
  key = kSecCARevocationAdditionsKey;
  do
  {
    if (*(v1 + 88) <= v14)
    {
      goto LABEL_108;
    }

    v15 = *(v1 + 80);
    if (!v15)
    {
      goto LABEL_108;
    }

    v16 = (v15 + v13);
    *v16 = a1;
    v16[1] = v14;
    *&context = _NSConcreteStackBlock;
    *(&context + 1) = 0x40000000;
    v94 = sub_100053AAC;
    v95 = &unk_100085338;
    v96 = &qword_100092EB8;
    if (qword_100092EB0 != -1)
    {
      dispatch_once(&qword_100092EB0, &context);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v18 = Instance;
      Instance[2] = a1;
      Instance[3] = v16;
      Instance[7] = v14;
      if (a1)
      {
        v19 = *(a1 + 200);
        if (v19)
        {
          if (*(v19 + 16) > v14 + 1)
          {
            v20 = v19 + 8 * v14;
            v21 = *(v20 + 136);
            if (v21)
            {
              v22 = *(v21 + 16);
            }

            else
            {
              v22 = 0;
            }

            v24 = *(v20 + 144);
            if (v24)
            {
              v25 = *(v24 + 16);
            }

            else
            {
              v25 = 0;
            }

            v18[4] = sub_100012B7C(v22, v25);
          }
        }
      }

      *(v15 + v13 + 16) = v18;
      v23 = (v15 + v13 + 16);
      *(v15 + v13 + 32) = 0;
    }

    else
    {
      v23 = (v15 + 40 * v14 + 16);
      *(v15 + v13 + 16) = 0;
      sub_10001C4EC(v15 + v13);
      *(v15 + v13 + 32) = 1;
      sub_100013C34((v15 + v13));
      atomic_fetch_add((*(v15 + v13) + 208), 0xFFFFFFFF);
    }

    if (SecCertificateHasOCSPNoCheckMarkerExtension())
    {
      if (a1)
      {
        v26 = *(a1 + 272);
        if (v26)
        {
          *(v26 + 46) = 1;
        }
      }

      *(v15 + v13 + 32) = 1;
      sub_100013C34((v15 + v13));
      atomic_fetch_add((*(v15 + v13) + 208), 0xFFFFFFFF);
    }

    v27 = v15 + v13;
    if (*(v15 + v13 + 32))
    {
      goto LABEL_108;
    }

    if (sub_100003140())
    {
      v28 = *v16;
      if ((*(*v16 + 179) & 1) == 0 && (*(v28 + 192) != 1 || (v29 = **(v28 + 184)) != 0 && (!CFArrayGetValueAtIndex(*(v29 + 8), 0) || (Name = SecPolicyGetName()) == 0 || !CFEqual(Name, @"OCSPSigner"))))
      {
        if (qword_100092E78 != -1)
        {
          dispatch_once(&qword_100092E78, &stru_100084278);
        }

        dispatch_source_merge_data(qword_100092E80, 1uLL);
        v31 = *(*v16 + 200);
        if (v31)
        {
          v32 = *(v31 + 16);
          if (v32)
          {
            v33 = v16[1];
            if (v32 <= v33 + 1)
            {
              if (v32 == v33 + 1)
              {
                if (*(v31 + 48) == 1)
                {
                  v35 = *(v31 + 40);
                }

                else
                {
                  v35 = -1;
                }

                v34 = 0;
                v37 = 0;
                if (v35 == v33)
                {
                  goto LABEL_69;
                }

LABEL_63:
                v38 = 0;
                if (v33 < 0 || v32 <= v33)
                {
                  goto LABEL_68;
                }

                v39 = *(v31 + 8 * v33 + 136);
                if (v39)
                {
                  v38 = *(v39 + 16);
LABEL_68:
                  v37 = sub_100011B2C(v38, v34);
                  v31 = *(*v16 + 200);
LABEL_69:
                  v40 = 0;
                  if (v31 && v32 >= 1)
                  {
                    if (*(v31 + 16) >= v32 && (v41 = *(v31 + 8 * (v32 - 1) + 136)) != 0)
                    {
                      v40 = *(v41 + 16);
                    }

                    else
                    {
                      v40 = 0;
                    }
                  }

                  if (v37)
                  {
                    if (v40)
                    {
                      v42 = v40;
                      v82 = v37;
                      v84 = SecCertificateCopySHA256Digest();
                      v43 = off_1000927D0(off_1000927C0, v42, 0);
                      v37 = v82;
                      if (v43)
                      {
                        *(v82 + 54) = 0;
                      }

                      if (qword_100092AE0 != -1)
                      {
                        dispatch_once(&qword_100092AE0, &stru_100081EF8);
                        v37 = v82;
                      }

                      if ((byte_100092AD8 & 1) == 0)
                      {
                        if (sub_100008B24(v42, 0))
                        {
                          v37 = v82;
                          *(v82 + 54) = 0;
                        }

                        else
                        {
                          v37 = v82;
                        }
                      }
                    }

                    else
                    {
                      v84 = 0;
                    }

                    v44 = *(v37 + 40);
                    if (v44)
                    {
                      *(v37 + 40) = 0;
                      v45 = v37;
                      CFRelease(v44);
                      v37 = v45;
                    }

                    *(v37 + 40) = v84;
                    v46 = *(v15 + v13 + 24);
                    *(v15 + v13 + 24) = v37;
                    if (v46)
                    {
                      CFRelease(v46);
                    }

                    sub_100015868((v15 + v13));
                  }

                  goto LABEL_91;
                }

LABEL_67:
                v38 = 0;
                goto LABEL_68;
              }
            }

            else
            {
              if (v33 < -1)
              {
                v34 = 0;
                goto LABEL_67;
              }

              v36 = *(v31 + 8 * (v33 + 1) + 136);
              if (v36)
              {
                v34 = *(v36 + 16);
                goto LABEL_63;
              }
            }

            v34 = 0;
            goto LABEL_63;
          }
        }
      }
    }

LABEL_91:
    if (v14 + 1 >= v2)
    {
      goto LABEL_108;
    }

    v47 = *v23;
    v48 = (*v23)[2];
    v49 = *(v48 + 96);
    if (v49)
    {
      CFRetain(*(v48 + 96));
      *&context = _NSConcreteStackBlock;
      *(&context + 1) = 0x40000000;
      v94 = sub_100020834;
      v95 = &unk_100085380;
      v96 = v47;
      v102.length = CFArrayGetCount(v49);
      v102.location = 0;
      CFArrayApplyFunction(v49, v102, sub_100053D38, &context);
      CFRelease(v49);
    }

    if (sub_100003140())
    {
      v50 = (*v23)[4];
      if (v50)
      {
        if (*(*v16 + 212) == 1)
        {
          Current = CFAbsoluteTimeGetCurrent();
          v52 = (*v23)[4];
          v89 = 0;
          v90 = &v89;
          v91 = 0x2000000000;
          v92 = 0;
          *&context = _NSConcreteStackBlock;
          *(&context + 1) = 0x40000000;
          v94 = sub_10003A74C;
          v95 = &unk_100083228;
          v96 = &v89;
          v97 = v52;
          v98 = 0;
          v99 = Current + -300.0;
        }

        else
        {
          v89 = 0;
          v90 = &v89;
          v91 = 0x2000000000;
          v92 = 0;
          *&context = _NSConcreteStackBlock;
          *(&context + 1) = 0x40000000;
          v94 = sub_100011378;
          v95 = &unk_100083200;
          v96 = &v89;
          v97 = v50;
          v98 = 0;
        }

        sub_100010E60(&context);
        v53 = v90[3];
        _Block_object_dispose(&v89, 8);
        sub_100013CE0(*v23, v53, 0, 1, 0.0);
        if (*v16)
        {
          if (*(*v23 + 88) == 1)
          {
            v54 = *(*v16 + 272);
            if (v54)
            {
              *(v54 + 47) = 1;
            }
          }
        }
      }
    }

    if ((*(v27 + 32) & 1) != 0 || *(*v23 + 88) == 1)
    {
      *(v27 + 32) = 1;
      sub_100013C34(v16);
LABEL_106:
      v55 = *v16;
LABEL_107:
      atomic_fetch_add((v55 + 208), 0xFFFFFFFF);
      goto LABEL_108;
    }

    v56 = (*v23)[5];
    v57 = *(v1 + 72);
    if (!v57)
    {
      v85 = (*v23)[5];
      v58 = sub_100008C98(0, 0);
      v57 = -1;
      *(v1 + 72) = -1;
      if (v58)
      {
        v59 = v58;
        v89 = 0;
        v90 = &v89;
        v91 = 0x2000000000;
        LOBYTE(v92) = 0;
        Value = CFDictionaryGetValue(v58, key);
        if (Value)
        {
          v61 = Value;
          *&context = _NSConcreteStackBlock;
          *(&context + 1) = 0x40000000;
          v94 = sub_100038FF0;
          v95 = &unk_100083130;
          v96 = &v89;
          v97 = v1;
          v103.length = CFArrayGetCount(Value);
          v103.location = 0;
          CFArrayApplyFunction(v61, v103, sub_1000390FC, &context);
        }

        if (*(v90 + 24) == 1)
        {
          v62 = sub_1000027AC("ocsp");
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            v79 = *(v1 + 72);
            *buf = 134217984;
            v101 = v79;
            _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "key-based CA revocation applies at index %lld", buf, 0xCu);
          }
        }

        CFRelease(v59);
        _Block_object_dispose(&v89, 8);
        v57 = *(v1 + 72);
      }

      v56 = v85;
    }

    if (*(a1 + 213))
    {
      if (!v88)
      {
        goto LABEL_136;
      }
    }

    else if ((*(a1 + 178) & 1) == 0)
    {
      goto LABEL_136;
    }

    if (*(v1 + 65) & 1) != 0 || (*(*(v1 + 136) + 40))
    {
      v63 = 0;
    }

    else
    {
      if (*(a1 + 216) | v56)
      {
        v64 = 1;
      }

      else
      {
        v64 = v14 < v57;
      }

      v63 = !v64;
    }

    if ((*(v27 + 32) & 1) != 0 || v63)
    {
LABEL_136:
      sub_100013C34(v16);
      v55 = a1;
      goto LABEL_107;
    }

    if (*v16)
    {
      v65 = *(*v16 + 272);
    }

    else
    {
      v65 = 0;
    }

    v83 = v65;
    v66 = *v23;
    v86 = objc_autoreleasePoolPush();
    OCSPResponders = SecCertificateGetOCSPResponders();
    v68 = OCSPResponders;
    if (OCSPResponders)
    {
      CFRetain(OCSPResponders);
    }

    v69 = [v68 count];
    if (v69 >= 0xB)
    {
      v70 = v69;
      v71 = sub_1000027AC("rvc");
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(context) = 134217984;
        *(&context + 4) = v70;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "too may OCSP responder entries (%ld)", &context, 0xCu);
      }

      *(v66 + 88) = 1;
      objc_autoreleasePoolPop(v86);
      goto LABEL_106;
    }

    if (qword_100092DB0 != -1)
    {
      dispatch_once(&qword_100092DB0, &stru_100083728);
    }

    v72 = v66[2];
    if (v72)
    {
      v73 = *(v72 + 32);
      if (v73)
      {
        CFRetain(*(v72 + 32));
      }
    }

    else
    {
      v73 = 0;
    }

    v81 = [qword_100092DA0 sessionForAuditToken:{v73, v73}];
    v74 = [[TrustURLSessionContext alloc] initWithContext:v66 uris:v68];
    v75 = v74;
    v76 = v66[2];
    if (v76)
    {
      v77 = *(v76 + 280);
    }

    else
    {
      v77 = 0;
    }

    [(TrustURLSessionContext *)v74 setAttribution:v77];
    v78 = [qword_100092DA8 fetchNext:v81 context:v75];

    objc_autoreleasePoolPop(v86);
    if (!v83 || (v78 & 1) != 0)
    {
      if (v78)
      {
        goto LABEL_106;
      }
    }

    else
    {
      *(v83 + 48) = 1;
    }

LABEL_108:
    ++v14;
    v13 += 40;
  }

  while (v2 != v14);
  return atomic_fetch_add((a1 + 208), 0xFFFFFFFF) == 1;
}

BOOL sub_100009C84(uint64_t a1)
{
  v2 = sub_100005E88();
  v3 = 0;
  if (a1 && v2)
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
    v3 = ValueAtIndex != 0;
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      Name = SecPolicyGetName();
      if (Name && kSecPolicyNameSSLServer)
      {
        if (CFEqual(Name, kSecPolicyNameSSLServer))
        {
          return v3;
        }
      }

      else if (Name == kSecPolicyNameSSLServer)
      {
        return v3;
      }

      v8 = *(v6 + 4);
      if (!v8 || !CFDictionaryGetValue(v8, kSecPolicyCheckSSLHostname) && !CFDictionaryGetValue(v8, kSecPolicyCheckCTRequired))
      {
        return 0;
      }
    }
  }

  return v3;
}

void sub_100009D40(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v3 = v2[2];
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t sub_100009D8C(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(a1 + 232) = Mutable;
  if (!Mutable)
  {
    goto LABEL_92;
  }

  v3 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(0, Current + -4500.0);
  CFArrayAppendValue(v3, v5);
  v6 = *(a1 + 224);
  v7 = CFArrayCreateMutable(0, *(v6 + 16), &kCFTypeArrayCallBacks);
  context = _NSConcreteStackBlock;
  v87 = 0x40000000;
  v88 = sub_100016B80;
  v89 = &unk_1000830C0;
  v90 = v7;
  LOBYTE(v93) = 0;
  v8 = *(v6 + 16);
  v9 = v8 < 1;
  v10 = v8 - 1;
  if (!v9)
  {
    v11 = (v6 + 136);
    do
    {
      v12 = v10;
      v13 = *v11++;
      v88(&context, *(v13 + 16), &v93);
      if (v93)
      {
        break;
      }

      v10 = v12 - 1;
    }

    while (v12);
  }

  v99.length = CFArrayGetCount(v7);
  v99.location = 0;
  CFArrayAppendArray(v3, v7, v99);
  v14 = *(a1 + 224);
  v15 = CFArrayCreateMutable(0, *(v14 + 88), &kCFTypeArrayCallBacks);
  if (*(v14 + 88) >= 1)
  {
    v16 = 0;
    v17 = 16;
    do
    {
      v18 = *(v14 + 80);
      if (v18 && (v19 = *(v18 + v17)) != 0)
      {
        v20 = *(v19 + 64);
      }

      else
      {
        v20 = -1.79769313e308;
      }

      v21 = CFDateCreate(0, v20);
      if (v21)
      {
        v22 = v21;
        CFArrayAppendValue(v15, v21);
        CFRelease(v22);
      }

      ++v16;
      v17 += 40;
    }

    while (v16 < *(v14 + 88));
  }

  v100.length = CFArrayGetCount(v15);
  v100.location = 0;
  CFArrayAppendArray(v3, v15, v100);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v93 = 0;
  v94 = &v93;
  v95 = 0x2000000000;
  v96 = 0xFFEFFFFFFFFFFFFFLL;
  v23 = CFAbsoluteTimeGetCurrent();
  context = _NSConcreteStackBlock;
  v87 = 0x40000000;
  v88 = sub_100016BE4;
  v89 = &unk_100085B40;
  v91 = v23;
  v90 = &v93;
  v97.length = CFArrayGetCount(v3);
  v97.location = 0;
  CFArrayApplyFunction(v3, v97, sub_10005BDE0, &context);
  if (v3)
  {
    CFRelease(v3);
  }

  v24 = v94[3];
  _Block_object_dispose(&v93, 8);
  v25 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v26 = CFAbsoluteTimeGetCurrent();
  v27 = CFDateCreate(0, v26 + 4500.0);
  CFArrayAppendValue(v25, v27);
  v28 = *(a1 + 224);
  v29 = CFArrayCreateMutable(0, *(v28 + 16), &kCFTypeArrayCallBacks);
  context = _NSConcreteStackBlock;
  v87 = 0x40000000;
  v88 = sub_100016C30;
  v89 = &unk_1000830E0;
  v90 = v29;
  LOBYTE(v93) = 0;
  v30 = *(v28 + 16);
  v9 = v30 < 1;
  v31 = v30 - 1;
  if (!v9)
  {
    v32 = (v28 + 136);
    do
    {
      v33 = v31;
      v34 = *v32++;
      v88(&context, *(v34 + 16), &v93);
      if (v93)
      {
        break;
      }

      v31 = v33 - 1;
    }

    while (v33);
  }

  v101.length = CFArrayGetCount(v29);
  v101.location = 0;
  CFArrayAppendArray(v25, v29, v101);
  v35 = *(a1 + 224);
  v36 = CFArrayCreateMutable(0, *(v35 + 88), &kCFTypeArrayCallBacks);
  if (*(v35 + 88) >= 1)
  {
    v37 = 0;
    v38 = 16;
    do
    {
      v39 = *(v35 + 80);
      v40 = 0.0;
      if (v39)
      {
        v41 = *(v39 + v38);
        if (v41)
        {
          v40 = *(v41 + 72);
        }
      }

      v42 = CFDateCreate(0, v40);
      if (v42)
      {
        v43 = v42;
        CFArrayAppendValue(v36, v42);
        CFRelease(v43);
      }

      ++v37;
      v38 += 40;
    }

    while (v37 < *(v35 + 88));
  }

  v102.length = CFArrayGetCount(v36);
  v102.location = 0;
  CFArrayAppendArray(v25, v36, v102);
  if (v36)
  {
    CFRelease(v36);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  v93 = 0;
  v94 = &v93;
  v95 = 0x2000000000;
  v96 = 0x7FEFFFFFFFFFFFFFLL;
  v44 = CFAbsoluteTimeGetCurrent();
  context = _NSConcreteStackBlock;
  v87 = 0x40000000;
  v88 = sub_10001C7E4;
  v89 = &unk_100085B68;
  v91 = v44;
  v90 = &v93;
  v98.length = CFArrayGetCount(v25);
  v98.location = 0;
  CFArrayApplyFunction(v25, v98, sub_10005BDE0, &context);
  if (v25)
  {
    CFRelease(v25);
  }

  v45 = v94[3];
  _Block_object_dispose(&v93, 8);
  v46 = CFDateCreate(0, v24);
  v47 = CFDateCreate(0, v45);
  CFDictionarySetValue(*(a1 + 232), kSecTrustInfoResultNotBefore, v46);
  CFDictionarySetValue(*(a1 + 232), kSecTrustInfoResultNotAfter, v47);
  if (v46)
  {
    CFRelease(v46);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (!*(a1 + 232))
  {
    goto LABEL_92;
  }

  v48 = *(a1 + 224);
  if (v48)
  {
    if (*(v48 + 65) == 1)
    {
      if (sub_10000B13C(a1))
      {
        v49 = *(a1 + 224);
        if (v49[10])
        {
          if (sub_10001C61C(v49) != 0.0)
          {
            CFDictionarySetValue(*(a1 + 232), kSecTrustInfoExtendedValidationKey, kCFBooleanTrue);
            CFDictionarySetValue(*(a1 + 232), kSecTrustExtendedValidation, kCFBooleanTrue);
            v50 = SecCertificateCopyCompanyName();
            if (v50)
            {
              v51 = v50;
              CFDictionarySetValue(*(a1 + 232), kSecTrustInfoCompanyNameKey, v50);
              CFDictionarySetValue(*(a1 + 232), kSecTrustOrganizationName, v51);
              CFRelease(v51);
            }
          }
        }
      }
    }

    if (!*(a1 + 232))
    {
      goto LABEL_92;
    }
  }

  if (sub_10000B13C(a1))
  {
    v52 = *(a1 + 224);
    if (v52[10])
    {
      v53 = sub_10001C61C(v52);
      if (v53 != 0.0)
      {
        v54 = CFDateCreate(kCFAllocatorDefault, v53);
        CFDictionarySetValue(*(a1 + 232), kSecTrustInfoRevocationValidUntilKey, v54);
        CFDictionarySetValue(*(a1 + 232), kSecTrustRevocationValidUntilDate, v54);
        CFRelease(v54);
        goto LABEL_60;
      }

      v63 = *(a1 + 224);
      if (v63 && (*(v63 + 65) & 1) != 0)
      {
        v55 = &kCFBooleanFalse;
        goto LABEL_61;
      }

      if (sub_10001C730(v63))
      {
LABEL_60:
        v55 = &kCFBooleanTrue;
LABEL_61:
        v56 = *v55;
        CFDictionarySetValue(*(a1 + 232), kSecTrustInfoRevocationKey, *v55);
        CFDictionarySetValue(*(a1 + 232), kSecTrustRevocationChecked, v56);
      }
    }
  }

  if (*(a1 + 232))
  {
    if ((sub_10000B13C(a1) & 1) == 0)
    {
      v57 = *(a1 + 224);
      if (*(v57 + 80))
      {
        v58 = *(v57 + 16);
        if (v58 >= 1)
        {
          v59 = v57 + 136;
          v60 = v59;
          v61 = v58;
          while (!*(*v60 + 32))
          {
            v60 += 8;
            if (!--v61)
            {
              goto LABEL_80;
            }
          }

          while (1)
          {
            v62 = *(*v59 + 32);
            if (v62)
            {
              break;
            }

            v59 += 8;
            if (!--v58)
            {
              v62 = 0;
              break;
            }
          }

          CFDictionarySetValue(*(a1 + 232), kSecTrustRevocationReason, v62);
        }
      }
    }

LABEL_80:
    if (*(a1 + 232))
    {
      v64 = *(a1 + 224);
      if (v64)
      {
        if (*(v64 + 66) != 1)
        {
          goto LABEL_86;
        }

        v65 = sub_10000B13C(a1);
        v66 = *(a1 + 232);
        if (v65)
        {
          CFDictionarySetValue(v66, kSecTrustInfoCertificateTransparencyKey, kCFBooleanTrue);
          v66 = *(a1 + 232);
        }

        if (v66)
        {
LABEL_86:
          v67 = *(a1 + 224);
          if (v67 && *(v67 + 67) == 1 && sub_10000B13C(a1))
          {
            v68 = SecFrameworkCopyLocalizedString();
            if (v68)
            {
              v69 = v68;
              CFDictionarySetValue(*(a1 + 232), kSecTrustInfoQCStatementsKey, v68);
              CFRelease(v69);
            }

            CFDictionarySetValue(*(a1 + 232), kSecTrustInfoQWACValidationKey, kCFBooleanTrue);
          }
        }
      }
    }
  }

LABEL_92:
  if (sub_10000B13C(a1))
  {
    if (!sub_100003140())
    {
      goto LABEL_114;
    }

    v70 = objc_autoreleasePoolPush();
    v71 = *(a1 + 224);
    if (*(v71 + 49))
    {
      v72 = *(v71 + 16);
      if (v72 >= 1 && (v73 = *(v71 + 8 * v72 + 128)) != 0)
      {
        v74 = *(v73 + 16);
      }

      else
      {
        v74 = 0;
      }

      v76 = sub_10000E860(a1, v74);
      if ((v76 & 4) != 0)
      {
        v77 = sub_100015F54(a1);
        if (sub_100055054(*(v77 + 8)) != 8)
        {
          v78 = +[TrustAnalytics logger];
          context = _NSConcreteStackBlock;
          v87 = 3221225472;
          v88 = sub_1000551FC;
          v89 = &unk_100085568;
          v90 = v74;
          v91 = *&a1;
          v92 = v77;
          [v78 trustd_logDetailedEventforEventNamed:@"HardcodedAnchorEvent" attributesCallback:&context];
        }
      }

      if ((v76 & 3) == 2)
      {
        if (!qword_100092C10 && qword_100092C38 != -1)
        {
          dispatch_once(&qword_100092C38, &stru_1000827E0);
        }

        sub_100005F7C(qword_100092C08);
        v93 = 0;
        v94 = &v93;
        v95 = 0x2020000000;
        v96 = 0;
        context = _NSConcreteStackBlock;
        v87 = 3221225472;
        v88 = sub_100018BE0;
        v89 = &unk_100083638;
        v90 = &v93;
        dispatch_sync(qword_100092C10, &context);
        v79 = *(v94 + 3);
        _Block_object_dispose(&v93, 8);
        v80 = SecCertificateCopySHA256Digest();
        v81 = [v79 containsObject:v80];
        if (v80 && (v81 & 1) == 0 && [v80 length] == 32)
        {
          ++qword_100092EE8;
          v82 = +[TrustAnalytics logger];
          context = _NSConcreteStackBlock;
          v87 = 3221225472;
          v88 = sub_10005547C;
          v89 = &unk_100085590;
          v90 = v80;
          v91 = *&a1;
          [v82 trustd_logDetailedEventforEventNamed:@"SystemRootUsageEvent" attributesCallback:&context];
        }
      }
    }
  }

  else
  {
    if (!sub_100003140())
    {
      goto LABEL_114;
    }

    v70 = objc_autoreleasePoolPush();
    v75 = +[TrustAnalytics logger];
    context = _NSConcreteStackBlock;
    v87 = 3221225472;
    v88 = sub_1000556B4;
    v89 = &unk_100085498;
    v90 = a1;
    [v75 trustd_logDetailedEventforEventNamed:@"TrustFailureEvent" attributesCallback:&context];
  }

  objc_autoreleasePoolPop(v70);
LABEL_114:
  if (sub_100003140())
  {
    v83 = objc_autoreleasePoolPush();
    ++qword_100092F00;
    v84 = +[TrustAnalytics logger];
    context = _NSConcreteStackBlock;
    v87 = 3221225472;
    v88 = sub_100056498;
    v89 = &unk_100085498;
    v90 = a1;
    [v84 trustd_logDetailedEventforEventNamed:@"TrustEvaluationEvent" attributesCallback:&context];

    objc_autoreleasePoolPop(v83);
  }

  *(a1 + 248) = 0;
  return 0;
}

uint64_t sub_10000AA08(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3, CFMutableDictionaryRef *a4, _BYTE *a5, _BYTE *a6)
{
  v9 = SecCertificateCopySignedCertificateTimestamps();
  v10 = *(*a1 + 104);
  if (v10)
  {
    CFRetain(*(*a1 + 104));
  }

  v11 = sub_10000B234(a1);
  v12 = *(*a1 + 200);
  v57 = a6;
  v58 = a5;
  v60 = v10;
  if (!v12 || v12[2] < 2 || ((v13 = v12[17]) == 0 ? (v14 = 0) : (v14 = *(v13 + 16)), (v15 = v12[18]) == 0))
  {
    Mutable = 0;
    goto LABEL_22;
  }

  Mutable = 0;
  if (!v14 || !*(v15 + 16))
  {
    goto LABEL_22;
  }

  v17 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
  v18 = SecCertificateCopyPrecertTBS();
  v19 = v18;
  if (v17)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    if (CFDataGetLength(v18) < 1)
    {
      Mutable = 0;
    }

    else
    {
      Length = CFDataGetLength(v17);
      v22 = CFDataGetLength(v19);
      Mutable = CFDataCreateMutable(kCFAllocatorDefault, Length + v22 + 3);
      v23 = CFDataGetLength(v17);
      v24 = CFDataGetLength(v19);
      CFDataSetLength(Mutable, v23 + v24 + 3);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      v26 = v11;
      BytePtr = CFDataGetBytePtr(v17);
      v28 = CFDataGetLength(v17);
      memcpy(MutableBytePtr, BytePtr, v28);
      v29 = &MutableBytePtr[CFDataGetLength(v17)];
      v30 = CFDataGetLength(v19);
      *v29 = BYTE2(v30);
      v29[1] = BYTE1(v30);
      v29[2] = v30;
      v31 = CFDataGetBytePtr(v19);
      v32 = CFDataGetLength(v19);
      v33 = v29 + 3;
      v11 = v26;
      memcpy(v33, v31, v32);
    }

    goto LABEL_17;
  }

  Mutable = 0;
  if (v17)
  {
LABEL_17:
    CFRelease(v17);
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_22:
  v34 = Mutable;
  if (SecCertificateGetLength() < 0)
  {
    v36 = 0;
  }

  else
  {
    v35 = SecCertificateGetLength();
    v36 = CFDataCreateMutable(kCFAllocatorDefault, v35 + 3);
    v37 = SecCertificateGetLength();
    CFDataSetLength(v36, v37 + 3);
    v38 = v9;
    v39 = v11;
    v40 = CFDataGetMutableBytePtr(v36);
    v41 = SecCertificateGetLength();
    *v40 = BYTE2(v41);
    v40[1] = BYTE1(v41);
    v40[2] = v41;
    v42 = SecCertificateGetBytePtr();
    v43 = SecCertificateGetLength();
    v44 = v40 + 3;
    v11 = v39;
    v9 = v38;
    memcpy(v44, v42, v43);
  }

  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  SecCertificateNotValidAfter();
  v73[3] = v45;
  v46 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v47 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v48 = *(*a1 + 120);
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  if (v47)
  {
    if (!v46 || (!v9 || CFArrayGetCount(v9) <= 0) && (!v60 || CFArrayGetCount(v60) <= 0) && (!v11 || CFArrayGetCount(v11) < 1))
    {
      goto LABEL_46;
    }

    if (a2 && CFDictionaryGetCount(a2) >= 1)
    {
      v49 = (v48 + kCFAbsoluteTimeIntervalSince1970);
      v50 = 1000 * v49;
      if (v9 && v34)
      {
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1000106E0;
        v64[3] = &unk_100083558;
        v64[6] = v34;
        v64[7] = 1000 * v49;
        v64[8] = a2;
        v64[9] = v47;
        v64[10] = v46;
        v64[4] = v73;
        v64[5] = &v65;
        v51 = v64;
        v74.length = CFArrayGetCount(v9);
        v74.location = 0;
        CFArrayApplyFunction(v9, v74, sub_10003A9CC, v51);
      }

      if (v60 && v36)
      {
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_10003AA88;
        v63[3] = &unk_100083580;
        v63[6] = v36;
        v63[7] = v50;
        v63[8] = a2;
        v63[9] = v46;
        v63[4] = v73;
        v63[5] = &v69;
        v52 = v63;
        v75.length = CFArrayGetCount(v60);
        v75.location = 0;
        CFArrayApplyFunction(v60, v75, sub_10003A9CC, v52);
      }

      if (v11 && v36)
      {
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_10003AB00;
        v62[3] = &unk_100083580;
        v62[6] = v36;
        v62[7] = v50;
        v62[8] = a2;
        v62[9] = v46;
        v62[4] = v73;
        v62[5] = &v69;
        v53 = v62;
        v76.length = CFArrayGetCount(v11);
        v76.location = 0;
        CFArrayApplyFunction(v11, v76, sub_10003A9CC, v53);
      }
    }

    if (CFDictionaryGetCount(v46) >= 1)
    {
      CFRetain(v46);
      *a3 = v46;
      CFRetain(v47);
      *a4 = v47;
      *v57 = *(v66 + 24);
      *v58 = *(v70 + 24);
      v54 = 1;
    }

    else
    {
LABEL_46:
      v54 = 0;
    }

    CFRelease(v47);
    if (v46)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v54 = 0;
    if (v46)
    {
LABEL_48:
      CFRelease(v46);
    }
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(v73, 8);
  return v54;
}

void sub_10000B0DC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B13C(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100016B4C;
  v3[3] = &unk_100085B18;
  v3[4] = &v4;
  sub_1000029CC(a1, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

CFMutableArrayRef sub_10000B234(uint64_t a1)
{
  v1 = *(*a1 + 96);
  if (!v1)
  {
    return 0;
  }

  CFRetain(*(*a1 + 96));
  v3 = *(*a1 + 200);
  if (!v3 || v3[2] < 2 || ((v4 = v3[17]) == 0 ? (v5 = 0) : (v5 = *(v4 + 16)), (v6 = v3[18]) == 0 || !v5 || (v7 = *(v6 + 16)) == 0))
  {
    CFRelease(v1);
    return 0;
  }

  v8 = sub_100012B7C(v5, v7);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v10 = Mutable;
  if (Mutable)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000197C8;
    v12[3] = &unk_1000835A0;
    v12[4] = v8;
    v12[5] = Mutable;
    v13.length = CFArrayGetCount(v1);
    v13.location = 0;
    CFArrayApplyFunction(v1, v13, sub_10003A9CC, v12);
    if (!CFArrayGetCount(v10))
    {
      CFRelease(v10);
      v10 = 0;
    }
  }

  CFRelease(v1);
  if (v8)
  {
    sub_10001CA20(v8);
  }

  return v10;
}

void sub_10000B398(uint64_t a1, int a2)
{
  __chkstk_darwin();
  v6 = (&v16 - v5);
  if ((v7 & 1) == 0)
  {
    memset(&v16 - v5, 170, 8 * v4);
  }

  v8 = 0;
  LOBYTE(v9) = 0;
  *v6 = a1;
  do
  {
    while (1)
    {
      while (1)
      {
        v10 = v6[v8];
        v11 = *v10;
        v12 = (*v10)[4];
        if ((v9 & 1) != 0 || v8 >= a2)
        {
          break;
        }

        if (v12)
        {
          LOBYTE(v9) = 0;
          v6[++v8] = *v10 + 4;
          if ((v8 & 0x80000000) != 0)
          {
            return;
          }
        }

        else
        {
LABEL_13:
          v15 = *(v11 + 40);
          *(v11 + 40) = 0;
          sub_100009D40(*v10);
          *v10 = v15;
          v9 = v15 == 0;
          v8 -= v9;
          if ((v8 & 0x80000000) != 0)
          {
            return;
          }
        }
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v14 = *(v11 + 40);
      v13 = v11 + 40;
      if (!v14)
      {
        break;
      }

      LOBYTE(v9) = 0;
      v6[v8] = v13;
      if ((v8 & 0x80000000) != 0)
      {
        return;
      }
    }

    --v8;
    LOBYTE(v9) = 1;
  }

  while ((v8 & 0x80000000) == 0);
}

void sub_10000B4D4(uint64_t a1, const __CFArray *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 144), *(a1 + 168));
  v5 = ValueAtIndex;
  if (ValueAtIndex)
  {
    v6 = ValueAtIndex[2] - 1;
    if (!a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = -1;
    if (!a2)
    {
      goto LABEL_31;
    }
  }

  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      v10 = CFArrayGetValueAtIndex(a2, i);
      v11 = sub_1000132A0(v5, v10);
      if (v11 == -1)
      {
        v20 = 0;
        v14 = sub_100007610(a1, v10, &v20);
        if (v20 && (v15 = *(v20 + 8)) != 0)
        {
          v16 = v15();
          v17 = sub_100002B2C(v5, v10, v16);
          if (v16)
          {
            CFRelease(v16);
          }
        }

        else
        {
          v17 = sub_100002B2C(v5, v10, 0);
        }

        if (v17)
        {
          if (!CFSetContainsValue(*(a1 + 136), v17))
          {
            CFSetAddValue(*(a1 + 136), v17);
            if (v14)
            {
              sub_100013360(v17);
            }

            if (sub_1000128D8(a1, v17))
            {
              v18 = *(a1 + 144);
              v19 = *(a1 + 168) + 1;
              *(a1 + 168) = v19;
              CFArrayInsertValueAtIndex(v18, v19, v17);
            }
          }

          CFRelease(v17);
        }
      }

      else if (v11 == v6 && (*(v5 + 40) & 0x8000000000000000) != 0)
      {
        v12 = *(v5 + 16);
        *(v5 + 40) = v12 - 1;
        if (v12 >= 1 && (*(v5 + 48) & 1) == 0)
        {
          v21 = 0;
          if (SecCertificateIsSelfSigned())
          {
            v13 = 1;
          }

          else
          {
            v13 = v21 == 0;
          }

          if (v13)
          {
            *(v5 + 40) = -1;
          }

          else
          {
            *(v5 + 48) = 1;
          }
        }
      }
    }
  }

LABEL_31:
  *(a1 + 248) = sub_1000066A8;
  sub_100004890(a1);
}

uint64_t sub_10000B6E0(void *a1, const void *a2, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    if (ValueAtIndex)
    {
      v10 = ValueAtIndex;
      v11 = CFGetTypeID(ValueAtIndex);
      if (v11 == CFDictionaryGetTypeID())
      {
        v12 = sub_10000EB24(v10);
        if (sub_10000EB98(a1, a2, v10))
        {
          break;
        }
      }
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  return v12;
}

BOOL sub_10000B794(void *a1, uint64_t a2, const void *a3)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6(a2, a3);
  }

  else
  {
    v7 = 0;
  }

  IsSelfSigned = SecCertificateIsSelfSigned();
  v9 = IsSelfSigned == 0;
  if (IsSelfSigned)
  {
    goto LABEL_9;
  }

  if (!*(a2 + 8))
  {
    v10 = sub_1000027AC("trust");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 8))
      {
        v15 = "";
      }

      else
      {
        v15 = " source";
      }

      *buf = 136315138;
      v17 = v15;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "unrestricted anchor%s", buf, 0xCu);
      if (v7)
      {
        goto LABEL_15;
      }

      return v9;
    }

LABEL_9:
    if (!v7)
    {
      return v9;
    }

    goto LABEL_15;
  }

  if (v7)
  {
    CFArrayGetCount(v7);
    v11 = sub_10000B6E0(a1, a3, v7);
    if (v11 == 2)
    {
      v12 = sub_1000027AC("trust");
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v14 = "complex trust settings anchor";
    }

    else
    {
      if (v11 != 3)
      {
        v9 = 0;
        goto LABEL_15;
      }

      v12 = sub_1000027AC("trust");
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
LABEL_14:
        v9 = 1;
LABEL_15:
        CFRelease(v7);
        return v9;
      }

      *buf = 0;
      v14 = "complex trust settings denied anchor";
    }

    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, v14, buf, 2u);
    goto LABEL_14;
  }

  return 0;
}

BOOL sub_10000B9A8(uint64_t a1, const void *a2)
{
  v2 = *(*a1 + 200);
  if (v2 && (v18 = *(v2 + 16), v18 >= 1))
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = *(*(*(*a1 + 200) + 8 * v5 + 136) + 24);
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        break;
      }

LABEL_12:
      v6 = ++v5 < v18;
      if (v5 == v18)
      {
        return v6;
      }
    }

    v9 = Count;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      if (ValueAtIndex)
      {
        v12 = ValueAtIndex;
        v13 = CFGetTypeID(ValueAtIndex);
        if (v13 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v12, @"kSecTrustSettingsPolicyOptions");
          if (Value)
          {
            v15 = Value;
            v16 = CFGetTypeID(Value);
            if (v16 == CFDictionaryGetTypeID())
            {
              if (CFDictionaryContainsKey(v15, a2))
              {
                break;
              }
            }
          }
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

void sub_10000BAD8(uint64_t *a1)
{
  v1 = a1;
  v2 = *(*a1 + 200);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  if (*(v2 + 49))
  {
    v4 = *(*(v2 + 136 + 8 * (v3 - 1)) + 24);
    if (CFArrayGetCount(v4))
    {
      if (v2)
      {
        v5 = v3 < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5 || *(v2 + 16) < v3 || (v6 = *(v2 + 136 + 8 * (v3 - 1))) == 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(v6 + 16);
      }

      v8 = sub_10000B6E0(v1, v7, v4) - 1 < 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v2 + 16);
  if (v9 >= 1 && (v10 = *(v2 + 8 * v9 + 128)) != 0)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*v1 + 120);
  if (v8)
  {
    --v3;
    if ((sub_100006E14(v1, v11, 1, *(*v1 + 120)) & 1) == 0 && (sub_100012178(v1, kSecPolicyCheckTemporalValidity, v3, kCFBooleanFalse, 0, 0) & 1) == 0)
    {
      return;
    }

    PermittedSubtrees = SecCertificateGetPermittedSubtrees();
    if (PermittedSubtrees)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, PermittedSubtrees);
      goto LABEL_29;
    }
  }

  else
  {
    buf[0] = 0;
    SecCertificateIsSelfSigned();
    if (!sub_100012178(v1, kSecPolicyCheckMissingIntermediate, v3 - 1, kCFBooleanFalse, 1, 0))
    {
      return;
    }

    SecCertificateGetPermittedSubtrees();
  }

  MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
LABEL_29:
  v15 = MutableCopy;
  ExcludedSubtrees = SecCertificateGetExcludedSubtrees();
  if (ExcludedSubtrees)
  {
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    Mutable = CFArrayCreateMutableCopy(0, 0, ExcludedSubtrees);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  v19 = Mutable;
  if (!v15)
  {
    sub_100012178(v1, kSecPolicyCheckNameConstraints, 0, kCFBooleanFalse, 1, 0);
    if (v19)
    {
      goto LABEL_216;
    }

    return;
  }

  if (!Mutable)
  {
    v96 = &kSecPolicyCheckNameConstraints;
    goto LABEL_214;
  }

  theArray = v15;
  if (*(v2 + 64) == 2)
  {
    goto LABEL_120;
  }

  if (*(v2 + 64))
  {
    goto LABEL_119;
  }

  v21 = (v2 + 56);
  v20 = *(v2 + 56);
  *(v2 + 64) = 1;
  if (v20)
  {
    sub_100018B84((v2 + 56));
  }

  v22 = malloc_type_malloc(0x38uLL, 0x107004060FBFCD3uLL);
  v22[2] = 0u;
  *(v22 + 6) = 0;
  *v22 = oidAnyPolicy;
  v22[1] = 0u;
  v23 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
  v23[1].data = 0;
  *v23 = oidAnyPolicy;
  *(v22 + 3) = v23;
  *(v2 + 56) = v22;
  v24 = *(v2 + 16);
  if (v24 >> 31)
  {
    goto LABEL_119;
  }

  v25 = v24 - v8 + 1;
  v111 = (v24 - v8);
  if (v24 - v8 < 1)
  {
LABEL_107:
    if (v25)
    {
      v52 = v25 - 1;
    }

    else
    {
      v52 = 0;
    }

    PolicyConstraints = SecCertificateGetPolicyConstraints();
    if (PolicyConstraints && *(PolicyConstraints + 2) == 1 && !*(PolicyConstraints + 4))
    {
      v52 = 0;
    }

    if (!*v21 && !v52)
    {
      v54 = sub_1000027AC("policy");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v49 = "policy tree failure on leaf";
        v50 = v54;
        v51 = 2;
LABEL_118:
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, v49, buf, v51);
      }

      goto LABEL_119;
    }

    *(v2 + 64) = 2;
LABEL_120:
    BasicConstraints = SecCertificateGetBasicConstraints();
    if (BasicConstraints)
    {
      v56 = v8;
    }

    else
    {
      v56 = 0;
    }

    if (v56 && *(BasicConstraints + 3) == 1)
    {
      if (*(BasicConstraints + 4) >= v3)
      {
        v57 = v3;
      }

      else
      {
        v57 = *(BasicConstraints + 4);
      }
    }

    else
    {
      v57 = v3;
    }

    if (v3 >= 1)
    {
      v58 = kSecPolicyCheckTemporalValidity;
      v59 = kCFBooleanFalse;
      cf1a = kSecPolicyCheckWeakKeySize;
      v105 = kSecPolicyCheckWeakSignature;
      v110 = kSecPolicyCheckNameConstraints;
      v60 = v3 + 16;
      v99 = kSecPolicyCheckBasicConstraintsPathLen;
      v103 = kSecPolicyCheckCriticalExtensions;
      v61 = v57;
      while (1)
      {
        v62 = 0;
        v63 = v60 - 17;
        v64 = *(*v1 + 200);
        if (v64 && (v63 & 0x8000000000000000) == 0)
        {
          if (*(v64 + 16) > v63 && (v65 = *(v64 + 8 * v60)) != 0)
          {
            v62 = *(v65 + 16);
          }

          else
          {
            v62 = 0;
          }
        }

        v112 = sub_100016450(v64, v60 - 17);
        if ((sub_100006E14(v1, v62, 0, v12) & 1) == 0 && !sub_100012178(v1, v58, v60 - 17, v59, 0, 0) || SecCertificateIsWeakKey() && !sub_100012178(v1, cf1a, v60 - 17, v59, 0, 0) || (SecPolicyCheckCertWeakSignature() & 1) == 0 && !sub_100012178(v1, v105, v60 - 17, v59, 0, 0))
        {
          goto LABEL_215;
        }

        v66 = v112;
        if (v60 == 17)
        {
          v66 = 0;
        }

        if (!v66)
        {
          LOBYTE(v113) = 0;
          Count = CFArrayGetCount(v19);
          if (Count)
          {
            if (Count < 1024)
            {
              if (sub_10002B004(v62, v19, &v113, 0) || v113 == 1)
              {
                v69 = sub_1000027AC("policy");
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "name in excluded subtrees", buf, 2u);
                }

                if (!sub_100012178(v1, v110, v60 - 17, v59, 1, 0))
                {
                  goto LABEL_215;
                }
              }
            }

            else
            {
              v68 = sub_1000027AC("policy");
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "excluded subtrees too large", buf, 2u);
              }

              if ((sub_100012178(v1, v110, v60 - 17, v59, 1, 0) & 1) == 0)
              {
                goto LABEL_215;
              }
            }
          }

          v70 = CFArrayGetCount(v15);
          if (v70)
          {
            break;
          }
        }

LABEL_167:
        if (v60 == 17)
        {
          goto LABEL_212;
        }

        v75 = SecCertificateGetPermittedSubtrees();
        if (v75)
        {
          v76 = v75;
          LOBYTE(v113) = 0;
          v77 = SecCertificateCopyExtensionValue();
          if (v77)
          {
            CFRelease(v77);
          }

          v78 = CFArrayGetCount(v15);
          v79 = CFArrayGetCount(v76);
          if (v79 <= 1023 && v79 + v78 < 1024)
          {
            v59 = kCFBooleanFalse;
            if ((sub_10002BEA0(v76) & 1) == 0 && v113 == 1 && !sub_100012178(v1, v110, v60 - 17, kCFBooleanFalse, 1, 0))
            {
              goto LABEL_215;
            }

            v101 = v61;
            v80 = v58;
            v81 = v1;
            v82 = v19;
            v83 = CFArrayGetCount(v76);
            if (!CFArrayGetCount(v15))
            {
              v117.location = 0;
              v117.length = v83;
              CFArrayAppendArray(v15, v76, v117);
              v19 = v82;
              v1 = v81;
              v58 = v80;
              v61 = v101;
              goto LABEL_188;
            }

            v84 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            *buf = v15;
            *&buf[8] = v84;
            v116.location = 0;
            v116.length = v83;
            CFArrayApplyFunction(v76, v116, sub_10002BB84, buf);
            v85 = CFArrayGetCount(v84);
            if (v84)
            {
              v86.length = v85;
              if (v85)
              {
                v15 = theArray;
                v86.location = 0;
                CFArrayAppendArray(theArray, v84, v86);
                v19 = v82;
                goto LABEL_186;
              }
            }

            v15 = theArray;
            v19 = v82;
            if (v84)
            {
LABEL_186:
              CFRelease(v84);
            }

            v1 = v81;
            v58 = v80;
            v61 = v101;
            v59 = kCFBooleanFalse;
            goto LABEL_188;
          }

          v87 = sub_1000027AC("policy");
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "permitted subtrees too large", buf, 2u);
          }

          v59 = kCFBooleanFalse;
          if ((sub_100012178(v1, v110, v60 - 17, kCFBooleanFalse, 1, 0) & 1) == 0)
          {
            goto LABEL_215;
          }
        }

LABEL_188:
        v88 = SecCertificateGetExcludedSubtrees();
        if (v88)
        {
          v89 = v88;
          LOBYTE(v113) = 0;
          v90 = SecCertificateCopyExtensionValue();
          if (v90)
          {
            CFRelease(v90);
          }

          v91 = CFArrayGetCount(v19);
          v92 = CFArrayGetCount(v89);
          if (v92 > 1023 || (v93 = v92, v92 + v91 >= 1024))
          {
            v94 = sub_1000027AC("policy");
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "excluded subtrees too large", buf, 2u);
            }

            v15 = theArray;
            if ((sub_100012178(v1, v110, v60 - 17, kCFBooleanFalse, 1, 0) & 1) == 0)
            {
              goto LABEL_215;
            }
          }

          else
          {
            v15 = theArray;
            if ((sub_10002BEA0(v89) & 1) == 0 && v113 == 1 && !sub_100012178(v1, v110, v60 - 17, kCFBooleanFalse, 1, 0))
            {
              goto LABEL_215;
            }

            v118.location = 0;
            v118.length = v93;
            CFArrayAppendArray(v19, v89, v118);
          }

          v59 = kCFBooleanFalse;
        }

        if (!v112)
        {
          if (v61)
          {
            --v61;
          }

          else if (!sub_100012178(v1, v99, v60 - 17, v59, 1, 0))
          {
            goto LABEL_215;
          }
        }

        v95 = SecCertificateGetBasicConstraints();
        if (v95 && *(v95 + 3) == 1 && *(v95 + 4) < v61)
        {
          v61 = *(v95 + 4);
        }

        if (SecCertificateHasUnknownCriticalExtension() && !sub_100012178(v1, v103, v60 - 17, v59, 1, 0))
        {
          goto LABEL_215;
        }

        --v60;
      }

      if (v70 < 1024)
      {
        if (!sub_10002B004(v62, v15, &v113, 1) && (v113 & 1) != 0)
        {
          goto LABEL_167;
        }

        v74 = sub_1000027AC("policy");
        if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_166;
        }

        *buf = 0;
        v72 = v74;
        v73 = "name not in permitted subtrees";
      }

      else
      {
        v71 = sub_1000027AC("policy");
        if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_166;
        }

        *buf = 0;
        v72 = v71;
        v73 = "permitted subtrees too large";
      }

      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, v73, buf, 2u);
LABEL_166:
      if ((sub_100012178(v1, v110, v60 - 17, v59, 1, 0) & 1) == 0)
      {
        goto LABEL_215;
      }

      goto LABEL_167;
    }

LABEL_212:
    if (!SecCertificateHasUnknownCriticalExtension())
    {
      goto LABEL_215;
    }

    v96 = &kSecPolicyCheckCriticalExtensions;
LABEL_214:
    sub_100012178(v1, *v96, 0, kCFBooleanFalse, 1, 0);
    goto LABEL_215;
  }

  v26 = 1;
  cf1 = v24 - v8 + 1;
  v100 = cf1;
  v97 = v8;
  while (1)
  {
    v98 = v111 - v26;
    v104 = sub_100016450(v2, v111 - v26);
    v102 = v25;
    v109 = v26;
    if (*(v2 + 56))
    {
      CertificatePolicies = SecCertificateGetCertificatePolicies();
      if (CertificatePolicies)
      {
        v28 = CertificatePolicies;
        v29 = *(CertificatePolicies + 8);
        if (v29)
        {
          v30 = 0;
          v31 = v26 - 1;
          v32 = *(CertificatePolicies + 8);
          do
          {
            v33 = (*(v28 + 16) + v30);
            *&v113 = 0xAAAAAAAAAAAAAAAALL;
            *(&v113 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v113 = *v33;
            *buf = v113;
            v115 = v33 + 1;
            if (!DEROidCompare(&v113, &oidAnyPolicy) && (sub_10000FAF4(*v21, v31, sub_10000FBEC) & 1) == 0)
            {
              sub_10000FAF4(*v21, v31, sub_10000FCEC);
            }

            v30 += 32;
            --v32;
          }

          while (v32);
          if (cf1 || v111 > v109 && v104)
          {
            v34 = 0;
            do
            {
              v35 = *(v28 + 16);
              memset(buf, 170, sizeof(buf));
              *buf = *(v35 + v34);
              if (DEROidCompare(buf, &oidAnyPolicy))
              {
                sub_10000FAF4(*v21, v31, sub_10001D964);
              }

              v34 += 32;
              --v29;
            }

            while (v29);
          }

          sub_10000B398(v2 + 56, v31);
          v15 = theArray;
          v26 = v109;
          v8 = v97;
        }

        else
        {
          sub_10000B398(v2 + 56, v26 - 1);
        }

        v25 = v102;
LABEL_64:
        if (*v21)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      sub_10000B398(v2 + 56, v26 - 1);
      if (*v21)
      {
        sub_100018B84((v2 + 56));
        goto LABEL_64;
      }
    }

LABEL_65:
    if (!v25)
    {
      v48 = sub_1000027AC("policy");
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_119;
      }

      *buf = 67109120;
      *&buf[4] = v98;
      v49 = "policy tree failure on cert %u";
      goto LABEL_106;
    }

LABEL_66:
    if (v111 == v26)
    {
      goto LABEL_107;
    }

    PolicyMappings = SecCertificateGetPolicyMappings();
    if (PolicyMappings)
    {
      v37 = PolicyMappings;
      if (*PolicyMappings == 1)
      {
        break;
      }
    }

LABEL_80:
    if (!v104)
    {
      if (v25)
      {
        --v25;
      }

      else
      {
        v25 = 0;
      }

      v42 = v100 - 1;
      if (!v100)
      {
        v42 = 0;
      }

      v100 = v42;
      v43 = cf1 - 1;
      if (!cf1)
      {
        v43 = 0;
      }

      cf1 = v43;
    }

    v44 = SecCertificateGetPolicyConstraints();
    if (v44)
    {
      if (*(v44 + 2) == 1 && *(v44 + 4) < v25)
      {
        v25 = *(v44 + 4);
      }

      if (*(v44 + 8) == 1)
      {
        v45 = v100;
        if (*(v44 + 12) < v100)
        {
          v45 = *(v44 + 12);
        }

        v100 = v45;
      }
    }

    InhibitAnyPolicySkipCerts = SecCertificateGetInhibitAnyPolicySkipCerts();
    if (InhibitAnyPolicySkipCerts)
    {
      v47 = cf1;
      if (*(InhibitAnyPolicySkipCerts + 4) < cf1)
      {
        v47 = *(InhibitAnyPolicySkipCerts + 4);
      }

      cf1 = v47;
    }

    v26 = v109 + 1;
  }

  v38 = *(PolicyMappings + 8);
  if (!v38)
  {
LABEL_74:
    v41 = *v21;
    if (v100)
    {
      v8 = v97;
      v25 = v102;
      if (v41 && (sub_10000FAF4(v41, v109, sub_1000395B4) & 1) == 0)
      {
        sub_10000FAF4(*v21, v109, sub_1000391B4);
      }
    }

    else
    {
      v8 = v97;
      v25 = v102;
      if (v41)
      {
        sub_10000FAF4(v41, v109, sub_100039114);
        sub_10000B398(v2 + 56, v109 - 1);
      }
    }

    goto LABEL_80;
  }

  v39 = 16;
  while (1)
  {
    v40 = *(v37 + 16) + v39;
    if (DEROidCompare(v40 - 16, &oidAnyPolicy) || DEROidCompare(v40, &oidAnyPolicy))
    {
      break;
    }

    v39 += 32;
    if (!--v38)
    {
      goto LABEL_74;
    }
  }

  v48 = sub_1000027AC("policy");
  v8 = v97;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v98;
    v49 = "policy mapping anyPolicy failure %u";
LABEL_106:
    v50 = v48;
    v51 = 8;
    goto LABEL_118;
  }

LABEL_119:
  if (sub_100012178(v1, kSecPolicyCheckPolicyConstraints, 0, kCFBooleanFalse, 1, 0))
  {
    goto LABEL_120;
  }

LABEL_215:
  CFRelease(v15);
  if (v19)
  {
LABEL_216:
    CFRelease(v19);
  }
}

__CFArray *sub_10000CB3C(const __CFArray *a1)
{
  v2 = sub_100002A58();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v2[12];
  if (!v4)
  {
    CFRelease(v2);
    return 0;
  }

  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      valuePtr = 0;
      if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr))
      {
        v9 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, (v4 + valuePtr + 8), *(v4 + valuePtr + 4), kCFAllocatorNull);
        if (v9)
        {
          v10 = v9;
          CFArrayAppendValue(Mutable, v9);
          CFRelease(v10);
        }
      }
    }
  }

  CFRelease(v3);
  return Mutable;
}

void sub_10000CC60(unsigned int *a1)
{
  v2 = *(*a1 + 200);
  *(a1 + 3) = 0;
  sub_100016360(a1, kSecPolicyCheckIdLinkage);
  v3 = a1[16];
  v4 = v3 > 7;
  v5 = (1 << v3) & 0xE8;
  v6 = v4 || v5 == 0;
  if (v6 || *(a1 + 7))
  {
    sub_10000BAD8(a1);
  }

  Count = CFArrayGetCount(*(a1 + 1));
  v8 = *(a1 + 3);
  if (v8 >= Count)
  {
LABEL_15:
    v192 = v2;
    *(a1 + 3) = 0;
    v14 = *(*a1 + 200);
    if (v14)
    {
      v15 = *(v14 + 16);
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = kSecPolicyCheckUsageConstraints;
        do
        {
          v18 = *(*a1 + 200);
          v19 = *(v18 + 8 * v16 + 136);
          if (*(v18 + 16) <= v16 || v19 == 0)
          {
            v21 = 0;
          }

          else
          {
            v21 = *(v19 + 16);
          }

          v22 = sub_10000B6E0(a1, v21, *(v19 + 24));
          if (v22 == 3)
          {
            sub_100012178(a1, v17, v16, kCFBooleanFalse, 1, 0);
          }

          else if (v22 <= 2)
          {
            v23 = a1[16];
            v4 = v23 > 7;
            v24 = (1 << v23) & 0xE8;
            if (v4 || v24 == 0)
            {
              v26 = *a1;
              v198.length = CFArrayGetCount(*(*a1 + 72));
              v198.location = 0;
              if (CFArrayContainsValue(*(v26 + 72), v198, off_1000927F0))
              {
                if ((off_100092800[0])(off_1000927F0, v21))
                {
                  a1[16] = 1;
                }
              }
            }
          }

          ++v16;
        }

        while (v15 != v16);
      }
    }

    if (qword_100092E50 != -1)
    {
      dispatch_once(&qword_100092E50, &stru_100084090);
    }

    v27 = *(*a1 + 200);
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28 >= 1)
      {
        v29 = kSecPolicyCheckBlackListedKey;
        v30 = v28 + 15;
        do
        {
          v31 = SecCertificateCopySHA256Digest();
          if (v31)
          {
            v32 = v31;
            v33 = CFSetContainsValue(qword_100092E48, v31);
            v34 = 0;
            if (v28 >= 2 && v33)
            {
              v35 = v30;
              while (1)
              {
                v36 = v35 - 17;
                v37 = *(*a1 + 200);
                if (v37)
                {
                  if ((v36 & 0x8000000000000000) == 0 && *(v37 + 16) > v36)
                  {
                    v38 = *(v37 + 8 * v35);
                    if (v38)
                    {
                      if (*(v38 + 16))
                      {
                        SecCertificateNotValidBefore();
                        if (v39 >= 502243200.0)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                --v35;
                if (v36 <= 0)
                {
                  v34 = 0;
                  goto LABEL_53;
                }
              }

              v34 = 1;
              sub_100012178(a1, v29, v28 - 1, kCFBooleanFalse, 1, 0);
            }

LABEL_53:
            CFRelease(v32);
          }

          else
          {
            v34 = 0;
          }

          if (v28 < 2)
          {
            break;
          }

          --v30;
          --v28;
        }

        while (!v34);
      }
    }

    v40 = v192;
    if (!v192)
    {
      LOBYTE(v64) = 0;
      goto LABEL_255;
    }

    v41 = *(v192 + 16);
    if (v41 >= 2)
    {
      v42 = kSecPolicyCheckGrayListedKey;
      v43 = kSecPolicyCheckBlackListedKey;
      v44 = 1 - v41;
      v45 = 18;
      do
      {
        v46 = v45 - 17;
        v47 = sub_100002A58();
        if (v47)
        {
          v48 = v47;
          v49 = *(v47 + 24);
          if (v49)
          {
            CFRetain(*(v47 + 24));
            CFRelease(v48);
            v50 = *(*a1 + 200);
            if (!v50 || v46 != *(v50 + 16) - 1 || (*(v50 + 49) & 1) == 0)
            {
              v51 = SecCertificateCopyPublicKeySHA1Digest();
              if (v51)
              {
                v52 = v51;
                if (CFSetContainsValue(v49, v51))
                {
                  v53 = *(*a1 + 200);
                  if (!v53 || (*(v53 + 68) & 1) == 0)
                  {
                    sub_100012178(a1, v42, v45 - 17, kCFBooleanFalse, 1, 0);
                  }
                }

                CFRelease(v52);
              }
            }
          }

          else
          {
            v49 = v47;
          }

          CFRelease(v49);
        }

        v54 = sub_100002A58();
        if (v54)
        {
          v55 = v54;
          v56 = *(v54 + 16);
          if (v56)
          {
            CFRetain(*(v54 + 16));
            CFRelease(v55);
            v57 = *(*a1 + 200);
            if (!v57 || v46 != *(v57 + 16) - 1 || (*(v57 + 49) & 1) == 0)
            {
              v58 = SecCertificateCopyPublicKeySHA1Digest();
              if (v58)
              {
                v59 = v58;
                if (CFSetContainsValue(v56, v58))
                {
                  v60 = *(*a1 + 200);
                  if (!v60 || (*(v60 + 68) & 1) == 0)
                  {
                    sub_100012178(a1, v43, v45 - 17, kCFBooleanFalse, 1, 0);
                  }
                }

                CFRelease(v59);
              }
            }
          }

          else
          {
            v56 = v54;
          }

          CFRelease(v56);
        }

        ++v45;
      }

      while (v44 + v45 != 18);
    }

    v40 = v192;
    if ((*(v192 + 104) & 1) == 0)
    {
      v61 = *(v192 + 136);
      if (*(v61 + 40) != 1)
      {
        LOBYTE(v64) = 0;
        goto LABEL_247;
      }

      v62 = a1[16];
      v63 = *(a1 + 7);
      if (v63)
      {
        v190 = sub_100047AE8(v63);
      }

      else
      {
        v190 = 0;
      }

      v65 = *(*a1 + 200);
      if (!v65)
      {
        goto LABEL_244;
      }

      v66 = *(v65 + 16);
      v193 = 0;
      if (!v66)
      {
        goto LABEL_244;
      }

      cf1 = kSecPolicyCheckExtendedValidation;
      SecCertificateNotValidBefore();
      if (v66 > 2 || v67 <= 489024000.0)
      {
        if (v66 < 1)
        {
          goto LABEL_244;
        }
      }

      else
      {
        v68 = sub_100012178(a1, cf1, 0, kCFBooleanFalse, 1, 0);
        if (v66 < 1 || (v68 & 1) != 0)
        {
          goto LABEL_244;
        }
      }

      v69 = 0;
      v70 = 0;
      while (1)
      {
        v71 = *(*a1 + 200);
        if (v71 && *(v71 + 16) > v70 && (v72 = *(v71 + 8 * v70 + 136)) != 0)
        {
          v73 = *(v72 + 16);
        }

        else
        {
          v73 = 0;
        }

        v74 = sub_10001D314(v73);
        v75 = v74;
        if (!v70)
        {
          if (!v74)
          {
LABEL_133:
            v193 = v75;
            if (!v75)
            {
              goto LABEL_201;
            }

            goto LABEL_205;
          }

          v91 = v74;
          while (!DEROidCompare(v91, &oidAnyPolicy))
          {
            v91 = *(v91 + 16);
            if (!v91)
            {
              goto LABEL_133;
            }
          }

          goto LABEL_198;
        }

        if (v70 >= v66 - 1)
        {
          SHA1Digest = SecCertificateGetSHA1Digest();
          if (!v69)
          {
LABEL_140:
            v96 = sub_1000027AC("ev");
            if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_195;
            }

            LOWORD(buf[0]) = 0;
            v97 = v96;
            v98 = "anchor not in plist";
            goto LABEL_142;
          }

          v93 = SHA1Digest;
          while (1)
          {
            v94 = sub_100003364(v69);
            if (v94)
            {
              v95 = v94;
              v199.length = CFArrayGetCount(v94);
              v199.location = 0;
              if (CFArrayContainsValue(v95, v199, v93))
              {
                break;
              }
            }

            v69 = *(v69 + 16);
            if (!v69)
            {
              goto LABEL_140;
            }
          }

          SecCertificateNotValidBefore();
          if (v111 >= 178761600.0 && SecCertificateVersion() <= 2)
          {
            v137 = sub_1000027AC("ev");
            if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_195;
            }

            LOWORD(buf[0]) = 0;
            v97 = v137;
            v98 = "Anchor issued after October 2006 and is not v3";
            goto LABEL_142;
          }

          if (SecCertificateVersion() >= 3)
          {
            SecCertificateNotValidBefore();
            if (v112 >= 178761600.0)
            {
              BasicConstraints = SecCertificateGetBasicConstraints();
              if (BasicConstraints && (*(BasicConstraints + 2) & 1) != 0)
              {
                KeyUsage = SecCertificateGetKeyUsage();
                if ((~KeyUsage & 0x60) == 0)
                {
                  goto LABEL_187;
                }

                v139 = KeyUsage;
                v140 = sub_1000027AC("ev");
                if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                {
                  buf[0] = 67109120;
                  buf[1] = v139;
                  v97 = v140;
                  v98 = "Anchor has invalid key usage %u";
                  v99 = 8;
LABEL_143:
                  _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, v98, buf, v99);
                }

LABEL_195:
                v121 = sub_1000027AC("ev");
                if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 0;
                  _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "anchor certificate is not ev", valuePtr, 2u);
                }

                if (sub_100012178(a1, cf1, v70, kCFBooleanFalse, 1, 0))
                {
                  v141 = v193;
                  if (v193)
                  {
                    do
                    {
                      v142 = v141[2];
                      free(v141);
                      v141 = v142;
                    }

                    while (v142);
                  }

LABEL_242:
                  if (v75)
                  {
                    do
                    {
                      v143 = v75[2];
                      free(v75);
                      v75 = v143;
                    }

                    while (v143);
                  }

LABEL_244:
                  v64 = (a1[16] > 7) | (0x17u >> a1[16]);
                  a1[16] = v62;
                  v144 = *(a1 + 7);
                  if (v144)
                  {
                    CFRelease(v144);
                  }

                  *(a1 + 7) = v190;
                  v40 = v192;
                  v61 = *(v192 + 136);
LABEL_247:
                  if (*(v61 + 41) == 1)
                  {
                    v145 = a1[16];
                    v146 = *(a1 + 7);
                    if (v146)
                    {
                      v147 = sub_100047AE8(v146);
                    }

                    else
                    {
                      v147 = 0;
                    }

                    sub_1000457E4(a1, kSecPolicyCheckQWAC);
                    v148 = (a1[16] > 7) | (0x17u >> a1[16]);
                    a1[16] = v145;
                    v149 = *(a1 + 7);
                    if (v149)
                    {
                      CFRelease(v149);
                    }

                    *(a1 + 7) = v147;
                    if (v148)
                    {
                      v40[67] = 1;
                    }
                  }

LABEL_255:
                  v150 = *(*a1 + 112);
                  if (v150)
                  {
                    CFRetain(*(*a1 + 112));
                  }

                  else
                  {
                    v150 = sub_100016504();
                  }

                  *valuePtr = 0;
                  values[0] = 0;
                  LOBYTE(v193) = 0;
                  v194 = 0;
                  *buf = 0;
                  v151 = *(*a1 + 200);
                  *(v151 + 66) = 0;
                  v152 = sub_10000AA08(a1, v150, valuePtr, values, &v193, &v194);
                  v153 = *valuePtr;
                  if (v152)
                  {
                    if (sub_10000F718(a1, *valuePtr, values[0], v193, v194, buf))
                    {
                      *(v151 + 66) = 1;
                    }

                    sub_10000F584(a1, v153, buf[0]);
                  }

                  if (v153)
                  {
                    CFRelease(v153);
                  }

                  if (values[0])
                  {
                    CFRelease(values[0]);
                  }

                  if (v150)
                  {
                    CFRelease(v150);
                  }

                  if ((v64 & 1) != 0 && (v40 && (v40[66] & 1) != 0 || (sub_1000165EC(@"CTKillSwitch") & 1) != 0 || !sub_10000FD40(5184000.0)))
                  {
                    v40[65] = 1;
                  }

                  goto LABEL_274;
                }

LABEL_198:
                if (v75)
                {
                  do
                  {
                    v122 = v75[2];
                    free(v75);
                    v75 = v122;
                  }

                  while (v122);
                }

                goto LABEL_200;
              }

              v138 = sub_1000027AC("ev");
              if (!os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_195;
              }

              LOWORD(buf[0]) = 0;
              v97 = v138;
              v98 = "Anchor has invalid basic constraints";
LABEL_142:
              v99 = 2;
              goto LABEL_143;
            }
          }

LABEL_187:
          *buf = 2048;
          v115 = CFNumberCreate(0, kCFNumberCFIndexType, buf);
          if (!v115)
          {
            goto LABEL_195;
          }

          v116 = v115;
          *buf = 256;
          v117 = CFNumberCreate(0, kCFNumberCFIndexType, buf);
          if (!v117)
          {
            CFRelease(v116);
            goto LABEL_195;
          }

          v118 = v117;
          *valuePtr = kSecAttrKeyTypeRSA;
          *&valuePtr[8] = kSecAttrKeyTypeEC;
          values[0] = v116;
          values[1] = v117;
          v119 = CFDictionaryCreate(0, valuePtr, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v119)
          {
            if (SecCertificateIsAtLeastMinKeySize())
            {
              v120 = 1;
              goto LABEL_192;
            }

            v136 = sub_1000027AC("ev");
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "Anchor's public key is too weak for EV", buf, 2u);
            }
          }

          v120 = 0;
LABEL_192:
          CFRelease(v116);
          CFRelease(v118);
          if (v119)
          {
            CFRelease(v119);
          }

          if ((v120 & 1) == 0)
          {
            goto LABEL_195;
          }

          goto LABEL_198;
        }

        CertificatePolicies = SecCertificateGetCertificatePolicies();
        if (!CertificatePolicies || !*(CertificatePolicies + 8))
        {
          v124 = sub_1000027AC("ev");
          if (!os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_226;
          }

          *valuePtr = 0;
          v125 = v124;
          v126 = "SubCA missing certificate policies";
          goto LABEL_213;
        }

        CRLDistributionPoints = SecCertificateGetCRLDistributionPoints();
        if (!CRLDistributionPoints || CFArrayGetCount(CRLDistributionPoints) <= 0)
        {
          v127 = sub_1000027AC("ev");
          if (!os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_226;
          }

          *valuePtr = 0;
          v125 = v127;
          v126 = "SubCA missing CRLDP";
          goto LABEL_213;
        }

        v78 = SecCertificateGetBasicConstraints();
        if (!v78 || (*(v78 + 2) & 1) == 0)
        {
          v128 = sub_1000027AC("ev");
          if (!os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_226;
          }

          *valuePtr = 0;
          v125 = v128;
          v126 = "SubCA has invalid basic constraints";
LABEL_213:
          v129 = 2;
LABEL_214:
          _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, v126, valuePtr, v129);
          goto LABEL_226;
        }

        v79 = SecCertificateGetKeyUsage();
        if ((~v79 & 0x60) == 0)
        {
          break;
        }

        v130 = v79;
        v131 = sub_1000027AC("ev");
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 67109120;
          *&valuePtr[4] = v130;
          v125 = v131;
          v126 = "SubCA has invalid key usage %u";
          v129 = 8;
          goto LABEL_214;
        }

LABEL_226:
        v135 = sub_1000027AC("ev");
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 0;
          _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "subordinate certificate is not ev", valuePtr, 2u);
        }

        if (sub_100012178(a1, cf1, v70, kCFBooleanFalse, 1, 0))
        {
          v188 = v193;
          if (v193)
          {
            do
            {
              v189 = v188[2];
              free(v188);
              v188 = v189;
            }

            while (v189);
          }

          goto LABEL_242;
        }

LABEL_149:
        if (v75)
        {
          v102 = v75;
          do
          {
            v103 = DEROidCompare(v102, &oidAnyPolicy);
            if (v103)
            {
              break;
            }

            v102 = *(v102 + 16);
          }

          while (v102);
        }

        else
        {
          v103 = 0;
        }

        v104 = v193;
        if (!v193)
        {
          goto LABEL_198;
        }

        v105 = v193;
        while (!DEROidCompare(v105, &oidAnyPolicy))
        {
          v105 = v105[2];
          if (!v105)
          {
            if (v104)
            {
              v106 = v103;
            }

            else
            {
              v106 = 1;
            }

            if ((v106 & 1) == 0)
            {
              v107 = &v193;
              do
              {
                if (v75)
                {
                  v108 = v75;
                  while (!DEROidCompare(v108, v104))
                  {
                    v108 = *(v108 + 16);
                    if (!v108)
                    {
                      goto LABEL_168;
                    }
                  }

                  v107 = v104 + 2;
                }

                else
                {
LABEL_168:
                  *v107 = v104[2];
                  v104[2] = 0;
                  do
                  {
                    v109 = v104[2];
                    free(v104);
                    v104 = v109;
                  }

                  while (v109);
                }

                v104 = *v107;
              }

              while (*v107);
            }

            goto LABEL_198;
          }
        }

        if (!v103)
        {
          do
          {
            v110 = v104[2];
            free(v104);
            v104 = v110;
          }

          while (v110);
          v193 = 0;
          if (v75)
          {
            for (i = 0; ; i = v187)
            {
              v187 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
              v187[2] = i;
              *v187 = *v75;
            }
          }

          goto LABEL_201;
        }

        if (v75)
        {
          while (1)
          {
            if (v104)
            {
              v184 = v104;
              while (!DEROidCompare(v184, v75))
              {
                v184 = *(v184 + 16);
                if (!v184)
                {
                  goto LABEL_350;
                }
              }
            }

            else
            {
LABEL_350:
              v185 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
              v185[2] = v104;
              *v185 = *v75;
              v104 = v185;
            }
          }
        }

LABEL_200:
        v75 = v193;
        if (!v193)
        {
LABEL_201:
          v123 = sub_1000027AC("ev");
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 0;
            _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "valid_policies set is empty: chain not ev", valuePtr, 2u);
          }

          if (sub_100012178(a1, cf1, v70, kCFBooleanFalse, 1, 0))
          {
            goto LABEL_244;
          }

          v75 = 0;
        }

LABEL_205:
        ++v70;
        v69 = v75;
        if (v70 == v66)
        {
          goto LABEL_242;
        }
      }

      *valuePtr = 256;
      v80 = CFNumberCreate(0, kCFNumberCFIndexType, valuePtr);
      if (!v80)
      {
        goto LABEL_226;
      }

      v81 = v80;
      Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        v132 = v81;
LABEL_225:
        CFRelease(v132);
        goto LABEL_226;
      }

      v83 = Mutable;
      CFDictionaryAddValue(Mutable, kSecAttrKeyTypeEC, v81);
      SecCertificateNotValidBefore();
      if (v84 >= 315532800.0 && (SecCertificateNotValidAfter(), v85 >= 410227200.0))
      {
        *valuePtr = 2048;
        v100 = CFNumberCreate(0, kCFNumberCFIndexType, valuePtr);
        if (v100)
        {
          v87 = v100;
          CFDictionaryAddValue(v83, kSecAttrKeyTypeRSA, v100);
          if ((SecCertificateIsAtLeastMinKeySize() & 1) == 0)
          {
            v134 = sub_1000027AC("ev");
            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 0;
              v89 = v134;
              v90 = "SubCA's public key is too small for issuance after 2010 or expiration after 2013";
              goto LABEL_222;
            }

LABEL_223:
            CFRelease(v87);
            goto LABEL_224;
          }

LABEL_146:
          SecCertificateNotValidBefore();
          if (v101 <= 473299200.0 || SecCertificateGetSignatureHashAlgorithm() > 4)
          {
            CFRelease(v87);
            CFRelease(v81);
            CFRelease(v83);
            goto LABEL_149;
          }

          v133 = sub_1000027AC("ev");
          if (!os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_223;
          }

          *valuePtr = 0;
          v89 = v133;
          v90 = "SubCA was issued with SHA-1 after 2015";
          goto LABEL_222;
        }
      }

      else
      {
        *valuePtr = 1024;
        v86 = CFNumberCreate(0, kCFNumberCFIndexType, valuePtr);
        if (v86)
        {
          v87 = v86;
          CFDictionaryAddValue(v83, kSecAttrKeyTypeRSA, v86);
          if ((SecCertificateIsAtLeastMinKeySize() & 1) == 0)
          {
            v88 = sub_1000027AC("ev");
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 0;
              v89 = v88;
              v90 = "SubCA's public key is too small for issuance before 2011 or expiration before 2014";
LABEL_222:
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, v90, valuePtr, 2u);
              goto LABEL_223;
            }

            goto LABEL_223;
          }

          goto LABEL_146;
        }
      }

LABEL_224:
      CFRelease(v81);
      v132 = v83;
      goto LABEL_225;
    }

LABEL_274:
    v154 = *(*a1 + 200);
    *(v154 + 104) = 1;
    if (sub_100009C84(a1))
    {
      v155 = *(v154 + 16);
      v156 = *(v154 + 128);
      if (v156 <= 0.0)
      {
        SecCertificateNotValidBefore();
        v156 = v157;
      }

      if (v155 >= 1)
      {
        v158 = 0;
        v159 = 0;
        v160 = 3.15569088e10;
        while (1)
        {
          if (*(v154 + 88) > v159)
          {
            v161 = *(v154 + 80);
            if (v161)
            {
              v162 = (v161 + v158);
              v163 = *(v161 + v158 + 24);
              if (v163)
              {
                if (*(v163 + 56) == 1)
                {
                  v164 = *(v163 + 72);
                  if (v164)
                  {
                    AbsoluteTime = CFDateGetAbsoluteTime(v164);
                    if (AbsoluteTime < v160)
                    {
                      v160 = AbsoluteTime;
                    }

                    if (v156 > v160)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          ++v159;
          v158 += 40;
          if (v155 == v159)
          {
            goto LABEL_288;
          }
        }

        v183 = sub_1000027AC("rvc");
        if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 134218240;
          *&valuePtr[4] = v156;
          *&valuePtr[12] = 2048;
          *&valuePtr[14] = v160;
          _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "certificate issuance time (%f) is later than allowed value (%f)", valuePtr, 0x16u);
        }

        sub_100053B7C(v162);
      }
    }

LABEL_288:
    if ((*(v154 + 66) & 1) == 0)
    {
      v166 = *(v154 + 120);
      if (v166 >= 1 && sub_100009C84(a1))
      {
        v167 = *(*a1 + 112);
        if (v167)
        {
          CFRetain(*(*a1 + 112));
        }

        if ((sub_1000165EC(@"CTKillSwitch") & 1) == 0)
        {
          if (!sub_10000FD40(5184000.0) && !v167)
          {
            goto LABEL_302;
          }

          if (v166 == 1)
          {
            v168 = 0;
          }

          else
          {
            v168 = 6;
          }

          sub_100012178(a1, kSecPolicyCheckCTRequired, 0, kCFBooleanFalse, 1, v168);
        }

        if (v167)
        {
          CFRelease(v167);
        }
      }
    }

LABEL_302:
    sub_10000E374(a1);
    v169 = *a1;
    v170 = *(*a1 + 200);
    if (!v170)
    {
      return;
    }

    if (*(v170 + 105) == 1)
    {
      v171 = *(v170 + 112);
      if (v171 < 0)
      {
        return;
      }
    }

    else
    {
      v172 = *(v170 + 16);
      v171 = v172 - 1;
      if (v172 >= 1)
      {
        v173 = *(v170 + 88);
        if (v173 >= v172)
        {
          v174 = *(v170 + 80) + 40 * v171;
        }

        else
        {
          v174 = 0;
        }

        v175 = 0;
        v176 = 40 * v172 - 80;
        if (v174)
        {
          goto LABEL_311;
        }

LABEL_320:
        while (v171)
        {
          while (1)
          {
            v174 = v173 >= v171 ? *(v170 + 80) + v176 : 0;
            v176 -= 40;
            --v171;
            if (!v174)
            {
              break;
            }

LABEL_311:
            v177 = *(v174 + 24);
            if (v175)
            {
              if (v177)
              {
LABEL_315:
                v175 = *(v177 + 52);
                if (v171 || (*(v177 + 52) & 1) == 0)
                {
                  goto LABEL_320;
                }

                v178 = *(v170 + 136);
                if (!v178)
                {
                  goto LABEL_330;
                }

                v179 = *(v178 + 16);
                if (!v179 || !SecCertificateIsCA() || (sub_100053914(v179) & 1) != 0)
                {
                  goto LABEL_330;
                }

                v171 = 0;
              }

              else
              {
                ++v171;
              }

              v181 = sub_1000027AC("validupdate");
              if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 134217984;
                *&valuePtr[4] = v171;
                _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "CA at index %ld violates known-intermediate constraint", valuePtr, 0xCu);
              }

              if (v169)
              {
                v182 = *(v169 + 272);
                if (v182)
                {
                  *(v182 + 74) = 1;
                }
              }

              goto LABEL_331;
            }

            if (v177)
            {
              goto LABEL_315;
            }

            v175 = 0;
            if (!v171)
            {
              goto LABEL_330;
            }
          }
        }

LABEL_330:
        v171 = -1;
      }

LABEL_331:
      *(v170 + 112) = v171;
      *(v170 + 105) = 1;
      if (v171 < 0)
      {
        return;
      }
    }

    if (*(v170 + 88) <= v171)
    {
      v180 = 0;
    }

    else
    {
      v180 = (*(v170 + 80) + 40 * v171);
    }

    sub_100053B7C(v180);
    return;
  }

  v9 = Count;
  while (1)
  {
    *(a1 + 2) = qword_100092E28;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1), v8);
    CFDictionaryApplyFunction(ValueAtIndex[4], sub_100006C64, a1);
    v11 = a1[16];
    v4 = v11 > 7;
    v12 = (1 << v11) & 0xE8;
    v13 = v4 || v12 == 0;
    if (!v13 && !*(a1 + 7))
    {
      break;
    }

    v8 = *(a1 + 3) + 1;
    *(a1 + 3) = v8;
    if (v8 >= v9)
    {
      goto LABEL_15;
    }
  }
}

uint64_t sub_10000E268(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __CFArray *))
{
  NormalizedIssuerContent = SecCertificateGetNormalizedIssuerContent();
  v7 = sub_100007B0C(NormalizedIssuerContent);
  if (v7 && (v8 = sub_10000CB3C(v7)) != 0)
  {
    v9 = v8;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
        if (ValueAtIndex)
        {
          v15 = SecCertificateCreateWithData(kCFAllocatorDefault, ValueAtIndex);
          if (v15)
          {
            v16 = v15;
            CFArrayAppendValue(Mutable, v15);
            CFRelease(v16);
          }
        }
      }
    }

    CFRelease(v9);
    a4(a3, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    a4(a3, 0);
  }

  return 1;
}

void sub_10000E374(uint64_t a1)
{
  v2 = *(*a1 + 200);
  v3 = *(*a1 + 112);
  if (v3)
  {
    CFRetain(*(*a1 + 112));
  }

  if (!v2 || *(v2 + 104) != 1 || (sub_1000165EC(@"CTKillSwitch") & 1) != 0)
  {
    goto LABEL_50;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  Name = SecPolicyGetName();
  if (Name && kSecPolicyNameSSLServer)
  {
    if (!CFEqual(Name, kSecPolicyNameSSLServer))
    {
LABEL_50:
      if (v3)
      {
        CFRelease(v3);
      }

      return;
    }
  }

  else if (Name != kSecPolicyNameSSLServer)
  {
    goto LABEL_50;
  }

  v6 = *(ValueAtIndex + 4);
  v7 = kSecPolicyCheckSystemTrustedCTRequired;
  Value = CFDictionaryGetValue(v6, kSecPolicyCheckSystemTrustedCTRequired);
  if (!Value || CFEqual(Value, kCFBooleanFalse))
  {
    goto LABEL_50;
  }

  if (sub_10000FD40(5184000.0) || v3)
  {
    SecCertificateNotValidBefore();
    if (v9 < 561340800.0 || !SecCertificateIsValid())
    {
      goto LABEL_50;
    }

    v10 = *(*a1 + 200);
    if (v10 && (v11 = *(v10 + 16), v11 >= 1) && (v12 = *(v10 + 8 * v11 + 128)) != 0)
    {
      v13 = *(v12 + 16);
    }

    else
    {
      v13 = 0;
    }

    if (!*(v10 + 49))
    {
      goto LABEL_50;
    }

    v14 = off_1000927D0(off_1000927C0, v13, a1);
    if (qword_100092AE0 != -1)
    {
      dispatch_once(&qword_100092AE0, &stru_100081EF8);
    }

    if ((byte_100092AD8 & 1) == 0)
    {
      v15 = sub_100003B94(0);
      v16 = sub_100003AB8(v15);
      v17 = v16;
      if (v14)
      {
        if (!v16)
        {
          sub_100045FC0(v13, a1, @"TestCTRequiredSystemRoot");
          goto LABEL_50;
        }

        v14 = 1;
      }

      else
      {
        if (!v16)
        {
          v14 = 0;
          goto LABEL_34;
        }

        v14 = (v16[2])(v16, v13, a1);
      }

      sub_10000E934(v17);
    }

LABEL_34:
    if (!sub_100045FC0(v13, a1, @"TestCTRequiredSystemRoot") || (v14 & 1) != 0 || (*(v2 + 66) & 1) != 0)
    {
      goto LABEL_50;
    }

    v18 = sub_10003F814(0, 0);
    if (!v18)
    {
LABEL_49:
      sub_100012178(a1, v7, 0, kCFBooleanFalse, 0, 0);
      goto LABEL_50;
    }

    v19 = v18;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2000000000;
    v38 = 0;
    v20 = CFDictionaryGetValue(v18, kSecCTExceptionsDomainsKey);
    if (v20)
    {
      v21 = v20;
      v22 = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
      v23 = CFDictionaryGetValue(v22[4], kSecPolicyCheckSSLHostname);
      if (v23)
      {
        context[0] = _NSConcreteStackBlock;
        context[1] = 0x40000000;
        context[2] = sub_100046330;
        context[3] = &unk_100083FC0;
        context[4] = &v35;
        context[5] = v23;
        v39.length = CFArrayGetCount(v21);
        v39.location = 0;
        CFArrayApplyFunction(v21, v39, sub_100046810, context);
      }
    }

    if (*(v36 + 24) == 1)
    {
      v24 = sub_1000027AC("policy");
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v25 = "domain-based CT exception applied";
    }

    else
    {
      v26 = CFDictionaryGetValue(v19, kSecCTExceptionsCAsKey);
      if (v26)
      {
        v27 = v26;
        *buf = 0;
        v31 = buf;
        v32 = 0x2000000000;
        v33 = *(*a1 + 200);
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 0x40000000;
        v29[2] = sub_100046408;
        v29[3] = &unk_100083FE8;
        v29[4] = &v35;
        v29[5] = buf;
        v40.length = CFArrayGetCount(v26);
        v40.location = 0;
        CFArrayApplyFunction(v27, v40, sub_100046810, v29);
        _Block_object_dispose(buf, 8);
      }

      if (*(v36 + 24) != 1 || (v24 = sub_1000027AC("policy"), !os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG)))
      {
LABEL_48:
        CFRelease(v19);
        v28 = *(v36 + 24);
        _Block_object_dispose(&v35, 8);
        if (v28)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      *buf = 0;
      v25 = "key-based CT exceptions applied";
    }

    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, v25, buf, 2u);
    goto LABEL_48;
  }
}

uint64_t sub_10000E860(uint64_t a1, __CFArray *a2)
{
  if (*(a1 + 192) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(a1 + 184);
  }

  LODWORD(v5) = off_1000927D0(off_1000927C0, a2, v4);
  if (off_1000927B8(off_1000927A8, a2, v4))
  {
    LODWORD(v5) = v5 | 2;
  }

  if ((off_100092800[0])(off_1000927F0, a2))
  {
    v5 = v5 | 8;
  }

  else
  {
    v5 = v5;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    if ((*(v6 + 16))(v6, a2, v4))
    {
      return v5 | 4;
    }

    else
    {
      return v5;
    }
  }

  return v5;
}

void sub_10000E934(CFTypeRef *a1)
{
  CFRelease(a1[3]);
  CFRelease(a1[4]);

  free(a1);
}

__CFArray *sub_10000E97C()
{
  Mutable = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  v2 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v2)
  {
    CFRelease(v1);
    return 0;
  }

  v3 = v2;
  v4 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v4)
  {
    v5 = v4;
    valuePtr = 1;
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(v5, @"kSecTrustSettingsResult", v6);
      CFDictionaryAddValue(v1, kSecPolicyCheckSystemTrustedWeakHash, kCFBooleanTrue);
      CFDictionaryAddValue(v1, kSecPolicyCheckSystemTrustedWeakKey, kCFBooleanTrue);
      CFDictionaryAddValue(v3, @"kSecTrustSettingsPolicyOptions", v1);
      v8 = CFArrayCreateMutable(0, 2, &kCFTypeArrayCallBacks);
      v9 = v8;
      if (v8)
      {
        CFArrayAppendValue(v8, v3);
        CFArrayAppendValue(v9, v5);
      }

      CFRelease(v1);
    }

    else
    {
      v9 = 0;
      v7 = v1;
    }

    CFRelease(v7);
    CFRelease(v5);
  }

  else
  {
    CFRelease(v1);
    v9 = 0;
  }

  CFRelease(v3);
  return v9;
}

uint64_t sub_10000EB24(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"kSecTrustSettingsResult");
  valuePtr = 0;
  if (!Value)
  {
    return 1;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFNumberGetTypeID())
  {
    return 1;
  }

  if (CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr))
  {
    return valuePtr;
  }

  return 1;
}

uint64_t sub_10000EB98(void *a1, const void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"kSecTrustSettingsPolicy");
  v6 = CFDictionaryGetValue(theDict, @"kSecTrustSettingsPolicyName");
  v7 = CFDictionaryGetValue(theDict, @"kSecTrustSettingsPolicyString");
  v8 = CFDictionaryGetValue(theDict, @"kSecTrustSettingsKeyUsage");
  v9 = CFDictionaryGetValue(theDict, @"kSecTrustSettingsPolicyOptions");
  v44 = -1;
  v10 = sub_10000EFE8(a1, Value, v6, &v44);
  v11 = v44;
  v43 = v10;
  if (v7)
  {
    v12 = CFGetTypeID(v7);
    if (v12 != CFStringGetTypeID())
    {
      v15 = 0;
LABEL_22:
      v11 = v44;
      goto LABEL_23;
    }

    Length = CFStringGetLength(v7);
    if (CFStringGetCharacterAtIndex(v7, Length - 1))
    {
      v14 = 0;
    }

    else
    {
      v16 = CFStringGetLength(v7);
      v17 = CFStringGetLength(v7);
      v14 = kCFAllocatorDefault;
      if (v17 >= v16)
      {
        v47.length = v16 - 1;
        v47.location = 0;
        Copy = CFStringCreateWithSubstring(kCFAllocatorDefault, v7, v47);
LABEL_9:
        v19 = Copy;
        if (v11 < 0 || !Copy)
        {
          v15 = 0;
          if (!Copy)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        if (CFArrayGetCount(a1[1]) <= v11)
        {
          goto LABEL_20;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(a1[1], v11);
        v21 = CFDictionaryGetValue(ValueAtIndex[4], kSecPolicyCheckSSLHostname);
        if (v21 || (v21 = CFDictionaryGetValue(ValueAtIndex[4], kSecPolicyCheckEmail)) != 0)
        {
          v15 = 1;
          if (CFStringCompare(v19, v21, 1uLL) == kCFCompareEqualTo)
          {
            goto LABEL_21;
          }
        }

        v22 = CFDictionaryGetValue(ValueAtIndex[4], kSecPolicyCheckEAPTrustedServerNames);
        if (v22 && (v23 = v22, v46.length = CFArrayGetCount(v22), v46.location = 0, CFArrayContainsValue(v23, v46, v19)))
        {
          v15 = 1;
        }

        else
        {
LABEL_20:
          v15 = 0;
        }

LABEL_21:
        CFRelease(v19);
        goto LABEL_22;
      }
    }

    Copy = CFStringCreateCopy(v14, v7);
    goto LABEL_9;
  }

  v15 = 0;
LABEL_23:
  *valuePtr = 0;
  if (!v8)
  {
    goto LABEL_27;
  }

  v24 = CFGetTypeID(v8);
  if (v24 != CFNumberGetTypeID() || !CFNumberGetValue(v8, kCFNumberSInt64Type, valuePtr))
  {
    v25 = 0;
    if (!v9)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (*valuePtr == 0xFFFFFFFFLL)
  {
LABEL_27:
    v25 = 1;
    if (!v9)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v41 = Value;
  if (sub_10000EFE8(a1, kSecPolicyAppleOCSPSigner, 0, 0))
  {
    v34 = 16;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(*a1 + 200);
  if (v35 && sub_1000132A0(v35, a2))
  {
    v34 |= 8u;
  }

  if (v11 < 0 || CFArrayGetCount(a1[1]) <= v11)
  {
    Count = CFArrayGetCount(a1[1]);
    if (Count >= 1)
    {
      v38 = Count;
      for (i = 0; i != v38; ++i)
      {
        v40 = CFArrayGetValueAtIndex(a1[1], i);
        v34 |= sub_100045AC0(v40[4]);
      }
    }
  }

  else
  {
    v36 = CFArrayGetValueAtIndex(a1[1], v11);
    v34 |= sub_100045AC0(v36[4]);
  }

  v25 = v34 == *valuePtr;
  Value = v41;
  if (v9)
  {
LABEL_30:
    v26 = CFGetTypeID(v9);
    if (v26 == CFDictionaryGetTypeID())
    {
      v27 = Value;
      v28 = a1[2];
      a1[2] = qword_100092E20;
      CFDictionaryApplyFunction(v9, sub_100006C64, a1);
      a1[2] = qword_100092E28;
      CFDictionaryApplyFunction(v9, sub_100006C64, a1);
      a1[2] = v28;
      Value = v27;
    }
  }

LABEL_32:
  if (CFDictionaryContainsKey(theDict, @"kSecTrustSettingsApplication"))
  {
    v29 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "kSecTrustSettingsApplication is not yet supported on this platform", valuePtr, 2u);
    }
  }

  v30 = v43;
  if (!(Value | v6))
  {
    v30 = 1;
  }

  if (v7)
  {
    v31 = v15;
  }

  else
  {
    v31 = 1;
  }

  v32 = v30 & v31 & v25;
  if (v9)
  {
    return 0;
  }

  else
  {
    return v32;
  }
}