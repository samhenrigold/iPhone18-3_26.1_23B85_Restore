uint64_t sub_10003E524(int a1)
{
  sub_10004C208(a1);
  if (v1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 0;
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        *v14 = 138412290;
        *&v14[4] = qword_1000EB5A0;
        v5 = _os_log_send_and_compose_impl(v4, v13, 0, 0, &_mh_execute_header, v2, 0, "Read user sessions in _gUserSessionTable %@", v14, 12);
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    v11 = 1;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        LOWORD(v13[0]) = 0;
        v9 = _os_log_send_and_compose_impl(v8, v14, 0, 0, &_mh_execute_header, v2, 0, "LoadAllUserSessions: diskLoadUserSessions failed", v13, 2);
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

    v11 = 0;
  }

  return v11;
}

void sub_10003E710(CFIndex result)
{
  if (qword_1000EB5A0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v1 = qword_1000EB308;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
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
        v10 = 0;
        v4 = _os_log_send_and_compose_impl(v3, &v11, 0, 0, &_mh_execute_header, v1, 0, "RESET FOREGROUND", &v10, 2);
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

    if (CFArrayGetCount(qword_1000EB5A0) >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v6);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          v9 = CFGetTypeID(ValueAtIndex);
          if (v9 == CFDictionaryGetTypeID())
          {
            CFDictionarySetValue(v8, kUMUserSessionForegroundKey, kCFBooleanFalse);
          }
        }

        ++v6;
      }

      while (CFArrayGetCount(qword_1000EB5A0) > v6);
    }
  }
}

uint64_t sub_10003E884(_DWORD *a1)
{
  if (a1)
  {
    *a1 = 0;
  }

  v4 = &off_1000EB000;
  v5 = sub_1000926B8(qword_1000EB2E8, 0);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 version];
    if (v7 >= +[UMDPersonaManifest currentVersion])
    {
      v16 = v6;
      v8 = [v6 version];
      if (v8 <= +[UMDPersonaManifest currentVersion])
      {
        goto LABEL_74;
      }

      sub_100018028("usermanagerd: persona manifest version %u is from the future! Downgrading is not supported.", [v6 version]);
    }

    else
    {
      v1 = &off_1000EB000;
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v2 = &off_1000EB000;
      v8 = qword_1000EB308;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        v17 = v6;
        v18 = +[UMDPersonaManifest manifest];
        if ([v17 generation])
        {
          v19 = [v17 generation];
        }

        else
        {
          v19 = 1;
        }

        [v18 setGeneration:v19];
        v20 = [v17 users];
        v21 = [v20 count];

        if (v21 == 1)
        {
          v22 = [v17 users];
          v23 = [v22 anyObject];

          v24 = objc_alloc_init(UMDPersonaManifestUser);
          v25 = sub_100089624(qword_1000EB2E0);
          v26 = [v25 count];

          if (v26 == 1)
          {
            v27 = sub_100089624(qword_1000EB2E0);
            v28 = [v27 objectAtIndexedSubscript:0];
            v29 = sub_1000990F0(v28, kUMUserSessionUUIDKey);

            if (v29)
            {
              sub_1000897B8(v24, v29);
              v30 = sub_100088F2C(v23);
              sub_100089CC4(v24, v30);

              v31 = [NSSet setWithObject:v24];
              [v18 setUsers:v31];

              v32 = v18;
              v4 = &off_1000EB000;
            }

            else
            {
              if (qword_1000EB330 != -1)
              {
                sub_100089D40();
              }

              v4 = &off_1000EB000;
              v42 = qword_1000EB328;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v162[0] = 0;
                v43 = sub_1000011A8(0);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v44 = v43;
                }

                else
                {
                  v44 = v43 & 0xFFFFFFFE;
                }

                if (v44)
                {
                  v45 = qword_1000EB2E0;
                  v46 = v42;
                  v149 = sub_100089624(v45);
                  v147 = [v149 objectAtIndexedSubscript:0];
                  v47 = [v147 objectForKeyedSubscript:kUMUserSessionUUIDKey];
                  *v163 = 138543362;
                  *&v163[4] = v47;
                  LODWORD(v136) = 12;
                  v48 = v44;
                  v49 = v46;
                  v50 = _os_log_send_and_compose_impl(v48, v162, 0, 0, &_mh_execute_header, v46, 16, "Failed to upgrade embedded persona manifest: Loaded user UUID is not a valid UUID: %{public}@", v163, v136);

                  if (v50)
                  {
                    sub_100002A8C(v50);
                  }
                }

                else
                {
                  v50 = 0;
                }

                v4 = &off_1000EB000;
                free(v50);
              }

              v29 = 0;
              v32 = 0;
            }

            v2 = &off_1000EB000;
          }

          else
          {
            if (qword_1000EB330 != -1)
            {
              sub_100089D40();
            }

            v2 = &off_1000EB000;
            v29 = qword_1000EB328;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *v163 = 0;
              v38 = sub_1000011A8(0);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v39 = v38;
              }

              else
              {
                v39 = v38 & 0xFFFFFFFE;
              }

              if (v39)
              {
                LOWORD(v162[0]) = 0;
                LODWORD(v136) = 2;
                v40 = _os_log_send_and_compose_impl(v39, v163, 0, 0, &_mh_execute_header, v29, 16, "Failed to upgrade embedded persona manifest: Multiple users are loaded, cannot guess which user UUID to use", v162, v136);
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

            v32 = 0;
            v4 = &off_1000EB000;
          }
        }

        else
        {
          if (v1[98] != -1)
          {
            sub_100089CEC();
          }

          v23 = v2[97];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v162[0] = 0;
            LODWORD(v33) = sub_1000011A8(1);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v33;
            }

            else
            {
              v33 = v33 & 0xFFFFFFFE;
            }

            if (v33)
            {
              v34 = v23;
              v35 = [v17 users];
              v36 = [v35 count];
              *v163 = 134217984;
              *&v163[4] = v36;
              v37 = _os_log_send_and_compose_impl(v33, v162, 0, 0, &_mh_execute_header, v34, 0, "Failed to upgrade embedded persona manifest: Expected to find 1 user, found %lu", v163);

              if (v37)
              {
                sub_100002A8C(v37);
              }

              v4 = &off_1000EB000;
            }

            else
            {
              v37 = 0;
            }

            free(v37);
          }

          v32 = 0;
        }

        if (v32)
        {
          v16 = v32;
          if (sub_100092EA8(v4[93], v32, 0))
          {
LABEL_74:
            v51 = v16;
            if (a1)
            {
              *a1 = 0;
            }

            v137 = v51;
            v52 = [v51 version];
            if (v52 != +[UMDPersonaManifest currentVersion])
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v61 = qword_1000EB308;
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                v162[0] = 0;
                LODWORD(v62) = sub_1000011A8(1);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = v62;
                }

                else
                {
                  v62 = v62 & 0xFFFFFFFE;
                }

                if (v62)
                {
                  v63 = v61;
                  v64 = [v137 version];
                  v65 = +[UMDPersonaManifest currentVersion];
                  *v163 = 67109376;
                  *&v163[4] = v64;
                  *&v163[8] = 1024;
                  *&v163[10] = v65;
                  v66 = _os_log_send_and_compose_impl(v62, v162, 0, 0, &_mh_execute_header, v63, 0, "NEEDS update from incorrect version:%u to %u", v163, 14);

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

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v76 = qword_1000EB308;
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                *v163 = 0;
                v77 = sub_1000011A8(1);
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  v78 = v77;
                }

                else
                {
                  v78 = v77 & 0xFFFFFFFE;
                }

                if (v78)
                {
                  LOWORD(v162[0]) = 0;
                  LODWORD(v136) = 2;
                  v79 = _os_log_send_and_compose_impl(v78, v163, 0, 0, &_mh_execute_header, v76, 0, "STALE VERSION NUMBER IN MANIFEST, returning ...", v162, v136);
                  v80 = v79;
                  if (v79)
                  {
                    sub_100002A8C(v79);
                  }
                }

                else
                {
                  v80 = 0;
                }

                free(v80);
              }

              v75 = 0;
              if (a1)
              {
                *a1 = 2;
              }

              goto LABEL_220;
            }

            v53 = sub_1000013A0(v4[93]);
            v54 = [v53 userPersonas];
            v55 = [v54 count];

            if (v55)
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v56 = qword_1000EB308;
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *v163 = 0;
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
                  LOWORD(v162[0]) = 0;
                  LODWORD(v136) = 2;
                  v59 = _os_log_send_and_compose_impl(v58, v163, 0, 0, &_mh_execute_header, v56, 0, "PREEXISTING MANIFEST, may be new user manifest being added", v162, v136);
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
            }

            if ([v137 generation])
            {
              v81 = [v137 generation];
              v82 = sub_100089790(v4[93]);
              sub_1000553A0(v82, v81);

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v83 = qword_1000EB308;
              if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_158;
              }

              v162[0] = 0;
              LODWORD(v84) = sub_1000011A8(1);
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                v84 = v84;
              }

              else
              {
                v84 = v84 & 0xFFFFFFFE;
              }

              if (v84)
              {
                v85 = v4[93];
                v86 = v83;
                v87 = sub_100089790(v85);
                v89 = sub_100055380(v87, v88);
                *v163 = 134217984;
                *&v163[4] = v89;
                v90 = _os_log_send_and_compose_impl(v84, v162, 0, 0, &_mh_execute_header, v86, 0, "Loaded Persona Generation ID from manifest:%llu", v163);

                if (!v90)
                {
                  goto LABEL_157;
                }

                goto LABEL_155;
              }
            }

            else
            {
              v91 = sub_100089790(v4[93]);
              sub_1000553A0(v91, 1);

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v83 = qword_1000EB308;
              if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_158;
              }

              *v163 = 0;
              v92 = sub_1000011A8(1);
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                v93 = v92;
              }

              else
              {
                v93 = v92 & 0xFFFFFFFE;
              }

              if (v93)
              {
                LOWORD(v162[0]) = 0;
                LODWORD(v136) = 2;
                v90 = _os_log_send_and_compose_impl(v93, v163, 0, 0, &_mh_execute_header, v83, 0, "No Persona Generation ID from manifest setting to 1", v162, v136);
                if (!v90)
                {
LABEL_157:
                  free(v90);
LABEL_158:

                  v94 = &MGCopyAnswer_ptr;
                  v95 = +[NSMutableDictionary dictionary];
                  v96 = v137;
                  v97 = [v137 users];
                  v98 = [v97 count];

                  if (!v98)
                  {
                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v99 = qword_1000EB308;
                    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                    {
                      *v163 = 0;
                      v100 = sub_1000011A8(1);
                      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                      {
                        v101 = v100;
                      }

                      else
                      {
                        v101 = v100 & 0xFFFFFFFE;
                      }

                      if (v101)
                      {
                        LOWORD(v162[0]) = 0;
                        LODWORD(v136) = 2;
                        v102 = _os_log_send_and_compose_impl(v101, v163, 0, 0, &_mh_execute_header, v99, 0, "No user entries on the manifest, may be first creation/erase install scenario", v162, v136);
                        v103 = v102;
                        if (v102)
                        {
                          sub_100002A8C(v102);
                        }
                      }

                      else
                      {
                        v103 = 0;
                      }

                      free(v103);
                    }

                    v96 = v137;
                  }

                  v158 = 0u;
                  v159 = 0u;
                  v156 = 0u;
                  v157 = 0u;
                  v104 = [v96 users];
                  v141 = [v104 countByEnumeratingWithState:&v156 objects:v163 count:16];
                  if (v141)
                  {
                    v105 = 0;
                    v138 = *v157;
                    v106 = &off_1000EB000;
                    v139 = v104;
                    v140 = v95;
                    do
                    {
                      v107 = 0;
                      do
                      {
                        if (*v157 != v138)
                        {
                          objc_enumerationMutation(v104);
                        }

                        v150 = *(*(&v156 + 1) + 8 * v107);
                        if (v106[98] != -1)
                        {
                          sub_100089CEC();
                        }

                        v142 = v107;
                        v108 = qword_1000EB308;
                        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
                        {
                          v155 = 0;
                          LODWORD(v109) = sub_1000011A8(1);
                          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
                          {
                            v109 = v109;
                          }

                          else
                          {
                            v109 = v109 & 0xFFFFFFFE;
                          }

                          if (v109)
                          {
                            v110 = v108;
                            v111 = sub_100089624(v150);
                            v112 = [v111 UUIDString];
                            v160 = 138412290;
                            *v161 = v112;
                            LODWORD(v136) = 12;
                            v113 = _os_log_send_and_compose_impl(v109, &v155, 0, 0, &_mh_execute_header, v110, 2, "Found User Entry:%@", &v160, v136);

                            if (v113)
                            {
                              sub_100002A8C(v113);
                            }

                            v106 = &off_1000EB000;
                          }

                          else
                          {
                            v113 = 0;
                          }

                          free(v113);
                        }

                        v146 = +[NSMutableArray array];
                        v151 = 0u;
                        v152 = 0u;
                        v153 = 0u;
                        v154 = 0u;
                        obj = sub_100088F2C(v150);
                        v148 = [obj countByEnumeratingWithState:&v151 objects:v162 count:16];
                        if (v148)
                        {
                          v145 = *v152;
                          v114 = &off_1000EB000;
                          do
                          {
                            for (i = 0; i != v148; i = i + 1)
                            {
                              if (*v152 != v145)
                              {
                                objc_enumerationMutation(obj);
                              }

                              v116 = *(*(&v151 + 1) + 8 * i);
                              if (v106[98] != -1)
                              {
                                sub_100089CEC();
                              }

                              v117 = v114[97];
                              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                              {
                                v155 = 0;
                                LODWORD(v118) = sub_1000011A8(1);
                                if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                                {
                                  v118 = v118;
                                }

                                else
                                {
                                  v118 = v118 & 0xFFFFFFFE;
                                }

                                if (v118)
                                {
                                  v144 = v105;
                                  v119 = v94;
                                  v120 = v4;
                                  v121 = v117;
                                  v122 = sub_100001660(v116);
                                  v123 = sub_100089624(v150);
                                  v124 = [v123 UUIDString];
                                  v160 = 67109378;
                                  *v161 = v122;
                                  *&v161[4] = 2112;
                                  *&v161[6] = v124;
                                  LODWORD(v136) = 18;
                                  v125 = _os_log_send_and_compose_impl(v118, &v155, 0, 0, &_mh_execute_header, v121, 0, "Adding %d entry to persona Table for user:%@", &v160, v136);

                                  if (v125)
                                  {
                                    sub_100002A8C(v125);
                                  }

                                  v4 = v120;
                                  v94 = v119;
                                  v105 = v144;
                                  v106 = &off_1000EB000;
                                  v114 = &off_1000EB000;
                                }

                                else
                                {
                                  v125 = 0;
                                }

                                free(v125);
                              }

                              v126 = v94[416];
                              v127 = sub_100096838(v116);
                              v128 = [v126 dictionaryWithDictionary:v127];

                              v129 = sub_100089624(v150);
                              v130 = [v129 UUIDString];
                              [v128 setObject:v130 forKeyedSubscript:kUMUserPersonaUserODUUIDKey];

                              if (sub_100001434(v116) == 4 || sub_100001434(v116) == 3)
                              {
                                v105 |= sub_10008BEEC(v4[93], v128);
                              }

                              [v146 addObject:v128];
                            }

                            v148 = [obj countByEnumeratingWithState:&v151 objects:v162 count:16];
                          }

                          while (v148);
                        }

                        v131 = sub_100089624(v150);
                        v132 = [v131 UUIDString];
                        v95 = v140;
                        [v140 setObject:v146 forKeyedSubscript:v132];

                        v107 = v142 + 1;
                        v104 = v139;
                      }

                      while ((v142 + 1) != v141);
                      v141 = [v139 countByEnumeratingWithState:&v156 objects:v163 count:16];
                    }

                    while (v141);

                    v133 = sub_1000013A0(v4[93]);
                    [v133 setUserPersonas:v140];

                    if (v105)
                    {
                      sub_10008EBBC(v4[93]);
                    }
                  }

                  else
                  {

                    v134 = sub_1000013A0(v4[93]);
                    [v134 setUserPersonas:v95];
                  }

                  v75 = 1;
LABEL_220:

                  v16 = v137;
                  goto LABEL_221;
                }

LABEL_155:
                sub_100002A8C(v90);
                goto LABEL_157;
              }
            }

            v90 = 0;
            goto LABEL_157;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v70 = v2[97];
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *v163 = 0;
            v71 = sub_1000011A8(1);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v72 = v71;
            }

            else
            {
              v72 = v71 & 0xFFFFFFFE;
            }

            if (v72)
            {
              LOWORD(v162[0]) = 0;
              LODWORD(v136) = 2;
              v73 = _os_log_send_and_compose_impl(v72, v163, 0, 0, &_mh_execute_header, v70, 0, "Failed to write out upgraded persona manifest data", v162, v136);
              v74 = v73;
              if (v73)
              {
                sub_100002A8C(v73);
              }
            }

            else
            {
              v74 = 0;
            }

            free(v74);
          }

          if (!a1)
          {
            goto LABEL_171;
          }

          goto LABEL_118;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v12 = v2[97];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v163 = 0;
          v67 = sub_1000011A8(1);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v68 = v67;
          }

          else
          {
            v68 = v67 & 0xFFFFFFFE;
          }

          if (v68)
          {
            LOWORD(v162[0]) = 0;
            LODWORD(v136) = 2;
            v15 = _os_log_send_and_compose_impl(v68, v163, 0, 0, &_mh_execute_header, v12, 0, "Failed to upgrade persona manifest data", v162, v136);
LABEL_104:
            v69 = v15;
            if (v15)
            {
              sub_100002A8C(v15);
            }

            goto LABEL_116;
          }

          goto LABEL_115;
        }

        goto LABEL_117;
      }

      v162[0] = 0;
      LODWORD(v9) = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v9;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = v8;
        *v163 = 67109376;
        *&v163[4] = [v6 version];
        *&v163[8] = 1024;
        *&v163[10] = +[UMDPersonaManifest currentVersion];
        v11 = _os_log_send_and_compose_impl(v9, v162, 0, 0, &_mh_execute_header, v10, 0, "Upgrading persona manifest from version %d to version %d", v163, 14);

        if (v11)
        {
          sub_100002A8C(v11);
        }

        goto LABEL_25;
      }
    }

    v11 = 0;
LABEL_25:
    free(v11);
    goto LABEL_26;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v12 = qword_1000EB308;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v163 = 0;
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
      LOWORD(v162[0]) = 0;
      v15 = _os_log_send_and_compose_impl(v14, v163, 0, 0, &_mh_execute_header, v12, 0, "Failed to load personas: Failed to load persona manifest", v162, 2);
      goto LABEL_104;
    }

LABEL_115:
    v69 = 0;
LABEL_116:
    free(v69);
  }

LABEL_117:

  v16 = 0;
  if (!a1)
  {
LABEL_171:
    v75 = 0;
    goto LABEL_221;
  }

LABEL_118:
  v75 = 0;
  *a1 = 2;
LABEL_221:

  return v75;
}

