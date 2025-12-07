void tcp_tfo_rcv_probe(uint64_t a1, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *(a1 + 1001) = 1;
    v3 = *(a1 + 236) <= (*(a1 + 212) + (*(a1 + 204) >> 3)) >> 2 ? (*(a1 + 212) + (*(a1 + 204) >> 3)) >> 2 : *(a1 + 236);
    *(a1 + 40) = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308) + v3 - *(a1 + 64);
    v4 = *(*(a1 + 80) + 224);
    if (!v4 || (*(v4 + 776) & 2) == 0)
    {
      v5 = __nwlog_tcp_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = &unk_188A285CF;
        if (v4)
        {
          v6 = (v4 + 556);
        }

        v7 = *(a1 + 40);
        v8 = *(a1 + 1880) - 1;
        if (v8 > 2)
        {
          v9 = "invalid";
        }

        else
        {
          v9 = off_1E70E90C0[v8];
        }

        v10 = *(a1 + 248);
        v11 = *(a1 + 204);
        v12 = *(a1 + 208);
        v14 = *(a1 + 212);
        v13 = *(a1 + 216);
        v15 = 136449282;
        v16 = "tcp_tfo_rcv_probe";
        v17 = 2082;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v21 = 2082;
        v22 = v9;
        v23 = 1024;
        v24 = v10;
        v25 = 1024;
        v26 = v11 >> 5;
        v27 = 1024;
        v28 = ((1000 * v11) >> 5) % 1000;
        v29 = 1024;
        v30 = v14 >> 4;
        v31 = 1024;
        v32 = ((1000 * v14) >> 4) % 1000;
        v33 = 1024;
        v34 = v12 >> 5;
        v35 = 1024;
        v36 = ((1000 * v12) >> 5) % 1000;
        v37 = 1024;
        v38 = v13 >> 4;
        v39 = 1024;
        v40 = ((1000 * v13) >> 4) % 1000;
        _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s UTCPT_KEEP: %u RTT_Cache: %{public}s, rtt_upd: %d, rtt: %u.%03ums, rtt_var: %u.%03ums rtt_nc: %u.%03ums, rtt_var_nc: %u.%03ums", &v15, 0x5Cu);
      }
    }
  }
}

uint64_t tcp_is_ack_ratelimited(uint64_t a1)
{
  v2 = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308);
  v3 = *(a1 + 1052);
  if (!v3 || v2 - v3 >= 1000)
  {
    *(a1 + 1052) = v2;
    v5 = 1;
    goto LABEL_6;
  }

  v4 = *(a1 + 1056);
  if (v4 < *(sysctls + 244))
  {
    v5 = v4 + 1;
LABEL_6:
    result = 0;
    *(a1 + 1056) = v5;
    return result;
  }

  return 1;
}

uint64_t tcp_newreno_partial_ack(_DWORD *a1, uint64_t a2)
{
  v4 = a1[25];
  v5 = a1[37];
  a1[7] = 0;
  a1[4] = 0;
  a1[44] = 0;
  v6 = *(a2 + 8);
  a1[25] = v6;
  a1[37] = a1[50] + v6 - a1[23];
  result = tcp_output(a1);
  if (v4 - a1[25] >= 1)
  {
    a1[25] = v4;
  }

  v8 = *(a2 + 8) - a1[23];
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9)
  {
    v10 = 0;
  }

  a1[37] = v10 + a1[50];
  return result;
}

uint64_t tcp_ece_aggressive_heur(uint64_t result, uint64_t a2)
{
  v2 = *(result + 336);
  if ((v2 & 0x2000) == 0)
  {
    v3 = *(result + 738) + a2;
    *(result + 738) = v3;
    if (*(result + 368) >= 0x14uLL)
    {
      if (v3 >= 0x13u)
      {
        v4 = result;
        tcp_heuristic_ecn_aggressive(result);
        result = v4;
        v2 = *(v4 + 336) & 0xFFFFDFFB;
      }

      *(result + 336) = v2 | 0x2000;
    }
  }

  return result;
}

uint64_t tcp_reass(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, unsigned int a5, _BYTE *a6, _DWORD *a7)
{
  v219 = *MEMORY[0x1E69E9840];
  v10 = *(*(a1 + 80) + 224);
  v201 = *(a1 + 80);
  if (!a4)
  {
    v199 = 0;
    v200 = 0;
    goto LABEL_10;
  }

  if (*(a4 + 1224) == 255 || *(a4 + 1168) == 255)
  {
    v11 = 1;
  }

  else
  {
    if (*(a4 + 1216) == 3)
    {
      v200 = 0;
      v199 = 1;
      goto LABEL_10;
    }

    v11 = 0;
    if (*(a4 + 1176) == 3)
    {
      v199 = 1;
      v200 = 0;
      goto LABEL_10;
    }
  }

  HIDWORD(v200) = v11;
  v199 = 0;
  v12 = *(a4 + 1212) == 2 || *(a4 + 1172) == 2;
  LODWORD(v200) = v12;
LABEL_10:
  v13 = nw_tcp_access_globals(v10);
  if (a7)
  {
    *a7 = 0;
  }

  v202 = *a3;
  v208 = nw_protocol_tcp_copy_frame(v10, *a3, *a2 + a5);
  v14 = *a3;
  v210 = v10;
  v204 = a7;
  v205 = v13;
  if (!*a3)
  {
    v156 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_is_single_ip_aggregate";
    v157 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v156, 16, "%{public}s called with null frame", buf, 12);
    LOBYTE(v212) = 16;
    if (!__nwlog_fault())
    {
      goto LABEL_302;
    }

    if (v212 == 17)
    {
      v158 = __nwlog_obj();
      v159 = v212;
      if (!os_log_type_enabled(v158, v212))
      {
        goto LABEL_302;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v160 = "%{public}s called with null frame";
    }

    else
    {
      v158 = __nwlog_obj();
      v159 = v212;
      if (!os_log_type_enabled(v158, v212))
      {
        goto LABEL_302;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v160 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_1889BA000, v158, v159, v160, buf, 0xCu);
LABEL_302:
    if (v157)
    {
      free(v157);
      if (!a5)
      {
        goto LABEL_51;
      }

LABEL_21:
      v26 = *a3;
      if (!*a3)
      {
        goto LABEL_47;
      }

      goto LABEL_22;
    }

LABEL_20:
    if (!a5)
    {
      goto LABEL_51;
    }

    goto LABEL_21;
  }

  if ((*(v14 + 204) & 0x80) == 0)
  {
    goto LABEL_20;
  }

  v15 = *(v14 + 196);
  v16 = v15 >= a5;
  v17 = v15 - a5;
  if (v16)
  {
    *(v14 + 196) = v17;
    goto LABEL_20;
  }

  v18 = __nwlog_obj();
  v19 = *(v14 + 196);
  *buf = 136446722;
  *&buf[4] = "__nw_frame_array_claim";
  *&buf[12] = 1024;
  *&buf[14] = v19;
  *&buf[18] = 1024;
  *&buf[20] = a5;
  v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v18, 16, "%{public}s Aggregate buffer length: %u sum: %u", buf, 24);
  LOBYTE(v212) = 16;
  if (!__nwlog_fault())
  {
    goto LABEL_44;
  }

  if (v212 == 17)
  {
    v21 = __nwlog_obj();
    if (!os_log_type_enabled(v21, v212))
    {
      goto LABEL_44;
    }

    v22 = *(v14 + 196);
    *buf = 136446722;
    *&buf[4] = "__nw_frame_array_claim";
    *&buf[12] = 1024;
    *&buf[14] = v22;
    *&buf[18] = 1024;
    *&buf[20] = a5;
    v23 = "%{public}s Aggregate buffer length: %u sum: %u";
    v24 = v21;
    v25 = v212;
  }

  else
  {
    v36 = __nwlog_obj();
    if (!os_log_type_enabled(v36, v212))
    {
      goto LABEL_44;
    }

    v37 = *(v14 + 196);
    *buf = 136446722;
    *&buf[4] = "__nw_frame_array_claim";
    *&buf[12] = 1024;
    *&buf[14] = v37;
    *&buf[18] = 1024;
    *&buf[20] = a5;
    v23 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
    v24 = v36;
    v25 = v212;
  }

  _os_log_impl(&dword_1889BA000, v24, v25, v23, buf, 0x18u);
LABEL_44:
  if (v20)
  {
    free(v20);
  }

  *(v14 + 196) = 0;
  v26 = *a3;
  if (!*a3)
  {
LABEL_47:
    v27 = 0;
LABEL_48:
    if (v27 != a5)
    {
      v38 = __nwlog_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "__nw_frame_array_claim";
        *&buf[12] = 1024;
        *&buf[14] = v27;
        *&buf[18] = 1024;
        *&buf[20] = a5;
        _os_log_impl(&dword_1889BA000, v38, OS_LOG_TYPE_ERROR, "%{public}s start_offset %u != start_bytes %u", buf, 0x18u);
      }
    }

    goto LABEL_51;
  }

