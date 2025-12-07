void sub_1000014E0(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    xpc_retain(a2);
    xpc_connection_set_finalizer_f(a2, sub_100007A88);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000015E8;
    handler[3] = &unk_100028E48;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }

  else if (type == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
    v5 = sub_1000027A4(string);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100018F3C(string, v5);
    }
  }
}

void sub_1000015E8(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    if (lockdown_copy_checkin_info())
    {
      sub_1000016A8(*(a1 + 32), object);
    }

    else
    {
      sub_10000C08C(0);
      CFRelease(0);
    }
  }

  else if (type == &_xpc_type_error && sub_1000027F8(object))
  {
    xpc_connection_cancel(*(a1 + 32));
    v5 = *(a1 + 32);

    xpc_release(v5);
  }
}

void sub_1000016A8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v111 = objc_autoreleasePoolPush();
  string = xpc_dictionary_get_string(v4, "MessageType");
  v109 = v3;
  v110 = v4;
  if (!string)
  {
    v8 = sub_1000027A4(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100019950();
    }

LABEL_14:

    goto LABEL_145;
  }

  v6 = string;
  if (!strcmp(string, "Ping"))
  {
    v9 = v3;
    reply = xpc_dictionary_create_reply(v4);
    xpc_dictionary_set_string(reply, "Payload", "pong!");
    xpc_dictionary_set_uint64(reply, "Status", 0);
    xpc_connection_send_message(v9, reply);

    goto LABEL_145;
  }

  if (!strcmp(v6, "Install"))
  {
    v11 = v3;
    v12 = v4;
    *&length = 0;
    data = xpc_dictionary_get_data(v12, "Profile", &length);
    if (data)
    {
      v14 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, data, length, kCFAllocatorNull);
      if (v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = MISProfileCreateWithData();
        v17 = v16;
        if (v16)
        {
          v18 = MISProvisioningProfileValidateSignature(v16);
          if (!v18)
          {
            if (MISProvisioningProfileIsForBetaDeployment(v17) && !(v19 = sub_10000A798(v11, "com.apple.private.mis.beta-install")))
            {
              v101 = sub_1000027A4(v19);
              if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
              {
                sub_10001981C();
              }

              v18 = -402620385;
            }

            else
            {
              v18 = sub_100007C2C(v17);
            }
          }
        }

        else
        {
          v76 = sub_1000027A4(0);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            sub_100019858();
          }

          v18 = -402620406;
        }

        objc_autoreleasePoolPop(v15);
        v39 = v18;
      }

      else
      {
        v55 = sub_1000027A4(0);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_100019894();
        }

        v14 = 0;
        v39 = -402620406;
      }
    }

    else
    {
      v38 = sub_1000027A4(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000198D0();
      }

      v14 = 0;
      v39 = -402620403;
    }

    v77 = xpc_dictionary_create_reply(v12);
    xpc_dictionary_set_uint64(v77, "Status", v39);
    xpc_connection_send_message(v11, v77);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else if (!strcmp(v6, "Remove"))
  {
    v20 = v3;
    v21 = v4;
    v22 = xpc_dictionary_get_string(v21, "ProfileID");
    if (v22)
    {
      v23 = CFStringCreateWithCString(kCFAllocatorDefault, v22, 0x8000100u);
      if (v23)
      {
        v24 = v23;
        sub_100007E54(v23);
        v25 = 0;
      }

      else
      {
        v74 = sub_1000027A4(0);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          sub_100019760();
        }

        v24 = 0;
        v25 = -402620406;
      }
    }

    else
    {
      v54 = sub_1000027A4(0);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_10001979C();
      }

      v24 = 0;
      v25 = -402620403;
    }

    v75 = xpc_dictionary_create_reply(v21);

    xpc_dictionary_set_uint64(v75, "Status", v25);
    xpc_connection_send_message(v20, v75);

    if (v24)
    {
      CFRelease(v24);
    }
  }

  else
  {
    if (strcmp(v6, "CopyAll"))
    {
      if (strcmp(v6, "CopySingle"))
      {
        if (strcmp(v6, "CopyMatching"))
        {
          if (!strcmp(v6, "Trust"))
          {
            sub_10000932C(v3, v4);
            goto LABEL_145;
          }

          if (!strcmp(v6, "Migrate"))
          {
            sub_1000097F4(v3, v4);
            goto LABEL_145;
          }

          if (!strcmp(v6, "AddMonotonicTimeOffset"))
          {
            sub_1000098F4(v3, v4);
            goto LABEL_145;
          }

          v7 = strcmp(v6, "AddRTCResetCountOffset");
          if (!v7)
          {
            sub_100009B24(v3, v4);
            goto LABEL_145;
          }

          v8 = sub_1000027A4(v7);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_100019570();
          }

          goto LABEL_14;
        }

        connection = v3;
        original = v4;
        xdict = xpc_dictionary_get_dictionary(original, "Payload");
        if (!xdict)
        {
          empty = 0;
          v81 = -402620415;
LABEL_142:
          v100 = xpc_dictionary_create_reply(original);
          xpc_dictionary_set_uint64(v100, "Status", v81);
          if (xdict)
          {
            xpc_dictionary_set_value(v100, "Payload", empty);
          }

          xpc_connection_send_message(connection, v100);

          goto LABEL_145;
        }

        context = objc_autoreleasePoolPush();
        v107 = [NSMutableArray arrayWithCapacity:0];
        v122 = 0;
        v56 = xpc_dictionary_get_data(xdict, "Cert", &v122);
        xarray = xpc_dictionary_get_array(xdict, "Predicates");
        v104 = 0;
        if (v56 && v122)
        {
          v104 = [NSData dataWithBytes:v56 length:?];
        }

        if (xarray)
        {
          applier[0] = _NSConcreteStackBlock;
          applier[1] = 3221225472;
          applier[2] = sub_10000A928;
          applier[3] = &unk_100028F78;
          v121 = v107;
          xpc_array_apply(xarray, applier);
        }

        empty = xpc_array_create_empty();
        v58 = sub_1000027A4(empty);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = sub_100004260(v104);
          LODWORD(length) = 138543362;
          *(&length + 4) = v59;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Copying profiles for cert %{public}@", &length, 0xCu);
        }

        v61 = sub_1000027A4(v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          LODWORD(length) = 138543362;
          *(&length + 4) = v107;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Copying profiles for %{public}@", &length, 0xCu);
        }

        v62 = [v107 count];
        if (v62)
        {
          v118 = 0uLL;
          v119 = 0uLL;
          v116 = 0uLL;
          v117 = 0uLL;
          v63 = sub_100002760(v62);
          v64 = [v63 findProfilesMatchingPredicates:v107 withCertificate:v104];

          v65 = [v64 countByEnumeratingWithState:&v116 objects:&length count:16];
          v66 = v65;
          if (v65)
          {
            v67 = *v117;
            do
            {
              v68 = 0;
              do
              {
                if (*v117 != v67)
                {
                  objc_enumerationMutation(v64);
                }

                v69 = *(*(&v116 + 1) + 8 * v68);
                v70 = sub_1000027A4(v65);
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  v71 = [v69 UUID];
                  v72 = [v69 Name];
                  *buffer = 138543618;
                  *&buffer[4] = v71;
                  *&buffer[12] = 2114;
                  *&buffer[14] = v72;
                  _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Sending %{public}@ - %{public}@", buffer, 0x16u);
                }

                v73 = sub_10000A980(v69);
                xpc_array_append_value(empty, v73);

                v68 = v68 + 1;
              }

              while (v66 != v68);
              v65 = [v64 countByEnumeratingWithState:&v116 objects:&length count:16];
              v66 = v65;
            }

            while (v65);
LABEL_141:

            objc_autoreleasePoolPop(context);
            v81 = 0;
            goto LABEL_142;
          }
        }

        else
        {
          v118 = 0uLL;
          v119 = 0uLL;
          v116 = 0uLL;
          v117 = 0uLL;
          v82 = sub_100002760(0);
          v64 = [v82 findProfilesWithCertificate:v104];

          v83 = [v64 countByEnumeratingWithState:&v116 objects:&length count:16];
          v84 = v83;
          if (v83)
          {
            v85 = *v117;
            do
            {
              v86 = 0;
              do
              {
                if (*v117 != v85)
                {
                  objc_enumerationMutation(v64);
                }

                v87 = *(*(&v116 + 1) + 8 * v86);
                v88 = sub_1000027A4(v83);
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                {
                  v89 = [v87 UUID];
                  v90 = [v87 Name];
                  *buffer = 138543618;
                  *&buffer[4] = v89;
                  *&buffer[12] = 2114;
                  *&buffer[14] = v90;
                  _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Sending %{public}@ - %{public}@", buffer, 0x16u);
                }

                v91 = sub_10000A980(v87);
                xpc_array_append_value(empty, v91);

                v86 = v86 + 1;
              }

              while (v84 != v86);
              v83 = [v64 countByEnumeratingWithState:&v116 objects:&length count:16];
              v84 = v83;
            }

            while (v83);
            goto LABEL_141;
          }
        }

        v93 = sub_1000027A4(v92);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buffer = 0;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Couldn't find a profile matching these predicates:", buffer, 2u);
        }

        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v64 = v107;
        v94 = [v64 countByEnumeratingWithState:&v112 objects:buffer count:16];
        v95 = v94;
        if (v94)
        {
          v96 = *v113;
          do
          {
            v97 = 0;
            do
            {
              if (*v113 != v96)
              {
                objc_enumerationMutation(v64);
              }

              v98 = *(*(&v112 + 1) + 8 * v97);
              v99 = sub_1000027A4(v94);
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v124 = v98;
                _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "Predicate: %{public}@", buf, 0xCu);
              }

              v97 = v97 + 1;
            }

            while (v95 != v97);
            v94 = [v64 countByEnumeratingWithState:&v112 objects:buffer count:16];
            v95 = v94;
          }

          while (v94);
        }

        goto LABEL_141;
      }

      v40 = v3;
      v41 = v4;
      *&length = 0;
      *(&length + 1) = &length;
      v129 = 0x3032000000;
      v130 = sub_10000A83C;
      v131 = sub_10000A84C;
      v132 = 0;
      v42 = xpc_dictionary_get_string(v41, "ProfileID");
      if (v42)
      {
        v43 = CFStringCreateWithCString(kCFAllocatorDefault, v42, 0x8000100u);
        CString = CFStringGetLength(v43);
        if (CString == 36)
        {
          CString = CFStringGetCString(v43, buffer, 37, 0x8000100u);
          v45 = 0;
          v46 = 0;
          do
          {
            v47 = buffer[v45];
            v48 = (v47 - 58) > 0xFFFFFFF5 || (v47 - 71) > 0xFFFFFFF9;
            if (!v48 && (v47 - 97) >= 6 && v47 != 45)
            {
              break;
            }

            v46 = v45++ > 0x22;
          }

          while (v45 != 36);
          if (v46)
          {
            v49 = xpc_dictionary_get_BOOL(v41, "ForceXML");
            v50 = sub_100002760(v49);
            *buffer = _NSConcreteStackBlock;
            *&buffer[8] = 3221225472;
            *&buffer[16] = sub_10000A854;
            *&buffer[24] = &unk_100028F50;
            *&v126 = &length;
            [v50 queryCMSBlobForProfile:v43 forcingXML:v49 handler:buffer];

            if (*(*(&length + 1) + 40))
            {
              v52 = 0;
              v53 = 1;
LABEL_108:
              v79 = xpc_dictionary_create_reply(v41);
              xpc_dictionary_set_uint64(v79, "Status", v52);
              if (v53)
              {
                xpc_dictionary_set_value(v79, "Payload", *(*(&length + 1) + 40));
              }

              xpc_connection_send_message(v40, v79);
              if (v43)
              {
                CFRelease(v43);
              }

              _Block_object_dispose(&length, 8);
              goto LABEL_145;
            }

            v78 = sub_1000027A4(v51);
            v52 = -402620406;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              sub_100019668();
            }

LABEL_107:

            v53 = 0;
            goto LABEL_108;
          }
        }

        v78 = sub_1000027A4(CString);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          sub_1000195F8();
        }
      }

      else
      {
        v78 = sub_1000027A4(0);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          sub_1000196A4();
        }

        v43 = 0;
      }

      v52 = -402620403;
      goto LABEL_107;
    }

    v26 = v3;
    v27 = v4;
    v28 = xpc_array_create_empty();
    v29 = v28;
    if (v28)
    {
      v126 = 0u;
      v127 = 0u;
      memset(buffer, 0, sizeof(buffer));
      v30 = sub_100002760(v28);
      v31 = [v30 allProfiles];

      v32 = [v31 countByEnumeratingWithState:buffer objects:&length count:16];
      if (v32)
      {
        v33 = **&buffer[16];
        while (2)
        {
          for (i = 0; i != v32; ++i)
          {
            if (**&buffer[16] != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = [*(*&buffer[8] + 8 * i) UUID];
            v36 = v35;
            v37 = xpc_string_create([v35 UTF8String]);

            if (!v37)
            {
              v32 = -402620382;
              goto LABEL_114;
            }

            xpc_array_append_value(v29, v37);
          }

          v32 = [v31 countByEnumeratingWithState:buffer objects:&length count:16];
          LODWORD(v37) = 1;
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        LODWORD(v37) = 1;
      }
    }

    else
    {
      v31 = sub_1000027A4(0);
      v32 = -402620406;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100019724();
      }

      LODWORD(v37) = 0;
    }

LABEL_114:

    v80 = xpc_dictionary_create_reply(v27);
    xpc_dictionary_set_uint64(v80, "Status", v32);
    if (v37)
    {
      xpc_dictionary_set_value(v80, "Payload", v29);
    }

    xpc_connection_send_message(v26, v80);
  }

LABEL_145:
  objc_autoreleasePoolPop(v111);
}

id sub_100002760(uint64_t a1)
{
  if (qword_10002DB48 != -1)
  {
    sub_1000194EC();
  }

  v2 = qword_10002DB40;

  return v2;
}

id sub_1000027A4(uint64_t a1)
{
  if (qword_10002DB58 != -1)
  {
    sub_10001A044();
  }

  if (qword_10002DB50)
  {
    v2 = qword_10002DB50;
  }

  else
  {
    v2 = &_os_log_default;
  }

  return v2;
}

BOOL sub_1000027F8(xpc_object_t xdict)
{
  if (xdict != &_xpc_error_connection_invalid)
  {
    string = xpc_dictionary_get_string(xdict, _xpc_error_key_description);
    v3 = sub_1000027A4(string);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100019500();
    }
  }

  return xdict == &_xpc_error_connection_invalid;
}

uint64_t sub_10000287C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000028B4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000028F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002904()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000294C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000295C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002994()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000029E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002A30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002A70()
{

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_100002AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A698();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100002B9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001A698();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_100002C58()
{
  if (v0[3])
  {

    sub_100010300(v0[4], v0[5]);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002C9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

CFArrayRef sub_100002D14(__CFReadStream *a1, int a2)
{
  error = 0;
  if (!a1)
  {
    v10 = sub_1000027A4(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000181F0(v10);
    }

    goto LABEL_16;
  }

  v4 = CFReadStreamOpen(a1);
  if (!v4)
  {
    if (a2)
    {
      goto LABEL_17;
    }

    v10 = sub_1000027A4(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "CreateMISAuthListWithStream: open stream failed (may be non-existing)";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 2;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
    }

LABEL_16:

    goto LABEL_17;
  }

  v5 = CFPropertyListCreateWithStream(0, a1, 0, 0, 0, &error);
  if (!v5)
  {
    v10 = sub_1000027A4(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = error;
      v11 = "CreateMISAuthListWithStream: authList parse failed (malformed?), error %{public}@";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  TypeID = CFArrayGetTypeID();
  if (v7 == TypeID)
  {
    goto LABEL_18;
  }

  v9 = sub_1000027A4(TypeID);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CreateMISAuthListWithStream: plist root has wrong type", buf, 2u);
  }

  CFRelease(v6);
LABEL_17:
  v6 = 0;
LABEL_18:
  if (error)
  {
    CFRelease(error);
  }

  if (!v6 && a2)
  {
    return CFArrayCreate(0, 0, 0, &kCFTypeArrayCallBacks);
  }

  return v6;
}

CFArrayRef sub_100002F00(uint64_t a1, int a2)
{
  v3 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:a1];
  v4 = CFReadStreamCreateWithFile(0, [NSURL fileURLWithPath:v3]);
  v5 = sub_100002D14(v4, a2);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

BOOL sub_100002F80(const __CFArray *a1, void *a2)
{
  v3 = a2;
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    v6 = 1;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    for (i = 0; i != v5; v6 = i >= v5)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v9 = CFGetTypeID(ValueAtIndex);
      TypeID = CFStringGetTypeID();
      if (v9 == TypeID)
      {
        if (!v3[2](v3, ValueAtIndex))
        {
          break;
        }
      }

      else
      {
        v11 = sub_1000027A4(TypeID);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "authListIterate: row with unknown type", v13, 2u);
        }
      }

      ++i;
    }
  }

  return v6;
}