uint64_t sub_10003FC14(uint64_t a1, int a2, int a3, int a4)
{
  v299 = a1;
  valuePtr = a2;
  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v10 = qword_1000EB318;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v307 = 0;
    v11 = sub_1000011A8(0);
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
      v315.st_dev = 67109120;
      *&v315.st_mode = v299;
      v4 = _os_log_send_and_compose_impl(v13, v307, 0, 0, &_mh_execute_header, v12, 0, "Loading foreground user %d...", &v315);

      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {

      v4 = 0;
    }

    free(v4);
  }

  if (v299 == -1)
  {
    sub_100089E1C();
  }

  else
  {
    v6 = &off_1000EB000;
    v14 = sub_10008A2F4(qword_1000EB2E0, v299);

    if (v14)
    {
      v4 = &off_1000EB000;
      v7 = &qword_1000EB608;
      v5 = &kUMUserSessionHomeDirKey;
      if (dword_1000EB5B0 == 1)
      {
        if (qword_1000EB310 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_672;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *&v315.st_dev = 0;
        v21 = sub_1000011A8(1);
        v22 = v20;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v21;
        }

        else
        {
          v23 = v21 & 0xFFFFFFFE;
        }

        if (v23)
        {
          *v307 = 67109632;
          *&v307[4] = v299;
          *&v307[8] = 1024;
          *&v307[10] = qword_1000EB5A8;
          *&v307[14] = 1024;
          *&v307[16] = valuePtr;
          v24 = _os_log_send_and_compose_impl(v23, &v315, 0, 0, &_mh_execute_header, v22, 0, "Regular mode Setup for user:%d: Num Sessions:%d, CurrentsessionID:%d", v307, 20, v296);

          if (v24)
          {
            sub_100002A8C(v24);
          }
        }

        else
        {

          v24 = 0;
        }

        free(v24);
      }

      v30 = sub_10008A2F4(qword_1000EB2E0, v299);
      if (qword_1000EB5A8 >= 2)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v31 = qword_1000EB308;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v307 = 0;
          v32 = sub_1000011A8(1);
          v33 = v31;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v32;
          }

          else
          {
            v34 = v32 & 0xFFFFFFFE;
          }

          if (v34)
          {
            LOWORD(v315.st_dev) = 0;
            LODWORD(v295) = 2;
            v35 = _os_log_send_and_compose_impl(v34, v307, 0, 0, &_mh_execute_header, v33, 0, "Has Secondary Users", &v315, v295);

            if (v35)
            {
              sub_100002A8C(v35);
            }
          }

          else
          {

            v35 = 0;
          }

          free(v35);
        }
      }

      v80 = sub_100088F2C(qword_1000EB608);
      v81 = sub_100089B00(v80, v299);

      v82 = &off_1000EB000;
      if (v81)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v83 = qword_1000EB308;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *v307 = 0;
          v84 = sub_1000011A8(1);
          v83 = v83;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v85 = v84;
          }

          else
          {
            v85 = v84 & 0xFFFFFFFE;
          }

          if (v85)
          {
            LOWORD(v315.st_dev) = 0;
            LODWORD(v295) = 2;
            v86 = _os_log_send_and_compose_impl(v85, v307, 0, 0, &_mh_execute_header, v83, 0, "Set Foreground ID + multiuser in commpage successfully", &v315, v295);
            goto LABEL_169;
          }

          goto LABEL_172;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v83 = qword_1000EB308;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *v307 = 0;
          v87 = sub_1000011A8(1);
          v83 = v83;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v88 = v87;
          }

          else
          {
            v88 = v87 & 0xFFFFFFFE;
          }

          if (v88)
          {
            LOWORD(v315.st_dev) = 0;
            LODWORD(v295) = 2;
            v86 = _os_log_send_and_compose_impl(v88, v307, 0, 0, &_mh_execute_header, v83, 0, "FAILED to Set Foreground ID + multiuser in commpage successfully", &v315, v295);
LABEL_169:
            v89 = v86;

            if (v89)
            {
              sub_100002A8C(v89);
            }

            goto LABEL_173;
          }

LABEL_172:

          v89 = 0;
LABEL_173:
          v90 = v299;
          free(v89);
LABEL_174:

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v91 = qword_1000EB308;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            *v307 = 0;
            v92 = sub_1000011A8(1);
            v93 = v91;
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v94 = v92;
            }

            else
            {
              v94 = v92 & 0xFFFFFFFE;
            }

            if (v94)
            {
              LOWORD(v315.st_dev) = 0;
              LODWORD(v295) = 2;
              v95 = _os_log_send_and_compose_impl(v94, v307, 0, 0, &_mh_execute_header, v93, 0, "Local enrolled User, Mounting the home dir..", &v315, v295);

              if (v95)
              {
                sub_100002A8C(v95);
              }
            }

            else
            {

              v95 = 0;
            }

            v90 = v299;
            free(v95);
          }

          if (![qword_1000EB2D8 splitUserVolumeEnabled])
          {
            goto LABEL_662;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v96 = qword_1000EB308;
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            *v307 = 0;
            v97 = sub_1000011A8(1);
            v98 = v96;
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              v99 = v97;
            }

            else
            {
              v99 = v97 & 0xFFFFFFFE;
            }

            if (v99)
            {
              LOWORD(v315.st_dev) = 0;
              LODWORD(v295) = 2;
              v100 = _os_log_send_and_compose_impl(v99, v307, 0, 0, &_mh_execute_header, v98, 0, "Mounting the volume prior to volume map", &v315, v295);

              if (v100)
              {
                sub_100002A8C(v100);
              }
            }

            else
            {

              v100 = 0;
            }

            v90 = v299;
            free(v100);
          }

          sub_10001A918(v30, v90);
          if (dword_1000EB5B0)
          {
            v101 = 0;
            goto LABEL_233;
          }

          v102 = sub_1000013A0(qword_1000EB608);
          v103 = v90;
          v104 = v102;
          v301 = 0;
          v105 = [v102 fixupPath:@"/private/var/mobile/Library" withMode:493 toUser:v103 group:v103 error:&v301];
          v101 = v301;

          if (v105)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v106 = qword_1000EB308;
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
            {
              *v307 = 0;
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
                LOWORD(v315.st_dev) = 0;
                v109 = _os_log_send_and_compose_impl(v108, v307, 0, 0, &_mh_execute_header, v106, 0, "LibraryPath Healed");
                goto LABEL_217;
              }

              goto LABEL_228;
            }
          }

          else if (v101)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v106 = qword_1000EB308;
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
            {
              *v307 = 0;
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
                v112 = [v101 code];
                v315.st_dev = 67109120;
                *&v315.st_mode = v112;
                v109 = _os_log_send_and_compose_impl(v111, v307, 0, 0, &_mh_execute_header, v106, 0, "Library Path healing failed with error:%d, moving on.", &v315);
LABEL_217:
                v113 = v109;

                if (v113)
                {
                  sub_100002A8C(v113);
                }

                goto LABEL_229;
              }

LABEL_228:

              v113 = 0;
LABEL_229:
              v90 = v299;
              free(v113);
LABEL_232:

LABEL_233:
              v117 = sub_100079590(v30, kUMUserSessionVolumeDeviceNodeKey);
              if (!v117)
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v122 = qword_1000EB308;
                if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_660;
                }

                *v307 = 0;
                v123 = sub_1000011A8(1);
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                {
                  v124 = v123;
                }

                else
                {
                  v124 = v123 & 0xFFFFFFFE;
                }

                if (v124)
                {
                  LOWORD(v315.st_dev) = 0;
                  LODWORD(v295) = 2;
                  v125 = _os_log_send_and_compose_impl(v124, v307, 0, 0, &_mh_execute_header, v122, 0, "not able to find the diskNode, skipped volume map", &v315, v295);
                  v126 = v125;
                  if (v125)
                  {
                    sub_100002A8C(v125);
                  }
                }

                else
                {
                  v126 = 0;
                }

                v90 = v299;
                v133 = v126;
                goto LABEL_659;
              }

              if (a3)
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v118 = qword_1000EB308;
                if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  *v307 = 0;
                  v119 = sub_1000011A8(1);
                  v118 = v118;
                  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    v120 = v119;
                  }

                  else
                  {
                    v120 = v119 & 0xFFFFFFFE;
                  }

                  if (v120)
                  {
                    LOWORD(v315.st_dev) = 0;
                    LODWORD(v295) = 2;
                    v121 = _os_log_send_and_compose_impl(v120, v307, 0, 0, &_mh_execute_header, v118, 0, "Skipping Volume Map, as its completed part of Erase Install UserVolume fixup", &v315, v295);

                    if (v121)
                    {
                      sub_100002A8C(v121);
                    }
                  }

                  else
                  {

                    v121 = 0;
                  }

                  v90 = v299;
                  free(v121);
                }

LABEL_291:

                if (!a4 || !_os_feature_enabled_impl())
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v122 = qword_1000EB308;
                  if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_660;
                  }

                  *v307 = 0;
                  v149 = sub_1000011A8(1);
                  v150 = v122;
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                  {
                    v151 = v149;
                  }

                  else
                  {
                    v151 = v149 & 0xFFFFFFFE;
                  }

                  if (v151)
                  {
                    LOWORD(v315.st_dev) = 0;
                    LODWORD(v295) = 2;
                    v152 = _os_log_send_and_compose_impl(v151, v307, 0, 0, &_mh_execute_header, v150, 0, "Skipping Sandbox Update for 501 user", &v315, v295);
                    goto LABEL_655;
                  }

LABEL_657:

                  v291 = 0;
LABEL_658:
                  v90 = v299;
                  v133 = v291;
LABEL_659:
                  free(v133);
LABEL_660:

                  goto LABEL_661;
                }

                memset(v313, 0, sizeof(v313));
                v312 = 0u;
                v311 = 0u;
                v310 = 0u;
                v309 = 0u;
                v308 = 0u;
                memset(&v307[20], 0, 128);
                strcpy(v307, "/private/var/mobile");
                if (v90 == 501)
                {
LABEL_647:
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v122 = qword_1000EB308;
                  if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_660;
                  }

                  *&v315.st_dev = 0;
                  v289 = sub_1000011A8(1);
                  v150 = v122;
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                  {
                    v290 = v289;
                  }

                  else
                  {
                    v290 = v289 & 0xFFFFFFFE;
                  }

                  if (v290)
                  {
                    LOWORD(v314.st_dev) = 0;
                    LODWORD(v295) = 2;
                    v152 = _os_log_send_and_compose_impl(v290, &v315, 0, 0, &_mh_execute_header, v150, 0, "NOT MODIFIED THE LAST BOOTED USER, so 501 User will boot on reboot", &v314, v295);
LABEL_655:
                    v291 = v152;

                    if (v291)
                    {
                      sub_100002A8C(v291);
                    }

                    goto LABEL_658;
                  }

                  goto LABEL_657;
                }

                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v144 = qword_1000EB308;
                if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                {
                  *&v314.st_dev = 0;
                  v145 = sub_1000011A8(1);
                  v146 = v144;
                  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
                  {
                    v147 = v145;
                  }

                  else
                  {
                    v147 = v145 & 0xFFFFFFFE;
                  }

                  if (v147)
                  {
                    v315.st_dev = 67109378;
                    v90 = v299;
                    *&v315.st_mode = v299;
                    LOWORD(v315.st_ino) = 2080;
                    *(&v315.st_ino + 2) = v307;
                    LODWORD(v295) = 18;
                    v148 = _os_log_send_and_compose_impl(v147, &v314, 0, 0, &_mh_execute_header, v146, 0, "Adding Sandbox-kext path upload for uid %d, path:%s", &v315, v295);

                    if (v148)
                    {
                      sub_100002A8C(v148);
                    }
                  }

                  else
                  {

                    v148 = 0;
                    v90 = v299;
                  }

                  free(v148);
                }

                if (sub_100032B3C(v90, v307, 1))
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v282 = qword_1000EB308;
                  if (!os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_646;
                  }

                  *&v315.st_dev = 0;
                  v283 = sub_1000011A8(1);
                  v282 = v282;
                  if (os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
                  {
                    v284 = v283;
                  }

                  else
                  {
                    v284 = v283 & 0xFFFFFFFE;
                  }

                  if (v284)
                  {
                    v314.st_dev = 67109120;
                    v90 = v299;
                    *&v314.st_mode = v299;
                    v285 = _os_log_send_and_compose_impl(v284, &v315, 0, 0, &_mh_execute_header, v282, 0, "Set homepath to Sandbox for uid:%d", &v314);
                    goto LABEL_642;
                  }
                }

                else
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v282 = qword_1000EB308;
                  if (!os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_646;
                  }

                  *&v315.st_dev = 0;
                  v286 = sub_1000011A8(1);
                  v282 = v282;
                  if (os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
                  {
                    v287 = v286;
                  }

                  else
                  {
                    v287 = v286 & 0xFFFFFFFE;
                  }

                  if (v287)
                  {
                    v314.st_dev = 67109120;
                    v90 = v299;
                    *&v314.st_mode = v299;
                    v285 = _os_log_send_and_compose_impl(v287, &v315, 0, 0, &_mh_execute_header, v282, 0, "Failed to add homepath to Sandbox for uid:%d", &v314);
LABEL_642:
                    v288 = v285;

                    if (v288)
                    {
                      sub_100002A8C(v288);
                    }

                    goto LABEL_645;
                  }
                }

                v288 = 0;
                v90 = v299;
LABEL_645:
                free(v288);
LABEL_646:

                goto LABEL_647;
              }

              v127 = v117;
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v128 = qword_1000EB308;
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                *&v315.st_dev = 0;
                v129 = sub_1000011A8(1);
                v130 = v128;
                if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                {
                  v131 = v129;
                }

                else
                {
                  v131 = v129 & 0xFFFFFFFE;
                }

                if (v131)
                {
                  *v307 = 138412546;
                  *&v307[4] = v127;
                  *&v307[12] = 1024;
                  *&v307[14] = v299;
                  LODWORD(v295) = 18;
                  v132 = _os_log_send_and_compose_impl(v131, &v315, 0, 0, &_mh_execute_header, v130, 0, "Calling AKSVolumeMap with disk:%@ for useruid:%d", v307, v295);

                  if (v132)
                  {
                    sub_100002A8C(v132);
                  }
                }

                else
                {

                  v132 = 0;
                }

                free(v132);
                v6 = &off_1000EB000;
                v82 = &off_1000EB000;
              }

              v134 = sub_100089A80(qword_1000EB608);
              v300 = 0;
              v135 = [v134 mapVolume:v127 toSession:v299 withPersona:0 error:&v300];
              v118 = v300;

              if (v135)
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v136 = qword_1000EB308;
                if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                {
                  *v307 = 0;
                  v137 = sub_1000011A8(1);
                  v136 = v136;
                  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                  {
                    v138 = v137;
                  }

                  else
                  {
                    v138 = v137 & 0xFFFFFFFE;
                  }

                  if (v138)
                  {
                    LOWORD(v315.st_dev) = 0;
                    v139 = _os_log_send_and_compose_impl(v138, v307, 0, 0, &_mh_execute_header, v136, 0, "AKS VolumeMapPath Success");
                    goto LABEL_285;
                  }

                  goto LABEL_288;
                }
              }

              else
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v136 = qword_1000EB308;
                if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                {
                  *&v315.st_dev = 0;
                  v140 = sub_1000011A8(1);
                  v136 = v136;
                  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                  {
                    v141 = v140;
                  }

                  else
                  {
                    v141 = v140 & 0xFFFFFFFE;
                  }

                  if (v141)
                  {
                    v142 = [v118 code];
                    *v307 = 134217984;
                    *&v307[4] = v142;
                    v139 = _os_log_send_and_compose_impl(v141, &v315, 0, 0, &_mh_execute_header, v136, 0, "AKS VolumeMap failed with %ld", v307);
LABEL_285:
                    v143 = v139;

                    if (v143)
                    {
                      sub_100002A8C(v143);
                    }

                    goto LABEL_289;
                  }

LABEL_288:

                  v143 = 0;
LABEL_289:
                  v90 = v299;
                  free(v143);
                  goto LABEL_290;
                }
              }

              v90 = v299;
LABEL_290:

              goto LABEL_291;
            }
          }

          else
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v106 = qword_1000EB308;
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
            {
              *v307 = 0;
              v114 = sub_1000011A8(1);
              v106 = v106;
              if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
              {
                v115 = v114;
              }

              else
              {
                v115 = v114 & 0xFFFFFFFE;
              }

              if (v115)
              {
                LOWORD(v315.st_dev) = 0;
                LODWORD(v295) = 2;
                v116 = _os_log_send_and_compose_impl(v115, v307, 0, 0, &_mh_execute_header, v106, 0, "Library Path healing failed with error, moving on.", &v315, v295);

                if (v116)
                {
                  sub_100002A8C(v116);
                }
              }

              else
              {

                v116 = 0;
              }

              v90 = v299;
              free(v116);
              v101 = 0;
              goto LABEL_232;
            }

            v101 = 0;
          }

          v90 = v299;
          goto LABEL_232;
        }
      }

      v90 = v299;
      goto LABEL_174;
    }
  }

  sub_100089E04();
LABEL_672:
  sub_100089CEC();
LABEL_16:
  v15 = *(v4 + 97);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v307 = 0;
    v16 = sub_1000011A8(1);
    v17 = v15;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 0xFFFFFFFE;
    }

    if (v18)
    {
      LOWORD(v315.st_dev) = 0;
      v19 = _os_log_send_and_compose_impl(v18, v307, 0, 0, &_mh_execute_header, v17, 0, "SHARED IPAD Configuration Setup", &v315, 2);

      if (v19)
      {
        sub_100002A8C(v19);
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

  v25 = *(v4 + 97);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v307 = 0;
    v26 = sub_1000011A8(1);
    v27 = v25;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v315.st_dev = 67109120;
      *&v315.st_mode = v299;
      v29 = _os_log_send_and_compose_impl(v28, v307, 0, 0, &_mh_execute_header, v27, 0, "NextSESSION ID is %d", &v315);

      if (v29)
      {
        sub_100002A8C(v29);
      }
    }

    else
    {

      v29 = 0;
    }

    free(v29);
  }

  v297 = sub_10008A2F4(v6[92], v299);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v36 = *(v4 + 97);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *&v315.st_dev = 0;
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
      *v307 = 67109378;
      *&v307[4] = v299;
      *&v307[8] = 2112;
      *&v307[10] = v297;
      LODWORD(v295) = 18;
      v40 = _os_log_send_and_compose_impl(v39, &v315, 0, 0, &_mh_execute_header, v38, 0, "Found for uid %d a session %@", v307, v295);

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

  if (v299 == 502)
  {
    v41 = sub_1000013A0(*v7);
    [v41 removeFileAtPath:@"/private/var//keybags/nextsession_opaque.kb" error:0];

    v42 = sub_1000013A0(*v7);
    [v42 removeFileAtPath:@"/private/var//keybags/nextsession_SBD_opaque.kb" error:0];
  }

  v298 = sub_1000023E8(v297, kUMUserSessionGroupIDKey);
  v43 = sub_100088F2C(*v7);
  v44 = sub_100089B00(v43, v299);

  if (v44)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v45 = *(v4 + 97);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *v307 = 0;
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
        LOWORD(v315.st_dev) = 0;
        LODWORD(v295) = 2;
        v48 = _os_log_send_and_compose_impl(v47, v307, 0, 0, &_mh_execute_header, v45, 0, "Set Foreground ID + multiuser in commpage successfully", &v315, v295);
        goto LABEL_87;
      }

      goto LABEL_89;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v45 = *(v4 + 97);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *v307 = 0;
      v49 = sub_1000011A8(1);
      v45 = v45;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v50 = v49;
      }

      else
      {
        v50 = v49 & 0xFFFFFFFE;
      }

      if (v50)
      {
        LOWORD(v315.st_dev) = 0;
        LODWORD(v295) = 2;
        v48 = _os_log_send_and_compose_impl(v50, v307, 0, 0, &_mh_execute_header, v45, 0, "FAILED to Set Foreground ID + multiuser in commpage successfully", &v315, v295);
LABEL_87:
        v51 = v48;

        if (v51)
        {
          sub_100002A8C(v51);
        }

        goto LABEL_90;
      }