LABEL_22:
  v27 = 0;
  while (1)
  {
    v28 = *(v26 + 52);
    v29 = *(v26 + 56);
    v30 = *(v26 + 60);
    v31 = v28 - (v29 + v30);
    if (v31 >= a5 - v27)
    {
      v31 = a5 - v27;
    }

    v32 = v28 ? v31 : 0;
    v33 = v29 + v32;
    if (v29 + v32 <= (v28 - v30))
    {
      *(v26 + 56) = v33;
    }

    else
    {
      v34 = __nwlog_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(v26 + 52);
        *buf = 136446978;
        *&buf[4] = "__nw_frame_claim_internal";
        *&buf[12] = 1024;
        *&buf[14] = v33;
        *&buf[18] = 1024;
        *&buf[20] = v35;
        *v215 = 1024;
        *&v215[2] = v30;
        _os_log_impl(&dword_1889BA000, v34, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
      }
    }

    v27 += v32;
    if (v27 == a5)
    {
      break;
    }

    if (v27 < a5)
    {
      v26 = *(v26 + 32);
      if (v26)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

LABEL_51:
  v39 = v208;
  if (v208)
  {
    v40 = a1;
    if (*(v208 + 102) < 0)
    {
      *(a1 + 748) |= 0x4000000u;
      *(v208 + 102) &= ~0x8000u;
    }

    if (!v208[4] || v210 && (*(v210 + 776) & 2) != 0)
    {
LABEL_84:
      v53 = v39[14];
      if (!v53)
      {
        goto LABEL_90;
      }

      if ((*(v39 + 102) & 0x100) != 0 && *MEMORY[0x1E6977EF8])
      {
        if (!(*MEMORY[0x1E6977EF8])(v39, v39[11]))
        {
          v53 = 0;
LABEL_90:
          v207 = v53;
          if ((*(v39 + 102) & 0x80) != 0)
          {
            *(v39 + 98) -= a5;
          }

          v54 = *(v39 + 14) + a5;
          v55 = *(v39 + 15);
          if (v54 <= *(v39 + 13) - v55)
          {
            *(v39 + 14) = v54;
            v58 = v53;
            if (!v210)
            {
LABEL_99:
              if (__nwlog_is_datapath_logging_enabled())
              {
                v161 = __nwlog_tcp_log();
                if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
                {
                  v162 = (v210 + 556);
                  if (!v210)
                  {
                    v162 = &unk_188A285CF;
                  }

                  v163 = *(v39 + 13);
                  if (v163)
                  {
                    v163 -= *(v39 + 14) + *(v39 + 15);
                  }

                  *buf = 136446978;
                  *&buf[4] = "tcp_reass";
                  *&buf[12] = 2082;
                  *&buf[14] = v162;
                  *&buf[22] = 2048;
                  *v215 = v39;
                  *&v215[8] = 1024;
                  *v216 = v163;
                  _os_log_impl(&dword_1889BA000, v161, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s queueing frame %p of length %u", buf, 0x26u);
                }
              }

LABEL_100:
              *(v40 + 320) = 16;
              if (*(v40 + 762))
              {
                *(v40 + 762) = 0;
                *(v40 + 752) = 0;
              }

              if (*(v58 + 4) == *(v40 + 120))
              {
                goto LABEL_108;
              }

              v59 = *(v210 + 468) >> 10;
              if (v59 <= 0x64)
              {
                v59 = 100;
              }

              if (v59 >= *(sysctls + 72) >> 10)
              {
                LOWORD(v59) = *(sysctls + 72) >> 10;
              }

              v60 = v59;
              if (*(v40 + 232) + 1 < v59)
              {
LABEL_108:
                v61 = malloc_type_malloc(*v205[6], 0x6223832DuLL);
                if (v61)
                {
                  ++*(v40 + 232);
                  v62 = *v40;
                  v63 = *(v58 + 4);
                  v206 = v61;
                  if (!*v40)
                  {
                    v69 = 0;
                    v70 = 0;
                    v203 = 1;
                    v64 = a2;
                    v65 = v201;
                    v67 = v200;
                    v66 = HIDWORD(v200);
                    v68 = v199;
                    goto LABEL_140;
                  }

                  v64 = a2;
                  v65 = v201;
                  v67 = v200;
                  v66 = HIDWORD(v200);
                  v68 = v199;
                  if (*(v62[3] + 4) - v63 > 0)
                  {
                    v69 = 0;
                    v70 = 0;
                    v203 = 1;
                    goto LABEL_140;
                  }

                  do
                  {
                    v69 = v62;
                    v62 = *v62;
                  }

                  while (v62 && *(v62[3] + 4) - v63 < 1);
                  v71 = *(v69 + 4) + *(v69[3] + 4) - v63;
                  if (v71 < 1)
                  {
                    v203 = 0;
                    v70 = 0;
                    goto LABEL_140;
                  }

                  v70 = v71 != 1;
                  if (v71 != 1)
                  {
                    *(v40 + 948) = v63;
                    v72 = *a2;
                    if (v71 < *a2)
                    {
                      v72 = v71;
                    }

                    *(v40 + 952) = v72 + v63;
                  }

                  v73 = *a2;
                  if (v71 < v73)
                  {
                    if ((*(v39 + 102) & 0x80) != 0)
                    {
                      *(v39 + 98) -= v71;
                    }

                    v74 = *(v39 + 14) + v71;
                    v75 = *(v39 + 15);
                    if (v74 <= *(v39 + 13) - v75)
                    {
                      *(v39 + 14) = v74;
                    }

                    else
                    {
                      v76 = __nwlog_obj();
                      v77 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
                      v68 = v199;
                      v67 = v200;
                      v66 = HIDWORD(v200);
                      v65 = v201;
                      if (v77)
                      {
                        v78 = *(v39 + 13);
                        *buf = 136446978;
                        *&buf[4] = "__nw_frame_claim_internal";
                        *&buf[12] = 1024;
                        *&buf[14] = v74;
                        *&buf[18] = 1024;
                        *&buf[20] = v78;
                        *v215 = 1024;
                        *&v215[2] = v75;
                        _os_log_impl(&dword_1889BA000, v76, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                        v68 = v199;
                        v67 = v200;
                        v66 = HIDWORD(v200);
                        v65 = v201;
                      }
                    }

                    v203 = 0;
                    v64 = a2;
                    *a2 -= v71;
                    v58 = v207;
                    v63 = *(v207 + 4) + v71;
                    *(v207 + 4) = v63;
LABEL_140:
                    if (v63 != *(v40 + 120))
                    {
                      ++*(v40 + 1004);
                      v86 = *(v40 + 1064);
                      v87 = *v64;
                      if (v86)
                      {
                        v88.i64[0] = vdupq_n_s64(1uLL).u64[0];
                        v88.i64[1] = *v64;
                        v86[16] = vaddq_s64(v86[16], v88);
                      }

                      *(v40 + 700) += v87;
                    }

                    v89 = *(v65 + 248);
                    ++*v89;
                    if (v66)
                    {
                      ++**(v65 + 256);
                      if (!v68)
                      {
                        goto LABEL_146;
                      }
                    }

                    else if (!v68)
                    {
LABEL_146:
                      if (!v67)
                      {
                        goto LABEL_148;
                      }

                      goto LABEL_147;
                    }

                    ++**(v65 + 264);
                    if (!v67)
                    {
LABEL_148:
                      v90 = *v64;
                      v89[1] += v90;
                      if (v66)
                      {
                        *(*(v65 + 256) + 8) += v90;
                        if (!v68)
                        {
                          goto LABEL_150;
                        }
                      }

                      else if (!v68)
                      {
LABEL_150:
                        if (v67)
                        {
                          goto LABEL_151;
                        }

                        goto LABEL_158;
                      }

                      *(*(v65 + 264) + 8) += v90;
                      if (v67)
                      {
LABEL_151:
                        *(*(v65 + 272) + 8) += v90;
                        if (!*(v210 + 24))
                        {
                          goto LABEL_161;
                        }

                        goto LABEL_159;
                      }

LABEL_158:
                      if (!*(v210 + 24))
                      {
                        goto LABEL_161;
                      }

LABEL_159:
                      all_stats = nw_protocol_tcp_get_all_stats();
                      if (all_stats)
                      {
                        *(all_stats + 52) += *v64;
                      }

LABEL_161:
                      if (!v62)
                      {
LABEL_245:
                        v208[4] = 0;
                        v206[4] = v208;
                        v208[5] = v206 + 4;
                        v206[5] = v208 + 4;
                        v206[3] = v58;
                        *(v206 + 4) = *v64;
                        if (v203)
                        {
                          v40 = a1;
                          v135 = *a1;
                          *v206 = *a1;
                          if (v135)
                          {
                            v135[1] = v206;
                          }

                          *a1 = v206;
                          v206[1] = a1;
                        }

                        else
                        {
                          v136 = *v69;
                          *v206 = *v69;
                          v40 = a1;
                          if (v136)
                          {
                            *(v136 + 8) = v206;
                          }

                          *v69 = v206;
                          v206[1] = v69;
                        }

LABEL_252:
                        if (*(v40 + 12) >= 4)
                        {
                          v137 = *v40;
                          if (*v40)
                          {
                            v138 = v137[3];
                            v139 = *(v138 + 4);
                            if (v139 == *(v40 + 120))
                            {
                              v140 = *(v40 + 748);
                              if ((v140 & 0x800000) == 0)
                              {
                                *(v40 + 748) = v140 | 0x800000;
                                v141 = *(v40 + 1064);
                                if (v141)
                                {
                                  ++*(v141 + 1616);
                                }

                                v142 = 0;
                                v143 = a1;
                                do
                                {
                                  *(v143 + 120) = v139 + *(v137 + 4);
                                  v144 = *(v138 + 13);
                                  v145 = *v137;
                                  v146 = v137[1];
                                  if (*v137)
                                  {
                                    *(v145 + 8) = v146;
                                  }

                                  *v146 = v145;
                                  if ((*(v210 + 376) & 0x20) == 0)
                                  {
                                    v147 = *(a1 + 748);
                                    *(a1 + 748) = v147 & 0xFFFFFFEF | (16 * ((v144 >> 3) & 1));
                                    if ((v147 & 0x4000000) != 0)
                                    {
                                      *(a1 + 748) = v147 & 0xFBFFFFEF | (16 * ((v144 >> 3) & 1)) & 0xFBFFFFFF;
                                      nw_frame_array_first();
                                      nw_frame_set_is_wake_packet();
                                      if ((*(v210 + 776) & 2) == 0)
                                      {
                                        v148 = __nwlog_tcp_log();
                                        if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
                                        {
                                          *buf = 136446466;
                                          *&buf[4] = "tcp_reass";
                                          *&buf[12] = 2082;
                                          *&buf[14] = v210 + 556;
                                          _os_log_impl(&dword_1889BA000, v148, OS_LOG_TYPE_INFO, "%{public}s %{public}s reassembled segment is wake packet", buf, 0x16u);
                                        }
                                      }
                                    }

                                    v149 = v137 + 4;
                                    v150 = v137[4];
                                    if (v150)
                                    {
                                      v151 = 0;
                                      v152 = v137[4];
                                      do
                                      {
                                        v153 = *(v152 + 52);
                                        if (v153)
                                        {
                                          v153 -= *(v152 + 56) + *(v152 + 60);
                                        }

                                        v151 += v153;
                                        v152 = *(v152 + 32);
                                      }

                                      while (v152);
                                      if (v151 <= 0)
                                      {
                                        *(v150 + 40) = &v212;
                                        v154 = v137[5];
                                        v212 = v150;
                                        v213 = v154;
                                        v137[4] = 0;
                                        v137[5] = v149;
                                        *buf = MEMORY[0x1E69E9820];
                                        *&buf[8] = 0x40000000;
                                        *&buf[16] = ____nw_frame_array_finalize_block_invoke_586;
                                        *v215 = &__block_descriptor_tmp_12;
                                        v215[8] = 1;
                                        do
                                        {
                                          v155 = v212;
                                          if (!v212)
                                          {
                                            break;
                                          }

                                          nw_frame_array_remove();
                                        }

                                        while (((*&buf[16])(buf, v155) & 1) != 0);
                                      }

                                      else if (sbappendstream((v210 + 464), v149, v151))
                                      {
                                        v142 = 1;
                                      }
                                    }
                                  }

                                  free(v137);
                                  v143 = a1;
                                  --*(a1 + 232);
                                  v137 = *a1;
                                  if (!*a1)
                                  {
                                    break;
                                  }

                                  v138 = v137[3];
                                  v139 = *(v138 + 4);
                                }

                                while (v139 == *(a1 + 120));
                                result = v144 & 1;
                                *(a1 + 748) &= ~0x800000u;
                                if (a6)
                                {
                                  if (v142)
                                  {
                                    *a6 = 1;
                                  }
                                }

                                return result;
                              }
                            }
                          }
                        }

                        return 0;
                      }

                      while (1)
                      {
                        v92 = *v64 + *(v58 + 4);
                        v93 = v62[3];
                        v94 = *(v93 + 4);
                        v95 = v92 - v94;
                        if (v92 - v94 < 1)
                        {
                          goto LABEL_245;
                        }

                        if (((v95 != 1) & ~v70) != 0)
                        {
                          if (*(a1 + 948))
                          {
                            v94 = *(a1 + 952);
                          }

                          else
                          {
                            *(a1 + 948) = v94;
                          }

                          v96 = *(v62 + 4);
                          v97 = v95 >= v96 ? *(v62 + 4) : v95;
                          *(a1 + 952) = v97 + v94;
                        }

                        else
                        {
                          v96 = *(v62 + 4);
                        }

                        if (v96 > v95)
                        {
                          break;
                        }

                        v99 = *v62;
                        v98 = v62[1];
                        if (*v62)
                        {
                          v99[1] = v98;
                        }

                        *v98 = v99;
                        if (!v210 || (*(v210 + 776) & 2) == 0)
                        {
                          if (__nwlog_is_datapath_logging_enabled())
                          {
                            v103 = __nwlog_tcp_log();
                            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                            {
                              v104 = *(v62[3] + 4);
                              v105 = *(v58 + 4);
                              v106 = *(v62 + 4);
                              v107 = *v64;
                              *buf = 136447490;
                              *&buf[4] = "tcp_reass";
                              *&buf[12] = 2082;
                              *&buf[14] = v210 + 556;
                              *&buf[22] = 1024;
                              *v215 = v104;
                              *&v215[4] = 1024;
                              *&v215[6] = v105;
                              *v216 = 1024;
                              *&v216[2] = v106;
                              v217 = 1024;
                              v218 = v107;
                              _os_log_impl(&dword_1889BA000, v103, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s dropping a completely overlapping segment: tqe_seq %u th_seq %u tqe_len %u tlen %u", buf, 0x2Eu);
                            }
                          }
                        }

                        v100 = v62[4];
                        if (v100)
                        {
                          *(v100 + 40) = &v212;
                          v101 = v62[5];
                          v212 = v100;
                          v213 = v101;
                          v62[4] = 0;
                          v62[5] = v62 + 4;
                          *buf = MEMORY[0x1E69E9820];
                          *&buf[8] = 0x40000000;
                          *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
                          *v215 = &__block_descriptor_tmp_290;
                          v215[8] = 1;
                          do
                          {
                            v102 = v212;
                            if (!v212)
                            {
                              break;
                            }

                            nw_frame_array_remove();
                          }

                          while (((*&buf[16])(buf, v102) & 1) != 0);
                        }

                        free(v62);
                        --*(a1 + 232);
                        v62 = v99;
                        if (!v99)
                        {
                          goto LABEL_245;
                        }
                      }

                      *(v93 + 4) = v92;
                      *(v62 + 4) = v96 - v95;
                      v108 = v62[4];
                      if (v108)
                      {
                        if ((*(v108 + 204) & 0x80) == 0)
                        {
                          goto LABEL_229;
                        }

                        v109 = *(v108 + 196);
                        if (v95 <= v109)
                        {
                          *(v108 + 196) = v109 - v95;
                          v123 = v62[4];
                          if (v123)
                          {
                            goto LABEL_230;
                          }

LABEL_220:
                          v124 = 0;
LABEL_243:
                          v134 = __nwlog_obj();
                          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446722;
                            *&buf[4] = "__nw_frame_array_claim";
                            *&buf[12] = 1024;
                            *&buf[14] = v124;
                            *&buf[18] = 1024;
                            *&buf[20] = v95;
                            _os_log_impl(&dword_1889BA000, v134, OS_LOG_TYPE_ERROR, "%{public}s start_offset %u != start_bytes %u", buf, 0x18u);
                          }

                          goto LABEL_245;
                        }

                        v110 = __nwlog_obj();
                        v111 = *(v108 + 196);
                        *buf = 136446722;
                        *&buf[4] = "__nw_frame_array_claim";
                        *&buf[12] = 1024;
                        *&buf[14] = v111;
                        *&buf[18] = 1024;
                        *&buf[20] = v95;
                        LODWORD(v197) = 24;
                        v112 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v110, 16, "%{public}s Aggregate buffer length: %u sum: %u", buf, v197);
                        LOBYTE(v212) = 16;
                        if (__nwlog_fault())
                        {
                          if (v212 == 17)
                          {
                            v113 = __nwlog_obj();
                            v114 = v212;
                            if (os_log_type_enabled(v113, v212))
                            {
                              v115 = *(v108 + 196);
                              *buf = 136446722;
                              *&buf[4] = "__nw_frame_array_claim";
                              *&buf[12] = 1024;
                              *&buf[14] = v115;
                              *&buf[18] = 1024;
                              *&buf[20] = v95;
                              v116 = "%{public}s Aggregate buffer length: %u sum: %u";
LABEL_225:
                              _os_log_impl(&dword_1889BA000, v113, v114, v116, buf, 0x18u);
                            }
                          }

                          else
                          {
                            v113 = __nwlog_obj();
                            v114 = v212;
                            if (os_log_type_enabled(v113, v212))
                            {
                              v125 = *(v108 + 196);
                              *buf = 136446722;
                              *&buf[4] = "__nw_frame_array_claim";
                              *&buf[12] = 1024;
                              *&buf[14] = v125;
                              *&buf[18] = 1024;
                              *&buf[20] = v95;
                              v116 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
                              goto LABEL_225;
                            }
                          }
                        }

                        v64 = a2;
                        if (v112)
                        {
                          free(v112);
                        }

                        *(v108 + 196) = 0;
LABEL_229:
                        v123 = v62[4];
                        if (v123)
                        {
                          goto LABEL_230;
                        }

                        goto LABEL_220;
                      }

                      v183 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                      LODWORD(v197) = 12;
                      v184 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v183, 16, "%{public}s called with null frame", buf, v197);
                      LOBYTE(v212) = 16;
                      if (__nwlog_fault())
                      {
                        if (v212 == 17)
                        {
                          v185 = __nwlog_obj();
                          v186 = v212;
                          if (!os_log_type_enabled(v185, v212))
                          {
                            goto LABEL_353;
                          }

                          *buf = 136446210;
                          *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                          v187 = "%{public}s called with null frame";
                        }

                        else
                        {
                          v185 = __nwlog_obj();
                          v186 = v212;
                          if (!os_log_type_enabled(v185, v212))
                          {
                            goto LABEL_353;
                          }

                          *buf = 136446210;
                          *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                          v187 = "%{public}s called with null frame, backtrace limit exceeded";
                        }

                        _os_log_impl(&dword_1889BA000, v185, v186, v187, buf, 0xCu);
                      }

LABEL_353:
                      if (v184)
                      {
                        free(v184);
                      }

                      v64 = a2;
                      v58 = v207;
                      v123 = v62[4];
                      if (v123)
                      {
LABEL_230:
                        v124 = 0;
                        while (1)
                        {
                          v126 = *(v123 + 52);
                          v127 = *(v123 + 56);
                          v128 = *(v123 + 60);
                          v129 = v126 - (v127 + v128);
                          if (v129 >= v95 - v124)
                          {
                            v129 = v95 - v124;
                          }

                          v130 = v126 ? v129 : 0;
                          v131 = v127 + v130;
                          if (v127 + v130 <= v126 - v128)
                          {
                            *(v123 + 56) = v131;
                          }

                          else
                          {
                            v132 = __nwlog_obj();
                            if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
                            {
                              v133 = *(v123 + 52);
                              *buf = 136446978;
                              *&buf[4] = "__nw_frame_claim_internal";
                              *&buf[12] = 1024;
                              *&buf[14] = v131;
                              *&buf[18] = 1024;
                              *&buf[20] = v133;
                              *v215 = 1024;
                              *&v215[2] = v128;
                              _os_log_impl(&dword_1889BA000, v132, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                            }
                          }

                          v124 += v130;
                          v64 = a2;
                          v58 = v207;
                          if (v124 == v95)
                          {
                            goto LABEL_245;
                          }

                          if (v124 < v95)
                          {
                            v123 = *(v123 + 32);
                            if (v123)
                            {
                              continue;
                            }
                          }

                          goto LABEL_243;
                        }
                      }

                      goto LABEL_220;
                    }

LABEL_147:
                    ++**(v65 + 272);
                    goto LABEL_148;
                  }

                  v117 = *(v40 + 1064);
                  if (v117)
                  {
                    v118.i64[0] = vdupq_n_s64(1uLL).u64[0];
                    v118.i64[1] = *a2;
                    v117[13] = vaddq_s64(v117[13], v118);
                  }

                  v119 = *(v201 + 248);
                  ++*v119;
                  if (HIDWORD(v200))
                  {
                    ++**(v201 + 256);
                    if (!v199)
                    {
                      goto LABEL_199;
                    }
                  }

                  else if (!v199)
                  {
LABEL_199:
                    if (!v200)
                    {
                      goto LABEL_201;
                    }

                    goto LABEL_200;
                  }

                  ++**(v201 + 264);
                  if (!v200)
                  {
LABEL_201:
                    v119[1] += v73;
                    if (HIDWORD(v200))
                    {
                      *(*(v201 + 256) + 8) += v73;
                      if (!v199)
                      {
                        goto LABEL_203;
                      }
                    }

                    else if (!v199)
                    {
LABEL_203:
                      if (!v200)
                      {
LABEL_205:
                        *(v40 + 696) += v73;
                        if (*(v210 + 24))
                        {
                          v120 = nw_protocol_tcp_get_all_stats();
                          if (v120)
                          {
                            *(v120 + 48) += *a2;
                          }
                        }

                        if ((*(v210 + 776) & 2) == 0)
                        {
                          if (__nwlog_is_datapath_logging_enabled())
                          {
                            v193 = __nwlog_tcp_log();
                            if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
                            {
                              v194 = *(v69[3] + 4);
                              v195 = *(v69 + 4);
                              v196 = *(v58 + 4);
                              *buf = 136447234;
                              *&buf[4] = "tcp_reass";
                              *&buf[12] = 2082;
                              *&buf[14] = v210 + 556;
                              *&buf[22] = 1024;
                              *v215 = v194;
                              *&v215[4] = 1024;
                              *&v215[6] = v195;
                              *v216 = 1024;
                              *&v216[2] = v196;
                              _os_log_impl(&dword_1889BA000, v193, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s It's a duplicate segment: tqe_seq %u tqe_len %u th_seq %u", buf, 0x28u);
                            }
                          }
                        }

                        v121 = v39[10];
                        if (v121)
                        {
                          v122 = v39[11];
                          v39[10] = 0;
                          v39[11] = 0;
                          v121(v39, 1, v122);
LABEL_212:
                          free(v206);
                          --*(v40 + 232);
                          goto LABEL_252;
                        }

                        v188 = __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "__nw_frame_finalize";
                        LODWORD(v197) = 12;
                        v189 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v188, 16, "%{public}s called with null frame->finalizer", buf, v197);
                        LOBYTE(v212) = 16;
                        if (__nwlog_fault())
                        {
                          if (v212 == 17)
                          {
                            v190 = __nwlog_obj();
                            v191 = v212;
                            if (os_log_type_enabled(v190, v212))
                            {
                              *buf = 136446210;
                              *&buf[4] = "__nw_frame_finalize";
                              v192 = "%{public}s called with null frame->finalizer";
LABEL_359:
                              _os_log_impl(&dword_1889BA000, v190, v191, v192, buf, 0xCu);
                            }
                          }

                          else
                          {
                            v190 = __nwlog_obj();
                            v191 = v212;
                            if (os_log_type_enabled(v190, v212))
                            {
                              *buf = 136446210;
                              *&buf[4] = "__nw_frame_finalize";
                              v192 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
                              goto LABEL_359;
                            }
                          }
                        }

                        if (v189)
                        {
                          free(v189);
                        }

                        v40 = a1;
                        goto LABEL_212;
                      }

LABEL_204:
                      *(*(v201 + 272) + 8) += v73;
                      goto LABEL_205;
                    }

                    *(*(v201 + 264) + 8) += v73;
                    if (!v200)
                    {
                      goto LABEL_205;
                    }

                    goto LABEL_204;
                  }

LABEL_200:
                  ++**(v201 + 272);
                  goto LABEL_201;
                }

                v79 = *(v40 + 1064);
                if (v79)
                {
                  ++*(v79 + 232);
                }

                if ((*(v210 + 776) & 2) == 0)
                {
                  v80 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "tcp_reass";
                    *&buf[12] = 2082;
                    *&buf[14] = v210 + 556;
                    _os_log_impl(&dword_1889BA000, v80, OS_LOG_TYPE_ERROR, "%{public}s %{public}s couldn't allocate memory for tcp_reass_zone", buf, 0x16u);
                  }
                }

                v81 = v39[10];
                if (v81)
                {
                  v82 = v39[11];
                  v39[10] = 0;
                  v39[11] = 0;
                  v81(v39, 1, v82);
                  return 0;
                }

                v169 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "__nw_frame_finalize";
                LODWORD(v197) = 12;
                v170 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v169, 16, "%{public}s called with null frame->finalizer", buf, v197);
                LOBYTE(v212) = 16;
                if (__nwlog_fault())
                {
                  if (v212 == 17)
                  {
                    v171 = __nwlog_obj();
                    v172 = v212;
                    if (!os_log_type_enabled(v171, v212))
                    {
                      goto LABEL_343;
                    }

                    *buf = 136446210;
                    *&buf[4] = "__nw_frame_finalize";
                    v173 = "%{public}s called with null frame->finalizer";
                  }

                  else
                  {
                    v171 = __nwlog_obj();
                    v172 = v212;
                    if (!os_log_type_enabled(v171, v212))
                    {
                      goto LABEL_343;
                    }

                    *buf = 136446210;
                    *&buf[4] = "__nw_frame_finalize";
                    v173 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
                  }

                  _os_log_impl(&dword_1889BA000, v171, v172, v173, buf, 0xCu);
                }

LABEL_343:
                if (v170)
                {
                  free(v170);
                }

                return 0;
              }

              v83 = *(v40 + 1064);
              if (v83)
              {
                ++*(v83 + 232);
              }

              if ((*(v210 + 776) & 2) == 0)
              {
                if (__nwlog_is_datapath_logging_enabled())
                {
                  v179 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
                  {
                    v180 = *(v58 + 4);
                    v181 = *(v40 + 120);
                    v182 = *(v40 + 232);
                    *buf = 136447490;
                    *&buf[4] = "tcp_reass";
                    *&buf[12] = 2082;
                    *&buf[14] = v210 + 556;
                    *&buf[22] = 1024;
                    *v215 = v180;
                    *&v215[4] = 1024;
                    *&v215[6] = v181;
                    *v216 = 1024;
                    *&v216[2] = v182;
                    v217 = 1024;
                    v218 = v60;
                    _os_log_impl(&dword_1889BA000, v179, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s drop due to limit: seq %u rcv_nxt %u reqssqlen %u qlimit %u", buf, 0x2Eu);
                  }
                }
              }

              v84 = v39[10];
              if (v84)
              {
                v85 = v39[11];
                v39[10] = 0;
                v39[11] = 0;
                v84(v39, 1, v85);
LABEL_138:
                result = 0;
                *a2 = 0;
                return result;
              }

              v174 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              LODWORD(v197) = 12;
              v175 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v174, 16, "%{public}s called with null frame->finalizer", buf, v197);
              LOBYTE(v212) = 16;
              if (__nwlog_fault())
              {
                if (v212 == 17)
                {
                  v176 = __nwlog_obj();
                  v177 = v212;
                  if (!os_log_type_enabled(v176, v212))
                  {
                    goto LABEL_348;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_finalize";
                  v178 = "%{public}s called with null frame->finalizer";
                }

                else
                {
                  v176 = __nwlog_obj();
                  v177 = v212;
                  if (!os_log_type_enabled(v176, v212))
                  {
                    goto LABEL_348;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_finalize";
                  v178 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
                }

                _os_log_impl(&dword_1889BA000, v176, v177, v178, buf, 0xCu);
              }

LABEL_348:
              if (v175)
              {
                free(v175);
              }

              goto LABEL_138;
            }
          }

          else
          {
            v56 = __nwlog_obj();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v57 = *(v39 + 13);
              *buf = 136446978;
              *&buf[4] = "__nw_frame_claim_internal";
              *&buf[12] = 1024;
              *&buf[14] = v54;
              *&buf[18] = 1024;
              *&buf[20] = v57;
              *v215 = 1024;
              *&v215[2] = v55;
              _os_log_impl(&dword_1889BA000, v56, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
            }

            v58 = v207;
            if (!v210)
            {
              goto LABEL_99;
            }
          }

          if ((*(v210 + 776) & 2) != 0)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

        v53 = v39[14];
      }

      v53 += *(v39 + 14);
      goto LABEL_90;
    }

    v41 = __nwlog_tcp_log();
    if (v210)
    {
      v42 = (v210 + 556);
    }

    else
    {
      v42 = &unk_188A285CF;
    }

    *buf = 136446466;
    *&buf[4] = "tcp_reass";
    *&buf[12] = 2082;
    *&buf[14] = v42;
    LODWORD(v197) = 22;
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v41, 16, "%{public}s %{public}s new_frame has next", buf, v197);
    LOBYTE(v212) = 16;
    if (__nwlog_fault())
    {
      if (v212 == 17)
      {
        v44 = __nwlog_tcp_log();
        v45 = v212;
        if (os_log_type_enabled(v44, v212))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_reass";
          *&buf[12] = 2082;
          *&buf[14] = v42;
          v46 = "%{public}s %{public}s new_frame has next";
LABEL_80:
          _os_log_impl(&dword_1889BA000, v44, v45, v46, buf, 0x16u);
        }
      }

      else
      {
        v44 = __nwlog_tcp_log();
        v45 = v212;
        if (os_log_type_enabled(v44, v212))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_reass";
          *&buf[12] = 2082;
          *&buf[14] = v42;
          v46 = "%{public}s %{public}s new_frame has next, backtrace limit exceeded";
          goto LABEL_80;
        }
      }
    }

    if (v43)
    {
      free(v43);
    }

    v40 = a1;
    v39 = v208;
    goto LABEL_84;
  }

  v47 = v210;
  if (!v202)
  {
    v164 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_check_validity";
    LODWORD(v197) = 12;
    v165 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v164, 16, "%{public}s called with null frame", buf, v197);
    LOBYTE(v212) = 16;
    if (__nwlog_fault())
    {
      if (v212 == 17)
      {
        v166 = __nwlog_obj();
        v167 = v212;
        if (os_log_type_enabled(v166, v212))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_check_validity";
          v168 = "%{public}s called with null frame";
LABEL_329:
          _os_log_impl(&dword_1889BA000, v166, v167, v168, buf, 0xCu);
        }
      }

      else
      {
        v166 = __nwlog_obj();
        v167 = v212;
        if (os_log_type_enabled(v166, v212))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_check_validity";
          v168 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_329;
        }
      }
    }

    if (v165)
    {
      free(v165);
    }

    v47 = v210;
    v48 = v204;
    goto LABEL_333;
  }

  v48 = a7;
  if (*(v202 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || ((*MEMORY[0x1E6977EF8])(v202, *(v202 + 88)))
  {
    if (!a7)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_333:
  *(a1 + 1064) = 0;
  if (v48)
  {
LABEL_69:
    *v48 = 12;
  }

LABEL_70:
  v49 = *(a1 + 1064);
  if (v49)
  {
    ++*(v49 + 232);
  }

  if (v47 && (*(v47 + 776) & 2) != 0)
  {
    return 0;
  }

  v50 = __nwlog_tcp_log();
  result = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v52 = &unk_188A285CF;
    if (v47)
    {
      v52 = (v47 + 556);
    }

    *buf = 136446466;
    *&buf[4] = "tcp_reass";
    *&buf[12] = 2082;
    *&buf[14] = v52;
    _os_log_impl(&dword_1889BA000, v50, OS_LOG_TYPE_ERROR, "%{public}s %{public}s unable to copy frame for reassembly", buf, 0x16u);
    return 0;
  }

  return result;
}

uint64_t tcp_sbrcv_reserve(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a3 >= a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 0xFFFF << *(result + 269))
  {
    v6 = 0xFFFF << *(result + 269);
  }

  else
  {
    v6 = v5;
  }

  if (v6 <= *(a2 + 4) || v6 > 0x71C71C)
  {
    return result;
  }

  *(a2 + 4) = v6;
  v8 = *(*(a2 + 48) + 24);
  if ((*(a2 + 32) & 4) != 0)
  {
    v9 = v6;
    if (v8)
    {
      v10 = a4;
      v11 = result;
      v12 = a5;
      v15 = a2;
      all_stats = nw_protocol_tcp_get_all_stats();
      a2 = v15;
      v9 = *(v15 + 4);
      if (all_stats)
      {
        *(all_stats + 88) = v9;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v9 = v6;
    if (v8)
    {
      v10 = a4;
      v11 = result;
      v12 = a5;
      v13 = a2;
      v14 = nw_protocol_tcp_get_all_stats();
      a2 = v13;
      v9 = *(v13 + 4);
      if (v14)
      {
        *(v14 + 100) = v9;
      }

LABEL_18:
      a5 = v12;
      result = v11;
      a4 = v10;
    }
  }

  if (*(a2 + 8) > v9)
  {
    *(a2 + 8) = v9;
  }

  v17 = *(a2 + 36);
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = v6;
  }

  if (v17 <= v18)
  {
    v17 = v18;
  }

  if (v17 >= a5)
  {
    v17 = a5;
  }

  if (v17 >= 0xFFFF << *(result + 269))
  {
    v17 = 0xFFFF << *(result + 269);
  }

  *(a2 + 36) = v17;
  return result;
}

uint64_t tcp_bad_rexmt_restore_state(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if ((~v3 & 0x180) != 0)
  {
    *(a1 + 148) = *(a1 + 496);
    if ((v3 & 0x400000) == 0)
    {
LABEL_25:
      *(a1 + 992) = 0;
      v9 = *(a1 + 148);
      goto LABEL_26;
    }

    *(a1 + 88) = v3 | 0x200000;
    v10 = *(a1 + 80);
    v11 = *(v10 + 2372);
    if ((v11 & 0x40000000) == 0)
    {
LABEL_17:
      v17 = *(a1 + 960);
      if (v17)
      {
        v18 = (a1 + 960);
        do
        {
          v21 = *v18;
          if (*v18 == v17)
          {
            v19 = (a1 + 960);
          }

          else
          {
            do
            {
              v22 = v21;
              v21 = v21[2];
            }

            while (v21 != v17);
            v19 = v22 + 2;
          }

          v20 = v17[2];
          *v19 = v21[2];
          nw_tcp_access_globals(*(*(a1 + 80) + 224));
          free(v17);
          v17 = v20;
        }

        while (v20);
        *(a1 + 968) = *(a1 + 96);
      }

      goto LABEL_25;
    }

    v12 = *(v10 + 224);
    if ((v11 & 0x10000000) != 0)
    {
      *(v10 + 2372) = v11 & 0xAFFFFFFF;
      v14 = (v12 + 364);
      v13 = *(v12 + 364);
    }

    else
    {
      v13 = *(v12 + 364);
      *(v10 + 2372) = v11 & 0xAFFFFFFF;
      if ((v13 & 0x20000) == 0)
      {
LABEL_14:
        v15 = *(v12 + 32);
        if (v15)
        {
          v16 = *v15;
          if (v16)
          {
            v16();
          }
        }

        goto LABEL_17;
      }

      v14 = (v12 + 364);
    }

    *v14 = v13 & 0xFFFDFFFF;
    goto LABEL_14;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 96) - v4;
  v6 = v4 - *(a1 + 92);
  *(a1 + 152) = *(a1 + 500);
  v7 = *(tcp_cc_algo_list[*(a1 + 272)] + 40);
  if (v7)
  {
    v7(a1);
  }

  v8 = *(a1 + 148);
  if (v6 < v8)
  {
    v8 = v6;
  }

  v9 = v5 + v8;
LABEL_26:
  v23 = sysctls;
  if (*(sysctls + 280))
  {
    v24 = *(sysctls + 16);
  }

  else
  {
    v24 = 10;
  }

  v25 = *(a1 + 200) * v24;
  if (v9 <= v25)
  {
    v9 = v25;
  }

  *(a1 + 148) = v9;
  *(a1 + 156) = *(a1 + 504);
  *(a1 + 100) = *(a1 + 96);
  v26 = *(*(a1 + 80) + 224);
  v27 = *(v26 + 416);
  if ((~v27 & 0xC00) == 0)
  {
    v28 = *(v23 + 228);
    if (v28 <= *(a1 + 152))
    {
      v28 = *(a1 + 152);
    }

    v29 = *(v23 + 116);
    if (v28 < v29)
    {
      v29 = v28;
    }

    *(v26 + 420) = v29;
    if (*(v26 + 388) <= v29)
    {
      if (v29 <= 0x71C71C)
      {
        *(v26 + 388) = v29;
        v30 = *(*(v26 + 432) + 24);
        if ((v27 & 4) != 0)
        {
          if (v30)
          {
            all_stats = nw_protocol_tcp_get_all_stats();
            v29 = *(v26 + 388);
            if (all_stats)
            {
              *(all_stats + 88) = v29;
            }
          }
        }

        else if (v30)
        {
          v31 = nw_protocol_tcp_get_all_stats();
          v29 = *(v26 + 388);
          if (v31)
          {
            *(v31 + 100) = v29;
          }
        }

        if (*(v26 + 392) > v29)
        {
          *(v26 + 392) = v29;
        }
      }

      *(v26 + 416) &= ~0x800u;
    }
  }

  v33 = *(a1 + 748);
  if ((v33 & 0x20400020) == 0x20000020)
  {
    v34 = *(a1 + 2077);
    if ((v34 & 0x1Fu) >= 0xF)
    {
      v35 = 16;
    }

    else
    {
      v35 = (v34 + 1) & 0x1F;
    }

    *(a1 + 2077) = v34 & 0xC0 | v35 | 0x20;
  }

  *(a1 + 748) = v33 | 0x40;
  result = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  *(a1 + 524) = *(result + 308);
  *(a1 + 176) = 0;
  return result;
}

void tcp_set_foreground_cc(uint64_t a1)
{
  if (*(sysctls + 20))
  {
    v1 = 1;
  }

  else if (*(sysctls + 280))
  {
    v1 = 2;
  }

  else if (*(*(*a1 + 240) + 2096))
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  tcp_set_new_cc(a1, v1);
}

uint64_t tcp_usr_preconnect(_DWORD *a1)
{
  result = tcp_output(*(*a1 + 240));
  v3 = a1[92];
  if ((v3 & 0x30) != 0)
  {
    a1[92] = v3 & 0xFFFFFFCF;
  }

  return result;
}

uint64_t tcp_usr_rcvoob(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = __nwlog_obj();
  *buf = 136446210;
  v6 = "tcp_usr_rcvoob";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v1, 16, "%{public}s currently not supported", buf, 12);
  if (__nwlog_fault())
  {
    v3 = __nwlog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v6 = "tcp_usr_rcvoob";
      _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_ERROR, "%{public}s currently not supported, backtrace limit exceeded", buf, 0xCu);
    }
  }

  if (v2)
  {
    free(v2);
  }

  return 0;
}

