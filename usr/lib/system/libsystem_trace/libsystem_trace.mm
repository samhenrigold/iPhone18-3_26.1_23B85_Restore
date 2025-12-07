BOOL os_log_type_enabled(os_log_t oslog, os_log_type_t type)
{
  v2 = type;
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v4 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v14 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v14, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v4)
    {
      _os_log_preferences_refresh_process();
    }
  }

  v5 = qword_1ED3F74D0;
  if ((qword_1ED3F74D0 & 0x100) != 0 || (MEMORY[0xFFFFFC104] & 0x100) != 0)
  {
    goto LABEL_36;
  }

  if ((byte_1ED3F7547 & 1) != 0 || (qword_1ED3F74D0 & 0x400) == 0 && (MEMORY[0xFFFFFC104] & 0x400) == 0 || (LOBYTE(v6) = _os_log_hook, _os_log_hook))
  {
    LOBYTE(v6) = 0;
    if (oslog)
    {
      if (oslog != &_os_log_disabled)
      {
        if (oslog[3].isa)
        {
          isa = oslog[6].isa;
          if (isa != dword_1ED3F74E0)
          {
            v16 = oslog[6].isa;
            atomic_compare_exchange_strong_explicit(&oslog[6], &v16, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
            if (v16 == isa)
            {
              _os_log_preferences_refresh(oslog);
              v5 = qword_1ED3F74D0;
            }
          }
        }

        if ((v5 & 8) == 0 && (MEMORY[0xFFFFFC104] & 8) == 0 && (voucher_get_activity_id() & 0x800000000000000) == 0 || (HIDWORD(oslog[7].isa) & 7) == 4)
        {
          goto LABEL_19;
        }

        if ((dword_1ED3F7540 & 4) == 0)
        {
LABEL_55:
          v15 = (HIDWORD(oslog[7].isa) >> 27) & 7;
          if (v15 == 1)
          {
            if ((v2 - 3) < 0xFFFFFFFE)
            {
              goto LABEL_74;
            }
          }

          else if (v15 == 3 || v15 == 2 && v2 != 2)
          {
            goto LABEL_74;
          }

LABEL_19:
          if (_os_log_hook)
          {
            if (_os_log_hook_level <= 1u)
            {
              if (_os_log_hook_level)
              {
                if (_os_log_hook_level == 1 && v2 != 2)
                {
                  goto LABEL_74;
                }
              }

              else if ((v2 - 16) < 0xFFFFFFF1)
              {
                goto LABEL_74;
              }
            }

            else
            {
              if (_os_log_hook_level == 2)
              {
                goto LABEL_74;
              }

              if (_os_log_hook_level == 16)
              {
                if (v2 > 0xF)
                {
                  goto LABEL_74;
                }
              }

              else if (_os_log_hook_level == 17 && v2 == 17)
              {
                goto LABEL_74;
              }
            }
          }

          v8 = HIDWORD(oslog[7].isa) & 7;
          if (!v8)
          {
            v8 = process_prefs_0 & 3;
          }

          if (v8 == 4)
          {
LABEL_36:
            LOBYTE(v6) = 0;
            return v6 & 1;
          }

          if (v2 == 2)
          {
            v13 = v8 - 1;
            if (v13 < 3u)
            {
              v11 = v13 & 7;
              v12 = 4;
              goto LABEL_44;
            }

            if ((qword_1ED3F74D0 & 2) == 0 && (MEMORY[0xFFFFFC104] & 2) == 0)
            {
              v6 = (voucher_get_activity_id() >> 57) & 1;
              return v6 & 1;
            }
          }

          else if (v2 == 1)
          {
            v10 = v8 - 1;
            if (v10 < 3u)
            {
              v11 = v10 & 7;
              v12 = 6;
LABEL_44:
              LODWORD(v6) = v12 >> v11;
              return v6 & 1;
            }

            if ((qword_1ED3F74D0 & 3) == 0 && (MEMORY[0xFFFFFC104] & 3) == 0)
            {
              LOBYTE(v6) = (voucher_get_activity_id() & 0x300000000000000) != 0;
              return v6 & 1;
            }
          }

LABEL_74:
          LOBYTE(v6) = 1;
          return v6 & 1;
        }

        if (v2 > 15)
        {
          if ((v2 - 16) >= 2)
          {
            goto LABEL_55;
          }
        }

        else if (v2)
        {
          if (v2 == 1)
          {
            if ((qword_1ED3F7538 & 0x100000000) != 0)
            {
              goto LABEL_74;
            }
          }

          else if (v2 == 2 && (qword_1ED3F7538 & 0x200000000) != 0)
          {
            goto LABEL_74;
          }

          goto LABEL_55;
        }

        if ((qword_1ED3F7538 & 0x800000000) != 0)
        {
          goto LABEL_74;
        }

        goto LABEL_55;
      }
    }
  }

  return v6 & 1;
}

void _os_log_impl_flatten_and_send(uint64_t a1)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v339 = *MEMORY[0x1E69E9840];
  v307 = 0x1000000000000;
  v304 = 0x1000000000000;
  v305 = &v318;
  v306 = 0x40000000000;
  v301 = 0x1000000000000;
  v302 = &v317;
  v303 = 0x40000000000;
  v299 = &v316;
  *v300 = 0x40000000000;
  if (!v15)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_599;
  }

  LODWORD(v3) = v16;
  if (v16 <= 1)
  {
LABEL_599:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_600;
  }

  v5 = v17;
  v9 = v15;
  v7 = v14;
  LODWORD(v6) = v13;
  v8 = v12;
  v2 = v11;
  if ((v14 & 0x200000) != 0 || _os_get_logging_unreliable_for_current_thread() == 1)
  {
    *v9 |= 0x10u;
    LODWORD(v4) = 1;
  }

  else
  {
    LODWORD(v4) = 0;
  }

  v18 = *(v8 + 60);
  if ((v18 & 0x400) != 0 || (byte_1ED3F7547 & 1) != 0 || byte_1ED3F7549 == 1)
  {
    v19 = byte_1ED3F7561 == 2 ? 1 : v4;
    if (v19 != 1)
    {
      v1 = 0x8000;
      goto LABEL_17;
    }
  }

  if ((v7 & 0x100000) != 0)
  {
LABEL_630:
    if (byte_1ED3F7561 == 2)
    {
      v245 = 1;
    }

    else
    {
      v245 = v4;
    }

    if (v245)
    {
      goto LABEL_15;
    }

    v1 = 2048;
LABEL_17:
    LODWORD(v301) = v1;
    LODWORD(v304) = v1;
    LODWORD(v307) = v1;
    goto LABEL_18;
  }

LABEL_15:
  LOWORD(v1) = 1024;
LABEL_18:
  v20 = 0;
  v285 = 3;
  v21 = 1;
  if ((v7 & 0x80000000) == 0)
  {
    v22 = v18 & 0x6000;
    if (v22 != 24576)
    {
      if ((byte_1ED3F7547 & 1) != 0 || (byte_1ED3F7548 & 1) != 0 || (qword_1ED3F74D0 & 0x2000000) != 0 || (MEMORY[0xFFFFFC104] & 0x2000000) != 0)
      {
        v20 = 0;
        v23 = 3;
      }

      else
      {
        if (v22 != 0x4000 && (qword_1ED3F74D0 & 0x1000000) == 0 && (MEMORY[0xFFFFFC104] & 0x1000000) == 0)
        {
          v21 = 0;
          v20 = 1;
          v285 = 1;
          goto LABEL_30;
        }

        v20 = 0;
        v23 = 2;
      }

      v285 = v23;
      v21 = 1;
    }
  }

LABEL_30:
  v282 = v21;
  v265 = v20;
  if ((v7 & 0x100000) == 0)
  {
    goto LABEL_31;
  }

LABEL_600:
  if (byte_1ED3F7561 == 2)
  {
    v239 = 1;
  }

  else
  {
    v239 = v4;
  }

  if ((v239 & 1) == 0)
  {
    *v333 = 0;
    if (v303)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    else
    {
      v7 |= 0x80000u;
      if ((v304 & 0x200000000) != 0)
      {
LABEL_609:
        v241 = os_log_backtrace_create_from_return_address(64, *(v2 + 32));
        os_log_backtrace_serialize_to_blob(v241);
        free(*v241);
        free(v241);
        os_trace_blob_pwrite(v302, v303, 1);
        LOWORD(v1) = v1 - v303;
        goto LABEL_31;
      }

      if (HIDWORD(v303) - (BYTE6(v304) ^ 1u) > 1)
      {
        *v302 = 0;
        v240 = v303 + 2;
        LODWORD(v303) = v303 + 2;
        if ((v304 & 0x1000000000000) == 0)
        {
          *(v302 + v240) = 0;
        }

        goto LABEL_609;
      }
    }

    os_trace_blob_add_slow(&v302, v333, 2uLL);
    goto LABEL_609;
  }

LABEL_31:
  if ((v7 & 0x40000) != 0)
  {
    LODWORD(v301) = 2048;
    LODWORD(v304) = 2048;
    LODWORD(v307) = 2048;
    if (v303)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
LABEL_636:
      os_trace_blob_add_slow(&v305, v9, v32);
      goto LABEL_187;
    }

    *v333 = 2;
    if ((v304 & 0x200000000) == 0)
    {
      if (HIDWORD(v303) - (BYTE6(v304) ^ 1u) <= 1)
      {
        os_trace_blob_add_slow(&v302, v333, 2uLL);
      }

      else
      {
        *v302 = 2;
        v24 = v303 + 2;
        LODWORD(v303) = v303 + 2;
        if ((v304 & 0x1000000000000) == 0)
        {
          *(v302 + v24) = 0;
        }
      }
    }

    v7 |= 0x80000u;
    if ((v304 & 0x200000000) == 0)
    {
      v25 = *(v2 + 48);
      v26 = *v25;
      v27 = *(v25 + 8);
      if (HIDWORD(v303) - v303 - (BYTE6(v304) ^ 1u) < v27)
      {
        os_trace_blob_add_slow(&v302, v26, v27);
      }

      else
      {
        memcpy(v302 + v303, v26, v27);
        v28 = v303 + v27;
        LODWORD(v303) = v303 + v27;
        if ((v304 & 0x1000000000000) == 0)
        {
          *(v302 + v28) = 0;
        }
      }
    }

    LOWORD(v1) = 2048 - v303;
  }

  v29 = *v9;
  v30 = v1;
  v31 = *(v8 + 60);
  v288 = v9;
  if ((*v9 & 3) != 0 || v1 < v3 || (v31 & 0x1000) != 0)
  {
    *v333 = v7;
    v34 = v306;
    v35 = v306 + (BYTE6(v307) ^ 1);
    if (v307)
    {
      v36 = v307 - v35;
    }

    else if (HIDWORD(v306))
    {
      v36 = HIDWORD(v306) - v35;
    }

    else
    {
      v36 = 0;
    }

    if (v36 < v30)
    {
      goto LABEL_610;
    }

    v37 = v303 + (BYTE6(v304) ^ 1);
    if (v304)
    {
      v38 = v304 - v37;
    }

    else
    {
      v38 = HIDWORD(v303) - v37;
      if (!HIDWORD(v303))
      {
        v38 = 0;
      }
    }

    if (v38 < v30)
    {
      goto LABEL_610;
    }

    v39 = *v300 + (BYTE6(v301) ^ 1);
    if (v301)
    {
      v40 = v301 - v39;
    }

    else
    {
      v40 = *&v300[2] - v39;
      if (!*&v300[2])
      {
        v40 = 0;
      }
    }

    if (v40 < v30)
    {
LABEL_610:
      _os_assert_log();
      _os_crash();
      __break(1u);
      goto LABEL_611;
    }

    v267 = v6;
    LODWORD(v3) = privacy_opt2flags[(v31 >> 11) & 3];
    *v319 = (32 * v285);
    if ((v29 & 0x10) != 0)
    {
      v319[0] = (32 * v285) | 0x10;
    }

    v263 = v5;
    v276 = v4;
    v274 = v8;
    v270 = v2;
    if ((v307 & 0x200000000) == 0)
    {
      if ((HIDWORD(v306) - v35) <= 1)
      {
        os_trace_blob_add_slow(&v305, v319, 2uLL);
      }

      else
      {
        *(v305 + v306) = *v319;
        v41 = v306 + 2;
        LODWORD(v306) = v306 + 2;
        if ((v307 & 0x1000000000000) == 0)
        {
          *(v305 + v41) = 0;
        }
      }
    }

    v272 = v34;
    if (!*(v9 + 1))
    {
LABEL_186:
      v2 = v270;
      *(v305 + v272) = *v319;
      LODWORD(v6) = v267;
      v8 = v274;
      LODWORD(v4) = v276;
      v5 = v263;
      goto LABEL_187;
    }

    v5 = 0;
    v4 = 0;
    v2 = 0;
    v6 = v30 - v34 - 2;
    v42 = v9 + 2;
    v278 = v3 & 0xF;
    while (1)
    {
      v8 = v42 + 2;
      LOWORD(v291) = *v42;
      v43 = v291;
      v44 = v291;
      if ((v291 & 7) == 0)
      {
        v44 = v278 | v291;
        LOBYTE(v291) = v278 | v291;
      }

      v45 = v43 >> 8;
      v46 = v44 >> 4;
      if (v44 >> 4 > 5)
      {
        if (v46 == 6)
        {
          v44 &= 0xFu;
          LOBYTE(v291) = v44;
          LODWORD(v45) = 4;
          BYTE1(v291) = 4;
          v3 = v333;
          v47 = 6;
          v5 = 4;
          if (v44)
          {
            goto LABEL_106;
          }

          goto LABEL_92;
        }

        if (v46 == 7)
        {
          if (v45 != 8)
          {
            goto LABEL_627;
          }

          v4 = *v8;
          goto LABEL_178;
        }
      }

      else
      {
        if (!v46)
        {
          v47 = v45 + 2;
          v3 = v42 + 2;
          v5 = v45;
          if (v44)
          {
            goto LABEL_106;
          }

          goto LABEL_92;
        }

        if (v46 == 1)
        {
          if (v45 != 4)
          {
            _os_assert_log();
            _os_crash();
            __break(1u);
LABEL_627:
            _os_assert_log();
            _os_crash();
            __break(1u);
LABEL_628:
            _os_assert_log();
            _os_crash();
            __break(1u);
LABEL_629:
            _os_assert_log();
            _os_crash();
            __break(1u);
            goto LABEL_630;
          }

          v5 = *v8 & ~(*v8 >> 31);
          v44 = v44 & 0xF0 | 2;
          LOBYTE(v291) = v44;
          LODWORD(v45) = 4;
          v47 = 6;
          v3 = v42 + 2;
          if (v44)
          {
LABEL_106:
            BYTE1(v291) = 4;
            LODWORD(__src) = 0;
            v48 = v6 >= 6;
            v6 -= 6;
            if (!v48)
            {
LABEL_185:
              v319[0] |= 0x80u;
              goto LABEL_186;
            }

            v9 = v306;
            ++v319[1];
            if ((v307 & 0x200000000) == 0)
            {
              if (HIDWORD(v306) - v306 - (BYTE6(v307) ^ 1u) > 1)
              {
                v52 = v291;
                *(v305 + v306) = v291;
                v53 = v306 + 2;
                LODWORD(v306) = v306 + 2;
                v54 = v52 >> 8;
                if ((v307 & 0x1000000000000) == 0)
                {
                  *(v305 + v53) = 0;
                }

LABEL_112:
                if ((v307 & 0x200000000) == 0)
                {
                  if (HIDWORD(v306) - v306 - (BYTE6(v307) ^ 1u) < v54)
                  {
                    os_trace_blob_add_slow(&v305, &__src, v54);
                  }

                  else
                  {
                    memcpy(v305 + v306, &__src, v54);
                    v55 = v306 + v54;
                    LODWORD(v306) = v306 + v54;
                    if ((v307 & 0x1000000000000) == 0)
                    {
                      *(v305 + v55) = 0;
                    }
                  }
                }

                if (!v305)
                {
                  goto LABEL_186;
                }

                v9 += v305;
                v56 = privacy_flags2opt[v291 & 7];
                if (!v3)
                {
                  if (v56 <= v285 || !v4)
                  {
                    goto LABEL_171;
                  }

                  LOBYTE(v57) = *v9 & 8 | 0xF2;
                  *v9 = v57;
                  goto LABEL_175;
                }

                if (v56 <= v285 || v4)
                {
                  goto LABEL_127;
                }

                v57 = *v9;
                if ((v57 & 0xF0) != 0x40)
                {
                  goto LABEL_172;
                }

                if ([v3 isProxy] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && ((objc_msgSend(v3, "isNSNumber") & 1) != 0 || (objc_msgSend(v3, "isNSString")))
                {
                  goto LABEL_171;
                }

                sel_registerName("redactedDescription");
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_171;
                }

                v4 = 0;
                *v9 = *v9 & 0xF | 0x80;
                WORD2(v301) |= 4u;
LABEL_127:
                v58 = v5;
                if (v6 >= 0x7FFF)
                {
                  v59 = 0x7FFFLL;
                }

                else
                {
                  v59 = v6;
                }

                v60 = *v9;
                v61 = v60 >> 4;
                if (v60 >> 4 > 3)
                {
                  switch(v61)
                  {
                    case 4u:
                      if ((v60 & 0xF0) != 0x40)
                      {
                        goto LABEL_657;
                      }

                      v105 = (v60 & 2) == 0;
                      v64 = v265;
                      if (!v105)
                      {
                        v64 = 0;
                      }

                      break;
                    case 5u:
                      if ((v60 & 7) != 0)
                      {
                        v63 = 0;
                        v62 = v3;
                        goto LABEL_168;
                      }

                      v260 = v59;
                      if (v5)
                      {
                        wcsnlen(v3, v5);
                      }

                      else
                      {
                        wcslen(v3);
                      }

                      is_memory_immutable = _dyld_is_memory_immutable();
                      v67 = 0;
                      v63 = 0;
                      v69 = v3;
                      v62 = v3;
                      goto LABEL_165;
                    case 8u:
                      if ((v60 & 0xF0) != 0x80)
                      {
                        goto LABEL_656;
                      }

                      v64 = 1;
                      break;
                    default:
LABEL_708:
                      _os_crash();
                      __break(1u);
                      goto LABEL_709;
                  }

                  v65 = _os_log_fmt_flatten_object_impl(v9, v285, v4, v3, v5, &v302, &v299, v59, v64);
                }

                else
                {
                  if (!v61)
                  {
                    if (!v5)
                    {
                      _os_assert_log();
                      _os_crash();
                      __break(1u);
LABEL_656:
                      _os_assert_log();
                      _os_crash();
                      __break(1u);
LABEL_657:
                      _os_assert_log();
                      _os_crash();
                      __break(1u);
LABEL_658:
                      v58 |= 0x1000u;
LABEL_457:
                      v3 = (v99 + 8);
                      if ((qword_1ED3F74D0 & 8) != 0 || (*v75 & 8) != 0 || (voucher_get_activity_id() & 0x800000000000000) != 0)
                      {
                        if (mach_get_times())
                        {
LABEL_709:
                          _os_assumes_log();
                        }

                        v193 = 1;
                      }

                      else
                      {
                        v193 = 0;
                        *v2 = mach_continuous_time();
                      }

                      v177 = (v58 << 16) | (v42 << 32) | (v6 << 8);
                      __src = v333;
                      v322 = v3;
                      v323 = *v291;
                      *&v324 = *(v291 + 2);
                      *(&v324 + 1) = **v292;
                      *&v325 = *(*v292 + 8);
                      *(&v325 + 1) = *v293;
                      v326[0] = *(v293 + 2);
                      voucher_activity_trace_v_2();
                      if (!v193)
                      {
LABEL_462:
                        v2 = v8;
                        v8 = v9;
                        v9 = 3954044928;
                        goto LABEL_580;
                      }

                      v247 = *(v8 + 48);
                      if (*(v247 + 32))
                      {
                        v173 = *v292;
                        *(*v292 + 8) = 2;
                        if ((*(v173 + 22) & 1) == 0)
                        {
                          *(*v173 + 2) = 0;
                          v173 = *v292;
                        }

                        if ((*(v173 + 20) & 2) == 0)
                        {
                          v12 = *(v247 + 24);
                          v179 = *(v247 + 32);
                          v248 = *(v173 + 8);
                          if (*(v173 + 12) - v248 - (*(v173 + 22) ^ 1u) >= v179)
                          {
                            memcpy((*v173 + v248), v12, v179);
                            v249 = *(v173 + 8) + v179;
                            *(v173 + 8) = v249;
                            if ((*(v173 + 22) & 1) == 0)
                            {
                              *(*v173 + v249) = 0;
                            }

                            goto LABEL_666;
                          }

LABEL_711:
                          os_trace_blob_add_slow(v173, v12, v179);
                        }
                      }

LABEL_666:
                      _os_log_impl_stream(v8, v9, v319, &v311, &v291, v177 | 8, 0);
                      goto LABEL_462;
                    }

                    v62 = 0;
                    v63 = 0;
                    goto LABEL_168;
                  }

                  if (v61 != 2)
                  {
                    if (v61 != 3)
                    {
                      goto LABEL_708;
                    }

                    if (v5)
                    {
                      v62 = 0;
                      if ((v60 & 7) != 0)
                      {
                        v63 = 0;
                        goto LABEL_168;
                      }

                      v67 = 0;
LABEL_167:
                      *v9 = v60 | 1;
                      v63 = v67;
                      goto LABEL_168;
                    }

                    v66 = 0;
LABEL_170:
                    v6 -= v66;
LABEL_171:
                    v57 = *v9;
LABEL_172:
                    if (v57 <= 0xF && (*(v9 + 4) & 0x7FFF) == 0)
                    {
                      *(v9 + 4) = 0x8000;
                    }

LABEL_175:
                    v9 = v288;
                    if (v57)
                    {
                      v319[0] |= 1u;
                    }

LABEL_177:
                    v4 = 0;
                    v5 = 0;
                    goto LABEL_178;
                  }

                  if ((v60 & 7) != 0)
                  {
                    v62 = 0;
                    v63 = v3;
                    goto LABEL_168;
                  }

                  v260 = v59;
                  if (v5)
                  {
                    strnlen(v3, v5);
                  }

                  else
                  {
                    strlen(v3);
                  }

                  is_memory_immutable = _dyld_is_memory_immutable();
                  v69 = 0;
                  v62 = 0;
                  v67 = v3;
                  v63 = v3;
LABEL_165:
                  v59 = v260;
                  if ((is_memory_immutable & 1) == 0)
                  {
                    LOBYTE(v60) = *v9;
                    v62 = v69;
                    goto LABEL_167;
                  }

LABEL_168:
                  v65 = _os_log_fmt_flatten_to_blob(v9, v285, v4, v3, v5, &v302, &v299, v59, v63, v62);
                }

                v66 = v65;
                goto LABEL_170;
              }

              os_trace_blob_add_slow(&v305, &v291, 2uLL);
            }

            v54 = 4;
            goto LABEL_112;
          }

          goto LABEL_92;
        }
      }

      if (os_log_fmt_flatten_cmd_type_is_scalar[v46] == 1)
      {
        goto LABEL_628;
      }

      if (v45 != 8)
      {
        goto LABEL_629;
      }

      v3 = *v8;
      v319[0] |= 2u;
      LODWORD(v45) = 8;
      v47 = 10;
      if (v44)
      {
        goto LABEL_106;
      }

LABEL_92:
      if ((os_log_fmt_flatten_cmd_type_is_scalar[v44 >> 4] & 1) == 0)
      {
        goto LABEL_106;
      }

      v48 = v6 >= v47;
      v6 -= v47;
      if (!v48)
      {
        goto LABEL_185;
      }

      ++v319[1];
      if ((v307 & 0x200000000) == 0)
      {
        if (HIDWORD(v306) - v306 - (BYTE6(v307) ^ 1u) <= 1)
        {
          os_trace_blob_add_slow(&v305, &v291, 2uLL);
        }

        else
        {
          v49 = v291;
          *(v305 + v306) = v291;
          v50 = v306 + 2;
          LODWORD(v306) = v306 + 2;
          LODWORD(v45) = v49 >> 8;
          if ((v307 & 0x1000000000000) == 0)
          {
            *(v305 + v50) = 0;
          }
        }
      }

      if ((v307 & 0x200000000) == 0)
      {
        if (HIDWORD(v306) - v306 - (BYTE6(v307) ^ 1u) < v45)
        {
          os_trace_blob_add_slow(&v305, v3, v45);
        }

        else
        {
          memcpy(v305 + v306, v3, v45);
          v51 = v306 + v45;
          LODWORD(v306) = v306 + v45;
          if ((v307 & 0x1000000000000) == 0)
          {
            *(v305 + v51) = 0;
          }
        }
      }

      if (!v305)
      {
        goto LABEL_186;
      }

      v9 = v288;
      if ((v291 & 0xF0) != 0x10)
      {
        goto LABEL_177;
      }

LABEL_178:
      v2 = (v2 + 1);
      v42 = v8 + *(v42 + 1);
      if (v2 >= *(v9 + 1))
      {
        goto LABEL_186;
      }
    }
  }

  if ((v307 & 0x200000000) != 0)
  {
    goto LABEL_187;
  }

  v32 = v3;
  if (HIDWORD(v306) - v306 - (BYTE6(v307) ^ 1u) < v3)
  {
    goto LABEL_636;
  }

  memcpy(v305 + v306, v9, v3);
  v33 = v306 + v3;
  LODWORD(v306) = v306 + v3;
  if ((v307 & 0x1000000000000) == 0)
  {
    *(v305 + v33) = 0;
  }