LABEL_89:

      v51 = 0;
LABEL_90:
      free(v51);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v52 = *(v4 + 97);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *v307 = 0;
    v53 = sub_1000011A8(1);
    v54 = v52;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v53;
    }

    else
    {
      v55 = v53 & 0xFFFFFFFE;
    }

    if (v55)
    {
      v315.st_dev = 67109120;
      *&v315.st_mode = v299;
      LODWORD(v295) = 8;
      v56 = _os_log_send_and_compose_impl(v55, v307, 0, 0, &_mh_execute_header, v54, 0, "SETTING SYSTEM TO BOOT FOR UID %D, FS SETUP START", &v315, v295);

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
    v4 = &off_1000EB000;
  }

  if (v299 == 502)
  {
    v57 = 1;
  }

  else
  {
    v57 = 2;
  }

  dword_1000EB5B8 = v57;
  dword_1000EB5BC = 0;
  memset(&v315, 0, sizeof(v315));
  memset(&v314, 0, sizeof(v314));
  if (lstat("/private/var/mobile", &v315))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v58 = v297;
    v59 = *(v4 + 97);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_335;
    }

    *v304 = 0;
    LODWORD(v60) = sub_1000011A8(1);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v60;
    }

    else
    {
      v60 = v60 & 0xFFFFFFFE;
    }

    if (v60)
    {
      v61 = v59;
      v62 = __error();
      v63 = strerror(*v62);
      *v307 = 136315138;
      *&v307[4] = v63;
      v64 = _os_log_send_and_compose_impl(v60, v304, 0, 0, &_mh_execute_header, v61, 0, "FAILED to stat of varmobile with error %s", v307);
LABEL_114:
      v65 = v64;

      if (v65)
      {
        sub_100002A8C(v65);
      }

      v4 = &off_1000EB000;
      goto LABEL_334;
    }

    goto LABEL_333;
  }

  v66 = v315.st_mode & 0xF000;
  if (v66 != 0x4000)
  {
    if (v66 == 40960)
    {
      v67 = sub_1000013A0(*v7);
      v68 = [v67 removeFileAtPath:@"/private/var/mobile" error:0];

      v58 = v297;
      if (v68)
      {
        goto LABEL_336;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v59 = *(v4 + 97);
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_335;
      }

      *v307 = 0;
      v69 = sub_1000011A8(1);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v69;
      }

      else
      {
        v70 = v69 & 0xFFFFFFFE;
      }

      if (!v70)
      {
        goto LABEL_333;
      }

      *v304 = 0;
      v71 = _os_log_send_and_compose_impl(v70, v307, 0, 0, &_mh_execute_header, v59, 0, "Failed to unlink the redirect");
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v58 = v297;
      v59 = *(v4 + 97);
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_335;
      }

      *v307 = 0;
      v78 = sub_1000011A8(1);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v79 = v78;
      }

      else
      {
        v79 = v78 & 0xFFFFFFFE;
      }

      if (!v79)
      {
        goto LABEL_333;
      }

      *v304 = 67109120;
      *&v304[4] = v315.st_mode;
      v71 = _os_log_send_and_compose_impl(v79, v307, 0, 0, &_mh_execute_header, v59, 0, "varmobile not a dir: 0x%x", v304);
    }

    v65 = v71;
    if (v71)
    {
      sub_100002A8C(v71);
    }

    goto LABEL_334;
  }

  v58 = v297;
  if (sub_100054EFC("/private/var/mobile", 0x80000))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v72 = *(v4 + 97);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *v304 = 0;
      LODWORD(v73) = sub_1000011A8(1);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = v73;
      }

      else
      {
        v73 = v73 & 0xFFFFFFFE;
      }

      if (v73)
      {
        v74 = v72;
        v75 = __error();
        v76 = strerror(*v75);
        *v307 = 136315138;
        *&v307[4] = v76;
        v77 = _os_log_send_and_compose_impl(v73, v304, 0, 0, &_mh_execute_header, v74, 0, "Forced unmount of VARMOBILE failed with %s", v307);

        if (v77)
        {
          sub_100002A8C(v77);
        }

        v4 = &off_1000EB000;
      }

      else
      {
        v77 = 0;
      }

      free(v77);
    }
  }

  if (lstat("/private/var/OLDmobile", &v314))
  {
    rename("/private/var/mobile", "/private/var/OLDmobile", v153);
    if (!v154)
    {
      goto LABEL_336;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v59 = *(v4 + 97);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_335;
    }

    *v304 = 0;
    LODWORD(v155) = sub_1000011A8(1);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v155 = v155;
    }

    else
    {
      v155 = v155 & 0xFFFFFFFE;
    }

    if (v155)
    {
      v61 = v59;
      v156 = __error();
      v157 = strerror(*v156);
      *v307 = 136315138;
      *&v307[4] = v157;
      v64 = _os_log_send_and_compose_impl(v155, v304, 0, 0, &_mh_execute_header, v61, 0, "Failed to move prev Mobile to oldMobile with error %s", v307);
      goto LABEL_114;
    }

LABEL_333:
    v65 = 0;
LABEL_334:
    free(v65);
    goto LABEL_335;
  }

  if (!rmdir("/private/var/mobile"))
  {
    goto LABEL_336;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v59 = *(v4 + 97);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *v304 = 0;
    LODWORD(v158) = sub_1000011A8(1);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v158 = v158;
    }

    else
    {
      v158 = v158 & 0xFFFFFFFE;
    }

    if (v158)
    {
      v61 = v59;
      v159 = __error();
      v160 = strerror(*v159);
      *v307 = 136315138;
      *&v307[4] = v160;
      v64 = _os_log_send_and_compose_impl(v158, v304, 0, 0, &_mh_execute_header, v61, 0, "Failed to rmdir VARMOBILE with error %s", v307);
      goto LABEL_114;
    }

    goto LABEL_333;
  }

LABEL_335:

LABEL_336:
  if (mkdir("/private/var/mobile", 0x1FFu))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v161 = *(v4 + 97);
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
    {
      *v304 = 0;
      LODWORD(v162) = sub_1000011A8(1);
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
      {
        v162 = v162;
      }

      else
      {
        v162 = v162 & 0xFFFFFFFE;
      }

      if (v162)
      {
        v163 = v161;
        v164 = __error();
        v165 = strerror(*v164);
        *v307 = 136315138;
        *&v307[4] = v165;
        v166 = _os_log_send_and_compose_impl(v162, v304, 0, 0, &_mh_execute_header, v163, 0, "Failed to create new VRAMOBILE dir with error %s", v307);

        if (v166)
        {
          sub_100002A8C(v166);
        }

        v4 = &off_1000EB000;
      }

      else
      {
        v166 = 0;
      }

      free(v166);
    }
  }

  if (chown("/private/var/mobile", v299, v298))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v167 = *(v4 + 97);
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
    {
      *v304 = 0;
      LODWORD(v168) = sub_1000011A8(1);
      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
      {
        v168 = v168;
      }

      else
      {
        v168 = v168 & 0xFFFFFFFE;
      }

      if (v168)
      {
        v169 = v167;
        v170 = __error();
        v171 = strerror(*v170);
        *v307 = 67109634;
        *&v307[4] = v299;
        *&v307[8] = 1024;
        *&v307[10] = v298;
        *&v307[14] = 2080;
        *&v307[16] = v171;
        v172 = _os_log_send_and_compose_impl(v168, v304, 0, 0, &_mh_execute_header, v169, 0, "failed to change ownership on VARMOBILE to %d,%d with error: %s", v307, 24, v296);

        if (v172)
        {
          sub_100002A8C(v172);
        }

        v4 = &off_1000EB000;
        goto LABEL_371;
      }

LABEL_370:
      v172 = 0;
LABEL_371:
      free(v172);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v167 = *(v4 + 97);
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
    {
      *v304 = 0;
      v173 = sub_1000011A8(1);
      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
      {
        v174 = v173;
      }

      else
      {
        v174 = v173 & 0xFFFFFFFE;
      }

      if (v174)
      {
        *v307 = 67109376;
        *&v307[4] = v299;
        *&v307[8] = 1024;
        *&v307[10] = v298;
        v175 = _os_log_send_and_compose_impl(v174, v304, 0, 0, &_mh_execute_header, v167, 0, "Changed ownership on VARMOBILE to %d,%d", v307, 14);
        v172 = v175;
        if (v175)
        {
          sub_100002A8C(v175);
        }

        goto LABEL_371;
      }

      goto LABEL_370;
    }
  }

  bzero(v307, 0x400uLL);
  sub_1000795D4(v58, *v5, v307, 1024);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v176 = *(v4 + 97);
  if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
  {
    v303 = 0;
    v177 = sub_1000011A8(1);
    if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
    {
      v178 = v177;
    }

    else
    {
      v178 = v177 & 0xFFFFFFFE;
    }

    if (v178)
    {
      *v304 = 136315138;
      *&v304[4] = v307;
      v179 = _os_log_send_and_compose_impl(v178, &v303, 0, 0, &_mh_execute_header, v176, 0, "XXXXXX: HomeDir is %s XXXXXXXXX ", v304);
      v180 = v179;
      if (v179)
      {
        sub_100002A8C(v179);
      }
    }

    else
    {
      v180 = 0;
    }

    free(v180);
  }

  v181 = fsctl("/private/var/", 0x2000410FuLL, v307, 0);
  if (v181)
  {
    v182 = v181;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v183 = *(v4 + 97);
    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
    {
      v303 = 0;
      LODWORD(v184) = sub_1000011A8(1);
      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
      {
        v184 = v184;
      }

      else
      {
        v184 = v184 & 0xFFFFFFFE;
      }

      if (v184)
      {
        v185 = v183;
        v186 = strerror(v182);
        *v304 = 67109634;
        *&v304[4] = v299;
        *&v304[8] = 2080;
        *&v304[10] = v307;
        v305 = 2080;
        v306 = v186;
        LODWORD(v295) = 28;
        v187 = _os_log_send_and_compose_impl(v184, &v303, 0, 0, &_mh_execute_header, v185, 0, "Failed to set filesystemRedirect for uid %d:%s with error: %s", v304, v295, v296);

        if (v187)
        {
          sub_100002A8C(v187);
        }
      }

      else
      {
        v187 = 0;
      }

      v4 = &off_1000EB000;
      free(v187);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v188 = *(v4 + 97);
    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
    {
      v303 = 0;
      v189 = sub_1000011A8(1);
      if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
      {
        v190 = v189;
      }

      else
      {
        v190 = v189 & 0xFFFFFFFE;
      }

      if (v190)
      {
        *v304 = 67109378;
        *&v304[4] = v299;
        *&v304[8] = 2080;
        *&v304[10] = v307;
        LODWORD(v295) = 18;
        v191 = _os_log_send_and_compose_impl(v190, &v303, 0, 0, &_mh_execute_header, v188, 0, "Set filesystemRedirect to uid %d:%s", v304, v295);
        v192 = v191;
        if (v191)
        {
          sub_100002A8C(v191);
        }
      }

      else
      {
        v192 = 0;
      }

      free(v192);
    }

    sub_100032B3C(v299, v307, 1);
  }

  strcpy(v307, "/private/var/DELETED");
  if (!lstat("/private/var/DELETED", &v315))
  {
    if (sub_10002D62C(v307))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v193 = *(v4 + 97);
      if (!os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_440;
      }

      v303 = 0;
      v199 = sub_1000011A8(1);
      if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
      {
        v200 = v199;
      }

      else
      {
        v200 = v199 & 0xFFFFFFFE;
      }

      if (!v200)
      {
        goto LABEL_438;
      }

      *v304 = 136315138;
      *&v304[4] = v307;
      v201 = _os_log_send_and_compose_impl(v200, &v303, 0, 0, &_mh_execute_header, v193, 0, "REMOVED STALE ENTRIES PATH:%s", v304);
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v193 = *(v4 + 97);
      if (!os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_440;
      }

      v303 = 0;
      v202 = sub_1000011A8(1);
      if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
      {
        v203 = v202;
      }

      else
      {
        v203 = v202 & 0xFFFFFFFE;
      }

      if (!v203)
      {
        goto LABEL_438;
      }

      *v304 = 136315138;
      *&v304[4] = v307;
      v201 = _os_log_send_and_compose_impl(v203, &v303, 0, 0, &_mh_execute_header, v193, 0, "UNABLE TO REMOVE STALE ENTRIES PATH:%s", v304);
    }

    v198 = v201;
    if (v201)
    {
      sub_100002A8C(v201);
    }

    goto LABEL_439;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v193 = *(v4 + 97);
  if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
  {
    v303 = 0;
    LODWORD(v194) = sub_1000011A8(1);
    if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
    {
      v194 = v194;
    }

    else
    {
      v194 = v194 & 0xFFFFFFFE;
    }

    if (v194)
    {
      v195 = v193;
      v196 = __error();
      v197 = strerror(*v196);
      *v304 = 136315138;
      *&v304[4] = v197;
      v198 = _os_log_send_and_compose_impl(v194, &v303, 0, 0, &_mh_execute_header, v195, 0, "REMOVAL STALE ENTRIES NOT REQUIRED as :%s", v304);

      if (v198)
      {
        sub_100002A8C(v198);
      }

      v4 = &off_1000EB000;
      goto LABEL_439;
    }

LABEL_438:
    v198 = 0;
LABEL_439:
    free(v198);
  }

LABEL_440:

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v204 = *(v4 + 97);
  if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
  {
    *v307 = 0;
    v205 = sub_1000011A8(1);
    if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
    {
      v206 = v205;
    }

    else
    {
      v206 = v205 & 0xFFFFFFFE;
    }

    if (v206)
    {
      v315.st_dev = 67109120;
      *&v315.st_mode = 2;
      v207 = _os_log_send_and_compose_impl(v206, v307, 0, 0, &_mh_execute_header, v204, 0, "Creating %d Default paths\n", &v315);
      v208 = v207;
      if (v207)
      {
        sub_100002A8C(v207);
      }
    }

    else
    {
      v208 = 0;
    }

    free(v208);
  }

  v209 = 0;
  v210 = 1;
  v90 = v299;
  do
  {
    v211 = v210;
    memset(v307, 0, 144);
    v212 = (&off_1000DD4A8)[6 * v209];
    if (stat(v212, v307))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v213 = *(v4 + 97);
      if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
      {
        *&v314.st_dev = 0;
        v214 = sub_1000011A8(1);
        if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
        {
          v215 = v214;
        }

        else
        {
          v215 = v214 & 0xFFFFFFFE;
        }

        if (v215)
        {
          v315.st_dev = 136315138;
          *&v315.st_mode = v212;
          v216 = _os_log_send_and_compose_impl(v215, &v314, 0, 0, &_mh_execute_header, v213, 0, "Creating path: %s", &v315);
          v217 = v216;
          if (v216)
          {
            sub_100002A8C(v216);
          }
        }

        else
        {
          v217 = 0;
        }

        free(v217);
        v4 = &off_1000EB000;
      }

      if (mkpath_np(v212, 0x1EDu))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v223 = *(v4 + 97);
        if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
        {
          *&v314.st_dev = 0;
          LODWORD(v224) = sub_1000011A8(1);
          if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
          {
            v224 = v224;
          }

          else
          {
            v224 = v224 & 0xFFFFFFFE;
          }

          if (v224)
          {
            v225 = v223;
            v226 = __error();
            v227 = strerror(*v226);
            v315.st_dev = 136315394;
            *&v315.st_mode = v212;
            WORD2(v315.st_ino) = 2080;
            *(&v315.st_ino + 6) = v227;
            LODWORD(v295) = 22;
            v228 = _os_log_send_and_compose_impl(v224, &v314, 0, 0, &_mh_execute_header, v225, 0, "failed to create: %s (%s)\n", &v315, v295);

            if (v228)
            {
              sub_100002A8C(v228);
            }

            v90 = v299;
          }

          else
          {
            v228 = 0;
          }

          free(v228);
          v4 = &off_1000EB000;
        }
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v218 = *(v4 + 97);
      if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
      {
        *&v314.st_dev = 0;
        v219 = sub_1000011A8(1);
        if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
        {
          v220 = v219;
        }

        else
        {
          v220 = v219 & 0xFFFFFFFE;
        }

        if (v220)
        {
          v315.st_dev = 136315138;
          *&v315.st_mode = v212;
          v221 = _os_log_send_and_compose_impl(v220, &v314, 0, 0, &_mh_execute_header, v218, 0, "Path: %s already exits, skipping", &v315);
          v222 = v221;
          if (v221)
          {
            sub_100002A8C(v221);
          }
        }

        else
        {
          v222 = 0;
        }

        v90 = v299;
        free(v222);
        v4 = &off_1000EB000;
      }

      if (*&v307[16] != v90 || *&v307[20] != v298)
      {
        if (!chown(v212, v90, v298))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v229 = *(v4 + 97);
          if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
          {
            *&v314.st_dev = 0;
            v230 = sub_1000011A8(1);
            if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
            {
              v231 = v230;
            }

            else
            {
              v231 = v230 & 0xFFFFFFFE;
            }

            if (v231)
            {
              v232 = v229;
              v233 = __error();
              v234 = strerror(*v233);
              v315.st_dev = 136315394;
              *&v315.st_mode = v212;
              WORD2(v315.st_ino) = 2080;
              *(&v315.st_ino + 6) = v234;
              LODWORD(v295) = 22;
              v235 = _os_log_send_and_compose_impl(v231, &v314, 0, 0, &_mh_execute_header, v232, 0, "failed to change ownership on: %s (%s)\n", &v315, v295);

              if (v235)
              {
                sub_100002A8C(v235);
              }
            }

            else
            {
              v235 = 0;
            }

            v90 = v299;
            free(v235);
            v4 = &off_1000EB000;
          }
        }

        sub_10001C7AC(v212, v90);
      }
    }

    v210 = 0;
    v209 = 1;
  }

  while ((v211 & 1) != 0);
  v6 = &off_1000EB000;
  v30 = v297;
  if (v90 == 502)
  {
    v236 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v236)
    {
      v237 = v236;
      CFDictionarySetValue(v297, kUMUserSessionPreviousLoggedinIDKey, v236);
      CFRelease(v237);
    }

    v238 = sub_100079590(v297, kUMUserSessionHomeDirKey);
    sub_100070A64(v238, 0x1F6u, 0x1F6u);
    if (!CFDictionaryContainsKey(v297, kUMUserSessionLanguageKey))
    {
      CFDictionarySetValue(v297, kUMUserSessionLanguageKey, @"en_US");
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v240 = CFDateCreate(kCFAllocatorDefault, Current);
  CFDictionaryReplaceValue(v297, kUMUserSessionLoginTimeStampKey, v240);
  if (v240)
  {
    CFRelease(v240);
  }

  if ([qword_1000EB2D8 splitUserVolumeEnabled])
  {
LABEL_514:
    if (v90 != 502)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v241 = *(v4 + 97);
      if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
      {
        *v307 = 0;
        v242 = sub_1000011A8(1);
        v243 = v241;
        if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
        {
          v244 = v242;
        }

        else
        {
          v244 = v242 & 0xFFFFFFFE;
        }

        if (v244)
        {
          v315.st_dev = 67109120;
          v90 = v299;
          *&v315.st_mode = v299;
          v245 = _os_log_send_and_compose_impl(v244, v307, 0, 0, &_mh_execute_header, v243, 0, "Adding uid %d to end of LRU table", &v315);

          if (v245)
          {
            sub_100002A8C(v245);
          }
        }

        else
        {

          v245 = 0;
          v90 = v299;
        }

        free(v245);
      }

      sub_10001C1B8(v90);
    }

    sub_10001C0D0(v297, v90);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v263 = *(v4 + 97);
    if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
    {
      *v307 = 0;
      v264 = sub_1000011A8(1);
      v265 = v263;
      if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
      {
        v266 = v264;
      }

      else
      {
        v266 = v264 & 0xFFFFFFFE;
      }

      if (v266)
      {
        v315.st_dev = 67109120;
        v90 = v299;
        *&v315.st_mode = v299;
        v267 = _os_log_send_and_compose_impl(v266, v307, 0, 0, &_mh_execute_header, v265, 0, "Setting up Foreground session ID:%d", &v315);

        if (v267)
        {
          sub_100002A8C(v267);
        }
      }

      else
      {

        v267 = 0;
        v90 = v299;
      }

      free(v267);
    }

    CFDictionarySetValue(v297, kUMUserSessionForegroundKey, kCFBooleanTrue);
    sub_100018C80();
    sub_100073538();
    if (dword_1000EB5E0 < 1)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v82 = &off_1000EB000;
      v101 = *(v4 + 97);
      if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_661;
      }

      *v307 = 0;
      v273 = sub_1000011A8(1);
      v101 = v101;
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        v274 = v273;
      }

      else
      {
        v274 = v273 & 0xFFFFFFFE;
      }

      if (v274)
      {
        LOWORD(v315.st_dev) = 0;
        LODWORD(v295) = 2;
        v275 = _os_log_send_and_compose_impl(v274, v307, 0, 0, &_mh_execute_header, v101, 0, "Network BK_SYS value NOT set/disabled", &v315, v295);

        if (v275)
        {
          sub_100002A8C(v275);
        }
      }

      else
      {

        v275 = 0;
      }

      v90 = v299;
      goto LABEL_619;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v268 = *(v4 + 97);
    if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
    {
      *v307 = 0;
      v269 = sub_1000011A8(1);
      v270 = v268;
      if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
      {
        v271 = v269;
      }

      else
      {
        v271 = v269 & 0xFFFFFFFE;
      }

      if (v271)
      {
        v315.st_dev = 67109120;
        *&v315.st_mode = dword_1000EB5E0;
        v272 = _os_log_send_and_compose_impl(v271, v307, 0, 0, &_mh_execute_header, v270, 0, "Setting Device Network with BK_SYS value of %d", &v315);

        if (v272)
        {
          sub_100002A8C(v272);
        }
      }

      else
      {

        v272 = 0;
      }

      v90 = v299;
      free(v272);
    }

    if (sub_10001C98C(dword_1000EB5E0))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v101 = *(v4 + 97);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *v307 = 0;
        v276 = sub_1000011A8(1);
        v101 = v101;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          v277 = v276;
        }

        else
        {
          v277 = v276 & 0xFFFFFFFE;
        }

        if (v277)
        {
          v315.st_dev = 67109120;
          *&v315.st_mode = dword_1000EB5E0;
          v278 = _os_log_send_and_compose_impl(v277, v307, 0, 0, &_mh_execute_header, v101, 0, "Network BK_SYS value set to %d", &v315);
          goto LABEL_607;
        }

        goto LABEL_610;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v101 = *(v4 + 97);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *v307 = 0;
        v279 = sub_1000011A8(1);
        v101 = v101;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          v280 = v279;
        }

        else
        {
          v280 = v279 & 0xFFFFFFFE;
        }

        if (v280)
        {
          v315.st_dev = 67109120;
          *&v315.st_mode = dword_1000EB5E0;
          v278 = _os_log_send_and_compose_impl(v280, v307, 0, 0, &_mh_execute_header, v101, 0, "Failed to set Network BK_SYS value set to %d", &v315);
LABEL_607:
          v275 = v278;

          if (v275)
          {
            sub_100002A8C(v275);
          }

          goto LABEL_611;
        }

