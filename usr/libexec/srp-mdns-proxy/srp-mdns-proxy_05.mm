void dp_query_send_dns_response(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v243.iov_base = 0;
  v243.iov_len = 0;
  v3 = *(a1 + 104);
  v4 = *(a1 + 152);
  if (v4)
  {
    v5 = 512;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(a1 + 168) + 2);
  v7 = *(a1 + 200);
  *(a1 + 208) = 1;
  v8 = *(a1 + 8);
  if (!v8)
  {
    v53 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v54 = *(v2 + 4);
    *buf = 136446466;
    v245 = "dp_query_send_dns_response";
    v246 = 1024;
    *v247 = v54;
    v55 = "%{public}s: [Q%d] query->tracker NULL for query!";
    v56 = v53;
    v57 = 18;
    goto LABEL_154;
  }

  if (!*(v8 + 8))
  {
    v58 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v59 = *(v2 + 4);
    v60 = *(v8 + 4);
    *buf = 136446722;
    v245 = "dp_query_send_dns_response";
    v246 = 1024;
    *v247 = v59;
    *&v247[4] = 1024;
    *&v247[6] = v60;
    v55 = "%{public}s: [Q%d][TRK%d] query->tracker->connection NULL";
    v56 = v58;
    v57 = 24;
LABEL_154:
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, v55, buf, v57);
    return;
  }

  v9 = a2;
  v10 = a1 + 96;
  v11 = bswap32(v6) >> 16;
  v12 = *(v7 + 8);
  v210 = v7;
  if (v12 && *(v12 + 40) && (v4 & 1) == 0 && (*(v7 + 72) != 6 || **(v7 + 32)))
  {
    v239 = v11;
    v222 = 0;
    while (1)
    {
      dns_pointer_to_wire_(v10, v2 + 32, 2462);
      v13 = *(v2 + 152);
      v14 = v222;
      if (v222)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13 > 1;
      }

      if (v15)
      {
        v14 = "&query->enclosing_domain_pointer 1";
      }

      if (v13 >= 2)
      {
        if (!v14)
        {
          v14 = "dns_rrtype_soa";
        }

LABEL_44:
        if (v14)
        {
          v28 = 0;
        }

        else
        {
          v28 = v13 > 1;
        }

        if (v28)
        {
          v22 = "dns_qclass_in";
        }

        else
        {
          v22 = v14;
        }

LABEL_50:
        if (v22)
        {
          v29 = 0;
        }

        else
        {
          v29 = v13 > 1;
        }

        v25 = "ttl";
        if (!v29)
        {
          v25 = v22;
        }

        goto LABEL_59;
      }

      v16 = *(v2 + 104);
      if ((v16 + 2) >= *(v2 + 112))
      {
        break;
      }

      *(v2 + 104) = v16 + 1;
      *v16 = 0;
      v17 = *(v2 + 104);
      *(v2 + 104) = v17 + 1;
      *v17 = 6;
      v13 = *(v2 + 152);
      if (v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = v13 > 1;
      }

      if (v18)
      {
        v14 = "dns_rrtype_soa";
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }

      v19 = *(v2 + 104);
      if ((v19 + 2) >= *(v2 + 112))
      {
        *(v2 + 152) = 111;
        *(v2 + 144) = 2466;
        v30 = v14 == 0;
        v25 = "dns_qclass_in";
LABEL_57:
        if (!v30)
        {
          v25 = v14;
        }

        goto LABEL_59;
      }

      *(v2 + 104) = v19 + 1;
      *v19 = 0;
      v20 = *(v2 + 104);
      *(v2 + 104) = v20 + 1;
      *v20 = 1;
      v13 = *(v2 + 152);
      if (v14)
      {
        v21 = 0;
      }

      else
      {
        v21 = v13 > 1;
      }

      if (v21)
      {
        v22 = "dns_qclass_in";
      }

      else
      {
        v22 = v14;
      }

      if (v13 >= 2)
      {
        goto LABEL_50;
      }

      dns_u32_to_wire_(v10, 3600, 2467);
      v23 = *(v2 + 152);
      if (v22)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23 > 1;
      }

      v25 = "ttl";
      if (!v24)
      {
        v25 = v22;
      }

      if (v23 > 1)
      {
        goto LABEL_59;
      }

      v26 = *(v2 + 104);
      if ((v26 + 2) >= *(v2 + 112))
      {
        v27 = 111;
LABEL_146:
        *(v2 + 152) = v27;
        *(v2 + 144) = 2468;
LABEL_59:
        v31 = 1;
        goto LABEL_60;
      }

      if (*(v2 + 120))
      {
        v27 = v23 | 0x2C;
        goto LABEL_146;
      }

      v31 = 0;
      *(v2 + 120) = v26;
      *(v2 + 104) = v26 + 2;
LABEL_60:
      if ((v31 & (v25 == 0)) != 0)
      {
        v32 = "rdlength_begin ";
      }

      else
      {
        v32 = v25;
      }

      if (uuid_name)
      {
        dns_name_to_wire_(0, v10, &uuid_name, 2475);
        v33 = 2477;
        v34 = "uuid_name";
      }

      else
      {
        dns_name_to_wire_(0, v10, "ns", 2479);
        v33 = 2481;
        v34 = "ns";
      }

      if (v32)
      {
        v35 = 0;
      }

      else
      {
        v35 = *(a1 + 152) > 1u;
      }

      if (v35)
      {
        v32 = v34;
      }

      dns_pointer_to_wire_(v10, a1 + 32, v33);
      if (v32)
      {
        v36 = 0;
      }

      else
      {
        v36 = *(a1 + 152) > 1u;
      }

      if (v36)
      {
        v32 = "&query->enclosing_domain_pointer 2";
      }

      dns_name_to_wire_(0, v10, "postmaster", 2484);
      if (v32)
      {
        v37 = 0;
      }

      else
      {
        v37 = *(a1 + 152) > 1u;
      }

      if (v37)
      {
        v32 = "postmaster";
      }

      dns_pointer_to_wire_(v10, a1 + 32, 2486);
      if (v32)
      {
        v38 = 0;
      }

      else
      {
        v38 = *(a1 + 152) > 1u;
      }

      if (v38)
      {
        v32 = "&query->enclosing_domain_pointer 3";
      }

      dns_u32_to_wire_(v10, 0, 2487);
      v39 = *(a1 + 152);
      if (v32)
      {
        v40 = 0;
      }

      else
      {
        v40 = v39 > 1;
      }

      if (v40)
      {
        v32 = "serial";
      }

      if (v39 >= 2)
      {
        if (!v32)
        {
          v32 = "refresh";
        }

LABEL_122:
        if (v32)
        {
          v48 = 0;
        }

        else
        {
          v48 = v39 > 1;
        }

        if (v48)
        {
          v32 = "retry";
        }

LABEL_127:
        if (v32)
        {
          v49 = 0;
        }

        else
        {
          v49 = v39 > 1;
        }

        if (v49)
        {
          v32 = "expire";
        }

LABEL_132:
        if (v32)
        {
          v50 = 0;
        }

        else
        {
          v50 = v39 > 1;
        }

        if (v50)
        {
          v51 = "minimum";
        }

        else
        {
          v51 = v32;
        }

        v222 = v51;
LABEL_139:
        if ((v39 & 1) == 0)
        {
          goto LABEL_156;
        }

        goto LABEL_140;
      }

      dns_u32_to_wire_(v10, 7200, 2488);
      v39 = *(a1 + 152);
      if (v32)
      {
        v41 = 0;
      }

      else
      {
        v41 = v39 > 1;
      }

      if (v41)
      {
        v32 = "refresh";
      }

      if (v39 >= 2)
      {
        goto LABEL_122;
      }

      dns_u32_to_wire_(v10, 3600, 2489);
      v39 = *(a1 + 152);
      if (v32)
      {
        v42 = 0;
      }

      else
      {
        v42 = v39 > 1;
      }

      if (v42)
      {
        v32 = "retry";
      }

      if (v39 >= 2)
      {
        goto LABEL_127;
      }

      dns_u32_to_wire_(v10, 86400, 2490);
      v39 = *(a1 + 152);
      if (v32)
      {
        v43 = 0;
      }

      else
      {
        v43 = v39 > 1;
      }

      if (v43)
      {
        v32 = "expire";
      }

      if (v39 >= 2)
      {
        goto LABEL_132;
      }

      dns_u32_to_wire_(v10, 120, 2491);
      v39 = *(a1 + 152);
      if (v32)
      {
        v44 = 0;
      }

      else
      {
        v44 = v39 > 1;
      }

      if (v44)
      {
        v45 = "minimum";
      }

      else
      {
        v45 = v32;
      }

      v222 = v45;
      if (v39 > 1)
      {
        goto LABEL_139;
      }

      v46 = *(a1 + 120);
      if (v46)
      {
        v47 = *(a1 + 104) - v46 - 2;
        *v46 = BYTE1(v47);
        *(*(a1 + 120) + 1) = v47;
        *(a1 + 120) = 0;
        if ((*(a1 + 152) & 1) == 0)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v52 = v39 | 0x2C;
        *(a1 + 152) = v52;
        *(a1 + 144) = 2492;
        if ((v52 & 1) == 0)
        {
LABEL_156:
          v2 = a1;
          *(*(a1 + 168) + 8) = 256;
          goto LABEL_158;
        }
      }

LABEL_140:
      v2 = a1;
      *(a1 + 104) = v3;
      if ((*(*(*(a1 + 8) + 8) + 424) & 0x20) == 0)
      {
        v5 = 512;
LABEL_158:
        v9 = a2;
        LOWORD(v11) = v239;
LABEL_159:
        v211 = v11 & 0xFF7F | v5 | 0x400;
        v209 = v5 != 0;
        goto LABEL_160;
      }

      embiggen(a1);
      *(a1 + 152) = 0;
    }

    *(v2 + 152) = 111;
    *(v2 + 144) = 2464;
    v30 = v14 == 0;
    v25 = "dns_rrtype_soa";
    goto LABEL_57;
  }

  if (*(v7 + 72) == 6)
  {
    v222 = 0;
    goto LABEL_159;
  }

  v209 = v4;
  v222 = 0;
  v211 = v5 | v11 & 0xFBFF | 0x80;
LABEL_160:
  v61 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v62 = *(v2 + 4);
    if (v7)
    {
      v63 = *(v7 + 64);
    }

    else
    {
      v63 = 0;
    }

    v64 = bswap32(*(*(v2 + 64) + 88));
    v65 = *(v2 + 104);
    v66 = *(v2 + 96) + 12;
    v67 = *(*(v2 + 168) + 3) & 0xF;
    *buf = 136448258;
    v245 = "dp_query_send_dns_response";
    v246 = 1024;
    *v247 = v62;
    *&v247[4] = 1024;
    *&v247[6] = v63;
    LOWORD(v248) = 1024;
    *(&v248 + 2) = HIWORD(v64);
    WORD3(v248) = 2048;
    *(&v248 + 1) = v65;
    v249 = 2048;
    v250 = v66;
    v251 = 2048;
    v252 = v65 - v66;
    v253 = 1024;
    v254 = v67;
    v255 = 2082;
    v256 = v9;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d][QID %x] ->p %p ->lim %p len %zd rcode %d %{public}s", buf, 0x4Cu);
  }

  v68 = (v6 >> 8) & 0xF;
  if (*(v2 + 152) > 1u || v68)
  {
    v167 = *(v2 + 168);
    v74 = v2;
LABEL_374:
    v167[1] = bswap32(v211 & 0x7ECF | 0xFFFF8000) >> 16;
    if (v68)
    {
      v171 = __rev16(v211 & 0x7EC0 | 0x8000 | v68);
      goto LABEL_494;
    }

    goto LABEL_377;
  }

  v69 = *(v2 + 8);
  v70 = *(v2 + 200);
  if (v70)
  {
    v71 = *(v70 + 32);
    if (v69)
    {
      goto LABEL_169;
    }

LABEL_369:
    *(*(v2 + 168) + 2) = *(*(v2 + 168) + 2) & 0xF0FF | 0x200;
    v168 = global_os_log;
    v74 = v2;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_372;
    }

    *buf = 136446723;
    v245 = "dp_dns_queries_finished";
    v246 = 2160;
    *v247 = 1752392040;
    *&v247[8] = 2081;
    *&v248 = v71;
    v169 = "%{public}s: NULL tracker on %{private, mask.hash}s";
LABEL_509:
    _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_ERROR, v169, buf, 0x20u);
LABEL_506:
    v74 = v2;
    goto LABEL_372;
  }

  v71 = "(null)";
  if (!v69)
  {
    goto LABEL_369;
  }

LABEL_169:
  v212 = *(v2 + 8);
  v72 = *(v69 + 16);
  if (!v72)
  {
    *(*(v2 + 168) + 2) = *(*(v2 + 168) + 2) & 0xF0FF | 0x200;
    v168 = global_os_log;
    v74 = v2;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_372;
    }

    *buf = 136446723;
    v245 = "dp_dns_queries_finished";
    v246 = 2160;
    *v247 = 1752392040;
    *&v247[8] = 2081;
    *&v248 = v71;
    v169 = "%{public}s: NULL tracker->dns_queries on %{private, mask.hash}s";
    goto LABEL_509;
  }

  v73 = *(v2 + 88);
  v74 = v2;
  if (v73 == 1)
  {
    goto LABEL_372;
  }

  v75 = 0;
  v76 = v72;
  do
  {
    if (!*(v76 + 168))
    {
      v207 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v245 = "dp_dns_queries_finished";
        _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_ERROR, "%{public}s: null response on match query", buf, 0xCu);
      }

LABEL_505:
      *(*(v2 + 168) + 2) = *(*(v2 + 168) + 2) & 0xF0FF | 0x200;
      goto LABEL_506;
    }

    if (*(v76 + 64) == *(v2 + 64))
    {
      if (*(v76 + 208) != 1)
      {
        return;
      }

      ++v75;
    }

    v76 = *(v76 + 16);
  }

  while (v76);
  if (v75 != v73)
  {
    return;
  }

  v77 = 0;
  v225 = 0;
  count = 0;
  v221 = 0;
  v74 = 0;
  do
  {
    if (*(v72 + 64) == *(v2 + 64))
    {
      dns_wire_parse_((v72 + 176), *(v72 + 168), *(v72 + 104) - *(v72 + 168));
      if ((v78 & 1) == 0)
      {
        goto LABEL_505;
      }

      v79 = *(v72 + 176);
      if (!v74)
      {
        v74 = v72;
        v77 = *(v72 + 176);
      }

      v225 += v79[1];
      count += v79[2];
      LODWORD(v221) = v79[4] + v221;
      HIDWORD(v221) += v79[3];
    }

    v72 = *(v72 + 16);
  }

  while (v72);
  v218 = (v77 + 16);
  v219 = (v77 + 48);
  v216 = (v77 + 12);
  v217 = (v77 + 40);
  v214 = (v77 + 8);
  v215 = (v77 + 32);
  v213 = (v77 + 24);
  v220 = (v77 + 4);
  while (2)
  {
    v80 = *(v212 + 16);
    if (v80)
    {
      v81 = 0;
      v240 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      do
      {
        if (*(v2 + 64) != v80[8])
        {
          break;
        }

        if (v72 > 1)
        {
          if (v72 == 2)
          {
            v109 = v80[22];
            v83 = (v109 + 40);
            v240 = *(v109 + 12);
            v81 = v216;
            v84 = v217;
            v82 = HIDWORD(v221);
            if (!HIDWORD(v221))
            {
              goto LABEL_261;
            }
          }

          else
          {
            if (v72 != 3)
            {
              goto LABEL_199;
            }

            v86 = v80[22];
            v83 = (v86 + 48);
            v240 = *(v86 + 16);
            v81 = v218;
            v84 = v219;
            v82 = v221;
            if (!v221)
            {
              goto LABEL_261;
            }
          }
        }

        else
        {
          if (!v72)
          {
            v87 = v80[22];
            v83 = (v87 + 24);
            v240 = *(v87 + 4);
            v84 = v213;
            v82 = v225;
            v81 = v220;
LABEL_199:
            if (!v82)
            {
              goto LABEL_261;
            }

            goto LABEL_200;
          }

          if (v72 != 1)
          {
            goto LABEL_199;
          }

          v85 = v80[22];
          v83 = (v85 + 32);
          v240 = *(v85 + 8);
          v81 = v214;
          v84 = v215;
          v82 = count;
          if (!count)
          {
            goto LABEL_261;
          }
        }

LABEL_200:
        if (v84 == v83)
        {
          v106 = v83;
          v107 = malloc_type_calloc(v82, 0x40uLL, 0x2AEA17BDuLL);
          if (!v107)
          {
            v208 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v245 = "dp_dns_queries_finished";
              v246 = 2048;
              *v247 = v82;
              *&v247[8] = 2048;
              *&v248 = 64;
              _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
            }

            __break(1u);
          }

          v108 = v107;
          memcpy(v107, *v84, v240 << 6);
          bzero(*v84, v240 << 6);
          if (*v84)
          {
            free(*v84);
          }

          *v84 = v108;
          v83 = v106;
        }

        else
        {
          v231 = v80;
          v233 = v84;
          v227 = v81;
          v229 = v83;
          v88 = v81->i32[0];
          if (v240)
          {
            v89 = 0;
            v90 = *v83;
            v235 = *v233;
            v237 = *v233 + 16;
            while (1)
            {
              v91 = &v90[64 * v89];
              if (v88)
              {
                break;
              }

LABEL_250:
              if (v88 >= v82)
              {
                v105 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446978;
                  v245 = "dp_move_rrs";
                  v246 = 1024;
                  *v247 = v88;
                  *&v247[4] = 1024;
                  *&v247[6] = v82;
                  LOWORD(v248) = 1024;
                  *(&v248 + 2) = v89;
                  _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "%{public}s: first_count %d unexpectedly equal to count %d with i = %d", buf, 0x1Eu);
                }
              }

              else
              {
                v101 = *v91;
                v102 = *(v91 + 1);
                v103 = *(v91 + 3);
                v104 = &v235[64 * v88];
                *(v104 + 2) = *(v91 + 2);
                *(v104 + 3) = v103;
                *v104 = v101;
                *(v104 + 1) = v102;
                ++v88;
                *(v91 + 4) = 0;
              }

LABEL_254:
              if (++v89 == v240)
              {
                goto LABEL_255;
              }
            }

            v92 = v88;
            v93 = v237;
            while (2)
            {
              if (*(v93 - 4) != *(v91 + 4) || *(v93 - 3) != *(v91 + 5))
              {
                goto LABEL_232;
              }

              v94 = dns_names_equal(*(v93 - 2), *v91);
              if (v94)
              {
                v95 = v72 == 0;
              }

              else
              {
                v95 = 1;
              }

              if (v95)
              {
                goto LABEL_231;
              }

              v96 = *(v93 - 4);
              if (v96 > 0xF)
              {
                if (*(v93 - 4) <= 0x18u)
                {
                  if (v96 != 16)
                  {
                    if (v96 == 24)
                    {
                      goto LABEL_232;
                    }

                    goto LABEL_234;
                  }

                  v97 = *v93;
                  if (v97 != v91[16])
                  {
                    goto LABEL_232;
                  }

                  v98 = v93[1];
                  v99 = *(v91 + 3);
                }

                else
                {
                  switch(v96)
                  {
                    case 0x19u:
                      if (dns_keys_rdata_equal((v93 - 2), &v90[64 * v89]))
                      {
                        goto LABEL_254;
                      }

                      goto LABEL_232;
                    case 0x1Cu:
                      if (*v93 == *(v91 + 2) && v93[1] == *(v91 + 3))
                      {
                        goto LABEL_254;
                      }

                      goto LABEL_232;
                    case 0x21u:
                      if (*(v93 + 4) != *(v91 + 12) || *(v93 + 5) != *(v91 + 13) || *(v93 + 6) != *(v91 + 14))
                      {
                        goto LABEL_232;
                      }

LABEL_230:
                      LOBYTE(v94) = dns_names_equal(*v93, *(v91 + 2));
LABEL_231:
                      if (v94)
                      {
                        goto LABEL_254;
                      }

LABEL_232:
                      v93 += 8;
                      if (!--v92)
                      {
                        goto LABEL_250;
                      }

                      continue;
                  }

LABEL_234:
                  v97 = *(v93 + 4);
                  if (v97 != *(v91 + 12))
                  {
                    goto LABEL_232;
                  }

                  v98 = *v93;
                  v99 = *(v91 + 2);
                }

                if (!memcmp(v98, v99, v97))
                {
                  goto LABEL_254;
                }

                goto LABEL_232;
              }

              break;
            }

            if (*(v93 - 4) > 4u)
            {
              if (v96 == 5 || v96 == 12)
              {
                goto LABEL_230;
              }
            }

            else
            {
              if (v96 == 1)
              {
                if (*v93 == *(v91 + 4))
                {
                  goto LABEL_254;
                }

                goto LABEL_232;
              }

              if (v96 == 2)
              {
                goto LABEL_230;
              }

              if (!*(v93 - 4))
              {
                goto LABEL_254;
              }
            }

            goto LABEL_234;
          }

LABEL_255:
          v83 = v229;
          v227->i32[0] = v88;
          v81 = v227;
          v2 = a1;
          v80 = v231;
          v84 = v233;
        }

LABEL_261:
        v80 = v80[2];
      }

      while (v80);
    }

    LODWORD(v72) = v72 + 1;
    if (v72 != 4)
    {
      continue;
    }

    break;
  }

  while (2)
  {
    v110 = 0;
    v111 = *(v74 + 168);
    v112 = *(v74 + 176);
    v113 = v111 + 12 + *(v74 + 184);
    *(v74 + 96) = v111;
    *(v74 + 104) = v111 + 12;
    *(v74 + 160) = 0;
    *(v74 + 120) = 0;
    *(v74 + 128) = 0;
    v238 = (v112 + 48);
    v241 = (v112 + 16);
    v234 = (v112 + 40);
    v236 = (v112 + 12);
    *(v74 + 112) = v113;
    v230 = (v112 + 32);
    v232 = (v112 + 8);
    v226 = (v112 + 24);
    v228 = (v112 + 4);
    v114 = 1;
    while (2)
    {
      v115 = v241;
      if (v110 == 2)
      {
        v115 = v236;
      }

      v116 = v234;
      if (v110 != 2)
      {
        v116 = v238;
      }

      v117 = v232;
      if (!v110)
      {
        v117 = v228;
      }

      v118 = v230;
      if (!v110)
      {
        v118 = v226;
      }

      if (v110 <= 1)
      {
        v119 = v118;
      }

      else
      {
        v117 = v115;
        v119 = v116;
      }

      v120 = *v117;
      if (v120 >= 1)
      {
        v121 = 0;
        v122 = 0;
        v123 = *v119;
        v124 = v120 << 6;
        while (1)
        {
          if (*(v74 + 152))
          {
            goto LABEL_354;
          }

          v125 = *(v74 + 104);
          v126 = v123 + v121;
          dns_concatenate_name_to_wire_(v74 + 96, *(v123 + v121), 0, 0, 661);
          v127 = *(v74 + 152);
          if (v127 > 1)
          {
            goto LABEL_283;
          }

          v128 = *(v74 + 104);
          if ((v128 + 2) < *(v74 + 112))
          {
            break;
          }

          v127 = 111;
          *(v74 + 152) = 111;
          *(v74 + 144) = 662;
          if (v114)
          {
            goto LABEL_348;
          }

LABEL_286:
          if (v127 <= 1)
          {
            dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 12), 667);
            v127 = *(v74 + 152);
            if (v127 <= 1)
            {
              v134 = *(v74 + 104);
              if ((v134 + 2) >= *(v74 + 112))
              {
                v127 = 111;
                goto LABEL_294;
              }

              if (*(v74 + 120))
              {
                v127 |= 0x2Cu;
LABEL_294:
                *(v74 + 152) = v127;
                *(v74 + 144) = 668;
                goto LABEL_295;
              }

              *(v74 + 120) = v134;
              *(v74 + 104) = v134 + 2;
            }
          }

LABEL_295:
          v135 = *(v126 + 8);
          if (v135 <= 0xB)
          {
            if (*(v126 + 8) <= 1u)
            {
              if (!*(v126 + 8))
              {
                v154 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  v245 = "dns_rr_to_wire";
                  v137 = v154;
                  v138 = "%{public}s: invalid rr!";
                  goto LABEL_332;
                }

LABEL_333:
                *(v74 + 152) = v127 & 1 | 0x2C;
                goto LABEL_353;
              }

              if (v127 > 1)
              {
                goto LABEL_345;
              }

              v152 = *(v74 + 104);
              if ((v152 + 1) > *(v74 + 112))
              {
                *(v74 + 152) = 111;
                v153 = 706;
                goto LABEL_352;
              }

              *v152 = *(v123 + v121 + 16);
              v159 = *(v74 + 104) + 4;
              goto LABEL_360;
            }

            if (v135 == 2 || v135 == 5)
            {
LABEL_317:
              v149 = *(v123 + v121 + 16);
              v150 = v74 + 96;
              v151 = 695;
LABEL_344:
              dns_concatenate_name_to_wire_(v150, v149, 0, 0, v151);
              goto LABEL_345;
            }

            if (v135 == 6)
            {
              dns_concatenate_name_to_wire_(v74 + 96, *(v123 + v121 + 16), 0, 0, 682);
              dns_concatenate_name_to_wire_(v74 + 96, *(v123 + v121 + 24), 0, 0, 683);
              dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 32), 684);
              dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 36), 685);
              dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 40), 686);
              dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 44), 687);
              dns_u32_to_wire_(v74 + 96, *(v123 + v121 + 48), 688);
              goto LABEL_345;
            }

            goto LABEL_334;
          }

          if (*(v126 + 8) <= 0x18u)
          {
            switch(v135)
            {
              case 0xCu:
                goto LABEL_317;
              case 0x10u:
                if (v127 <= 1)
                {
                  v155 = *(v123 + v121 + 16);
                  v156 = *(v74 + 104);
                  if (v156 + v155 > *(v74 + 112))
                  {
                    *(v74 + 152) = 111;
                    v153 = 725;
                    goto LABEL_352;
                  }

                  v160 = *(v123 + v121 + 24);
                  goto LABEL_359;
                }

                goto LABEL_345;
              case 0x18u:
                v136 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  v245 = "dns_rr_to_wire";
                  v137 = v136;
                  v138 = "%{public}s: signature not valid here!";
                  goto LABEL_332;
                }

                goto LABEL_333;
            }

            goto LABEL_334;
          }

          if (v135 == 25)
          {
            v158 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v245 = "dns_rr_to_wire";
              v137 = v158;
              v138 = "%{public}s: key not valid here!";
LABEL_332:
              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_ERROR, v138, buf, 0xCu);
              v127 = *(v74 + 152);
            }

            goto LABEL_333;
          }

          if (v135 != 28)
          {
            if (v135 == 33)
            {
              v139 = v123 + v121;
              if (v127 <= 1)
              {
                v140 = *(v74 + 104);
                if ((v140 + 2) >= *(v74 + 112))
                {
                  *(v74 + 152) = 111;
                  v161 = 699;
                  goto LABEL_342;
                }

                v141 = *(v139 + 24);
                *(v74 + 104) = v140 + 1;
                *v140 = HIBYTE(v141);
                v142 = *(v74 + 104);
                *(v74 + 104) = v142 + 1;
                *v142 = v141;
                if (*(v74 + 152) <= 1u)
                {
                  v143 = *(v74 + 104);
                  if ((v143 + 2) >= *(v74 + 112))
                  {
                    *(v74 + 152) = 111;
                    v161 = 700;
                    goto LABEL_342;
                  }

                  v144 = *(v123 + v121 + 26);
                  *(v74 + 104) = v143 + 1;
                  *v143 = HIBYTE(v144);
                  v145 = *(v74 + 104);
                  *(v74 + 104) = v145 + 1;
                  *v145 = v144;
                  if (*(v74 + 152) <= 1u)
                  {
                    v146 = *(v74 + 104);
                    if ((v146 + 2) < *(v74 + 112))
                    {
                      v147 = *(v123 + v121 + 28);
                      *(v74 + 104) = v146 + 1;
                      *v146 = HIBYTE(v147);
                      v148 = *(v74 + 104);
                      *(v74 + 104) = v148 + 1;
                      *v148 = v147;
                      goto LABEL_343;
                    }

                    *(v74 + 152) = 111;
                    v161 = 701;
LABEL_342:
                    *(v74 + 144) = v161;
                  }
                }
              }

LABEL_343:
              v149 = *(v139 + 16);
              v150 = v74 + 96;
              v151 = 702;
              goto LABEL_344;
            }

LABEL_334:
            if (v127 <= 1)
            {
              v155 = *(v123 + v121 + 24);
              v156 = *(v74 + 104);
              if (v156 + v155 > *(v74 + 112))
              {
                *(v74 + 152) = 111;
                v153 = 678;
                goto LABEL_352;
              }

              v160 = *(v123 + v121 + 16);
LABEL_359:
              memcpy(v156, v160, v155);
              v159 = *(v74 + 104) + v155;
LABEL_360:
              *(v74 + 104) = v159;
              goto LABEL_345;
            }

            goto LABEL_345;
          }

          if (v127 <= 1)
          {
            v157 = *(v74 + 104);
            if ((v157 + 1) > *(v74 + 112))
            {
              *(v74 + 152) = 111;
              v153 = 710;
              goto LABEL_352;
            }

            *v157 = *(v123 + v121 + 16);
            v159 = *(v74 + 104) + 16;
            goto LABEL_360;
          }

