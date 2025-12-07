void sub_C90(uint64_t *a1, int a2)
{
  if (*(a1 + 328) == 1)
  {
    v2 = sub_3688(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_82D0();
    }

LABEL_4:

    return;
  }

  if ((*(a1 + 330) & 1) == 0)
  {
    v2 = sub_3688(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_7514();
    }

    goto LABEL_4;
  }

  v172 = mach_absolute_time();
  v5 = __microstackshot();
  v169 = a2;
  if ((v5 & 0x80000000) != 0)
  {
    v6 = sub_3688(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_75C0();
    }

    goto LABEL_15;
  }

  if (v5 > 0x10000)
  {
    v6 = sub_3688(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_7550();
    }

LABEL_15:

    v170 = 0;
    goto LABEL_17;
  }

  v170 = v5;
LABEL_17:
  v7 = __microstackshot();
  v8 = v7;
  if ((v7 & 0x80000000) != 0)
  {
    v9 = sub_3688(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_76B4();
    }

    goto LABEL_23;
  }

  if (v7 > 0x10000)
  {
    v9 = sub_3688(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_7644();
    }

LABEL_23:

    v8 = 0;
  }

  v228[0] = 0;
  v228[1] = v228;
  v228[2] = 0x2020000000;
  v229 = 0;
  v226[0] = 0;
  v226[1] = v226;
  v226[2] = 0x2020000000;
  v227 = 0;
  v224[0] = 0;
  v224[1] = v224;
  v224[2] = 0x2020000000;
  v225 = 0;
  v220 = 0;
  v221 = &v220;
  v222 = 0x2020000000;
  v223 = 0;
  v216 = 0;
  v217 = &v216;
  v218 = 0x2020000000;
  v219 = 0;
  v212 = 0;
  v213 = &v212;
  v214 = 0x2020000000;
  v215 = 0;
  v208 = 0;
  v209 = &v208;
  v210 = 0x2020000000;
  v211 = 0;
  v205[2] = 0;
  v206 = 0;
  v207[0] = &v206;
  v207[1] = 0x2020000000;
  v207[2] = 0;
  v204 = 0;
  v205[0] = &v204;
  v205[1] = 0x2020000000;
  v200 = 0;
  v201 = &v200;
  v202 = 0x2020000000;
  v203 = 0;
  v196 = 0;
  v197 = &v196;
  v198 = 0x2020000000;
  v199 = 0;
  v192 = 0;
  v193 = &v192;
  v194 = 0x2020000000;
  v195 = 0;
  v188 = 0;
  v189 = &v188;
  v190 = 0x2020000000;
  v191 = 0;
  v184 = 0;
  v185 = &v184;
  v186 = 0x2020000000;
  v187 = 0;
  v180 = 0;
  v181 = &v180;
  v182 = 0x2020000000;
  v183 = 0;
  v176 = 0;
  v177 = &v176;
  v178 = 0x2020000000;
  v179 = 0;
  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_29F4;
  block[8] = &unk_106B8;
  block[24] = &v184;
  block[25] = a1;
  block[9] = &v216;
  block[10] = &v220;
  block[11] = v228;
  block[12] = v226;
  block[13] = v224;
  block[14] = &v206;
  block[15] = &v204;
  block[16] = &v200;
  block[17] = &v208;
  block[18] = &v212;
  block[19] = &v176;
  block[20] = &v180;
  block[21] = &v196;
  block[22] = &v192;
  block[23] = &v188;
  v10 = systemstats_zipper_buffers_foreach_micro();
  v11 = v207[0];
  v12 = *(v207[0] + 24);
  if (v12)
  {
    v13 = a1[54];
    a1[53] += v12;
    v14 = *(v11 + 24);
    if (v13 < v14)
    {
      a1[54] = v14;
    }
  }

  v15 = v205[0];
  v16 = *(v205[0] + 24);
  v17 = v8;
  if (v16)
  {
    v18 = a1[56];
    a1[55] += v16;
    v19 = v201[3];
    if (v18 < v19)
    {
      a1[56] = v19;
    }

    if (*(v15 + 24))
    {
      goto LABEL_32;
    }
  }

  if (*(v11 + 24))
  {
LABEL_32:
    v20 = mach_continuous_time();
    v22 = a1[63];
    if (v22 && (v23.n128_f64[0] = sub_52B4(v22, v21), v23.n128_f64[0] + 86400.0 > sub_52B4(v20, v23)))
    {
      v25 = sub_3688(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_773C(a1 + 63, v20, v26);
      }
    }

    else
    {
      a1[63] = v20;
      if (*(v205[0] + 24))
      {
        v27 = [NSString alloc];
        v28 = v205;
        v29 = @"Lost %llu microstackshots in this drain";
      }

      else
      {
        v27 = [NSString alloc];
        v28 = v207;
        v29 = @"Lost %llu microstackshots before this drain";
      }

      v168 = [v27 initWithFormat:v29, *(*v28 + 24)];
      v31 = v189[3];
      v32 = v197[3];
      v33 = v185[3];
      v34 = v193[3];
      if (qword_10C50)
      {
        v35 = sub_52B4(v172 - qword_10C50, v30);
      }

      else
      {
        v35 = 0.0;
      }

      v230[0] = @"NumLostMicrostackshotsInThisDrain";
      v36 = [NSNumber numberWithUnsignedLongLong:*(v205[0] + 24)];
      v231[0] = v36;
      v230[1] = @"NumLostMicrostackshotsBeforeThisDrain";
      v37 = [NSNumber numberWithUnsignedLongLong:*(v207[0] + 24)];
      v231[1] = v37;
      v230[2] = @"TimeSinceLastDrain";
      v38 = [NSNumber numberWithDouble:v35];
      v231[2] = v38;
      v230[3] = @"TimeCoveredByDrain";
      v39 = [NSNumber numberWithDouble:(v33 - v34) / 1000000.0 + (v31 - v32)];
      v231[3] = v39;
      v40 = [NSDictionary dictionaryWithObjects:v231 forKeys:v230 count:4];

      v17 = v8;
      v25 = v168;

      v42 = sub_3688(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_77C4();
      }
    }
  }

  qword_10C50 = v172;
  v43 = sub_3688(v10);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v55 = v181[3];
    v56 = v177[3];
    v57 = *(v221 + 6);
    v58 = *(v217 + 6);
    v59 = *(v213 + 6);
    v60 = *(v209 + 6);
    *buf = 134220032;
    v233 = v56 + v55;
    v234 = 2048;
    v235 = v55;
    v236 = 2048;
    *v237 = v56;
    *&v237[8] = 1024;
    *v238 = v170;
    *&v238[4] = 1024;
    *&v238[6] = v17;
    LOWORD(v239) = 1024;
    *(&v239 + 2) = v57;
    HIWORD(v239) = 1024;
    *v240 = v58;
    *&v240[4] = 1024;
    *&v240[6] = v59;
    v241 = 1024;
    LODWORD(v242) = v60;
    _os_log_debug_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "Saved %zu microstackshots (%zu:%zu user:kernel, %d:%d bytes) (ignored %d:%d known duplicates and %d:%d likely duplicates)", buf, 0x44u);
  }

  if (v169)
  {
    v44 = systemstats_stream_flush();
  }

  if ((*(a1 + 329) & 1) == 0)
  {
    v46 = sub_3688(v44);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_7800();
    }

    goto LABEL_64;
  }

  v45 = a1[42];
  if (!v45)
  {
    v46 = sub_3688(v44);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_8294();
    }

    goto LABEL_64;
  }

  if (v45 == a1[43] && *(a1 + 352) == *(a1 + 353))
  {
    if (*(a1 + 352))
    {
      v46 = sub_3688(v44);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        sub_8258();
      }

      goto LABEL_64;
    }

    if (!*(*a1 + 120))
    {
      v46 = sub_3688(v44);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        sub_81EC();
      }

      goto LABEL_64;
    }

    v61 = now_in_absolute_milliseconds();
    v62 = *a1;
    v63 = *(*a1 + 168);
    v64 = (v61 - v63) / 1000.0;
    v65 = a1[52];
    if (v65)
    {
      v66 = (v61 - v65) / 1000.0;
      v67 = *(v62 + 120);
      v68 = a1[42];
      v69 = *(*(v62 + 8) + 32);
      if (v64 + 1800.0 < 86400.0)
      {
        if (v65 < v63)
        {
          v70 = sub_3688(v61);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
          {
            *buf = 134219520;
            *&v233 = v64;
            v234 = 2048;
            v235 = *&v66;
            v236 = 2048;
            *v237 = v67;
            *&v237[8] = 2048;
            *v238 = 0;
            *&v238[8] = 2048;
            v239 = 0.0;
            *v240 = 2048;
            *&v240[2] = v68;
            v241 = 2048;
            v242 = v69;
            _os_log_fault_impl(&dword_0, v70, OS_LOG_TYPE_FAULT, "PMI adjustment: last pmi adjustment < last cleanup. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x48u);
          }

          a1[50] = 0;
          a1[51] = 0;
          v66 = v64;
          a1[52] = 0;
        }

LABEL_76:
        if (v66 < 1800.0)
        {
          v46 = sub_3688(v61);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_64;
          }

          *buf = 134219520;
          *&v233 = v64;
          v234 = 2048;
          v235 = *&v66;
          v236 = 2048;
          *v237 = v67;
          *&v237[8] = 2048;
          *v238 = 0;
          *&v238[8] = 2048;
          v239 = 0.0;
          *v240 = 2048;
          *&v240[2] = v68;
          v241 = 2048;
          v242 = v69;
          v51 = "PMI adjustment: Adjusted PMI interval too recently, not checking daily budget. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu";
          v52 = v46;
          v53 = 72;
          goto LABEL_61;
        }

        *&v71 = COERCE_DOUBLE(systemstats_get_pmi_cycle_interval());
        v72 = sub_3644(v71);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134219520;
          *&v233 = v64;
          v234 = 2048;
          v235 = *&v66;
          v236 = 2048;
          *v237 = v67;
          *&v237[8] = 2048;
          *v238 = 0;
          *&v238[8] = 2048;
          v239 = 0.0;
          *v240 = 2048;
          *&v240[2] = v68;
          v241 = 2048;
          v242 = v69;
          _os_log_debug_impl(&dword_0, v72, OS_LOG_TYPE_DEBUG, ". time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x48u);
        }

        v173 = v69;
        v174 = v67;
        v171 = *&v68;

        v74 = sub_3644(v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          sub_783C();
        }

        v75 = *(a1 + 10);
        v77 = sub_3644(v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          sub_78A8();
        }

        if (v75 == 0.0)
        {
          v83 = sub_3688(v78);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 134219776;
            v233 = v71;
            v234 = 2048;
            v235 = *&v64;
            v236 = 2048;
            *v237 = v66;
            *&v237[8] = 2048;
            *v238 = v67;
            *&v238[8] = 2048;
            v239 = 0.0;
            *v240 = 2048;
            *&v240[2] = 0;
            v241 = 2048;
            v242 = *&v68;
            v243 = 2048;
            *&v244 = v69;
            _os_log_error_impl(&dword_0, v83, OS_LOG_TYPE_ERROR, "PMI adjustment: No microstackshots since last cleanup, resetting PMI interval to %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x52u);
          }

          goto LABEL_108;
        }

        v79 = a1[50];
        *&v80 = *&v75 - v79;
        v81 = sub_3644(v78);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          sub_7910();
        }

        if (*&v75 == v79)
        {
          v83 = sub_3688(v82);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 134219776;
            v233 = v71;
            v234 = 2048;
            v235 = *&v64;
            v236 = 2048;
            *v237 = v66;
            *&v237[8] = 2048;
            *v238 = v67;
            *&v238[8] = 2048;
            v239 = 0.0;
            *v240 = 2048;
            *&v240[2] = 0;
            v241 = 2048;
            v242 = v171;
            v243 = 2048;
            *&v244 = v173;
            _os_log_error_impl(&dword_0, v83, OS_LOG_TYPE_ERROR, "PMI adjustment: No microstackshots since last adjustment, resetting PMI interval to %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x52u);
          }

LABEL_108:

          v92 = 0.0;
          v93 = 0.0;
LABEL_109:
          v94 = 100000000000;
          v96 = v171;
          v95 = v173;
          v97 = v174;
          if (v71 > 0x174876E7FFLL && *&v171 == 100000000000)
          {
            v46 = sub_3688(v91);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 134220032;
              v233 = 100000000000;
              v234 = 2048;
              v235 = v71;
              v236 = 2048;
              *v237 = v64;
              *&v237[8] = 2048;
              *v238 = v66;
              *&v238[8] = 2048;
              v239 = v174;
              *v240 = 2048;
              *&v240[2] = v92;
              v241 = 2048;
              v242 = v93;
              v243 = 2048;
              v244 = 100000000000;
              v245 = 2048;
              v246 = v173;
              _os_log_error_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "PMI adjustment: Attempting to increase PMI microstackshots interval from %llu to %llu to fit into daily budget, but already at max interval!. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
            }

            goto LABEL_64;
          }

          if (v71 <= 0x174876E800)
          {
            v94 = v71;
          }

          else
          {
            v98 = sub_3688(v91);
            if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              v233 = v71;
              v234 = 2048;
              v235 = 100000000000;
              _os_log_impl(&dword_0, v98, OS_LOG_TYPE_INFO, "PMI adjustment: Decreasing desired PMI interval %llu to max %llu", buf, 0x16u);
            }

            v96 = v171;
            v95 = v173;
            v97 = v174;
          }

          pmi_cycle_interval = systemstats_get_pmi_cycle_interval();
          v100 = pmi_cycle_interval;
          if (v94 >= pmi_cycle_interval)
          {
            v100 = v94;
          }

          else
          {
            v101 = sub_3688(pmi_cycle_interval);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              v233 = v94;
              v234 = 2048;
              v235 = v100;
              _os_log_impl(&dword_0, v101, OS_LOG_TYPE_INFO, "PMI adjustment: Increasing desired PMI interval %llu to default %llu", buf, 0x16u);
            }

            v96 = v171;
            v95 = v173;
            v97 = v174;
          }

          if (v100 <= *&v96)
          {
            if (v100 >= *&v96)
            {
LABEL_132:
              a1[43] = v100;
              sub_4F54(a1, 1);
              goto LABEL_65;
            }

            v102 = sub_3688(pmi_cycle_interval);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134220032;
              *&v233 = v96;
              v234 = 2048;
              v235 = v100;
              v236 = 2048;
              *v237 = v64;
              *&v237[8] = 2048;
              *v238 = v66;
              *&v238[8] = 2048;
              v239 = v97;
              *v240 = 2048;
              *&v240[2] = v92;
              v241 = 2048;
              v242 = v93;
              v243 = 2048;
              *&v244 = v96;
              v245 = 2048;
              v246 = v95;
              _os_log_impl(&dword_0, v102, OS_LOG_TYPE_DEFAULT, "PMI adjustment: Decreasing PMI microstackshots interval from %llu to %llu since we have space in the daily budget. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
            }

            v103 = 61;
          }

          else
          {
            v102 = sub_3688(pmi_cycle_interval);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134220032;
              *&v233 = v96;
              v234 = 2048;
              v235 = v100;
              v236 = 2048;
              *v237 = v64;
              *&v237[8] = 2048;
              *v238 = v66;
              *&v238[8] = 2048;
              v239 = v97;
              *v240 = 2048;
              *&v240[2] = v92;
              v241 = 2048;
              v242 = v93;
              v243 = 2048;
              *&v244 = v96;
              v245 = 2048;
              v246 = v95;
              _os_log_impl(&dword_0, v102, OS_LOG_TYPE_DEFAULT, "PMI adjustment: Increasing PMI microstackshots interval from %llu to %llu to fit into daily budget. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
            }

            v103 = 62;
          }

          ++a1[v103];
          goto LABEL_132;
        }

        v84 = a1[26];
        v85 = sub_3644(v82);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          sub_7978();
        }

        if (!v84)
        {
          v83 = sub_3688(v86);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v167 = a1[9];
            *buf = 134220032;
            v233 = v167;
            v234 = 2048;
            v235 = v71;
            v236 = 2048;
            *v237 = v64;
            *&v237[8] = 2048;
            *v238 = v66;
            *&v238[8] = 2048;
            v239 = v67;
            *v240 = 2048;
            *&v240[2] = 0;
            v241 = 2048;
            v242 = 0.0;
            v243 = 2048;
            *&v244 = v171;
            v245 = 2048;
            v246 = v173;
            _os_log_error_impl(&dword_0, v83, OS_LOG_TYPE_ERROR, "PMI adjustment: No PMI microstackshots since last cleanup (%llu of other types), resetting PMI interval to %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
          }

          goto LABEL_108;
        }

        v87 = a1[51];
        v88 = v84 - v87;
        v89 = sub_3644(v86);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          sub_79E0();
        }

        if (v84 == v87)
        {
          v83 = sub_3688(v90);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 134220032;
            *&v233 = v80;
            v234 = 2048;
            v235 = v71;
            v236 = 2048;
            *v237 = v64;
            *&v237[8] = 2048;
            *v238 = v66;
            *&v238[8] = 2048;
            v239 = v174;
            *v240 = 2048;
            *&v240[2] = 0;
            v241 = 2048;
            v242 = 0.0;
            v243 = 2048;
            *&v244 = v171;
            v245 = 2048;
            v246 = v173;
            _os_log_error_impl(&dword_0, v83, OS_LOG_TYPE_ERROR, "PMI adjustment: No PMI microstackshots since last adjustment (%llu bytes of other types), resetting PMI interval to %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
          }

          goto LABEL_108;
        }

        v105 = v88 / *&v80;
        v106 = sub_3644(v90);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
        {
          sub_7A48();
        }

        if (v174 == 0.0)
        {
          v109 = sub_3688(v107);
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134219776;
            *&v233 = v75;
            v234 = 2048;
            v235 = *&v64;
            v236 = 2048;
            *v237 = v66;
            *&v237[8] = 2048;
            *v238 = 0;
            *&v238[8] = 2048;
            v239 = 0.0;
            *v240 = 2048;
            *&v240[2] = v105 * 100.0;
            v241 = 2048;
            v242 = v171;
            v243 = 2048;
            *&v244 = v173;
            _os_log_debug_impl(&dword_0, v109, OS_LOG_TYPE_DEBUG, "PMI adjustment: No compressed bytes written since last cleanup (%llu uncompressed), assuming compression ratio of 1.0. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x52u);
          }

          v108 = 1.0;
        }

        else
        {
          v108 = *&v75 / *&v174;
        }

        v110 = sub_3644(v107);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          sub_7AB4();
        }

        v104 = *&v80;
        *&v92 = (*&v80 / v108);
        v112 = sub_3644(v111);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          sub_7B20();
        }

        v114 = sub_3644(v113);
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
        {
          sub_7B88();
        }

        v115 = ((86400.0 - v64) * (*&v92 / v66));
        v117 = sub_3644(v116);
        if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
        {
          sub_7BF4();
        }

        v118 = *&v174 + v115;
        v120 = sub_3644(v119);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
        {
          sub_7C5C();
        }

        v122 = *&v173;
        if (*&v173 * 1.1 >= v118 && (v122 * 0.9 <= v118 || *&v171 <= v71))
        {
          v46 = sub_3688(v121);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 134220032;
            v233 = *&v174 + v115;
            v234 = 2048;
            v235 = *&v173;
            v236 = 2048;
            *v237 = v64;
            *&v237[8] = 2048;
            *v238 = v66;
            *&v238[8] = 2048;
            v239 = v174;
            *v240 = 2048;
            *&v240[2] = (v104 / v108);
            v241 = 2048;
            v242 = v105 * 100.0;
            v243 = 2048;
            *&v244 = v171;
            v245 = 2048;
            v246 = v173;
            _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "PMI adjustment: Projected microstackshots data volume (%llu) is within the thresholds our of daily budget (%llu), not adjusting the PMI interval. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
          }

          goto LABEL_64;
        }

        v124 = sub_3688(v121);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134220032;
          v233 = *&v174 + v115;
          v234 = 2048;
          v235 = *&v173;
          v236 = 2048;
          *v237 = v64;
          *&v237[8] = 2048;
          *v238 = v66;
          *&v238[8] = 2048;
          v239 = v174;
          *v240 = 2048;
          *&v240[2] = (v104 / v108);
          v241 = 2048;
          v242 = v105 * 100.0;
          v243 = 2048;
          *&v244 = v171;
          v245 = 2048;
          v246 = v173;
          _os_log_debug_impl(&dword_0, v124, OS_LOG_TYPE_DEBUG, "PMI adjustment: Projected microstackshots data volume (%llu) is outside the thresholds our of daily budget (%llu), checking if we can adjust the PMI interval. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
        }

        v125 = *&v80 - v88;
        v127 = sub_3644(v126);
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
        {
          sub_7CC4();
        }

        v128 = (v122 * 0.95);
        v130 = sub_3644(v129);
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
        {
          sub_7D2C();
        }

        if (*&v80 == v88)
        {
          v132 = sub_3644(v131);
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
          {
            sub_7E84(v132, v133, v134, v135, v136, v137, v138, v139);
          }

          v140 = 100000000000;
        }

        else
        {
          v141 = sub_3644(v131);
          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
          {
            sub_7DB0();
          }

          v140 = (v88 / v125 * *&v171);
          v132 = sub_3644(v142);
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
          {
            sub_7E1C();
          }
        }

        v144 = v128 - *&v174;
        if (v128 <= *&v174)
        {
          v165 = sub_3688(v143);
          if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
          {
            *buf = 134220288;
            *&v233 = v174;
            v234 = 2048;
            v235 = (v122 * 0.95);
            v236 = 2048;
            *v237 = v140;
            *&v237[8] = 2048;
            *v238 = v64;
            *&v238[8] = 2048;
            v239 = v66;
            *v240 = 2048;
            *&v240[2] = v174;
            v241 = 2048;
            *&v242 = (v104 / v108);
            v243 = 2048;
            *&v244 = v105 * 100.0;
            v245 = 2048;
            v246 = v171;
            v247 = 2048;
            v248 = v173;
            v166 = "PMI adjustment: Already exceeded daily target (%llu vs target %llu), setting PMI interval to be half of all microstackshot datarate: %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu";
LABEL_196:
            _os_log_error_impl(&dword_0, v165, OS_LOG_TYPE_ERROR, v166, buf, 0x66u);
          }
        }

        else
        {
          v145 = sub_3644(v143);
          if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
          {
            sub_7F00();
          }

          v147 = sub_3644(v146);
          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
          {
            sub_7F68();
          }

          v148 = v115;
          v149 = (v105 * v115);
          v151 = sub_3644(v150);
          if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
          {
            sub_7FDC();
          }

          v152 = 1.0 - v105;
          v154 = sub_3644(v153);
          if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
          {
            sub_8044();
          }

          v155 = (v152 * v148);
          v157 = sub_3644(v156);
          if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
          {
            sub_80B0();
          }

          if (v144 > 2 * v155)
          {
            v159 = v144 - v155;
            v160 = sub_3644(v158);
            if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
            {
              sub_8118();
            }

            if (v149)
            {
              v162 = v159 / v149;
              v163 = sub_3644(v161);
              if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
              {
                sub_8180();
              }

              v140 = 100000000000;
              if (v162 != 0.0)
              {
                v140 = (*&v171 / v162);
              }

              v165 = sub_3688(v164);
              if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
              {
                *buf = 134219776;
                v233 = v140;
                v234 = 2048;
                v235 = *&v64;
                v236 = 2048;
                *v237 = v66;
                *&v237[8] = 2048;
                *v238 = v174;
                *&v238[8] = 2048;
                v239 = v92;
                *v240 = 2048;
                *&v240[2] = v105 * 100.0;
                v241 = 2048;
                v242 = v171;
                v243 = 2048;
                *&v244 = v173;
                _os_log_impl(&dword_0, v165, OS_LOG_TYPE_INFO, "PMI adjustment: Calculated new PMI microstackshots interval to fit into daily budget: %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x52u);
              }
            }

            else
            {
              v165 = sub_3688(v161);
              if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
              {
                *buf = 134219520;
                *&v233 = v64;
                v234 = 2048;
                v235 = *&v66;
                v236 = 2048;
                *v237 = v174;
                *&v237[8] = 2048;
                *v238 = v92;
                *&v238[8] = 2048;
                v239 = v105 * 100.0;
                *v240 = 2048;
                *&v240[2] = v171;
                v241 = 2048;
                v242 = v173;
                _os_log_fault_impl(&dword_0, v165, OS_LOG_TYPE_FAULT, "PMI adjustment: projected_pmi_remaining_compressed_bytes_written_in_the_day is 0, resetting to defaults. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x48u);
              }

              v140 = v71;
            }

            goto LABEL_200;
          }

          v165 = sub_3688(v158);
          if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
          {
            *buf = 134220288;
            v233 = (v152 * v148);
            v234 = 2048;
            v235 = v144;
            v236 = 2048;
            *v237 = v140;
            *&v237[8] = 2048;
            *v238 = v64;
            *&v238[8] = 2048;
            v239 = v66;
            *v240 = 2048;
            *&v240[2] = v174;
            v241 = 2048;
            v242 = v92;
            v243 = 2048;
            *&v244 = v105 * 100.0;
            v245 = 2048;
            v246 = v171;
            v247 = 2048;
            v248 = v173;
            v166 = "PMI adjustment: Non-PMI microstackshots alone are on track exceed half of daily target (%llu vs target remaining %llu), setting PMI interval to be half of all microstackshot datarate: %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu";
            goto LABEL_196;
          }
        }

LABEL_200:

        v93 = v105 * 100.0;
        v71 = v140;
        goto LABEL_109;
      }
    }

    else
    {
      v67 = *(v62 + 120);
      v68 = a1[42];
      v69 = *(*(v62 + 8) + 32);
      v66 = (v61 - v63) / 1000.0;
      if (v64 + 1800.0 < 86400.0)
      {
        goto LABEL_76;
      }
    }

    v46 = sub_3688(v61);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_64;
    }

    *buf = 134219776;
    *&v233 = 86400.0 - v64;
    v234 = 2048;
    v235 = *&v64;
    v236 = 2048;
    *v237 = v66;
    *&v237[8] = 2048;
    *v238 = v67;
    *&v238[8] = 2048;
    v239 = 0.0;
    *v240 = 2048;
    *&v240[2] = 0;
    v241 = 2048;
    v242 = *&v68;
    v243 = 2048;
    *&v244 = v69;
    v51 = "PMI adjustment: Cleanup expected in %.0fs, not checking daily budget. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu";
    v52 = v46;
    v53 = 82;