LABEL_610:

        v275 = 0;
LABEL_611:
        v90 = v299;
        v82 = &off_1000EB000;
LABEL_619:
        free(v275);
        goto LABEL_661;
      }
    }

    v82 = &off_1000EB000;
LABEL_661:

LABEL_662:
    v292 = sub_100079590(v30, kUMUserSessionHomeDirKey);
    v293 = sub_100073D54(v292, v90, v90);
    if (v293)
    {
      sub_100018028("failed to register the exclaves writable storage: %d\n", v293);
      return sub_100042F8C();
    }

    else
    {
      if (v30)
      {
        CFRelease(v30);
      }

      if (*(v82 + 364) != 1)
      {
        v294 = sub_10008A4DC(v6[92], v90);
        sub_1000940D0();
      }

      return 1;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v246 = *(v4 + 97);
  if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
  {
    *v307 = 0;
    v247 = sub_1000011A8(1);
    v248 = v246;
    if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
    {
      v249 = v247;
    }

    else
    {
      v249 = v247 & 0xFFFFFFFE;
    }

    if (v249)
    {
      v315.st_dev = 67109120;
      v90 = v299;
      *&v315.st_mode = v299;
      v250 = _os_log_send_and_compose_impl(v249, v307, 0, 0, &_mh_execute_header, v248, 0, "loading keybag for session %d", &v315);

      if (v250)
      {
        sub_100002A8C(v250);
      }
    }

    else
    {

      v250 = 0;
      v90 = v299;
    }

    free(v250);
  }

  if (!MKBUserSessionLoadKeybagForUser())
  {
    v256 = MKBUserSessionUnloadSessionBags();
    if (v256)
    {
      v257 = v256;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v258 = *(v4 + 97);
      if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
      {
        *v307 = 0;
        v259 = sub_1000011A8(1);
        v260 = v258;
        if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
        {
          v261 = v259;
        }

        else
        {
          v261 = v259 & 0xFFFFFFFE;
        }

        if (v261)
        {
          v315.st_dev = 67109120;
          *&v315.st_mode = v257;
          v262 = _os_log_send_and_compose_impl(v261, v307, 0, 0, &_mh_execute_header, v260, 0, "Failed to unload session keybags: 0x%x", &v315);

          if (v262)
          {
            sub_100002A8C(v262);
          }
        }

        else
        {

          v262 = 0;
        }

        v90 = v299;
        free(v262);
      }
    }

    goto LABEL_514;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v251 = *(v4 + 97);
  if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
  {
    *v307 = 0;
    v252 = sub_1000011A8(1);
    v253 = v251;
    if (os_log_type_enabled(v253, OS_LOG_TYPE_DEFAULT))
    {
      v254 = v252;
    }

    else
    {
      v254 = v252 & 0xFFFFFFFE;
    }

    if (v254)
    {
      LOWORD(v315.st_dev) = 0;
      LODWORD(v295) = 2;
      v255 = _os_log_send_and_compose_impl(v254, v307, 0, 0, &_mh_execute_header, v253, 0, "Failed to load keybag for session", &v315, v295);

      if (v255)
      {
        sub_100002A8C(v255);
      }
    }

    else
    {

      v255 = 0;
    }

    free(v255);
  }

  if (v297)
  {
    CFRelease(v297);
  }

  return 0;
}

uint64_t sub_100042F8C()
{
  v0 = sub_1000561D0(UMDAPFSSupportVolumeHelper, qword_1000EB608, byte_1000EB602);
  v1 = qword_1000EB2D8;
  qword_1000EB2D8 = v0;

  v2 = sub_100053060(UMDUserManager, qword_1000EB2D8);
  v3 = qword_1000EB2E0;
  qword_1000EB2E0 = v2;

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v4 = qword_1000EB308;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 0;
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
      LOWORD(v36) = 0;
      v7 = _os_log_send_and_compose_impl(v6, v38, 0, 0, &_mh_execute_header, v4, 0, "LOADING USER SESSIONS", &v36, 2);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (!sub_10003E524(0))
  {
    sub_100018028("UserManagement user switch task failed to load user manifest");
LABEL_67:
    sub_10008B010(qword_1000EB2E0);
    sub_100018028("UserManagement user switch task next session bag missing or corrupt");
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v9 = qword_1000EB308;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 0;
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
      LOWORD(v36) = 0;
      LODWORD(v35) = 2;
      v12 = _os_log_send_and_compose_impl(v11, v38, 0, 0, &_mh_execute_header, v9, 0, "LOADED USER SESSIONS", &v36, v35);
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

  sub_1000897B8(qword_1000EB2E0, qword_1000EB5A0);
  if (dword_1000EB5B0 != 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v14 = qword_1000EB308;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
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
        LOWORD(v36) = 0;
        LODWORD(v35) = 2;
        v17 = _os_log_send_and_compose_impl(v16, v38, 0, 0, &_mh_execute_header, v14, 0, "LOADING PERSONA..", &v36, v35);
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

    if (qword_1000EB2E8)
    {
      sub_100089E34();
    }

    else
    {
      v19 = sub_100056424(UMDPersonaManager, qword_1000EB2E0);
      v20 = qword_1000EB2E8;
      qword_1000EB2E8 = v19;

      v37 = 0;
      if (!sub_10003E884(&v37))
      {
LABEL_69:
        v33 = sub_100018028("UserManagement user switch task failed to load persona manifest");
        return sub_100043504(v33, v34);
      }

      if (qword_1000EB330 == -1)
      {
        goto LABEL_39;
      }
    }

    sub_100089D40();
LABEL_39:
    v21 = qword_1000EB328;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      v22 = sub_1000011A8(0);
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
        LOWORD(v36) = 0;
        LODWORD(v35) = 2;
        v24 = _os_log_send_and_compose_impl(v23, v38, 0, 0, &_mh_execute_header, v21, 0, "Loaded persona manifest", &v36, v35);
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

    if (qword_1000EB330 != -1)
    {
      sub_100089D40();
    }

    v26 = qword_1000EB328;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v36 = 0;
      LODWORD(v27) = sub_1000011A8(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = v27;
      }

      else
      {
        v27 = v27 & 0xFFFFFFFE;
      }

      if (v27)
      {
        v28 = qword_1000EB2E8;
        v29 = v26;
        v30 = sub_1000013A0(v28);
        v38[0] = 138412290;
        *&v38[1] = v30;
        LODWORD(v35) = 12;
        v31 = _os_log_send_and_compose_impl(v27, &v36, 0, 0, &_mh_execute_header, v29, 2, "Persona state: %@", v38, v35);

        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }
  }

  v38[0] = -1;
  LODWORD(v36) = -1;
  if ((sub_10008AE10(qword_1000EB2E0, &v36, v38) & 1) == 0)
  {
    goto LABEL_67;
  }

  result = sub_100043504(v38[0], v36);
  if (result)
  {
    result = sub_10008B010(qword_1000EB2E0);
    if ((result & 1) == 0)
    {
      sub_100018028("UserManagement user switch task failed to remove nextSession file");
      goto LABEL_69;
    }
  }

  return result;
}

uint64_t sub_100043504(uint64_t a1, uint64_t a2)
{
  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v4 = qword_1000EB318;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v5 = sub_1000011A8(0);
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
      v11[0] = 67109376;
      v11[1] = a1;
      v12 = 1024;
      v13 = a2;
      v7 = _os_log_send_and_compose_impl(v6, &v10, 0, 0, &_mh_execute_header, v4, 0, "Switching foreground user: Next session UID: %d, Current session UID: %d", v11, 14);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (a2 == -1)
  {
    sub_100089E4C();
  }

  if (a2 != a1)
  {
    sub_10004F644(a2);
  }

  return sub_10003FC14(a1, a2, 0, 1);
}

uint64_t sub_10004366C(_removefile_state *a1, const char *a2, int *a3)
{
  dst = 0;
  if (removefile_state_get(a1, 5u, &dst))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
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
        v41.st_dev = 136315138;
        *&v41.st_mode = a2;
        v8 = _os_log_send_and_compose_impl(v7, v38, 0, 0, &_mh_execute_header, v5, 0, "removefile hit error for %s but we failed to get the error number", &v41);
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

    dst = 2;
    goto LABEL_24;
  }

  if (dst == 2)
  {
    goto LABEL_24;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v10 = qword_1000EB308;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 0;
    LODWORD(v11) = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 = v11 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = dst;
      v13 = v10;
      v14 = strerror(v12);
      v41.st_dev = 136315394;
      *&v41.st_mode = a2;
      WORD2(v41.st_ino) = 2080;
      *(&v41.st_ino + 6) = v14;
      v15 = _os_log_send_and_compose_impl(v11, v38, 0, 0, &_mh_execute_header, v13, 0, "removefile hit error for %s : %s", &v41, 22);

      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

  if (dst != 1)
  {
    goto LABEL_24;
  }

  memset(&v41, 0, sizeof(v41));
  if (lstat(a2, &v41))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v17 = qword_1000EB308;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    v36 = 0;
    LODWORD(v18) = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v18;
    }

    else
    {
      v18 = v18 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = v17;
      v20 = __error();
      v21 = strerror(*v20);
      *v38 = 136315394;
      *&v38[4] = a2;
      v39 = 2080;
      v40 = v21;
      LODWORD(v35) = 22;
      v22 = _os_log_send_and_compose_impl(v18, &v36, 0, 0, &_mh_execute_header, v19, 0, "Failed to stat %s before unsetting UF_IMMUTABLE: %s", v38, v35);
      goto LABEL_40;
    }

    goto LABEL_52;
  }

  if ((v41.st_flags & 2) == 0)
  {
LABEL_24:
    if (a3 && !*a3)
    {
      *a3 = dst;
    }

    return 0;
  }

  if (lchflags(a2, v41.st_flags & 0xFFFFFFFD))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v17 = qword_1000EB308;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    v36 = 0;
    LODWORD(v24) = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v24;
    }

    else
    {
      v24 = v24 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v19 = v17;
      v25 = __error();
      v26 = strerror(*v25);
      *v38 = 136315394;
      *&v38[4] = a2;
      v39 = 2080;
      v40 = v26;
      LODWORD(v35) = 22;
      v22 = _os_log_send_and_compose_impl(v24, &v36, 0, 0, &_mh_execute_header, v19, 0, "Failed to lchflags %s: %s", v38, v35);
LABEL_40:
      v23 = v22;

      if (v23)
      {
        sub_100002A8C(v23);
      }

      goto LABEL_53;
    }

LABEL_52:
    v23 = 0;
LABEL_53:
    free(v23);
LABEL_54:

    goto LABEL_24;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v27 = qword_1000EB308;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 0;
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
      *v38 = 136315138;
      *&v38[4] = a2;
      v30 = _os_log_send_and_compose_impl(v29, &v36, 0, 0, &_mh_execute_header, v27, 0, "Unset UF_IMMUTABLE on %s", v38);
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

  v32 = sub_1000013A0(qword_1000EB608);
  v33 = [NSString stringWithUTF8String:a2];
  v34 = [v32 removeFileAtPath:v33 error:0];

  if ((v34 & 1) == 0)
  {
    goto LABEL_24;
  }

  return 0;
}

uint64_t sub_100043BDC(const __CFDictionary *a1)
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
          v23 = _os_log_send_and_compose_impl(v22, &v41, 0, 0, &_mh_execute_header, v20, 0, "Loading the identity for user:%d", &v44);
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
      v26 = [v25 loadIdentity:v5 intoSession:v4 error:&v40];
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
            v30 = _os_log_send_and_compose_impl(v29, &v41, 0, 0, &_mh_execute_header, v27, 0, "AKS Identity for user:%d Successfully Loaded", &v44);
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
          v36 = _os_log_send_and_compose_impl(v33, &v44, 0, 0, &_mh_execute_header, v34, 0, "Loading of AKS Identity for user:%d failed with %ld", &v41, v39);

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

uint64_t sub_100044184(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = sub_100089A80(qword_1000EB608);
  v7 = [v6 isIdentityLoadedIntoSession:a2];

  if (v7)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
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
        LODWORD(v45) = 67109120;
        HIDWORD(v45) = a2;
        v11 = _os_log_send_and_compose_impl(v10, v44, 0, 0, &_mh_execute_header, v8, 0, "AKSIdentity for user:%d already loaded, identity exists", &v45);
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

    v18 = 0;
LABEL_23:
    v19 = 1;
    goto LABEL_63;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v44 = 0;
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
      LODWORD(v45) = 67109120;
      HIDWORD(v45) = a2;
      v16 = _os_log_send_and_compose_impl(v15, v44, 0, 0, &_mh_execute_header, v13, 0, "AKSIdentity for user:%d not loaded, loading to verify existance", &v45);
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

  v20 = sub_100089A80(qword_1000EB608);
  v43 = 0;
  v21 = [v20 loadIdentity:v5 intoSession:a2 error:&v43];
  v22 = v43;

  if (v21)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v23 = qword_1000EB308;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
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
        LOWORD(v45) = 0;
        v26 = _os_log_send_and_compose_impl(v25, v44, 0, 0, &_mh_execute_header, v23, 0, "AKSLoadIdentity Succeeded, it exists, unloading now...", &v45, 2);
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

    v33 = sub_100089A80(qword_1000EB608);
    v42 = v22;
    v34 = [v33 unloadIdentityFromSession:a2 error:&v42];
    v18 = v42;

    if ((v34 & 1) == 0)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v35 = qword_1000EB308;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v45 = 0;
        LODWORD(v36) = sub_1000011A8(1);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = v36;
        }

        else
        {
          v36 = v36 & 0xFFFFFFFE;
        }

        if (v36)
        {
          v37 = v35;
          v38 = [v18 code];
          *v44 = 134217984;
          *&v44[4] = v38;
          v39 = _os_log_send_and_compose_impl(v36, &v45, 0, 0, &_mh_execute_header, v37, 0, "AKSLoadIdentity after check failed with Error:%ld", v44);

          if (v39)
          {
            sub_100002A8C(v39);
          }
        }

        else
        {
          v39 = 0;
        }

        free(v39);
      }
    }

    goto LABEL_23;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v28 = qword_1000EB308;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 0;
    LODWORD(v29) = sub_1000011A8(1);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v29;
    }

    else
    {
      v29 = v29 & 0xFFFFFFFE;
    }

    if (v29)
    {
      v30 = v28;
      v31 = [v22 code];
      *v44 = 134217984;
      *&v44[4] = v31;
      v32 = _os_log_send_and_compose_impl(v29, &v45, 0, 0, &_mh_execute_header, v30, 0, "AKSLoadIdentity failed with Error:%ld, might not exist..", v44);

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

  if (a3)
  {
    v40 = v22;
    v19 = 0;
    *a3 = v22;
  }

  else
  {
    v19 = 0;
  }

  v18 = v22;
LABEL_63:

  return v19;
}