LABEL_345:
          v162 = *(v74 + 152);
          if (v162 > 1)
          {
            goto LABEL_353;
          }

          v163 = *(v74 + 120);
          if (!v163)
          {
            *(v74 + 152) = v162 | 0x2C;
            v153 = 728;
LABEL_352:
            *(v74 + 144) = v153;
LABEL_353:
            *(v74 + 104) = v125;
LABEL_354:
            v165 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              v166 = *(v123 + v121 + 8);
              *buf = 136446978;
              v245 = "dns_message_rrs_to_wire";
              v246 = 1024;
              *v247 = v110;
              *&v247[4] = 1024;
              *&v247[6] = v122;
              LOWORD(v248) = 1024;
              *(&v248 + 2) = v166;
              _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "%{public}s: no space in message for rr %d/%d %d", buf, 0x1Eu);
            }

            goto LABEL_356;
          }

          v164 = *(v74 + 104) - v163 - 2;
          *v163 = BYTE1(v164);
          *(*(v74 + 120) + 1) = v164;
          *(v74 + 120) = 0;
          v127 = *(v74 + 152);
LABEL_348:
          if (v127 > 1 || (v127 & 1) != 0)
          {
            goto LABEL_353;
          }

LABEL_356:
          ++v122;
          v121 += 64;
          if (v124 == v121)
          {
            goto LABEL_363;
          }
        }

        v129 = *(v126 + 8);
        *(v74 + 104) = v128 + 1;
        *v128 = HIBYTE(v129);
        v130 = *(v74 + 104);
        *(v74 + 104) = v130 + 1;
        *v130 = v129;
        v127 = *(v74 + 152);
        if (v127 <= 1)
        {
          v131 = *(v74 + 104);
          if ((v131 + 2) >= *(v74 + 112))
          {
            v127 = 111;
            *(v74 + 152) = 111;
            *(v74 + 144) = 663;
            if (v114)
            {
              goto LABEL_353;
            }

            goto LABEL_295;
          }

          v132 = *(v123 + v121 + 10);
          *(v74 + 104) = v131 + 1;
          *v131 = HIBYTE(v132);
          v133 = *(v74 + 104);
          *(v74 + 104) = v133 + 1;
          *v133 = v132;
          v127 = *(v74 + 152);
        }

LABEL_283:
        if (v114)
        {
          goto LABEL_348;
        }

        goto LABEL_286;
      }

LABEL_363:
      v114 = 0;
      if (++v110 != 4)
      {
        continue;
      }

      break;
    }

    if ((*(v74 + 152) & 1) != 0 && (*(*(*(v74 + 8) + 8) + 424) & 0x20) != 0)
    {
      embiggen(v74);
      *(v74 + 152) = 0;
      continue;
    }

    break;
  }

  *(*(v74 + 168) + 4) = vrev16_s8(vmovn_s32(*v220));
  v2 = a1;
LABEL_372:
  v167 = *(v74 + 168);
  v170 = v167[1];
  v10 = v74 + 96;
  v3 = *(v74 + 104);
  if ((v170 & 0xF00) != 0)
  {
    v68 = (v170 >> 8) & 0xF;
    goto LABEL_374;
  }

  v167[1] = __rev16(v211 & 0x7ECF | 0x8000);
LABEL_377:
  if (*(v74 + 92) != 1)
  {
    goto LABEL_483;
  }

  while (2)
  {
    v172 = *(v10 + 56);
    if (v172 > 1)
    {
      goto LABEL_424;
    }

    v173 = *(v10 + 8);
    if ((v173 + 1) >= *(v10 + 16))
    {
      v172 = 111;
      *(v10 + 56) = 111;
      *(v10 + 48) = 2606;
LABEL_424:
      v174 = v222;
      if (v222)
      {
        v191 = 0;
      }

      else
      {
        v191 = v172 > 1;
      }

      if (v191)
      {
        v174 = "Root label";
      }

      goto LABEL_429;
    }

    *(v10 + 8) = v173 + 1;
    *v173 = 0;
    v172 = *(v10 + 56);
    v174 = v222;
    if (v222)
    {
      v175 = 0;
    }

    else
    {
      v175 = v172 > 1;
    }

    if (v175)
    {
      v174 = "Root label";
    }

    if (v172 > 1)
    {
LABEL_429:
      if (v174)
      {
        v192 = 0;
      }

      else
      {
        v192 = v172 > 1;
      }

      if (v192)
      {
        v174 = "dns_rrtype_opt";
      }

LABEL_434:
      if (v174)
      {
        v193 = 0;
      }

      else
      {
        v193 = v172 > 1;
      }

      if (v193)
      {
        v174 = "UDP Payload size";
      }

LABEL_439:
      if (v174)
      {
        v194 = 0;
      }

      else
      {
        v194 = v172 > 1;
      }

      if (v194)
      {
        v174 = "extended-rcode";
      }

LABEL_444:
      if (v174)
      {
        v195 = 0;
      }

      else
      {
        v195 = v172 > 1;
      }

      if (v195)
      {
        v174 = "EDNS version 0";
      }

LABEL_449:
      if (v174)
      {
        v196 = 0;
      }

      else
      {
        v196 = v172 > 1;
      }

      if (v196)
      {
        v174 = "No extended flags";
      }

      break;
    }

    v176 = *(v10 + 8);
    if ((v176 + 2) >= *(v10 + 16))
    {
      *(v10 + 56) = 111;
      *(v10 + 48) = 2607;
      if (!v174)
      {
        v174 = "dns_rrtype_opt";
      }

      goto LABEL_464;
    }

    *(v10 + 8) = v176 + 1;
    *v176 = 0;
    v177 = *(v10 + 8);
    *(v10 + 8) = v177 + 1;
    *v177 = 41;
    v172 = *(v10 + 56);
    if (v174)
    {
      v178 = 0;
    }

    else
    {
      v178 = v172 > 1;
    }

    if (v178)
    {
      v174 = "dns_rrtype_opt";
    }

    if (v172 > 1)
    {
      goto LABEL_434;
    }

    v179 = *(v10 + 8);
    if ((v179 + 2) >= *(v10 + 16))
    {
      *(v10 + 56) = 111;
      *(v10 + 48) = 2608;
      if (!v174)
      {
        v174 = "UDP Payload size";
      }

      goto LABEL_464;
    }

    *(v10 + 8) = v179 + 1;
    *v179 = 16;
    v180 = *(v10 + 8);
    *(v10 + 8) = v180 + 1;
    *v180 = 0;
    v172 = *(v10 + 56);
    if (v174)
    {
      v181 = 0;
    }

    else
    {
      v181 = v172 > 1;
    }

    if (v181)
    {
      v174 = "UDP Payload size";
    }

    if (v172 > 1)
    {
      goto LABEL_439;
    }

    v182 = *(v10 + 8);
    if ((v182 + 1) >= *(v10 + 16))
    {
      *(v10 + 56) = 111;
      *(v10 + 48) = 2609;
      if (!v174)
      {
        v174 = "extended-rcode";
      }

      goto LABEL_464;
    }

    *(v10 + 8) = v182 + 1;
    *v182 = 0;
    v172 = *(v10 + 56);
    if (v174)
    {
      v183 = 0;
    }

    else
    {
      v183 = v172 > 1;
    }

    if (v183)
    {
      v174 = "extended-rcode";
    }

    if (v172 > 1)
    {
      goto LABEL_444;
    }

    v184 = *(v10 + 8);
    if ((v184 + 1) >= *(v10 + 16))
    {
      *(v10 + 56) = 111;
      *(v10 + 48) = 2610;
      if (!v174)
      {
        v174 = "EDNS version 0";
      }

      goto LABEL_464;
    }

    *(v10 + 8) = v184 + 1;
    *v184 = 0;
    v172 = *(v10 + 56);
    if (v174)
    {
      v185 = 0;
    }

    else
    {
      v185 = v172 > 1;
    }

    if (v185)
    {
      v174 = "EDNS version 0";
    }

    if (v172 > 1)
    {
      goto LABEL_449;
    }

    v186 = *(v10 + 8);
    if ((v186 + 2) >= *(v10 + 16))
    {
      *(v10 + 56) = 111;
      *(v10 + 48) = 2611;
      if (!v174)
      {
        v174 = "No extended flags";
      }

      goto LABEL_464;
    }

    *(v10 + 8) = v186 + 1;
    *v186 = 0;
    v187 = *(v10 + 8);
    *(v10 + 8) = v187 + 1;
    *v187 = 0;
    v172 = *(v10 + 56);
    if (v174)
    {
      v188 = 0;
    }

    else
    {
      v188 = v172 > 1;
    }

    if (v188)
    {
      v174 = "No extended flags";
    }

    if (v172 <= 1)
    {
      v189 = *(v10 + 8);
      if ((v189 + 2) < *(v10 + 16))
      {
        *(v10 + 8) = v189 + 1;
        *v189 = 0;
        v190 = *(v10 + 8);
        *(v10 + 8) = v190 + 1;
        *v190 = 0;
        v172 = *(v10 + 56);
        break;
      }

      *(v10 + 56) = 111;
      *(v10 + 48) = 2612;
LABEL_464:
      if (v174)
      {
        v198 = v174;
      }

      else
      {
        v198 = "No payload";
      }

      v222 = v198;
LABEL_460:
      *(v74 + 104) = v3;
      if ((*(*(*(v74 + 8) + 8) + 424) & 0x20) == 0)
      {
        goto LABEL_482;
      }

      embiggen(v74);
      *(v74 + 152) = 0;
      continue;
    }

    break;
  }

  if (v174)
  {
    v197 = 0;
  }

  else
  {
    v197 = v172 > 1;
  }

  if (v197)
  {
    v174 = "No payload";
  }

  v222 = v174;
  if (v172)
  {
    goto LABEL_460;
  }

  *(*(v74 + 168) + 10) = 256;
LABEL_482:
  v2 = a1;
LABEL_483:
  if (*(v10 + 56) >= 2u)
  {
    v199 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      if (v2)
      {
        v200 = *(v2 + 4);
      }

      else
      {
        v200 = 0;
      }

      v201 = v210;
      if (v210)
      {
        v201 = *(v210 + 64);
      }

      v202 = bswap32(*(*(v74 + 64) + 88));
      *buf = 136447234;
      v245 = "dp_query_send_dns_response";
      v246 = 1024;
      *v247 = v200;
      *&v247[4] = 1024;
      *&v247[6] = v201;
      LOWORD(v248) = 1024;
      *(&v248 + 2) = HIWORD(v202);
      WORD3(v248) = 2080;
      *(&v248 + 1) = v222;
      _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_ERROR, "%{public}s: [Q%d][QU%d][QID%x] failed on %s", buf, 0x28u);
    }

    v167 = *(v74 + 168);
    v171 = v167[1] & 0xF0FF;
    if (!v209)
    {
      v171 |= 0x200u;
    }
  }

  else
  {
    v167 = *(v74 + 168);
    v171 = v167[1] & 0xF0FF;
  }

LABEL_494:
  v167[1] = v171;
  v203 = *(v74 + 104) - v167;
  v243.iov_base = v167;
  v243.iov_len = v203;
  v204 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v205 = *(v2 + 4);
    }

    else
    {
      v205 = 0;
    }

    v206 = v210;
    if (v210)
    {
      v206 = *(v210 + 64);
    }

    *buf = 136446978;
    v245 = "dp_query_send_dns_response";
    v246 = 1024;
    *v247 = v205;
    *&v247[4] = 1024;
    *&v247[6] = v206;
    LOWORD(v248) = 2048;
    *(&v248 + 2) = v203;
    _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] (len %zd)", buf, 0x22u);
  }

  ioloop_send_message(*(*(v74 + 8) + 8), *(v74 + 64), &v243);
  dnssd_query_cancel(v74);
}

void served_domain_free(void *a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v12 = 136446723;
    v13 = "served_domain_free";
    v14 = 2160;
    v15 = 1752392040;
    v16 = 2081;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: served domain removed - domain name: %{private, mask.hash}s", &v12, 0x20u);
  }

  v4 = a1[5];
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      do
      {
        v6 = *v5;
        free(v5);
        v5 = v6;
      }

      while (v6);
      v4 = a1[5];
    }

    if (*(v4 + 8))
    {
      free(*(v4 + 8));
      v4 = a1[5];
      *(v4 + 8) = 0;
    }

    free(v4);
    a1[5] = 0;
  }

  v7 = a1[4];
  if (v7)
  {
    do
    {
      v8 = *v7;
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a1[3];
  if (v9)
  {
    do
    {
      v10 = *v9;
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = a1[2];
  if (v11)
  {
    free(v11);
  }

  free(a1);
}

uint64_t dp_start_question(uint64_t a1)
{
  sdRef = 0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  if (!v2)
  {
LABEL_10:
    v14 = *(a1 + 68);
    if (v14 != -5)
    {
LABEL_16:
      v16 = *(a1 + 56);
      v17 = *(a1 + 72);
      v18 = *(a1 + 74);
      if (!&_ne_tracker_check_is_hostname_blocked || (v17 != 1 ? (v19 = v17 == 28) : (v19 = 1), !v19 ? (v20 = v17 == 255) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), v18 == 1 ? (v22 = v21 == 0) : (v22 = 1), v22))
      {
        should_save_stacktrace = 0;
      }

      else
      {
        v33 = ne_tracker_check_is_hostname_blocked();
        if (v33 == 1)
        {
          v6 = 4294901726;
          goto LABEL_61;
        }

        should_save_stacktrace = ne_tracker_should_save_stacktrace();
      }

      v6 = ConnectToServer(&sdRef, v16, 8, handle_query_response, dns_question_callback, a1);
      if (v6)
      {
        goto LABEL_61;
      }

      if (v3)
      {
        v24 = v3;
      }

      else
      {
        v24 = &unk_1000860E8;
      }

      v25 = strlen(v24);
      v53 = v25 + 13;
      os_unfair_lock_lock(&g_defaults_lock);
      os_unfair_lock_unlock(&g_defaults_lock);
      if (should_save_stacktrace)
      {
        v53 = v25 + 18;
      }

      *buf = 0;
      v26 = create_hdr(8, &v53, buf, *(sdRef + 1) != 0, sdRef);
      v27 = *buf;
      v51 = v53;
      **buf = HIBYTE(v16);
      v27[1] = BYTE2(v16);
      v27[2] = BYTE1(v16);
      v27[3] = v16;
      v27[4] = HIBYTE(v14);
      v27[5] = BYTE2(v14);
      v27[6] = BYTE1(v14);
      v27[7] = v14;
      v28 = strlen(v24) + 1;
      memcpy(v27 + 8, v24, v28);
      v29 = &v27[v28 + 8];
      *v29 = BYTE1(v17);
      v29[1] = v17;
      v29[2] = BYTE1(v18);
      v30 = v29 + 4;
      v29[3] = v18;
      *buf = v29 + 4;
      if (should_save_stacktrace)
      {
        if (&v27[v28 + 8] != -4 && &v27[v51] >= v30 && v51 - (v28 + 12) >= 5)
        {
          *(v29 + 1) = 16779264;
          v29[8] = 1;
          v30 = v29 + 9;
        }

        *buf = v30;
        v26->i32[2] |= 2u;
      }

      v31 = deliver_request(v26, sdRef);
      v6 = v31;
      if (!&_ne_tracker_check_is_hostname_blocked || v31 || ((should_save_stacktrace ^ 1) & 1) != 0)
      {
        if (v31)
        {
          if (v31 != -65555)
          {
            goto LABEL_60;
          }

          if (_should_return_noauth_error_s_once != -1)
          {
            dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
          }

          if (_should_return_noauth_error_s_should == 1)
          {
LABEL_60:
            DNSServiceRefDeallocate(sdRef);
            sdRef = 0;
LABEL_61:
            v37 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              v38 = *(a1 + 64);
              *buf = 136447235;
              *&buf[4] = "dp_start_question";
              v55 = 1024;
              v56 = v38;
              v57 = 2160;
              v58 = 1752392040;
              v59 = 2081;
              v60 = v3;
              v61 = 1024;
              LODWORD(v62) = v6;
              v9 = "%{public}s: [QU%d] DNSServiceQueryRecord failed for '%{private, mask.hash}s': %d";
              v10 = v37;
              v11 = 44;
              goto LABEL_63;
            }

            return v6;
          }
        }
      }

      else
      {
        v32 = *(sdRef + 15);
        if (v32)
        {
          free(v32);
          *(sdRef + 15) = 0;
        }

        *(sdRef + 15) = ne_tracker_copy_current_stacktrace();
      }

      v40 = global_os_log;
      v41 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
      v42 = sdRef;
      if (v41)
      {
        v43 = *(a1 + 64);
        v44 = *(a1 + 24);
        *buf = 136446978;
        *&buf[4] = "dp_start_question";
        v55 = 1024;
        v56 = v43;
        v57 = 2048;
        v58 = v44;
        v59 = 2048;
        v60 = sdRef;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] txn %p new sdref %p", buf, 0x26u);
        v42 = sdRef;
      }

      *(a1 + 24) = ioloop_dnssd_txn_add_(v42, a1, dp_question_context_release, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 532);
      v45 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *(a1 + 60);
        *buf = 136447490;
        *&buf[4] = "dp_start_question";
        v55 = 1024;
        v56 = v46;
        v57 = 2048;
        v58 = a1;
        v59 = 2080;
        v60 = "question";
        v61 = 2080;
        v62 = "dnssd-proxy.c";
        v63 = 1024;
        LODWORD(v64) = 534;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
      }

      v47 = *(a1 + 60);
      if (v47)
      {
        v48 = v47 + 1;
        *(a1 + 60) = v47 + 1;
        v49 = global_os_log;
        if (v47 + 1 >= 10001)
        {
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136447490;
            *&buf[4] = "dp_start_question";
            v55 = 1024;
            v56 = v48;
            v57 = 2048;
            v58 = a1;
            v59 = 2080;
            v60 = "question";
            v61 = 2080;
            v62 = "dnssd-proxy.c";
            v63 = 1024;
            LODWORD(v64) = 534;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
          }

          abort();
        }
      }

      else
      {
        ++question_created;
        *(a1 + 60) = 1;
        v49 = global_os_log;
      }

      v6 = 0;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(a1 + 64);
        *buf = 136447235;
        *&buf[4] = "dp_start_question";
        v55 = 1024;
        v56 = v50;
        v57 = 2160;
        v58 = 1752392040;
        v59 = 2081;
        v60 = v3;
        v61 = 1024;
        LODWORD(v62) = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] DNSServiceQueryRecord started for '%{private, mask.hash}s': %d", buf, 0x2Cu);
        return 0;
      }

      return v6;
    }

    v14 = dp_start_question_en0_ifindex;
    if (!dp_start_question_en0_ifindex)
    {
      v14 = if_nametoindex("en0");
      dp_start_question_en0_ifindex = v14;
      if (!v14)
      {
        v15 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          return 4294901743;
        }

        *buf = 136446210;
        *&buf[4] = "dp_start_question";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: getting en0 ifindex failed!", buf, 0xCu);
        v14 = dp_start_question_en0_ifindex;
      }
    }

    if (v14 >= 1)
    {
      goto LABEL_16;
    }

    return 4294901743;
  }

  v4 = strlen(*(a1 + 32));
  v5 = v4;
  if (v2[5])
  {
    if (v4 - 249 <= 0xFFFFFFFFFFFFFEFELL)
    {
      v6 = 4294901756;
      v7 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 64);
        *buf = 136446979;
        *&buf[4] = "dp_start_question";
        v55 = 1024;
        v56 = v8;
        v57 = 2160;
        v58 = 1752392040;
        v59 = 2081;
        v60 = v65;
        v9 = "%{public}s: [QU%d] question name %{private, mask.hash}s is too long for .local.";
        v10 = v7;
        v11 = 38;
LABEL_63:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
        return v6;
      }

      return v6;
    }

    __memcpy_chk();
    *&v65[v5] = 0x2E6C61636F6C2ELL;
    goto LABEL_9;
  }

  v12 = v2[2];
  v13 = strlen(v12) + 1;
  if (v13 + v5 < 0x101)
  {
    __memcpy_chk();
    memcpy(&v65[v5], v12, v13);
LABEL_9:
    v3 = v65;
    goto LABEL_10;
  }

  v6 = 4294901756;
  v34 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    v35 = *(a1 + 64);
    v36 = v2[1];
    *buf = 136447491;
    *&buf[4] = "dp_start_question";
    v55 = 1024;
    v56 = v35;
    v57 = 2160;
    v58 = 1752392040;
    v59 = 2081;
    v60 = v65;
    v61 = 2160;
    v62 = 1752392040;
    v63 = 2081;
    v64 = v36;
    v9 = "%{public}s: [QU%d] question name %{private, mask.hash}s is too long for %{private, mask.hash}s.";
    v10 = v34;
    v11 = 58;
    goto LABEL_63;
  }

  return v6;
}

void dp_query_context_release(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1)
  {
    v3 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "dp_query_context_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "query";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-proxy.c";
    v10 = 1024;
    v11 = 3375;
    v5 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v3 = global_os_log;
  if (v2 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "dp_query_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "query";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-proxy.c";
    v10 = 1024;
    v11 = 3375;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "dp_query_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "query";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-proxy.c";
    v10 = 1024;
    v11 = 3375;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v6, 0x36u);
    v2 = *a1;
  }

  *a1 = v2 - 1;
  if (v2 == 1)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136447234;
      v7 = "dp_query_context_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "query";
      *&v9[18] = 2080;
      *&v9[20] = "dnssd-proxy.c";
      *&v9[28] = 1024;
      *&v9[30] = 3375;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++dnssd_query_finalized;
    dnssd_query_finalize(a1);
  }
}

void dp_query_wakeup(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = *(v2 + 32);
  v4 = strlen(v3);
  if (*(v2 + 40))
  {
    v5 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 4);
      v7 = *(v2 + 64);
      *buf = 136447235;
      v28 = "dp_query_wakeup";
      v29 = 1024;
      v30 = v6;
      v31 = 1024;
      v32 = v7;
      v33 = 2160;
      v34 = 1752392040;
      v35 = 2081;
      v36 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%{public}s: [Q%d][QU%d] answers present, but dp_query_wakeup reached for name %{private, mask.hash}s", buf, 0x2Cu);
    }
  }

  else
  {
    *(v2 + 76) = 1;
  }

  v8 = *(v2 + 8);
  if (v8)
  {
    if (*(v8 + 40))
    {
      v9 = 8;
    }

    else
    {
      v9 = strlen(*(v8 + 16)) + 1;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9 + v4 >= 0x101)
  {
    v10 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 4);
      v12 = *(v2 + 64);
      *buf = 136446722;
      v28 = "dp_query_wakeup";
      v29 = 1024;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: [Q%d][QU%d] no space to construct name.", buf, 0x18u);
    }

    dnssd_query_cancel(a1);
    return;
  }

  __memcpy_chk();
  if (v8)
  {
    *&buf[v4] = 0x2E6C61636F6C2ELL;
  }

  v13 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *a1;
    v21 = 136447490;
    v22 = "dp_query_wakeup";
    v23 = 1024;
    *v24 = v14;
    *&v24[4] = 2048;
    *&v24[6] = a1;
    *&v24[14] = 2080;
    *&v24[16] = "query";
    *&v24[24] = 2080;
    *&v24[26] = "dnssd-proxy.c";
    v25 = 1024;
    v26 = 3232;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", &v21, 0x36u);
  }

  v15 = *a1;
  if (*a1)
  {
    v16 = v15 + 1;
    *a1 = v15 + 1;
    if (v15 + 1 >= 10001)
    {
      v17 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_37;
      }

      v21 = 136447490;
      v22 = "dp_query_wakeup";
      v23 = 1024;
      *v24 = v16;
      *&v24[4] = 2048;
      *&v24[6] = a1;
      *&v24[14] = 2080;
      *&v24[16] = "query";
      *&v24[24] = 2080;
      *&v24[26] = "dnssd-proxy.c";
      v25 = 1024;
      v26 = 3232;
      v18 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      goto LABEL_36;
    }
  }

  else
  {
    ++dnssd_query_created;
    *a1 = 1;
  }

  dp_query_send_dns_response(a1, "query wakeup");
  dp_question_cache_remove_queries(v2);
  v19 = *a1;
  if (!*a1)
  {
    v17 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    v21 = 136447490;
    v22 = "dp_query_wakeup";
    v23 = 1024;
    *v24 = 0;
    *&v24[4] = 2048;
    *&v24[6] = a1;
    *&v24[14] = 2080;
    *&v24[16] = "query";
    *&v24[24] = 2080;
    *&v24[26] = "dnssd-proxy.c";
    v25 = 1024;
    v26 = 3235;
    v18 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_36;
  }

  v17 = global_os_log;
  if (v19 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    v21 = 136447490;
    v22 = "dp_query_wakeup";
    v23 = 1024;
    *v24 = v19;
    *&v24[4] = 2048;
    *&v24[6] = a1;
    *&v24[14] = 2080;
    *&v24[16] = "query";
    *&v24[24] = 2080;
    *&v24[26] = "dnssd-proxy.c";
    v25 = 1024;
    v26 = 3235;
    v18 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v18, &v21, 0x36u);