LABEL_61:
    _os_log_debug_impl(&dword_0, v52, OS_LOG_TYPE_DEBUG, v51, buf, v53);
    goto LABEL_64;
  }

  v46 = sub_3688(v44);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v47 = a1[42];
    v48 = a1[43];
    v49 = *(a1 + 352);
    v50 = *(a1 + 353);
    *buf = 134218752;
    v233 = v47;
    v234 = 2048;
    v235 = v48;
    v236 = 1024;
    *v237 = v49;
    *&v237[4] = 1024;
    *&v237[6] = v50;
    v51 = "PMI adjustment: Have a pending change to rate %llu->%llu and/or override %d->%d, not checking daily budget";
    v52 = v46;
    v53 = 34;
    goto LABEL_61;
  }

LABEL_64:

LABEL_65:
  *(a1 + 328) = 1;
  v54 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3764;
  block[3] = &unk_105E8;
  block[4] = a1;
  dispatch_async(v54, block);
  _Block_object_dispose(&v176, 8);
  _Block_object_dispose(&v180, 8);
  _Block_object_dispose(&v184, 8);
  _Block_object_dispose(&v188, 8);
  _Block_object_dispose(&v192, 8);
  _Block_object_dispose(&v196, 8);
  _Block_object_dispose(&v200, 8);
  _Block_object_dispose(&v204, 8);
  _Block_object_dispose(&v206, 8);
  _Block_object_dispose(&v208, 8);
  _Block_object_dispose(&v212, 8);
  _Block_object_dispose(&v216, 8);
  _Block_object_dispose(&v220, 8);
  _Block_object_dispose(v224, 8);
  _Block_object_dispose(v226, 8);
  _Block_object_dispose(v228, 8);
}