uint64_t tcp_usr_listen(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (!*a1 || *(v1 + 232) == 3)
  {
    return 22;
  }

  v4 = *(v1 + 240);
  v5 = nw_tcp_access_globals(*(v1 + 224));
  v9 = 0;
  v10 = 0;
  microuptime(&v9);
  v6 = v10 / 1000 + 1000 * v9;
  if (*(v5 + 308) < v6)
  {
    *v5 = v9;
    *(v5 + 308) = v6;
  }

  v7 = a1;
  if (*(v1 + 2370))
  {
    goto LABEL_8;
  }

  if (*(v1 + 492))
  {
    return 22;
  }

  v9 = 0;
  v10 = 0;
  result = (*(*(v1 + 2280) + 8))(*(v1 + 224), 0, 16, &v9, 16);
  if (!result)
  {
    v7 = a1;
    if (HIDWORD(v9))
    {
      *(v1 + 492) = HIDWORD(v9);
    }

    *(v1 + 2370) = WORD1(v9);
LABEL_8:
    *(v4 + 12) = 1;
    result = v7[3];
    if (result)
    {
      result = nw_protocol_tcp_get_all_stats();
      if (result)
      {
        v8 = result;
        result = 0;
        *(v8 + 136) = 1;
      }
    }
  }

  return result;
}

