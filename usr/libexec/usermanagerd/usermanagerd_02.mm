__CFDictionary *sub_100024578(const __CFDictionary *a1, UInt8 *a2, CFIndex a3, int *a4)
{
  v340 = 0;
  v339 = 0;
  if (dword_1000EB5B0 != 1 && !_os_feature_enabled_impl())
  {
    v26 = 45;
LABEL_573:
    v54 = 0;
    if (a4 && v26)
    {
      v54 = 0;
      *a4 = v26;
    }

    return v54;
  }

  v8 = sub_100002700(a1);
  v9 = v8;
  bytes = a2;
  v337 = a3;
  if (!v8)
  {
    if (dword_1000EB5B0 == 1)
    {
      v335 = a1;
      if (dword_1000EA3D4 != -1)
      {
        if (!dword_1000EA3D4 || !qword_1000EB5A8 || qword_1000EB5A8 != dword_1000EA3D4 + 1)
        {
          goto LABEL_227;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v21 = qword_1000EB308;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buffer = 0;
          v22 = sub_1000011A8(1);
          v23 = v21;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v22;
          }

          else
          {
            v24 = v22 & 0xFFFFFFFE;
          }

          if (v24)
          {
            v345.f_bsize = 67109376;
            v345.f_iosize = dword_1000EA3D4;
            LOWORD(v345.f_blocks) = 2048;
            *(&v345.f_blocks + 2) = qword_1000EB5A8;
            LODWORD(v332) = 18;
            v25 = _os_log_send_and_compose_impl(v24, buffer, 0, 0, &_mh_execute_header, v23, 0, "MAX USERS(%d) ALREADY CONFIGURED, CurUsers:%ld, may have to DELETE existing user session", &v345, v332);

            if (v25)
            {
              sub_100002A8C(v25);
            }
          }

          else
          {

            v25 = 0;
          }

          free(v25);
        }

        if (sub_100027FB0() == 1)
        {
          if (qword_1000EB5A8 == dword_1000EA3D4 + 1)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v32 = qword_1000EB308;
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_188;
            }

            *&v345.f_bsize = 0;
            v81 = sub_1000011A8(1);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v82 = v81;
            }

            else
            {
              v82 = v81 & 0xFFFFFFFE;
            }

            if (!v82)
            {
              goto LABEL_186;
            }

            *buffer = 0;
            LODWORD(v332) = 2;
            v35 = _os_log_send_and_compose_impl(v82, &v345, 0, 0, &_mh_execute_header, v32, 0, "FAILED to delete an user,  cannot add a new user", buffer, v332);
            goto LABEL_50;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v9 = 0;
          v64 = qword_1000EB308;
          if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_201;
          }

          *&v345.f_bsize = 0;
          v85 = sub_1000011A8(1);
          v66 = v64;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v86 = v85;
          }

          else
          {
            v86 = v85 & 0xFFFFFFFE;
          }

          if (v86)
          {
            *buffer = 0;
            LODWORD(v332) = 2;
            v68 = _os_log_send_and_compose_impl(v86, &v345, 0, 0, &_mh_execute_header, v66, 0, "Created a slot for new user by replacing", buffer, v332);
LABEL_197:
            v87 = v68;

            if (v87)
            {
              sub_100002A8C(v87);
            }

            goto LABEL_200;
          }

          goto LABEL_199;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v32 = qword_1000EB308;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_188;
        }

        *&v345.f_bsize = 0;
        v83 = sub_1000011A8(1);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v84 = v83;
        }

        else
        {
          v84 = v83 & 0xFFFFFFFE;
        }

        if (!v84)
        {
          goto LABEL_186;
        }

        *buffer = 0;
        v35 = _os_log_send_and_compose_impl(v84, &v345, 0, 0, &_mh_execute_header, v32, 0, "FAILED to delete an user to create a new one,  cannot add a new user");
        goto LABEL_50;
      }

      if (!qword_1000EB5D8)
      {
        goto LABEL_227;
      }

      memset(&v345, 0, 512);
      strcpy(buffer, "/private/var");
      v44 = statfs(buffer, &v345);
      if (qword_1000EB5A8 == 16)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v45 = qword_1000EB308;
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_149;
        }

        *&v345.f_bsize = 0;
        v46 = sub_1000011A8(1);
        v45 = v45;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v47 = v46;
        }

        else
        {
          v47 = v46 & 0xFFFFFFFE;
        }

        if (v47)
        {
          *buffer = 0;
          v48 = _os_log_send_and_compose_impl(v47, &v345, 0, 0, &_mh_execute_header, v45, 0, "Exceeds allowed user Sessions, try removing an existing user if possible", buffer, 2);
          goto LABEL_106;
        }
      }

      else
      {
        if (v44)
        {
          v60 = 0;
        }

        else
        {
          v60 = (v345.f_bfree * v345.f_bsize) / 0x100000;
        }

        if (qword_1000EB5D8 <= v60)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v64 = qword_1000EB308;
          if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_201;
          }

          *&v345.f_bsize = 0;
          v65 = sub_1000011A8(1);
          v66 = v64;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = v65;
          }

          else
          {
            v67 = v65 & 0xFFFFFFFE;
          }

          if (v67)
          {
            *buffer = 0;
            v68 = _os_log_send_and_compose_impl(v67, &v345, 0, 0, &_mh_execute_header, v66, 0, "Enough space to create a new one, continuing ...", buffer, 2);
            goto LABEL_197;
          }

          goto LABEL_199;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v45 = qword_1000EB308;
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_149;
        }

        *&v345.f_bsize = 0;
        v61 = sub_1000011A8(1);
        v45 = v45;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v62 = v61;
        }

        else
        {
          v62 = v61 & 0xFFFFFFFE;
        }

        if (v62)
        {
          *buffer = 0;
          v48 = _os_log_send_and_compose_impl(v62, &v345, 0, 0, &_mh_execute_header, v45, 0, "Not enough space to accommodate another user, try removing an existing user if possible", buffer, 2);
LABEL_106:
          v63 = v48;

          if (v63)
          {
            sub_100002A8C(v63);
          }

          goto LABEL_148;
        }
      }

      v63 = 0;
LABEL_148:
      free(v63);
LABEL_149:

      if (sub_100027FB0())
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v64 = qword_1000EB308;
        if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_201;
        }

        *&v345.f_bsize = 0;
        v77 = sub_1000011A8(1);
        v66 = v64;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v78 = v77;
        }

        else
        {
          v78 = v77 & 0xFFFFFFFE;
        }

        if (v78)
        {
          *buffer = 0;
          LODWORD(v332) = 2;
          v68 = _os_log_send_and_compose_impl(v78, &v345, 0, 0, &_mh_execute_header, v66, 0, "Deleted an user to create a new one, continuing ...", buffer, v332);
          goto LABEL_197;
        }

LABEL_199:

        v87 = 0;
LABEL_200:
        free(v87);
LABEL_201:

        goto LABEL_227;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v32 = qword_1000EB308;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_188;
      }

      *&v345.f_bsize = 0;
      v79 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v80 = v79;
      }

      else
      {
        v80 = v79 & 0xFFFFFFFE;
      }

      if (!v80)
      {
        goto LABEL_186;
      }

      *buffer = 0;
      LODWORD(v332) = 2;
      v35 = _os_log_send_and_compose_impl(v80, &v345, 0, 0, &_mh_execute_header, v32, 0, "FAILED to delete an user to create a new one,  cannot add a new user", buffer, v332);
LABEL_50:
      v36 = v35;
      if (v35)
      {
        sub_100002A8C(v35);
      }

      goto LABEL_187;
    }

    if (_os_feature_enabled_impl())
    {
      if (qword_1000EB5A8 < 15)
      {
        v335 = a1;
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v49 = qword_1000EB308;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *&v345.f_bsize = 0;
          v50 = sub_1000011A8(1);
          v51 = v49;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = v50;
          }

          else
          {
            v52 = v50 & 0xFFFFFFFE;
          }

          if (v52)
          {
            *buffer = 67109120;
            *&buffer[4] = qword_1000EB5A8 + 1;
            v53 = _os_log_send_and_compose_impl(v52, &v345, 0, 0, &_mh_execute_header, v51, 0, "LocalUser Enrollment, creating new user adding %d user", buffer);

            if (v53)
            {
              sub_100002A8C(v53);
            }
          }

          else
          {

            v53 = 0;
          }

          free(v53);
        }

        if (!dword_1000EB5B0)
        {
          dword_1000EB5B0 = 2;
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v72 = qword_1000EB308;
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *&v345.f_bsize = 0;
            v73 = sub_1000011A8(1);
            v74 = v72;
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = v73;
            }

            else
            {
              v75 = v73 & 0xFFFFFFFE;
            }

            if (v75)
            {
              *buffer = 0;
              v76 = _os_log_send_and_compose_impl(v75, &v345, 0, 0, &_mh_execute_header, v74, 0, "CHANGED DEVICE CONFIG from 0 --> 2!!", buffer, 2);

              if (v76)
              {
                sub_100002A8C(v76);
              }
            }

            else
            {

              v76 = 0;
            }

            free(v76);
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v88 = qword_1000EB308;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            *&v345.f_bsize = 0;
            v89 = sub_1000011A8(1);
            v90 = v88;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              v91 = v89;
            }

            else
            {
              v91 = v89 & 0xFFFFFFFE;
            }

            if (v91)
            {
              *buffer = 0;
              LODWORD(v332) = 2;
              v92 = _os_log_send_and_compose_impl(v91, &v345, 0, 0, &_mh_execute_header, v90, 0, "Create Users mount dir if not already set", buffer, v332);

              if (v92)
              {
                sub_100002A8C(v92);
              }
            }

            else
            {

              v92 = 0;
            }

            free(v92);
          }

          [qword_1000EB2D8 createVolumeMountsDir:@"/var/Users"];
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v93 = qword_1000EB308;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *&v345.f_bsize = 0;
            v94 = sub_1000011A8(1);
            v95 = v93;
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              v96 = v94;
            }

            else
            {
              v96 = v94 & 0xFFFFFFFE;
            }

            if (v96)
            {
              *buffer = 0;
              LODWORD(v332) = 2;
              v97 = _os_log_send_and_compose_impl(v96, &v345, 0, 0, &_mh_execute_header, v95, 0, "Setting UMLayout Handlers", buffer, v332);

              if (v97)
              {
                sub_100002A8C(v97);
              }
            }

            else
            {

              v97 = 0;
            }

            free(v97);
          }

          UMLSetInternalLogHandlers();
        }

LABEL_227:
        v334 = a4;
        if (dword_1000EB5B0 == 2)
        {
          v98 = 503;
        }

        else
        {
          v98 = 502;
        }

        if (qword_1000EB5A0)
        {
          *valuePtr = 0;
          do
          {
            v99 = v98;
            if (CFArrayGetCount(qword_1000EB5A0) < 1)
            {
              break;
            }

            v100 = 0;
            v101 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v100);
              v103 = CFGetTypeID(ValueAtIndex);
              if (v103 == CFDictionaryGetTypeID())
              {
                Value = CFDictionaryGetValue(ValueAtIndex, kUMUserSessionIDKey);
                if (Value && (v105 = Value, v106 = CFGetTypeID(Value), v106 == CFNumberGetTypeID()) && CFNumberGetValue(v105, kCFNumberIntType, valuePtr))
                {
                  if (*valuePtr == v99)
                  {
                    v101 = 1;
                  }
                }

                else
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v107 = qword_1000EB308;
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                  {
                    *&v345.f_bsize = 0;
                    v108 = sub_1000011A8(1);
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                    {
                      v109 = v108;
                    }

                    else
                    {
                      v109 = v108 & 0xFFFFFFFE;
                    }

                    if (v109)
                    {
                      *buffer = 67109120;
                      *&buffer[4] = v99;
                      v110 = _os_log_send_and_compose_impl(v109, &v345, 0, 0, &_mh_execute_header, v107, 0, "Failed to translate session ID %u in dictionary", buffer);
                      v111 = v110;
                      if (v110)
                      {
                        sub_100002A8C(v110);
                      }
                    }

                    else
                    {
                      v111 = 0;
                    }

                    free(v111);
                  }
                }
              }

              ++v100;
            }

            while (CFArrayGetCount(qword_1000EB5A0) > v100);
            v98 = v99 + 1;
          }

          while (v101);
        }

        else
        {
          v99 = v98;
        }

        HIDWORD(v340) = v99;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        a4 = v334;
        a1 = v335;
        v112 = qword_1000EB308;
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          *&v345.f_bsize = 0;
          v113 = sub_1000011A8(1);
          v114 = v112;
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            v115 = v113;
          }

          else
          {
            v115 = v113 & 0xFFFFFFFE;
          }

          if (v115)
          {
            *buffer = 67109120;
            *&buffer[4] = HIDWORD(v340);
            v116 = _os_log_send_and_compose_impl(v115, &v345, 0, 0, &_mh_execute_header, v114, 0, "Creating New UserSession with uid %d", buffer);

            if (v116)
            {
              sub_100002A8C(v116);
            }
          }

          else
          {

            v116 = 0;
          }

          free(v116);
        }

        v54 = sub_10007990C();
        v117 = CFNumberCreate(0, kCFNumberIntType, &v340 + 4);
        CFDictionarySetValue(v54, kUMUserSessionIDKey, v117);
        CFRelease(v117);
        LODWORD(v340) = HIDWORD(v340);
        v118 = CFNumberCreate(0, kCFNumberIntType, &v340);
        CFDictionarySetValue(v54, kUMUserSessionGroupIDKey, v118);
        CFRelease(v118);
        CFDictionarySetValue(v54, kUMUserSessionTypeKey, kUMUserSessionManagedDevice);
        ++qword_1000EA3E0;
        v119 = CFNumberCreate(0, kCFNumberLongLongType, &qword_1000EA3E0);
        CFDictionarySetValue(v54, kUMUserSessionAPNSIDKey, v119);
        CFRelease(v119);
        if (dword_1000EB5B0 == 1)
        {
          snprintf(&v345, 0x400uLL, "euser%d");
        }

        else
        {
          snprintf(&v345, 0x400uLL, "user%d");
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v120 = qword_1000EB308;
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 0;
          v121 = sub_1000011A8(1);
          v122 = v120;
          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
          {
            v123 = v121;
          }

          else
          {
            v123 = v121 & 0xFFFFFFFE;
          }

          if (v123)
          {
            *buffer = 136315138;
            *&buffer[4] = &v345;
            v124 = _os_log_send_and_compose_impl(v123, valuePtr, 0, 0, &_mh_execute_header, v122, 0, "creating with shortname %s", buffer);

            if (v124)
            {
              sub_100002A8C(v124);
            }
          }

          else
          {

            v124 = 0;
          }

          free(v124);
          a1 = v335;
        }

        v125 = CFStringCreateWithCString(0, &v345, 0x8000100u);
        CFDictionarySetValue(v54, kUMUserSessionShortNameKey, v125);
        v126 = kUMUserSessionNameKey;
        TypeID = CFStringGetTypeID();
        if (!sub_100027E10(v54, a1, v126, TypeID))
        {
          CFDictionarySetValue(v54, kUMUserSessionNameKey, v125);
        }

        v128 = kUMUserSessionFirstNameKey;
        v129 = CFStringGetTypeID();
        sub_100027E10(v54, a1, v128, v129);
        v130 = kUMUserSessionLastNameKey;
        v131 = CFStringGetTypeID();
        sub_100027E10(v54, a1, v130, v131);
        v132 = kUMUserSessionDisplayNameKey;
        v133 = CFStringGetTypeID();
        sub_100027E10(v54, a1, v132, v133);
        if (_os_feature_enabled_impl())
        {
          if (!CFDictionaryContainsKey(v54, kUMUserSessionNameKey))
          {
            CFDictionarySetValue(v54, kUMUserSessionNameKey, v125);
          }

          if (!CFDictionaryContainsKey(v54, kUMUserSessionDisplayNameKey))
          {
            CFDictionarySetValue(v54, kUMUserSessionDisplayNameKey, v125);
          }
        }

        v134 = CFDictionaryContainsKey(a1, kUMUserSessionLanguageKey);
        v135 = kUMUserSessionLanguageKey;
        if (v134)
        {
          v136 = CFStringGetTypeID();
          sub_100027E10(v54, a1, v135, v136);
          if (!v125)
          {
            goto LABEL_291;
          }
        }

        else
        {
          CFDictionarySetValue(v54, kUMUserSessionLanguageKey, @"en_US");
          if (!v125)
          {
LABEL_291:
            if ((_os_feature_enabled_impl() & 1) != 0 || (v137 = kUMUserSessionUUIDKey, v138 = CFStringGetTypeID(), !sub_100027E10(v54, a1, v137, v138)))
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v139 = qword_1000EB308;
              if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
              {
                v140 = a1;
                *buffer = 0;
                v141 = sub_1000011A8(1);
                v142 = v139;
                if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                {
                  v143 = v141;
                }

                else
                {
                  v143 = v141 & 0xFFFFFFFE;
                }

                if (v143)
                {
                  *valuePtr = 0;
                  LODWORD(v332) = 2;
                  v144 = _os_log_send_and_compose_impl(v143, buffer, 0, 0, &_mh_execute_header, v142, 0, "Generating a new UUID for the User", valuePtr, v332);

                  if (v144)
                  {
                    sub_100002A8C(v144);
                  }
                }

                else
                {

                  v144 = 0;
                }

                free(v144);
                a1 = v140;
              }

              v145 = CFUUIDCreate(0);
              v146 = CFUUIDCreateString(0, v145);
              CFDictionarySetValue(v54, kUMUserSessionUUIDKey, v146);
            }

            if (!CFDictionaryContainsKey(a1, kUMUserSessionAlternateDSIDKey) || (v147 = kUMUserSessionAlternateDSIDKey, v148 = CFStringGetTypeID(), !sub_100027E10(v54, a1, v147, v148)))
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v149 = qword_1000EB308;
              if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
              {
                v150 = a1;
                *buffer = 0;
                v151 = sub_1000011A8(1);
                v152 = v149;
                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
                {
                  v153 = v151;
                }

                else
                {
                  v153 = v151 & 0xFFFFFFFE;
                }

                if (v153)
                {
                  *valuePtr = 0;
                  LODWORD(v332) = 2;
                  v154 = _os_log_send_and_compose_impl(v153, buffer, 0, 0, &_mh_execute_header, v152, 0, "Generating a new Alternate UUID for the User", valuePtr, v332);

                  if (v154)
                  {
                    sub_100002A8C(v154);
                  }
                }

                else
                {

                  v154 = 0;
                }

                free(v154);
                a1 = v150;
              }

              v155 = CFUUIDCreate(0);
              v156 = CFUUIDCreateString(0, v155);
              CFDictionarySetValue(v54, kUMUserSessionAlternateDSIDKey, v156);
              if (v155)
              {
                CFRelease(v155);
              }

              if (v156)
              {
                CFRelease(v156);
              }
            }

            if (CFDictionaryContainsKey(a1, kUMUserSessionFileInfoKey))
            {
              v157 = kUMUserSessionFileInfoKey;
              v158 = CFStringGetTypeID();
              sub_100027E10(v54, a1, v157, v158);
            }

            if (CFDictionaryContainsKey(a1, kUMUserSessionOpaqueDataKey))
            {
              v159 = kUMUserSessionOpaqueDataKey;
              v160 = CFDataGetTypeID();
              sub_100027E10(v54, a1, v159, v160);
            }

            Current = CFAbsoluteTimeGetCurrent();
            v162 = CFDateCreate(kCFAllocatorDefault, Current);
            CFDictionarySetValue(v54, kUMUserSessionCreateTimeStampKey, v162);
            CFDictionarySetValue(v54, kUMUserSessionLoginTimeStampKey, v162);
            if (v162)
            {
              CFRelease(v162);
            }

            CFDictionarySetValue(v54, kUMUserSessionForegroundKey, kCFBooleanFalse);
            if (HIDWORD(v340) == 502)
            {
              v163 = kCFBooleanTrue;
            }

            else
            {
              v163 = kCFBooleanFalse;
            }

            CFDictionarySetValue(v54, kUMUserSessionLoginUserKey, v163);
            CFDictionarySetValue(v54, kUMUserSessionDirtyKey, kCFBooleanFalse);
            CFDictionarySetValue(v54, kUMUserSessionDisabledKey, kCFBooleanFalse);
            v11 = 0;
            goto LABEL_334;
          }
        }

        CFRelease(v125);
        goto LABEL_291;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v27 = qword_1000EB308;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *&v345.f_bsize = 0;
        v28 = sub_1000011A8(1);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          *buffer = 0;
          v30 = _os_log_send_and_compose_impl(v29, &v345, 0, 0, &_mh_execute_header, v27, 0, "Device already has 15 users, the maximum allowed with LocalUser Enrollment.", buffer, 2);
          v31 = v30;
          if (v30)
          {
            sub_100002A8C(v30);
          }
        }

        else
        {
          v31 = 0;
        }

        free(v31);
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v40 = qword_1000EB308;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_134;
      }

      *&v345.f_bsize = 0;
      v69 = sub_1000011A8(1);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v69;
      }

      else
      {
        v70 = v69 & 0xFFFFFFFE;
      }

      if (v70)
      {
        *buffer = 0;
        LODWORD(v332) = 2;
        v43 = _os_log_send_and_compose_impl(v70, &v345, 0, 0, &_mh_execute_header, v40, 0, "Cannot support more users, Delete some to make room for new ones. Bailing...", buffer, v332);
LABEL_130:
        v71 = v43;
        if (v43)
        {
          sub_100002A8C(v43);
        }

        goto LABEL_133;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v40 = qword_1000EB308;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_134;
      }

      *&v345.f_bsize = 0;
      v41 = sub_1000011A8(1);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        *buffer = 0;
        v43 = _os_log_send_and_compose_impl(v42, &v345, 0, 0, &_mh_execute_header, v40, 0, "Not in Shared iPad, user creation not allowed", buffer, 2);
        goto LABEL_130;
      }
    }

    v71 = 0;