id sub_1000446D4(const __CFDictionary *a1)
{
  v1 = sub_1000023E8(a1, kMKBUserSessionIDKey);
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      LODWORD(v23) = 67109120;
      HIDWORD(v23) = v1;
      v5 = _os_log_send_and_compose_impl(v4, &v20, 0, 0, &_mh_execute_header, v2, 0, "Unloading the identity for user:%d", &v23);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_100089A80(qword_1000EB608);
  v19 = 0;
  v8 = [v7 unloadIdentityFromSession:v1 error:&v19];
  v9 = v19;

  if (v8)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v10 = qword_1000EB308;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
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
        LODWORD(v23) = 67109120;
        HIDWORD(v23) = v1;
        v13 = _os_log_send_and_compose_impl(v12, &v20, 0, 0, &_mh_execute_header, v10, 0, "AKS Identity for user:%d Successfully Unloaded", &v23);
        if (!v13)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v10 = qword_1000EB308;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      LODWORD(v14) = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v14;
      }

      else
      {
        v14 = v14 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = v10;
        v16 = [v9 code];
        LODWORD(v20) = 67109376;
        HIDWORD(v20) = v1;
        v21 = 2048;
        v22 = v16;
        LODWORD(v18) = 18;
        v13 = _os_log_send_and_compose_impl(v14, &v23, 0, 0, &_mh_execute_header, v15, 0, "Unloading AKS Identity for user:%d failed with %ld", &v20, v18);

        if (!v13)
        {
LABEL_32:
          free(v13);
          goto LABEL_33;
        }

LABEL_30:
        sub_100002A8C(v13);
        goto LABEL_32;
      }

LABEL_31:
      v13 = 0;
      goto LABEL_32;
    }
  }

LABEL_33:

  return v8;
}

CFArrayRef sub_1000449E8(void *a1)
{
  v1 = sub_100056BC8(qword_1000EB2E8, a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10008CDD8(qword_1000EB2E8, 0, v1);
  if (v3)
  {
    v4 = v3;
    if (CFDictionaryContainsKey(v3, off_1000EA4B0) && (v5 = sub_10007947C(v4, off_1000EA4B0)) != 0)
    {
      Copy = CFArrayCreateCopy(kCFAllocatorDefault, v5);
    }

    else
    {
      Copy = 0;
    }

    CFRelease(v4);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v2);
  return Copy;
}

uint64_t sub_100044C54(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  if (!sub_100002454(a1, kUMUserPersonaDisabledKey))
  {
    CFDictionarySetValue(a1, kUMUserPersonaDisabledKey, kCFBooleanTrue);
  }

  if (v3)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v4 = qword_1000EB308;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 0;
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
        *v19 = 138412290;
        *&v19[4] = v3;
        v7 = _os_log_send_and_compose_impl(v6, v18, 0, 0, &_mh_execute_header, v4, 0, "Persona disabled due to %@", v19, 12);
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    CFDictionarySetValue(a1, kUMUserPersonaDisabledKey, v3);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
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
        LOWORD(v18[0]) = 0;
        LODWORD(v17) = 2;
        v12 = _os_log_send_and_compose_impl(v11, v19, 0, 0, &_mh_execute_header, v9, 0, "Posted Darwin Notification kUMUserPersonaDisabledNotificationToken", v18, v17);
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

    v14 = sub_10008900C(qword_1000EB608);
    v15 = [NSString stringWithUTF8String:"com.apple.mobile.usermanagerd.userpersona_disabled"];
    [v14 post:v15];
  }

  return 1;
}

uint64_t sub_100044EE0(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100056BC8(qword_1000EB2E8, v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (CFDictionaryContainsKey(a1, kUMUserPersonaUniqueStringKey))
  {
    v5 = qword_1000EB2E8;
    v6 = sub_100079590(a1, kUMUserPersonaUniqueStringKey);
    v7 = sub_100056854(v5, v6, v4);
  }

  else
  {
    if (!CFDictionaryContainsKey(a1, kUMUserPersonaTypeKey))
    {
      goto LABEL_8;
    }

    v8 = qword_1000EB2E8;
    v9 = sub_1000023E8(a1, kUMUserPersonaTypeKey);
    v7 = sub_10008CDD8(v8, v9, v4);
  }

  v10 = v7;
  if (v7)
  {
    v11 = sub_10008A438(qword_1000EB2E0, v3);
    v12 = sub_1000450CC(v4, v10, v11, 0);
    CFRelease(v4);
    CFRelease(v10);
    goto LABEL_22;
  }

LABEL_8:
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 0;
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
      v19 = 0;
      v16 = _os_log_send_and_compose_impl(v15, &v20, 0, 0, &_mh_execute_header, v13, 0, "FOUND No requested persona entry in the Manifest or user does not exist", &v19, 2);
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

  if (v4)
  {
    CFRelease(v4);
  }

  v12 = 22;
LABEL_22:

  return v12;
}

uint64_t sub_1000450CC(void *a1, const __CFDictionary *a2, unsigned int a3, int a4)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  memset(uu, 0, sizeof(uu));
  v8 = qword_1000EB308;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *&v246[0] = 0;
    v9 = sub_1000011A8(1);
    v10 = v8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFE;
    }

    if (v11)
    {
      *in = 138412290;
      *&in[4] = a2;
      LODWORD(v216) = 12;
      v215 = in;
      v12 = _os_log_send_and_compose_impl(v11, v246, 0, 0, &_mh_execute_header, v10, 0, "Found Persona Dict, deleting:%@");

      if (v12)
      {
        sub_100002A8C(v12);
      }
    }

    else
    {

      v12 = 0;
    }

    free(v12);
  }

  v13 = sub_1000023E8(a2, kUMUserPersonaTypeKey);
  v14 = sub_1000023E8(a2, kUMUserPersonaIDKey);
  v15 = sub_100079590(a2, kUMUserPersonaUniqueStringKey);
  if ((a4 & 1) == 0 && (v13 | 4) != 6)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v16 = qword_1000EB308;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *&v246[0] = 0;
      v30 = sub_1000011A8(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        *in = 134217984;
        *&in[4] = v13;
        v32 = _os_log_send_and_compose_impl(v31, v246, 0, 0, &_mh_execute_header, v16, 0, "Persona Deletion of Non Enterprise or Guest persona is not allowed:%lu", in);
        v33 = v32;
        if (v32)
        {
          sub_100002A8C(v32);
        }
      }

      else
      {
        v33 = 0;
      }

      free(v33);
    }

    v43 = 1;
    goto LABEL_447;
  }

  if (v14 == -1 && v13 != 4)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v16 = qword_1000EB308;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *&v246[0] = 0;
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
        *in = 138412290;
        *&in[4] = v15;
        v19 = _os_log_send_and_compose_impl(v18, v246, 0, 0, &_mh_execute_header, v16, 0, "Failed to delete persona: persona with unique string %@ does not have a valid kernel persona ID", in, 12);
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

    v43 = 22;
    goto LABEL_447;
  }

  HIDWORD(v219) = a3;
  v224 = v13;
  v220 = a1;
  v222 = v14;
  if (!sub_100002454(a2, kUMUserPersonaDisabledKey))
  {
    CFDictionarySetValue(a2, kUMUserPersonaDisabledKey, kCFBooleanTrue);
  }

  CFDictionarySetValue(a2, off_1000EA4B8, kCFBooleanTrue);
  v21 = sub_100089790(qword_1000EB2E8);
  sub_10008B8D8(v21);

  if (qword_1000EB330 != -1)
  {
    sub_100089D40();
  }

  v22 = qword_1000EB328;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *&v246[0] = 0;
    LODWORD(v23) = sub_1000011A8(1);
    v24 = v22;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v23;
    }

    else
    {
      v23 = v23 & 0xFFFFFFFE;
    }

    if (v23)
    {
      v25 = a2;
      v26 = sub_100089790(qword_1000EB2E8);
      v28 = sub_100055380(v26, v27);
      *in = 134217984;
      *&in[4] = v28;
      LODWORD(v216) = 12;
      v29 = _os_log_send_and_compose_impl(v23, v246, 0, 0, &_mh_execute_header, v24, 0, "Updated Persona Generation Count for Pre Persona Deletion:%llu", in);

      if (v29)
      {
        sub_100002A8C(v29);
      }

      a2 = v25;
    }

    else
    {

      v29 = 0;
    }

    free(v29);
  }

  sub_10008EBBC(qword_1000EB2E8);
  if (v224 != 4)
  {
    if (sub_100056C40(qword_1000EB2E8, v222))
    {
      v226[1] = 0;
      v34 = sub_100091E34();
      v35 = 0;
      v16 = v35;
      if ((v34 & 1) == 0)
      {
        v43 = [v35 code];
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v44 = qword_1000EB308;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *&v246[0] = 0;
          LODWORD(v45) = sub_1000011A8(1);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v45;
          }

          else
          {
            v45 = v45 & 0xFFFFFFFE;
          }

          if (v45)
          {
            v46 = v44;
            v47 = strerror(v43);
            *in = 67109378;
            *&in[4] = v222;
            *&in[8] = 2080;
            *&in[10] = v47;
            LODWORD(v216) = 18;
            v48 = _os_log_send_and_compose_impl(v45, v246, 0, 0, &_mh_execute_header, v46, 0, "Failed to delete persona: Kernel persona deallocation for ID:%d failed with Error:%s", in, v216);

            if (v48)
            {
              sub_100002A8C(v48);
            }
          }

          else
          {
            v48 = 0;
          }

          free(v48);
        }

        goto LABEL_447;
      }

      v223 = v35;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v36 = qword_1000EB308;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *in = 0;
        v37 = sub_1000011A8(1);
        v36 = v36;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
        }

        else
        {
          v38 = v37 & 0xFFFFFFFE;
        }

        if (v38)
        {
          LODWORD(v246[0]) = 67109120;
          DWORD1(v246[0]) = v222;
          LODWORD(v216) = 8;
          v39 = _os_log_send_and_compose_impl(v38, in, 0, 0, &_mh_execute_header, v36, 0, "PersonaID:%d deleted from  Kernel", v246);

          if (v39)
          {
            sub_100002A8C(v39);
          }
        }

        else
        {

          v39 = 0;
        }

        free(v39);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v36 = qword_1000EB308;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *in = 0;
        v40 = sub_1000011A8(1);
        v36 = v36;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v40;
        }

        else
        {
          v41 = v40 & 0xFFFFFFFE;
        }

        if (v41)
        {
          LODWORD(v246[0]) = 67109120;
          DWORD1(v246[0]) = v222;
          LODWORD(v216) = 8;
          v42 = _os_log_send_and_compose_impl(v41, in, 0, 0, &_mh_execute_header, v36, 0, "PersonaID:%d Not loaded in Kernel", v246);

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

      v223 = 0;
    }

    if (a4)
    {
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v223 = 0;
  if ((a4 & 1) == 0)
  {
LABEL_90:
    if (v15)
    {
      v49 = sub_1000890EC(qword_1000EB608);
      [v49 deleteKeychainItemsForPersonaWithUUID:v15 error:0];
    }
  }

LABEL_92:
  v221 = v15;
  if (!a4)
  {
    goto LABEL_159;
  }

  v218 = a2;
  memset(v246, 0, sizeof(v246));
  v50 = [&off_1000E15D0 countByEnumeratingWithState:v246 objects:in count:16];
  if (!v50)
  {
    goto LABEL_147;
  }

  v51 = v50;
  v52 = **&v246[1];
  do
  {
    for (i = 0; i != v51; i = i + 1)
    {
      if (**&v246[1] != v52)
      {
        objc_enumerationMutation(&off_1000E15D0);
      }

      v54 = *(*(&v246[0] + 1) + 8 * i);
      v55 = sub_1000024A8(qword_1000EB608);
      v56 = sub_100088F2C(qword_1000EB608);
      v57 = sub_100089AC4(v56);
      v229 = 0;
      v58 = [v55 pidForLaunchdJobWithLabel:v54 forUser:v57 error:&v229];
      v59 = v229;

      if (v58)
      {
        v60 = sub_1000024A8(qword_1000EB608);
        v228 = v59;
        v61 = [v60 terminatePID:v58 withReasonNamespace:2 reasonCode:0 reasonString:@"PersonaTermination" error:&v228];
        v62 = v228;

        if (v61)
        {
          if (qword_1000EB330 != -1)
          {
            sub_100089D40();
          }

          v63 = qword_1000EB328;
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            goto LABEL_139;
          }

          v227 = 0;
          v64 = sub_1000011A8(0);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            v65 = v64;
          }

          else
          {
            v65 = v64 & 0xFFFFFFFE;
          }

          if (v65)
          {
            *v247 = 138543618;
            *&v247[4] = v54;
            v248 = 1024;
            *v249 = v58;
            LODWORD(v216) = 18;
            v66 = _os_log_send_and_compose_impl(v65, &v227, 0, 0, &_mh_execute_header, v63, 1, "Terminated %{public}@ with pid %d", v247);
LABEL_126:
            v74 = v66;
            if (v66)
            {
              sub_100002A8C(v66);
            }

LABEL_138:
            free(v74);
LABEL_139:

            v59 = v62;
            goto LABEL_145;
          }
        }

        else
        {
          if (qword_1000EB330 != -1)
          {
            sub_100089D40();
          }

          v63 = qword_1000EB328;
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_139;
          }

          v227 = 0;
          v72 = sub_1000011A8(0);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v73 = v72;
          }

          else
          {
            v73 = v72 & 0xFFFFFFFE;
          }

          if (v73)
          {
            *v247 = 138543874;
            *&v247[4] = v54;
            v248 = 1024;
            *v249 = v58;
            *&v249[4] = 2114;
            *&v249[6] = v62;
            LODWORD(v216) = 28;
            v66 = _os_log_send_and_compose_impl(v73, &v227, 0, 0, &_mh_execute_header, v63, 16, "Termination of %{public}@ with pid %d failed with error: %{public}@", v247);
            goto LABEL_126;
          }
        }

        v74 = 0;
        goto LABEL_138;
      }

      if (v59)
      {
        if (qword_1000EB330 != -1)
        {
          sub_100089D40();
        }

        v67 = qword_1000EB328;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v228 = 0;
          v68 = sub_1000011A8(0);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v69 = v68;
          }

          else
          {
            v69 = v68 & 0xFFFFFFFE;
          }

          if (v69)
          {
            *v247 = 138543618;
            *&v247[4] = v54;
            v248 = 2114;
            *v249 = v59;
            LODWORD(v216) = 22;
            v215 = v247;
            v70 = _os_log_send_and_compose_impl(v69, &v228, 0, 0, &_mh_execute_header, v67, 16, "Unable to find valid pid for the launchd job %{public}@: %{public}@");
            v71 = v70;
            if (v70)
            {
              sub_100002A8C(v70);
            }
          }

          else
          {
            v71 = 0;
          }

          free(v71);
        }
      }

      else
      {
        if (qword_1000EB330 != -1)
        {
          sub_100089D40();
        }

        v59 = qword_1000EB328;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v228 = 0;
          v75 = sub_1000011A8(0);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            v76 = v75;
          }

          else
          {
            v76 = v75 & 0xFFFFFFFE;
          }

          if (v76)
          {
            *v247 = 138543362;
            *&v247[4] = v54;
            LODWORD(v216) = 12;
            v215 = v247;
            v77 = _os_log_send_and_compose_impl(v76, &v228, 0, 0, &_mh_execute_header, v59, 1, "Launchd job %{public}@ is not running");
            v78 = v77;
            if (v77)
            {
              sub_100002A8C(v77);
            }
          }

          else
          {
            v78 = 0;
          }

          free(v78);
        }
      }

LABEL_145:
    }

    v51 = [&off_1000E15D0 countByEnumeratingWithState:v246 objects:in count:16];
  }

  while (v51);
LABEL_147:
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v15 = v221;
  v79 = qword_1000EB308;
  a2 = v218;
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    *in = 0;
    v80 = sub_1000011A8(1);
    v81 = v79;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = v80;
    }

    else
    {
      v82 = v80 & 0xFFFFFFFE;
    }

    if (v82)
    {
      LOWORD(v246[0]) = 0;
      LODWORD(v216) = 2;
      v215 = v246;
      v83 = _os_log_send_and_compose_impl(v82, in, 0, 0, &_mh_execute_header, v81, 0, "Terminated Preset Daemons");

      if (v83)
      {
        sub_100002A8C(v83);
      }
    }

    else
    {

      v83 = 0;
    }

    free(v83);
  }

LABEL_159:
  if ((v224 | 4) != 6)
  {
    goto LABEL_414;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v84 = qword_1000EB308;
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    *in = 0;
    v85 = sub_1000011A8(1);
    v86 = v84;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v87 = v85;
    }

    else
    {
      v87 = v85 & 0xFFFFFFFE;
    }

    if (v87)
    {
      LOWORD(v246[0]) = 0;
      LODWORD(v216) = 2;
      v215 = v246;
      v88 = _os_log_send_and_compose_impl(v87, in, 0, 0, &_mh_execute_header, v86, 0, "Checking if the volume mounted...");

      if (v88)
      {
        sub_100002A8C(v88);
      }
    }

    else
    {

      v88 = 0;
    }

    free(v88);
  }

  if (![qword_1000EB2D8 isVolumeMountedWithSession:a2 fsid:0])
  {
    goto LABEL_227;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v89 = qword_1000EB308;
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
  {
    *in = 0;
    v90 = sub_1000011A8(1);
    v91 = v89;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v92 = v90;
    }

    else
    {
      v92 = v90 & 0xFFFFFFFE;
    }

    if (v92)
    {
      LOWORD(v246[0]) = 0;
      LODWORD(v216) = 2;
      v215 = v246;
      v93 = _os_log_send_and_compose_impl(v92, in, 0, 0, &_mh_execute_header, v91, 0, "Persona volume mounted");

      if (v93)
      {
        sub_100002A8C(v93);
      }
    }

    else
    {

      v93 = 0;
    }

    free(v93);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v94 = qword_1000EB308;
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    *in = 0;
    v95 = sub_1000011A8(1);
    v96 = v94;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      v97 = v95;
    }

    else
    {
      v97 = v95 & 0xFFFFFFFE;
    }

    if (v97)
    {
      LOWORD(v246[0]) = 0;
      LODWORD(v216) = 2;
      v215 = v246;
      v98 = _os_log_send_and_compose_impl(v97, in, 0, 0, &_mh_execute_header, v96, 0, "Terminating all processes with files open on persona volume...");

      if (v98)
      {
        sub_100002A8C(v98);
      }
    }

    else
    {

      v98 = 0;
    }

    free(v98);
  }

  sub_100095870(qword_1000EB2E8, a2, v99, v100, v101, v102, v103, v104, v215, v216, v217, v218, v219);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v105 = qword_1000EB308;
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    *in = 0;
    v106 = sub_1000011A8(1);
    v107 = v105;
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v108 = v106;
    }

    else
    {
      v108 = v106 & 0xFFFFFFFE;
    }

    if (v108)
    {
      LOWORD(v246[0]) = 0;
      LODWORD(v216) = 2;
      v109 = _os_log_send_and_compose_impl(v108, in, 0, 0, &_mh_execute_header, v107, 0, "Unmounting persona volume...", v246, v216);

      if (v109)
      {
        sub_100002A8C(v109);
      }
    }

    else
    {

      v109 = 0;
    }

    free(v109);
  }

  if (![qword_1000EB2D8 unmountVolumeWithSession:a2 mountPath:0 error:0])
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v110 = qword_1000EB308;
    if (!os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_226;
    }

    *in = 0;
    v114 = sub_1000011A8(1);
    v110 = v110;
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      v115 = v114;
    }

    else
    {
      v115 = v114 & 0xFFFFFFFE;
    }

    if (v115)
    {
      LOWORD(v246[0]) = 0;
      LODWORD(v216) = 2;
      v113 = _os_log_send_and_compose_impl(v115, in, 0, 0, &_mh_execute_header, v110, 0, "Persona Volume failed to unmount", v246, v216);
      goto LABEL_222;
    }

