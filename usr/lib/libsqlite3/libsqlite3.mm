uint64_t sub_18188D94C(char *a1, uint64_t *a2, unsigned int a3, const char *a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v66 = 0;
  __s = 0;
  v8 = mach_continuous_time();
  if (a2)
  {
    v9 = v8;
    *a2 = 0;
    v10 = sqlite3_initialize();
    if (v10)
    {
      return v10;
    }

    v11 = 1;
    if ((a3 & 0x8000) == 0 && word_1ED452E84)
    {
      if ((a3 & 0x10000) != 0)
      {
        v11 = 0;
        if ((a3 & 0x40000) == 0)
        {
LABEL_8:
          if (dword_1ED452FE4)
          {
            v12 = a3 | 0x20000;
          }

          else
          {
            v12 = a3;
          }

LABEL_16:
          v14 = v12 & 0xFFF600E7;
          v68 = v12 & 0xFFF600E7;
          if ((a3 & 0xFFFE7FFF) != (v12 & 0xFFF600E7))
          {
            sqlite3_log(21, "open flag(s) 0x%08x are reserved for VFS use and do not affect behaviour when passed to sqlite3_open_v2", v14 ^ a3 & 0xFFFE7FFF);
          }

          v15 = sub_181902484(840, 0x10B004092C885A6);
          v16 = v15;
          if (!v15)
          {
            goto LABEL_66;
          }

          bzero(v15, 0x348uLL);
          if (v11)
          {
            if ((dword_1ED45305C & 8) == 0 || !word_1ED452E84)
            {
              v18 = (v16 + 24);
              v17 = *(v16 + 24);
              if (!v17)
              {
LABEL_32:
                *(v16 + 168) = unk_181A20C38;
                *(v16 + 152) = xmmword_181A20C28;
                if ((v12 & 0x2000000) != 0)
                {
                  v20 = -1;
                }

                else
                {
                  v20 = 255;
                }

                *(v16 + 88) = v20;
                *(v16 + 40) = 2;
                *(v16 + 113) = 109;
                *(v16 + 32) = v16 + 696;
                *(v16 + 432) = 1;
                *(v16 + 436) = 0;
                *(v16 + 136) = xmmword_181A20C18;
                *(v16 + 180) = 0;
                *(v16 + 101) = 1;
                *(v16 + 106) = -1;
                *(v16 + 64) = qword_1ED452FC0;
                *(v16 + 116) = 0;
                *(v16 + 200) = off_1EA831620;
                v21 = *(v16 + 48) | 0x70E44484F0;
                *(v16 + 48) = v21;
                if ((dword_1ED45305C & 0x180) != 0)
                {
                  if ((dword_1ED45305C & 0x80) != 0)
                  {
                    v21 &= ~0x400000uLL;
                  }

                  *(v16 + 48) = v21 | (dword_1ED45305C << 20) & 0x10000000;
                }

                v22 = xpc_copy_entitlement_for_self();
                if (v22)
                {
                  v23 = v22;
                  if (MEMORY[0x1865D8740]() == MEMORY[0x1E69E9EB0])
                  {
                    value = xpc_int64_get_value(v23);
                    xpc_release(v23);
                    if (value >= 1)
                    {
                      *(v16 + 48) &= ~0x4000000000uLL;
                    }
                  }

                  else
                  {
                    xpc_release(v23);
                  }
                }

                v26 = getprogname();
                if (a1 && (strstr(a1, "/Library/AddressBook/AddressBook.sqlitedb") || strstr(a1, "/Library/AddressBook/AddressBookImages.sqlitedb")) || v26 && (!strncmp(v26, "ContactsCoreSpotlightExtension", 0x1EuLL) || !strncmp(v26, "routined", 8uLL) || !strncmp(v26, "FavoritesTodayWidget", 0x14uLL)))
                {
                  *(v16 + 48) |= 0x800uLL;
                }

                *(v16 + 656) = 0;
                *(v16 + 640) = 0u;
                *(v16 + 568) = 0;
                *(v16 + 576) = 0u;
                sub_18188F708(v16, "BINARY", 1u, 0, sub_1818D0EC0, 0);
                sub_18188F708(v16, "BINARY", 3u, 0, sub_1818D0EC0, 0);
                sub_18188F708(v16, "BINARY", 2u, 0, sub_1818D0EC0, 0);
                sub_18188F708(v16, "NOCASE", 1u, 0, sub_1818E6288, 0);
                sub_18188F708(v16, "RTRIM", 1u, 0, sub_1819A9A90, 0);
                if (*(v16 + 103))
                {
                  goto LABEL_60;
                }

                *(v16 + 76) = v14;
                if (((1 << (v12 & 7)) & 0x46) != 0)
                {
                  if (!a1)
                  {
                    a1 = ":memory:";
                  }

                  v37 = sub_18198A7CC(a4, a1, &v68, v16, &__s, &v66);
                }

                else
                {
                  v66 = sqlite3_mprintf("flags must include SQLITE_OPEN_READONLY or SQLITE_OPEN_READWRITE");
                  v37 = sub_1819012D0(195491);
                }

                v38 = v37;
                if (v37)
                {
                  if (v37 == 7)
                  {
                    sub_18190BD38(v16);
                  }

                  v39 = v66;
                  if (v66)
                  {
                    sub_181907EC4(v16, v38, "%s");
                  }

                  else
                  {
                    sub_181907EC4(v16, v38, 0, 0);
                  }

                  if (v39)
                  {
                    v40 = &off_1ED452EB0;
                    if (dword_1ED452E80)
                    {
                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v39);
                      --qword_1ED456A90;
                      off_1ED452EB0(v39);
                      v39 = xmmword_1ED456AF0;
                      if (!xmmword_1ED456AF0)
                      {
                        goto LABEL_60;
                      }

                      v40 = &xmmword_1ED452F28;
                    }

                    (*v40)(v39);
                  }

LABEL_60:
                  if (*v18)
                  {
                    xmmword_1ED452F28(*v18);
                  }

                  v27 = *(v16 + 113);
                  if (v27 == 109 || v27 == 118 || v27 == 186)
                  {
                    if (*(v16 + 103))
                    {
                      goto LABEL_66;
                    }

                    v10 = (*(v16 + 88) & *(v16 + 80));
                  }

                  else
                  {
                    sqlite3_log(21, "API call with %s database connection pointer", "invalid");
                    v10 = sub_1819012D0(194582);
                  }

                  v28 = v10;
                  if (v10 == 7)
                  {
                    goto LABEL_67;
                  }

                  if (v10)
                  {
                    v29 = 0;
                    *(v16 + 113) = -70;
                    goto LABEL_68;
                  }

                  if (qword_1ED456C98 != -1)
                  {
                    sub_181A1EB10();
                  }

                  if (dword_1EA831A94 == 2)
                  {
                    v51 = *(v16 + 113);
                    if (v51 == 186)
                    {
                      goto LABEL_162;
                    }

                    if (v51 != 118)
                    {
                      if (v51 != 109)
                      {
LABEL_163:
                        v52 = "invalid";
                        goto LABEL_164;
                      }

LABEL_162:
                      v52 = "unopened";
LABEL_164:
                      sqlite3_log(21, "API call with %s database connection pointer", v52);
                      sub_1819012D0(194111);
                      goto LABEL_165;
                    }

                    v56 = *v18;
                    if (*v18)
                    {
                      xmmword_1ED452F18(v56);
                      v56 = *v18;
                    }

                    v57 = sub_181A107B0;
                  }

                  else
                  {
                    if (dword_1EA831A94 != 1)
                    {
                      goto LABEL_165;
                    }

                    v44 = *(v16 + 113);
                    if (v44 == 186)
                    {
                      goto LABEL_162;
                    }

                    if (v44 != 118)
                    {
                      if (v44 != 109)
                      {
                        goto LABEL_163;
                      }

                      goto LABEL_162;
                    }

                    v56 = *v18;
                    if (*v18)
                    {
                      xmmword_1ED452F18(v56);
                      v56 = *v18;
                    }

                    v57 = _sqlite_auto_profile;
                  }

                  *(v16 + 256) = v57;
                  *(v16 + 264) = v16;
                  *(v16 + 110) = *(v16 + 110) & 0xF | 0x80;
                  if (v56)
                  {
                    xmmword_1ED452F28(v56);
                  }

LABEL_165:
                  if (dword_1EA831A98 == 2)
                  {
                    v54 = *(v16 + 113);
                    if (v54 == 186)
                    {
                      goto LABEL_174;
                    }

                    if (v54 != 118)
                    {
                      if (v54 != 109)
                      {
LABEL_175:
                        v55 = "invalid";
                        goto LABEL_176;
                      }

LABEL_174:
                      v55 = "unopened";
LABEL_176:
                      sqlite3_log(21, "API call with %s database connection pointer", v55);
                      sub_1819012D0(194056);
                      goto LABEL_177;
                    }

                    if (*v18)
                    {
                      xmmword_1ED452F18(*v18);
                      v58 = *(v16 + 24);
                      *(v16 + 110) = 64;
                      v59 = sub_181A108A8;
LABEL_190:
                      *(v16 + 240) = v59;
                      *(v16 + 248) = v16;
                      if (v58)
                      {
                        xmmword_1ED452F28(v58);
                      }

                      goto LABEL_177;
                    }

                    v29 = 0;
                    v10 = 0;
                    v28 = 0;
                    *(v16 + 110) = 64;
                    v63 = sub_181A108A8;
                  }

                  else
                  {
                    if (dword_1EA831A98 != 1)
                    {
LABEL_177:
                      v29 = 0;
                      v10 = 0;
                      v28 = 0;
                      goto LABEL_68;
                    }

                    v53 = *(v16 + 113);
                    if (v53 == 186)
                    {
                      goto LABEL_174;
                    }

                    if (v53 != 118)
                    {
                      if (v53 != 109)
                      {
                        goto LABEL_175;
                      }

                      goto LABEL_174;
                    }

                    if (*v18)
                    {
                      xmmword_1ED452F18(*v18);
                      v58 = *(v16 + 24);
                      *(v16 + 110) = 64;
                      v59 = _sqlite_auto_trace;
                      goto LABEL_190;
                    }

                    v29 = 0;
                    v10 = 0;
                    v28 = 0;
                    *(v16 + 110) = 64;
                    v63 = _sqlite_auto_trace;
                  }

                  *(v16 + 240) = v63;
                  *(v16 + 248) = v16;
                  goto LABEL_68;
                }

                v41 = v68;
                if ((v68 & 2) != 0 && geteuid() == 248)
                {
                  sqlite3_log(1, "user 'setup'(248) opening database '%s' with SQLITE_OPEN_READWRITE", a1);
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
                  {
                    sub_181A1EACC();
                  }
                }

                v42 = sub_18189049C(*v16, __s, v16, (*(v16 + 32) + 8), 0, v41 | 0x100);
                if (v42)
                {
                  if (v42 == 3082)
                  {
                    v43 = 7;
                  }

                  else
                  {
                    v43 = v42;
                  }

                  *(v16 + 80) = v43;
                  sub_181932D5C(v16, v43);
                  goto LABEL_60;
                }

                sub_1818937DC(*(*(v16 + 32) + 8));
                v45 = sub_181893800(v16, *(*(v16 + 32) + 8));
                v46 = *(v16 + 32);
                *(v46 + 24) = v45;
                if (!*(v16 + 103))
                {
                  sub_181949034(v16, *(v45 + 113));
                  v46 = *(v16 + 32);
                }

                v47 = *(v46 + 8);
                if (*(v47 + 17))
                {
                  v48 = *(v47 + 20) - 1;
                  *(v47 + 20) = v48;
                  if (!v48)
                  {
                    sub_181932ECC(v47);
                  }
                }

                v49 = sub_181893800(v16, 0);
                v50 = *(v16 + 32);
                *(v50 + 56) = v49;
                *v50 = "main";
                *(v50 + 16) = 3;
                *(v50 + 32) = "temp";
                *(v50 + 48) = 1;
                *(v16 + 113) = 118;
                if (*(v16 + 103))
                {
                  goto LABEL_60;
                }

                *(v16 + 80) = 0;
                if (*(v16 + 416))
                {
                  sub_181932D5C(v16, 0);
                }

                else
                {
                  *(v16 + 84) = -1;
                }

                sub_1819A9B1C(v16);
                v60 = sqlite3_errcode(v16);
                if (v60)
                {
                  goto LABEL_201;
                }

                v61 = sub_1819A9BC4(v16);
                v62 = v61 == 0;
                if (v61 || (v61 = sub_1819AA178(v16), v62 = v61 == 0, v61) || (v61 = sub_1819AA698(v16), v62 = v61 == 0, v61))
                {
                  v60 = v61;
                  if (!v62)
                  {
                    goto LABEL_200;
                  }
                }

                else
                {
                  v64 = sub_1819AA874(v16);
                  v65 = v64 == 0;
                  if (v64 || (v64 = sub_1819AA924(), v65 = v64 == 0, v64) || (v64 = sub_1819AA940(v16), v65 = v64 == 0, v64))
                  {
                    v60 = v64;
                  }

                  else
                  {
                    v60 = sub_1819AAA64(v16);
                    v65 = v60 == 0;
                  }

                  if (!v65)
                  {
                    goto LABEL_200;
                  }
                }

                if (!*(v16 + 103))
                {
                  sub_181900A6C(v16);
                  v60 = sub_181A1DA9C(v16);
                }

LABEL_200:
                if (!v60)
                {
LABEL_202:
                  sub_18191439C(v16, 0, dword_1ED452E94, dword_1ED452E98);
                  sqlite3_wal_autocheckpoint(v16, 1000);
                  goto LABEL_60;
                }

LABEL_201:
                *(v16 + 80) = v60;
                sub_181932D5C(v16, v60);
                goto LABEL_202;
              }

LABEL_31:
              xmmword_1ED452F18(v17);
              goto LABEL_32;
            }
          }

          else if (!word_1ED452E84)
          {
            *(v16 + 24) = 0;
            goto LABEL_43;
          }

          v17 = qword_1ED452F08(1);
          *(v16 + 24) = v17;
          v18 = (v16 + 24);
          if (v17)
          {
            if (qword_1ED452F08 == sub_181929698 && v11)
            {
              *v17 = -1;
            }

            goto LABEL_31;
          }

LABEL_43:
          v24 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
            --qword_1ED456A90;
            off_1ED452EB0(v16);
            v16 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_66;
            }

            v24 = &xmmword_1ED452F28;
          }

          (*v24)(v16);
          v16 = 0;
LABEL_66:
          v10 = 7;
LABEL_67:
          sub_181914B98(v16, 0);
          v16 = 0;
          v28 = 7;
          v29 = 1;
LABEL_68:
          *a2 = v16;
          if (off_1ED453020)
          {
            off_1ED453020(qword_1ED453028, v16, a1, 0);
          }

          if (!v10)
          {
            sub_18198B05C(v16, 0, __s);
          }

          if (v9)
          {
            if (v29)
            {
              switch(v10)
              {
                case 0x204:
                  v30 = "abort due to ROLLBACK";
                  break;
                case 0x65:
                  v30 = "no more rows available";
                  break;
                case 0x64:
                  v30 = "another row available";
                  break;
                default:
                  if (v28 > 0x1C || ((0x1410004uLL >> v28) & 1) != 0)
                  {
                    v30 = "unknown error";
                  }

                  else
                  {
                    v30 = off_1E6A27DD8[v28];
                  }

                  break;
              }
            }

            else
            {
              v30 = sqlite3_errmsg(v16);
            }

            if (qword_1ED456C38 != -1)
            {
              sub_181A1E95C();
            }

            v31 = qword_1ED456C30;
            if (v29)
            {
              v32 = os_signpost_id_generate(qword_1ED456C30);
            }

            else
            {
              v32 = os_signpost_id_make_with_pointer(qword_1ED456C30, v16);
            }

            v33 = v32;
            if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              if (os_signpost_enabled(v31))
              {
                v34 = "(null)";
                if (a1)
                {
                  v34 = a1;
                }

                *buf = 134218242;
                *v70 = v9;
                *&v70[8] = 2080;
                *&v70[10] = v34;
                _os_signpost_emit_with_name_impl(&dword_18188D000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v33, "open", "startTime=%{signpost.description:begin_time}llu path=%s", buf, 0x16u);
              }

              if (os_signpost_enabled(v31))
              {
                *buf = 67240706;
                *v70 = v10;
                *&v70[4] = 2050;
                *&v70[6] = v16;
                *&v70[14] = 2082;
                *&v70[16] = v30;
                _os_signpost_emit_with_name_impl(&dword_18188D000, v31, OS_SIGNPOST_INTERVAL_END, v33, "open", "rc=%{public}d db=%{public}p errMsg=%{public}s", buf, 0x1Cu);
              }
            }
          }

          if (!__s)
          {
            return v10;
          }

            ;
          }

          v36 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(i);
            --qword_1ED456A90;
            off_1ED452EB0(i);
            i = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              return v10;
            }

            v36 = &xmmword_1ED452F28;
          }

          (*v36)(i);
          return v10;
        }

LABEL_15:
        v12 = a3 & 0xFFFDFFFF;
        goto LABEL_16;
      }

      v11 = HIBYTE(word_1ED452E84) == 0;
    }

    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  return sub_1819012D0(195225);
}

int sqlite3_initialize(void)
{
  if (!qword_1ED452FEC)
  {
    v1 = os_unfair_recursive_lock_lock_with_options();
    v0 = 0;
    if (qword_1ED452FEC)
    {
      goto LABEL_72;
    }

    if (!qword_1ED452F08)
    {
      v2 = sub_181929688;
      v3 = word_1ED452E84 == 0;
      if (!word_1ED452E84)
      {
        v2 = sub_181929C58;
      }

      xmmword_1ED452EF8 = v2;
      v4 = sub_181929690;
      if (!word_1ED452E84)
      {
        v4 = sub_181929C60;
      }

      *(&xmmword_1ED452EF8 + 1) = v4;
      v5 = sub_1819297D4;
      if (!word_1ED452E84)
      {
        v5 = nullsub_4;
      }

      off_1ED452F10 = v5;
      v6 = sub_181929978;
      if (!word_1ED452E84)
      {
        v6 = nullsub_5;
      }

      xmmword_1ED452F18 = v6;
      v7 = sub_181929A1C;
      if (!word_1ED452E84)
      {
        v7 = sub_181929C78;
      }

      *(&xmmword_1ED452F18 + 1) = v7;
      v8 = sub_181929A58;
      if (!word_1ED452E84)
      {
        v8 = nullsub_6;
      }

      qword_1ED452F38 = 0;
      *&xmmword_1ED452F28 = v8;
      __dmb(0xBu);
      v9 = sub_181929698;
      if (v3)
      {
        v9 = sub_181929C68;
      }

      qword_1ED452F08 = v9;
    }

    v0 = xmmword_1ED452EF8(v1);
    __dmb(0xBu);
    if (v0)
    {
      goto LABEL_72;
    }

    if (word_1ED452E84)
    {
      v11 = qword_1ED452F08(2);
      v12 = v11;
      if (v11)
      {
        v10.n128_f64[0] = xmmword_1ED452F18(v11);
        v13 = 0;
LABEL_26:
        dword_1ED452FF4 = 1;
        if (!dword_1ED452FF8)
        {
          if (!*(&xmmword_1ED452EA0 + 1))
          {
            *&xmmword_1ED452EC0 = xmmword_1EEF90278;
            *&off_1ED452ED0 = *&off_1EEF90288;
            xmmword_1ED452EE0 = xmmword_1EEF90298;
            off_1ED452EF0 = off_1EEF902A8;
            xmmword_1ED452EA0 = xmmword_1EEF90258;
            *&off_1ED452EB0 = *&off_1EEF90268;
          }

          if (word_1ED452E84)
          {
            v15 = qword_1ED452F08(3);
          }

          else
          {
            v15 = 0;
          }

          *&xmmword_1ED456AF0 = v15;
          if (!qword_1ED452FD0 || dword_1ED452FD8 < 512 || dword_1ED452FDC <= 0)
          {
            qword_1ED452FD0 = 0;
            dword_1ED452FD8 = 0;
          }

          v17 = off_1ED452ED0(xmmword_1ED452EE0);
          if (v17)
          {
            v0 = v17;
            v14 = 0;
            v10 = 0uLL;
            xmmword_1ED456AF0 = 0u;
            *&qword_1ED456B00 = 0u;
            goto LABEL_44;
          }
        }

        dword_1ED452FF8 = 1;
        if (!qword_1ED453008)
        {
          if (word_1ED452E84)
          {
            v16 = qword_1ED452F08(1);
            qword_1ED453008 = v16;
            if (word_1ED452E84 && !v16)
            {
              v14 = 0;
              v0 = 7;
              goto LABEL_44;
            }
          }

          else
          {
            qword_1ED453008 = 0;
          }
        }

        v0 = 0;
        ++dword_1ED453000;
        v14 = 1;
LABEL_44:
        if ((v13 & 1) == 0)
        {
          xmmword_1ED452F28(v12);
        }

        if (v14)
        {
          if (qword_1ED453008)
          {
            v10.n128_f64[0] = xmmword_1ED452F18(qword_1ED453008);
          }

          if (qword_1ED452FEC)
          {
            v0 = 0;
          }

          else
          {
            HIDWORD(qword_1ED452FEC) = 1;
            sub_181913154();
            sub_181A1DEE4();
            qword_1ED456C00 = 0;
            xmmword_1ED456BE0 = 0u;
            unk_1ED456BF0 = 0u;
            xmmword_1ED456BC0 = 0u;
            unk_1ED456BD0 = 0u;
            xmmword_1ED456BA0 = 0u;
            unk_1ED456BB0 = 0u;
            xmmword_1ED456B80 = 0u;
            unk_1ED456B90 = 0u;
            xmmword_1ED456B60 = 0u;
            unk_1ED456B70 = 0u;
            xmmword_1ED456B50 = 0u;
            sub_18191331C();
            if (!dword_1ED452FFC)
            {
              v19 = xmmword_1ED452F50;
              if (!xmmword_1ED452F50)
              {
                sub_181913C48();
                v19 = xmmword_1ED452F50;
              }

              v18 = v19(qword_1ED452F48);
              if (v18)
              {
                goto LABEL_59;
              }
            }

            dword_1ED452FFC = 1;
            v18 = sub_1819137C8();
            if (v18)
            {
LABEL_59:
              v0 = v18;
            }

            else
            {
              v0 = sub_1819138A0();
              if (!v0)
              {
                sub_181913A24(qword_1ED452FD0, dword_1ED452FD8, dword_1ED452FDC);
                __dmb(0xBu);
                LODWORD(qword_1ED452FEC) = 1;
              }
            }

            HIDWORD(qword_1ED452FEC) = 0;
          }

          if (qword_1ED453008)
          {
            xmmword_1ED452F28(qword_1ED453008);
          }

          if ((v13 & 1) == 0)
          {
            v10.n128_f64[0] = xmmword_1ED452F18(v12);
          }

          if (dword_1ED453000-- <= 1)
          {
            if (qword_1ED453008)
            {
              off_1ED452F10(v10);
            }

            qword_1ED453008 = 0;
          }

          if ((v13 & 1) == 0)
          {
            xmmword_1ED452F28(v12);
          }
        }

LABEL_72:
        os_unfair_recursive_lock_unlock();
        return v0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 1;
    goto LABEL_26;
  }

  return 0;
}

int sqlite3_config(int a1, ...)
{
  va_start(va, a1);
  v29 = va_arg(va, void);
  v30 = va_arg(va, void);
  v31 = va_arg(va, void);
  if (qword_1ED452FEC && (a1 > 0x3F || ((1 << a1) & 0x1010000) == 0))
  {

    return sub_1819012D0(192087);
  }

  else
  {
    v2 = a1 - 1;
    result = 0;
    switch(v2)
    {
      case 0:
        sub_1819012D0(192102);
        goto LABEL_6;
      case 1:
        result = 0;
        word_1ED452E84 = 1;
        break;
      case 2:
        result = 0;
        word_1ED452E84 = 257;
        break;
      case 3:
        result = 0;
        v9 = *v29;
        v10 = *(v29 + 16);
        v11 = *(v29 + 32);
        v12 = *(v29 + 48);
        LODWORD(xmmword_1ED452EA0) = 1;
        *&off_1ED452ED8 = v12;
        *(&xmmword_1ED452EC0 + 1) = v11;
        *&off_1ED452EB8 = v10;
        *(&xmmword_1ED452EA0 + 8) = v9;
        *(&xmmword_1ED452EE0 + 1) = 0;
        break;
      case 4:
        if (!*(&xmmword_1ED452EA0 + 1))
        {
          *&xmmword_1ED452EC0 = xmmword_1EEF90278;
          *&off_1ED452ED0 = *&off_1EEF90288;
          xmmword_1ED452EE0 = xmmword_1EEF90298;
          off_1ED452EF0 = off_1EEF902A8;
          xmmword_1ED452EA0 = xmmword_1EEF90258;
          *&off_1ED452EB0 = *&off_1EEF90268;
        }

        result = 0;
        v13 = *(&xmmword_1ED452EA0 + 8);
        v14 = *&off_1ED452EB8;
        v15 = *&off_1ED452ED8;
        *(v29 + 32) = *(&xmmword_1ED452EC0 + 1);
        *(v29 + 48) = v15;
        *v29 = v13;
        *(v29 + 16) = v14;
        break;
      case 6:
        result = 0;
        qword_1ED452FD0 = v29;
        dword_1ED452FD8 = v30;
        dword_1ED452FDC = v31;
        break;
      case 8:
        result = 0;
        dword_1ED452E80 = v29;
        break;
      case 9:
        result = 0;
        *&xmmword_1ED452EF8 = *v29;
        v26 = *(v29 + 16);
        v27 = *(v29 + 32);
        v28 = *(v29 + 48);
        qword_1ED452F38 = *(v29 + 64);
        *&xmmword_1ED452F18 = v27;
        *&xmmword_1ED452F28 = v28;
        *&qword_1ED452F08 = v26;
        break;
      case 10:
        result = 0;
        *v29 = *&xmmword_1ED452EF8;
        v6 = *&qword_1ED452F08;
        v7 = *&xmmword_1ED452F18;
        v8 = *&xmmword_1ED452F28;
        *(v29 + 64) = qword_1ED452F38;
        *(v29 + 32) = v7;
        *(v29 + 48) = v8;
        *(v29 + 16) = v6;
        break;
      case 12:
        result = 0;
        dword_1ED452E94 = v29;
        dword_1ED452E98 = v30;
        break;
      case 13:
        return result;
      case 15:
        result = 0;
        off_1ED453010 = v29;
        qword_1ED453018 = v30;
        break;
      case 16:
        result = 0;
        byte_1ED452E86 = v29;
        break;
      case 17:
        result = 0;
        v16 = *v29;
        v17 = *(v29 + 32);
        xmmword_1ED452F50 = *(v29 + 16);
        *&xmmword_1ED452F60 = v17;
        unk_1ED452F40 = v16;
        v18 = *(v29 + 48);
        v19 = *(v29 + 64);
        v20 = *(v29 + 80);
        off_1ED452FA0 = *(v29 + 96);
        *&xmmword_1ED452F80 = v19;
        *&xmmword_1ED452F90 = v20;
        *&xmmword_1ED452F70 = v18;
        break;
      case 18:
        if (!xmmword_1ED452F50)
        {
          sub_181913C48();
        }

        result = 0;
        v21 = unk_1ED452F40;
        v22 = *&xmmword_1ED452F60;
        *(v29 + 16) = xmmword_1ED452F50;
        *(v29 + 32) = v22;
        *v29 = v21;
        v23 = *&xmmword_1ED452F70;
        v24 = *&xmmword_1ED452F80;
        v25 = *&xmmword_1ED452F90;
        *(v29 + 96) = off_1ED452FA0;
        *(v29 + 64) = v24;
        *(v29 + 80) = v25;
        *(v29 + 48) = v23;
        break;
      case 19:
        result = 0;
        byte_1ED452E87 = v29;
        break;
      case 20:
        result = 0;
        off_1ED453020 = v29;
        qword_1ED453028 = v30;
        break;
      case 21:
        result = 0;
        v4 = v30;
        if (v30 >= 0x1400000)
        {
          v4 = 20971520;
        }

        if (v29 <= v4)
        {
          v5 = v29 & ~(v29 >> 63);
        }

        else
        {
          v5 = v4;
        }

        qword_1ED452FC0 = v5;
        qword_1ED452FC8 = v4;
        break;
      case 23:
        result = 0;
        *v29 = 272;
        break;
      case 24:
        result = 0;
        dword_1ED452FE8 = v29;
        break;
      case 25:
        result = 0;
        dword_1ED452E9C = v29;
        break;
      case 26:
        result = 0;
        byte_1ED452E88 = v29;
        break;
      case 28:
        result = 0;
        qword_1ED453030 = v29;
        break;
      case 29:
        result = 0;
        *v29 = 0;
        break;
      default:
LABEL_6:
        result = 1;
        break;
    }
  }

  return result;
}

uint64_t sub_18188F1F4()
{
  if ((byte_1ED456C90 & 1) == 0)
  {
    v0 = getenv("SQLITE_MALLOC_ZONE");
    if (!v0)
    {
      goto LABEL_7;
    }

    v1 = v0;
    if (!strcmp(v0, "none"))
    {
      goto LABEL_14;
    }

    if (!strcmp(v1, "default"))
    {
      qword_1EA831A88 = malloc_default_zone();
      goto LABEL_14;
    }

    if (!strcmp(v1, "custom"))
    {
      goto LABEL_10;
    }

    fprintf(*MEMORY[0x1E69E9848], "Invalid parameter to environment variable SQLITE_MALLOC_ZONE: %s. Supported values are default and custom\n", v1);
    if ((byte_1ED456C90 & 1) == 0)
    {
LABEL_7:
      v2 = getprogname();
      if (v2 && !strncmp("homed", v2, 5uLL))
      {
        zone = malloc_create_zone(0x1000uLL, 0);
        qword_1EA831A88 = zone;
        v4 = "Sqlite_Heap_homed";
        goto LABEL_13;
      }

      v7 = 0;
      v6 = 4;
      sysctlbyname("hw.ncpu", &v7, &v6, 0, 0);
      if (v7 <= 1)
      {
LABEL_10:
        zone = malloc_create_zone(0x1000uLL, 0);
        qword_1EA831A88 = zone;
        v4 = "Sqlite_Heap";
LABEL_13:
        malloc_set_zone_name(zone, v4);
      }

LABEL_14:
      byte_1ED456C90 = 1;
    }
  }

  return 0;
}

void *sub_18188F344(int a1)
{
  v2 = qword_1EA831A88;
  if (!qword_1EA831A88)
  {
    v2 = malloc_default_zone();
  }

  result = malloc_type_zone_malloc(v2, a1, 0x1EF0194BuLL);
  if (!result)
  {
    sqlite3_log(7, "failed to allocate %u bytes of memory", a1);
    return 0;
  }

  return result;
}

void *__cdecl sqlite3_malloc(int a1)
{
  v3 = sqlite3_initialize();
  if (a1 < 1 || v3)
  {
    return 0;
  }

  return sub_181902484(a1, (v1 >> 2));
}

void sqlite3_free(void *a1)
{
  if (!a1)
  {
    return;
  }

  v1 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_7;
  }

  if (xmmword_1ED456AF0)
  {
    v2 = a1;
    xmmword_1ED452F18(xmmword_1ED456AF0);
    a1 = v2;
  }

  v3 = a1;
  qword_1ED456A48[0] -= xmmword_1ED452EC0(a1);
  --qword_1ED456A90;
  off_1ED452EB0(v3);
  if (xmmword_1ED456AF0)
  {
    v1 = &xmmword_1ED452F28;
LABEL_7:
    v4 = *v1;

    v4();
  }
}

void sub_18188F4E4(void *ptr)
{
  v2 = qword_1EA831A88;
  if (!qword_1EA831A88)
  {
    v2 = malloc_default_zone();
  }

  malloc_zone_free(v2, ptr);
}

int sqlite3_vfs_register(sqlite3_vfs *a1, int makeDflt)
{
  result = sqlite3_initialize();
  if (result)
  {
    return result;
  }

  if (a1)
  {
    if (word_1ED452E84)
    {
      v5 = qword_1ED452F08(2);
      if (v5)
      {
        v6 = v5;
        xmmword_1ED452F18(v5);
        v5 = v6;
        v7 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 1;
LABEL_11:
    p_pNext = &qword_1ED456AE8;
    v9 = qword_1ED456AE8;
    if (qword_1ED456AE8 != a1)
    {
      if (!qword_1ED456AE8)
      {
LABEL_25:
        a1->pNext = v9;
        *p_pNext = a1;
        if ((v7 & 1) == 0)
        {
          xmmword_1ED452F28(v5);
        }

        return 0;
      }

      v10 = qword_1ED456AE8;
      do
      {
        v11 = v10;
        v10 = v10->pNext;
        if (v10)
        {
          v12 = v10 == a1;
        }

        else
        {
          v12 = 1;
        }
      }

      while (!v12);
      if (v10 != a1)
      {
LABEL_22:
        p_pNext = &qword_1ED456AE8;
        if (!makeDflt && v9)
        {
          p_pNext = &v9->pNext;
          v9 = v9->pNext;
        }

        goto LABEL_25;
      }

      p_pNext = &v11->pNext;
    }

    *p_pNext = a1->pNext;
    v9 = qword_1ED456AE8;
    goto LABEL_22;
  }

  return sub_1819012D0(27923);
}

sqlite3_vfs *__cdecl sqlite3_vfs_find(const char *zVfsName)
{
  if (sqlite3_initialize())
  {
    return 0;
  }

  if (word_1ED452E84)
  {
    v3 = qword_1ED452F08(2);
    v4 = v3;
    if (v3)
    {
      xmmword_1ED452F18(v3);
      v5 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 1;
LABEL_8:
  v2 = qword_1ED456AE8;
  if (zVfsName && qword_1ED456AE8)
  {
    do
    {
      if (!strcmp(zVfsName, v2->zName))
      {
        break;
      }

      v2 = v2->pNext;
    }

    while (v2);
  }

  if ((v5 & 1) == 0)
  {
    xmmword_1ED452F28(v4);
  }

  return v2;
}

uint64_t sub_18188F708(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 8 || a3 == 4)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3;
  }

  if (v7 - 4 > 0xFFFFFFFC)
  {
    v12 = a3;
    if (!a2)
    {
      v18 = *(a1 + 16);
      if (v18)
      {
        goto LABEL_34;
      }

      goto LABEL_73;
    }

    v14 = *a2;
    if (*a2)
    {
      v15 = 0;
      v16 = a2 + 1;
      do
      {
        v15 = -1640531535 * (v15 + (v14 & 0xDF));
        v17 = *v16++;
        v14 = v17;
      }

      while (v17);
    }

    else
    {
      v15 = 0;
    }

    v19 = (a1 + 640);
    v20 = *(a1 + 656);
    if (v20)
    {
      v19 = (v20 + 16 * (v15 % *v19));
      v21 = *v19;
      if (*v19)
      {
LABEL_21:
        v22 = (v19 + 2);
        do
        {
          v22 = *v22;
          if (v15 == *(v22 + 8))
          {
            v23 = v22[3];
            for (i = a2; ; ++i)
            {
              if (*v23 == *i)
              {
                if (!*v23)
                {
                  goto LABEL_32;
                }
              }

              else if (byte_181A20298[*v23] != byte_181A20298[*i])
              {
                break;
              }

              ++v23;
            }
          }

          --v21;
        }

        while (v21);
        v25 = qword_1EA831A40;
        if (!qword_1EA831A40)
        {
          goto LABEL_73;
        }

LABEL_33:
        v26 = v25 + 40 * v7;
        v18 = v26 - 40;
        if (v26 != 40)
        {
LABEL_34:
          if (*(v18 + 24))
          {
            if (*(a1 + 208))
            {
              sub_181907EC4(a1, 5, "unable to delete/modify collation sequence due to active statements");
              return 5;
            }

            for (j = *(a1 + 8); j; j = *(j + 16))
            {
              *(j + 268) = *(j + 268) & 0xFFFC | 1;
            }

            v28 = *(v18 + 8);
            if (v7 == (v28 & 0xFFFFFFF7))
            {
              v29 = *a2;
              if (*a2)
              {
                v30 = 0;
                v31 = a2 + 1;
                do
                {
                  v30 = -1640531535 * (v30 + (v29 & 0xDF));
                  v32 = *v31++;
                  v29 = v32;
                }

                while (v32);
              }

              else
              {
                v30 = 0;
              }

              v33 = (a1 + 640);
              v34 = *(a1 + 656);
              if (v34)
              {
                v33 = (v34 + 16 * (v30 % *v33));
                v35 = v33;
              }

              else
              {
                v35 = (a1 + 644);
              }

              v36 = *v35;
              if (v36)
              {
                v37 = (v33 + 2);
                do
                {
                  v37 = *v37;
                  if (v30 == *(v37 + 8))
                  {
                    v38 = v37[3];
                    for (k = a2; ; ++k)
                    {
                      if (*v38 == *k)
                      {
                        if (!*v38)
                        {
                          goto LABEL_61;
                        }
                      }

                      else if (byte_181A20298[*v38] != byte_181A20298[*k])
                      {
                        break;
                      }

                      ++v38;
                    }
                  }

                  --v36;
                }

                while (v36);
                v37 = &qword_1EA831A30;
              }

              else
              {
                v37 = &qword_1EA831A30;
              }

LABEL_61:
              v40 = v37[2];
              if (*(v40 + 8) == v28)
              {
                v41 = *(v40 + 32);
                if (v41)
                {
                  v42 = a1;
                  v41(*(v40 + 16));
                  a1 = v42;
                  v28 = *(v18 + 8);
                }

                *(v40 + 24) = 0;
              }

              if (*(v40 + 48) == v28)
              {
                v43 = *(v40 + 72);
                if (v43)
                {
                  v44 = a1;
                  v43(*(v40 + 56));
                  a1 = v44;
                  v28 = *(v18 + 8);
                }

                *(v40 + 64) = 0;
              }

              if (*(v40 + 88) == v28)
              {
                v45 = *(v40 + 112);
                if (v45)
                {
                  v46 = a1;
                  v45(*(v40 + 96));
                  a1 = v46;
                }

                *(v40 + 104) = 0;
              }
            }
          }
        }

LABEL_73:
        v47 = a1;
        v48 = sub_181949138(a1, v7, a2, 1);
        if (!v48)
        {
          return 7;
        }

        v48[2] = a4;
        v48[3] = a5;
        v48[4] = a6;
        *(v48 + 8) = v7 | v12 & 8;
        *(v47 + 80) = 0;
        if (*(v47 + 416))
        {
          sub_181932D5C(v47, 0);
          return 0;
        }

        else
        {
          result = 0;
          *(v47 + 84) = -1;
        }

        return result;
      }
    }

    else
    {
      v21 = *(a1 + 644);
      if (v21)
      {
        goto LABEL_21;
      }
    }

    v22 = &qword_1EA831A30;
LABEL_32:
    v25 = v22[2];
    if (!v25)
    {
      goto LABEL_73;
    }

    goto LABEL_33;
  }

  return sub_1819012D0(194639);
}

uint64_t sub_18188FAF0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  if (!*a2)
  {
    v5 = 0;
    v8 = *(a1 + 16);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    v9 = a1;
    v10 = *(a1 + 4);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_17:
    v11 = &qword_1EA831A30;
LABEL_18:
    v14 = v11[2];
    if (!v14)
    {
      goto LABEL_54;
    }

LABEL_19:
    if (a3)
    {
      v11[2] = a3;
      v11[3] = a2;
      return v14;
    }

    v15 = *v11;
    v16 = v11[1];
    v17 = (a1 + 8);
    if (v16)
    {
      v17 = v11[1];
    }

    *v17 = v15;
    if (v15)
    {
      *(v15 + 8) = v16;
    }

    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = v18 + 16 * (*(v11 + 8) % *a1);
      if (*(v19 + 8) == v11)
      {
        *(v19 + 8) = v15;
      }

      --*v19;
    }

    v20 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
      --qword_1ED456A90;
      off_1ED452EB0(v11);
      v11 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_35:
        v21 = *(a1 + 4) - 1;
        *(a1 + 4) = v21;
        if (v21)
        {
          return v14;
        }

        v22 = *(a1 + 8);
        v23 = *(a1 + 16);
        *(a1 + 8) = 0;
        if (!v23)
        {
          goto LABEL_43;
        }

        v24 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v23);
          --qword_1ED456A90;
          off_1ED452EB0(v23);
          v23 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
LABEL_43:
            *(a1 + 16) = 0;
            *a1 = 0;
            if (!v22)
            {
LABEL_52:
              *(a1 + 4) = 0;
              return v14;
            }

            while (1)
            {
              v25 = *v22;
              v26 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
                --qword_1ED456A90;
                off_1ED452EB0(v22);
                v22 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_46;
                }

                v26 = &xmmword_1ED452F28;
              }

              (*v26)(v22);
LABEL_46:
              v22 = v25;
              if (!v25)
              {
                goto LABEL_52;
              }
            }
          }

          v24 = &xmmword_1ED452F28;
        }

        (*v24)(v23);
        goto LABEL_43;
      }

      v20 = &xmmword_1ED452F28;
    }

    (*v20)(v11);
    goto LABEL_35;
  }

  v5 = 0;
  v6 = a2 + 1;
  do
  {
    v5 = -1640531535 * (v5 + (v4 & 0xDF));
    v7 = *v6++;
    v4 = v7;
  }

  while (v7);
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_5:
  v9 = (v8 + 16 * (v5 % *a1));
  v10 = *v9;
  if (!*v9)
  {
    goto LABEL_17;
  }