uint64_t tcp_usr_abort(uint64_t *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (!*a1 || *(v1 + 232) == 3)
  {
    return 22;
  }

  v4 = *(v1 + 240);
  v5 = nw_tcp_access_globals(*(v1 + 224));
  v12 = 0uLL;
  microuptime(&v12);
  v6 = SDWORD2(v12) / 1000 + 1000 * v12;
  if (*(v5 + 308) < v6)
  {
    *v5 = v12;
    *(v5 + 308) = v6;
  }

  if (!v4)
  {
    return 0;
  }

  tcp_drop(v4, 53);
  v7 = a1;
  v8 = *(a1 + 90);
  if (v8 > 0)
  {
LABEL_8:
    result = 0;
    *(v7 + 90) = v8 - 1;
    return result;
  }

  v9 = __nwlog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  LODWORD(v12) = 136446210;
  *(&v12 + 4) = "tcp_usr_abort";
  v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1889BA000, v9, 16, "%{public}s Assert so->so_usecount > 0 failed", &v12, 12);
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v11);
    v7 = a1;
    v8 = *(a1 + 90);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t tcp6_usr_listen(void *a1)
{
  v1 = *a1;
  if (!*a1 || *(v1 + 232) == 3)
  {
    return 22;
  }

  v4 = *(v1 + 240);
  v5 = nw_tcp_access_globals(*(v1 + 224));
  v10 = 0;
  v11.i64[0] = 0;
  microuptime(&v10);
  v6 = v11.i32[0] / 1000 + 1000 * v10;
  if (*(v5 + 308) < v6)
  {
    *v5 = v10;
    *(v5 + 308) = v6;
  }

  v7 = a1;
  if (*(v1 + 2370))
  {
    goto LABEL_8;
  }

  v9 = *(v1 + 2380);
  *(v1 + 2380) = v9 & 0xFE;
  if ((*(v1 + 2373) & 0x80) == 0)
  {
    *(v1 + 2380) = v9 | 1;
  }

  if (*(v1 + 480) || *(v1 + 484) || *(v1 + 488) || *(v1 + 492))
  {
    return 22;
  }

  v12 = 0;
  v11 = 0uLL;
  v10 = 0;
  result = (*(*(v1 + 2280) + 8))(*(v1 + 224), 0, 28, &v10, 28);
  if (!result)
  {
    if (vmaxv_u16(vmovn_s32(vtstq_s32(v11, v11))))
    {
      *(v1 + 480) = v11;
    }

    *(v1 + 2370) = WORD1(v10);
    v7 = a1;
LABEL_8:
    *(v4 + 12) = 1;
    result = v7[3];
    if (result)
    {
      result = nw_protocol_tcp_get_all_stats();
      if (result)
      {
        v8 = result;
        result = 0;
        *(v8 + 136) = 1;
      }
    }
  }

  return result;
}