LABEL_187:
  v70 = v303;
  v71 = *v300;
  if ((v7 & 0x8000000) != 0)
  {
LABEL_611:
    os_log_fmt_compose(v5, *(v2 + 40), 2, 3u, 8, v305, v302, v70, v299, v71);
    v70 = v303;
    v71 = *v300;
  }

  v72 = v70 + v306 + v71;
  if ((v7 & 0x100000) == 0 || (byte_1ED3F7561 == 2 ? (v242 = 1) : (v242 = v4), v242 == 1))
  {
    v73 = 1024;
  }

  else
  {
    v73 = 2048;
  }

  if (v72 > v73)
  {
    v7 |= 0x2000000u;
  }

  v105 = v71 == 0;
  v74 = v282;
  if (v105)
  {
    v74 = 1;
  }

  if ((v74 & 1) == 0 && (v301 & 0x400000000) == 0)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_618;
  }

  v9 = 3954044928;
  v291 = &v305;
  *v292 = &v302;
  v293 = &v299;
  v294 = v5;
  v297 = 0;
  v295 = 0u;
  v296 = 0u;
  v298 = v7;
  if ((qword_1ED3F74D0 & 0x800) == 0)
  {
    v75 = 0xFFFFFC104;
    if (!(MEMORY[0xFFFFFC104] & 0x800 | v7 & 0x1000000))
    {
      if ((v7 & 0x800000) != 0)
      {
        *&v295 = os_log_fmt_extract_symptom(v288);
        *(&v295 + 1) = v12;
        v75 = 0xFFFFFC104;
      }

      v277 = v4;
      if ((v7 & 0x400000) == 0)
      {
        v77 = *(v2 + 24);
        v76 = *(v2 + 32);
        v78 = v2;
        v79 = *(v2 + 40);
        if ((v7 & 0x40000) == 0)
        {
          v271 = v78;
          v309 = 0;
          v310 = 0;
          v308 = 0;
          if (xmmword_1ED3F74C0)
          {
            v80 = dword_1ED3F7568;
          }

          else
          {
            v80 = 0;
          }

          v81 = 0x1ED3F7000uLL;
          if (_os_trace_dsc_load_addr > v77 || _os_trace_dsc_size + _os_trace_dsc_load_addr <= v77)
          {
            if (*(v77 + 12) != 2)
            {
              if (xmmword_1ED3F74C0)
              {
LABEL_262:
                v110 = *v80;
                do
                {
                  if (v110)
                  {
                    _os_trace_rwptr_rdlock_wait(v80);
                    v81 = 0x1ED3F7000;
                    goto LABEL_262;
                  }

                  v111 = v110;
                  atomic_compare_exchange_strong_explicit(v80, &v111, v110 + 0x200000000, memory_order_relaxed, memory_order_relaxed);
                  v105 = v111 == v110;
                  v110 = v111;
                }

                while (!v105);
                v147 = *(off_1ED3F7570 + 5);
                v148 = off_1ED3F7570 + 16;
                v149 = (v77 >> *MEMORY[0x1E69E9AC0]) % v147;
                while (1)
                {
                  v150 = *&v148[16 * v149];
                  if (v77 == v150)
                  {
                    break;
                  }

                  if (v149 + 1 == v147)
                  {
                    v149 = 0;
                  }

                  else
                  {
                    ++v149;
                  }

                  if (v150)
                  {
                    v151 = v149 == (v77 >> *MEMORY[0x1E69E9AC0]) % v147;
                  }

                  else
                  {
                    v151 = 1;
                  }

                  if (v151)
                  {
                    v95 = 0;
                    goto LABEL_363;
                  }
                }

                v95 = *&v148[16 * v149 + 8];
LABEL_363:
                v157 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
                v158 = *v80;
                v159 = *v80;
                do
                {
                  v160 = v158 - 0x200000000;
                  if (v158 == 0x300000000)
                  {
                    v160 = v157;
                  }

                  atomic_compare_exchange_strong_explicit(v80, &v159, v160, memory_order_relaxed, memory_order_relaxed);
                  v105 = v159 == v158;
                  v158 = v159;
                }

                while (!v105);
                if (v160 == v157)
                {
                  __dmb(9u);
                  v252 = v80;
                  v253 = v95;
                  _os_trace_rwptr_cleanup(v252, _os_trace_mh_map_cleanup);
                  v95 = v253;
                  v81 = 0x1ED3F7000;
                }

                v310 = v95;
                if (v95)
                {
                  LODWORD(v309) = v76 - v77;
                  v266 = (v76 - v77) >> 32;
                  WORD2(v309) = (v76 - v77) >> 32;
                  v96 = 20;
                  HIWORD(v309) = 20;
                  *v319 = v76 - v77;
                  *&v319[4] = *v95;
                  v83 = 10;
                  v273 = v76 - v77;
                  goto LABEL_386;
                }
              }

              else
              {
                v310 = 0;
              }

              LODWORD(v309) = v76;
              v266 = HIDWORD(v76);
              WORD2(v309) = WORD2(v76);
              v83 = 8;
              v273 = v76;
LABEL_385:
              v95 = 0;
              v96 = 6;
              HIWORD(v309) = 6;
              *v319 = v309;
              *&v319[4] = WORD2(v309);
LABEL_386:
              if ((v298 & 0x20000000) != 0)
              {
                v165 = v76;
              }

              else
              {
                v165 = v79;
              }

              if (v165)
              {
                v166 = *(v81 + 2080);
                if (v166 <= v77)
                {
                  if (_os_trace_dsc_size + v166 <= v77)
                  {
                    v166 = v77;
                  }

                  v167 = v165 - v166;
                }

                else
                {
                  v167 = v165 - v77;
                }

                v168 = 4 * (v298 & 0x20000000);
                v169 = v167 >> 31;
                if (v167 >> 31)
                {
                  v290 = v167 & 0x7FFFFFFF | v168;
                  v170 = 2 * v167;
                  v308 = v290 & 0xFFFF0000FFFFFFFFLL | (v169 << 32);
                  if ((v170 & 0xFFFF00000000) != 0)
                  {
                    v83 |= 0x20u;
                    *&v319[v96] = WORD2(v170);
                    v96 += 2;
                  }
                }

                else
                {
                  v308 = v168 | v167;
                  v290 = v308;
                }
              }

              else
              {
                v290 = 0;
                v308 = 0;
              }

              v171 = *(v8 + 24);
              v275 = v8;
              if (v171)
              {
                v83 |= 0x200u;
                *&v319[v96] = *v171;
                v96 += 2;
              }

              v8 = v6 & 0x7F;
              v172 = 1;
              v173 = (v8 - 16);
              if (v8 == 16)
              {
                v174 = 40;
              }

              else
              {
                if (v8 != 17)
                {
                  goto LABEL_407;
                }

                v174 = 44;
              }

              v172 = atomic_fetch_add_explicit((v275 + v174), 1u, memory_order_relaxed) == 0;
LABEL_407:
              v259 = v172;
              v175 = *(v275 + 60);
              v176 = process_prefs_0 & 3;
              if ((v175 & 7) != 0)
              {
                v176 = *(v275 + 60) & 7;
              }

              v280 = v95;
              v177 = 0xFFFFFC104;
              if (v176 == 4)
              {
                v178 = 0;
LABEL_411:
                v179 = 255;
                goto LABEL_473;
              }

              v180 = (v175 >> 3) & 7;
              if (v180)
              {
                v181 = v180;
              }

              else
              {
                v181 = (process_prefs_0 >> 2) & 7;
              }

              if ((v6 & 0x7F) > 0xF)
              {
                if ((v8 - 16) >= 2)
                {
                  goto LABEL_467;
                }
              }

              else if ((v6 & 0x7F) != 0)
              {
                if (v8 != 1)
                {
                  if (v8 == 2)
                  {
                    if (v176 != 3 && (v176 || (qword_1ED3F74D0 & 2) == 0 && (MEMORY[0xFFFFFC104] & 2) == 0 && (voucher_get_activity_id() & 0x200000000000000) == 0))
                    {
                      v178 = *(v275 + 59);
                      goto LABEL_411;
                    }

                    v182 = v181 == 3;
                    v183 = 59;
                    goto LABEL_427;
                  }

LABEL_467:
                  if ((v6 & 0x80) != 0)
                  {
LABEL_470:
                    v178 = 14;
LABEL_471:
                    v83 |= 0x400u;
                    v319[v96++] = v178;
                    v179 = 1;
                    goto LABEL_472;
                  }

                  v178 = 0;
                  goto LABEL_469;
                }

                if ((v176 & 6) != 2 && (v176 || (qword_1ED3F74D0 & 3) == 0 && (MEMORY[0xFFFFFC104] & 3) == 0 && (voucher_get_activity_id() & 0x300000000000000) == 0))
                {
                  v178 = *(v275 + 58);
                  goto LABEL_411;
                }

                v182 = (v181 & 6) == 2;
                v183 = 58;
LABEL_427:
                v178 = *(v275 + v183);
                if ((v6 & 0x80) == 0 && v182)
                {
                  if (v8 != 17 && !v178)
                  {
                    v178 = 0;
                    v179 = 0;
LABEL_472:
                    LODWORD(v298) = v298 | 0x10000000;
LABEL_473:
                    v194 = v298;
                    if ((v298 & 0x2000000) != 0)
                    {
                      if (v277)
                      {
                        qword_1EB2AFE80 = "BUG IN LIBTRACE: Using oversized messages with unreliable interfaces shouldn't be possible";
                        __break(1u);
                        goto LABEL_711;
                      }

                      v83 |= 0x800u;
                      add_explicit = atomic_fetch_add_explicit(&_oversize_message_id, 1u, memory_order_relaxed);
                      *&v319[v96] = add_explicit;
                      v96 += 4;
                      v9 = 3954044928;
                      if ((v194 & 0x80000) == 0)
                      {
LABEL_475:
                        v262 = v178;
                        if ((qword_1ED3F74D0 & 8) == 0 && (MEMORY[0xFFFFFC104] & 8) == 0 && (voucher_get_activity_id() & 0x800000000000000) == 0 || (*(v275 + 60) & 7) == 4)
                        {
                          v195 = 0;
LABEL_479:
                          v269 = v6;
                          v287 = v179;
                          v196 = ((byte_1ED3F7546 & 1) != 0 || byte_1ED3F7547 == 1) && v179 != 255;
                          v197 = _os_log_hook;
                          v264 = v96;
                          v284 = v195;
                          if (_os_log_hook)
                          {
                            v197 = 0;
                            if (_os_log_hook_level <= 1u)
                            {
                              if (_os_log_hook_level)
                              {
                                if (_os_log_hook_level == 1)
                                {
                                  v197 = v8 != 2;
                                }
                              }

                              else
                              {
                                v197 = ((v6 & 0x7F) - 16) < 0xF1u;
                              }
                            }

                            else
                            {
                              switch(_os_log_hook_level)
                              {
                                case 2:
                                  goto LABEL_509;
                                case 16:
                                  v197 = v8 > 0xF;
                                  break;
                                case 17:
                                  v197 = v8 == 17;
                                  break;
                              }
                            }
                          }

                          if (!v195 && !v196 && (v197 & 1) == 0 && (v298 & 0x4000000) == 0)
                          {
                            *v271 = mach_continuous_time();
                            goto LABEL_498;
                          }

LABEL_509:
                          if (mach_get_times())
                          {
                            _os_assumes_log();
                          }

LABEL_498:
                          v199 = (v83 << 16) | (v290 << 32) | (v8 << 8) | 4;
                          v200 = _os_log_hook;
                          if (!_os_log_hook)
                          {
                            goto LABEL_557;
                          }

                          if (_os_log_hook_level <= 1u)
                          {
                            if (_os_log_hook_level)
                            {
                              if (_os_log_hook_level != 1 || v8 == 2)
                              {
                                goto LABEL_557;
                              }
                            }

                            else if (((v6 & 0x7F) - 16) >= 0xF1u)
                            {
                              goto LABEL_557;
                            }
                          }

                          else if (_os_log_hook_level != 2)
                          {
                            if (_os_log_hook_level == 16)
                            {
                              if (v8 <= 0xF)
                              {
                                goto LABEL_557;
                              }
                            }

                            else if (_os_log_hook_level != 17 || v8 != 17)
                            {
                              goto LABEL_557;
                            }
                          }

                          v201 = pthread_getspecific(_os_log_hook_thread_key);
                          v199 = (v83 << 16) | (v290 << 32) | (v8 << 8) | 4;
                          if (v201)
                          {
                            goto LABEL_557;
                          }

                          v315 = 0x1000000000000;
                          v313 = v333;
                          v314 = 0x40000000000;
                          if ((v298 & 0x2000000) != 0)
                          {
                            LODWORD(v315) = 0x8000;
                          }

                          v202 = *(v291 + 2);
                          if (v202 > 0x400)
                          {
                            os_trace_blob_add_slow(&v313, *v291, *(v291 + 2));
                            v202 = v314;
                            if ((v315 & 0x200000000) != 0)
                            {
                              goto LABEL_522;
                            }

                            v203 = HIDWORD(v314);
                            v205 = BYTE6(v315);
                            v204 = BYTE6(v315) ^ 1;
                          }

                          else
                          {
                            v203 = 1024;
                            __memcpy_chk();
                            v204 = 0;
                            LODWORD(v314) = v202;
                            v205 = 1;
                          }

                          v206 = **v292;
                          v207 = *(*v292 + 8);
                          if (v203 - v204 - v202 < v207)
                          {
                            os_trace_blob_add_slow(&v313, v206, *(*v292 + 8));
                            LOWORD(v202) = v314;
                          }

                          else
                          {
                            v208 = v313;
                            memcpy((v313 + v202), v206, *(*v292 + 8));
                            v202 += v207;
                            LODWORD(v314) = v202;
                            if ((v205 & 1) == 0)
                            {
                              *(v208 + v202) = 0;
                            }
                          }

LABEL_522:
                          v209 = v280;
                          v331 = 0u;
                          v330 = 0u;
                          v329 = 0u;
                          v328 = 0u;
                          v327 = 0u;
                          v210 = *v271;
                          v211 = *(v271 + 8);
                          __src = ((v83 << 16) | (v290 << 32) | (v8 << 8) | 4);
                          v322 = v210;
                          v323 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
                          v324 = 0uLL;
                          v212 = (*(v271 + 16) / 0x3E8uLL);
                          *&v325 = v211;
                          *(&v325 + 1) = v212;
                          memset(v326, 0, sizeof(v326));
                          v213 = v313;
                          v326[4] = *(v271 + 40);
                          *&v327 = v313;
                          *(&v327 + 1) = v202;
                          *&v328 = *v293;
                          v214 = *(v275 + 24);
                          if (v214)
                          {
                            v215 = v214 + 4;
                          }

                          else
                          {
                            v215 = 0;
                          }

                          *(&v328 + 1) = *(v293 + 4);
                          *&v329 = v215;
                          v9 = 3954044928;
                          if (v214)
                          {
                            v216 = v214 + 4 + *(v214 + 2);
                          }

                          else
                          {
                            v216 = 0;
                          }

                          *(&v329 + 1) = v216;
                          LODWORD(v330) = 0;
                          WORD2(v330) = 0;
                          v332 = 0;
                          *&v331 = 0;
                          *(&v330 + 1) = 0;
                          WORD4(v331) = 0;
                          v320[1] = 0;
                          v320[0] = 0;
                          v217 = _os_log_hook_params;
                          if ((_os_log_hook_params & 0x8000000000000002) == 0)
                          {
LABEL_552:
                            if ((v217 & 0x8000000000000001) != 0)
                            {
                              v312 = v211;
                              memset(&v311, 0, sizeof(v311));
                              localtime_r(&v312, &v311);
                              v222 = ((v311.tm_gmtoff * 0x7777777777777777) >> 64) - v311.tm_gmtoff;
                              HIDWORD(v326[0]) = v311.tm_isdst;
                              LODWORD(v326[0]) = (v222 >> 5) + (v222 >> 63) + 60 * v311.tm_isdst;
                            }

                            pthread_setspecific(_os_log_hook_thread_key, 1);
                            (*(v200 + 16))(v200, v8, &__src);
                            pthread_setspecific(_os_log_hook_thread_key, 0);
                            if ((v315 & 0x100000000) != 0)
                            {
                              v313 = 3954044928;
                              free(v213);
                            }

                            v199 = (v83 << 16) | (v290 << 32) | (v8 << 8) | 4;
LABEL_557:
                            if (v196)
                            {
                              v250 = v199;
                              _os_log_impl_mirror_to_stderr(v271, v275, v8, &v291, v83);
                              v199 = v250;
                            }

                            LOBYTE(v6) = v269;
                            v223 = v287;
                            if ((qword_1ED3F74D0 & 0x400) != 0 || (MEMORY[0xFFFFFC104] & 0x400) != 0)
                            {
                              goto LABEL_579;
                            }

                            if ((qword_1ED3F74D0 & 0x40000000) != 0 || (MEMORY[0xFFFFFC104] & 0x40000000) != 0)
                            {
                              if (v287 == 255)
                              {
                                v225 = 0;
                                v226 = v284;
                                goto LABEL_576;
                              }

                              v251 = v199;
                              _os_log_mirror_syslog(v271, v275, v8, &v291, v198);
                              v199 = v251;
                              v224 = 1;
                            }

                            else
                            {
                              v224 = v287 != 255;
                            }

                            v225 = 0;
                            v226 = v284;
                            if (!v224 || !xmmword_1ED3F74C0)
                            {
LABEL_576:
                              if (v226)
                              {
                                _os_log_impl_stream(v271, v275, &v309, &v308, &v291, v199, v262);
                                if (!v225)
                                {
                                  goto LABEL_579;
                                }
                              }

                              else if (!v225)
                              {
LABEL_579:
                                v2 = v271;
                                v8 = v275;
                                goto LABEL_580;
                              }

                              v228 = voucher_adopt();
                              os_release(v228);
                              goto LABEL_579;
                            }

                            if (v295)
                            {
                              v254 = v199;
                              _os_log_impl_mirror_symptom(v271, v275, &v291);
                              v199 = v254;
                              v226 = v284;
                            }

                            if (v8 == 17)
                            {
                              v234 = v199;
                              v235 = v226;
                              if (v277)
                              {
                                if ((v298 & 0x2000000) == 0)
                                {
                                  v225 = 0;
                                  v9 = 3954044928;
                                  v223 = v287;
                                  goto LABEL_597;
                                }

                                goto LABEL_712;
                              }

                              v257 = (*(v275 + 60) >> 23) & 3;
                              if (v257 == 2 || v257 == 1 && (byte_1ED3F754C == 2 || byte_1ED3F754C != 3 && (MEMORY[0xFFFFFC104] & 0x80000000) == 0 && (*&v259 & ((MEMORY[0xFFFFFC104] & 0x10000000u) >> 28)) == 1))
                              {
                                _os_log_impl_generate_crashlog(v275, v271, &v291);
                              }

                              v236 = 2;
                              v9 = 3954044928;
                            }

                            else
                            {
                              if (v269 >= 0)
                              {
                                v227 = 1;
                              }

                              else
                              {
                                v227 = v277;
                              }

                              if (v227)
                              {
                                v225 = 0;
                                goto LABEL_595;
                              }

                              v234 = v199;
                              v235 = v226;
                              v236 = 1;
                            }

                            v225 = 1;
                            *v333 = 1;
                            *&v333[8] = 0;
                            *&v333[16] = v236;
                            *&v333[20] = 1;
                            _os_activity_create_addr(&dword_1A7AB8000, "Activity for state dumps", -3, 0, v10);
                            activity_id = voucher_get_activity_id();
                            voucher_adopt();
                            _os_state_request_for_self(activity_id, v333, v262, v77);
                            v223 = v287;
                            v226 = v235;
                            v199 = v234;
LABEL_595:
                            if ((v298 & 0x2000000) == 0)
                            {
                              v234 = v199;
                              v235 = v226;
LABEL_597:
                              *v333 = v319;
                              *&v333[8] = v264;
                              *&v333[16] = *v291;
                              v334 = *(v291 + 2);
                              v335 = **v292;
                              v336 = *(*v292 + 8);
                              v337 = *v293;
                              v238 = *(v293 + 2);
                              v338 = v238;
                              v199 = transport_add_tracepoint(v223, v234, *v271, v333, v334 + v264 + v336, v238, v277);
                              v226 = v235;
                              goto LABEL_576;
                            }

                            if (!v277)
                            {
                              v255 = v199;
                              v256 = v226;
                              _os_log_impl_send_oversize(v275, v223, v262, *v271, add_explicit, &v291);
                              v199 = transport_add_public_tracepoint(v223, v255, *v271, v319, v264);
                              v9 = 3954044928;
                              v226 = v256;
                              goto LABEL_576;
                            }

LABEL_712:
                            qword_1EB2AFE80 = "BUG IN LIBTRACE: Using oversized messages with unreliable interfaces shouldn't be possible";
                            __break(1u);
                            return;
                          }

                          v281 = v313;
                          v218 = *(v271 + 24);
                          v219 = v273 | (v266 << 32);
                          v258 = v211;
                          if (*(v218 + 12) == 2)
                          {
                            LODWORD(v326[1]) = v273;
                            WORD2(v326[1]) = v266;
                            if (xmmword_1ED3F74C0)
                            {
                              v209 = (xmmword_1ED3F74C0 + 8);
                            }

                            else
                            {
                              v209 = 0;
                            }
                          }

                          else if (v209)
                          {
                            LODWORD(v326[1]) = v273;
                            WORD2(v326[1]) = v266;
                          }

                          else
                          {
                            if (!_dyld_get_image_uuid())
                            {
LABEL_549:
                              v221 = v290 & 0x7FFFFFFF | (WORD2(v308) << 31);
                              if ((v290 & 0x80000000) != 0)
                              {
                                v221 |= 0x8000000000000000;
                              }

                              v326[2] = v221;
                              *(&v324 + 1) = dyld_image_path_containing_address();
                              v213 = v281;
                              v211 = v258;
                              goto LABEL_552;
                            }

                            v220 = _os_trace_dsc_load_addr;
                            if (_os_trace_dsc_load_addr <= v218)
                            {
                              if (_os_trace_dsc_size + _os_trace_dsc_load_addr <= v218)
                              {
                                v220 = 0;
                              }

                              v219 += v220;
                            }

                            v326[1] = v219 - v218;
                            v209 = v320;
                          }

                          *&v324 = v209;
                          goto LABEL_549;
                        }

                        if ((dword_1ED3F7540 & 4) == 0)
                        {
                          goto LABEL_644;
                        }

                        if ((v6 & 0x7F) > 0xF)
                        {
                          if ((v8 - 16) >= 2)
                          {
                            goto LABEL_644;
                          }
                        }

                        else if ((v6 & 0x7F) != 0)
                        {
                          if (v8 == 1)
                          {
                            if ((qword_1ED3F7538 & 0x100000000) != 0)
                            {
                              goto LABEL_688;
                            }
                          }

                          else if (v8 == 2 && (qword_1ED3F7538 & 0x200000000) != 0)
                          {
                            goto LABEL_688;
                          }

LABEL_644:
                          v246 = (*(v275 + 60) >> 27) & 7;
                          if (v246 != 3)
                          {
                            if (v246 == 2)
                            {
                              v195 = v8 != 2;
                            }

                            else
                            {
                              v195 = v246 == 1 && ((v6 & 0x7F) - 3) < 0xFEu;
                            }

                            goto LABEL_689;
                          }

LABEL_688:
                          v195 = 1;
LABEL_689:
                          v9 = 3954044928;
                          goto LABEL_479;
                        }

                        if ((qword_1ED3F7538 & 0x800000000) != 0)
                        {
                          goto LABEL_688;
                        }

                        goto LABEL_644;
                      }
                    }

                    else
                    {
                      add_explicit = 0;
                      if ((v298 & 0x80000) == 0)
                      {
                        goto LABEL_475;
                      }
                    }

                    v83 |= 0x1000u;
                    goto LABEL_475;
                  }

LABEL_433:
                  v184 = v178;
                  if (v178 >= 0x1Eu)
                  {
                    v178 = 30;
                  }

                  if (v184)
                  {
                    goto LABEL_471;
                  }

                  goto LABEL_470;
                }

                if ((v6 & 0x80) != 0)
                {
                  goto LABEL_433;
                }

LABEL_469:
                v179 = 2;
                goto LABEL_473;
              }

              v182 = v181 != 4;
              v183 = 57;
              goto LABEL_427;
            }

            LODWORD(v309) = v76 - v77;
            v266 = (v76 - v77) >> 32;
            WORD2(v309) = (v76 - v77) >> 32;
            HIWORD(v309) = 4;
            v310 = 0;
            v83 = 2;
            v82 = v76 - v77;
          }

          else
          {
            v82 = v76 - _os_trace_dsc_load_addr;
            LODWORD(v309) = v76 - _os_trace_dsc_load_addr;
            WORD2(v309) = (v76 - _os_trace_dsc_load_addr) >> 32;
            v310 = 0;
            if (WORD2(v309))
            {
              v273 = v76 - _os_trace_dsc_load_addr;
              v266 = (v76 - _os_trace_dsc_load_addr) >> 32;
              v83 = 12;
              goto LABEL_385;
            }

            HIDWORD(v309) = 0x40000;
            LOWORD(v266) = 0;
            v83 = 4;
          }

          v95 = 0;
          v273 = v82;
          *v319 = v82;
          v96 = 4;
          goto LABEL_386;
        }

        v9 = v8;
        *&v319[8] = 0;
        *v319 = 0;
        *&v311.tm_sec = 0;
        v8 = v78;
        v92 = *(v78 + 56);
        if (xmmword_1ED3F74C0)
        {
          v93 = dword_1ED3F7568;
        }

        else
        {
          v93 = 0;
        }

        if (_os_trace_dsc_load_addr > v77 || _os_trace_dsc_size + _os_trace_dsc_load_addr <= v77)
        {
          if (*(v77 + 12) != 2)
          {
            v268 = v6;
            if (xmmword_1ED3F74C0)
            {
LABEL_268:
              v112 = *v93;
              do
              {
                if (v112)
                {
                  _os_trace_rwptr_rdlock_wait(v93);
                  v75 = 0xFFFFFC104;
                  goto LABEL_268;
                }

                v113 = v112;
                atomic_compare_exchange_strong_explicit(v93, &v113, v112 + 0x200000000, memory_order_relaxed, memory_order_relaxed);
                v105 = v113 == v112;
                v112 = v113;
              }

              while (!v105);
              v152 = *(off_1ED3F7570 + 5);
              v153 = off_1ED3F7570 + 16;
              v154 = (v77 >> *MEMORY[0x1E69E9AC0]) % v152;
              while (1)
              {
                v155 = *&v153[16 * v154];
                if (v77 == v155)
                {
                  break;
                }

                if (v154 + 1 == v152)
                {
                  v154 = 0;
                }

                else
                {
                  ++v154;
                }

                if (v155)
                {
                  v156 = v154 == (v77 >> *MEMORY[0x1E69E9AC0]) % v152;
                }

                else
                {
                  v156 = 1;
                }

                if (v156)
                {
                  v6 = 0;
                  goto LABEL_373;
                }
              }

              v6 = *&v153[16 * v154 + 8];
LABEL_373:
              v161 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
              v162 = *v93;
              v163 = *v93;
              do
              {
                v164 = v162 - 0x200000000;
                if (v162 == 0x300000000)
                {
                  v164 = v161;
                }

                atomic_compare_exchange_strong_explicit(v93, &v163, v164, memory_order_relaxed, memory_order_relaxed);
                v105 = v163 == v162;
                v162 = v163;
              }

              while (!v105);
              if (v164 == v161)
              {
                __dmb(9u);
                _os_trace_rwptr_cleanup(v93, _os_trace_mh_map_cleanup);
                v75 = 0xFFFFFC104;
              }

              *&v319[8] = v6;
              if (v6)
              {
                *v319 = v76 - v77;
                *&v319[4] = (v76 - v77) >> 32;
                v99 = 20;
                *&v319[6] = 20;
                *v333 = v76 - v77;
                *&v333[4] = *v6;
                v58 = 10;
                LODWORD(v6) = v268;
                goto LABEL_440;
              }
            }

            else
            {
              *&v319[8] = 0;
            }

            *v319 = v76;
            *&v319[4] = WORD2(v76);
            v58 = 8;
            LODWORD(v6) = v268;
LABEL_439:
            v99 = 6;
            *&v319[6] = 6;
            *v333 = *v319;
            *&v333[4] = *&v319[4];
LABEL_440:
            v185 = v298;
            if ((v298 & 0x20000000) != 0)
            {
              v186 = v76;
            }

            else
            {
              v186 = v79;
            }

            if (v186)
            {
              v187 = _os_trace_dsc_load_addr;
              v2 = v8;
              if (_os_trace_dsc_load_addr <= v77)
              {
                if (_os_trace_dsc_size + _os_trace_dsc_load_addr <= v77)
                {
                  v187 = v77;
                }

                v188 = v186 - v187;
              }

              else
              {
                v188 = v186 - v77;
              }

              v189 = 4 * (v298 & 0x20000000);
              v190 = v188 >> 31;
              if (v188 >> 31)
              {
                v42 = v188 & 0x7FFFFFFF | v189;
                v191 = 2 * v188;
                *&v311.tm_sec = v42 & 0xFFFF0000FFFFFFFFLL | (v190 << 32);
                if ((v191 & 0xFFFF00000000) != 0)
                {
                  v58 |= 0x20u;
                  *&v333[v99] = WORD2(v191);
                  v99 += 2;
                }
              }

              else
              {
                v42 = v189 | v188;
                *&v311.tm_sec = v42;
              }
            }

            else
            {
              v42 = 0;
              *&v311.tm_sec = 0;
              v2 = v8;
            }

            v192 = *(v9 + 24);
            if (v192)
            {
              v58 |= 0x200u;
              *&v333[v99] = *v192;
              v99 += 2;
            }

            LODWORD(v298) = v185 | 0x10000000;
            *&v333[v99] = v92;
            if ((v185 & 0x80000) != 0)
            {
              goto LABEL_658;
            }

            goto LABEL_457;
          }

          v94 = v76 - v77;
          *v319 = v76 - v77;
          *&v319[4] = (v76 - v77) >> 32;
          *&v319[6] = 4;
          *&v319[8] = 0;
          v58 = 2;
        }

        else
        {
          v94 = v76 - _os_trace_dsc_load_addr;
          *v319 = v76 - _os_trace_dsc_load_addr;
          *&v319[4] = (v76 - _os_trace_dsc_load_addr) >> 32;
          *&v319[8] = 0;
          if (*&v319[4])
          {
            v58 = 12;
            goto LABEL_439;
          }

          *&v319[4] = 0x40000;
          v58 = 4;
        }

        *v333 = v94;
        v99 = 4;
        goto LABEL_440;
      }

      v84 = *(v2 + 24);
      v85 = *(v2 + 32);
      v86 = *(v2 + 40);
      v313 = 0;
      v314 = 0;
      v320[0] = 0;
      v87 = *(v2 + 56);
      if (xmmword_1ED3F74C0)
      {
        v88 = dword_1ED3F7568;
      }

      else
      {
        v88 = 0;
      }

      v286 = *(v2 + 56);
      if (_os_trace_dsc_load_addr > v84 || _os_trace_dsc_size + _os_trace_dsc_load_addr <= v84)
      {
        if (*(v84 + 12) != 2)
        {
          if (xmmword_1ED3F74C0)
          {
LABEL_231:
            v97 = *v88;
            do
            {
              if (v97)
              {
                _os_trace_rwptr_rdlock_wait(v88);
                v87 = v286;
                goto LABEL_231;
              }

              v98 = v97;
              atomic_compare_exchange_strong_explicit(v88, &v98, v97 + 0x200000000, memory_order_relaxed, memory_order_relaxed);
              v105 = v98 == v97;
              v97 = v98;
            }

            while (!v105);
            v100 = *(off_1ED3F7570 + 5);
            v101 = off_1ED3F7570 + 16;
            v102 = (v84 >> *MEMORY[0x1E69E9AC0]) % v100;
            while (1)
            {
              v103 = v6;
              v104 = *&v101[16 * v102];
              if (v84 == v104)
              {
                break;
              }

              if (v102 + 1 == v100)
              {
                v102 = 0;
              }

              else
              {
                ++v102;
              }

              if (v104)
              {
                v105 = v102 == (v84 >> *MEMORY[0x1E69E9AC0]) % v100;
              }

              else
              {
                v105 = 1;
              }

              if (v105)
              {
                v6 = 0;
                goto LABEL_251;
              }
            }

            v6 = *&v101[16 * v102 + 8];
LABEL_251:
            v106 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
            v107 = *v88;
            v108 = *v88;
            do
            {
              v109 = v107 - 0x200000000;
              if (v107 == 0x300000000)
              {
                v109 = v106;
              }

              atomic_compare_exchange_strong_explicit(v88, &v108, v109, memory_order_relaxed, memory_order_relaxed);
              v105 = v108 == v107;
              v107 = v108;
            }

            while (!v105);
            if (v109 == v106)
            {
              __dmb(9u);
              _os_trace_rwptr_cleanup(v88, _os_trace_mh_map_cleanup);
              v87 = v286;
            }

            v314 = v6;
            if (v6)
            {
              LODWORD(v313) = v85 - v84;
              WORD2(v313) = (v85 - v84) >> 32;
              v91 = 20;
              HIWORD(v313) = 20;
              *v319 = v85 - v84;
              *&v319[4] = *v6;
              v90 = 10;
              LODWORD(v6) = v103;
              v9 = 3954044928;
              goto LABEL_276;
            }
          }

          else
          {
            v103 = v6;
            v314 = 0;
          }

          LODWORD(v313) = v85;
          WORD2(v313) = WORD2(v85);
          v90 = 8;
          LODWORD(v6) = v103;
          v9 = 3954044928;
LABEL_275:
          v91 = 6;
          HIWORD(v313) = 6;
          *v319 = v313;
          *&v319[4] = WORD2(v313);
LABEL_276:
          if (v86)
          {
            v114 = _os_trace_dsc_load_addr;
            if (_os_trace_dsc_load_addr <= v84)
            {
              if (_os_trace_dsc_size + _os_trace_dsc_load_addr <= v84)
              {
                v114 = v84;
              }

              v115 = v86 - v114;
            }

            else
            {
              v115 = v86 - v84;
            }

            if (v115 >> 31)
            {
              v117 = (2 * v115) & 0xFFFF00000000;
            }

            else
            {
              v117 = 0;
            }

            v116 = v117 & 0xFFFFFFFF80000000 | v115 & 0x7FFFFFFF;
          }

          else
          {
            v116 = 0;
          }

          v320[0] = v116;
          v118 = *(v2 + 48);
          if (v118)
          {
            v119 = _os_trace_dsc_load_addr;
            if (_os_trace_dsc_load_addr <= v84)
            {
              if (_os_trace_dsc_size + _os_trace_dsc_load_addr <= v84)
              {
                v119 = v84;
              }

              v120 = v118 - v119;
            }

            else
            {
              v120 = v118 - v84;
            }

            v122 = (2 * v120) & 0xFFFF00000000;
            if (!(v120 >> 31))
            {
              v122 = 0;
            }

            v121 = v122 & 0xFFFFFFFF80000000 | v120 & 0x7FFFFFFF;
          }

          else
          {
            v121 = 0;
          }

          if (HIDWORD(v116) || HIDWORD(v121))
          {
            v90 |= 0x20u;
            *&v319[v91] = WORD2(v116);
            v91 += 2;
          }

          v123 = *(v8 + 24);
          if (v123)
          {
            v90 |= 0x200u;
            *&v319[v91] = *v123;
            v91 += 2;
          }

          v124 = *(v8 + 60);
          v125 = v6;
          if ((v124 & 0x80000) != 0)
          {
            LODWORD(v298) = v298 | 0x10000000;
            v126 = 4;
          }

          else
          {
            v126 = 2;
          }

          *&v319[v91] = v87;
          v127 = v91 + 8;
          if (v118)
          {
            *&v319[v127] = v121;
            v127 = v91 + 12;
            if ((v90 & 0x20) != 0)
            {
              *&v319[v127] = WORD2(v121);
              LODWORD(v127) = v91 + 14;
            }

            v90 |= 0x8000u;
          }

          v128 = v298;
          if ((v298 & 0x2000000) != 0)
          {
            v129 = atomic_fetch_add_explicit(&_oversize_message_id, 1u, memory_order_relaxed);
            v90 |= 0x800u;
            *&v319[v127] = v129;
            LODWORD(v127) = v127 + 4;
            if ((v128 & 0x80000) == 0)
            {
LABEL_311:
              if ((v124 & 0x400000) == 0)
              {
                goto LABEL_317;
              }

              goto LABEL_312;
            }
          }

          else
          {
            v129 = 0;
            if ((v298 & 0x80000) == 0)
            {
              goto LABEL_311;
            }
          }

          v90 |= 0x1000u;
          if ((v124 & 0x400000) == 0)
          {
            goto LABEL_317;
          }

LABEL_312:
          if (((qword_1ED3F74D0 & 8) != 0 || (MEMORY[0xFFFFFC104] & 8) != 0 || (voucher_get_activity_id() & 0x800000000000000) != 0) && ((dword_1ED3F7540 & 8) != 0 || (*(v8 + 63) & 0x40) != 0))
          {
            if (mach_get_times())
            {
              _os_assumes_log();
            }

            v289 = 1;
LABEL_318:
            v130 = (v90 << 16) | (v116 << 32) | (v125 << 8) | 6;
            if ((*(v8 + 62) & 2) == 0 || !_signpost_hook)
            {
LABEL_336:
              if ((v298 & 0x2000000) != 0)
              {
                _os_log_impl_send_oversize(v8, v126, 0, *v2, v129, &v291);
                transport_add_public_tracepoint(v126, v130, *v2, v319, v127);
              }

              else
              {
                *v333 = v319;
                *&v333[8] = v127;
                *&v333[16] = *v291;
                v334 = *(v291 + 2);
                v335 = **v292;
                v336 = *(*v292 + 8);
                v337 = *v293;
                v146 = *(v293 + 2);
                v338 = v146;
                transport_add_tracepoint(v126, v130, *v2, v333, v334 + v127 + v336, v146, v277);
              }

              LOBYTE(v6) = v125;
              if (v289)
              {
                _os_log_impl_stream(v2, v8, &v313, v320, &v291, v130, 0);
              }

              goto LABEL_580;
            }

            v283 = v126;
            *&v311.tm_mon = 0x1000000000000;
            *&v311.tm_sec = v333;
            *&v311.tm_hour = 0x40000000000;
            if ((v298 & 0x2000000) != 0)
            {
              v311.tm_mon = 0x8000;
            }

            v131 = v2;
            v132 = *(v291 + 2);
            v279 = v129;
            if (v132 > 0x400)
            {
              os_trace_blob_add_slow(&v311, *v291, v132);
              LODWORD(v132) = v311.tm_hour;
              if ((v311.tm_year & 2) != 0)
              {
LABEL_327:
                v331 = 0u;
                v330 = 0u;
                v329 = 0u;
                v328 = 0u;
                v327 = 0u;
                v2 = v131;
                v139 = *v131;
                __src = v130;
                v322 = v139;
                v140 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
                v324 = 0u;
                v325 = 0u;
                memset(v326, 0, sizeof(v326));
                v141 = v131[5];
                v323 = v140;
                v326[4] = v141;
                v142 = *&v311.tm_sec;
                *&v327 = *&v311.tm_sec;
                *(&v327 + 1) = v132;
                *&v328 = *v293;
                v143 = *(v8 + 24);
                if (v143)
                {
                  v144 = v143 + 4;
                }

                else
                {
                  v144 = 0;
                }

                *(&v328 + 1) = *(v293 + 4);
                *&v329 = v144;
                v9 = 3954044928;
                if (v143)
                {
                  v145 = v143 + 4 + *(v143 + 2);
                }

                else
                {
                  v145 = 0;
                }

                v126 = v283;
                *(&v329 + 1) = v145;
                *(&v330 + 1) = v286;
                v332 = 0;
                _signpost_hook(v125 >> 6, v125 & 3, &__src);
                if (v311.tm_year)
                {
                  free(v142);
                }

                v129 = v279;
                goto LABEL_336;
              }

              tm_mday = v311.tm_mday;
              v135 = BYTE2(v311.tm_year);
              v134 = BYTE2(v311.tm_year) ^ 1;
            }

            else
            {
              tm_mday = 1024;
              __memcpy_chk();
              v134 = 0;
              v311.tm_hour = v132;
              v135 = 1;
            }

            v136 = **v292;
            v137 = *(*v292 + 8);
            if (tm_mday - v134 - v132 < v137)
            {
              os_trace_blob_add_slow(&v311, v136, *(*v292 + 8));
              LOWORD(v132) = v311.tm_hour;
            }

            else
            {
              v138 = *&v311.tm_sec;
              memcpy((*&v311.tm_sec + v132), v136, *(*v292 + 8));
              LODWORD(v132) = v132 + v137;
              if ((v135 & 1) == 0)
              {
                *(v138 + v132) = 0;
              }
            }

            goto LABEL_327;
          }

LABEL_317:
          v289 = 0;
          *v2 = mach_continuous_time();
          goto LABEL_318;
        }

        v89 = v85 - v84;
        LODWORD(v313) = v85 - v84;
        WORD2(v313) = (v85 - v84) >> 32;
        HIWORD(v313) = 4;
        v314 = 0;
        v90 = 2;
      }

      else
      {
        v89 = v85 - _os_trace_dsc_load_addr;
        LODWORD(v313) = v85 - _os_trace_dsc_load_addr;
        WORD2(v313) = (v85 - _os_trace_dsc_load_addr) >> 32;
        v314 = 0;
        if (WORD2(v313))
        {
          v90 = 12;
          goto LABEL_275;
        }

        HIDWORD(v313) = 0x40000;
        v90 = 4;
      }

      *v319 = v89;
      v91 = 4;
      goto LABEL_276;
    }
  }