LABEL_6:
  v11 = (v9 + 2);
  do
  {
    v11 = *v11;
    if (v5 == *(v11 + 8))
    {
      v12 = v11[3];
      for (i = a2; ; ++i)
      {
        if (*v12 == *i)
        {
          if (!*v12)
          {
            goto LABEL_18;
          }
        }

        else if (byte_181A20298[*v12] != byte_181A20298[*i])
        {
          break;
        }

        ++v12;
      }
    }

    --v10;
  }

  while (v10);
  v11 = &qword_1EA831A30;
  v14 = qword_1EA831A40;
  if (qword_1EA831A40)
  {
    goto LABEL_19;
  }

LABEL_54:
  if (!a3)
  {
    return 0;
  }

  v14 = a3;
  v28 = sub_181902484(40, 0x10F0040EA2B983DLL);
  if (v28)
  {
    *(v28 + 32) = v5;
    *(v28 + 16) = v14;
    *(v28 + 24) = a2;
    v29 = *(a1 + 4) + 1;
    *(a1 + 4) = v29;
    if (v29 < 5 || v29 <= 2 * *a1)
    {
      goto LABEL_88;
    }

    v30 = 3 * v29;
    v31 = v30 >= 0x40 ? 64 : v30;
    if (v31 == *a1)
    {
      goto LABEL_88;
    }

    v32 = v28;
    if (off_1EA831A10)
    {
      off_1EA831A10(v28);
    }

    v33 = sub_181902484((16 * v31), 0x1020040D5A9D86FLL);
    v34 = v33;
    if (off_1EA831A18)
    {
      off_1EA831A18(v33);
    }

    v28 = v32;
    if (!v34)
    {
      goto LABEL_88;
    }

    v35 = *(a1 + 16);
    if (v35)
    {
      v36 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_73:
        (*v36)(v35);
        goto LABEL_74;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v35);
      --qword_1ED456A90;
      off_1ED452EB0(v35);
      v35 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v36 = &xmmword_1ED452F28;
        goto LABEL_73;
      }
    }

LABEL_74:
    *(a1 + 16) = v34;
    v37 = xmmword_1ED452EC0(v34) >> 4;
    *a1 = v37;
    bzero(v34, 16 * v37);
    v38 = (a1 + 8);
    v39 = *(a1 + 8);
    *(a1 + 8) = 0;
    v28 = v32;
    if (v39)
    {
      do
      {
        v43 = *v39;
        v44 = &v34[16 * (*(v39 + 8) % v37)];
        if (*v44)
        {
          v45 = *(v44 + 1);
          ++*v44;
          *(v44 + 1) = v39;
          if (v45)
          {
            *v39 = v45;
            v42 = *(v45 + 8);
            v40 = (v45 + 8);
            v41 = v42;
            v39[1] = v42;
            if (!v42)
            {
              v41 = (a1 + 8);
            }

            *v41 = v39;
            goto LABEL_80;
          }
        }

        else
        {
          *v44 = 1;
          *(v44 + 1) = v39;
        }

        v46 = *v38;
        *v39 = *v38;
        if (v46)
        {
          *(v46 + 8) = v39;
        }

        v39[1] = 0;
        v40 = (a1 + 8);
LABEL_80:
        *v40 = v39;
        v39 = v43;
      }

      while (v43);
    }

LABEL_88:
    v47 = *(a1 + 16);
    if (v47)
    {
      v48 = v47 + 16 * (*(v28 + 32) % *a1);
      if (*v48)
      {
        v49 = *(v48 + 8);
        ++*v48;
        *(v48 + 8) = v28;
        if (v49)
        {
          *v28 = v49;
          v52 = *(v49 + 8);
          v50 = (v49 + 8);
          v51 = v52;
          *(v28 + 8) = v52;
          if (!v52)
          {
            v51 = (a1 + 8);
          }

          *v51 = v28;
          v53 = v50;
LABEL_98:
          v14 = 0;
          *v53 = v28;
          return v14;
        }
      }

      else
      {
        *v48 = 1;
        *(v48 + 8) = v28;
      }
    }

    v55 = *(a1 + 8);
    v53 = (a1 + 8);
    v54 = v55;
    *v28 = v55;
    if (v55)
    {
      *(v54 + 8) = v28;
    }

    *(v28 + 8) = 0;
    goto LABEL_98;
  }

  return v14;
}