uint64_t tcp_connect_complete(uint64_t a1)
{
  v2 = *(*a1 + 240);
  (*(*(*(v2 + 80) + 2280) + 64))(*(a1 + 24));
  if ((*(a1 + 368) & 0x20) != 0)
  {
    tcp_mss(v2, 0xFFFFFFFF, 0);
    v4 = *(v2 + 200);
    *(v2 + 144) = v4;
    *(v2 + 260) = v4;
    return 0;
  }

  else
  {

    return tcp_output(v2);
  }
}

void inp_flush(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = __nwlog_obj();
  *buf = 136446210;
  v5 = "inp_flush";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v1, 16, "%{public}s currently unsupported", buf, 12);
  if (__nwlog_fault())
  {
    v3 = __nwlog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v5 = "inp_flush";
      _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_ERROR, "%{public}s currently unsupported, backtrace limit exceeded", buf, 0xCu);
    }
  }

  if (v2)
  {
    free(v2);
  }
}

uint64_t tcp_setpersist(uint64_t a1)
{
  v2 = (*(a1 + 212) + (*(a1 + 204) >> 2)) >> 1;
  if (*(a1 + 324) && !*(a1 + 36) && !*(a1 + 328))
  {
    *(a1 + 328) = *(a1 + 324) + *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308);
  }

  v3 = tcp_backoff[*(a1 + 234)] * v2;
  *(a1 + 36) = v3;
  if (v3 >> 3 >= 0x271)
  {
    if (v3 < 0xEA61)
    {
      goto LABEL_10;
    }

    v3 = 60000;
  }

  else
  {
    v3 = 5000;
  }

  *(a1 + 36) = v3;