BOOL sub_1000030B0(const __CFArray *a1, void *a2)
{
  v3 = a2;
  Count = CFArrayGetCount(a1);
  v28 = v3;
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      v9 = CFGetTypeID(ValueAtIndex);
      TypeID = CFDictionaryGetTypeID();
      if (v9 != TypeID)
      {
        break;
      }

      v11 = CFArrayGetValueAtIndex(a1, v7);
      Value = CFDictionaryGetValue(v11, @"cdhash");
      v13 = CFDictionaryGetValue(v11, @"upp-uuid");
      v14 = CFDictionaryGetValue(v11, @"teamid");
      v15 = CFDictionaryGetValue(v11, @"type");
      v16 = CFDictionaryGetValue(v11, @"grace");
      if (!Value || (v17 = v16, v18 = CFGetTypeID(Value), v16 = CFStringGetTypeID(), v18 != v16) || !v13 || (v19 = CFGetTypeID(v13), v16 = CFStringGetTypeID(), v19 != v16) || !v14 || (v20 = CFGetTypeID(v14), v16 = CFStringGetTypeID(), v20 != v16) || !v15 || (v21 = CFGetTypeID(v15), v16 = CFNumberGetTypeID(), v21 != v16))
      {
        v23 = sub_1000027A4(v16);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v24 = buf;
          v25 = v23;
          v26 = "indeterminateListIterate: malformed row";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, v24, 2u);
        }

        goto LABEL_22;
      }

      if (!v17 || (v22 = CFGetTypeID(v17), v22 != CFNumberGetTypeID()))
      {
        valuePtr = 0;
        v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      }

      if (((v28)[2](v28, Value, v13, v14, v15, v17) & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_23:
      v6 = ++v7 >= v5;
      if (v5 == v7)
      {
        goto LABEL_26;
      }
    }

    v23 = sub_1000027A4(TypeID);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 0;
      v24 = &v31;
      v25 = v23;
      v26 = "indeterminateListIterate: row with unknown type";
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  v6 = 1;
LABEL_26:

  return v6;
}

BOOL sub_100003340(const __CFArray *a1, void *a2)
{
  v3 = a2;
  Count = CFArrayGetCount(a1);
  v27 = v3;
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      v9 = CFGetTypeID(ValueAtIndex);
      TypeID = CFDictionaryGetTypeID();
      if (v9 == TypeID)
      {
        v11 = CFArrayGetValueAtIndex(a1, v7);
        Value = CFDictionaryGetValue(v11, @"upp-uuid");
        v13 = CFDictionaryGetValue(v11, @"cdhash");
        v14 = CFDictionaryGetValue(v11, @"teamid");
        v15 = CFDictionaryGetValue(v11, @"wholeProfile");
        if (Value && (v16 = v15, v17 = CFGetTypeID(Value), v15 = CFStringGetTypeID(), v17 == v15) && v13 && (v18 = CFGetTypeID(v13), v15 = CFStringGetTypeID(), v18 == v15) && v14 && (v19 = CFGetTypeID(v14), v15 = CFStringGetTypeID(), v19 == v15) && v16 && (v20 = CFGetTypeID(v16), v15 = CFNumberGetTypeID(), v20 == v15))
        {
          valuePtr = 0;
          v21 = CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
          if (v21)
          {
            if (!(v27)[2](v27, Value, v13, v14, valuePtr != 0))
            {
              goto LABEL_26;
            }

            goto LABEL_21;
          }

          v22 = sub_1000027A4(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v28 = 0;
            v23 = &v28;
            v24 = v22;
            v25 = "rejectionListIterate: could not convert wholeProfile";
            goto LABEL_19;
          }
        }

        else
        {
          v22 = sub_1000027A4(v15);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v23 = buf;
            v24 = v22;
            v25 = "rejectionListIterate: malformed row";
            goto LABEL_19;
          }
        }
      }

      else
      {
        v22 = sub_1000027A4(TypeID);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 0;
          v23 = &v31;
          v24 = v22;
          v25 = "rejectionListIterate: row with unknown type";
LABEL_19:
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, v23, 2u);
        }
      }

LABEL_21:
      v6 = ++v7 >= v5;
      if (v5 == v7)
      {
        goto LABEL_26;
      }
    }
  }

  v6 = 1;
LABEL_26:

  return v6;
}

NSMutableDictionary *sub_1000035D0()
{
  v0 = [NSMutableArray alloc];
  v1 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"AGP.plist"];
  v2 = [v0 initWithContentsOfFile:v1];

  v16 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v10 = v8;
          v11 = [v10 objectForKey:@"upp-uuid"];
          v12 = [v10 objectForKey:@"grace"];
          objc_opt_class();
          v13 = objc_opt_isKindOfClass();
          if (v13 & 1) != 0 && (objc_opt_class(), v13 = objc_opt_isKindOfClass(), (v13))
          {
            [v16 setObject:v12 forKeyedSubscript:v11];
          }

          else
          {
            v14 = sub_1000027A4(v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v22 = v10;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "bad or incomplete graces row: %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          v10 = sub_1000027A4(isKindOfClass);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v22 = v8;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "graces row is not a dictionary, but %{public}@", buf, 0xCu);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  return v16;
}

uint64_t MISProvisioningProfileIsAppleInternalProfile(uint64_t a1)
{
  v2 = MISProvisioningProfileGetTeamIdentifier(a1);
  if ([v2 caseInsensitiveCompare:@"243LU875E5"])
  {
    v3 = sub_10000394C(a1, @"AppleInternalProfile");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

const void *MISProvisioningProfileGetTeamIdentifier(uint64_t a1)
{
  Value = MISProfileGetValue();
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  if (CFArrayGetCount(Value) != 1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v2, 0);
}

uint64_t sub_10000394C(uint64_t a1, uint64_t a2)
{
  Value = MISProfileGetValue();
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return CFBooleanGetValue(v3);
}

uint64_t MISProvisioningProfileIncludesDevice(uint64_t a1, const __CFString *a2)
{
  if (sub_10000394C(a1, @"ProvisionsAllDevices"))
  {
    return 1;
  }

  Value = MISProfileGetValue();
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
    v3 = 1;
    if (CFStringCompare(ValueAtIndex, a2, 1uLL) == kCFCompareEqualTo)
    {
      break;
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t MISProvisioningProfileIncludesPlatform(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  Value = MISProfileGetValue();
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    TypeID = CFArrayGetTypeID();
    if (v7 == TypeID)
    {
      Count = CFArrayGetCount(v6);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v10 = Count;
        v11 = 0;
        v12 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
          if (ValueAtIndex && (v14 = ValueAtIndex, v15 = CFGetTypeID(ValueAtIndex), ValueAtIndex = CFStringGetTypeID(), v15 == ValueAtIndex))
          {
            if (CFStringCompare(v14, a2, 1uLL) == kCFCompareEqualTo)
            {
              return v12;
            }
          }

          else
          {
            v16 = sub_1000027A4(ValueAtIndex);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *v19 = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Encountered a null or non-string platform identifier.", v19, 2u);
            }
          }

          v12 = ++v11 < v10;
        }

        while (v10 != v11);
      }

      return v12;
    }

    else
    {
      v17 = sub_1000027A4(TypeID);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Encountered a non-array value for 'Platforms'.", buf, 2u);
      }

      return 0;
    }
  }

  return a3;
}

void *MISProvisioningProfileGetDeveloperCertificatesHashes(void *a1)
{
  v1 = [a1 certs];

  return v1;
}

uint64_t MISXMLProvisioningProfileGetDeveloperCertificates(uint64_t a1)
{
  if (MISProfileIsDEREncoded())
  {
    return 0;
  }

  return MISProfileGetValue();
}

uint64_t MISProvisioningProfileGetVersion(uint64_t a1)
{
  v1 = MISProfileGetValue();
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 intValue];
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  return v2;
}

void *MISProvisioningProfileGetEntitlements(void *a1)
{
  v1 = [a1 entitlements];

  return v1;
}

uint64_t MISProvisioningProfileCheckValidity(uint64_t a1, const __CFString *a2, const __CFDate *a3)
{
  v6 = MISProfileValidateSignature();
  if (!v6)
  {
    v6 = 3892346898;
    Version = MISProvisioningProfileGetVersion(a1);
    if (Version != 1)
    {
      return 3892346896;
    }

    if (!a2 || (Version = MISProvisioningProfileIncludesDevice(a1, a2), Version))
    {
      v8 = sub_100003F78(Version);
      v9 = sub_10001826C(v8, a1, @"OSX", 0);
      if (v9)
      {
        v10 = sub_100003F78(v9);
        v11 = sub_100003F78(v10);
        v12 = sub_100003F64(v11);
        v13 = sub_10001826C(v10, a1, v12, 0);

        if (!v13)
        {
          v15 = sub_1000027A4(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100018234(v15, v16, v17, v18, v19, v20, v21, v22);
          }

          return v6;
        }
      }

      else
      {
      }

      if (a3 && (Value = MISProfileGetValue()) != 0 && CFDateCompare(a3, Value, 0) != kCFCompareLessThan)
      {
        return 3892346897;
      }

      else
      {
        return 0;
      }
    }
  }

  return v6;
}

uint64_t MISProvisioningProfileIsForBetaDeployment(void *a1)
{
  v1 = [a1 entitlements];

  if (!v1)
  {
    return 0;
  }

  v2 = CFGetTypeID(v1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return MISEntitlementDictionaryAllowsEntitlementValue(v1, @"beta-reports-active", kCFBooleanTrue);
}

void sub_100003F48(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

const __CFString *sub_100003F64(uint64_t a1)
{
  if (a1)
  {
    return @"iOS";
  }

  else
  {
    return 0;
  }
}

id sub_100003F78(uint64_t a1)
{
  if (qword_10002DB10 != -1)
  {
    sub_100018308();
  }

  v2 = qword_10002DB18;

  return v2;
}

CFDataRef sub_10000401C(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  if (Length)
  {
    return 0;
  }

  Typed = CFAllocatorAllocateTyped();
  if (!CFStringGetCString(a1, Typed, Length | 1, 0x600u))
  {
    goto LABEL_28;
  }

  v4 = Length >> 1;
  v5 = CFAllocatorAllocateTyped();
  v6 = v5;
  if (v4 >= 1)
  {
    v7 = (Typed + 1);
    v8 = v5;
    v9 = v4;
    do
    {
      v10 = *(v7 - 1);
      v11 = v10 - 48;
      v12 = v10 - 97;
      v13 = (v10 - 71);
      v14 = v10 - 55;
      v15 = v13 >= 0xFA;
      v16 = v13 < 0xFA;
      if (!v15)
      {
        v14 = 0;
      }

      v17 = v10 - 87;
      v18 = v12 > 5;
      v19 = v12 > 5 && v16;
      if (v18)
      {
        v17 = v14;
      }

      if (v11 < 0xA)
      {
        v19 = 0;
        v17 = v11;
      }

      v20 = 16 * v17;
      v21 = *v7;
      v22 = v21 - 48;
      v23 = v21 - 97;
      v24 = (v21 - 71);
      v25 = v21 - 55;
      v15 = v24 >= 0xFA;
      v26 = v24 < 0xFA;
      if (!v15)
      {
        v25 = 0;
      }

      v27 = v21 - 87;
      v28 = v23 > 5;
      v29 = v23 > 5 && v26;
      if (v28)
      {
        v27 = v25;
      }

      if (v22 < 0xA)
      {
        v29 = 0;
        v27 = v22;
      }

      *v8 = v27 + v20;
      if (v19 || v29)
      {
        goto LABEL_27;
      }

      ++v8;
      v7 += 2;
    }

    while (--v9);
  }

  v30 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v5, v4, kCFAllocatorDefault);
  if (!v30 && v6)
  {
LABEL_27:
    CFAllocatorDeallocate(kCFAllocatorDefault, v6);
LABEL_28:
    v30 = 0;
  }

  if (Typed)
  {
    CFAllocatorDeallocate(kCFAllocatorDefault, Typed);
  }

  return v30;
}

const __CFString *sub_1000041B4(const __CFData *a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  Length = CFDataGetLength(a1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
  BytePtr = CFDataGetBytePtr(a1);
  v5 = CFDataGetLength(a1);
  if (v5 >= 1)
  {
    v6 = v5;
    do
    {
      v7 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02x", v7);
      --v6;
    }

    while (v6);
  }

  return Mutable;
}

__CFString *sub_100004260(const __CFData *a1)
{
  v1 = sub_1000041B4(a1);

  return v1;
}

uint64_t MISArrayAllowsEntitlementValue(const __CFArray *a1, const __CFString *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6 - 1);
      v8 = CFGetTypeID(ValueAtIndex);
      if (v8 != CFStringGetTypeID())
      {
        break;
      }

      Length = CFStringGetLength(ValueAtIndex);
      v10 = Length - 1;
      if (Length < 1)
      {
        HasPrefix = 0;
      }

      else if (CFStringGetCharacterAtIndex(ValueAtIndex, v10) == 42)
      {
        v14.location = 0;
        v14.length = v10;
        v11 = CFStringCreateWithSubstring(kCFAllocatorDefault, ValueAtIndex, v14);
        HasPrefix = CFStringHasPrefix(a2, v11);
        CFRelease(v11);
      }

      else
      {
        HasPrefix = CFStringCompare(ValueAtIndex, a2, 0) == kCFCompareEqualTo;
      }

      if (v6 < v5)
      {
        ++v6;
        if (!HasPrefix)
        {
          continue;
        }
      }

      return HasPrefix;
    }
  }

  return 0;
}