uint64_t sub_1818900D0(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t result))
{
  if (!__s)
  {
    if ((*(a1 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(a1);
      return 0;
    }

    else
    {
      result = 0;
      *(a1 + 20) = 1;
    }

    return result;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = *(v7 + 136);
    v9 = a4 == 1;
    v10 = a4 > 1;
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    if (v9)
    {
      v15 = a5;
      v16 = a3;
      v17 = strlen(__s);
      a3 = v16;
      a5 = v15;
      v13 = v17;
      v12 = 514;
      a4 = 1;
      if (v17 <= v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = 0;
      if ((v8 & 0x8000000000000000) == 0)
      {
        while (__s[v13 + 1] | __s[v13])
        {
          v13 += 2;
          if (v13 > v8)
          {
            v12 = 514;
            v13 = (v8 & 0x7FFFFFFFFFFFFFFELL) + 2;
            if (v13 <= v8)
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }
      }

      v12 = 514;
      if (v13 <= v8)
      {
        goto LABEL_20;
      }
    }

LABEL_11:
    if (a5 + 1 >= 2)
    {
      if (a5 == sub_181916CE4)
      {
        sub_181929C84(v7, __s);
      }

      else
      {
        a5(__s);
      }
    }

    if ((*(a1 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(a1);
      v34 = *(a1 + 24);
      if (v34)
      {
        goto LABEL_67;
      }
    }

    else
    {
      *(a1 + 20) = 1;
      v34 = *(a1 + 24);
      if (v34)
      {
LABEL_67:
        v35 = *(v34 + 344);
        result = 18;
        if (v35)
        {
          *(v35 + 24) = 18;
          ++*(v35 + 52);
        }

        return result;
      }
    }

    return 18;
  }

  v8 = 2147483645;
  v9 = a4 == 1;
  v10 = a4 > 1;
  if (a3 < 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v10)
  {
    v11 = a4;
  }

  else
  {
    v11 = 1;
  }

  if (a4)
  {
    v12 = 2;
  }

  else
  {
    v12 = 16;
  }

  a4 = v11;
  v13 = a3;
  if (a3 > v8)
  {
    goto LABEL_11;
  }

LABEL_20:
  if (a5 == -1)
  {
    v21 = a4;
    v22 = 1;
    if (a4 != 1)
    {
      v22 = 2;
    }

    if (a3 >= 0)
    {
      v22 = 0;
    }

    v23 = v22 + v13;
    if (v22 + v13 <= 32)
    {
      v24 = 32;
    }

    else
    {
      v24 = v22 + v13;
    }

    if (*(a1 + 32) >= v24)
    {
      v25 = *(a1 + 40);
      *(a1 + 8) = v25;
      *(a1 + 20) &= 0x2Du;
    }

    else
    {
      if (sub_1818BB128(a1, v24, 0, a4))
      {
        return 7;
      }

      v25 = *(a1 + 8);
    }

    memcpy(v25, __s, v23);
    a4 = v21;
  }

  else
  {
    if ((*(a1 + 20) & 0x9000) != 0 || *(a1 + 32))
    {
      v18 = a4;
      v19 = a5;
      sub_18193CA00(a1);
      a5 = v19;
      a4 = v18;
    }

    *(a1 + 8) = __s;
    if (a5 == sub_181916CE4)
    {
      *(a1 + 40) = __s;
      v26 = *(a1 + 24);
      if (v26 && *(v26 + 520) > __s)
      {
        if (*(v26 + 496) <= __s)
        {
          *(a1 + 32) = 128;
          goto LABEL_54;
        }

        if (*(v26 + 504) <= __s)
        {
          *(a1 + 32) = *(v26 + 438);
          goto LABEL_54;
        }
      }

      v27 = __s;
      v28 = a4;
      v29 = xmmword_1ED452EC0(v27);
      a4 = v28;
      *(a1 + 32) = v29;
    }

    else
    {
      *(a1 + 48) = a5;
      *(a1 + 56) = 0;
      if (a5)
      {
        v20 = 4096;
      }

      else
      {
        v20 = 0x2000;
      }

      v12 |= v20;
    }
  }

LABEL_54:
  result = 0;
  *(a1 + 16) = v13 & 0x7FFFFFFF;
  *(a1 + 20) = v12;
  *(a1 + 22) = a4;
  if (a4 >= 2 && (v13 & 0x7FFFFFFF) >= 2)
  {
    v30 = *(a1 + 8);
    v31 = *v30;
    v32 = v30[1];
    if (v31 == 255 && v32 == 254)
    {
      v33 = 2;
      goto LABEL_62;
    }

    result = 0;
    if (v31 == 254 && v32 == 255)
    {
      v33 = 3;
LABEL_62:
      if (!sub_18190B020(a1, __s, a3, a4))
      {
        v36 = *(a1 + 16);
        *(a1 + 16) = v36 - 2;
        memmove(*(a1 + 8), (*(a1 + 8) + 2), v36 - 2);
        result = 0;
        *(*(a1 + 8) + *(a1 + 16)) = 0;
        *(*(a1 + 8) + *(a1 + 16) + 1) = 0;
        *(a1 + 20) |= 0x200u;
        *(a1 + 22) = v33;
        return result;
      }

      return 7;
    }
  }

  return result;
}

uint64_t sub_18189049C(uint64_t a1, char *__s1, uint64_t a3, uint64_t *a4, char a5, unsigned int a6)
{
  v173 = *MEMORY[0x1E69E9840];
  if (!__s1)
  {
    goto LABEL_5;
  }

  v12 = *__s1;
  v13 = *__s1 == 0;
  if (!strcmp(__s1, ":memory:"))
  {
    goto LABEL_8;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
LABEL_5:
    v13 = 1;
    if (*(a3 + 102) == 2)
    {
      goto LABEL_8;
    }
  }

  if ((a6 & 0x80) == 0)
  {
    v14 = 0;
    goto LABEL_9;
  }

LABEL_8:
  a5 |= 2u;
  v14 = 1;
LABEL_9:
  if (((v14 | v13) & ((a6 & 0x100) >> 8)) != 0)
  {
    v15 = a6 & 0xFFFFFCFF | 0x200;
  }

  else
  {
    v15 = a6;
  }

  v16 = sub_181902484(72, 0x1020040E9F01A46);
  if (!v16)
  {
    return 7;
  }

  v17 = v16;
  v162 = v15;
  v18 = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 64) = 0;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 16) = 0;
  *v16 = a3;
  *(v16 + 48) = v16;
  *(v16 + 56) = 1;
  if (v13)
  {
    goto LABEL_14;
  }

  v18 = 0;
  v28 = (v15 & 0x40) != 0 ? 0 : v14;
  if ((v28 & 1) != 0 || (v15 & 0x20000) == 0)
  {
    goto LABEL_14;
  }

  v157 = v14;
  v161 = a5;
  if (__s1)
  {
    v29 = (strlen(__s1) & 0x3FFFFFFF) + 1;
  }

  else
  {
    v29 = 1;
  }

  v40 = *(a1 + 8);
  v41 = (v40 + 1);
  if (v41 > v29)
  {
    v42 = (v40 + 1);
  }

  else
  {
    v42 = v29;
  }

  v43 = sub_181902484(v42, 140821821);
  *(v17 + 17) = 1;
  if (!v43)
  {
    v45 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_61:
      (*v45)(v17);
      return 7;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
    --qword_1ED456A90;
    off_1ED452EB0(v17);
    v17 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v45 = &xmmword_1ED452F28;
      goto LABEL_61;
    }

    return 7;
  }

  v44 = v43;
  if (v14)
  {
    memcpy(v43, __s1, v29);
  }

  else
  {
    *v43 = 0;
    v46 = (*(a1 + 64))(a1, __s1, v41, v43);
    if ((v46 | 0x200) != 0x200)
    {
      v30 = v46;
      sqlite3_free(v44);
      sqlite3_free(v17);
      return v30;
    }
  }

  v154 = a3;
  if (word_1ED452E84)
  {
    v47 = qword_1ED452F08(4);
    v18 = v47;
    v159 = v47 == 0;
    if (v47)
    {
      xmmword_1ED452F18(v47);
    }

    if (word_1ED452E84)
    {
      v48 = qword_1ED452F08(2);
      v49 = v48;
      if (v48)
      {
        v50 = a4;
        xmmword_1ED452F18(v48);
        v51 = 0;
        goto LABEL_187;
      }

      v50 = a4;
    }

    else
    {
      v50 = a4;
      v49 = 0;
    }

    v51 = 1;
  }

  else
  {
    v50 = a4;
    v49 = 0;
    v18 = 0;
    v51 = 1;
    v159 = 1;
  }

LABEL_187:
  v20 = qword_1EA831A20;
  if (!qword_1EA831A20)
  {
LABEL_188:
    a4 = v50;
    if (v51)
    {
      goto LABEL_190;
    }

    goto LABEL_189;
  }

  while (1)
  {
    v115 = *v20;
    if (!strcmp(v44, *(*v20 + 216)) && *v115 == a1)
    {
      break;
    }

    v20 = v20[14];
    if (!v20)
    {
      goto LABEL_188;
    }
  }

  v116 = *(v154 + 40);
  a4 = v50;
  if (v116 < 1)
  {
LABEL_221:
    *(v17 + 8) = v20;
    ++*(v20 + 26);
    if (v51)
    {
LABEL_190:
      v114 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        a3 = v154;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v44);
        --qword_1ED456A90;
        off_1ED452EB0(v44);
        v44 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
LABEL_210:
          LOBYTE(v14) = v157;
          a5 = v161;
          if (v20)
          {
            goto LABEL_211;
          }

LABEL_14:
          *&v167 = 0;
          v19 = sub_181902484(152, 0x10B0040DD18C579);
          if (!v19)
          {
            v30 = 7;
            goto LABEL_120;
          }

          v20 = v19;
          *(v19 + 144) = 0;
          *(v19 + 112) = 0u;
          *(v19 + 128) = 0u;
          *(v19 + 80) = 0u;
          *(v19 + 96) = 0u;
          *(v19 + 48) = 0u;
          *(v19 + 64) = 0u;
          *(v19 + 16) = 0u;
          *(v19 + 32) = 0u;
          *v19 = 0u;
          LODWORD(v165) = 4096;
          v21 = a5;
          if (*(a1 + 4) <= 80)
          {
            v22 = 80;
          }

          else
          {
            v22 = *(a1 + 4);
          }

          *v19 = 0;
          v160 = v21;
          v158 = v18;
          if ((v21 & 2) != 0)
          {
            if (__s1)
            {
              v23 = *__s1;
              if (*__s1)
              {
                v24 = strlen(__s1);
                v25 = sub_181902484(v24 + 1, 354097263);
                if (!v25)
                {
                  goto LABEL_86;
                }

                v26 = v25;
                v156 = v14;
                v153 = a3;
                v155 = a4;
                memcpy(v25, __s1, v24 + 1);
                v149 = 0;
                __src = 0;
                v23 = strlen(v26) & 0x3FFFFFFF;
                v27 = 1;
                v151 = 1;
                v148 = 1;
LABEL_75:
                v52 = (v22 + 7) & 0x7FFFFFF8;
                v53 = v23;
                v54 = v27;
                v55 = 3 * v23 + 2 * v52 + ((*(a1 + 4) + 7) & 0xFFFFFFFFFFFFFFF8) + v27;
                v56 = sub_181902484(v55 + 478, 0x10B00404C17B7DALL);
                if (v56)
                {
                  v57 = v56;
                  bzero(v56, v55 + 478);
                  *(v57 + 336) = v57 + 368;
                  *(v57 + 72) = v57 + 448;
                  v58 = v57 + 448 + ((*(a1 + 4) + 7) & 0xFFFFFFFFFFFFFFF8);
                  *(v57 + 80) = v58 + v52;
                  *(v57 + 88) = v58;
                  v59 = (v58 + v52 + v52);
                  *v59 = v57;
                  v60 = v59 + 12;
                  *(v57 + 216) = v60;
                  if (v53)
                  {
                    memcpy(v60, v26, v53);
                    v61 = &v60[v53];
                    if (__src)
                    {
                      v62 = v61 + 1;
                      memcpy(v61 + 1, __src, v54);
                      v63 = &v62[v54];
                    }

                    else
                    {
                      v63 = v61 + 2;
                    }

                    v65 = v151;
                    *(v57 + 224) = v63;
                    memcpy(v63, v26, v53);
                    v66 = &v63[v53];
                    *v66 = 0x6C616E72756F6A2DLL;
                    v66 += 9;
                    *(v57 + 352) = v66;
                    memcpy(v66, v26, v53);
                    *&v66[v53] = 1818326829;
                    if (v26)
                    {
                      v67 = &off_1ED452EB0;
                      if (!dword_1ED452E80)
                      {
LABEL_96:
                        (*v67)(v26);
                        goto LABEL_97;
                      }

                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
                      --qword_1ED456A90;
                      off_1ED452EB0(v26);
                      v26 = xmmword_1ED456AF0;
                      if (xmmword_1ED456AF0)
                      {
                        v67 = &xmmword_1ED452F28;
                        goto LABEL_96;
                      }
                    }
                  }

                  else
                  {
                    *(v57 + 224) = 0;
                    *(v57 + 352) = 0;
                    v65 = v151;
                  }

LABEL_97:
                  *v57 = a1;
                  *(v57 + 180) = v162;
                  if ((v65 & 1) != 0 || !*v149)
                  {
                    v70 = 0;
                    goto LABEL_102;
                  }

                  v164 = 0;
                  v68 = (*(a1 + 40))(a1, *(v57 + 216), *(v57 + 72), v162 & 0x1787F7F, &v164);
                  v69 = v164;
                  *(v57 + 180) |= v164 & 0x700000;
                  v70 = (v69 >> 7) & 1;
                  *(v57 + 20) = (v69 & 0x80) != 0;
                  if (v68)
                  {
                    v30 = v68;
LABEL_104:
                    v74 = *(v57 + 72);
                    if (*v74)
                    {
                      (*(*v74 + 8))(*(v57 + 72));
                      *v74 = 0;
                    }

                    sub_181935120(*(v57 + 328));
                    v75 = &off_1ED452EB0;
                    v18 = v158;
                    a4 = v155;
                    if (!dword_1ED452E80)
                    {
                      goto LABEL_111;
                    }

                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v57);
                    --qword_1ED456A90;
                    off_1ED452EB0(v57);
                    v57 = xmmword_1ED456AF0;
                    if (xmmword_1ED456AF0)
                    {
                      v75 = &xmmword_1ED452F28;
LABEL_111:
                      (*v75)(v57);
                      goto LABEL_112;
                    }

                    goto LABEL_112;
                  }

                  v73 = v69 & 1;
                  v91 = **(v57 + 72);
                  if (v91)
                  {
                    v92 = ((*(v91 + 96))() & 0x2000) == 0;
                  }

                  else
                  {
                    v92 = 1;
                  }

                  if (v73)
                  {
LABEL_235:
                    v131 = *(v57 + 216);
                    v132 = sqlite3_uri_parameter(v131, "nolock");
                    if (v132)
                    {
                      v133 = sub_181988BE4(v132, 1, 0) != 0;
                    }

                    else
                    {
                      v133 = 0;
                    }

                    *(v57 + 17) = v133;
                    if (v92)
                    {
                      v134 = sqlite3_uri_parameter(v131, "immutable");
                      if (!v134 || !sub_181988BE4(v134, 1, 0))
                      {
                        v72 = 0;
                        v71 = 1;
LABEL_103:
                        v30 = sub_1818933F0(v57, &v165, -1);
                        if (v30)
                        {
                          goto LABEL_104;
                        }

                        v163 = v73;
                        v152 = v70;
                        v79 = v165;
                        if ((v160 & 2) != 0)
                        {
                          v80 = 0;
                        }

                        else
                        {
                          v80 = sub_1819447E4;
                        }

                        v81 = *(v57 + 336);
                        *(v81 + 32) = 0u;
                        *(v81 + 48) = 0u;
                        *(v81 + 64) = 0u;
                        *v81 = 0u;
                        *(v81 + 16) = 0u;
                        *(v81 + 48) = ((v160 & 2) >> 1) ^ 1;
                        *(v81 + 49) = 2;
                        *(v81 + 56) = v80;
                        *(v81 + 64) = v57;
                        *(v81 + 32) = 0x100000064;
                        *(v81 + 40) = 0x8800000001;
                        v82 = xmmword_1ED452F60(v79, 216);
                        if (!v82)
                        {
                          v30 = 7;
                          goto LABEL_104;
                        }

                        v83 = v82;
                        v84 = *(v81 + 32);
                        if ((v84 & 0x80000000) != 0)
                        {
                          v85 = *(v81 + 44);
                          if (-1024 * v84 / (v85 + *(v81 + 40)) >= 1000000000)
                          {
                            v84 = 1000000000;
                          }

                          else
                          {
                            v84 = -1024 * v84 / (v85 + *(v81 + 40));
                          }
                        }

                        (*(&xmmword_1ED452F60 + 1))(v82, v84);
                        v86 = *(v81 + 72);
                        if (v86)
                        {
                          (*(&xmmword_1ED452F90 + 1))(v86);
                        }

                        *(v81 + 72) = v83;
                        *(v81 + 40) = v79;
                        *(v57 + 10) = !(v160 & 1);
                        *(v57 + 188) = 0x3FFFFFFF;
                        *(v57 + 16) = v72;
                        *(v57 + 8) = v72;
                        *(v57 + 23) = v72;
                        *(v57 + 19) = v148;
                        *(v57 + 18) = v163;
                        if (v71)
                        {
                          v87 = 0;
                          v88 = 10;
                          v89 = 2;
                          v90 = 1;
                        }

                        else
                        {
                          v90 = 0;
                          v89 = 0;
                          v88 = 0;
                          v87 = 1;
                        }

                        a3 = v153;
                        a4 = v155;
                        *(v57 + 11) = v87;
                        *(v57 + 12) = v90;
                        *(v57 + 13) = 0;
                        *(v57 + 14) = v89;
                        *(v57 + 15) = v88;
                        *(v57 + 25) &= ~1u;
                        *(v57 + 176) = 136;
                        *(v57 + 208) = 0x8000;
                        if (!v71 || ((*(**(v57 + 72) + 96))(*(v57 + 72)) & 0x1000) != 0)
                        {
                          v18 = v158;
                          *(v57 + 184) = 512;
                          if ((v160 & 1) == 0)
                          {
                            goto LABEL_159;
                          }
                        }

                        else
                        {
                          v93 = *(**(v57 + 72) + 88);
                          v18 = v158;
                          if (v93)
                          {
                            v94 = v93();
                            if (v94 >= 0x10000)
                            {
                              v95 = 0x10000;
                            }

                            else
                            {
                              v95 = v94;
                            }

                            if (v94 < 32)
                            {
                              v95 = 512;
                            }

                            *(v57 + 184) = v95;
                            if (v160)
                            {
                              goto LABEL_157;
                            }

LABEL_159:
                            if (!(v160 & 2 | v152))
                            {
LABEL_162:
                              *(v57 + 280) = sub_1818F9A28;
                              v97 = *(v57 + 48);
                              v98 = sub_181933ECC;
                              if (!v97)
                              {
                                if (!*(v57 + 27) || (v98 = sub_181933ED8, *(v57 + 296)))
                                {
                                  v98 = sub_18193417C;
                                }
                              }

                              *(v57 + 288) = v98;
                              *v20 = v57;
                              v99 = *(v153 + 64);
                              *(v57 + 160) = v99;
                              v100 = **(v57 + 72);
                              if (v100 && *v100 >= 3)
                              {
                                v165 = v99;
                                *(v57 + 27) = v99 > 0;
                                v101 = sub_181933ECC;
                                if (!v97)
                                {
                                  if (v99 < 1 || (v101 = sub_181933ED8, *(v57 + 296)))
                                  {
                                    v101 = sub_18193417C;
                                  }
                                }

                                *(v57 + 288) = v101;
                                (*(v100 + 80))();
                                v57 = *v20;
                              }

                              v172 = 0;
                              v170 = 0u;
                              v171 = 0u;
                              v168 = 0u;
                              v169 = 0u;
                              v166 = 0u;
                              v167 = 0u;
                              v102 = *(v57 + 72);
                              if (!*v102 || (v103 = (*(*v102 + 16))(v102, &v166, 100, 0), v103 == 522) || (v30 = v103, !v103))
                              {
                                *(v20 + 32) = v160;
                                v20[1] = v153;
                                v104 = *v20;
                                v105 = *v20;
                                *(v105 + 232) = sub_181933770;
                                v106 = v105 + 232;
                                *(v104 + 240) = v20;
                                v107 = *(v104 + 72);
                                if (*v107)
                                {
                                  (*(*v107 + 80))(*(v104 + 72), 15, v106);
                                  v104 = *v20;
                                }

                                *(v17 + 8) = v20;
                                v20[2] = 0;
                                v20[3] = 0;
                                v108 = *(v104 + 18) != 0;
                                v109 = (v167 << 8) | (BYTE1(v167) << 16);
                                *(v20 + 13) = v109;
                                v110 = v20 + 13;
                                v111 = *(v20 + 20) | v108;
                                *(v20 + 20) = v111 | 8;
                                if ((v109 - 65537) < 0xFFFF01FF || ((v109 + 0x1FFFF) & v109) != 0)
                                {
                                  v112 = 0;
                                  *v110 = 0;
                                  if (__s1)
                                  {
                                    v113 = v156;
                                  }

                                  else
                                  {
                                    v113 = 1;
                                  }

                                  if ((v113 & 1) == 0)
                                  {
                                    v112 = 0;
                                    *(v20 + 33) = 0;
                                  }
                                }

                                else
                                {
                                  v112 = BYTE4(v167);
                                  *(v20 + 20) = v111 | 0xA;
                                  *(v20 + 33) = bswap32(DWORD1(v169)) != 0;
                                  *(v20 + 34) = bswap32(v170) != 0;
                                }

                                v30 = sub_1818933F0(v104, v110, v112);
                                if (!v30)
                                {
                                  *(v20 + 14) = *(v20 + 13) - v112;
                                  *(v20 + 26) = 1;
                                  if (*(v17 + 17))
                                  {
                                    if (!word_1ED452E84)
                                    {
                                      goto LABEL_255;
                                    }

                                    v137 = qword_1ED452F08(2);
                                    if (word_1ED452E84)
                                    {
                                      v138 = qword_1ED452F08(0);
                                      v20[11] = v138;
                                      if (!v138)
                                      {
                                        v30 = 7;
                                        goto LABEL_112;
                                      }
                                    }

                                    if (v137)
                                    {
                                      xmmword_1ED452F18(v137);
                                      v20[14] = qword_1EA831A20;
                                      qword_1EA831A20 = v20;
                                      xmmword_1ED452F28(v137);
                                    }

                                    else
                                    {
LABEL_255:
                                      v20[14] = qword_1EA831A20;
                                      qword_1EA831A20 = v20;
                                    }
                                  }

LABEL_211:
                                  if (*(v17 + 17))
                                  {
                                    v119 = *(a3 + 40);
                                    if (v119 >= 1)
                                    {
                                      v120 = (*(a3 + 32) + 8);
                                      while (1)
                                      {
                                        v121 = *v120;
                                        if (*v120)
                                        {
                                          if (*(v121 + 17))
                                          {
                                            break;
                                          }
                                        }

                                        v120 += 4;
                                        if (!--v119)
                                        {
                                          goto LABEL_261;
                                        }
                                      }

                                      do
                                      {
                                        v122 = v121;
                                        v121 = *(v121 + 40);
                                      }

                                      while (v121);
                                      v123 = *(v17 + 8);
                                      if (v123 >= v122[1])
                                      {
                                        v135 = v122;
                                        while (1)
                                        {
                                          v124 = v135;
                                          v135 = v135[4];
                                          if (!v135)
                                          {
                                            break;
                                          }

                                          if (v135[1] >= v123)
                                          {
                                            v125 = v124 + 4;
                                            *(v17 + 32) = v135;
                                            v136 = 40;
                                            v122 = v124;
                                            v124 = v17;
                                            goto LABEL_260;
                                          }
                                        }

                                        v122 = 0;
                                        v125 = v124 + 4;
                                      }

                                      else
                                      {
                                        v124 = 0;
                                        v125 = v122 + 5;
                                      }

                                      v136 = 32;
                                      v135 = v17;
LABEL_260:
                                      *(v17 + v136) = v122;
                                      v135[5] = v124;
                                      *v125 = v17;
                                    }

LABEL_261:
                                    *a4 = v17;
                                    v139 = *(v17 + 8);
                                    ++*(v17 + 20);
                                    if (*(v17 + 18))
                                    {
                                      v141 = *(v139 + 72);
                                      v126 = (v139 + 72);
                                      v140 = v141;
                                    }

                                    else
                                    {
                                      sub_181932DEC(v17);
                                      v142 = *(v139 + 72);
                                      v126 = (v139 + 72);
                                      v140 = v142;
                                      if (!*(v17 + 17))
                                      {
                                        goto LABEL_267;
                                      }
                                    }

                                    v143 = *(v17 + 20) - 1;
                                    *(v17 + 20) = v143;
                                    if (v143)
                                    {
LABEL_267:
                                      if (v140)
                                      {
                                        goto LABEL_268;
                                      }

                                      LODWORD(v165) = 128;
                                      sub_181944330(v17, &v165);
                                      v145 = *(v17 + 8);
                                      if (!*(v17 + 17))
                                      {
                                        *(*(*v145 + 336) + 36) = 2500;
                                        goto LABEL_268;
                                      }

                                      ++*(v17 + 20);
                                      if (*(v17 + 18))
                                      {
                                        *(*(*v145 + 336) + 36) = 2500;
                                      }

                                      else
                                      {
                                        sub_181932DEC(v17);
                                        v146 = *(v17 + 17);
                                        *(*(*v145 + 336) + 36) = 2500;
                                        if (!v146)
                                        {
                                          goto LABEL_268;
                                        }
                                      }

                                      v147 = *(v17 + 20) - 1;
                                      *(v17 + 20) = v147;
                                      if (!v147)
                                      {
                                        sub_181932ECC(v17);
                                      }

LABEL_268:
                                      v144 = *(*v20 + 72);
                                      if (*v144)
                                      {
                                        (*(*v144 + 80))(v144, 30, v20 + 1);
                                      }

                                      v30 = 0;
                                      if (!v18)
                                      {
                                        return v30;
                                      }

LABEL_127:
                                      xmmword_1ED452F28(v18);
                                      return v30;
                                    }

                                    sub_181932ECC(v17);
                                  }

                                  else
                                  {
                                    *a4 = v17;
                                    v126 = (*(v17 + 8) + 72);
                                  }

                                  v140 = *v126;
                                  goto LABEL_267;
                                }
                              }

LABEL_112:
                              if (*v20)
                              {
                                sub_1818E35FC(*v20, 0);
                              }

                              v76 = &off_1ED452EB0;
                              if (dword_1ED452E80)
                              {
                                if (xmmword_1ED456AF0)
                                {
                                  xmmword_1ED452F18(xmmword_1ED456AF0);
                                }

                                qword_1ED456A48[0] -= xmmword_1ED452EC0(v20);
                                --qword_1ED456A90;
                                off_1ED452EB0(v20);
                                v20 = xmmword_1ED456AF0;
                                if (!xmmword_1ED456AF0)
                                {
LABEL_120:
                                  v77 = &off_1ED452EB0;
                                  if (dword_1ED452E80)
                                  {
                                    if (xmmword_1ED456AF0)
                                    {
                                      xmmword_1ED452F18(xmmword_1ED456AF0);
                                    }

                                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
                                    --qword_1ED456A90;
                                    off_1ED452EB0(v17);
                                    v17 = xmmword_1ED456AF0;
                                    if (!xmmword_1ED456AF0)
                                    {
LABEL_126:
                                      *a4 = 0;
                                      if (!v18)
                                      {
                                        return v30;
                                      }

                                      goto LABEL_127;
                                    }

                                    v77 = &xmmword_1ED452F28;
                                  }

                                  (*v77)(v17);
                                  goto LABEL_126;
                                }

                                v76 = &xmmword_1ED452F28;
                              }

                              (*v76)(v20);
                              goto LABEL_120;
                            }

                            v96 = 4;
LABEL_161:
                            *(v57 + 9) = v96;
                            goto LABEL_162;
                          }

                          *(v57 + 184) = 4096;
                          if ((v160 & 1) == 0)
                          {
                            goto LABEL_159;
                          }
                        }

LABEL_157:
                        v96 = 2;
                        goto LABEL_161;
                      }
                    }

                    LOBYTE(v162) = 1;
LABEL_102:
                    v71 = 0;
                    *(v57 + 21) = 1025;
                    v72 = 1;
                    *(v57 + 17) = 1;
                    LOBYTE(v73) = v162 & 1;
                    goto LABEL_103;
                  }

                  if (!*(v57 + 16) && ((*(**(v57 + 72) + 96))(*(v57 + 72)) & 0x1000) == 0)
                  {
                    v127 = *(**(v57 + 72) + 88);
                    if (!v127)
                    {
                      v130 = 4096;
                      goto LABEL_234;
                    }

                    v128 = v127();
                    if (v128 >= 0x10000)
                    {
                      v129 = 0x10000;
                    }

                    else
                    {
                      v129 = v128;
                    }

                    if (v128 > 31)
                    {
                      *(v57 + 184) = v129;
                      if (v128 > 0x1000)
                      {
                        if (v128 > 0x2000)
                        {
                          v129 = 0x2000;
                        }

                        LODWORD(v165) = v129;
                      }

                      goto LABEL_235;
                    }
                  }

                  v130 = 512;
LABEL_234:
                  *(v57 + 184) = v130;
                  goto LABEL_235;
                }

                a4 = v155;
                if (!v26)
                {
                  goto LABEL_86;
                }

                v64 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
                  --qword_1ED456A90;
                  off_1ED452EB0(v26);
                  v26 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_86;
                  }

                  v64 = &xmmword_1ED452F28;
                }

                (*v64)(v26);
LABEL_86:
                v30 = 7;
LABEL_87:
                v18 = v158;
                goto LABEL_112;
              }

              v156 = v14;
              v153 = a3;
              v155 = a4;
              __src = 0;
              v151 = 0;
              v26 = 0;
              v148 = 1;
              v149 = __s1;
            }

            else
            {
              v156 = v14;
              v153 = a3;
              v155 = a4;
              v149 = 0;
              __src = 0;
              v26 = 0;
              v23 = 0;
              v151 = 1;
              v148 = 1;
            }
          }

          else
          {
            if (!__s1)
            {
              v156 = v14;
              v153 = a3;
              v155 = a4;
              v148 = 0;
              v149 = 0;
              v26 = 0;
              v23 = 0;
              v27 = 1;
              __src = 0;
              v151 = 1;
              goto LABEL_75;
            }

            v23 = *__s1;
            if (*__s1)
            {
              v31 = *(a1 + 8) + 1;
              v32 = sub_181902484(2 * v31, 853352854);
              if (!v32)
              {
                goto LABEL_86;
              }

              v26 = v32;
              v156 = v14;
              v153 = a3;
              v155 = a4;
              *v32 = 0;
              v33 = (*(a1 + 64))(a1, __s1, v31, v32);
              if (v33 == 512)
              {
                v30 = ((v162 << 7) >> 31) & 0x60E;
              }

              else
              {
                v30 = v33;
              }

              v34 = strlen(v26);
              v35 = &__s1[strlen(__s1) & 0x3FFFFFFF];
              v36 = v35 + 1;
              if (v35[1])
              {
                v37 = v35 + 1;
                do
                {
                  v38 = &v37[strlen(v37) + 1];
                  v35 = &v38[strlen(v38)];
                  v37 = v35 + 1;
                }

                while (v35[1]);
              }

              if (!v30)
              {
                v23 = v34 & 0x3FFFFFFF;
                if ((v34 & 0x3FFFFFFF) + 8 <= *(a1 + 8))
                {
                  __src = v36;
                  v151 = 0;
                  v148 = 0;
                  v149 = __s1;
                  v27 = v35 - v36 + 2;
                  goto LABEL_75;
                }

                v30 = sub_18192ACCC(70965);
              }

              v39 = &off_1ED452EB0;
              a4 = v155;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
                --qword_1ED456A90;
                off_1ED452EB0(v26);
                v26 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_87;
                }

                v39 = &xmmword_1ED452F28;
              }

              (*v39)(v26);
              v18 = v158;
              goto LABEL_112;
            }

            v156 = v14;
            v153 = a3;
            v155 = a4;
            __src = 0;
            v151 = 0;
            v148 = 0;
            v149 = __s1;
            v26 = 0;
          }

          v27 = 1;
          goto LABEL_75;
        }

        v114 = &xmmword_1ED452F28;
      }

      else
      {
        a3 = v154;
      }

      (*v114)(v44);
      goto LABEL_210;
    }

LABEL_189:
    xmmword_1ED452F28(v49);
    goto LABEL_190;
  }

  v117 = v116 + 1;
  v118 = *(v154 + 32) + 32 * v116 - 24;
  while (!*v118 || *(*v118 + 8) != v20)
  {
    --v117;
    v118 -= 32;
    if (v117 <= 1)
    {
      goto LABEL_221;
    }
  }

  if ((v51 & 1) == 0)
  {
    xmmword_1ED452F28(v49);
  }

  if (!v159)
  {
    xmmword_1ED452F28(v18);
  }

  sqlite3_free(v44);
  sqlite3_free(v17);
  return 19;
}

uint64_t sub_1818918E0(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v12[1] = a4;
  v13 = a3;
  v12[0] = 0;
  if (*a2 != 47)
  {
    v5 = a2;
    if (!off_1EE341B10(v14, 1024))
    {
      v10 = sub_18192ACCC(51560);
      v11 = *__error();
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v11, __strerrbuf, 0x4FuLL);
      sqlite3_log(v10, "os_unix.c:%d: (%d) %s(%s) - %s", 51560, v11, "getcwd", v5, __strerrbuf);
      return v10;
    }

    sub_1819318B0(v12, v14);
    a2 = v5;
  }

  sub_1819318B0(v12, a2);
  v6 = HIDWORD(v13);
  v7 = v12[0];
  *(a4 + SHIDWORD(v13)) = 0;
  if (v6 >= 2 && v7 == 0)
  {
    return (HIDWORD(v12[0]) != 0) << 9;
  }

  else
  {
    return sub_18192ACCC(51566);
  }
}

char *sqlite3_snprintf(int a1, char *a2, const char *a3, ...)
{
  va_start(va, a3);
  if (a1 >= 1)
  {
    if (a2 && a3)
    {
      v6[0] = 0;
      v6[1] = a2;
      v7 = a1;
      v8 = 0;
      v9 = 0;
      sqlite3_str_vappendf(v6, a3, va);
      v4 = &a2[HIDWORD(v8)];
LABEL_6:
      *v4 = 0;
      return a2;
    }

    sub_1819012D0(34624);
    v4 = a2;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  return a2;
}

void *sub_181891AB4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && (*(v1 + *(a1 + 24)) = 0, *(a1 + 20)) && (*(a1 + 29) & 4) == 0)
  {
    return sub_18192A12C(a1);
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t sub_181891AE0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  v131 = *MEMORY[0x1E69E9840];
  v12 = v5 & 0xFE0FFF00;
  if ((v5 & 4) == 0 || (v13 = 1, v12 != 2048) && v12 != 0x4000 && v12 != 0x80000)
  {
    v13 = 0;
  }

  v14 = dword_1ED456C50;
  if (v14 != getpid())
  {
    dword_1ED456C50 = getpid();
    sqlite3_initialize();
  }

  memset(&v121, 0, 512);
  v109 = 0u;
  v110 = 0u;
  v108 = 0u;
  memset(v107, 0, sizeof(v107));
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  if (v12 == 256)
  {
    v15 = sub_18192E2E4(v10, v6);
    if (v15)
    {
      v104 = v4;
      v16 = *v15;
    }

    else
    {
      if (sqlite3_initialize())
      {
        return 7;
      }

      v15 = sub_181902484(16, 0x10200405730B0C9);
      if (!v15)
      {
        return 7;
      }

      v104 = v4;
      v16 = 0xFFFFFFFFLL;
    }

    v105 = v13;
    *(v8 + 48) = v15;
    goto LABEL_15;
  }

  v104 = v4;
  v105 = v13;
  if (v10)
  {
    v16 = 0xFFFFFFFFLL;
LABEL_15:
    v17 = v10;
    goto LABEL_16;
  }

  v17 = v120;
  v20 = sub_18192BBB0(*(v11 + 8), v120);
  if (v20)
  {
    return v20;
  }

  v16 = 0xFFFFFFFFLL;
LABEL_16:
  v18 = strlen(v17);
  v19 = sqlite3_initialize();
  v20 = 7;
  if (v18 < 1)
  {
    goto LABEL_195;
  }

  if (v19)
  {
    goto LABEL_195;
  }

  v21 = sub_181902484(v18 & 0x7FFFFFFF, 4096251700);
  if (!v21)
  {
    goto LABEL_195;
  }

  v22 = v21;
  __s = v17;
  v23 = dirname_r(v17, v21);
  if (statfs(v23, &v121) == -1)
  {
    v38 = *__error();
    v39 = "statfs";
    if (v38 == 2)
    {
      v20 = sub_18192ACCC(50937);
      if (v20 == 14)
      {
        v39 = "open";
      }
    }

    else
    {
      v20 = 3338;
    }

    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    *__strerrbuf = 0u;
    strerror_r(v38, __strerrbuf, 0x4FuLL);
    v45 = &byte_181A2878D;
    if (v17)
    {
      v45 = v17;
    }

    sqlite3_log(v20, "os_unix.c:%d: (%d) %s(%s) - %s", 50938, v38, v39, v45, __strerrbuf);
    v46 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
      --qword_1ED456A90;
      off_1ED452EB0(v22);
      v22 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_195;
      }

      v46 = &xmmword_1ED452F28;
    }

    (*v46)(v22);
    goto LABEL_195;
  }

  v99 = v10;
  v24 = &off_1ED452EB0;
  v97 = v11;
  if (!dword_1ED452E80)
  {
    goto LABEL_25;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
  --qword_1ED456A90;
  off_1ED452EB0(v22);
  v22 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v24 = &xmmword_1ED452F28;
LABEL_25:
    (*v24)(v22);
  }

  f_flags = v121.f_flags;
  v26 = v6 & 2;
  v102 = v6 & 1;
  v27 = v6;
  v28 = v16;
  if ((v6 & 2) == 0)
  {
    v29 = v6 & 4;
    if ((v121.f_flags & 0x80) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v29 = v6 & 4;
  if (v121.f_flags)
  {
    v29 = 0;
    v26 = 0;
    v27 = v6 & 0xFFFFFFF9;
    v102 = 1;
  }

  if ((v121.f_flags & 0x80) == 0)
  {
LABEL_30:
    if ((v27 & 0x700000) != 0)
    {
      v30 = v121.f_flags;
      v31 = v26;
      sqlite3_log(1, "volume does not support data protection, stripping SQLITE_OPEN_FILEPROTECTION_* flags");
      v26 = v31;
      v10 = v99;
      f_flags = v30;
      v27 &= 0xFF8FFFFF;
    }
  }

LABEL_32:
  v32 = v6 & 8;
  if (v29)
  {
    v33 = (2 * (v26 != 0)) | 0x200;
  }

  else
  {
    v33 = 2 * (v26 != 0);
  }

  v34 = v33 & 0xFFFFF7FF | (((v6 >> 4) & 1) << 11);
  if ((v27 & 0x1000000) != 0)
  {
    v35 = 0x20000000;
  }

  else
  {
    v35 = 256;
  }

  v36 = v34 | v35;
  if ((v28 & 0x80000000) == 0)
  {
    if ((f_flags & 0x80) == 0)
    {
LABEL_40:
      v37 = v36;
      goto LABEL_120;
    }

LABEL_114:
    v63 = fcntl(v28, 63) - 1;
    if (v63 > 6)
    {
      v64 = 0;
    }

    else
    {
      v64 = dword_181A27AC4[v63];
    }

    v37 = v36;
    *(v8 + 124) = v64;
    if ((v27 & 0x700000) != 0)
    {
      v64 = 0;
    }

    v27 |= v64;
LABEL_120:
    if (!(v102 | v32) && *(v8 + 124) != (v27 & 0x700000))
    {
      v65 = sub_18192F8BC(v28, v27 & 0x700000, 0);
      *(v8 + 124) = v27 & 0x700000;
      if (v65)
      {
        if (v65 != 23)
        {
          sub_18192ACCC(51094);
        }
      }
    }

    if (v104)
    {
      *v104 = v27;
    }

    v66 = *(v8 + 48);
    if (v66)
    {
      *v66 = v28;
      v66[1] = v27 & 3;
    }

    if (v32)
    {
      off_1EE341C48(__s);
    }

    else
    {
      *(v8 + 120) = v37;
    }

    if (*v121.f_fstypename == 1936091500)
    {
      *(v8 + 128) |= 2u;
      LODWORD(v113) = 0;
      v111 = 0u;
      v112 = 0u;
      v106[2] = 0;
      v106[0] = 5;
      v106[1] = 0x20000;
      if (fgetattrlist(v28, v106, &v111, 0x24uLL, 0) == -1)
      {
        *(v8 + 32) = *__error();
        if (off_1EE341AE0(v28))
        {
          v74 = *(v8 + 56);
          v75 = *__error();
          v126 = 0u;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          *__strerrbuf = 0u;
          strerror_r(v75, __strerrbuf, 0x4FuLL);
          v76 = &byte_181A2878D;
          if (v74)
          {
            v76 = v74;
          }

          sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 51146, v75, "close", v76, __strerrbuf);
        }

        return 3338;
      }

      if (BYTE4(v112) & 1) == 0 || (BYTE4(v111))
      {
LABEL_147:
        if ((v121.f_flags_ext & 2) != 0)
        {
          *(v8 + 128) |= 2u;
        }

        v69 = 4 * v32;
        if (v102)
        {
          v69 = (4 * (v32 & 0xF)) | 2;
        }

        if (v12 != 256)
        {
          v69 |= 0x80u;
        }

        if (v105)
        {
          v69 |= 8u;
        }

        v70 = v27 & 0x40 | v69;
        if (v12 == 256)
        {
          v71 = v70 | 4;
        }

        else
        {
          v71 = v70;
        }

        if (v10 && (v6 & 0xFE0FFF20) == 0x120 && *(v97 + 40))
        {
          v72 = getenv("SQLITE_FORCE_PROXY_LOCKING");
          if (v72)
          {
            if (atoi(v72) > 0)
            {
LABEL_163:
              v73 = sub_1818929D8(v97, v28, v8, v10, v71);
              if (!v73)
              {
                v88 = *v8;
                v20 = sub_18192CC6C(v8, ":auto:");
                if (v20)
                {
                  if (v88)
                  {
                    (*(v88 + 8))(v8);
                  }

                  else
                  {
                    sub_1818EE950(v8);
                  }
                }

                return v20;
              }

              v20 = v73;
              goto LABEL_195;
            }
          }

          else if ((v121.f_flags & 0x1001) == 0)
          {
            goto LABEL_163;
          }
        }

        if (__s && !(v102 | v32) && (~dword_1ED45305C & 0x60) == 0)
        {
          v71 |= 0x100u;
        }

        if (qword_1ED456C48 == -1)
        {
          if ((v71 & 0x100) != 0)
          {
            goto LABEL_177;
          }
        }

        else
        {
          sub_181A1EA38();
          if ((v71 & 0x100) != 0)
          {
LABEL_177:
            for (i = 0; i != 26; ++i)
            {
              v78 = qword_1EA831898[i];
              if (!v78)
              {
                break;
              }

              v79 = strlen(qword_1EA831898[i]);
              if (v79)
              {
                v80 = v79;
                if (strlen(v10) > v79 && !strncmp(v78, v10, v80))
                {
                  sqlite3_log(28, "Skipping vnode guard based on exemption path %s for file: %s", v78, v10);
                  v71 &= ~0x100u;
                  goto LABEL_186;
                }
              }
            }

            if (!fcntl(v28, 96))
            {
              v71 &= ~0x100u;
            }
          }
        }

LABEL_186:
        v81 = v71 & 0xFEFF;
        if ((~v71 & 0x102) == 0)
        {
          LOWORD(v71) = v71 & 0xFEFF;
        }

        if ((v71 & 0x100) != 0)
        {
          *__strerrbuf = v28;
          *&__strerrbuf[4] = 103;
          *&__strerrbuf[8] = qword_1EA8315F8;
          if (__mac_syscall() == -1)
          {
            if (*__error() != 103)
            {
              v82 = *__error();
              v83 = __error();
              v84 = strerror(*v83);
              sqlite3_log(1, "Failed to set vnode guard on %s (%d): %s", v10, v82, v84);
            }

            LOWORD(v71) = v81;
          }
        }

        v20 = sub_1818929D8(v97, v28, v8, v10, v71);
LABEL_194:
        if (!v20)
        {
          return v20;
        }

        goto LABEL_195;
      }
    }

    else if ((*v121.f_fstypename != 1868854125 || v121.f_fstypename[4] != 115) && (*v121.f_fstypename != 1634105445 || v121.f_fstypename[4] != 116))
    {
      goto LABEL_147;
    }

    *(v8 + 128) |= 1u;
    goto LABEL_147;
  }

  v40 = dword_181A27AE0[(v27 >> 20) & 7];
  if (((v32 != 0) & ((f_flags & 0x80) >> 7)) != 0)
  {
    v40 = 2;
  }

  v98 = v40;
  v96 = v36;
  v95 = f_flags;
  if ((v27 & 0x80800) != 0)
  {
    v41 = __s;
    if (__s)
    {
      v42 = v26;
      v43 = strlen(__s);
      v26 = v42;
      v10 = v99;
      v44 = v43 & 0x3FFFFFFF;
    }

    else
    {
      v44 = 0;
    }

    do
    {
      if (v44 < 2 || (v50 = __s[v44 - 1], v50 == 46))
      {
        v49 = 0;
        v48 = 0;
        v47 = 0;
        v20 = 0;
        goto LABEL_86;
      }

      --v44;
    }

    while (v50 != 45);
    v100 = v26;
    __memcpy_chk();
    __strerrbuf[v44] = 0;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    if (off_1EE341B28(__strerrbuf, &v111))
    {
      v49 = 0;
      v48 = 0;
      v47 = 0;
      v20 = 1802;
    }

    else
    {
      v20 = 0;
      v49 = WORD2(v111) & 0x1FF;
      v48 = v112;
      v47 = DWORD1(v112);
    }

    v26 = v100;
    v41 = __s;
  }

  else
  {
    v41 = __s;
    if ((v27 & 8) != 0)
    {
      v47 = 0;
      v48 = 0;
      v49 = 384;
      goto LABEL_87;
    }

    if ((v27 & 0x40) == 0)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      goto LABEL_87;
    }

    v51 = v26;
    v52 = sqlite3_uri_parameter(__s, "modeof");
    if (!v52)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v26 = v51;
      goto LABEL_87;
    }

    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    *__strerrbuf = 0u;
    if (off_1EE341B28(v52, __strerrbuf))
    {
      v49 = 0;
      v48 = 0;
      v47 = 0;
      v20 = 1802;
    }

    else
    {
      v20 = 0;
      v49 = *&__strerrbuf[4] & 0x1FF;
      v48 = v123;
      v47 = DWORD1(v123);
    }

    v26 = v51;
  }