LABEL_580:
  if ((v6 & 0x7F) == 0x11)
  {
LABEL_618:
    if (!v8 || (v243 = *(v8 + 24)) == 0 || strncmp((v243 + 4), "com.apple.runtime-issues", 0x19uLL) || strncmp((v243 + 4 + *(v243 + 2)), "SkipRuntimeIssues", 0x12uLL))
    {
      _os_log_invoke_callback(v2, v8, v6, &v291, &_os_log_current_fault_callback);
    }
  }

  _os_log_invoke_callback(v2, v8, v6, &v291, &_os_log_current_test_callback);
  if ((*(v8 + 60) & 0x80000000) != 0)
  {
    v244 = v294;
    if (!v294)
    {
      _os_log_impl_compose(*(v2 + 40), &v291);
      v244 = v294;
    }

    puts(*v244);
  }

  if ((v307 & 0x100000000) != 0)
  {
    v229 = v305;
    v305 = v9;
    WORD2(v307) = 0;
    free(v229);
  }

  if ((v304 & 0x100000000) != 0)
  {
    v230 = v302;
    v302 = v9;
    WORD2(v304) = 0;
    free(v230);
  }

  if ((v301 & 0x100000000) != 0)
  {
    v231 = v299;
    v299 = v9;
    WORD2(v301) = 0;
    free(v231);
  }

  if ((v7 & 0x8000000) == 0)
  {
    v232 = v294;
    if (v294)
    {
      if (*(v294 + 20))
      {
        v233 = *v294;
        *v294 = v9;
        *(v232 + 20) = 0;
        free(v233);
      }
    }
  }
}

uint64_t _os_log_fmt_flatten_object_impl(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, size_t a5, uint64_t a6, uint64_t a7, size_t a8, char a9)
{
  v42 = *MEMORY[0x1E69E9840];
  v38 = a9;
  Name = [a4 isProxy];
  if (Name)
  {
LABEL_2:
    if (a8 >= 0x400)
    {
      while (1)
      {
        v21 = malloc_type_malloc(a8, 0x80E2B737uLL);
        if (v21)
        {
          break;
        }

        _os_trace_temporary_resource_shortage();
      }

      v19 = v21;
      v18 = _os_log_fmt_flatten_NSCF(a4, v21, a8, &v38);
    }

    else
    {
      MEMORY[0x1EEE9AC00](Name);
      bzero(&v37[-((a8 + 15) & 0xFFFFFFFFFFFFFFF0)], a8);
      v18 = _os_log_fmt_flatten_NSCF(a4, &v37[-((a8 + 15) & 0xFFFFFFFFFFFFFFF0)], a8, &v38);
      v19 = 0;
    }

LABEL_75:
    if ((*a1 & 7) == 0 && v38 == 1)
    {
      *a1 |= 1u;
    }

    v34 = _os_log_fmt_flatten_to_blob(a1, a2, a3, a4, a5, a6, a7, a8, v18, 0);
    free(v19);
    return v34;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    __stringp = out;
    if (object_isClass(a4))
    {
      Name = class_getName(a4);
      goto LABEL_13;
    }

    if ([a4 isNSString])
    {
      v23 = [a4 isNSCFConstantString] ^ 1;
      Name = [a4 _fastCStringContents:1];
      v22 = v23;
      v18 = Name;
      if (!Name)
      {
        goto LABEL_2;
      }

      goto LABEL_74;
    }

    if ([a4 isNSNumber])
    {
      v24 = [a4 objCType];
      v22 = 0;
      v25 = *v24;
      v18 = "<NSNumber: invalid type>";
      if (v25 > 0x62)
      {
        if (*v24 > 0x68u)
        {
          if (*v24 <= 0x70u)
          {
            if (v25 != 105)
            {
              if (v25 != 108)
              {
                goto LABEL_74;
              }

              v36 = COERCE_DOUBLE([a4 longValue]);
              v26 = "%ld";
              goto LABEL_73;
            }

            v36 = COERCE_DOUBLE([a4 intValue]);
LABEL_61:
            v26 = "%d";
            goto LABEL_73;
          }

          if (v25 != 113)
          {
            if (v25 != 115)
            {
              goto LABEL_74;
            }

            *&v36 = [a4 shortValue];
            v26 = "%hi";
            goto LABEL_73;
          }

          *&v30 = COERCE_DOUBLE([a4 longLongValue]);
LABEL_70:
          v36 = *&v30;
          v26 = "%lld";
          goto LABEL_73;
        }

        if (v25 != 99)
        {
          if (v25 == 100)
          {
            [a4 doubleValue];
            v36 = v31;
            v26 = "%0.16g";
          }

          else
          {
            if (v25 != 102)
            {
              goto LABEL_74;
            }

            [a4 floatValue];
            v36 = v29;
            v26 = "%0.7g";
          }

          goto LABEL_73;
        }

LABEL_57:
        *&v36 = [a4 charValue];
        goto LABEL_61;
      }

      if (*v24 <= 0x4Bu)
      {
        if (v25 != 66)
        {
          if (v25 == 67)
          {
            *&v28 = COERCE_DOUBLE([a4 unsignedCharValue]);
          }

          else
          {
            if (v25 != 73)
            {
              goto LABEL_74;
            }

            *&v28 = COERCE_DOUBLE([a4 unsignedIntValue]);
          }

          v36 = *&v28;
          v26 = "%u";
          goto LABEL_73;
        }

        goto LABEL_57;
      }

      if (v25 == 76)
      {
        v36 = COERCE_DOUBLE([a4 unsignedLongValue]);
        v26 = "%lu";
        goto LABEL_73;
      }

      if (v25 != 81)
      {
        if (v25 != 83)
        {
          goto LABEL_74;
        }

        v36 = COERCE_DOUBLE([a4 unsignedShortValue]);
        v26 = "%hu";
        goto LABEL_73;
      }

      *&v32 = COERCE_DOUBLE([a4 unsignedLongLongValue]);
    }

    else
    {
      if ([a4 isNSDate])
      {
        [a4 timeIntervalSince1970];
        v39 = v27;
        Name = ctime_r(&v39, out);
        if (!Name)
        {
          v18 = 0;
LABEL_14:
          v22 = 0;
          if (!v18)
          {
            goto LABEL_2;
          }

          goto LABEL_74;
        }

        Name = strsep(&__stringp, "\n\r");
LABEL_13:
        v18 = Name;
        goto LABEL_14;
      }

      objc_opt_class();
      Name = objc_opt_isKindOfClass();
      if ((Name & 1) == 0)
      {
        goto LABEL_2;
      }

      Name = object_getClass(a4);
      if (Name == MEMORY[0x1E69E9F10])
      {
        Name = xpc_string_get_string_ptr(a4);
        v18 = Name;
        v22 = 1;
        if (!Name)
        {
          goto LABEL_2;
        }

LABEL_74:
        v19 = 0;
        v38 = v22;
        goto LABEL_75;
      }

      if (Name == MEMORY[0x1E69E9F20])
      {
        bytes = xpc_uuid_get_bytes(a4);
        v18 = out;
        uuid_unparse_upper(bytes, out);
        v22 = 1;
        goto LABEL_74;
      }

      if (Name == MEMORY[0x1E69E9EB0])
      {
        *&v30 = COERCE_DOUBLE(xpc_int64_get_value(a4));
        goto LABEL_70;
      }

      if (Name != MEMORY[0x1E69E9F18])
      {
        if (Name != MEMORY[0x1E69E9E88])
        {
          if (Name == MEMORY[0x1E69E9E58])
          {
            value = xpc_BOOL_get_value(a4);
            v22 = 0;
            if (value)
            {
              v18 = "true";
            }

            else
            {
              v18 = "false";
            }

            goto LABEL_74;
          }

          if (Name == MEMORY[0x1E69E9ED0])
          {
            v22 = 0;
            v18 = "(null)";
            goto LABEL_74;
          }

          if (Name != MEMORY[0x1E69E9E98])
          {
            if (Name == MEMORY[0x1E69E9E78])
            {
              goto LABEL_2;
            }

            v22 = 0;
            v18 = "<xpc object>";
            goto LABEL_74;
          }

          Name = xpc_dictionary_get_string(a4, *MEMORY[0x1E69E9E28]);
          goto LABEL_13;
        }

        v36 = xpc_double_get_value(a4);
        v26 = "%f";
LABEL_73:
        v18 = out;
        snprintf(out, 0x40uLL, v26, *&v36);
        v22 = 0;
        goto LABEL_74;
      }

      *&v32 = COERCE_DOUBLE(xpc_uint64_get_value(a4));
    }

    v36 = *&v32;
    v26 = "%llu";
    goto LABEL_73;
  }

  return _os_log_fmt_flatten_coder(a1, a4, a8, a2, a3, a6, a7);
}

void *_os_get_logging_unreliable_for_current_thread()
{
  if (_init_unreliable_thread_key_unreliable_once != -1)
  {
    dispatch_once(&_init_unreliable_thread_key_unreliable_once, &__block_literal_global_85);
  }

  return pthread_getspecific(_os_log_unreliable_thread_key);
}

char *_os_log_fmt_flatten_NSCF(void *a1, char *a2, size_t a3, _BYTE *a4)
{
  v6 = a2;
  if (_NSCF_function)
  {
    if ((_NSCF_function(a1, a2, a3, a4) & 1) == 0)
    {
      *a4 = 0;
      return "<invalid NS/CF object>";
    }
  }

  else
  {
    Class = object_getClass(a1);
    *a4 = 0;
    if (!Class)
    {
      return "<invalid NS/CF object>";
    }

    Name = class_getName(Class);
    snprintf(v6, a3, "<%s instance>", Name);
  }

  return v6;
}

size_t _os_log_fmt_flatten_data_into_blob(uint64_t a1, unint64_t __src, unint64_t a3, void *a4, size_t __n, size_t a6, BOOL *a7)
{
  v8 = __n;
  v9 = a3;
  v11 = a1;
  *a7 = 0;
  if (__src && a6)
  {
    v37 = 0;
    if (__n + 1 < a6)
    {
      v12 = __n + 1;
    }

    else
    {
      v12 = a6;
    }

    if (!__n)
    {
      v12 = a6;
    }

    v13 = os_trace_blob_addns(a1, __src, v12 - 1, &v37);
    v39 = 0;
    if ((*(v11 + 20) & 2) == 0)
    {
      v14 = *(v11 + 8);
      if (*(v11 + 12) == v14 + (*(v11 + 22) ^ 1))
      {
        os_trace_blob_add_slow(v11, &v39, 1uLL);
      }

      else
      {
        *(*v11 + v14) = 0;
        v15 = *(v11 + 8) + 1;
        *(v11 + 8) = v15;
        if ((*(v11 + 22) & 1) == 0)
        {
          *(*v11 + v15) = 0;
        }
      }
    }

    v16 = (!v8 || v37 < __src + v8) && *v37 != 0;
    *a7 = v16;
    return (v13 + 1);
  }

  if (a3 && a6)
  {
    v17 = a6 - 1;
    v18 = *(a1 + 8) + (*(a1 + 22) ^ 1);
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = (v19 - v18);
    }

    else
    {
      v23 = *(a1 + 12);
      LODWORD(v20) = v23 - v18;
      if (v23)
      {
        v20 = v20;
      }

      else
      {
        v20 = 0;
      }
    }

    if (v17 > v20)
    {
      v17 = v20;
    }

    v24 = *a3;
    if (*a3)
    {
      v25 = 0;
      do
      {
        if (v24 >= 0x80)
        {
          if (v24 >= 0x800)
          {
            if (HIWORD(v24))
            {
              if (HIWORD(v24) > 0x10u)
              {
                break;
              }

              v27 = -16;
              v26 = 4;
            }

            else
            {
              if ((v24 & 0xF800) == 0xD800)
              {
                break;
              }

              v27 = -32;
              v26 = 3;
            }
          }

          else
          {
            v27 = -64;
            v26 = 2;
          }

          v28 = v26 - 1;
          do
          {
            __srca[v28] = v24 & 0x3F | 0x80;
            v24 = v24 >> 6;
            --v28;
          }

          while (v28);
          LOBYTE(v24) = v24 | v27;
        }

        else
        {
          v26 = 1;
        }

        __srca[0] = v24;
        if (v26 + v25 > v17 || (*(v11 + 20) & 2) != 0)
        {
          break;
        }

        v29 = *(v11 + 8);
        if (v26 > *(v11 + 12) - v29 - (*(v11 + 22) ^ 1u))
        {
          LODWORD(v26) = os_trace_blob_add_slow(v11, __srca, v26);
          if (!v26)
          {
            break;
          }
        }

        else
        {
          memcpy((*v11 + v29), __srca, v26);
          v30 = *(v11 + 8) + v26;
          *(v11 + 8) = v30;
          if ((*(v11 + 22) & 1) == 0)
          {
            *(*v11 + v30) = 0;
          }
        }

        v25 += v26;
        v31 = v9[1];
        ++v9;
        v24 = v31;
      }

      while (v31);
    }

    else
    {
      LODWORD(v25) = 0;
    }

    v8 = (v25 + 1);
    v32 = *(v11 + 20);
    *a7 = *v9 != 0;
    v38 = 0;
    if ((v32 & 2) == 0)
    {
      v33 = *(v11 + 8);
      if (*(v11 + 12) != v33 + (*(v11 + 22) ^ 1))
      {
        *(*v11 + v33) = 0;
        v22 = *(v11 + 8) + 1;
LABEL_60:
        *(v11 + 8) = v22;
        if ((*(v11 + 22) & 1) == 0)
        {
          *(*v11 + v22) = 0;
        }

        return v8;
      }

      v35 = &v38;
      a1 = v11;
      v36 = 1;
      goto LABEL_66;
    }
  }

  else
  {
    if (__src | a3)
    {
      v8 = 0;
      *a7 = 1;
      return v8;
    }

    if (__n > a6)
    {
      *a7 = 1;
      v8 = a6;
    }

    if ((*(a1 + 20) & 2) == 0)
    {
      v21 = *(a1 + 8);
      if (v8 <= *(a1 + 12) - v21 - (*(a1 + 22) ^ 1u))
      {
        memcpy((*a1 + v21), a4, v8);
        v22 = *(v11 + 8) + v8;
        goto LABEL_60;
      }

      v35 = a4;
      v36 = v8;
LABEL_66:
      os_trace_blob_add_slow(a1, v35, v36);
    }
  }

  return v8;
}