uint64_t MISEntitlementDictionaryAllowsEntitlementValue(const __CFDictionary *a1, const void *a2, const __CFString *a3)
{
  if (!a3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  values = Value;
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  if (CFEqual(Value, @"*") != 1)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      return CFEqual(v5, a3);
    }

    v9 = CFGetTypeID(v5);
    if (v9 == CFStringGetTypeID())
    {
      v10 = CFGetTypeID(a3);
      if (v10 == CFStringGetTypeID())
      {
        v11 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
        v6 = MISArrayAllowsEntitlementValue(v11, a3);
        CFRelease(v11);
        return v6;
      }
    }

    else
    {
      v12 = CFGetTypeID(v5);
      if (v12 == CFArrayGetTypeID())
      {
        v13 = CFGetTypeID(a3);
        if (v13 == CFStringGetTypeID())
        {
          return MISArrayAllowsEntitlementValue(v5, a3);
        }

        v14 = CFGetTypeID(a3);
        if (v14 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(a3);
          if (Count < 1)
          {
            return 1;
          }

          v16 = Count;
          v17 = 1;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a3, v17 - 1);
            v19 = CFGetTypeID(ValueAtIndex);
            if (v19 != CFStringGetTypeID())
            {
              break;
            }

            v20 = MISArrayAllowsEntitlementValue(v5, ValueAtIndex);
            v6 = v20;
            if (v17 < v16)
            {
              ++v17;
              if (v20 == 1)
              {
                continue;
              }
            }

            return v6;
          }
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10000476C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@predicate");
  sqlite3_bind_text(a2, v5, [*(a1 + 40) UTF8String], -1, 0);
  v6 = sqlite3_bind_parameter_index(a2, "@wildcard");
  v7 = *(a1 + 48);

  return sqlite3_bind_int(a2, v6, v7);
}

void sub_100004A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004A3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004A54(uint64_t a1)
{
  v2 = [*(a1 + 32) readSetting:@"databaseSchemaVersion"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5)
  {
    v10 = sub_1000027A4(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MISQL: null version, potential erase or upgrade", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"1"];
    v11 = [*(a1 + 32) executeQuery:@"CREATE TABLE profiles(uuid TEXT NOT NULL PRIMARY KEY withBind:team_id TEXT NOT NULL withResults:{install_time TEXT DEFAULT CURRENT_TIMESTAMP, name TEXT NOT NULL, expires INTEGER, is_for_all_devices INTEGER, is_apple_internal INTEGER, is_local INTEGER, is_beta INTEGER, cms_blob BLOB NOT NULL)", 0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v11;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_1000027A4(v11);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100018360(a1 + 48);
      }

      goto LABEL_73;
    }

    v12 = [*(a1 + 32) executeQuery:@"CREATE TABLE certificates(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:leaf BLOB UNIQUE NOT NULL)" withResults:{0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v12;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_1000027A4(v12);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000183D4(a1 + 48);
      }

      goto LABEL_73;
    }

    v14 = [*(a1 + 32) executeQuery:@"CREATE UNIQUE INDEX certificate_leaf_index ON certificates (leaf)" withBind:0 withResults:0];
    *(*(*(a1 + 48) + 8) + 24) = v14;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_1000027A4(v14);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100018448(a1 + 48);
      }

      goto LABEL_73;
    }

    v57 = [*(a1 + 32) executeQuery:@"CREATE TABLE certificate_provisioning_cache(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{leaf_pk INTEGER NOT NULL, UNIQUE(uuid, leaf_pk), CONSTRAINT fk_certificate_leaf  FOREIGN KEY (leaf_pk)  REFERENCES certificates(pk)  ON DELETE CASCADE, CONSTRAINT fk_cert_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v57;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_1000027A4(v57);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000184BC(a1 + 48);
      }

      goto LABEL_73;
    }

    v62 = [*(a1 + 32) executeQuery:@"CREATE TABLE entitlements_provisioning_cache(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{predicate TEXT NOT NULL, wildcard INTEGER NOT NULL, UNIQUE(uuid, predicate), CONSTRAINT fk_predicate_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v62;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_1000027A4(v62);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100018530(a1 + 48);
      }

      goto LABEL_73;
    }

    v88 = [*(a1 + 32) executeQuery:@"CREATE UNIQUE INDEX entitlements_cache_index ON entitlements_provisioning_cache (uuid withBind:predicate)" withResults:{0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v88;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_1000027A4(v88);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000185A4(a1 + 48);
      }

      goto LABEL_73;
    }

    v108 = *(*(a1 + 40) + 8);
    v109 = *(v108 + 40);
    *(v108 + 40) = @"1";

    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  v6 = [v5 isEqualToString:@"1"];
  if (v6)
  {
    v7 = sub_1000027A4(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MISQL: performing database migration 1 -> 2", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"2"];
    v8 = [*(a1 + 32) executeQuery:@"ALTER TABLE profiles ADD COLUMN is_der INTEGER DEFAULT (0)" withBind:0 withResults:0];
    *(*(*(a1 + 48) + 8) + 24) = v8;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_1000027A4(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100018618(a1 + 48);
      }

      goto LABEL_73;
    }

    v13 = [*(a1 + 32) executeQuery:@"CREATE TABLE xml_profiles_cache(uuid TEXT NOT NULL PRIMARY KEY withBind:cms_blob BLOB NOT NULL withResults:{CONSTRAINT fk_xml_profile_cache_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v13;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_1000027A4(v13);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001868C(a1 + 48);
      }

      goto LABEL_73;
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = @"2";
  }

  v17 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"2"];
  if (v17)
  {
    v18 = sub_1000027A4(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "MISQL: performing database migration 2 -> 3", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"3"];
    [*(a1 + 32) findProfilesMatchingEntitlements:&off_10002AE58 withCertificate:0];
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v9 = v208 = 0u;
    v19 = [v9 countByEnumeratingWithState:&v205 objects:v218 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v206;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v206 != v21)
          {
            objc_enumerationMutation(v9);
          }

          v23 = *(*(&v205 + 1) + 8 * i);
          if (![v23 ProvisionsAllDevices] && !objc_msgSend(v23, "AppleInternal"))
          {
            v24 = *(a1 + 32);
            v204[0] = _NSConcreteStackBlock;
            v204[1] = 3221225472;
            v204[2] = sub_100006324;
            v204[3] = &unk_100028C48;
            v204[4] = v23;
            v25 = [v24 executeQuery:@"UPDATE profiles SET is_beta = 1 WHERE uuid = @uuid" withBind:v204 withResults:0];
            *(*(*(a1 + 48) + 8) + 24) = v25;
            if (*(*(*(a1 + 48) + 8) + 24))
            {
              v31 = sub_1000027A4(v25);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                sub_100018700(a1 + 48);
              }

              goto LABEL_73;
            }
          }
        }

        v20 = [v9 countByEnumeratingWithState:&v205 objects:v218 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v26 = *(*(a1 + 40) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = @"3";
  }

  v28 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"3"];
  if (v28)
  {
    v29 = sub_1000027A4(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "MISQL: performing database migration 3 -> 4", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"4"];
    v30 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS trusted_team_ids(team_id TEXT PRIMARY KEY withBind:signature BLOB)" withResults:{0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v30;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_1000027A4(v30);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100018774(a1 + 48);
      }

      goto LABEL_73;
    }

    v32 = *(*(a1 + 40) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = @"4";
  }

  v34 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"4"];
  if (v34)
  {
    v35 = sub_1000027A4(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "MISQL: performing database migration 4 -> 5", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"5"];
    v36 = objc_opt_new();
    v37 = *(a1 + 32);
    v202[0] = _NSConcreteStackBlock;
    v202[1] = 3221225472;
    v202[2] = sub_1000063B4;
    v202[3] = &unk_100028C70;
    v9 = v36;
    v203 = v9;
    v38 = [v37 executeQuery:@"SELECT team_id withBind:signature FROM trusted_team_ids" withResults:{0, v202}];
    *(*(*(a1 + 48) + 8) + 24) = v38;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v39 = sub_1000027A4(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1000187E8(a1 + 48);
      }

LABEL_71:

      v54 = v203;
      goto LABEL_72;
    }

    v155 = a1 + 48;
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v39 = v9;
    v40 = [v39 countByEnumeratingWithState:&v198 objects:v217 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v199;
      while (2)
      {
        for (j = 0; j != v41; j = j + 1)
        {
          if (*v199 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v198 + 1) + 8 * j);
          v45 = *(a1 + 32);
          v197[0] = _NSConcreteStackBlock;
          v197[1] = 3221225472;
          v197[2] = sub_100006434;
          v197[3] = &unk_100028C48;
          v197[4] = v44;
          v46 = [v45 executeQuery:@"UPDATE trusted_team_ids SET signature = NULL WHERE team_id = ?1" withBind:v197 withResults:0];
          *(*(*(a1 + 48) + 8) + 24) = v46;
          if (*(*(*(a1 + 48) + 8) + 24))
          {
            v53 = sub_1000027A4(v46);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              sub_10001885C(v155);
            }

            goto LABEL_71;
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v198 objects:v217 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v47 = *(*(a1 + 40) + 8);
    v48 = *(v47 + 40);
    *(v47 + 40) = @"5";
  }

  v49 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"5"];
  if (v49)
  {
    v50 = sub_1000027A4(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "MISQL: performing database migration 5 -> 6", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"6"];
    v51 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS team_id_info(team_id TEXT NOT NULL withBind:team_name TEXT NOT NULL withResults:{PRIMARY KEY (team_id))", 0, 0}];
    v52 = a1 + 48;
    *(*(*(a1 + 48) + 8) + 24) = v51;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_1000027A4(v51);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000188D0(a1 + 48);
      }

      goto LABEL_73;
    }

    v58 = objc_opt_new();
    v59 = *(a1 + 32);
    v195[0] = _NSConcreteStackBlock;
    v195[1] = 3221225472;
    v195[2] = sub_100006484;
    v195[3] = &unk_100028C70;
    v9 = v58;
    v196 = v9;
    v60 = [v59 executeQuery:@"SELECT profiles.team_id withBind:profiles.cms_blob withResults:{profiles.uuid FROM profiles", 0, v195}];
    *(*(*(a1 + 48) + 8) + 24) = v60;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v61 = sub_1000027A4(v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_100018944(a1 + 48);
      }

LABEL_107:

      v54 = v196;
      goto LABEL_72;
    }

    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v61 = v9;
    v63 = [v61 countByEnumeratingWithState:&v191 objects:v216 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v192;
      while (2)
      {
        for (k = 0; k != v64; k = k + 1)
        {
          if (*v192 != v65)
          {
            objc_enumerationMutation(v61);
          }

          v67 = *(*(&v191 + 1) + 8 * k);
          v68 = [v61 objectForKeyedSubscript:v67];
          v69 = *(a1 + 32);
          v189[0] = _NSConcreteStackBlock;
          v189[1] = 3221225472;
          v189[2] = sub_1000065B4;
          v189[3] = &unk_100028C98;
          v189[4] = v67;
          v70 = v68;
          v190 = v70;
          v71 = [v69 executeQuery:@"INSERT INTO team_id_info VALUES (@team_id withBind:@team_name)" withResults:{v189, 0}];
          *(*(*(a1 + 48) + 8) + 24) = v71;
          if (*(*(*(a1 + 48) + 8) + 24))
          {
            v83 = sub_1000027A4(v71);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              sub_1000189B8(v52);
            }

            goto LABEL_107;
          }
        }

        v64 = [v61 countByEnumeratingWithState:&v191 objects:v216 count:16];
        if (v64)
        {
          continue;
        }

        break;
      }
    }

    v72 = *(*(a1 + 40) + 8);
    v73 = *(v72 + 40);
    *(v72 + 40) = @"6";
  }

  v74 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"6"];
  if (!v74)
  {
    goto LABEL_130;
  }

  v75 = sub_1000027A4(v74);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "MISQL: performing database migration 6 -> 7", buf, 2u);
  }

  [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"7"];
  v76 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS signing_identities(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{signing_identity TEXT NOT NULL, UNIQUE(uuid, signing_identity), CONSTRAINT fk_signing_identity_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
  v77 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 24) = v76;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v9 = sub_1000027A4(v76);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100018A2C(a1 + 48);
    }

    goto LABEL_73;
  }

  v187[0] = _NSConcreteStackBlock;
  v187[1] = 3221225472;
  v187[2] = sub_10000665C;
  v187[3] = &unk_100028CC0;
  v9 = objc_opt_new();
  v188 = v9;
  v78 = objc_retainBlock(v187);
  v79 = *(a1 + 32);
  v185[0] = _NSConcreteStackBlock;
  v185[1] = 3221225472;
  v185[2] = sub_100006928;
  v185[3] = &unk_100028CE8;
  v80 = v78;
  v186 = v80;
  v81 = [v79 executeQuery:@"SELECT uuid withBind:cms_blob FROM profiles WHERE is_der = 0 AND (is_for_all_devices = 1 OR is_local = 1)" withResults:{0, v185}];
  *(*(*(a1 + 48) + 8) + 24) = v81;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v84 = *(a1 + 32);
    v183[0] = _NSConcreteStackBlock;
    v183[1] = 3221225472;
    v183[2] = sub_1000069D0;
    v183[3] = &unk_100028CE8;
    v85 = v80;
    v184 = v85;
    v86 = [v84 executeQuery:@"SELECT xml_profiles_cache.uuid withBind:xml_profiles_cache.cms_blob FROM xml_profiles_cache LEFT JOIN profiles ON profiles.uuid = xml_profiles_cache.uuid WHERE profiles.is_for_all_devices = 1 OR profiles.is_local = 1" withResults:{0, v183}];
    *(*(*(a1 + 48) + 8) + 24) = v86;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v87 = sub_1000027A4(v86);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        sub_100018B14(v77);
      }

LABEL_146:

      goto LABEL_147;
    }

    v156 = v85;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v89 = v9;
    v149 = [v89 countByEnumeratingWithState:&v179 objects:v215 count:16];
    if (v149)
    {
      v90 = *v180;
      v153 = v89;
      v147 = *v180;
      do
      {
        v91 = 0;
        do
        {
          if (*v180 != v90)
          {
            objc_enumerationMutation(v89);
          }

          v151 = v91;
          v92 = *(*(&v179 + 1) + 8 * v91);
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v178 = 0u;
          v93 = [v89 objectForKeyedSubscript:v92];
          v94 = [v93 countByEnumeratingWithState:&v175 objects:v214 count:16];
          if (v94)
          {
            v95 = v94;
            v96 = *v176;
            while (2)
            {
              for (m = 0; m != v95; m = m + 1)
              {
                if (*v176 != v96)
                {
                  objc_enumerationMutation(v93);
                }

                v98 = *(*(&v175 + 1) + 8 * m);
                v99 = *(a1 + 32);
                v174[0] = _NSConcreteStackBlock;
                v174[1] = 3221225472;
                v174[2] = sub_100006A78;
                v174[3] = &unk_100028C98;
                v174[4] = v92;
                v174[5] = v98;
                v100 = [v99 executeQuery:@"INSERT OR IGNORE INTO signing_identities VALUES (NULL withBind:@uuid withResults:{@signing_identity)", v174, 0}];
                *(*(*(a1 + 48) + 8) + 24) = v100;
                if (*(*(*(a1 + 48) + 8) + 24))
                {
                  v110 = sub_1000027A4(v100);
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                  {
                    sub_100018B88(v77);
                  }

                  v87 = v153;
                  v85 = v156;
                  goto LABEL_146;
                }
              }

              v95 = [v93 countByEnumeratingWithState:&v175 objects:v214 count:16];
              if (v95)
              {
                continue;
              }

              break;
            }
          }

          v91 = v151 + 1;
          v89 = v153;
          v90 = v147;
        }

        while ((v151 + 1) != v149);
        v149 = [v153 countByEnumeratingWithState:&v179 objects:v215 count:16];
      }

      while (v149);
    }

    v101 = *(*(a1 + 40) + 8);
    v102 = *(v101 + 40);
    *(v101 + 40) = @"7";

LABEL_130:
    v103 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"7"];
    if (v103)
    {
      v104 = sub_1000027A4(v103);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_INFO, "MISQL: performing database migration 7 -> 8", buf, 2u);
      }

      [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"8"];
      v105 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS online_auth( uuid TEXT NOT NULL withBind:cdhash BLOB NOT NULL withResults:{grace_period INT NOT NULL, last_success_monotonic_time INT NOT NULL, last_success_reset_count INT NOT NULL, is_rejected INT NOT NULL DEFAULT (0), is_rejected_by_whole_profile INT NOT NULL DEFAULT (0), PRIMARY KEY (uuid, cdhash), CONSTRAINT fk_online_auth_profile_uuid    FOREIGN KEY (uuid)    REFERENCES profiles(uuid)    ON DELETE CASCADE)", 0, 0}];
      *(*(*(a1 + 48) + 8) + 24) = v105;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v9 = sub_1000027A4(v105);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100018BFC(a1 + 48);
        }

        goto LABEL_73;
      }

      v106 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS banned_profile_uuids( uuid TEXT NOT NULL)" withBind:0 withResults:0];
      *(*(*(a1 + 48) + 8) + 24) = v106;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v9 = sub_1000027A4(v106);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100018C70(a1 + 48);
        }

        goto LABEL_73;
      }

      v107 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS banned_cdhashes( cdhash BLOB NOT NULL)" withBind:0 withResults:0];
      *(*(*(a1 + 48) + 8) + 24) = v107;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v9 = sub_1000027A4(v107);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100018CE4(a1 + 48);
        }

        goto LABEL_73;
      }

      v111 = *(*(a1 + 40) + 8);
      v112 = *(v111 + 40);
      *(v111 + 40) = @"8";
    }

    v113 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"8"];
    if (!v113)
    {
      return 1;
    }

    v114 = sub_1000027A4(v113);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_INFO, "MISQL: performing database migration 8 -> 9", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"9"];
    v115 = objc_opt_new();
    v116 = *(a1 + 32);
    v172[0] = _NSConcreteStackBlock;
    v172[1] = 3221225472;
    v172[2] = sub_100006B20;
    v172[3] = &unk_100028C70;
    v9 = v115;
    v173 = v9;
    v117 = [v116 executeQuery:@"SELECT uuid withBind:predicate FROM entitlements_provisioning_cache WHERE predicate LIKE 'string%' || x'1f' || '*' AND wildcard = 1" withResults:{0, v172}];
    v118 = a1 + 48;
    *(*(*(a1 + 48) + 8) + 24) = v117;
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      v146 = a1 + 48;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v120 = v9;
      v121 = [v120 countByEnumeratingWithState:&v168 objects:v213 count:16];
      if (v121)
      {
        v122 = *v169;
        v148 = v120;
        v144 = *v169;
        do
        {
          v123 = 0;
          v145 = v121;
          do
          {
            if (*v169 != v122)
            {
              v124 = v123;
              objc_enumerationMutation(v120);
              v123 = v124;
            }

            v150 = v123;
            v125 = *(*(&v168 + 1) + 8 * v123);
            v164 = 0u;
            v165 = 0u;
            v166 = 0u;
            v167 = 0u;
            obj = [v120 objectForKeyedSubscript:v125];
            v154 = [obj countByEnumeratingWithState:&v164 objects:v212 count:16];
            if (v154)
            {
              v157 = *v165;
              do
              {
                for (n = 0; n != v154; n = n + 1)
                {
                  if (*v165 != v157)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v127 = *(*(&v164 + 1) + 8 * n);
                  v128 = [v127 rangeOfString:off_10002D860];
                  if (v128 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v129 = [v127 substringFromIndex:v128];
                    v130 = [NSString stringWithFormat:@"BOOL%@", v129];
                    v211[0] = v130;
                    v152 = v129;
                    v131 = [NSString stringWithFormat:@"number%@", v129];
                    v211[1] = v131;
                    v132 = [NSArray arrayWithObjects:v211 count:2];

                    v162 = 0u;
                    v163 = 0u;
                    v160 = 0u;
                    v161 = 0u;
                    v133 = v132;
                    v134 = [v133 countByEnumeratingWithState:&v160 objects:v210 count:16];
                    if (v134)
                    {
                      v135 = v134;
                      v136 = *v161;
                      while (2)
                      {
                        for (ii = 0; ii != v135; ii = ii + 1)
                        {
                          if (*v161 != v136)
                          {
                            objc_enumerationMutation(v133);
                          }

                          v138 = *(*(&v160 + 1) + 8 * ii);
                          v139 = *(a1 + 32);
                          v159[0] = _NSConcreteStackBlock;
                          v159[1] = 3221225472;
                          v159[2] = sub_100006BF4;
                          v159[3] = &unk_100028C98;
                          v159[4] = v125;
                          v159[5] = v138;
                          v140 = [v139 executeQuery:@"INSERT OR IGNORE INTO entitlements_provisioning_cache (uuid withBind:predicate withResults:{wildcard) VALUES (?1, ?2, 1)", v159, 0}];
                          *(*(*(a1 + 48) + 8) + 24) = v140;
                          if (*(*(*(a1 + 48) + 8) + 24))
                          {
                            v143 = sub_1000027A4(v140);
                            if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                            {
                              sub_100018DCC(v146);
                            }

                            v119 = v148;
                            goto LABEL_184;
                          }
                        }

                        v135 = [v133 countByEnumeratingWithState:&v160 objects:v210 count:16];
                        if (v135)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }
                }

                v120 = v148;
                v154 = [obj countByEnumeratingWithState:&v164 objects:v212 count:16];
              }

              while (v154);
            }

            v123 = v150 + 1;
            v122 = v144;
          }

          while ((v150 + 1) != v145);
          v121 = [v120 countByEnumeratingWithState:&v168 objects:v213 count:16];
        }

        while (v121);
      }

      v141 = *(*(a1 + 40) + 8);
      v142 = *(v141 + 40);
      *(v141 + 40) = @"9";

      v55 = 1;
      v9 = v120;
      goto LABEL_74;
    }

    v119 = sub_1000027A4(v117);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      sub_100018D58(v118);
    }