void sub_2818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_28F8(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 5100)
  {
    if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = NDR_record;
    }

    else
    {
      *(a2 + 32) = telemetry_notification(a1[3]);
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void sub_29B4(uint64_t a1)
{
  v1 = mach_msg_server_once(sub_28F8, 0x68u, *(a1 + 32), 0);
  if (v1)
  {
    sub_8BF0(v1);
  }
}

uint64_t sub_29F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a2 + 24) & 0x10) == 0)
  {
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      v10 = sub_3644(a1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = "user";
        if (!*(a3 + 4))
        {
          v11 = "kernel";
        }

LABEL_97:
        v68 = *(a2 + 24);
        v69 = *(a2 + 8);
        v70 = *(a2 + 16);
        *buf = 136315906;
        *&buf[4] = v11;
        *&buf[12] = 1024;
        *&buf[14] = v68;
        *&buf[18] = 2048;
        *&buf[20] = v69;
        *&buf[28] = 2048;
        *&buf[30] = v70;
        _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "non-PMI %s microstackshot 0x%x @ %llu.%0llu", buf, 0x26u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if (*(*(a1[6] + 8) + 24) == 1 && (*(*(a1[7] + 8) + 24) & 1) == 0)
    {
      v29 = sub_3644(a1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v76 = "user";
        if (!*(a3 + 4))
        {
          v76 = "kernel";
        }

        v77 = *(a2 + 24);
        v78 = *(a2 + 8);
        v79 = *(a2 + 16);
        *buf = 136315906;
        *&buf[4] = v76;
        *&buf[12] = 1024;
        *&buf[14] = v77;
        *&buf[18] = 2048;
        *&buf[20] = v78;
        *&buf[28] = 2048;
        *&buf[30] = v79;
        _os_log_debug_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "non-PMI %s microstackshot 0x%x @ %llu.%0llu - known duplicate", buf, 0x26u);
      }

      if (*(a3 + 4))
      {
        v28 = a1[5];
      }

      else
      {
        v28 = a1[4];
      }
    }

    else
    {
      v19 = *(a2 + 8);
      if (qword_10C58 < v19 || qword_10C58 == v19 && qword_10C60 < *(a2 + 16))
      {
        v10 = sub_3644(a1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = "user";
          if (!*(a3 + 4))
          {
            v11 = "kernel";
          }

          goto LABEL_97;
        }

LABEL_17:

        goto LABEL_58;
      }

      v27 = sub_3644(a1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v72 = "user";
        if (!*(a3 + 4))
        {
          v72 = "kernel";
        }

        v73 = *(a2 + 24);
        v74 = *(a2 + 8);
        v75 = *(a2 + 16);
        *buf = 136315906;
        *&buf[4] = v72;
        *&buf[12] = 1024;
        *&buf[14] = v73;
        *&buf[18] = 2048;
        *&buf[20] = v74;
        *&buf[28] = 2048;
        *&buf[30] = v75;
        _os_log_debug_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "non-PMI %s microstackshot 0x%x @ %llu.%0llu - likely duplicate", buf, 0x26u);
      }

      if (*(a3 + 4))
      {
        v28 = a1[13];
      }

      else
      {
        v28 = a1[12];
      }
    }

    ++*(*(v28 + 8) + 24);
    return 1;
  }

  v12 = *(a3 + 193);
  v13 = HIDWORD(v12);
  v14 = *(a3 + 201);
  v15 = *(a3 + 209);
  v16 = *(a3 + 217);
  if (v15 >= *(a1[20] + 360))
  {
    v89 = *(a3 + 217);
    *(*(a1[7] + 8) + 24) = 1;
    v20 = *(a1[8] + 8);
    v88 = *(v20 + 24);
    *(v20 + 24) = 1;
    v21 = sub_3644(a1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v65 = "user";
      v66 = *(a2 + 8);
      v67 = *(a2 + 16);
      if (!*(a3 + 4))
      {
        v65 = "kernel";
      }

      *buf = 136316930;
      *&buf[4] = v65;
      *&buf[12] = 1024;
      *&buf[14] = v12;
      *&buf[18] = 1024;
      *&buf[20] = HIDWORD(v12);
      *&buf[24] = 2048;
      *&buf[26] = v14;
      *&buf[34] = 2048;
      *&buf[36] = v15;
      *&buf[44] = 2048;
      *&buf[46] = v89;
      *&buf[54] = 2048;
      v91 = v66;
      v92 = 2048;
      v93 = v67;
      _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "PMI %s microstackshot generation:%u source:%u period:%llu samples_recorded:%llu samples_skipped:%llu time:%llu.%0llu", buf, 0x4Au);
    }

    v23 = a1[20];
    v24 = *(v23 + 384);
    if (v24 == v12)
    {
      if (v13 == 4)
      {
        if (v14 != *(v23 + 336))
        {
          v25 = sub_3688(v22);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            if (*(a3 + 4))
            {
              v84 = "user";
            }

            else
            {
              v84 = "kernel";
            }

            v85 = *(a1[20] + 336);
            *buf = 136315650;
            *&buf[4] = v84;
            *&buf[12] = 2048;
            *&buf[14] = v14;
            *&buf[22] = 2048;
            *&buf[24] = v85;
            _os_log_fault_impl(&dword_0, v25, OS_LOG_TYPE_FAULT, "PMI %s microstackshot wrong interval %llu, should be %llu", buf, 0x20u);
          }

          v23 = a1[20];
          *(v23 + 458) = 1;
        }
      }

      else
      {
        v30 = sub_3688(v22);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          sub_96A8();
        }

        v23 = a1[20];
        *(v23 + 457) = 1;
      }
    }

    else if (v24 < v12)
    {
      if (v13 == 4 && v14 == *(v23 + 336))
      {
        v26 = sub_3688(v22);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          if (*(a3 + 4))
          {
            v86 = "user";
          }

          else
          {
            v86 = "kernel";
          }

          v87 = *(a1[20] + 384);
          *buf = 136315650;
          *&buf[4] = v86;
          *&buf[12] = 1024;
          *&buf[14] = v87;
          *&buf[18] = 1024;
          *&buf[20] = v12;
          _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "PMI %s microstackshot generation incremented unexpectedly %u -> %u, but settings are correct", buf, 0x18u);
        }

        v23 = a1[20];
        *(v23 + 384) = v12;
      }

      else
      {
        v31 = sub_3688(v22);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v80 = "user";
          v81 = a1[20];
          v82 = *(v81 + 384);
          if (!*(a3 + 4))
          {
            v80 = "kernel";
          }

          v83 = *(v81 + 336);
          *buf = 136316418;
          *&buf[4] = v80;
          *&buf[12] = 1024;
          *&buf[14] = v82;
          *&buf[18] = 1024;
          *&buf[20] = v12;
          *&buf[24] = 1024;
          *&buf[26] = HIDWORD(v12);
          *&buf[30] = 2048;
          *&buf[32] = v14;
          *&buf[40] = 2048;
          *&buf[42] = v83;
          _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "PMI %s microstackshot generation incremented unexpectedly %u -> %u, and settings are wrong! source:%d period:%llu, should be %llu", buf, 0x32u);
        }

        v23 = a1[20];
        *(v23 + 459) = 1;
      }
    }

    v32 = *(v23 + 360);
    v33 = v15 - v32;
    if (v15 <= v32 || v32 < 2)
    {
      goto LABEL_57;
    }

    v35 = *(v23 + 376) / 1000000.0 + *(v23 + 368);
    v36 = *(a2 + 16) / 1000000.0 + *(a2 + 8);
    if (v88 & 1) != 0 || (*(*(a1[6] + 8) + 24))
    {
      v37 = sub_3688(v22);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v71 = *(*(a1[10] + 8) + 24) + v33;
        *buf = 134219008;
        *&buf[4] = v33;
        *&buf[12] = 2048;
        *&buf[14] = v71;
        *&buf[22] = 2048;
        *&buf[24] = v35;
        *&buf[32] = 2048;
        *&buf[34] = v36;
        *&buf[42] = 2048;
        *&buf[44] = v36 - v35;
        _os_log_error_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "Lost %llu (%llu total) PMI microstackshots in this drain between %f-%f (%.9fs)", buf, 0x34u);
      }

      *(*(a1[10] + 8) + 24) += v33;
      v38 = *(a1[11] + 8);
      v40 = *(v38 + 24);
      v39 = (v38 + 24);
      if (v40 >= v33)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v41 = sub_3688(v22);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218752;
        *&buf[4] = v33;
        *&buf[12] = 2048;
        *&buf[14] = v35;
        *&buf[22] = 2048;
        *&buf[24] = v36;
        *&buf[32] = 2048;
        *&buf[34] = v36 - v35;
        _os_log_error_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "Lost %llu PMI microstackshots before this drain between %f-%f (%.9fs)", buf, 0x2Au);
      }

      v39 = (*(a1[9] + 8) + 24);
    }

    *v39 = v33;
LABEL_57:
    v42 = a1[20];
    *(v42 + 360) = v15 + 1;
    *(v42 + 368) = *(a2 + 8);
    *(v42 + 376) = *(a2 + 16);
    *(v42 + 392) = v89;
    *(v42 + 388) = v12;