unint64_t os_trace_blob_addns(uint64_t *a1, _BYTE *__src, unint64_t a3, void *a4)
{
  if ((*(a1 + 10) & 2) != 0)
  {
    return 0;
  }

  v5 = a3;
  v6 = __src;
  v8 = *(a1 + 2) + (*(a1 + 22) ^ 1);
  v9 = *(a1 + 4);
  if (v9)
  {
    v10 = (v9 - v8);
  }

  else
  {
    v11 = *(a1 + 3);
    LODWORD(v10) = v11 - v8;
    if (v11)
    {
      v10 = v10;
    }

    else
    {
      v10 = 0;
    }
  }

  if (v10 < a3)
  {
    v5 = v10;
  }

  if (!*__src)
  {
    v20 = 0;
LABEL_74:
    if (a4)
    {
      goto LABEL_75;
    }

    return v20;
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E9830];
  while (1)
  {
    v14 = 0;
    v15 = v5 - v12;
    if (v5 != v12)
    {
      while (1)
      {
        v16 = v6[v14];
        if (v16 < 1 || (*(v13 + 4 * v16 + 60) & 0x4200) == 0x200)
        {
          break;
        }

        if (v15 == ++v14)
        {
          v14 = v5 - v12;
          break;
        }
      }
    }

    if (v14 >= v15)
    {
      v17 = v5 - v12;
    }

    else
    {
      v17 = v14;
    }

    if ((*(a1 + 10) & 2) == 0)
    {
      v18 = *(a1 + 2);
      if (v17 > *(a1 + 3) - v18 - (*(a1 + 22) ^ 1u))
      {
        os_trace_blob_add_slow(a1, v6, v17);
      }

      else
      {
        memcpy((*a1 + v18), v6, v17);
        v19 = *(a1 + 2) + v17;
        *(a1 + 2) = v19;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v19) = 0;
        }
      }
    }

    v6 += v17;
    v20 = v17 + v12;
    if (v5 == v20)
    {
      break;
    }

    v21 = *v6;
    if (!*v6)
    {
      goto LABEL_74;
    }

    if ((v21 & 0x80) == 0)
    {
      v12 = v20 + 3;
      if (v20 + 3 > v5)
      {
        goto LABEL_74;
      }

      if (v21 == 127)
      {
        v22 = 63;
      }

      else
      {
        v22 = v21 + 64;
      }

      v41 = 24156;
      v42 = v22;
      if ((*(a1 + 20) & 2) != 0)
      {
        goto LABEL_63;
      }

      v23 = *(a1 + 2);
      if (*(a1 + 3) - v23 - (*(a1 + 22) ^ 1u) <= 2)
      {
        p_srca = &v41;
        v36 = a1;
        v37 = 3;
        goto LABEL_72;
      }

      v24 = *a1 + v23;
      *v24 = v41;
      *(v24 + 2) = v42;
      v25 = *(a1 + 2) + 3;
      goto LABEL_61;
    }

    if ((v21 & 0xF8) == 0xF0)
    {
      v26 = 4;
    }

    else if ((v21 & 0xF0) == 0xE0)
    {
      v26 = 3;
    }

    else
    {
      if ((v21 & 0xE0) != 0xC0)
      {
        goto LABEL_49;
      }

      v26 = 2;
    }

    if (v26 > v5 - v20)
    {
      goto LABEL_74;
    }

    v27 = 1;
    while ((v6[v27] & 0xC0) == 0x80)
    {
      if (v26 == ++v27)
      {
        if ((*(a1 + 10) & 2) == 0)
        {
          v28 = *(a1 + 2);
          if (v26 > *(a1 + 3) - v28 - (*(a1 + 22) ^ 1u))
          {
            os_trace_blob_add_slow(a1, v6, v26);
          }

          else
          {
            memcpy((*a1 + v28), v6, v26);
            v29 = *(a1 + 2) + v26;
            *(a1 + 2) = v29;
            if ((*(a1 + 22) & 1) == 0)
            {
              *(*a1 + v29) = 0;
            }
          }
        }

        v6 += v26;
        v12 = v26 + v20;
        if (v12 != v5)
        {
          goto LABEL_64;
        }

        goto LABEL_77;
      }
    }

LABEL_49:
    v12 = v20 + 4;
    if (v20 + 4 > v5)
    {
      goto LABEL_74;
    }

    v30 = v21 & 0x7F;
    if ((*(v13 + 4 * v30 + 60) & 0x200) == 0)
    {
      qmemcpy(&v39, "\\M-", 3);
      HIBYTE(v39) = v30;
      if ((*(a1 + 20) & 2) != 0)
      {
        goto LABEL_63;
      }

      v31 = *(a1 + 2);
      if (*(a1 + 3) - v31 - (*(a1 + 22) ^ 1u) <= 3)
      {
        p_srca = &v39;
        goto LABEL_71;
      }

      v32 = *a1;
      v33 = v39;
      goto LABEL_60;
    }

    if (v30 == 127)
    {
      v34 = 63;
    }

    else
    {
      v34 = v30 + 64;
    }

    qmemcpy(&__srca, "\\M^", 3);
    HIBYTE(__srca) = v34;
    if ((*(a1 + 20) & 2) == 0)
    {
      v31 = *(a1 + 2);
      if (*(a1 + 3) - v31 - (*(a1 + 22) ^ 1u) <= 3)
      {
        p_srca = &__srca;
LABEL_71:
        v36 = a1;
        v37 = 4;
LABEL_72:
        os_trace_blob_add_slow(v36, p_srca, v37);
        goto LABEL_63;
      }

      v32 = *a1;
      v33 = __srca;
LABEL_60:
      *(v32 + v31) = v33;
      v25 = *(a1 + 2) + 4;
LABEL_61:
      *(a1 + 2) = v25;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v25) = 0;
      }
    }

LABEL_63:
    ++v6;
LABEL_64:
    v20 = v12;
    if (!*v6)
    {
      goto LABEL_74;
    }
  }

LABEL_77:
  v20 = v5;
  if (!a4)
  {
    return v20;
  }

LABEL_75:
  *a4 = v6;
  return v20;
}

uint64_t _os_log_fmt_flatten_to_blob(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t a5, uint64_t a6, uint64_t a7, size_t a8, unint64_t a9, unint64_t a10)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if (privacy_flags2opt[*a1 & 7] <= a2 || (*a1 & 0xF0) == 0x80)
  {
    if (*a1)
    {
      v18 = a7;
    }

    else
    {
      v18 = a6;
    }

    v15 = *(v18 + 8);
    v17 = _os_log_fmt_flatten_data_into_blob(v18, a9, a10, a4, a5, a8, &v24);
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v23 = 0x1000000010000;
    v21 = &v25;
    v22 = 0x36200000000;
    _os_log_fmt_flatten_data_into_blob(&v21, a9, a10, a4, a5, 0x10000uLL, &v24);
    v15 = *(a6 + 8);
    v16 = v21;
    v17 = _os_log_fmt_flatten_masked_data(a1, a2, a3, a6, v21, v22, a8, &v24);
    if ((v23 & 0x100000000) != 0)
    {
      free(v16);
    }
  }

  v19 = v17 & 0x7FFF | (v24 << 15);
  *(a1 + 2) = v15;
  *(a1 + 4) = v19;
  return v17;
}

unint64_t transport_add_tracepoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v13 = a1;
  if (byte_1ED3F7561 == 2)
  {
    if (a1 == 3)
    {
      v14 = 0;
    }

    else if (a2 == 6)
    {
      v14 = 5;
    }

    else
    {
      v14 = RTBinIndexForType(BYTE1(a2));
    }

    return transport_ringbuffer_add_tracepoint(v13, v14, a2, a3, a4, a5, a6, v7);
  }

  else
  {

    return voucher_activity_trace_v_2();
  }
}

void __os_signpost_emit_impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = a4;
  v17 = 0;
  v10 = 0u;
  v11 = 0;
  v12 = a1;
  v13 = a9;
  v14 = a6;
  v15 = a5;
  __error();
  if (((*(a2 + 60) >> 20) & 3) == 0 && (qword_1ED3F74D0 & 4) == 0 && (MEMORY[0xFFFFFC104] & 4) == 0)
  {
    voucher_get_activity_id();
  }

  _os_log_impl_flatten_and_send(&v10);
}

uint64_t _os_log_invoke_callback(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t (**a5)(void *))
{
  v5 = *a5;
  if (*a5)
  {
    v9 = result;
    if (!*(a4 + 24))
    {
      _os_log_impl_compose(*(result + 40), a4);
    }

    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v15[0] = 1;
    v15[1] = a2;
    if (a2 && ((v10 = *(a2 + 24)) != 0 ? (v11 = v10 + 4) : (v11 = 0), *&v16 = v11, v10))
    {
      v12 = v10 + 4 + *(v10 + 2);
    }

    else
    {
      v12 = 0;
    }

    v14 = *(v9 + 32);
    v13 = *(v9 + 40);
    *(&v16 + 1) = v12;
    *&v17 = v13;
    *(&v17 + 1) = **(a4 + 24);
    *&v18 = v14;
    BYTE8(v18) = a3 & 0x7F;
    return v5(v15);
  }

  return result;
}

uint64_t os_state_add_handler(NSObject *a1, const void *a2)
{
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if ((qword_1ED3F74D0 & 0x100) != 0 || (MEMORY[0xFFFFFC104] & 0x100) != 0)
  {
    return 0;
  }

  while (1)
  {
    v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00402388DFACuLL);
    if (v4)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  v6 = v4;
  v4[2] = atomic_fetch_add_explicit(&os_state_add_handler_handle, 1uLL, memory_order_relaxed);
  v4[3] = _Block_copy(a2);
  v6[4] = a1;
  dispatch_retain(a1);
  v6[5] = dyld_image_header_containing_address();
  v6[6] = 0;
  *(v6 + 14) = 1;
  os_unfair_lock_lock_with_options();
  v7 = 8;
  if (byte_1ED3F74A8)
  {
    v7 = 24;
  }

  v8 = *(&os_state_blocks + v7);
  *v6 = 0;
  v6[1] = v8;
  *v8 = v6;
  *(&os_state_blocks + v7) = v6;
  atomic_fetch_add_explicit(&dword_1ED3F74AC, 1u, memory_order_relaxed);
  os_unfair_lock_unlock(&unk_1ED3F7498);
  return v6[2];
}

uint64_t _os_log_preferences_cache_find_record_by_name(unsigned int *a1, unint64_t a2, char *__s)
{
  v6 = strlen(__s);
  v7 = os_simple_hash();
  v8 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v14 = ___os_log_preferences_cache_find_record_by_name_block_invoke;
  v15 = &unk_1E77DB5E8;
  v18 = v7;
  v19 = v6;
  v16 = &v20;
  v17 = __s;
  if (a2 >= 0x14)
  {
    do
    {
      v9 = *a1;
      if (a2 < v9)
      {
        break;
      }

      v10 = a1[1];
      if (v10 + 21 > v9)
      {
        break;
      }

      if (*(a1 + v10 + 20))
      {
        break;
      }

      if (!(v14)(v13, a1))
      {
        break;
      }

      v11 = *a1;
      a1 = (a1 + v11);
      a2 -= v11;
    }

    while (a2 > 0x13);
    v8 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  return v8;
}

int *_os_log_preferences_refresh(uint64_t a1)
{
  v2 = *__error();
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = (v3 + 4);
      v5 = *(v3 + 2);
      v15 = 0;
      if (qword_1ED3F7550)
      {
        dictionary = xpc_dictionary_get_dictionary(qword_1ED3F7550, v4);
        os_unfair_lock_lock_with_options();
        if (dictionary)
        {
          goto LABEL_17;
        }
      }

      else
      {
        os_unfair_lock_lock_with_options();
      }

      if ((byte_1ED3F754B & 1) == 0)
      {
        if (dword_1ED3F74F4 != dword_1ED3F74E0)
        {
          _os_log_preference_load_cache();
        }

        if (qword_1ED3F7500)
        {
          record_by_name = _os_log_preferences_cache_find_record_by_name((qword_1ED3F7500 + 4), qword_1ED3F74F8 - 4, v4);
          if (record_by_name)
          {
            v8 = record_by_name;
            v9 = record_by_name[1];
            if (((v9 + 1) & 3) != 0)
            {
              v10 = v9 - ((v9 + 1) & 3) + 5;
            }

            else
            {
              v10 = v9 + 1;
            }

            v11 = _os_log_preferences_cache_find_record_by_name((record_by_name + v10 + 20), *record_by_name - v10 - 20, &v4[v5]);
            if (v11)
            {
              v15 = *(v11 + 12);
LABEL_22:
              _os_log_stream_filter_refresh(a1);
              os_unfair_lock_unlock(&dword_1ED3F74F0);
LABEL_23:
              HIDWORD(v15) = HIDWORD(v15) & 0x83FFFFFF | (((*(a1 + 60) >> 26) & 0x1F) << 26);
              *(a1 + 56) = v15;
              goto LABEL_24;
            }

            v13 = *(v8 + 3);
          }

          else
          {
            v13 = 0x45000000000000;
          }

          v15 = v13;
          _os_log_set_default_signpost_opts(&v4[v5], &v15);
          goto LABEL_22;
        }
      }

LABEL_17:
      _os_log_stream_filter_refresh(a1);
      os_unfair_lock_unlock(&dword_1ED3F74F0);
      v12 = _os_log_preferences_load(v4, &v4[v5]);
      _os_log_preferences_compute(v12, &v4[v5], &v15);
      if (v12)
      {
        xpc_release(v12);
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  result = __error();
  *result = v2;
  return result;
}

uint64_t _os_log_stream_filter_refresh(uint64_t result)
{
  v1 = result;
  v2 = qword_1ED3F74E8;
  if (qword_1ED3F74E8 && ((proc_path = _os_log_get_proc_path(), (v5 = *(v1 + 24)) != 0) ? (v6 = v5 + 4) : (v6 = 0), (v10[0] = v6, !v5) ? (v7 = 0) : (v7 = v5 + 4 + *(v5 + 2)), v10[1] = v7, v10[2] = proc_path, v10[3] = v4, v11 = getpid(), v12 = geteuid(), v9[0] = 0, v9[1] = 0, result = _os_log_matches_filter(v2, v10, v9), result))
  {
    if ((v9[0] & 0x40000) != 0)
    {
      if ((v9[0] & 0x200000000) != 0)
      {
        v8 = *(v1 + 60) & 0xC7FFFFFF | 0x18000000;
      }

      else if ((v9[0] & 0x100000000) != 0)
      {
        v8 = *(v1 + 60) & 0xC7FFFFFF | 0x10000000;
      }

      else if ((v9[0] & 0x800000000) != 0)
      {
        v8 = *(v1 + 60) & 0xC7FFFFFF | 0x8000000;
      }

      else
      {
        v8 = *(v1 + 60);
      }
    }

    else
    {
      v8 = *(v1 + 60) & 0xC7FFFFFF | 0x20000000;
    }

    *(v1 + 60) = v8 & 0xBFFFFFFF | (((LODWORD(v9[0]) >> 19) & 1) << 30);
  }

  else
  {
    *(v1 + 60) &= 0x87FFFFFF;
  }

  return result;
}

BOOL ___os_log_preferences_cache_find_record_by_name_block_invoke(uint64_t a1, unsigned int *a2)
{
  if (a2[2] == *(a1 + 48))
  {
    v4 = a2[1];
    if (v4 == *(a1 + 52) && !memcmp(a2 + 5, *(a1 + 40), v4))
    {
      *(*(*(a1 + 32) + 8) + 24) = a2;
    }
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t _os_log_set_default_signpost_opts(const char *a1, uint64_t a2)
{
  result = strcmp(a1, "DynamicTracing");
  if (result)
  {
    result = strcmp(a1, "DynamicStackTracing");
    if (result)
    {
      return result;
    }

    v5 = *(a2 + 4) & 0xFFCBFFFF | 0x100000;
  }

  else
  {
    v5 = *(a2 + 4) & 0xFFFBFFFF;
  }

  *(a2 + 4) = v5;
  return result;
}

os_signpost_id_t os_signpost_id_generate(os_log_t log)
{
  if (!os_signpost_enabled(log))
  {
    return 0;
  }

  if ((~HIDWORD(log[7].isa) & 0x18000) != 0)
  {
    return atomic_fetch_add_explicit(&os_signpost_id_generate__os_signpost_id_next, 1uLL, memory_order_relaxed);
  }

  if (byte_1ED3F7561 == 2)
  {
    return 0;
  }

  return MEMORY[0x1EEE703B0](0);
}

BOOL os_signpost_enabled(os_log_t log)
{
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v2 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v5 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v5, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v2)
    {
      _os_log_preferences_refresh_process();
    }
  }

  if ((qword_1ED3F74D0 & 0x500) != 0 || (MEMORY[0xFFFFFC104] & 0x500) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    LOBYTE(v3) = 0;
    if (log && log != &_os_log_disabled)
    {
      if (log[3].isa)
      {
        isa = log[6].isa;
        if (isa != dword_1ED3F74E0)
        {
          v6 = log[6].isa;
          atomic_compare_exchange_strong_explicit(&log[6], &v6, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
          if (v6 == isa)
          {
            _os_log_preferences_refresh(log);
          }
        }
      }

      return (BYTE6(log[7].isa) >> 2) & 1;
    }
  }

  return v3;
}

void _os_log_preferences_refresh_process()
{
  v17 = *MEMORY[0x1E69E9840];
  if ((qword_1ED3F74D0 & 0x100) == 0 && (MEMORY[0xFFFFFC104] & 0x100) == 0)
  {
    v0 = *__error();
    if (_os_trace_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
    }

    snprintf(__str, 0x400uLL, "%s/%s.plist", _os_trace_preferences_path, "com.apple.diagnosticd.filter");
    plist_at = _os_trace_read_plist_at(4294967294, __str);
    if (plist_at)
    {
      v2 = plist_at;
      dictionary = 0;
      v11 = 0;
      proc_path = _os_log_get_proc_path();
      v13 = v3;
      v14 = getpid();
      v15 = geteuid();
      v9[0] = 0;
      v9[1] = 0;
      if ((_os_log_matches_filter(v2, &dictionary, v9) & 1) == 0)
      {
        v9[0] = 0;
      }

      int64 = xpc_dictionary_get_int64(v2, "global");
      v9[0] |= int64;
      HIDWORD(qword_1ED3F7538) = HIDWORD(v9[0]);
      dword_1ED3F7540 = WORD1(v9[0]);
      xpc_release(v2);
    }

    else
    {
      *(&qword_1ED3F7538 + 4) = 0x70000000BLL;
    }

    if (qword_1ED3F7558)
    {
      dictionary = 0;
      v11 = 0;
      if (_os_trace_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
      }

      snprintf(__str, 0x400uLL, "%s/%s/%s.plist", _os_trace_system_preferences_path, "Processes", qword_1ED3F7558);
      v5 = _os_trace_read_plist_at(4294967294, __str);
      v6 = v5;
      if (v5)
      {
        dictionary = xpc_dictionary_get_dictionary(v5, "Level");
      }

      if (_os_trace_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
      }

      snprintf(__str, 0x400uLL, "%s/%s/%s.plist", _os_trace_preferences_path, "Processes", qword_1ED3F7558);
      v7 = _os_trace_read_plist_at(4294967294, __str);
      v8 = v7;
      if (v7)
      {
        v11 = xpc_dictionary_get_dictionary(v7, "Level");
      }

      process_prefs_0 = process_prefs_0 & 0xFC | _os_log_preference_option(&dictionary, "Enable") & 3;
      process_prefs_0 = process_prefs_0 & 0xE3 | (4 * _os_log_preference_option(&dictionary, "Persist"));
      if (v8)
      {
        xpc_release(v8);
      }

      if (v6)
      {
        xpc_release(v6);
      }
    }

    *__error() = v0;
  }
}

void *_os_trace_read_plist_at(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = _os_trace_read_file_at(a1, a2, 0x10000, &v10);
  if (!v3)
  {
    v8 = *__error();
    if (v8 == 2 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    v12 = a2;
    v13 = 1024;
    v14 = v8;
    v6 = "failed to read %{public}s: %{darwin.errno}d";
    v7 = 18;
    goto LABEL_12;
  }

  v4 = v3;
  v5 = xpc_create_from_plist();
  free(v4);
  if (!v5)
  {
LABEL_5:
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446210;
    v12 = a2;
    v6 = "invalid property list at %{public}s";
    v7 = 12;
LABEL_12:
    _os_log_error_impl(&dword_1A7AB8000, &_os_log_default, OS_LOG_TYPE_ERROR, v6, buf, v7);
    return 0;
  }

  if (object_getClass(v5) != MEMORY[0x1E69E9E80])
  {
    xpc_release(v5);
    goto LABEL_5;
  }

  return v5;
}

uint64_t _os_trace_read_file_at(int a1, const char *a2, off_t a3, int64_t *a4)
{
  v6 = openat(a1, a2, 16777476);
  if (v6 < 0)
  {
    v10 = *__error();
    goto LABEL_21;
  }

  v7 = v6;
  v8 = lseek(v6, 0, 2);
  if (v8 < 0)
  {
    v10 = *__error();
    goto LABEL_20;
  }

  v9 = v8;
  if (v8 > a3)
  {
    v10 = 34;
    goto LABEL_20;
  }

  while (1)
  {
    v11 = malloc_type_malloc(v9, 0x1801CF3uLL);
    if (v11)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  v12 = v11;
  if (!v9)
  {
LABEL_16:
    if (close(v7) == -1)
    {
      v17 = *__error();
      result = *__error();
      if (v17 == 9)
      {
LABEL_28:
        qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_1EB2AFEB0 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }

    *a4 = v9;
    return v12;
  }

  v13 = 0;
  while (1)
  {
    v14 = pread(v7, &v12[v13], v9 - v13, v13);
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    v10 = *__error();
    if (v10 != 4)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v13 >= v9)
    {
      goto LABEL_16;
    }
  }

  if (v14)
  {
    v13 += v14;
    goto LABEL_15;
  }

  v10 = 70;
LABEL_19:
  free(v12);
LABEL_20:
  if (close(v7) == -1)
  {
    v16 = *__error();
    result = *__error();
    if (v16 != 9)
    {
      _os_assumes_log();
      goto LABEL_21;
    }

    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_1EB2AFEB0 = result;
    __break(1u);
    goto LABEL_28;
  }

LABEL_21:
  *a4 = 0;
  v12 = 0;
  *__error() = v10;
  return v12;
}

os_signpost_id_t os_signpost_id_make_with_pointer(os_log_t log, const void *ptr)
{
  if (!os_signpost_enabled(log))
  {
    return 0;
  }

  if ((~HIDWORD(log[7].isa) & 0x18000) == 0)
  {
    return -1;
  }

  v5 = os_signpost_id_make_with_pointer__os_signpost_slide;
  __buf = os_signpost_id_make_with_pointer__os_signpost_slide;
  if (os_signpost_id_make_with_pointer__os_signpost_slide == -1)
  {
    _NSGetMachExecuteHeader();
    if (_dyld_get_image_slide())
    {
      arc4random_buf(&__buf, 8uLL);
      v5 = __buf & ~*MEMORY[0x1E69E9AA0];
      v6 = -1;
      atomic_compare_exchange_strong_explicit(&os_signpost_id_make_with_pointer__os_signpost_slide, &v6, v5, memory_order_relaxed, memory_order_relaxed);
      if (v6 != -1)
      {
        v5 = v6;
      }
    }

    else
    {
      v5 = 0;
      os_signpost_id_make_with_pointer__os_signpost_slide = 0;
    }
  }

  return ptr + v5;
}

uint64_t _os_activity_create_addr(unint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  if ((a4 & 2) == 0)
  {
    goto LABEL_11;
  }

  if (a4)
  {
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: Invalid flags passed";
    __break(1u);
    goto LABEL_92;
  }

  if (a3 != -3)
  {
LABEL_92:
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: Parent must be OS_ACTIVITY_CURRENT when OS_ACTIVITY_FLAG_NONE_PRESENT is used";
    __break(1u);
    return MEMORY[0x1EEE703E0]();
  }

  if (voucher_get_activity_id())
  {

    return MEMORY[0x1EEE703E0]();
  }

LABEL_11:
  v45 = qword_1ED3F74D0;
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v46 = v8;
  v9 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v37 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v37, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v37 == v9)
    {
      _os_log_preferences_refresh_process();
    }
  }

  if (xmmword_1ED3F74C0)
  {
    v10 = dword_1ED3F7568;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x1ED3F7000uLL;
  if (_os_trace_dsc_load_addr <= a1 && _os_trace_dsc_size + _os_trace_dsc_load_addr > a1)
  {
    v12 = a5 - _os_trace_dsc_load_addr;
    LODWORD(v67) = a5 - _os_trace_dsc_load_addr;
    WORD2(v67) = (a5 - _os_trace_dsc_load_addr) >> 32;
    v68 = 0;
    if (WORD2(v67))
    {
      v43 = 0;
      v44 = 0;
      v13 = 6;
      HIWORD(v67) = 6;
      v14 = 12;
      v15 = 1;
    }

    else
    {
      HIDWORD(v67) = 0x40000;
      v43 = 0;
      v15 = 0;
      v13 = 4;
      v44 = 1;
      v14 = 4;
    }

    goto LABEL_55;
  }

  if (*(a1 + 12) != 2)
  {
    if (xmmword_1ED3F74C0)
    {
LABEL_26:
      v16 = *v10;
      do
      {
        if (v16)
        {
          v18 = v11;
          v19 = v10;
          _os_trace_rwptr_rdlock_wait(v10);
          v10 = v19;
          v11 = v18;
          goto LABEL_26;
        }

        v17 = v16;
        atomic_compare_exchange_strong_explicit(v10, &v17, v16 + 0x200000000, memory_order_relaxed, memory_order_relaxed);
        v24 = v17 == v16;
        v16 = v17;
      }

      while (!v24);
      v20 = *(off_1ED3F7570 + 5);
      v21 = off_1ED3F7570 + 16;
      v22 = (a1 >> *MEMORY[0x1E69E9AC0]) % v20;
      while (1)
      {
        v23 = *&v21[16 * v22];
        if (v23 == a1)
        {
          break;
        }

        if (v22 + 1 == v20)
        {
          v22 = 0;
        }

        else
        {
          ++v22;
        }

        if (v23)
        {
          v24 = v22 == (a1 >> *MEMORY[0x1E69E9AC0]) % v20;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          v25 = 0;
          goto LABEL_43;
        }
      }

      v25 = *&v21[16 * v22 + 8];
LABEL_43:
      v26 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v27 = *v10;
      v28 = *v10;
      do
      {
        v29 = v27 - 0x200000000;
        if (v27 == 0x300000000)
        {
          v29 = v26;
        }

        atomic_compare_exchange_strong_explicit(v10, &v28, v29, memory_order_relaxed, memory_order_relaxed);
        v24 = v28 == v27;
        v27 = v28;
      }

      while (!v24);
      if (v29 == v26)
      {
        __dmb(9u);
        _os_trace_rwptr_cleanup(v10, _os_trace_mh_map_cleanup);
      }

      v68 = v25;
      if (v25)
      {
        v43 = v25;
        v15 = 0;
        v44 = 0;
        v12 = a5 - a1;
        LODWORD(v67) = a5 - a1;
        WORD2(v67) = (a5 - a1) >> 32;
        v13 = 20;
        HIWORD(v67) = 20;
        v14 = 10;
        goto LABEL_55;
      }
    }

    else
    {
      v68 = 0;
    }

    v43 = 0;
    v44 = 0;
    LODWORD(v67) = a5;
    WORD2(v67) = WORD2(a5);
    v13 = 6;
    HIWORD(v67) = 6;
    v14 = 8;
    v15 = 1;
    v12 = a5;
    goto LABEL_55;
  }

  v43 = 0;
  v15 = 0;
  v12 = a5 - a1;
  LODWORD(v67) = a5 - a1;
  WORD2(v67) = (a5 - a1) >> 32;
  v13 = 4;
  HIWORD(v67) = 4;
  v68 = 0;
  v14 = 2;
  v44 = 1;
LABEL_55:
  v42 = a2;
  if (a2)
  {
    v30 = *(v11 + 2080);
    if (v30 <= a1)
    {
      if (_os_trace_dsc_size + v30 <= a1)
      {
        v30 = a1;
      }

      v31 = a2 - v30;
    }

    else
    {
      v31 = a2 - a1;
    }

    if (v31 >> 31)
    {
      v32 = (2 * v31) & 0xFFFF00000000;
    }

    else
    {
      v32 = 0;
    }

    a2 = v32 & 0xFFFFFFFF80000000 | v31 & 0x7FFFFFFF;
  }

  v66 = a2;
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v41 - v33;
  bzero(&v41 - v33, v13 + 2 * (HIDWORD(a2) != 0));
  if (v15)
  {
    *v34 = v67;
    *(v34 + 2) = WORD2(v67);
  }

  else
  {
    *v34 = v12;
    if ((v44 & 1) == 0)
    {
      *(v34 + 4) = *v43;
    }
  }

  if (HIDWORD(a2))
  {
    v14 |= 0x20u;
    *&v34[v13] = WORD2(a2);
  }

  v69 = (v14 << 16) | (a2 << 32) | 0x102;
  _os_get_logging_unreliable_for_current_thread();
  if (byte_1ED3F7561 == 2)
  {
    v35 = 0;
  }

  else
  {
    v35 = voucher_activity_create_with_data_2();
  }

  if (qword_1ED3F74D0 & 0x500) == 0 && (MEMORY[0xFFFFFC104] & 0x500) == 0 && ((qword_1ED3F74D0 & 8) != 0 || (MEMORY[0xFFFFFC104] & 8) != 0 || (voucher_get_activity_id() & 0x800000000000000) != 0) && (dword_1ED3F7540)
  {
    v38 = _os_trace_diagnosticd_pipe(0);
    if (v38)
    {
      v39 = v38;
      v65 = 0;
      v64 = 0;
      v63 = 0;
      if (mach_get_times())
      {
        _os_assumes_log();
      }

      v62 = 0;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      if (v69 <= 8u && ((1 << v69) & 0x158) != 0)
      {
        v40 = v69 << 8;
      }

      else
      {
        v40 = bswap32(v69) >> 16;
      }

      v47 = v40;
      *&v51 = v69;
      *(&v51 + 1) = v65;
      *(&v53 + 1) = v63;
      *&v54 = (v64 / 0x3E8);
      *(&v56 + 1) = v42;
      _os_activity_stream_reflect(v39, &v47, a1, v35, &v67, &v66);
      xpc_release(v39);
    }
  }

  return v35;
}

void _os_activity_initiate_impl(unint64_t a1, unint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  _os_activity_create_addr(a1, a2, -3, a3, v5);
  voucher_adopt();
  a5(a4);
  v8 = voucher_adopt();

  os_release(v8);
}

uint64_t _os_log_preference_option(void **a1, const char *a2)
{
  result = _os_log_option_for_key(a1[1], a2);
  if (!result)
  {
    v5 = *a1;

    return _os_log_option_for_key(v5, a2);
  }

  return result;
}

void os_activity_scope_enter(os_activity_t activity, os_activity_scope_state_t state)
{
  if (activity == &_os_activity_current)
  {
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: OS_ACTIVITY_CURRENT passed";
    __break(1u);
  }

  else
  {
    if (activity != &_os_activity_none)
    {
      os_retain(activity);
    }

    state->opaque[0] = voucher_get_activity_id();
    state->opaque[1] = voucher_adopt();
  }
}

void *_os_log_preference_load_cache()
{
  v4 = *MEMORY[0x1E69E9840];
  dword_1ED3F74F4 = dword_1ED3F74E0;
  v0 = MEMORY[0x1E69E9A60];
  if (qword_1ED3F7500)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], qword_1ED3F7500, qword_1ED3F74F8);
  }

  if (byte_1ED3F7561 == 2)
  {
    logging_preferences_with_port = voucher_activity_get_logging_preferences_with_port();
  }

  else
  {
    logging_preferences_with_port = voucher_activity_get_logging_preferences();
  }

  qword_1ED3F7500 = logging_preferences_with_port;
  if (logging_preferences_with_port && (qword_1ED3F74F8 < 4 || *logging_preferences_with_port != 6))
  {
    mach_vm_deallocate(*v0, logging_preferences_with_port, qword_1ED3F74F8);
    qword_1ED3F74F8 = 0;
    qword_1ED3F7500 = 0;
  }

  if (_os_trace_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
  }

  snprintf(__str, 0x400uLL, "%s/%s.plist", _os_trace_preferences_path, "com.apple.diagnosticd.filter");
  if (qword_1ED3F74E8)
  {
    xpc_release(qword_1ED3F74E8);
    qword_1ED3F74E8 = 0;
  }

  result = _os_trace_read_plist_at(4294967294, __str);
  qword_1ED3F74E8 = result;
  return result;
}

uint64_t _os_log_option_for_key(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (object_getClass(value) != MEMORY[0x1E69E9F10])
  {
    return 0;
  }

  string_ptr = xpc_string_get_string_ptr(v3);
  if (!strcasecmp(string_ptr, "default"))
  {
    return 1;
  }

  v6 = xpc_string_get_string_ptr(v3);
  if (!strcasecmp(v6, "info"))
  {
    return 2;
  }

  v7 = xpc_string_get_string_ptr(v3);
  if (!strcasecmp(v7, "debug"))
  {
    return 3;
  }

  v8 = xpc_string_get_string_ptr(v3);
  if (strcasecmp(v8, "off"))
  {
    v9 = xpc_string_get_string_ptr(v3);
    if (strcasecmp(v9, "none"))
    {
      return 0;
    }
  }

  return 4;
}

void _os_activity_initiate(void *dso, const char *description, os_activity_flag_t flags, os_block_t activity_block)
{
  if (*(activity_block + 2))
  {
    v4 = *(activity_block + 2);
  }

  else
  {
    v4 = 0;
  }

  _os_activity_initiate_impl(dso, description, flags, activity_block, v4);
}

char *_os_log_send_and_compose_impl(char a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    *a2 = a8;
  }

  v21 = 0;
  v15 = 0u;
  v16 = 0;
  v17 = a5;
  v18 = v8;
  v19 = a8;
  v20 = 0uLL;
  __error();
  v14 = 0;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = &v14;
  }

  v13 = v11;
  _os_log_impl_flatten_and_send(&v15);
  result = 0;
  if ((a1 & 2) != 0)
  {
    result = v13;
    if (v13 == &v14)
    {
      while (1)
      {
        result = strdup(&unk_1A7AD6BB1);
        if (result)
        {
          break;
        }

        _os_trace_temporary_resource_shortage();
      }
    }
  }

  return result;
}