LABEL_224:

    v116 = 0;
    goto LABEL_225;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v110 = qword_1000EB308;
  if (!os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_226;
  }

  *in = 0;
  v111 = sub_1000011A8(1);
  v110 = v110;
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    v112 = v111;
  }

  else
  {
    v112 = v111 & 0xFFFFFFFE;
  }

  if (!v112)
  {
    goto LABEL_224;
  }

  LOWORD(v246[0]) = 0;
  LODWORD(v216) = 2;
  v113 = _os_log_send_and_compose_impl(v112, in, 0, 0, &_mh_execute_header, v110, 0, "Persona Volume unmounted", v246, v216);
LABEL_222:
  v116 = v113;

  if (v116)
  {
    sub_100002A8C(v116);
  }

LABEL_225:
  free(v116);
LABEL_226:

LABEL_227:
  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  memset(in, 0, sizeof(in));
  if (!sub_1000795D4(a2, kUMUserPersonaUniqueStringKey, in, 256))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v117 = qword_1000EB308;
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      *&v246[0] = 0;
      v118 = sub_1000011A8(1);
      v119 = v117;
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v120 = v118;
      }

      else
      {
        v120 = v118 & 0xFFFFFFFE;
      }

      if (v120)
      {
        *v247 = 0;
        LODWORD(v216) = 2;
        v121 = _os_log_send_and_compose_impl(v120, v246, 0, 0, &_mh_execute_header, v119, 0, "FAILED TO SET PERSONA UNIQUE STRING", v247, v216);

        if (v121)
        {
          sub_100002A8C(v121);
        }
      }

      else
      {

        v121 = 0;
      }

      free(v121);
    }
  }

  if (uuid_parse(in, uu))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v122 = qword_1000EB308;
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      *&v246[0] = 0;
      v123 = sub_1000011A8(1);
      v124 = v122;
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = v123;
      }

      else
      {
        v125 = v123 & 0xFFFFFFFE;
      }

      if (v125)
      {
        *v247 = 0;
        LODWORD(v216) = 2;
        v126 = _os_log_send_and_compose_impl(v125, v246, 0, 0, &_mh_execute_header, v124, 0, "failed to parse unique string to uuid_t", v247, v216);

        if (v126)
        {
          sub_100002A8C(v126);
        }
      }

      else
      {

        v126 = 0;
      }

      free(v126);
    }
  }

  if (![qword_1000EB2D8 splitUserVolumeEnabled])
  {
    v132 = sub_100089790(qword_1000EB608);
    v133 = sub_100079590(a2, kUMUserPersonaUniqueStringKey);
    v134 = [v132 removePersonaKeyForUser:HIDWORD(v219) personaUUID:v133 volumeUUID:{CFDictionaryGetValue(a2, @"MKBUserSessionVolumeUUID"}];
    goto LABEL_313;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v127 = qword_1000EB308;
  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
  {
    *&v246[0] = 0;
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
      *v247 = 0;
      LODWORD(v216) = 2;
      v131 = _os_log_send_and_compose_impl(v130, v246, 0, 0, &_mh_execute_header, v129, 0, "Unmapping the persona volume..", v247, v216);

      if (v131)
      {
        sub_100002A8C(v131);
      }
    }

    else
    {

      v131 = 0;
    }

    free(v131);
  }

  v135 = a2;
  v132 = sub_100079590(a2, kUMUserSessionVolumeDeviceNodeKey);
  v136 = sub_100089A80(qword_1000EB608);
  v226[0] = v223;
  v137 = [v136 unmapVolume:v132 error:v226];
  v138 = v226[0];

  if (!v137)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v139 = qword_1000EB308;
    if (!os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_287;
    }

    *v247 = 0;
    v143 = sub_1000011A8(1);
    v139 = v139;
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      v144 = v143;
    }

    else
    {
      v144 = v143 & 0xFFFFFFFE;
    }

    if (v144)
    {
      LODWORD(v246[0]) = 138412290;
      *(v246 + 4) = v138;
      LODWORD(v216) = 12;
      v142 = _os_log_send_and_compose_impl(v144, v247, 0, 0, &_mh_execute_header, v139, 0, "Failed to unmap persona volume error:%@, going ahead TO delete persona key..", v246, v216);
      goto LABEL_283;
    }

LABEL_285:

    v145 = 0;
    goto LABEL_286;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v139 = qword_1000EB308;
  if (!os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_287;
  }

  *&v246[0] = 0;
  v140 = sub_1000011A8(1);
  v139 = v139;
  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
  {
    v141 = v140;
  }

  else
  {
    v141 = v140 & 0xFFFFFFFE;
  }

  if (!v141)
  {
    goto LABEL_285;
  }

  *v247 = 67109120;
  *&v247[4] = HIDWORD(v219);
  v142 = _os_log_send_and_compose_impl(v141, v246, 0, 0, &_mh_execute_header, v139, 0, "Successfully unmap, Removing Persona Key for user:%d", v247);
LABEL_283:
  v145 = v142;

  if (v145)
  {
    sub_100002A8C(v145);
  }

LABEL_286:
  free(v145);
LABEL_287:

  v146 = sub_100079590(a2, kUMUserPersonaUniqueStringKey);
  v147 = sub_100016954(NSUUID, v146);
  v148 = sub_100089A80(qword_1000EB608);
  v225 = v138;
  v149 = [v148 deletePersonaWithUUID:v147 fromSession:HIDWORD(v219) error:&v225];
  v223 = v225;

  if (v149)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    a2 = v135;
    v150 = qword_1000EB308;
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      *&v246[0] = 0;
      v151 = sub_1000011A8(1);
      v150 = v150;
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        v152 = v151;
      }

      else
      {
        v152 = v151 & 0xFFFFFFFE;
      }

      if (v152)
      {
        *v247 = 0;
        LODWORD(v216) = 2;
        v153 = _os_log_send_and_compose_impl(v152, v246, 0, 0, &_mh_execute_header, v150, 0, "Successfully Deleted the persona key", v247, v216);

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

    v134 = 0;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    a2 = v135;
    v150 = qword_1000EB308;
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      *v247 = 0;
      v154 = sub_1000011A8(1);
      v150 = v150;
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        v155 = v154;
      }

      else
      {
        v155 = v154 & 0xFFFFFFFE;
      }

      if (v155)
      {
        LODWORD(v246[0]) = 67109378;
        DWORD1(v246[0]) = HIDWORD(v219);
        WORD4(v246[0]) = 2112;
        *(v246 + 10) = v223;
        LODWORD(v216) = 18;
        v156 = _os_log_send_and_compose_impl(v155, v247, 0, 0, &_mh_execute_header, v150, 0, "Failed to delete persona Key for user:%d with error:%@", v246, v216);

        if (v156)
        {
          sub_100002A8C(v156);
        }
      }

      else
      {

        v156 = 0;
      }

      free(v156);
    }

    v134 = 5;
  }

LABEL_313:
  if (!v134)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v157 = qword_1000EB308;
    if (!os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_334;
    }

    *&v246[0] = 0;
    v161 = sub_1000011A8(1);
    v157 = v157;
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
    {
      v162 = v161;
    }

    else
    {
      v162 = v161 & 0xFFFFFFFE;
    }

    if (v162)
    {
      *v247 = 0;
      v160 = _os_log_send_and_compose_impl(v162, v246, 0, 0, &_mh_execute_header, v157, 0, "deleted persona key from keybag");
      goto LABEL_330;
    }

LABEL_332:

    v163 = 0;
    goto LABEL_333;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v157 = qword_1000EB308;
  if (!os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_334;
  }

  *&v246[0] = 0;
  v158 = sub_1000011A8(1);
  v157 = v157;
  if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
  {
    v159 = v158;
  }

  else
  {
    v159 = v158 & 0xFFFFFFFE;
  }

  if (!v159)
  {
    goto LABEL_332;
  }

  *v247 = 67109120;
  *&v247[4] = v134;
  v160 = _os_log_send_and_compose_impl(v159, v246, 0, 0, &_mh_execute_header, v157, 0, "Failed to delete persona key from keybag:0x%x", v247);
LABEL_330:
  v163 = v160;

  if (v163)
  {
    sub_100002A8C(v163);
  }

LABEL_333:
  free(v163);
LABEL_334:

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v164 = qword_1000EB308;
  if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
  {
    *&v246[0] = 0;
    v165 = sub_1000011A8(1);
    v166 = v164;
    if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
    {
      v167 = v165;
    }

    else
    {
      v167 = v165 & 0xFFFFFFFE;
    }

    if (v167)
    {
      *v247 = 0;
      LODWORD(v216) = 2;
      v168 = _os_log_send_and_compose_impl(v167, v246, 0, 0, &_mh_execute_header, v166, 0, "Deleting the Persona volume", v247, v216);

      if (v168)
      {
        sub_100002A8C(v168);
      }
    }

    else
    {

      v168 = 0;
    }

    free(v168);
  }

  if (!CFDictionaryContainsKey(a2, kUMUserSessionVolumeDeviceNodeKey))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v15 = v221;
    v173 = qword_1000EB308;
    if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
    {
      *&v246[0] = 0;
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
        *v247 = 0;
        LODWORD(v216) = 2;
        v177 = _os_log_send_and_compose_impl(v176, v246, 0, 0, &_mh_execute_header, v175, 0, "No Device Volume attached to the Persona", v247, v216);

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

    goto LABEL_414;
  }

  if (![qword_1000EB2D8 deleteVolumeWithSession:a2 error:0])
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v15 = v221;
    v169 = qword_1000EB308;
    if (!os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_376;
    }

    *&v246[0] = 0;
    v178 = sub_1000011A8(1);
    v169 = v169;
    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
    {
      v179 = v178;
    }

    else
    {
      v179 = v178 & 0xFFFFFFFE;
    }

    if (v179)
    {
      *v247 = 0;
      LODWORD(v216) = 2;
      v172 = _os_log_send_and_compose_impl(v179, v246, 0, 0, &_mh_execute_header, v169, 0, "Failed to remove APFS User volume for Persona", v247, v216);
      goto LABEL_372;
    }

LABEL_374:

    v180 = 0;
    goto LABEL_375;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v15 = v221;
  v169 = qword_1000EB308;
  if (!os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_376;
  }

  *&v246[0] = 0;
  v170 = sub_1000011A8(1);
  v169 = v169;
  if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
  {
    v171 = v170;
  }

  else
  {
    v171 = v170 & 0xFFFFFFFE;
  }

  if (!v171)
  {
    goto LABEL_374;
  }

  *v247 = 0;
  LODWORD(v216) = 2;
  v172 = _os_log_send_and_compose_impl(v171, v246, 0, 0, &_mh_execute_header, v169, 0, "Removed APFS User volume for Persona", v247, v216);
LABEL_372:
  v180 = v172;

  if (v180)
  {
    sub_100002A8C(v180);
  }

LABEL_375:
  free(v180);
LABEL_376:

  if (!CFDictionaryContainsKey(a2, kUMUserSessionHomeDirKey))
  {
    goto LABEL_410;
  }

  Value = CFDictionaryGetValue(a2, kUMUserSessionHomeDirKey);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v182 = qword_1000EB308;
  if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
  {
    v183 = a2;
    *v247 = 0;
    v184 = sub_1000011A8(1);
    v185 = v182;
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
      LODWORD(v246[0]) = 138412290;
      *(v246 + 4) = Value;
      LODWORD(v216) = 12;
      v187 = _os_log_send_and_compose_impl(v186, v247, 0, 0, &_mh_execute_header, v185, 0, "Removing underneath mount point path:%@", v246, v216);

      if (v187)
      {
        sub_100002A8C(v187);
      }
    }

    else
    {

      v187 = 0;
    }

    free(v187);
    a2 = v183;
  }

  v188 = sub_1000013A0(qword_1000EB608);
  v189 = [v188 removePath:Value error:0];

  if (!v189)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v190 = qword_1000EB308;
    if (!os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_409;
    }

    *&v246[0] = 0;
    v194 = sub_1000011A8(1);
    v190 = v190;
    if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
    {
      v195 = v194;
    }

    else
    {
      v195 = v194 & 0xFFFFFFFE;
    }

    if (v195)
    {
      *v247 = 0;
      LODWORD(v216) = 2;
      v193 = _os_log_send_and_compose_impl(v195, v246, 0, 0, &_mh_execute_header, v190, 0, "Failed to delete mount path", v247, v216);
      goto LABEL_405;
    }

LABEL_407:

    v196 = 0;
    goto LABEL_408;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v190 = qword_1000EB308;
  if (!os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_409;
  }

  *&v246[0] = 0;
  v191 = sub_1000011A8(1);
  v190 = v190;
  if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
  {
    v192 = v191;
  }

  else
  {
    v192 = v191 & 0xFFFFFFFE;
  }

  if (!v192)
  {
    goto LABEL_407;
  }

  *v247 = 0;
  LODWORD(v216) = 2;
  v193 = _os_log_send_and_compose_impl(v192, v246, 0, 0, &_mh_execute_header, v190, 0, "Successful deletion of the mount path", v247, v216);
LABEL_405:
  v196 = v193;

  if (v196)
  {
    sub_100002A8C(v196);
  }

LABEL_408:
  free(v196);
LABEL_409:

LABEL_410:
  CFDictionaryRemoveValue(a2, kUMUserSessionVolumeDeviceNodeKey);
  sub_10008EBBC(qword_1000EB2E8);
LABEL_414:
  if (v224 == 4)
  {
    sub_10008D410(qword_1000EB2E8, 4, v220);
    if (qword_1000EB330 != -1)
    {
      sub_100089D40();
    }

    v199 = qword_1000EB328;
    if (!os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_435;
    }

    *v247 = 0;
    v203 = sub_1000011A8(1);
    v199 = v199;
    if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
    {
      v204 = v203;
    }

    else
    {
      v204 = v203 & 0xFFFFFFFE;
    }

    if (v204)
    {
      LODWORD(v246[0]) = 138543362;
      *(v246 + 4) = v15;
      LODWORD(v216) = 12;
      v202 = _os_log_send_and_compose_impl(v204, v247, 0, 0, &_mh_execute_header, v199, 0, "Deleted universal persona %{public}@", v246, v216);
      goto LABEL_431;
    }

LABEL_433:

    v205 = 0;
    goto LABEL_434;
  }

  sub_10008D284(qword_1000EB2E8, v222, v220);
  v197 = sub_100079590(a2, kUMUserPersonaUserODUUIDKey);
  v198 = sub_1000023E8(a2, kUMUserPersonaUserUIDKey);
  if (qword_1000EB330 != -1)
  {
    sub_100089D40();
  }

  v199 = qword_1000EB328;
  if (!os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_435;
  }

  *v247 = 0;
  v200 = sub_1000011A8(1);
  v199 = v199;
  if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
  {
    v201 = v200;
  }

  else
  {
    v201 = v200 & 0xFFFFFFFE;
  }

  if (!v201)
  {
    goto LABEL_433;
  }

  LODWORD(v246[0]) = 138544130;
  *(v246 + 4) = v15;
  WORD6(v246[0]) = 1024;
  *(v246 + 14) = v222;
  WORD1(v246[1]) = 2114;
  *(&v246[1] + 4) = v197;
  WORD6(v246[1]) = 1024;
  *(&v246[1] + 14) = v198;
  LODWORD(v216) = 34;
  v202 = _os_log_send_and_compose_impl(v201, v247, 0, 0, &_mh_execute_header, v199, 0, "Deleted persona %{public}@ (%u) from user %{public}@ (%u)", v246, v216);
LABEL_431:
  v205 = v202;

  if (v205)
  {
    sub_100002A8C(v205);
  }

LABEL_434:
  free(v205);
LABEL_435:

  v206 = sub_100089790(qword_1000EB2E8);
  sub_10008B8D8(v206);

  if (qword_1000EB330 != -1)
  {
    sub_100089D40();
  }

  v207 = qword_1000EB328;
  if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
  {
    *v247 = 0;
    LODWORD(v208) = sub_1000011A8(1);
    v209 = v207;
    if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
    {
      v208 = v208;
    }

    else
    {
      v208 = v208 & 0xFFFFFFFE;
    }

    if (v208)
    {
      v210 = sub_100089790(qword_1000EB2E8);
      v212 = sub_100055380(v210, v211);
      LODWORD(v246[0]) = 134217984;
      *(v246 + 4) = v212;
      v213 = _os_log_send_and_compose_impl(v208, v247, 0, 0, &_mh_execute_header, v209, 0, "Updated Persona Generation Count for Post Persona Deletion:%llu", v246);

      if (v213)
      {
        sub_100002A8C(v213);
      }
    }

    else
    {

      v213 = 0;
    }

    free(v213);
  }

  sub_10008EBBC(qword_1000EB2E8);
  v43 = 0;
  v16 = v223;
LABEL_447:

  return v43;
}

uint64_t sub_10004740C(const __CFDictionary *a1, void *a2)
{
  v3 = sub_100056BC8(qword_1000EB2E8, a2);
  if (v3)
  {
    if (CFDictionaryContainsKey(a1, kUMUserPersonaUniqueStringKey))
    {
      v4 = qword_1000EB2E8;
      v5 = sub_100079590(a1, kUMUserPersonaUniqueStringKey);
      v6 = sub_100056854(v4, v5, v3);
    }

    else
    {
      if (!CFDictionaryContainsKey(a1, kUMUserPersonaTypeKey))
      {
        goto LABEL_17;
      }

      v7 = qword_1000EB2E8;
      v8 = sub_1000023E8(a1, kUMUserPersonaTypeKey);
      v6 = sub_10008CDD8(v7, v8, v3);
    }

    v9 = v6;
    if (v6)
    {
      v10 = sub_1000023E8(v6, kUMUserPersonaTypeKey);
      if ((v10 & 0xFFFFFFFB) == 2)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v11 = qword_1000EB308;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 0;
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
            LOWORD(v41[0]) = 0;
            v14 = _os_log_send_and_compose_impl(v13, &v40, 0, 0, &_mh_execute_header, v11, 0, "setting Disable on persona", v41, 2);
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

        if (sub_100002454(v9, kUMUserPersonaDisabledKey))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v28 = qword_1000EB308;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v40 = 0;
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
              LOWORD(v41[0]) = 0;
              LODWORD(v39) = 2;
              v31 = _os_log_send_and_compose_impl(v30, &v40, 0, 0, &_mh_execute_header, v28, 0, "Persona already set to be Disabled", v41, v39);
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
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v33 = qword_1000EB308;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v40 = 0;
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
              LOWORD(v41[0]) = 0;
              LODWORD(v39) = 2;
              v36 = _os_log_send_and_compose_impl(v35, &v40, 0, 0, &_mh_execute_header, v33, 0, "Setting Persona Disabled", v41, v39);
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

          CFDictionarySetValue(v9, kUMUserPersonaDisabledKey, kCFBooleanTrue);
          sub_100044C54(v9, 0);
        }

        v27 = 0;
      }

      else
      {
        v21 = v10;
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v22 = qword_1000EB308;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 0;
          v23 = sub_1000011A8(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v23;
          }

          else
          {
            v24 = v23 & 0xFFFFFFFE;
          }

          if (v24)
          {
            v41[0] = 67109120;
            v41[1] = v21;
            v25 = _os_log_send_and_compose_impl(v24, &v40, 0, 0, &_mh_execute_header, v22, 0, "Persona Disable called on Non Enterprise or guest PersonaType:%d, bailing as not supported", v41);
            v26 = v25;
            if (v25)
            {
              sub_100002A8C(v25);
            }
          }

          else
          {
            v26 = 0;
          }

          free(v26);
        }

        v27 = 45;
      }

      CFRelease(v3);
      v3 = v9;