LABEL_133:
    free(v71);
LABEL_134:

    v26 = -12;
    goto LABEL_573;
  }

  v10 = sub_100002454(v8, @"MKBUserSessionFileSystemSet");
  v11 = v10 != 0;
  v12 = sub_1000023E8(v9, kUMUserSessionIDKey);
  HIDWORD(v340) = v12;
  LODWORD(v340) = sub_1000023E8(v9, kUMUserSessionGroupIDKey);
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v9;
    v15 = a4;
    v16 = a1;
    *&v345.f_bsize = 0;
    v17 = sub_1000011A8(1);
    v18 = v13;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 0xFFFFFFFE;
    }

    if (v19)
    {
      *buffer = 67109120;
      *&buffer[4] = v12;
      v20 = _os_log_send_and_compose_impl(v19, &v345, 0, 0, &_mh_execute_header, v18, 0, "loadUserSession: Found existing Session with uid:%d", buffer);

      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {

      v20 = 0;
    }

    a1 = v16;
    free(v20);
    a4 = v15;
    v9 = v14;
  }

  if (sub_100002454(v9, kUMUserSessionDisabledKey))
  {
    CFRelease(v9);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v32 = qword_1000EB308;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_188;
    }

    *&v345.f_bsize = 0;
    v33 = sub_1000011A8(1);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 0xFFFFFFFE;
    }

    if (v34)
    {
      *buffer = 67109120;
      *&buffer[4] = HIDWORD(v340);
      v35 = _os_log_send_and_compose_impl(v34, &v345, 0, 0, &_mh_execute_header, v32, 0, "FAILED to Load usersession with uid %u as it is DISABLED USER", buffer);
      goto LABEL_50;
    }

LABEL_186:
    v36 = 0;
LABEL_187:
    free(v36);
LABEL_188:

    v26 = -4;
    goto LABEL_573;
  }

  if (!CFDictionaryContainsKey(v9, kUMUserSessionLanguageKey))
  {
    v37 = CFDictionaryContainsKey(a1, kUMUserSessionLanguageKey);
    v38 = kUMUserSessionLanguageKey;
    if (v37)
    {
      v39 = CFStringGetTypeID();
      sub_100027E10(v9, a1, v38, v39);
    }

    else
    {
      CFDictionarySetValue(v9, kUMUserSessionLanguageKey, @"en_US");
    }
  }

  if (HIDWORD(v340) == 501)
  {
    v54 = v9;
    if (v10)
    {
      goto LABEL_334;
    }

    CFDictionarySetValue(v9, @"MKBUserSessionFileSystemSet", kCFBooleanTrue);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v55 = qword_1000EB308;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *&v345.f_bsize = 0;
      v56 = sub_1000011A8(1);
      v57 = v55;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v56;
      }

      else
      {
        v58 = v56 & 0xFFFFFFFE;
      }

      if (v58)
      {
        *buffer = 0;
        v59 = _os_log_send_and_compose_impl(v58, &v345, 0, 0, &_mh_execute_header, v57, 0, "Set Primary User 501 with FileSystem..", buffer, 2);

        if (v59)
        {
          sub_100002A8C(v59);
        }
      }

      else
      {

        v59 = 0;
      }

      free(v59);
    }

    v11 = 1;
  }

  v54 = v9;
LABEL_334:
  v164 = sub_100088F2C(qword_1000EB608);
  v165 = sub_100089AC4(v164);
  v166 = HIDWORD(v340);

  if (v165 != v166)
  {
    CFDictionarySetValue(v54, kUMUserSessionForegroundKey, kCFBooleanFalse);
  }

  if (CFDictionaryContainsKey(a1, kUMUserSessionRequiresPasscodeKey))
  {
    v167 = sub_1000023E8(a1, kUMUserSessionRequiresPasscodeKey);
  }

  else
  {
    v167 = 60;
  }

  v168 = a4;
  v339 = v167;
  if (!v11)
  {
    v171 = CFUUIDCreate(0);
    v172 = CFUUIDCreateString(0, v171);
    if (v171)
    {
      CFRelease(v171);
    }

    bzero(buffer, 0x400uLL);
    CFStringGetCString(v172, buffer, 1024, 0x8000100u);
    if ((_os_feature_enabled_impl() & 1) != 0 || dword_1000EB5B0 == 1 && HIDWORD(v340) != 502)
    {
      LODWORD(v338[0]) = 0;
      if (![qword_1000EB2D8 createVolumeWithSession:v54 size:qword_1000EB5D8 << 20 userName:v172 error:v338 forPersona:0 userDataVolume:1])
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v178 = qword_1000EB308;
        if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 0;
          v179 = sub_1000011A8(1);
          v180 = v178;
          if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
          {
            v181 = v179;
          }

          else
          {
            v181 = v179 & 0xFFFFFFFE;
          }

          if (v181)
          {
            LODWORD(v343[0]) = 67109120;
            HIDWORD(v343[0]) = v338[0];
            v182 = _os_log_send_and_compose_impl(v181, valuePtr, 0, 0, &_mh_execute_header, v180, 0, "FAILED TO CREATE APFS VOLUME with error:%d, failing the creation of usersession", v343);

            if (v182)
            {
              sub_100002A8C(v182);
            }
          }

          else
          {

            v182 = 0;
          }

          free(v182);
        }

        v26 = v338[0];
        if (v54)
        {
          CFRelease(v54);
        }

        if (v172)
        {
          CFRelease(v172);
        }

        a4 = v168;
        goto LABEL_573;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v173 = qword_1000EB308;
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 0;
        v174 = sub_1000011A8(1);
        v175 = v173;
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
        {
          v176 = v174;
        }

        else
        {
          v176 = v174 & 0xFFFFFFFE;
        }

        if (v176)
        {
          LOWORD(v343[0]) = 0;
          LODWORD(v332) = 2;
          v177 = _os_log_send_and_compose_impl(v176, valuePtr, 0, 0, &_mh_execute_header, v175, 0, "Created new APFS volume", v343, v332);

          if (v177)
          {
            sub_100002A8C(v177);
          }
        }

        else
        {

          v177 = 0;
        }

        free(v177);
      }

      bzero(&v345, 0x400uLL);
      if (_os_feature_enabled_impl())
      {
        strcpy(&v345, "/var/mobile");
      }

      else
      {
        snprintf(&v345, 0x400uLL, "/var/Users/%s", buffer);
      }

      v220 = CFStringCreateWithCString(0, &v345, 0x8000100u);
      CFDictionarySetValue(v54, kUMUserSessionLibinfoHomeDirKey, v220);
      if (v220)
      {
        CFRelease(v220);
      }

      bzero(&v345, 0x400uLL);
      snprintf(&v345, 0x400uLL, "/private/var/Users/%s", buffer);
      v221 = CFStringCreateWithCString(0, &v345, 0x8000100u);
      CFDictionarySetValue(v54, kUMUserSessionHomeDirKey, v221);
      if (v221)
      {
        CFRelease(v221);
      }
    }

    if (!CFDictionaryContainsKey(v54, kUMUserSessionUserVolumeTypeKey))
    {
      CFDictionarySetValue(v54, kUMUserSessionUserVolumeTypeKey, qword_1000EB2F8);
    }

    if (v172)
    {
      CFRelease(v172);
    }

    v222 = CFDataCreate(kCFAllocatorDefault, bytes, v337);
    v223 = sub_100028584(v54, v222);
    if (v222)
    {
      CFRelease(v222);
    }

    if (v223)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v224 = qword_1000EB308;
      if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 0;
        v225 = sub_1000011A8(1);
        v226 = v224;
        if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
        {
          v227 = v225;
        }

        else
        {
          v227 = v225 & 0xFFFFFFFE;
        }

        if (v227)
        {
          LOWORD(v343[0]) = 0;
          LODWORD(v332) = 2;
          v228 = _os_log_send_and_compose_impl(v227, valuePtr, 0, 0, &_mh_execute_header, v226, 0, "Successfully created Identity, loaded and logged", v343, v332);

          if (v228)
          {
            sub_100002A8C(v228);
          }
        }

        else
        {

          v228 = 0;
        }

        free(v228);
      }

      if (!CFDictionaryContainsKey(v54, kUMUserSessionVolumeDeviceNodeKey))
      {
LABEL_518:
        v213 = &off_1000EB000;
        if (dword_1000EB5B0 != 1)
        {
LABEL_581:
          sub_10001F508(&v345, HIDWORD(v340), v340);
          CFDictionarySetValue(v54, @"MKBUserSessionFileSystemSet", kCFBooleanTrue);
          goto LABEL_582;
        }

        if (v339 >= 1 && (v244 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v339)) != 0)
        {
          v245 = v244;
          CFDictionarySetValue(v54, kUMUserSessionRequiresPasscodeKey, v244);
          CFRelease(v245);
        }

        else
        {
          v339 = 0;
        }

        v246 = sub_10007990C();
        v343[0] = v339;
        v247 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, v343);
        if (v247)
        {
          v248 = v247;
          CFDictionarySetValue(v246, @"GracePeriod", v247);
          CFRelease(v248);
        }

        v249 = sub_10008410C(-HIDWORD(v340), bytes, v337, v246);
        if (v246)
        {
          CFRelease(v246);
        }

        if (v249)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v250 = qword_1000EB308;
          if (!os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_580;
          }

          v251 = v9;
          v338[0] = 0;
          v252 = sub_1000011A8(1);
          v250 = v250;
          if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
          {
            v253 = v252;
          }

          else
          {
            v253 = v252 & 0xFFFFFFFE;
          }

          if (v253)
          {
            *valuePtr = 67109632;
            *&valuePtr[4] = v339;
            *&valuePtr[8] = 1024;
            *&valuePtr[10] = HIDWORD(v340);
            LOWORD(v342) = 1024;
            *(&v342 + 2) = v249;
            v254 = _os_log_send_and_compose_impl(v253, v338, 0, 0, &_mh_execute_header, v250, 0, "FAILED TO SET AKS update Graceperiod of %d secs FOR USER:%d with error:%d", valuePtr, 20, v333);

            if (v254)
            {
              sub_100002A8C(v254);
            }
          }

          else
          {

            v254 = 0;
          }

          v9 = v251;
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v250 = qword_1000EB308;
          if (!os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_580;
          }

          v338[0] = 0;
          v255 = sub_1000011A8(1);
          v250 = v250;
          if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
          {
            v256 = v255;
          }

          else
          {
            v256 = v255 & 0xFFFFFFFE;
          }

          if (v256)
          {
            *valuePtr = 67109376;
            *&valuePtr[4] = HIDWORD(v340);
            *&valuePtr[8] = 1024;
            *&valuePtr[10] = v339;
            v254 = _os_log_send_and_compose_impl(v256, v338, 0, 0, &_mh_execute_header, v250, 0, "SUCCESSFUL AKS update of Graceperiod FOR USER:%d with %d secs", valuePtr, 14);

            if (v254)
            {
              sub_100002A8C(v254);
            }
          }

          else
          {

            v254 = 0;
          }
        }

        free(v254);
LABEL_580:

        v213 = &off_1000EB000;
        goto LABEL_581;
      }

      if ([qword_1000EB2D8 mountVolumeWithSession:v54 mountPath:0 error:0 forPersona:0])
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v234 = qword_1000EB308;
        if (!os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_517;
        }

        *valuePtr = 0;
        v235 = sub_1000011A8(1);
        v234 = v234;
        if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
        {
          v236 = v235;
        }

        else
        {
          v236 = v235 & 0xFFFFFFFE;
        }

        if (v236)
        {
          LOWORD(v343[0]) = 0;
          LODWORD(v332) = 2;
          v237 = _os_log_send_and_compose_impl(v236, valuePtr, 0, 0, &_mh_execute_header, v234, 0, "APFSUser Volume mounted at home directory", v343, v332);
          goto LABEL_496;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v234 = qword_1000EB308;
        if (!os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_517;
        }

        *valuePtr = 0;
        v238 = sub_1000011A8(1);
        v234 = v234;
        if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
        {
          v239 = v238;
        }

        else
        {
          v239 = v238 & 0xFFFFFFFE;
        }

        if (v239)
        {
          LOWORD(v343[0]) = 0;
          LODWORD(v332) = 2;
          v237 = _os_log_send_and_compose_impl(v239, valuePtr, 0, 0, &_mh_execute_header, v234, 0, "APFSUser Volume failed to mount", v343, v332);
LABEL_496:
          v240 = v237;

          if (v240)
          {
            sub_100002A8C(v240);
          }

          goto LABEL_516;
        }
      }

      v240 = 0;
LABEL_516:
      free(v240);
LABEL_517:

      goto LABEL_518;
    }

    LODWORD(v338[0]) = 0;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v229 = qword_1000EB308;
    if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      v230 = sub_1000011A8(1);
      v231 = v229;
      if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
      {
        v232 = v230;
      }

      else
      {
        v232 = v230 & 0xFFFFFFFE;
      }

      if (v232)
      {
        LOWORD(v343[0]) = 0;
        LODWORD(v332) = 2;
        v233 = _os_log_send_and_compose_impl(v232, valuePtr, 0, 0, &_mh_execute_header, v231, 0, "Failed to load & login Identity, deleting volume", v343, v332);

        if (v233)
        {
          sub_100002A8C(v233);
        }
      }

      else
      {

        v233 = 0;
      }

      free(v233);
    }

    a4 = v168;
    if ([qword_1000EB2D8 deleteVolumeWithSession:v54 error:v338])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v198 = qword_1000EB308;
      if (!os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_570;
      }

      *valuePtr = 0;
      v257 = sub_1000011A8(1);
      v198 = v198;
      if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
      {
        v258 = v257;
      }

      else
      {
        v258 = v257 & 0xFFFFFFFE;
      }

      if (v258)
      {
        LOWORD(v343[0]) = 0;
        v259 = _os_log_send_and_compose_impl(v258, valuePtr, 0, 0, &_mh_execute_header, v198, 0, "Volume Deleted!");
        goto LABEL_565;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v198 = qword_1000EB308;
      if (!os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_570;
      }

      *valuePtr = 0;
      v260 = sub_1000011A8(1);
      v198 = v198;
      if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
      {
        v261 = v260;
      }

      else
      {
        v261 = v260 & 0xFFFFFFFE;
      }

      if (v261)
      {
        LODWORD(v343[0]) = 67109120;
        HIDWORD(v343[0]) = v338[0];
        v259 = _os_log_send_and_compose_impl(v261, valuePtr, 0, 0, &_mh_execute_header, v198, 0, "Volume delete failed with error:%d", v343);
LABEL_565:
        v262 = v259;

        if (v262)
        {
          sub_100002A8C(v262);
        }

        goto LABEL_568;
      }
    }

    v262 = 0;