os_activity_t _os_activity_create(void *dso, const char *description, os_activity_t activity, os_activity_flag_t flags)
{
  v5 = -3;
  if (activity != &_os_activity_current)
  {
    v5 = activity;
  }

  if (activity == &_os_activity_none)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return _os_activity_create_addr(dso, description, v6, flags, v4);
}

void os_activity_scope_leave(os_activity_scope_state_t state)
{
  activity_id = voucher_get_activity_id();
  if (activity_id && activity_id != state->opaque[0])
  {
    _os_assumes_log_ctx();
    v3 = state->opaque[1];
  }

  else
  {
    v3 = voucher_adopt();
  }

  os_release(v3);
  state->opaque[0] = 0;
  state->opaque[1] = 0;
}

void *_os_trace_malloc_typed(size_t size, malloc_type_id_t type_id)
{
  while (1)
  {
    result = malloc_type_malloc(size, type_id);
    if (result)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  return result;
}

void *_os_trace_calloc_typed(size_t count, size_t size, malloc_type_id_t type_id)
{
  while (1)
  {
    result = malloc_type_calloc(count, size, type_id);
    if (result)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  return result;
}

uint64_t _libtrace_init()
{
  _os_trace_dsc_load_addr = _dyld_get_shared_cache_range();
  if (getpid() == 1)
  {
    _os_trace_commpage_setup();
  }

  dword_1ED3F7A40 = 0;
  _os_log_mask_callback = _os_log_mask_callback_impl;
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1ED3F74A0 = dispatch_queue_create("com.apple.libtrace.state.block-list", v0);
  v1 = getenv("OSLogClientType");
  if (v1)
  {
    v2 = strtol(v1, 0, 10);
    if (v2 || *__error() != 22)
    {
      v3 = __error();
      if (v2 <= 0x7F && *v3 != 34 && v2 <= 2)
      {
        byte_1ED3F7561 = v2;
      }
    }
  }

  result = _os_trace_create_debug_control_port();
  dword_1ED3F74D8 = result;
  if (byte_1ED3F7561 != 2)
  {

    return MEMORY[0x1EEE703B8](&_libtrace_hooks);
  }

  return result;
}

uint64_t _os_trace_create_debug_control_port()
{
  options.reserved[1] = 0;
  *&options.flags = xmmword_1A7AD5450;
  name = 0;
  v0 = MEMORY[0x1E69E9A60];
  if (mach_port_construct(*MEMORY[0x1E69E9A60], &options, 0x71B75ACEuLL, &name))
  {
    _os_assumes_log();
    return 0;
  }

  else
  {
    if (task_set_special_port(*v0, 10, name))
    {
      _os_assumes_log();
    }

    return name;
  }
}

uint64_t _os_trace_get_logd_port()
{
  if ((qword_1ED3F74D0 & 0x100) != 0)
  {
    return 0;
  }

  if ((MEMORY[0xFFFFFC104] & 0x100) != 0)
  {
    return 0;
  }

  if (client_has_mach_ports_disabled_once != -1)
  {
    dispatch_once(&client_has_mach_ports_disabled_once, &__block_literal_global_37);
  }

  if (client_has_mach_ports_disabled_has_entitlement)
  {
    return 0;
  }

  if (bootstrap_look_up2())
  {
    return 0;
  }

  return HIDWORD(qword_1ED3F74D0);
}

void _os_trace_init_slow()
{
  v54 = *MEMORY[0x1E69E9840];
  if ((qword_1ED3F74D0 & 0x100) == 0 && (MEMORY[0xFFFFFC104] & 0x100) == 0)
  {
    v0 = *__error();
    _dyld_get_prog_image_header();
    qword_1ED3F7508 = dyld_image_path_containing_address();
    main = xpc_bundle_create_main();
    info_dictionary = xpc_bundle_get_info_dictionary();
    if (info_dictionary)
    {
      v3 = info_dictionary;
      string = xpc_dictionary_get_string(info_dictionary, "CFBundleIdentifier");
      if (string)
      {
        qword_1ED3F7558 = strdup(string);
      }

      dictionary = xpc_dictionary_get_dictionary(v3, "OSLogPreferences");
      if (dictionary)
      {
        qword_1ED3F7550 = xpc_retain(dictionary);
      }
    }

    xpc_release(main);
    if (_os_trace_allow_development_env_vars_once != -1)
    {
      dispatch_once(&_os_trace_allow_development_env_vars_once, &__block_literal_global_100);
    }

    v6 = _os_trace_allow_development_env_vars_allowed;
    if (byte_1ED3F7561 == 2)
    {
      RTLogConnect();
      if (byte_1ED3F7561 == 2)
      {
        goto LABEL_14;
      }
    }

    else if (byte_1ED3F7561 == 1)
    {
      byte_1ED3F754B = 1;
    }

    voucher_activity_get_metadata_buffer();
LABEL_14:
    v7 = getenv("OS_ACTIVITY_MODE");
    v8 = getenv("OS_ACTIVITY_STREAM");
    v9 = getenv("OS_ACTIVITY_PROPAGATE_MODE");
    v10 = qword_1ED3F74D0;
    if (v8 && !strcasecmp(v8, "live"))
    {
      v10 |= 8u;
    }

    if (v9)
    {
      v11 = v10 | 0x10000;
    }

    else
    {
      v11 = v10;
    }

    if (v7)
    {
      if (!strcasecmp(v7, "info"))
      {
        v11 |= 1u;
      }

      else if (!strcasecmp(v7, "debug"))
      {
        v11 |= 3u;
      }

      else if (!strcasecmp(v7, "off"))
      {
        v11 |= 0x400u;
      }

      else if (!strcasecmp(v7, "disable"))
      {
        v11 |= 0x100u;
      }

      else if (!strcasecmp(v7, "stream"))
      {
        v11 |= 0xBu;
        if (isatty(2))
        {
          fputs("use OS_ACTIVITY_STREAM for configuring streaming.\n", *MEMORY[0x1E69E9848]);
        }
      }
    }

    LODWORD(qword_1ED3F74D0) = v11;
    *(&qword_1ED3F7538 + 4) = 0x70000000BLL;
    arc4random_buf(&qword_1ED3F7518, 8uLL);
    if (byte_1ED3F7545 == 1)
    {
      v12 = _dyld_image_count();
      if (v12)
      {
        v13 = v12;
        for (i = 0; i != v13; ++i)
        {
          image_header = _dyld_get_image_header(i);
          if (image_header)
          {
            _os_trace_image_was_loaded(image_header);
          }
        }
      }
    }

    else
    {
      _dyld_register_func_for_add_image(_os_trace_image_was_loaded);
      _dyld_register_func_for_remove_image(_os_trace_image_was_unloaded);
    }

    if (byte_1ED3F7561 != 2)
    {
      voucher_activity_flush();
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    memset(v20, 0, sizeof(v20));
    LODWORD(v21) = 0;
    *v51 = 0xE00000001;
    v52 = 1;
    v53 = getpid();
    v19 = 648;
    sysctl(v51, 4u, v20, &v19, 0, 0);
    if ((v21 & 0x800) != 0)
    {
      if (!v7)
      {
        LODWORD(qword_1ED3F74D0) = qword_1ED3F74D0 | 3;
      }
    }

    else if (issetugid())
    {
      goto LABEL_68;
    }

    if ((getenv("ACTIVITY_LOG_STDERR") || getenv("CFLOG_FORCE_STDERR")) && v6)
    {
      byte_1ED3F7546 = 1;
    }

    if (getenv("OS_ACTIVITY_DT_MODE") && v6)
    {
      byte_1ED3F7547 = 1;
    }

    if (getenv("OS_ACTIVITY_TOOLS_PRIVACY") && v6)
    {
      byte_1ED3F7548 = 1;
    }

    if (getenv("OS_ACTIVITY_TOOLS_OVERSIZE"))
    {
      if (v6)
      {
        byte_1ED3F7549 = 1;
      }
    }

    v16 = getenv("OS_LOG_FAULT_REPORTS");
    if (!v16)
    {
      goto LABEL_68;
    }

    v17 = v16;
    if (!strcasecmp(v16, "always"))
    {
      v18 = 2;
      goto LABEL_67;
    }

    if (!strcasecmp(v17, "off"))
    {
      v18 = 3;
LABEL_67:
      byte_1ED3F754C = v18;
    }

LABEL_68:
    BYTE8(_os_trace) = 1;
    *__error() = v0;
  }
}

os_log_t os_log_create(const char *subsystem, const char *category)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v4 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v23 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v23, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v23 == v4)
    {
      _os_log_preferences_refresh_process();
    }
  }

  if ((qword_1ED3F74D0 & 0x100) != 0 || (MEMORY[0xFFFFFC104] & 0x100) != 0)
  {
    return &_os_log_disabled;
  }

  v5 = strlen(subsystem) + 1;
  v6 = strlen(category);
  v7 = v6 + 1;
  v8 = v5 + (v6 + 1) + 4;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  bzero(v24 - v9, v8);
  v24[0] = 0;
  v10[2] = v5;
  v10[3] = v7;
  strlcpy(v10 + 4, subsystem, v5);
  strlcpy(&v10[v5 + 4], category, v7);
  v11 = _os_log_find(v10);
  if (v11)
  {
    return v11;
  }

  os_unfair_lock_lock_with_options();
  result = _os_log_find(v10);
  if (result)
  {
    v11 = result;
    os_unfair_lock_unlock(&dword_1ED3F7A40);
    return v11;
  }

  if ((MEMORY[0xFFFFFC104] & 0x80000000) != 0 || (MEMORY[0xFFFFFC104] & 0x10000000) == 0 || os_log_create_subsystem_id < 0xFA0u)
  {
    v11 = _os_object_alloc_realized();
    *(v11 + 8) = 0x7FFFFFFF;
    *(v11 + 12) = 0x7FFFFFFF;
    *(v11 + 56) = 0x45000000000000;
    _os_log_set_default_signpost_opts(category, v11 + 56);
    if (byte_1ED3F7561 == 2)
    {
      v24[0] = 2048;
      metadata_buffer = xmmword_1ED3F74C0;
    }

    else
    {
      metadata_buffer = voucher_activity_get_metadata_buffer();
    }

    if (!metadata_buffer || (v14 = v24[0] - 41, v24[0] -= 41, v15 = *(metadata_buffer + 4), v16 = (v8 & 1) + v8 + v15, WORD1(v16)) || v14 <= v16)
    {
      *(v11 + 60) |= 0x4000000u;
      while (1)
      {
        v19 = malloc_type_malloc(v8, 0xDE4A06B5uLL);
        if (v19)
        {
          break;
        }

        _os_trace_temporary_resource_shortage();
      }

      v17 = v19;
      v18 = 0;
    }

    else
    {
      v17 = (metadata_buffer + v15 + 41);
      *(metadata_buffer + 4) = (v8 & 1) + v8 + v15;
      v18 = 1;
    }

    memcpy(v17, v10, v8);
    *v17 = atomic_fetch_add_explicit(&os_log_create_subsystem_id, 1u, memory_order_relaxed);
    *(v11 + 24) = v17;
    *(v11 + 48) = dword_1ED3F74E0;
    v20 = &_os_log_globals[os_simple_hash() & 0x3F];
    os_unfair_lock_assert_owner(&dword_1ED3F7A40);
    ++dword_1ED3F7A44;
    *(v11 + 16) = *v20;
    atomic_store(v11, v20);
    os_unfair_lock_unlock(&dword_1ED3F7A40);
    if ((v18 & 1) == 0)
    {
      v21 = (*v17 << 32) | 0x205;
      v22 = mach_continuous_time();
      transport_add_public_tracepoint(3, v21, v22, v17, v8);
    }

    _os_log_preferences_refresh(v11);
    return v11;
  }

  qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: Too many os_log_t objects";
  qword_1EB2AFEB0 = os_log_create_subsystem_id;
  __break(1u);
  return result;
}

uint64_t ___os_trace_allow_development_env_vars_block_invoke()
{
  v1 = 0;
  result = amfi_check_dyld_policy_self(0, &v1);
  _os_trace_allow_development_env_vars_allowed = (result == 0) & BYTE1(v1);
  return result;
}

uint64_t amfi_check_dyld_policy_self(uint64_t a1, unint64_t *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 0;
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = a1;
  v4[2] = v4;
  result = __sandbox_ms();
  if (result)
  {
    result = *__error();
  }

  *a2 = v4[0];
  return result;
}

void _os_log_with_args_impl(NSObject *a1, char a2, char *a3, _DWORD *a4, void (*a5)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, va_list a6), void *a6, uint64_t a7)
{
  v9 = a5;
  v10 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v26 = a5;
  v27 = a4;
  v14 = *__error();
  if (os_log_type_enabled(a1, (a2 & 0x7F)))
  {
    v15 = dyld_image_header_containing_address();
    if (v15)
    {
      first_non_jit_frame = v15;
      if (a3 || !a6)
      {
        v17 = dyld_image_header_containing_address();
        if (first_non_jit_frame == v17)
        {
          size = 0;
          v18 = getsegmentdata(v17, "__TEXT", &size);
          if (v18)
          {
            if (v18 <= a3 && &a3[strlen(a3)] < &v18[size])
            {
              v24 = 0;
              v22 = 0u;
              v23 = 0u;
              v20 = 0u;
              v21 = 0u;
              v19 = 0;
              if (os_log_fmt_encode(a3, a7, v28, &v19, v27))
              {
                *(&v21 + 1) = first_non_jit_frame;
                *&v22 = v9;
                *(&v22 + 1) = a3;
                _os_log_impl_flatten_and_send(&v20);
                return;
              }

              v10 = v27;
            }
          }
        }
      }
    }

    else
    {
      first_non_jit_frame = os_log_with_args_find_first_non_jit_frame(&v26);
      v9 = v26;
    }

    *(&v21 + 1) = first_non_jit_frame;
    *&v22 = v9;
    *(&v22 + 1) = a3;
    _os_log_impl_dynamic(&v20, a1, a2 & 0x7F, a6, v14, v10);
  }
}

void _os_log_shim_with_CFString_impl(void (*a1)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, va_list a6), NSObject *a2, int a3, void *a4, _DWORD *a5, uint64_t a6)
{
  v13 = [a4 _fastCStringContents:1];
  if (!a1)
  {
    a1 = v6;
  }

  if (a3 == 4)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2 * (a3 == 2);
  }

  _os_log_with_args_impl(a2, v14, v13, a5, a1, a4, a6);
}

_WORD *os_log_fmt_encode(char *a1, uint64_t a2, _WORD *a3, _WORD *a4, _DWORD *a5)
{
  v6 = a3;
  v63 = a5;
  v59 = 0x1000000000000;
  v57 = a3;
  v58 = 0x36200000000;
  memset(v61, 0, sizeof(v61));
  v62 = 0u;
  if (strnlen(a1, 0x801uLL) >= 0x801)
  {
LABEL_2:
    if (a4)
    {
      *a4 = 0;
    }

    if ((v59 & 0x100000000) == 0)
    {
      return 0;
    }

    qword_1EB2AFE80 = "BUG IN LIBTRACE: Buffer needs free";
    __break(1u);
LABEL_130:
    qword_1EB2AFE80 = "BUG IN LIBTRACE: Buffer needs free";
    __break(1u);
LABEL_131:
    qword_1EB2AFE80 = "BUG IN LIBTRACE: Unexpected type";
    qword_1EB2AFEB0 = 0;
    __break(1u);
    JUMPOUT(0x1A7AC07B8);
  }

  *v6 = 0;
  LODWORD(v58) = 2;
  v9 = strchr(a1, 37);
  if (!v9)
  {
    v54 = 0;
    goto LABEL_125;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v60 = 0;
  while (1)
  {
    v14 = os_log_fmt_delimit(v10, a2, v61);
    if (!v14)
    {
      if (!v10[1])
      {
        goto LABEL_124;
      }

      v26 = v10 + 2;
      goto LABEL_104;
    }

    v15 = WORD4(v61[0]);
    if (BYTE8(v61[0]))
    {
      goto LABEL_2;
    }

    if (v13 == 48)
    {
      goto LABEL_124;
    }

    v16 = v14;
    if ((WORD4(v61[0]) & 0x800) != 0)
    {
      break;
    }

LABEL_22:
    if ((v15 & 2) == 0)
    {
      goto LABEL_33;
    }

    v60 = 1024;
    v21 = v63;
    v63 += 2;
    LODWORD(__src) = *v21;
    if ((v59 & 0x200000000) == 0)
    {
      if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) > 1)
      {
        v22 = v60;
        *(v57 + v58) = v60;
        v23 = v58 + 2;
        LODWORD(v58) = v58 + 2;
        v24 = v22 >> 8;
        if ((v59 & 0x1000000000000) == 0)
        {
          *(v57 + v23) = 0;
        }

        goto LABEL_27;
      }

      os_trace_blob_add_slow(&v57, &v60, 2uLL);
    }

    v24 = 4;
LABEL_27:
    if ((v59 & 0x200000000) == 0)
    {
      if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) < v24)
      {
        os_trace_blob_add_slow(&v57, &__src, v24);
      }

      else
      {
        memcpy(v57 + v58, &__src, v24);
        v25 = v58 + v24;
        LODWORD(v58) = v58 + v24;
        if ((v59 & 0x1000000000000) == 0)
        {
          *(v57 + v25) = 0;
        }
      }
    }

    if (++v13 == 48)
    {
      goto LABEL_123;
    }

    v15 = WORD4(v61[0]);