LABEL_71:
      CFRelease(v3);
      return v27;
    }
  }

LABEL_17:
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v16 = qword_1000EB308;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 0;
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
      LOWORD(v41[0]) = 0;
      v19 = _os_log_send_and_compose_impl(v18, &v40, 0, 0, &_mh_execute_header, v16, 0, "FOUND No requested persona entry in the Manifest or user does not exist", v41, 2);
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

  v27 = 2;
  if (v3)
  {
    goto LABEL_71;
  }

  return v27;
}

uint64_t sub_100047950()
{
  v0 = sub_100089790(qword_1000EB2E8);
  sub_10008BA40(v0);

  v1 = sub_100089790(qword_1000EB2E8);
  v3 = sub_100055380(v1, v2);

  return v3;
}

uint64_t sub_1000479A8(const __CFDictionary *a1, const __CFArray *a2, void *a3)
{
  v5 = a3;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v52 = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      *v51 = 138412290;
      *&v51[4] = a1;
      v9 = _os_log_send_and_compose_impl(v8, &v52, 0, 0, &_mh_execute_header, v6, 2, "Updating BundleIDs for %@", v51, 12);
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

  v11 = sub_100056BC8(qword_1000EB2E8, v5);
  if (v11)
  {
    v12 = v11;
    if (CFDictionaryContainsKey(a1, kUMUserPersonaUniqueStringKey))
    {
      v13 = qword_1000EB2E8;
      v14 = sub_100079590(a1, kUMUserPersonaUniqueStringKey);
      v15 = sub_100056854(v13, v14, v12);
    }

    else
    {
      if (!CFDictionaryContainsKey(a1, kUMUserPersonaTypeKey))
      {
        v24 = 2;
        v18 = v12;
        goto LABEL_92;
      }

      v16 = qword_1000EB2E8;
      v17 = sub_1000023E8(a1, kUMUserPersonaTypeKey);
      v15 = sub_10008CDD8(v16, v17, v12);
    }

    v18 = v15;
    CFRelease(v12);
    if (v18)
    {
      if (a2)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v19 = qword_1000EB308;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v52 = 0;
          v20 = sub_1000011A8(1);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v21 = v20;
          }

          else
          {
            v21 = v20 & 0xFFFFFFFE;
          }

          if (v21)
          {
            *v51 = 138412546;
            *&v51[4] = a2;
            *&v51[12] = 2112;
            *&v51[14] = v18;
            LODWORD(v50) = 22;
            v22 = _os_log_send_and_compose_impl(v21, &v52, 0, 0, &_mh_execute_header, v19, 2, "Updating bundle IDS:%@ for persona %@", v51, v50);
            v23 = v22;
            if (v22)
            {
              sub_100002A8C(v22);
            }
          }

          else
          {
            v23 = 0;
          }

          free(v23);
        }

        v25 = sub_1000023E8(v18, kUMUserPersonaIDKey);
        if (CFDictionaryContainsKey(v18, kUMUserPersonaBundleIDsKey))
        {
          v26 = sub_10007947C(v18, kUMUserPersonaBundleIDsKey);
          v27 = v26;
          if (v26)
          {
            CFRetain(v26);
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v28 = qword_1000EB308;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v52 = 0;
            v29 = sub_1000011A8(1);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v30 = v29;
            }

            else
            {
              v30 = v29 & 0xFFFFFFFE;
            }

            if (v30)
            {
              *v51 = 67109378;
              *&v51[4] = v25;
              *&v51[8] = 2112;
              *&v51[10] = v27;
              LODWORD(v50) = 18;
              v31 = _os_log_send_and_compose_impl(v30, &v52, 0, 0, &_mh_execute_header, v28, 2, "BundleID for %d was %@", v51, v50);
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

          if (CFArrayGetCount(a2) <= 0)
          {
            if (!v27)
            {
              goto LABEL_72;
            }

            CFDictionaryRemoveValue(v18, kUMUserPersonaBundleIDsKey);
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v33 = qword_1000EB308;
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_71;
            }

            *v51 = 0;
            v38 = sub_1000011A8(1);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v38;
            }

            else
            {
              v39 = v38 & 0xFFFFFFFE;
            }

            if (!v39)
            {
              v37 = 0;
              goto LABEL_70;
            }

            LODWORD(v52) = 67109120;
            HIDWORD(v52) = v25;
            v36 = _os_log_send_and_compose_impl(v39, v51, 0, 0, &_mh_execute_header, v33, 0, "BundleIDs for Persona %d removed, saving to disk", &v52);
            v37 = v36;
            if (v36)
            {
LABEL_68:
              sub_100002A8C(v36);
            }

LABEL_70:
            free(v37);
LABEL_71:

            goto LABEL_72;
          }
        }

        else
        {
          v27 = 0;
          if (CFArrayGetCount(a2) < 1)
          {
LABEL_72:
            v40 = sub_100089790(qword_1000EB2E8);
            sub_10008B8D8(v40);

            if (qword_1000EB330 != -1)
            {
              sub_100089D40();
            }

            v41 = qword_1000EB328;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v52 = 0;
              LODWORD(v42) = sub_1000011A8(1);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = v42;
              }

              else
              {
                v42 = v42 & 0xFFFFFFFE;
              }

              if (v42)
              {
                v43 = qword_1000EB2E8;
                v44 = v41;
                v45 = sub_100089790(v43);
                v47 = sub_100055380(v45, v46);
                *v51 = 134217984;
                *&v51[4] = v47;
                v48 = _os_log_send_and_compose_impl(v42, &v52, 0, 0, &_mh_execute_header, v44, 0, "Updated Persona Generation Count after modifying BundleID:%llu", v51);

                if (v48)
                {
                  sub_100002A8C(v48);
                }
              }

              else
              {
                v48 = 0;
              }

              free(v48);
            }

            if (sub_10008EBBC(qword_1000EB2E8))
            {
              if (!v27)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (!v27)
              {
                CFDictionaryRemoveValue(v18, kUMUserPersonaBundleIDsKey);
                goto LABEL_91;
              }

              CFDictionarySetValue(v18, kUMUserPersonaBundleIDsKey, v27);
            }

            CFRelease(v27);
LABEL_91:
            v24 = 0;
            goto LABEL_92;
          }
        }

        CFDictionarySetValue(v18, kUMUserPersonaBundleIDsKey, a2);
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v33 = qword_1000EB308;
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_71;
        }

        v52 = 0;
        v34 = sub_1000011A8(1);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
        }

        else
        {
          v35 = v34 & 0xFFFFFFFE;
        }

        if (!v35)
        {
          v37 = 0;
          goto LABEL_70;
        }

        *v51 = 67109378;
        *&v51[4] = v25;
        *&v51[8] = 2112;
        *&v51[10] = a2;
        LODWORD(v50) = 18;
        v36 = _os_log_send_and_compose_impl(v35, &v52, 0, 0, &_mh_execute_header, v33, 0, "BundleIDs for Persona %d Set with %@, saving to disk", v51, v50);
        v37 = v36;
        if (v36)
        {
          goto LABEL_68;
        }

        goto LABEL_70;
      }

      v24 = 22;
LABEL_92:
      CFRelease(v18);
      goto LABEL_93;
    }
  }

  v24 = 2;
LABEL_93:

  return v24;
}

uint64_t sub_1000480F4(const __CFArray *a1, void *a2)
{
  v3 = a2;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v4 = qword_1000EB308;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v49 = 0;
    v5 = sub_1000011A8(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      LOWORD(v48[0]) = 0;
      v7 = _os_log_send_and_compose_impl(v6, v49, 0, 0, &_mh_execute_header, v4, 2, "Updating Universal BundleIDs", v48, 2);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = sub_100056BC8(qword_1000EB2E8, v3);
  if (v9)
  {
    v10 = v9;
    v11 = sub_10008CDD8(qword_1000EB2E8, 4u, v9);
    CFRelease(v10);
    if (v11)
    {
      if (!a1)
      {
        v22 = 22;
        goto LABEL_94;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v12 = qword_1000EB308;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v48[0] = 0;
        v13 = sub_1000011A8(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          *v49 = 138412290;
          *&v49[4] = a1;
          LODWORD(v47) = 12;
          v15 = _os_log_send_and_compose_impl(v14, v48, 0, 0, &_mh_execute_header, v12, 2, "Updating Universal bundle IDS:%@ ", v49, v47);
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

      if (CFDictionaryContainsKey(v11, kUMUserPersonaBundleIDsKey))
      {
        v23 = sub_10007947C(v11, kUMUserPersonaBundleIDsKey);
        v24 = v23;
        if (v23)
        {
          CFRetain(v23);
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v25 = qword_1000EB308;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v48[0] = 0;
          v26 = sub_1000011A8(1);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v27 = v26;
          }

          else
          {
            v27 = v26 & 0xFFFFFFFE;
          }

          if (v27)
          {
            *v49 = 138412290;
            *&v49[4] = v24;
            LODWORD(v47) = 12;
            v28 = _os_log_send_and_compose_impl(v27, v48, 0, 0, &_mh_execute_header, v25, 2, "Universal BundleID used to be %@", v49, v47);
            v29 = v28;
            if (v28)
            {
              sub_100002A8C(v28);
            }
          }

          else
          {
            v29 = 0;
          }

          free(v29);
        }

        if (CFArrayGetCount(a1) <= 0)
        {
          if (!v24)
          {
LABEL_78:
            v37 = sub_100089790(qword_1000EB2E8);
            sub_10008B8D8(v37);

            if (qword_1000EB330 != -1)
            {
              sub_100089D40();
            }

            v38 = qword_1000EB328;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v48[0] = 0;
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
                v40 = qword_1000EB2E8;
                v41 = v38;
                v42 = sub_100089790(v40);
                v44 = sub_100055380(v42, v43);
                *v49 = 134217984;
                *&v49[4] = v44;
                v45 = _os_log_send_and_compose_impl(v39, v48, 0, 0, &_mh_execute_header, v41, 0, "Updated Persona Generation Count after modifying Multi Persona BundleID:%llu", v49);

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

            if (sub_10008EBBC(qword_1000EB2E8))
            {
              v22 = 0;
              if (!v24)
              {
                goto LABEL_94;
              }

              goto LABEL_93;
            }

            CFDictionarySetValue(v11, kUMUserPersonaBundleIDsKey, v24);
            v22 = 12;
            if (v24)
            {
LABEL_93:
              CFRelease(v24);
            }

LABEL_94:
            CFRelease(v11);
            goto LABEL_95;
          }

          CFDictionaryRemoveValue(v11, kUMUserPersonaBundleIDsKey);
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v30 = qword_1000EB308;
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
LABEL_77:

            goto LABEL_78;
          }

          *v49 = 0;
          v35 = sub_1000011A8(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v36 = v35;
          }

          else
          {
            v36 = v35 & 0xFFFFFFFE;
          }

          if (v36)
          {
            LOWORD(v48[0]) = 0;
            LODWORD(v47) = 2;
            v33 = _os_log_send_and_compose_impl(v36, v49, 0, 0, &_mh_execute_header, v30, 0, "Universal BundleIDs removed, saving to disk", v48, v47, v48[0]);
LABEL_64:
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }

            goto LABEL_76;
          }

LABEL_75:
          v34 = 0;
LABEL_76:
          free(v34);
          goto LABEL_77;
        }
      }

      else
      {
        v24 = 0;
        if (CFArrayGetCount(a1) < 1)
        {
          goto LABEL_78;
        }
      }

      CFDictionarySetValue(v11, kUMUserPersonaBundleIDsKey, a1);
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v30 = qword_1000EB308;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_77;
      }

      v48[0] = 0;
      v31 = sub_1000011A8(1);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v31;
      }

      else
      {
        v32 = v31 & 0xFFFFFFFE;
      }

      if (v32)
      {
        *v49 = 138412290;
        *&v49[4] = a1;
        LODWORD(v47) = 12;
        v33 = _os_log_send_and_compose_impl(v32, v48, 0, 0, &_mh_execute_header, v30, 0, "Universal BundleIDs Set with %@, saving to disk", v49, v47, v48[0]);
        goto LABEL_64;
      }

      goto LABEL_75;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v17 = qword_1000EB308;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 0;
    v18 = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      LOWORD(v48[0]) = 0;
      LODWORD(v47) = 2;
      v20 = _os_log_send_and_compose_impl(v19, v49, 0, 0, &_mh_execute_header, v17, 0, "FOUND NO Universal PERSONA", v48, v47);
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  v22 = 2;
LABEL_95:

  return v22;
}

id sub_1000487DC(void *a1, uint64_t a2)
{
  v2 = a1;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v3 = qword_1000EB308;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v12 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v11[0] = 0;
      v6 = _os_log_send_and_compose_impl(v5, &v12, 0, 0, &_mh_execute_header, v3, 2, "Fetching BundleIDs for Universal Persona", v11, 2);
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

  v13 = kUMUserPersonaTypeKey;
  v14 = &off_1000E1660;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = sub_10008DF28();

  return v9;
}

void *sub_10004897C(void *a1, void *a2, int *a3)
{
  v5 = a1;
  v6 = sub_100056BC8(qword_1000EB2E8, a2);
  if (!v6)
  {
LABEL_7:
    v9 = 2;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v7 = sub_100056854(qword_1000EB2E8, v5, v6);
  CFRelease(v6);
  if (!v7)
  {
    v6 = 0;
    goto LABEL_7;
  }

  if (sub_1000023E8(v7, kUMUserPersonaTypeKey) == 6)
  {
    v8 = sub_100079590(v7, kUMUserSessionVolumeDeviceNodeKey);
    v6 = v8;
    if (v8)
    {
      CFRetain(v8);
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v6 = 0;
    v9 = 22;
  }

  CFRelease(v7);
  if (a3)
  {
LABEL_12:
    if (!v6 && v9)
    {
      *a3 = v9;
    }
  }

LABEL_15:

  return v6;
}

uint64_t sub_100048A84(uint64_t a1, int a2)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v4 = qword_1000EB308;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v30[0] = 0;
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
      *v31 = 138412546;
      *&v31[4] = a1;
      v32 = 1024;
      v33 = a2;
      LODWORD(v28) = 18;
      v27 = v31;
      v7 = _os_log_send_and_compose_impl(v6, v30, 0, 0, &_mh_execute_header, v4, 0, "PERSONA LOGOUT for USER:%@, UID:%d");
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  sub_1000948C8(qword_1000EB2E8, a1, v9, v10, v11, v12, v13, v14, v27, v28, v30[0], v30[1], *v31);
  if (v15)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v16 = qword_1000EB308;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 0;
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
        LOWORD(v30[0]) = 0;
        LODWORD(v29) = 2;
        v19 = _os_log_send_and_compose_impl(v18, v31, 0, 0, &_mh_execute_header, v16, 0, "unLoading All persona Success", v30, v29);
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

    v25 = 0;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v16 = qword_1000EB308;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        LOWORD(v30[0]) = 0;
        LODWORD(v29) = 2;
        v23 = _os_log_send_and_compose_impl(v22, v31, 0, 0, &_mh_execute_header, v16, 0, "unLoading All persona failed", v30, v29);
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

    v25 = 22;
  }

  return v25;
}

__CFDictionary *sub_100048D4C(const __CFDictionary *a1, int *a2)
{
  v4 = sub_100088F2C(qword_1000EB608);
  v5 = sub_100089A48(v4);

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v130 = 0;
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
      LOWORD(valuePtr) = 0;
      v9 = _os_log_send_and_compose_impl(v8, v130, 0, 0, &_mh_execute_header, v6, 0, "IN provisionUserSessionForDevice", &valuePtr, 2);
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

  if (MGGetBoolAnswer() && sub_100002454(a1, kUMUserSessionForcedProvisionTypeKey))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v130 = 0;
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
        LOWORD(valuePtr) = 0;
        LODWORD(v129) = 2;
        v14 = _os_log_send_and_compose_impl(v13, v130, 0, 0, &_mh_execute_header, v11, 0, "Forced provision void Gestalt Check for iPad with enough memory", &valuePtr, v129);
        goto LABEL_33;
      }

      goto LABEL_44;
    }

    goto LABEL_46;
  }

  v15 = MGCopyAnswer();
  if (!v15)
  {
LABEL_36:
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v22 = qword_1000EB308;
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_70;
    }

    *v130 = 0;
    v23 = sub_1000011A8(1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      LOWORD(valuePtr) = 0;
      LODWORD(v129) = 2;
      v25 = _os_log_send_and_compose_impl(v24, v130, 0, 0, &_mh_execute_header, v22, 0, "MKB: CANNOT CONFIGURE LOGINWINDOW; INCOMPATIBLE MULTIUSER DEVICE", &valuePtr, v129);
      goto LABEL_55;
    }

LABEL_68:
    v28 = 0;
LABEL_69:
    free(v28);
LABEL_70:

    v35 = 0;
    v36 = 45;
LABEL_71:
    if (a2 && v36)
    {
      *a2 = v36;
    }

    return v35;
  }

  v16 = v15;
  v17 = CFGetTypeID(v15);
  if (v17 != CFBooleanGetTypeID())
  {
    CFRelease(v16);
    goto LABEL_36;
  }

  Value = CFBooleanGetValue(v16);
  CFRelease(v16);
  if (!Value)
  {
    goto LABEL_36;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v11 = qword_1000EB308;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v130 = 0;
    v19 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      LOWORD(valuePtr) = 0;
      LODWORD(v129) = 2;
      v14 = _os_log_send_and_compose_impl(v20, v130, 0, 0, &_mh_execute_header, v11, 0, "COMPATIBLE MULTIUSER DEVICE", &valuePtr, v129);
LABEL_33:
      v21 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }

      goto LABEL_45;
    }

LABEL_44:
    v21 = 0;
LABEL_45:
    free(v21);
  }

LABEL_46:

  if (_os_feature_enabled_impl())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v22 = qword_1000EB308;
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_70;
    }

    *v130 = 0;
    v26 = sub_1000011A8(1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      LOWORD(valuePtr) = 0;
      LODWORD(v129) = 2;
      v25 = _os_log_send_and_compose_impl(v27, v130, 0, 0, &_mh_execute_header, v22, 0, "LOCAL USER ENROLLMENT FEATURE ENABLED, WILL NOT BE ABLE TO PROVISION DEVICE; REMOVE FEATURE FLAG AND TRY AGAIN", &valuePtr, v129);
LABEL_55:
      v28 = v25;
      if (v25)
      {
        sub_100002A8C(v25);
      }

      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v29 = sub_100079590(a1, kUMUserSessionProvisionTypeKey[0]);
  if (CFStringCompare(v29, kUMUserSessionProvisionTypeEducation[0], 0))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v30 = qword_1000EB308;
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_297;
    }

    *v130 = 0;
    v31 = sub_1000011A8(1);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (v32)
    {
      LOWORD(valuePtr) = 0;
      LODWORD(v129) = 2;
      v33 = _os_log_send_and_compose_impl(v32, v130, 0, 0, &_mh_execute_header, v30, 0, "Incorrect provision option on iOS", &valuePtr, v129);
      goto LABEL_66;
    }