LABEL_58:
    v43 = 15;
    if (!*(a3 + 4))
    {
      v43 = 14;
    }

    ++*(*(a1[v43] + 8) + 24);
    v44 = a1[20];
    *(a2 + 25) = *(v44 + 332);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_36CC;
    *&buf[24] = &unk_106D8;
    *&buf[32] = a5;
    *&buf[40] = a3;
    *&buf[48] = a4;
    v45 = objc_retainBlock(buf);
    (*(v45 + 2))(v45, v44 + 72);
    v46 = *(a2 + 24);
    if (v46)
    {
      (*(v45 + 2))(v45, v44 + 104);
      v46 = *(a2 + 24);
      if ((v46 & 2) == 0)
      {
LABEL_62:
        if ((v46 & 8) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_75;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_62;
    }

    (*(v45 + 2))(v45, v44 + 136);
    v46 = *(a2 + 24);
    if ((v46 & 8) == 0)
    {
LABEL_63:
      if ((v46 & 0x10) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_76;
    }

LABEL_75:
    (*(v45 + 2))(v45, v44 + 168);
    v46 = *(a2 + 24);
    if ((v46 & 0x10) == 0)
    {
LABEL_64:
      if ((v46 & 0x20) == 0)
      {
LABEL_66:
        if ((v46 & 0x3B) == 0)
        {
          (*(v45 + 2))(v45, v44 + 264);
        }

        v47 = a1[20];
        v48 = *(*v47 + 168);
        v49 = *(*v47 + 120);
        systemstats_write_microstackshot();
        v50 = a1[20];
        v51 = *(*v50 + 168);
        v52 = v51 > v48;
        v53 = v51 - v48;
        if (v52)
        {
          sub_60F4(v50, v49 + a5, v53 / 1000.0);
          sub_5744(a1[20]);
          v54 = a1[20];
          *(v54 + 88) = 0u;
          *(v54 + 72) = 0u;
          *(v54 + 104) = 0u;
          *(v54 + 120) = 0u;
          *(v54 + 136) = 0u;
          *(v54 + 152) = 0u;
          *(v54 + 168) = 0u;
          *(v54 + 184) = 0u;
          *(v54 + 200) = 0u;
          *(v54 + 216) = 0u;
          *(v54 + 232) = 0u;
          *(v54 + 248) = 0u;
          *(v54 + 264) = 0u;
          *(v54 + 280) = 0u;
          *(v54 + 400) = 0;
          *(v54 + 408) = 0;
          *(v54 + 416) = 0;
          *(v54 + 488) = 0;
          *(v54 + 496) = 0;
        }

        v56 = *(a2 + 16);
        qword_10C58 = *(a2 + 8);
        v55 = qword_10C58;
        qword_10C60 = v56;
        v57 = *(a1[16] + 8);
        v58 = *(v57 + 24);
        if (v58 > qword_10C58 || v58 == qword_10C58 && *(*(a1[17] + 8) + 24) > v56)
        {
          *(v57 + 24) = qword_10C58;
          *(*(a1[17] + 8) + 24) = *(a2 + 16);
          v55 = *(a2 + 8);
        }

        v59 = *(a1[18] + 8);
        v60 = *(v59 + 24);
        if (v60 < v55 || v60 == v55 && *(*(a1[19] + 8) + 24) < *(a2 + 16))
        {
          *(v59 + 24) = v55;
          *(*(a1[19] + 8) + 24) = *(a2 + 16);
        }

        return 1;
      }

LABEL_65:
      (*(v45 + 2))(v45, v44 + 232);
      v46 = *(a2 + 24);
      goto LABEL_66;
    }

LABEL_76:
    (*(v45 + 2))(v45, v44 + 200);
    v46 = *(a2 + 24);
    if ((v46 & 0x20) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v17 = sub_3644(a1);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v62 = "user";
    v63 = *(a2 + 8);
    v64 = *(a2 + 16);
    if (!*(a3 + 4))
    {
      v62 = "kernel";
    }

    *buf = 136316930;
    *&buf[4] = v62;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = HIDWORD(v12);
    *&buf[24] = 2048;
    *&buf[26] = v14;
    *&buf[34] = 2048;
    *&buf[36] = v15;
    *&buf[44] = 2048;
    *&buf[46] = v16;
    *&buf[54] = 2048;
    v91 = v63;
    v92 = 2048;
    v93 = v64;
    _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "PMI %s microstackshot generation:%u source:%u period:%llu samples_recorded:%llu samples_skipped:%llu time:%llu.%0llu - duplicate", buf, 0x4Au);
  }

  v18 = 5;
  if (!*(a3 + 4))
  {
    v18 = 4;
  }

  ++*(*(a1[v18] + 8) + 24);
  *(*(a1[6] + 8) + 24) = 1;
  if (v15 == *(a1[20] + 360) - 1)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  return 1;
}

id sub_3644(uint64_t a1)
{
  if (qword_10C40 != -1)
  {
    sub_3770();
  }

  v2 = qword_10C38;

  return v2;
}

id sub_3688(uint64_t a1)
{
  if (qword_10BF0 != -1)
  {
    sub_74C4();
  }

  v2 = qword_10BE8;

  return v2;
}

int64x2_t sub_36CC(void *a1, int64x2_t *a2)
{
  v2.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v2.i64[1] = a1[4];
  v3 = a2[1].i64[1];
  v4 = a2[1].i64[0] + *(a1[5] + 56);
  v5 = (*(a1[6] + 8) + *(a1[6] + 4));
  result = vaddq_s64(*a2, v2);
  *a2 = result;
  a2[1].i64[0] = v4;
  a2[1].i64[1] = v3 + v5;
  return result;
}

uint64_t telemetry_notification(mach_port_name_t name)
{
  context = 0;
  if (mach_port_get_context(mach_task_self_, name, &context))
  {
    _os_assumes_log();
  }

  else
  {
    sub_C90(context, 0);
  }

  return 0;
}

void sub_3784(uint64_t a1)
{
  state64 = 0;
  state = notify_get_state(*(a1 + 324), &state64);
  if (state64)
  {
    v3 = 0;
  }

  else
  {
    v3 = state == 0;
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (IOPSGetTimeRemainingEstimate() != -2.0)
  {
    v4 |= 4u;
  }

  if (*(a1 + 332) != v4)
  {
    sub_C90(a1, 0);
    *(a1 + 332) = v4;
  }
}

unint64_t sub_3808(unint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 330) == 1)
  {
    v2 = systemstats_mach_continuous_time();
    if (v2 <= *(v1 + 8) || (result = absolute_time_to_absolute_milliseconds(), result >> 3 >= 0x271))
    {
      sub_C90(v1, 1);
      *(v1 + 8) = v2;

      return notify_post("com.apple.telemetry.immediate-done");
    }
  }

  return result;
}

void init_telemetry()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);
  v2 = dispatch_queue_create("com.apple.telemetry.microstackshots", v1);

  out_token = -1;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_39F0;
  handler[3] = &unk_104C0;
  v3 = v2;
  v9 = v3;
  if (notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v3, handler))
  {
    _os_assumes_log();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3C00;
  v5[3] = &unk_10498;
  v6 = v3;
  v7 = out_token;
  v4 = v3;
  dispatch_async(v4, v5);
}

void sub_39F0(uint64_t a1, int a2)
{
  v4 = sub_3688(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_7488();
  }

  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3AB0;
  v6[3] = &unk_10498;
  v7 = v5;
  v8 = a2;
  dispatch_async(v7, v6);
}

void sub_3AC0(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (qword_10BF8)
  {
    v5 = sub_3688(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_74D8();
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = MKBDeviceUnlockedSinceBoot();
  if (v6)
  {
    v7 = sub_3688(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Device unlocked; proceeding with initialization of telemetry plugin.", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3C54;
    block[3] = &unk_10568;
    v11 = a2;
    v10 = "/private/var/db/systemstats";
    v9 = v4;
    if (qword_10C00 != -1)
    {
      dispatch_once(&qword_10C00, block);
    }

    v5 = v9;
    goto LABEL_10;
  }

LABEL_11:
}

void sub_3C10(id a1)
{
  qword_10BE8 = os_log_create("com.apple.systemstats", "telemetry_plugin");

  _objc_release_x1();
}

void sub_3C54(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  _systemstats_boot();
  systemstats_unlink_if_present();
  systemstats_unlink_if_present();
  systemstats_unlink_if_present();
  qword_10BF8 = malloc_type_calloc(1uLL, 0x200uLL, 0x10B0040A8A28788uLL);
  objc_storeStrong((qword_10BF8 + 16), *(a1 + 32));
  v3 = _systemstats_stream_create();
  v4 = qword_10BF8;
  *qword_10BF8 = v3;
  if (!v3)
  {
    v28 = sub_3688(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_8520();
    }

    v29 = qword_10BF8;
    goto LABEL_37;
  }

  *(v4 + 40) = 0x10000;
  v5 = malloc_type_malloc(0x10000uLL, 0xC6A3100uLL);
  v6 = qword_10BF8;
  *(qword_10BF8 + 24) = v5;
  if (!v5)
  {
    v30 = sub_3688(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_84E4();
    }

    goto LABEL_28;
  }

  v7 = malloc_type_malloc(*(v6 + 40), 0x3E63C79BuLL);
  v8 = qword_10BF8;
  *(qword_10BF8 + 32) = v7;
  if (!v7)
  {
    v31 = sub_3688(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_84A8();
    }

    v32 = qword_10BF8;
    free(*(qword_10BF8 + 24));
    *(v32 + 24) = 0;
    goto LABEL_32;
  }

  dispatch_async(*(v8 + 16), &stru_10520);
  v9 = qword_10BF8;
  name = 0;
  v10 = mach_port_allocate(mach_task_self_, 1u, &name);
  if (v10)
  {
    sub_830C(v10);
    goto LABEL_42;
  }

  inserted = mach_port_insert_right(mach_task_self_, name, name, 0x14u);
  if (inserted)
  {
    sub_8364(inserted);
    goto LABEL_42;
  }

  v12 = mach_host_self();
  v13 = host_set_special_port(v12, 20, name);
  if (v13)
  {
    sub_83BC(v13);
    goto LABEL_42;
  }

  v14 = mach_port_set_context(mach_task_self_, name, v9);
  if (v14)
  {
    sub_8414(v14);
LABEL_42:

    v30 = sub_3688(v37);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_846C();
    }

LABEL_28:

LABEL_32:
    v33 = qword_10BF8;
    v34 = *(qword_10BF8 + 24);
    if (v34)
    {
      free(v34);
      *(v33 + 24) = 0;
    }

    v35 = *(v33 + 32);
    if (v35)
    {
      free(v35);
      *(v33 + 32) = 0;
    }

    systemstats_stream_delete();
    v29 = qword_10BF8;
    *qword_10BF8 = 0;
LABEL_37:
    v36 = *(v29 + 16);
    *(v29 + 16) = 0;

    free(qword_10BF8);
    return;
  }

  v15 = dispatch_source_create(&_dispatch_source_type_mach_recv, name, 0, *(v9 + 16));
  v16 = *(v9 + 296);
  *(v9 + 296) = v15;

  v17 = *(v9 + 296);
  block = _NSConcreteStackBlock;
  v41 = 3221225472;
  v42 = sub_29B4;
  v43 = &unk_105C8;
  LODWORD(v44) = name;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &block);
  dispatch_source_set_event_handler(v17, v18);

  dispatch_resume(*(v9 + 296));
  block = _NSConcreteStackBlock;
  v41 = 3221225472;
  v42 = sub_55E4;
  v43 = &unk_105E8;
  v44 = qword_10BF8;
  if (qword_10C20 != -1)
  {
    dispatch_once(&qword_10C20, &block);
  }

  v19 = qword_10BF8;
  block = _NSConcreteStackBlock;
  v41 = 3221225472;
  v42 = sub_72F4;
  v43 = &unk_10690;
  v44 = qword_10BF8;
  v20 = objc_retainBlock(&block);
  if (notify_register_dispatch("com.apple.da.tasking_changed", (v19 + 316), *(v19 + 16), v20))
  {
    _os_assumes_log();
  }

  if (notify_register_dispatch("com.apple.microstackshots.preferences_changed", (v19 + 316), *(v19 + 16), v20))
  {
    _os_assumes_log();
  }

  v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v19 + 16));
  v22 = *(v19 + 304);
  *(v19 + 304) = v21;

  v23 = dispatch_time(0, 86400000000000);
  dispatch_source_set_timer(*(v19 + 304), v23, 0x4E94914F0000uLL, 0x8BB2C97000uLL);
  v24 = *(v19 + 304);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_7358;
  handler[3] = &unk_105E8;
  handler[4] = v19;
  dispatch_source_set_event_handler(v24, handler);
  dispatch_resume(*(v19 + 304));

  v25 = *(qword_10BF8 + 16);
  block = _NSConcreteStackBlock;
  v41 = 3221225472;
  v42 = sub_3808;
  v43 = &unk_10690;
  v44 = qword_10BF8;
  if (notify_register_dispatch("com.apple.telemetry.immediate", (qword_10BF8 + 312), v25, &block))
  {
    _os_assumes_log();
  }

  v26 = qword_10BF8;
  block = _NSConcreteStackBlock;
  v41 = 3221225472;
  v42 = sub_3800;
  v43 = &unk_10690;
  v44 = qword_10BF8;
  v27 = objc_retainBlock(&block);
  if (notify_register_dispatch("com.apple.system.powersources.source", (v26 + 320), *(v26 + 16), v27))
  {
    _os_assumes_log();
  }

  if (notify_register_dispatch("com.apple.springboard.lockstate", (v26 + 324), *(v26 + 16), v27))
  {
    _os_assumes_log();
  }

  notify_suspend(*(v26 + 320));
  notify_suspend(*(v26 + 324));

  dispatch_async(*(a1 + 32), &stru_10540);
}