LABEL_568:
    v219 = v262;
    goto LABEL_569;
  }

  if (bytes)
  {
    v169 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v339);
    if (CFDictionaryContainsKey(v54, kUMUserSessionRequiresPasscodeKey))
    {
      v170 = sub_1000023E8(v54, kUMUserSessionRequiresPasscodeKey);
      if (v170 != v339)
      {
        if (v339)
        {
          CFDictionaryReplaceValue(v54, kUMUserSessionRequiresPasscodeKey, v169);
        }

        else
        {
          CFDictionaryRemoveValue(v54, kUMUserSessionRequiresPasscodeKey);
        }
      }
    }

    else if (v339 >= 1)
    {
      CFDictionarySetValue(v54, kUMUserSessionRequiresPasscodeKey, v169);
    }

    if (v169)
    {
      CFRelease(v169);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v183 = qword_1000EB308;
  if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
  {
    *valuePtr = 0;
    v184 = sub_1000011A8(1);
    v185 = v183;
    if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
    {
      v186 = v184;
    }

    else
    {
      v186 = v184 & 0xFFFFFFFE;
    }

    if (v186)
    {
      v187 = "NULL";
      if (v337)
      {
        v188 = bytes == 0;
      }

      else
      {
        v188 = 1;
      }

      if (!v188)
      {
        v187 = "SECRET";
      }

      *buffer = 136315138;
      *&buffer[4] = v187;
      v189 = _os_log_send_and_compose_impl(v186, valuePtr, 0, 0, &_mh_execute_header, v185, 0, "load existing user OTI and unlock with passcode %s", buffer);

      if (v189)
      {
        sub_100002A8C(v189);
      }
    }

    else
    {

      v189 = 0;
    }

    free(v189);
  }

  v190 = v9;

  v191 = CFDataCreate(kCFAllocatorDefault, bytes, v337);
  v192 = sub_100028D8C(v54, v191);
  if (v191)
  {
    CFRelease(v191);
  }

  if (!v192)
  {
    a4 = v168;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v198 = qword_1000EB308;
    if (!os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_570;
    }

    *buffer = 0;
    v199 = sub_1000011A8(1);
    v200 = v198;
    if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
    {
      v201 = v199;
    }

    else
    {
      v201 = v199 & 0xFFFFFFFE;
    }

    if (v201)
    {
      *valuePtr = 0;
      LODWORD(v332) = 2;
      v202 = _os_log_send_and_compose_impl(v201, buffer, 0, 0, &_mh_execute_header, v200, 0, "Failed to login Identity, bailing", valuePtr, v332);

      if (v202)
      {
        sub_100002A8C(v202);
      }
    }

    else
    {

      v202 = 0;
    }

    v219 = v202;
LABEL_569:
    free(v219);
LABEL_570:

    if (v54)
    {
      CFRelease(v54);
    }

    v26 = 22;
    goto LABEL_573;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v193 = qword_1000EB308;
  if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 0;
    v194 = sub_1000011A8(1);
    v195 = v193;
    if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
    {
      v196 = v194;
    }

    else
    {
      v196 = v194 & 0xFFFFFFFE;
    }

    if (v196)
    {
      *valuePtr = 0;
      LODWORD(v332) = 2;
      v197 = _os_log_send_and_compose_impl(v196, buffer, 0, 0, &_mh_execute_header, v195, 0, "Successful Identity setup completed", valuePtr, v332);

      if (v197)
      {
        sub_100002A8C(v197);
      }
    }

    else
    {

      v197 = 0;
    }

    free(v197);
  }

  v203 = sub_100088F2C(qword_1000EB608);
  if ((sub_100089A48(v203) & 1) != 0 || HIDWORD(v340) != -1)
  {
    v204 = sub_100088F2C(qword_1000EB608);
    v205 = sub_100089AC4(v204);
    v206 = HIDWORD(v340);

    v188 = v205 == v206;
    v9 = v190;
    if (v188)
    {
      goto LABEL_418;
    }

    v212 = CFDictionaryContainsKey(v54, kUMUserSessionVolumeDeviceNodeKey);
    v213 = &off_1000EB000;
    if (!v212)
    {
      goto LABEL_582;
    }

    if ([qword_1000EB2D8 mountVolumeWithSession:v54 mountPath:0 error:0 forPersona:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v214 = qword_1000EB308;
      if (!os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_641;
      }

      *buffer = 0;
      v215 = sub_1000011A8(1);
      v216 = v214;
      if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
      {
        v217 = v215;
      }

      else
      {
        v217 = v215 & 0xFFFFFFFE;
      }

      if (v217)
      {
        *valuePtr = 0;
        LODWORD(v332) = 2;
        v218 = _os_log_send_and_compose_impl(v217, buffer, 0, 0, &_mh_execute_header, v216, 0, "APFSUser Volume mounted at home directory", valuePtr, v332);
        goto LABEL_513;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v214 = qword_1000EB308;
      if (!os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_641;
      }

      *buffer = 0;
      v241 = sub_1000011A8(1);
      v216 = v214;
      if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
      {
        v242 = v241;
      }

      else
      {
        v242 = v241 & 0xFFFFFFFE;
      }

      if (v242)
      {
        *valuePtr = 0;
        LODWORD(v332) = 2;
        v218 = _os_log_send_and_compose_impl(v242, buffer, 0, 0, &_mh_execute_header, v216, 0, "APFSUser Volume failed to mount", valuePtr, v332);
LABEL_513:
        v243 = v218;

        if (v243)
        {
          sub_100002A8C(v243);
        }

        goto LABEL_640;
      }
    }

    v243 = 0;
LABEL_640:
    free(v243);
    v9 = v190;
LABEL_641:

    goto LABEL_582;
  }

  v9 = v190;
LABEL_418:
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v207 = qword_1000EB308;
  if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 0;
    v208 = sub_1000011A8(1);
    v209 = v207;
    if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
    {
      v210 = v208;
    }

    else
    {
      v210 = v208 & 0xFFFFFFFE;
    }

    if (v210)
    {
      *valuePtr = 0;
      LODWORD(v332) = 2;
      v211 = _os_log_send_and_compose_impl(v210, buffer, 0, 0, &_mh_execute_header, v209, 0, "CurrentUser is also the loading Session, skip mounting volume", valuePtr, v332);

      if (v211)
      {
        sub_100002A8C(v211);
      }
    }

    else
    {

      v211 = 0;
    }

    free(v211);
    v9 = v190;
  }

  v213 = &off_1000EB000;
LABEL_582:
  v264 = sub_100079590(v54, kUMUserSessionHomeDirKey);
  sub_100070A64(v264, HIDWORD(v340), v340);
  if (*(v213 + 364) != 1)
  {
    if (!_os_feature_enabled_impl() || (sub_100088F2C(qword_1000EB608), v271 = objc_claimAutoreleasedReturnValue(), v272 = sub_100089AC4(v271), v273 = HIDWORD(v340), v271, v272 == v273))
    {
LABEL_675:
      if (v9)
      {
        return v54;
      }

      goto LABEL_676;
    }

    LODWORD(v343[0]) = 0;
    if ([qword_1000EB2D8 unmountVolumeWithSession:v54 mountPath:0 error:v343 force:1])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v274 = qword_1000EB308;
      if (!os_log_type_enabled(v274, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_674;
      }

      *valuePtr = 0;
      v275 = sub_1000011A8(1);
      v274 = v274;
      if (os_log_type_enabled(v274, OS_LOG_TYPE_DEFAULT))
      {
        v276 = v275;
      }

      else
      {
        v276 = v275 & 0xFFFFFFFE;
      }

      if (v276)
      {
        LOWORD(v338[0]) = 0;
        LODWORD(v332) = 2;
        v277 = _os_log_send_and_compose_impl(v276, valuePtr, 0, 0, &_mh_execute_header, v274, 0, "APFSUser Volume Unmounted at home directory", v338, v332);
        goto LABEL_613;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v274 = qword_1000EB308;
      if (!os_log_type_enabled(v274, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_674;
      }

      *valuePtr = 0;
      v278 = sub_1000011A8(1);
      v274 = v274;
      if (os_log_type_enabled(v274, OS_LOG_TYPE_DEFAULT))
      {
        v279 = v278;
      }

      else
      {
        v279 = v278 & 0xFFFFFFFE;
      }

      if (v279)
      {
        LOWORD(v338[0]) = 0;
        LODWORD(v332) = 2;
        v277 = _os_log_send_and_compose_impl(v279, valuePtr, 0, 0, &_mh_execute_header, v274, 0, "APFSUser Volume Unmount failed to mount", v338, v332);
LABEL_613:
        v280 = v277;

        if (v280)
        {
          sub_100002A8C(v280);
        }

        goto LABEL_638;
      }
    }

    v280 = 0;
LABEL_638:
    free(v280);
LABEL_674:

    goto LABEL_675;
  }

  if (!byte_1000EA3D8)
  {
LABEL_663:
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v274 = qword_1000EB308;
    if (os_log_type_enabled(v274, OS_LOG_TYPE_DEFAULT))
    {
      v298 = v9;
      v343[0] = 0;
      LODWORD(v9) = sub_1000011A8(1);
      v299 = v274;
      if (os_log_type_enabled(v299, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v9;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v300 = byte_1000EA3D8;
        v301 = sub_100002454(v54, kUMUserSessionHasSyncBagKey);
        *valuePtr = 67109376;
        *&valuePtr[4] = v300;
        *&valuePtr[8] = 1024;
        *&valuePtr[10] = v301;
        v302 = _os_log_send_and_compose_impl(v9, v343, 0, 0, &_mh_execute_header, v299, 0, "ALREADY HAS SYNC BAG or not APFS NATIVE VOLUME:%d,%d", valuePtr, 14);

        if (v302)
        {
          sub_100002A8C(v302);
        }
      }

      else
      {

        v302 = 0;
      }

      free(v302);
      v9 = v298;
    }

    goto LABEL_674;
  }

  if (sub_100002454(v54, kUMUserSessionHasSyncBagKey) == 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v265 = qword_1000EB308;
    if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
    {
      v266 = v9;
      *valuePtr = 0;
      v267 = sub_1000011A8(1);
      v268 = v265;
      if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
      {
        v269 = v267;
      }

      else
      {
        v269 = v267 & 0xFFFFFFFE;
      }

      if (v269)
      {
        LOWORD(v343[0]) = 0;
        LODWORD(v332) = 2;
        v270 = _os_log_send_and_compose_impl(v269, valuePtr, 0, 0, &_mh_execute_header, v268, 0, "The user has Syncbag, verifying its existence", v343, v332);

        if (v270)
        {
          sub_100002A8C(v270);
        }
      }

      else
      {

        v270 = 0;
      }

      free(v270);
      v9 = v266;
    }

    if (sub_100002454(v54, kUMUserSessionHasSyncBagKey))
    {
      if (MKBUserSessionVerifySyncBagForUser())
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v281 = qword_1000EB308;
        if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
        {
          v282 = v9;
          *valuePtr = 0;
          v283 = sub_1000011A8(1);
          v284 = v281;
          if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
          {
            v285 = v283;
          }

          else
          {
            v285 = v283 & 0xFFFFFFFE;
          }

          if (v285)
          {
            LODWORD(v343[0]) = 67109120;
            HIDWORD(v343[0]) = HIDWORD(v340);
            v286 = _os_log_send_and_compose_impl(v285, valuePtr, 0, 0, &_mh_execute_header, v284, 0, "User %d has no valid Syncbag will need to create a new syncbag entry", v343);

            if (v286)
            {
              sub_100002A8C(v286);
            }
          }

          else
          {

            v286 = 0;
          }

          free(v286);
          v9 = v282;
        }

        CFDictionarySetValue(v54, kUMUserSessionHasSyncBagKey, kCFBooleanFalse);
        goto LABEL_661;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v287 = qword_1000EB308;
      if (os_log_type_enabled(v287, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 0;
        v288 = sub_1000011A8(1);
        if (os_log_type_enabled(v287, OS_LOG_TYPE_DEFAULT))
        {
          v289 = v288;
        }

        else
        {
          v289 = v288 & 0xFFFFFFFE;
        }

        if (v289)
        {
          LOWORD(v343[0]) = 0;
          LODWORD(v332) = 2;
          v290 = _os_log_send_and_compose_impl(v289, valuePtr, 0, 0, &_mh_execute_header, v287, 0, "Session has no SyncBag (kUMUserSessionHasSyncBagKey=false), nothing to verify", v343, v332);
          v291 = v290;
          if (v290)
          {
            sub_100002A8C(v290);
          }
        }

        else
        {
          v291 = 0;
        }

        free(v291);
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v292 = qword_1000EB308;
    if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
    {
      v293 = v9;
      *valuePtr = 0;
      v294 = sub_1000011A8(1);
      v295 = v292;
      if (os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
      {
        v296 = v294;
      }

      else
      {
        v296 = v294 & 0xFFFFFFFE;
      }

      if (v296)
      {
        LODWORD(v343[0]) = 67109120;
        HIDWORD(v343[0]) = HIDWORD(v340);
        v297 = _os_log_send_and_compose_impl(v296, valuePtr, 0, 0, &_mh_execute_header, v295, 0, "User %d has valid Syncbag will skip creation of syncbag", v343);

        if (v297)
        {
          sub_100002A8C(v297);
        }
      }

      else
      {

        v297 = 0;
      }

      free(v297);
      v9 = v293;
    }
  }

LABEL_661:
  if (!byte_1000EA3D8 || sub_100002454(v54, kUMUserSessionHasSyncBagKey))
  {
    goto LABEL_663;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v308 = qword_1000EB308;
  if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
  {
    v309 = v9;
    *valuePtr = 0;
    v310 = sub_1000011A8(1);
    v311 = v308;
    if (os_log_type_enabled(v311, OS_LOG_TYPE_DEFAULT))
    {
      v312 = v310;
    }

    else
    {
      v312 = v310 & 0xFFFFFFFE;
    }

    if (v312)
    {
      LODWORD(v343[0]) = 67109120;
      HIDWORD(v343[0]) = HIDWORD(v340);
      v313 = _os_log_send_and_compose_impl(v312, valuePtr, 0, 0, &_mh_execute_header, v311, 0, "Need to create SyncBag for User:%d", v343);

      if (v313)
      {
        sub_100002A8C(v313);
      }
    }

    else
    {

      v313 = 0;
    }

    free(v313);
    v9 = v309;
  }

  if (sub_1000299FC(v54, HIDWORD(v340)))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v274 = qword_1000EB308;
    if (os_log_type_enabled(v274, OS_LOG_TYPE_DEFAULT))
    {
      v321 = v9;
      *valuePtr = 0;
      v322 = sub_1000011A8(1);
      v323 = v274;
      if (os_log_type_enabled(v323, OS_LOG_TYPE_DEFAULT))
      {
        v324 = v322;
      }

      else
      {
        v324 = v322 & 0xFFFFFFFE;
      }

      if (v324)
      {
        LODWORD(v343[0]) = 67109120;
        HIDWORD(v343[0]) = HIDWORD(v340);
        v325 = _os_log_send_and_compose_impl(v324, valuePtr, 0, 0, &_mh_execute_header, v323, 0, "Failed to create SyncBag for user:%d", v343);

        if (v325)
        {
          sub_100002A8C(v325);
        }
      }

      else
      {

        v325 = 0;
      }

      free(v325);
      v9 = v321;
    }

    goto LABEL_674;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v326 = qword_1000EB308;
  if (os_log_type_enabled(v326, OS_LOG_TYPE_DEFAULT))
  {
    v327 = v9;
    *valuePtr = 0;
    v328 = sub_1000011A8(1);
    v329 = v326;
    if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
    {
      v330 = v328;
    }

    else
    {
      v330 = v328 & 0xFFFFFFFE;
    }

    if (v330)
    {
      LODWORD(v343[0]) = 67109120;
      HIDWORD(v343[0]) = HIDWORD(v340);
      v331 = _os_log_send_and_compose_impl(v330, valuePtr, 0, 0, &_mh_execute_header, v329, 0, "Created SyncBag successfully for user:%d", v343);

      if (v331)
      {
        sub_100002A8C(v331);
      }
    }

    else
    {

      v331 = 0;
    }

    free(v331);
    v9 = v327;
  }

  CFDictionarySetValue(v54, kUMUserSessionHasSyncBagKey, kCFBooleanTrue);
  if (!v9)
  {
LABEL_676:
    sub_10001FC24(v54, 1);
    sub_10008B3A4(qword_1000EB2E0, v54);
    sub_10001FCBC();
    sub_100018C80();
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v303 = qword_1000EB318;
    if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      v304 = sub_1000011A8(1);
      v305 = v303;
      if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
      {
        v306 = v304;
      }

      else
      {
        v306 = v304 & 0xFFFFFFFE;
      }

      if (v306)
      {
        LODWORD(v343[0]) = 67109120;
        HIDWORD(v343[0]) = HIDWORD(v340);
        v307 = _os_log_send_and_compose_impl(v306, valuePtr, 0, 0, &_mh_execute_header, v305, 0, "Created user %u", v343);

        if (v307)
        {
          sub_100002A8C(v307);
        }
      }

      else
      {

        v307 = 0;
      }

      free(v307);
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v314 = qword_1000EB308;
    if (os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
    {
      v343[0] = 0;
      v315 = sub_1000011A8(1);
      v316 = v314;
      if (os_log_type_enabled(v316, OS_LOG_TYPE_DEFAULT))
      {
        v317 = v315;
      }

      else
      {
        v317 = v315 & 0xFFFFFFFE;
      }

      if (v317)
      {
        *valuePtr = 136315394;
        *&valuePtr[4] = "loadUserSession";
        *&valuePtr[12] = 2080;
        v342 = kMobileKeyBagUserChangedNotificationToken;
        LODWORD(v332) = 22;
        v318 = _os_log_send_and_compose_impl(v317, v343, 0, 0, &_mh_execute_header, v316, 0, "usermanagerd %s posting notification: %s\n", valuePtr, v332);

        if (v318)
        {
          sub_100002A8C(v318);
        }
      }

      else
      {

        v318 = 0;
      }

      free(v318);
    }

    v319 = sub_10008900C(qword_1000EB608);
    v320 = [NSString stringWithUTF8String:kMobileKeyBagUserChangedNotificationToken];
    [v319 post:v320];
  }

  return v54;
}

uint64_t sub_100027E10(__CFDictionary *a1, CFDictionaryRef theDict, void *key, uint64_t a4)
{
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (CFGetTypeID(Value) == a4)
    {
      if (CFDictionaryContainsKey(a1, key))
      {
        CFDictionaryReplaceValue(a1, key, Value);
      }

      else
      {
        CFDictionarySetValue(a1, key, Value);
      }

      return 1;
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v10 = qword_1000EB308;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v11 = sub_1000011A8(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v16 = 138412290;
          v17 = key;
          v13 = _os_log_send_and_compose_impl(v12, &v15, 0, 0, &_mh_execute_header, v10, 0, "Error: _setAttributeOfType:Incorrect Type for the key %@", &v16, 12);
          v14 = v13;
          if (v13)
          {
            sub_100002A8C(v13);
          }
        }

        else
        {
          v14 = 0;
        }

        free(v14);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100027FB0()
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  valuePtr = 0;
  v0 = qword_1000EB308;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 0;
    v1 = sub_1000011A8(1);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v1;
    }

    else
    {
      v2 = v1 & 0xFFFFFFFE;
    }

    if (v2)
    {
      LOWORD(v40) = 0;
      v3 = _os_log_send_and_compose_impl(v2, &v38, 0, 0, &_mh_execute_header, v0, 0, "Trying to MAKE SPACE FOR NEWUSER", &v40, 2);
      v4 = v3;
      if (v3)
      {
        sub_100002A8C(v3);
      }
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }

  if (!qword_1000EB5C8)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        LOWORD(v40) = 0;
        LODWORD(v37) = 2;
        v14 = _os_log_send_and_compose_impl(v13, &v38, 0, 0, &_mh_execute_header, v11, 0, "No USERs in LRU TABLE, returning", &v40, v37);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    return 0;
  }

  if (CFArrayGetCount(qword_1000EB5C8) < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5C8, v5);
    if (!ValueAtIndex)
    {
      goto LABEL_21;
    }

    v7 = ValueAtIndex;
    v8 = CFGetTypeID(ValueAtIndex);
    if (v8 != CFNumberGetTypeID())
    {
      goto LABEL_21;
    }

    if (!CFNumberGetValue(v7, kCFNumberIntType, &valuePtr))
    {
      goto LABEL_21;
    }

    v9 = sub_10008A2F4(qword_1000EB2E0, valuePtr);
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = v9;
    if (!sub_100002454(v9, kUMUserSessionDirtyKey))
    {
      break;
    }

    CFRelease(v10);
LABEL_21:
    if (CFArrayGetCount(qword_1000EB5C8) <= ++v5)
    {
      return 0;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v18 = qword_1000EB308;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 0;
    v19 = sub_1000011A8(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v40 = 67109120;
      v41 = valuePtr;
      v21 = _os_log_send_and_compose_impl(v20, &v38, 0, 0, &_mh_execute_header, v18, 0, "found a clean Usersession with uid=%d for deletion", &v40);
      v22 = v21;
      if (v21)
      {
        sub_100002A8C(v21);
      }
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v23 = qword_1000EB308;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 0;
    v24 = sub_1000011A8(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v40 = 67109120;
      v41 = valuePtr;
      v26 = _os_log_send_and_compose_impl(v25, &v38, 0, 0, &_mh_execute_header, v23, 0, "FOUND user:%d to delete, trying deletion", &v40);
      v27 = v26;
      if (v26)
      {
        sub_100002A8C(v26);
      }
    }

    else
    {
      v27 = 0;
    }

    free(v27);
  }

  if (sub_10002AB94(v10) == 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v28 = qword_1000EB308;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v29 = sub_1000011A8(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        v40 = 67109120;
        v41 = valuePtr;
        v31 = _os_log_send_and_compose_impl(v30, &v38, 0, 0, &_mh_execute_header, v28, 0, "User:%d Deletion successful", &v40);
        v32 = v31;
        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v32 = 0;
      }

      free(v32);
    }

    v16 = 1;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v28 = qword_1000EB308;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        v40 = 67109120;
        v41 = valuePtr;
        v35 = _os_log_send_and_compose_impl(v34, &v38, 0, 0, &_mh_execute_header, v28, 0, "User:%d Deletion FAILED", &v40);
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }

    v16 = 0;
  }

  CFRelease(v10);
  return v16;
}

BOOL sub_100028584(const __CFDictionary *a1, uint64_t a2)
{
  v4 = sub_100079590(a1, kUMUserSessionUUIDKey);
  v5 = sub_1000023E8(a1, kMKBUserSessionIDKey);
  if (v4)
  {
    v6 = v5;
    v7 = sub_100016954(NSUUID, v4);
    if (v7)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v8 = qword_1000EB308;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        v9 = sub_1000011A8(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          LOWORD(v62[0]) = 0;
          v11 = _os_log_send_and_compose_impl(v10, v63, 0, 0, &_mh_execute_header, v8, 0, "GOT UUID from uuidstring", v62, 2);
          v12 = v11;
          if (v11)
          {
            sub_100002A8C(v11);
          }
        }

        else
        {
          v12 = 0;
        }

        free(v12);
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v23 = qword_1000EB308;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v62[0] = 0;
        v24 = sub_1000011A8(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          *v63 = 138412546;
          *&v63[4] = v7;
          v64 = 1024;
          v65 = v6;
          LODWORD(v58) = 18;
          v26 = _os_log_send_and_compose_impl(v25, v62, 0, 0, &_mh_execute_header, v23, 0, "AKS Identity setup in progress, creating Identity for user:%@ (%d)", v63, v58);
          v27 = v26;
          if (v26)
          {
            sub_100002A8C(v26);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }

      v28 = _os_feature_enabled_impl();
      v29 = sub_100089A80(qword_1000EB608);
      v30 = v29;
      if (v28)
      {
        v61 = 0;
        v31 = [v29 createIdentityWithUUID:v7 passcode:0 existingSession:sub_10008A58C(qword_1000EB2E0) existingSessionPasscode:a2 isACMCredential:0 error:&v61];
        v32 = v61;
      }

      else
      {
        v60 = 0;
        v31 = [v29 createIdentityWithUUID:v7 passcode:a2 existingSession:502 existingSessionPasscode:0 isACMCredential:0 error:&v60];
        v32 = v60;
      }

      v13 = v32;

      if (v31)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v33 = qword_1000EB308;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v63 = 0;
          v34 = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v34;
          }

          else
          {
            v35 = v34 & 0xFFFFFFFE;
          }

          if (v35)
          {
            LOWORD(v62[0]) = 0;
            LODWORD(v58) = 2;
            v36 = _os_log_send_and_compose_impl(v35, v63, 0, 0, &_mh_execute_header, v33, 0, "Successfully created Identity, login..", v62, v58);
            v37 = v36;
            if (v36)
            {
              sub_100002A8C(v36);
            }
          }

          else
          {
            v37 = 0;
          }

          free(v37);
        }

        if (_os_feature_enabled_impl())
        {
          v44 = 0;
        }

        else
        {
          v44 = a2;
        }

        v45 = sub_100028D8C(a1, v44);
        if (v45)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v46 = qword_1000EB308;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *v63 = 0;
            v47 = sub_1000011A8(1);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v48 = v47;
            }

            else
            {
              v48 = v47 & 0xFFFFFFFE;
            }

            if (v48)
            {
              LOWORD(v62[0]) = 0;
              LODWORD(v58) = 2;
              v49 = _os_log_send_and_compose_impl(v48, v63, 0, 0, &_mh_execute_header, v46, 0, "Identity login success!", v62, v58);
              v50 = v49;
              if (v49)
              {
                sub_100002A8C(v49);
              }
            }

            else
            {
              v50 = 0;
            }

            free(v50);
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v51 = qword_1000EB308;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *v63 = 0;
            v52 = sub_1000011A8(1);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v53 = v52;
            }

            else
            {
              v53 = v52 & 0xFFFFFFFE;
            }

            if (v53)
            {
              LOWORD(v62[0]) = 0;
              LODWORD(v58) = 2;
              v54 = _os_log_send_and_compose_impl(v53, v63, 0, 0, &_mh_execute_header, v51, 0, "Identity login failed, delete and bail", v62, v58);
              v55 = v54;
              if (v54)
              {
                sub_100002A8C(v54);
              }
            }

            else
            {
              v55 = 0;
            }

            free(v55);
          }

          v46 = sub_100089A80(qword_1000EB608);
          v59 = v13;
          [v46 deleteIdentity:v7 error:&v59];
          v56 = v59;

          v13 = v56;
        }

        v43 = v45 != 0;

        goto LABEL_105;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v38 = qword_1000EB308;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v62[0] = 0;
        LODWORD(v39) = sub_1000011A8(1);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v39;
        }

        else
        {
          v39 = v39 & 0xFFFFFFFE;
        }

        if (v39)
        {
          v40 = v38;
          v41 = [v13 code];
          *v63 = 138412802;
          *&v63[4] = v7;
          v64 = 1024;
          v65 = v6;
          v66 = 2048;
          v67 = v41;
          LODWORD(v58) = 28;
          v42 = _os_log_send_and_compose_impl(v39, v62, 0, 0, &_mh_execute_header, v40, 0, "AKS Identity create for user:%@ (%d) failed:%ld, bailing", v63, v58);

          if (v42)
          {
            sub_100002A8C(v42);
          }
        }

        else
        {
          v42 = 0;
        }

        free(v42);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v18 = qword_1000EB308;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          LOWORD(v62[0]) = 0;
          v21 = _os_log_send_and_compose_impl(v20, v63, 0, 0, &_mh_execute_header, v18, 0, "NULL UUID, failure, bailing", v62, 2);
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v13 = 0;
    }

    v43 = 0;
LABEL_105:

    goto LABEL_106;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v63 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      LOWORD(v62[0]) = 0;
      v16 = _os_log_send_and_compose_impl(v15, v63, 0, 0, &_mh_execute_header, v13, 0, "No UUID for the primary, bail", v62, 2);
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  v43 = 0;
LABEL_106:

  return v43;
}

uint64_t sub_100028D8C(const __CFDictionary *a1, uint64_t a2)
{
  v4 = sub_100079590(a1, kUMUserSessionUUIDKey);
  v5 = sub_1000023E8(a1, kMKBUserSessionIDKey);
  if (v5 != sub_10008A58C(qword_1000EB2E0))
  {
    if (v4)
    {
      v11 = sub_100079590(a1, kUMUserSessionVolumeDeviceNodeKey);
      if (v11)
      {
        v12 = v11;
        v13 = sub_100016954(NSUUID, v4);
        if (v13)
        {
          v14 = v13;
          if (qword_1000EB310 != -1)
          {
            sub_100089D14();
          }

          v15 = qword_1000EB308;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v86 = 0;
            v16 = sub_1000011A8(1);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v17 = v16;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFE;
            }

            if (v17)
            {
              LOWORD(v87) = 0;
              v18 = _os_log_send_and_compose_impl(v17, v86, 0, 0, &_mh_execute_header, v15, 0, "GOT UUID from uuidstring", &v87, 2);
              v19 = v18;
              if (v18)
              {
                sub_100002A8C(v18);
              }
            }

            else
            {
              v19 = 0;
            }

            free(v19);
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v37 = qword_1000EB308;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v86 = 0;
            v38 = sub_1000011A8(1);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v38;
            }

            else
            {
              v39 = v38 & 0xFFFFFFFE;
            }

            if (v39)
            {
              LODWORD(v87) = 67109120;
              HIDWORD(v87) = v5;
              v40 = _os_log_send_and_compose_impl(v39, v86, 0, 0, &_mh_execute_header, v37, 0, "Calling AKSIdentity Login for uid:%d", &v87);
              v41 = v40;
              if (v40)
              {
                sub_100002A8C(v40);
              }
            }

            else
            {
              v41 = 0;
            }

            free(v41);
          }

          v42 = sub_100089A80(qword_1000EB608);
          v84 = 0;
          v43 = [v42 loginIdentity:v14 intoSession:v5 passcode:a2 isACMCredential:0 error:&v84];
          v44 = v84;

          if (!v43)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v50 = qword_1000EB308;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v87 = 0;
              LODWORD(v51) = sub_1000011A8(1);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v51 = v51;
              }

              else
              {
                v51 = v51 & 0xFFFFFFFE;
              }

              if (v51)
              {
                v52 = v50;
                v53 = [v44 code];
                *v86 = 134217984;
                *&v86[4] = v53;
                v54 = _os_log_send_and_compose_impl(v51, &v87, 0, 0, &_mh_execute_header, v52, 0, "AKS Identity Login failed:%ld", v86);

                if (v54)
                {
                  sub_100002A8C(v54);
                }
              }

              else
              {
                v54 = 0;
              }

              free(v54);
            }

            v28 = 0;
            v27 = v44;
            goto LABEL_68;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v45 = qword_1000EB308;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *v86 = 0;
            v46 = sub_1000011A8(1);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v47 = v46;
            }

            else
            {
              v47 = v46 & 0xFFFFFFFE;
            }

            if (v47)
            {
              LOWORD(v87) = 0;
              LODWORD(v81) = 2;
              v48 = _os_log_send_and_compose_impl(v47, v86, 0, 0, &_mh_execute_header, v45, 0, "IdentityLogin Succeeded and onto volumeMap..", &v87, v81);
              v49 = v48;
              if (v48)
              {
                sub_100002A8C(v48);
              }
            }

            else
            {
              v49 = 0;
            }

            free(v49);
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v55 = qword_1000EB308;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v87 = 0;
            v56 = sub_1000011A8(1);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v57 = v56;
            }

            else
            {
              v57 = v56 & 0xFFFFFFFE;
            }

            if (v57)
            {
              *v86 = 138412546;
              *&v86[4] = v12;
              *&v86[12] = 1024;
              *&v86[14] = v5;
              LODWORD(v81) = 18;
              v58 = _os_log_send_and_compose_impl(v57, &v87, 0, 0, &_mh_execute_header, v55, 0, "Calling AKSVolumeMap with disk:%@, uid:%d", v86, v81);
              v59 = v58;
              if (v58)
              {
                sub_100002A8C(v58);
              }
            }

            else
            {
              v59 = 0;
            }

            free(v59);
          }

          v60 = sub_100089A80(qword_1000EB608);
          v83 = v44;
          v61 = [v60 mapVolume:v12 toSession:v5 withPersona:0 error:&v83];
          v27 = v83;

          if (v61)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v62 = qword_1000EB308;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *v86 = 0;
              v63 = sub_1000011A8(1);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                v64 = v63;
              }

              else
              {
                v64 = v63 & 0xFFFFFFFE;
              }

              if (v64)
              {
                LOWORD(v87) = 0;
                LODWORD(v81) = 2;
                v65 = _os_log_send_and_compose_impl(v64, v86, 0, 0, &_mh_execute_header, v62, 0, "AKS VolumeMapPath Success, IdentityLogin success", &v87, v81);
                v66 = v65;
                if (v65)
                {
                  sub_100002A8C(v65);
                }
              }

              else
              {
                v66 = 0;
              }

              free(v66);
            }

            v28 = 1;
            goto LABEL_68;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v67 = qword_1000EB308;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v87 = 0;
            LODWORD(v68) = sub_1000011A8(1);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = v68;
            }

            else
            {
              v68 = v68 & 0xFFFFFFFE;
            }

            if (v68)
            {
              v69 = v67;
              v70 = [v27 code];
              *v86 = 134217984;
              *&v86[4] = v70;
              v71 = _os_log_send_and_compose_impl(v68, &v87, 0, 0, &_mh_execute_header, v69, 0, "AKS VolumeMap failed with %ld, error out IdentityLogin", v86);

              if (v71)
              {
                sub_100002A8C(v71);
              }
            }

            else
            {
              v71 = 0;
            }

            free(v71);
          }

          v72 = sub_100089A80(qword_1000EB608);
          v82 = 0;
          v73 = [v72 unloadIdentityFromSession:v5 error:&v82];
          v27 = v82;

          if (v73)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v74 = qword_1000EB308;
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_163;
            }

            *v86 = 0;
            v75 = sub_1000011A8(1);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v76 = v75;
            }

            else
            {
              v76 = v75 & 0xFFFFFFFE;
            }

            if (v76)
            {
              LOWORD(v87) = 0;
              LODWORD(v81) = 2;
              v77 = _os_log_send_and_compose_impl(v76, v86, 0, 0, &_mh_execute_header, v74, 0, "Unloaded identity success after volume map error", &v87, v81);
              if (!v77)
              {
                goto LABEL_162;
              }

              goto LABEL_160;
            }
          }

          else
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v74 = qword_1000EB308;
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_163;
            }

            v87 = 0;
            LODWORD(v78) = sub_1000011A8(1);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v78 = v78;
            }

            else
            {
              v78 = v78 & 0xFFFFFFFE;
            }

            if (v78)
            {
              v79 = v74;
              v80 = [v27 code];
              *v86 = 134217984;
              *&v86[4] = v80;
              v77 = _os_log_send_and_compose_impl(v78, &v87, 0, 0, &_mh_execute_header, v79, 0, "Unload of identity failed with error:%ld after volume map error", v86);

              if (!v77)
              {
LABEL_162:
                free(v77);
LABEL_163:

                goto LABEL_67;
              }

LABEL_160:
              sub_100002A8C(v77);
              goto LABEL_162;
            }
          }

          v77 = 0;
          goto LABEL_162;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v14 = qword_1000EB308;
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
LABEL_64:
          v27 = 0;