LABEL_295:
    v34 = 0;
LABEL_296:
    free(v34);
LABEL_297:

    v35 = 0;
    v36 = 22;
    goto LABEL_71;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v38 = qword_1000EB308;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *v130 = 0;
    v39 = sub_1000011A8(1);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v39;
    }

    else
    {
      v40 = v39 & 0xFFFFFFFE;
    }

    if (v40)
    {
      LOWORD(valuePtr) = 0;
      LODWORD(v129) = 2;
      v41 = _os_log_send_and_compose_impl(v40, v130, 0, 0, &_mh_execute_header, v38, 0, "Shared iPad Provision is requested", &valuePtr, v129);
      v42 = v41;
      if (v41)
      {
        sub_100002A8C(v41);
      }
    }

    else
    {
      v42 = 0;
    }

    free(v42);
  }

  if (CFDictionaryContainsKey(a1, kUMEducationUserSizeKey[0]))
  {
    v43 = sub_1000794B8(a1, kUMEducationUserSizeKey[0]);
    valuePtr = v43;
    v44 = v43 >> 20;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v45 = qword_1000EB308;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v131[0] = 0;
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
        *v130 = 134217984;
        *&v130[4] = v43 >> 20;
        v48 = _os_log_send_and_compose_impl(v47, v131, 0, 0, &_mh_execute_header, v45, 0, "Quota provision with givenQuota:%lld MByes", v130);
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

    if ((v43 & 0xFFFFFFFFFFF00000) != v43)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v56 = qword_1000EB308;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v131[0] = 0;
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
          *v130 = 134218240;
          *&v130[4] = v43;
          *&v130[12] = 2048;
          *&v130[14] = v43 & 0xFFFFFFFFFFF00000;
          LODWORD(v129) = 22;
          v59 = _os_log_send_and_compose_impl(v58, v131, 0, 0, &_mh_execute_header, v56, 0, "Incorrect Size specified:%lld and should have been:%lld", v130, v129);
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

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v30 = qword_1000EB308;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_297;
      }

      *v130 = 0;
      v78 = sub_1000011A8(1);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v79 = v78;
      }

      else
      {
        v79 = v78 & 0xFFFFFFFE;
      }

      if (!v79)
      {
        goto LABEL_295;
      }

      LOWORD(v131[0]) = 0;
      LODWORD(v129) = 2;
      v33 = _os_log_send_and_compose_impl(v79, v130, 0, 0, &_mh_execute_header, v30, 0, "Incorrect provision option on iOS", v131, v129);
      goto LABEL_66;
    }

    if ((sub_10001CC3C() / 0x100000) >= 0x8000)
    {
      v55 = 2048;
    }

    else
    {
      v55 = 1024;
    }

    if (v44 <= v55)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v61 = qword_1000EB308;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v131[0] = 0;
        v62 = sub_1000011A8(1);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v63 = v62;
        }

        else
        {
          v63 = v62 & 0xFFFFFFFE;
        }

        if (v63)
        {
          *v130 = 134218240;
          *&v130[4] = v44;
          *&v130[12] = 2048;
          *&v130[14] = v55;
          LODWORD(v129) = 22;
          v64 = _os_log_send_and_compose_impl(v63, v131, 0, 0, &_mh_execute_header, v61, 0, "Given Quota:%lld is less than the System Min:%lld. Choosing System Min", v130, v129);
          v65 = v64;
          if (v64)
          {
            sub_100002A8C(v64);
          }
        }

        else
        {
          v65 = 0;
        }

        free(v65);
      }
    }

    else
    {
      v55 = v44;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v80 = qword_1000EB308;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v131[0] = 0;
      v81 = sub_1000011A8(1);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v82 = v81;
      }

      else
      {
        v82 = v81 & 0xFFFFFFFE;
      }

      if (v82)
      {
        *&v130[8] = 2048;
        *&v130[10] = qword_1000EB5D8;
        *&v130[18] = 1024;
        *&v130[20] = qword_1000EB5A8;
        LODWORD(v129) = 24;
        v83 = _os_log_send_and_compose_impl(v82, v131, 0, 0, &_mh_execute_header, v80, 0, "Max Number of Sessions configured is:%d, the quota size:%lld, Current number of users:%d", v130, v129, 67109632);
        v84 = v83;
        if (v83)
        {
          sub_100002A8C(v83);
        }
      }

      else
      {
        v84 = 0;
      }

      free(v84);
    }

    if (dword_1000EA3D4 == -1)
    {
      v85 = v5;
    }

    else
    {
      v85 = 0;
    }

    if (v85 == 1 && qword_1000EB5D8)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v86 = qword_1000EB308;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *v130 = 0;
        v87 = sub_1000011A8(1);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          v88 = v87;
        }

        else
        {
          v88 = v87 & 0xFFFFFFFE;
        }

        if (v88)
        {
          LODWORD(v131[0]) = 67109120;
          HIDWORD(v131[0]) = qword_1000EB5A8;
          v89 = _os_log_send_and_compose_impl(v88, v130, 0, 0, &_mh_execute_header, v86, 0, "Quota Provision allowed, current number of Users:%d", v131);
          v90 = v89;
          if (v89)
          {
            sub_100002A8C(v89);
          }
        }

        else
        {
          v90 = 0;
        }

        free(v90);
      }

      if (qword_1000EB5A8 == 1)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v98 = qword_1000EB308;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          v131[0] = 0;
          v99 = sub_1000011A8(1);
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            v100 = v99;
          }

          else
          {
            v100 = v99 & 0xFFFFFFFE;
          }

          if (v100)
          {
            *v130 = 134217984;
            *&v130[4] = v55;
            v101 = _os_log_send_and_compose_impl(v100, v131, 0, 0, &_mh_execute_header, v98, 0, "No users, so we can change the User Quota to %lld MBytes", v130);
            v102 = v101;
            if (v101)
            {
              sub_100002A8C(v101);
            }
          }

          else
          {
            v102 = 0;
          }

          free(v102);
        }

        v124 = sub_10008A2F4(qword_1000EB2E0, 502);
        if (v124)
        {
          v35 = v124;
          qword_1000EB5D8 = v55;
          v125 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
          if (v125)
          {
            v126 = v125;
            CFDictionarySetValue(v35, kUMUserSessionQuotaLimitKey, v125);
            CFDictionarySetValue(v35, kUMUserSessionEachUserSize, v126);
            CFRelease(v126);
          }

          sub_100018C80();
LABEL_301:
          v36 = 0;
          goto LABEL_71;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v30 = qword_1000EB308;
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_297;
        }

        *v130 = 0;
        v127 = sub_1000011A8(1);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v128 = v127;
        }

        else
        {
          v128 = v127 & 0xFFFFFFFE;
        }

        if (!v128)
        {
          goto LABEL_295;
        }

        LOWORD(v131[0]) = 0;
        LODWORD(v129) = 2;
        v33 = _os_log_send_and_compose_impl(v128, v130, 0, 0, &_mh_execute_header, v30, 0, "Failed to find LoginUI session to reset userquota", v131, v129);
LABEL_66:
        v34 = v33;
        if (v33)
        {
          sub_100002A8C(v33);
        }

        goto LABEL_296;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v68 = qword_1000EB308;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *v130 = 0;
        v103 = sub_1000011A8(1);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v104 = v103;
        }

        else
        {
          v104 = v103 & 0xFFFFFFFE;
        }

        if (v104)
        {
          LOWORD(v131[0]) = 0;
          LODWORD(v129) = 2;
          v71 = _os_log_send_and_compose_impl(v104, v130, 0, 0, &_mh_execute_header, v68, 0, "Cannot alter Quota as Users are present, remove them to change quota", v131, v129);
LABEL_230:
          v105 = v71;
          if (v71)
          {
            sub_100002A8C(v71);
          }

          goto LABEL_233;
        }

        goto LABEL_232;
      }
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        v35 = sub_10001D4F4(0xFFFFFFFFLL, v55);
        if (v35)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v93 = qword_1000EB308;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *v130 = 0;
            v94 = sub_1000011A8(1);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v95 = v94;
            }

            else
            {
              v95 = v94 & 0xFFFFFFFE;
            }

            if (v95)
            {
              LOWORD(v131[0]) = 0;
              LODWORD(v129) = 2;
              v96 = _os_log_send_and_compose_impl(v95, v130, 0, 0, &_mh_execute_header, v93, 0, "Forcing USR as configuration is successful", v131, v129);
              v97 = v96;
              if (v96)
              {
                sub_100002A8C(v96);
              }
            }

            else
            {
              v97 = 0;
            }

            free(v97);
          }

          sub_10002E9D8(v35, 0);
        }

        goto LABEL_301;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v68 = qword_1000EB308;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *v130 = 0;
        v91 = sub_1000011A8(1);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v92 = v91;
        }

        else
        {
          v92 = v91 & 0xFFFFFFFE;
        }

        if (v92)
        {
          LOWORD(v131[0]) = 0;
          LODWORD(v129) = 2;
          v71 = _os_log_send_and_compose_impl(v92, v130, 0, 0, &_mh_execute_header, v68, 0, "Improper session config to reset userquota", v131, v129);
          goto LABEL_230;
        }

LABEL_232:
        v105 = 0;
LABEL_233:
        free(v105);
      }
    }

LABEL_234:

    v35 = 0;
    v36 = 16;
    goto LABEL_71;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v50 = qword_1000EB308;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *v130 = 0;
    v51 = sub_1000011A8(1);
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
      LOWORD(valuePtr) = 0;
      LODWORD(v129) = 2;
      v53 = _os_log_send_and_compose_impl(v52, v130, 0, 0, &_mh_execute_header, v50, 0, "Legacy Mode Provision Requested", &valuePtr, v129);
      v54 = v53;
      if (v53)
      {
        sub_100002A8C(v53);
      }
    }

    else
    {
      v54 = 0;
    }

    free(v54);
  }

  v66 = sub_100088F2C(qword_1000EB608);
  v67 = sub_100089A48(v66);

  if (v67)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v68 = qword_1000EB308;
    if (!os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_234;
    }

    *v130 = 0;
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
      LOWORD(valuePtr) = 0;
      LODWORD(v129) = 2;
      v71 = _os_log_send_and_compose_impl(v70, v130, 0, 0, &_mh_execute_header, v68, 0, "Device is already in multiuser mode & provisioned in legacy mode, cannot configure again... ", &valuePtr, v129);
      goto LABEL_230;
    }

    goto LABEL_232;
  }

  if (CFDictionaryContainsKey(a1, kUMEducationNumberOfUsersKey[0]))
  {
    v72 = sub_1000023E8(a1, kUMEducationNumberOfUsersKey[0]);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v73 = qword_1000EB308;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *v130 = 0;
      v74 = sub_1000011A8(1);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v75 = v74;
      }

      else
      {
        v75 = v74 & 0xFFFFFFFE;
      }

      if (v75)
      {
        LODWORD(valuePtr) = 67109120;
        HIDWORD(valuePtr) = v72;
        v76 = _os_log_send_and_compose_impl(v75, v130, 0, 0, &_mh_execute_header, v73, 0, "Number of Users specified is :%d", &valuePtr);
        v77 = v76;
        if (v76)
        {
          sub_100002A8C(v76);
        }
      }

      else
      {
        v77 = 0;
      }

      free(v77);
    }
  }

  else
  {
    v72 = 0xFFFFFFFFLL;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v106 = qword_1000EB308;
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    *v130 = 0;
    v107 = sub_1000011A8(1);
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
      LODWORD(valuePtr) = 67109120;
      HIDWORD(valuePtr) = v72;
      v109 = _os_log_send_and_compose_impl(v108, v130, 0, 0, &_mh_execute_header, v106, 0, "Calling configureLoginwindowSession with numUsers:%d", &valuePtr);
      v110 = v109;
      if (v109)
      {
        sub_100002A8C(v109);
      }
    }

    else
    {
      v110 = 0;
    }

    free(v110);
  }

  v111 = sub_10001D4F4(v72, 0);
  if (!v111)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v30 = qword_1000EB308;
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_297;
    }

    *v130 = 0;
    v117 = sub_1000011A8(1);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v118 = v117;
    }

    else
    {
      v118 = v117 & 0xFFFFFFFE;
    }

    if (!v118)
    {
      goto LABEL_295;
    }

    LOWORD(valuePtr) = 0;
    LODWORD(v129) = 2;
    v33 = _os_log_send_and_compose_impl(v118, v130, 0, 0, &_mh_execute_header, v30, 0, "Could not provision legacy mode...", &valuePtr, v129);
    goto LABEL_66;
  }

  v35 = v111;
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v112 = qword_1000EB308;
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    *v130 = 0;
    v113 = sub_1000011A8(1);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      v114 = v113;
    }

    else
    {
      v114 = v113 & 0xFFFFFFFE;
    }

    if (v114)
    {
      LOWORD(valuePtr) = 0;
      LODWORD(v129) = 2;
      v115 = _os_log_send_and_compose_impl(v114, v130, 0, 0, &_mh_execute_header, v112, 0, "DONE Creating LOGINWINDOW User", &valuePtr, v129);
      v116 = v115;
      if (v115)
      {
        sub_100002A8C(v115);
      }
    }

    else
    {
      v116 = 0;
    }

    free(v116);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v119 = qword_1000EB308;
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    *v130 = 0;
    v120 = sub_1000011A8(1);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v121 = v120;
    }

    else
    {
      v121 = v120 & 0xFFFFFFFE;
    }

    if (v121)
    {
      LOWORD(valuePtr) = 0;
      LODWORD(v129) = 2;
      v122 = _os_log_send_and_compose_impl(v121, v130, 0, 0, &_mh_execute_header, v119, 0, "Forcing USR as configuration is successful", &valuePtr, v129);
      v123 = v122;
      if (v122)
      {
        sub_100002A8C(v122);
      }
    }

    else
    {
      v123 = 0;
    }

    free(v123);
  }

  sub_10002E9D8(v35, 0);
  return v35;
}

uint64_t sub_10004A188(const __CFString *a1, void *a2)
{
  v3 = sub_100056BC8(qword_1000EB2E8, a2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10008CDD8(qword_1000EB2E8, 0, v3);
    CFRelease(v4);
    if (v5)
    {
      if (!a1)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v16 = qword_1000EB308;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v52 = 0;
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
            LOWORD(v51[0]) = 0;
            v19 = _os_log_send_and_compose_impl(v18, v52, 0, 0, &_mh_execute_header, v16, 0, "null machservice is being registered as observer", v51, 2);
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

        v21 = 0;
        goto LABEL_91;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v6 = qword_1000EB308;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v51[0] = 0;
        v7 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          *v52 = 138412290;
          *&v52[4] = 0;
          v9 = _os_log_send_and_compose_impl(v8, v51, 0, 0, &_mh_execute_header, v6, 2, "Updating peronaObserver:%@ ", v52, 12);
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

      if (!CFDictionaryContainsKey(v5, off_1000EA4B0))
      {
        goto LABEL_56;
      }

      v22 = sub_10007947C(v5, off_1000EA4B0);
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v23 = qword_1000EB308;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v51[0] = 0;
        v24 = sub_1000011A8(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          *v52 = 138412290;
          *&v52[4] = v22;
          LODWORD(v50) = 12;
          v26 = _os_log_send_and_compose_impl(v25, v51, 0, 0, &_mh_execute_header, v23, 2, "Existing Registered machService are %@", v52, v50);
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

      if (v22)
      {
        CFRetain(v22);
        MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v22);
        if (CFArrayGetCount(MutableCopy) >= 1)
        {
          v29 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v29);
            if (ValueAtIndex)
            {
              v31 = ValueAtIndex;
              v32 = CFGetTypeID(ValueAtIndex);
              if (v32 == CFStringGetTypeID() && CFStringCompare(v31, a1, 0) == kCFCompareEqualTo)
              {
                break;
              }
            }

            if (CFArrayGetCount(MutableCopy) <= ++v29)
            {
              goto LABEL_55;
            }
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v45 = qword_1000EB308;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v51[0] = 0;
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
              *v52 = 138412290;
              *&v52[4] = a1;
              LODWORD(v50) = 12;
              v48 = _os_log_send_and_compose_impl(v47, v51, 0, 0, &_mh_execute_header, v45, 0, "registerPersonaObserverService: machservice already present: %@", v52, v50);
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

          v21 = 1;
          goto LABEL_88;
        }

LABEL_55:
        CFArrayAppendValue(MutableCopy, a1);
        CFDictionaryReplaceValue(v5, off_1000EA4B0, MutableCopy);
        v33 = 0;
      }

      else
      {
LABEL_56:
        MutableCopy = sub_1000799A8();
        CFArrayAppendValue(MutableCopy, a1);
        CFDictionarySetValue(v5, off_1000EA4B0, MutableCopy);
        v22 = 0;
        v33 = 1;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v34 = qword_1000EB308;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v51[0] = 0;
        v35 = sub_1000011A8(1);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v36 = v35;
        }

        else
        {
          v36 = v35 & 0xFFFFFFFE;
        }

        if (v36)
        {
          *v52 = 138412290;
          *&v52[4] = MutableCopy;
          LODWORD(v50) = 12;
          v37 = _os_log_send_and_compose_impl(v36, v51, 0, 0, &_mh_execute_header, v34, 0, "Updated Registered machService list is %@", v52, v50);
          v38 = v37;
          if (v37)
          {
            sub_100002A8C(v37);
          }
        }

        else
        {
          v38 = 0;
        }

        free(v38);
      }

      if (sub_10008EBBC(qword_1000EB2E8))
      {
        v21 = 1;
        if (v33)
        {
LABEL_89:
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

LABEL_91:
          CFRelease(v5);
          return v21;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v39 = qword_1000EB308;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *v52 = 0;
          v40 = sub_1000011A8(1);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v40;
          }

          else
          {
            v41 = v40 & 0xFFFFFFFE;
          }

          if (v41)
          {
            LOWORD(v51[0]) = 0;
            LODWORD(v50) = 2;
            v42 = _os_log_send_and_compose_impl(v41, v52, 0, 0, &_mh_execute_header, v39, 0, "FAILED to save persona manifest, returning error", v51, v50);
            v43 = v42;
            if (v42)
            {
              sub_100002A8C(v42);
            }
          }

          else
          {
            v43 = 0;
          }

          free(v43);
        }

        if (v33)
        {
          CFDictionaryRemoveValue(v5, off_1000EA4B0);
          v21 = 0;
          goto LABEL_89;
        }

        CFDictionaryReplaceValue(v5, off_1000EA4B0, v22);
        v21 = 0;
      }

LABEL_88:
      CFRelease(v22);
      goto LABEL_89;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v11 = qword_1000EB308;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v52 = 0;
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
      LOWORD(v51[0]) = 0;
      v14 = _os_log_send_and_compose_impl(v13, v52, 0, 0, &_mh_execute_header, v11, 0, " NO PERSONAL PERSONA found", v51, 2);
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