LABEL_86:
  if (v20)
  {
    return v20;
  }

LABEL_87:
  v93 = v47;
  v94 = v48;
  v53 = v26;
  v36 = v96;
  v101 = v49;
  v54 = sub_18192ACE0(v41, v96, v49, v98, 0);
  v28 = v54;
  if (v10 || (v54 & 0x80000000) == 0)
  {
    if ((v54 & 0x80000000) == 0)
    {
      v32 = v6 & 8;
      goto LABEL_105;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    sub_181A1E998();
  }

  __errnum = *__error();
  v55 = __s;
  if (v105 && *__error() == 13 && off_1EE341AF8(__s, 0))
  {
    LOBYTE(v102) = 0;
    v20 = 1544;
    goto LABEL_214;
  }

  v56 = __error();
  v20 = 0;
  LOBYTE(v102) = 1;
  if (v53 && *v56 != 21)
  {
    v57 = __error();
    v58 = strerror(*v57);
    sqlite3_log(28, "Failed to open '%s' for read/write access (%s). Attemping to open as read-only", __s, v58);
    v59 = v27 & 0xF8;
    v36 = v96 & 0x20000900;
    v27 = v27 & 0xFFFFFFF8 | 1;
    v60 = sub_18192E2E4(__s, v59 | 1u);
    if (v60)
    {
      v28 = *v60;
      sqlite3_free(v60);
      v102 = 1;
      v32 = v6 & 8;
      if ((v28 & 0x80000000) != 0)
      {
        v20 = 0;
LABEL_102:
        v55 = __s;
        goto LABEL_214;
      }

LABEL_105:
      if (!off_1EE341B40(v28, v107))
      {
        v62 = WORD2(v107[0]) & 0xF000;
        if (v62 != 0x2000 && v62 != 24576 && v62 != 0x8000)
        {
          v20 = sub_18192ACCC(51054);
          v89 = __error();
          sub_18192AC04(v20, "open", __s, *v89, 51054);
          off_1EE341AE0(v28);
          goto LABEL_195;
        }

        *(v8 + 152) = v108;
      }

      if (v101 && (v27 & 0x80800) != 0)
      {
        sub_18192F808(v28, v94, v93);
      }

      if ((v95 & 0x80) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_114;
    }

    v61 = sub_18192ACE0(__s, v96 & 0x20000900, v101, v98, 0);
    v32 = v6 & 8;
    if ((v61 & 0x80000000) == 0)
    {
      v28 = v61;
      v102 = 1;
      goto LABEL_105;
    }

    if (!*__error())
    {
      v20 = 0;
      LOBYTE(v102) = 1;
      goto LABEL_102;
    }

    v55 = __s;
    v20 = 0;
    if (*__error() != 2)
    {
      __errnum = *__error();
    }

    LOBYTE(v102) = 1;
  }

LABEL_214:
  if (*__error() == 1)
  {
    v90 = __error();
    v20 = 23;
    sub_18192AC04(23, "open", v55, *v90, 51037);
  }

  else
  {
    v91 = sub_18192ACCC(51040);
    sub_18192AC04(v91, "open", v55, __errnum, 51040);
    if ((v102 & 1) == 0)
    {
      goto LABEL_194;
    }

    v20 = v91;
  }

LABEL_195:
  v85 = *(v8 + 48);
  if (v85)
  {
    v86 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_201:
      (*v86)(v85);
      return v20;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v85);
    --qword_1ED456A90;
    off_1ED452EB0(v85);
    v85 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v86 = &xmmword_1ED452F28;
      goto LABEL_201;
    }
  }

  return v20;
}

uint64_t sub_1818929D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, __int16 a5)
{
  v8 = a2;
  v37 = *MEMORY[0x1E69E9840];
  *(a3 + 24) = a2;
  *(a3 + 8) = a1;
  *(a3 + 56) = a4;
  *(a3 + 30) = a5;
  *(a3 + 96) = qword_1ED452FC0;
  if ((a5 & 0x40) != 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  v11 = sqlite3_uri_parameter(v10, "psow");
  if (v11 && !sub_181988BE4(v11, 1, 1u))
  {
    v12 = a5;
  }

  else
  {
    v12 = a5 | 0x10;
    *(a3 + 30) = a5 | 0x10;
  }

  if (!strcmp(*(a1 + 24), "unix-excl"))
  {
    *(a3 + 30) = v12 | 1;
  }

  v13 = &unk_1EEF8FC18;
  if ((a5 & 0x80) == 0)
  {
    v13 = (**(a1 + 32))(a4, a3);
    *(a3 + 40) = a4;
  }

  if (v13 == &unk_1EEF8FA50 || v13 == &unk_1EEF8FB80 || a4 && v13 == &unk_1EEF8FC18)
  {
    if (qword_1ED456B10)
    {
      xmmword_1ED452F18(qword_1ED456B10);
    }

    v14 = sub_18189312C(a3, (a3 + 16));
    if (v14)
    {
      if ((v8 & 0x80000000) == 0 && off_1EE341AE0(v8))
      {
        v15 = *(a3 + 56);
        v16 = *__error();
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        *__strerrbuf = 0u;
        strerror_r(v16, __strerrbuf, 0x4FuLL);
        v17 = &byte_181A2878D;
        if (v15)
        {
          v17 = v15;
        }

        sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 50352, v16, "close", v17, __strerrbuf);
      }

      v8 = 0xFFFFFFFFLL;
    }

    v18 = qword_1ED456B10;
    if (qword_1ED456B10)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v13 != &unk_1EEF8FAE8)
  {
    if (v13 != &unk_1EEF8FCB0)
    {
      v14 = 0;
      goto LABEL_27;
    }

    v23 = strlen(a4);
    if (sqlite3_initialize())
    {
      v24 = 0;
    }

    else
    {
      v31 = v23 + 6;
      v24 = sub_181902484(v31, 0x100004077774924);
      if (v24)
      {
        sqlite3_snprintf(v31, v24, "%s.lock", a4);
        v14 = 0;
        goto LABEL_66;
      }
    }

    v14 = 7;
LABEL_66:
    *(a3 + 40) = v24;
    goto LABEL_27;
  }

  if (sqlite3_initialize())
  {
    *(a3 + 40) = 0;
    v14 = 7;
    goto LABEL_27;
  }

  v25 = sub_181902484(16, 0x105004037B82EA9);
  *(a3 + 40) = v25;
  if (!v25)
  {
    v14 = 7;
    goto LABEL_27;
  }

  *(v25 + 8) = a4;
  *v25 = 0;
  srandomdev();
  if (qword_1ED456B10)
  {
    xmmword_1ED452F18(qword_1ED456B10);
  }

  v14 = sub_18189312C(a3, (a3 + 16));
  if (v14)
  {
    v26 = *(a3 + 40);
    if (v26)
    {
      v27 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
        --qword_1ED456A90;
        off_1ED452EB0(v26);
        v26 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_56;
        }

        v27 = &xmmword_1ED452F28;
      }

      (*v27)(v26);
    }

LABEL_56:
    if ((v8 & 0x80000000) == 0 && off_1EE341AE0(v8))
    {
      v28 = *(a3 + 56);
      v29 = *__error();
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v29, __strerrbuf, 0x4FuLL);
      v30 = &byte_181A2878D;
      if (v28)
      {
        v30 = v28;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 50378, v29, "close", v30, __strerrbuf);
    }

    v8 = 0xFFFFFFFFLL;
  }

  v18 = qword_1ED456B10;
  if (qword_1ED456B10)
  {
LABEL_26:
    xmmword_1ED452F28(v18);
  }

LABEL_27:
  *(a3 + 32) = 0;
  if (a4)
  {
    sub_18192E440(v8, (a3 + 160), 0);
  }

  if (v14)
  {
    if ((v8 & 0x80000000) == 0 && off_1EE341AE0(v8))
    {
      v19 = *(a3 + 56);
      v20 = *__error();
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v20, __strerrbuf, 0x4FuLL);
      v21 = &byte_181A2878D;
      if (v19)
      {
        v21 = v19;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 50445, v20, "close", v21, __strerrbuf);
    }
  }

  else
  {
    *a3 = v13;
    sub_18192A708(a3);
  }

  return v14;
}

void *sub_181892EB4(const char *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return &unk_1EEF8FC18;
  }

  memset(&v8, 0, 512);
  if (statfs(a1, &v8) == -1)
  {
    goto LABEL_27;
  }

  if (v8.f_flags)
  {
    return &unk_1EEF8FC18;
  }

  if (!(*v8.f_fstypename ^ 0x73667061 | v8.f_fstypename[4]))
  {
    return &unk_1EEF8FA50;
  }

  if (*v8.f_fstypename == 7562856)
  {
    return &unk_1EEF8FA50;
  }

  if (*v8.f_fstypename == 7562869)
  {
    return &unk_1EEF8FA50;
  }

  if (*v8.f_fstypename == 1718642273 && *&v8.f_fstypename[4] == 115)
  {
    return &unk_1EEF8FAE8;
  }

  if (*v8.f_fstypename == 1717726579 && *&v8.f_fstypename[4] == 115)
  {
    return &unk_1EEF8FAE8;
  }

  if (*v8.f_fstypename == 7562862)
  {
    return &unk_1EEF8FB80;
  }

  if (*v8.f_fstypename == 1684170103 && *&v8.f_fstypename[3] == 7758180)
  {
    return &unk_1EEF8FC18;
  }

LABEL_27:
  v7 = *(a2 + 24);
  if (off_1EE341B70(v7, 92) == -1 && (*__error() != 45 && *__error() != 25 || off_1EE341B70(v7, 7) == -1))
  {
    return &unk_1EEF8FCB0;
  }

  else
  {
    return &unk_1EEF8FA50;
  }
}

uint64_t sub_18189312C(uint64_t a1, uint64_t *a2)
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v4 = *(a1 + 24);
  if (off_1EE341B40(v4, v14))
  {
    goto LABEL_2;
  }

  if (!v15 && (*(a1 + 128) & 1) != 0)
  {
    while (1)
    {
      v11 = off_1EE341BD0(v4, "S", 1uLL);
      if ((v11 & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_30;
      }
    }

    if (v11 != 1)
    {
LABEL_30:
      *(a1 + 32) = *__error();
      return 778;
    }

    if (fsync(v4))
    {
      *(a1 + 32) = *__error();
      return 1034;
    }

    if (off_1EE341B40(v4, v14))
    {
LABEL_2:
      *(a1 + 32) = *__error();
      return 10;
    }
  }

  *(&v18 + 1) = *(&v14[0] + 1);
  *&v18 = LODWORD(v14[0]);
  v6 = qword_1ED456C40;
  if (qword_1ED456C40)
  {
    while (v18 != *v6 || *(&v18 + 1) != *(v6 + 8))
    {
      v6 = *(v6 + 64);
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    ++*(v6 + 48);
    goto LABEL_35;
  }

LABEL_11:
  if (sqlite3_initialize())
  {
    return 7;
  }

  v8 = sub_181902484(96, 0x102004054BB24BDLL);
  if (!v8)
  {
    return 7;
  }

  v6 = v8;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = v18;
  v8[1] = 0u;
  if (word_1ED452E84)
  {
    v9 = sqlite3_initialize();
    if (v9)
    {
      *(v6 + 16) = 0;
LABEL_18:
      v10 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_23:
        (*v10)(v6);
        return 7;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
      --qword_1ED456A90;
      off_1ED452EB0(v6);
      v6 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v10 = &xmmword_1ED452F28;
        goto LABEL_23;
      }

      return 7;
    }

    v12 = qword_1ED452F08(v9);
    *(v6 + 16) = v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  *(v6 + 88) = -1;
  *(v6 + 48) = 1;
  v13 = qword_1ED456C40;
  *(v6 + 64) = qword_1ED456C40;
  *(v6 + 72) = 0;
  if (v13)
  {
    *(v13 + 72) = v6;
  }

  qword_1ED456C40 = v6;
LABEL_35:
  result = 0;
  *a2 = v6;
  return result;
}

uint64_t sub_1818933B8(uint64_t a1)
{
  if (*(a1 + 112))
  {
    return *(a1 + 112);
  }

  v2 = *(a1 + 116) | (*(a1 + 30) << 8) & 0x1000 | 0x8000;
  *(a1 + 112) = 4096;
  *(a1 + 116) = v2;
  return 4096;
}

uint64_t sub_1818933F0(uint64_t a1, _DWORD *a2, int a3)
{
  v4 = *a2;
  if (!*(a1 + 19) || !*(a1 + 32))
  {
    v5 = *(*(a1 + 336) + 24) || v4 == 0;
    if (!v5 && v4 != *(a1 + 200))
    {
      v6 = a3;
      v7 = a2;
      if (*(a1 + 21))
      {
        v8 = **(a1 + 72);
        if (v8)
        {
          v9 = (*(v8 + 48))();
          if (v9)
          {
            v10 = v9;
            v11 = 0;
LABEL_38:
            sub_181935120(v11);
            *v7 = *(a1 + 200);
            return v10;
          }
        }
      }

      v11 = sub_1819352D4(v4 + 8);
      if (!v11)
      {
        v10 = 7;
        goto LABEL_38;
      }

      v12 = v11;
      *(v11 + v4) = 0;
      sub_181934D80(a1);
      v13 = *(a1 + 336);
      if (*(v13 + 40))
      {
        v14 = xmmword_1ED452F60(v4, (*(v13 + 44) + 80));
        if (!v14)
        {
          v10 = 7;
          v11 = v12;
          goto LABEL_38;
        }

        v15 = v14;
        v16 = *(v13 + 32);
        if ((v16 & 0x80000000) != 0)
        {
          v17 = *(v13 + 44);
          if (-1024 * v16 / (v17 + *(v13 + 40)) >= 1000000000)
          {
            v16 = 1000000000;
          }

          else
          {
            v16 = -1024 * v16 / (v17 + *(v13 + 40));
          }
        }

        (*(&xmmword_1ED452F60 + 1))(v14, v16);
        v18 = *(v13 + 72);
        if (v18)
        {
          (*(&xmmword_1ED452F90 + 1))(v18);
        }

        *(v13 + 72) = v15;
        *(v13 + 40) = v4;
      }

      sub_181935120(*(a1 + 328));
      *(a1 + 328) = v12;
      *(a1 + 32) = (v4 - 1) / v4;
      *(a1 + 200) = v4;
      *(a1 + 192) = dword_1EA8315A8 / v4 + 1;
      a2 = v7;
      a3 = v6;
    }
  }

  v19 = *(a1 + 200);
  *a2 = v19;
  if (a3 < 0)
  {
    LOWORD(a3) = *(a1 + 178);
  }

  *(a1 + 178) = a3;
  v20 = *(a1 + 304);
  if (v20)
  {
    v20(*(a1 + 320), v19, a3);
  }

  v21 = **(a1 + 72);
  if (v21 && *v21 >= 3)
  {
    v22 = *(a1 + 160);
    *(a1 + 27) = v22 > 0;
    v23 = sub_181933ECC;
    if (!*(a1 + 48))
    {
      if (v22 < 1 || (v23 = sub_181933ED8, *(a1 + 296)))
      {
        v23 = sub_18193417C;
      }
    }

    *(a1 + 288) = v23;
    (*(v21 + 80))();
  }

  return 0;
}

const void *sub_181893654(const void *ptr)
{
  if (ptr)
  {
    if (qword_1EA831A88)
    {
      return (*(qword_1EA831A88 + 16))();
    }

    else
    {
      return malloc_size(ptr);
    }
  }

  return ptr;
}

uint64_t sub_181893698(uint64_t a1, char *__dst, int a3, uint64_t a4)
{
  if (*(a1 + 168) || (v5 = a3, v6 = __dst, (v7 = *(a1 + 64)) != 0) && *(*v7 + 168))
  {
    sqlite3_log(27, "denying read from invalidated fd %d", *(a1 + 24));
    return 6922;
  }

  else
  {
    v8 = *(a1 + 80);
    v9 = v8 - a4;
    if (v8 > a4)
    {
      if (a3 + a4 <= v8)
      {
        memcpy(__dst, (*(a1 + 104) + a4), a3);
        return 0;
      }

      v10 = a1;
      v11 = a4;
      memcpy(__dst, (*(a1 + 104) + a4), v9);
      a1 = v10;
      v6 += v9;
      v5 -= v9;
      a4 = v9 + v11;
    }

    v12 = a1;
    v13 = sub_18192B114(a1, a4, v6, v5);
    if (v5 == v13)
    {
      return 0;
    }

    else if (v13 < 0)
    {
      v14 = *(v12 + 32);
      result = 8458;
      if ((v14 - 5) >= 2 && v14 != 34 && v14 != 83)
      {
        return 266;
      }
    }

    else
    {
      *(v12 + 32) = 0;
      bzero(&v6[v13], v5 - v13);
      return 522;
    }
  }

  return result;
}

void sub_1818937DC(uint64_t result)
{
  if (*(result + 17))
  {
    ++*(result + 20);
    if (!*(result + 18))
    {
      sub_181932DEC(result);
    }
  }
}

uint64_t sub_181893800(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    result = sub_181902484(120, 0x102004000A97D9ELL);
    if (result)
    {
      *(result + 112) = 0;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v4 = *(a2 + 8);
  if (*(a2 + 17) && (++*(a2 + 20), !*(a2 + 18)))
  {
    sub_181932DEC(a2);
    result = *(v4 + 72);
    if (result)
    {
LABEL_5:
      if (!*(a2 + 17))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    result = *(v4 + 72);
    if (result)
    {
      goto LABEL_5;
    }
  }

  result = sub_181902484(120, 4043988873);
  if (result)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
  }

  *(v4 + 72) = result;
  *(v4 + 80) = sub_18194116C;
  if (!*(a2 + 17))
  {
LABEL_14:
    if (result)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_13:
  v6 = *(a2 + 20) - 1;
  *(a2 + 20) = v6;
  if (v6)
  {
    goto LABEL_14;
  }

  sub_181932ECC(a2);
  result = *(v4 + 72);
  if (result)
  {
LABEL_15:
    if (!*(result + 112))
    {
      *(result + 88) = 0u;
      *(result + 72) = 0u;
      *(result + 56) = 0u;
      *(result + 40) = 0u;
      *(result + 24) = 0u;
      *(result + 8) = 0u;
      *(result + 113) = 1;
    }

    return result;
  }

LABEL_18:
  if (*(a1 + 103) || *(a1 + 104))
  {
    return 0;
  }

  *(a1 + 103) = 1;
  if (*(a1 + 220) >= 1)
  {
    *(a1 + 424) = 1;
  }

  ++*(a1 + 432);
  *(a1 + 436) = 0;
  result = *(a1 + 344);
  if (result)
  {
    sub_181910730(result, "out of memory");
    v7 = *(a1 + 344);
    *(v7 + 24) = 7;
    v8 = *(v7 + 216);
    if (!v8)
    {
      return 0;
    }

    result = 0;
    do
    {
      ++*(v8 + 52);
      *(v8 + 24) = 7;
      v8 = *(v8 + 216);
    }

    while (v8);
  }

  return result;
}

int sqlite3_overload_function(sqlite3 *a1, const char *zFuncName, int nArg)
{
  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_16;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_16:
    sqlite3_log(21, "API call with %s database connection pointer", v4);
    goto LABEL_17;
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  if (!zFuncName || nArg <= -3)
  {
LABEL_17:

    return sub_1819012D0(194028);
  }

  if (*(a1 + 3))
  {
    v6 = *&nArg;
    v7 = zFuncName;
    xmmword_1ED452F18(*(a1 + 3));
    zFuncName = v7;
    *&nArg = v6;
  }

  v8 = zFuncName;
  v9 = *&nArg;
  v10 = sub_181893B48(a1, zFuncName, nArg, 1u, 0);
  v11 = *(a1 + 3);
  if (v11)
  {
    xmmword_1ED452F28(v11);
  }

  if (v10)
  {
    return 0;
  }

  v13 = sqlite3_mprintf("%s", v8);
  if (v13)
  {
    return sub_181915678(a1, v8, v9, 1, v13, sub_181915C24, 0, 0, 0, 0, sqlite3_free);
  }

  else
  {
    return 7;
  }
}

uint64_t sub_181893B48(uint64_t a1, char *__s, int a3, unsigned int a4, int a5)
{
  if (__s)
  {
    v10 = strlen(__s) & 0x3FFFFFFF;
    v11 = *__s;
    if (*__s)
    {
      goto LABEL_3;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v11 = MEMORY[0];
  if (!MEMORY[0])
  {
    goto LABEL_7;
  }

LABEL_3:
  v12 = 0;
  v13 = __s + 1;
  v14 = v11;
  do
  {
    v12 = -1640531535 * (v12 + (v14 & 0xDF));
    v15 = *v13++;
    v14 = v15;
  }

  while (v15);
LABEL_8:
  v16 = *(a1 + 632);
  if (!v16)
  {
    v17 = (a1 + 616);
    v18 = *(a1 + 620);
    if (v18)
    {
      goto LABEL_10;
    }

LABEL_47:
    v22 = qword_1EA831A40;
    if (!qword_1EA831A40)
    {
      goto LABEL_48;
    }

    goto LABEL_19;
  }

  v17 = (v16 + 16 * (v12 % *(a1 + 616)));
  v18 = *v17;
  if (!*v17)
  {
    goto LABEL_47;
  }

LABEL_10:
  v19 = v17 + 2;
  do
  {
    v19 = *v19;
    if (v12 == v19[8])
    {
      v20 = *(v19 + 3);
      for (i = __s; ; ++i)
      {
        if (*v20 == *i)
        {
          if (!*v20)
          {
            v22 = *(v19 + 2);
            if (v22)
            {
              goto LABEL_19;
            }

LABEL_48:
            if (a5)
            {
              goto LABEL_49;
            }

            v24 = 0;
LABEL_63:
            v30 = *(&xmmword_1ED456B50 + (v10 + byte_181A20298[v11]) % 0x17);
            if (!v30)
            {
              goto LABEL_72;
            }

            while (2)
            {
              v36 = *(v30 + 7);
              v37 = __s;
LABEL_67:
              if (*v36 == *v37)
              {
                if (!*v36)
                {
                  v23 = 0;
                  while (1)
                  {
                    v39 = *v30;
                    if (v39 == a3)
                    {
                      break;
                    }

                    if (a3 == -2)
                    {
                      if (*(v30 + 3))
                      {
                        v38 = 6;
                      }

                      else
                      {
                        v38 = 0;
                      }
                    }

                    else
                    {
                      if ((v39 & 0x80000000) != 0 && (v39 > 0xFFFFFFFD || (-2 - v39) <= a3))
                      {
                        v40 = 1;
LABEL_86:
                        v41 = (((*(v30 + 1) & a4) >> 1) & 1) + v40;
                        v38 = v40 | 2;
                        if ((*(v30 + 1) & 3) != a4)
                        {
                          v38 = v41;
                        }

                        goto LABEL_79;
                      }

                      v38 = 0;
                    }

LABEL_79:
                    if (v38 > v23)
                    {
                      v24 = v30;
                    }

                    if (v38 > v23)
                    {
                      v23 = v38;
                    }

                    v30 = *(v30 + 2);
                    if (!v30)
                    {
                      goto LABEL_43;
                    }
                  }

                  v40 = 4;
                  goto LABEL_86;
                }
              }

              else if (byte_181A20298[*v36] != byte_181A20298[*v37])
              {
                v30 = *(v30 + 8);
                if (!v30)
                {
                  v23 = 0;
                  goto LABEL_43;
                }

                continue;
              }

              break;
            }

            ++v36;
            ++v37;
            goto LABEL_67;
          }
        }

        else if (byte_181A20298[*v20] != byte_181A20298[*i])
        {
          break;
        }

        ++v20;
      }
    }

    --v18;
  }

  while (v18);
  v22 = qword_1EA831A40;
  if (!qword_1EA831A40)
  {
    goto LABEL_48;
  }

LABEL_19:
  v23 = 0;
  v24 = 0;
  while (2)
  {
    v26 = *v22;
    if (v26 == a3)
    {
      v27 = 4;
LABEL_30:
      v28 = (((*(v22 + 1) & a4) >> 1) & 1) + v27;
      v25 = v27 | 2;
      if ((*(v22 + 1) & 3) != a4)
      {
        v25 = v28;
      }
    }

    else if (a3 == -2)
    {
      if (*(v22 + 3))
      {
        v25 = 6;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      if ((v26 & 0x80000000) != 0 && (v26 > 0xFFFFFFFD || (-2 - v26) <= a3))
      {
        v27 = 1;
        goto LABEL_30;
      }

      v25 = 0;
    }

    if (v25 > v23)
    {
      v24 = v22;
    }

    if (v25 > v23)
    {
      v23 = v25;
    }

    v22 = *(v22 + 2);
    if (v22)
    {
      continue;
    }

    break;
  }

  if (!a5)
  {
    if (v24 && (*(a1 + 44) & 2) == 0)
    {
      LOBYTE(v30) = 0;
LABEL_73:
      if ((v30 & 1) == 0 && !*(v24 + 24))
      {
        return 0;
      }

      return v24;
    }

    goto LABEL_63;
  }

LABEL_43:
  LOBYTE(v30) = a5 != 0;
  if (!a5 || v23 > 5)
  {
LABEL_72:
    if (v24)
    {
      goto LABEL_73;
    }

    return 0;
  }

LABEL_49:
  if (a1)
  {
    v24 = sub_181929E8C(a1, (v10 + 73), 0x10F00408277036CLL);
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    v24 = sub_181902484((v10 + 73), 0x10F00408277036CLL);
    if (!v24)
    {
      return 0;
    }
  }

  bzero(v24, (v10 + 73));
  v31 = (v24 + 72);
  *(v24 + 56) = v24 + 72;
  *v24 = a3;
  *(v24 + 4) = a4;
  memcpy((v24 + 72), __s, (v10 + 1));
  v32 = *(v24 + 72);
  if (*(v24 + 72))
  {
    v33 = (v24 + 73);
    do
    {
      *(v33 - 1) = byte_181A20298[v32];
      v34 = *v33++;
      v32 = v34;
    }

    while (v34);
    v31 = *(v24 + 56);
  }

  v35 = sub_18188FAF0(a1 + 616, v31, v24);
  if (v35 == v24)
  {
    sub_181929C84(a1, v24);
    if (*(a1 + 103) || *(a1 + 104))
    {
      return 0;
    }

    *(a1 + 103) = 1;
    if (*(a1 + 220) >= 1)
    {
      *(a1 + 424) = 1;
    }

    ++*(a1 + 432);
    *(a1 + 436) = 0;
    v44 = *(a1 + 344);
    if (!v44)
    {
      return 0;
    }

    sub_181910730(v44, "out of memory");
    v45 = *(a1 + 344);
    *(v45 + 24) = 7;
    v46 = *(v45 + 216);
    if (!v46)
    {
      return 0;
    }

    v24 = 0;
    do
    {
      ++*(v46 + 52);
      *(v46 + 24) = 7;
      v46 = *(v46 + 216);
    }

    while (v46);
  }

  else
  {
    *(v24 + 16) = v35;
  }

  return v24;
}

uint64_t sub_181893FF0(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  if (!a2 || a6 && a8 || (a7 != 0) == (a8 == 0) || (a3 - 128) < 0xFFFFFF7F || (a9 == 0) != (a10 == 0) || (strlen(a2) & 0x3FFFFF00) != 0)
  {

    return sub_1819012D0(193751);
  }

  else
  {
    v19 = a2;
    v20 = a3;
    v21 = a1;
    v22 = a4 & 0x3380800;
    v23 = a4 & 7;
    if (v23 - 1 >= 3)
    {
      if (v23 == 5)
      {
        v24 = v22;
        result = sub_181893FF0(a1, a2, a3, v22 | 1u, a5, a6, a7, a8, a9, a10, a11);
        if (result)
        {
          return result;
        }

        result = sub_181893FF0(a1, a2, a3, v24 | 2u, a5, a6, a7, a8, a9, a10, a11);
        if (result)
        {
          return result;
        }

        v22 = v24;
        v23 = 3;
        v20 = a3;
        v21 = a1;
        v19 = a2;
      }

      else if (v23 == 4)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }
    }

    v30 = v22;
    v25 = sub_181893B48(v21, v19, v20, v23, 0);
    if (v25 && (*(v25 + 1) & 3) == v23 && *v25 == a3)
    {
      if (*(a1 + 208))
      {
        sub_181907EC4(a1, 5, "unable to delete/modify user-function due to active statements");
        return 5;
      }

      for (i = *(a1 + 8); i; i = *(i + 16))
      {
        *(i + 268) = *(i + 268) & 0xFFFC | 1;
      }
    }

    else if (!(a6 | a8))
    {
      return 0;
    }

    v27 = sub_181893B48(a1, a2, a3, v23, 1);
    if (v27)
    {
      v28 = v27;
      sub_1819A98A8(a1, v27);
      if (a11)
      {
        ++*a11;
      }

      result = 0;
      *(v28 + 64) = a11;
      *(v28 + 4) = (*(v28 + 4) & 3 | v30) ^ 0x200000;
      if (a6)
      {
        v29 = a6;
      }

      else
      {
        v29 = a7;
      }

      *(v28 + 24) = v29;
      *(v28 + 32) = a8;
      *(v28 + 40) = a9;
      *(v28 + 48) = a10;
      *(v28 + 8) = a5;
      *v28 = a3;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t sub_1818942AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1819AE48C;
  if (*a1 == 1)
  {
    v8 = sub_181894AF0;
  }

  v9 = v8(a2, a3);
  v10 = v9;
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = (*(a1 + 16) - 1) & v9;
    v13 = (v11 + 16 * v12);
    v16 = *v13;
    v14 = v13 + 2;
    v15 = v16;
    if (*a1 == 1)
    {
      v17 = sub_181894B58;
    }

    else
    {
      v17 = sub_1819AE4C4;
    }

    do
    {
      if (!v15)
      {
        goto LABEL_12;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_12;
      }

      --v15;
    }

    while ((v17)(*(v14 + 3), v14[8], a2, a3));
    v18 = *(v14 + 2);
    if (a4)
    {
      *(v14 + 2) = a4;
      return v18;
    }

    v38 = *v14;
    v39 = *(v14 + 1);
    v40 = (a1 + 8);
    if (v39)
    {
      v40 = *(v14 + 1);
    }

    *v40 = v38;
    if (v38)
    {
      *(v38 + 8) = v39;
    }

    v41 = *(a1 + 24) + 16 * v12;
    if (*(v41 + 8) == v14)
    {
      *(v41 + 8) = v38;
    }

    if ((*v41)-- <= 1)
    {
      *(v41 + 8) = 0;
    }

    if (*(a1 + 1))
    {
      v43 = *(v14 + 3);
      if (v43)
      {
        v44 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
LABEL_62:
          (*v44)(v43);
          goto LABEL_63;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v43);
        --qword_1ED456A90;
        off_1ED452EB0(v43);
        v43 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v44 = &xmmword_1ED452F28;
          goto LABEL_62;
        }
      }
    }

LABEL_63:
    v45 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
      --qword_1ED456A90;
      off_1ED452EB0(v14);
      v14 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_69:
        v46 = *(a1 + 4);
        v47 = __OFSUB__(v46--, 1);
        *(a1 + 4) = v46;
        if (!((v46 < 0) ^ v47 | (v46 == 0)))
        {
          return v18;
        }

        v48 = *(a1 + 8);
        *(a1 + 8) = 0;
        v49 = *(a1 + 24);
        if (!v49)
        {
          goto LABEL_78;
        }

        v50 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v49);
          --qword_1ED456A90;
          off_1ED452EB0(v49);
          v49 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
LABEL_78:
            *(a1 + 24) = 0;
            *(a1 + 16) = 0;
            if (!v48)
            {
LABEL_117:
              *(a1 + 4) = 0;
              return v18;
            }

            while (1)
            {
              v52 = *v48;
              if (*(a1 + 1))
              {
                v53 = v48[3];
                if (v53)
                {
                  v54 = &off_1ED452EB0;
                  if (!dword_1ED452E80)
                  {
                    goto LABEL_90;
                  }

                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v53);
                  --qword_1ED456A90;
                  off_1ED452EB0(v53);
                  v53 = xmmword_1ED456AF0;
                  if (xmmword_1ED456AF0)
                  {
                    break;
                  }
                }
              }

LABEL_91:
              v51 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v48);
                --qword_1ED456A90;
                off_1ED452EB0(v48);
                v48 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_82;
                }

                v51 = &xmmword_1ED452F28;
              }

              (*v51)(v48);
LABEL_82:
              v48 = v52;
              if (!v52)
              {
                goto LABEL_117;
              }
            }

            v54 = &xmmword_1ED452F28;
LABEL_90:
            (*v54)(v53);
            goto LABEL_91;
          }

          v50 = &xmmword_1ED452F28;
        }

        (*v50)(v49);
        goto LABEL_78;
      }

      v45 = &xmmword_1ED452F28;
    }

    (*v45)(v14);
    goto LABEL_69;
  }