LABEL_67:
          v28 = 0;
LABEL_68:

          goto LABEL_69;
        }

        *v86 = 0;
        v33 = sub_1000011A8(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
        }

        else
        {
          v34 = v33 & 0xFFFFFFFE;
        }

        if (v34)
        {
          LOWORD(v87) = 0;
          v22 = _os_log_send_and_compose_impl(v34, v86, 0, 0, &_mh_execute_header, v14, 0, "NULL UUID, failure, bailing", &v87, 2);
LABEL_60:
          v35 = v22;
          if (v22)
          {
            sub_100002A8C(v22);
          }

          goto LABEL_63;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v14 = qword_1000EB308;
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_64;
        }

        *v86 = 0;
        v23 = sub_1000011A8(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          LOWORD(v87) = 0;
          v22 = _os_log_send_and_compose_impl(v24, v86, 0, 0, &_mh_execute_header, v14, 0, "not able to find the diskNode,  error out IdentityLogin", &v87, 2);
          goto LABEL_60;
        }
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v14 = qword_1000EB308;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }

      *v86 = 0;
      v20 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        LOWORD(v87) = 0;
        v22 = _os_log_send_and_compose_impl(v21, v86, 0, 0, &_mh_execute_header, v14, 0, "No UUID for the primary, bail", &v87, 2);
        goto LABEL_60;
      }
    }

    v35 = 0;
LABEL_63:
    free(v35);
    goto LABEL_64;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v86 = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      LOWORD(v87) = 0;
      v9 = _os_log_send_and_compose_impl(v8, v86, 0, 0, &_mh_execute_header, v6, 0, "Loading the current foreGroundUser again, skipping AKSIdentityLoad and volumemap. Unlocking it", &v87, 2);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  v25 = sub_100089A80(qword_1000EB608);
  v85 = 0;
  v26 = [v25 unlockIdentityInSession:v5 passcode:a2 isACMCredential:0 error:&v85];
  v27 = v85;

  if ((v26 & 1) == 0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v14 = qword_1000EB308;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v87 = 0;
      LODWORD(v29) = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v29;
      }

      else
      {
        v29 = v29 & 0xFFFFFFFE;
      }

      if (v29)
      {
        v30 = v14;
        v31 = [v27 code];
        *v86 = 67109376;
        *&v86[4] = -v5;
        *&v86[8] = 2048;
        *&v86[10] = v31;
        LODWORD(v81) = 18;
        v32 = _os_log_send_and_compose_impl(v29, &v87, 0, 0, &_mh_execute_header, v30, 0, "failed to unlock session bag:%d handle with error:0x%lx", v86, v81);

        if (v32)
        {
          sub_100002A8C(v32);
        }
      }

      else
      {
        v32 = 0;
      }

      free(v32);
    }

    goto LABEL_67;
  }

  v28 = 1;
LABEL_69:

  return v28;
}

uint64_t sub_1000299FC(const __CFDictionary *a1, uint64_t a2)
{
  v2 = a2;
  if (sub_100002454(a1, kUMUserSessionHasSyncBagKey))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v4 = qword_1000EB308;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v20 = 0;
    v5 = sub_1000011A8(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      LOWORD(v19[0]) = 0;
      v7 = _os_log_send_and_compose_impl(v6, &v20, 0, 0, &_mh_execute_header, v4, 0, "SyncBag exists, skipping...", v19, 2, v19[0]);
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  SyncBagForUser = MKBUserSessionCreateSyncBagForUser();
  if (!SyncBagForUser)
  {
    CFDictionarySetValue(a1, kUMUserSessionHasSyncBagKey, kCFBooleanTrue);
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v4 = qword_1000EB308;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v20 = 0;
    v15 = sub_1000011A8(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      LOWORD(v19[0]) = 0;
      v7 = _os_log_send_and_compose_impl(v16, &v20, 0, 0, &_mh_execute_header, v4, 0, "SyncBag Creation completed", v19, 2, v19[0]);
LABEL_10:
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }

      goto LABEL_31;
    }

LABEL_30:
    v8 = 0;
LABEL_31:
    free(v8);
LABEL_32:
    v17 = 0;
    goto LABEL_36;
  }

  v10 = SyncBagForUser;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v4 = qword_1000EB308;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      LODWORD(v20) = 67109376;
      HIDWORD(v20) = v2;
      v21 = 1024;
      v22 = v10;
      v13 = _os_log_send_and_compose_impl(v12, v19, 0, 0, &_mh_execute_header, v4, 0, "failed to retrieve SyncBag content from keybag for uid %d: with error: 0x%x", &v20, 14);
      v14 = v13;
      if (v13)
      {
        sub_100002A8C(v13);
      }
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }

  v17 = 0xFFFFFFFFLL;
LABEL_36:

  return v17;
}

uint64_t sub_100029CC8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = -1;
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v3[3] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100029D98;
  v2[3] = &unk_1000DD458;
  v2[4] = v3;
  v2[5] = &v4;
  dispatch_sync(qword_1000EB610, v2);
  v0 = *(v5 + 6);
  _Block_object_dispose(v3, 8);
  _Block_object_dispose(&v4, 8);
  return v0;
}