LABEL_10:
  result = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  *(a1 + 36) = *(result + 308) + v3 - *(a1 + 64);
  v5 = *(a1 + 234);
  if (v5 <= 0xB)
  {
    *(a1 + 234) = v5 + 1;
  }

  return result;
}

uint64_t __tcp_ip_output_send_block_invoke(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 52);
    if (v4)
    {
      v5 = v4 - (*(a2 + 56) + *(a2 + 60));
      if (!*(a1 + 32))
      {
        return 1;
      }
    }

    else
    {
      v5 = 0;
      if (!*(a1 + 32))
      {
        return 1;
      }
    }

    v6 = *(a2 + 112);
    v7 = MEMORY[0x1E6977EF8];
    if (v6 && ((*(a2 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || (*MEMORY[0x1E6977EF8])(a2, *(a2 + 88)) && (v6 = *(a2 + 112)) != 0))
    {
      v8 = (v6 + *(a2 + 56));
      v9 = *(a1 + 40);
      if (!v9 || (*(v9 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v13 = __nwlog_tcp_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            if (v9)
            {
              v14 = (v9 + 556);
            }

            else
            {
              v14 = &unk_188A285CF;
            }

            v15 = bswap32(*v8) >> 16;
            v16 = bswap32(v8[1]) >> 16;
            v17 = *(v8 + 13);
            v18 = bswap32(*(v8 + 1));
            v19 = bswap32(*(v8 + 2));
            v20 = bswap32(v8[7]) >> 16;
            v21 = *(a1 + 32);
            v22 = v21[3];
            v25 = v21[30];
            v26 = v21[23];
            v27 = v17;
            v23 = packet_service_class_to_str(*(a2 + 176));
            *buf = 136449282;
            v29 = "tcp_ip_output_send_block_invoke";
            v30 = 2082;
            v31 = v14;
            v32 = 1024;
            v33 = v15;
            v34 = 1024;
            v35 = v16;
            v36 = 1024;
            v37 = v5;
            v38 = 1024;
            v39 = v27;
            v40 = 1024;
            v41 = v18;
            v42 = 1024;
            v43 = v19;
            v44 = 1024;
            v45 = v20;
            v46 = 1024;
            v47 = v22;
            v48 = 1024;
            v49 = v25;
            v50 = 1024;
            v51 = v26;
            v52 = 2082;
            v53 = v23;
            _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s sending frame, %u:%u tlen %u flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u svc %{public}s", buf, 0x5Cu);
          }
        }
      }
    }

    else if ((*(a2 + 204) & 0x100) != 0 && *v7 && ((*v7)(a2, *(a2 + 88)) & 1) == 0)
    {
      *(*(a1 + 32) + 1064) = 0;
    }
  }

  else
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v29 = "__nw_frame_unclaimed_length";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v11, 16, "%{public}s called with null frame", buf, 12);
    if (__nwlog_fault())
    {
      v24 = __nwlog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v29 = "__nw_frame_unclaimed_length";
        _os_log_impl(&dword_1889BA000, v24, OS_LOG_TYPE_ERROR, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v12)
    {
      free(v12);
    }
  }

  return 1;
}

uint64_t __tcp_ip_output_send_block_invoke_7(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  if (a2 && *(a1 + 40))
  {
    v2 = MEMORY[0x1E6977EF8];
    if (*(a2 + 112) && ((*(a2 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || (v3 = a1, v4 = a2, v5 = (*MEMORY[0x1E6977EF8])(a2, *(a2 + 88)), a2 = v4, v6 = v5, a1 = v3, v6) && *(v4 + 112)))
    {
      if (*MEMORY[0x1E6977EF0] != -1)
      {
        dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_488);
      }

      if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }
    }

    else if ((*(a2 + 204) & 0x100) != 0)
    {
      v7 = *v2;
      if (*v2)
      {
        v8 = a1;
        if ((v7(a2, *(a2 + 88)) & 1) == 0)
        {
          *(*(v8 + 40) + 1064) = 0;
        }
      }
    }
  }

  return 1;
}

uint64_t ____nw_signpost_is_enabled_block_invoke_495()
{
  result = networkd_settings_get_BOOL();
  *MEMORY[0x1E6977EE8] = result;
  return result;
}

uint64_t tcp_cc_adjust_nonvalidated_cwnd(uint64_t result)
{
  v1 = *(result + 972);
  if (v1 <= *(result + 976))
  {
    v1 = *(result + 976);
  }

  if (*(result + 980) > v1)
  {
    v1 = *(result + 980);
  }

  *(result + 988) = v1;
  *(result + 972) = 0;
  *(result + 980) = 0;
  *(result + 759) = 0;
  *(result + 992) = 0;
  v2 = v1 >> 1;
  v3 = *(result + 200);
  if (v2 <= v3)
  {
    v2 = *(result + 200);
  }

  *(result + 148) = 3 * v3 + v2;
  *(result + 748) &= ~0x100000u;
  return result;
}

uint64_t ____nw_frame_array_finalize_block_invoke_586(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = *(a2 + 80);
    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = *(a2 + 88);
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      v2(a2, v3, v4);
      return 1;
    }

    v8 = __nwlog_obj();
    *buf = 136446210;
    v12 = "__nw_frame_finalize";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v8, 16, "%{public}s called with null frame->finalizer", buf, 12);
    if (__nwlog_fault())
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v12 = "__nw_frame_finalize";
        v10 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v12 = "__nw_frame_finalize";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v6, 16, "%{public}s called with null frame", buf, 12);
    if (__nwlog_fault())
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v12 = "__nw_frame_finalize";
        v10 = "%{public}s called with null frame, backtrace limit exceeded";
LABEL_13:
        _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    free(v7);
  }

  return 1;
}

uint64_t sbreserve(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x71C71C)
  {
    return 0;
  }

  *(a1 + 4) = a2;
  v3 = *(*(a1 + 48) + 24);
  if ((*(a1 + 32) & 4) != 0)
  {
    if (v3)
    {
      v6 = a1;
      all_stats = nw_protocol_tcp_get_all_stats();
      a1 = v6;
      a2 = *(v6 + 4);
      if (all_stats)
      {
        *(all_stats + 88) = a2;
      }
    }
  }

  else if (v3)
  {
    v4 = a1;
    v5 = nw_protocol_tcp_get_all_stats();
    a1 = v4;
    a2 = *(v4 + 4);
    if (v5)
    {
      *(v5 + 100) = a2;
    }
  }

  if (*(a1 + 8) > a2)
  {
    *(a1 + 8) = a2;
  }

  return 1;
}