void sub_4298(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *a1;
  if (*(*a1 + 80))
  {
    v4 = *(*a1 + 80);
  }

  else
  {
    v4 = "/private/var/db/systemstats";
  }

  memset(&v94, 0, 37);
  uuid_unparse((v3 + 24), v94.sysname);
  v5 = _systemstats_writers();
  v86[0] = 0;
  asprintf(v86, "%s/%s.%s.bootinfo%s", v4, v94.sysname, *(v5 + 776), *(*a1 + 192));
  v6 = gzopen(v86[0], "wxb");
  if (v6)
  {
    v7 = v6;
    free(v86[0]);
    v8 = [[NSMutableDictionary alloc] initWithCapacity:13];
    v9 = [[NSUUID alloc] initWithUUIDBytes:*a1 + 24];
    v10 = [v9 UUIDString];
    [v8 setObject:v10 forKeyedSubscript:@"uuid"];

    v86[0] = 0;
    *v94.sysname = 0uLL;
    mach_get_times();
    v11.n128_f64[0] = *v94.sysname - kCFAbsoluteTimeIntervalSince1970;
    v12 = &CFDataGetBytePtr_ptr;
    v13 = [NSNumber numberWithDouble:v11.n128_f64[0] + *&v94.sysname[8] / 1000000000.0 - sub_52B4(v86[0], v11)];
    [v8 setObject:v13 forKeyedSubscript:@"walltime"];

    LODWORD(v86[0]) = 0;
    *v94.sysname = 4;
    v14 = sysctlbyname("hw.pagesize", v86, &v94, 0, 0);
    if (v14)
    {
      v15 = sub_3688(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_855C();
      }
    }

    else
    {
      v15 = [NSNumber numberWithUnsignedInt:LODWORD(v86[0])];
      [v8 setObject:v15 forKeyedSubscript:@"hw_page_size"];
    }

    LODWORD(v86[0]) = 0;
    *v94.sysname = 4;
    v17 = sysctlbyname("vm.pagesize", v86, &v94, 0, 0);
    if (v17)
    {
      v18 = sub_3688(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_85E0();
      }
    }

    else
    {
      v18 = [NSNumber numberWithUnsignedInt:LODWORD(v86[0])];
      [v8 setObject:v18 forKeyedSubscript:@"vm_page_size"];
    }

    v77 = v2;

    mach_timebase_info(&dword_10C08);
    v19 = [NSString alloc];
    v20 = [v19 initWithFormat:@"%u/%u", dword_10C08, *algn_10C0C];
    [v8 setObject:v20 forKeyedSubscript:@"mach_timebase"];

    CSArchitectureGetCurrent();
    FamilyName = CSArchitectureGetFamilyName();
    if (FamilyName)
    {
      v22 = [[NSString alloc] initWithUTF8String:FamilyName];
      [v8 setObject:v22 forKeyedSubscript:@"machine_arch"];
    }

    off_10488();
    v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v24 = 0;
    *v94.sysname = v23;
    v25 = sysctlbyname("kern.bootargs", v24, &v94, 0, 0);
    if (v25)
    {
      v26 = sub_3688(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_8664();
      }
    }

    else
    {
      v26 = [[NSString alloc] initWithUTF8String:v24];
      [v8 setObject:v26 forKeyedSubscript:@"boot_args"];
    }

    memset(&v94, 0, 512);
    v94.version[0] = 0;
    v27 = uname(&v94);
    if (v27)
    {
      v28 = sub_3688(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_8704();
      }
    }

    else if (v94.version[0])
    {
      v28 = [[NSString alloc] initWithUTF8String:v94.version];
      [v8 setObject:v28 forKeyedSubscript:@"kernel_version"];
    }

    else
    {
      v28 = sub_3688(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_8788();
      }
    }

    v29 = _CFCopySupplementalVersionDictionary();
    if (v29)
    {
      v30 = v29;
      [v8 setObject:CFDictionaryGetValue(v29 forKeyedSubscript:{_kCFSystemVersionProductVersionKey), @"os_product_version"}];
      [v8 setObject:CFDictionaryGetValue(v30 forKeyedSubscript:{_kCFSystemVersionProductVersionExtraKey), @"os_product_version_extra"}];
      [v8 setObject:CFDictionaryGetValue(v30 forKeyedSubscript:{_kCFSystemVersionBuildVersionKey), @"os_build_version"}];
      [v8 setObject:CFDictionaryGetValue(v30 forKeyedSubscript:{_kCFSystemVersionProductNameKey), @"os_product_name"}];
      CFRelease(v30);
    }

    else
    {
      v31 = sub_3688(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_87C4();
      }
    }

    v92 = 0;
    v32 = [SABinaryLoadInfo binaryLoadInfoForLiveProcessWithPid:0 dataGatheringOptions:3 additionalCSSymbolicatorFlags:0 mainBinaryOut:&v92 sharedCacheOut:0];
    v33 = v92;
    v34 = [v32 count];
    v78 = v8;
    if (v34)
    {
      v74 = v33;
      *&v76 = v7;
      v35 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v32, "count")}];
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v75 = v32;
      v80 = v32;
      v36 = [v80 countByEnumeratingWithState:&v88 objects:v93 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v89;
        v79 = *v89;
        do
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v89 != v38)
            {
              objc_enumerationMutation(v80);
            }

            v40 = *(*(&v88 + 1) + 8 * i);
            v41 = [v40 exclave];

            if (!v41)
            {
              v42 = v35;
              v43 = v12;
              v44 = objc_alloc_init(NSMutableDictionary);
              v45 = [v40 binary];
              v46 = [v45 uuid];
              v47 = [v46 UUIDString];
              [v44 setObject:v47 forKeyedSubscript:@"uuid"];

              v48 = [v40 binary];
              v49 = [v48 path];

              if (v49)
              {
                v50 = [v40 binary];
                v51 = [v50 path];
                [v44 setObject:v51 forKeyedSubscript:@"path"];
              }

              v52 = [v40 segment];

              v35 = v42;
              if (v52)
              {
                v53 = [v40 segment];
                v54 = [v53 name];
                [v44 setObject:v54 forKeyedSubscript:@"segment"];
              }

              v12 = v43;
              v55 = [v43[133] numberWithUnsignedLongLong:{objc_msgSend(v40, "loadAddress")}];
              [v44 setObject:v55 forKeyedSubscript:@"load_address"];

              v56 = [v43[133] numberWithUnsignedLongLong:{objc_msgSend(v40, "length")}];
              [v44 setObject:v56 forKeyedSubscript:@"length"];

              [v42 addObject:v44];
              v38 = v79;
            }
          }

          v37 = [v80 countByEnumeratingWithState:&v88 objects:v93 count:16];
        }

        while (v37);
      }

      v57 = [[NSMutableDictionary alloc] initWithCapacity:3];
      [v57 setObject:&off_10BC8 forKeyedSubscript:@"pid"];
      v33 = v74;
      v58 = [v74 uuid];
      v59 = [v58 UUIDString];
      [v57 setObject:v59 forKeyedSubscript:@"main_binary_uuid"];

      [v57 setObject:v35 forKeyedSubscript:@"load_info_entries"];
      v60 = [[NSMutableArray alloc] initWithCapacity:1];
      [v60 addObject:v57];
      v8 = v78;
      [v78 setObject:v60 forKeyedSubscript:@"load_infos"];

      v32 = v75;
      v7 = v76;
    }

    else
    {
      v35 = sub_3688(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_8800();
      }
    }

    +[SABinary clearCaches];
    v87 = 0;
    v61 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:&v87];
    v62 = v87;
    v79 = v62;
    v80 = v61;
    if (v61)
    {
      v63 = [v61 bytes];
      v64 = [v61 length];
      v66 = v64;
      if (v64 <= 0xFFFFFFFE)
      {
        if (v64)
        {
          v67 = 0;
          *&v65 = 134218242;
          v76 = v65;
          v68 = v64;
          do
          {
            if (v68 >= 0x1FFDB)
            {
              v69 = 131035;
            }

            else
            {
              v69 = v68;
            }

            LODWORD(v86[0]) = -1342106384;
            HIDWORD(v86[0]) = v69 + 16;
            v86[1] = (v68 > 0x1FFDB);
            gzwrite(v7, v86, 0x10u);
            v70 = gzwrite(v7, v63, v69);
            v71 = sub_3688(v70);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
            {
              *v94.sysname = v76;
              v72 = &unk_A7E2;
              if (v68 > 0x1FFDB)
              {
                v72 = " (needs following chunk)";
              }

              *&v94.sysname[4] = v69;
              *&v94.sysname[12] = 2080;
              *&v94.sysname[14] = v72;
              _os_log_debug_impl(&dword_0, v71, OS_LOG_TYPE_DEBUG, "wrote %lu boot info chunk %s", &v94, 0x16u);
            }

            sub_5338(v7);
            v63 += 131035;
            v68 -= 131035;
            v67 += 131035;
          }

          while (v67 < v66);
        }

        goto LABEL_69;
      }

      v73 = sub_3688(v64);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_883C();
      }
    }

    else
    {
      v73 = sub_3688(v62);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_88AC();
      }
    }

LABEL_69:
    v81 = _NSConcreteStackBlock;
    v82 = 3221225472;
    v83 = sub_53A8;
    v84 = &unk_10588;
    v85 = v7;
    dyld_for_each_installed_shared_cache();
    gzclose(v7);

    v2 = v77;
    goto LABEL_70;
  }

  v16 = sub_3688(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_891C();
  }

  free(v86[0]);
LABEL_70:
  objc_autoreleasePoolPop(v2);
}

void sub_4EA0(id a1)
{
  sub_3784(qword_10BF8);
  sub_4EE8(qword_10BF8);
  v1 = qword_10BF8;

  sub_4F54(v1, 0);
}

uint64_t sub_4EE8(uint64_t a1)
{
  pmi_cycle_interval = systemstats_get_pmi_cycle_interval();
  *(a1 + 344) = pmi_cycle_interval;
  *(a1 + 353) = 0;
  if (pmi_cycle_interval != *(a1 + 336) || *(a1 + 352))
  {
    sub_C90(a1, 0);
  }

  result = systemstats_persistence_is_allowed();
  *(a1 + 329) = result;
  return result;
}

void sub_4F54(uint64_t a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    sub_5744(a1);
    v4 = *(v3 + 344);
  }

  else
  {
    v4 = *(a1 + 336);
    if (v4 == *(a1 + 344) && *(a1 + 352) == *(a1 + 353) || (sub_5744(a1), v4 = *(v3 + 344), *(v3 + 336) == v4))
    {
      if (*(v3 + 352) == *(v3 + 353))
      {
LABEL_20:
        if (*(v3 + 352) == *(v3 + 353))
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }
    }
  }

  if (!v4)
  {
    v5 = sub_3688(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Disabling cycle-count-based microstackshots because settings changed.", &v16, 2u);
    }
  }

  a1 = __telemetry();
  if (a1)
  {
    if (*(v3 + 336))
    {
      v6 = sub_3688(a1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_89B4();
      }
    }

    if (a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v3 + 336) = 0;
    if (a2)
    {
      goto LABEL_21;
    }
  }

  if (*(v3 + 336) == *(v3 + 344))
  {
    goto LABEL_20;
  }

LABEL_21:
  v7 = sub_3688(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v3 + 344);
    v9 = &unk_A7E2;
    if (*(v3 + 353))
    {
      v9 = " (Overridden by pref)";
    }

    v16 = 134218242;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Enabling cycle-count-based microstackshots at %llu cycles.%s", &v16, 0x16u);
  }

  v10 = __telemetry();
  if (v10)
  {
    *(v3 + 456) = 1;
    v11 = sub_3688(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8A38();
    }
  }

  else
  {
    *(v3 + 336) = *(v3 + 344);
    *(v3 + 352) = *(v3 + 353);
    *(v3 + 384) = *(v3 + 388) + 1;
    v12 = *(v3 + 208);
    *(v3 + 400) = *(v3 + 80);
    *(v3 + 408) = v12;
    a1 = now_in_absolute_milliseconds();
    *(v3 + 416) = a1;
  }

LABEL_30:
  if (*(v3 + 329))
  {
    if (*(v3 + 330))
    {
      goto LABEL_40;
    }

    v13 = sub_3688(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Enabling state change notifications since persistence is allowed.", &v16, 2u);
    }

    notify_resume(*(v3 + 320));
    notify_resume(*(v3 + 324));
    v14 = 1;
  }

  else
  {
    if (!*(v3 + 330))
    {
      goto LABEL_40;
    }

    v15 = sub_3688(a1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Disabling state change notifications since persistence is disallowed.", &v16, 2u);
    }

    notify_suspend(*(v3 + 320));
    notify_suspend(*(v3 + 324));
    v14 = 0;
  }

  *(v3 + 330) = v14;
LABEL_40:
  if (*(v3 + 336))
  {
    if (!*(v3 + 360))
    {
      *(v3 + 360) = 1;
      *(v3 + 368) = 0;
      *(v3 + 376) = 0;
    }
  }
}