void sub_100029D98(uint64_t a1)
{
  dispatch_assert_queue_V2(qword_1000EB610);
  if (byte_1000EB2F0 == 1)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D90();
    }

    v2 = qword_1000EB318;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *v32 = 0;
    v3 = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      LOWORD(v31[0]) = 0;
      v5 = _os_log_send_and_compose_impl(v4, v32, 0, 0, &_mh_execute_header, v2, 16, "Failed to switch user: user switch already in progress", v31, 2, v31[0]);
      goto LABEL_53;
    }

    goto LABEL_55;
  }

  v6 = sub_10008A2F4(qword_1000EB2E0, 502);
  *(*(*(a1 + 32) + 8) + 24) = v6;
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (dword_1000EB5B0 == 1)
  {
    if (v8)
    {
LABEL_14:
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v9 = qword_1000EB308;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        v10 = sub_1000011A8(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (v11)
        {
          LOWORD(v31[0]) = 0;
          v12 = _os_log_send_and_compose_impl(v11, v32, 0, 0, &_mh_execute_header, v9, 0, "LOGINWINDOW User EXISTS ALREADY, setting up for switch", v31, 2);
          v13 = v12;
          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }

      goto LABEL_35;
    }

    sub_100089DA4(v6, v7);
  }

  if (v8)
  {
    goto LABEL_14;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v14 = qword_1000EB308;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    v15 = sub_1000011A8(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      LOWORD(v31[0]) = 0;
      v17 = _os_log_send_and_compose_impl(v16, v32, 0, 0, &_mh_execute_header, v14, 0, "LoginWindow does not exist, creating a static session", v31, 2);
      v18 = v17;
      if (v17)
      {
        sub_100002A8C(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  *(*(*(a1 + 32) + 8) + 24) = sub_10001D4F4(0xFFFFFFFFLL, 0);
LABEL_35:
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v2 = qword_1000EB308;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    *v32 = 0;
    v25 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      LOWORD(v31[0]) = 0;
      LODWORD(v30) = 2;
      v5 = _os_log_send_and_compose_impl(v26, v32, 0, 0, &_mh_execute_header, v2, 0, " Failed to create new LOGIN WINDOW User and it does not exist, loginwindow switch failed", v31, v30, v31[0]);
LABEL_53:
      v27 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }

      goto LABEL_56;
    }

LABEL_55:
    v27 = 0;
LABEL_56:
    free(v27);
LABEL_57:

    return;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v19 = qword_1000EB308;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v31[0] = 0;
    v20 = sub_1000011A8(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      v22 = *(*(*(a1 + 32) + 8) + 24);
      *v32 = 138412290;
      *&v32[4] = v22;
      LODWORD(v30) = 12;
      v23 = _os_log_send_and_compose_impl(v21, v31, 0, 0, &_mh_execute_header, v19, 0, "Found Loginwindow user session %@", v32, v30);
      v24 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  v28 = +[RDServer sharedServer];
  [v28 switchToUser:*(*(*(a1 + 32) + 8) + 24)];

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v29 = *(*(*(a1 + 32) + 8) + 24);
  if (v29)
  {
    CFRelease(v29);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10002A280()
{
  v0 = sub_100018360();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1000023E8(v0, kUMUserSessionIDKey);
    Current = CFAbsoluteTimeGetCurrent();
    v4 = CFDateCreate(kCFAllocatorDefault, Current);
    if (v4)
    {
      v5 = v4;
      if (v2 == 502)
      {
        v6 = sub_1000023E8(v1, kUMUserSessionPreviousLoggedinIDKey);
        if (v6 != -1)
        {
          v7 = sub_10008A2F4(qword_1000EB2E0, v6);
          if (v7)
          {
            v8 = v7;
            CFDictionarySetValue(v7, kUMUserSessionLogoutEndTimeKey, v5);
            CFRelease(v8);
          }
        }
      }

      else
      {
        if (CFDictionaryContainsKey(v1, kUMUserSessionFirstLoginEndTimeKey))
        {
          v9 = kUMUserSessionCachedLoginEndTimeKey;
        }

        else
        {
          v9 = kUMUserSessionFirstLoginEndTimeKey;
        }

        CFDictionarySetValue(v1, v9, v5);
      }

      CFRelease(v5);
    }

    CFRelease(v1);
  }
}

void sub_10002A3A4()
{
  v0 = sub_100018360();
  if (v0)
  {
    v1 = v0;
    Current = CFAbsoluteTimeGetCurrent();
    v3 = CFDateCreate(kCFAllocatorDefault, Current);
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(v1, kUMUserSessionLogoutStartTimeKey, v3);
      if (CFDictionaryContainsKey(v1, kUMUserSessionLogoutEndTimeKey))
      {
        CFDictionaryRemoveValue(v1, kUMUserSessionLogoutEndTimeKey);
      }

      CFRelease(v4);
    }

    CFRelease(v1);
  }
}

void sub_10002A458()
{
  v0 = sub_10008A58C(qword_1000EB2E0);
  if (v0 == 502)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v1 = qword_1000EB308;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v2 = sub_1000011A8(1);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v2;
      }

      else
      {
        v3 = v2 & 0xFFFFFFFE;
      }

      if (v3)
      {
        LOWORD(v22) = 0;
        v4 = _os_log_send_and_compose_impl(v3, &v21, 0, 0, &_mh_execute_header, v1, 0, "NO SYNCBAG TO REMOVE FOR LOGINWINDOW", &v22, 2);
        v5 = v4;
        if (v4)
        {
          sub_100002A8C(v4);
        }
      }

      else
      {
        v5 = 0;
      }

      free(v5);
    }

    return;
  }

  v6 = v0;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v7 = qword_1000EB308;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      LODWORD(v22) = 67109120;
      HIDWORD(v22) = v6;
      v10 = _os_log_send_and_compose_impl(v9, &v21, 0, 0, &_mh_execute_header, v7, 0, "Clearing SyncBag if not needed for current FG ID:%d", &v22);
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v12 = sub_100018360();
  if (v12)
  {
    v13 = v12;
    if (CFDictionaryContainsKey(v12, kUMUserSessionSyncMachServicesKey) || CFDictionaryContainsKey(v13, kUMUserSessionHasSyncBagKey) != 1)
    {
      goto LABEL_50;
    }

    if (sub_10002A804(v13, v6, 0))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v14 = qword_1000EB308;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v22 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v17 = _os_log_send_and_compose_impl(v16, &v22, 0, 0, &_mh_execute_header, v14, 0, "Failed to remove SyncBag for the user:%d with error:%d", &v21);
        goto LABEL_45;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v14 = qword_1000EB308;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v21 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v17 = _os_log_send_and_compose_impl(v19, &v21, 0, 0, &_mh_execute_header, v14, 0, "Removed Syncbag for User successfully");
LABEL_45:
        v20 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }

        goto LABEL_48;
      }
    }

    v20 = 0;
LABEL_48:
    free(v20);
LABEL_49:

LABEL_50:
    CFRelease(v13);
  }
}

uint64_t sub_10002A804(const __CFDictionary *a1, uint64_t a2, int a3)
{
  if (sub_100002454(a1, kUMUserSessionHasSyncBagKey))
  {
    if (a3)
    {
      v6 = sub_100032DF8(a1, a2);
      if (!v6)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v7 = qword_1000EB308;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 0;
          v8 = sub_1000011A8(1);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v8;
          }

          else
          {
            v9 = v8 & 0xFFFFFFFE;
          }

          if (v9)
          {
            LOWORD(v27[0]) = 0;
            v10 = _os_log_send_and_compose_impl(v9, &v26, 0, 0, &_mh_execute_header, v7, 0, "Unload of SyncBag successful");
            goto LABEL_30;
          }

          goto LABEL_32;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v6 = 5;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v7 = qword_1000EB308;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v27[0] = 67109120;
        v27[1] = v6;
        v10 = _os_log_send_and_compose_impl(v17, &v26, 0, 0, &_mh_execute_header, v7, 0, "Unload of SyncBag failed with error:%d", v27);
LABEL_30:
        v18 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_33;
      }

LABEL_32:
      v18 = 0;
LABEL_33:
      free(v18);
    }

LABEL_34:

    result = MKBUserSessionRemoveSyncBagForUser();
    if (result)
    {
      return result;
    }

    goto LABEL_39;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v11 = qword_1000EB308;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 0;
    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      LOWORD(v27[0]) = 0;
      v14 = _os_log_send_and_compose_impl(v13, &v26, 0, 0, &_mh_execute_header, v11, 0, "Session has no SyncBag (kUMUserSessionHasSyncBagKey=false), nothing to remove", v27, 2);
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

LABEL_39:
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v20 = qword_1000EB308;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 0;
    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      LOWORD(v27[0]) = 0;
      LODWORD(v25) = 2;
      v23 = _os_log_send_and_compose_impl(v22, &v26, 0, 0, &_mh_execute_header, v20, 0, "RESET kUMUserSessionHasSyncBagKey", v27, v25);
      v24 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  CFDictionarySetValue(a1, kUMUserSessionHasSyncBagKey, kCFBooleanFalse);
  return 0;
}

uint64_t sub_10002AB94(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
    v3 = sub_1000011A8(1);
    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFE;
    }

    if (v5)
    {
      LODWORD(__from.__pn_.__r_.__value_.__l.__data_) = 138412290;
      *(__from.__pn_.__r_.__value_.__r.__words + 4) = v1;
      v6 = _os_log_send_and_compose_impl(v5, __str, 0, 0, &_mh_execute_header, v4, 0, "removeUserSession: found an existing session %@", &__from, 12);

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {

      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_100002454(v1, kUMUserSessionForegroundKey);
  v8 = sub_100002454(v1, @"MKBUserSessionFileSystemSet");
  v9 = sub_1000023E8(v1, kUMUserSessionIDKey);
  v10 = sub_100002454(v1, kUMUserSessionDirtyKey);
  v11 = sub_100002454(v1, kUMUserSessionisPrimaryKey);
  if (dword_1000EB5B0 == 1)
  {
    if (v9 == 502)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v12 = qword_1000EB308;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      __from.__pn_.__r_.__value_.__r.__words[0] = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        LOWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 0;
        LODWORD(v166) = 2;
        v165 = __str;
        v15 = "CANNOT UNLOAD A LOGINWINDOW USER SESSION, REMOVE USER FAILED";
LABEL_41:
        p_from = &__from;
        goto LABEL_53;
      }

      goto LABEL_55;
    }

LABEL_44:
    bzero(&__from, 0x400uLL);
    sub_1000795D4(v1, kUMUserSessionHomeDirKey, &__from, 1024);
    if (v7)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v12 = qword_1000EB308;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v21;
      }

      else
      {
        v14 = v21 & 0xFFFFFFFE;
      }

      if (v14)
      {
        *v167 = 0;
        LODWORD(v166) = 2;
        v165 = v167;
        v15 = "CANNOT UNLOAD A FOREGROUND SESSION, REMOVE USER FAILED";
        p_from = __str;
LABEL_53:
        v22 = _os_log_send_and_compose_impl(v14, p_from, 0, 0, &_mh_execute_header, v12, 0, v15, v165, v166, *v167);
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }

        goto LABEL_56;
      }

      goto LABEL_55;
    }

    if (v10)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v24 = qword_1000EB308;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v25 = sub_1000011A8(1);
        v24 = v24;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 & 0xFFFFFFFE;
        }

        if (v26)
        {
          v27 = _os_log_send_and_compose_impl(v26, __str, 0, 0, &_mh_execute_header, v24, 0, "REMOVING A DIRTY USERSESSION with uid %d", v167);
          goto LABEL_77;
        }

        goto LABEL_88;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v24 = qword_1000EB308;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v28 = sub_1000011A8(1);
        v24 = v24;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          v27 = _os_log_send_and_compose_impl(v29, __str, 0, 0, &_mh_execute_header, v24, 0, "REMOVING A CLEAN USERSESSION with uid %d", v167);
LABEL_77:
          v30 = v27;

          if (v30)
          {
            sub_100002A8C(v30);
          }

          goto LABEL_89;
        }

LABEL_88:

        v30 = 0;
LABEL_89:
        free(v30);
      }
    }

    sub_10001BEFC(v9);
    sub_10001C244(v9);
    sub_10002C904(v9, 0);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v36 = qword_1000EB308;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v37 = sub_1000011A8(1);
      v38 = v36;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v37;
      }

      else
      {
        v39 = v37 & 0xFFFFFFFE;
      }

      if (v39)
      {
        *v167 = 0;
        LODWORD(v166) = 2;
        v40 = _os_log_send_and_compose_impl(v39, __str, 0, 0, &_mh_execute_header, v38, 0, "Unloaded the syncbubble, wait for a sec", v167, v166);

        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {

        v40 = 0;
      }

      free(v40);
    }

    sleep(1u);
    CFDictionarySetValue(v1, kUMUserSessionForegroundKey, kCFBooleanFalse);
    if (!byte_1000EA3D8 || v9 == 502)
    {
LABEL_184:
      if (!v8)
      {
        goto LABEL_241;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v73 = qword_1000EB308;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *v167 = 0;
        v74 = sub_1000011A8(1);
        v75 = v73;
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          v76 = v74;
        }

        else
        {
          v76 = v74 & 0xFFFFFFFE;
        }

        if (v76)
        {
          LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 136315394;
          *(__str[0].__pn_.__r_.__value_.__r.__words + 4) = &__from;
          WORD2(__str[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str[0].__pn_.__r_.__value_.__r.__words[1] + 6) = v9;
          v77 = _os_log_send_and_compose_impl(v76, v167, 0, 0, &_mh_execute_header, v75, 0, "Removing HomeDirectory:%s for the uid %d", __str, 18);

          if (v77)
          {
            sub_100002A8C(v77);
          }
        }

        else
        {

          v77 = 0;
        }

        free(v77);
      }

      if (sub_10002D62C(&__from))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v78 = qword_1000EB308;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v79 = sub_1000011A8(1);
          v80 = v78;
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            v81 = v79;
          }

          else
          {
            v81 = v79 & 0xFFFFFFFE;
          }

          if (v81)
          {
            *v167 = 0;
            LODWORD(v166) = 2;
            v82 = _os_log_send_and_compose_impl(v81, __str, 0, 0, &_mh_execute_header, v80, 0, "User HomeDirectory successfully removed", v167, v166);

            if (v82)
            {
              sub_100002A8C(v82);
            }
          }

          else
          {

            v82 = 0;
          }

          free(v82);
        }

        goto LABEL_240;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v83 = qword_1000EB308;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v84 = sub_1000011A8(1);
        v85 = v83;
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v86 = v84;
        }

        else
        {
          v86 = v84 & 0xFFFFFFFE;
        }

        if (v86)
        {
          *v167 = 0;
          LODWORD(v166) = 2;
          v87 = _os_log_send_and_compose_impl(v86, __str, 0, 0, &_mh_execute_header, v85, 0, "User HomeDirectory could not be completely removed, moving it to delete on reboot", v167, v166);

          if (v87)
          {
            sub_100002A8C(v87);
          }
        }

        else
        {

          v87 = 0;
        }

        free(v87);
      }

      mkpath_np("/private/var/DELETED", 0x1C0u);
      snprintf(__str, 0x400uLL, "/private/var/DELETED/euser_%d", v9);
      rename(&__from, __str, v88);
      if (v89)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v78 = qword_1000EB308;
        if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_240;
        }

        v168[0] = 0;
        LODWORD(v90) = sub_1000011A8(1);
        v78 = v78;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v90 = v90;
        }

        else
        {
          v90 = v90 & 0xFFFFFFFE;
        }

        if (v90)
        {
          v91 = __error();
          strerror(*v91);
          *v167 = 136315650;
          *&v167[4] = &__from;
          LODWORD(v166) = 32;
          v92 = _os_log_send_and_compose_impl(v90, v168, 0, 0, &_mh_execute_header, v78, 0, "Failed Move %s to %s with error:%s", v167, v166, *v167);
          goto LABEL_236;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v78 = qword_1000EB308;
        if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_240;
        }

        v168[0] = 0;
        v93 = sub_1000011A8(1);
        v78 = v78;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v94 = v93;
        }

        else
        {
          v94 = v93 & 0xFFFFFFFE;
        }

        if (v94)
        {
          LODWORD(v166) = 22;
          v92 = _os_log_send_and_compose_impl(v94, v168, 0, 0, &_mh_execute_header, v78, 0, "Moved %s to %s", v167, v166);
LABEL_236:
          v95 = v92;

          if (v95)
          {
            sub_100002A8C(v95);
          }

          goto LABEL_239;
        }
      }

      v95 = 0;
LABEL_239:
      free(v95);
LABEL_240:

      CFDictionarySetValue(v1, @"MKBUserSessionFileSystemSet", kCFBooleanFalse);
LABEL_241:
      if (_SecSyncDeleteUserViews())
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v96 = qword_1000EB308;
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v97 = sub_1000011A8(1);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            v98 = v97;
          }

          else
          {
            v98 = v97 & 0xFFFFFFFE;
          }

          if (v98)
          {
            *v167 = 0;
            LODWORD(v166) = 2;
            v99 = _os_log_send_and_compose_impl(v98, __str, 0, 0, &_mh_execute_header, v96, 0, "_SecSyncDeleteUserViews succeeded", v167, v166);
            v100 = v99;
            if (v99)
            {
              sub_100002A8C(v99);
            }
          }

          else
          {
            v100 = 0;
          }

          free(v100);
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v106 = qword_1000EB308;
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v107 = sub_1000011A8(1);
          v106 = v106;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v108 = v107;
          }

          else
          {
            v108 = v107 & 0xFFFFFFFE;
          }

          if (v108)
          {
            *v167 = 0;
            LODWORD(v166) = 2;
            v109 = _os_log_send_and_compose_impl(v108, __str, 0, 0, &_mh_execute_header, v106, 0, "_SecSyncDeleteUserViews Success", v167, v166, *v167);
            goto LABEL_280;
          }

          goto LABEL_282;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v101 = qword_1000EB308;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v102 = sub_1000011A8(1);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            v103 = v102;
          }

          else
          {
            v103 = v102 & 0xFFFFFFFE;
          }

          if (v103)
          {
            *v167 = 0;
            LODWORD(v166) = 2;
            v104 = _os_log_send_and_compose_impl(v103, __str, 0, 0, &_mh_execute_header, v101, 0, "_SecSyncDeleteUserViews failed", v167, v166);
            v105 = v104;
            if (v104)
            {
              sub_100002A8C(v104);
            }
          }

          else
          {
            v105 = 0;
          }

          free(v105);
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v106 = qword_1000EB308;
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v110 = sub_1000011A8(1);
          v106 = v106;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v111 = v110;
          }

          else
          {
            v111 = v110 & 0xFFFFFFFE;
          }

          if (v111)
          {
            *v167 = 0;
            LODWORD(v166) = 2;
            v109 = _os_log_send_and_compose_impl(v111, __str, 0, 0, &_mh_execute_header, v106, 0, "_SecSyncDeleteUserViews FAILED", v167, v166, *v167);
LABEL_280:
            v112 = v109;

            if (v112)
            {
              sub_100002A8C(v112);
            }

            goto LABEL_283;
          }

LABEL_282:

          v112 = 0;
LABEL_283:
          free(v112);
        }
      }

      *v167 = 0;
      if ([qword_1000EB2D8 splitUserVolumeEnabled])
      {
        if (sub_10002DA80(v1))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v113 = qword_1000EB308;
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
            v114 = sub_1000011A8(1);
            v115 = v113;
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              v116 = v114;
            }

            else
            {
              v116 = v114 & 0xFFFFFFFE;
            }

            if (v116)
            {
              LODWORD(v168[0]) = 67109120;
              HIDWORD(v168[0]) = v9;
              v117 = _os_log_send_and_compose_impl(v116, __str, 0, 0, &_mh_execute_header, v115, 0, "Removed user:%d AKS Identity", v168);

              if (v117)
              {
                sub_100002A8C(v117);
              }
            }

            else
            {

              v117 = 0;
            }

            free(v117);
          }

          goto LABEL_320;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v120 = qword_1000EB308;
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v124 = sub_1000011A8(1);
          v120 = v120;
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            v125 = v124;
          }

          else
          {
            v125 = v124 & 0xFFFFFFFE;
          }

          if (v125)
          {
            LODWORD(v168[0]) = 67109120;
            HIDWORD(v168[0]) = v9;
            v123 = _os_log_send_and_compose_impl(v125, __str, 0, 0, &_mh_execute_header, v120, 0, "Failed to remove user bag for session %d", v168);
LABEL_312:
            v126 = v123;

            if (v126)
            {
              sub_100002A8C(v126);
            }

            goto LABEL_315;
          }

          goto LABEL_314;
        }
      }

      else
      {
        v118 = MKBUserSessionDeleteKeybagForUser();
        if (!v118)
        {
LABEL_320:
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v127 = qword_1000EB308;
          if (!os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_332;
          }

          __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
          v128 = sub_1000011A8(1);
          v129 = v127;
          if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
          {
            v130 = v128;
          }

          else
          {
            v130 = v128 & 0xFFFFFFFE;
          }

          if (v130)
          {
            LOWORD(v168[0]) = 0;
            LODWORD(v166) = 2;
            v131 = _os_log_send_and_compose_impl(v130, __str, 0, 0, &_mh_execute_header, v129, 0, "layoutDeleteOnly as its already background", v168, v166);

            if (v131)
            {
              sub_100002A8C(v131);
            }
          }

          else
          {

            v131 = 0;
          }

          v132 = v131;
LABEL_331:
          free(v132);
LABEL_332:

          goto LABEL_359;
        }

        v119 = v118;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v120 = qword_1000EB308;
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          v168[0] = 0;
          v121 = sub_1000011A8(1);
          v120 = v120;
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            v122 = v121;
          }

          else
          {
            v122 = v121 & 0xFFFFFFFE;
          }

          if (v122)
          {
            LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 67109376;
            HIDWORD(__str[0].__pn_.__r_.__value_.__r.__words[0]) = v9;
            LOWORD(__str[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
            *(&__str[0].__pn_.__r_.__value_.__r.__words[1] + 2) = v119;
            v123 = _os_log_send_and_compose_impl(v122, v168, 0, 0, &_mh_execute_header, v120, 0, "Failed to remove user bag for session %d: %d", __str);
            goto LABEL_312;
          }

LABEL_314:

          v126 = 0;
LABEL_315:
          free(v126);
        }
      }

      return 0;
    }

    if (([qword_1000EB2D8 splitUserVolumeEnabled] & 1) == 0)
    {
      MKBUserSessionUnloadKeybagForUser();
    }

    if ([qword_1000EB2D8 deleteVolumeWithSession:v1 error:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v41 = qword_1000EB308;
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_126;
      }

      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v42 = sub_1000011A8(1);
      v41 = v41;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
      }

      else
      {
        v43 = v42 & 0xFFFFFFFE;
      }

      if (v43)
      {
        v44 = _os_log_send_and_compose_impl(v43, __str, 0, 0, &_mh_execute_header, v41, 0, "Removed APFS User volume for user %d", v167);
        goto LABEL_122;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v41 = qword_1000EB308;
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_126;
      }

      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v45 = sub_1000011A8(1);
      v41 = v41;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 0xFFFFFFFE;
      }

      if (v46)
      {
        v44 = _os_log_send_and_compose_impl(v46, __str, 0, 0, &_mh_execute_header, v41, 0, "Failed to remove APFS User volume for user %d", v167);
LABEL_122:
        v47 = v44;

        if (v47)
        {
          sub_100002A8C(v47);
        }

        goto LABEL_125;
      }
    }

    v47 = 0;