LABEL_37:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136447490;
    v22 = "dp_query_wakeup";
    v23 = 1024;
    *v24 = v19;
    *&v24[4] = 2048;
    *&v24[6] = a1;
    *&v24[14] = 2080;
    *&v24[16] = "query";
    *&v24[24] = 2080;
    *&v24[26] = "dnssd-proxy.c";
    v25 = 1024;
    v26 = 3235;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v21, 0x36u);
    v19 = *a1;
  }

  *a1 = v19 - 1;
  if (v19 == 1)
  {
    v20 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136447234;
      v22 = "dp_query_wakeup";
      v23 = 2048;
      *v24 = a1;
      *&v24[8] = 2080;
      *&v24[10] = "query";
      *&v24[18] = 2080;
      *&v24[20] = "dnssd-proxy.c";
      *&v24[28] = 1024;
      *&v24[30] = 3235;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v21, 0x30u);
    }

    ++dnssd_query_finalized;
    dnssd_query_finalize(a1);
  }
}

BOOL dp_handle_server_disconnect(int a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "dp_handle_server_disconnect";
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: status %d", &v5, 0x12u);
  }

  dp_iterate_questions(dp_void_question, 0);
  v3 = discovery_restart_wakeup;
  if (!discovery_restart_wakeup)
  {
    v3 = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 634);
    discovery_restart_wakeup = v3;
  }

  return ioloop_add_wake_event(v3, 0, dp_restart_all_questions, 0, 0x3E8u);
}

uint64_t dp_iterate_questions(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = questions_without_domain;
  if (questions_without_domain)
  {
    while (1)
    {
      result = v3(v4, a2);
      if (result)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v5 = served_domains;
    if (served_domains)
    {
      while (1)
      {
        v6 = v5[6];
        if (v6)
        {
          break;
        }

LABEL_8:
        v5 = *v5;
        if (!v5)
        {
          return result;
        }
      }

      while (1)
      {
        result = v3(v6, a2);
        if (result)
        {
          break;
        }

        v6 = *v6;
        if (!v6)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t dp_restart_question(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    dp_start_question(a1);
  }

  return 0;
}

uint64_t dp_void_question(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 64);
      v10 = 136446722;
      v11 = "dp_void_question";
      v12 = 1024;
      v13 = v4;
      v14 = 2048;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] question->txn = %p", &v10, 0x1Cu);
      v2 = *(a1 + 24);
    }

    ioloop_dnssd_txn_cancel(v2);
    ioloop_dnssd_txn_release_(*(a1 + 24), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 602);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      goto LABEL_16;
    }

    do
    {
      v7 = *(v6 + 192);
      if (*(v6 + 72))
      {
        dp_query_reply_from_cache(a1, v6, 1);
      }

      v6 = v7;
    }

    while (v7);
    v5 = *(a1 + 40);
    if (v5)
    {
LABEL_16:
      do
      {
        v8 = *v5;
        dp_answer_free(v5);
        v5 = v8;
      }

      while (v8);
    }

    *(a1 + 40) = 0;
  }

  return 0;
}

void dp_question_context_release(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 60);
  if (!v2)
  {
    v3 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "dp_question_context_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "question";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-proxy.c";
    v10 = 1024;
    v11 = 440;
    v5 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v3 = global_os_log;
  if (v2 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "dp_question_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "question";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-proxy.c";
    v10 = 1024;
    v11 = 440;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "dp_question_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "question";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-proxy.c";
    v10 = 1024;
    v11 = 440;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v6, 0x36u);
    v2 = *(a1 + 60);
  }

  *(a1 + 60) = v2 - 1;
  if (v2 == 1)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136447234;
      v7 = "dp_question_context_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "question";
      *&v9[18] = 2080;
      *&v9[20] = "dnssd-proxy.c";
      *&v9[28] = 1024;
      *&v9[30] = 440;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++question_finalized;
    question_finalize(a1);
  }
}

void dnssd_proxy_ifaddr_callback(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 == 2)
  {
    return;
  }

  v5 = a5;
  v7 = if_nametoindex(a1);
  v8 = a2[1];
  v9 = &unk_1000A9000;
  v10 = global_os_log;
  v11 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (v8 == 30)
  {
    v12 = a3;
    if (!v11)
    {
      goto LABEL_34;
    }

    v17 = a2[8];
    if ((v17 & 0xFE) == 0xFC)
    {
      v18 = "ULA: ";
    }

    else if (v17 == 254 && (a2[9] & 0xC0) == 0x80)
    {
      v18 = "LUA: ";
    }

    else
    {
      v18 = "";
      if ((v17 & 0xE0) == 0x20)
      {
        v18 = "GUA: ";
      }
    }

    v25 = *(a3 + 8);
    if ((v25 & 0xFE) == 0xFC)
    {
      v26 = "ULA: ";
    }

    else if (v25 == 254 && (*(a3 + 9) & 0xC0) == 0x80)
    {
      v26 = "LUA: ";
    }

    else if ((v25 & 0xE0) == 0x20)
    {
      v26 = "GUA: ";
    }

    else
    {
      v26 = "";
    }

    v27 = "removed";
    *buf = 136449027;
    *v84 = "dnssd_proxy_ifaddr_callback";
    *&v84[8] = 2082;
    *&v84[10] = a1;
    if (!v5)
    {
      v27 = "added";
    }

    *&v84[18] = 2082;
    *&v84[20] = v18;
    *&v84[28] = 2160;
    *&v84[30] = 1752392040;
    *&v84[38] = 1041;
    *&v84[40] = 16;
    *&v84[44] = 2097;
    *&v84[46] = a2 + 8;
    *&v84[54] = 2082;
    *&v84[56] = v26;
    *&v84[64] = 2160;
    *&v84[66] = 1752392040;
    *&v84[74] = 1041;
    *v85 = 16;
    *&v85[4] = 2097;
    *&v85[6] = a3 + 8;
    v86 = 1024;
    v87 = v7;
    v88 = 2082;
    v89 = v27;
    v14 = "%{public}s: Interface %{public}s address %{public}s%{private, mask.hash, network:in6_addr}.16P mask %{public}s%{private, mask.hash, network:in6_addr}.16P index %d %{public}s";
    v15 = v10;
    v16 = 110;
    goto LABEL_33;
  }

  if (v8 != 2)
  {
    if (v11)
    {
      v19 = "removed";
      *buf = 136447234;
      *v84 = "dnssd_proxy_ifaddr_callback";
      *&v84[8] = 2082;
      if (!v5)
      {
        v19 = "added";
      }

      *&v84[10] = a1;
      *&v84[18] = 1024;
      *&v84[20] = v8;
      *&v84[24] = 1024;
      *&v84[26] = v7;
      *&v84[30] = 2082;
      *&v84[32] = v19;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Interface %{public}s address type %d index %d %{public}s", buf, 0x2Cu);
      v10 = global_os_log;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136446210;
    *v84 = "dnssd_proxy_ifaddr_callback";
    v20 = "%{public}s: ignoring non IP address";
    v21 = buf;
    v22 = v10;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 12;
    goto LABEL_124;
  }

  v12 = a3;
  if (v11)
  {
    v13 = "removed";
    *buf = 136448515;
    *v84 = "dnssd_proxy_ifaddr_callback";
    *&v84[8] = 2082;
    *&v84[10] = a1;
    *&v84[18] = 2160;
    if (!v5)
    {
      v13 = "added";
    }

    *&v84[20] = 1752392040;
    *&v84[28] = 1041;
    *&v84[30] = 4;
    *&v84[34] = 2097;
    *&v84[36] = a2 + 4;
    *&v84[44] = 2160;
    *&v84[46] = 1752392040;
    *&v84[54] = 1041;
    *&v84[56] = 4;
    *&v84[60] = 2097;
    *&v84[62] = a3 + 4;
    *&v84[70] = 1024;
    *&v84[72] = v7;
    *v85 = 2082;
    *&v85[2] = v13;
    v14 = "%{public}s: Interface %{public}s address %{private, mask.hash, network:in_addr}.4P mask %{private, mask.hash, network:in_addr}.4P index %d %{public}s";
    v15 = v10;
    v16 = 90;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
  }

LABEL_34:
  v81 = a2;
  v28 = served_domains;
  v79 = v5;
  if (!served_domains)
  {
    v32 = 1;
    v33 = a1;
LABEL_96:
    if (!v5 && (v32 & 1) != 0)
    {
      v64 = add_new_served_domain_with_interface(v33, v81, v12);
      if (!v64)
      {
        v73 = v9[22];
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136446466;
        *v84 = "dnssd_proxy_ifaddr_callback";
        *&v84[8] = 2082;
        *&v84[10] = a1;
        v20 = "%{public}s: failed to add new served domain - interface name: %{public}s";
LABEL_123:
        v21 = buf;
        v22 = v73;
        v23 = OS_LOG_TYPE_ERROR;
        v24 = 22;
        goto LABEL_124;
      }

      v65 = v64;
      if (!dnssd_hardwired_setup_for_served_domain(v64))
      {
        v66 = v9[22];
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446723;
          *v84 = "dnssd_proxy_ifaddr_callback";
          *&v84[8] = 2160;
          *&v84[10] = 1752392040;
          *&v84[18] = 2081;
          *&v84[20] = a1;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%{public}s: failed to setup hardwired response for newly created served domain - domain: %{private, mask.hash}s", buf, 0x20u);
        }

        if (!v65[6])
        {
          served_domain_free(v65);
        }
      }

      v67 = v9[22];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = v65[1];
        *buf = 136446723;
        *v84 = "dnssd_proxy_ifaddr_callback";
        *&v84[8] = 2160;
        *&v84[10] = 1752392040;
        *&v84[18] = 2081;
        *&v84[20] = v68;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}s: New served domain created and hardwired response created - domain: %{private, mask.hash}s", buf, 0x20u);
      }
    }

    if (!is_valid_address_to_publish(v81))
    {
      return;
    }

    if (dnssd_hardwired_add_or_remove_address_in_domain("", my_name, v81, v79 == 0))
    {
      if (!dnssd_hardwired_add_or_remove_address_in_domain(&local_host_name, "openthread.thread.home.arpa.", v81, v79 == 0))
      {
        v73 = v9[22];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *v84 = "dnssd_hardwired_process_addr_change";
          *&v84[8] = 2082;
          *&v84[10] = "openthread.thread.home.arpa.";
          v20 = "%{public}s: failed to update address record for domain - domain: %{public}s";
          goto LABEL_123;
        }

        return;
      }

      if (!dnssd_hardwired_add_or_remove_address_in_domain(&local_host_name, "default.service.arpa.", v81, v79 == 0))
      {
        v73 = v9[22];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *v84 = "dnssd_hardwired_process_addr_change";
          *&v84[8] = 2082;
          *&v84[10] = "default.service.arpa.";
          v20 = "%{public}s: failed to update address record for domain - domain: %{public}s";
          goto LABEL_123;
        }

        return;
      }

      if (!dnssd_hardwired_add_or_remove_address_in_domain(&local_host_name, "local.", v81, v79 == 0))
      {
        v73 = v9[22];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *v84 = "dnssd_hardwired_process_addr_change";
          *&v84[8] = 2082;
          *&v84[10] = "local.";
          v20 = "%{public}s: failed to update address record for domain - domain: %{public}s";
          goto LABEL_123;
        }

        return;
      }

      v69 = v81[1];
      if (v69 == 2)
      {
        v70 = v79 == 0;
        v71 = "in-addr.arpa.";
        goto LABEL_127;
      }

      if (v69 == 30)
      {
        v70 = v79 == 0;
        v71 = "ip6.arpa.";
LABEL_127:
        dnssd_hardwired_add_or_remove_ptr_in_domain(v71, v81, v12, v70);
        return;
      }

      snprintf(buf, 0x2EuLL, "Address type %d", v81[1]);
      v74 = v9[22];
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *v90 = 136446723;
      v91 = "dnssd_hardwired_process_addr_change";
      v92 = 2160;
      *v93 = 1752392040;
      *&v93[8] = 2081;
      v94 = buf;
      v20 = "%{public}s: Skipping non IPv6/IPv4 address - addr:%{private, mask.hash}s";
      v21 = v90;
      v22 = v74;
      v23 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v72 = v9[22];
      if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136446723;
      *v84 = "dnssd_hardwired_process_addr_change";
      *&v84[8] = 2160;
      *&v84[10] = 1752392040;
      *&v84[18] = 2081;
      *&v84[20] = my_name;
      v20 = "%{public}s: failed to update address record for domain - domain: %{private, mask.hash}s";
      v21 = buf;
      v22 = v72;
      v23 = OS_LOG_TYPE_ERROR;
    }

    v24 = 32;
LABEL_124:
    _os_log_impl(&_mh_execute_header, v22, v23, v20, v21, v24);
    return;
  }

  if (v5)
  {
    v29 = "Removing";
  }

  else
  {
    v29 = "Adding";
  }

  v30 = "removed";
  if (!v5)
  {
    v30 = "added";
  }

  v77 = v30;
  v78 = v29;
  v31 = &served_domains;
  v32 = 1;
  v33 = a1;
  while (1)
  {
    v34 = v28[5];
    if (!v34 || !*v34 || strcmp(*(v34 + 8), v33))
    {
      goto LABEL_86;
    }

    v35 = v9[22];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v28[1];
      *buf = 136446979;
      *v84 = "dnssd_proxy_ifaddr_callback";
      *&v84[8] = 2082;
      *&v84[10] = v78;
      *&v84[18] = 2160;
      *&v84[20] = 1752392040;
      *&v84[28] = 2081;
      *&v84[30] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s address from the served domain - domain: %{private, mask.hash}s", buf, 0x2Au);
      v34 = v28[5];
    }

    if (v5)
    {
      v37 = v9;
      *&v84[4] = *v81;
      *&v84[16] = *(v81 + 12);
      *&v84[32] = *v12;
      *&v84[44] = *(v12 + 12);
      v39 = (v34 + 16);
      v38 = *(v34 + 16);
      if (v38)
      {
        v40 = v84[5];
        v41 = v84[33];
        v42 = *&v84[8];
        v43 = *&v84[36];
        do
        {
          if (*(v38 + 9) == v40)
          {
            v44 = *(v38 + 37);
            if (v40 == v44)
            {
              if (v40 == v41)
              {
                if (v40 == 2)
                {
                  if (*(v38 + 3) == v42 && *(v38 + 10) == v43)
                  {
                    goto LABEL_78;
                  }
                }

                else if (v38[2] == *&v84[12] && v38[3] == *&v84[20] && *(v38 + 44) == *&v84[40] && *(v38 + 52) == *&v84[48])
                {
LABEL_78:
                  *v39 = *v38;
                  free(v38);
                  v51 = 1;
                  v9 = v37;
                  goto LABEL_79;
                }
              }

              else
              {
                v49 = v37[22];
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  *v90 = 136446722;
                  v91 = "interface_addr_t_equal";
                  v92 = 1024;
                  *v93 = v40;
                  *&v93[4] = 1024;
                  *&v93[6] = v41;
                  v47 = v49;
                  v48 = "%{public}s: B address and mask are no in the same sa_family - address family: %d, mask family: %d";
                  goto LABEL_71;
                }
              }
            }

            else
            {
              v76 = v37[22];
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                *v90 = 136446722;
                v91 = "interface_addr_t_equal";
                v92 = 1024;
                *v93 = v40;
                *&v93[4] = 1024;
                *&v93[6] = v44;
                v47 = v76;
                v48 = "%{public}s: A address and mask are not in the same sa_family - address family: %d, mask family: %d";
LABEL_71:
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v48, v90, 0x18u);
              }
            }
          }

          v39 = *v39;
          v38 = *v39;
        }

        while (*v39);
      }

      v9 = v37;
      v50 = v37[22];
      v51 = 0;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v52 = *(v34 + 8);
        *v90 = 136446466;
        v91 = "interface_remove_old_address";
        v92 = 2082;
        *v93 = v52;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s: address not found in the interface address list - interface name: %{public}s", v90, 0x16u);
        v51 = 0;
      }

LABEL_79:
      v5 = v79;
      v12 = a3;
      v33 = a1;
    }

    else
    {
      v53 = malloc_type_calloc(1uLL, 0x40uLL, 0x960046A2uLL);
      if (!v53)
      {
        v75 = v9[22];
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *v84 = "interface_add_new_address";
          *&v84[8] = 2048;
          *&v84[10] = 1;
          *&v84[18] = 2048;
          *&v84[20] = 64;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
        }

        __break(1u);
        return;
      }

      v54 = *v81;
      *(v53 + 20) = *(v81 + 12);
      *(v53 + 8) = v54;
      v55 = *v12;
      v53[3] = *(v12 + 12);
      *(v53 + 36) = v55;
      *v53 = 0;
      v56 = (v34 + 16);
      do
      {
        v57 = v56;
        v56 = *v56;
      }

      while (v56);
      *v57 = v53;
      v51 = 1;
    }

    v58 = v9[22];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *v84 = "interface_process_addr_change";
      *&v84[8] = 2082;
      *&v84[10] = v77;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}s: address added/removed successfully - event: %{public}s", buf, 0x16u);
    }

    if ((v51 & 1) == 0)
    {
      break;
    }

    if (v5 == 1 && (v59 = v28[5], !*(v59 + 16)))
    {
      v60 = v9[22];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v28[1];
        v62 = *(v59 + 8);
        *buf = 136446979;
        *v84 = "dnssd_proxy_ifaddr_callback";
        *&v84[8] = 2160;
        *&v84[10] = 1752392040;
        *&v84[18] = 2081;
        *&v84[20] = v61;
        *&v84[28] = 2082;
        *&v84[30] = v62;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing served domain with 0 address - domain: %{private, mask.hash}s, interface name: %{public}s", buf, 0x2Au);
      }

      v63 = *v28;
      *v31 = *v28;
      if (!v28[6])
      {
        served_domain_free(v28);
        v32 = 0;
        goto LABEL_87;
      }

      v32 = 0;
      v28 = v63;
      if (!v63)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v32 = 0;
LABEL_86:
      v31 = *v31;
LABEL_87:
      v28 = *v31;
      if (!*v31)
      {
        goto LABEL_96;
      }
    }
  }

  v73 = v9[22];
  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *v84 = "dnssd_proxy_ifaddr_callback";
    *&v84[8] = 2082;
    *&v84[10] = v78;
    v20 = "%{public}s: failed to %{public}s new interface address";
    goto LABEL_123;
  }
}

void *add_new_served_domain_with_interface(char *__s2, __int128 *a2, __int128 *a3)
{
  v6 = strcmp("local only pseudo interface", __s2);
  if (v6 && !strcmp("all locally-discoverable services pseudo interface", __s2))
  {
    v8 = 0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = strcmp("infrastructure interface", __s2) == 0;
  }

  v9 = malloc_type_calloc(1uLL, 0x18uLL, 0xBE6E3160uLL);
  if (!v9)
  {
    v10 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v34 = 136446722;
    v35 = "add_new_served_domain_with_interface";
    v36 = 2048;
    v37 = 1;
    v38 = 2048;
    v39 = 24;
    v30 = "%{public}s: strict_calloc(%zu, %zu) failed";
    goto LABEL_58;
  }

  if (!__s2)
  {
    v10 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v34 = 136446210;
      v35 = "strict_strdup";
      v30 = "%{public}s: strict_strdup called with NULL string";
LABEL_46:
      v31 = v10;
      v32 = 12;
LABEL_47:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, &v34, v32);
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v10 = v9;
  v11 = strdup(__s2);
  if (!v11)
  {
    v10 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v34 = 136446210;
      v35 = "strict_strdup";
      v30 = "%{public}s: strdup() failed";
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  v10[1].isa = v11;
  if (v6)
  {
    v12 = v7;
  }

  else
  {
    v12 = 1;
  }

  if (v6)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  v14 = v12 | v8;
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = -5;
  }

  if ((v14 & 1) == 0)
  {
    v15 = if_nametoindex(__s2);
  }

  LODWORD(v10->isa) = v15;
  BYTE4(v10->isa) = 0;
  if (!a2)
  {
    goto LABEL_23;
  }

  if (!a3)
  {
    goto LABEL_35;
  }

  v16 = malloc_type_calloc(1uLL, 0x40uLL, 0xDF16F05EuLL);
  if (!v16)
  {
    v10 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v34 = 136446722;
    v35 = "add_new_served_domain_with_interface";
    v36 = 2048;
    v37 = 1;
    v38 = 2048;
    v39 = 64;
    v30 = "%{public}s: strict_calloc(%zu, %zu) failed";
LABEL_58:
    v31 = v10;
    v32 = 32;
    goto LABEL_47;
  }

  v10[2].isa = v16;
  v17 = *a2;
  *(v16 + 20) = *(a2 + 12);
  *(v16 + 8) = v17;
  isa = v10[2].isa;
  v19 = *a3;
  *(isa + 3) = *(a3 + 12);
  *(isa + 36) = v19;
LABEL_23:
  v20 = "local.";
  if (v7)
  {
    v20 = "default.service.arpa.";
  }

  if (v6)
  {
    v6 = v20;
  }

  else
  {
    v6 = "openthread.thread.home.arpa.";
  }

  if ((v14 & 1) == 0)
  {
    v23 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v34 = 136446723;
    v35 = "add_new_served_domain_with_interface";
    v36 = 2160;
    v37 = 1752392040;
    v38 = 2081;
    v39 = __s2;
    v24 = "%{public}s: unexpected served domain %{private, mask.hash}s";
    v25 = v23;
    v26 = 32;
    goto LABEL_34;
  }

  v21 = new_served_domain(v10, v6);
  a3 = global_os_log;
  if (v21)
  {
    v22 = v21;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136446722;
      v35 = "add_new_served_domain_with_interface";
      v36 = 2082;
      v37 = v6;
      v38 = 2082;
      v39 = __s2;
      _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEFAULT, "%{public}s: new served domain added with interface - served domain: %{public}s, interface name: %{public}s", &v34, 0x20u);
    }

    return v22;
  }

LABEL_49:
  if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
  {
    v34 = 136446979;
    v35 = "add_new_served_domain_with_interface";
    v36 = 2082;
    v37 = __s2;
    v38 = 2160;
    v39 = 1752392040;
    v40 = 2081;
    v41 = v6;
    v24 = "%{public}s: new_served_domain failed - interface name: %{public}s, served domain: %{private, mask.hash}s";
    v25 = a3;
    v26 = 42;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v24, &v34, v26);
  }

LABEL_35:
  v27 = v10[2].isa;
  if (v27)
  {
    if (!*v27 || (v33 = global_os_log, !os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR)) || (v34 = 136446210, v35 = "add_new_served_domain_with_interface", _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s: multiple addresses added for this new interface", &v34, 0xCu), (v27 = v10[2].isa) != 0))
    {
      free(v27);
      v10[2].isa = 0;
    }
  }

  v28 = v10[1].isa;
  if (v28)
  {
    free(v28);
  }

  free(v10);
  return 0;
}