LABEL_184:

    v54 = v173;
    goto LABEL_72;
  }

  v82 = sub_1000027A4(v81);
  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
  {
    sub_100018AA0(v77);
  }

LABEL_147:
  v54 = v188;
LABEL_72:

LABEL_73:
  v55 = 0;
LABEL_74:

  return v55;
}

void sub_100006324(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v6 = [*(a1 + 32) UUID];
  v5 = v6;
  sqlite3_bind_text(a2, v4, [v6 UTF8String], -1, 0);
}

void sub_1000063B4(uint64_t a1, sqlite3_stmt *a2)
{
  v5 = sub_10000FC3C(a2, 0);
  v4 = sub_10000FCF4(a2, 1);
  if (![v4 length])
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t sub_100006434(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

void sub_100006484(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = sub_10000FC3C(a2, 0);
  v8 = [*(a1 + 32) objectForKey:v7];

  if (!v8)
  {
    v9 = sub_10000FCF4(a2, 1);
    v10 = sub_10000FC3C(a2, 2);
    v11 = MISProfileCreateWithData();
    if (v11)
    {
      v12 = v11;
      v13 = MISProvisioningProfileGetTeamName(v11);
      [*(a1 + 32) setObject:v13 forKeyedSubscript:v7];
      CFRelease(v12);
    }

    else
    {
      v14 = sub_1000027A4(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100018E40();
      }
    }
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_1000065B4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_name");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

void sub_10000665C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = MISProfileCreateWithData();
    if (v8)
    {
      v9 = v8;
      v10 = MISXMLProvisioningProfileGetDeveloperCertificates(v8);
      CFRelease(v9);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = SecCertificateCreateWithData(0, *(*(&v23 + 1) + 8 * v15));
            if (v16)
            {
              v17 = v16;
              v18 = SecCertificateCopySubjectSummary(v16);
              CFRelease(v17);
              if (v18)
              {
                v20 = [*(a1 + 32) objectForKeyedSubscript:v5];

                if (!v20)
                {
                  v21 = objc_opt_new();
                  [*(a1 + 32) setObject:v21 forKeyedSubscript:v5];
                }

                v22 = [*(a1 + 32) objectForKeyedSubscript:v5];
                [v22 addObject:v18];
              }

              else
              {
                v22 = sub_1000027A4(v19);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v28 = v5;
                  _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Migration: Unable to get signing identity from %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v18 = sub_1000027A4(0);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v28 = v5;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Migration: Couldn't create SecCertificate for %@", buf, 0xCu);
              }
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v11 = sub_1000027A4(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100018EB4();
      }
    }
  }
}

void sub_100006928(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_10000FC3C(a2, 0);
  v7 = sub_10000FCF4(a2, 1);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v5);
}

void sub_1000069D0(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_10000FC3C(a2, 0);
  v7 = sub_10000FCF4(a2, 1);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_100006A78(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@signing_identity");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

void sub_100006B20(uint64_t a1, sqlite3_stmt *a2)
{
  v8 = sub_10000FC3C(a2, 0);
  v4 = sub_10000FC3C(a2, 1);
  v5 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v5)
  {
    v6 = objc_opt_new();
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
  [v7 addObject:v4];
}

uint64_t sub_100006BF4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0);
}

BOOL sub_100006D5C(uint64_t a1)
{
  if ([*(a1 + 32) isProfileInstalled:MISProvisioningProfileGetUUID(*(a1 + 48))])
  {
    return 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 56) insertProfile:*(a1 + 48)];
  return *(*(*(a1 + 40) + 8) + 24) == 0;
}

void sub_100006F04(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_cms_blob"];
  v6 = sub_10000FCF4(a2, [v5 intValue]);

  [*(a1 + 32) addObject:v6];
}

void sub_100006F90(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"blob"];
  v6 = sub_10000FCF4(a2, [v5 intValue]);

  [*(a1 + 32) addObject:v6];
}

void sub_10000701C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

id sub_1000073A8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  return [*(a1 + 32) appendFormat:@"(%lu, @p%lu)", a3, a3];
}

id sub_100007400(uint64_t a1, sqlite3_stmt *a2)
{
  if (*(a1 + 32))
  {
    v4 = sqlite3_bind_parameter_index(a2, "@cert");
    sqlite3_bind_blob(a2, v4, [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"), 0);
  }

  v5 = sqlite3_bind_parameter_index(a2, "@totalPredicates");
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
  sqlite3_bind_int64(a2, v5, [v6 longLongValue]);

  result = [*(a1 + 40) count];
  if (result)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [NSString stringWithFormat:@"@p%u", v9];
      v11 = sqlite3_bind_parameter_index(a2, [v10 UTF8String]);
      v12 = [*(a1 + 40) objectAtIndexedSubscript:v8];
      sqlite3_bind_text(a2, v11, [v12 UTF8String], -1, 0);

      v8 = (v9 + 1);
      result = [*(a1 + 40) count];
      v9 = v8;
    }

    while (result > v8);
  }

  return result;
}

void sub_100007584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

uint64_t sub_100007744(uint64_t result, sqlite3_stmt *a2)
{
  if (*(result + 32))
  {
    v3 = result;
    v4 = sqlite3_bind_parameter_index(a2, "@cert");
    v5 = [*(v3 + 32) bytes];
    v6 = [*(v3 + 32) length];

    return sqlite3_bind_blob(a2, v4, v5, v6, 0);
  }

  return result;
}

void sub_1000077CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

void sub_1000078BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

const char *sub_1000078DC(uint64_t a1)
{
  v2 = *(*(*a1 + 8) + 24);

  return sqlite3_errstr(v2);
}

void start()
{
  v0 = signal(15, 1);
  v2 = sub_1000079D8(v0, v1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v2);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100007A10;
  handler[3] = &unk_100028DA8;
  handler[4] = v3;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_resume(v3);
  v4 = sub_1000081A0();
  v6 = sub_1000079D8(v4, v5);
  mach_service = xpc_connection_create_mach_service("com.apple.misagent", v6, 1uLL);
  xpc_connection_set_event_handler(mach_service, &stru_100028DE8);
  xpc_connection_resume(mach_service);
  dispatch_main();
}

uint64_t sub_1000079D8(uint64_t a1, uint64_t a2)
{
  if (qword_10002DB28 != -1)
  {
    sub_100018F28();
  }

  return qword_10002DB20;
}

void sub_100007A2C(id a1)
{
  qword_10002DB20 = dispatch_workloop_create_inactive("com.apple.misagent.worker");
  dispatch_set_qos_class_fallback();
  dispatch_workloop_set_scheduler_priority();
  v1 = qword_10002DB20;

  dispatch_activate(v1);
}

void sub_100007A88(uint64_t a1)
{
  v1 = sub_1000027A4(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "XPC connection has been town down", v2, 2u);
  }
}

uint64_t sub_100007AE8(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100007B94;
  v3[3] = &unk_100028E70;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(&_dispatch_main_q, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t sub_100007B94(uint64_t a1)
{
  v2 = MISProvisioningProfileIsForBetaDeployment(*(a1 + 40));
  if (v2)
  {
    v3 = sub_1000027A4(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempt to install a Beta profile over lockdown connection.", v5, 2u);
    }

    result = 3892346911;
  }

  else
  {
    result = sub_100007C2C(*(a1 + 40));
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100007C2C(uint64_t a1)
{
  v2 = sub_100009D54(a1);
  v3 = sub_1000027A4(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 67109120;
      LODWORD(UUID) = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "attempt to install invalid profile: 0x%x", &v9, 8u);
    }
  }

  else
  {
    if (v4)
    {
      v9 = 138543362;
      UUID = MISProvisioningProfileGetUUID(a1);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Installing provisioning profile: %{public}@", &v9, 0xCu);
    }

    v6 = sub_100002760(v5);
    if ([v6 insertProfile:a1])
    {
      v2 = 3892346906;
    }

    else
    {
      v2 = 0;
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"MISProvisioningProfileInstalled", 0, 0, 0);
  }

  return v2;
}

uint64_t sub_100007D74(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100007E20;
  v3[3] = &unk_100028E70;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(&_dispatch_main_q, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100007E54(uint64_t a1)
{
  v2 = sub_1000027A4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing provisioning profile: %{public}@", buf, 0xCu);
  }

  v4 = sub_100002760(v3);
  v9 = 0;
  [v4 removeProfileWithUuid:a1 error:&v9];
  v5 = v9;

  if (v5)
  {
    v7 = sub_1000027A4(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100018FB4();
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"MISProvisioningProfileRemoved", 0, 0, 0);
}

uint64_t sub_100007F74(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100008020;
  v3[3] = &unk_100028E70;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(&_dispatch_main_q, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100008020(uint64_t a1)
{
  v2 = *(a1 + 40);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = sub_100002760(Mutable);
    v6 = [v5 allCMSBlobs];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

          CFArrayAppendValue(v4, *(*(&v13 + 1) + 8 * v10));
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v11 = 0;
    *v2 = v4;
  }

  else
  {
    v12 = sub_1000027A4(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100019024();
    }

    v11 = -402620406;
  }

  *(*(*(a1 + 32) + 8) + 24) = v11;
}

uint64_t sub_1000081A0()
{
  if (qword_10002DB38 != -1)
  {
    sub_100019060();
  }

  v0 = dispatch_semaphore_wait(qword_10002DB30, 0xFFFFFFFFFFFFFFFFLL);
  v1 = sub_100002760(v0);
  v2 = [v1 readSetting:@"databaseSchemaVersion"];
  v3 = [v2 isEqual:off_10002D858];

  if ((v3 & 1) == 0)
  {
    v5 = sub_100002760(v4);
    [v5 migrate];
  }

  v6 = sub_100002760(v4);
  v7 = +[NSFileManager defaultManager];
  v8 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"UserTrustedUpps.plist"];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    *&v113 = 0;
    *(&v113 + 1) = &v113;
    *&v114 = 0x2020000000;
    DWORD2(v114) = 0;
    v11 = sub_1000027A4(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration from legacy user trust plist", buf, 2u);
    }

    v12 = sub_100002F00(@"UserTrustedUpps.plist", 1);
    *buf = _NSConcreteStackBlock;
    v126 = 3221225472;
    v127 = sub_10000A11C;
    v128 = &unk_100028ED8;
    v129 = &v113;
    sub_100002F80(v12, buf);
    v13 = +[NSFileManager defaultManager];
    v14 = @"UserTrustedUpps.plist";
    v15 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v14];

    *v137 = 0;
    [v13 removeItemAtPath:v15 error:v137];
    v16 = *v137;
    v17 = v16;
    if (v16)
    {
      v18 = sub_1000027A4(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100019074();
      }

      *(*(&v113 + 1) + 24) = -402620405;
    }

    v19 = sub_1000027A4(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(&v113 + 1) + 24);
      *v132 = 67109120;
      *&v132[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Migration: Finished migration from legacy user trust plist: %d", v132, 8u);
    }

    v21 = *(*(&v113 + 1) + 24);
    _Block_object_dispose(&v113, 8);
  }

  else
  {
    v21 = 0;
  }

  v22 = +[NSFileManager defaultManager];
  v23 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"UserTrust.db"];
  v24 = [v22 fileExistsAtPath:v23];

  if (v24)
  {
    v26 = sub_1000027A4(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration from legacy user trust DB", buf, 2u);
    }

    v27 = objc_opt_new();
    *v132 = 0;
    v28 = [v27 getUserTrustedUUIDsAndReturnError:v132];
    v29 = *v132;
    if (v29)
    {
      v30 = v29;
      v31 = sub_1000027A4(v29);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000190B0();
      }

      v21 = 3892346914;
    }

    else
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v32 = v28;
      v33 = [v32 countByEnumeratingWithState:&v113 objects:buf count:16];
      if (v33)
      {
        v35 = 0;
        v21 = 0;
        v36 = *v114;
        *&v34 = 138543362;
        v111 = v34;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v114 != v36)
            {
              objc_enumerationMutation(v32);
            }

            v38 = *(*(&v113 + 1) + 8 * i);

            v40 = sub_100002760(v39);
            v121 = 0;
            v41 = [v40 getTeamIDForProfileUUID:v38 error:&v121];
            v35 = v121;

            if (v35)
            {
              v43 = sub_1000027A4(v42);
              v21 = 3892346914;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                *v137 = v111;
                *&v137[4] = v38;
                _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Migration: Error fetching team ID for profile UUID %{public}@", v137, 0xCu);
              }
            }

            else
            {
              v43 = [v27 getAuxiliarySignatureWithTeamId:v41];
              v44 = sub_1000027A4(v43);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *v137 = 138543618;
                *&v137[4] = v41;
                *&v137[12] = 2114;
                *&v137[14] = v43;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Migration: Trusting team ID %{public}@ with signature %{public}@", v137, 0x16u);
              }

              v46 = sub_100002760(v45);
              *v140 = 0;
              [v46 createTrustedTeamIDEntryWithTeamID:v41 signature:v43 error:v140];
              v35 = *v140;

              if (v35)
              {
                v48 = sub_1000027A4(v47);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  *v137 = 138543618;
                  *&v137[4] = v41;
                  *&v137[12] = 2114;
                  *&v137[14] = v43;
                  _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Migration: Error trusting team ID %{public}@ with signature %{public}@", v137, 0x16u);
                }

                v21 = 3892346914;
              }
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v113 objects:buf count:16];
        }

        while (v33);
      }

      else
      {
        v21 = 0;
      }

      v27 = +[NSFileManager defaultManager];
      v49 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"UserTrust.db"];
      *v137 = 0;
      [v27 removeItemAtPath:v49 error:v137];
      v50 = *v137;

      if (v50)
      {
        v52 = sub_1000027A4(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          sub_100019120();
        }

        v21 = 3892346891;
      }

      v53 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:{@"UserTrust.db-shm", v111}];
      v120 = v50;
      [v27 removeItemAtPath:v53 error:&v120];
      v54 = v120;

      if (v54)
      {
        v56 = sub_1000027A4(v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_10001915C();
        }

        v21 = 3892346891;
      }

      v57 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"UserTrust.db-wal"];
      v119 = v54;
      [v27 removeItemAtPath:v57 error:&v119];
      v30 = v119;

      if (v30)
      {
        v59 = sub_1000027A4(v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_100019198();
        }

        v21 = 3892346891;
      }

      v28 = sub_1000027A4(v58);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v131 = 67109120;
        *&v131[4] = v21;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Migration: Finished migration from legacy user trust DB: %d", v131, 8u);
      }
    }
  }

  if (v21)
  {
    v60 = sub_1000027A4(v25);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_1000191D4();
    }
  }

  v61 = +[NSFileManager defaultManager];
  v62 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"Indeterminates.plist"];
  if (([v61 fileExistsAtPath:v62] & 1) == 0)
  {
    v63 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"AGP.plist"];
    if (([v61 fileExistsAtPath:v63] & 1) == 0)
    {
      v64 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"Rejections.plist"];
      if (([v61 fileExistsAtPath:v64] & 1) == 0)
      {
        v65 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"AuthListBannedUpps.plist"];
        if (([v61 fileExistsAtPath:v65] & 1) == 0)
        {
          v110 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"AuthListBannedCdHashes.plist"];
          v112 = [v61 fileExistsAtPath:v110];

          if ((v112 & 1) == 0)
          {
            goto LABEL_120;
          }

          goto LABEL_68;
        }
      }
    }
  }