uint64_t tcp_setsockopt(uint64_t a1, int a2, int a3, int *a4)
{
  v26[0] = 1;
  v26[1] = a2;
  v28 = a4;
  v27 = a3;
  v29 = 4;
  v9 = *a4;
  (*(*(a1 + 8) + 16))(a1, 1, v4, a4);
  if ((~*(a1 + 376) & 0x30) == 0 && (*(a1 + 365) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (a2 != 0xFFFF)
  {
    v10 = tcp_ctloutput(a1, v26);
    goto LABEL_22;
  }

  v10 = 42;
  if (a3 > 2047)
  {
    if (a3 >= 0x2000)
    {
      if (a3 >= 0x8000)
      {
        if (a3 != 0x8000 && a3 != 0x10000)
        {
          goto LABEL_22;
        }
      }

      else if (a3 != 0x2000 && a3 != 0x4000)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    if ((a3 - 4097) >= 4)
    {
      if (a3 != 2048)
      {
        goto LABEL_22;
      }

LABEL_9:
      v10 = 0;
      if (v9)
      {
        v11 = *(a1 + 372) | a3;
      }

      else
      {
        v11 = *(a1 + 372) & ~a3;
      }

      *(a1 + 372) = v11;
      goto LABEL_22;
    }

    if (v9 < 1)
    {
LABEL_3:
      v10 = 22;
      goto LABEL_22;
    }

    if ((a3 - 4097) >= 2)
    {
      if (a3 == 4099)
      {
        v10 = 0;
        v14 = *(a1 + 388) / 3u;
        if (v9 <= *(a1 + 388) / 3)
        {
          v14 = v9;
        }

        if (v14 <= 1)
        {
          v14 = 1;
        }

        *(a1 + 392) = v14;
      }

      else
      {
        v10 = 0;
        v22 = *(a1 + 468) / 3u;
        if (v9 <= *(a1 + 468) / 3)
        {
          v22 = v9;
        }

        if (v22 >= 0x4000)
        {
          v23 = 0x4000;
        }

        else
        {
          v23 = v22;
        }

        if (v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = 1;
        }

        *(a1 + 472) = v24;
      }
    }

    else
    {
      v12 = 464;
      if (a3 == 4097)
      {
        v12 = 384;
      }

      if (v9 <= 0x71C71C)
      {
        v18 = (a1 + v12);
        *(a1 + v12 + 4) = v9;
        v19 = *(*(a1 + v12 + 48) + 24);
        if ((*(a1 + v12 + 32) & 4) != 0)
        {
          v20 = v9;
          if (v19)
          {
            all_stats = nw_protocol_tcp_get_all_stats();
            v20 = v18[1];
            if (all_stats)
            {
              *(all_stats + 88) = v20;
            }
          }
        }

        else
        {
          v20 = v9;
          if (v19)
          {
            v21 = nw_protocol_tcp_get_all_stats();
            v20 = v18[1];
            if (v21)
            {
              *(v21 + 100) = v20;
            }
          }
        }

        if (v18[2] > v20)
        {
          v18[2] = v20;
        }

        v10 = 0;
        v18[8] = v18[8] & 0xFFFFF9FF | 0x200;
        v18[9] = v9;
      }

      else
      {
        v10 = 55;
      }
    }
  }

  else
  {
    if (a3 <= 127)
    {
      if ((a3 - 1) > 0x3F || ((1 << (a3 - 1)) & 0x8000000080008089) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    if (a3 != 128)
    {
      if (a3 != 512 && a3 != 1024)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    v15 = *a4;
    *(a1 + 16) = a4[1];
    v16 = *(a1 + 372);
    v10 = 0;
    if (v15)
    {
      v17 = v16 | 0x80;
    }

    else
    {
      v17 = v16 & 0xFFFFFF7F;
    }

    *(a1 + 372) = v17;
  }

LABEL_22:
  (*(*(a1 + 8) + 24))(a1, 1, v4);
  return v10;
}

uint64_t tcp_set_keepalive(uint64_t a1, int a2)
{
  (*(*(a1 + 8) + 16))();
  v4 = a1;
  if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
  {
    v5 = 0;
    *(v4 + 372) = *(v4 + 372) & 0xFFFFFFF7 | (8 * (a2 != 0));
  }

  else
  {
    v5 = 22;
  }

  (*(*(v4 + 8) + 24))();
  return v5;
}

uint64_t tcp_set_keepalive_idle_time(uint64_t a1, int a2)
{
  v6 = a2;
  v7[0] = 0x600000001;
  v7[2] = &v6;
  v7[3] = 4;
  (*(*(a1 + 8) + 16))();
  if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
  {
    v7[1] = 16;
    v4 = tcp_ctloutput(a1, v7);
  }

  else
  {
    v4 = 22;
  }

  (*(*(a1 + 8) + 24))(a1, 1, v2);
  return v4;
}

uint64_t tcp_set_keepalive_interval(uint64_t a1, int a2)
{
  v6 = a2;
  v7[0] = 0x600000001;
  v7[2] = &v6;
  v7[3] = 4;
  (*(*(a1 + 8) + 16))();
  if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
  {
    v7[1] = 257;
    v4 = tcp_ctloutput(a1, v7);
  }

  else
  {
    v4 = 22;
  }

  (*(*(a1 + 8) + 24))(a1, 1, v2);
  return v4;
}

uint64_t tcp_set_background_management(uint64_t a1)
{
  v5 = 1;
  v6[0] = 0xFFFF00000001;
  v6[2] = &v5;
  v6[3] = 4;
  (*(*(a1 + 8) + 16))();
  if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
  {
    v6[1] = 4357;
    v3 = tcp_ctloutput(a1, v6);
  }

  else
  {
    v3 = 22;
  }

  (*(*(a1 + 8) + 24))(a1, 1, v1);
  return v3;
}

uint64_t tcp_rack_update_reordering_window(uint64_t result, int a2)
{
  v2 = *(result + 2077);
  if (a2 - *(result + 2068) <= 0)
  {
    v2 &= ~0x40u;
    *(result + 2077) = v2;
    if ((v2 & 0x40) == 0)
    {
LABEL_3:
      if ((v2 & 0x1F) == 0)
      {
        *(result + 2076) = 1;
      }

      return result;
    }
  }

  else if ((*(result + 2077) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2068) = *(result + 100);
  v3 = *(result + 2076);
  if ((v3 + 1) < 0xFF)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = -1;
  }

  *(result + 2076) = v4;
  *(result + 2077) = v2 & 0xA0 | 0x10;
  return result;
}

uint64_t tcp_rack_detect_loss_and_arm_timer(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v7 = 0;
  if ((*(a1 + 2077) & 0x20) != 0)
  {
    *(a1 + 24) = 0;
    v4 = tcp_rack_detect_loss(a1, a2, &v7);
    if (v4)
    {
      v5 = v4 + *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308) - *(a1 + 64) + 2;
      *(a1 + 16) = 0;
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 24) = v5;
    v2 = v7;
  }

  return v2 & 1;
}

uint64_t tcp_rack_detect_loss(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v6 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  if (*(a1 + 1024) || (*(a1 + 90) & 0x20) == 0 && *(a1 + 322) > a2)
  {
    v7 = *(*(a1 + 80) + 496);
    if (v7)
    {
      v7 = *(v7 + 1632);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 40);
      }
    }

    v8 = (*(a1 + 204) >> 4) & 0xFFFFFFE;
    if ((v7 * *(a1 + 2076)) >> 2 < v8)
    {
      v8 = (v7 * *(a1 + 2076)) >> 2;
    }

    if (v8 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(a1 + 1992);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = *(a1 + 1992);
    if (!v10)
    {
      return 0;
    }
  }

  v11 = *(v6 + 308);
  v12 = 0;
  if (a3)
  {
    do
    {
      v20 = *(a1 + 2056);
      v21 = *(v10 + 8);
      if (v20 <= v21 && (v20 != v21 || *(a1 + 2060) - *(v10 + 4) < 1))
      {
        break;
      }

      if ((*(v10 + 12) & 6) != 2 && (*(v10 + 12) & 1) == 0)
      {
        v24 = v21 + v9 + *(a1 + 2064);
        if (v11 - v24 < 0)
        {
          v19 = v24 - v11;
          if (v24 - v11 <= v12)
          {
            v19 = v12;
          }

          if (v24 == v11)
          {
            v12 = v12;
          }

          else
          {
            v12 = v19;
          }
        }

        else
        {
          tcp_mark_seg_lost(a1, v10);
          *a3 = 1;
        }
      }

      v10 = *(v10 + 16);
    }

    while (v10);
  }

  else
  {
    do
    {
      v13 = *(a1 + 2056);
      v14 = *(v10 + 8);
      if (v13 <= v14 && (v13 != v14 || *(a1 + 2060) - *(v10 + 4) < 1))
      {
        break;
      }

      if ((*(v10 + 12) & 6) != 2 && (*(v10 + 12) & 1) == 0)
      {
        v17 = v14 + v9 + *(a1 + 2064);
        if (v11 - v17 >= 0)
        {
          tcp_mark_seg_lost(a1, v10);
        }

        else
        {
          v18 = v17 - v11;
          if (v17 - v11 <= v12)
          {
            v18 = v12;
          }

          if (v17 == v11)
          {
            v12 = v12;
          }

          else
          {
            v12 = v18;
          }
        }
      }

      v10 = *(v10 + 16);
    }

    while (v10);
  }

  return v12;
}

uint64_t tcp_rack_reordering_timeout(uint64_t a1)
{
  v7 = 0;
  result = tcp_rack_detect_loss(a1, 0, &v7);
  if (v7 == 1)
  {
    v3 = *(a1 + 88);
    if ((v3 & 0x200000) == 0)
    {
      if ((~v3 & 0x180) != 0)
      {
        *(a1 + 496) = *(a1 + 148);
        *(a1 + 504) = *(a1 + 156);
        *(a1 + 88) = v3 & 0xFF9FFFFF;
      }

      else
      {
        v4 = *(a1 + 96) - *(a1 + 92);
        v5 = *(a1 + 156);
        if (v4 <= *(a1 + 152))
        {
          v4 = *(a1 + 152);
        }

        *(a1 + 500) = v4;
        *(a1 + 504) = v5;
      }

      *(a1 + 508) = (*(a1 + 204) >> 5) + 2;
      *(a1 + 516) = *(a1 + 212) >> 4;
      if ((*(a1 + 1880) & 0xFFFFFFFE) == 2)
      {
        *(a1 + 512) = (*(a1 + 208) >> 5) + 2;
        *(a1 + 520) = *(a1 + 216) >> 4;
      }

      *(a1 + 748) &= ~0x40u;
      tcp_enter_fast_recovery(a1);
    }

    v6 = *(a1 + 1064);
    if (v6)
    {
      ++*(v6 + 632);
    }

    ++*(a1 + 1020);
    return tcp_output(a1);
  }

  return result;
}

void tcp_rack_loss_on_rto(uint64_t a1)
{
  v2 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  if (!*(a1 + 1024))
  {
    v5 = 0;
    v6 = *(a1 + 1992);
    if (!v6)
    {
      return;
    }

    goto LABEL_13;
  }

  v3 = *(*(a1 + 80) + 496);
  if (v3)
  {
    v3 = *(v3 + 1632);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 40);
    }
  }

  v4 = (*(a1 + 204) >> 4) & 0xFFFFFFE;
  if ((v3 * *(a1 + 2076)) >> 2 < v4)
  {
    v4 = (v3 * *(a1 + 2076)) >> 2;
  }

  if (v4 <= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a1 + 1992);
  if (v6)
  {
LABEL_13:
    v7 = *(v2 + 308);
    do
    {
      if (*v6 == *(a1 + 92))
      {
        tcp_mark_seg_lost(a1, v6);
      }

      if (v7 - *(a1 + 2064) - (v5 + *(v6 + 8)) >= 0)
      {
        tcp_mark_seg_lost(a1, v6);
      }

      v6 = *(v6 + 16);
    }

    while (v6);
  }
}

const char *packet_service_class_to_str(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 <= 2621727)
  {
    if (a1 <= 1048703)
    {
      if (!a1)
      {
        return "be";
      }

      if (a1 == 524432)
      {
        return "bk_sys";
      }
    }

    else
    {
      switch(a1)
      {
        case 0x100080:
          return "bk";
        case 0x180010:
          return "rd";
        case 0x200020:
          return "oam";
      }
    }
  }

  else if (a1 > 3670319)
  {
    switch(a1)
    {
      case 0x380130:
        return "sig";
      case 0x400180:
        return "vo";
      case 0x480190:
        return "ctl";
    }
  }

  else
  {
    switch(a1)
    {
      case 0x280120:
        return "av";
      case 0x300110:
        return "rv";
      case 0x380100:
        return "vi";
    }
  }

  v2 = a1;
  v3 = __nwlog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136446466;
    v5 = "packet_service_class_to_str";
    v6 = 1024;
    v7 = v2;
    _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_ERROR, "%{public}s invalid packet service class %d", &v4, 0x12u);
  }

  return "unknown";
}

void tcp_remove_timer(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  v3 = *(*(a1 + 80) + 224);
  (*(*(v3 + 8) + 32))(v3, 0);
  if ((*(a1 + 91) & 0x40) != 0)
  {
    v4 = *(v2 + 256);
    v5 = (a1 + 48);
    if (v4)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      *(v2 + 256) = *v5;
    }

    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    if (v7)
    {
      *(v7 + 8) = v8;
    }

    *v8 = v7;
    v9 = *(v3 + 360);
    if (v9 <= 0)
    {
      if ((*(v3 + 776) & 2) == 0)
      {
        v11 = __nwlog_tcp_log();
        v12 = *(v3 + 360);
        *buf = 136446722;
        v19 = "tcp_remove_timer";
        v20 = 2082;
        v21 = v3 + 556;
        v22 = 1024;
        v23 = v12;
        v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v11, 16, "%{public}s %{public}s inp_so->so_usecount(== %d) underflow  when removing timer entry", buf, 28);
        if (__nwlog_fault())
        {
          v16 = __nwlog_tcp_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(v3 + 360);
            *buf = 136446722;
            v19 = "tcp_remove_timer";
            v20 = 2082;
            v21 = v3 + 556;
            v22 = 1024;
            v23 = v17;
            _os_log_impl(&dword_1889BA000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s inp_so->so_usecount(== %d) underflow  when removing timer entry, backtrace limit exceeded", buf, 0x1Cu);
          }
        }

        if (v13)
        {
          free(v13);
        }
      }
    }

    else
    {
      v10 = v9 - 1;
      *(v3 + 360) = v10;
      if (!v10 && (*(v3 + 776) & 2) == 0)
      {
        v14 = __nwlog_tcp_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *(*(a1 + 80) + 456);
          *buf = 136446722;
          v19 = "tcp_remove_timer";
          v20 = 2082;
          v21 = v3 + 556;
          v22 = 1024;
          v23 = v15;
          _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_INFO, "%{public}s %{public}s retiring defunct socket from the TCP timer list (wantcnt=%d)", buf, 0x1Cu);
        }
      }
    }

    *(a1 + 88) &= ~0x40000000u;
    --*(v2 + 272);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }
}