LABEL_12:
  if (!a4)
  {
    return a4;
  }

  v19 = *(a1 + 16);
  if (!v19)
  {
    if (sqlite3_initialize())
    {
      goto LABEL_44;
    }

    v22 = sub_181902484(128, 618844446);
    if (!v22)
    {
      goto LABEL_44;
    }

    v23 = v22;
    v22[6] = 0u;
    v22[7] = 0u;
    v22[4] = 0u;
    v22[5] = 0u;
    v22[2] = 0u;
    v22[3] = 0u;
    *v22 = 0u;
    v22[1] = 0u;
    v24 = *(a1 + 24);
    if (!v24)
    {
      goto LABEL_30;
    }

    v25 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v24);
      --qword_1ED456A90;
      off_1ED452EB0(v24);
      v24 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_30;
      }

      v25 = &xmmword_1ED452F28;
    }

    (*v25)(v24);
LABEL_30:
    *(a1 + 24) = v23;
    v19 = 8;
    *(a1 + 16) = 8;
    if (*a1 == 1)
    {
      v26 = sub_181894AF0;
    }

    else
    {
      v26 = sub_1819AE48C;
    }

    v27 = (a1 + 8);
    v28 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v28)
    {
      do
      {
        v32 = v26(v28[3], *(v28 + 8));
        v33 = *v28;
        v34 = &v23[v32 & 7];
        v35 = *(v34 + 1);
        if (v35)
        {
          *v28 = v35;
          v31 = *(v35 + 8);
          v29 = (v35 + 8);
          v30 = v31;
          v28[1] = v31;
          if (!v31)
          {
            v30 = (a1 + 8);
          }

          *v30 = v28;
        }

        else
        {
          v36 = *v27;
          *v28 = *v27;
          if (v36)
          {
            *(v36 + 8) = v28;
          }

          v28[1] = 0;
          v29 = (a1 + 8);
        }

        *v29 = v28;
        ++*v34;
        *(v34 + 1) = v28;
        v28 = v33;
      }

      while (v33);
      v19 = *(a1 + 16);
    }
  }

  if (*(a1 + 4) < v19)
  {
    goto LABEL_15;
  }

  if (sqlite3_initialize() || (v55 = 2 * v19, (v56 = sub_181902484(32 * v19, 618844446)) == 0))
  {
LABEL_44:
    *(a1 + 4) = 0;
    return a4;
  }

  v57 = v56;
  bzero(v56, 16 * v55);
  v58 = *(a1 + 24);
  if (v58)
  {
    v59 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v58);
      --qword_1ED456A90;
      off_1ED452EB0(v58);
      v58 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_104;
      }

      v59 = &xmmword_1ED452F28;
    }

    (*v59)(v58);
  }

LABEL_104:
  *(a1 + 24) = v57;
  *(a1 + 16) = v55;
  if (*a1 == 1)
  {
    v60 = sub_181894AF0;
  }

  else
  {
    v60 = sub_1819AE48C;
  }

  v61 = (a1 + 8);
  v62 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v62)
  {
    v63 = v55 - 1;
    do
    {
      v67 = v60(v62[3], *(v62 + 8));
      v68 = *v62;
      v69 = &v57[16 * (v67 & v63)];
      v70 = *(v69 + 1);
      if (v70)
      {
        *v62 = v70;
        v66 = *(v70 + 8);
        v64 = (v70 + 8);
        v65 = v66;
        v62[1] = v66;
        if (!v66)
        {
          v65 = (a1 + 8);
        }

        *v65 = v62;
      }

      else
      {
        v71 = *v61;
        *v62 = *v61;
        if (v71)
        {
          *(v71 + 8) = v62;
        }

        v62[1] = 0;
        v64 = (a1 + 8);
      }

      *v64 = v62;
      ++*v69;
      *(v69 + 1) = v62;
      v62 = v68;
    }

    while (v68);
  }

LABEL_15:
  if (!sqlite3_initialize())
  {
    v20 = sub_181902484(40, 618844446);
    if (v20)
    {
      *(v20 + 32) = 0;
      *v20 = 0u;
      *(v20 + 16) = 0u;
      if (a2 && *(a1 + 1))
      {
        v21 = v20;
        if (sqlite3_initialize() || (v80 = sub_181902484(a3, 618844446)) == 0)
        {
          v21[3] = 0;
          sqlite3_free(v21);
          return a4;
        }

        v81 = v80;
        bzero(v80, a3);
        v21[3] = v81;
        memcpy(v81, a2, a3);
        v20 = v21;
      }

      else
      {
        *(v20 + 24) = a2;
      }

      *(v20 + 32) = a3;
      ++*(a1 + 4);
      v72 = *(a1 + 24) + 16 * ((*(a1 + 16) - 1) & v10);
      v73 = *(v72 + 8);
      if (v73)
      {
        *v20 = v73;
        v76 = *(v73 + 8);
        v74 = (v73 + 8);
        v75 = v76;
        *(v20 + 8) = v76;
        if (!v76)
        {
          v75 = (a1 + 8);
        }

        *v75 = v20;
        v77 = v74;
      }

      else
      {
        v79 = *(a1 + 8);
        v77 = (a1 + 8);
        v78 = v79;
        *v20 = v79;
        if (v79)
        {
          *(v78 + 8) = v20;
        }

        *(v20 + 8) = 0;
      }

      *v77 = v20;
      ++*v72;
      *(v72 + 8) = v20;
      *(v20 + 16) = a4;
      return 0;
    }
  }

  return a4;
}

uint64_t sub_181894AF0(char *__s, int a2)
{
  v2 = __s;
  if (a2 <= 0)
  {
    a2 = strlen(__s);
    if (a2 < 1)
    {
      return 0;
    }
  }

  v3 = 0;
  v4 = a2 + 1;
  do
  {
    v5 = *v2++;
    v3 ^= v5 ^ (8 * v3);
    --v4;
  }

  while (v4 > 1);
  return v3 & 0x7FFFFFFF;
}

uint64_t sub_181894B58(const char *a1, int a2, char *__s2, int a4)
{
  if (a2 == a4)
  {
    return strncmp(a1, __s2, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_181894BA4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = *a2;
  if (*a2)
  {
    v9 = 0;
    v10 = (a2 + 1);
    v11 = *a2;
    do
    {
      v9 = -1640531535 * (v9 + (v11 & 0xDF));
      v12 = *v10++;
      v11 = v12;
    }

    while (v12);
  }

  else
  {
    v9 = 0;
  }

  v13 = (a1 + 568);
  v14 = *(a1 + 584);
  if (!v14)
  {
    v15 = *(a1 + 572);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v16 = &qword_1EA831A30;
LABEL_19:
    if (!v16[2])
    {
      goto LABEL_27;
    }

LABEL_20:
    if (v8 == 102)
    {
      v8 = a2[1];
      if (v8 == 116)
      {
        v8 = a2[2];
        v19 = 115;
      }

      else
      {
        v19 = 116;
      }
    }

    else
    {
      v19 = 102;
    }

    if (v19 == v8)
    {
      a5 = 0;
    }

    goto LABEL_27;
  }

  v13 = (v14 + 16 * (v9 % *v13));
  v15 = *v13;
  if (!*v13)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = (v13 + 2);
  do
  {
    v16 = *v16;
    if (v9 == *(v16 + 8))
    {
      v17 = v16[3];
      for (i = a2; ; ++i)
      {
        if (*v17 == *i)
        {
          if (!*v17)
          {
            goto LABEL_19;
          }
        }

        else if (byte_181A20298[*v17] != byte_181A20298[*i])
        {
          break;
        }

        ++v17;
      }
    }

    --v15;
  }

  while (v15);
  if (qword_1EA831A40)
  {
    goto LABEL_20;
  }

LABEL_27:
  v20 = *(a1 + 24);
  if (v20)
  {
    v21 = a3;
    v22 = a2;
    xmmword_1ED452F18(v20);
    a2 = v22;
    a3 = v21;
  }

  sub_18194D228(a1, a2, a3, a4, a5);
  if (!*(a1 + 103))
  {
    v24 = 0;
    v25 = *(a1 + 24);
    if (!v25)
    {
      return v24;
    }

    goto LABEL_34;
  }

  v23 = sub_18193C988(a1, 0);
  v24 = v23;
  if (a5 && v23)
  {
    a5(a4);
  }

  v25 = *(a1 + 24);
  if (v25)
  {
LABEL_34:
    xmmword_1ED452F28(v25);
  }

  return v24;
}

int sqlite3_busy_handler(sqlite3 *a1, int (__cdecl *a2)(void *, int), void *a3)
{
  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_11;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v4);

    return sub_1819012D0(193572);
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    xmmword_1ED452F18(*(a1 + 3));
    v8 = *(a1 + 3);
    *(a1 + 83) = a2;
    *(a1 + 84) = a3;
    *(a1 + 85) = a1;
    *(a1 + 172) = 0;
    *(a1 + 197) = 0;
    if (v8)
    {
      xmmword_1ED452F28(v8);
    }
  }

  else
  {
    *(a1 + 83) = a2;
    *(a1 + 84) = a3;
    *(a1 + 85) = a1;
    *(a1 + 172) = 0;
    *(a1 + 197) = 0;
  }

  return 0;
}