LABEL_68:
  v121 = 0;
  v122 = &v121;
  v123 = 0x2020000000;
  v124 = 0;
  v67 = sub_1000027A4(v66);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    *v140 = 138543362;
    *&v140[4] = @"Indeterminates.plist";
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration of %{public}@", v140, 0xCu);
  }

  v68 = sub_10000309C();
  v69 = v68;
  if (v68)
  {
    v70 = sub_1000035D0();
    *buf = _NSConcreteStackBlock;
    v126 = 3221225472;
    v127 = sub_10000A248;
    v128 = &unk_100028F00;
    v71 = v70;
    v129 = v71;
    v130 = &v121;
    sub_1000030B0(v69, buf);
  }

  v72 = sub_1000027A4(v68);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *v140 = 138543362;
    *&v140[4] = @"Rejections.plist";
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration of %{public}@", v140, 0xCu);
  }

  v73 = sub_10000332C();
  if (v73)
  {
    *&v113 = _NSConcreteStackBlock;
    *(&v113 + 1) = 3221225472;
    *&v114 = sub_10000A464;
    *(&v114 + 1) = &unk_100028F28;
    *&v115 = &v121;
    v73 = sub_100003340(v73, &v113);
  }

  v74 = sub_1000027A4(v73);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    *v140 = 138543362;
    *&v140[4] = @"AuthListBannedUpps.plist";
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration of %{public}@", v140, 0xCu);
  }

  v75 = sub_100002F00(@"AuthListBannedUpps.plist", 0);
  if (v75)
  {
    *v137 = _NSConcreteStackBlock;
    *&v137[8] = 3221225472;
    *&v137[16] = sub_10000A624;
    v138 = &unk_100028ED8;
    v139 = &v121;
    v75 = sub_100002F80(v75, v137);
  }

  v76 = sub_1000027A4(v75);
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    *v140 = 138543362;
    *&v140[4] = @"AuthListBannedCdHashes.plist";
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration of %{public}@", v140, 0xCu);
  }

  v77 = sub_100002F00(@"AuthListBannedCdHashes.plist", 0);
  if (v77)
  {
    *v132 = _NSConcreteStackBlock;
    v133 = 3221225472;
    v134 = sub_10000A6DC;
    v135 = &unk_100028ED8;
    v136 = &v121;
    sub_100002F80(v77, v132);
  }

  v78 = +[NSFileManager defaultManager];
  v79 = @"Indeterminates.plist";
  v80 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v79];

  if ([v78 fileExistsAtPath:v80])
  {
    v120 = 0;
    [v78 removeItemAtPath:v80 error:&v120];
    v81 = v120;
    v82 = v81;
    if (v81)
    {
      v83 = sub_1000027A4(v81);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        sub_100019248();
      }

      *(v122 + 6) = -402620405;
    }
  }

  else
  {
    v82 = 0;
  }

  v84 = @"AGP.plist";
  v85 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v84];

  if ([v78 fileExistsAtPath:v85])
  {
    v119 = v82;
    [v78 removeItemAtPath:v85 error:&v119];
    v86 = v119;

    if (v86)
    {
      v88 = sub_1000027A4(v87);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        sub_1000192B8();
      }

      *(v122 + 6) = -402620405;
    }
  }

  else
  {
    v86 = v82;
  }

  v89 = @"Rejections.plist";
  v90 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v89];

  if ([v78 fileExistsAtPath:v90])
  {
    *v131 = v86;
    [v78 removeItemAtPath:v90 error:v131];
    v91 = *v131;

    if (v91)
    {
      v93 = sub_1000027A4(v92);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        sub_100019328();
      }

      *(v122 + 6) = -402620405;
    }
  }

  else
  {
    v91 = v86;
  }

  v94 = @"AuthListBannedUpps.plist";
  v95 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v94];

  if ([v78 fileExistsAtPath:v95])
  {
    v118 = v91;
    [v78 removeItemAtPath:v95 error:&v118];
    v96 = v118;

    if (v96)
    {
      v98 = sub_1000027A4(v97);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        sub_100019398();
      }

      *(v122 + 6) = -402620405;
    }
  }

  else
  {
    v96 = v91;
  }

  v99 = @"AuthListBannedCdHashes.plist";
  v100 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v99];

  v101 = [v78 fileExistsAtPath:v100];
  if (v101)
  {
    v117 = v96;
    [v78 removeItemAtPath:v100 error:&v117];
    v102 = v117;

    if (v102)
    {
      v103 = sub_1000027A4(v101);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        sub_100019408();
      }

      *(v122 + 6) = -402620405;
    }
  }

  else
  {
    v102 = v96;
  }

  v104 = sub_1000027A4(v101);
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    v105 = *(v122 + 6);
    *v140 = 67109120;
    *&v140[4] = v105;
    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Migration: Finished online auth migration: %d", v140, 8u);
  }

  v106 = *(v122 + 6);
  _Block_object_dispose(&v121, 8);
  if (v106)
  {
    v108 = sub_1000027A4(v107);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      sub_100019478();
    }

    v21 = v106;
  }

LABEL_120:
  dispatch_semaphore_signal(qword_10002DB30);
  return v21;
}

void sub_100009274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000092F4(id a1)
{
  qword_10002DB30 = dispatch_semaphore_create(1);

  _objc_release_x1();
}

void sub_10000932C(void *a1, void *a2)
{
  v3 = a2;
  length = 0;
  v4 = a1;
  v5 = sub_10000A798(v4, "com.apple.private.mis.trust.set");
  if (v5)
  {
    v6 = xpc_dictionary_get_dictionary(v3, "Payload");
    if (v6)
    {
      v7 = v6;
      v8 = xpc_dictionary_get_BOOL(v6, "Trust");
      string = xpc_dictionary_get_string(v7, "ProfileID");
      v10 = xpc_dictionary_get_string(v7, "TeamID");
      data = xpc_dictionary_get_data(v7, "AuxiliarySignature", &length);
      if (!(string | v10))
      {
        v12 = sub_1000027A4(data);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100019A48();
        }

LABEL_16:
        v13 = -402620415;

        goto LABEL_44;
      }

      v14 = data;
      if (string && v10)
      {
        v12 = sub_1000027A4(data);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100019A0C();
        }

        goto LABEL_16;
      }

      if (string)
      {
        data = [NSString stringWithUTF8String:string];
        string = data;
      }

      if (v10)
      {
        data = [NSString stringWithUTF8String:v10];
        v10 = data;
      }

      if (length)
      {
        v15 = [NSData alloc];
        data = [v15 initWithBytes:v14 length:length];
        v16 = data;
        if (v10)
        {
LABEL_23:
          v17 = sub_1000027A4(data);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v37 = v10;
            v38 = 1024;
            *v39 = v8;
            *&v39[4] = 2114;
            *&v39[6] = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Setting trust for teamID = %{public}@, trust = %d, auxiliary signature = %{public}@", buf, 0x1Cu);
          }

          v19 = sub_100002760(v18);
          v20 = v19;
          if (v8)
          {
            v34 = 0;
            v21 = &v34;
            [v19 createTrustedTeamIDEntryWithTeamID:v10 signature:v16 error:&v34];
          }

          else
          {
            v33 = 0;
            v21 = &v33;
            [v19 deleteTrustedWithTeamID:v10 error:&v33];
          }

          goto LABEL_35;
        }
      }

      else
      {
        v16 = 0;
        if (v10)
        {
          goto LABEL_23;
        }
      }

      if (!string)
      {
        goto LABEL_39;
      }

      v22 = sub_1000027A4(data);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v37 = string;
        v38 = 1024;
        *v39 = v8;
        *&v39[4] = 2114;
        *&v39[6] = v16;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Setting trust for profileUUID = %{public}@, trust = %d, auxiliary signature = %{public}@", buf, 0x1Cu);
      }

      v24 = sub_100002760(v23);
      v20 = v24;
      if (v8)
      {
        v32 = 0;
        v21 = &v32;
        [v24 createTrustedTeamIDEntryWithProfileUUID:string signature:v16 error:&v32];
      }

      else
      {
        v31 = 0;
        v21 = &v31;
        [v24 deleteTrustedWithProfileUUID:string error:&v31];
      }

LABEL_35:
      v25 = *v21;

      if (v25)
      {
        v27 = sub_1000027A4(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544386;
          v37 = v25;
          v38 = 2114;
          *v39 = string;
          *&v39[8] = 2114;
          *&v39[10] = v10;
          v40 = 2114;
          v41 = v16;
          v42 = 1024;
          v43 = v8;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error setting user trust: error = %{public}@, profileUUID = %{public}@, team = %{public}@, signature = %{public}@, trust = %d", buf, 0x30u);
        }

        v13 = -402620382;
        goto LABEL_40;
      }

LABEL_39:
      v13 = 0;
LABEL_40:
      if (v8)
      {
        v28 = @"MISUPPTrustSet";
      }

      else
      {
        v28 = @"MISUPPTrustRevoked";
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, v28, 0, 0, 0);

      goto LABEL_44;
    }

    v7 = sub_1000027A4(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100019A84();
    }

    v13 = -402620403;
  }

  else
  {
    v7 = sub_1000027A4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000199D0();
    }

    v13 = -402620371;
  }

LABEL_44:

  reply = xpc_dictionary_create_reply(v3);
  xpc_dictionary_set_uint64(reply, "Status", v13);
  xpc_connection_send_message(v4, reply);
}

void sub_1000097F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  int64 = xpc_dictionary_get_int64(v3, "MigrationPhase");
  if (!int64)
  {
    goto LABEL_4;
  }

  if (int64 == 1)
  {
    v6 = sub_10000FB00();
    v7 = sub_100002760(v6);
    [v7 setSetting:@"deviceUDID" toValue:v6];

LABEL_4:
    v8 = sub_1000081A0();
    goto LABEL_8;
  }

  v9 = sub_1000027A4(int64);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100019AC0();
  }

  v8 = -402620415;
LABEL_8:
  reply = xpc_dictionary_create_reply(v3);

  xpc_dictionary_set_uint64(reply, "Status", v8);
  xpc_connection_send_message(v4, reply);
}

void sub_1000098F4(void *a1, void *a2)
{
  v3 = a2;
  length = 0;
  v4 = a1;
  v5 = sub_10000FACC();
  v6 = sub_10000FC30();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    int64 = xpc_dictionary_get_int64(v3, "Offset");
    data = xpc_dictionary_get_data(v3, "CDHash", &length);
    if (length)
    {
      v11 = data;
      v12 = [NSData alloc];
      data = [v12 initWithBytes:v11 length:length];
      v13 = data;
    }

    else
    {
      v13 = 0;
    }

    v16 = sub_100002760(data);
    v20 = 0;
    [v16 addMonotonicTimeOffset:int64 cdHash:v13 error:&v20];
    v15 = v20;

    if (!v15)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v18 = sub_1000027A4(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v23 = v15;
      v24 = 2048;
      v25 = int64;
      v26 = 2114;
      v27 = v13;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error adding monotonic time offset: error = %{public}@, offset = %ld, cdHash = %{public}@", buf, 0x20u);
    }

    v14 = -402620382;
  }

  else
  {
    v14 = -402620415;
    v15 = sub_1000027A4(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100019B30();
    }

    v13 = 0;
  }

LABEL_13:
  reply = xpc_dictionary_create_reply(v3);
  xpc_dictionary_set_uint64(reply, "Status", v14);
  xpc_connection_send_message(v4, reply);
}

void sub_100009B24(void *a1, void *a2)
{
  v3 = a2;
  length = 0;
  v4 = a1;
  v5 = sub_10000FACC();
  v6 = sub_10000FC30();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    int64 = xpc_dictionary_get_int64(v3, "Offset");
    data = xpc_dictionary_get_data(v3, "CDHash", &length);
    if (length)
    {
      v11 = data;
      v12 = [NSData alloc];
      data = [v12 initWithBytes:v11 length:length];
      v13 = data;
    }

    else
    {
      v13 = 0;
    }

    v16 = sub_100002760(data);
    v20 = 0;
    [v16 addRTCResetCountOffset:int64 cdHash:v13 error:&v20];
    v15 = v20;

    if (!v15)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v18 = sub_1000027A4(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v23 = v15;
      v24 = 2048;
      v25 = int64;
      v26 = 2114;
      v27 = v13;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error adding RTC reset count offset: error = %{public}@, offset = %ld, cdHash = %{public}@", buf, 0x20u);
    }

    v14 = -402620382;
  }

  else
  {
    v14 = -402620415;
    v15 = sub_1000027A4(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100019B6C();
    }

    v13 = 0;
  }

LABEL_13:
  reply = xpc_dictionary_create_reply(v3);
  xpc_dictionary_set_uint64(reply, "Status", v14);
  xpc_connection_send_message(v4, reply);
}

uint64_t sub_100009D54(uint64_t a1)
{
  v2 = sub_10000AB24();
  if (v2)
  {
    v3 = v2;
    Current = j__CFAbsoluteTimeGetCurrent();
    v5 = CFDateCreate(kCFAllocatorDefault, Current);
    v6 = MISProvisioningProfileCheckValidity(a1, v3, v5);
    CFRelease(v5);
    CFRelease(v3);
    return v6;
  }

  else
  {
    v8 = sub_1000027A4(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100019BA8();
    }

    return 3892346881;
  }
}

void sub_100009E00(id a1)
{
  v1 = [@"/Library/MobileDevice/ProvisioningProfiles" stringByAppendingPathComponent:@"mis.db"];
  v2 = [NSURL fileURLWithPath:v1];

  v3 = [(SQLDB *)MISDBManager databaseWithURL:v2];
  v4 = qword_10002DB40;
  qword_10002DB40 = v3;

  v5 = [@"/Library/MobileDevice/ProvisioningProfiles" fileSystemRepresentation];
  v6 = opendir(v5);
  if (v6)
  {
    v7 = v6;
    for (i = readdir(v6); i; i = readdir(v7))
    {
      if (i->d_type == 8)
      {
        d_name = i->d_name;
        v10 = [NSString stringWithUTF8String:i->d_name];
        if ([v10 length] == 36)
        {
          v11 = snprintf(__str, 0x400uLL, "%s/%s", v5, d_name);
          v12 = sub_100009FB4(v11, __str);

          if (!v12)
          {
            break;
          }
        }

        else
        {
        }
      }
    }

    closedir(v7);
  }

  else if (*__error() != 2)
  {
    v13 = __error();
    v14 = sub_1000027A4(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100019BE4();
    }
  }
}

uint64_t sub_100009FB4(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, a2);
  if (v3)
  {
    v4 = v3;
    v5 = MISProfileCreateWithFile();
    CFRelease(v4);
    if (v5)
    {
      if (!sub_100009D54(v5) && ![qword_10002DB40 insertProfile:v5])
      {
        v6 = +[NSFileManager defaultManager];
        v7 = [NSString stringWithUTF8String:a2];
        v14 = 0;
        [v6 removeItemAtPath:v7 error:&v14];
        v8 = v14;

        v10 = sub_1000027A4(v9);
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        if (v8)
        {
          if (v11)
          {
            sub_100019C20();
          }
        }

        else if (v11)
        {
          sub_100019C90();
        }
      }

      CFRelease(v5);
    }
  }

  else
  {
    v12 = sub_1000027A4(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100019D00();
    }
  }

  return 1;
}

uint64_t sub_10000A11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027A4(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migration: Trusting profile UUID %{public}@", buf, 0xCu);
  }

  v6 = sub_100002760(v5);
  v11 = 0;
  [v6 createTrustedTeamIDEntryWithProfileUUID:a2 signature:0 error:&v11];
  v7 = v11;

  if (v7)
  {
    v9 = sub_1000027A4(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100019D70();
    }

    *(*(*(a1 + 32) + 8) + 24) = -402620382;
  }

  return 1;
}

uint64_t sub_10000A248(uint64_t a1, const __CFString *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = sub_100002760(v9);
  v11 = [v10 isProfileInstalled:v9];

  if (v11)
  {
    v13 = sub_10000401C(a2);
    v14 = j__TMGetKernelMonotonicClock();
    v15 = j__TMGetRTCResetCount();
    v16 = [*(a1 + 32) objectForKey:v9];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = &off_10002AE80;
    }

    LOBYTE(v24) = 0;
    v18 = -[MISOnlineAuthEntry initWithProfileUUID:cdHash:gracePeriod:lastSuccessMonotonicTime:lastSuccessResetCount:isRejected:isRejectedByWholeProfile:]([MISOnlineAuthEntry alloc], "initWithProfileUUID:cdHash:gracePeriod:lastSuccessMonotonicTime:lastSuccessResetCount:isRejected:isRejectedByWholeProfile:", v9, v13, [v17 intValue], v14 - (86400 * (objc_msgSend(v17, "intValue") - objc_msgSend(a6, "intValue"))), v15, 0, v24);
    v19 = sub_100002760(v18);
    v25 = 0;
    [v19 createOnlineAuthEntry:v18 error:&v25];
    v20 = v25;

    if (v20)
    {
      v22 = sub_1000027A4(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100019DE0();
      }

      *(*(*(a1 + 40) + 8) + 24) = -402620382;
    }
  }

  else
  {
    v13 = sub_1000027A4(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Found indeterminate entry for profile %{public}@, but not installed, skipping", buf, 0xCu);
    }
  }

  return 1;
}

uint64_t sub_10000A464(uint64_t a1, void *a2, const __CFString *a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = sub_100002760(v8);
  v10 = [v9 isProfileInstalled:v8];

  if (v10)
  {
    v12 = sub_10000401C(a3);
    v13 = sub_100002760(v12);
    v18 = 0;
    [v13 rejectEntryWithProfileUUID:v8 cdHash:v12 isRejectedByWholeProfile:a5 error:&v18];
    v14 = v18;

    if (v14)
    {
      v16 = sub_1000027A4(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v20 = v8;
        v21 = 2114;
        v22 = v12;
        v23 = 1024;
        v24 = a5;
        v25 = 2114;
        v26 = v14;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Migration: Error rejecting (%{public}@, %{public}@, %d), %{public}@", buf, 0x26u);
      }

      *(*(*(a1 + 32) + 8) + 24) = -402620382;
    }
  }

  else
  {
    v12 = sub_1000027A4(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Profile %{public}@ is rejected but not installed, skipping", buf, 0xCu);
    }
  }

  return 1;
}

uint64_t sub_10000A624(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002760(v3);
  v9 = 0;
  [v4 banProfileUUID:v3 error:&v9];
  v5 = v9;

  if (v5)
  {
    v7 = sub_1000027A4(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100019E54();
    }

    *(*(*(a1 + 32) + 8) + 24) = -402620382;
  }

  return 1;
}

uint64_t sub_10000A6DC(uint64_t a1, const __CFString *a2)
{
  v3 = sub_10000401C(a2);
  v4 = sub_100002760(v3);
  v9 = 0;
  [v4 banCDHash:v3 error:&v9];
  v5 = v9;

  if (v5)
  {
    v7 = sub_1000027A4(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100019EC8();
    }

    *(*(*(a1 + 32) + 8) + 24) = -402620382;
  }

  return 1;
}

BOOL sub_10000A798(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = xpc_connection_copy_entitlement_value();
  xpc_connection_get_pid(v2);

  if (v3 != &_xpc_BOOL_true)
  {
    v5 = sub_1000027A4(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100019F3C();
    }
  }

  return v3 == &_xpc_BOOL_true;
}