BOOL dnssd_hardwired_setup_for_served_domain(uint64_t a1)
{
  memset(v22, 0, 512);
  if (*(a1 + 40))
  {
    memset(v24, 0, 512);
    dnssd_hardwired_add(a1, "_dns-llq._udp", *(a1 + 16), 0, (v24 | 0xC), 0x21u);
    dnssd_hardwired_add(a1, "_dns-llq-tls._tcp", *(a1 + 16), 0, (v24 | 0xC), 0x21u);
    dnssd_hardwired_add(a1, "_dns-update._udp", *(a1 + 16), 0, (v24 | 0xC), 0x21u);
    dnssd_hardwired_add(a1, "_dns-update-tls._tcp", *(a1 + 16), 0, (v24 | 0xC), 0x21u);
    dnssd_hardwired_add(a1, "_dns-query-tls._udp", *(a1 + 16), 0, (v24 | 0xC), 0x21u);
    dnssd_hardwired_add(a1, "lb._dns-sd._udp", *(a1 + 16), 0, (v24 | 0xC), 0xCu);
    dnssd_hardwired_add(a1, "b._dns-sd._udp", *(a1 + 16), 0, (v24 | 0xC), 0xCu);
    dnssd_hardwired_add(a1, "db._dns-sd._udp", *(a1 + 16), 0, (v24 | 0xC), 0xCu);
    memset(&v24[1] + 8, 0, 40);
    v2 = v22 | 0xC;
    *&v24[0] = v22;
    *(&v24[0] + 1) = v22 | 0xC;
    *&v24[1] = v23;
    if (uuid_name)
    {
      dns_name_to_wire_(0, v24, &uuid_name, 2163);
      v3 = 2164;
    }

    else
    {
      dns_name_to_wire_(0, v24, "ns", 2166);
      v3 = 2167;
    }

    dns_full_name_to_wire_(0, v24, *(a1 + 8), v3);
    dnssd_hardwired_add(a1, "", *(a1 + 8), *(&v24[0] + 1) - v2, (v22 | 0xC), 2u);
    dns_name_to_wire_(0, v24, "postmaster", 2172);
    dns_full_name_to_wire_(0, v24, *(a1 + 8), 2173);
    if (DWORD2(v24[3]) <= 1)
    {
      v4 = *(&v24[0] + 1);
      if ((*(&v24[0] + 1) + 4) >= *&v24[1])
      {
        goto LABEL_16;
      }

      *(&v24[0] + 1) += 4;
      *v4 = 0;
      if (DWORD2(v24[3]) > 1)
      {
        goto LABEL_17;
      }

      v5 = *(&v24[0] + 1);
      if ((*(&v24[0] + 1) + 4) >= *&v24[1])
      {
        goto LABEL_16;
      }

      *(&v24[0] + 1) += 4;
      *v5 = 538705920;
      if (DWORD2(v24[3]) > 1)
      {
        goto LABEL_17;
      }

      v6 = *(&v24[0] + 1);
      if ((*(&v24[0] + 1) + 4) >= *&v24[1])
      {
LABEL_16:
        DWORD2(v24[3]) = 111;
      }

      else
      {
        *(&v24[0] + 1) += 4;
        *v6 = 269352960;
        if (DWORD2(v24[3]) < 2)
        {
          v7 = *(&v24[0] + 1);
          if ((*(&v24[0] + 1) + 4) < *&v24[1])
          {
            *(&v24[0] + 1) += 4;
            *v7 = -2142174976;
            if (DWORD2(v24[3]) <= 1)
            {
              v8 = *(&v24[0] + 1);
              if ((*(&v24[0] + 1) + 4) < *&v24[1])
              {
                *(&v24[0] + 1) += 4;
                *v8 = 2013265920;
              }
            }
          }
        }
      }
    }

LABEL_17:
    dnssd_hardwired_add(a1, "", *(a1 + 8), *(&v24[0] + 1) - v2, (v22 | 0xC), 6u);
    v9 = *(a1 + 40);
    if (v9 && (*(v9 + 4) & 1) != 0 || dnssd_hardwired_setup_dns_push_for_domain(a1))
    {
      return 1;
    }

    v11 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v12 = *(a1 + 8);
      v16 = 136446723;
      v17 = "dnssd_hardwired_setup_for_served_domain";
      v18 = 2160;
      v19 = 1752392040;
      v20 = 2081;
      v21 = v12;
      v13 = "%{public}s: failed to setup DNS push service for hardwired response - domain: %{private, mask.hash}s";
      v14 = &v16;
LABEL_23:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v13, v14, 0x20u);
      return 0;
    }

    return result;
  }

  v11 = global_os_log;
  result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v15 = *(a1 + 8);
    LODWORD(v24[0]) = 136446723;
    *(v24 + 4) = "dnssd_hardwired_setup_for_served_domain";
    WORD6(v24[0]) = 2160;
    *(v24 + 14) = 1752392040;
    WORD3(v24[1]) = 2081;
    *(&v24[1] + 1) = v15;
    v13 = "%{public}s: only domain with usable interface can setup hardwired response - domain name: %{private, mask.hash}s";
    v14 = v24;
    goto LABEL_23;
  }

  return result;
}

BOOL is_valid_address_to_publish(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30)
  {
    v9 = (a1 + 8);
    v10 = *(a1 + 8) == 254 && (*(a1 + 9) & 0xC0) == 128;
    v15 = *v9;
    v16 = !*v9 && !*(a1 + 12) && !*(a1 + 16) && *(a1 + 20) == 0x1000000;
    if (!v10 && !v16)
    {
      return 1;
    }

    v17 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      if ((v15 & 0xFE) == 0xFC)
      {
        v18 = "ULA: ";
      }

      else if ((v15 & 0xC0FF) == 0x80FE)
      {
        v18 = "LUA: ";
      }

      else if ((v15 & 0xE0) == 0x20)
      {
        v18 = "GUA: ";
      }

      else
      {
        v18 = "";
      }

      *buf = 136447491;
      v23 = "is_valid_address_to_publish";
      v24 = 2082;
      v25 = v18;
      if (v10)
      {
        v19 = "link local";
      }

      else
      {
        v19 = "loopback";
      }

      v26 = 2160;
      *v27 = 1752392040;
      *&v27[8] = 1041;
      *&v27[10] = 16;
      v28 = 2097;
      v29 = v9;
      v30 = 2082;
      v31 = v19;
      v12 = "%{public}s: ignoring the address for interface - address: %{public}s%{private, mask.hash, network:in6_addr}.16P, address type: %{public}s.";
      v13 = v17;
      v14 = 58;
      goto LABEL_40;
    }

    return 0;
  }

  if (v1 != 2)
  {
    v11 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v23 = "is_valid_address_to_publish";
      v24 = 1024;
      LODWORD(v25) = v1;
      v12 = "%{public}s: Non IPv4/IPv6 address added for the interface - sa_family: %u";
      v13 = v11;
      v14 = 18;
LABEL_40:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      return 0;
    }

    return 0;
  }

  v2 = *(a1 + 4);
  v21 = a1 + 4;
  v3 = v2 != 127;
  v4 = v2 == 169 && *(a1 + 5) == 254;
  v5 = !v4;
  v6 = !v4 && v3;
  if (!v6)
  {
    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "is_valid_address_to_publish";
      v24 = 2160;
      v8 = "link local";
      v25 = 1752392040;
      *buf = 136447235;
      v26 = 1041;
      if (v5)
      {
        v8 = "loopback";
      }

      *v27 = 4;
      *&v27[4] = 2097;
      *&v27[6] = &v21;
      v28 = 2082;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ignoring the address for interface - address: %{private, mask.hash, network:in_addr}.4P, address type: %{public}s.", buf, 0x30u);
    }
  }

  return v6;
}

BOOL dnssd_hardwired_add_or_remove_address_in_domain(char *a1, char *a2, uint64_t a3, int a4)
{
  v8 = &served_domains;
  do
  {
    v8 = *v8;
    if (!v8)
    {
      v16 = global_os_log;
      result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      LODWORD(v22[0]) = 136446723;
      *(v22 + 4) = "dnssd_hardwired_add_or_remove_address_in_domain";
      WORD6(v22[0]) = 2160;
      *(v22 + 14) = 1752392040;
      WORD3(v22[1]) = 2081;
      *(&v22[1] + 1) = a2;
      v18 = "%{public}s: could not find served domain with the specified domain name - domain name: %{private, mask.hash}s";
      v19 = v16;
      v20 = 32;
      goto LABEL_20;
    }
  }

  while (strcasecmp(a2, v8[1]));
  v51 = 0u;
  v52 = 0u;
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
  v9 = *(a3 + 1) == 2;
  v23 = 0u;
  v24 = 0u;
  if (v9)
  {
    v10 = 4;
  }

  else
  {
    v10 = 8;
  }

  if (v9)
  {
    v11 = 4;
  }

  else
  {
    v11 = 16;
  }

  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = 28;
  }

  memset(v22, 0, sizeof(v22));
  memcpy((v22 | 0xC), (a3 + v10), v11);
  if (*a1)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = v8[v13];
  v15 = (v22 | 0xC);
  if (a4)
  {
    dnssd_hardwired_add(v8, a1, v14, v11, v15, v12);
    return 1;
  }

  if (dnssd_hardwired_remove_record(v8, a1, v14, v11, v15, v12))
  {
    return 1;
  }

  v21 = global_os_log;
  result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LODWORD(v22[0]) = 136446979;
    *(v22 + 4) = "dnssd_hardwired_add_or_remove_address_in_domain";
    WORD6(v22[0]) = 2082;
    *(v22 + 14) = a2;
    WORD3(v22[1]) = 2160;
    *(&v22[1] + 1) = 1752392040;
    LOWORD(v23) = 2081;
    *(&v23 + 2) = "remove";
    v18 = "%{public}s: failed to %{public}s address record - domain name: %{private, mask.hash}s";
    v19 = v21;
    v20 = 42;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, v22, v20);
    return 0;
  }

  return result;
}

void dnssd_hardwired_add_or_remove_ptr_in_domain(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = &served_domains;
  do
  {
    v8 = *v8;
    if (!v8)
    {
      v14 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v15 = 136446723;
      v16 = "dnssd_hardwired_add_or_remove_ptr_in_domain";
      v17 = 2160;
      v18 = 1752392040;
      v19 = 2081;
      v20 = a1;
      v11 = "%{public}s: could not find served domain with the specified domain name - domain name: %{private, mask.hash}s";
      v12 = v14;
      v13 = 32;
      goto LABEL_11;
    }
  }

  while (strcasecmp(a1, v8[1]));
  if (!dnssd_hardwired_add_or_remove_ptr_record(v8, a2, a3, v4))
  {
    v9 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      v10 = "removing";
      v16 = "dnssd_hardwired_add_or_remove_ptr_in_domain";
      v17 = 2082;
      v15 = 136446979;
      if (v4)
      {
        v10 = "adding";
      }

      v18 = v10;
      v19 = 2160;
      v20 = 1752392040;
      v21 = 2081;
      v22 = a1;
      v11 = "%{public}s: failed to %{public}s address record - domain name: %{private, mask.hash}s";
      v12 = v9;
      v13 = 42;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, &v15, v13);
    }
  }
}

BOOL dnssd_hardwired_add_or_remove_ptr_record(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  memset(v52, 0, 512);
  strcpy(__s, "lb._dns-sd._udp");
  v5 = (__s | 0xF);
  v6 = *(a2 + 1);
  if (v6 == 30)
  {
    v35 = a4;
    v8 = a2 + 8;
    v9 = a3 + 8;
    v10 = 15;
LABEL_6:
    v11 = 0;
    v12 = v10;
    v13 = 1;
    while (1)
    {
      v14 = v13;
      v15 = snprintf(v5, v55 - v5, ".%x", ((*(v9 + v12) & *(v8 + v12)) >> v11) & 0xF);
      v16 = v15;
      if (v15 < 1 || v55 - v5 <= v15)
      {
        break;
      }

      v13 = 0;
      v5 += v15;
      v11 = 4;
      if ((v14 & 1) == 0)
      {
        v10 = v12 - 1;
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_11;
      }
    }

    v31 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *v49 = 136446722;
    *&v49[4] = "dnssd_hardwired_generate_ptr_name";
    *&v49[12] = 1024;
    *&v49[14] = v16;
    *&v49[18] = 2048;
    *&v49[20] = v55 - v5;
    v27 = "%{public}s: snprintf truncates the string - bytes_written: %d, limit: %zd";
    v28 = v31;
    v29 = OS_LOG_TYPE_ERROR;
    v30 = 28;
LABEL_29:
    _os_log_impl(&_mh_execute_header, v28, v29, v27, v49, v30);
    goto LABEL_30;
  }

  if (v6 != 2)
  {
    v26 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_30;
    }

    *v49 = 136446466;
    *&v49[4] = "dnssd_hardwired_generate_ptr_name";
    *&v49[12] = 1024;
    *&v49[14] = v6;
    v27 = "%{public}s: skipping address type other than IPv4/IPv6 - type: %u";
    v28 = v26;
    v29 = OS_LOG_TYPE_FAULT;
    v30 = 18;
    goto LABEL_29;
  }

  v35 = a4;
  v7 = bswap32(*(a3 + 4) & *(a2 + 4));
  if ((snprintf((__s | 0xF), 0xF1uLL, ".%u.%u.%u.%u", v7, BYTE1(v7), BYTE2(v7), HIBYTE(v7)) - 1) >= 0xF0)
  {
LABEL_30:
    v32 = global_os_log;
    v33 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
    v19 = 0;
    if (v33)
    {
      *v49 = 136446210;
      *&v49[4] = "dnssd_hardwired_add_or_remove_ptr_record";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: address is not eligible to construct PTR record", v49, 0xCu);
      return 0;
    }

    return v19;
  }

LABEL_11:
  v17 = served_domains;
  if (served_domains)
  {
    v18 = "Removing";
    if (v35)
    {
      v18 = "Adding";
    }

    v36 = v18;
    v19 = 1;
    do
    {
      v20 = *(v17 + 40);
      if (v20 && *v20)
      {
        v51 = 0;
        v50 = 0u;
        *&v49[24] = 0u;
        *v49 = v52;
        *&v49[8] = v52 | 0xC;
        *&v49[16] = v53;
        v21 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(v17 + 8);
          *buf = 136447491;
          v38 = "dnssd_hardwired_add_or_remove_ptr_record";
          v39 = 2082;
          v40 = v36;
          v41 = 2160;
          v42 = 1752392040;
          v43 = 2081;
          v44 = __s;
          v45 = 2160;
          v46 = 1752392040;
          v47 = 2081;
          v48 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s PTR from %{private, mask.hash}s to %{private, mask.hash}s", buf, 0x3Eu);
        }

        dns_full_name_to_wire_(0, v49, *(v17 + 8), 1669);
        v23 = *(a1 + 16);
        v24 = *&v49[8] - (v52 | 0xC);
        v25 = (v52 | 0xC);
        if (v35)
        {
          dnssd_hardwired_add(a1, __s, v23, v24, v25, 0xCu);
          v19 = 1;
        }

        else
        {
          v19 = dnssd_hardwired_remove_record(a1, __s, v23, v24, v25, 12);
        }
      }

      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    return 1;
  }

  return v19;
}

void dnssd_hardwired_add(uint64_t a1, char *__s, const char *a3, size_t a4, const void *a5, unsigned int a6)
{
  v12 = strlen(__s);
  v13 = strlen(a3);
  v14 = a4 + v13 + 2 * v12;
  if (v14 == -54)
  {
    v44 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v52 = "dnssd_hardwired_add";
    v45 = "%{public}s: strict_calloc called with size 0";
    v46 = v44;
    v47 = 12;
    goto LABEL_33;
  }

  v15 = v13;
  v49 = a6;
  v50 = a1;
  v16 = malloc_type_calloc(1uLL, v14 + 54, 0x2CA71781uLL);
  if (!v16)
  {
    while (1)
    {
      v48 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v52 = "dnssd_hardwired_add";
        v53 = 2048;
        v54 = 1;
        v55 = 2048;
        v56 = (v14 + 54);
        v45 = "%{public}s: strict_calloc(%zu, %zu) failed";
        v46 = v48;
        v47 = 32;
LABEL_33:
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
      }

LABEL_34:
      __break(1u);
    }
  }

  v17 = v16;
  v18 = v16 + v14 + 49;
  *(v18 + 1) = 1684234849;
  v19 = (v16 + 6);
  v16[4] = v16 + 6;
  *(v16 + 20) = a4;
  memcpy(v16 + 6, a5, a4);
  v17[2] = &v19[a4];
  memcpy(&v19[a4], __s, v12);
  *(v17[2] + v12) = 0;
  v20 = (v17[2] + v12 + 1);
  v17[3] = v20;
  if (v12)
  {
    snprintf(v20, v12 + v15 + 1, "%s%s", __s, a3);
  }

  else
  {
    memcpy(v20, a3, v15);
    *(v17[3] + v15) = 0;
  }

  v21 = v17[3];
  v22 = &v21[strlen(v21)];
  if (v22 != v18)
  {
    v23 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446722;
    v52 = "dnssd_hardwired_add";
    v53 = 2048;
    v54 = (v22 + 1);
    v55 = 2048;
    v56 = v18 + 1;
    v24 = "%{public}s: %p != %p";
    v25 = v23;
    v26 = OS_LOG_TYPE_ERROR;
    v27 = 32;
    goto LABEL_25;
  }

  if (*(v18 + 1) != 1684234849)
  {
    v28 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446210;
    v52 = "dnssd_hardwired_add";
    v24 = "%{public}s: ran off the end.";
    v25 = v28;
    v26 = OS_LOG_TYPE_ERROR;
    v27 = 12;
    goto LABEL_25;
  }

  *(v17 + 4) = v49;
  *v17 = 0;
  v30 = (v50 + 32);
  v29 = *(v50 + 32);
  if (v29)
  {
    while (1)
    {
      v31 = v29;
      if (v29[4] == v49)
      {
        v32 = *(v29 + 3);
        if (!strcasecmp(v32, v21))
        {
          break;
        }
      }

      v29 = *v31;
      v30 = v31;
      if (!*v31)
      {
        goto LABEL_23;
      }
    }

    if (v49 <= 0x1C && ((1 << v49) & 0x10001006) != 0)
    {
      v33 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v31[2];
        v35 = *(v31 + 20);
        *buf = 136447747;
        v52 = "dnssd_hardwired_add";
        v53 = 2160;
        v54 = 1752392040;
        v55 = 2081;
        v56 = v32;
        v57 = 2160;
        v58 = 1752392040;
        v59 = 2081;
        v60 = v34;
        v61 = 1024;
        v62 = v49;
        v63 = 1024;
        v64 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: inserting before %{private, mask.hash}s name %{private, mask.hash}s type %d rdlen %d", buf, 0x40u);
      }

      *v17 = v31;
    }

    else
    {
      v41 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v31[2];
        v43 = *(v31 + 20);
        *buf = 136447747;
        v52 = "dnssd_hardwired_add";
        v53 = 2160;
        v54 = 1752392040;
        v55 = 2081;
        v56 = v32;
        v57 = 2160;
        v58 = 1752392040;
        v59 = 2081;
        v60 = v42;
        v61 = 1024;
        v62 = v49;
        v63 = 1024;
        v64 = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s: superseding %{private, mask.hash}s name %{private, mask.hash}s type %d rdlen %d", buf, 0x40u);
      }

      *v17 = *v31;
      if (*v30)
      {
        free(*v30);
        *v30 = 0;
      }
    }
  }

  v31 = v30;
LABEL_23:
  *v31 = v17;
  v36 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v17[2];
    v37 = v17[3];
    v39 = *(v17 + 4);
    v40 = *(v17 + 20);
    *buf = 136447747;
    v52 = "dnssd_hardwired_add";
    v53 = 2160;
    v54 = 1752392040;
    v55 = 2081;
    v56 = v37;
    v57 = 2160;
    v58 = 1752392040;
    v59 = 2081;
    v60 = v38;
    v61 = 1024;
    v62 = v39;
    v63 = 1024;
    v64 = v40;
    v24 = "%{public}s: fullname %{private, mask.hash}s name %{private, mask.hash}s type %d rdlen %d";
    v25 = v36;
    v26 = OS_LOG_TYPE_DEFAULT;
    v27 = 64;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v25, v26, v24, buf, v27);
  }
}

BOOL dnssd_hardwired_remove_record(uint64_t a1, const char *a2, const char *a3, size_t a4, const void *a5, int a6)
{
  if ((snprintf(__str, 0x100uLL, "%s%s", a2, a3) - 256) <= 0xFFFFFF00)
  {
    v23 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446978;
    v25 = "dnssd_hardwired_remove_record";
    v26 = 2048;
    v27 = strlen(a2);
    v28 = 2048;
    v29 = strlen(a3);
    v30 = 2048;
    v31 = 256;
    v19 = "%{public}s: snprintf truncates the string - name length: %zu, domain length: %zu, buffer length: %zu";
    v20 = v23;
    v21 = 42;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    return 0;
  }

  v14 = *(a1 + 32);
  v13 = (a1 + 32);
  v12 = v14;
  if (!v14)
  {
LABEL_12:
    v17 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446722;
    v25 = "dnssd_hardwired_remove_record";
    v26 = 2082;
    v27 = __str;
    v28 = 1024;
    LODWORD(v29) = a6;
    v19 = "%{public}s: no matching hardwired_t found - record name: %{public}s, record type: %d";
    v20 = v17;
    v21 = 28;
    goto LABEL_14;
  }

  v15 = 0;
  while (1)
  {
    v16 = v15;
    v15 = v12;
    if (v12[4] != a6)
    {
      goto LABEL_11;
    }

    if (a5)
    {
      break;
    }

    if (!strcasecmp(*(v12 + 3), __str))
    {
      goto LABEL_15;
    }

LABEL_11:
    v12 = *v15;
    if (!*v15)
    {
      goto LABEL_12;
    }
  }

  if (v12[20] != a4 || strcasecmp(*(v12 + 3), __str) || memcmp(v15[4], a5, a4))
  {
    goto LABEL_11;
  }

LABEL_15:
  if (v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v13;
  }

  *v22 = *v15;
  free(v15);
  return 1;
}

BOOL dnssd_hardwired_setup_dns_push_for_domain(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2 || *(v2 + 4) == 1)
  {
    v5 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 8);
    *buf = 136446723;
    v21 = "dnssd_hardwired_setup_dns_push_for_domain";
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2081;
    v25 = v6;
    v7 = "%{public}s: the associated interface does not enable DNS push - domain: %{private, mask.hash}s";
    v8 = v5;
    v9 = 32;
    goto LABEL_16;
  }

  if (!my_name)
  {
    v10 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446210;
    v21 = "dnssd_hardwired_setup_dns_push_for_domain";
    v7 = "%{public}s: my_name is not set";
    v8 = v10;
    v9 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
    return 0;
  }

  v17 = 0u;
  memset(v18, 0, 496);
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v12 = v18;
  v13 = v19;
  BYTE12(v17) = 0;
  HIWORD(v17) = 0;
  v11 = &v17;
  if (v18 + 2 >= v19)
  {
    LODWORD(v16) = 111;
    DWORD2(v15) = 2217;
  }

  else
  {
    LOWORD(v18[0]) = 21763;
    v12 = v18 + 2;
  }

  if (uuid_name)
  {
    dns_name_to_wire_(0, &v11, &uuid_name, 2230);
    v3 = 2231;
  }

  else
  {
    dns_name_to_wire_(0, &v11, "ns", 2234);
    v3 = 2235;
  }

  dns_full_name_to_wire_(0, &v11, *(a1 + 8), v3);
  dnssd_hardwired_add(a1, "_dns-push-tls._tcp", *(a1 + 16), &v12[-(&v17 | 0xC)], (&v17 | 0xC), 0x21u);
  return 1;
}

void *new_served_domain(uint64_t a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0xCF282EBDuLL);
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = strlen(a2);
  if (v6 == -2)
  {
    v21 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v26 = 136446210;
    v27 = "new_served_domain";
    v22 = "%{public}s: strict_malloc called with size 0";
    goto LABEL_17;
  }

  v7 = malloc_type_malloc(v6 + 2, 0xB8BB1E1BuLL);
  if (!v7)
  {
    v21 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v26 = 136446210;
    v27 = "new_served_domain";
    v22 = "%{public}s: strict allocator failed";
LABEL_17:
    v23 = v21;
    for (i = 12; ; i = 32)
    {
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, &v26, i);
      do
      {
LABEL_19:
        __break(1u);
LABEL_20:
        v25 = global_os_log;
      }

      while (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR));
      v26 = 136446722;
      v27 = "new_served_domain";
      v28 = 2048;
      v29 = 1;
      v30 = 2048;
      v31 = 56;
      v22 = "%{public}s: strict_calloc(%zu, %zu) failed";
      v23 = v25;
    }
  }

  v5[2] = v7;
  *v7 = 46;
  v8 = (v5[2] + 1);
  v5[1] = v8;
  memcpy(v8, a2, v6 + 1);
  v9 = dns_pres_name_parse(v5[1]);
  v5[3] = v9;
  v5[5] = a1;
  if (!v9)
  {
    v12 = global_os_log;
    v13 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      if (v13)
      {
        v14 = *(a1 + 8);
        v15 = v5[1];
        v26 = 136446722;
        v27 = "new_served_domain";
        v28 = 2080;
        v29 = v14;
        v30 = 2080;
        v31 = v15;
        v16 = "%{public}s: invalid domain name for interface %s: %s";
        v17 = v12;
        v18 = 32;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, &v26, v18);
      }
    }

    else if (v13)
    {
      v19 = v5[1];
      v26 = 136446466;
      v27 = "new_served_domain";
      v28 = 2080;
      v29 = v19;
      v16 = "%{public}s: invalid domain name: %s";
      v17 = v12;
      v18 = 22;
      goto LABEL_12;
    }

    free(v5);
    return 0;
  }

  *v5 = served_domains;
  served_domains = v5;
  v10 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v5[1];
    v26 = 136446723;
    v27 = "new_served_domain";
    v28 = 2160;
    v29 = 1752392040;
    v30 = 2081;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: new served domain created - domain name: %{private, mask.hash}s", &v26, 0x20u);
  }

  return v5;
}

void dns_question_callback(int a1, char a2, int a3, int a4, char *__s2, uint64_t a6, uint64_t a7, size_t __n, int32x4_t *a9, int a10, uint64_t a11)
{
  v17 = a11;
  v18 = 1;
  if (a4 <= -65555)
  {
    if (a4 != -65569 && a4 != -65563)
    {
      goto LABEL_59;
    }

    ioloop_dnssd_txn_cancel(*(a11 + 24));
    ioloop_dnssd_txn_release_(*(a11 + 24), "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 3175);
    *(a11 + 24) = 0;

    dp_handle_server_disconnect(a4);
    return;
  }

  if (a4 == -65554)
  {
    v25 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      if (a11)
      {
        LODWORD(v17) = *(a11 + 64);
      }

      v26 = dns_rrtype_to_string(a6);
      v27 = dns_qclass_to_string(a7);
      *buf = 136448003;
      v28 = " more coming";
      v64 = "dns_question_callback";
      *v66 = v17;
      *&v66[4] = 2160;
      v65 = 1024;
      if ((a2 & 1) == 0)
      {
        v28 = " done";
      }

      *&v66[6] = 1752392040;
      *&v66[14] = 2081;
      *&v66[16] = __s2;
      v67 = 2082;
      v68 = v26;
      v69 = 2082;
      v70 = v27;
      v71 = 1024;
      v72 = __n;
      v73 = 2082;
      v74 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] no data - name: %{private, mask.hash}s, rrtype: %{public}s, rrclass: %{public}s, rdlen: %u.%{public}s", buf, 0x4Au);
      v17 = a11;
    }

    goto LABEL_58;
  }

  if (a4)
  {
    goto LABEL_59;
  }

  v19 = (a11 + 40);
  if ((a2 & 2) == 0)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      v22 = " more coming";
      if ((a2 & 1) == 0)
      {
        v22 = " done";
      }

      __na = v22;
      while (2)
      {
        log = v21;
        while (1)
        {
          v23 = v20;
          if (answer_match(v20, __n, __s2, a6, a7, a9))
          {
            break;
          }

          v20 = *v23;
          v19 = v23;
          if (!*v23)
          {
            if ((log & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_58;
          }
        }

        loga = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          v55 = *(a11 + 64);
          v56 = dns_rrtype_to_string(a6);
          v24 = dns_qclass_to_string(a7);
          *buf = 136448003;
          v64 = "dns_question_callback";
          v65 = 1024;
          *v66 = v55;
          *&v66[4] = 2160;
          *&v66[6] = 1752392040;
          *&v66[14] = 2081;
          *&v66[16] = __s2;
          v67 = 2082;
          v68 = v56;
          v69 = 2082;
          v70 = v24;
          v71 = 1024;
          v72 = __n;
          v73 = 2082;
          v74 = __na;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] remove answer from cache - name: %{private, mask.hash}s, rrtype: %{public}s, rrclass: %{public}s, rdlen: %u.%{public}s", buf, 0x4Au);
        }

        *v19 = *v23;
        dp_answer_free(v23);
        if (__n)
        {
          v23 = v19;
          goto LABEL_56;
        }

        v20 = *v19;
        v21 = 1;
        if (*v19)
        {
          continue;
        }

        goto LABEL_58;
      }
    }

    v23 = (a11 + 40);