LABEL_125:
    free(v47);
LABEL_126:

    v48 = sub_10002A804(v1, v9, 1);
    if (v48)
    {
      v49 = v48;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v50 = qword_1000EB308;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *v167 = 0;
        v51 = sub_1000011A8(1);
        v50 = v50;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
        }

        else
        {
          v52 = v51 & 0xFFFFFFFE;
        }

        if (v52)
        {
          LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 67109376;
          HIDWORD(__str[0].__pn_.__r_.__value_.__r.__words[0]) = v9;
          LOWORD(__str[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str[0].__pn_.__r_.__value_.__r.__words[1] + 2) = v49;
          v53 = _os_log_send_and_compose_impl(v52, v167, 0, 0, &_mh_execute_header, v50, 0, "Failed to remove SyncBag for the user:%d with error:%d", __str, 14);

          if (v53)
          {
            sub_100002A8C(v53);
          }
        }

        else
        {

          v53 = 0;
        }

        free(v53);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v50 = qword_1000EB308;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v54 = sub_1000011A8(1);
        v50 = v50;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v54;
        }

        else
        {
          v55 = v54 & 0xFFFFFFFE;
        }

        if (v55)
        {
          *v167 = 0;
          LODWORD(v166) = 2;
          v56 = _os_log_send_and_compose_impl(v55, __str, 0, 0, &_mh_execute_header, v50, 0, "Removed Syncbag for User successfully", v167, v166);

          if (v56)
          {
            sub_100002A8C(v56);
          }
        }

        else
        {

          v56 = 0;
        }

        free(v56);
      }
    }

    goto LABEL_184;
  }

  if (v11)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v12 = qword_1000EB308;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    __from.__pn_.__r_.__value_.__r.__words[0] = 0;
    v16 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v16;
    }

    else
    {
      v14 = v16 & 0xFFFFFFFE;
    }

    if (v14)
    {
      LOWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 0;
      LODWORD(v166) = 2;
      v165 = __str;
      v15 = "CANNOT Delete a PRIMARY USER SESSION, REMOVE USER FAILED";
      goto LABEL_41;
    }

LABEL_55:
    v23 = 0;
LABEL_56:
    free(v23);
LABEL_57:

    return 0;
  }

  v17 = sub_100088F2C(qword_1000EB608);
  v18 = sub_100089AC4(v17);

  if (v18 == v9)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v12 = qword_1000EB308;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    __from.__pn_.__r_.__value_.__r.__words[0] = 0;
    v19 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v19;
    }

    else
    {
      v14 = v19 & 0xFFFFFFFE;
    }

    if (v14)
    {
      LOWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 0;
      LODWORD(v166) = 2;
      v165 = __str;
      v15 = "CANNOT Delete Currently running session";
      goto LABEL_41;
    }

    goto LABEL_55;
  }

  if (dword_1000EB5B0 == 2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v31 = qword_1000EB308;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      __from.__pn_.__r_.__value_.__r.__words[0] = 0;
      v32 = sub_1000011A8(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        LOWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 0;
        LODWORD(v166) = 2;
        v34 = _os_log_send_and_compose_impl(v33, &__from, 0, 0, &_mh_execute_header, v31, 0, "Removing a local enrolled user, deleting the APFS Volume..", __str, v166);
        v35 = v34;
        if (v34)
        {
          sub_100002A8C(v34);
        }
      }

      else
      {
        v35 = 0;
      }

      free(v35);
    }

    if ([qword_1000EB2D8 deleteVolumeWithSession:v1 error:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v57 = qword_1000EB308;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        __from.__pn_.__r_.__value_.__r.__words[0] = 0;
        v58 = sub_1000011A8(1);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v59 = v58;
        }

        else
        {
          v59 = v58 & 0xFFFFFFFE;
        }

        if (v59)
        {
          LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__str[0].__pn_.__r_.__value_.__r.__words[0]) = v9;
          v60 = _os_log_send_and_compose_impl(v59, &__from, 0, 0, &_mh_execute_header, v57, 0, "Removed APFS User volume for user %d", __str);
          goto LABEL_167;
        }

        goto LABEL_169;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v57 = qword_1000EB308;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        __from.__pn_.__r_.__value_.__r.__words[0] = 0;
        v61 = sub_1000011A8(1);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v62 = v61;
        }

        else
        {
          v62 = v61 & 0xFFFFFFFE;
        }

        if (v62)
        {
          LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__str[0].__pn_.__r_.__value_.__r.__words[0]) = v9;
          v60 = _os_log_send_and_compose_impl(v62, &__from, 0, 0, &_mh_execute_header, v57, 0, "Failed to remove APFS User volume for user %d", __str);
LABEL_167:
          v63 = v60;
          if (v60)
          {
            sub_100002A8C(v60);
          }

          goto LABEL_170;
        }

LABEL_169:
        v63 = 0;
LABEL_170:
        free(v63);
      }
    }

    v64 = sub_100079590(v1, kUMUserSessionUUIDKey);
    v65 = sub_1000013A0(qword_1000EB2E8);
    v66 = [v65 userPersonas];
    v67 = [v66 objectForKeyedSubscript:v64];

    if (!v67)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v68 = qword_1000EB308;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v69 = sub_1000011A8(1);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v70 = v69;
        }

        else
        {
          v70 = v69 & 0xFFFFFFFE;
        }

        if (v70)
        {
          LODWORD(__from.__pn_.__r_.__value_.__l.__data_) = 138412290;
          *(__from.__pn_.__r_.__value_.__r.__words + 4) = v64;
          LODWORD(v166) = 12;
          v71 = _os_log_send_and_compose_impl(v70, __str, 0, 0, &_mh_execute_header, v68, 0, "No personas found to delete for user %@", &__from, v166);
          v72 = v71;
          if (v71)
          {
            sub_100002A8C(v71);
          }
        }

        else
        {
          v72 = 0;
        }

        free(v72);
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v133 = qword_1000EB308;
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
    {
      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v134 = sub_1000011A8(1);
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        v135 = v134;
      }

      else
      {
        v135 = v134 & 0xFFFFFFFE;
      }

      if (v135)
      {
        LODWORD(__from.__pn_.__r_.__value_.__l.__data_) = 138412290;
        *(__from.__pn_.__r_.__value_.__r.__words + 4) = v64;
        LODWORD(v166) = 12;
        v136 = _os_log_send_and_compose_impl(v135, __str, 0, 0, &_mh_execute_header, v133, 0, "Deleting all personas for user %@...", &__from, v166);
        v137 = v136;
        if (v136)
        {
          sub_100002A8C(v136);
        }
      }

      else
      {
        v137 = 0;
      }

      free(v137);
    }

    do
    {

      if (![v67 count])
      {
        v146 = sub_1000013A0(qword_1000EB2E8);
        v147 = [v146 userPersonas];
        [v147 setObject:0 forKeyedSubscript:v64];

        sub_10008EBBC(qword_1000EB2E8);
        goto LABEL_359;
      }

      v133 = [v67 objectAtIndexedSubscript:0];
      v138 = sub_1000450CC(v67, v133, v9, 1);
    }

    while (!v138);
    v139 = v138;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v140 = qword_1000EB308;
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
    {
      __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
      v141 = sub_1000011A8(1);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        v142 = v141;
      }

      else
      {
        v142 = v141 & 0xFFFFFFFE;
      }

      if (v142)
      {
        v143 = v140;
        v144 = strerror(v139);
        LODWORD(__from.__pn_.__r_.__value_.__l.__data_) = 138412546;
        *(__from.__pn_.__r_.__value_.__r.__words + 4) = v64;
        WORD2(__from.__pn_.__r_.__value_.__r.__words[1]) = 2080;
        *(&__from.__pn_.__r_.__value_.__r.__words[1] + 6) = v144;
        LODWORD(v166) = 22;
        v145 = _os_log_send_and_compose_impl(v142, __str, 0, 0, &_mh_execute_header, v143, 0, "Failed to delete all personas for user %@: %s", &__from, v166);

        if (v145)
        {
          sub_100002A8C(v145);
        }
      }

      else
      {
        v145 = 0;
      }

      free(v145);
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v127 = qword_1000EB308;
    if (!os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_332;
    }

    __from.__pn_.__r_.__value_.__r.__words[0] = 0;
    v161 = sub_1000011A8(1);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      v162 = v161;
    }

    else
    {
      v162 = v161 & 0xFFFFFFFE;
    }

    if (v162)
    {
      LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__str[0].__pn_.__r_.__value_.__r.__words[0]) = v9;
      v163 = _os_log_send_and_compose_impl(v162, &__from, 0, 0, &_mh_execute_header, v127, 0, "Failed to delete personas for user %u", __str);
      v164 = v163;
      if (v163)
      {
        sub_100002A8C(v163);
      }
    }

    else
    {
      v164 = 0;
    }

    v132 = v164;
    goto LABEL_331;
  }

  if (dword_1000EB5B0 == 1)
  {
    goto LABEL_44;
  }

LABEL_359:
  v148 = sub_100079590(v1, kUMUserSessionShortNameKey);
  sub_10008B634(qword_1000EB2E0, v148);
  sub_10002E024(v9, 1);
  sub_100018C80();
  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v149 = qword_1000EB318;
  if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
  {
    __str[0].__pn_.__r_.__value_.__r.__words[0] = 0;
    v150 = sub_1000011A8(1);
    v151 = v149;
    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      v152 = v150;
    }

    else
    {
      v152 = v150 & 0xFFFFFFFE;
    }

    if (v152)
    {
      *v167 = 67109120;
      *&v167[4] = v9;
      v153 = _os_log_send_and_compose_impl(v152, __str, 0, 0, &_mh_execute_header, v151, 0, "Deleted user %u", v167);

      if (v153)
      {
        sub_100002A8C(v153);
      }
    }

    else
    {

      v153 = 0;
    }

    free(v153);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v154 = qword_1000EB308;
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    *v167 = 0;
    v155 = sub_1000011A8(1);
    v156 = v154;
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      v157 = v155;
    }

    else
    {
      v157 = v155 & 0xFFFFFFFE;
    }

    if (v157)
    {
      LODWORD(__str[0].__pn_.__r_.__value_.__l.__data_) = 136315394;
      *(__str[0].__pn_.__r_.__value_.__r.__words + 4) = "removeUserSessionInternal";
      WORD2(__str[0].__pn_.__r_.__value_.__r.__words[1]) = 2080;
      *(&__str[0].__pn_.__r_.__value_.__r.__words[1] + 6) = kMobileKeyBagUserChangedNotificationToken;
      LODWORD(v166) = 22;
      v158 = _os_log_send_and_compose_impl(v157, v167, 0, 0, &_mh_execute_header, v156, 0, "usermanagerd %s posting notification: %s\n", __str, v166);

      if (v158)
      {
        sub_100002A8C(v158);
      }
    }

    else
    {

      v158 = 0;
    }

    free(v158);
  }

  v159 = sub_10008900C(qword_1000EB608);
  v160 = [NSString stringWithUTF8String:kMobileKeyBagUserChangedNotificationToken];
  [v159 post:v160];

  return 1;
}

uint64_t sub_10002C904(uint64_t a1, int a2)
{
  v4 = launch_destroy_persona();
  if (v4)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v79 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        *v78 = 67109376;
        *&v78[4] = a1;
        *&v78[8] = 1024;
        *&v78[10] = v4;
        v8 = _os_log_send_and_compose_impl(v7, &v79, 0, 0, &_mh_execute_header, v5, 0, "Failed to destroy persona domain for uid:%d with error:%d", v78);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    dword_1000EA3DC = -1;
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v78 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        LODWORD(v79) = 67109120;
        HIDWORD(v79) = a1;
        v8 = _os_log_send_and_compose_impl(v10, v78, 0, 0, &_mh_execute_header, v5, 0, "Destroyed persona domain for uid:%d ", &v79);
LABEL_18:
        v11 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }

        goto LABEL_21;
      }

LABEL_20:
      v11 = 0;
LABEL_21:
      free(v11);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v12 = qword_1000EB308;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v78 = 0;
    v13 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      LODWORD(v79) = 67109120;
      HIDWORD(v79) = a1;
      v15 = _os_log_send_and_compose_impl(v14, v78, 0, 0, &_mh_execute_header, v12, 0, "Removing Sandbox kext path upload for bubble with uid %ds", &v79);
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  sub_100033128(a1);
  v17 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (v17)
  {
    v18 = v17;
    if (!CFDictionaryContainsKey(v17, kUMUserSessionVolumeDeviceNodeKey))
    {
      goto LABEL_161;
    }

    sub_10002F81C(v18);
    if ([qword_1000EB2D8 unmountVolumeWithSession:v18 mountPath:0 error:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v19 = qword_1000EB308;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v78 = 0;
        v20 = sub_1000011A8(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          LOWORD(v79) = 0;
          LODWORD(v76) = 2;
          v22 = _os_log_send_and_compose_impl(v21, v78, 0, 0, &_mh_execute_header, v19, 0, "APFSUser Volume unmounted after Sync bubble", &v79, v76);
          goto LABEL_52;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v19 = qword_1000EB308;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v78 = 0;
        v23 = sub_1000011A8(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          LOWORD(v79) = 0;
          LODWORD(v76) = 2;
          v22 = _os_log_send_and_compose_impl(v24, v78, 0, 0, &_mh_execute_header, v19, 0, "APFSUser Volume failed to unmount after sync bubble", &v79, v76);
LABEL_52:
          v25 = v22;
          if (v22)
          {
            sub_100002A8C(v22);
          }

          goto LABEL_55;
        }

LABEL_54:
        v25 = 0;
LABEL_55:
        free(v25);
      }
    }

    if (sub_100002454(v18, kUMUserSessionHasSyncBagKey) != 1)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v33 = qword_1000EB308;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_160;
      }

      *v78 = 0;
      v34 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        LODWORD(v79) = 67109120;
        HIDWORD(v79) = a1;
        v36 = _os_log_send_and_compose_impl(v35, v78, 0, 0, &_mh_execute_header, v33, 0, "SyncBag does not exist for User:%d", &v79);
        goto LABEL_156;
      }

      goto LABEL_158;
    }

    v26 = sub_100079590(v18, kUMUserSessionVolumeDeviceNodeKey);
    if (!v26)
    {
LABEL_99:
      if (CFDictionaryContainsKey(v18, kUMUserSessionSyncMachServicesKey))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v47 = qword_1000EB308;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *v78 = 0;
          v48 = sub_1000011A8(1);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v49 = v48;
          }

          else
          {
            v49 = v48 & 0xFFFFFFFE;
          }

          if (v49)
          {
            LODWORD(v79) = 67109120;
            HIDWORD(v79) = a1;
            v50 = _os_log_send_and_compose_impl(v49, v78, 0, 0, &_mh_execute_header, v47, 0, "Pending Sync services, so unload syncbag, but retain for user %d", &v79);
            v51 = v50;
            if (v50)
            {
              sub_100002A8C(v50);
            }
          }

          else
          {
            v51 = 0;
          }

          free(v51);
        }

        if (sub_100032DF8(v18, a1))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v33 = qword_1000EB308;
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_160;
          }

          *v78 = 0;
          v57 = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v58 = v57;
          }

          else
          {
            v58 = v57 & 0xFFFFFFFE;
          }

          if (v58)
          {
            LODWORD(v79) = 67109120;
            HIDWORD(v79) = a1;
            v36 = _os_log_send_and_compose_impl(v58, v78, 0, 0, &_mh_execute_header, v33, 0, "Failed to unload SyncBag for user:%d", &v79);
            goto LABEL_156;
          }

LABEL_158:
          v65 = 0;
LABEL_159:
          free(v65);
LABEL_160:

LABEL_161:
          if (a2)
          {
            v66 = sub_100002454(v18, kUMUserSessionDisabledKey);
            v67 = sub_100002454(v18, kUMUserSessionDirtyKey);
            if (v66)
            {
              if (!v67)
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v68 = qword_1000EB308;
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                {
                  v79 = 0;
                  v69 = sub_1000011A8(1);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    v70 = v69;
                  }

                  else
                  {
                    v70 = v69 & 0xFFFFFFFE;
                  }

                  if (v70)
                  {
                    *v78 = 136315394;
                    *&v78[4] = "unload_syncdomain";
                    *&v78[12] = 2080;
                    *&v78[14] = kMobileKeyBagUserChangedNotificationToken;
                    LODWORD(v76) = 22;
                    v71 = _os_log_send_and_compose_impl(v70, &v79, 0, 0, &_mh_execute_header, v68, 0, "usermanagerd %s posting notification: %s\n", v78, v76);
                    v72 = v71;
                    if (v71)
                    {
                      sub_100002A8C(v71);
                    }
                  }

                  else
                  {
                    v72 = 0;
                  }

                  free(v72);
                }

                v73 = sub_10008900C(qword_1000EB608);
                v74 = [NSString stringWithUTF8String:kMobileKeyBagUserChangedNotificationToken];
                [v73 post:v74];
              }
            }
          }

          CFRelease(v18);
          return v4;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v33 = qword_1000EB308;
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_160;
        }

        *v78 = 0;
        v59 = sub_1000011A8(1);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v60 = v59;
        }

        else
        {
          v60 = v59 & 0xFFFFFFFE;
        }

        if (!v60)
        {
          goto LABEL_158;
        }

        LODWORD(v79) = 67109120;
        HIDWORD(v79) = a1;
        v36 = _os_log_send_and_compose_impl(v60, v78, 0, 0, &_mh_execute_header, v33, 0, "Successfully unloaded the SyncBag for user:%d", &v79);
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v52 = qword_1000EB308;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *v78 = 0;
          v53 = sub_1000011A8(1);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v54 = v53;
          }

          else
          {
            v54 = v53 & 0xFFFFFFFE;
          }

          if (v54)
          {
            LODWORD(v79) = 67109120;
            HIDWORD(v79) = a1;
            v55 = _os_log_send_and_compose_impl(v54, v78, 0, 0, &_mh_execute_header, v52, 0, "No pending sync services, trying to remove syncbag for user:%d", &v79);
            v56 = v55;
            if (v55)
            {
              sub_100002A8C(v55);
            }
          }

          else
          {
            v56 = 0;
          }

          free(v56);
        }

        if (sub_10002A804(v18, a1, 1))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v33 = qword_1000EB308;
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_160;
          }

          *v78 = 0;
          v61 = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v62 = v61;
          }

          else
          {
            v62 = v61 & 0xFFFFFFFE;
          }

          if (!v62)
          {
            goto LABEL_158;
          }

          LODWORD(v79) = 67109120;
          HIDWORD(v79) = a1;
          v36 = _os_log_send_and_compose_impl(v62, v78, 0, 0, &_mh_execute_header, v33, 0, "Failed to remove SyncBag for user:%d", &v79);
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v33 = qword_1000EB308;
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_160;
          }

          *v78 = 0;
          v63 = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v64 = v63;
          }

          else
          {
            v64 = v63 & 0xFFFFFFFE;
          }

          if (!v64)
          {
            goto LABEL_158;
          }

          LODWORD(v79) = 67109120;
          HIDWORD(v79) = a1;
          v36 = _os_log_send_and_compose_impl(v64, v78, 0, 0, &_mh_execute_header, v33, 0, "Successfully removed the SyncBag for user:%d", &v79);
        }
      }