uint64_t sub_10000A83C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A854(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a3;
  v12 = [v5 objectForKeyedSubscript:@"profile_cms_blob"];
  v6 = sqlite3_column_blob(a2, [v12 intValue]);
  v7 = [v5 objectForKeyedSubscript:@"profile_cms_blob"];

  v8 = sqlite3_column_bytes(a2, [v7 intValue]);
  v9 = xpc_data_create(v6, v8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t sub_10000A928(uint64_t a1, int a2, xpc_object_t xstring)
{
  v3 = *(a1 + 32);
  v4 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(xstring)];
  [v3 addObject:v4];

  return 1;
}

id sub_10000A980(void *a1)
{
  v1 = a1;
  empty = xpc_array_create_empty();
  v3 = [v1 UUID];
  xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, [v3 UTF8String]);

  v4 = [v1 TeamID];
  xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, [v4 UTF8String]);

  v5 = [v1 Name];
  xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, [v5 UTF8String]);

  v6 = [v1 Expires];
  [v6 timeIntervalSinceReferenceDate];
  xpc_array_set_date(empty, 0xFFFFFFFFFFFFFFFFLL, v7);

  xpc_array_set_BOOL(empty, 0xFFFFFFFFFFFFFFFFLL, [v1 ProvisionsAllDevices] != 0);
  xpc_array_set_BOOL(empty, 0xFFFFFFFFFFFFFFFFLL, [v1 AppleInternal] != 0);
  xpc_array_set_BOOL(empty, 0xFFFFFFFFFFFFFFFFLL, [v1 Local] != 0);
  LODWORD(v6) = [v1 Beta];

  xpc_array_set_BOOL(empty, 0xFFFFFFFFFFFFFFFFLL, v6 != 0);

  return empty;
}

const void *sub_10000AB24()
{
  v0 = sub_10000FB00();
  if (!v0)
  {
    v5 = sub_1000027A4(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001A000(v5);
    }

    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  TypeID = CFStringGetTypeID();
  if (v2 != TypeID)
  {
    v4 = sub_1000027A4(TypeID);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100019FBC(v4);
    }

    CFRelease(v1);
    return 0;
  }

  return v1;
}

void sub_10000ABD0(id a1)
{
  qword_10002DB50 = os_log_create("com.apple.mis", "mis");

  _objc_release_x1();
}

uint64_t sub_10000B254(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 1;
}

void sub_10000B9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B9C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000B9D8(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

uint64_t sub_10000BA28(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = sub_10000FC3C(a2, 0);

  return _objc_release_x1();
}

uint64_t sub_10000BB40(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0);
}

uint64_t sub_10000BC58(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

void sub_10000BE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BE28(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = sub_10000FCB4(a2, 0);

  return _objc_release_x1();
}

void sub_10000BF18(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_10000BF68(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_10000BF88(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v5 = lockdown_send();
    if (v5 == -1)
    {
      break;
    }

    a2 += v5;
    v3 -= v5;
    if (!v3)
    {
      return 0;
    }
  }

  return *__error() | 0xC000u;
}

uint64_t sub_10000C000(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v5 = lockdown_recv();
    if (v5 <= 0)
    {
      break;
    }

    a2 += v5;
    v3 -= v5;
    if (!v3)
    {
      return 0;
    }
  }

  if (v5 == -1)
  {
    return *__error() | 0xC000u;
  }

  else
  {
    return 3892346892;
  }
}

uint64_t sub_10000C08C(const void *a1)
{
  v10 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kLockdownCheckinConnectionInfoKey, a1);
  v3 = secure_lockdown_checkin();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000027A4(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001A2BC(v4, v5);
    }
  }

  else
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2000000000;
    v9[3] = os_transaction_create();
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10000C1D8;
    block[3] = &unk_100029030;
    block[4] = v9;
    block[5] = v10;
    dispatch_async(global_queue, block);
    _Block_object_dispose(v9, 8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 1;
}

void sub_10000C1D8(uint64_t a1)
{
    ;
  }

  lockdown_disconnect();
  v2 = *(*(*(a1 + 32) + 8) + 24);

  os_release(v2);
}

void sub_10000C258(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NSMutableString stringWithString:off_10002D860];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C3D8;
  v6[3] = &unk_100029058;
  v7 = v3;
  v5 = v3;
  sub_10000C31C(a1, v4, v6);
}

void sub_10000C31C(void *a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C3E8;
  v7[3] = &unk_100029080;
  v8 = a2;
  v9 = a3;
  v5 = v9;
  v6 = v8;
  [a1 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_10000C3E8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  *a4 = 0;
  v7 = *(a1 + 32);
  v8 = a3;
  [v7 appendString:v9];
  [*(a1 + 32) appendString:off_10002D860];
  sub_10000C4AC(*(a1 + 32), v8, *(a1 + 40));

  [*(a1 + 32) deleteCharactersInRange:{objc_msgSend(*(a1 + 32), "length") + ~objc_msgSend(v9, "length"), objc_msgSend(v9, "length") + 1}];
}

void sub_10000C4AC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_10000C31C(v6, v5, v7);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [NSString stringWithFormat:@"%@%@%@", @"string", v5, v6];
        (*(v7 + 2))(v7, v8);

        if (![v6 isEqual:@"*"])
        {
          goto LABEL_16;
        }

        v9 = [NSString stringWithFormat:@"%@%@%@", @"BOOL", v5, v6];
        (*(v7 + 2))(v7, v9);

        v10 = [NSString stringWithFormat:@"%@%@%@", @"number", v5, v6];
        (*(v7 + 2))(v7, v10);
      }

      else
      {
        v11 = CFGetTypeID(v6);
        if (v11 == CFBooleanGetTypeID())
        {
          if (CFEqual(v6, kCFBooleanTrue))
          {
            v12 = @"true";
          }

          else
          {
            v12 = @"false";
          }

          v10 = [NSString stringWithFormat:@"%@%@%@", @"BOOL", v5, v12];
          (*(v7 + 2))(v7, v10);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            abort();
          }

          v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@%lld", @"number", v5, [v6 longLongValue]);
          (*(v7 + 2))(v7, v10);
        }
      }

      goto LABEL_16;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000C7B0;
    v13[3] = &unk_1000290A8;
    v14 = v5;
    v15 = v7;
    [v6 enumerateObjectsUsingBlock:v13];
  }

LABEL_16:
}

uint64_t sub_10000D318(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

uint64_t sub_10000D3A8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

void sub_10000D4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D4FC(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_cms_blob"];
  v6 = sub_10000FCF4(a2, [v5 intValue]);

  *(*(*(a1 + 32) + 8) + 24) = MISProfileCreateWithData();
}

uint64_t sub_10000D700(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

void sub_10000D770(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_uuid"];
  v6 = sub_10000FC3C(a2, [v5 intValue]);

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isEqualToString:v6];
}

uint64_t sub_10000DACC(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@signing_identity");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

uint64_t sub_10000E28C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@cms_blob");
  v6 = [*(a1 + 40) bytes];
  v7 = [*(a1 + 40) length];

  return sqlite3_bind_blob(a2, v5, v6, v7, 0);
}

uint64_t sub_10000E340(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v5, [*(a1 + 40) UTF8String], -1, 0);
  v6 = sqlite3_bind_parameter_index(a2, "@name");
  sqlite3_bind_text(a2, v6, [*(a1 + 48) UTF8String], -1, 0);
  v7 = sqlite3_bind_parameter_index(a2, "@expires");
  [*(a1 + 56) timeIntervalSince1970];
  sqlite3_bind_int64(a2, v7, v8);
  v9 = sqlite3_bind_parameter_index(a2, "@is_for_all_devices");
  sqlite3_bind_int(a2, v9, *(a1 + 72));
  v10 = sqlite3_bind_parameter_index(a2, "@is_apple_internal");
  sqlite3_bind_int(a2, v10, *(a1 + 73));
  v11 = sqlite3_bind_parameter_index(a2, "@is_local");
  sqlite3_bind_int(a2, v11, *(a1 + 74));
  v12 = sqlite3_bind_parameter_index(a2, "@is_beta");
  sqlite3_bind_int(a2, v12, *(a1 + 75));
  v13 = sqlite3_bind_parameter_index(a2, "@cms_blob");
  sqlite3_bind_blob(a2, v13, [*(a1 + 64) bytes], objc_msgSend(*(a1 + 64), "length"), 0);
  v14 = sqlite3_bind_parameter_index(a2, "@is_der");
  v15 = *(a1 + 76);

  return sqlite3_bind_int(a2, v14, v15);
}

uint64_t sub_10000E530(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@leaf_pk");
  v6 = [*(a1 + 40) longLongValue];

  return sqlite3_bind_int64(a2, v5, v6);
}

void sub_10000E5CC(void *a1, void *a2)
{
  if (!*(*(a1[6] + 8) + 24))
  {
    v4 = a1[4];
    v5 = a2;
    v6 = [v4 Entitlements];
    LODWORD(v4) = [v6 insertEntitlement:v5 forProfile:a1[5]];

    *(*(a1[6] + 8) + 24) = v4;
  }
}

uint64_t sub_10000E660(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_name");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

uint64_t sub_10000E910(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000E928(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@cert");
  v5 = [*(a1 + 32) bytes];
  v6 = [*(a1 + 32) length];

  return sqlite3_bind_blob(a2, v4, v5, v6, 0);
}

uint64_t sub_10000E9A4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@cert");
  v5 = [*(a1 + 32) bytes];
  v6 = [*(a1 + 32) length];

  return sqlite3_bind_blob(a2, v4, v5, v6, 0);
}

void sub_10000EA20(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = [a3 objectForKeyedSubscript:@"pk"];
  v5 = sub_10000FCB4(a2, [v8 intValue]);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_10000F62C(void *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void **))
{
  theDict = 0;
  v8 = sub_10000F908(a1, &theDict);
  if (v8)
  {
    return v8;
  }

  v9 = theDict;
  Value = CFDictionaryGetValue(theDict, @"ProfileType");
  if (Value)
  {
    if (CFStringCompare(Value, @"Provisioning", 0) == kCFCompareEqualTo)
    {
      v19 = CFDictionaryGetValue(v9, @"MessageType");
      if (v19)
      {
        v20 = v19;
        if (CFStringCompare(v19, @"Install", 0))
        {
          if (CFStringCompare(v20, @"Remove", 0))
          {
            if (CFStringCompare(v20, @"CopyAll", 0) == kCFCompareEqualTo)
            {
              keys[0] = 0;
              v12 = a4(keys);
              Mutable = 0;
              if (!v12 && keys[0])
              {
                Count = CFArrayGetCount(keys[0]);
                Mutable = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
                if (Mutable && Count >= 1)
                {
                  for (i = 0; i != Count; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(keys[0], i);
                    CFArrayAppendValue(Mutable, ValueAtIndex);
                  }
                }

                CFRelease(keys[0]);
              }

              goto LABEL_5;
            }

            goto LABEL_4;
          }

          if (CFDictionaryGetValue(v9, @"ProfileID"))
          {
            v12 = a3();
LABEL_33:
            Mutable = 0;
            goto LABEL_5;
          }
        }

        else if (CFDictionaryGetValue(v9, @"Profile"))
        {
          v24 = MISProfileCreateWithData();
          Mutable = v24;
          if (!v24)
          {
            v12 = -402620413;
            goto LABEL_5;
          }

          v12 = a2(v24);
          CFRelease(Mutable);
          goto LABEL_33;
        }
      }
    }
  }

LABEL_4:
  Mutable = 0;
  v12 = -402620403;
LABEL_5:
  valuePtr = v12;
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  *keys = *off_100029168;
  v29 = @"Payload";
  values[0] = @"Response";
  values[1] = v13;
  values[2] = Mutable;
  if (Mutable)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v14, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v15)
  {
    v16 = v15;
    v17 = sub_10000FA10(a1, v15);
    CFRelease(v16);
  }

  else
  {
    v17 = -402620406;
  }

  CFRelease(v13);
  if (v12)
  {
    v8 = v12;
  }

  else
  {
    v8 = v17;
  }

  CFRelease(v9);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t sub_10000F908(void *a1, void *a2)
{
  LODWORD(length) = 0;
  v4 = sub_10000C000(a1, &length, 4);
  if (!v4)
  {
    v4 = 3892346890;
    v5 = bswap32(length);
    LODWORD(length) = v5;
    v6 = malloc_type_malloc(v5, 0xC93E52F7uLL);
    if (v6)
    {
      v7 = v6;
      v8 = sub_10000C000(a1, v6, length);
      if (!v8)
      {
        v9 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v7, length, kCFAllocatorNull);
        v8 = 3892346890;
        if (v9)
        {
          v10 = v9;
          v11 = CFPropertyListCreateWithData(kCFAllocatorDefault, v9, 0, 0, 0);
          *a2 = v11;
          if (v11)
          {
            v8 = 0;
          }

          else
          {
            v8 = 3892346890;
          }

          CFRelease(v10);
        }
      }

      free(v7);
      return v8;
    }
  }

  return v4;
}

uint64_t sub_10000FA10(void *a1, const void *a2)
{
  Data = CFPropertyListCreateData(kCFAllocatorDefault, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 3892346890;
  }

  v4 = Data;
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(v4);
  v9 = bswap32(Length);
  v7 = sub_10000BF88(a1, &v9, 4);
  if (!v7)
  {
    v7 = sub_10000BF88(a1, BytePtr, Length);
  }

  CFRelease(v4);
  return v7;
}

id sub_10000FACC()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t sub_10000FB00()
{
  v0 = sub_10000FACC();
  v1 = [v0 isEqualToString:@"Internal"];
  if ((MGGetBoolAnswer() & 1) == 0 && v1 && os_parse_boot_arg_string())
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    v3 = sub_1000027A4(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Using emulated device UDID: %{public}@\n", &v5, 0xCu);
    }
  }

  else
  {
    v2 = MGCopyAnswer();
  }

  return v2;
}

unsigned __int8 *sub_10000FC3C(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = [NSString stringWithUTF8String:v2];
  }

  return v2;
}

id sub_10000FC7C(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_int64(a1, a2);

  return [NSDate dateWithTimeIntervalSince1970:v2];
}

NSNumber *sub_10000FCB4(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_int64(a1, a2);

  return [NSNumber numberWithLongLong:v2];
}

NSData *sub_10000FCF4(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_blob(a1, a2);
  v5 = sqlite3_column_bytes(a1, a2);

  return [NSData dataWithBytes:v4 length:v5];
}

sqlite3 *sub_10000FD58(void *a1, int a2)
{
  ppDb = 0;
  if (a2)
  {
    v2 = 65537;
  }

  else
  {
    v2 = 65542;
  }

  v3 = [a1 path];
  v4 = sqlite3_open_v2([v3 UTF8String], &ppDb, v2, 0);

  if (v4)
  {
    v6 = sub_1000027A4(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001A334(v4, v6);
    }
  }

  return ppDb;
}

uint64_t sub_10000FE10(const char *a1, int a2)
{
  if (!a1)
  {
    sub_10001A52C();
  }

  v3 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v3 == -1)
  {
    v8 = sub_1000027A4(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001A4AC();
    }

    return 0;
  }

  else
  {
    v4 = v3;
    v5 = fstat(v3, &v11);
    if ((v5 & 0x80000000) != 0)
    {
      v9 = sub_1000027A4(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001A42C();
      }
    }

    else
    {
      if ((v11.st_mode & 0x1FF) == a2 || (v6 = fchmod(v4, a2), (v6 & 0x80000000) == 0))
      {
        v7 = 1;
        if (v4 < 0)
        {
          return v7;
        }

        goto LABEL_16;
      }

      v9 = sub_1000027A4(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001A3AC();
      }
    }

    v7 = 0;
    if ((v4 & 0x80000000) == 0)
    {
LABEL_16:
      close(v4);
    }
  }

  return v7;
}

uint64_t sub_10000FF6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001A658();
  v16 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010198(a1, a2);
  sub_10001A668();
  sub_1000101EC();
  sub_10001A7F8();
  if (v21)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v17 = xmmword_10001D2B0;
    do
    {
      v9 = v20;
      sub_100010244(&qword_10002D8D0, &qword_10001D2C0);
      v10 = swift_allocObject();
      *(v10 + 16) = v17;
      *(v10 + 56) = &type metadata for UInt8;
      *(v10 + 64) = &protocol witness table for UInt8;
      *(v10 + 32) = v9;
      v11 = sub_10001A708();
      v13 = v12;
      v18 = v7;
      v19 = v8;

      v22._countAndFlagsBits = v11;
      v22._object = v13;
      sub_10001A738(v22);

      v7 = v18;
      v8 = v19;
      sub_10001A7F8();
    }

    while (v21 != 1);
  }

  (*(v16 + 8))(v6, v4);
  return v7;
}

uint64_t sub_100010198(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1000101EC()
{
  result = qword_10002D8C8;
  if (!qword_10002D8C8)
  {
    sub_10001A658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D8C8);
  }

  return result;
}