double sub_52B4(unint64_t a1, __n128 a2)
{
  if (qword_10C10 != -1)
  {
    sub_8ABC();
  }

  result = 0.0;
  if (dword_10C18)
  {
    v4 = *algn_10C1C == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (dword_10C18 == *algn_10C1C)
    {
      v5 = a1;
    }

    else
    {
      v5 = __udivti3();
    }

    return v5 / 1000000000.0;
  }

  return result;
}

void sub_5338(gzFile_s *a1)
{
  v3[0] = 0x104BCF7A75;
  v3[1] = 0x31C5401100000000;
  v1 = gzwrite(a1, v3, 0x10u);
  v2 = sub_3688(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_8AD0();
  }
}

void sub_53A8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  dyld_shared_cache_copy_uuid();
  v4 = 0;
  v5 = 0;
  v2 = dscsym_mmap_dscsym_for_uuid();
  v3 = sub_3688(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_8B80();
  }
}

void sub_55E4(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = qword_10C28;
  qword_10C28 = v2;

  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(*(a1 + 32) + 16));
  v5 = qword_10C30;
  qword_10C30 = v4;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_56B4;
  handler[3] = &unk_105E8;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(qword_10C30, handler);
  dispatch_activate(qword_10C30);
}

void sub_56B4(uint64_t a1)
{
  sub_C90(*(a1 + 32), 1);
  sub_5744(*(a1 + 32));
  v2 = now_in_absolute_milliseconds();
  sub_60F4(*(a1 + 32), *(**(a1 + 32) + 120), (v2 - *(**(a1 + 32) + 168)) / 1000.0);
  v3 = qword_10C28;
  if (qword_10C28)
  {
    qword_10C28 = 0;
  }
}

void sub_5744(uint64_t a1)
{
  v2 = mach_host_self();
  *host_info64_out = 0;
  *&host_info64_out[8] = 0;
  host_info64_outCnt = 4;
  v3 = host_statistics64(v2, 3, host_info64_out, &host_info64_outCnt);
  if (v3)
  {
    v4 = sub_3688(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_8C64();
    }

    v5 = 0;
  }

  else
  {
    v5 = 10000000 * (*&host_info64_out[4] + *host_info64_out);
  }

  if (*(a1 + 336))
  {
    v6 = sub_3644(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_8CD4();
    }

    if (!*(a1 + 336))
    {
      v25 = sub_3644(v7);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_94A4();
      }

      goto LABEL_31;
    }

    if (!*(a1 + 360))
    {
      v25 = sub_3688(v7);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_9468();
      }

      goto LABEL_31;
    }

    v8 = *(a1 + 464);
    v9 = sub_3644(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_8D10();
    }

    v10 = *(a1 + 472);
    v12 = sub_3644(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_8D78();
    }

    v13 = *(a1 + 480);
    v15 = sub_3644(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_8DE0();
    }

    v16 = *(a1 + 360) - 1;
    v18 = sub_3644(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_8E48();
    }

    v19 = *(a1 + 392);
    v21 = sub_3644(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_8EB0();
    }

    v23 = sub_3644(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_8F18();
    }

    if (v5 && !v13)
    {
      v25 = sub_3688(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_9434();
      }

LABEL_31:

      v27 = 0;
      v78 = 0;
      v28 = 0;
      v84 = 0;
      v83 = 0;
      v82 = 0;
      v29 = 0;
      v81 = 0;
      v79 = 0;
      v80 = 0uLL;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v77 = 0;
      v33 = 0;
LABEL_32:
      v34 = sub_3688(v26);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *host_info64_out = 134222848;
        *&host_info64_out[4] = v33;
        *&host_info64_out[12] = 2048;
        *&host_info64_out[14] = v77;
        *&host_info64_out[22] = 2048;
        v87 = &v31[v79 + *(&v80 + 1) + v32];
        *v88 = 2048;
        *&v88[2] = v31;
        *&v88[10] = 2048;
        *&v88[12] = v79 + *(&v80 + 1) + v32;
        *&v88[20] = 2048;
        *&v88[22] = v32;
        *&v88[30] = 2048;
        v89 = v79;
        *v90 = 2048;
        *&v90[2] = *(&v80 + 1);
        *&v90[10] = 2048;
        *&v90[12] = v32;
        *&v90[20] = 2048;
        *&v90[22] = v30;
        *&v90[30] = 2048;
        v91 = v80;
        v92 = 2048;
        v93 = v81;
        v94 = 1024;
        v95 = v82;
        v96 = 1024;
        v97 = v83;
        v98 = 1024;
        v99 = HIDWORD(v83);
        v100 = 1024;
        v101 = v84;
        v102 = 1024;
        v103 = v28;
        v104 = 1024;
        v105 = v78;
        v106 = 1024;
        v107 = v27;
        v108 = 1024;
        v109 = v29;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "PMI telemetry - pmi_interval:%llu time_since_last_adjustment_s:%llus\nnum_pmi_microstackshots_pmi_triggers:%llu\nnum_pmi_microstackshots_skipped:%llu\nnum_pmi_microstackshots_generated:%llu\nnum_pmi_microstackshots_captured:%llu\nnum_pmi_microstackshots_lost_between_drains:%llu\nnum_pmi_microstackshots_lost_inside_drains:%llu\nnum_pmi_microstackshots_captured:%llu\nnum_pmi_microstackshots_not_generated:%llu\nnum_pmi_microstackshots_lost_between_drains_max_at_once:%llu\nnum_pmi_microstackshots_lost_inside_drains_max_at_once:%llu\npmi_configuration_failure:%d\npmi_microstackshots_wrong_source:%d\npmi_microstackshots_wrong_interval:%d\npmi_microstackshots_unexpected_configuration_change:%d\nbad_cpu_time:%d\nbad_samples_recorded:%d\nbad_samples_skipped:%d\nhad_pref_override:%d", host_info64_out, 0xAAu);
      }

      if (v33)
      {
        *host_info64_out = _NSConcreteStackBlock;
        *&host_info64_out[8] = 3221225472;
        *&host_info64_out[16] = sub_6EC8;
        v87 = &unk_10670;
        *v88 = v33;
        *&v88[8] = v77;
        *&v88[16] = v32;
        *&v88[24] = v31;
        v89 = v30;
        *v90 = v79;
        *&v90[8] = v80;
        *&v90[24] = v81;
        LOBYTE(v91) = v29;
        BYTE1(v91) = v82;
        BYTE2(v91) = v83;
        BYTE3(v91) = BYTE4(v83);
        BYTE4(v91) = v84;
        BYTE5(v91) = v28;
        BYTE6(v91) = v78;
        HIBYTE(v91) = v27;
        analytics_send_event_lazy();
      }

      goto LABEL_36;
    }

    v33 = *(a1 + 336);
    v76 = *(a1 + 352);
    v39 = now_in_absolute_milliseconds();
    v40 = *(a1 + 416);
    if (!v40)
    {
      v40 = *(*a1 + 168);
    }

    v41 = (v39 - v40) / 1000.0;
    v79 = *(a1 + 424);
    v80 = *(a1 + 432);
    v81 = *(a1 + 448);
    v82 = *(a1 + 456);
    LODWORD(v83) = *(a1 + 457);
    HIDWORD(v83) = *(a1 + 458);
    v84 = *(a1 + 459);
    v32 = v16 - v8;
    v75 = v16 < v8;
    if (v16 >= v8)
    {
      v42 = sub_3644(v39);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        sub_8F80();
      }

      v78 = 0;
    }

    else
    {
      v42 = sub_3688(v39);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_8FE8();
      }

      v32 = 0;
      v78 = 1;
    }

    v77 = v41;

    v31 = (v19 - v10);
    if (v19 >= v10)
    {
      v44 = sub_3644(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        sub_9054();
      }

      v27 = 0;
    }

    else
    {
      v44 = sub_3688(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_90BC();
      }

      v27 = 1;
      v75 = 1;
    }

    v29 = v76;

    if (!v5 || (v46 = v5 - v13, v5 < v13))
    {
      v48 = sub_3688(v45);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_93C8();
      }

      v30 = 0;
      v28 = 1;
      goto LABEL_32;
    }

    v47 = sub_3644(v45);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      sub_9128();
    }

    if (v5 == v13)
    {
      v30 = 0;
      if (v75)
      {
LABEL_84:
        v28 = 0;
LABEL_94:
        v29 = v76;
        goto LABEL_32;
      }
    }

    else
    {
      if (qword_10C48 != -1)
      {
        sub_9190();
      }

      v49 = (v46 / 1000000000.0 * qword_10BE0);
      v50 = sub_3644(v26);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        sub_91B8();
      }

      if (v75)
      {
        goto LABEL_93;
      }

      v30 = (v49 * 0.9);
    }

    v51 = &v31[v32];
    v52 = sub_3644(v26);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      sub_9220();
    }

    v54 = *(a1 + 336);
    if (v54)
    {
      v55 = v30 / v54;
    }

    else
    {
      v55 = 0;
    }

    v56 = sub_3644(v53);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      sub_9288();
    }

    if (v55 < 3)
    {
      v62 = sub_3644(v57);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        sub_92F0(v62, v63, v64, v65, v66, v67, v68, v69);
      }

      v58 = 0;
    }

    else
    {
      v58 = v55 - 2;
      v59 = sub_3644(v57);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        sub_9360();
      }

      v30 = v58 - v51;
      if (v58 > v51)
      {
        v61 = sub_3688(v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v73 = v46 / 1000000000.0;
          v74 = *(a1 + 336);
          if (qword_10C48 != -1)
          {
            sub_9190();
          }

          *host_info64_out = 134219264;
          *&host_info64_out[4] = &v31[v32];
          *&host_info64_out[12] = 2048;
          *&host_info64_out[14] = v73;
          *&host_info64_out[22] = 2048;
          v87 = v31;
          *v88 = 2048;
          *&v88[2] = v58;
          *&v88[10] = 2048;
          *&v88[12] = v74;
          *&v88[20] = 2048;
          *&v88[22] = qword_10BE0;
          _os_log_error_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "PMI microstackshot count is not at least what is expected: %llu in last %.0fs of cpu time (%llu skipped). Expect at least %llu given interval %llu and minumum cpu cycles per second %llu", host_info64_out, 0x3Eu);
        }

        goto LABEL_84;
      }
    }

    v70 = sub_3688(v60);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v71 = v46 / 1000000000.0;
      v72 = *(a1 + 336);
      if (qword_10C48 != -1)
      {
        sub_9190();
      }

      *host_info64_out = 134219264;
      *&host_info64_out[4] = &v31[v32];
      *&host_info64_out[12] = 2048;
      *&host_info64_out[14] = v71;
      *&host_info64_out[22] = 2048;
      v87 = v31;
      *v88 = 2048;
      *&v88[2] = v58;
      *&v88[10] = 2048;
      *&v88[12] = v72;
      *&v88[20] = 2048;
      *&v88[22] = qword_10BE0;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "PMI microstackshot count is at least what is expected: %llu in last %.0fs of cpu time (%llu skipped). Expect at least %llu given interval %llu and minumum cpu cycles per second %llu", host_info64_out, 0x3Eu);
    }

LABEL_93:
    v28 = 0;
    v30 = 0;
    goto LABEL_94;
  }

LABEL_36:
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  v35 = *(a1 + 360);
  v36 = v35 != 0;
  v37 = v35 - 1;
  if (!v36)
  {
    v37 = 0;
  }

  v38 = *(a1 + 392);
  *(a1 + 464) = v37;
  *(a1 + 472) = v38;
  *(a1 + 480) = v5;
}