LABEL_50:
    v42 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      logd = v42;
      if (a11)
      {
        LODWORD(v17) = *(a11 + 64);
      }

      v43 = dns_rrtype_to_string(a6);
      v44 = dns_qclass_to_string(a7);
      *buf = 136448003;
      v45 = " more coming";
      v64 = "dns_question_callback";
      *v66 = v17;
      *&v66[4] = 2160;
      v65 = 1024;
      if ((a2 & 1) == 0)
      {
        v45 = " done";
      }

      *&v66[6] = 1752392040;
      *&v66[14] = 2081;
      *&v66[16] = __s2;
      v67 = 2082;
      v68 = v43;
      v69 = 2082;
      v70 = v44;
      v71 = 1024;
      v72 = __n;
      v73 = 2082;
      v74 = v45;
      _os_log_impl(&_mh_execute_header, logd, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d] remove not found in cache - name: %{private, mask.hash}s, rrtype: %{public}s, rrclass: %{public}s, rdlen: %u.%{public}s", buf, 0x4Au);
      v17 = a11;
    }

LABEL_56:
    if (*v23)
    {
LABEL_57:
      v18 = 1;
      goto LABEL_59;
    }

LABEL_58:
    v18 = 1;
    *(v17 + 76) = 1;
    goto LABEL_59;
  }

  v29 = (a11 + 40);
  do
  {
    v29 = *v29;
    if (!v29)
    {
      v34 = malloc_type_calloc(1uLL, __n + 40, 0x809D3BFEuLL);
      if (v34)
      {
        if (!__s2)
        {
          v50 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          *buf = 136446210;
          v64 = "strict_strdup";
          v51 = "%{public}s: strict_strdup called with NULL string";
          goto LABEL_75;
        }

        v35 = v34;
        v36 = strdup(__s2);
        if (v36)
        {
          v35[6] = a3;
          v35[7] = a10;
          *(v35 + 16) = a6;
          *(v35 + 17) = a7;
          *(v35 + 18) = __n;
          *(v35 + 1) = v36;
          *(v35 + 2) = v35 + 10;
          memcpy(v35 + 10, a9, __n);
          *v35 = 0;
          do
          {
            v37 = v19;
            v19 = *v19;
          }

          while (v19);
          *v37 = v35;
          *(a11 + 76) = 0;
          v38 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(a11 + 64);
            logc = dns_rrtype_to_string(a6);
            v40 = dns_qclass_to_string(a7);
            *buf = 136448003;
            v41 = " more coming";
            v64 = "dns_question_callback";
            *v66 = v39;
            *&v66[4] = 2160;
            v65 = 1024;
            if ((a2 & 1) == 0)
            {
              v41 = " done";
            }

            *&v66[6] = 1752392040;
            *&v66[14] = 2081;
            *&v66[16] = __s2;
            v67 = 2082;
            v68 = logc;
            v69 = 2082;
            v70 = v40;
            v71 = 1024;
            v72 = __n;
            v73 = 2082;
            v74 = v41;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] add answer to cache - name: %{private, mask.hash}s, rrtype: %{public}s, rrclass: %{public}s, rdlen: %u.%{public}s", buf, 0x4Au);
          }

          goto LABEL_57;
        }

        v50 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v64 = "strict_strdup";
          v51 = "%{public}s: strdup() failed";
LABEL_75:
          v52 = v50;
          v53 = 12;
LABEL_76:
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v51, buf, v53);
        }
      }

      else
      {
        v54 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v64 = "dns_question_callback";
          v65 = 2048;
          *v66 = 1;
          *&v66[8] = 2048;
          *&v66[10] = __n + 40;
          v51 = "%{public}s: strict_calloc(%zu, %zu) failed";
          v52 = v54;
          v53 = 32;
          goto LABEL_76;
        }
      }

LABEL_77:
      __break(1u);
    }
  }

  while (!answer_match(v29, __n, __s2, a6, a7, a9));
  v30 = global_os_log;
  v18 = 0;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (a11)
    {
      LODWORD(v17) = *(a11 + 64);
    }

    v31 = dns_rrtype_to_string(a6);
    v32 = dns_qclass_to_string(a7);
    *buf = 136448003;
    v33 = " more coming";
    v64 = "dns_question_callback";
    *v66 = v17;
    *&v66[4] = 2160;
    v65 = 1024;
    if ((a2 & 1) == 0)
    {
      v33 = " done";
    }

    *&v66[6] = 1752392040;
    *&v66[14] = 2081;
    *&v66[16] = __s2;
    v67 = 2082;
    v68 = v31;
    v69 = 2082;
    v70 = v32;
    v71 = 1024;
    v72 = __n;
    v73 = 2082;
    v74 = v33;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: [QU%d] duplicate answer in cache - name: %{private, mask.hash}s, rrtype: %{public}s, rrclass: %{public}s, rdlen: %u.%{public}s", buf, 0x4Au);
    v18 = 0;
    v17 = a11;
  }

LABEL_59:
  v46 = *(v17 + 16);
  while (v46)
  {
    while (1)
    {
      v47 = v46;
      v46 = *(v46 + 192);
      v48 = *(v47 + 72);
      if (!v48)
      {
        break;
      }

      v49 = *(v48 + 160);
      if (v49 && *(v49 + 44) == 1 && *(v49 + 40) == 1)
      {
        *(v48 + 55) = 1;
        if (!v46)
        {
          goto LABEL_69;
        }
      }

      else
      {
        dns_push_query_answer_process(a2, a4, __s2, a6, a7, __n, a9, a10, v47, v18);
        if (!v46)
        {
          goto LABEL_69;
        }
      }
    }

    dns_query_answer_process(a2, a4, __s2, a6, a7, __n, a9, a10, v47, v18);
  }

LABEL_69:
  dp_question_cache_remove_queries(v17);
}

void dns_push_cancel(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 200);
    if (v5)
    {
      LODWORD(v5) = *(v5 + 64);
    }

    v6 = *(a1 + 32);
    v11 = 136446978;
    v12 = "dns_push_cancel";
    v13 = 1024;
    *v14 = v4;
    *&v14[4] = 1024;
    *&v14[6] = v5;
    *&v14[10] = 2082;
    *&v14[12] = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][QU%d] %{public}s", &v11, 0x22u);
  }

  if (*(v2 + 80))
  {
    *(v2 + 80) = 0;
    *(v2 + 208) = 1;
    dp_question_cache_remove_queries(*(v2 + 200));
    dnssd_query_cancel(v2);
  }

  v7 = *v2;
  if (!*v2)
  {
    v8 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    v11 = 136447490;
    v12 = "dns_push_cancel";
    v13 = 1024;
    *v14 = 0;
    *&v14[4] = 2048;
    *&v14[6] = v2;
    *&v14[14] = 2080;
    *&v14[16] = "query";
    *&v14[24] = 2080;
    *&v14[26] = "dnssd-proxy.c";
    v15 = 1024;
    v16 = 1097;
    v10 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_20;
  }

  v8 = global_os_log;
  if (v7 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    v11 = 136447490;
    v12 = "dns_push_cancel";
    v13 = 1024;
    *v14 = v7;
    *&v14[4] = 2048;
    *&v14[6] = v2;
    *&v14[14] = 2080;
    *&v14[16] = "query";
    *&v14[24] = 2080;
    *&v14[26] = "dnssd-proxy.c";
    v15 = 1024;
    v16 = 1097;
    v10 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, v10, &v11, 0x36u);
LABEL_21:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136447490;
    v12 = "dns_push_cancel";
    v13 = 1024;
    *v14 = v7;
    *&v14[4] = 2048;
    *&v14[6] = v2;
    *&v14[14] = 2080;
    *&v14[16] = "query";
    *&v14[24] = 2080;
    *&v14[26] = "dnssd-proxy.c";
    v15 = 1024;
    v16 = 1097;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v11, 0x36u);
    v7 = *v2;
  }

  *v2 = v7 - 1;
  if (v7 == 1)
  {
    v9 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136447234;
      v12 = "dns_push_cancel";
      v13 = 2048;
      *v14 = v2;
      *&v14[8] = 2080;
      *&v14[10] = "query";
      *&v14[18] = 2080;
      *&v14[20] = "dnssd-proxy.c";
      *&v14[28] = 1024;
      *&v14[30] = 1097;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v11, 0x30u);
    }

    ++dnssd_query_finalized;
    dnssd_query_finalize(v2);
  }
}

void dp_tracker_context_release(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1)
  {
    v3 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "dp_tracker_context_release";
    v8 = 1024;
    *v9 = 0;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "tracker";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-proxy.c";
    v10 = 1024;
    v11 = 848;
    v5 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_15;
  }

  v3 = global_os_log;
  if (v2 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v6 = 136447490;
    v7 = "dp_tracker_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "tracker";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-proxy.c";
    v10 = 1024;
    v11 = 848;
    v5 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v5, &v6, 0x36u);
LABEL_16:
    abort();
  }

  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136447490;
    v7 = "dp_tracker_context_release";
    v8 = 1024;
    *v9 = v2;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2080;
    *&v9[16] = "tracker";
    *&v9[24] = 2080;
    *&v9[26] = "dnssd-proxy.c";
    v10 = 1024;
    v11 = 848;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v6, 0x36u);
    v2 = *a1;
  }

  *a1 = v2 - 1;
  if (v2 == 1)
  {
    v4 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136447234;
      v7 = "dp_tracker_context_release";
      v8 = 2048;
      *v9 = a1;
      *&v9[8] = 2080;
      *&v9[10] = "tracker";
      *&v9[18] = 2080;
      *&v9[20] = "dnssd-proxy.c";
      *&v9[28] = 1024;
      *&v9[30] = 848;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v6, 0x30u);
    }

    ++dp_tracker_finalized;
    dp_tracker_finalize(a1);
  }
}

void dp_tracker_idle(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v3 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 4);
      v5 = *(a1 + 24);
      if (v5)
      {
        LODWORD(v5) = *(v5 + 48);
      }

      v6 = *(v1 + 180);
      v7 = *(v1 + 192);
      v8 = 136447491;
      v9 = "dp_tracker_idle";
      v10 = 1024;
      v11 = v4;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v6;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [TRK%d][DSO%d][C%d] tracker for connection %{private, mask.hash}s has gone idle.", &v8, 0x32u);
    }

    *(a1 + 8) = 0;
    if ((*(v1 + 424) & 0x200) == 0)
    {
      ioloop_comm_cancel(v1);
    }

    ioloop_comm_release_(v1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 883);
  }
}

void dns_proxy_input_for_server(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a1 + 424) & 0x20) != 0)
  {
    v10 = *(a1 + 192);
  }

  else
  {
    v7 = *(a2 + 5);
    v8 = v7 == 30 || v7 == 2;
    if (v8)
    {
      v9 = 12;
      if (v7 == 2)
      {
        v9 = 8;
      }

      v10 = __str;
      inet_ntop(v7, (a2 + v9), __str, 0x2Eu);
    }

    else
    {
      v10 = __str;
      snprintf(__str, 0x2EuLL, "Address type %d", *(a2 + 5));
    }
  }

  v11 = *(a1 + 200);
  v12 = &unk_1000A9000;
  v13 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 180);
    if (v11)
    {
      v15 = *(v11 + 4);
    }

    else
    {
      v15 = 0;
    }

    v16 = bswap32(*(a2 + 88));
    v17 = *(a2 + 64);
    *buf = 136447747;
    *&buf[4] = "dns_proxy_input_for_server";
    *&buf[12] = 1024;
    *&buf[14] = v14;
    *&buf[18] = 1024;
    *&buf[20] = v15;
    *&buf[24] = 1024;
    *&buf[26] = HIWORD(v16);
    *&buf[30] = 2160;
    *&v247[0] = 1752392040;
    WORD4(v247[0]) = 2081;
    *(v247 + 10) = v10;
    WORD1(v247[1]) = 1024;
    DWORD1(v247[1]) = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: [C%d][TRK%d][QID %x] Received a new DNS message - src: %{private, mask.hash}s, message length: %u bytes.", buf, 0x38u);
  }

  memset(v247, 0, sizeof(v247));
  memset(buf, 0, sizeof(buf));
  if (!a3)
  {
    v18 = malloc_type_calloc(1uLL, 0x30uLL, 0xF4D560A0uLL);
    if (!v18)
    {
      v230 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_344;
      }

      *v248 = 136446722;
      *&v248[4] = "dnssd_proxy_dns_evaluate";
      *&v248[12] = 2048;
      *&v248[14] = 1;
      *&v248[22] = 2048;
      *&v248[24] = 48;
      goto LABEL_343;
    }

    a3 = v18;
    v18[1] = a1;
    *(v18 + 1) = ++cur_tracker_serial;
    ioloop_comm_retain_(a1, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 4205);
    v19 = *(a1 + 424);
    if ((v19 & 0x20) != 0)
    {
      if (*(a1 + 200))
      {
        v20 = *(a1 + 240);
        if (v20)
        {
          v20();
        }
      }

      *(a1 + 240) = dp_tracker_context_release;
      *(a1 + 200) = a3;
      v21 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *a3;
        *v248 = 136447490;
        *&v248[4] = "dnssd_proxy_dns_evaluate";
        *&v248[12] = 1024;
        *&v248[14] = v22;
        *&v248[18] = 2048;
        *&v248[20] = a3;
        *&v248[28] = 2080;
        *&v248[30] = "tracker";
        *&v248[38] = 2080;
        *&v248[40] = "dnssd-proxy.c";
        v249 = 1024;
        v250 = 4208;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v248, 0x36u);
      }

      v23 = *a3;
      if (*a3)
      {
        v24 = v23 + 1;
        *a3 = v23 + 1;
        if (v23 + 1 > 10000)
        {
          v25 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_355;
          }

          *v248 = 136447490;
          *&v248[4] = "dnssd_proxy_dns_evaluate";
          *&v248[12] = 1024;
          *&v248[14] = v24;
          *&v248[18] = 2048;
          *&v248[20] = a3;
          *&v248[28] = 2080;
          *&v248[30] = "tracker";
          *&v248[38] = 2080;
          *&v248[40] = "dnssd-proxy.c";
          v249 = 1024;
          v250 = 4208;
          v26 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_336;
        }
      }

      else
      {
        ++dp_tracker_created;
        *a3 = 1;
      }

      v19 = *(a1 + 424);
    }

    if ((v19 & 0x200) == 0)
    {
      *(a1 + 232) = dp_tracker_disconnected;
    }
  }

  v13 = global_os_log;
  v27 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  v28 = *a3;
  if (v27)
  {
    *v248 = 136447490;
    *&v248[4] = "dnssd_proxy_dns_evaluate";
    *&v248[12] = 1024;
    *&v248[14] = v28;
    *&v248[18] = 2048;
    *&v248[20] = a3;
    *&v248[28] = 2080;
    *&v248[30] = "tracker";
    *&v248[38] = 2080;
    *&v248[40] = "dnssd-proxy.c";
    v249 = 1024;
    v250 = 4214;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v248, 0x36u);
    v28 = *a3;
  }

  if (v28)
  {
    LODWORD(v13) = v28 + 1;
    *a3 = v28 + 1;
    if (v28 + 1 >= 10001)
    {
      v25 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_355;
      }

      *v248 = 136447490;
      *&v248[4] = "dnssd_proxy_dns_evaluate";
      *&v248[12] = 1024;
      *&v248[14] = v13;
      *&v248[18] = 2048;
      *&v248[20] = a3;
      *&v248[28] = 2080;
      *&v248[30] = "tracker";
      *&v248[38] = 2080;
      *&v248[40] = "dnssd-proxy.c";
      v249 = 1024;
      v250 = 4214;
      v26 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
      goto LABEL_336;
    }
  }

  else
  {
    ++dp_tracker_created;
    *a3 = 1;
  }

  v29 = *(a2 + 90);
  if ((v29 & 0x80) != 0)
  {
    v39 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a3 + 1);
      v41 = *(a1 + 180);
      v42 = *(a1 + 192);
      *v248 = 136447235;
      *&v248[4] = "dnssd_proxy_dns_evaluate";
      *&v248[12] = 1024;
      *&v248[14] = v40;
      *&v248[18] = 1024;
      *&v248[20] = v41;
      *&v248[24] = 2160;
      *&v248[26] = 1752392040;
      *&v248[34] = 2081;
      *&v248[36] = v42;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: [TRK%d][C%d] %{private, mask.hash}s: dropping unexpected response", v248, 0x2Cu);
    }

    goto LABEL_49;
  }

  v11 = a2 + 88;
  v30 = (v29 >> 3) & 0xF;
  if (v30)
  {
    if (v30 != 6)
    {
      dso_simple_response(a1, a2, (a2 + 88), 4);
      goto LABEL_301;
    }

    if ((*(a1 + 424) & 0x20) == 0)
    {
      v31 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a3 + 1);
        v33 = *(a1 + 180);
        v34 = *(a1 + 192);
        *v248 = 136447235;
        *&v248[4] = "dnssd_proxy_dns_evaluate";
        *&v248[12] = 1024;
        *&v248[14] = v32;
        *&v248[18] = 1024;
        *&v248[20] = v33;
        *&v248[24] = 2160;
        *&v248[26] = 1752392040;
        *&v248[34] = 2081;
        *&v248[36] = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}s: [TRK%d][C%d] %{private, mask.hash}s: DSO message received on non-tcp socket.", v248, 0x2Cu);
      }

      v35 = a1;
      v36 = a2;
      v37 = (a2 + 88);
      v38 = 4;
LABEL_46:
      dso_simple_response(v35, v36, v37, v38);
LABEL_49:
      if ((*(a1 + 424) & 0x20) != 0)
      {
        ioloop_comm_cancel(a3[1]);
      }

      goto LABEL_301;
    }

    v235 = (a2 + 88);
    if (!a3[3])
    {
      v96 = *(a1 + 192);
      v97 = strlen(v96);
      v98 = v97;
      if ((v97 + 217) >> 32)
      {
        v99 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *v248 = 136446978;
          *&v248[4] = "dso_state_create";
          *&v248[12] = 2048;
          *&v248[14] = 176;
          *&v248[22] = 2048;
          *&v248[24] = 40;
          *&v248[32] = 2048;
          *&v248[34] = v98 + 1;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_FAULT, "%{public}s: Fatal: sizeof (*dso)[%zu], outsize[%zu], namespace[%zu]", v248, 0x2Au);
          v99 = global_os_log;
        }

        a3[3] = 0;
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          v100 = *(a3 + 1);
          v101 = *(a1 + 180);
          v102 = *(a1 + 192);
          *v248 = 136447235;
          *&v248[4] = "dnssd_proxy_dns_evaluate";
          *&v248[12] = 1024;
          *&v248[14] = v100;
          *&v248[18] = 1024;
          *&v248[20] = v101;
          *&v248[24] = 2160;
          *&v248[26] = 1752392040;
          *&v248[34] = 2081;
          *&v248[36] = v102;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%{public}s: [TRK%d][C%d] %{private, mask.hash}s: Unable to create a dso context.", v248, 0x2Cu);
        }

        v35 = a1;
        v36 = a2;
        v37 = (a2 + 88);
        v38 = 2;
        goto LABEL_46;
      }

      if (v97 == -217)
      {
        goto LABEL_344;
      }

      LODWORD(v13) = 1;
      v136 = malloc_type_calloc(1uLL, v97 + 217, 0x38DE3261uLL);
      if (!v136)
      {
        goto LABEL_344;
      }

      v137 = v136;
      v136[21] = v136 + 22;
      *(v136 + 45) = 2;
      v3 = (v136 + 27);
      v136[19] = v136 + 27;
      memcpy(v136 + 27, v96, v98);
      *(v3 + v98) = 0;
      *(v137 + 24) = dns_push_callback;
      *(v137 + 32) = a1;
      *(v137 + 8) = a3;
      *(v137 + 16) = dp_tracker_dso_state_change;
      *(v137 + 52) = 1;
      LODWORD(v13) = dso_state_create_dso_state_serial++;
      *(v137 + 48) = v13;
      *(v137 + 104) = v137 + 120;
      *(v137 + 116) = 2;
      *(v137 + 60) = 64424513040000;
      *(v137 + 55) = 0;
      *v137 = dso_connections;
      dso_connections = v137;
      v12 = &unk_1000A9000;
      v138 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *v248 = 136447234;
        *&v248[4] = "dso_state_create";
        *&v248[12] = 1024;
        *&v248[14] = v13;
        *&v248[18] = 2048;
        *&v248[20] = v137;
        *&v248[28] = 2080;
        *&v248[30] = v96;
        *&v248[38] = 2048;
        *&v248[40] = a3;
        _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%u] New dso_state_t created - dso: %p, remote name: %s, context: %p", v248, 0x30u);
      }

      a3[3] = v137;
      *(a1 + 272) = v137;
    }

    v139 = a3[4];
    if (v139)
    {
      ioloop_cancel_wake_event(v139);
    }

    if (*a1)
    {
      v140 = nw_connection_copy_current_path(*a1);
      if (v140)
      {
        v141 = v140;
        v11 = nw_path_uses_interface_subtype();
        nw_release(v141);
        v142 = *(a1 + 272);
        *(v142 + 54) = v11;
        if (v11 && !*(v142 + 160))
        {
          v143 = malloc_type_calloc(1uLL, 0x30uLL, 0x400B27B2uLL);
          if (v143)
          {
            v144 = v143;
            v143[10] = 0;
            *(v143 + 44) = 0;
            *(*(a1 + 272) + 160) = v143;
            v239 = _NSConcreteStackBlock;
            v240 = 0x40000000;
            v241 = __comm_configure_device_monitor_block_invoke;
            v242 = &__block_descriptor_tmp_2608;
            v243 = a1;
            v145 = &v239;
            v146 = objc_autoreleasePoolPush();
            if ((v144[11] & 1) == 0)
            {
              v147 = objc_retainBlock(v145);
              v148 = *(v144 + 2);
              *(v144 + 2) = v147;

              *v248 = _NSConcreteStackBlock;
              *&v248[8] = 3221225472;
              *&v248[16] = __nr_device_monitor_set_handler_block_invoke;
              *&v248[24] = &__block_descriptor_40_e8_v12__0B8l;
              *&v248[32] = v144;
              v149 = objc_retainBlock(v248);
              v150 = *(v144 + 3);
              *(v144 + 3) = v149;
            }

            objc_autoreleasePoolPop(v146);

            v151 = *(*(a1 + 272) + 160);
            v152 = &_dispatch_main_q;
            v153 = objc_autoreleasePoolPush();
            if ((*(v151 + 44) & 1) == 0)
            {
              objc_storeStrong((v151 + 32), &_dispatch_main_q);
            }

            objc_autoreleasePoolPop(v153);

            v154 = *(*(a1 + 272) + 160);
            v155 = objc_autoreleasePoolPush();
            if (*(v154 + 24))
            {
              if (*(v154 + 32))
              {
                if (*v154)
                {
                  v156 = [[NRDeviceIdentifier alloc] initWithUUID:*v154];
                }

                else
                {
                  v157 = +[PDRRegistry sharedInstance];
                  v158 = [v157 getActivePairedDeviceIncludingAltAccount];

                  v156 = [v158 bluetoothIdentifier];

                  if (v156)
                  {
                    v3 = [v158 bluetoothIdentifier];
                    v156 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v3];
                  }
                }

                if (v156)
                {
                  v159 = [[NRDeviceMonitorObjc alloc] initWithDeviceIdentifier:v156 callback:*(v154 + 24) queue:*(v154 + 32)];
                  v160 = *(v154 + 8);
                  *(v154 + 8) = v159;

                  if (*(v154 + 8))
                  {
                    *(v154 + 44) = 1;
                  }

                  goto LABEL_214;
                }

                v227 = global_os_log;
                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  *v248 = 136446210;
                  *&v248[4] = "nr_device_monitor_activate";
                  v228 = "%{public}s: No device found for monitor.";
                  goto LABEL_329;
                }

LABEL_330:
                v156 = 0;
                v12 = &unk_1000A9000;
                goto LABEL_214;
              }

              v227 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_330;
              }

              *v248 = 136446210;
              *&v248[4] = "nr_device_monitor_activate";
              v228 = "%{public}s: No running queue available for monitor.";
            }

            else
            {
              v227 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_330;
              }

              *v248 = 136446210;
              *&v248[4] = "nr_device_monitor_activate";
              v228 = "%{public}s: No callback available for monitor.";
            }

LABEL_329:
            _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_ERROR, v228, v248, 0xCu);
            v156 = 0;
            v12 = &unk_1000A9000;
LABEL_214:

            objc_autoreleasePoolPop(v155);
            v142 = *(a1 + 272);
            goto LABEL_215;
          }

          v230 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            *v248 = 136446722;
            *&v248[4] = "nr_device_monitor_create";
            *&v248[12] = 2048;
            *&v248[14] = 1;
            *&v248[22] = 2048;
            *&v248[24] = 48;
LABEL_343:
            _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", v248, 0x20u);
          }

LABEL_344:
          __break(1u);
LABEL_345:
          v231 = *(v11 + 176);
          if (!os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_355;
          }

          *v248 = log;
          *&v248[4] = "dnssd_proxy_dns_evaluate";
          *&v248[12] = 1024;
          *&v248[14] = v13;
          *&v248[18] = 2048;
          *&v248[20] = v3;
          *&v248[28] = 2080;
          *&v248[30] = "match";
          *&v248[38] = 2080;
          *&v248[40] = "dnssd-proxy.c";
          v249 = 1024;
          v250 = 4289;
          v26 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
          goto LABEL_353;
        }