uint64_t sub_100010244(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_10001028C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100010244(&qword_10002D8D8, "pp");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100010300(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100010358(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000103D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10001A6C8();
  sub_10001056C(v5, a2);
  sub_100010358(v5, a2);
  return sub_10001A6B8();
}

uint64_t sub_100010458(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_10001A6C8();

  return sub_100010358(v3, a2);
}

Swift::String __swiftcall MISError.hexString()()
{
  sub_100010518();
  v3._countAndFlagsBits = sub_10001A768();
  sub_10001A738(v3);

  v0 = 30768;
  v1 = 0xE200000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_100010518()
{
  result = qword_10002D8E0;
  if (!qword_10002D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D8E0);
  }

  return result;
}

uint64_t *sub_10001056C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100010624(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000106B8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1000106EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (a2 >> 60 == 15)
  {
    v5 = (*(*v3 + 88))(a1);

    return sqlite3_bind_null(v5, v4);
  }

  else
  {

    sub_1000115C8(a1, a2);
    sub_10001131C(a1, a2, v3, v4);

    return sub_1000115DC(a1, a2);
  }
}

uint64_t sub_1000107CC(const void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (*(*a3 + 88))();
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    if (qword_10002DB68 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  v11 = v7;
  swift_once();
  v7 = v11;
LABEL_7:
  v9 = qword_10002DC98;

  return sqlite3_bind_blob(v7, a4, a1, v8, v9);
}

_BYTE *sub_1000108B0(int a1)
{
  v3 = *(*v1 + 88);
  v4 = v3();
  result = sqlite3_column_blob(v4, a1);
  if (result)
  {
    v6 = result;
    v7 = v3();
    v8 = sqlite3_column_bytes(v7, a1);
    return sub_1000116A8(v6, v8);
  }

  return result;
}

void sub_10001093C(uint64_t a1, int a2)
{
  v4 = sub_10001A688();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = (*(*v2 + 88))(v4);

  sqlite3_bind_int64(v7, a2, v6);
}

uint64_t sub_1000109F8(int a1)
{
  v3 = (*(*v1 + 88))();
  v4.n128_f64[0] = sqlite3_column_int64(v3, a1);

  return Date.init(timeIntervalSince1970:)(v4);
}

uint64_t sub_100010A68(sqlite3_int64 a1, int a2)
{
  v5 = (*(*v2 + 88))();

  return sqlite3_bind_int64(v5, a2, a1);
}

sqlite3_int64 sub_100010AD0(int a1)
{
  v3 = (*(*v1 + 88))();

  return sqlite3_column_int64(v3, a1);
}

uint64_t sub_100010B28(char a1, int a2)
{
  v5 = (*(*v2 + 88))();

  return sqlite3_bind_int64(v5, a2, a1 & 1);
}

uint64_t sub_100010BE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a3;
    v6 = result;

    return sub_100010C40(v6, a2, v3, v4);
  }

  return result;
}

uint64_t sub_100010C40(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *v12 = a1;
    v13 = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = (*(*a3 + 88))();
    if (qword_10002DB68 != -1)
    {
      v10 = v6;
      swift_once();
      v6 = v10;
    }

    v7 = qword_10002DC98;
    v8 = v12;
    goto LABEL_10;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    sub_10001A818();
  }

  v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v6 = (*(*a3 + 88))();
  if (qword_10002DB68 != -1)
  {
    v11 = v6;
    swift_once();
    v6 = v11;
  }

  v7 = qword_10002DC98;
  v8 = (v5 + 32);
LABEL_10:
  sqlite3_bind_text(v6, a4, v8, -1, v7);
}

const unsigned __int8 *sub_100010DC8(int a1)
{
  v3 = (*(*v1 + 88))();
  result = sqlite3_column_text(v3, a1);
  if (result)
  {
    return sub_10001A748();
  }

  return result;
}

uint64_t sub_100010E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v18 = sub_10001A6E8();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v24 = sub_100011758;
  v25 = v10;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000110AC;
  v23 = &unk_100029208;
  v11 = _Block_copy(&aBlock);
  sub_1000028F4(a3, a4);

  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = v9;
  v24 = sub_100011800;
  v25 = v12;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100011100;
  v23 = &unk_100029258;
  v13 = _Block_copy(&aBlock);
  sub_1000028F4(a5, a6);

  v14 = [v19 executeQuery:v18 withBind:v11 withResults:v13];
  _Block_release(v13);
  _Block_release(v11);

  if (v14)
  {
    sub_1000118B0();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
LABEL_5:
    swift_willThrow();
  }

  swift_beginAccess();
  if (*(v9 + 16))
  {
    swift_errorRetain();
    goto LABEL_5;
  }
}

uint64_t sub_1000110AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100011100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_1000119F8();
  v5 = sub_10001A6D8();

  v4(a2, v5);
}

void sub_100011190(void (*a1)(uint64_t))
{
  v3 = v1;
  v5 = [v1 transactionSemaphore];
  sub_10001A7C8();

  v6 = sub_100010E34(0xD000000000000011, 0x80000001000215D0, 0, 0, 0, 0);
  if (!v2)
  {
    a1(v6);
    sub_100010E34(0xD000000000000012, 0x8000000100021610, 0, 0, 0, 0);
    v7 = [v3 transactionSemaphore];
    sub_10001A7D8();
  }
}

uint64_t sub_10001131C(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = BYTE6(a2);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v26, 0, 14);
      a1 = (*(*a3 + 88))(a1);
      if (qword_10002DB68 == -1)
      {
LABEL_25:
        v9 = qword_10002DC98;
        v10 = a4;
        v11 = 0;
LABEL_26:
        sqlite3_bind_blob(a1, v10, v26, v11, v9);
      }

LABEL_29:
      v25 = a1;
      swift_once();
      a1 = v25;
      goto LABEL_25;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    a1 = sub_10001A568();
    v14 = a1;
    if (a1)
    {
      a1 = sub_10001A588();
      if (__OFSUB__(v12, a1))
      {
        __break(1u);
        goto LABEL_31;
      }

      v14 += v12 - a1;
    }

    v15 = __OFSUB__(v13, v12);
    v16 = v13 - v12;
    if (!v15)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v26[0] = a1;
    LOWORD(v26[1]) = a2;
    BYTE2(v26[1]) = BYTE2(a2);
    BYTE3(v26[1]) = BYTE3(a2);
    BYTE4(v26[1]) = BYTE4(a2);
    BYTE5(v26[1]) = BYTE5(a2);
    a1 = (*(*a3 + 88))();
    v8 = v6;
    if (qword_10002DB68 != -1)
    {
      v24 = a1;
      swift_once();
      a1 = v24;
    }

    v9 = qword_10002DC98;
    v10 = a4;
    v11 = v8;
    goto LABEL_26;
  }

  v17 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = sub_10001A568();
  if (v14)
  {
    v18 = sub_10001A588();
    if (!__OFSUB__(v17, v18))
    {
      v14 += v17 - v18;
      goto LABEL_17;
    }

LABEL_31:
    __break(1u);
  }

LABEL_17:
  v19 = sub_10001A578();
  if (v19 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v19;
  }

  v21 = &v14[v20];
  if (v14)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_1000107CC(v14, v22, a3, a4);
}

uint64_t sub_1000115C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010198(result, a2);
  }

  return result;
}

uint64_t sub_1000115DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010300(result, a2);
  }

  return result;
}

uint64_t sub_1000115F0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1000116A8(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000115F0(a1, &a1[a2]);
  }

  sub_10001A598();
  swift_allocObject();
  sub_10001A558();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_10001A628();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_100011758(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 24);
    type metadata accessor for SQLStatement();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;

    v2(v5);

    return sub_10000294C(v2, v4);
  }

  return result;
}

uint64_t sub_1000117E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011800(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 24);
    type metadata accessor for SQLStatement();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;

    v2(v5);

    return sub_10000294C(v2, v4);
  }

  return result;
}

unint64_t sub_1000118B0()
{
  result = qword_10002D8E8;
  if (!qword_10002D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D8E8);
  }

  return result;
}

__n128 sub_100011910(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100011924(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001196C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000119F8()
{
  result = qword_10002D9F8;
  if (!qword_10002D9F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002D9F8);
  }

  return result;
}

uint64_t sub_100011A44(const char *a1)
{
  v3 = *(v1 + 24);
  v4 = (*(**(v1 + 16) + 88))();
  if (qword_10002DB68 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  return sqlite3_bind_text(v4, v3, a1, -1, qword_10002DC98);
}

uint64_t sub_100011B00(uint64_t a1, uint64_t a2)
{
  sub_10001A6C8();
  __chkstk_darwin();
  v4 = sub_100017084(a1, a2);
  if (!v5)
  {
    return 0;
  }

  v8 = v6;
  v9 = v4;
  v10 = v7;
  v11 = v5;
  sub_100010198(v6, v7);
  sub_1000125DC(v9, v11, v8, v10);
  return v8;
}

id sub_100011FB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyUserTrustOperations();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100011FF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000120C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001264C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100012590(v11);
  return v7;
}

unint64_t sub_1000120C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000121CC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10001A838();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000121CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100012218(a1, a2);
  sub_100012348(&off_100029310);
  return v3;
}

char *sub_100012218(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001028C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001A838();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001A758();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001028C(v10, 0);
        result = sub_10001A808();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100012348(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100012434(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100012434(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100010244(&qword_10002D8D8, "pp");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100012528(uint64_t a1)
{
  v2 = sub_100010244(&qword_10002DA08, &unk_10001D3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012590(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1000125DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100010300(a3, a4);
  }
}

uint64_t sub_10001264C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000126A8(void *a1)
{
  v3 = [a1 teamID];
  v4 = sub_10001A6F8();
  v6 = v5;

  v7 = sub_100017878(v4, v6);
  if (v1)
  {
  }

  v9 = v7;

  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    v11 = a1;
    sub_100010E34(0xD000000000000073, 0x80000001000217C0, sub_100012F7C, v10, 0, 0);
  }

  else
  {
    sub_100013188();
    swift_allocError();
    *v12 = 0xD000000000000048;
    *(v12 + 8) = 0x8000000100021840;
    *(v12 + 16) = 1;
    return swift_willThrow();
  }
}

void sub_100012974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = sub_10001A6E8();
  v13 = 0;
  v8 = [a1 getTeamIDForProfileUUID:v7 error:&v13];

  v9 = v13;
  if (v8)
  {
    if (a5 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_10001A638().super.isa;
    }

    v12 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v8 signature:isa];

    sub_1000126A8(v12);
  }

  else
  {
    v11 = v9;
    sub_10001A5B8();

    swift_willThrow();
  }
}

char *sub_100012E70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100010244(&qword_10002DA38, &qword_10001D3E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100012F7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = [v4 teamID];
  v6 = sub_10001A6F8();
  v8 = v7;

  (*(*a1 + 184))(v6, v8, 1);

  v9 = [v4 signature];
  if (v9)
  {
    v10 = v9;
    v11 = sub_10001A648();
    v13 = v12;

    v14 = v13;
    v15 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v15 != 2)
      {
        sub_100010300(v11, v13);
        return (*(*a1 + 120))(0, 0xF000000000000000, 2);
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      result = sub_100010300(v11, v14);
      if (!__OFSUB__(v16, v17))
      {
        if (v16 == v17)
        {
          return (*(*a1 + 120))(0, 0xF000000000000000, 2);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    else
    {
      if (!v15)
      {
        sub_100010300(v11, v13);
        if (!BYTE6(v13))
        {
          return (*(*a1 + 120))(0, 0xF000000000000000, 2);
        }

        goto LABEL_12;
      }

      result = sub_100010300(v11, v13);
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        if (HIDWORD(v11) != v11)
        {
          goto LABEL_12;
        }

        return (*(*a1 + 120))(0, 0xF000000000000000, 2);
      }
    }

    __break(1u);
    return result;
  }

LABEL_12:
  v19 = [v4 signature];
  if (v19)
  {
    v20 = v19;
    v21 = sub_10001A648();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  (*(*a1 + 120))(v21, v23, 2);

  return sub_1000115DC(v21, v23);
}

unint64_t sub_100013188()
{
  result = qword_10002DA40;
  if (!qword_10002DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DA40);
  }

  return result;
}

uint64_t sub_100013210(uint64_t a1, id a2)
{
  v4 = [a2 profileUUID];
  v5 = sub_10001A6F8();
  v7 = v6;

  (*(*a1 + 184))(v5, v7, 1);

  v8 = [a2 cdHash];
  v9 = sub_10001A648();
  v11 = v10;

  (*(*a1 + 120))(v9, v11, 2);
  sub_100010300(v9, v11);
  v12 = [a2 gracePeriod];
  v13 = *(*a1 + 152);
  v13(v12, 3);
  v13([a2 lastSuccessMonotonicTime], 4);
  v13([a2 lastSuccessResetCount], 5);
  v13([a2 isRejected], 6);
  return (v13)([a2 isRejectedByWholeProfile], 7);
}

uint64_t sub_1000134D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = *(*a1 + 152);
  v15(a2, 1);
  v15(a3, 2);
  (*(*a1 + 184))(a4, a5, 3);
  (*(*a1 + 120))(a6, a7, 4);
  return (v15)(a8, 5);
}

uint64_t sub_100013740(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v9 = 0xD000000000000024;
  }

  else
  {
    v9 = 0xD000000000000085;
  }

  if (a5)
  {
    v10 = "ted_by_whole_profile = 0";
  }

  else
  {
    v10 = ", cdhash) DO NOTHING";
  }

  sub_10001A828(216);
  v13._countAndFlagsBits = 0xD0000000000000D6;
  v13._object = 0x8000000100021C90;
  sub_10001A738(v13);
  v14._object = (v10 | 0x8000000000000000);
  v14._countAndFlagsBits = v9;
  sub_10001A738(v14);

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;

  sub_100010198(a3, a4);
  sub_100010E34(0, 0xE000000000000000, sub_1000165D4, v11, 0, 0);
}

id sub_100013994(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v12 = sub_10001A6C8();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v16 = sub_10001A6E8();
  isa = sub_10001A638().super.isa;
  v32 = 0;
  v30 = a5;
  LODWORD(v6) = [v6 recordIndeterminateEntryWithProfileUUID:v16 cdHash:isa onConflictDoNothing:a5 & 1 error:&v32];

  v18 = v32;
  if (v6)
  {

    return v18;
  }

  else
  {
    v31 = v32;
    v20 = v32;
    sub_10001A5B8();

    swift_willThrow();
    v21 = sub_1000103B0();
    v22 = *(v13 + 16);
    v31 = v12;
    v22(v15, v21, v12);

    sub_100010198(a3, a4);
    v23 = sub_10001A6A8();
    v24 = sub_10001A7B8();

    sub_100010300(a3, a4);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v25 = 136446722;
      *(v25 + 4) = sub_100011FF4(v29, a2, &v32);
      *(v25 + 12) = 2082;
      v26 = sub_10000FF6C(a3, a4);
      v28 = sub_100011FF4(v26, v27, &v32);

      *(v25 + 14) = v28;
      *(v25 + 22) = 1024;
      *(v25 + 24) = v30 & 1;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error recording indeterminate entry %{public}s, %{public}s, %{BOOL}d", v25, 0x1Cu);
      swift_arrayDestroy();
    }

    return (*(v13 + 8))(v15, v31);
  }
}

id sub_100013EA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10001A6C8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001A6E8();
  v23 = 0;
  LODWORD(v4) = [v4 setGracePeriodWithProfileUUID:v12 gracePeriod:a3 error:&v23];

  v13 = v23;
  if (v4)
  {

    return v13;
  }

  else
  {
    v22 = v23;
    v15 = v23;
    sub_10001A5B8();

    swift_willThrow();
    v16 = sub_1000103B0();
    (*(v9 + 16))(v11, v16, v8);

    v17 = sub_10001A6A8();
    v18 = sub_10001A7B8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      LODWORD(v22) = a3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_100011FF4(a1, a2, &v23);
      *(v20 + 12) = 1024;
      *(v20 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error setting grace period for %{public}s, %d", v20, 0x12u);
      sub_100012590(v21);
    }

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1000141CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  (*(*a1 + 184))(a2, a3, 1);
  (*(*a1 + 120))(a4, a5, 2);
  return (*(*a1 + 152))(a6 & 1, 3);
}

void sub_1000145F0(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 192))(0);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = (*(*a1 + 128))(1);
  if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(*a1 + 160);
    v10 = v9(2);
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v11 = v10;
      if (v10 <= 0x7FFFFFFF)
      {
        v21 = v9(3);
        v20 = v9(4);
        v12 = v9(5) != 0;
        v13 = v9(6) != 0;
        v14 = objc_allocWithZone(MISOnlineAuthEntry);
        v15 = sub_10001A6E8();

        isa = sub_10001A638().super.isa;
        LOBYTE(v19) = v13;
        v17 = [v14 initWithProfileUUID:v15 cdHash:isa gracePeriod:v11 lastSuccessMonotonicTime:v21 lastSuccessResetCount:v20 isRejected:v12 isRejectedByWholeProfile:v19];

        sub_1000115DC(v7, v8);
        swift_beginAccess();
        v18 = *(a2 + 16);
        *(a2 + 16) = v17;

        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

void *sub_1000147F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_10001A6C8();
  __chkstk_darwin();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;

  sub_100010198(a3, a4);

  sub_100010E34(0xD0000000000000D0, 0x8000000100021F90, sub_1000165D4, v9, sub_1000165EC, v8);

  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = v10;

  return v10;
}