LABEL_156:
      v65 = v36;
      if (v36)
      {
        sub_100002A8C(v36);
      }

      goto LABEL_159;
    }

    v27 = v26;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v28 = qword_1000EB308;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v79 = 0;
      v29 = sub_1000011A8(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        *v78 = 138412546;
        *&v78[4] = v27;
        *&v78[12] = 1024;
        *&v78[14] = a1;
        LODWORD(v76) = 18;
        v31 = _os_log_send_and_compose_impl(v30, &v79, 0, 0, &_mh_execute_header, v28, 0, "VolumeUnMap for disk%@ for uid :%d", v78, v76);
        v32 = v31;
        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v32 = 0;
      }

      free(v32);
    }

    v37 = sub_100089A80(qword_1000EB608);
    v77 = 0;
    v38 = [v37 unmapVolume:v27 error:&v77];
    v39 = v77;

    if (v38)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v40 = qword_1000EB308;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_98;
      }

      *v78 = 0;
      v41 = sub_1000011A8(1);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        LODWORD(v79) = 67109120;
        HIDWORD(v79) = a1;
        v43 = _os_log_send_and_compose_impl(v42, v78, 0, 0, &_mh_execute_header, v40, 0, "VolumeUnMap for uid%d succeeded", &v79);
        if (!v43)
        {
          goto LABEL_97;
        }

        goto LABEL_95;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v40 = qword_1000EB308;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_98;
      }

      v79 = 0;
      LODWORD(v44) = sub_1000011A8(1);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v44;
      }

      else
      {
        v44 = v44 & 0xFFFFFFFE;
      }

      if (v44)
      {
        v45 = v40;
        v46 = [v39 code];
        *v78 = 67109376;
        *&v78[4] = a1;
        *&v78[8] = 2048;
        *&v78[10] = v46;
        LODWORD(v76) = 18;
        v43 = _os_log_send_and_compose_impl(v44, &v79, 0, 0, &_mh_execute_header, v45, 0, "VolumeUnMap for uid:%d failed with error:%ld", v78, v76);

        if (!v43)
        {
LABEL_97:
          free(v43);
LABEL_98:

          goto LABEL_99;
        }

LABEL_95:
        sub_100002A8C(v43);
        goto LABEL_97;
      }
    }

    v43 = 0;
    goto LABEL_97;
  }

  return v4;
}

uint64_t sub_10002D62C(const char *a1)
{
  v2 = removefile_state_alloc();
  value = 0;
  if (removefile_state_set(v2, 3u, sub_10004366C))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
      LODWORD(v4) = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v4;
      }

      else
      {
        v4 = v4 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v5 = v3;
        v6 = __error();
        v7 = strerror(*v6);
        v29 = 136315138;
        v30 = v7;
        v8 = _os_log_send_and_compose_impl(v4, &v27, 0, 0, &_mh_execute_header, v5, 0, "removefile_state_set REMOVEFILE_STATE_ERROR_CALLBACK failed: %s", &v29);

        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }
  }

  if (removefile_state_set(v2, 4u, &value))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
      LODWORD(v10) = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v10;
      }

      else
      {
        v10 = v10 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = v9;
        v12 = __error();
        v13 = strerror(*v12);
        v29 = 136315138;
        v30 = v13;
        v14 = _os_log_send_and_compose_impl(v10, &v27, 0, 0, &_mh_execute_header, v11, 0, "removefile_state_set REMOVEFILE_STATE_ERROR_CONTEXT failed: %s", &v29);

        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  if (removefile(a1, v2, 1u))
  {
    v15 = *__error();
    if (v15 != 2)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v16 = qword_1000EB308;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v27 = 0;
      LODWORD(v22) = sub_1000011A8(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v22;
      }

      else
      {
        v22 = v22 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v19 = v16;
        v23 = strerror(v15);
        v29 = 136315394;
        v30 = a1;
        v31 = 2080;
        v32 = v23;
        v21 = _os_log_send_and_compose_impl(v22, &v27, 0, 0, &_mh_execute_header, v19, 0, "removefile for %s failed with error:%s", &v29, 22);
LABEL_46:
        v24 = v21;

        if (v24)
        {
          sub_100002A8C(v24);
        }

        goto LABEL_50;
      }

LABEL_49:
      v24 = 0;
LABEL_50:
      free(v24);
LABEL_51:

      v25 = 0;
      goto LABEL_52;
    }
  }

  if ((value & 0xFFFFFFFD) != 0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v16 = qword_1000EB308;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v27 = 0;
    LODWORD(v17) = sub_1000011A8(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v17;
    }

    else
    {
      v17 = v17 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v18 = value;
      v19 = v16;
      v20 = strerror(v18);
      v29 = 136315394;
      v30 = a1;
      v31 = 2080;
      v32 = v20;
      v21 = _os_log_send_and_compose_impl(v17, &v27, 0, 0, &_mh_execute_header, v19, 0, "removefile for %s failed with error:%s", &v29, 22);
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  v25 = 1;
LABEL_52:
  removefile_state_free(v2);
  return v25;
}

uint64_t sub_10002DA80(const __CFDictionary *a1)
{
  v2 = sub_100079590(a1, kUMUserSessionUUIDKey);
  v3 = sub_1000023E8(a1, kMKBUserSessionIDKey);
  if (v2)
  {
    v4 = v3;
    v5 = sub_100016954(NSUUID, v2);
    if (v5)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v6 = qword_1000EB308;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 0;
        v7 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          LOWORD(v44) = 0;
          v9 = _os_log_send_and_compose_impl(v8, &v41, 0, 0, &_mh_execute_header, v6, 0, "GOT UUID from uuidstring", &v44, 2);
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 0;
        v21 = sub_1000011A8(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
          LODWORD(v44) = 67109120;
          HIDWORD(v44) = v4;
          v23 = _os_log_send_and_compose_impl(v22, &v41, 0, 0, &_mh_execute_header, v20, 0, "DELETING the identity for user:%d", &v44);
          v24 = v23;
          if (v23)
          {
            sub_100002A8C(v23);
          }
        }

        else
        {
          v24 = 0;
        }

        free(v24);
      }

      v25 = sub_100089A80(qword_1000EB608);
      v40 = 0;
      v26 = [v25 deleteIdentity:v5 error:&v40];
      v15 = v40;

      if (v26)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v27 = qword_1000EB308;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v41 = 0;
          v28 = sub_1000011A8(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
          }

          else
          {
            v29 = v28 & 0xFFFFFFFE;
          }

          if (v29)
          {
            LODWORD(v44) = 67109120;
            HIDWORD(v44) = v4;
            v30 = _os_log_send_and_compose_impl(v29, &v41, 0, 0, &_mh_execute_header, v27, 0, "AKS Identity for user:%d Successfully Deleted", &v44);
            v31 = v30;
            if (v30)
            {
              sub_100002A8C(v30);
            }
          }

          else
          {
            v31 = 0;
          }

          free(v31);
        }

        v37 = 1;
        goto LABEL_74;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v32 = qword_1000EB308;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v44 = 0;
        LODWORD(v33) = sub_1000011A8(1);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v33;
        }

        else
        {
          v33 = v33 & 0xFFFFFFFE;
        }

        if (v33)
        {
          v34 = v32;
          v35 = [v15 code];
          LODWORD(v41) = 67109376;
          HIDWORD(v41) = v4;
          v42 = 2048;
          v43 = v35;
          LODWORD(v39) = 18;
          v36 = _os_log_send_and_compose_impl(v33, &v44, 0, 0, &_mh_execute_header, v34, 0, "Deleting AKS Identity for user:%d failed with %ld", &v41, v39);

          if (v36)
          {
            sub_100002A8C(v36);
          }
        }

        else
        {
          v36 = 0;
        }

        free(v36);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v15 = qword_1000EB308;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 0;
        v16 = sub_1000011A8(1);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFE;
        }

        if (v17)
        {
          LOWORD(v44) = 0;
          v18 = _os_log_send_and_compose_impl(v17, &v41, 0, 0, &_mh_execute_header, v15, 0, "NULL UUID, failure, bailing", &v44, 2);
          v19 = v18;
          if (v18)
          {
            sub_100002A8C(v18);
          }
        }

        else
        {
          v19 = 0;
        }

        free(v19);
      }
    }

    v37 = 0;
LABEL_74:

    goto LABEL_75;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      LOWORD(v44) = 0;
      v13 = _os_log_send_and_compose_impl(v12, &v41, 0, 0, &_mh_execute_header, v5, 0, "No UUID for the primary, bail", &v44, 2);
      v14 = v13;
      if (v13)
      {
        sub_100002A8C(v13);
      }
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }

  v37 = 0;
LABEL_75:

  return v37;
}

uint64_t sub_10002E024(uint64_t a1, int a2)
{
  v2 = a1;
  result = qword_1000EB5A0;
  if (qword_1000EB5A0)
  {
    valuePtr = 0;
    if (CFArrayGetCount(qword_1000EB5A0) < 1)
    {
      return 0;
    }

    else
    {
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v5);
        if (ValueAtIndex)
        {
          v7 = ValueAtIndex;
          v8 = CFGetTypeID(ValueAtIndex);
          if (v8 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v7, kUMUserSessionIDKey);
            if (Value)
            {
              v10 = Value;
              v11 = CFGetTypeID(Value);
              if (v11 == CFNumberGetTypeID() && CFNumberGetValue(v10, kCFNumberIntType, &valuePtr) && valuePtr == v2)
              {
                break;
              }
            }
          }
        }

        if (CFArrayGetCount(qword_1000EB5A0) <= ++v5)
        {
          return 0;
        }
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v13 = qword_1000EB308;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v14 = sub_1000011A8(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v21[0] = 67109120;
          v21[1] = v2;
          v16 = _os_log_send_and_compose_impl(v15, &v19, 0, 0, &_mh_execute_header, v13, 0, "found the Usersession with uid=%d, removing", v21);
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }

      CFArrayRemoveValueAtIndex(qword_1000EB5A0, v5);
      Count = CFArrayGetCount(qword_1000EB5A0);
      qword_1000EB5A8 = Count;
      if (!byte_1000EA3D8 && Count == 1)
      {
        qword_1000EB2F8 = kUMUserSessionAPFSNativeVolume;
        byte_1000EA3D8 = 1;
      }

      if (a2)
      {
        sub_100035A0C(v2);
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_10002E270(const __CFDictionary *a1)
{
  v1 = sub_100002700(a1);
  v2 = sub_10002AB94(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

uint64_t sub_10002E2B0(const __CFDictionary *a1, uint64_t a2, const __CFData *a3)
{
  if (a3)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v6 = qword_1000EB308;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 0;
      LODWORD(v7) = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v7;
      }

      else
      {
        v7 = v7 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = v6;
        *v14 = 134217984;
        *&v14[4] = CFDataGetLength(a3);
        v9 = _os_log_send_and_compose_impl(v7, v13, 0, 0, &_mh_execute_header, v8, 0, "switchToUserSessionNoUID with BLOB of size %ld", v14);

        if (!v9)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v6 = qword_1000EB308;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        LOWORD(v13[0]) = 0;
        v9 = _os_log_send_and_compose_impl(v11, v14, 0, 0, &_mh_execute_header, v6, 0, "switchToUserSessionNoUID, NO BLOB", v13, 2);
        if (!v9)
        {
LABEL_21:
          free(v9);
          goto LABEL_22;
        }

LABEL_19:
        sub_100002A8C(v9);
        goto LABEL_21;
      }

LABEL_20:
      v9 = 0;
      goto LABEL_21;
    }
  }

LABEL_22:

  sub_10002E4B4(a1, a2, a3);
  return 0;
}

uint64_t sub_10002E4B4(const __CFDictionary *a1, uint64_t a2, const __CFData *a3)
{
  v6 = sub_100002700(a1);
  if (v6)
  {
    goto LABEL_14;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v7 = qword_1000EB308;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      LOWORD(v31[0]) = 0;
      v10 = _os_log_send_and_compose_impl(v9, v32, 0, 0, &_mh_execute_header, v7, 0, "switchUserSession: Trying to create a newsession(with null passcode) as nothing existing for it", v31, 2);
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v6 = sub_100024578(a1, 0, 0, 0);
  if (v6)
  {
LABEL_14:
    v12 = v6;
    v13 = sub_1000023E8(v6, kUMUserSessionIDKey);
    if (dword_1000EB5B0 == 1 && v13 == 502)
    {
      sub_10002A3A4();
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v14 = qword_1000EB308;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        LOWORD(v31[0]) = 0;
        LODWORD(v30) = 2;
        v17 = _os_log_send_and_compose_impl(v16, v32, 0, 0, &_mh_execute_header, v14, 0, "switchUserSession: found an existing session", v31, v30);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    if (a3)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v19 = qword_1000EB308;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v31[0] = 0;
        LODWORD(v20) = sub_1000011A8(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v20;
        }

        else
        {
          v20 = v20 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = v19;
          Length = CFDataGetLength(a3);
          *v32 = 134217984;
          *&v32[4] = Length;
          v23 = _os_log_send_and_compose_impl(v20, v31, 0, 0, &_mh_execute_header, v21, 0, "switchUserSession setting BLOB with size %ld", v32);

          if (v23)
          {
            sub_100002A8C(v23);
          }
        }

        else
        {
          v23 = 0;
        }

        free(v23);
      }

      CFDictionarySetValue(v12, @"UserSwitchTaskOpqueData", a3);
    }

    else if (CFDictionaryContainsKey(v12, @"UserSwitchTaskOpqueData"))
    {
      CFDictionaryRemoveValue(v12, @"UserSwitchTaskOpqueData");
    }

    v24 = +[RDServer sharedServer];
    [v24 switchToUser:v12 passcodeData:a2];
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v24 = qword_1000EB308;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v31[0]) = 0;
        LODWORD(v30) = 2;
        v27 = _os_log_send_and_compose_impl(v26, v32, 0, 0, &_mh_execute_header, v24, 0, "Could not setup new session, switchsession failed", v31, v30);
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }
  }

  return 0;
}

uint64_t sub_10002E8EC()
{
  v0 = sub_10008A2F4(qword_1000EB2E0, 502);
  sub_10002E4B4(v0, 0, 0);
  if (v0)
  {
    CFRelease(v0);
  }

  return 0;
}

id sub_10002E93C()
{
  v0 = sub_10008A2F4(qword_1000EB2E0, 502);
  v1 = +[RDServer sharedServer];
  v2 = [v1 LogoutToUser:v0];

  return v2;
}

id sub_10002E998()
{
  v0 = +[RDServer sharedServer];
  v1 = [v0 inLoginSession];

  return v1;
}

uint64_t sub_10002E9D8(const __CFDictionary *a1, const __CFData *a2)
{
  v4 = sub_10008A58C(qword_1000EB2E0);
  v5 = sub_1000023E8(a1, kUMUserSessionIDKey);
  v6 = sub_100002454(a1, kUMUserSessionNeedsMountKey);
  v7 = sub_10008900C(qword_1000EB608);
  v8 = [NSString stringWithUTF8String:"com.apple.mobile.usermanagerd.foregrounduser_willchange"];
  [v7 post:v8];

  if (dword_1000EB5B0 == 1 && v4 != 502 && byte_1000EA3D8 == 1)
  {
    v9 = sub_100018360();
    if (v9)
    {
      sub_10002F81C(v9);
    }

    if (!v6 || v5 == 502)
    {
LABEL_55:
      Current = CFAbsoluteTimeGetCurrent();
      v28 = CFDateCreate(kCFAllocatorDefault, Current);
      if (!v28)
      {
        goto LABEL_65;
      }

      v29 = v28;
      if (CFDictionaryContainsKey(a1, kUMUserSessionFirstLoginStartTimeKey))
      {
        if (!CFDictionaryContainsKey(a1, kUMUserSessionFirstLoginEndTimeKey))
        {
          CFDictionarySetValue(a1, kUMUserSessionFirstLoginStartTimeKey, v29);
          goto LABEL_64;
        }

        CFDictionarySetValue(a1, kUMUserSessionCachedLoginStartTimeKey, v29);
        if (CFDictionaryContainsKey(a1, kUMUserSessionCachedLoginEndTimeKey))
        {
          v30 = kUMUserSessionCachedLoginEndTimeKey;
LABEL_62:
          CFDictionaryRemoveValue(a1, v30);
        }
      }

      else
      {
        CFDictionarySetValue(a1, kUMUserSessionFirstLoginStartTimeKey, v29);
        if (CFDictionaryContainsKey(a1, kUMUserSessionFirstLoginEndTimeKey))
        {
          v30 = kUMUserSessionFirstLoginEndTimeKey;
          goto LABEL_62;
        }
      }

LABEL_64:
      CFRelease(v29);
      goto LABEL_65;
    }

    HIDWORD(v88) = v4;
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v10 = qword_1000EB308;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 0;
      v11 = sub_1000011A8(1);
      v12 = v10;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 & 0xFFFFFFFE;
      }

      if (v13)
      {
        LODWORD(v91) = 67109120;
        HIDWORD(v91) = v5;
        v14 = _os_log_send_and_compose_impl(v13, cf, 0, 0, &_mh_execute_header, v12, 0, "MOUNTING APFS User Volume for uid:%d", &v91);

        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {

        v14 = 0;
      }

      free(v14);
    }

    if ([qword_1000EB2D8 mountVolumeWithSession:a1 mountPath:0 error:0 forPersona:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      *cf = 0;
      v21 = sub_1000011A8(1);
      v20 = v20;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        LODWORD(v91) = 67109120;
        HIDWORD(v91) = v5;
        v23 = _os_log_send_and_compose_impl(v22, cf, 0, 0, &_mh_execute_header, v20, 0, "Mounted new User Volume for uid %d", &v91);
        goto LABEL_49;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      *cf = 0;
      v24 = sub_1000011A8(1);
      v20 = v20;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LODWORD(v91) = 67109120;
        HIDWORD(v91) = v5;
        v23 = _os_log_send_and_compose_impl(v25, cf, 0, 0, &_mh_execute_header, v20, 0, "Failed to Mount new User Volume for uid %d", &v91);
LABEL_49:
        v26 = v23;

        v4 = HIDWORD(v88);
        if (v26)
        {
          sub_100002A8C(v26);
        }

        goto LABEL_53;
      }
    }

    v26 = 0;
LABEL_53:
    free(v26);
LABEL_54:

    goto LABEL_55;
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v15 = qword_1000EB308;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LODWORD(v91) = 67109120;
        HIDWORD(v91) = v5;
        v18 = _os_log_send_and_compose_impl(v17, cf, 0, 0, &_mh_execute_header, v15, 0, "Local User switching, switching to %d", &v91);
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }
  }