LABEL_33:
    if ((v15 & 4) != 0)
    {
      v27 = v63;
      v63 += 2;
      DWORD2(v61[1]) = *v27;
      if ((v15 & 8) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v15 & 0x10) != 0 || BYTE10(v61[0]) == 18)
      {
        v15 &= 0xFFF3u;
        WORD4(v61[0]) = v15;
      }

      if ((v15 & 8) == 0)
      {
LABEL_38:
        if ((v15 & 0x10) != 0)
        {
          goto LABEL_64;
        }

        goto LABEL_39;
      }
    }

    if ((v15 & 0x10) != 0 || BYTE10(v61[0]) == 18)
    {
      LOBYTE(v60) = 0;
    }

    else
    {
      if ((v15 & 4) != 0)
      {
        LOBYTE(v28) = 16;
      }

      else if ((v15 & 0x400) != 0)
      {
        LOBYTE(v28) = 21;
      }

      else if ((v15 & 0x200) != 0)
      {
        LOBYTE(v28) = 17;
      }

      else
      {
        v28 = (v15 >> 7) & 2 | 0x10;
      }

      LOBYTE(v60) = v28;
    }

    HIBYTE(v60) = 4;
    if ((v59 & 0x200000000) != 0)
    {
      goto LABEL_117;
    }

    if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) <= 1)
    {
      os_trace_blob_add_slow(&v57, &v60, 2uLL);
LABEL_117:
      v31 = 4;
      goto LABEL_58;
    }

    v29 = v60;
    *(v57 + v58) = v60;
    v30 = v58 + 2;
    LODWORD(v58) = v58 + 2;
    v31 = v29 >> 8;
    if ((v59 & 0x1000000000000) == 0)
    {
      *(v57 + v30) = 0;
    }

LABEL_58:
    if ((v59 & 0x200000000) == 0)
    {
      if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) < v31)
      {
        os_trace_blob_add_slow(&v57, &v61[1] + 8, v31);
      }

      else
      {
        memcpy(v57 + v58, &v61[1] + 8, v31);
        v32 = v58 + v31;
        LODWORD(v58) = v58 + v31;
        if ((v59 & 0x1000000000000) == 0)
        {
          *(v57 + v32) = 0;
        }
      }
    }

    if (++v13 == 48)
    {
      goto LABEL_123;
    }

    v15 = WORD4(v61[0]);
    if ((BYTE8(v61[0]) & 0x10) != 0)
    {
LABEL_64:
      LOBYTE(v60) = v60 & 0xF;
      goto LABEL_65;
    }

LABEL_39:
    v12 |= 2u;
LABEL_65:
    v12 |= (v15 & 0x600) != 0;
    v33 = (v15 >> 7) & 2;
    if ((v15 & 0x200) != 0)
    {
      LOBYTE(v33) = 1;
    }

    if ((v15 & 0x400) != 0)
    {
      v34 = 5;
    }

    else
    {
      v34 = v33;
    }

    LOBYTE(v60) = v60 & 0xF0 | v34;
    switch(BYTE10(v61[0]))
    {
      case 0:
        goto LABEL_131;
      case 1:
        v47 = v63;
        v63 += 2;
        v36 = *v47;
        goto LABEL_87;
      case 2:
        v46 = v63;
        v63 += 2;
        v36 = *v46;
        goto LABEL_87;
      case 3:
        v44 = v63;
        v63 += 2;
        v36 = *v44;
        goto LABEL_87;
      case 4:
        v45 = v63;
        v63 += 2;
        v36 = *v45;
        goto LABEL_87;
      case 5:
      case 6:
      case 7:
        v35 = v63;
        v63 += 2;
        v36 = *v35;
LABEL_87:
        LODWORD(__src) = v36;
        HIBYTE(v60) = 4;
        if ((v59 & 0x200000000) != 0)
        {
          goto LABEL_90;
        }

        v48 = v58;
        if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) > 1)
        {
          goto LABEL_96;
        }

        os_trace_blob_add_slow(&v57, &v60, 2uLL);
LABEL_90:
        v41 = 4;
        goto LABEL_98;
      case 8:
        v60 = v34 | 0x60;
        if ((v59 & 0x200000000) != 0)
        {
          goto LABEL_120;
        }

        if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) <= 1)
        {
          os_trace_blob_add_slow(&v57, &v60, 2uLL);
LABEL_120:
          v41 = 0;
        }

        else
        {
          v39 = v60;
          *(v57 + v58) = v60;
          v40 = v58 + 2;
          LODWORD(v58) = v58 + 2;
          v41 = v39 >> 8;
          if ((v59 & 0x1000000000000) == 0)
          {
            *(v57 + v40) = 0;
          }
        }

        v12 |= 2u;
        if ((v59 & 0x200000000) != 0)
        {
          goto LABEL_103;
        }

        if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) >= v41)
        {
          v42 = v57 + v58;
          v43 = 0;
          goto LABEL_101;
        }

        p_src = 0;
        goto LABEL_107;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
      case 0xD:
        goto LABEL_93;
      case 0xE:
      case 0xF:
        v37 = v63;
        v63 += 2;
        __src = *v37;
        goto LABEL_94;
      case 0x10:
        v38 = v34 | 0x20;
        goto LABEL_92;
      case 0x11:
        v38 = v34 | 0x50;
        goto LABEL_92;
      case 0x12:
        v38 = v34 | 0x40;
        goto LABEL_92;
      case 0x13:
        v38 = v34 | 0x30;
LABEL_92:
        LOBYTE(v60) = v38;
LABEL_93:
        v49 = v63;
        v63 += 2;
        __src = *v49;
LABEL_94:
        HIBYTE(v60) = 8;
        if ((v59 & 0x200000000) != 0)
        {
          goto LABEL_109;
        }

        v48 = v58;
        if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) <= 1)
        {
          os_trace_blob_add_slow(&v57, &v60, 2uLL);
LABEL_109:
          v41 = 8;
        }

        else
        {
LABEL_96:
          v50 = v60;
          *(v57 + v48) = v60;
          v51 = v58 + 2;
          LODWORD(v58) = v58 + 2;
          v41 = v50 >> 8;
          if ((v59 & 0x1000000000000) == 0)
          {
            *(v57 + v51) = 0;
          }
        }

LABEL_98:
        if ((v59 & 0x200000000) != 0)
        {
          goto LABEL_103;
        }

        if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) < v41)
        {
          p_src = &__src;
LABEL_107:
          os_trace_blob_add_slow(&v57, p_src, v41);
        }

        else
        {
          v42 = v57 + v58;
          v43 = &__src;
LABEL_101:
          memcpy(v42, v43, v41);
          v52 = v58 + v41;
          LODWORD(v58) = v58 + v41;
          if ((v59 & 0x1000000000000) == 0)
          {
            *(v57 + v52) = 0;
          }
        }

LABEL_103:
        v26 = &v16[v10];
        v11 = ++v13;
        break;
      default:
        goto LABEL_103;
    }

LABEL_104:
    v10 = strchr(v26, 37);
    if (!v10)
    {
      goto LABEL_124;
    }
  }

  v60 = 2160;
  if ((v59 & 0x200000000) != 0)
  {
    goto LABEL_111;
  }

  if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) <= 1)
  {
    os_trace_blob_add_slow(&v57, &v60, 2uLL);
LABEL_111:
    v19 = 8;
    goto LABEL_16;
  }

  v17 = v60;
  *(v57 + v58) = v60;
  v18 = v58 + 2;
  LODWORD(v58) = v58 + 2;
  v19 = v17 >> 8;
  if ((v59 & 0x1000000000000) == 0)
  {
    *(v57 + v18) = 0;
  }

LABEL_16:
  if ((v59 & 0x200000000) == 0)
  {
    if (HIDWORD(v58) - v58 - (BYTE6(v59) ^ 1u) < v19)
    {
      os_trace_blob_add_slow(&v57, &v62 + 8, v19);
    }

    else
    {
      memcpy(v57 + v58, &v62 + 8, v19);
      v20 = v58 + v19;
      LODWORD(v58) = v58 + v19;
      if ((v59 & 0x1000000000000) == 0)
      {
        *(v57 + v20) = 0;
      }
    }
  }

  v12 |= 2u;
  if (++v13 != 48)
  {
    v15 = WORD4(v61[0]);
    goto LABEL_22;
  }

LABEL_123:
  v11 = 48;
LABEL_124:
  v54 = v12 | (v11 << 8);
LABEL_125:
  *v6 = v54;
  if (a4)
  {
    *a4 = v58;
  }

  if ((v59 & 0x100000000) != 0)
  {
    goto LABEL_130;
  }

  return v6;
}

char *os_log_fmt_delimit(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != 37)
  {
    qword_1EB2AFE80 = "BUG IN LIBTRACE: Should start with '%'";
    qword_1EB2AFEB0 = v5;
    __break(1u);
    JUMPOUT(0x1A7AC0E38);
  }

  *(a3 + 8) = 0u;
  v9 = (a3 + 8);
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = a1;
  if (a1[1] != 123)
  {
    v12 = 0;
    goto LABEL_55;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFBLL) != 2)
  {
    return 0;
  }

  result = strchr(v4, 125);
  if (result)
  {
    v11 = a1 + 2;
    if (a1[2] == 125)
    {
      v12 = 0;
      goto LABEL_54;
    }

    v52 = result;
    v12 = 0;
    while (1)
    {
      v13 = &v11[strspn(v11, ", ")];
      v14 = strcspn(v13, ",}");
      v15 = v14;
      v16 = v14 - 6;
      if (v14 <= 6)
      {
        if (v14 != 6)
        {
          if (!v14)
          {
            result = v52;
            goto LABEL_54;
          }

LABEL_33:
          if (!memchr(v13, 61, v14))
          {
            if (!strncmp(v13, "mask.", 5uLL))
            {
              if (v16 <= 7)
              {
                v22 = 0;
                v23 = 0;
                v12 |= 0x800u;
                *(a3 + 8) = v12;
                v24 = v13 + 5;
                *(a3 + 48) = v13 + 5;
                *(a3 + 18) = v15 - 5;
                do
                {
                  v25 = *v24++;
                  v23 |= v25 << v22;
                  v22 += 8;
                }

                while (8 * (v15 - 5) != v22);
                *(a3 + 56) = v23;
              }
            }

            else
            {
              v20 = v12 | 0x40;
              *v9 = v12 | 0x40;
              if (!strncmp(v13, "builtin:", 8uLL))
              {
                v12 |= 0xC0u;
                *(a3 + 8) = v12;
                *(a3 + 14) = 7;
                *(a3 + 32) = "builtin";
                *(a3 + 40) = v13 + 8;
                *(a3 + 16) = v15 - 8;
              }

              else
              {
                v21 = memchr(v13, 58, v15);
                if (v21)
                {
                  if ((v12 & 0x80) != 0)
                  {
                    v20 = v12 & 0xFFFFFF3F | 0x40;
                    *v9 = v20;
                  }

                  *(a3 + 14) = v21 - v13;
                  *(a3 + 32) = v13;
                  *(a3 + 40) = v21 + 1;
                  *(a3 + 16) = v13 + v15 - (v21 + 1);
                  v12 = v20;
                }

                else
                {
                  v12 |= 0xC0u;
                  *(a3 + 8) = v12;
                  *(a3 + 14) = 7;
                  *(a3 + 32) = "builtin";
                  *(a3 + 40) = v13;
                  *(a3 + 16) = v15;
                }
              }
            }
          }

          goto LABEL_34;
        }

        if (*v13 != 1818391920 || *(v13 + 2) != 25449)
        {
          goto LABEL_33;
        }

        v12 |= 0x100u;
      }

      else if (v14 == 7)
      {
        if (*v13 != 1986622064 || *(v13 + 3) != 1702125942)
        {
          goto LABEL_33;
        }

        v12 |= 0x200u;
      }

      else
      {
        if (v14 != 9)
        {
          goto LABEL_33;
        }

        if (*v13 != 0x76697469736E6573 || v13[8] != 101)
        {
          goto LABEL_33;
        }

        v12 |= 0x400u;
      }

      *v9 = v12;
LABEL_34:
      v11 = &v13[v15];
      if (*v11 == 125)
      {
        if ((v12 & 0x400) != 0)
        {
          v26 = 64767;
          result = v52;
LABEL_52:
          v12 &= v26;
          *v9 = v12;
        }

        else
        {
          result = v52;
          if ((v12 & 0x200) != 0)
          {
            v26 = 64255;
            goto LABEL_52;
          }
        }

LABEL_54:
        v4 = result + 1;
LABEL_55:
        v27 = 0;
LABEL_56:
        v29 = *v4++;
        v28 = v29;
        while (1)
        {
          while ((v28 - 49) < 9)
          {
            do
            {
              v30 = *v4++;
              v28 = v30;
            }

            while ((v30 - 48) < 0xA);
            if (v28 == 36)
            {
              v12 |= 1u;
              *v9 = v12;
              goto LABEL_56;
            }
          }

          switch(v28)
          {
            case ' ':
            case '#':
            case '\'':
            case '+':
            case '-':
            case '0':
              goto LABEL_56;
            case '*':
              if ((v12 & 8) != 0)
              {
                v12 |= 1u;
                *v9 = v12;
              }

              v36 = v4;
              do
              {
                v38 = *v36++;
                v37 = v38;
              }

              while ((v38 - 48) < 0xA);
              if (v37 == 36)
              {
                v12 |= 1u;
              }

              else
              {
                v12 |= (v12 >> 1) & 1 | 2;
              }

              if (v37 == 36)
              {
                v4 = v36;
              }

              *v9 = v12;
              goto LABEL_56;
            case '.':
              v31 = *v4++;
              v28 = v31;
              if (v31 == 42)
              {
                v39 = v4;
                do
                {
                  v41 = *v39++;
                  v40 = v41;
                }

                while ((v41 - 48) < 0xA);
                if (v40 == 36)
                {
                  v12 |= 1u;
                  *v9 = v12;
                  v4 = v39;
                }

                else
                {
                  v42 = v12 | ((v12 & 0xC) != 0);
                  v12 = v42 | 0xC;
                  *v9 = v42 | 0xC;
                }

                goto LABEL_56;
              }

              *(a3 + 24) = 0;
              v32 = v28 - 48;
              if ((v28 - 48) <= 9)
              {
                v33 = 0;
                do
                {
                  v33 = v32 + 10 * v33;
                  *(a3 + 24) = v33;
                  v34 = *v4++;
                  v28 = v34;
                  v32 = v34 - 48;
                }

                while ((v34 - 48) < 0xA);
              }

              v35 = v12 | (v12 >> 3) & 1;
              v12 = v35 | 8;
              *v9 = v35 | 8;
              break;
            case '@':
              v49 = 18;
              goto LABEL_117;
            case 'A':
            case 'E':
            case 'F':
            case 'G':
            case 'a':
            case 'e':
            case 'f':
            case 'g':
              if ((v27 & 8) != 0)
              {
                v43 = 15;
              }

              else
              {
                v43 = 14;
              }

              goto LABEL_96;
            case 'C':
              v43 = 7;
              goto LABEL_96;
            case 'D':
              LOWORD(v27) = v27 | 0x10;
              goto LABEL_135;
            case 'L':
              v27 |= 8u;
              goto LABEL_56;
            case 'O':
            case 'U':
              LOWORD(v27) = v27 | 0x10;
              goto LABEL_99;
            case 'P':
              if (a2 != 2)
              {
                return 0;
              }

              if ((v12 & 8) == 0)
              {
                *v9 = v12 | 1;
              }

              v49 = 19;
              goto LABEL_117;
            case 'S':
              v49 = 17;
              goto LABEL_117;
            case 'X':
            case 'o':
            case 'u':
            case 'x':
LABEL_99:
              if ((v27 & 0x2000) != 0)
              {
                v45 = 2;
              }

              else
              {
                v45 = 6;
              }

              if ((v27 & 0x40) != 0)
              {
                v46 = 4;
              }

              else
              {
                v46 = v45;
              }

              if ((v27 & 0x10) != 0)
              {
                v47 = 10;
              }

              else
              {
                v47 = v46;
              }

              if ((v27 & 0x20) != 0)
              {
                v48 = 12;
              }

              else
              {
                v48 = v47;
              }

              if ((v27 & 0xC00) != 0)
              {
                v48 = 10;
              }

              if ((v27 & 0x1000) != 0)
              {
                v49 = 12;
              }

              else
              {
                v49 = v48;
              }

              *(a3 + 8) = v12 | 0x30;
              goto LABEL_117;
            case 'c':
              if ((v27 & 0x10) != 0)
              {
                v43 = 7;
              }

              else
              {
                v43 = 5;
              }

              goto LABEL_96;
            case 'd':
            case 'i':
LABEL_135:
              if ((v27 & 0x1000) != 0)
              {
                goto LABEL_143;
              }

              if ((v27 & 0x400) != 0 || (v27 & 0x800) != 0)
              {
                goto LABEL_144;
              }

              if ((v27 & 0x20) != 0)
              {
LABEL_143:
                v51 = 11;
              }

              else if ((v27 & 0x10) != 0)
              {
LABEL_144:
                v51 = 9;
              }

              else if ((v27 & 0x40) != 0)
              {
                v51 = 3;
              }

              else if ((v27 & 0x2000) != 0)
              {
                v51 = 1;
              }

              else
              {
                v51 = 5;
              }

              *(a3 + 10) = v51;
              v50 = v12 | 0x10;
LABEL_146:
              *v9 = v50;
              goto LABEL_147;
            case 'h':
              if ((v27 & 0x40) != 0)
              {
                v27 = v27 & 0xFFFFDFBF | 0x2000;
              }

              else
              {
                v27 |= 0x40u;
              }

              goto LABEL_56;
            case 'j':
              v27 |= 0x1000u;
              goto LABEL_56;
            case 'l':
              if ((v27 & 0x10) != 0)
              {
                v27 = v27 & 0xFFFFFFCF | 0x20;
              }

              else
              {
                v27 |= 0x10u;
              }

              goto LABEL_56;
            case 'm':
              v43 = 8;
LABEL_96:
              *(a3 + 10) = v43;
              v44 = v12 | 0x10;
              goto LABEL_97;
            case 'n':
              v50 = v12 | 1;
              goto LABEL_146;
            case 'p':
              *(a3 + 10) = 13;
              v44 = v12 | 0x30;
LABEL_97:
              *(a3 + 8) = v44;
              goto LABEL_147;
            case 'q':
              v27 |= 0x20u;
              goto LABEL_56;
            case 's':
              if ((v27 & 0x10) != 0)
              {
                v49 = 17;
              }

              else
              {
                v49 = 16;
              }

LABEL_117:
              *(a3 + 10) = v49;
LABEL_147:
              *(a3 + 12) = v4 - a1;
              return (v4 - a1);
            case 't':
              v27 |= 0x800u;
              goto LABEL_56;
            case 'z':
              v27 |= 0x400u;
              goto LABEL_56;
            default:
              return 0;
          }
        }
      }
    }
  }

  return result;
}

size_t os_trace_blob_add_slow(uint64_t a1, void *__src, size_t __n)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  v3 = __n;
  v6 = *(a1 + 12);
  v7 = v6 - *(a1 + 8) - (*(a1 + 22) ^ 1);
  if (v7 < __n)
  {
    if (v6 < *(a1 + 16))
    {
      v7 = os_trace_blob_grow(a1, __n);
    }

    if (v7 < v3)
    {
      *(a1 + 20) |= 2u;
      v3 = v7;
    }
  }

  memcpy((*a1 + *(a1 + 8)), __src, v3);
  v8 = *(a1 + 8) + v3;
  *(a1 + 8) = v8;
  if ((*(a1 + 22) & 1) == 0)
  {
    *(*a1 + v8) = 0;
  }

  return v3;
}