char *__cdecl sqlite3_vmprintf(const char *a1, va_list a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (sqlite3_initialize())
    {
      return 0;
    }

    else
    {
      v8 = 0;
      v5 = 0;
      v6 = &v9;
      v7 = 0x7FFFFFFD00000200;
      sqlite3_str_vappendf(&v5, a1, a2);
      if (v6 && (v6[v8] = 0, HIDWORD(v7)) && (v8 & 0x40000000000) == 0)
      {
        return sub_18192A12C(&v5);
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    sub_1819012D0(34561);
    return 0;
  }
}

int sqlite3_exec(sqlite3 *a1, const char *sql, int (__cdecl *callback)(void *, int, char **, char **), void *a4, char **errmsg)
{
  v49 = 0;
  if (errmsg)
  {
    *errmsg = 0;
  }

  if (!a1)
  {
    v9 = "NULL";
    goto LABEL_17;
  }

  v8 = *(a1 + 113);
  if (v8 == 186)
  {
LABEL_7:
    v9 = "unopened";
LABEL_17:
    sqlite3_log(21, "API call with %s database connection pointer", v9);

    return sub_1819012D0(146786);
  }

  if (v8 != 118)
  {
    if (v8 != 109)
    {
      v9 = "invalid";
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  if (sql)
  {
    v10 = sql;
  }

  else
  {
    v10 = &byte_181A2878D;
  }

  v11 = *(a1 + 3);
  if (v11)
  {
    xmmword_1ED452F18(v11);
  }

  *(a1 + 20) = 0;
  if (*(a1 + 52))
  {
    sub_181932D5C(a1, 0);
  }

  else
  {
    *(a1 + 21) = -1;
  }

  v50 = 0;
  while (1)
  {
    if (!*v10)
    {
      v23 = 0;
LABEL_82:
      v14 = 0;
      goto LABEL_83;
    }

    v49 = 0;
    v13 = sub_1818954B4(a1, v10, 0xFFFFFFFFLL, 128, 0, &v49, &v50);
    if (v13)
    {
      v23 = v13;
      goto LABEL_82;
    }

    if (v49)
    {
      break;
    }

    v23 = 0;
    v10 = v50;
LABEL_66:
    if (v23)
    {
      goto LABEL_82;
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  while (2)
  {
    v22 = sqlite3_step(v49);
    v23 = v22;
    if (!callback)
    {
      goto LABEL_30;
    }

    if (v22 == 100)
    {
      if (!v15)
      {
        goto LABEL_41;
      }

      break;
    }

    v24 = v22 == 101 && v15 == 0;
    if (!v24 || (*(a1 + 49) & 1) == 0)
    {
LABEL_59:
      v31 = v49;
      if (*(v49 + 267))
      {
        v23 = sub_1818A32FC(v49, v19, v20, v21);
      }

      else
      {
        v23 = 0;
      }

      sub_181901AB4(v31, v19, v20, v21);
      v49 = 0;
      v10 = v50 - 1;
      do
      {
        v32 = *++v10;
      }

      while ((byte_181A204C8[v32] & 1) != 0);
      if (v14)
      {
        sub_181929C84(a1, v14);
      }

      goto LABEL_66;
    }

LABEL_41:
    v25 = v49;
    if (v49)
    {
      v26 = *(*v49 + 24);
      if (v26)
      {
        xmmword_1ED452F18(v26);
        v27 = *(*v25 + 24);
        v16 = v25[130];
        if (v27)
        {
          xmmword_1ED452F28(v27);
        }
      }

      else
      {
        v16 = *(v49 + 130);
      }
    }

    else
    {
      v16 = 0;
    }

    v14 = sub_181929E8C(a1, (16 * v16) | 8u, 0x50040EE9192B6);
    if (!v14)
    {
      goto LABEL_83;
    }

    if (v16)
    {
      v28 = 0;
      do
      {
        v14[v28] = sub_18190C804(v49, v28, 0, 0);
        ++v28;
      }

      while (v16 != v28);
    }

    if (v23 != 100)
    {
LABEL_28:
      if ((callback)(a4, v16, v17, v14))
      {
        v33 = v49;
        if (*(v49 + 267))
        {
          sub_1818A32FC(v49, v19, v20, v21);
        }

        sub_181901AB4(v33, v19, v20, v21);
        v49 = 0;
        v23 = 4;
        *(a1 + 20) = 4;
        sub_181932D5C(a1, 4);
        goto LABEL_83;
      }

      v15 = 1;
LABEL_30:
      if (v23 != 100)
      {
        goto LABEL_59;
      }

      continue;
    }

    break;
  }

  v17 = &v14[v16];
  if (v16 < 1)
  {
    v18 = 0;
LABEL_27:
    v17[v18] = 0;
    goto LABEL_28;
  }

  v29 = 0;
  v18 = v16;
  while (1)
  {
    v30 = sqlite3_column_text(v49, v29);
    v17[v29] = v30;
    if (!v30 && sqlite3_column_type(v49, v29) != 5)
    {
      break;
    }

    if (v16 == ++v29)
    {
      goto LABEL_27;
    }
  }

  if (!*(a1 + 103) && !*(a1 + 104))
  {
    *(a1 + 103) = 1;
    if (*(a1 + 55) >= 1)
    {
      *(a1 + 106) = 1;
    }

    ++*(a1 + 108);
    *(a1 + 218) = 0;
    v34 = *(a1 + 43);
    if (v34)
    {
      sub_181910730(v34, "out of memory");
      v35 = *(a1 + 43);
      *(v35 + 24) = 7;
      for (i = *(v35 + 216); i; i = *(i + 216))
      {
        ++*(i + 52);
        *(i + 24) = 7;
      }
    }
  }

  v23 = 100;
LABEL_83:
  v37 = v49;
  if (v49)
  {
    if (*(v49 + 267))
    {
      sub_1818A32FC(v49, sql, callback, a4);
    }

    sub_181901AB4(v37, sql, callback, a4);
  }

  if (v14)
  {
    sub_181929C84(a1, v14);
  }

  if (v23 || *(a1 + 103))
  {
    v40 = sub_18193C988(a1, v23);
    v38 = v40;
    v39 = errmsg;
    if (!errmsg || !v40)
    {
      goto LABEL_92;
    }

    v41 = sqlite3_errmsg(a1);
    if (v41 && (v42 = v41, v43 = strlen(v41), (v44 = sub_181902484(v43 + 1, 354097263)) != 0))
    {
      v45 = v43 + 1;
      v46 = v44;
      memcpy(v44, v42, v45);
      *errmsg = v46;
    }

    else
    {
      *errmsg = 0;
      v38 = 7;
      *(a1 + 20) = 7;
      sub_181932D5C(a1, 7);
    }
  }

  else
  {
    v38 = 0;
    v39 = errmsg;
LABEL_92:
    if (v39)
    {
      *v39 = 0;
    }
  }

  v47 = *(a1 + 3);
  if (v47)
  {
    xmmword_1ED452F28(v47);
  }

  return v38;
}

uint64_t sub_1818954B4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, void *a6, void *a7)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (!a6)
  {
    v16 = 153354;
LABEL_37:

    return sub_1819012D0(v16);
  }

  if (!a1)
  {
    v15 = "NULL";
    goto LABEL_35;
  }

  v14 = *(a1 + 113);
  if (v14 == 186)
  {
LABEL_10:
    v15 = "unopened";
LABEL_35:
    sqlite3_log(21, "API call with %s database connection pointer", v15);
    goto LABEL_36;
  }

  if (v14 != 118)
  {
    if (v14 != 109)
    {
      v15 = "invalid";
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  if (!a2)
  {
LABEL_36:
    v16 = 153359;
    goto LABEL_37;
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    xmmword_1ED452F18(v17);
  }

  if (!*(a1 + 111))
  {
    sub_181932C40(a1);
  }

  v18 = sub_181895720(a1, a2, a3, a4, a5, a6, a7);
  if (v18)
  {
    v19 = 0;
    while (!*(a1 + 103))
    {
      if (v18 == 17)
      {
        if (!*(a1 + 72))
        {
          v20 = *(a1 + 40);
          if (v20 >= 1)
          {
            v21 = 0;
            v22 = 24;
            do
            {
              v23 = *(*(a1 + 32) + v22);
              if ((*(v23 + 114) & 8) != 0)
              {
                sub_18194116C(v23);
                v20 = *(a1 + 40);
              }

              ++v21;
              v22 += 32;
            }

            while (v21 < v20);
          }
        }

        if (v19)
        {
          v18 = 17;
          break;
        }

        v19 = 1;
      }

      else
      {
        if (v18 != 513)
        {
          break;
        }

        if (v19 >= 25)
        {
          v18 = 513;
          break;
        }

        ++v19;
      }

      v18 = sub_181895720(a1, a2, a3, a4, a5, a6, a7);
      if (!v18)
      {
        break;
      }
    }
  }

  if (!*(a1 + 111))
  {
    v25 = v18;
    sub_181932CD8(a1);
    v18 = v25;
  }

  if (v18 || *(a1 + 103))
  {
    v26 = sub_18193C988(a1, v18);
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 688) = 0;
  v27 = *(a1 + 24);
  if (v27)
  {
    xmmword_1ED452F28(v27);
  }

  return v26;
}

uint64_t sub_181895720(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, void *a6, void *a7)
{
  v9 = a4;
  v10 = a3;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  *v70 = 0u;
  v13 = *(a1 + 344);
  v94 = 0;
  *&v82 = v13;
  *(a1 + 344) = &v68;
  v68 = a1;
  if (a5)
  {
    *&v89 = a5;
    v15 = *(*a5 + 24);
    if (v15)
    {
      xmmword_1ED452F18(v15);
      v16 = *(*a5 + 24);
      v17 = a5[134];
      if (v16)
      {
        xmmword_1ED452F28(v16);
      }
    }

    else
    {
      v17 = *(a5 + 268);
    }

    BYTE5(v87) = (v17 >> 2) & 3;
  }

  if (*(a1 + 103))
  {
    sub_181910730(&v68, "out of memory");
    v18 = 7;
    *(a1 + 80) = 7;
    goto LABEL_135;
  }

  v67 = a6;
  if (v9)
  {
    ++HIBYTE(v70[2]);
    ++*(a1 + 432);
    *(a1 + 436) = 0;
  }

  LOBYTE(v70[3]) = v9;
  if (!*(a1 + 111) && *(a1 + 40) >= 1)
  {
    for (i = 0; i < *(a1 + 40); ++i)
    {
      v29 = *(*(a1 + 32) + 32 * i + 8);
      if (!v29)
      {
        continue;
      }

      if (!*(v29 + 17))
      {
        continue;
      }

      ++*(v29 + 20);
      if (!*(v29 + 18))
      {
        sub_181932DEC(v29);
        if (!*(v29 + 17))
        {
          continue;
        }
      }

      v30 = *(v29 + 8);
      if (*(v30 + 128) == v29 || (*(v30 + 40) & 0x40) == 0)
      {
        v31 = *(v30 + 120);
        if (!v31)
        {
LABEL_40:
          v18 = 0;
          v32 = 1;
          goto LABEL_46;
        }

        while (*v31 == v29 || *(v31 + 8) != 1 || *(v31 + 12) == 1)
        {
          v31 = *(v31 + 16);
          if (!v31)
          {
            goto LABEL_40;
          }
        }
      }

      v32 = 0;
      v18 = 262;
LABEL_46:
      v33 = *(v29 + 20) - 1;
      *(v29 + 20) = v33;
      if (!v33)
      {
        sub_181932ECC(v29);
      }

      if ((v32 & 1) == 0)
      {
        sub_181907EC4(a1, v18, "database schema is locked: %s", *(*(a1 + 32) + 32 * i));
        goto LABEL_135;
      }
    }
  }

  v19 = *(a1 + 608);
  if (v19)
  {
    *(a1 + 608) = 0;
    do
    {
      v20 = *(v19 + 40);
      v21 = *v19;
      v22 = *(v19 + 24) - 1;
      *(v19 + 24) = v22;
      if (!v22)
      {
        v23 = *(v19 + 16);
        v24 = v21;
        if (v23)
        {
          (*(*v23 + 32))(v23);
          v24 = *v19;
        }

        v25 = *(v19 + 8);
        v26 = *(v25 + 16) - 1;
        *(v25 + 16) = v26;
        if (!v26)
        {
          v27 = *(v25 + 32);
          if (v27)
          {
            v27(*(v25 + 24));
          }

          sub_181929C84(v24, v25);
        }

        sub_181929C84(v21, v19);
      }

      v19 = v20;
    }

    while (v20);
  }

  if ((v10 & 0x80000000) != 0 || v10 && !a2[v10 - 1])
  {
    sub_181895EE0(&v68, a2);
  }

  else
  {
    if (*(a1 + 140) < v10)
    {
      sub_181907EC4(a1, 18, "statement too long");
      v18 = sub_18193C988(a1, 0x12u);
      goto LABEL_135;
    }

    if (a2 && (v34 = sub_181929E8C(a1, v10 + 1, 1565185748)) != 0)
    {
      v35 = v34;
      memcpy(v34, a2, v10);
      v35[v10] = 0;
      sub_181895EE0(&v68, v35);
      *(&v89 + 1) = &a2[*(&v89 + 1) - v35];
      sub_181929C84(a1, v35);
    }

    else
    {
      *(&v89 + 1) = &a2[v10];
    }
  }

  if (a7)
  {
    *a7 = *(&v89 + 1);
  }

  if (!*(a1 + 197))
  {
    v36 = *(&v69 + 1);
    if (*(&v69 + 1))
    {
      v37 = DWORD2(v89);
      *(*(&v69 + 1) + 266) = v9;
      if ((v9 & 0x80) == 0)
      {
        *(v36 + 372) = 0;
      }

      if (a2)
      {
        v38 = v37 - a2;
        v39 = sub_181929E8C(*v36, v38 + 1, 1565185748);
        v40 = v39;
        if (v39)
        {
          memcpy(v39, a2, v38);
          *(v40 + v38) = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      *(v36 + 320) = v40;
    }
  }

  if (*(a1 + 103))
  {
    v70[0] = 7;
    BYTE3(v71) &= ~8u;
LABEL_65:
    v41 = *(&v69 + 1);
    if (*(&v69 + 1))
    {
      if (*(*(&v69 + 1) + 267))
      {
        sub_1818A32FC(*(&v69 + 1), a2, a3, a4);
      }

      sub_181901AB4(v41, a2, a3, a4);
    }

    v18 = v70[0];
    if (v69)
    {
      sub_181907EC4(a1, v70[0], "%s", v69);
      v42 = v69;
      if (v69)
      {
        goto LABEL_133;
      }
    }

    else
    {
      *(a1 + 80) = v70[0];
      if (v18 || *(a1 + 416))
      {
        sub_181932D5C(a1, v18);
      }

      else
      {
        v18 = 0;
        *(a1 + 84) = -1;
      }
    }

    goto LABEL_134;
  }

  if (v70[0] && v70[0] != 101)
  {
    if ((BYTE3(v71) & 8) != 0 && !*(a1 + 197))
    {
      v44 = v68;
      if (*(v68 + 40) >= 1)
      {
        v45 = 0;
        while (1)
        {
          v46 = *(v44 + 32) + 32 * v45;
          v47 = *(v46 + 8);
          if (v47)
          {
            v48 = *(v47 + 16);
            if (!*(v47 + 16))
            {
              v49 = sub_181932F08(*(v46 + 8), 0, 0);
              if (v49)
              {
                if (v49 == 3082 || v49 == 7)
                {
                  if (*(v44 + 103) || *(v44 + 104))
                  {
                    goto LABEL_131;
                  }

                  *(v44 + 103) = 1;
                  if (*(v44 + 220) >= 1)
                  {
                    *(v44 + 424) = 1;
                  }

                  ++*(v44 + 432);
                  *(v44 + 436) = 0;
                  v51 = *(v44 + 344);
                  if (!v51 || (sub_181910730(v51, "out of memory"), v52 = *(v44 + 344), *(v52 + 24) = 7, (v53 = *(v52 + 216)) == 0))
                  {
LABEL_131:
                    v70[0] = 7;
                  }

                  else
                  {
                    do
                    {
                      ++*(v53 + 52);
                      *(v53 + 24) = 7;
                      v53 = *(v53 + 216);
                    }

                    while (v53);
                    v70[0] = 7;
                  }
                }

                goto LABEL_65;
              }
            }

            v54 = *(v47 + 8);
            if (*(v47 + 17))
            {
              ++*(v47 + 20);
              if (*(v47 + 18))
              {
                v55 = 0;
              }

              else
              {
                sub_181932DEC(v47);
                v55 = *(v47 + 17) == 0;
              }
            }

            else
            {
              v55 = 1;
            }

            v57 = *(*(*(v54 + 24) + 80) + 40);
            if (!v55)
            {
              v58 = *(v47 + 20) - 1;
              *(v47 + 20) = v58;
              if (!v58)
              {
                sub_181932ECC(v47);
              }
            }

            v59 = *(v44 + 32);
            v60 = *(v59 + 32 * v45 + 24);
            if (bswap32(v57) != *v60)
            {
              v61 = *(v60 + 114);
              if (v61)
              {
                v70[0] = 17;
              }

              *(v60 + 114) = v61 | 8;
              *(*(v59 + 56) + 114) |= 8u;
              *(v44 + 44) &= ~0x10u;
              if (!*(v44 + 72))
              {
                v62 = *(v44 + 40);
                if (v62 >= 1)
                {
                  v63 = 0;
                  v64 = 24;
                  do
                  {
                    v65 = *(*(v44 + 32) + v64);
                    if ((*(v65 + 114) & 8) != 0)
                    {
                      sub_18194116C(v65);
                      v62 = *(v44 + 40);
                    }

                    ++v63;
                    v64 += 32;
                  }

                  while (v63 < v62);
                }
              }
            }

            if (!v48)
            {
              if (*(v47 + 17))
              {
                ++*(v47 + 20);
                if (!*(v47 + 18))
                {
                  sub_181932DEC(v47);
                }
              }

              if (!sub_1818CC964(v47, 0))
              {
                sub_1818CCD6C(v47, 0);
              }

              if (*(v47 + 17))
              {
                v56 = *(v47 + 20) - 1;
                *(v47 + 20) = v56;
                if (!v56)
                {
                  sub_181932ECC(v47);
                }
              }
            }
          }

          if (++v45 >= *(v44 + 40))
          {
            goto LABEL_65;
          }
        }
      }
    }

    goto LABEL_65;
  }

  *v67 = *(&v69 + 1);
  *(a1 + 80) = 0xFFFFFFFF00000000;
  v43 = *(a1 + 416);
  if (v43)
  {
    if ((*(v43 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(v43);
      v18 = 0;
    }

    else
    {
      v18 = 0;
      *(v43 + 20) = 1;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_134:
  while (1)
  {
    v42 = v79;
    if (!v79)
    {
      break;
    }

    *&v79 = *(v79 + 8);
LABEL_133:
    sub_181929C84(a1, v42);
  }

LABEL_135:
  sub_181910CA0(&v68);
  return v18;
}

uint64_t sub_181895EE0(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v60 = 0;
  v4 = *a1;
  memset(v58, 0, 480);
  v5 = *(v4 + 140);
  if (!*(v4 + 208))
  {
    *(v4 + 424) = 0;
  }

  v6 = -1;
  *(a1 + 6) = 0;
  a1[42] = a2;
  v56 = &v59;
  v57 = v58;
  v54 = v58;
  v55 = a1;
  LODWORD(v58[0]) = 0;
  v53 = *(v4 + 344);
  *(v4 + 344) = a1;
  do
  {
    v7 = sub_1818966D0(v2, &v60);
    v5 -= v7;
    if (v5 < 0)
    {
LABEL_109:
      v36 = 18;
LABEL_111:
      *(a1 + 6) = v36;
      ++*(a1 + 13);
      break;
    }

    v10 = v7;
    while (1)
    {
      if (v60 < 165)
      {
        goto LABEL_27;
      }

      if (*(v4 + 424))
      {
        v36 = 9;
        goto LABEL_111;
      }

      if (v60 != 184)
      {
        break;
      }

LABEL_6:
      v2 += v10;
      v10 = sub_1818966D0(v2, &v60);
      v5 -= v10;
      if (v5 < 0)
      {
        goto LABEL_109;
      }
    }

    if (!*v2)
    {
      if (v6 == 1)
      {
        v6 = 0;
        v10 = 0;
      }

      else
      {
        if (!v6)
        {
          break;
        }

        v6 = 1;
        v10 = 0;
      }

      goto LABEL_57;
    }

    if (v60 == 185)
    {
      if (!*(v4 + 197) && (*(v4 + 52) & 0x40) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_6;
    }

    if (v60 > 166)
    {
      if (v60 != 167)
      {
        if (v60 != 183)
        {
LABEL_112:
          v63 = v2;
          v64 = v10;
          sub_181910730(a1, "unrecognized token: %T", &v63);
          break;
        }

LABEL_27:
        v6 = v60;
        goto LABEL_58;
      }

      if (v6 != 23)
      {
        goto LABEL_56;
      }

      v16 = v2 + 6;
      LODWORD(v63) = 0;
      do
      {
        v16 += sub_1818966D0(v16, &v63);
      }

      while (v63 == 184);
      v17 = (v63 - 118) > 0x30 || ((1 << (v63 - 118)) & 0x1800000000003) == 0;
      if (!v17 || v63 == 60 || word_181A211BA[v63] == 60 || v63 != 22)
      {
        goto LABEL_56;
      }

      v6 = 167;
    }

    else
    {
      if (v60 != 165)
      {
        if (v6 == 23)
        {
          v11 = v2 + 4;
          LODWORD(v63) = 0;
          do
          {
            v11 += sub_1818966D0(v11, &v63);
          }

          while (v63 == 184);
          v12 = (v63 - 118) > 0x30 || ((1 << (v63 - 118)) & 0x1800000000003) == 0;
          if (!v12 || v63 == 60 || word_181A211BA[v63] == 60)
          {
            v6 = 166;
          }

          else if (v63 == 22 || v63 == 60)
          {
            v6 = 166;
          }

          else
          {
            v6 = 60;
          }

          goto LABEL_57;
        }

LABEL_56:
        v6 = 60;
        goto LABEL_57;
      }

      v13 = v2 + 6;
      LODWORD(v63) = 0;
      do
      {
        v13 += sub_1818966D0(v13, &v63);
      }

      while (v63 == 184);
      v14 = (v63 - 118) > 0x30 || ((1 << (v63 - 118)) & 0x1800000000003) == 0;
      if (v14 && v63 != 60 && word_181A211BA[v63] != 60)
      {
        goto LABEL_56;
      }

      LODWORD(v63) = 0;
      do
      {
        v13 += sub_1818966D0(v13, &v63);
      }

      while (v63 == 184);
      v15 = (v63 - 118) > 0x30 || ((1 << (v63 - 118)) & 0x1800000000003) == 0;
      if (!v15 || v63 == 60 || word_181A211BA[v63] == 60)
      {
        goto LABEL_56;
      }

      if (v63 == 24)
      {
        v6 = 165;
      }

      else
      {
        v6 = 60;
      }
    }

LABEL_57:
    v60 = v6;
LABEL_58:
    a1[35] = v2;
    *(a1 + 72) = v10;
    v18 = a1[36];
    v61 = 0;
    v62 = 0;
    v19 = v55;
    for (i = *v54; ; i = sub_181896E88(&v54, v28, v2, v18, v19))
    {
      if (i <= 0x24A)
      {
        v21 = word_181A214CA[i];
        v22 = v6;
        do
        {
          v23 = v22;
          v24 = v22;
          v25 = v22 + v21;
          if (word_181A21960[v25] == v24)
          {
            v27 = &word_181A22C14[v25];
            goto LABEL_69;
          }

          v22 = word_181A211BA[v23];
        }

        while (v22);
        if (v23 && (v26 = v21 + 102, word_181A21960[v26] == 102))
        {
          v27 = &word_181A22C14[v26];
        }

        else
        {
          v27 = (&unk_181A23D52 + 2 * i);
        }

LABEL_69:
        i = *v27;
      }

      v28 = i - 1261;
      if (i < 0x4ED)
      {
        break;
      }

      if (!byte_181A21330[v28])
      {
        v29 = v54;
        if (v54 >= v56)
        {
          v30 = v55;
          while (v29 > v57)
          {
            v54 = (v29 - 24);
            sub_1818A2D2C(&v54, *(v29 + 2), (v29 + 8), v9);
            v29 = v54;
          }

LABEL_81:
          sub_181910730(v30, "parser stack overflow");
          v55 = v30;
          goto LABEL_92;
        }
      }
    }

    if (i > 0x4E9)
    {
      if (i == 1259)
      {
        v54 -= 12;
      }

      else
      {
        v61 = v2;
        v62 = v18;
        v63 = v2;
        v64 = v18;
        v33 = v55;
        if (*v2)
        {
          sub_181910730(v55, "near %T: syntax error", &v63);
        }

        else
        {
          sub_181910730(v55, "incomplete input", v52);
        }

        v55 = v33;
        sub_1818A2D2C(&v54, v6, &v61, v34);
      }
    }

    else
    {
      v31 = v54;
      v54 += 12;
      if (v54 > v56)
      {
        v54 = v31;
        v30 = v55;
        while (v31 > v57)
        {
          v54 = (v31 - 24);
          sub_1818A2D2C(&v54, *(v31 + 2), (v31 + 8), v9);
          v31 = v54;
        }

        goto LABEL_81;
      }

      v32 = i + 412;
      if (i <= 0x24A)
      {
        v32 = i;
      }

      *(v31 + 24) = v32;
      *(v31 + 26) = v6;
      *(v31 + 32) = v2;
      *(v31 + 40) = v18;
    }

LABEL_92:
    v2 += v10;
  }

  while (!*(a1 + 6));
  v37 = v54;
  v38 = v57;
  while (v37 > v38)
  {
    v39 = *(v37 + 2);
    if (v39 >= 0xCE)
    {
      sub_1818A2D2C(&v54, v39, (v37 + 8), v9);
      v38 = v57;
    }

    v37 -= 24;
  }

  if (*(v4 + 103))
  {
    *(a1 + 6) = 7;
  }

  v40 = a1[1];
  if (v40)
  {
    if ((*(a1 + 36) & 0x10) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_123;
  }

  v41 = 0;
  v45 = *(a1 + 6);
  if (v45 > 100)
  {
    if (v45 != 101)
    {
      if (v45 != 516)
      {
        goto LABEL_149;
      }

      v46 = "abort due to ROLLBACK";
LABEL_153:
      v40 = sub_1818A8BAC(v4, "%s", v46);
      a1[1] = v40;
      if ((*(a1 + 36) & 0x10) == 0)
      {
LABEL_122:
        sqlite3_log(*(a1 + 6), "%s in %s", v40, a1[42]);
      }

LABEL_123:
      v41 = 1;
    }
  }

  else if (v45)
  {
    if (v45 == 100)
    {
      v46 = "another row available";
      goto LABEL_153;
    }

LABEL_149:
    v51 = *(a1 + 6);
    if (v51 > 0x1C || ((0x1410004uLL >> v51) & 1) != 0)
    {
      v46 = "unknown error";
    }

    else
    {
      v46 = off_1E6A27DD8[v51];
    }

    goto LABEL_153;
  }

  a1[42] = v2;
  v42 = a1[49];
  if (v42)
  {
    v43 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_130;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v42);
    --qword_1ED456A90;
    off_1ED452EB0(v42);
    v42 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v43 = &xmmword_1ED452F28;
LABEL_130:
      (*v43)(v42);
    }
  }

  v44 = a1[43];
  if (v44)
  {
    if (!*(a1 + 302))
    {
      if (*(v4 + 824) || (v47 = *(v44 + 44) - 1, (*(v44 + 44) = v47) == 0))
      {
        sub_18194E094(v4, v44, v8, v9);
      }
    }
  }

  v48 = a1[45];
  if (v48 && *(a1 + 302) <= 1u)
  {
    sub_1818A313C(v4, v48, v8, v9);
  }

  v49 = a1[40];
  if (v49)
  {
    sub_181939EC8(v4, v49);
  }

  *(v4 + 344) = v53;
  return v41;
}

uint64_t sub_1818966D0(unsigned __int8 *a1, int *a2)
{
  v2 = *a1;
  v3 = 1;
  switch(*a1)
  {
    case 0uLL:
      i = 0;
      v13 = 186;
      goto LABEL_61;
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0x20uLL:
      i = 0;
      do
      {
        v27 = byte_181A204C8[a1[++i]];
      }

      while ((v27 & 1) != 0);
      v12 = 184;
      goto LABEL_123;
    case 0x21uLL:
      if (a1[1] == 61)
      {
        goto LABEL_84;
      }

      goto LABEL_85;
    case 0x22uLL:
    case 0x27uLL:
    case 0x60uLL:
      v25 = a1[1];
      if (!a1[1])
      {
        v26 = 1;
LABEL_114:
        *a2 = 186;
        return v26;
      }

      LODWORD(i) = 1;
      while (1)
      {
        if (v25 == v2)
        {
          i = i + 1;
          if (a1[i] != v2)
          {
            break;
          }
        }

        v26 = i + 1;
        v25 = a1[v26];
        LODWORD(i) = i + 1;
        if (!a1[v26])
        {
          goto LABEL_114;
        }
      }

      if (v2 != 39)
      {
        goto LABEL_60;
      }

      v13 = 118;
      goto LABEL_61;
    case 0x23uLL:
    case 0x24uLL:
    case 0x3AuLL:
    case 0x40uLL:
      *a2 = 157;
      v4 = a1[1];
      if (!a1[1])
      {
        v6 = 1;
LABEL_102:
        *a2 = 186;
        return v6;
      }

      v5 = 0;
      v6 = 1;
      break;
    case 0x25uLL:
      v9 = 111;
      goto LABEL_127;
    case 0x26uLL:
      v9 = 103;
      goto LABEL_127;
    case 0x28uLL:
      v9 = 22;
      goto LABEL_127;
    case 0x29uLL:
      v9 = 23;
      goto LABEL_127;
    case 0x2AuLL:
      v9 = 109;
      goto LABEL_127;
    case 0x2BuLL:
      v9 = 107;
      goto LABEL_127;
    case 0x2CuLL:
      v9 = 25;
      goto LABEL_127;
    case 0x2DuLL:
      v14 = a1[1];
      if (v14 == 62)
      {
        *a2 = 113;
        if (a1[2] == 62)
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }

      if (v14 != 45)
      {
        v9 = 108;
        goto LABEL_127;
      }

      for (i = 2; ; ++i)
      {
        v15 = !a1[i] || a1[i] == 10;
        if (v15)
        {
          break;
        }
      }

      v12 = 185;
      goto LABEL_123;
    case 0x2EuLL:
      if (a1[1] - 58 > 0xFFFFFFFFFFFFFFF5)
      {
        goto LABEL_89;
      }

      v9 = 142;
      goto LABEL_127;
    case 0x2FuLL:
      if (a1[1] != 42 || !a1[2])
      {
        v9 = 110;
        goto LABEL_127;
      }

      v28 = a1[3];
      if (a1[2] == 42 && v28 == 47)
      {
        i = 4;
        v13 = 185;
        goto LABEL_61;
      }

      v44 = a1 + 4;
      i = 3;
      while (1)
      {
        if (!v28)
        {
          goto LABEL_149;
        }

        v46 = *v44++;
        v45 = v46;
        i = (i + 1);
        v15 = v28 == 42;
        v28 = v46;
        if (v15)
        {
          v28 = v45;
          if (v45 == 47)
          {
            break;
          }
        }
      }

      i = (i + 1);
LABEL_149:
      v13 = 185;
LABEL_61:
      *a2 = v13;
      return i;
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
LABEL_89:
      *a2 = 156;
      v29 = *a1;
      if (v29 == 48 && (a1[1] | 0x20) == 0x78 && (byte_181A204C8[a1[2]] & 8) != 0)
      {
        for (i = 3; ; ++i)
        {
          v38 = a1[i];
          if ((byte_181A204C8[v38] & 8) == 0)
          {
            if (v38 != 95)
            {
              goto LABEL_159;
            }

            *a2 = 183;
          }
        }
      }

      i = 0;
      v30 = 156;
      while (2)
      {
        if (v29 - 58 > 0xFFFFFFFFFFFFFFF5)
        {
          goto LABEL_93;
        }

        if (v29 == 95)
        {
          v30 = 183;
          *a2 = 183;
LABEL_93:
          v29 = a1[++i];
          continue;
        }

        break;
      }

      if (v29 != 46)
      {
        goto LABEL_154;
      }

      if (v30 != 156)
      {
        goto LABEL_152;
      }

      v31 = 154;
      do
      {
        *a2 = v31;
        v30 = v31;
        do
        {
LABEL_152:
          v47 = a1[++i];
        }

        while ((v47 - 58) > 0xFFFFFFFFFFFFFFF5);
        v31 = 183;
      }

      while (v47 == 95);
LABEL_154:
      v48 = &a1[i];
      if ((*v48 | 0x20) != 0x65)
      {
        goto LABEL_159;
      }

      v49 = v48[1];
      if ((v49 - 58) <= 0xFFFFFFFFFFFFFFF5 && (v49 != 45 && v49 != 43 || v48[2] - 58 < 0xFFFFFFFFFFFFFFF6))
      {
        goto LABEL_159;
      }

      if (v30 == 156)
      {
        *a2 = 154;
      }

      i = ((i << 32) + 0x200000000) >> 32;
      while (2)
      {
        v52 = a1[i];
        if ((v52 - 58) > 0xFFFFFFFFFFFFFFF5)
        {
          goto LABEL_166;
        }

        if (v52 == 95)
        {
          *a2 = 183;
LABEL_166:
          ++i;
          continue;
        }

        break;
      }

LABEL_159:
      if ((byte_181A204C8[a1[i]] & 0x46) != 0)
      {
        v50 = &a1[i + 1];
        do
        {
          *a2 = 186;
          v51 = *v50++;
          i = (i + 1);
        }

        while ((byte_181A204C8[v51] & 0x46) != 0);
      }

      return i;
    case 0x3BuLL:
      i = 1;
      *a2 = 1;
      return i;
    case 0x3CuLL:
      v10 = a1[1];
      switch(v10)
      {
        case '<':
          v11 = 105;
          goto LABEL_125;
        case '>':
LABEL_84:
          v11 = 53;
          goto LABEL_125;
        case '=':
          v11 = 56;
          goto LABEL_125;
      }

      v9 = 57;
      goto LABEL_127;
    case 0x3DuLL:
      *a2 = 54;
      if (a1[1] == 61)
      {
        return 2;
      }

      else
      {
        return 1;
      }

    case 0x3EuLL:
      v24 = a1[1];
      if (v24 == 62)
      {
        v11 = 106;
        goto LABEL_125;
      }

      if (v24 == 61)
      {
        v11 = 58;
        goto LABEL_125;
      }

      v9 = 55;
      goto LABEL_127;
    case 0x3FuLL:
      i = 0;
      *a2 = 157;
      do
      {
        v21 = a1[++i] - 58;
      }

      while (v21 >= 0xFFFFFFFFFFFFFFF6);
      return i;
    case 0x41uLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x44uLL:
    case 0x45uLL:
    case 0x46uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4AuLL:
    case 0x4BuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x50uLL:
    case 0x51uLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x63uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
    case 0x77uLL:
      if (byte_181A210BA[a1[1]] > 2u)
      {
        goto LABEL_57;
      }

      v33 = a1 + 2;
      v34 = 0x200000000;
      LODWORD(i) = 1;
      do
      {
        v36 = *v33++;
        v35 = v36;
        v34 += 0x100000000;
        i = (i + 1);
      }

      while (byte_181A210BA[v36] < 3u);
      if ((byte_181A204C8[v35] & 0x46) != 0)
      {
        v3 = v34 >> 32;
        goto LABEL_58;
      }

      *a2 = 60;
      sub_18194EBC8(a1, i, a2);
      return i;
    case 0x58uLL:
    case 0x78uLL:
    case 0x100uLL:
    case 0x101uLL:
    case 0x102uLL:
    case 0x103uLL:
      if (a1[1] != 39)
      {
        goto LABEL_57;
      }

      *a2 = 155;
      v16 = 2;
      do
      {
        v17 = a1[v16++];
      }

      while ((byte_181A204C8[v17] & 8) != 0);
      v18 = v16 - 1;
      if (v17 != 39 || (v18 & 1) != 0)
      {
        *a2 = 186;
        for (j = a1[v18]; a1[v18]; j = a1[v18])
        {
          if (j == 39)
          {
            break;
          }

          ++v18;
        }
      }

      if (a1[v18])
      {
        return (v18 + 1);
      }

      else
      {
        return v18;
      }

    case 0x59uLL:
    case 0x5AuLL:
    case 0x5FuLL:
    case 0x79uLL:
    case 0x7AuLL:
    case 0x80uLL:
    case 0x81uLL:
    case 0x82uLL:
    case 0x83uLL:
    case 0x84uLL:
    case 0x85uLL:
    case 0x86uLL:
    case 0x87uLL:
    case 0x88uLL:
    case 0x89uLL:
    case 0x8AuLL:
    case 0x8BuLL:
    case 0x8CuLL:
    case 0x8DuLL:
    case 0x8EuLL:
    case 0x8FuLL:
    case 0x90uLL:
    case 0x91uLL:
    case 0x92uLL:
    case 0x93uLL:
    case 0x94uLL:
    case 0x95uLL:
    case 0x96uLL:
    case 0x97uLL:
    case 0x98uLL:
    case 0x99uLL:
    case 0x9AuLL:
    case 0x9BuLL:
    case 0x9CuLL:
    case 0x9DuLL:
    case 0x9EuLL:
    case 0x9FuLL:
    case 0xA0uLL:
    case 0xA1uLL:
    case 0xA2uLL:
    case 0xA3uLL:
    case 0xA4uLL:
    case 0xA5uLL:
    case 0xA6uLL:
    case 0xA7uLL:
    case 0xA8uLL:
    case 0xA9uLL:
    case 0xAAuLL:
    case 0xABuLL:
    case 0xACuLL:
    case 0xADuLL:
    case 0xAEuLL:
    case 0xAFuLL:
    case 0xB0uLL:
    case 0xB1uLL:
    case 0xB2uLL:
    case 0xB3uLL:
    case 0xB4uLL:
    case 0xB5uLL:
    case 0xB6uLL:
    case 0xB7uLL:
    case 0xB8uLL:
    case 0xB9uLL:
    case 0xBAuLL:
    case 0xBBuLL:
    case 0xBCuLL:
    case 0xBDuLL:
    case 0xBEuLL:
    case 0xBFuLL:
    case 0xC0uLL:
    case 0xC1uLL:
    case 0xC2uLL:
    case 0xC3uLL:
    case 0xC4uLL:
    case 0xC5uLL:
    case 0xC6uLL:
    case 0xC7uLL:
    case 0xC8uLL:
    case 0xC9uLL:
    case 0xCAuLL:
    case 0xCBuLL:
    case 0xCCuLL:
    case 0xCDuLL:
    case 0xCEuLL:
    case 0xCFuLL:
    case 0xD0uLL:
    case 0xD1uLL:
    case 0xD2uLL:
    case 0xD3uLL:
    case 0xD4uLL:
    case 0xD5uLL:
    case 0xD6uLL:
    case 0xD7uLL:
    case 0xD8uLL:
    case 0xD9uLL:
    case 0xDAuLL:
    case 0xDBuLL:
    case 0xDCuLL:
    case 0xDDuLL:
    case 0xDEuLL:
    case 0xDFuLL:
    case 0xE0uLL:
    case 0xE1uLL:
    case 0xE2uLL:
    case 0xE3uLL:
    case 0xE4uLL:
    case 0xE5uLL:
    case 0xE6uLL:
    case 0xE7uLL:
    case 0xE8uLL:
    case 0xE9uLL:
    case 0xEAuLL:
    case 0xEBuLL:
    case 0xECuLL:
    case 0xEDuLL:
    case 0xEEuLL:
    case 0xF0uLL:
    case 0xF1uLL:
    case 0xF2uLL:
    case 0xF3uLL:
    case 0xF4uLL:
    case 0xF5uLL:
    case 0xF6uLL:
    case 0xF7uLL:
    case 0xF8uLL:
    case 0xF9uLL:
    case 0xFAuLL:
    case 0xFBuLL:
    case 0xFCuLL:
    case 0xFDuLL:
    case 0xFEuLL:
    case 0xFFuLL:
      goto LABEL_58;
    case 0x5BuLL:
      if (v2 == 93)
      {
        v12 = 60;
        i = 1;
        goto LABEL_123;
      }

      i = 1;
      while (1)
      {
        v32 = a1[i];
        if (!a1[i])
        {
          break;
        }

        ++i;
        if (v32 == 93)
        {
          v12 = 60;
LABEL_123:
          *a2 = v12;
          return i;
        }
      }

      v12 = 186;
      goto LABEL_123;
    case 0x7CuLL:
      if (a1[1] == 124)
      {
        v11 = 112;
LABEL_125:
        *a2 = v11;
        return 2;
      }

      else
      {
        v9 = 104;
LABEL_127:
        *a2 = v9;
        return 1;
      }

    case 0x7EuLL:
      v9 = 115;
      goto LABEL_127;
    case 0xEFuLL:
      if (a1[1] == 187 && a1[2] == 191)
      {
        *a2 = 184;
        return 3;
      }

LABEL_57:
      v3 = 1;
LABEL_58:
      LODWORD(i) = v3 - 1;
      v22 = &a1[v3];
      do
      {
        v23 = *v22++;
        i = (i + 1);
      }

      while ((byte_181A204C8[v23] & 0x46) != 0);
LABEL_60:
      v13 = 60;
      goto LABEL_61;
    default:
LABEL_85:
      v9 = 186;
      goto LABEL_127;
  }

  while (1)
  {
    if ((byte_181A204C8[v4] & 0x46) != 0)
    {
      ++v5;
      LODWORD(v7) = v6;
      goto LABEL_5;
    }

    if (v4 == 40 && v5 >= 1)
    {
      break;
    }

    if (v4 != 58 || (v7 = v6 + 1, a1[v7] != 58))
    {
LABEL_11:
      i = v6;
      if (v5)
      {
        return i;
      }

      goto LABEL_102;
    }

LABEL_5:
    v6 = v7 + 1;
    v4 = a1[v6];
    if (!a1[v6])
    {
      goto LABEL_11;
    }
  }

  i = (v6 + 1);
  v39 = &a1[v6 + 1];
  while (1)
  {
    v40 = i;
    v42 = *v39++;
    v41 = v42;
    if (!v42)
    {
      break;
    }

    i = (i + 1);
    if (v41 == 41 || (byte_181A204C8[v41] & 1) != 0)
    {
      if (v41 == 41)
      {
        return i;
      }

      break;
    }
  }

  *a2 = 186;
  return v40;
}

uint64_t sub_181896E88(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  switch(a2)
  {
    case 0u:
      if (!a5[41])
      {
        *(a5 + 301) = 1;
      }

      goto LABEL_457;
    case 1u:
      if (!a5[41])
      {
        *(a5 + 301) = 2;
      }

      goto LABEL_457;
    case 2u:
      sub_1818A20D4(a5);
      goto LABEL_457;
    case 3u:
      sub_1818D14E4(a5, *(v7 - 16));
      goto LABEL_457;
    case 4u:
      *(v7 + 32) = 7;
      goto LABEL_457;
    case 5u:
    case 6u:
    case 7u:
    case 0x59u:
    case 0x5Bu:
    case 0x144u:
      *(v7 + 8) = *(v7 + 2);
      goto LABEL_457;
    case 8u:
    case 9u:
      sub_18194ECE0(a5, *(v7 - 22));
      goto LABEL_457;
    case 0xAu:
      sub_18194EE20(a5, 0, v7 + 8);
      goto LABEL_457;
    case 0xBu:
      sub_18194EE20(a5, 1, v7 + 8);
      goto LABEL_457;
    case 0xCu:
      sub_18194EE20(a5, 2, v7 + 8);
      goto LABEL_457;
    case 0xDu:
      sub_18189FE3C(a5, (v7 - 16), v7 + 8, *(v7 - 88), 0, 0, *(v7 - 40));
      goto LABEL_457;
    case 0xEu:
      v203 = *a5;
      ++*(a5 + 35);
      *(a5 + 31) = 0u;
      *(a5 + 33) = 0u;
      ++*(v203 + 432);
      *(v203 + 436) = 0;
      goto LABEL_457;
    case 0xFu:
    case 0x12u:
    case 0x15u:
    case 0x2Fu:
    case 0x31u:
    case 0x3Eu:
    case 0x48u:
    case 0x51u:
    case 0x64u:
    case 0xF6u:
      *(v7 + 32) = 0;
      goto LABEL_457;
    case 0x10u:
      *(v7 - 40) = 1;
      goto LABEL_457;
    case 0x11u:
      *(v7 + 8) = *(*a5 + 197) == 0;
      goto LABEL_457;
    case 0x13u:
      sub_1818A0FFC(a5, (v7 - 40), v7 - 16, *(v7 + 8), 0);
      goto LABEL_457;
    case 0x14u:
      v46 = a5;
      sub_1818A0FFC(a5, 0, 0, 0, *(v7 + 8));
      v48 = *(v7 + 8);
      if (v48)
      {
        v49 = *v46;
        goto LABEL_229;
      }

      goto LABEL_457;
    case 0x16u:
      *(v7 - 40) |= *(v7 + 8);
      goto LABEL_457;
    case 0x17u:
      if (*(v7 + 16) != 5)
      {
        goto LABEL_379;
      }

      v237 = a5;
      if (sqlite3_strnicmp(*(v7 + 8), "rowid", 5))
      {
        a5 = v237;
LABEL_379:
        *(v7 - 16) = 0;
        sub_181910730(a5, "unknown table option: %.*s", a3, a4);
      }

      else
      {
        *(v7 - 16) = 640;
      }

      goto LABEL_457;
    case 0x18u:
      v234 = *(v7 + 16);
      if (v234 != 6)
      {
        goto LABEL_364;
      }

      v235 = a5;
      if (sqlite3_strnicmp(*(v7 + 8), "strict", 6))
      {
        v234 = *(v7 + 16);
        a5 = v235;
LABEL_364:
        sub_181910730(a5, "unknown table option: %.*s", v234, *(v7 + 8));
        *(v7 + 8) = 0;
      }

      else
      {
        *(v7 + 8) = 0x10000;
      }

      goto LABEL_457;
    case 0x19u:
      sub_1818A0620(a5, *(v7 - 16), *(v7 - 8), *(v7 + 8), *(v7 + 16));
      goto LABEL_457;
    case 0x1Au:
    case 0x41u:
    case 0x6Au:
      *(v7 + 40) = 0;
      *(v7 + 32) = 0;
      goto LABEL_457;
    case 0x1Bu:
      *(v7 - 56) = *(v7 + 8) + *(v7 + 16) - *(v7 - 64);
      goto LABEL_457;
    case 0x1Cu:
      *(v7 - 104) = *(v7 + 8) + *(v7 + 16) - *(v7 - 112);
      goto LABEL_457;
    case 0x1Du:
      *(v7 - 8) = *(v7 + 16) + *(v7 + 8) - *(v7 - 16);
      goto LABEL_457;
    case 0x1Eu:
      *(v7 + 32) = a3;
      goto LABEL_457;
    case 0x1Fu:
      *(v7 + 32) = a3;
      *(v7 + 40) = a4;
      goto LABEL_457;
    case 0x20u:
    case 0x43u:
      *(a5 + 33) = *(v7 + 8);
      goto LABEL_457;
    case 0x21u:
      v50 = *(v7 + 8);
      v51 = *(v7 - 16);
      LODWORD(v52) = v51 + *(v7 - 8);
      goto LABEL_356;
    case 0x22u:
      v50 = *(v7 - 16);
      v52 = *(v7 + 8);
      v51 = (*(v7 - 40) + 1);
      goto LABEL_356;
    case 0x23u:
      v50 = *(v7 + 8);
      v51 = *(v7 - 40);
      v52 = *(v7 - 16) + *(v7 - 8);
LABEL_356:
      sub_1818C7B4C(a5, v50, v51, v52);
      goto LABEL_457;
    case 0x24u:
      v131 = a5;
      v132 = sub_18194F098(a5, 174, *(v7 + 8), 0);
      sub_1818C7B4C(v131, v132, *(v7 - 40), *(v7 - 16) + *(v7 - 8));
      goto LABEL_457;
    case 0x25u:
      v32 = a5;
      v33 = sub_18194F1D8(a5, 118, *(v7 + 8), *(v7 + 16));
      v34 = v33;
      if (v33)
      {
        sub_18194F370(v33);
      }

      sub_1818C7B4C(v32, v34, *(v7 + 8), *(v7 + 8) + *(v7 + 16));
      goto LABEL_457;
    case 0x26u:
      sub_18194F428(a5, *(v7 + 8));
      goto LABEL_457;
    case 0x27u:
      sub_1818C7678(a5, 0, *(v7 - 16), *(v7 + 8), *(v7 - 40));
      goto LABEL_457;
    case 0x28u:
      sub_1818C8730(a5, 0, 0, 0, 0, *(v7 + 8), 0, 0, 0, 0, 1u);
      goto LABEL_457;
    case 0x29u:
      v81 = *(v7 - 16);
      v82 = *(v7 - 40);
      v83 = *(v7 + 8);
      goto LABEL_384;
    case 0x2Au:
      sub_1818DE9E4(a5, 0, v7 - 40, *(v7 - 16), *(v7 + 8));
      goto LABEL_457;
    case 0x2Bu:
      v23 = a5[43];
      if (v23)
      {
        goto LABEL_368;
      }

      goto LABEL_457;
    case 0x2Cu:
      sub_18194F630(a5, v7 + 8);
      goto LABEL_457;
    case 0x2Du:
      sub_18194F814(a5, *(v7 - 16), 0);
      goto LABEL_457;
    case 0x2Eu:
      sub_18194F814(a5, *(v7 - 40), (v7 + 8));
      goto LABEL_457;
    case 0x30u:
    case 0x62u:
    case 0x7Cu:
    case 0x8Bu:
      *(v7 + 8) = 1;
      goto LABEL_457;
    case 0x32u:
      *(v7 - 16) = *(v7 - 16) & ~*(v7 + 12) | *(v7 + 8);
      goto LABEL_457;
    case 0x33u:
      *(v7 - 16) = 0;
      goto LABEL_457;
    case 0x34u:
      *(v7 - 40) = 0;
      goto LABEL_457;
    case 0x35u:
      v25 = *(v7 + 8);
      v26 = 255;
      goto LABEL_96;
    case 0x36u:
      v25 = *(v7 + 8) << 8;
      v26 = 65280;
LABEL_96:
      *(v7 - 40) = v25;
      *(v7 - 36) = v26;
      goto LABEL_457;
    case 0x37u:
      *(v7 - 16) = 8;
      goto LABEL_457;
    case 0x38u:
      *(v7 - 16) = 9;
      goto LABEL_457;
    case 0x39u:
      *(v7 + 8) = 10;
      goto LABEL_457;
    case 0x3Au:
      *(v7 + 8) = 7;
      goto LABEL_457;
    case 0x3Bu:
    case 0x40u:
      *(v7 - 16) = 0;
      goto LABEL_457;
    case 0x3Cu:
      *(v7 - 40) = 0;
      goto LABEL_457;
    case 0x3Du:
    case 0x4Cu:
    case 0xADu:
      *(v7 - 16) = *(v7 + 8);
      goto LABEL_457;
    case 0x3Fu:
    case 0x50u:
    case 0x8Eu:
    case 0xDBu:
    case 0xDEu:
    case 0xF7u:
      *(v7 - 16) = 1;
      goto LABEL_457;
    case 0x42u:
      *(a5 + 68) = 0;
      goto LABEL_457;
    case 0x44u:
      sub_1818C7678(a5, *(v7 - 64), *(v7 + 8), *(v7 - 40), 0);
      goto LABEL_457;
    case 0x45u:
      sub_1818C8730(a5, 0, 0, 0, *(v7 - 40), *(v7 + 8), 0, 0, 0, 0, 1u);
      goto LABEL_457;
    case 0x46u:
      v81 = *(v7 - 40);
      v82 = *(v7 - 64);
      v83 = *(v7 - 16);
LABEL_384:
      sub_18194F4A4(a5, v81, v82, v83);
      goto LABEL_457;
    case 0x47u:
      v22 = a5;
      sub_1818DE9E4(a5, *(v7 - 136), v7 - 64, *(v7 - 40), *(v7 - 16));
      v23 = v22[43];
      if (v23)
      {
LABEL_368:
        if (!*(v23 + 63))
        {
          v236 = *(v23 + 72);
          if (v236)
          {
            *(v236 + 44) = *(v7 + 8);
          }
        }
      }

      goto LABEL_457;
    case 0x49u:
    case 0x4Bu:
      *(v7 + 32) = 11;
      goto LABEL_457;
    case 0x4Au:
      *(v7 - 40) = *(v7 + 8);
      goto LABEL_457;
    case 0x4Du:
      *(v7 + 8) = 4;
      goto LABEL_457;
    case 0x4Eu:
    case 0xAEu:
      *(v7 + 8) = 5;
      goto LABEL_457;
    case 0x4Fu:
      sub_1818F9A50(a5, *(v7 + 8), 0, *(v7 - 16));
      goto LABEL_457;
    case 0x52u:
      sub_18194FC6C(a5, (v7 - 184), (v7 - 88), v7 - 64, *(v7 - 40), *(v7 + 8), *(v7 - 160), *(v7 - 112));
      goto LABEL_457;
    case 0x53u:
      sub_1818F9A50(a5, *(v7 + 8), 1, *(v7 - 16));
      goto LABEL_457;
    case 0x54u:
      v265 = 0;
      memset(v264, 0, sizeof(v264));
      LOBYTE(v264[0]) = 9;
      if ((*(*a5 + 44) & 0x40) != 0 || (v158 = a5, v159 = sub_18194D060(a5), a5 = v158, !v159))
      {
        v160 = a5;
        sub_1818A9A10(a5, *(v7 + 8), v264);
        a5 = v160;
      }

      v48 = *(v7 + 8);
      if (v48)
      {
        v49 = *a5;
LABEL_229:
        sub_1818BB408(v49, v48, 1, v47);
      }

      goto LABEL_457;
    case 0x55u:
      v24 = *(v7 + 8);
      sub_181950008(a5, v24, *(v7 - 16), a4);
      *(v7 - 40) = v24;
      goto LABEL_457;
    case 0x56u:
      v238 = *(v7 + 8);
      sub_181950008(a5, v238, *(v7 - 16), a4);
      *(v7 - 64) = v238;
      goto LABEL_457;
    case 0x57u:
      v44 = *(v7 + 8);
      if (v44)
      {
        sub_1819500CC(a5, v44);
      }

      goto LABEL_457;
    case 0x58u:
      v56 = *(v7 + 8);
      v57 = *(v7 - 40);
      if (v56 && (!*(v56 + 80) || (v264[0] = 0uLL, v58 = a5, sub_1819500CC(a5, v56), v59 = sub_1818A8FB4(v58, 0, 0, 0, v264, v56, 0), v60 = sub_1818A9824(v58, 0, v59, 0, 0, 0, 0, 0, 0), a5 = v58, (v56 = v60) != 0)))
      {
        *v56 = *(v7 - 16);
        *(v56 + 80) = v57;
        if (v57)
        {
          *(v57 + 4) &= ~0x400u;
        }

        *(v56 + 4) &= ~0x400u;
        if (*(v7 - 16) != 136)
        {
          *(a5 + 34) = 1;
          *(v7 - 40) = v56;
          goto LABEL_457;
        }
      }

      else
      {
        if (v57)
        {
          sub_1818BB408(*a5, v57, 1, a4);
        }

        v56 = 0;
      }

      *(v7 - 40) = v56;
      goto LABEL_457;
    case 0x5Au:
      *(v7 - 16) = 136;
      goto LABEL_457;
    case 0x5Cu:
      *(v7 - 184) = sub_1818A9824(a5, *(v7 - 136), *(v7 - 112), *(v7 - 88), *(v7 - 64), *(v7 - 40), *(v7 - 16), *(v7 - 160), *(v7 + 8));
      goto LABEL_457;
    case 0x5Du:
      v223 = a5;
      v224 = sub_1818A9824(a5, *(v7 - 160), *(v7 - 136), *(v7 - 112), *(v7 - 88), *(v7 - 64), *(v7 - 16), *(v7 - 184), *(v7 + 8));
      *(v7 - 208) = v224;
      if (v224)
      {
        *(v224 + 15) = *(v7 - 40);
      }

      else
      {
        v246 = *(v7 - 40);
        if (v246)
        {
          v247 = *v223;
          do
          {
            v248 = v246[8];
            sub_181943B0C(v247, v246);
            v246 = v248;
          }

          while (v248);
        }
      }

      goto LABEL_457;
    case 0x5Eu:
      *(v7 - 64) = sub_1818A9824(a5, *(v7 - 16), 0, 0, 0, 0, 0, 512, 0);
      goto LABEL_457;
    case 0x5Fu:
      sub_1819501F4(a5, *(v7 + 8));
      goto LABEL_457;
    case 0x60u:
    case 0x61u:
      v15 = sub_1819502E4(a5, *(v7 - 88), *(v7 - 16));
      goto LABEL_456;
    case 0x63u:
      *(v7 + 8) = 2;
      goto LABEL_457;
    case 0x65u:
    case 0x6Bu:
    case 0x6Eu:
    case 0x86u:
    case 0x90u:
    case 0xEAu:
    case 0xEDu:
    case 0xF2u:
      *(v7 + 32) = 0;
      goto LABEL_457;
    case 0x66u:
      v65 = a5;
      v66 = sub_1818A8F6C(a5, *(v7 - 88), *(v7 - 40));
      *(v7 - 88) = v66;
      if (*(v7 + 16))
      {
        sub_1819507A4(v65, v66, v7 + 8, 1);
        v66 = *(v7 - 88);
      }

      sub_18195092C(v65, v66, *(v7 - 64), *(v7 - 16));
      goto LABEL_457;
    case 0x67u:
      v53 = *a5;
      v264[0] = 0uLL;
      v54 = a5;
      v55 = sub_1818A8CF0(v53, 180, v264, 0);
      if (v55 && (*(v55 + 4) & 3) == 0)
      {
        *(v55 + 14) = *(v7 + 8) - *(v54 + 84);
      }

      *(v7 - 40) = sub_1818A8F6C(v54, *(v7 - 40), v55);
      goto LABEL_457;
    case 0x68u:
      v27 = a5;
      v28 = sub_18194F098(a5, 180, 0, 0);
      v29 = v28;
      if (v28 && (*(v28 + 4) & 3) == 0)
      {
        *(v28 + 14) = *(v7 + 8) - *(v27 + 84);
      }

      v30 = sub_18194F1D8(v27, 60, *(v7 - 40), *(v7 - 32));
      v31 = sub_18194F098(v27, 142, v30, v29);
      v15 = sub_1818A8F6C(v27, *(v7 - 88), v31);
      goto LABEL_456;
    case 0x69u:
    case 0x75u:
    case 0x102u:
    case 0x103u:
      *(v7 - 16) = *(v7 + 8);
      goto LABEL_457;
    case 0x6Cu:
      v45 = *(v7 + 8);
      *(v7 - 16) = v45;
      sub_181950A70(v45);
      goto LABEL_457;
    case 0x6Du:
      v204 = *(v7 - 16);
      if (v204 && *v204 >= 1)
      {
        LOBYTE(v204[18 * (*v204 - 1) + 8]) = *(v7 + 8);
      }

      goto LABEL_457;
    case 0x6Fu:
      v15 = sub_1818A8FB4(a5, *(v7 - 88), (v7 - 64), (v7 - 40), v7 - 16, 0, (v7 + 8));
      goto LABEL_456;
    case 0x70u:
      v74 = a5;
      v75 = sub_1818A8FB4(a5, *(v7 - 112), (v7 - 88), (v7 - 64), v7 - 40, 0, (v7 + 8));
      *(v7 - 112) = v75;
      sub_181950BE8(v74, v75, v7 - 16);
      goto LABEL_457;
    case 0x71u:
      v225 = a5;
      v226 = sub_1818A8FB4(a5, *(v7 - 160), (v7 - 136), (v7 - 112), v7 - 16, 0, (v7 + 8));
      *(v7 - 160) = v226;
      sub_181950CF4(v225, v226, *(v7 - 64));
      goto LABEL_457;
    case 0x72u:
      v227 = *(v7 - 112);
      v228 = *(v7 - 64);
      v229 = (v7 + 8);
      v230 = a5;
      v231 = v7 - 16;
      goto LABEL_394;
    case 0x73u:
      v35 = *(v7 - 112);
      if (v35 || *(v7 - 8) || *(v7 + 8) || *(v7 + 16))
      {
        v36 = *(v7 - 64);
        if (v36 && *v36 == 1)
        {
          v37 = a5;
          v38 = sub_1818A8FB4(a5, v35, 0, 0, v7 - 16, 0, (v7 + 8));
          *(v7 - 112) = v38;
          if (v38)
          {
            v41 = *(v7 - 64);
            v42 = &v38[18 * *v38];
            *(v42 - 8) = *(v41 + 8);
            v43 = v42 - 16;
            if ((*(v41 + 33) & 4) != 0)
            {
              *(v43 + 25) |= 4u;
              *(v43 + 8) = *(v41 + 72);
              *(v41 + 72) = 0;
              *(v41 + 33) &= ~4u;
              if ((*(**(v43 + 8) + 5) & 8) != 0)
              {
                *(v43 + 25) |= 0x4000u;
              }
            }

            else
            {
              *(v43 + 8) = *(v41 + 72);
              *(v41 + 72) = 0;
            }

            if ((*(v41 + 33) & 8) != 0)
            {
              *(v43 + 5) = *(v41 + 48);
              *(v41 + 48) = 0;
              *(v41 + 33) &= ~8u;
              *(v43 + 25) |= 8u;
            }

            *(v41 + 8) = 0;
          }

          sub_1818BB5B0(*v37, *(v7 - 64), v39, v40);
        }

        else
        {
          v239 = a5;
          sub_181950A70(v36);
          v228 = sub_1818A9824(v239, 0, *(v7 - 64), 0, 0, 0, 0, 2048, 0);
          v227 = *(v7 - 112);
          v231 = v7 - 16;
          v229 = (v7 + 8);
          v230 = v239;
LABEL_394:
          *(v7 - 112) = sub_1818A8FB4(v230, v227, 0, 0, v231, v228, v229);
        }
      }

      else
      {
        *(v7 - 112) = *(v7 - 64);
      }

      goto LABEL_457;
    case 0x74u:
    case 0x83u:
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      goto LABEL_457;
    case 0x76u:
      v102 = a5;
      v103 = sub_1818A930C(a5, 0, v7 + 8, 0);
      v104 = v102;
      v105 = v103;
      if (*(v104 + 302) >= 2u && v103 != 0)
      {
        sub_181950D2C(v104, *(v103 + 1), (v7 + 8));
      }

      *(v7 + 8) = v105;
      goto LABEL_457;
    case 0x77u:
      v218 = a5;
      v219 = sub_1818A930C(a5, 0, v7 - 40, v7 + 8);
      v220 = v218;
      v221 = v219;
      if (*(v220 + 302) >= 2u && v219 != 0)
      {
        sub_181950D2C(v220, *(v219 + 1), (v7 + 8));
      }

      *(v7 - 40) = v221;
      goto LABEL_457;
    case 0x78u:
      *(v7 + 8) = sub_1818A930C(a5, 0, v7 + 8, 0);
      goto LABEL_457;
    case 0x79u:
      *(v7 - 40) = sub_1818A930C(a5, 0, v7 - 40, v7 + 8);
      goto LABEL_457;
    case 0x7Au:
      v100 = a5;
      v101 = sub_1818A930C(a5, 0, v7 - 88, v7 - 40);
      *(v7 - 88) = v101;
      if (v101)
      {
        *(*(v7 - 88) + 16) = sub_181950DC4(*v100, v7 + 8);
      }

      goto LABEL_457;
    case 0x7Bu:
      v232 = a5;
      v233 = sub_1818A930C(a5, 0, v7 - 40, 0);
      *(v7 - 40) = v233;
      if (v233)
      {
        *(*(v7 - 40) + 16) = sub_181950DC4(*v232, v7 + 8);
      }

      goto LABEL_457;
    case 0x7Du:
      *(v7 - 16) = sub_181950E98(a5, v7 - 16, 0, 0);
      goto LABEL_457;
    case 0x7Eu:
      *(v7 - 40) = sub_181950E98(a5, v7 - 40, v7 - 16, 0);
      goto LABEL_457;
    case 0x7Fu:
      *(v7 - 64) = sub_181950E98(a5, v7 - 64, v7 - 40, v7 - 16);
      goto LABEL_457;
    case 0x80u:
      *(v7 - 16) = *(v7 + 8);
      *(v7 - 8) = 0;
      goto LABEL_457;
    case 0x81u:
      v99 = *(v7 - 16);
      *(v7 - 64) = 0;
      *(v7 - 56) = v99;
      goto LABEL_457;
    case 0x82u:
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      goto LABEL_457;
    case 0x84u:
      *(v7 - 40) = *(v7 + 8);
      goto LABEL_457;
    case 0x85u:
      *(v7 - 16) = 0;
      *(v7 - 8) = 1;
      goto LABEL_457;
    case 0x87u:
    case 0x91u:
      goto LABEL_181;
    case 0x88u:
      v209 = sub_1818A8F6C(a5, *(v7 - 88), *(v7 - 40));
      *(v7 - 88) = v209;
      if (v209)
      {
        v126 = *(v7 + 8);
        v127 = *(v7 - 16);
        v128 = &v209[6 * *v209];
        if (v127 == -1)
        {
          v127 = 0;
        }

        *v128 = v127;
        if (v126 != -1)
        {
          goto LABEL_333;
        }
      }

      goto LABEL_457;
    case 0x89u:
      v125 = sub_18197FD9C(*a5, *(v7 - 40));
      *(v7 - 40) = v125;
      if (!v125)
      {
        goto LABEL_457;
      }

      v126 = *(v7 + 8);
      v127 = *(v7 - 16);
      v128 = &v125[3 * *v125];
      if (v127 == -1)
      {
        v127 = 0;
      }

      *v128 = v127;
      if (v126 == -1)
      {
        goto LABEL_457;
      }

LABEL_333:
      *(v128 + 1) |= 0x20u;
      if (v127 != v126)
      {
        *v128 = v127 | 2;
      }

      goto LABEL_457;
    case 0x8Au:
    case 0xDAu:
    case 0xDDu:
      *(v7 + 8) = 0;
      goto LABEL_457;
    case 0x8Cu:
    case 0x8Fu:
      *(v7 + 32) = -1;
      goto LABEL_457;
    case 0x8Du:
      *(v7 - 16) = 0;
      goto LABEL_457;
    case 0x92u:
    case 0x94u:
    case 0x99u:
    case 0x9Bu:
    case 0xA6u:
    case 0xAFu:
    case 0xE8u:
    case 0xE9u:
    case 0xFCu:
    case 0x10Cu:
    case 0x11Fu:
      *(v7 + 32) = 0;
      goto LABEL_457;
    case 0x93u:
    case 0x9Au:
    case 0x9Cu:
    case 0xE7u:
    case 0xFBu:
    case 0x10Du:
    case 0x120u:
    case 0x150u:
      goto LABEL_414;
    case 0x95u:
      *(v7 - 16) = sub_18194F098(a5, 149, *(v7 + 8), 0);
      goto LABEL_457;
    case 0x96u:
      v92 = *(v7 - 40);
      v93 = *(v7 + 8);
      goto LABEL_140;
    case 0x97u:
      v92 = *(v7 + 8);
      v93 = *(v7 - 40);
LABEL_140:
      *(v7 - 64) = sub_18194F098(a5, 149, v92, v93);
      goto LABEL_457;
    case 0x98u:
      v115 = a5;
      sub_181950BE8(a5, *(v7 - 88), v7 - 64);
      sub_1818EA08C(v115, *(v7 - 88), *(v7 - 40), *(v7 - 16), *(v7 + 8));
      goto LABEL_457;
    case 0x9Du:
      sub_1819510F0(a5, *(v7 + 8));
      *(v7 - 16) = 0;
      goto LABEL_457;
    case 0x9Eu:
      sub_1819510F0(a5, *(v7 + 8));
      *(v7 - 64) = *(v7 - 40);
      goto LABEL_457;
    case 0x9Fu:
      v86 = a5;
      sub_181950BE8(a5, *(v7 - 160), v7 - 136);
      v87 = *(v7 - 64);
      if (v87)
      {
        if (*v87 >= 2)
        {
          v88 = sub_1818A9824(v86, 0, v87, 0, 0, 0, 0, 2048, 0);
          v264[0] = 0uLL;
          v87 = sub_1818A8FB4(v86, 0, 0, 0, v264, v88, 0);
        }

        *(v7 - 160) = sub_18195136C(v86, *(v7 - 160), v87);
      }

      v249 = *(v7 - 88);
      if (v249)
      {
        v250 = v86;
        if (*v249 > *(*v86 + 144))
        {
          sub_181910730(v86, "too many columns in %s", "set list");
          v250 = v86;
          v249 = *(v7 - 88);
        }
      }

      else
      {
        v250 = v86;
      }

      sub_1818E7FBC(v250, *(v7 - 160), v249, *(v7 - 40), *(v7 - 184), *(v7 - 16), *(v7 + 8), 0);
      goto LABEL_457;
    case 0xA0u:
      v61 = a5;
      v62 = sub_1818A8F6C(a5, *(v7 - 88), *(v7 + 8));
      *(v7 - 88) = v62;
      sub_1819507A4(v61, v62, v7 - 40, 1);
      goto LABEL_457;
    case 0xA1u:
      *(v7 - 136) = sub_181951404(a5, *(v7 - 136), *(v7 - 64), *(v7 + 8));
      goto LABEL_457;
    case 0xA2u:
      v76 = a5;
      v77 = sub_18197FD9C(*a5, *(v7 + 8));
      sub_1819507A4(v76, v77, v7 - 40, 1);
      *(v7 - 40) = v77;
      goto LABEL_457;
    case 0xA3u:
      *(v7 - 88) = sub_181951404(a5, 0, *(v7 - 64), *(v7 + 8));
      goto LABEL_457;
    case 0xA4u:
      sub_1818D195C(a5, *(v7 - 64), *(v7 - 16), *(v7 - 40), *(v7 - 112), *(v7 + 8));
      goto LABEL_457;
    case 0xA5u:
      sub_1818D195C(a5, *(v7 - 88), 0, *(v7 - 64), *(v7 - 136), 0);
      goto LABEL_457;
    case 0xA7u:
      *(v7 - 16) = 0;
      goto LABEL_82;
    case 0xA8u:
      *(v7 - 256) = sub_18195173C(*a5, *(v7 - 184), *(v7 - 136), *(v7 - 40), *(v7 - 16), *(v7 + 8));
      goto LABEL_457;
    case 0xA9u:
      *(v7 - 184) = sub_18195173C(*a5, *(v7 - 112), *(v7 - 64), 0, 0, *(v7 + 8));
      goto LABEL_457;
    case 0xAAu:
      *(v7 - 88) = sub_18195173C(*a5, 0, 0, 0, 0, 0);
      goto LABEL_457;
    case 0xABu:
      *(v7 - 160) = sub_18195173C(*a5, 0, 0, *(v7 - 40), *(v7 - 16), 0);
      goto LABEL_457;
    case 0xACu:
LABEL_82:
      sub_1819510F0(a5, *(v7 + 8));
      goto LABEL_457;
    case 0xB0u:
    case 0xB3u:
    case 0xEEu:
    case 0xF3u:
      *(v7 - 40) = *(v7 - 16);
      goto LABEL_457;
    case 0xB1u:
      sub_181951848(a5, *(v7 - 40), (v7 + 8));
      *(v7 - 40) = v116;
      goto LABEL_457;
    case 0xB2u:
      sub_181951848(a5, 0, (v7 + 8));
      *(v7 + 8) = v175;
      goto LABEL_457;
    case 0xB4u:
      v17 = *(v7 + 8);
      v18 = *(v7 + 16);
      v19 = a5;
      LOBYTE(v16) = 60;
      goto LABEL_307;
    case 0xB5u:
      v63 = a5;
      v64 = sub_18194F1D8(a5, 60, *(v7 - 40), *(v7 - 32));
      v10 = sub_18194F1D8(v63, 60, *(v7 + 8), *(v7 + 16));
      v11 = v63;
      LOBYTE(v8) = -114;
      v9 = v64;
      goto LABEL_6;
    case 0xB6u:
      v210 = a5;
      v211 = sub_18194F1D8(a5, 60, *(v7 - 88), *(v7 - 80));
      v212 = sub_18194F1D8(v210, 60, *(v7 - 40), *(v7 - 32));
      v213 = sub_18194F1D8(v210, 60, *(v7 + 8), *(v7 + 16));
      v214 = sub_18194F098(v210, 142, v212, v213);
      if (*(v210 + 302) < 2u)
      {
        goto LABEL_440;
      }

      v215 = v210[51];
      if (!v215)
      {
        goto LABEL_440;
      }

      while (*v215 != v211)
      {
        v215 = v215[3];
        if (!v215)
        {
          goto LABEL_440;
        }
      }

      *v215 = 0;
LABEL_440:
      v192 = v210;
      v252 = -114;
      v191 = v211;
      goto LABEL_455;
    case 0xB7u:
    case 0xB8u:
      v16 = *(v7 + 2);
      v17 = *(v7 + 8);
      v18 = *(v7 + 16);
      v19 = a5;
LABEL_307:
      *(v7 + 8) = sub_18194F1D8(v19, v16, v17, v18);
      goto LABEL_457;
    case 0xB9u:
      v84 = a5;
      v85 = sub_1818A8CF0(*a5, 156, v7 + 8, 1);
      if (v85)
      {
        *(v85 + 14) = *(v7 + 8) - *(v84 + 84);
      }

      *(v7 + 8) = v85;
      goto LABEL_457;
    case 0xBAu:
      v111 = (v7 + 8);
      v110 = *(v7 + 8);
      if (*v110 == 35 && v110[1] - 58 > 0xFFFFFFFFFFFFFFF5)
      {
        v264[0] = *v111;
        if (*(a5 + 30))
        {
          v251 = sub_18194F098(a5, 176, 0, 0);
          *v111 = v251;
          if (v251)
          {
            sub_181949B34((*&v264[0] + 1), v251 + 11);
          }
        }

        else
        {
          sub_181910730(a5, "near %T: syntax error", v264);
          *v111 = 0;
        }
      }

      else
      {
        v112 = *(v7 + 16);
        v113 = a5;
        v114 = sub_18194F1D8(a5, 157, v110, *(v7 + 16));
        *(v7 + 8) = v114;
        sub_1818DF214(v113, v114, v112);
      }

      goto LABEL_457;
    case 0xBBu:
      *(v7 - 40) = sub_181951AC0(a5, *(v7 - 40), v7 + 8, 1);
      goto LABEL_457;
    case 0xBCu:
      v72 = a5;
      v73 = sub_1818A8CF0(*a5, 36, v7 - 16, 1);
      *(v7 - 112) = v73;
      sub_1818A8EA4(*v72, v73, *(v7 - 64), 0);
      goto LABEL_457;
    case 0xBDu:
      *(v7 - 88) = sub_1818CAFD4(a5, *(v7 - 16), (v7 - 88), *(v7 - 40));
      goto LABEL_457;
    case 0xBEu:
      v121 = a5;
      v122 = sub_1818CAFD4(a5, *(v7 - 88), (v7 - 160), *(v7 - 112));
      sub_181951B14(v121, v122, *(v7 - 16));
      *(v7 - 160) = v122;
      goto LABEL_457;
    case 0xBFu:
      *(v7 - 64) = sub_1818CAFD4(a5, 0, (v7 - 64), 0);
      goto LABEL_457;
    case 0xC0u:
      v216 = a5;
      v217 = sub_1818CAFD4(a5, *(v7 - 40), (v7 - 112), *(v7 - 64));
      sub_181951C5C(v216, v217, *(v7 + 8));
      *(v7 - 112) = v217;
      goto LABEL_457;
    case 0xC1u:
      v118 = a5;
      v119 = sub_1818CAFD4(a5, *(v7 - 112), (v7 - 184), *(v7 - 136));
      sub_181951C5C(v118, v119, *(v7 + 8));
      sub_181951B14(v118, v119, *(v7 - 40));
      *(v7 - 184) = v119;
      goto LABEL_457;
    case 0xC2u:
      v176 = a5;
      v177 = sub_1818CAFD4(a5, 0, (v7 - 88), 0);
      sub_181951C5C(v176, v177, *(v7 + 8));
      *(v7 - 88) = v177;
      goto LABEL_457;
    case 0xC3u:
      *(v7 + 8) = sub_1818CAFD4(a5, 0, (v7 + 8), 0);
      goto LABEL_457;
    case 0xC4u:
      v78 = a5;
      v79 = sub_1818A8F6C(a5, *(v7 - 64), *(v7 - 16));
      v80 = sub_18194F098(v78, 177, 0, 0);
      *(v7 - 88) = v80;
      if (v80)
      {
        v80[4] = v79;
        if (*v79)
        {
          *(*(v7 - 88) + 4) |= *(*(v79 + 1) + 4) & 0x400208;
        }
      }

      else if (v79)
      {
        sub_18194E5B8(*v78, v79);
      }

      goto LABEL_457;
    case 0xC5u:
      *(v7 - 40) = sub_181951CA4(a5, *(v7 - 40), *(v7 + 8));
      goto LABEL_457;
    case 0xC6u:
    case 0xC7u:
    case 0xC8u:
    case 0xC9u:
    case 0xCAu:
    case 0xCBu:
    case 0xCCu:
      v8 = *(v7 - 22);
      v9 = *(v7 - 40);
      v10 = *(v7 + 8);
      v11 = a5;
      goto LABEL_6;
    case 0xCDu:
      *(v7 - 16) = *(v7 + 8);
      *(v7 - 8) |= 0x80000000;
      goto LABEL_457;
    case 0xCEu:
      v67 = *(v7 - 8);
      *(v7 - 8) = v67 & 0x7FFFFFFF;
      v68 = a5;
      v69 = sub_18197FD9C(*a5, *(v7 + 8));
      v70 = sub_1818A8F6C(v68, v69, *(v7 - 40));
      v71 = sub_1818CAFD4(v68, v70, (v7 - 16), 0);
      *(v7 - 40) = v71;
      if (v67 < 0)
      {
        v71 = sub_18194F098(v68, 19, v71, 0);
        *(v7 - 40) = v71;
      }

      goto LABEL_302;
    case 0xCFu:
      v198 = *(v7 - 56);
      *(v7 - 56) = v198 & 0x7FFFFFFF;
      v199 = a5;
      v200 = sub_18197FD9C(*a5, *(v7 - 40));
      v201 = sub_1818A8F6C(v199, v200, *(v7 - 88));
      v202 = sub_1818A8F6C(v199, v201, *(v7 + 8));
      v71 = sub_1818CAFD4(v199, v202, (v7 - 64), 0);
      *(v7 - 88) = v71;
      if (v198 < 0)
      {
        v71 = sub_18194F098(v199, 19, v71, 0);
        *(v7 - 88) = v71;
      }

LABEL_302:
      if (v71)
      {
        *(v71 + 4) |= 0x100u;
      }

      goto LABEL_457;
    case 0xD0u:
      v20 = *(v7 + 2);
      v21 = *(v7 - 16);
      goto LABEL_392;
    case 0xD1u:
      v9 = *(v7 - 40);
      v11 = a5;
      LOBYTE(v8) = 52;
      v10 = 0;
LABEL_6:
      *(v7 - 40) = sub_18194F098(v11, v8, v9, v10);
      goto LABEL_457;
    case 0xD2u:
      v196 = a5;
      v197 = sub_18194F098(a5, 45, *(v7 - 40), *(v7 + 8));
      *(v7 - 40) = v197;
      goto LABEL_317;
    case 0xD3u:
      v97 = a5;
      v98 = sub_18194F098(a5, 46, *(v7 - 64), *(v7 + 8));
      *(v7 - 64) = v98;
      goto LABEL_326;
    case 0xD4u:
      v196 = a5;
      v197 = sub_18194F098(a5, 45, *(v7 - 112), *(v7 + 8));
      *(v7 - 112) = v197;
LABEL_317:
      sub_181951DA4(v196, *(v7 + 8), v197, 51);
      goto LABEL_457;
    case 0xD5u:
      v97 = a5;
      v98 = sub_18194F098(a5, 46, *(v7 - 88), *(v7 + 8));
      *(v7 - 88) = v98;
LABEL_326:
      sub_181951DA4(v97, *(v7 + 8), v98, 52);
      goto LABEL_457;
    case 0xD6u:
    case 0xD7u:
      v20 = *(v7 - 22);
      v21 = *(v7 + 8);
      goto LABEL_392;
    case 0xD8u:
      v21 = *(v7 + 8);
      if (v21 && *v21 == 173)
      {
        *v21 = *(v7 - 22) + 66;
        *(v7 - 16) = v21;
      }

      else
      {
        LOBYTE(v20) = *(v7 - 22) + 66;
LABEL_392:
        *(v7 - 16) = sub_18194F098(a5, v20, v21, 0);
      }

      goto LABEL_457;
    case 0xD9u:
      v107 = a5;
      v108 = sub_18197FD9C(*a5, *(v7 - 40));
      v109 = sub_1818A8F6C(v107, v108, *(v7 + 8));
      *(v7 - 40) = sub_1818CAFD4(v107, v109, (v7 - 16), 0);
      goto LABEL_457;
    case 0xDCu:
      v205 = a5;
      v206 = sub_18197FD9C(*a5, *(v7 - 40));
      v207 = sub_1818A8F6C(v205, v206, *(v7 + 8));
      v208 = sub_18194F098(v205, 49, *(v7 - 88), 0);
      *(v7 - 88) = v208;
      if (v208)
      {
        v208[4] = v207;
      }

      else if (v207)
      {
        sub_18194E5B8(*v205, v207);
      }

      if (!*(v7 - 64))
      {
        goto LABEL_457;
      }

      v192 = v205;
      v191 = *(v7 - 88);
      goto LABEL_454;
    case 0xDFu:
      v146 = *(v7 - 16);
      if (!v146)
      {
        v241 = a5;
        sub_181951E04(a5, *(v7 - 88));
        if (*(v7 - 64))
        {
          v242 = "true";
        }

        else
        {
          v242 = "false";
        }

        v243 = sub_181950A08(*v241, 118, v242);
        *(v7 - 88) = v243;
        if (v243)
        {
          sub_18194F370(v243);
        }

        goto LABEL_457;
      }

      if (*v146 != 1)
      {
        goto LABEL_445;
      }

      v147 = *(v146 + 8);
      v148 = a5;
      if (sub_18195A444(a5, v147, 1u))
      {
        v149 = *(v7 - 16);
        if (**(v7 - 88) != 177)
        {
          *(v149 + 8) = 0;
          v150 = *(v7 - 16);
          v151 = v148;
          if (v150)
          {
            sub_18194E5B8(*v148, v150);
            v151 = v148;
          }

          v152 = v147;
          v153 = v151;
          v154 = sub_18194F098(v151, 173, v152, 0);
          *(v7 - 88) = sub_18194F098(v153, 54, *(v7 - 88), v154);
          goto LABEL_452;
        }
      }

      else
      {
        v149 = *(v7 - 16);
      }

      a5 = v148;
      if (*v149 == 1 && *v147 == 139)
      {
        v253 = sub_18194F098(v148, 50, *(v7 - 88), 0);
        *(v7 - 88) = v253;
        sub_181951E94(v148, v253, *(v147 + 4), v254);
        *(v147 + 4) = 0;
        goto LABEL_449;
      }

LABEL_445:
      v148 = a5;
      v255 = sub_18194F098(a5, 50, *(v7 - 88), 0);
      *(v7 - 88) = v255;
      if (!v255)
      {
LABEL_449:
        v260 = *(v7 - 16);
        if (v260)
        {
          sub_18194E5B8(*v148, v260);
        }

        goto LABEL_452;
      }

      v256 = v255[2];
      if (*v256 == 177)
      {
        v257 = sub_181951ECC(v148, **(v256 + 4), *(v7 - 16));
        if (v257)
        {
          v258 = v257;
          sub_1819500CC(v148, v257);
          sub_181951E94(v148, *(v7 - 88), v258, v259);
        }
      }

      else
      {
        v255[4] = *(v7 - 16);
        sub_181952030(v148, *(v7 - 88));
      }

LABEL_452:
      if (!*(v7 - 64))
      {
        goto LABEL_457;
      }

LABEL_453:
      v191 = *(v7 - 88);
      v192 = v148;
LABEL_454:
      v252 = 19;
      v214 = 0;
LABEL_455:
      v15 = sub_18194F098(v192, v252, v191, v214);
LABEL_456:
      *(v7 - 88) = v15;
LABEL_457:
      v261 = word_181A241E8[a2];
      v262 = (v7 + 24 * byte_181A21330[a2]);
      result = word_181A22C14[word_181A246B6[*v262] + v261];
      v262[12] = result;
      v262 += 12;
      *a1 = v262;
      v262[1] = v261;
      return result;
    case 0xE0u:
      v89 = a5;
      v90 = sub_18194F098(a5, 139, 0, 0);
      *(v7 - 40) = v90;
      goto LABEL_185;
    case 0xE1u:
      v148 = a5;
      v166 = sub_18194F098(a5, 50, *(v7 - 88), 0);
      *(v7 - 88) = v166;
      sub_181951E94(v148, v166, *(v7 - 16), v167);
      if (!*(v7 - 64))
      {
        goto LABEL_457;
      }

      goto LABEL_453;
    case 0xE2u:
      v182 = a5;
      v183 = sub_1818A930C(a5, 0, v7 - 40, v7 - 16);
      v184 = v182;
      v185 = sub_1818A9824(v182, 0, v183, 0, 0, 0, 0, 0, 0);
      v186 = v185;
      v187 = *(v7 + 8);
      if (v187)
      {
        if (v185)
        {
          v188 = v183;
        }

        else
        {
          v188 = 0;
        }

        sub_181950CF4(v184, v188, v187);
      }

      v189 = sub_18194F098(v184, 50, *(v7 - 88), 0);
      *(v7 - 88) = v189;
      sub_181951E94(v184, v189, v186, v190);
      if (!*(v7 - 64))
      {
        goto LABEL_457;
      }

      v191 = *(v7 - 88);
      v192 = v184;
      goto LABEL_454;
    case 0xE3u:
      v89 = a5;
      v90 = sub_18194F098(a5, 20, 0, 0);
      *(v7 - 64) = v90;
LABEL_185:
      sub_181951E94(v89, v90, *(v7 - 16), v91);
      goto LABEL_457;
    case 0xE4u:
      v171 = a5;
      v172 = sub_18194F098(a5, 158, *(v7 - 64), 0);
      *(v7 - 88) = v172;
      if (v172)
      {
        v173 = *(v7 - 16);
        v174 = *(v7 - 40);
        if (v173)
        {
          v174 = sub_1818A8F6C(v171, v174, v173);
          v172 = *(v7 - 88);
        }

        v172[4] = v174;
        sub_181952030(v171, *(v7 - 88));
      }

      else
      {
        v244 = *(v7 - 40);
        if (v244)
        {
          sub_18194E5B8(*v171, v244);
        }

        v245 = *(v7 - 16);
        if (v245)
        {
          sub_1819439E0(*v171, v245);
        }
      }

      goto LABEL_457;
    case 0xE5u:
      v144 = a5;
      v145 = sub_1818A8F6C(a5, *(v7 - 88), *(v7 - 40));
      *(v7 - 88) = v145;
      *(v7 - 88) = sub_1818A8F6C(v144, v145, *(v7 + 8));
      goto LABEL_457;
    case 0xE6u:
      v193 = a5;
      v194 = sub_18197FD9C(*a5, *(v7 - 40));
      *(v7 - 64) = v194;
      *(v7 - 64) = sub_1818A8F6C(v193, v194, *(v7 + 8));
      goto LABEL_457;
    case 0xEBu:
      *(v7 - 40) = sub_1818A8F6C(a5, *(v7 - 40), *(v7 + 8));
      goto LABEL_457;
    case 0xECu:
      *(v7 + 8) = sub_18197FD9C(*a5, *(v7 + 8));
      goto LABEL_457;
    case 0xEFu:
      v179 = a5;
      v180 = sub_1818A930C(a5, 0, v7 - 88, 0);
      sub_1818C8730(v179, (v7 - 160), v7 - 136, v180, *(v7 - 40), *(v7 - 232), v7 - 256, *(v7 + 8), 0, *(v7 - 184), 0);
      if (*(v179 + 302) >= 2u)
      {
        v181 = v179[44];
        if (v181)
        {
          sub_181950D2C(v179, *v181, (v7 - 88));
        }
      }

      goto LABEL_457;
    case 0xF0u:
    case 0x11Au:
      *(v7 + 8) = 2;
      goto LABEL_457;
    case 0xF1u:
      *(v7 + 32) = 0;
      goto LABEL_457;
    case 0xF4u:
      *(v7 - 88) = sub_1819521C8(a5, *(v7 - 88), v7 - 40, *(v7 - 16), *(v7 + 8));
      goto LABEL_457;
    case 0xF5u:
      *(v7 - 40) = sub_1819521C8(a5, 0, v7 - 40, *(v7 - 16), *(v7 + 8));
      goto LABEL_457;
    case 0xF8u:
      sub_1819522B8(a5, *(v7 + 8), *(v7 - 16), a4);
      goto LABEL_457;
    case 0xF9u:
      sub_18195279C(a5, 0, *(v7 + 8));
      goto LABEL_457;
    case 0xFAu:
      sub_18195279C(a5, v7 - 16, *(v7 + 8));
      goto LABEL_457;
    case 0xFDu:
      v94 = (v7 - 16);
      v95 = (v7 + 8);
      v195 = a5;
      v96 = 0;
      goto LABEL_299;
    case 0xFEu:
      v94 = (v7 - 64);
      v95 = (v7 - 40);
      v96 = v7 + 8;
      goto LABEL_298;
    case 0xFFu:
      v94 = (v7 - 88);
      v95 = (v7 - 64);
      v96 = v7 - 16;
LABEL_298:
      v195 = a5;
LABEL_299:
      sub_181899B58(v195, v94, v95, v96, 0);
      goto LABEL_457;
    case 0x100u:
      v162 = (v7 - 64);
      v163 = (v7 - 40);
      v164 = v7 + 8;
      goto LABEL_269;
    case 0x101u:
      v162 = (v7 - 88);
      v163 = (v7 - 64);
      v164 = v7 - 16;
LABEL_269:
      sub_181899B58(a5, v162, v163, v164, 1);
      goto LABEL_457;
    case 0x104u:
      *(&v264[0] + 1) = 0;
      *&v264[0] = *(v7 - 64);
      DWORD2(v264[0]) = *(v7 + 16) + *(v7 + 8) - LODWORD(v264[0]);
      sub_1818CBA4C(a5, *(v7 - 16), v264, a4);
      goto LABEL_457;
    case 0x105u:
      sub_1818C9D08(a5, v7 - 160, v7 - 136, *(v7 - 112), *(v7 - 88), *(v7 - 80), *(v7 - 40), *(v7 + 8), *(v7 - 232), *(v7 - 184));
      if (*(v7 - 128))
      {
        v169 = *(v7 - 136);
      }

      else
      {
        v169 = *(v7 - 160);
      }

      *(v7 - 232) = v169;
      goto LABEL_457;
    case 0x106u:
      *(v7 + 8) = *(v7 + 2);
      goto LABEL_457;
    case 0x107u:
      *(v7 - 16) = 66;
      goto LABEL_457;
    case 0x108u:
      *(v7 + 32) = 33;
      goto LABEL_457;
    case 0x109u:
    case 0x10Au:
      *(v7 + 8) = *(v7 + 2);
      *(v7 + 16) = 0;
      goto LABEL_457;
    case 0x10Bu:
      *(v7 - 40) = 130;
      *(v7 - 32) = *(v7 + 8);
      goto LABEL_457;
    case 0x10Eu:
      v120 = *(v7 - 16);
      *(*(*(v7 - 40) + 88) + 80) = v120;
      *(*(v7 - 40) + 88) = v120;
      goto LABEL_457;
    case 0x10Fu:
      *(*(v7 - 16) + 88) = *(v7 - 16);
      goto LABEL_457;
    case 0x110u:
      *(v7 - 40) = *(v7 + 8);
      sub_181910730(a5, "qualified table names are not allowed on INSERT, UPDATE, and DELETE statements within triggers", a3, a4);
      goto LABEL_457;
    case 0x111u:
      sub_181910730(a5, "the INDEXED BY clause is not allowed on UPDATE or DELETE statements within triggers", a3, a4);
      goto LABEL_457;
    case 0x112u:
      sub_181910730(a5, "the NOT INDEXED clause is not allowed on UPDATE or DELETE statements within triggers");
      goto LABEL_457;
    case 0x113u:
      *(v7 - 184) = sub_1818CB940(a5, v7 - 136, *(v7 - 40), *(v7 - 64), *(v7 - 16), *(v7 - 160), *(v7 - 184), *(v7 + 8));
      goto LABEL_457;
    case 0x114u:
      *(v7 - 160) = sub_18195295C(a5, v7 - 88, *(v7 - 64), *(v7 - 40), *(v7 - 136), *(v7 - 16), *(v7 - 160), *(v7 + 8));
      goto LABEL_457;
    case 0x115u:
      *(v7 - 112) = sub_181952AE4(a5, v7 - 64, *(v7 - 16), *(v7 - 112), *(v7 + 8));
      goto LABEL_457;
    case 0x116u:
      *(v7 - 40) = sub_181952B80(*a5, *(v7 - 16), *(v7 - 40), *(v7 + 8));
      goto LABEL_457;
    case 0x117u:
      v170 = sub_18194F098(a5, 72, 0, 0);
      *(v7 - 64) = v170;
      if (v170)
      {
        *(v170 + 1) = 4;
      }

      goto LABEL_457;
    case 0x118u:
      v117 = sub_18194F098(a5, 72, *(v7 - 16), 0);
      *(v7 - 112) = v117;
      if (v117)
      {
        *(v117 + 1) = *(v7 - 64);
      }

      goto LABEL_457;
    case 0x119u:
      *(v7 + 8) = 1;
      goto LABEL_457;
    case 0x11Bu:
      *(v7 + 8) = 3;
      goto LABEL_457;
    case 0x11Cu:
      sub_181952C44(a5, *(v7 + 8), *(v7 - 16), a4);
      goto LABEL_457;
    case 0x11Du:
      sub_18198A198(a5, 24, word_1EEF900F0, *(v7 - 64), *(v7 - 64), *(v7 - 16), *(v7 + 8));
      goto LABEL_457;
    case 0x11Eu:
      sub_18198A198(a5, 25, word_1EEF90138, *(v7 + 8), 0, 0, *(v7 + 8));
      goto LABEL_457;
    case 0x121u:
      sub_181953020(a5, 0, 0);
      goto LABEL_457;
    case 0x122u:
      sub_181953020(a5, v7 - 16, v7 + 8);
      goto LABEL_457;
    case 0x123u:
      sub_18195383C(a5, 0, 0);
      goto LABEL_457;
    case 0x124u:
      sub_18195383C(a5, v7 - 16, v7 + 8);
      goto LABEL_457;
    case 0x125u:
      sub_181953CC4(a5, *(v7 - 64), v7 + 8, a4);
      goto LABEL_457;
    case 0x126u:
      *(v7 - 8) = *(a5 + 72) + *(a5 + 70) - *(v7 - 16);
      sub_1819541C8(a5, v7 - 16);
      goto LABEL_457;
    case 0x127u:
      sub_181954798(a5, *(v7 - 64), v7 + 8, a4);
      goto LABEL_457;
    case 0x128u:
      v178 = *a5;
      ++*(a5 + 35);
      *(a5 + 31) = 0u;
      *(a5 + 33) = 0u;
      ++*(*&v178 + 432);
      *(*&v178 + 436) = 0;
      sub_181954F44(a5, *(v7 + 8), a3, a4);
      goto LABEL_457;
    case 0x129u:
      sub_181955298(a5, *(v7 - 112), v7 - 40, (v7 + 8));
      goto LABEL_457;
    case 0x12Au:
      sub_181955794(a5, 0);
      goto LABEL_457;
    case 0x12Bu:
      sub_181955794(a5, (v7 + 8));
      goto LABEL_457;
    case 0x12Cu:
      sub_181955EA4(a5, (v7 - 64), v7 - 40, v7 + 8, *(v7 - 88));
      goto LABEL_457;
    case 0x12Du:
      v155 = a5;
      sub_18198D924(a5);
      v155[47] = 0;
      *(v155 + 96) = 0;
      goto LABEL_457;
    case 0x12Eu:
    case 0x12Fu:
    case 0x130u:
      v12 = a5[47];
      v13 = *(v7 + 8);
      if (v12)
      {
        v14 = v13 + *(v7 + 16) - v12;
      }

      else
      {
        a5[47] = v13;
        v14 = *(v7 + 16);
      }

      *(a5 + 96) = v14;
      goto LABEL_457;
    case 0x131u:
    case 0x132u:
      sub_18195638C(a5, *(v7 + 8), 1);
      goto LABEL_457;
    case 0x133u:
      *(v7 + 8) = 1;
      goto LABEL_457;
    case 0x134u:
      *(v7 - 16) = 0;
      goto LABEL_457;
    case 0x135u:
      *(v7 - 40) = 2;
      goto LABEL_457;
    case 0x136u:
      *(v7 - 112) = sub_1819563F4(a5, v7 - 112, *(v7 - 88), *(v7 - 16), *(v7 - 64));
      goto LABEL_457;
    case 0x137u:
      *(a5 + 43) |= 2u;
      goto LABEL_457;
    case 0x138u:
      *(v7 + 8) = sub_181956580(a5, 0, *(v7 + 8), a4);
      goto LABEL_457;
    case 0x139u:
      *(v7 - 40) = sub_181956580(a5, *(v7 - 40), *(v7 + 8), a4);
      goto LABEL_457;
    case 0x13Au:
      sub_1819567A4(a5, *(v7 + 8), *(v7 - 40));
      *(*(v7 + 8) + 64) = *(v7 - 40);
LABEL_181:
      *(v7 - 40) = *(v7 + 8);
      goto LABEL_457;
    case 0x13Bu:
      v168 = *(v7 - 16);
      if (v168)
      {
        **(v7 - 16) = sub_18189F1F4(*a5, *(v7 - 88), *(v7 - 80));
        v168 = *(v7 - 16);
      }

      *(v7 - 88) = v168;
      goto LABEL_457;
    case 0x13Cu:
      v133 = *(v7 + 8);
      v137 = *(v7 - 40);
      v134 = *(v7 - 16);
      v135 = a5;
      v136 = v133;
      v138 = 0;
      goto LABEL_249;
    case 0x13Du:
      v143 = *(v7 + 8);
      sub_1819568E4(a5, v143, *(v7 - 40), *(v7 - 16), v7 - 112);
      *(v7 - 112) = v143;
      goto LABEL_457;
    case 0x13Eu:
      v123 = *(v7 + 8);
      v124 = *(v7 - 16);
      if (v123)
      {
        *(v123 + 16) = 0;
        *(v123 + 24) = v124;
        *(v7 - 64) = v123;
      }

      else
      {
        if (v124)
        {
          sub_18194E5B8(*a5, v124);
        }

        *(v7 - 64) = 0;
      }

      goto LABEL_457;
    case 0x13Fu:
      v133 = *(v7 + 8);
      v134 = *(v7 - 16);
      v135 = a5;
      v136 = v133;
      v137 = 0;
      v138 = v7 - 88;
LABEL_249:
      sub_1819568E4(v135, v136, v137, v134, v138);
      *(v7 - 88) = v133;
      goto LABEL_457;
    case 0x140u:
      v165 = *(v7 + 8);
      sub_1819568E4(a5, v165, 0, 0, v7 - 16);
      *(v7 - 16) = v165;
      goto LABEL_457;
    case 0x141u:
      *(v7 + 32) = sub_18195699C(a5, 0, 91, 0, 86, 0, 0);
      goto LABEL_457;
    case 0x142u:
      *(v7 - 40) = sub_18195699C(a5, *(v7 - 40), *(v7 - 16), *(v7 - 8), 86, 0, *(v7 + 8));
      goto LABEL_457;
    case 0x143u:
      *(v7 - 112) = sub_18195699C(a5, *(v7 - 112), *(v7 - 64), *(v7 - 56), *(v7 - 16), *(v7 - 8), *(v7 + 8));
      goto LABEL_457;
    case 0x146u:
    case 0x148u:
    case 0x14Au:
      *(v7 - 16) = *(v7 - 22);
      *(v7 - 8) = 0;
      goto LABEL_457;
    case 0x149u:
      v161 = *(v7 - 16);
      *(v7 - 16) = *(v7 + 2);
      *(v7 - 8) = v161;
      goto LABEL_457;
    case 0x14Bu:
      *(v7 + 32) = 0;
      goto LABEL_457;
    case 0x14Cu:
      *(v7 - 16) = *(v7 + 8);
      goto LABEL_457;
    case 0x14Du:
    case 0x14Eu:
      *(v7 - 16) = *(v7 - 22);
      goto LABEL_457;
    case 0x14Fu:
      *(v7 + 8) = *(v7 + 2);
      goto LABEL_457;
    case 0x151u:
      v156 = *(v7 + 8);
      v157 = *(v7 - 16);
      if (v156)
      {
        *(v156 + 72) = v157;
      }

      else if (v157)
      {
        sub_1819439E0(*a5, v157);
      }

LABEL_414:
      *(v7 - 16) = *(v7 + 8);
      goto LABEL_457;
    case 0x153u:
      v129 = a5;
      v130 = sub_18190C56C(*a5, 0x90uLL, 0x10B004036C0935CLL);
      if (v130)
      {
        v130[32] = -89;
        *(v130 + 9) = *(v7 + 8);
        *(v7 + 8) = v130;
      }

      else
      {
        v240 = *(v7 + 8);
        if (v240)
        {
          sub_1819439E0(*v129, v240);
          v130 = 0;
        }

        *(v7 + 8) = v130;
      }

      goto LABEL_457;
    case 0x154u:
      *(v7 - 64) = *(v7 - 16);
      goto LABEL_457;
    case 0x155u:
      v139 = a5;
      v140 = sub_18190C56C(*a5, 0x90uLL, 0x10B004036C0935CLL);
      *(v7 - 16) = v140;
      if (v140)
      {
        **(v7 - 16) = sub_18189F1F4(*v139, *(v7 + 8), *(v7 + 16));
      }

      goto LABEL_457;
    case 0x156u:
      *(v7 - 88) = *(v7 - 16);
      goto LABEL_457;
    case 0x157u:
      v141 = a5;
      v142 = sub_18194F1D8(a5, *(v7 + 2), *(v7 + 8), *(v7 + 16));
      sub_181956D74(v141, v142);
      *(v7 + 8) = v142;
      goto LABEL_457;
    default:
      goto LABEL_457;
  }
}