void tcp_pmtud_revert_segment_size(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 690);
  if (!*(a1 + 690))
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v17 = 136446210;
    v18 = "tcp_pmtud_revert_segment_size";
    v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_1889BA000, v14, 16, "%{public}s Assert tp->t_pmtud_saved_maxopd > 0 failed", &v17, 12);
    if (__nwlog_should_abort())
    {
      __break(1u);
      return;
    }

    free(v16);
    v2 = *(a1 + 690);
  }

  *(a1 + 88) = *(a1 + 88) & 0xDBFFFFFF | 0x4000000;
  v3 = *(a1 + 200) - *(a1 + 160);
  *(a1 + 160) = v2;
  *(a1 + 200) = v3 + v2;
  v4 = *(tcp_cc_algo_list[*(a1 + 272)] + 40);
  if (v4)
  {
    v4(a1);
  }

  if (*(sysctls + 284) == 1 && (~*(a1 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(*(*(a1 + 80) + 224) + 369) & 0x40) != 0) && off_1ED4BF6E8)
  {
    off_1ED4BF6E8(a1);
  }

  *(a1 + 692) = 0;
  v5 = *(a1 + 1064);
  if (v5)
  {
    ++*(v5 + 1056);
  }

  v6 = **(*(a1 + 80) + 224);
  v7 = *(v6 + 448);
  if (v7)
  {
    v8 = *(v6 + 240);
    if ((*(v7 + 1224) == 255 || *(v7 + 1168) == 255) && *(v8 + 12) <= 5 && (*(v8 + 91) & 0x20) == 0 && (*(v7 + 9) & 0x80) != 0)
    {
      v9 = *(v8 + 160);
      v10 = *(v8 + 200) - v9;
      v11 = *(v7 + 72);
      if (v11 == 1200)
      {
        if (v9 <= 0x4B0)
        {
          goto LABEL_33;
        }

        v12 = 1200;
      }

      else
      {
        if (v11 != 512)
        {
          if (v11)
          {
            goto LABEL_33;
          }

          v12 = *(v8 + 740);
          if (!*(v8 + 740) || v9 >= v12)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        if (v9 < 0x201)
        {
          goto LABEL_33;
        }

        v12 = 512;
      }

      *(v8 + 740) = v9;
LABEL_32:
      *(v8 + 160) = v12;
      v9 = v12;
LABEL_33:
      *(v8 + 200) = v10 + v9;
      if (v9 == *(v8 + 740))
      {
        *(v8 + 740) = 0;
      }
    }
  }
}

uint64_t tcp_itimer(uint64_t result, uint64_t a2)
{
  *(result + 316) |= 0x10u;
  v4 = *(result + 104);
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      v4 = *v4;
      if (*(v5 + 240))
      {
        break;
      }

LABEL_4:
      if (!v4)
      {
        goto LABEL_34;
      }
    }

    do
    {
      v6 = *(v5 + 456);
      if (v6 == 0xFFFF)
      {
        goto LABEL_4;
      }

      v7 = *(v5 + 456);
      atomic_compare_exchange_strong_explicit((v5 + 456), &v7, v6 + 1, memory_order_relaxed, memory_order_relaxed);
    }

    while (v7 != v6);
    v8 = *(v5 + 224);
    (*(v8[1] + 16))(v8, 1, v2);
    if (in_pcb_checkstate(v5, 2, 1) == 0xFFFF || (*(a2 + 68) & 1) == 0 || (v9 = *(*v8 + 448)) == 0 || (v10 = *(*v8 + 240), *(v9 + 1224) != 255) && *(v9 + 1168) != 255 || *(v10 + 12) > 5 || (*(v10 + 91) & 0x20) != 0 || (*(v9 + 9) & 0x80) == 0)
    {
LABEL_3:
      result = (*(v8[1] + 24))(v8, 1, v2);
      goto LABEL_4;
    }

    v11 = *(v10 + 160);
    v12 = *(v9 + 72);
    switch(v12)
    {
      case 1200:
        if (v11 <= 0x4B0)
        {
          goto LABEL_31;
        }

        v13 = 1200;
        break;
      case 512:
        if (v11 < 0x201)
        {
          goto LABEL_31;
        }

        v13 = 512;
        break;
      case 0:
        v13 = *(v10 + 740);
        if (*(v10 + 740))
        {
          v14 = v11 >= v13;
        }

        else
        {
          v14 = 1;
        }

        v15 = *(v10 + 160);
        if (v14)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      default:
LABEL_31:
        v15 = *(v10 + 160);
LABEL_32:
        *(v10 + 200) = *(v10 + 200) - v11 + v15;
        if (v15 == *(v10 + 740))
        {
          *(v10 + 740) = 0;
        }

        goto LABEL_3;
    }

    *(v10 + 740) = v11;
LABEL_30:
    *(v10 + 160) = v13;
    v15 = v13;
    goto LABEL_32;
  }

LABEL_34:
  *(a2 + 68) &= ~1u;
  return result;
}

uint64_t tcp_heuristic_tfo_middlebox(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          *v11 = 136446466;
          *&v11[4] = "tcp_heuristic_tfo_middlebox";
          *&v11[12] = 2082;
          *&v11[14] = v5;
          v6 = v4;
          v7 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v6, v7, "%{public}s %{public}s ", v11, 0x16u);
        }
      }
    }
  }

  else if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    v8 = __nwlog_tcp_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = &unk_188A285CF;
      if (v3)
      {
        v9 = (v3 + 556);
      }

      *v11 = 136446466;
      *&v11[4] = "tcp_heuristic_tfo_middlebox";
      *&v11[12] = 2082;
      *&v11[14] = v9;
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  *(a1 + 996) |= 0x40u;
  *v11 = 0;
  *&v11[8] = 0;
  *&v11[16] = 1024;
  return (*(*(v2 + 2280) + 56))(*(*(a1 + 80) + 224), v11);
}

uint64_t tcp_heuristic_tfo_rst(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          *v13 = 136446466;
          *&v13[4] = "tcp_heuristic_tfo_rst";
          *&v13[12] = 2082;
          *&v13[14] = v5;
          v6 = v4;
          v7 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v6, v7, "%{public}s %{public}s ", v13, 0x16u);
        }
      }
    }
  }

  else if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    v8 = __nwlog_tcp_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = &unk_188A285CF;
      if (v3)
      {
        v9 = (v3 + 556);
      }

      *v13 = 136446466;
      *&v13[4] = "tcp_heuristic_tfo_rst";
      *&v13[12] = 2082;
      *&v13[14] = v9;
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  memset(v13, 0, 18);
  v10 = *(a1 + 998);
  if ((v10 & 0x40) == 0)
  {
    v11 = 64;
    if ((v10 & 0x10) == 0)
    {
      return (*(*(v2 + 2280) + 56))(*(*(a1 + 80) + 224), v13);
    }

    goto LABEL_20;
  }

  v13[17] = 32;
  v11 = 96;
  if ((v10 & 0x10) != 0)
  {
LABEL_20:
    v13[17] = v11;
  }

  return (*(*(v2 + 2280) + 56))(*(*(a1 + 80) + 224), v13);
}

uint64_t tcp_heuristic_ecn_loss(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          v11 = 136446466;
          v12 = "tcp_heuristic_ecn_loss";
          v13 = 2082;
          v14 = v5;
          v6 = v4;
          v7 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v6, v7, "%{public}s %{public}s ", &v11, 0x16u);
        }
      }
    }
  }

  else if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    v8 = __nwlog_tcp_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = &unk_188A285CF;
      if (v3)
      {
        v9 = (v3 + 556);
      }

      v11 = 136446466;
      v12 = "tcp_heuristic_ecn_loss";
      v13 = 2082;
      v14 = v9;
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  LOBYTE(v11) = 2;
  return (*(*(v2 + 2280) + 24))(*(*(a1 + 80) + 224), &v11);
}

uint64_t tcp_heuristic_ecn_droprst(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          v11 = 136446466;
          v12 = "tcp_heuristic_ecn_droprst";
          v13 = 2082;
          v14 = v5;
          v6 = v4;
          v7 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v6, v7, "%{public}s %{public}s ", &v11, 0x16u);
        }
      }
    }
  }

  else if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    v8 = __nwlog_tcp_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = &unk_188A285CF;
      if (v3)
      {
        v9 = (v3 + 556);
      }

      v11 = 136446466;
      v12 = "tcp_heuristic_ecn_droprst";
      v13 = 2082;
      v14 = v9;
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  LOBYTE(v11) = 4;
  return (*(*(v2 + 2280) + 24))(*(*(a1 + 80) + 224), &v11);
}

uint64_t tcp_heuristic_ecn_synrst(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 80) + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v2 || (*(v2 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v3 = __nwlog_tcp_log();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          v4 = &unk_188A285CF;
          if (v2)
          {
            v4 = (v2 + 556);
          }

          v11 = 136446466;
          v12 = "tcp_heuristic_ecn_synrst";
          v13 = 2082;
          v14 = v4;
          v5 = v3;
          v6 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v5, v6, "%{public}s %{public}s ", &v11, 0x16u);
        }
      }
    }
  }

  else if (!v2 || (*(v2 + 776) & 2) == 0)
  {
    v7 = __nwlog_tcp_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = &unk_188A285CF;
      if (v2)
      {
        v8 = (v2 + 556);
      }

      v11 = 136446466;
      v12 = "tcp_heuristic_ecn_synrst";
      v13 = 2082;
      v14 = v8;
      v5 = v7;
      v6 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  v9 = *(a1 + 80);
  LOBYTE(v11) = 32;
  return (*(*(v9 + 2280) + 24))(*(v9 + 224), &v11);
}

uint64_t tcp_heuristic_ecn_aggressive(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          v11 = 136446466;
          v12 = "tcp_heuristic_ecn_aggressive";
          v13 = 2082;
          v14 = v5;
          v6 = v4;
          v7 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v6, v7, "%{public}s %{public}s ", &v11, 0x16u);
        }
      }
    }
  }

  else if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    v8 = __nwlog_tcp_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = &unk_188A285CF;
      if (v3)
      {
        v9 = (v3 + 556);
      }

      v11 = 136446466;
      v12 = "tcp_heuristic_ecn_aggressive";
      v13 = 2082;
      v14 = v9;
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  LOBYTE(v11) = 16;
  return (*(*(v2 + 2280) + 24))(*(*(a1 + 80) + 224), &v11);
}

uint64_t tcp_cubic_switch_cc(uint64_t a1)
{
  result = tcp_cubic_cwnd_init_or_reset(a1);
  atomic_fetch_add(dword_1ED4BF7B0, 1u);
  return result;
}