uint64_t _os_trace_get_image_info(_DWORD *a1, unint64_t a2, uuid_t uu, uint64_t a4, char a5)
{
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2800000000;
  v48 = 0;
  v49 = 0;
  if (a4)
  {
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 1) = _dyld_is_memory_immutable() ^ 1;
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 0x40000000;
  v44[2] = ___os_trace_get_image_info_block_invoke;
  v44[3] = &unk_1E77DB258;
  v44[4] = &v45;
  v44[5] = a4;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 0x40000000;
  v36 = ___os_trace_get_image_info_block_invoke_2;
  v37 = &unk_1E77DB280;
  v42 = uu;
  v43 = a4;
  v38 = v44;
  v39 = &v58;
  v40 = &v50;
  v41 = &v54;
  if (a2 <= 3 && (a5 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*a1 == -17958194)
  {
    if ((a5 & 1) != 0 || a2 >= 0x1C && a2 - 28 >= a1[5])
    {
      v34 = 0;
      v10 = 7;
      goto LABEL_30;
    }

LABEL_14:
    v11 = 88;
    if (!a4)
    {
      goto LABEL_73;
    }

LABEL_15:
    if (*(v55 + 24) == 1 && !*(a4 + 40))
    {
      v18 = *(v46 + 8);
      *(a4 + 40) = v46[3];
      *(a4 + 48) = v18;
      if (a5)
      {
        goto LABEL_73;
      }
    }

    else if (a5)
    {
      goto LABEL_73;
    }

    v12 = (a4 + 20);
    v13 = 5;
    while (1)
    {
      v14 = *v12;
      if (v14)
      {
        v15 = *(v12 - 1);
        v17 = a2 >= v15;
        v16 = a2 - v15;
        v17 = v17 && v16 >= v14;
        if (!v17)
        {
          goto LABEL_78;
        }
      }

      v12 += 3;
      if (!--v13)
      {
        goto LABEL_73;
      }
    }
  }

  if (*a1 != -17958193 || (a5 & 1) == 0 && (a2 < 0x20 || a2 - 32 < a1[5]))
  {
    goto LABEL_14;
  }

  v34 = 1;
  v10 = 8;
LABEL_30:
  v19 = 0;
  v20 = a1[4];
  LOBYTE(v21) = v20 == 0;
  if (v20)
  {
    v22 = a1[5];
    if (v22 >= 8)
    {
      v23 = &a1[v10];
      v24 = 1;
      while (1)
      {
        v25 = v23[1];
        v17 = v22 >= v25;
        v22 -= v25;
        if (!v17)
        {
          goto LABEL_14;
        }

        v19 = 0;
        v26 = *v23;
        if (*v23 > 26)
        {
          switch(v26)
          {
            case 44:
              v29 = v34;
              if (v25 <= 0x17)
              {
                v29 = 0;
              }

              if ((v29 & 1) == 0)
              {
                goto LABEL_14;
              }

              goto LABEL_60;
            case 33:
              v30 = v34;
              if (v25 < 0x14)
              {
                v30 = 1;
              }

              if (v30)
              {
                goto LABEL_14;
              }

              goto LABEL_60;
            case 27:
LABEL_43:
              if (v25 < 0x18)
              {
                goto LABEL_14;
              }

LABEL_60:
              v19 = v36(v35, v23);
              break;
          }
        }

        else
        {
          switch(v26)
          {
            case 1:
              v27 = v25 >= 0x38;
              v28 = v34;
              break;
            case 12:
              goto LABEL_43;
            case 25:
              v27 = v25 >= 0x48;
              v28 = v34 ^ 1;
              break;
            default:
              goto LABEL_61;
          }

          if (!v27)
          {
            v28 = 1;
          }

          if (v28)
          {
            goto LABEL_14;
          }

          if (!strcmp(v23 + 8, "__TEXT") || !strcmp(v23 + 8, "__CTF") || !strcmp(v23 + 8, "__OS_LOG"))
          {
            goto LABEL_60;
          }

          v19 = 0;
        }

LABEL_61:
        if (v19)
        {
          v31 = 1;
        }

        else
        {
          v31 = v24 >= v20;
        }

        v21 = v31;
        if (v22 >= 8)
        {
          v23 = (v23 + v25);
          ++v24;
          if (!v21)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  if (v21)
  {
    v11 = v19;
  }

  else
  {
    v11 = 88;
  }

  if (a4)
  {
    goto LABEL_15;
  }

LABEL_73:
  if (v11 != 89 && v11 || *(v59 + 24) != 1 || (v32 = v51[3]) == 0)
  {
    uuid_clear(uu);
LABEL_78:
    v32 = 0;
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  return v32;
}

void __client_has_mach_ports_disabled_block_invoke()
{
  v0 = xpc_copy_entitlement_for_token();
  if (v0 == MEMORY[0x1E69E9E10])
  {
    client_has_mach_ports_disabled_has_entitlement = 1;
  }

  else if (!v0)
  {
    return;
  }

  xpc_release(v0);
}

size_t _os_trace_metadata_init(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  *&xmmword_1ED3F74C0 = a1;
  if (a2 != 2048)
  {
    qword_1EB2AFE80 = "BUG IN LIBTRACE: Invalid metadata buffer size";
    qword_1EB2AFEB0 = a2;
    __break(1u);
LABEL_14:
    v10 = *__error();
    qword_1EB2AFE80 = "BUG IN LIBTRACE: Unable to get unique pid";
    qword_1EB2AFEB0 = v10;
    __break(1u);
  }

  word_1ED3F7582 = 31;
  off_1ED3F7570 = &unk_1ED3F7578;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v3 = getpid();
  if (proc_pidinfo(v3, 17, 0, &v11, 56) != 56)
  {
    goto LABEL_14;
  }

  qword_1ED3F7510 = v12;
  *(a1 + 8) = v11;
  _dyld_get_shared_cache_uuid();
  *(a1 + 40) = 0;
  v4 = getenv("OSLogRateLimit");
  if (v4)
  {
    v5 = strtol(v4, 0, 10);
    if (v5 || *__error() != 22)
    {
      v6 = __error();
      if (v5 == v5 && *v6 != 34)
      {
        *(a1 + 6) = v5;
        *(a1 + 40) = 1;
      }
    }
  }

  strlcpy((a1 + 41), qword_1ED3F7508, 0x400uLL);
  result = strlen((a1 + 41));
  if (result)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = v8 + result;
  *(a1 + 4) = v9;
  *(a1 + 2) = v9;
  return result;
}

void _os_trace_image_was_loaded(_DWORD *result)
{
  if (xmmword_1ED3F74C0 && (_os_trace_dsc_load_addr > result || _os_trace_dsc_size + _os_trace_dsc_load_addr <= result))
  {
    _os_trace_dylib_or_main_executable_was_loaded(result);
  }
}

void _os_trace_dylib_or_main_executable_was_loaded(_DWORD *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1ED3F74C0;
  v3 = dyld_image_path_containing_address();
  if (v3)
  {
    v4 = v3;
    memset(v24, 0, sizeof(v24));
    v5 = strlen(v3);
    v6 = MEMORY[0x1EEE9AC00](v5);
    v7 = (v24 - ((v6 + 48) & 0xFFFFFFFFFFFFFFF0));
    bzero(v7, v6 + 33);
    v7[2] = a1;
    image_info = _os_trace_get_image_info(a1, 0, v7, v24, 1);
    v7[3] = image_info;
    if (image_info)
    {
      memcpy(v7 + 4, v4, v5 + 1);
      if (LOBYTE(v24[0]) == 1)
      {
        v9 = *v2;
        if ((*v2 & 4) == 0)
        {
          if ((v9 & 2) == 0)
          {
            v10 = 4;
            if (byte_1ED3F7561 != 2)
            {
              if (voucher_activity_should_send_strings())
              {
                v10 = 2;
              }

              else
              {
                v10 = 4;
              }

              v9 = *v2;
            }

            v9 |= v10;
            *v2 = v9;
          }

          if ((v9 & 2) != 0)
          {
            _os_trace_send_sections_to_logd(v7, a1, v24);
          }
        }
      }

      if (a1[3] != 2)
      {
        if (BYTE1(v24[0]) == 1)
        {
          v11 = 0;
          v12 = *(&v24[0] + 1);
          atomic_compare_exchange_strong_explicit(dword_1ED3F7568, &v11, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
          if (v11)
          {
            os_unfair_lock_lock_with_options();
          }

          v13 = off_1ED3F7570;
          v14 = *(off_1ED3F7570 + 5);
          v15 = off_1ED3F7570;
          if (3 * v14 < 4 * *(off_1ED3F7570 + 4))
          {
            v16 = (32 * v14) | 0x10;
            while (1)
            {
              v17 = malloc_type_calloc(1uLL, v16, 0xCF510CD4uLL);
              if (v17)
              {
                break;
              }

              _os_trace_temporary_resource_shortage();
            }

            v15 = v17;
            *(v17 + 5) = 2 * v13[5];
            *(v17 + 12) = 1;
            v19 = v13[5];
            if (v13[5])
            {
              v20 = 0;
              v21 = (v13 + 12);
              do
              {
                v22 = *(v21 - 1);
                if (v22 + 1 >= 2)
                {
                  _os_trace_mh_map_insert_impl(0, v22, *v21, v15);
                  v19 = v13[5];
                }

                ++v20;
                v21 += 2;
              }

              while (v20 < v19);
            }
          }

          _os_trace_mh_map_insert_impl(dword_1ED3F7568, a1, v12, v15);
          v18 = 0x200000105;
        }

        else
        {
          v18 = 0x100000105;
        }

        v23 = mach_continuous_time();
        transport_add_public_tracepoint(3, v18, v23, v7, v5 + 33);
      }
    }
  }

  else
  {
    _os_trace_log_simple("no path for address %p", a1);
  }
}

void _os_log_impl_send_oversize(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, const void ***a6)
{
  if (xmmword_1ED3F74C0)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "operation", 3uLL);
    xpc_dictionary_set_uuid(v12, "dsc_uuid", (xmmword_1ED3F74C0 + 24));
    if (*xmmword_1ED3F74C0)
    {
      xpc_dictionary_set_BOOL(v12, "32bits", 1);
    }

    xpc_dictionary_set_uint64(v12, "stream_id", a2);
    xpc_dictionary_set_uint64(v12, "message_id", a5);
    xpc_dictionary_set_data(v12, "commands", **a6, *(*a6 + 2));
    xpc_dictionary_set_data(v12, "pubdata", *a6[1], *(a6[1] + 2));
    xpc_dictionary_set_data(v12, "privdata", *a6[2], *(a6[2] + 2));
    xpc_dictionary_set_uint64(v12, "ts", a4);
    if (a3)
    {
      xpc_dictionary_set_uint64(v12, "ttl", a3);
    }

    if (byte_1ED3F754A == 1)
    {
      xpc_dictionary_set_BOOL(v12, "quarantined", 1);
    }

    if (a1)
    {
      v13 = *(a1 + 24);
      if (v13)
      {
        xpc_dictionary_set_data(v12, "subsystem", v13, v13[2] + v13[3] + 4);
      }
    }

    v14 = _os_trace_logd_send_with_reply(v12);
    if (v14)
    {
      xpc_release(v14);
    }

    xpc_release(v12);
  }
}

uint64_t _os_log_find(unsigned __int8 *a1)
{
  for (i = _os_log_globals[os_simple_hash() & 0x3F]; i; i = *(i + 16))
  {
    v3 = *(i + 24);
    v4 = *(v3 + 2);
    if (v4 == *(a1 + 1) && !memcmp((v3 + 4), a1 + 4, (v4 >> 8) + v4))
    {
      break;
    }
  }

  return i;
}

uint64_t _os_trace_writev(uint64_t a1, iovec *a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v8 = a2;
  while (2)
  {
    if (a3 - v7 >= 1024)
    {
      v9 = 1024;
    }

    else
    {
      v9 = a3 - v7;
    }

    v10 = v7;
    while (1)
    {
      v11 = writev(v5, &v8[v7], v9);
      if ((v11 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        if (v8 != a2)
        {
          free(v8);
        }

        if (v6)
        {
          v20 = __error();
          _os_trace_undo_write(v5, v6, *v20);
        }

        return -1;
      }
    }

    v12 = v11;
    v6 += v11;
    if (a3 > v7)
    {
      p_iov_len = &v8[v7].iov_len;
      while (1)
      {
        v14 = *p_iov_len;
        p_iov_len += 2;
        v15 = v12 - v14;
        if (v12 < v14)
        {
          break;
        }

        ++v10;
        v12 = v15;
        if (a3 == v10)
        {
          goto LABEL_29;
        }
      }

      v7 = v10;
    }

    v16 = (a3 - v7);
    if (a3 != v7)
    {
      if (v8 == a2 && v12)
      {
        while (1)
        {
          v17 = malloc_type_malloc(16 * v16, 0x1080040FC6463CFuLL);
          if (v17)
          {
            break;
          }

          _os_trace_temporary_resource_shortage();
        }

        v8 = v17;
        memcpy(v17, &a2[v7], 16 * v16);
        v7 = 0;
      }

      else
      {
        v16 = a3;
      }

      v18 = &v8[v7];
      v19 = v18->iov_len - v12;
      v18->iov_base = v18->iov_base + v12;
      v18->iov_len = v19;
      a3 = v16;
      continue;
    }

    break;
  }

LABEL_29:
  if (v8 != a2)
  {
    free(v8);
  }

  return v6;
}

void *_os_trace_get_boot_uuid()
{
  if (_os_trace_get_boot_uuid_once != -1)
  {
    dispatch_once_f(&_os_trace_get_boot_uuid_once, &_os_trace_get_boot_uuid_uuid_str, _os_trace_get_boot_uuid_slow);
  }

  return &_os_trace_get_boot_uuid_uuid_str;
}

void _os_state_block_entry_free(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  _Block_release(*(a1 + 24));

  free(a1);
}

void os_state_remove_handler(void *a1)
{
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if ((qword_1ED3F74D0 & 0x100) == 0 && (MEMORY[0xFFFFFC104] & 0x100) == 0)
  {
    v2 = &os_state_blocks;
    os_unfair_lock_lock_with_options();
    do
    {
      v2 = *v2;
      if (!v2)
      {
        v2 = &off_1ED3F7488;
        v3 = &off_1ED3F7490;
        while (1)
        {
          v2 = *v2;
          if (!v2)
          {
            goto LABEL_11;
          }

          if (v2[2] == a1)
          {
            goto LABEL_18;
          }
        }
      }
    }

    while ((*(v2 + 60) & 1) != 0 || v2[2] != a1);
    v3 = &off_1ED3F7480;
    if (byte_1ED3F74A8 == 1)
    {
      *(v2 + 60) = 1;
LABEL_11:

      os_unfair_lock_unlock(&unk_1ED3F7498);
      return;
    }

LABEL_18:
    v4 = *v2;
    v5 = v2[1];
    if (*v2)
    {
      v3 = (*v2 + 8);
    }

    *v3 = v5;
    *v5 = v4;
    atomic_fetch_add_explicit(&dword_1ED3F74AC, 0xFFFFFFFF, memory_order_relaxed);
    os_unfair_lock_unlock(&unk_1ED3F7498);

    _os_state_block_entry_free(v2);
  }
}

const char *os_log_fmt_extract_symptom(uint64_t a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v1 = *(a1 + 2) & 0xF0;
  if (v1 == 32)
  {
    v4 = *(a1 + 4);
    strlen(v4);
    return v4;
  }

  if (v1 != 16 || *(a1 + 1) == 1)
  {
    return 0;
  }

  v2 = a1 + 4 + *(a1 + 3);
  v3 = *v2 & 0xF0;
  if (v3 == 32)
  {
    v4 = *(v2 + 2);
    strnlen(v4, *(a1 + 4));
    return v4;
  }

  if (v3 == 48)
  {
    return *(v2 + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t _os_log_get_proc_path()
{
  v0 = qword_1ED3F7508;
  if (qword_1ED3F7508)
  {
    strrchr(qword_1ED3F7508, 47);
  }

  else
  {
    _os_assumes_log();
  }

  return v0;
}

void *___os_state_request_for_self_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  value = *(a1 + 72);
  v30 = *(a1 + 40);
  v2 = *(a1 + 64);
  v31 = *(a1 + 56);
  v3 = time(0);
  v4 = xpc_array_create(0, 0);
  v5 = os_state_blocks;
  if (os_state_blocks)
  {
    destructor = *MEMORY[0x1E69E9648];
    while (1)
    {
      if (v31 != 1 || *(v5 + 5) == v2)
      {
        v6 = v3 - *(v5 + 6);
        v7 = v5[14];
        if (v6 >= v7)
        {
          break;
        }
      }

LABEL_29:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_30;
      }
    }

    if (v6 >= v7 + 10)
    {
      if (v6 < 70)
      {
        goto LABEL_13;
      }

      v8 = 1;
    }

    else if (v7 <= 30)
    {
      v8 = 2 * v7;
    }

    else
    {
      v8 = 60;
    }

    v5[14] = v8;
LABEL_13:
    *(v5 + 6) = v3;
    *uuid = 0;
    v38 = 0;
    if (_dyld_get_image_uuid())
    {
      *v33 = 0;
      v34 = v33;
      v35 = 0x2000000000;
      v36 = 0;
      v9 = *(v5 + 4);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___os_state_request_for_self_impl_block_invoke;
      block[3] = &unk_1E77DB6D0;
      block[4] = v33;
      block[5] = v5;
      block[6] = &v30;
      dispatch_sync(v9, block);
      v10 = *(v34 + 3);
      if (v10)
      {
        v11 = *(v10 + 4);
        if (v11 < 0x7F39)
        {
          v12 = v1;
          *(v10 + 199) = 0;
          *(v10 + 71) = 0;
          *(v10 + 135) = 0;
          v13 = xpc_dictionary_create(0, 0, 0);
          v14 = dispatch_data_create(*(v34 + 3), v11 + 200, 0, destructor);
          v15 = xpc_data_create_with_dispatch_data(v14);
          xpc_dictionary_set_value(v13, "data", v15);
          xpc_release(v15);
          dispatch_release(v14);
          v16 = mach_continuous_time();
          xpc_dictionary_set_uint64(v13, "ts", v16);
          xpc_dictionary_set_uuid(v13, "uuid", uuid);
          if (value)
          {
            xpc_dictionary_set_uint64(v13, "ttl", value);
          }

          xpc_array_append_value(v4, v13);
          xpc_release(v13);
          v1 = v12;
          if (xpc_array_get_count(v4) == 10)
          {
            v17 = v31;
            v18 = xpc_dictionary_create(0, 0, 0);
            *buf = 0;
            v40 = 0;
            xpc_dictionary_set_uint64(v18, "operation", 2uLL);
            if (_dyld_get_shared_cache_uuid())
            {
              xpc_dictionary_set_uuid(v18, "dsc_uuid", buf);
            }

            xpc_dictionary_set_uint64(v18, "aid", v12);
            xpc_dictionary_set_value(v18, "entries", v4);
            if (byte_1ED3F754A == 1 && v17 != 3)
            {
              xpc_dictionary_set_BOOL(v18, "quarantined", 1);
            }

            _os_trace_logd_send(v18);
            xpc_release(v18);
            xpc_release(v4);
            v4 = xpc_array_create(0, 0);
          }
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AB8000, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Statedump too large", buf, 2u);
            v10 = *(v34 + 3);
          }

          free(v10);
        }
      }

      _Block_object_dispose(v33, 8);
    }

    goto LABEL_29;
  }

LABEL_30:
  if (xpc_array_get_count(v4))
  {
    v19 = v31;
    v20 = xpc_dictionary_create(0, 0, 0);
    *v33 = 0;
    v34 = 0;
    xpc_dictionary_set_uint64(v20, "operation", 2uLL);
    if (_dyld_get_shared_cache_uuid())
    {
      xpc_dictionary_set_uuid(v20, "dsc_uuid", v33);
    }

    xpc_dictionary_set_uint64(v20, "aid", v1);
    xpc_dictionary_set_value(v20, "entries", v4);
    if (byte_1ED3F754A == 1 && v19 != 3)
    {
      xpc_dictionary_set_BOOL(v20, "quarantined", 1);
    }

    _os_trace_logd_send(v20);
    xpc_release(v20);
  }

  xpc_release(v4);
  *v33 = 0;
  v34 = v33;
  os_unfair_lock_lock_with_options();
  v21 = os_state_blocks;
  if (os_state_blocks)
  {
    do
    {
      v22 = *v21;
      if (v21[60] == 1)
      {
        v23 = *(v21 + 1);
        if (v22)
        {
          v24 = *v21;
        }

        else
        {
          v24 = &os_state_blocks;
        }

        *(v24 + 1) = v23;
        *v23 = v22;
        *v21 = 0;
        v25 = v34;
        *(v21 + 1) = v34;
        *v25 = v21;
        v34 = v21;
        atomic_fetch_add_explicit(&dword_1ED3F74AC, 0xFFFFFFFF, memory_order_relaxed);
      }

      v21 = v22;
    }

    while (v22);
  }

  if (off_1ED3F7488)
  {
    *off_1ED3F7480 = off_1ED3F7488;
    *(off_1ED3F7488 + 1) = off_1ED3F7480;
    off_1ED3F7480 = off_1ED3F7490;
    off_1ED3F7488 = 0;
    off_1ED3F7490 = &off_1ED3F7488;
  }

  byte_1ED3F74A8 = 0;
  os_unfair_lock_unlock(&unk_1ED3F7498);
  result = *v33;
  if (*v33)
  {
    do
    {
      v27 = *result;
      _os_state_block_entry_free(result);
      result = v27;
    }

    while (v27);
  }

  return result;
}

image_offset **os_log_backtrace_create_from_return_address(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12[-v4];
  if (v3 >= 0x200)
  {
    v6 = 512;
  }

  else
  {
    v6 = v3;
  }

  bzero(&v12[-v4], v6);
  v13 = 0;
  thread_stack_async_pcs();
  v7 = v13;
  if (v13)
  {
    v8 = v13 - 1;
    while (!*&v5[8 * (v7 - 1)])
    {
      v13 = v8--;
      --v7;
      if (v8 == -1)
      {
        LODWORD(v7) = 0;
        goto LABEL_9;
      }
    }

    v11 = 0;
    v9 = v7 != 0;
    while (*&v5[8 * v11] != a2)
    {
      if (v7 == ++v11)
      {
        return os_log_backtrace_create_from_pcs(&v5[8 * v9], v7 - v9);
      }
    }

    v9 = v11;
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return os_log_backtrace_create_from_pcs(&v5[8 * v9], v7 - v9);
}

image_offset **os_log_backtrace_create_from_pcs(void *const *a1, int a2)
{
  while (1)
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    if (v4)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  v5 = v4;
  *(v4 + 2) = a2;
  while (1)
  {
    v6 = malloc_type_malloc(20 * a2, 0x1000040A86A77D5uLL);
    if (v6)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  *v5 = v6;
  backtrace_image_offsets(a1, v6, a2);
  return v5;
}

void os_log_backtrace_serialize_to_blob(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v35 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v32 - ((v7 + 15) & 0x1FFFFFFF0);
  LODWORD(v7) = *(v5 + 8);
  if (v7 < 1)
  {
    v9 = 255;
  }

  else
  {
    v32 = &v32;
    v8 = 0;
    v9 = 255;
    do
    {
      if (uuid_is_null((*v4 + 20 * v8)))
      {
        goto LABEL_4;
      }

      if (v9 > 254)
      {
        goto LABEL_12;
      }

      v10 = v9;
      v11 = &v34[4 * v9 + 1];
      while (uuid_compare(v11, (*v4 + 20 * v8)))
      {
        ++v10;
        v11 += 16;
        if (v10 == 255)
        {
          goto LABEL_11;
        }
      }

      if (v10 != -1)
      {
        goto LABEL_13;
      }

LABEL_11:
      if (v9 < 1)
      {
LABEL_4:
        LOBYTE(v10) = -1;
      }

      else
      {
LABEL_12:
        uuid_copy(&v34[4 * --v9 + 1], (*v4 + 20 * v8));
        LOBYTE(v10) = v9;
      }

LABEL_13:
      v6[v8++] = v10;
      v7 = *(v4 + 8);
    }

    while (v8 < v7);
  }

  LOBYTE(v34[0]) = 18;
  BYTE1(v34[0]) = -1 - v9;
  HIWORD(v34[0]) = v7;
  if ((*(v3 + 20) & 2) == 0)
  {
    v12 = *(v3 + 8);
    if (*(v3 + 12) - v12 - (*(v3 + 22) ^ 1u) <= 3)
    {
      os_trace_blob_add_slow(v3, v34, 4uLL);
    }

    else
    {
      *(*v3 + v12) = v34[0];
      v13 = *(v3 + 8) + 4;
      *(v3 + 8) = v13;
      if ((*(v3 + 22) & 1) == 0)
      {
        *(*v3 + v13) = 0;
      }
    }
  }

  if ((*(v3 + 20) & 2) == 0)
  {
    v14 = &v34[4 * v9 + 1];
    v15 = 16 * (255 - v9);
    v16 = *(v3 + 8);
    if (v15 > *(v3 + 12) - v16 - (*(v3 + 22) ^ 1u))
    {
      os_trace_blob_add_slow(v3, v14, v15);
    }

    else
    {
      memcpy((*v3 + v16), v14, v15);
      v17 = *(v3 + 8) + v15;
      *(v3 + 8) = v17;
      if ((*(v3 + 22) & 1) == 0)
      {
        *(*v3 + v17) = 0;
      }
    }
  }

  LODWORD(v18) = *(v4 + 8);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 16;
    do
    {
      if ((*(v3 + 20) & 2) == 0)
      {
        v21 = *v4;
        v22 = *(v3 + 8);
        if (*(v3 + 12) - v22 - (*(v3 + 22) ^ 1u) <= 3)
        {
          os_trace_blob_add_slow(v3, (v21 + v20), 4uLL);
        }

        else
        {
          *(*v3 + v22) = *(v21 + v20);
          v23 = *(v3 + 8) + 4;
          *(v3 + 8) = v23;
          if ((*(v3 + 22) & 1) == 0)
          {
            *(*v3 + v23) = 0;
          }
        }
      }

      ++v19;
      v18 = *(v4 + 8);
      v20 += 20;
    }

    while (v19 < v18);
    if (v18 >= 1)
    {
      for (i = 0; i < v18; ++i)
      {
        v25 = v6[i];
        if (v25 != 255)
        {
          LOBYTE(v25) = v25 - v9;
          v6[i] = v25;
        }

        if ((*(v3 + 20) & 2) == 0)
        {
          v26 = *(v3 + 8);
          if (*(v3 + 12) == v26 + (*(v3 + 22) ^ 1))
          {
            os_trace_blob_add_slow(v3, &v6[i], 1uLL);
          }

          else
          {
            *(*v3 + v26) = v25;
            v27 = *(v3 + 8) + 1;
            *(v3 + 8) = v27;
            if ((*(v3 + 22) & 1) == 0)
            {
              *(*v3 + v27) = 0;
            }
          }
        }

        v18 = *(v4 + 8);
      }
    }
  }

  v28 = v18 & 3;
  if (v28)
  {
    v33 = 0;
    if ((*(v3 + 20) & 2) == 0)
    {
      v29 = (4 - v28);
      v30 = *(v3 + 8);
      if (*(v3 + 12) - v30 - (*(v3 + 22) ^ 1u) < v29)
      {
        os_trace_blob_add_slow(v3, &v33, v29);
      }

      else
      {
        memcpy((*v3 + v30), &v33, v29);
        v31 = *(v3 + 8) + v29;
        *(v3 + 8) = v31;
        if ((*(v3 + 22) & 1) == 0)
        {
          *(*v3 + v31) = 0;
        }
      }
    }
  }
}

_WORD *os_trace_blob_pwrite(_WORD *result, unsigned int a2, __int16 a3)
{
  if (a2 <= 1)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *result = a3;
  }

  return result;
}

void _os_state_request_for_self(uint64_t a1, __int128 *a2, char a3, uint64_t a4)
{
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v8 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v9 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v9, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      _os_log_preferences_refresh_process();
    }
  }

  if ((qword_1ED3F74D0 & 0x500) == 0 && (MEMORY[0xFFFFFC104] & 0x500) == 0 && xmmword_1ED3F74C0 && dword_1ED3F74DC == -1 && dword_1ED3F74AC)
  {
    os_unfair_lock_lock_with_options();
    if (byte_1ED3F74A8 == 1)
    {

      os_unfair_lock_unlock(&unk_1ED3F7498);
    }

    else
    {
      byte_1ED3F74A8 = 1;
      os_unfair_lock_unlock(&unk_1ED3F7498);
      v11 = *a2;
      v12 = *(a2 + 2);
      v13 = a4;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = ___os_state_request_for_self_block_invoke;
      v10[3] = &__block_descriptor_tmp_475;
      v14 = a3;
      v10[4] = a1;
      dispatch_async(qword_1ED3F74A0, v10);
    }
  }
}

uint64_t ___os_state_request_for_self_impl_block_invoke(uint64_t a1)
{
  result = (*(*(*(a1 + 40) + 24) + 16))();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

unint64_t _os_log_impl_compose(char *__s, uint64_t a2)
{
  *(a2 + 48) = a2 + 76;
  *(a2 + 56) = 0x100000000;
  *(a2 + 68) = 0;
  *(a2 + 70) = 0;
  *(a2 + 64) = 0x10000;
  *(a2 + 24) = a2 + 48;
  return os_log_fmt_compose(a2 + 48, __s, 2, 3u, 8, **a2, **(a2 + 8), *(*(a2 + 8) + 8), **(a2 + 16), *(*(a2 + 16) + 8));
}

unint64_t os_log_fmt_compose(unint64_t a1, char *__s, uint64_t a3, unsigned int a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, unsigned int a8, uint64_t a9, __int16 a10)
{
  v13 = a6 + 2;
  v14 = a6[1];
  v64 = a5;
  v65 = (*a6 >> 5) & 3;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  while (1)
  {
    result = strcspn(__s, "%");
    v16 = result;
    if ((*(a1 + 20) & 2) == 0)
    {
      v17 = *(a1 + 8);
      if (result > *(a1 + 12) - v17 - (*(a1 + 22) ^ 1u))
      {
        result = os_trace_blob_add_slow(a1, __s, result);
      }

      else
      {
        result = memcpy((*a1 + v17), __s, result);
        v18 = *(a1 + 8) + v16;
        *(a1 + 8) = v18;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v18) = 0;
        }
      }
    }

    v19 = &__s[v16];
    if (!*v19)
    {
      break;
    }

    result = os_log_fmt_delimit(v19, a3, &v70);
    if (result)
    {
      v21 = BYTE8(v70);
      if (BYTE8(v70))
      {
        return _os_log_fmt_decode_give_up(a1, v70, WORD6(v70));
      }

      if ((BYTE8(v70) & 2) != 0)
      {
        if (v14)
        {
          --v14;
          v22 = v13[1];
          v23 = &v13[v22 + 2];
          if (v22 == 4 && ((v24 = *v13, v24 < 0x10) || (v24 & 0xF0) == 0x10))
          {
            v25 = *(v13 + 2);
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
          v14 = 0;
          v23 = v13;
        }

        DWORD1(v71) = v25;
        v13 = v23;
      }

      if ((BYTE8(v70) & 8) == 0)
      {
        goto LABEL_41;
      }

      if ((BYTE8(v70) & 4) == 0 && ((BYTE8(v70) & 0x10) != 0 || BYTE10(v70) == 18))
      {
        if (v14)
        {
          if ((*v13 & 0xF0) == 0x10)
          {
            --v14;
            v13 += v13[1] + 2;
          }
        }

        else
        {
          v14 = 0;
        }

        v21 = BYTE8(v70) & 0xF6;
        WORD4(v70) &= 0xFFF6u;
        goto LABEL_41;
      }

      if (!v14)
      {
        v14 = 0;
        goto LABEL_34;
      }

      --v14;
      v29 = v13[1];
      v30 = &v13[v29 + 2];
      if (v29 != 4 || (v31 = *v13, v31 >= 0x10) && (v31 & 0xF0) != 0x10)
      {
        v13 = v30;
LABEL_34:
        DWORD2(v71) = -1;
LABEL_41:
        v30 = v13;
        goto LABEL_42;
      }

      DWORD2(v71) = *(v13 + 2);
LABEL_42:
      __s = &v19[result];
      if (v14)
      {
        --v14;
        v32 = v30 + 2;
        v13 = &v30[v30[1] + 2];
        v33 = *v30;
        if ((*v30 & 0xF0) == 0xE0)
        {
          v47 = 10;
          if (*(&v73 + 1) > 0x656D616E6C69616CLL)
          {
            if (*(&v73 + 1) > 0x6F6363616C69616CLL)
            {
              if (*(&v73 + 1) != 0x6F6363616C69616DLL && *(&v73 + 1) != 0x7075626D6C69616DLL)
              {
                v50 = 0x726464616C69616DLL;
                goto LABEL_171;
              }
            }

            else if (*(&v73 + 1) != 0x656D616E6C69616DLL && *(&v73 + 1) != 0x6A6275736C69616DLL)
            {
              v50 = 0x6D6D75736C69616DLL;
              goto LABEL_171;
            }
          }

          else if (*(&v73 + 1) > 0x786F626C69616CLL)
          {
            if (*(&v73 + 1) != 0x786F626C69616DLL && *(&v73 + 1) != 0x35646D6E69616C70)
            {
              v50 = 0x617474616C69616DLL;
              goto LABEL_171;
            }
          }

          else
          {
            if (!*(&v73 + 1))
            {
              goto LABEL_181;
            }

            if (*(&v73 + 1) != 1752392040)
            {
              v50 = 0x68736168766564;
LABEL_171:
              if (*(&v73 + 1) != v50)
              {
                goto LABEL_173;
              }
            }
          }

          v47 = 8;
          goto LABEL_173;
        }

        v34 = a8;
        v35 = a7;
        if ((*v30 & 1) == 0)
        {
          goto LABEL_45;
        }

        if ((0xD8uLL >> (v33 & 7)))
        {
          goto LABEL_181;
        }

        v37 = privacy_flags2opt[v33 & 7];
        if (v37 <= a4)
        {
          if (v65 - 1 > 2)
          {
            if (a9)
            {
              v36 = 0;
              v35 = a9;
              v34 = a10;
              goto LABEL_61;
            }

            goto LABEL_50;
          }

          v34 = a10;
          v35 = a9;
          if ((v33 & 0xF0) != 0x80)
          {
            v34 = a10;
            v35 = a9;
            if (v37 > v65)
            {
              goto LABEL_50;
            }
          }

LABEL_45:
          v36 = v35 == 0;
          if (!v34 || v35)
          {
LABEL_61:
            if ((*v30 & 0xF1) == 0)
            {
              LOWORD(v41) = v30[1];
              v46 = v30[1] == 0;
              if (!v30[1])
              {
                goto LABEL_77;
              }

              goto LABEL_87;
            }

            LOWORD(v41) = 0;
            if ((*v30 & 0xE1) == 0 || v30[1] != 4)
            {
              goto LABEL_182;
            }

            v42 = *v32;
            if (v42 > v34)
            {
              goto LABEL_102;
            }

            v43 = v34 - v42;
            v44 = *(v30 + 2);
            v41 = v44 & 0x7FFF;
            if (v43 < v41)
            {
              goto LABEL_102;
            }

            if (*v30 <= 0xFu && v44 < 0)
            {
              goto LABEL_77;
            }

            v45 = (v35 + v42);
            if (v36)
            {
              v32 = 0;
            }

            else
            {
              v32 = v45;
            }

            if (v14 | v41 || (v44 & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

            if (!(v43 >> 15))
            {
              LOWORD(v41) = 0;
LABEL_79:
              v46 = v44 < 0;
              if (*v30 <= 0xEFu)
              {
                if (v44 < 0 && *v30 < 0x10u)
                {
                  goto LABEL_77;
                }

                goto LABEL_87;
              }

              goto LABEL_80;
            }

            v46 = 0;
            LOWORD(v41) = 0x8000;
            if (*v30 >= 0xF0u)
            {
LABEL_80:
              v47 = 9;
              if (*(&v73 + 1) <= 0x656D616E6C69616CLL)
              {
                if (*(&v73 + 1) <= 0x786F626C69616CLL)
                {
                  if (*(&v73 + 1) != 1752392040 && *(&v73 + 1) != 0x68736168766564)
                  {
                    if (!*(&v73 + 1))
                    {
LABEL_181:
                      LOWORD(v41) = 0;
                      goto LABEL_182;
                    }

                    goto LABEL_173;
                  }
                }

                else
                {
                  if (*(&v73 + 1) == 0x786F626C69616DLL)
                  {
                    goto LABEL_126;
                  }

                  if (*(&v73 + 1) != 0x35646D6E69616C70)
                  {
                    v48 = 0x617474616C69616DLL;
                    goto LABEL_125;
                  }
                }

LABEL_140:
                os_trace_blob_addf(a1, "<mask.%.*s: ", WORD1(v71), v73);
                if (v41)
                {
                  v51 = 1;
                }

                else
                {
                  v51 = v46;
                }

                if (v51)
                {
                  os_trace_blob_add_hexdump(a1, v32, v41, v46);
                }

                else if ((*(a1 + 20) & 2) == 0)
                {
                  v52 = *(a1 + 8);
                  if (*(a1 + 12) - v52 - (*(a1 + 22) ^ 1u) <= 5)
                  {
                    os_trace_blob_add_slow(a1, "(null)", 6uLL);
                  }

                  else
                  {
                    v53 = *a1 + v52;
                    *(v53 + 4) = 10604;
                    *v53 = 1819635240;
                    v54 = *(a1 + 8) + 6;
                    *(a1 + 8) = v54;
                    if ((*(a1 + 22) & 1) == 0)
                    {
                      *(*a1 + v54) = 0;
                    }
                  }
                }

                if ((*(a1 + 20) & 2) == 0)
                {
                  v55 = *(a1 + 8);
                  if (*(a1 + 12) != v55 + (*(a1 + 22) ^ 1))
                  {
                    *(*a1 + v55) = 62;
                    v40 = *(a1 + 8) + 1;
                    goto LABEL_53;
                  }

                  os_trace_blob_add_slow(a1, ">", 1uLL);
                }
              }

              else if (*(&v73 + 1) > 0x6F6363616C69616CLL)
              {
                if (*(&v73 + 1) == 0x6F6363616C69616DLL)
                {
                  goto LABEL_126;
                }

                if (*(&v73 + 1) == 0x7075626D6C69616DLL)
                {
                  goto LABEL_140;
                }

                v48 = 0x726464616C69616DLL;
LABEL_125:
                if (*(&v73 + 1) == v48)
                {
                  goto LABEL_126;
                }

LABEL_173:
                _os_log_fmt_decode_masked_unknown(a1, WORD1(v71), v73, v47);
              }

              else
              {
                if (*(&v73 + 1) != 0x656D616E6C69616DLL && *(&v73 + 1) != 0x6A6275736C69616DLL)
                {
                  v48 = 0x6D6D75736C69616DLL;
                  goto LABEL_125;
                }

LABEL_126:
                _os_log_fmt_compose_masked_partial_redacted(a1, v32, v41, v46);
              }
            }

            else
            {
LABEL_87:
              if ((v33 & 0xF0) == 0x10)
              {
                goto LABEL_182;
              }

              if (*v30 < 0x10u != (v21 & 0x10) >> 4)
              {
                goto LABEL_182;
              }

              if ((v21 & 0x10) != 0)
              {
                v20.i32[0] = v41;
                if (vaddlv_u8(vcnt_s8(v20)) != 1)
                {
                  goto LABEL_182;
                }
              }

              if (BYTE10(v70) > 0xAu)
              {
                if (BYTE10(v70) > 0xFu)
                {
                  if (BYTE10(v70) <= 0x11u)
                  {
                    if (BYTE10(v70) == 16)
                    {
                      v49 = v41;
                      if ((v33 & 0xF0) != 0x20)
                      {
                        goto LABEL_182;
                      }
                    }

                    else
                    {
                      v49 = v41;
                      if ((v33 & 0xF0) != 0x50)
                      {
                        goto LABEL_182;
                      }
                    }

                    goto LABEL_154;
                  }

                  if (BYTE10(v70) != 18)
                  {
                    if (BYTE10(v70) != 19)
                    {
                      goto LABEL_200;
                    }

                    v49 = v41;
                    if ((v33 & 0xF0) == 0x30)
                    {
                      goto LABEL_154;
                    }

                    goto LABEL_182;
                  }

                  v56 = (v33 >> 4) - 2;
                  v57 = __OFSUB__(v56, 7);
                  if (v56 >= 7)
                  {
                    goto LABEL_182;
                  }

                  v58 = (0x30303000000uLL >> (8 * (v56 & 0x1F))) & 3;
                  if (((v58 & 0x80000000) != 0) ^ v57 | (v58 == 0))
                  {
                    v49 = v41;
                    if ((v21 & 0x40) == 0)
                    {
                      goto LABEL_155;
                    }

                    goto LABEL_175;
                  }

                  if (v58 != 1)
                  {
                    if (v58 != 2)
                    {
                      goto LABEL_182;
                    }

LABEL_77:
                    v30 += v30[1] + 2;
                    goto LABEL_108;
                  }

                  goto LABEL_50;
                }

                if (BYTE10(v70) > 0xDu)
                {
                  if (v41 != 8)
                  {
                    goto LABEL_182;
                  }

                  v49 = 8;
                  if ((v21 & 0x40) != 0)
                  {
                    goto LABEL_175;
                  }

LABEL_155:
                  if ((BYTE8(v70) & 0x10) != 0)
                  {
                    _os_log_fmt_compose_scalar(a1, &v70, a5, v32, v49);
                  }

                  else
                  {
                    _os_log_fmt_compose_data(a1, &v70, v30, v32, v49, v46);
                  }
                }

                else
                {
                  if (BYTE10(v70) - 11 < 2)
                  {
                    v49 = v41;
                    if (v41 >= 9u)
                    {
                      goto LABEL_182;
                    }

                    goto LABEL_154;
                  }

                  if (BYTE10(v70) != 13)
                  {
                    goto LABEL_200;
                  }

                  v49 = a5;
                  if (v41 == a5)
                  {
                    goto LABEL_154;
                  }

LABEL_182:
                  _os_log_fmt_decode_cmd_mismatch(a1, v70, WORD6(v70), v30, v41);
                }
              }

              else
              {
                if (BYTE10(v70) <= 4u)
                {
                  if (BYTE10(v70) - 1 >= 2 && BYTE10(v70) - 3 >= 2)
                  {
LABEL_200:
                    qword_1EB2AFE80 = "BUG IN LIBTRACE: Unexpected type";
                    qword_1EB2AFEB0 = BYTE10(v70);
                    __break(1u);
                    return result;
                  }

LABEL_111:
                  v49 = v41;
                  if (v41 >= 5u)
                  {
                    goto LABEL_182;
                  }

                  goto LABEL_154;
                }

                if (BYTE10(v70) - 5 < 4)
                {
                  goto LABEL_111;
                }

                if (BYTE10(v70) - 9 >= 2)
                {
                  goto LABEL_200;
                }

                v49 = v41;
                if (v64 < v41)
                {
                  goto LABEL_182;
                }

LABEL_154:
                if ((v21 & 0x40) == 0)
                {
                  goto LABEL_155;
                }

LABEL_175:
                if (v21 < 0)
                {
                  if ((_os_log_fmt_builtin_annotated(a1, a5, &v70, v30, v32, v49, v46) & 1) == 0)
                  {
                    goto LABEL_155;
                  }
                }

                else if ((_os_log_fmt_plugin_annotated(a1, a5, &v70, v30, v32, v49, v46) & 1) == 0)
                {
                  goto LABEL_155;
                }
              }
            }
          }

          else
          {
LABEL_102:
            _os_log_fmt_decode_bad_range(a1, v70, WORD6(v70), *(v30 + 1), *(v30 + 2), 0);
          }
        }

        else
        {
LABEL_50:
          if ((*(a1 + 20) & 2) == 0)
          {
            v38 = *(a1 + 8);
            if (*(a1 + 12) - v38 - (*(a1 + 22) ^ 1u) <= 8)
            {
              os_trace_blob_add_slow(a1, "<private>", 9uLL);
            }

            else
            {
              v39 = *a1 + v38;
              *v39 = *"<private>";
              *(v39 + 8) = 62;
              v40 = *(a1 + 8) + 9;
LABEL_53:
              *(a1 + 8) = v40;
              if ((*(a1 + 22) & 1) == 0)
              {
                *(*a1 + v40) = 0;
              }
            }
          }
        }
      }

      else
      {
        v14 = 0;
LABEL_108:
        _os_log_fmt_decode_error(a1);
        v13 = v30;
      }
    }

    else
    {
      v26 = v19[1];
      if (!v26)
      {
        break;
      }

      __src[0] = v19[1];
      if ((*(a1 + 20) & 2) == 0)
      {
        v27 = *(a1 + 8);
        if (*(a1 + 12) == v27 + (*(a1 + 22) ^ 1))
        {
          os_trace_blob_add_slow(a1, __src, 1uLL);
        }

        else
        {
          *(*a1 + v27) = v26;
          v28 = *(a1 + 8) + 1;
          *(a1 + 8) = v28;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v28) = 0;
          }
        }
      }

      __s = v19 + 2;
    }
  }

  v59 = *(a1 + 8) - 1;
  v60 = MEMORY[0x1E69E9830];
  while (v59 != -1)
  {
    v61 = v59;
    v62 = *(*a1 + v59);
    if ((v62 & 0x80000000) != 0)
    {
      result = __maskrune(v62, 0x4000uLL);
    }

    else
    {
      result = *(v60 + 4 * v62 + 60) & 0x4000;
    }

    v59 = v61 - 1;
    if (!result)
    {
      v63 = v61 + 1;
      goto LABEL_196;
    }
  }

  v63 = 0;
LABEL_196:
  *(a1 + 8) = v63;
  if ((*(a1 + 22) & 1) == 0)
  {
    *(*a1 + v63) = 0;
  }

  return result;
}

uint64_t os_trace_blob_grow(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) + (*(a1 + 22) ^ 1u);
  v4 = v3 + a2;
  if (__CFADD__(v3, a2) || HIDWORD(v4))
  {
    v5 = *(a1 + 12);
    v6 = *(a1 + 16);
  }

  else
  {
    v5 = *(a1 + 12);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = *(a1 + 16);
    }

    else
    {
      if (2 * v5 > v4)
      {
        LODWORD(v4) = 2 * v5;
      }

      if (*(a1 + 16) >= v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = *(a1 + 16);
      }
    }
  }

  if (v6 > v5)
  {
    v7 = *a1;
    if (*(a1 + 20))
    {
      while (1)
      {
        v9 = malloc_type_realloc(v7, v6, 0xB235BDA2uLL);
        if (v9)
        {
          break;
        }

        _os_trace_temporary_resource_shortage();
      }

      *a1 = v9;
    }

    else
    {
      while (1)
      {
        v8 = malloc_type_malloc(v6, 0x477D86ADuLL);
        if (v8)
        {
          break;
        }

        _os_trace_temporary_resource_shortage();
      }

      *a1 = v8;
      memcpy(v8, v7, v3);
      *(a1 + 20) |= 1u;
    }

    *(a1 + 12) = v6;
  }

  return v6 - v3;
}

unint64_t _os_log_fmt_compose_scalar(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v7 = a2;
  v26 = *MEMORY[0x1E69E9840];
  scalar = os_log_fmt_read_scalar(a2, a4, a5);
  v10 = scalar;
  v11 = *(v7 + 8);
  if ((v11 & 2) != 0)
  {
    v25[0] = *(v7 + 20);
    v12 = 1;
    if ((v11 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = 0;
  if ((v11 & 4) != 0)
  {
LABEL_5:
    v25[v12++] = *(v7 + 24);
  }

LABEL_6:
  MEMORY[0x1EEE9AC00](scalar);
  v14 = v25 - v13;
  result = _os_log_fmt_compose_format_copy(v25 - v13, *v7, *(v7 + 12));
  v16 = *(v7 + 10);
  if (*(v7 + 10) > 8u)
  {
    if (*(v7 + 10) > 0xCu)
    {
      if (*(v7 + 10) > 0xEu)
      {
        if (v16 == 15)
        {
          goto LABEL_42;
        }

        if ((v16 - 16) >= 4)
        {
          return result;
        }

        goto LABEL_29;
      }

      if (v16 != 13)
      {
        goto LABEL_42;
      }
    }

    else if ((v16 - 9) >= 2)
    {
      if ((v16 - 11) >= 2)
      {
        return result;
      }

      goto LABEL_42;
    }

    if (a3 == 8 || v16 == 13)
    {
      goto LABEL_42;
    }

    v5 = &v14[result];
    LODWORD(v7) = *(v5 - 1);
    if (a3 == 4)
    {
      if ((v7 & 0x80000000) != 0)
      {
        v17 = __maskrune(*(v5 - 1), 0x8000uLL);
      }

      else
      {
        v17 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x8000;
      }

      if (v17)
      {
        LOBYTE(v17) = __tolower(v7);
      }

      else
      {
        *(v5 - 2) = v7;
      }

      *(v5 - 1) = v17;
      goto LABEL_42;
    }

LABEL_30:
    if ((v7 & 0x80000000) != 0)
    {
      v22 = __maskrune(v7, 0x8000uLL);
    }

    else
    {
      v22 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x8000;
    }

    if (v22)
    {
      v5[1] = __tolower(v7);
      v23 = v5 + 2;
      LOBYTE(v7) = 108;
    }

    else
    {
      v23 = v5 + 1;
      *(v5 - 2) = 108;
    }

    *(v5 - 1) = 108;
    *v5 = v7;
    *v23 = 0;
    goto LABEL_42;
  }

  if ((v16 - 1) < 7)
  {
LABEL_42:
    if (v12 == 2)
    {
      return os_trace_blob_addf(a1, v14, v25[0], v25[1], v10);
    }

    if (v12 == 1)
    {
      return os_trace_blob_addf(a1, v14, v25[0], v10);
    }

    return os_trace_blob_addf(a1, v14, v10, v24);
  }

  if (v16 != 8)
  {
    if (*(v7 + 10))
    {
      return result;
    }

LABEL_29:
    v24 = v10;
    qword_1EB2AFE80 = "BUG IN LIBTRACE: Unexpected type";
    qword_1EB2AFEB0 = v16;
    __break(1u);
    goto LABEL_30;
  }

  v18 = strerror(v10);
  result = strlen(v18);
  if ((*(a1 + 20) & 2) == 0)
  {
    v19 = result;
    v20 = *(a1 + 8);
    if (result > *(a1 + 12) - v20 - (*(a1 + 22) ^ 1u))
    {
      return os_trace_blob_add_slow(a1, v18, result);
    }

    else
    {
      result = memcpy((*a1 + v20), v18, result);
      v21 = *(a1 + 8) + v19;
      *(a1 + 8) = v21;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v21) = 0;
      }
    }
  }

  return result;
}

uint64_t os_log_fmt_read_scalar(uint64_t a1, char *a2, int a3)
{
  v3 = *(a1 + 10);
  if (v3 == 15 || v3 == 14)
  {
    return *a2;
  }

  if ((*(a1 + 8) & 0x20) == 0)
  {
    if (a3 <= 3)
    {
      if (a3 == 1)
      {
        return *a2;
      }

      if (a3 == 2)
      {
        return *a2;
      }

LABEL_17:
      _os_crash();
      __break(1u);
      return *a2;
    }

    if (a3 == 4)
    {
      return *a2;
    }

LABEL_16:
    if (a3 == 8)
    {
      return *a2;
    }

    goto LABEL_17;
  }

  if (a3 > 3)
  {
    if (a3 != 4)
    {
      goto LABEL_16;
    }

    return *a2;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return *a2;
      }

      goto LABEL_17;
    }

    return *a2;
  }
}

uint64_t _os_log_fmt_compose_format_copy(_BYTE *a1, void *__s, unsigned __int16 a3)
{
  v3 = a3;
  v6 = a3;
  v7 = memchr(__s, 125, a3);
  if (v7)
  {
    v3 += __s - v7;
    v6 = v3;
    memcpy(a1, v7, v3);
    *a1 = 37;
  }

  else
  {
    memcpy(a1, __s, v6);
  }

  a1[v6] = 0;
  return v3;
}

uint64_t ___os_trace_get_image_info_block_invoke_2(void *a1, uint64_t a2)
{
  result = 0;
  v5 = *a2;
  if (*a2 > 26)
  {
    if (v5 == 44 || v5 == 33)
    {
      v15 = a1[9];
      if (!v15 || !*(a2 + 16))
      {
        goto LABEL_58;
      }

      goto LABEL_29;
    }

    if (v5 != 27)
    {
      goto LABEL_59;
    }

    v12 = a1[8];
    if (v12)
    {
      *v12 = *(a2 + 8);
    }

    v13 = a1[9];
    if (v13)
    {
      *(v13 + 8) = a2 + 8;
    }

    v14 = 5;
LABEL_26:
    v15 = (*(a1[v14] + 8) + 24);
LABEL_29:
    result = 0;
    *v15 = 1;
    goto LABEL_59;
  }

  switch(v5)
  {
    case 1:
      *(*(a1[6] + 8) + 24) = *(a2 + 36);
      v16 = a1[9];
      if (v16)
      {
        if ((*(a2 + 52) & 8) != 0)
        {
          *v16 = 1;
        }

        v17 = *(a2 + 48);
        if (68 * v17 + 56 <= *(a2 + 4))
        {
          if (v17)
          {
            v27 = a1[4];
            v28 = (a2 + 56);
            v29 = 1;
            do
            {
              result = (*(v27 + 16))(v27, v28, v28[10], (v28[8] - *(a2 + 24)), v28[9]);
              if (result)
              {
                v30 = 1;
              }

              else
              {
                v30 = v29 >= v17;
              }

              ++v29;
              v28 += 17;
            }

            while (!v30);
            break;
          }

          goto LABEL_58;
        }

LABEL_34:
        result = 88;
        break;
      }

LABEL_58:
      result = 0;
      break;
    case 12:
      v19 = *(a2 + 4);
      v18 = *(a2 + 8);
      if (v19 <= v18)
      {
        return 88;
      }

      if (v19 - v18 < 0x18 || a1[9] == 0)
      {
        goto LABEL_58;
      }

      v21 = (a2 + v18);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v21 + 15);
      v25 = v22 == 0x6C2F687461707240 && v23 == 0x5F676E616C636269;
      if (!v25 || v24 != 0x6E6173612E74725FLL)
      {
        goto LABEL_58;
      }

      v14 = 7;
      goto LABEL_26;
    case 25:
      *(*(a1[6] + 8) + 24) = *(a2 + 48);
      v6 = a1[9];
      if (v6)
      {
        if ((*(a2 + 68) & 8) != 0)
        {
          *v6 = 1;
        }

        v7 = *(a2 + 64);
        if (80 * v7 + 72 <= *(a2 + 4))
        {
          if (v7)
          {
            v8 = a1[4];
            v9 = a2 + 72;
            v10 = 1;
            while (!HIDWORD(*(v9 + 40)))
            {
              result = (*(v8 + 16))(v8, v9, *(v9 + 48), (*(v9 + 32) - *(a2 + 24)));
              if (result)
              {
                v11 = 1;
              }

              else
              {
                v11 = v10 >= v7;
              }

              ++v10;
              v9 += 80;
              if (v11)
              {
                goto LABEL_59;
              }
            }

            result = 34;
            break;
          }

          goto LABEL_58;
        }

        goto LABEL_34;
      }

      goto LABEL_58;
  }

LABEL_59:
  if (!a1[9] && *(*(a1[5] + 8) + 24) == 1)
  {
    if (*(*(a1[6] + 8) + 24))
    {
      return 89;
    }
  }

  return result;
}