uint64_t sub_60F4(uint64_t a1, unint64_t a2, double a3)
{
  v6 = a3;
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 208) / v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *(*(*a1 + 8) + 32);
  v10 = *(a1 + 488);
  v119 = *(a1 + 496);
  v117 = *(a1 + 336);
  pmi_cycle_interval = systemstats_get_pmi_cycle_interval();
  v12 = pmi_cycle_interval;
  v120 = *(a1 + 352);
  v13 = v6;
  if (*(a1 + 416))
  {
    pmi_cycle_interval = now_in_absolute_milliseconds();
    v13 = ((pmi_cycle_interval - *(a1 + 416)) / 1000.0);
  }

  v118 = v10;
  if (v6 > 0x15180)
  {
    v15 = 0.0;
    if (a3 > 0.0)
    {
      v15 = a2 * 86400.0 / a3;
    }

    v14 = v15 > v9;
  }

  else
  {
    v14 = v9 < a2;
  }

  if (!*(a1 + 336))
  {
    v38 = sub_3688(pmi_cycle_interval);
    v16 = v38;
    if (v14)
    {
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v39 = *(a1 + 72);
      *&buf[24] = *(a1 + 80);
      *&buf[44] = v39;
      *&buf[54] = *&buf[24];
      v40 = *(a1 + 96);
      *&buf[64] = *(a1 + 88);
      v41 = *(a1 + 144);
      *&buf[74] = v40;
      v42 = *(a1 + 160);
      v128 = v41;
      v132 = v42;
      v43 = *(a1 + 176);
      v134 = *(a1 + 168);
      v45 = *(a1 + 192);
      v44 = *(a1 + 200);
      v136 = v43;
      v140 = v45;
      v46 = *(a1 + 208);
      v142 = v44;
      v48 = *(a1 + 224);
      v47 = *(a1 + 232);
      v144 = v46;
      v148 = v48;
      v49 = *(a1 + 240);
      v150 = v47;
      v152 = v49;
      v50 = *(a1 + 112);
      *&buf[84] = *(a1 + 104);
      v52 = *(a1 + 256);
      v51 = *(a1 + 264);
      *&buf[94] = v50;
      v156 = v52;
      v53 = *(a1 + 272);
      v158 = v51;
      v160 = v53;
      v164 = *(a1 + 288);
      v54 = *(a1 + 128);
      v122 = *(a1 + 120);
      v124 = v54;
      v126 = *(a1 + 136);
      v130 = *(a1 + 152);
      v138 = *(a1 + 184);
      v146 = *(a1 + 216);
      v154 = *(a1 + 248);
      v162 = *(a1 + 280);
      *&buf[12] = 2048;
      *&buf[22] = 2048;
      *&buf[32] = 2048;
      *&buf[42] = 2048;
      *&buf[52] = 2048;
      *&buf[62] = 2048;
      *&buf[72] = 2048;
      *&buf[82] = 2048;
      *&buf[92] = 2048;
      *&buf[102] = 2048;
      v123 = 2048;
      v125 = 2048;
      v127 = 2048;
      v129 = 2048;
      v131 = 2048;
      v133 = 2048;
      v135 = 2048;
      v137 = 2048;
      v139 = 2048;
      v141 = 2048;
      v143 = 2048;
      v145 = 2048;
      v147 = 2048;
      v149 = 2048;
      v151 = 2048;
      v153 = 2048;
      v155 = 2048;
      v157 = 2048;
      v159 = 2048;
      v161 = 2048;
      v163 = 2048;
      *buf = 134225920;
      *&buf[4] = a2;
      *&buf[14] = v6;
      *&buf[34] = v9;
      v37 = "Microstackshot datarate exceeded daily budget without PMI microstackshots: %llu bytes written over the last %llus (%llu uncompressed), cleanup quota %llu\ntotal     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ninterrupt count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ntimer     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nio        count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\npmi       count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nmacf      count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nunknown   count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n";
      v55 = v16;
      v56 = 322;
      goto LABEL_30;
    }

    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v79 = *(a1 + 72);
    *&buf[24] = *(a1 + 80);
    *&buf[44] = v79;
    *&buf[54] = *&buf[24];
    v80 = *(a1 + 96);
    *&buf[64] = *(a1 + 88);
    v81 = *(a1 + 144);
    *&buf[74] = v80;
    v82 = *(a1 + 160);
    v128 = v81;
    v132 = v82;
    v83 = *(a1 + 176);
    v134 = *(a1 + 168);
    v85 = *(a1 + 192);
    v84 = *(a1 + 200);
    v136 = v83;
    v140 = v85;
    v86 = *(a1 + 208);
    v142 = v84;
    v88 = *(a1 + 224);
    v87 = *(a1 + 232);
    v144 = v86;
    v148 = v88;
    v89 = *(a1 + 240);
    v150 = v87;
    v152 = v89;
    v90 = *(a1 + 112);
    *&buf[84] = *(a1 + 104);
    v92 = *(a1 + 256);
    v91 = *(a1 + 264);
    *&buf[94] = v90;
    v156 = v92;
    v93 = *(a1 + 272);
    v158 = v91;
    v160 = v93;
    v164 = *(a1 + 288);
    v94 = *(a1 + 128);
    v122 = *(a1 + 120);
    v124 = v94;
    v126 = *(a1 + 136);
    v130 = *(a1 + 152);
    v138 = *(a1 + 184);
    v146 = *(a1 + 216);
    v154 = *(a1 + 248);
    v162 = *(a1 + 280);
    *&buf[12] = 2048;
    *&buf[22] = 2048;
    *&buf[32] = 2048;
    *&buf[42] = 2048;
    *&buf[52] = 2048;
    *&buf[62] = 2048;
    *&buf[72] = 2048;
    *&buf[82] = 2048;
    *&buf[92] = 2048;
    *&buf[102] = 2048;
    v123 = 2048;
    v125 = 2048;
    v127 = 2048;
    v129 = 2048;
    v131 = 2048;
    v133 = 2048;
    v135 = 2048;
    v137 = 2048;
    v139 = 2048;
    v141 = 2048;
    v143 = 2048;
    v145 = 2048;
    v147 = 2048;
    v149 = 2048;
    v151 = 2048;
    v153 = 2048;
    v155 = 2048;
    v157 = 2048;
    v159 = 2048;
    v161 = 2048;
    v163 = 2048;
    *buf = 134225920;
    *&buf[4] = a2;
    *&buf[14] = v6;
    *&buf[34] = v9;
    v76 = "Microstackshot datarate did not exceed daily budget without PMI microstackshots: %llu bytes written over the last %llus (%llu uncompressed), cleanup quota %llu\ntotal     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ninterrupt count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ntimer     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nio        count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\npmi       count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nmacf      count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nunknown   count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n";
    v77 = v16;
    v78 = 322;
LABEL_23:
    _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEFAULT, v76, buf, v78);
    goto LABEL_25;
  }

  if (!v14)
  {
    v16 = sub_3688(pmi_cycle_interval);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *&buf[4] = *(a1 + 336);
    v57 = *(a1 + 80);
    *&buf[64] = *(a1 + 72);
    v58 = *(a1 + 128);
    *&buf[34] = v57;
    *&buf[74] = v57;
    v60 = *(a1 + 144);
    v59 = *(a1 + 152);
    v128 = v58;
    v132 = v60;
    v61 = *(a1 + 160);
    v134 = v59;
    v63 = *(a1 + 176);
    v62 = *(a1 + 184);
    v136 = v61;
    v140 = v63;
    v64 = *(a1 + 192);
    v142 = v62;
    v66 = *(a1 + 208);
    v65 = *(a1 + 216);
    v144 = v64;
    v148 = v66;
    v67 = *(a1 + 224);
    v150 = v65;
    v152 = v67;
    v68 = *(a1 + 96);
    *&buf[84] = *(a1 + 88);
    v70 = *(a1 + 240);
    v69 = *(a1 + 248);
    *&buf[94] = v68;
    v156 = v70;
    v71 = *(a1 + 256);
    v158 = v69;
    v73 = *(a1 + 272);
    v72 = *(a1 + 280);
    v160 = v71;
    v164 = v73;
    v74 = *(a1 + 288);
    v166 = v72;
    v168 = v74;
    v75 = *(a1 + 112);
    v122 = *(a1 + 104);
    v124 = v75;
    v126 = *(a1 + 120);
    v130 = *(a1 + 136);
    v138 = *(a1 + 168);
    v146 = *(a1 + 200);
    v154 = *(a1 + 232);
    v162 = *(a1 + 264);
    *&buf[12] = 2048;
    *&buf[22] = 2048;
    *&buf[32] = 2048;
    *&buf[42] = 2048;
    *&buf[52] = 2048;
    *&buf[62] = 2048;
    *&buf[72] = 2048;
    *&buf[82] = 2048;
    *&buf[92] = 2048;
    *&buf[102] = 2048;
    v123 = 2048;
    v125 = 2048;
    v127 = 2048;
    v129 = 2048;
    v131 = 2048;
    v133 = 2048;
    v135 = 2048;
    v137 = 2048;
    v139 = 2048;
    v141 = 2048;
    v143 = 2048;
    v145 = 2048;
    v147 = 2048;
    v149 = 2048;
    v151 = 2048;
    v153 = 2048;
    v155 = 2048;
    v157 = 2048;
    v159 = 2048;
    v161 = 2048;
    v163 = 2048;
    v165 = 2048;
    v167 = 2048;
    *buf = 134226432;
    *&buf[14] = a2;
    *&buf[24] = v6;
    *&buf[44] = v9;
    *&buf[54] = v13;
    v76 = "Microstackshot datarate did not exceed daily budget with %llu cycle interval: %llu bytes written over the last %llus (%llu uncompressed), cleanup quota %llu, last adjustment %llus ago\ntotal     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ninterrupt count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ntimer     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nio        count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\npmi       count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nmacf      count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nunknown   count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n";
    v77 = v16;
    v78 = 342;
    goto LABEL_23;
  }

  v16 = sub_3688(pmi_cycle_interval);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  if (v120)
  {
    if (!v17)
    {
      goto LABEL_25;
    }

    *&buf[4] = *(a1 + 336);
    v18 = *(a1 + 80);
    *&buf[64] = *(a1 + 72);
    v19 = *(a1 + 128);
    *&buf[34] = v18;
    *&buf[74] = v18;
    v21 = *(a1 + 144);
    v20 = *(a1 + 152);
    v128 = v19;
    v132 = v21;
    v22 = *(a1 + 160);
    v134 = v20;
    v24 = *(a1 + 176);
    v23 = *(a1 + 184);
    v136 = v22;
    v140 = v24;
    v25 = *(a1 + 192);
    v142 = v23;
    v27 = *(a1 + 208);
    v26 = *(a1 + 216);
    v144 = v25;
    v148 = v27;
    v28 = *(a1 + 224);
    v150 = v26;
    v152 = v28;
    v29 = *(a1 + 96);
    *&buf[84] = *(a1 + 88);
    v31 = *(a1 + 240);
    v30 = *(a1 + 248);
    *&buf[94] = v29;
    v156 = v31;
    v32 = *(a1 + 256);
    v158 = v30;
    v34 = *(a1 + 272);
    v33 = *(a1 + 280);
    v160 = v32;
    v164 = v34;
    v35 = *(a1 + 288);
    v166 = v33;
    v168 = v35;
    v36 = *(a1 + 112);
    v122 = *(a1 + 104);
    v124 = v36;
    v126 = *(a1 + 120);
    v130 = *(a1 + 136);
    v138 = *(a1 + 168);
    v146 = *(a1 + 200);
    v154 = *(a1 + 232);
    v162 = *(a1 + 264);
    *&buf[12] = 2048;
    *&buf[22] = 2048;
    *&buf[32] = 2048;
    *&buf[42] = 2048;
    *&buf[52] = 2048;
    *&buf[62] = 2048;
    *&buf[72] = 2048;
    *&buf[82] = 2048;
    *&buf[92] = 2048;
    *&buf[102] = 2048;
    v123 = 2048;
    v125 = 2048;
    v127 = 2048;
    v129 = 2048;
    v131 = 2048;
    v133 = 2048;
    v135 = 2048;
    v137 = 2048;
    v139 = 2048;
    v141 = 2048;
    v143 = 2048;
    v145 = 2048;
    v147 = 2048;
    v149 = 2048;
    v151 = 2048;
    v153 = 2048;
    v155 = 2048;
    v157 = 2048;
    v159 = 2048;
    v161 = 2048;
    v163 = 2048;
    v165 = 2048;
    v167 = 2048;
    *buf = 134226432;
    *&buf[14] = a2;
    *&buf[24] = v6;
    *&buf[44] = v9;
    *&buf[54] = v13;
    v37 = "Microstackshot datarate exceeded daily budget with %llu cycle interval: %llu bytes written over the last %llus (%llu uncompressed), cleanup quota %llu, last adjustment %llus ago - Ignoring due to PMI interval pref override \ntotal     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ninterrupt count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ntimer     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nio        count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\npmi       count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nmacf      count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nunknown   count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n";
  }

  else
  {
    if (!v17)
    {
      goto LABEL_25;
    }

    *&buf[4] = *(a1 + 336);
    v98 = *(a1 + 80);
    *&buf[64] = *(a1 + 72);
    v99 = *(a1 + 128);
    *&buf[34] = v98;
    *&buf[74] = v98;
    v101 = *(a1 + 144);
    v100 = *(a1 + 152);
    v128 = v99;
    v132 = v101;
    v102 = *(a1 + 160);
    v134 = v100;
    v104 = *(a1 + 176);
    v103 = *(a1 + 184);
    v136 = v102;
    v140 = v104;
    v105 = *(a1 + 192);
    v142 = v103;
    v107 = *(a1 + 208);
    v106 = *(a1 + 216);
    v144 = v105;
    v148 = v107;
    v108 = *(a1 + 224);
    v150 = v106;
    v152 = v108;
    v109 = *(a1 + 96);
    *&buf[84] = *(a1 + 88);
    v111 = *(a1 + 240);
    v110 = *(a1 + 248);
    *&buf[94] = v109;
    v156 = v111;
    v112 = *(a1 + 256);
    v158 = v110;
    v114 = *(a1 + 272);
    v113 = *(a1 + 280);
    v160 = v112;
    v164 = v114;
    v115 = *(a1 + 288);
    v166 = v113;
    v168 = v115;
    v116 = *(a1 + 112);
    v122 = *(a1 + 104);
    v124 = v116;
    v126 = *(a1 + 120);
    v130 = *(a1 + 136);
    v138 = *(a1 + 168);
    v146 = *(a1 + 200);
    v154 = *(a1 + 232);
    v162 = *(a1 + 264);
    *&buf[12] = 2048;
    *&buf[22] = 2048;
    *&buf[32] = 2048;
    *&buf[42] = 2048;
    *&buf[52] = 2048;
    *&buf[62] = 2048;
    *&buf[72] = 2048;
    *&buf[82] = 2048;
    *&buf[92] = 2048;
    *&buf[102] = 2048;
    v123 = 2048;
    v125 = 2048;
    v127 = 2048;
    v129 = 2048;
    v131 = 2048;
    v133 = 2048;
    v135 = 2048;
    v137 = 2048;
    v139 = 2048;
    v141 = 2048;
    v143 = 2048;
    v145 = 2048;
    v147 = 2048;
    v149 = 2048;
    v151 = 2048;
    v153 = 2048;
    v155 = 2048;
    v157 = 2048;
    v159 = 2048;
    v161 = 2048;
    v163 = 2048;
    v165 = 2048;
    v167 = 2048;
    *buf = 134226432;
    *&buf[14] = a2;
    *&buf[24] = v6;
    *&buf[44] = v9;
    *&buf[54] = v13;
    v37 = "Microstackshot datarate exceeded daily budget with %llu cycle interval: %llu bytes written over the last %llus (%llu uncompressed), cleanup quota %llu, last adjustment %llus ago\ntotal     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ninterrupt count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ntimer     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nio        count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\npmi       count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nmacf      count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nunknown   count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n";
  }

  v55 = v16;
  v56 = 342;