LABEL_65:
  sub_100018C80();
  if (a2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v31 = qword_1000EB308;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v91 = 0;
      LODWORD(v32) = sub_1000011A8(1);
      v31 = v31;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v32;
      }

      else
      {
        v32 = v32 & 0xFFFFFFFE;
      }

      if (v32)
      {
        Length = CFDataGetLength(a2);
        *cf = 134217984;
        *&cf[4] = Length;
        v34 = _os_log_send_and_compose_impl(v32, &v91, 0, 0, &_mh_execute_header, v31, 0, "USRSwitchNow with BLOB of size %ld", cf);
        goto LABEL_82;
      }

      goto LABEL_84;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v31 = qword_1000EB308;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 0;
      v35 = sub_1000011A8(1);
      v31 = v31;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        LOWORD(v91) = 0;
        v34 = _os_log_send_and_compose_impl(v36, cf, 0, 0, &_mh_execute_header, v31, 0, "USRSwitchNow with NO BLOB");
LABEL_82:
        v37 = v34;

        if (v37)
        {
          sub_100002A8C(v37);
        }

        goto LABEL_85;
      }

LABEL_84:

      v37 = 0;
LABEL_85:
      free(v37);
    }
  }

  v38 = qword_1000EB2E0;
  v39 = sub_10008A58C(qword_1000EB2E0);
  v40 = sub_10008AAA8(v38, v39, v5);
  if (a2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v41 = qword_1000EB308;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v91 = 0;
      LODWORD(v42) = sub_1000011A8(1);
      v43 = v41;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v42;
      }

      else
      {
        v42 = v42 & 0xFFFFFFFE;
      }

      if (v42)
      {
        v44 = CFDataGetLength(a2);
        *cf = 134217984;
        *&cf[4] = v44;
        v45 = _os_log_send_and_compose_impl(v42, &v91, 0, 0, &_mh_execute_header, v43, 0, "SaveNextSession, BLOB with length %ld", cf);

        if (v45)
        {
          sub_100002A8C(v45);
        }
      }

      else
      {

        v45 = 0;
      }

      free(v45);
    }

    if (sub_10002FAEC(a2, "/private/var//keybags/nextsession_opaque.kb"))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v46 = qword_1000EB308;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 0;
        v47 = sub_1000011A8(1);
        v48 = v46;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = v47;
        }

        else
        {
          v49 = v47 & 0xFFFFFFFE;
        }

        if (v49)
        {
          LOWORD(v91) = 0;
          LODWORD(v88) = 2;
          v50 = _os_log_send_and_compose_impl(v49, cf, 0, 0, &_mh_execute_header, v48, 0, "Encrypted Opaquestuff for next boot", &v91, v88);

          if (v50)
          {
            sub_100002A8C(v50);
          }
        }

        else
        {

          v50 = 0;
        }

        free(v50);
      }
    }
  }

  if (v40)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v51 = qword_1000EB308;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 0;
      v52 = sub_1000011A8(1);
      v53 = v51;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v52;
      }

      else
      {
        v54 = v52 & 0xFFFFFFFE;
      }

      if (v54)
      {
        LOWORD(v91) = 0;
        LODWORD(v88) = 2;
        v55 = _os_log_send_and_compose_impl(v54, cf, 0, 0, &_mh_execute_header, v53, 0, "Saved nextuser session for reboot", &v91, v88);

        if (v55)
        {
          sub_100002A8C(v55);
        }
      }

      else
      {

        v55 = 0;
      }

      free(v55);
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      *cf = 0;
      v61 = IOUSBDeviceControllerCreate();
      if (!v61 && *cf)
      {
        v61 = IOUSBDeviceControllerForceOffBus();
      }

      if (v61)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v62 = qword_1000EB308;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v91 = 0;
          v63 = sub_1000011A8(1);
          v64 = v62;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = v63;
          }

          else
          {
            v65 = v63 & 0xFFFFFFFE;
          }

          if (v65)
          {
            v89[0] = 67109120;
            v89[1] = v61;
            v66 = _os_log_send_and_compose_impl(v65, &v91, 0, 0, &_mh_execute_header, v64, 0, "USB ForceOffBus failed: %d", v89);

            if (v66)
            {
              sub_100002A8C(v66);
            }
          }

          else
          {

            v66 = 0;
          }

          free(v66);
        }
      }

      if (*cf)
      {
        CFRelease(*cf);
      }
    }

    if (qword_1000EB5F8)
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v68 = qword_1000EB318;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v91 = 0;
        v69 = sub_1000011A8(0);
        v70 = v68;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v69;
        }

        else
        {
          v71 = v69 & 0xFFFFFFFE;
        }

        if (v71)
        {
          *cf = 134217984;
          *&cf[4] = qword_1000EB5F8;
          v72 = _os_log_send_and_compose_impl(v71, &v91, 0, 0, &_mh_execute_header, v70, 0, "Canceling sync bubble timer (%p)", cf);

          if (v72)
          {
            sub_100002A8C(v72);
          }
        }

        else
        {

          v72 = 0;
        }

        free(v72);
      }

      dispatch_source_cancel(qword_1000EB5F8);
      v73 = qword_1000EB5F8;
      qword_1000EB5F8 = 0;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v74 = qword_1000EB308;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 0;
      v75 = sub_1000011A8(1);
      v76 = v74;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v75;
      }

      else
      {
        v77 = v75 & 0xFFFFFFFE;
      }

      if (v77)
      {
        LOWORD(v91) = 0;
        LODWORD(v88) = 2;
        v78 = _os_log_send_and_compose_impl(v77, cf, 0, 0, &_mh_execute_header, v76, 0, "Starting USER SWITCH", &v91, v88);

        if (v78)
        {
          sub_100002A8C(v78);
        }
      }

      else
      {

        v78 = 0;
      }

      free(v78);
    }

    v79 = sub_100088F2C(qword_1000EB608);
    v80 = sub_100089A48(v79);
    v81 = dword_1000EB5B0;

    if ((v80 & 1) != 0 || v81 == 2)
    {
      sub_10001A244(v4, v5);
    }

    else
    {
      v82 = reboot3();
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v83 = qword_1000EB308;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 0;
        v84 = sub_1000011A8(1);
        v85 = v83;
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v86 = v84;
        }

        else
        {
          v86 = v84 & 0xFFFFFFFE;
        }

        if (v86)
        {
          LODWORD(v91) = 67109120;
          HIDWORD(v91) = v82;
          v87 = _os_log_send_and_compose_impl(v86, cf, 0, 0, &_mh_execute_header, v85, 0, "reboot3 returned %d", &v91);

          if (v87)
          {
            sub_100002A8C(v87);
          }
        }

        else
        {

          v87 = 0;
        }

        free(v87);
      }
    }

    return 1;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v56 = qword_1000EB308;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 0;
      v57 = sub_1000011A8(1);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v57;
      }

      else
      {
        v58 = v57 & 0xFFFFFFFE;
      }

      if (v58)
      {
        LOWORD(v91) = 0;
        LODWORD(v88) = 2;
        v59 = _os_log_send_and_compose_impl(v58, cf, 0, 0, &_mh_execute_header, v56, 0, "Save next switch session failed", &v91, v88);
        v60 = v59;
        if (v59)
        {
          sub_100002A8C(v59);
        }
      }

      else
      {
        v60 = 0;
      }

      free(v60);
    }

    return 0;
  }
}

void sub_10002F81C(const __CFDictionary *a1)
{
  memset(&v22, 0, 512);
  v18 = 0;
  valuePtr = 0;
  v17 = 0;
  v2 = sub_1000023E8(a1, kUMUserSessionIDKey);
  sub_1000795D4(a1, kUMUserSessionHomeDirKey, v21, 1024);
  if (statfs(v21, &v22))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v4 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v20[0] = 67109120;
        v20[1] = v2;
        v6 = _os_log_send_and_compose_impl(v5, &v16, 0, 0, &_mh_execute_header, v3, 0, "STATFS failed for session %d", v20);
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }
  }

  else
  {
    v8 = v22.f_blocks * v22.f_bsize;
    v9 = v22.f_bfree * v22.f_bsize;
    v18 = v8;
    valuePtr = v8;
    if (v8 <= v9)
    {
      v9 = 0;
    }

    v17 = v8 - v9;
  }

  v10 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  if (v10)
  {
    v11 = v10;
    CFDictionarySetValue(a1, kUMUserSessionQuotaLimitKey, v10);
    CFRelease(v11);
  }

  v12 = CFNumberCreate(0, kCFNumberLongLongType, &v18);
  if (v12)
  {
    v13 = v12;
    CFDictionarySetValue(a1, kUMUserSessionQuotaSoftLimitKey, v12);
    CFRelease(v13);
  }

  v14 = CFNumberCreate(0, kCFNumberLongLongType, &v17);
  if (v14)
  {
    v15 = v14;
    CFDictionarySetValue(a1, kUMUserSessionQuotaUsedKey, v14);
    CFRelease(v15);
  }
}

uint64_t sub_10002FAEC(const __CFData *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFDataGetLength(a1);
  valuePtr = Length;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v35[0] = 67109120;
      v35[1] = Length;
      v8 = _os_log_send_and_compose_impl(v7, &v33, 0, 0, &_mh_execute_header, v5, 0, "AKS wrapping Opaquedata of length %d", v35);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  v11 = sub_10007990C();
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v11, @"BLOBLEN", v12);
  CFRelease(v12);
  CFDictionaryAddValue(v11, @"BLOB", a1);
  v13 = sub_100079684(v11);
  if (v13)
  {
    v14 = v13;
    v15 = sub_1000013A0(qword_1000EB608);
    v16 = [NSString stringWithUTF8String:a2];
    v17 = [v15 atomicallyWriteData:v14 toPath:v16 error:0];

    if (v17)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v18 = qword_1000EB308;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 0;
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          LOWORD(v35[0]) = 0;
          v21 = _os_log_send_and_compose_impl(v20, &v33, 0, 0, &_mh_execute_header, v18, 0, "enCryptOpaqueStuff(BLOB) Success", v35, 2);
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v10 = 1;
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v18 = qword_1000EB308;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 0;
        v28 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          LOWORD(v35[0]) = 0;
          v30 = _os_log_send_and_compose_impl(v29, &v33, 0, 0, &_mh_execute_header, v18, 0, "failed to write nextsession_opaque.kb (BLOB) ", v35, 2);
          v31 = v30;
          if (v30)
          {
            sub_100002A8C(v30);
          }
        }

        else
        {
          v31 = 0;
        }

        free(v31);
      }

      v10 = 0;
    }

    CFRelease(v14);
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v23 = qword_1000EB308;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v35[0]) = 0;
        v26 = _os_log_send_and_compose_impl(v25, &v33, 0, 0, &_mh_execute_header, v23, 0, "Can't serialize dictionary", v35, 2);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v10 = 0;
  }

  CFRelease(v11);
  return v10;
}

const __CFDictionary *sub_10002FF34(const __CFDictionary *a1)
{
  v1 = sub_100002700(a1);
  v2 = v1;
  if (v1)
  {
    if (sub_1000023E8(v1, kUMUserSessionIDKey) != 502)
    {
      v37 = 0;
      valuePtr = 0;
      v36 = 0;
      v3 = sub_1000023E8(v2, kUMUserSessionIDKey);
      sub_1000795D4(v2, kUMUserSessionHomeDirKey, v41, 1024);
      if (byte_1000EA3D8)
      {
        if (v3 == sub_10008A58C(qword_1000EB2E0) || v3 == dword_1000EA3DC)
        {
          sub_10002F81C(v2);
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v10 = qword_1000EB308;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 0;
          v11 = sub_1000011A8(1);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
          }

          else
          {
            v12 = v11 & 0xFFFFFFFE;
          }

          if (v12)
          {
            v39 = 67109120;
            v40 = v3;
            v13 = _os_log_send_and_compose_impl(v12, &v32, 0, 0, &_mh_execute_header, v10, 0, "Calling APFSIOC_GET_DIR_STATS for uid:%d", &v39);
            v14 = v13;
            if (v13)
            {
              sub_100002A8C(v13);
            }
          }

          else
          {
            v14 = 0;
          }

          free(v14);
        }

        if (fsctl(v41, 0x40184A03uLL, &v33, 0))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v16 = qword_1000EB308;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 0;
            v17 = sub_1000011A8(1);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v18 = v17;
            }

            else
            {
              v18 = v17 & 0xFFFFFFFE;
            }

            if (v18)
            {
              v39 = 67109120;
              v40 = v3;
              v19 = _os_log_send_and_compose_impl(v18, &v32, 0, 0, &_mh_execute_header, v16, 0, "APFSIOC_GET_DIR_STATS failed or uid:%d", &v39);
              v20 = v19;
              if (v19)
              {
                sub_100002A8C(v19);
              }
            }

            else
            {
              v20 = 0;
            }

            free(v20);
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v21 = qword_1000EB308;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 0;
            v22 = sub_1000011A8(1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
            }

            else
            {
              v23 = v22 & 0xFFFFFFFE;
            }

            if (v23)
            {
              v39 = 67109120;
              v40 = v3;
              v24 = _os_log_send_and_compose_impl(v23, &v32, 0, 0, &_mh_execute_header, v21, 0, "APFSIOC_GET_DIR_STATS SUCCESS for uid:%d", &v39);
              v25 = v24;
              if (v24)
              {
                sub_100002A8C(v24);
              }
            }

            else
            {
              v25 = 0;
            }

            free(v25);
          }

          v37 = 0;
          valuePtr = 0;
          v36 = v34;
        }

        v26 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
        if (v26)
        {
          v27 = v26;
          CFDictionarySetValue(v2, kUMUserSessionQuotaLimitKey, v26);
          CFRelease(v27);
        }

        v28 = CFNumberCreate(0, kCFNumberLongLongType, &v37);
        if (v28)
        {
          v29 = v28;
          CFDictionarySetValue(v2, kUMUserSessionQuotaSoftLimitKey, v28);
          CFRelease(v29);
        }

        v30 = CFNumberCreate(0, kCFNumberLongLongType, &v36);
        if (v30)
        {
          v31 = v30;
          CFDictionarySetValue(v2, kUMUserSessionQuotaUsedKey, v30);
          CFRelease(v31);
        }
      }
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        LOWORD(v33) = 0;
        v8 = _os_log_send_and_compose_impl(v7, v41, 0, 0, &_mh_execute_header, v5, 0, "getUserSessionAttributes: could not find the requested session", &v33, 2);
        v9 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }

  return v2;
}

uint64_t sub_100030420(const __CFDictionary *a1, const void *a2, _DWORD *a3)
{
  v5 = sub_100002700(a1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000023E8(v5, kUMUserSessionIDKey);
    if (a2)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v8 = qword_1000EB308;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 0;
        v9 = sub_1000011A8(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          v35 = 67109120;
          v36 = v7;
          v11 = _os_log_send_and_compose_impl(v10, &v34, 0, 0, &_mh_execute_header, v8, 0, "setUserSessionKeybagData for user %d", &v35);
          v12 = v11;
          if (v11)
          {
            sub_100002A8C(v11);
          }
        }

        else
        {
          v12 = 0;
        }

        free(v12);
      }

      CFDictionarySetValue(v6, kUMUserSessionKeybagOpaqueDataKey, a2);
LABEL_50:
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v28 = qword_1000EB308;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 0;
        v29 = sub_1000011A8(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
        }

        else
        {
          v30 = v29 & 0xFFFFFFFE;
        }

        if (v30)
        {
          v35 = 67109120;
          v36 = v7;
          v31 = _os_log_send_and_compose_impl(v30, &v34, 0, 0, &_mh_execute_header, v28, 0, "Saved keybag Data for the user:%d, saving session", &v35);
          v32 = v31;
          if (v31)
          {
            sub_100002A8C(v31);
          }
        }

        else
        {
          v32 = 0;
        }

        free(v32);
      }

      sub_100018C80();
      return 1;
    }

    if (CFDictionaryContainsKey(v6, kUMUserSessionKeybagOpaqueDataKey))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v18 = qword_1000EB308;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 0;
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v35 = 67109120;
          v36 = v7;
          v21 = _os_log_send_and_compose_impl(v20, &v34, 0, 0, &_mh_execute_header, v18, 0, "clearing KeybagData for user %d", &v35);
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      CFDictionaryRemoveValue(v6, kUMUserSessionKeybagOpaqueDataKey);
      goto LABEL_50;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v23 = qword_1000EB308;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v35 = 67109120;
        v36 = v7;
        v26 = _os_log_send_and_compose_impl(v25, &v34, 0, 0, &_mh_execute_header, v23, 0, "No KeybagData to clear for user %d", &v35);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v13 = qword_1000EB308;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        LOWORD(v35) = 0;
        v16 = _os_log_send_and_compose_impl(v15, &v34, 0, 0, &_mh_execute_header, v13, 0, "setUserSessionKeybagData: could not find the requested session", &v35, 2);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    if (a3)
    {
      *a3 = 2;
    }
  }

  return 1;
}

CFArrayRef sub_1000308D8(uint64_t a1)
{
  v1 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (CFDictionaryContainsKey(v1, kUMUserSessionSyncMachServicesKey) && (v3 = CFDictionaryGetValue(v2, kUMUserSessionSyncMachServicesKey), v4 = CFGetTypeID(v3), v4 == CFArrayGetTypeID()))
  {
    Value = CFDictionaryGetValue(v2, kUMUserSessionSyncMachServicesKey);
    Copy = CFArrayCreateCopy(kCFAllocatorDefault, Value);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v2);
  return Copy;
}

__CFDictionary *sub_100030990(const __CFDictionary *a1)
{
  v27 = kUMUserSessionNameKey;
  v28[0] = CFStringGetTypeID();
  v28[1] = kUMUserSessionFirstNameKey;
  v28[2] = CFStringGetTypeID();
  v28[3] = kUMUserSessionLastNameKey;
  v28[4] = CFStringGetTypeID();
  v28[5] = kUMUserSessionDisplayNameKey;
  v28[6] = CFStringGetTypeID();
  v28[7] = kUMUserSessionOpaqueDataKey;
  v28[8] = CFDataGetTypeID();
  v28[9] = kUMUserSessionFileInfoKey;
  v28[10] = CFStringGetTypeID();
  v28[11] = kUMUserSessionAuditorKey;
  v28[12] = CFBooleanGetTypeID();
  v28[13] = kUMUserSessionisTransientKey;
  v28[14] = CFBooleanGetTypeID();
  v28[15] = kUMUserSessionCloudLoginTimeStampKey;
  v28[16] = CFDateGetTypeID();
  v28[17] = kUMUserSessionDisabledKey;
  v28[18] = CFBooleanGetTypeID();
  v28[19] = kUMUserSessionLanguageKey;
  v28[20] = CFStringGetTypeID();
  v2 = sub_100002700(a1);
  if (v2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v23[0] = 0;
      v4 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        *v24 = 138412290;
        *&v24[4] = v2;
        v6 = _os_log_send_and_compose_impl(v5, v23, 0, 0, &_mh_execute_header, v3, 0, "setUserSessionAttributes: found session %@", v24, 12);
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    v13 = v28;
    v14 = 11;
    do
    {
      sub_100027E10(v2, a1, *(v13 - 1), *v13);
      v13 += 2;
      --v14;
    }

    while (v14);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v15 = qword_1000EB308;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23[0] = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        *v24 = 136315394;
        *&v24[4] = "setUserSessionAttributes";
        v25 = 2080;
        v26 = kMobileKeyBagUserChangedNotificationToken;
        LODWORD(v22) = 22;
        v18 = _os_log_send_and_compose_impl(v17, v23, 0, 0, &_mh_execute_header, v15, 0, "usermanagerd %s posting notification: %s\n", v24, v22);
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    v8 = sub_10008900C(qword_1000EB608);
    v20 = [NSString stringWithUTF8String:kMobileKeyBagUserChangedNotificationToken];
    [v8 post:v20];
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        LOWORD(v23[0]) = 0;
        v11 = _os_log_send_and_compose_impl(v10, v24, 0, 0, &_mh_execute_header, v8, 0, "setUserSessionAttributes: could not find the requested session", v23, 2);
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }
  }

  return v2;
}