uint64_t ___os_trace_get_image_info_block_invoke(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v5 = 0;
  v6 = "__cstring";
  do
  {
    if (*a2 == *v6 && a2[1] == *(v6 + 1))
    {
      v9 = *(a1 + 40) + 12 * v5;
      *(v9 + 16) = a3;
      *(v9 + 24) = a4;
      v8 = (v9 + 20);
      goto LABEL_10;
    }

    ++v5;
    v6 += 16;
  }

  while (v5 != 5);
  if (*a2 ^ 0x74736E6F635F5FLL | a2[1])
  {
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 32) + 8) + 32) = a4;
  v8 = (*(*(a1 + 32) + 8) + 28);
LABEL_10:
  *v8 = a5;
  return 0;
}

int *_os_trace_prefs_and_mode_refresh_slow(int a1)
{
  v1 = a1;
  v13 = *MEMORY[0x1E69E9840];
  check = 0;
  out_token = a1;
  v2 = *__error();
  v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX);
  v4 = *(&xmmword_1ED3F74C0 + 1);
  while (v3 >= v4)
  {
    v5 = v4;
    atomic_compare_exchange_strong_explicit(&xmmword_1ED3F74C0 + 1, &v5, v3 + 1000000000, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
    if (v6)
    {
      v7 = dword_1ED3F74D8;
      memset(msg, 0, 108);
      while (!mach_msg(msg, 67109122, 0, 0x6Cu, v7, 0, 0))
      {
        _os_trace_mig_server(108, msg);
      }

      if (v1 != -2)
      {
        goto LABEL_14;
      }

      if (!notify_register_check("com.apple.system.logging.prefschanged", &out_token))
      {
        v1 = out_token;
        v8 = -2;
        atomic_compare_exchange_strong_explicit(&dword_1ED3F74DC, &v8, out_token, memory_order_relaxed, memory_order_relaxed);
        if (v8 != -2)
        {
          notify_cancel(v1);
          out_token = v8;
          v1 = v8;
        }

        if ((v1 & 0x80000000) == 0)
        {
LABEL_14:
          if (!notify_check(v1, &check) && check)
          {
            atomic_fetch_add_explicit(&dword_1ED3F74E0, 1u, memory_order_relaxed);
          }
        }
      }

      break;
    }
  }

  if ((byte_1ED3F7544 & 1) == 0)
  {
    if (_dispatch_is_multithreaded())
    {
      __swp(&byte_1ED3F7544, &byte_1ED3F7544);
      if ((&byte_1ED3F7544 & 1) == 0)
      {
        _os_log_watch_for_prefchanges();
      }
    }
  }

  result = __error();
  *result = v2;
  return result;
}