void sub_100014BCC(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = (*(*a1 + 128))(1);
    if (v6 >> 60 != 15)
    {
      v7 = v5;
      v8 = v6;
      v9 = *(*a1 + 160);
      v10 = (*a1 + 160);
      v11 = v9(2);
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v12 = v11;
        if (v11 <= 0x7FFFFFFF)
        {
          v21 = v9(3);
          v22 = a2;
          v13 = v9(4);
          v14 = v9(5) != 0;
          v15 = v9(6) != 0;
          v16 = objc_allocWithZone(MISOnlineAuthEntry);
          v17 = sub_10001A6E8();

          isa = sub_10001A638().super.isa;
          LOBYTE(v20) = v15;
          v19 = [v16 initWithProfileUUID:v17 cdHash:isa gracePeriod:v12 lastSuccessMonotonicTime:v21 lastSuccessResetCount:v13 isRejected:v14 isRejectedByWholeProfile:v20];

          sub_1000115DC(v7, v8);
          swift_beginAccess();
          v10 = v19;
          sub_10001A778();
          if (*((*(v22 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v22 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_6:
            sub_10001A7A8();
            swift_endAccess();

            return;
          }

LABEL_9:
          sub_10001A798();
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100014E28()
{
  sub_10001A6C8();
  __chkstk_darwin();
  v0 = swift_allocObject();
  *(v0 + 16) = &_swiftEmptyArrayStorage;

  sub_100010E34(0xD0000000000000B0, 0x8000000100022070, 0, 0, sub_100016604, v0);

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100015108(uint64_t a1, uint64_t a2)
{
  sub_10001A6C8();
  __chkstk_darwin();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_100010E34(0xD00000000000006ALL, 0x8000000100022130, sub_1000131DC, v5, sub_10001661C, v4);

  swift_beginAccess();
  v6 = *(v4 + 16);

  return v6;
}

id sub_100015560(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_10001A6C8();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001A6E8();
  isa = sub_10001A638().super.isa;
  v31 = 0;
  LODWORD(v5) = [v5 deleteOnlineAuthEntryWithProfileUUID:v14 cdHash:isa error:&v31];

  v16 = v31;
  if (v5)
  {

    return v16;
  }

  else
  {
    v30 = v31;
    v18 = v31;
    v19 = sub_10001A5B8();

    swift_willThrow();
    v20 = sub_1000103B0();
    (*(v11 + 16))(v13, v20, v10);

    sub_100010198(a3, a4);
    v21 = sub_10001A6A8();
    v22 = sub_10001A7B8();

    sub_100010300(a3, a4);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v30 = v10;
      v24 = v23;
      v25 = swift_slowAlloc();
      v29[1] = v19;
      v31 = v25;
      *v24 = 136446466;
      *(v24 + 4) = sub_100011FF4(a1, a2, &v31);
      *(v24 + 12) = 2082;
      v26 = sub_10000FF6C(a3, a4);
      v28 = sub_100011FF4(v26, v27, &v31);

      *(v24 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error deleting online auth entry %{public}s, %{public}s", v24, 0x16u);
      swift_arrayDestroy();

      return (*(v11 + 8))(v13, v30);
    }

    else
    {

      return (*(v11 + 8))(v13, v10);
    }
  }
}

id sub_100015A68(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10001A6C8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_10001A638().super.isa;
  v23 = 0;
  LODWORD(v3) = [v3 deleteOnlineAuthEntryWithCdHash:isa error:&v23];

  v11 = v23;
  if (v3)
  {

    return v11;
  }

  else
  {
    v22 = v23;
    v13 = v23;
    sub_10001A5B8();

    swift_willThrow();
    v14 = sub_1000103B0();
    (*(v7 + 16))(v9, v14, v6);
    sub_100010198(a1, a2);
    v15 = sub_10001A6A8();
    v16 = sub_10001A7B8();
    sub_100010300(a1, a2);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446210;
      v19 = sub_10000FF6C(a1, a2);
      v21 = sub_100011FF4(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error deleting online auth entry %{public}s", v17, 0xCu);
      sub_100012590(v18);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t MISDBManager.addMonotonicTimeOffset(_:cdHash:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x8000000100022270;
  }

  sub_10001A828(88);
  v10._countAndFlagsBits = 0xD000000000000056;
  v10._object = 0x8000000100022210;
  sub_10001A738(v10);
  v11._countAndFlagsBits = v6;
  v11._object = v7;
  sub_10001A738(v11);

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1000115C8(a2, a3);
  sub_100010E34(0, 0xE000000000000000, sub_100016258, v8, 0, 0);
}

uint64_t MISDBManager.addRTCResetCountOffset(_:cdHash:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x8000000100022270;
  }

  sub_10001A828(82);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100022290;
  sub_10001A738(v10);
  v11._countAndFlagsBits = v6;
  v11._object = v7;
  sub_10001A738(v11);

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1000115C8(a2, a3);
  sub_100010E34(0, 0xE000000000000000, sub_1000165D8, v8, 0, 0);
}

uint64_t sub_100016078(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void *, unint64_t))
{
  v7 = a4;
  if (a4)
  {
    v10 = a1;
    v11 = v7;
    v7 = sub_10001A648();
    v13 = v12;
  }

  else
  {
    v14 = a1;
    v13 = 0xF000000000000000;
  }

  a6(a3, v7, v13);

  sub_1000115DC(v7, v13);
  return 1;
}

uint64_t sub_1000161D4(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 160))(0);
  result = swift_beginAccess();
  *(v2 + 16) = v3;
  return result;
}

uint64_t sub_10001625C()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_100010300(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000162A4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  (*(*a1 + 152))(v1[2], 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

uint64_t sub_100016330(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  (*(*a1 + 184))(v1[2], v1[3], 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

unint64_t sub_1000163BC()
{
  result = qword_10002DA48;
  if (!qword_10002DA48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002DA48);
  }

  return result;
}

uint64_t sub_100016408()
{
  sub_100010300(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016490(uint64_t a1)
{

  sub_100010300(*(v1 + 32), *(v1 + 40));

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000164EC(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(*a1 + 184))(*(v1 + 16), *(v1 + 24), 1);
  return (*(*a1 + 152))(v3, 2);
}

uint64_t sub_100016574(uint64_t a1)
{

  sub_100010300(*(v1 + 48), *(v1 + 56));

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t type metadata accessor for LegacyUserTrustedProfileEntry(uint64_t a1)
{
  result = qword_10002DBF0;
  if (!qword_10002DBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016684(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100010198(a3, a4);
  }
}

uint64_t sub_1000166D0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000166EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000166F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100016740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000167B8(uint64_t a1)
{
  sub_10001A698();
  if (v1 <= 0x3F)
  {
    sub_10001683C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001683C()
{
  if (!qword_10002DAA8)
  {
    v0 = sub_10001A7E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10002DAA8);
    }
  }
}

void sub_10001688C(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  sub_1000168C0(v2);
}

void sub_1000168C0(int a1)
{
  v20 = a1;
  v1 = sub_10001A5C8();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010244(&qword_10002DAD8, "Rq");
  __chkstk_darwin();
  v6 = &v19 - v5;
  v7 = sub_10001A618();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001A6E8();
  v12 = sub_100017078();
  v13 = [v12 stringByAppendingPathComponent:v11];

  v14 = v13;
  if (v14)
  {
    sub_10001A6F8();

    (*(v8 + 56))(v6, 1, 1, v7);
    (*(v2 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
    sub_10001A608();
    sub_10001A5D8(v15);
    v17 = v16;
    (*(v8 + 8))(v10, v7);
    v18 = type metadata accessor for LegacyUserTrustDB();
    v21.receiver = v19;
    v21.super_class = v18;
    objc_msgSendSuper2(&v21, "initWithDatabaseURL:asReadOnly:", v17, v20 & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100016DC4()
{
  v1 = v0;
  v2 = sub_10001A618();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 dbURL];
  sub_10001A5E8();

  sub_10001A5F8();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v8 = sub_10001A728();

  sub_10000FF4C((v8 + 32));

  v9 = [v1 shmURL];
  sub_10001A5E8();

  sub_10001A5F8();
  v7(v5, v2);
  v10 = sub_10001A728();

  sub_10000FF4C((v10 + 32));

  v11 = [v1 walURL];
  sub_10001A5E8();

  sub_10001A5F8();
  v7(v5, v2);
  v12 = sub_10001A728();

  sub_10000FF4C((v12 + 32));
}

id sub_100017044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyUserTrustDB();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100017084(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  v6 = v5 + 16;
  *(v5 + 32) = 0u;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_100010E34(0xD000000000000046, 0x8000000100022460, sub_1000131DC, v7, sub_1000172C8, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
    sub_100016684(v6, *(v5 + 24), *(v5 + 32), *(v5 + 40));
  }

  return v6;
}

uint64_t sub_1000171E0()
{
  v1 = swift_allocObject();
  *(v1 + 16) = &_swiftEmptyArrayStorage;
  v2 = v1 + 16;

  sub_100010E34(0xD000000000000026, 0x80000001000224B0, 0, 0, sub_1000173C8, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1000172C8(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 192))(0);
  v5 = v4;
  (*(*a1 + 128))(1);
  if (v5)
  {
    if (v6 >> 60 != 15)
    {
      nullsub_1();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      swift_beginAccess();
      v15 = v2[2];
      v16 = v2[3];
      v17 = v2[4];
      v18 = v2[5];
      v2[2] = v8;
      v2[3] = v10;
      v2[4] = v12;
      v2[5] = v14;
      sub_1000125DC(v15, v16, v17, v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000173C8(uint64_t a1)
{
  v2 = v1;
  result = (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = sub_10001A718();
    v7 = v6;

    swift_beginAccess();
    v8 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100012E70(0, *(v8 + 2) + 1, 1, v8);
      *(v2 + 16) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100012E70((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = v5;
    *(v12 + 5) = v7;
    *(v2 + 16) = v8;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000174F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  *(v5 + 24) = 0xE000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  swift_bridgeObjectRetain_n();

  sub_100010E34(0xD00000000000002CLL, 0x8000000100022500, sub_1000131DC, v7, sub_100017670, v8);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_100017670(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = (*(*a1 + 192))(0);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    swift_beginAccess();
    *(v3 + 16) = v7;
    *(v3 + 24) = v8;
  }

  else
  {
    sub_10001A828(37);

    v11._countAndFlagsBits = v2;
    v11._object = v4;
    sub_10001A738(v11);
    sub_100013188();
    swift_allocError();
    *v10 = 0xD000000000000023;
    *(v10 + 8) = 0x8000000100022620;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100017878(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_100010E34(0xD000000000000030, 0x8000000100022530, sub_1000131DC, v7, sub_1000161BC, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1000179A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_100010E34(0xD00000000000002CLL, 0x80000001000225C0, sub_1000131DC, v8, sub_100017FD4, v7);
  if (v3)
  {
  }

  swift_beginAccess();
  v10 = *(v7 + 24);
  if (!v10)
  {
    sub_1000118B0();
    swift_allocError();
    *v12 = xmmword_10001D500;
    *(v12 + 16) = xmmword_10001D510;
    *(v12 + 32) = 1;
LABEL_6:
    swift_willThrow();
  }

  v22 = *(v7 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  sub_100010E34(0xD000000000000027, 0x80000001000225F0, sub_1000131DC, v11, 0, 0);

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v22;
  *(v14 + 24) = v10;

  sub_100010E34(0xD000000000000030, 0x8000000100022530, sub_1000131DC, v14, sub_10001661C, v13);

  swift_beginAccess();
  v15 = *(v13 + 16);

  if (v15)
  {
  }

  v16 = sub_10001A6E8();
  v23 = 0;
  v17 = [a1 deleteTrustedWithTeamID:v16 error:&v23];

  v18 = v23;
  if (!v17)
  {
    v21 = v23;

    sub_10001A5B8();

    goto LABEL_6;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  *(v19 + 24) = v10;
  v20 = v18;
  sub_100010E34(0xD00000000000002BLL, 0x8000000100022570, sub_1000131DC, v19, 0, 0);
}

uint64_t sub_100017ECC()
{

  return _swift_deallocObject(v0, 40, 7);
}

__n128 sub_100017F18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100017F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100017F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100017FD4(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 192))(0);
  v5 = v4;
  swift_beginAccess();
  *(v2 + 16) = v3;
  *(v2 + 24) = v5;
}

id sub_100018078()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for LegacyUserTrustDB();
  result = objc_msgSendSuper2(&v8, "setupSchema");
  if (result)
  {
    v2 = result;
    v3 = [v0 readSetting:@"databaseSchemaVersion"];
    if (!v3)
    {
      v4 = sub_10001A6E8();
      [v0 executeQuery:v4 withBind:0 withResults:0];

      v5 = sub_10001A6E8();
      [v0 executeQuery:v5 withBind:0 withResults:0];

      v6 = @"databaseSchemaVersion";
      v7 = sub_10001A6E8();
      [v0 setSetting:v6 toValue:v7];

      v3 = v7;
    }

    return v2;
  }

  return result;
}

BOOL sub_10001826C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v9 = [(__CFString *)v7 isEqualToString:@"xrOS"];
  v10 = MISProvisioningProfileIncludesPlatform(a2, v8, a4);
  if (!v9)
  {
    goto LABEL_6;
  }

  if (!v10)
  {
    v10 = MISProvisioningProfileIncludesPlatform(a2, @"visionOS", a4);
LABEL_6:
    v11 = v10 != 0;
    goto LABEL_7;
  }

  v11 = 1;
LABEL_7:

  return v11;
}

void sub_100018360(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create profiles table: %s", v3, v4, v5, v6);
}

void sub_1000183D4(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create certificates table: %s", v3, v4, v5, v6);
}

void sub_100018448(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create certificates index: %s", v3, v4, v5, v6);
}

void sub_1000184BC(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create certificates provisioning cache: %s", v3, v4, v5, v6);
}

void sub_100018530(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create entitlements provisioning cache: %s", v3, v4, v5, v6);
}

void sub_1000185A4(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create entitlements index: %s", v3, v4, v5, v6);
}

void sub_100018618(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't add is_der to the profiles table: %s", v3, v4, v5, v6);
}

void sub_10001868C(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the xml profiles table: %s", v3, v4, v5, v6);
}

void sub_100018700(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't update is_beta column: %s", v3, v4, v5, v6);
}

void sub_100018774(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the trusted team IDs table: %s", v3, v4, v5, v6);
}

void sub_1000187E8(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Error searching for zero length signatures: %s", v3, v4, v5, v6);
}

void sub_10001885C(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't replace signature with nil: %s", v3, v4, v5, v6);
}

void sub_1000188D0(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the team ID info table: %s", v3, v4, v5, v6);
}

void sub_100018944(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't fetch trusted team ID info: %s", v3, v4, v5, v6);
}

void sub_1000189B8(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't insert team ID info: %s", v3, v4, v5, v6);
}

void sub_100018A2C(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the signing identities table: %s", v3, v4, v5, v6);
}

void sub_100018AA0(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't fetch trusted signing identities from profiles: %s", v3, v4, v5, v6);
}

void sub_100018B14(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't fetch trusted signing identities from xml_profiles_cache: %s", v3, v4, v5, v6);
}

void sub_100018B88(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't insert into signing identities: %s", v3, v4, v5, v6);
}

void sub_100018BFC(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the online auth table: %s", v3, v4, v5, v6);
}

void sub_100018C70(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the banned profile UUIDs table: %s", v3, v4, v5, v6);
}

void sub_100018CE4(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the banned cdhashes table: %s", v3, v4, v5, v6);
}

void sub_100018D58(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't fetch single asterisk wildcard predicates: %s", v3, v4, v5, v6);
}

void sub_100018DCC(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't insert new types for single asterisk wildcard predicates: %s", v3, v4, v5, v6);
}

void sub_100018F3C(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "listener connection error: %s\n", &v2, 0xCu);
}

void sub_100018FB4()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019024()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019074()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000190B0()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019120()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001915C()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019198()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019248()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000192B8()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019328()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019398()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019408()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019500()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000195F8()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019668()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019724()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019760()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001981C()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019858()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019894()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000199D0()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019A0C()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019A48()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019A84()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019AC0()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019B30()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019B6C()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019BA8()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019BE4()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019C20()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019C90()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019D00()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019D70()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019DE0()
{
  sub_1000078FC();
  sub_10000AB14();
  sub_10000AB04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019E54()
{
  sub_1000078FC();
  sub_10000AB14();
  sub_10000AB04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019EC8()
{
  sub_1000078FC();
  sub_10000AB14();
  sub_10000AB04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001A09C(sqlite3 **a1)
{
  sqlite3_errmsg(*a1);
  sqlite3_errcode(*a1);
  sub_10000BF38();
  sub_10000BF68(&_mh_execute_header, v2, v3, "SQL error '%{public}s' (%1d)", v4, v5, v6, v7);
}

void sub_10001A244(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 1024;
  *&v3[14] = a2;
  sub_10000BF18(&_mh_execute_header, a2, a3, "Unable to table row count for %{public}@: %d", *v3, *&v3[8], *&v3[16]);
}

void sub_10001A2BC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "secure_lockdown_checkin failed: %d\n", v2, 8u);
}

void sub_10001A334(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error opening DB: %d", v2, 8u);
}

void sub_10001A3AC()
{
  __error();
  sub_10000FF54();
  sub_10000BF68(&_mh_execute_header, v0, v1, "unable to set filesystem permissions on db: %d, %s", v2, v3, v4, v5);
}

void sub_10001A42C()
{
  __error();
  sub_10000FF54();
  sub_10000BF68(&_mh_execute_header, v0, v1, "unable to check filesystem permissions on db: %d, %s", v2, v3, v4, v5);
}

void sub_10001A4AC()
{
  __error();
  sub_10000FF54();
  sub_10000BF68(&_mh_execute_header, v0, v1, "unable to open file to update permissions: %d, %s", v2, v3, v4, v5);
}