LABEL_215:
        v161 = *(a2 + 64);
        LODWORD(v11) = *(a2 + 90);
        v239 = 0;
        v240 = 0;
        v241 = 0;
        if (v161 <= 0xB)
        {
          v162 = v161;
          v163 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *v248 = 136446466;
            *&v248[4] = "dso_message_received";
            *&v248[12] = 2048;
            *&v248[14] = v162;
            v164 = "%{public}s: dso_message_received: response too short: %ld bytes";
LABEL_218:
            v165 = v163;
            v166 = 22;
            goto LABEL_299;
          }

          goto LABEL_300;
        }

        if ((v11 & 0x80000000) != 0)
        {
          v178 = *v235;
          if (!*v235)
          {
            v163 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v181 = *(v142 + 152);
              *v248 = 136446466;
              *&v248[4] = "dso_message_received";
              *&v248[12] = 2080;
              *&v248[14] = v181;
              v164 = "%{public}s: dso_message_received: response with id==0 received from %s";
              goto LABEL_218;
            }

LABEL_300:
            dso_state_cancel(v142);
            goto LABEL_301;
          }

          if (v161 <= 0xF && v161 != 12)
          {
            v179 = v161;
            v170 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v180 = *(v142 + 152);
              *v248 = 136446722;
              *&v248[4] = "dso_message_received";
              *&v248[12] = 2048;
              *&v248[14] = v179;
              *&v248[22] = 2080;
              *&v248[24] = v180;
              v164 = "%{public}s: dso_message_received: response with bogus length==%ld received from %s";
              goto LABEL_242;
            }

            goto LABEL_300;
          }

          v182 = *(v142 + 168);
          v183 = v182[1];
          if (v183 < 1)
          {
LABEL_249:
            v187 = v161;
            v188 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v189 = *(v142 + 152);
              *v248 = 136447234;
              *&v248[4] = "dso_message_received";
              *&v248[12] = 2080;
              *&v248[14] = v189;
              *&v248[22] = 2048;
              *&v248[24] = v187;
              *&v248[32] = 1024;
              *&v248[34] = v178;
              *&v248[38] = 1024;
              *&v248[40] = v178 >> 8;
              v164 = "%{public}s: dso_message_received: fatal: %s sent %ld byte message, QR=1, xid=%02x%02x";
              v165 = v188;
              v166 = 44;
              goto LABEL_299;
            }

            goto LABEL_300;
          }

          v184 = v11;
          v185 = 0;
          v186 = 2;
          while (LOWORD(v182[v186]) != v178)
          {
            ++v185;
            v186 += 4;
            if (v183 == v185)
            {
              goto LABEL_249;
            }
          }

          v193 = *&v182[4 * v185 + 4];
          v194 = *(a2 + 91) & 0xF;
          LOWORD(v241) = *(a2 + 91) & 0xF;
          v239 = v193;
          v240 = a2;
          if ((*(v142 + 52) & 1) == 0 && (*(v142 + 53) & 1) == 0 && !v194)
          {
            v195 = v161;
            dso_session_established(v142);
            v161 = v195;
            v182 = *(v142 + 168);
          }

          v196 = &v182[4 * v185];
          *(v196 + 4) = 0;
          *(v196 + 2) = 0;
          if (--*v182 < 0)
          {
            v233 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *v248 = 136446210;
              *&v248[4] = "dso_message_received";
              _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "%{public}s: dso_message_receive: programming error: outstanding_query_count went negative.", v248, 0xCu);
            }

            __assert_rtn("dso_message_received", "dso.c", 850, "0");
          }

          LODWORD(v11) = v184;
          if (v161 == 12)
          {
            *(v142 + 88) = 0;
            *(v142 + 112) = 0;
          }
        }

        v167 = 0;
        v168 = (a2 + 93);
        do
        {
          if (*(v168 - 1) || *v168)
          {
            v172 = v161;
            v173 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_300;
            }

            v174 = *(v142 + 152);
            v175 = "ANCOUNT";
            v176 = "ARCOUNT";
            if (v167 == 2)
            {
              v176 = "NSCOUNT";
            }

            *v248 = 136446978;
            *&v248[4] = "dso_message_received";
            if (v167 != 1)
            {
              v175 = v176;
            }

            *&v248[12] = 2080;
            *&v248[14] = v174;
            *&v248[22] = 2048;
            *&v248[24] = v172;
            if (v167)
            {
              v177 = v175;
            }

            else
            {
              v177 = "QDCOUNT";
            }

            *&v248[32] = 2080;
            *&v248[34] = v177;
            v164 = "%{public}s: dso_message_received: fatal: %s sent %ld byte DSO message, %s is nonzero";
            v165 = v173;
            v166 = 42;
            goto LABEL_299;
          }

          ++v167;
          v168 += 2;
        }

        while (v167 != 4);
        if (v161 <= 0xF && v161 != 12)
        {
          v169 = v161;
          v170 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_300;
          }

          v171 = *(v142 + 152);
          *v248 = 136446722;
          *&v248[4] = "dso_message_received";
          *&v248[12] = 2080;
          *&v248[14] = v171;
          *&v248[22] = 2048;
          *&v248[24] = v169;
          v164 = "%{public}s: dso_message_received: fatal: %s sent short (%ld byte) DSO message";
LABEL_242:
          v165 = v170;
          v166 = 32;
LABEL_299:
          _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, v164, v248, v166);
          goto LABEL_300;
        }

        if ((*(v142 + 53) & 1) == 0)
        {
          v190 = *(v142 + 52);
          if (v190 != 1 || (v11 & 0x80000000) != 0)
          {
            if (((v11 < 0) ^ v190))
            {
              goto LABEL_273;
            }
          }

          else
          {
            v191 = v161;
            dso_session_established(v142);
            v161 = v191;
            if (*(v142 + 53) & 1) != 0 || (((v11 < 0) ^ *(v142 + 52)))
            {
              goto LABEL_273;
            }
          }

          v198 = v11;
          v11 = v161;
          v199 = global_os_log;
          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            v200 = "request";
            *&v248[4] = "dso_message_received";
            v201 = *(v142 + 152);
            *v248 = 136446722;
            if (v198 < 0)
            {
              v200 = "response";
            }

            *&v248[12] = 2080;
            *&v248[14] = v200;
            *&v248[22] = 2080;
            *&v248[24] = v201;
            _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "%{public}s: dso_message_received: received a %s with no established session from %s", v248, 0x20u);
          }

          dso_state_cancel(v142);
          v161 = v11;
          LODWORD(v11) = v198;
        }

LABEL_273:
        v234 = v11;
        LOBYTE(v11) = 1;
        v236 = v161;
        while (1)
        {
          if (v161 != 12)
          {
            v202 = 0;
            v3 = 12;
            while (1)
            {
              v203 = __rev16(*(v235 + v3));
              v204 = __rev16(*(v235 + v3 + 2));
              if (v3 + v204 > v161)
              {
                break;
              }

              if (v11)
              {
                ++v202;
              }

              else if (v3 == 12)
              {
                *(v142 + 88) = v203;
                *(v142 + 90) = v204;
                *(v142 + 96) = a2 + 104;
                *(v142 + 112) = 0;
              }

              else
              {
                v205 = *(v142 + 112);
                v206 = *(v142 + 116);
                if (v205 >= v206)
                {
                  log = global_os_log;
                  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                  {
                    v208 = *(v142 + 152);
                    *v248 = 136447234;
                    *&v248[4] = "dso_message_received";
                    *&v248[12] = 2080;
                    *&v248[14] = v208;
                    *&v248[22] = 1024;
                    *&v248[24] = v203;
                    *&v248[28] = 2048;
                    *&v248[30] = v204;
                    *&v248[38] = 1024;
                    *&v248[40] = v206;
                    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%{public}s: dso_message_received: %s: ignoring additional TLV (%d %ld) in excess of %d", v248, 0x2Cu);
                  }

                  v161 = v236;
                }

                else
                {
                  v207 = *(v142 + 104) + 16 * v205;
                  *v207 = v203;
                  *(v207 + 2) = v204;
                  *(v207 + 8) = v235 + v3 + 4;
                  *(v142 + 112) = v205 + 1;
                }
              }

              v3 += v204 + 4;
              if (v3 >= v161)
              {
                goto LABEL_288;
              }
            }

            v212 = v161;
            v12 = &unk_1000A9000;
            v213 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              v214 = *(v142 + 152);
              *v248 = 136447234;
              *&v248[4] = "dso_message_received";
              *&v248[12] = 2080;
              *&v248[14] = v214;
              *&v248[22] = 1024;
              *&v248[24] = v203;
              *&v248[28] = 2048;
              *&v248[30] = v204;
              *&v248[38] = 2048;
              *&v248[40] = v212;
              v164 = "%{public}s: dso_message_received: fatal: %s: TLV (%d %ld) extends past end (%ld)";
              v165 = v213;
              v166 = 48;
              goto LABEL_299;
            }

            goto LABEL_300;
          }

          v202 = 0;
LABEL_288:
          if ((v11 & 1) == 0)
          {
            break;
          }

          v11 = 0;
          if (v202 > *(v142 + 116))
          {
            v13 = v161;
            v209 = *(v142 + 104);
            if (v209 != (v142 + 120) && v209 != 0)
            {
              free(v209);
              *(v142 + 104) = 0;
            }

            v211 = malloc_type_calloc(v202, 0x10uLL, 0x3F66E0EFuLL);
            if (!v211)
            {
              goto LABEL_344;
            }

            LOBYTE(v11) = 0;
            *(v142 + 104) = v211;
            *(v142 + 116) = v202;
            v161 = v13;
          }
        }

        v217 = *(v142 + 24);
        v12 = &unk_1000A9000;
        if (!v217)
        {
          goto LABEL_301;
        }

        if (v161 != 12)
        {
          v218 = *(v142 + 88);
          if (v218 == 2)
          {
            dso_retry_delay(v142, v235);
            goto LABEL_301;
          }

          if (v218 == 1)
          {
            dso_keepalive(v142, v235, (v234 >> 7) & 1);
            goto LABEL_301;
          }
        }

        if ((v234 & 0x80000000) != 0)
        {
          v219 = &v239;
          v220 = v142;
          v221 = 4;
        }

        else
        {
          v219 = a2;
          v220 = v142;
          v221 = 2;
        }

        v217(*(v142 + 8), v219, v220, v221);
        goto LABEL_301;
      }

      v226 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
LABEL_322:
        v142 = *(a1 + 272);
        *(v142 + 54) = 0;
        goto LABEL_215;
      }

      *v248 = 136446210;
      *&v248[4] = "ioloop_comm_requires_sleep_suspension";
      v223 = "%{public}s: Failed to get path information when checking the sleep suspension";
      v224 = v226;
      v225 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v222 = global_os_log;
      if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_322;
      }

      *v248 = 136446210;
      *&v248[4] = "ioloop_comm_requires_sleep_suspension";
      v223 = "%{public}s: comm_t object has NULL nw_connection object.";
      v224 = v222;
      v225 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(&_mh_execute_header, v224, v225, v223, v248, 0xCu);
    goto LABEL_322;
  }

  if (!*(a2 + 92))
  {
LABEL_141:
    v103 = a3[4];
    if (v103)
    {
      ioloop_cancel_wake_event(v103);
    }

    goto LABEL_301;
  }

  v43 = 0;
  v238 = __rev16(*(a2 + 92));
  LODWORD(log) = 136447490;
  while (1)
  {
    memset(v247, 0, sizeof(v247));
    memset(buf, 0, sizeof(buf));
    if ((dns_rr_parse_() & 1) == 0)
    {
      v104 = v12[22];
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        v105 = *(a3 + 1);
        if (a1)
        {
          v106 = *(a1 + 180);
        }

        else
        {
          v106 = 0;
        }

        v192 = *(a1 + 192);
        *v248 = 136447235;
        *&v248[4] = "dnssd_proxy_dns_evaluate";
        *&v248[12] = 1024;
        *&v248[14] = v105;
        *&v248[18] = 1024;
        *&v248[20] = v106;
        *&v248[24] = 2160;
        *&v248[26] = 1752392040;
        *&v248[34] = 2081;
        *&v248[36] = v192;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "%{public}s: [TRK%d][C%d] %{private, mask.hash}s: rr parse failed.", v248, 0x2Cu);
      }

      v35 = a1;
      v36 = a2;
      v37 = v11;
      v38 = 1;
      goto LABEL_46;
    }

    if (dp_num_outstanding_queries >= 256)
    {
      ++num_queries_dropped_for_load;
      dso_simple_response(a3[1], a2, v11, 2);
      v107 = v12[22];
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v108 = *(a3 + 1);
        v109 = bswap32(*v11) >> 16;
        *v248 = 136446722;
        *&v248[4] = "dp_dns_query";
        *&v248[12] = 1024;
        *&v248[14] = v108;
        *&v248[18] = 1024;
        *&v248[20] = v109;
        _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%{public}s: [TRK%d][QID %x] dropping query because there are too many", v248, 0x18u);
      }

      goto LABEL_164;
    }

    LODWORD(v239) = 0;
    v44 = dp_query_create(a3, buf, a2, 0, &v239);
    if (!v44)
    {
      v110 = v12[22];
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        v111 = *(a3 + 1);
        v112 = bswap32(*v11) >> 16;
        *v248 = 136446722;
        *&v248[4] = "dp_dns_query";
        *&v248[12] = 1024;
        *&v248[14] = v111;
        *&v248[18] = 1024;
        *&v248[20] = v112;
        _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "%{public}s: [TRK%d][QID %x] query create failed", v248, 0x18u);
      }

      dso_simple_response(a3[1], a2, v11, v239);
      goto LABEL_164;
    }

    v45 = v44;
    v44[22] = v238;
    v46 = *(v44 + 21);
    *(v46 + 2) &= 0xF0FFu;
    *(v46 + 4) = 256;
    v47 = *(v44 + 25);
    v48 = *(v47 + 32);
    v49 = (v44 + 24);
    if (*(v47 + 8))
    {
      dns_name_to_wire_(0, v49, v48, 4043);
      v50 = *(v45 + 152);
      dns_full_name_to_wire_((v45 + 32), v45 + 96, *(*(*(v45 + 200) + 8) + 8), 4046);
      v51 = *(v45 + 152);
      v52 = "enclosing_domain";
      if (v51 <= 1)
      {
        v52 = 0;
      }

      if (v50 >= 2)
      {
        v52 = "name";
      }
    }

    else
    {
      dns_full_name_to_wire_(0, v49, v48, 4048);
      v51 = *(v45 + 152);
      v52 = "full name";
      if (v51 < 2)
      {
        v52 = 0;
      }
    }

    if (v51 > 1)
    {
      goto LABEL_75;
    }

    v53 = *(v45 + 104);
    if ((v53 + 2) >= *(v45 + 112))
    {
      v51 = 111;
      *(v45 + 152) = 111;
      *(v45 + 144) = 4050;
LABEL_75:
      if (v52)
      {
        v64 = 0;
      }

      else
      {
        v64 = v51 > 1;
      }

      if (v64)
      {
        v52 = "TYPE";
      }

      goto LABEL_80;
    }

    v54 = buf[8];
    v55 = buf[9];
    *(v45 + 104) = v53 + 1;
    *v53 = v55;
    v56 = *(v45 + 104);
    *(v45 + 104) = v56 + 1;
    *v56 = v54;
    v57 = *(v45 + 152);
    if (v52)
    {
      v58 = 0;
    }

    else
    {
      v58 = v57 > 1;
    }

    if (v58)
    {
      v52 = "TYPE";
    }

    if (v57 <= 1)
    {
      v59 = *(v45 + 104);
      if ((v59 + 2) < *(v45 + 112))
      {
        v60 = buf[10];
        v61 = buf[11];
        *(v45 + 104) = v59 + 1;
        *v59 = v61;
        v62 = *(v45 + 104);
        *(v45 + 104) = v62 + 1;
        *v62 = v60;
        v63 = *(v45 + 152) > 1u;
        goto LABEL_81;
      }

      *(v45 + 152) = 111;
      *(v45 + 144) = 4051;
    }

LABEL_80:
    v63 = 1;
LABEL_81:
    v65 = v63 && v52 == 0 ? "CLASS" : v52;
    if (v65)
    {
      break;
    }

    **(v45 + 96) = *v11;
    *(v45 + 92) = 1;
    v66 = a3;
    do
    {
      v67 = v66[2];
      if (!v67)
      {
        v66[2] = v45;
        v71 = v12[22];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = *v45;
          *v248 = 136447490;
          *&v248[4] = "dp_query_track";
          *&v248[12] = 1024;
          *&v248[14] = v72;
          *&v248[18] = 2048;
          *&v248[20] = v45;
          *&v248[28] = 2080;
          *&v248[30] = "query";
          *&v248[38] = 2080;
          *&v248[40] = "dnssd-proxy.c";
          v249 = 1024;
          v250 = 1033;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v248, 0x36u);
        }

        v73 = *v45;
        if (!*v45)
        {
          ++dnssd_query_created;
          *v45 = 1;
          goto LABEL_98;
        }

        v74 = v73 + 1;
        *v45 = v73 + 1;
        if (v73 + 1 < 10001)
        {
          goto LABEL_98;
        }

        v231 = v12[22];
        if (!os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_355;
        }

        *v248 = 136447490;
        *&v248[4] = "dp_query_track";
        *&v248[12] = 1024;
        *&v248[14] = v74;
        *&v248[18] = 2048;
        *&v248[20] = v45;
        *&v248[28] = 2080;
        *&v248[30] = "query";
        *&v248[38] = 2080;
        *&v248[40] = "dnssd-proxy.c";
        v249 = 1024;
        v250 = 1033;
        v26 = "%{public}s: ALLOC: retain at %2.2d: %p (%10s): %s:%d";
        goto LABEL_353;
      }

      v66 = v66[2];
    }

    while (v67 != v45);
    v68 = v12[22];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = *(v45 + 8);
      if (v69)
      {
        LODWORD(v69) = *(v69 + 4);
      }

      v70 = *(v45 + 4);
      *v248 = 136446722;
      *&v248[4] = "dp_query_track";
      *&v248[12] = 1024;
      *&v248[14] = v70;
      *&v248[18] = 1024;
      *&v248[20] = v69;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%{public}s: [Q%d][TRK%d] query is already being tracked.", v248, 0x18u);
    }

LABEL_98:
    v244 = 0;
    if (!dp_query_start(v45, &v239, &v244))
    {
      v120 = v12[22];
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        v121 = *(v45 + 4);
        v122 = *(a3 + 1);
        v123 = bswap32(*v11) >> 16;
        *v248 = 136446978;
        *&v248[4] = "dp_dns_query";
        *&v248[12] = 1024;
        *&v248[14] = v121;
        *&v248[18] = 1024;
        *&v248[20] = v122;
        *&v248[24] = 1024;
        *&v248[26] = v123;
        v116 = "%{public}s: [Q%d][TRK%d][QID %x] query start failed";
        v117 = v120;
        v118 = OS_LOG_TYPE_DEFAULT;
        v119 = 30;
LABEL_155:
        _os_log_impl(&_mh_execute_header, v117, v118, v116, v248, v119);
      }

      goto LABEL_156;
    }

    if (v244 == 1)
    {
      v75 = v12[22];
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = *(v45 + 4);
        v77 = *(a3 + 1);
        *v248 = 136446722;
        *&v248[4] = "dp_dns_query";
        *&v248[12] = 1024;
        *&v248[14] = v76;
        *&v248[18] = 1024;
        *&v248[20] = v77;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][TRK%d] hardwired reply", v248, 0x18u);
      }

      dp_query_send_dns_response(v45, "hardwired");
      dp_question_cache_remove_queries(*(v45 + 200));
      v78 = *(v45 + 200);
      if (v78)
      {
        v79 = v11;
        v80 = v12;
        v81 = *(v78 + 60);
        if (v81)
        {
          v82 = v80[22];
          if (v81 < 10001)
          {
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              *v248 = 136447490;
              *&v248[4] = "dp_dns_query";
              *&v248[12] = 1024;
              *&v248[14] = v81;
              *&v248[18] = 2048;
              *&v248[20] = v78;
              *&v248[28] = 2080;
              *&v248[30] = "query->question";
              *&v248[38] = 2080;
              *&v248[40] = "dnssd-proxy.c";
              v249 = 1024;
              v250 = 4077;
              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v248, 0x36u);
              v78 = *(v45 + 200);
              v81 = *(v78 + 60);
            }

            v8 = v81 == 1;
            *(v78 + 60) = v81 - 1;
            v12 = v80;
            v11 = v79;
            if (v8)
            {
              v83 = v12[22];
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                *v248 = 136447234;
                *&v248[4] = "dp_dns_query";
                *&v248[12] = 2048;
                *&v248[14] = v78;
                *&v248[22] = 2080;
                *&v248[24] = "query->question";
                *&v248[32] = 2080;
                *&v248[34] = "dnssd-proxy.c";
                *&v248[42] = 1024;
                *&v248[44] = 4077;
                _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v248, 0x30u);
                v78 = *(v45 + 200);
              }

              ++question_finalized;
              question_finalize(v78);
            }

            goto LABEL_112;
          }

          if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
          {
            *v248 = 136447490;
            *&v248[4] = "dp_dns_query";
            *&v248[12] = 1024;
            *&v248[14] = v81;
            *&v248[18] = 2048;
            *&v248[20] = v78;
            *&v248[28] = 2080;
            *&v248[30] = "query->question";
            *&v248[38] = 2080;
            *&v248[40] = "dnssd-proxy.c";
            v249 = 1024;
            v250 = 4077;
            v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
            v229 = v82;
            goto LABEL_354;
          }

LABEL_355:
          abort();
        }

        v231 = v80[22];
        if (!os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_355;
        }

        *v248 = 136447490;
        *&v248[4] = "dp_dns_query";
        *&v248[12] = 1024;
        *&v248[14] = 0;
        *&v248[18] = 2048;
        *&v248[20] = v78;
        *&v248[28] = 2080;
        *&v248[30] = "query->question";
        *&v248[38] = 2080;
        *&v248[40] = "dnssd-proxy.c";
        v249 = 1024;
        v250 = 4077;
        v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
LABEL_353:
        v229 = v231;
LABEL_354:
        _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_FAULT, v26, v248, 0x36u);
        goto LABEL_355;
      }

LABEL_112:
      *(v45 + 200) = 0;
    }

    else
    {
      v84 = *(v45 + 200);
      v85 = v12[22];
      v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
      if (v84)
      {
        if (v86)
        {
          v87 = *(v45 + 4);
          v88 = *(a3 + 1);
          *v248 = 136446722;
          *&v248[4] = "dp_dns_query";
          *&v248[12] = 1024;
          *&v248[14] = v87;
          *&v248[18] = 1024;
          *&v248[20] = v88;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][TRK%d] replying from cache", v248, 0x18u);
          v84 = *(v45 + 200);
        }

        dp_query_reply_from_cache(v84, v45, 0);
        dp_question_cache_remove_queries(*(v45 + 200));
      }

      else if (v86)
      {
        v89 = *(v45 + 4);
        v90 = *(a3 + 1);
        *v248 = 136446722;
        *&v248[4] = "dp_dns_query";
        *&v248[12] = 1024;
        *&v248[14] = v89;
        *&v248[18] = 1024;
        *&v248[20] = v90;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%{public}s: [Q%d][TRK%d] not replying from cache", v248, 0x18u);
      }
    }

    v91 = *v45;
    if (!*v45)
    {
      v231 = v12[22];
      if (!os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_355;
      }

      *v248 = 136447490;
      *&v248[4] = "dp_dns_query";
      *&v248[12] = 1024;
      *&v248[14] = 0;
      *&v248[18] = 2048;
      *&v248[20] = v45;
      *&v248[28] = 2080;
      *&v248[30] = "query";
      *&v248[38] = 2080;
      *&v248[40] = "dnssd-proxy.c";
      v249 = 1024;
      v250 = 4097;
      v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      goto LABEL_353;
    }

    v92 = v12[22];
    if (v91 >= 10001)
    {
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        *v248 = 136447490;
        *&v248[4] = "dp_dns_query";
        *&v248[12] = 1024;
        *&v248[14] = v91;
        *&v248[18] = 2048;
        *&v248[20] = v45;
        *&v248[28] = 2080;
        *&v248[30] = "query";
        *&v248[38] = 2080;
        *&v248[40] = "dnssd-proxy.c";
        v249 = 1024;
        v250 = 4097;
        v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
        v229 = v92;
        goto LABEL_354;
      }

      goto LABEL_355;
    }

    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *v248 = 136447490;
      *&v248[4] = "dp_dns_query";
      *&v248[12] = 1024;
      *&v248[14] = v91;
      *&v248[18] = 2048;
      *&v248[20] = v45;
      *&v248[28] = 2080;
      *&v248[30] = "query";
      *&v248[38] = 2080;
      *&v248[40] = "dnssd-proxy.c";
      v249 = 1024;
      v250 = 4097;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v248, 0x36u);
      v91 = *v45;
    }

    *v45 = v91 - 1;
    if (v91 == 1)
    {
      v93 = v12[22];
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *v248 = 136447234;
        *&v248[4] = "dp_dns_query";
        *&v248[12] = 2048;
        *&v248[14] = v45;
        *&v248[22] = 2080;
        *&v248[24] = "query";
        *&v248[32] = 2080;
        *&v248[34] = "dnssd-proxy.c";
        *&v248[42] = 1024;
        *&v248[44] = 4097;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v248, 0x30u);
      }

      ++dnssd_query_finalized;
      dnssd_query_finalize(v45);
    }

    dns_rrdata_free(buf);
    v94 = *buf;
    do
    {
      if (!v94)
      {
        break;
      }

      v95 = *v94;
      free(v94);
      v94 = v95;
    }

    while (v95);
    if (++v43 == v238)
    {
      goto LABEL_141;
    }
  }

  v113 = v12[22];
  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
  {
    v114 = *(a3 + 1);
    v115 = bswap32(*v11) >> 16;
    *v248 = 136446978;
    *&v248[4] = "dp_dns_query";
    *&v248[12] = 1024;
    *&v248[14] = v114;
    *&v248[18] = 1024;
    *&v248[20] = v115;
    *&v248[24] = 2082;
    *&v248[26] = v65;
    v116 = "%{public}s: [TRK%d][QID %x] failure encoding question: %{public}s";
    v117 = v113;
    v118 = OS_LOG_TYPE_ERROR;
    v119 = 34;
    goto LABEL_155;
  }