LABEL_30:
  _os_log_error_impl(&dword_0, v55, OS_LOG_TYPE_ERROR, v37, buf, v56);
LABEL_25:

  v96 = sub_3688(v95);
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67111424;
    *&buf[4] = v14;
    *&buf[8] = 2048;
    *&buf[10] = v9;
    *&buf[18] = 2048;
    *&buf[20] = a2;
    *&buf[28] = 2048;
    *&buf[30] = v6;
    *&buf[38] = 2048;
    *&buf[40] = v8;
    *&buf[48] = 2048;
    *&buf[50] = v119;
    *&buf[58] = 2048;
    *&buf[60] = v118;
    *&buf[68] = 2048;
    *&buf[70] = v117;
    *&buf[78] = 2048;
    *&buf[80] = v12;
    *&buf[88] = 2048;
    *&buf[90] = v13;
    _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEFAULT, "Quota telemetry - exceeded_quota:%d quota:%llu bytes_written:%llu time_since_last_cleanup_s:%llus ratio_pmi:%.2f num_interval_increases:%llu num_interval_decreases:%llu ending_pmi_interval:%llu default_pmi_interval:%llu time_since_last_adjustment_s:%llus", buf, 0x62u);
  }

  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_718C;
  *&buf[24] = &unk_10670;
  *&buf[32] = v14 | (v120 << 8);
  *&buf[40] = v9;
  *&buf[48] = a2;
  *&buf[56] = v6;
  *&buf[64] = v8;
  *&buf[72] = v119;
  *&buf[80] = v118;
  *&buf[88] = v117;
  *&buf[96] = v12;
  v122 = v13;
  return analytics_send_event_lazy();
}

void sub_6B90(id a1)
{
  qword_10C38 = os_log_create("com.apple.systemstats", "internal_calculations");

  _objc_release_x1();
}

void sub_6BD4(id a1)
{
  v1 = snprintf(__str, 0x80uLL, "%s%s", "IODeviceTree", ":/arm-io/pmgr");
  if (v1 >= 0x81)
  {
    v2 = sub_3688(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_95C8();
    }

LABEL_26:

    return;
  }

  v3 = IORegistryEntryFromPath(kIOMainPortDefault, __str);
  if (!v3)
  {
    v2 = sub_3688(v3);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_958C();
    }

    goto LABEL_26;
  }

  v4 = v3;
  v5 = 0;
  for (i = 0; i != 5; ++i)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v4, off_10648[i], kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      v13 = sub_3688(0);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
LABEL_15:

        continue;
      }

      *buf = 134217984;
      v20 = i;
      v14 = v13;
      v15 = "Unable to determine min cpu %zu frequency (3)";
LABEL_19:
      _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0xCu);
      goto LABEL_15;
    }

    v8 = CFProperty;
    v9 = *CFDataGetBytePtr(CFProperty);
    CFRelease(v8);
    if (!v9)
    {
      v13 = sub_3688(v10);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      *buf = 134217984;
      v20 = i;
      v14 = v13;
      v15 = "Unable to determine min cpu %zu frequency (4)";
      goto LABEL_19;
    }

    v11 = 0x3E80000 / v9;
    v12 = sub_3688(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v20 = i;
      v21 = 1024;
      v22 = v11;
      _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "Min cpu %zu frequency is %dMHz", buf, 0x12u);
    }

    if (v5 - 1 >= v11)
    {
      v5 = v11;
    }
  }

  v16 = IOObjectRelease(v4);
  v17 = sub_3688(v16);
  v18 = v17;
  if (v5)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_94E0();
    }

    qword_10BE0 = 1000000 * v5;
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_9550();
    }
  }
}

void *sub_6EC8(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 72) + *(a1 + 48) + *(a1 + 88);
    v5 = v4 + *(a1 + 56);
    xpc_dictionary_set_uint64(v2, "num_pmi_microstackshots_pmi_triggers", v5);
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_skipped", *(a1 + 56));
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_generated", v4);
    if (v5)
    {
      v6 = 10000 * *(a1 + 56) / v5;
    }

    else
    {
      v6 = 0;
    }

    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_skipped_per10000", v6);
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_captured", *(a1 + 48));
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_between_drains", *(a1 + 72));
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_inside_drains", *(a1 + 88));
    if (v4)
    {
      xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_captured_per10000", 10000 * *(a1 + 48) / v4);
      xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_between_drains_per10000", 10000 * *(a1 + 72) / v4);
      v8 = 10000 * *(a1 + 88) / v4;
    }

    else
    {
      xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_captured_per10000", 0);
      xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_between_drains_per10000", 0);
      v8 = 0;
    }

    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_inside_drains_per10000", v8);
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_not_generated", *(a1 + 64));
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_between_drains_max_at_once", *(a1 + 80));
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_inside_drains_max_at_once", *(a1 + 96));
    xpc_dictionary_set_uint64(v3, "pmi_interval", *(a1 + 32));
    xpc_dictionary_set_uint64(v3, "time_since_last_adjustment", *(a1 + 40));
    xpc_dictionary_set_BOOL(v3, "pmi_configuration_failure", *(a1 + 105));
    xpc_dictionary_set_BOOL(v3, "pmi_microstackshots_wrong_source", *(a1 + 106));
    xpc_dictionary_set_BOOL(v3, "pmi_microstackshots_wrong_interval", *(a1 + 107));
    xpc_dictionary_set_BOOL(v3, "pmi_microstackshots_unexpected_configuration_change", *(a1 + 108));
    xpc_dictionary_set_BOOL(v3, "bad_cpu_time", *(a1 + 109));
    xpc_dictionary_set_BOOL(v3, "bad_samples_recorded", *(a1 + 110));
    xpc_dictionary_set_BOOL(v3, "bad_samples_skipped", *(a1 + 111));
    xpc_dictionary_set_BOOL(v3, "had_pref_override", *(a1 + 104));
    v9 = v3;
  }

  else
  {
    v7 = sub_3688(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_9604();
    }
  }

  return v3;
}

void *sub_718C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_string(v2, "type", "pmi");
    xpc_dictionary_set_BOOL(v3, "exceeded_quota", *(a1 + 32));
    xpc_dictionary_set_uint64(v3, "bytes_written", *(a1 + 48));
    xpc_dictionary_set_uint64(v3, "cleanup_quota", *(a1 + 40));
    xpc_dictionary_set_double(v3, "time_since_last_cleanup", *(a1 + 56));
    xpc_dictionary_set_uint64(v3, "default_interval", *(a1 + 96));
    xpc_dictionary_set_uint64(v3, "ending_interval", *(a1 + 88));
    xpc_dictionary_set_uint64(v3, "num_interval_increases", *(a1 + 72));
    xpc_dictionary_set_uint64(v3, "num_interval_decreases", *(a1 + 80));
    xpc_dictionary_set_uint64(v3, "time_since_last_adjustment", *(a1 + 104));
    xpc_dictionary_set_double(v3, "ratio_pmi", *(a1 + 64));
    xpc_dictionary_set_BOOL(v3, "had_pref_override", *(a1 + 33));
    v4 = v3;
  }

  else
  {
    v5 = sub_3688(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_9638();
    }
  }

  return v3;
}

void sub_72FC(uint64_t a1)
{
  v2 = sub_3688(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_966C();
  }

  sub_4EE8(a1);
  sub_4F54(a1, 0);
}

void sub_7370(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_73BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_73F4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_7430(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

BOOL sub_7458(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

uint64_t sub_7470(int a1)
{

  return _os_assumes_log();
}

void sub_7488()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_74D8()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7514()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7550()
{
  sub_7424();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_75C0()
{
  __error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_7644()
{
  sub_7424();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_76B4()
{
  __error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_773C(void *a1, uint64_t a2, __n128 a3)
{
  sub_52B4(a2 - *a1, a3);
  sub_73DC();
  sub_7360();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_77C4()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7800()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7D2C()
{
  sub_7398();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_7E84(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = 100000000000;
  sub_7370(&dword_0, a1, a3, "pmi_interval_to_equal_nonpmi_datarate:%llu (no non-PMI, so max)", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_8258()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8294()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_82D0()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_830C(int a1)
{
  v3 = sub_7470(a1);
  v4 = sub_3688(v3);
  if (sub_7458(v4))
  {
    v11 = 0;
    sub_73BC(&dword_0, v5, v6, "failed to allocate a mach port", v7, v8, v9, v10, v11);
  }

  *v1 = v2;
}

void sub_8364(int a1)
{
  v3 = sub_7470(a1);
  v4 = sub_3688(v3);
  if (sub_7458(v4))
  {
    v11 = 0;
    sub_73BC(&dword_0, v5, v6, "failed to insert send right", v7, v8, v9, v10, v11);
  }

  *v1 = v2;
}

void sub_83BC(int a1)
{
  v3 = sub_7470(a1);
  v4 = sub_3688(v3);
  if (sub_7458(v4))
  {
    v11 = 0;
    sub_73BC(&dword_0, v5, v6, "failed to bind host special port", v7, v8, v9, v10, v11);
  }

  *v1 = v2;
}

void sub_8414(int a1)
{
  v3 = sub_7470(a1);
  v4 = sub_3688(v3);
  if (sub_7458(v4))
  {
    v11 = 0;
    sub_73BC(&dword_0, v5, v6, "failed to set context for inbound notifications on the mach port", v7, v8, v9, v10, v11);
  }

  *v1 = v2;
}

void sub_846C()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_84A8()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_84E4()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8520()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_855C()
{
  __error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_85E0()
{
  __error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_8664()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_7360();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_8704()
{
  __error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_8788()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_87C4()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8800()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_883C()
{
  sub_7398();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_88AC()
{
  sub_7398();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_891C()
{
  __error();
  sub_7360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_89B4()
{
  __error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_8A38()
{
  __error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_8AD0()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8B0C()
{
  sub_744C();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8B80()
{
  sub_7424();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_8BF0(int a1)
{
  v1 = _os_assumes_log();
  v2 = sub_3688(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "failed to set context for inbound notifications on the mach port", v3, 2u);
  }
}

void sub_8C64()
{
  sub_7424();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_8CD4()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8FE8()
{
  sub_7398();
  sub_7414();
  sub_73F4(&dword_0, v0, v1, "pmi_samples_recorded went backwards %llu -> %llu", v2, v3);
}

void sub_90BC()
{
  sub_7398();
  sub_7414();
  sub_73F4(&dword_0, v0, v1, "pmi_samples_skipped went backwards %llu -> %llu", v2, v3);
}

void sub_93C8()
{
  sub_7398();
  sub_7414();
  sub_73F4(&dword_0, v0, v1, "host_cpu_time_ns went backwards %llu -> %llu", v2, v3);
}

void sub_9468()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_94A4()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_94E0()
{
  sub_7424();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_9550()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_958C()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_95C8()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_966C()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_96A8()
{
  sub_744C();
  v3 = 1024;
  v4 = v0;
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "PMI %s microstackshot wrong source %d", v2, 0x12u);
}