LABEL_156:
  dso_simple_response(a3[1], a2, v11, v239);
  *(v45 + 208) = 1;
  dp_question_cache_remove_queries(*(v45 + 200));
  dnssd_query_cancel(v45);
  v124 = *v45;
  if (!*v45)
  {
    v231 = v12[22];
    if (!os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_355;
    }

    *v248 = 136447490;
    *&v248[4] = "dp_dns_query";
    *&v248[12] = 1024;
    *&v248[14] = 0;
    *&v248[18] = 2048;
    *&v248[20] = v45;
    *&v248[28] = 2080;
    *&v248[30] = "query";
    *&v248[38] = 2080;
    *&v248[40] = "dnssd-proxy.c";
    v249 = 1024;
    v250 = 4093;
    v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_353;
  }

  v125 = v12[22];
  if (v124 >= 10001)
  {
    if (!os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_355;
    }

    *v248 = 136447490;
    *&v248[4] = "dp_dns_query";
    *&v248[12] = 1024;
    *&v248[14] = v124;
    *&v248[18] = 2048;
    *&v248[20] = v45;
    *&v248[28] = 2080;
    *&v248[30] = "query";
    *&v248[38] = 2080;
    *&v248[40] = "dnssd-proxy.c";
    v249 = 1024;
    v250 = 4093;
    v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    v229 = v125;
    goto LABEL_354;
  }

  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
  {
    *v248 = 136447490;
    *&v248[4] = "dp_dns_query";
    *&v248[12] = 1024;
    *&v248[14] = v124;
    *&v248[18] = 2048;
    *&v248[20] = v45;
    *&v248[28] = 2080;
    *&v248[30] = "query";
    *&v248[38] = 2080;
    *&v248[40] = "dnssd-proxy.c";
    v249 = 1024;
    v250 = 4093;
    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v248, 0x36u);
    v124 = *v45;
  }

  *v45 = v124 - 1;
  if (v124 == 1)
  {
    v126 = v12[22];
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      *v248 = 136447234;
      *&v248[4] = "dp_dns_query";
      *&v248[12] = 2048;
      *&v248[14] = v45;
      *&v248[22] = 2080;
      *&v248[24] = "query";
      *&v248[32] = 2080;
      *&v248[34] = "dnssd-proxy.c";
      *&v248[42] = 1024;
      *&v248[44] = 4093;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v248, 0x30u);
    }

    ++dnssd_query_finalized;
    dnssd_query_finalize(v45);
  }

LABEL_164:
  dns_rrdata_free(buf);
  v127 = *buf;
  do
  {
    if (!v127)
    {
      break;
    }

    v128 = *v127;
    free(v127);
    v127 = v128;
  }

  while (v128);
  v129 = a3[2];
  if (v129)
  {
    v11 = v12;
    v130 = 0;
    do
    {
      while (1)
      {
        v3 = v129;
        v129 = *(v129 + 16);
        if (*(v3 + 64) == a2)
        {
          *(v3 + 208) = 1;
          dp_question_cache_remove_queries(*(v3 + 200));
          if (!v130)
          {
            break;
          }
        }

        if (!v129)
        {
          goto LABEL_179;
        }
      }

      v131 = v12[22];
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        v132 = *v3;
        *v248 = 136447490;
        *&v248[4] = "dnssd_proxy_dns_evaluate";
        *&v248[12] = 1024;
        *&v248[14] = v132;
        *&v248[18] = 2048;
        *&v248[20] = v3;
        *&v248[28] = 2080;
        *&v248[30] = "match";
        *&v248[38] = 2080;
        *&v248[40] = "dnssd-proxy.c";
        v249 = 1024;
        v250 = 4289;
        _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:  retain at %2.2d: %p (%10s): %s:%d", v248, 0x36u);
      }

      v133 = *v3;
      if (!*v3)
      {
        ++dnssd_query_created;
        v133 = *v3;
      }

      LODWORD(v13) = v133 + 1;
      *v3 = v133 + 1;
      if (v133 + 1 >= 10001)
      {
        goto LABEL_345;
      }

      v130 = v3;
    }

    while (v129);
LABEL_179:
    if (v130)
    {
      dnssd_query_cancel(v130);
      v134 = *v130;
      if (!*v130)
      {
        v231 = v12[22];
        if (!os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_355;
        }

        *v248 = 136447490;
        *&v248[4] = "dnssd_proxy_dns_evaluate";
        *&v248[12] = 1024;
        *&v248[14] = 0;
        *&v248[18] = 2048;
        *&v248[20] = v130;
        *&v248[28] = 2080;
        *&v248[30] = "match";
        *&v248[38] = 2080;
        *&v248[40] = "dnssd-proxy.c";
        v249 = 1024;
        v250 = 4295;
        v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
        goto LABEL_353;
      }

      v25 = v12[22];
      if (v134 < 10001)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v248 = 136447490;
          *&v248[4] = "dnssd_proxy_dns_evaluate";
          *&v248[12] = 1024;
          *&v248[14] = v134;
          *&v248[18] = 2048;
          *&v248[20] = v130;
          *&v248[28] = 2080;
          *&v248[30] = "match";
          *&v248[38] = 2080;
          *&v248[40] = "dnssd-proxy.c";
          v249 = 1024;
          v250 = 4295;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v248, 0x36u);
          v134 = *v130;
        }

        *v130 = v134 - 1;
        if (v134 == 1)
        {
          v135 = v12[22];
          if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
          {
            *v248 = 136447234;
            *&v248[4] = "dnssd_proxy_dns_evaluate";
            *&v248[12] = 2048;
            *&v248[14] = v130;
            *&v248[22] = 2080;
            *&v248[24] = "match";
            *&v248[32] = 2080;
            *&v248[34] = "dnssd-proxy.c";
            *&v248[42] = 1024;
            *&v248[44] = 4295;
            _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v248, 0x30u);
          }

          ++dnssd_query_finalized;
          dnssd_query_finalize(v130);
        }

        goto LABEL_301;
      }

      if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_355;
      }

      *v248 = 136447490;
      *&v248[4] = "dnssd_proxy_dns_evaluate";
      *&v248[12] = 1024;
      *&v248[14] = v134;
      *&v248[18] = 2048;
      *&v248[20] = v130;
      *&v248[28] = 2080;
      *&v248[30] = "match";
      *&v248[38] = 2080;
      *&v248[40] = "dnssd-proxy.c";
      v249 = 1024;
      v250 = 4295;
      v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
LABEL_336:
      v229 = v25;
      goto LABEL_354;
    }
  }

LABEL_301:
  v215 = *a3;
  if (!*a3)
  {
    v25 = v12[22];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_355;
    }

    *v248 = 136447490;
    *&v248[4] = "dnssd_proxy_dns_evaluate";
    *&v248[12] = 1024;
    *&v248[14] = 0;
    *&v248[18] = 2048;
    *&v248[20] = a3;
    *&v248[28] = 2080;
    *&v248[30] = "tracker";
    *&v248[38] = 2080;
    *&v248[40] = "dnssd-proxy.c";
    v249 = 1024;
    v250 = 4316;
    v26 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    goto LABEL_336;
  }

  v25 = v12[22];
  if (v215 >= 10001)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_355;
    }

    *v248 = 136447490;
    *&v248[4] = "dnssd_proxy_dns_evaluate";
    *&v248[12] = 1024;
    *&v248[14] = v215;
    *&v248[18] = 2048;
    *&v248[20] = a3;
    *&v248[28] = 2080;
    *&v248[30] = "tracker";
    *&v248[38] = 2080;
    *&v248[40] = "dnssd-proxy.c";
    v249 = 1024;
    v250 = 4316;
    v26 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    goto LABEL_336;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v248 = 136447490;
    *&v248[4] = "dnssd_proxy_dns_evaluate";
    *&v248[12] = 1024;
    *&v248[14] = v215;
    *&v248[18] = 2048;
    *&v248[20] = a3;
    *&v248[28] = 2080;
    *&v248[30] = "tracker";
    *&v248[38] = 2080;
    *&v248[40] = "dnssd-proxy.c";
    v249 = 1024;
    v250 = 4316;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", v248, 0x36u);
    v215 = *a3;
  }

  *a3 = v215 - 1;
  if (v215 == 1)
  {
    v216 = v12[22];
    if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
    {
      *v248 = 136447234;
      *&v248[4] = "dnssd_proxy_dns_evaluate";
      *&v248[12] = 2048;
      *&v248[14] = a3;
      *&v248[22] = 2080;
      *&v248[24] = "tracker";
      *&v248[32] = 2080;
      *&v248[34] = "dnssd-proxy.c";
      *&v248[42] = 1024;
      *&v248[44] = 4316;
      _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", v248, 0x30u);
    }

    ++dp_tracker_finalized;
    dp_tracker_finalize(a3);
  }
}

void __comm_configure_device_monitor_block_invoke(uint64_t a1, int a2)
{
  v4 = global_os_log;
  v5 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 136446210;
      *&buf[4] = "comm_configure_device_monitor_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Watch sleeps soon.", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 136446210;
      *&buf[4] = "comm_configure_device_monitor_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Watch wakes up.", buf, 0xCu);
    }

    v6 = *(*(a1 + 32) + 272);
    if (*(v6 + 55) == 1)
    {
      *(v6 + 55) = 0;
      v7 = *(v6 + 80);
      if (v7)
      {
        v8 = &_mh_execute_header;
        do
        {
          v9 = v7[3];
          if (v9)
          {
            v10 = *(*(a1 + 32) + 272);
            if (*(v9 + 72) == v10)
            {
              v11 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                v12 = *(v10 + 48);
                v13 = *(v9 + 4);
                *buf = 136446722;
                *&buf[4] = "comm_configure_device_monitor_block_invoke";
                v24 = 1024;
                v25 = v12;
                v26 = 1024;
                v27 = v13;
                _os_log_impl(v8, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%u->Qu%d] Push query has pending updates through DSO session, sending updates now", buf, 0x18u);
                v11 = global_os_log;
              }

              v14 = *(v9 + 200);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v15 = *(*(*(a1 + 32) + 272) + 48);
                v16 = v8;
                v17 = *(v9 + 4);
                v18 = *(v14 + 32);
                v19 = dns_rrtype_to_string(*(v14 + 72));
                *buf = 136447491;
                *&buf[4] = "comm_configure_device_monitor_block_invoke";
                v24 = 1024;
                v25 = v15;
                v26 = 1024;
                v27 = v17;
                v8 = v16;
                v28 = 2160;
                v29 = 1752392040;
                v30 = 2081;
                v31 = v18;
                v32 = 2082;
                v33 = v19;
                _os_log_impl(v16, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%u->Qu%d] Removing all possibly expired records then adding all cached records -- qname: %{private, mask.hash}s, qtype: %{public}s", buf, 0x36u);
              }

              v20 = *(v14 + 32);
              v21 = *(v14 + 72);
              v22 = *(v14 + 74);
              *buf = 0;
              dns_push_query_answer_process(0, 0, v20, v21, v22, 0, buf, 4294967294, v9, 1);
              dp_query_reply_from_cache(v14, v9, 0);
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }
}

BOOL dp_tracker_dso_state_change(int a1, void *a2, uint64_t a3)
{
  if (a1 == 1)
  {
    if (a2[3])
    {
      a2[3] = 0;
      v6 = a2[1];
      if (v6)
      {
        v6[34] = 0;
        ioloop_comm_cancel(v6);
      }

      for (i = a2[2]; i; i = i[2])
      {
        if (i[9] == a3)
        {
          i[9] = 0;
        }

        if (i[10])
        {
          i[10] = 0;
          v8 = *i;
          if (!*i)
          {
            v12 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              *&buf[4] = "dp_tracker_dso_state_change";
              *&buf[12] = 1024;
              *&buf[14] = 0;
              *&buf[18] = 2048;
              *&buf[20] = i;
              *&buf[28] = 2080;
              *&buf[30] = "query";
              *&buf[38] = 2080;
              *&buf[40] = "dnssd-proxy.c";
              LOWORD(v16) = 1024;
              *(&v16 + 2) = 4125;
              v13 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
              v14 = v12;
              goto LABEL_24;
            }

LABEL_25:
            abort();
          }

          v9 = global_os_log;
          if (v8 >= 10001)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
            {
              *buf = 136447490;
              *&buf[4] = "dp_tracker_dso_state_change";
              *&buf[12] = 1024;
              *&buf[14] = v8;
              *&buf[18] = 2048;
              *&buf[20] = i;
              *&buf[28] = 2080;
              *&buf[30] = "query";
              *&buf[38] = 2080;
              *&buf[40] = "dnssd-proxy.c";
              LOWORD(v16) = 1024;
              *(&v16 + 2) = 4125;
              v13 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
              v14 = v9;
LABEL_24:
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v13, buf, 0x36u);
            }

            goto LABEL_25;
          }

          if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            *&buf[4] = "dp_tracker_dso_state_change";
            *&buf[12] = 1024;
            *&buf[14] = v8;
            *&buf[18] = 2048;
            *&buf[20] = i;
            *&buf[28] = 2080;
            *&buf[30] = "query";
            *&buf[38] = 2080;
            *&buf[40] = "dnssd-proxy.c";
            LOWORD(v16) = 1024;
            *(&v16 + 2) = 4125;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
            v8 = *i;
          }

          *i = v8 - 1;
          if (v8 == 1)
          {
            v10 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              *&buf[4] = "dp_tracker_dso_state_change";
              *&buf[12] = 2048;
              *&buf[14] = i;
              *&buf[22] = 2080;
              *&buf[24] = "query";
              *&buf[32] = 2080;
              *&buf[34] = "dnssd-proxy.c";
              *&buf[42] = 1024;
              *&buf[44] = 4125;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
            }

            ++dnssd_query_finalized;
            dnssd_query_finalize(i);
          }
        }
      }
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = __ioloop_run_async_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_41;
    *&buf[40] = 0;
    v16 = 0;
    *&buf[32] = dp_tracker_dso_cleanup;
    dispatch_async(ioloop_main_queue, buf);
  }

  return a1 == 1;
}

void dp_tracker_dso_cleanup()
{
  v0 = dso_connections_needing_cleanup;
  if (dso_connections_needing_cleanup)
  {
    do
    {
      v1 = v0;
      v0 = *v0;
      v2 = v1[10];
      if (v2)
      {
        do
        {
          v4 = *v2;
          v3 = v2[1];
          if (v3)
          {
            v3(v2);
          }

          free(v2);
          v2 = v4;
        }

        while (v4);
      }

      if (v1[4])
      {
        v5 = v1[5];
        if (v5)
        {
          v5();
          v1[4] = 0;
        }
      }

      v6 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v1 + 12);
        v8 = v1[19];
        v9 = v1[1];
        *buf = 136447234;
        v12 = "dso_cleanup";
        v13 = 1024;
        v14 = v7;
        v15 = 2048;
        v16 = v1;
        v17 = 2080;
        v18 = v8;
        v19 = 2048;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [DSO%u] dso_state_t finalizing - dso: %p, remote name: %s, dso->context: %p", buf, 0x30u);
      }

      v10 = v1[13];
      if (v10 != v1 + 15 && v10)
      {
        free(v10);
      }

      free(v1);
    }

    while (v0);
  }

  dso_connections_needing_cleanup = 0;
}

void dp_tracker_disconnected(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = (a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 24);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 48);
    }

    v8 = *(a2 + 4);
    if (v3)
    {
      v9 = *(v3 + 180);
    }

    else
    {
      v9 = 0;
    }

    *buf = 136447234;
    v26 = "dp_tracker_disconnected";
    v27 = 1024;
    *v28 = v8;
    *&v28[4] = 1024;
    *&v28[6] = v7;
    *&v28[10] = 1024;
    *&v28[12] = v9;
    *&v28[16] = 2048;
    *&v28[18] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [TRK%d][DSO%d][C%d] queries %p", buf, 0x28u);
  }

  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = v10[10];
    do
    {
      if (!v11)
      {
        break;
      }

      dso_drop_activity(v10, v11);
      v10 = *(a2 + 24);
      v12 = v10[10] == v11;
      v11 = v10[10];
    }

    while (!v12);
    dso_state_cancel(v10);
    if (*(a2 + 40) == 1)
    {
      v13 = global_os_log;
      v14 = --num_push_sessions;
      if (num_push_sessions < 0)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          v26 = "dp_tracker_went_away";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%{public}s: DNS Push connection count went negative", buf, 0xCu);
        }

        num_push_sessions = 0;
      }

      else if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a2 + 24);
        if (v15)
        {
          LODWORD(v15) = *(v15 + 48);
        }

        v16 = *(a2 + 4);
        v17 = *v4;
        if (*v4)
        {
          LODWORD(v17) = *(v17 + 180);
        }

        *buf = 136447234;
        v26 = "dp_tracker_went_away";
        v27 = 1024;
        *v28 = v16;
        *&v28[4] = 1024;
        *&v28[6] = v15;
        *&v28[10] = 1024;
        *&v28[12] = v17;
        *&v28[16] = 1024;
        *&v28[18] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: [TRK%d][DSO%d][C%d] dso connection count dropped: %d", buf, 0x24u);
      }
    }

    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
  }

  if (v3)
  {
    ioloop_comm_release_(v3, "/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 1067);
    *v4 = 0;
  }

  if (v5)
  {
    while (1)
    {
      v18 = *v5;
      if (!*v5)
      {
        break;
      }

      v19 = global_os_log;
      if (v18 >= 10001)
      {
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136447490;
          v26 = "dp_tracker_disconnected";
          v27 = 1024;
          *v28 = v18;
          *&v28[4] = 2048;
          *&v28[6] = v5;
          *&v28[14] = 2080;
          *&v28[16] = "query";
          *&v28[24] = 2080;
          *&v28[26] = "dnssd-proxy.c";
          v29 = 1024;
          v30 = 1077;
          v23 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
          v24 = v19;
LABEL_42:
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, v23, buf, 0x36u);
        }

        goto LABEL_43;
      }

      v20 = v5[2];
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v26 = "dp_tracker_disconnected";
        v27 = 1024;
        *v28 = v18;
        *&v28[4] = 2048;
        *&v28[6] = v5;
        *&v28[14] = 2080;
        *&v28[16] = "query";
        *&v28[24] = 2080;
        *&v28[26] = "dnssd-proxy.c";
        v29 = 1024;
        v30 = 1077;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", buf, 0x36u);
        v18 = *v5;
      }

      *v5 = v18 - 1;
      if (v18 == 1)
      {
        v21 = global_os_log;
        if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v26 = "dp_tracker_disconnected";
          v27 = 2048;
          *v28 = v5;
          *&v28[8] = 2080;
          *&v28[10] = "query";
          *&v28[18] = 2080;
          *&v28[20] = "dnssd-proxy.c";
          *&v28[28] = 1024;
          *&v28[30] = 1077;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", buf, 0x30u);
        }

        ++dnssd_query_finalized;
        dnssd_query_finalize(v5);
      }

      v5 = v20;
      if (!v20)
      {
        return;
      }
    }

    v22 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136447490;
      v26 = "dp_tracker_disconnected";
      v27 = 1024;
      *v28 = 0;
      *&v28[4] = 2048;
      *&v28[6] = v5;
      *&v28[14] = 2080;
      *&v28[16] = "query";
      *&v28[24] = 2080;
      *&v28[26] = "dnssd-proxy.c";
      v29 = 1024;
      v30 = 1077;
      v23 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
      v24 = v22;
      goto LABEL_42;
    }

LABEL_43:
    abort();
  }
}

void init_dnssd_proxy(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
LABEL_4:
    dnssd_proxy_tls_port = 1;
    values = 0;
    v3 = SCDynamicStoreCreate(kCFAllocatorDefault, @"dnssd-proxy:watch for name change events", monitor_name_changes_callback, (v2 + 56));
    if (!v3)
    {
      v26 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "monitor_name_changes";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s: failed to create SCDynamicStoreRef", buf, 0xCu);
      }

      goto LABEL_49;
    }

    v4 = v3;
    HostNames = SCDynamicStoreKeyCreateHostNames(kCFAllocatorDefault);
    sc_dynamic_store_key_host_name = HostNames;
    if (HostNames)
    {
      values = HostNames;
      v6 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      if (v6)
      {
        v7 = v6;
        if (SCDynamicStoreSetNotificationKeys(v4, v6, 0))
        {
          v8 = SCDynamicStoreSetDispatchQueue(v4, &_dispatch_main_q);
          v9 = global_os_log;
          if (v8)
          {
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              *&buf[4] = "monitor_name_changes";
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Start to monitor local host name changes", buf, 0xCu);
            }

            CFRelease(v7);
            v10 = SCDynamicStoreCopyLocalHostName(0);
            if (update_my_name(v10))
            {
              if (v10)
              {
                CFRelease(v10);
              }

              *buf = 0;
              arc4random_buf(buf, 8uLL);
              v11 = *buf;
              uuid_name = 117;
              v12 = &byte_1000A8BF9;
              if (*buf)
              {
                v12 = &byte_1000A8BF9;
                do
                {
                  *v12++ = initialize_uuid_name_letters[v11 % 0x24];
                  if (v11 < 0x24)
                  {
                    break;
                  }

                  v11 /= 0x24uLL;
                }

                while (v12 < &unk_1000A8CF7);
              }

              *v12 = 0;
              if (srp_tls_init())
              {
                v13 = dnssd_proxy_num_listeners++;
                tls_listener_index = v13;
                dnssd_tls_listener_listen(0);
                dnssd_hardwired_push_setup();
                if (dnssd_proxy_num_listeners >= 1)
                {
                  v14 = 0;
                  do
                  {
                    v15 = *(srp_servers + 96);
                    if (v15)
                    {
                      ioloop_listener_permitted_interface_list_set(dnssd_proxy_listeners[v14], v15);
                    }

                    v16 = global_os_log;
                    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
                    {
                      v17 = *(dnssd_proxy_listeners[v14] + 192);
                      *buf = 136446466;
                      *&buf[4] = "start_dnssd_proxy_listener";
                      v40 = 2082;
                      v41 = v17;
                      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: listener started - name: %{public}s", buf, 0x16u);
                    }

                    ++v14;
                  }

                  while (v14 < dnssd_proxy_num_listeners);
                }

                v18 = new_served_domain(0, my_name);
                if (v18)
                {
                  v19 = v18;
                  v20 = add_new_served_domain_with_interface("local only pseudo interface", 0, 0);
                  if (!v20)
                  {
LABEL_73:
                    if (!v19[6])
                    {
                      served_domain_free(v19);
                    }

                    return;
                  }

                  v21 = v20;
                  if (dnssd_hardwired_setup_for_served_domain(v20))
                  {
                    v22 = add_new_served_domain_with_interface("all locally-discoverable services pseudo interface", 0, 0);
                    v23 = v22;
                    if (v22 && dnssd_hardwired_setup_for_served_domain(v22))
                    {
                      v24 = add_new_served_domain_with_interface("infrastructure interface", 0, 0);
                      v25 = v24;
                      if (v24 && dnssd_hardwired_setup_for_served_domain(v24))
                      {
                        return;
                      }

                      goto LABEL_65;
                    }
                  }

                  else
                  {
                    v23 = 0;
                  }

                  v25 = 0;
LABEL_65:
                  if (!v21[6])
                  {
                    served_domain_free(v21);
                  }

                  if (v23 && !v23[6])
                  {
                    served_domain_free(v23);
                  }

                  if (v25 && !v25[6])
                  {
                    served_domain_free(v25);
                  }

                  goto LABEL_73;
                }

                v37 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  return;
                }

                *buf = 136446466;
                *&buf[4] = "served_domain_init";
                v40 = 2082;
                v41 = my_name;
                v33 = "%{public}s: failed to create new served domain - domain name: %{public}s";
                v34 = v37;
                v35 = 22;
LABEL_54:
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
                return;
              }

              v32 = global_os_log;
              if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
              {
                return;
              }

              *buf = 136446210;
              *&buf[4] = "init_dnssd_proxy";
              v33 = "%{public}s: srp_tls_init failed.";
LABEL_53:
              v34 = v32;
              v35 = 12;
              goto LABEL_54;
            }

            v36 = global_os_log;
            if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "initialize_my_name_and_monitoring";
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s: failed to update myname", buf, 0xCu);
            }

            if (v10)
            {
              CFRelease(v10);
            }

LABEL_51:
            v32 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 136446210;
            *&buf[4] = "init_dnssd_proxy";
            v33 = "%{public}s: initialize_my_name_and_monitoring failed";
            goto LABEL_53;
          }

          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_47;
          }

          *buf = 136446210;
          *&buf[4] = "monitor_name_changes";
          v30 = "%{public}s: SCDynamicStoreSetDispatchQueue failed";
        }

        else
        {
          v9 = global_os_log;
          if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
          {
LABEL_47:
            CFRelease(v4);
            v29 = v7;
            goto LABEL_48;
          }

          *buf = 136446210;
          *&buf[4] = "monitor_name_changes";
          v30 = "%{public}s: SCDynamicStoreSetNotificationKeys failed";
        }

        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
        goto LABEL_47;
      }

      v27 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "monitor_name_changes";
        v28 = "%{public}s: failed to create CFArrayRef for monitored keys";
        goto LABEL_40;
      }
    }

    else
    {
      v27 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "monitor_name_changes";
        v28 = "%{public}s: failed to create SCDynamicStoreKey for host name";
LABEL_40:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
      }
    }

    v29 = v4;
LABEL_48:
    CFRelease(v29);
LABEL_49:
    v31 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "initialize_my_name_and_monitoring";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}s: failed to monitor name changes", buf, 0xCu);
    }

    goto LABEL_51;
  }

  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0xFD7D37C4uLL);
  if (v2)
  {
    *(a1 + 136) = v2;
    *(v2 + 6) = a1;
    *(v2 + 8) = v2;
    goto LABEL_4;
  }

  v38 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    *&buf[4] = "init_dnssd_proxy";
    v40 = 2048;
    v41 = 1;
    v42 = 2048;
    v43 = 96;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}s: strict_calloc(%zu, %zu) failed", buf, 0x20u);
  }

  __break(1u);
}

BOOL update_my_name(const __CFString *a1)
{
  if (!a1)
  {
    strcpy(&local_host_name, "localhost.");
    strcpy(local_host_name_dot_local, "localhost.");
    strcpy(&my_name_buf, "localhost.");
    goto LABEL_20;
  }

  if (!CFStringGetCString(a1, &local_host_name, 256, 0x8000100u))
  {
    v10 = global_os_log;
    result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446723;
    v18 = "update_my_name";
    v19 = 2160;
    v20 = 1752392040;
    v21 = 2081;
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    v12 = "%{public}s: CFStringGetCString failed - local host name: %{private, mask.hash}s";
    goto LABEL_17;
  }

  v2 = strlen(&local_host_name);
  v3 = v2;
  if (!v2)
  {
LABEL_14:
    __memcpy_chk();
    strcpy(&my_name_buf + v3, ".home.arpa.");
    if (snprintf(local_host_name_dot_local, 0x100uLL, "%s.local.", &local_host_name) >= 0x101)
    {
      v10 = global_os_log;
      result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446722;
      v18 = "update_my_name";
      v19 = 2048;
      v20 = strlen(&local_host_name) + 8;
      v21 = 2048;
      CStringPtr = 256;
      v12 = "%{public}s: snprintf failed - name length: %lu, max: %lu";
LABEL_17:
      v13 = v10;
      v14 = 32;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      return 0;
    }

LABEL_20:
    my_name = &my_name_buf;
    v15 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447491;
      v18 = "update_my_name";
      v19 = 2082;
      v20 = "updated";
      v21 = 2160;
      CStringPtr = 1752392040;
      v23 = 2081;
      v24 = &my_name_buf;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2081;
      v28 = local_host_name_dot_local;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s my_name: %{private, mask.hash}s, local host name: %{private, mask.hash}s", buf, 0x3Eu);
    }

    return 1;
  }

  v4 = v2;
  v5 = &local_host_name;
  do
  {
    v7 = *v5;
    v5 = (v5 + 1);
    v6 = v7;
    if (v7 < 0)
    {
      v8 = __maskrune(v6, 0x500uLL);
    }

    else
    {
      v8 = _DefaultRuneLocale.__runetype[v6] & 0x500;
    }

    if (v6 != 45 && v8 == 0)
    {
      v16 = global_os_log;
      result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446466;
      v18 = "update_my_name";
      v19 = 2082;
      v20 = &local_host_name;
      v12 = "%{public}s: invalid DNS name - name: %{public}s";
      goto LABEL_26;
    }

    --v4;
  }

  while (v4);
  if (v3 - 245 > 0xFFFFFFFFFFFFFEFELL)
  {
    goto LABEL_14;
  }

  v16 = global_os_log;
  result = os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v18 = "update_my_name";
    v19 = 2082;
    v20 = &local_host_name;
    v12 = "%{public}s: generated name too long: %{public}s.home.arpa.";
LABEL_26:
    v13 = v16;
    v14 = 22;
    goto LABEL_18;
  }

  return result;
}

void dnssd_tls_listener_listen(uint64_t a1)
{
  v2 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v21 = "dnssd_tls_listener_listen";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: starting DoT listener", buf, 0xCu);
  }

  v18[1] = 0;
  v19 = 0;
  v18[2] = 0;
  v18[0] = 28;
  if (dnssd_proxy_tls_port)
  {
    v3 = 853;
  }

  else
  {
    v3 = 0;
  }

  WORD1(v18[0]) = __rev16(v3);
  v4 = ioloop_listener_create(1, 1, v18, "DNS over TLS", dns_proxy_input, dnssd_tls_listener_restart, dnssd_tls_listener_ready, srp_tls_configure, 0, a1);
  dnssd_proxy_listeners[tls_listener_index] = v4;
  if (!v4)
  {
    v13 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446210;
    v21 = "dnssd_tls_listener_listen";
    v12 = "%{public}s: DNS Push listener: fail.";
    v14 = v13;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 12;
    goto LABEL_25;
  }

  v5 = *(srp_servers + 96);
  if (v5)
  {
    ioloop_listener_permitted_interface_list_set(v4, v5);
  }

  dnssd_tls_key_change_notification_send();
  v6 = dnssd_proxy_listeners[tls_listener_index];
  if (!tls_listener_wakeup)
  {
    tls_listener_wakeup = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/tls-macos.c", 389);
  }

  v7 = *&g_tls_identity_creation_time;
  if (*&g_tls_identity_creation_time <= 0.0)
  {
    goto LABEL_20;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = v7 + 1209600.0 - Current;
  if (v9 <= 0.0)
  {
    v17 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v21 = "srp_tls_get_next_rotation_time";
      v22 = 2048;
      v23 = v7;
      v24 = 2048;
      v25 = Current;
      v26 = 2048;
      v27 = v7 + 1209600.0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%{public}s: The TLS certificate rotation date is in the past - creation date: %lf, now: %lf, rotate date: %lf.", buf, 0x2Au);
    }

LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  if (v9 >= 0x20C49C)
  {
    v11 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    *buf = 136446466;
    v21 = "schedule_tls_certificate_rotation";
    v22 = 1024;
    LODWORD(v23) = v10;
    v12 = "%{public}s: Remaining time too long, unable to set the timer - remaining time: %u.";
    goto LABEL_24;
  }

LABEL_21:
  if (!ioloop_add_wake_event(tls_listener_wakeup, v6, tls_certificate_rotate, 0, 1000 * v10))
  {
    v11 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v21 = "schedule_tls_certificate_rotation";
      v22 = 1024;
      LODWORD(v23) = v10;
      v12 = "%{public}s: Failed to schedule the wake event for the next TLS certificate rotation - remaining_time_to_rotate: %d.";
LABEL_24:
      v14 = v11;
      v15 = OS_LOG_TYPE_FAULT;
      v16 = 18;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v14, v15, v12, buf, v16);
    }
  }
}

BOOL dnssd_hardwired_push_setup()
{
  v0 = served_domains;
  if (served_domains)
  {
    do
    {
      v1 = v0[5];
      if (v1)
      {
        if ((*(v1 + 4) & 1) == 0)
        {
          result = dnssd_hardwired_setup_dns_push_for_domain(v0);
        }
      }

      v0 = *v0;
    }

    while (v0);
  }

  return result;
}

void dnssd_tls_key_change_notification_send()
{
  if (dnssd_tls_key_change_notification_send_dnssd_tls_change_notification_token != -1)
  {
LABEL_2:
    v0 = notify_post("com.apple.srp-mdns-proxy.tls-key-update");
    if (v0)
    {
      v1 = v0;
      v2 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
      {
        v6 = 136446722;
        v7 = "dnssd_tls_key_change_notification_send";
        v8 = 2080;
        v9 = "com.apple.srp-mdns-proxy.tls-key-update";
        v10 = 1024;
        v11 = v1;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s: notify_post(%s) %u", &v6, 0x1Cu);
      }

      notify_cancel(dnssd_tls_key_change_notification_send_dnssd_tls_change_notification_token);
      dnssd_tls_key_change_notification_send_dnssd_tls_change_notification_token = -1;
    }

    return;
  }

  v3 = notify_register_check("com.apple.srp-mdns-proxy.tls-key-update", &dnssd_tls_key_change_notification_send_dnssd_tls_change_notification_token);
  if (!v3)
  {
    if (dnssd_tls_key_change_notification_send_dnssd_tls_change_notification_token == -1)
    {
      return;
    }

    goto LABEL_2;
  }

  v4 = v3;
  dnssd_tls_key_change_notification_send_dnssd_tls_change_notification_token = -1;
  v5 = global_os_log;
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 136446722;
    v7 = "dnssd_tls_key_change_notification_send";
    v8 = 2080;
    v9 = "com.apple.srp-mdns-proxy.tls-key-update";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s: notify_register_check(%s) failed with %u", &v6, 0x1Cu);
  }
}

void dnssd_tls_listener_restart(uint64_t a1, uint64_t a2)
{
  v2 = dnssd_proxy_listeners[tls_listener_index];
  v3 = *(v2 + 32);
  if (!v3)
  {
    v11 = global_os_log;
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }

    v14 = 136447490;
    v15 = "ioloop_listener_release_";
    v16 = 1024;
    *v17 = 0;
    *&v17[4] = 2048;
    *&v17[6] = v2;
    *&v17[14] = 2080;
    *&v17[16] = "listener";
    *&v17[24] = 2080;
    *&v17[26] = "dnssd-proxy.c";
    v18 = 1024;
    v19 = 4903;
    v12 = "%{public}s: ALLOC: release after finalize at %2.2d: %p (%10s): %s:%d";
    v13 = v11;
    goto LABEL_26;
  }

  v4 = global_os_log;
  if (v3 >= 10001)
  {
    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }

    v14 = 136447490;
    v15 = "ioloop_listener_release_";
    v16 = 1024;
    *v17 = v3;
    *&v17[4] = 2048;
    *&v17[6] = v2;
    *&v17[14] = 2080;
    *&v17[16] = "listener";
    *&v17[24] = 2080;
    *&v17[26] = "dnssd-proxy.c";
    v18 = 1024;
    v19 = 4903;
    v12 = "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d";
    v13 = v4;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v12, &v14, 0x36u);
LABEL_27:
    abort();
  }

  v6 = *(v2 + 424);
  if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136447490;
    v15 = "ioloop_listener_release_";
    v16 = 1024;
    *v17 = v3;
    *&v17[4] = 2048;
    *&v17[6] = v2;
    *&v17[14] = 2080;
    *&v17[16] = "listener";
    *&v17[24] = 2080;
    *&v17[26] = "dnssd-proxy.c";
    v18 = 1024;
    v19 = 4903;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC: release at %2.2d: %p (%10s): %s:%d", &v14, 0x36u);
    v3 = *(v2 + 32);
  }

  *(v2 + 32) = v3 - 1;
  if (v3 == 1)
  {
    v7 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136447234;
      v15 = "ioloop_listener_release_";
      v16 = 2048;
      *v17 = v2;
      *&v17[8] = 2080;
      *&v17[10] = "listener";
      *&v17[18] = 2080;
      *&v17[20] = "dnssd-proxy.c";
      *&v17[28] = 1024;
      *&v17[30] = 4903;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: ALLOC:      finalize: %p (%10s): %s:%d", &v14, 0x30u);
    }

    ++listener_finalized;
    listener_finalize(v2);
  }

  dnssd_proxy_listeners[tls_listener_index] = 0;
  if ((v6 & 0x10) != 0)
  {
    if (srp_tls_init())
    {
      dnssd_tls_key_change_notification_send();

      dnssd_tls_listener_listen(0);
    }

    else
    {
      v10 = global_os_log;
      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_FAULT))
      {
        v14 = 136446210;
        v15 = "dnssd_tls_listener_restart";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}s: srp_tls_init failed.", &v14, 0xCu);
      }
    }
  }

  else
  {
    v8 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = "dnssd_tls_listener_restart";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Creation of TLS listener failed; reattempting in 10s.", &v14, 0xCu);
    }

    v9 = tls_listener_wakeup;
    if (!tls_listener_wakeup)
    {
      v9 = ioloop_wakeup_create_("/Library/Caches/com.apple.xbs/Sources/mDNSResponderExtras/ServiceRegistration/dnssd-proxy.c", 4922);
      tls_listener_wakeup = v9;
    }

    ioloop_add_wake_event(v9, a2, dnssd_tls_listener_relisten, 0, 0x2710u);
  }
}

void monitor_name_changes_callback(const __SCDynamicStore *a1, CFArrayRef theArray, void *a3)
{
  v79.length = CFArrayGetCount(theArray);
  v79.location = 0;
  if (CFArrayContainsValue(theArray, v79, sc_dynamic_store_key_host_name))
  {
    v6 = SCDynamicStoreCopyLocalHostName(a1);
    if (v6)
    {
      v7 = v6;
      updated = update_my_name(v6);
      v9 = global_os_log;
      cf = v7;
      if (!updated)
      {
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_105;
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = "monitor_name_changes_callback";
        v60 = "%{public}s: failed to update my name";
        p_buf = &buf;
        v62 = v9;
        v63 = OS_LOG_TYPE_ERROR;
        v64 = 12;
        goto LABEL_104;
      }

      if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = "dnssd_hardwired_clear";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Clearing all hardwired response", &buf, 0xCu);
      }

      v10 = served_domains;
      if (served_domains)
      {
        do
        {
          v11 = v10[4];
          if (v11)
          {
            v10[4] = 0;
            do
            {
              v12 = *v11;
              free(v11);
              v11 = v12;
            }

            while (v12);
          }

          v10 = *v10;
        }

        while (v10);
      }

      if (my_name)
      {
        v13 = dns_pres_name_parse(my_name);
      }

      else
      {
        v13 = 0;
      }

      v67 = a3;
      buf = 0u;
      memset(v77, 0, 496);
      memset(v75, 0, sizeof(v75));
      v14 = served_domains;
      if (served_domains)
      {
        v15 = &buf | 0xC;
        while (!*(v14 + 40))
        {
LABEL_40:
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_46;
          }
        }

        memset(&v75[24], 0, 40);
        *v75 = &buf;
        *&v75[8] = &buf | 0xC;
        *&v75[16] = v78;
        dnssd_hardwired_add(v14, "_dns-llq._udp", *(v14 + 16), 0, (&buf | 0xC), 0x21u);
        dnssd_hardwired_add(v14, "_dns-llq-tls._tcp", *(v14 + 16), 0, (&buf | 0xC), 0x21u);
        v16 = *&v75[8] - v15;
        dnssd_hardwired_add(v14, "_dns-update._udp", *(v14 + 16), *&v75[8] - v15, (&buf | 0xC), 0x21u);
        dnssd_hardwired_add(v14, "_dns-update-tls._tcp", *(v14 + 16), v16, (&buf | 0xC), 0x21u);
        dnssd_hardwired_add(v14, "_dns-push-tls._tcp", *(v14 + 16), *&v75[8] - v15, (&buf | 0xC), 0x21u);
        if (my_name)
        {
          if (v13)
          {
            v17 = dns_name_subdomain_of(v13, *(v14 + 24));
            if (v17)
            {
              dns_name_print_to_limit(v13, v17, v71, 0x100uLL);
              do
              {
                v18 = *v13;
                free(v13);
                v13 = v18;
              }

              while (v18);
            }
          }
        }

        memset(&v75[24], 0, 40);
        *v75 = &buf;
        *&v75[8] = &buf | 0xC;
        *&v75[16] = v78;
        if (uuid_name)
        {
          dns_name_to_wire_(0, v75, &uuid_name, 1916);
          v19 = 1917;
        }

        else
        {
          dns_name_to_wire_(0, v75, "ns", 1919);
          v19 = 1920;
        }

        dns_full_name_to_wire_(0, v75, *(v14 + 8), v19);
        dnssd_hardwired_add(v14, "", *(v14 + 8), *&v75[8] - v15, (&buf | 0xC), 2u);
        dns_name_to_wire_(0, v75, "postmaster", 1925);
        dns_full_name_to_wire_(0, v75, *(v14 + 8), 1926);
        if (*&v75[56] > 1u)
        {
          goto LABEL_39;
        }

        v20 = *&v75[8];
        if ((*&v75[8] + 4) >= *&v75[16])
        {
          v25 = 1927;
        }

        else
        {
          *&v75[8] += 4;
          *v20 = 0;
          if (*&v75[56] > 1u)
          {
            goto LABEL_39;
          }

          v21 = *&v75[8];
          if ((*&v75[8] + 4) < *&v75[16])
          {
            *&v75[8] += 4;
            *v21 = 538705920;
            if (*&v75[56] <= 1u)
            {
              v22 = *&v75[8];
              if ((*&v75[8] + 4) >= *&v75[16])
              {
                *&v75[56] = 111;
                v25 = 1929;
                goto LABEL_38;
              }

              *&v75[8] += 4;
              *v22 = 269352960;
              if (*&v75[56] < 2u)
              {
                v23 = *&v75[8];
                if ((*&v75[8] + 4) >= *&v75[16])
                {
                  *&v75[56] = 111;
                  v25 = 1930;
                  goto LABEL_38;
                }

                *&v75[8] += 4;
                *v23 = -2142174976;
                if (*&v75[56] <= 1u)
                {
                  v24 = *&v75[8];
                  if ((*&v75[8] + 4) < *&v75[16])
                  {
                    *&v75[8] += 4;
                    *v24 = 2013265920;
                    goto LABEL_39;
                  }

                  *&v75[56] = 111;
                  v25 = 1931;
LABEL_38:
                  *&v75[48] = v25;
                }
              }
            }

LABEL_39:
            dnssd_hardwired_add(v14, "", *(v14 + 8), *&v75[8] - v15, (&buf | 0xC), 6u);
            goto LABEL_40;
          }

          v25 = 1928;
        }

        *&v75[56] = 111;
        goto LABEL_38;
      }

LABEL_46:
      if (v13)
      {
        do
        {
          v26 = *v13;
          free(v13);
          v13 = v26;
        }

        while (v26);
      }

      v27 = my_name;
      if (my_name)
      {
        v28 = &served_domains;
        while (1)
        {
          v28 = *v28;
          if (!v28)
          {
            break;
          }

          if (!strcasecmp(v27, v28[1]))
          {
            v29 = &served_domains;
            while (1)
            {
              v29 = *v29;
              if (!v29)
              {
                break;
              }

              if (!strcasecmp("openthread.thread.home.arpa.", v29[1]))
              {
                v30 = &served_domains;
                while (1)
                {
                  v30 = *v30;
                  if (!v30)
                  {
                    break;
                  }

                  if (!strcasecmp("default.service.arpa.", v30[1]))
                  {
                    v31 = &served_domains;
                    while (1)
                    {
                      v31 = *v31;
                      if (!v31)
                      {
                        break;
                      }

                      if (!strcasecmp("local.", v31[1]))
                      {
                        v32 = served_domains;
                        if (served_domains)
                        {
                          v33 = (&buf | 0xC);
                          while (1)
                          {
                            v69 = v32;
                            v34 = *(v32 + 40);
                            if (v34)
                            {
                              v35 = *(v34 + 16);
                              if (v35)
                              {
                                break;
                              }
                            }

LABEL_75:
                            v32 = *v69;
                            if (!*v69)
                            {
                              goto LABEL_76;
                            }
                          }

                          while (2)
                          {
                            if (is_valid_address_to_publish((v35 + 1)))
                            {
                              memset(&v75[24], 0, 40);
                              *v75 = &buf;
                              *&v75[8] = &buf | 0xC;
                              *&v75[16] = v78;
                              v36 = *(v35 + 9);
                              if (v36 == 30)
                              {
                                *v33 = *(v35 + 1);
                                v37 = 28;
                                v38 = &v77[12];
LABEL_70:
                                *&v75[8] = v38;
                                v39 = v38 - v33;
                                dnssd_hardwired_add(v28, "", v28[1], v38 - v33, (&buf | 0xC), v37);
                                dnssd_hardwired_add(v29, &local_host_name, v29[2], v39, (&buf | 0xC), v37);
                                v40 = *&v75[8] - v33;
                                dnssd_hardwired_add(v30, &local_host_name, v30[2], *&v75[8] - v33, (&buf | 0xC), v37);
                                dnssd_hardwired_add(v31, &local_host_name, v31[2], v40, (&buf | 0xC), v37);
                              }

                              else
                              {
                                if (v36 == 2)
                                {
                                  HIDWORD(buf) = *(v35 + 3);
                                  v37 = 1;
                                  v38 = v77;
                                  goto LABEL_70;
                                }

                                v41 = global_os_log;
                                if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                                {
                                  *v71 = 136446466;
                                  *&v71[4] = "dnssd_hardwired_setup";
                                  *&v71[12] = 1024;
                                  *&v71[14] = v36;
                                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s: Non IPv4/IPv6 address in interface addresses - sa_family: %u", v71, 0x12u);
                                }
                              }
                            }

                            v35 = *v35;
                            if (!v35)
                            {
                              goto LABEL_75;
                            }

                            continue;
                          }
                        }

LABEL_76:
                        dnssd_hardwired_lbdomains_setup();
                        dnssd_hardwired_lbdomains_setup();
                        goto LABEL_87;
                      }
                    }

                    v46 = global_os_log;
                    if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_87;
                    }

                    *v71 = 136446466;
                    *&v71[4] = "dnssd_hardwired_setup";
                    *&v71[12] = 2082;
                    *&v71[14] = "local.";
                    v43 = "%{public}s: Failed to find thread domain - domain: %{public}s";
                    goto LABEL_85;
                  }
                }

                v46 = global_os_log;
                if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                *v71 = 136446466;
                *&v71[4] = "dnssd_hardwired_setup";
                *&v71[12] = 2082;
                *&v71[14] = "default.service.arpa.";
                v43 = "%{public}s: Failed to find thread domain - domain: %{public}s";
                goto LABEL_85;
              }
            }

            v46 = global_os_log;
            if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_87;
            }

            *v71 = 136446466;
            *&v71[4] = "dnssd_hardwired_setup";
            *&v71[12] = 2082;
            *&v71[14] = "openthread.thread.home.arpa.";
            v43 = "%{public}s: Failed to find thread domain - domain: %{public}s";
LABEL_85:
            v44 = v46;
            v45 = 22;
            goto LABEL_86;
          }
        }

        v42 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_87;
        }

        *v71 = 136446723;
        *&v71[4] = "dnssd_hardwired_setup";
        *&v71[12] = 2160;
        *&v71[14] = 1752392040;
        *&v71[22] = 2081;
        *&v72 = v27;
        v43 = "%{public}s: Failed to find my_name domain - my_name: %{private, mask.hash}s";
        v44 = v42;
        v45 = 32;
      }

      else
      {
        v66 = global_os_log;
        if (!os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
        {
LABEL_87:
          dnssd_hardwired_push_setup();
          if (!v67[1])
          {
            goto LABEL_105;
          }

          bzero(&buf, 0x582uLL);
          v74 = 0;
          v73 = 0u;
          v72 = 0u;
          *&v71[8] = &buf + 12;
          *&v71[16] = v78;
          *v71 = &buf;
          *&v47 = dns_full_name_to_wire_(0, v71, local_host_name_dot_local, 5555);
          v48 = v67[2];
          v49 = v67[3];
          v70 = 0;
          if (v48)
          {
            v50 = *(v48 + 16);
            if ((v50 & 0x80000000) == 0 && (*(v48 + 20) ^ v50) == 0x12345678)
            {
              v51 = *&v71[8] - (&buf + 12);
              v52 = (*&v71[8] - (&buf + 12));
              *v75 = v52 + 10;
              v53 = create_hdr(11, v75, &v70, 1, v48);
              v54 = v53;
              if (!*(v48 + 8))
              {
                v53[1].i64[0] = 0;
              }

              if (v49)
              {
                v55 = *(v49 + 32);
              }

              else
              {
                v55 = -1;
              }

              v53[1].i32[2] = v55;
              v57 = v70;
              *v70 = 0;
              v57[4] = BYTE1(v51);
              v58 = v57 + 6;
              v57[5] = v51;
              memcpy(v57 + 6, &buf + 12, v52);
              *&v58[v52] = 0;
              v59 = deliver_request(v54, v48);
              v56 = global_os_log;
              if (!v59)
              {
LABEL_102:
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  *v75 = 136446723;
                  *&v75[4] = "monitor_name_changes_callback";
                  *&v75[12] = 2160;
                  *&v75[14] = 1752392040;
                  *&v75[22] = 2081;
                  *&v75[24] = local_host_name_dot_local;
                  v60 = "%{public}s: Updating record - new NS record rdata: %{private, mask.hash}s";
                  p_buf = v75;
                  v62 = v56;
                  v63 = OS_LOG_TYPE_DEFAULT;
                  v64 = 32;
LABEL_104:
                  _os_log_impl(&_mh_execute_header, v62, v63, v60, p_buf, v64);
                }

LABEL_105:
                CFRelease(cf);
                return;
              }

LABEL_100:
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *v75 = 136446723;
                *&v75[4] = "monitor_name_changes_callback";
                *&v75[12] = 2160;
                *&v75[14] = 1752392040;
                *&v75[22] = 2081;
                *&v75[24] = local_host_name_dot_local;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}s: DNSServiceUpdateRecord failed to update NS record to new name - name: %{private, mask.hash}s", v75, 0x20u);
                v56 = global_os_log;
              }

              goto LABEL_102;
            }

            syslog(4, "dnssd_clientstub DNSServiceUpdateRecord called with invalid DNSServiceRef %p %08X %08X", v47);
          }

          else
          {
            syslog(4, "dnssd_clientstub DNSServiceUpdateRecord called with NULL parameter");
          }

          v56 = global_os_log;
          goto LABEL_100;
        }

        *v71 = 136446210;
        *&v71[4] = "dnssd_hardwired_setup";
        v43 = "%{public}s: Failed to get my_name and unable to set hardwired response";
        v44 = v66;
        v45 = 12;
      }

LABEL_86:
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, v43, v71, v45);
      goto LABEL_87;
    }

    v65 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "monitor_name_changes_callback";
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%{public}s: failed to get updated local host name", &buf, 0xCu);
    }
  }
}

void dnssd_hardwired_lbdomains_setup()
{
  v0 = &served_domains;
  while (1)
  {
    v0 = *v0;
    if (!v0)
    {
      break;
    }

    if (!strcasecmp("in-addr.arpa.", v0[1]))
    {
      v1 = v0;
      goto LABEL_6;
    }
  }

  v1 = 0;
LABEL_6:
  v2 = &served_domains;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_30;
    }
  }

  while (strcasecmp("ip6.arpa.", v2[1]));
  if (v0)
  {
    v3 = served_domains;
    if (served_domains)
    {
      while (1)
      {
        v4 = v3[5];
        v5 = global_os_log;
        v6 = os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT);
        if (!v4)
        {
          if (v6)
          {
            v14 = v3[1];
            *buf = 136446723;
            v23 = "dnssd_hardwired_lbdomains_setup";
            v24 = 2160;
            v25 = 1752392040;
            v26 = 2081;
            v27 = v14;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Domain %{private, mask.hash}s has no interface", buf, 0x20u);
          }

          goto LABEL_28;
        }

        if (v6)
        {
          v7 = *(v4 + 8);
          *buf = 136446466;
          v23 = "dnssd_hardwired_lbdomains_setup";
          v24 = 2082;
          v25 = v7;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Interface %{public}s", buf, 0x16u);
        }

        v8 = *(v4 + 16);
        if (v8)
        {
          break;
        }

LABEL_28:
        v3 = *v3;
        if (!v3)
        {
          return;
        }
      }

      while (1)
      {
        if (is_valid_address_to_publish((v8 + 1)))
        {
          v10 = *(v8 + 9);
          if (v10 == 30)
          {
            v11 = (v8 + 1);
            v12 = v8 + 36;
            v13 = v2;
          }

          else
          {
            if (v10 != 2)
            {
              snprintf(buf, 0x2EuLL, "Address type %d", *(v8 + 9));
              v9 = global_os_log;
              if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_DEFAULT))
              {
                *v16 = 136446723;
                v17 = "dnssd_hardwired_lbdomains_setup";
                v18 = 2160;
                v19 = 1752392040;
                v20 = 2081;
                v21 = buf;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Skipping %{private, mask.hash}s", v16, 0x20u);
              }

              goto LABEL_24;
            }

            v11 = (v8 + 1);
            v12 = v8 + 36;
            v13 = v1;
          }

          dnssd_hardwired_add_or_remove_ptr_record(v13, v11, v12, 1);
        }

LABEL_24:
        v8 = *v8;
        if (!v8)
        {
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
LABEL_30:
    v15 = global_os_log;
    if (os_log_type_enabled(global_os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v23 = "dnssd_hardwired_lbdomains_setup";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: cannot find/create new served domain", buf, 0xCu);
    }
  }
}