void vl_map_free(uint64_t a1)
{
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    free(*(a1 + 56));
    free(*(a1 + 104));
    free(*(a1 + 128));
    free(*(a1 + 248));
    free(*(a1 + 80));
    free(*(a1 + 152));
    free(*(a1 + 176));
    free(*(a1 + 200));
    free(*(a1 + 224));
    free(*(a1 + 416));
    free(*(a1 + 440));
    free(*(a1 + 520));
    free(*(a1 + 464));
    free(*(a1 + 488));
    v2 = *(a1 + 544);
    if (v2)
    {
      free(v2);
    }

    free(*(a1 + 568));
    free(*(a1 + 592));
    free(*(a1 + 736));
    v3 = *(a1 + 752);
    if (v3)
    {
      if (v3[64] >= 1)
      {
        v4 = 0;
        do
        {
          sss_node_free(*&v3[2 * v4]);
          free(*(*&v3[2 * v4] + 32));
          free(*(*&v3[2 * v4] + 40));
          free(*&v3[2 * v4++]);
        }

        while (v4 < v3[64]);
      }

      free(v3);
    }

    free(a1);
  }
}

uint64_t vl_map_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v12 = malloc_type_malloc(0x18uLL, 0x20040960023A9uLL);
  if (a4)
  {
    *(a1 + 568) = a5;
    *(a1 + 576) = a4;
  }

  else if (a6)
  {
    strncpy((a1 + 52), a6, 0x200uLL);
  }

  else
  {
    printf("%sError : ", &str_4_6);
    printf("Needs either map_callback or track_base_path");
    putchar(10);
  }

  *a1 = 0;
  *(a1 + 48) = 0;
  *(a1 + 584) = 0;
  if (pthread_rwlock_init((a1 + 736), 0))
  {
    printf("%sWarning : ", &str_4_6);
    printf("rwlock initialization failed.");
    putchar(10);
  }

  if (pthread_rwlock_init((a1 + 936), 0))
  {
    printf("%sWarning : ", &str_4_6);
    printf("rwlock initialization failed.");
    putchar(10);
  }

  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;

  return pthread_create((a1 + 728), 0, vl_map_build_thread, v12);
}

uint64_t vl_map_build_thread(uint64_t *a1)
{
  v128 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  *(*a1 + 48) = 1;
  v89 = vdupq_n_s64(0x41831BF8457C1095uLL);
  v87 = vdupq_n_s32(0xC2FF0000);
  do
  {
    if (*(v3 + 4) != 1)
    {
      usleep(0x186A0u);
      continue;
    }

    pthread_rwlock_wrlock((v3 + 736));
    v90 = *(v3 + 8);
    v91 = *(v3 + 24);
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    *(v3 + 40) = 0;
    pthread_rwlock_unlock((v3 + 736));
    if (v5)
    {
      if (vl_os_log_once_token == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    }

    v5 = malloc_type_calloc(1uLL, 0x300uLL, 0x10B0040D0EE5E44uLL);
    *v5 = 1;
    if (vl_os_log_once_token != -1)
    {
      dispatch_once(&vl_os_log_once_token, &__block_literal_global_4);
    }

    v12 = vl_os_log_log;
    v13 = os_signpost_id_make_with_pointer(vl_os_log_log, v5);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_27103D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "vl_map_load", "", buf, 2u);
      }
    }

    if (*(v3 + 1348))
    {
      *(v3 + 1256) -= mach_absolute_time();
    }

    else
    {
      clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (v3 + 1168));
      clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (v3 + 1152));
      clock_gettime(_CLOCK_MONOTONIC, (v3 + 1136));
    }

    v15 = *(v3 + 576);
    v16 = *(v3 + 568);
    v17 = *(v1 + 24);
    DWORD2(v92) = 0;
    *&v92 = v17;
    memset(buf, 0, sizeof(buf));
    v97 = v89;
    vl_geo_calc_tile(buf, &v90, v17, &v92 + 1, &v92 + 2);
    v18 = DWORD2(v92);
    v19 = ~(-1 << v17) - DWORD1(v92);
    *(&v92 + 4) = __PAIR64__(v19, DWORD2(v92));
    v20 = uncertainty_limits;
    if (*&uncertainty_limits < v4)
    {
      v20 = dword_28087552C;
      if (*&dword_28087552C < v4)
      {
        v20 = dword_280875530;
      }
    }

    HIDWORD(v92) = *&v20;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    *buf = 0u;
    v97 = 0u;
    if (v15 && v16)
    {
      v94 = 0;
      inv_filename = v15(v16, &v92, &v94);
      if (!inv_filename)
      {
        __strcpy_chk();
        free(v94);
      }
    }

    else
    {
      inv_filename = vl_rw_get_inv_filename((v3 + 52), v17, v18, v19, *&v20, v3 + 720, buf);
    }

    printf("Verbose : ");
    printf("MAP:   Loading track for %d, %d, %d, %d.", *(v1 + 24), DWORD1(v92), DWORD2(v92), HIDWORD(v92));
    putchar(10);
    if (inv_filename == 3)
    {
      printf("Verbose : ");
      printf("Track meta tile unavailable or broken : %d %d %d", DWORD1(v92), DWORD2(v92), HIDWORD(v92));
      putchar(10);
      v27 = 0;
      v28 = 3;
      if (vl_os_log_once_token != -1)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (inv_filename == 1)
      {
        printf("Verbose : ");
        printf("Downloading Tile : %d %d %d", DWORD1(v92), DWORD2(v92), HIDWORD(v92));
        putchar(10);
        if (vl_os_log_once_token != -1)
        {
          dispatch_once(&vl_os_log_once_token, &__block_literal_global_4);
        }

        v29 = vl_os_log_log;
        v30 = os_signpost_id_make_with_pointer(vl_os_log_log, v5);
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v31 = v30;
          if (os_signpost_enabled(v29))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_27103D000, v29, OS_SIGNPOST_INTERVAL_END, v31, "vl_map_load", "", buf, 2u);
          }
        }

        vl_timer_stop(v3 + 1136);
        usleep(0x186A0u);
        vl_map_free(v5);
        continue;
      }

      if (inv_filename || (v93 = 0, v94 = 0, vl_map_load_fn(buf, &v94, &v93, 0)) || (v22 = v93, v23 = v94, mem = vl_map_read_mem_ex((v5 + 12)), free(v23), mem))
      {
        printf("%sError : ", &str_4_6);
        printf("Track unavailable or broken : %d %d %d", DWORD1(v92), DWORD2(v92), HIDWORD(v92));
        putchar(10);
        printf("%sError : ", &str_4_6);
        printf("Filepath: %s", buf);
        putchar(10);
        v27 = 0;
        v28 = 2;
        if (vl_os_log_once_token != -1)
        {
          goto LABEL_99;
        }

        goto LABEL_49;
      }

      *(v5 + 95) = v22;
      if (*(v1 + 8))
      {
        vl_dom_dirs_read(v95, (v5 + 6));
      }

      v35.i64[0] = 0xFF000000FFLL;
      v35.i64[1] = 0xFF000000FFLL;
      if (*(v1 + 12) == 1)
      {
        v36 = *(v5 + 30);
        if (v36 >= 1)
        {
          v37 = 0;
          v38 = 0;
          v39 = v5[66];
          while (2)
          {
            if (v39 < 1)
            {
              goto LABEL_65;
            }

            v40 = *(v5 + 31);
            v41 = v39;
            if (v39 < 4)
            {
              v42 = 0;
              v43 = 0;
              goto LABEL_78;
            }

            if (v39 >= 0x20)
            {
              v42 = v39 & 0x7FFFFFE0;
              v44 = (v40 + v37 + 16);
              v43 = 0;
              v45 = v42;
              do
              {
                v46 = v44[-1];
                v47 = vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(v46, xmmword_2711050E0)), v87);
                v48 = vmulq_f32(v47, v47);
                v49 = vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(v46, xmmword_2711050D0)), v87);
                v26 = vmulq_f32(v49, v49);
                v50 = ((((((*v43.i32 + v48.f32[0]) + v48.f32[1]) + v48.f32[2]) + v48.f32[3]) + *v26.i32) + *&v26.i32[1]) + *&v26.i32[2];
                v51 = vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(v46, xmmword_2711050C0)), v87);
                v52 = vmulq_f32(v51, v51);
                v53 = vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(v46, xmmword_2711050B0)), v87);
                v54 = vmulq_f32(v53, v53);
                v55 = (((((((v50 + *&v26.i32[3]) + v52.f32[0]) + v52.f32[1]) + v52.f32[2]) + v52.f32[3]) + v54.f32[0]) + v54.f32[1]) + v54.f32[2];
                v56 = vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v44, xmmword_2711050E0)), v87);
                v57 = vmulq_f32(v56, v56);
                v58 = (((v55 + v54.f32[3]) + v57.f32[0]) + v57.f32[1]) + v57.f32[2];
                v59 = vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v44, xmmword_2711050D0)), v87);
                v60 = vmulq_f32(v59, v59);
                v61 = (((v58 + v57.f32[3]) + v60.f32[0]) + v60.f32[1]) + v60.f32[2];
                v62 = vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v44, xmmword_2711050C0)), v87);
                v63 = vmulq_f32(v62, v62);
                v64 = vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v44, xmmword_2711050B0)), v87);
                v25 = vmulq_f32(v64, v64);
                *v43.i32 = ((((((((v61 + v60.f32[3]) + v63.f32[0]) + v63.f32[1]) + v63.f32[2]) + v63.f32[3]) + v25.f32[0]) + v25.f32[1]) + v25.f32[2]) + v25.f32[3];
                v44 += 2;
                v45 -= 32;
              }

              while (v45);
              if (v42 != v39)
              {
                if ((v39 & 0x1C) == 0)
                {
                  goto LABEL_78;
                }

                goto LABEL_75;
              }
            }

            else
            {
              v42 = 0;
              v43 = 0;
LABEL_75:
              v65 = v42;
              v42 = v39 & 0x7FFFFFFC;
              v66 = (v40 + v65 + v37);
              v67 = v65 - v42;
              do
              {
                v68 = *v66++;
                v25.i32[0] = v68;
                v69 = vaddq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v25.f32))), v87);
                v25 = vmulq_f32(v69, v69);
                *v43.i32 = (((*v43.i32 + v25.f32[0]) + v25.f32[1]) + v25.f32[2]) + v25.f32[3];
                v67 += 4;
              }

              while (v67);
              if (v42 != v39)
              {
LABEL_78:
                v70 = v39 - v42;
                v71 = (v40 + v42 + v37);
                do
                {
                  v72 = *v71++;
                  *v43.i32 = *v43.i32 + ((v72 + -127.5) * (v72 + -127.5));
                  --v70;
                }

                while (v70);
              }
            }

            v25.i64[0] = 0;
            if (*v43.i32 > 0.0)
            {
              v25.f32[0] = 1.0 / sqrtf(*v43.i32);
            }

            v43.i32[0] = *(v1 + 16);
            v73.i32[0] = 1132462080;
            v74 = 256.0 / (*(v1 + 20) - *v43.i32);
            if (v39 >= 4)
            {
              if (v39 >= 0x10)
              {
                v76 = (v40 + v37);
                v75 = v39 & 0x7FFFFFF0;
                v73 = vdupq_lane_s32(v43, 0);
                v77 = v41 & 0x7FFFFFF0;
                do
                {
                  v78 = *&vuzp1q_s16(vminq_u32(vcvtq_u32_f32(vmulq_n_f32(vsubq_f32(vmulq_n_f32(vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v76, xmmword_2711050C0)), v87), v25.f32[0]), v73), v74)), v35), vminq_u32(vcvtq_u32_f32(vmulq_n_f32(vsubq_f32(vmulq_n_f32(vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v76, xmmword_2711050B0)), v87), v25.f32[0]), v73), v74)), v35)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
                  v129.val[3] = vmovl_high_u16(v78);
                  v79 = *&vuzp1q_s16(vminq_u32(vcvtq_u32_f32(vmulq_n_f32(vsubq_f32(vmulq_n_f32(vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v76, xmmword_2711050E0)), v87), v25.f32[0]), v73), v74)), v35), vminq_u32(vcvtq_u32_f32(vmulq_n_f32(vsubq_f32(vmulq_n_f32(vaddq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v76, xmmword_2711050D0)), v87), v25.f32[0]), v73), v74)), v35)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
                  v129.val[1] = vmovl_high_u16(v79);
                  v129.val[2] = vmovl_u16(*&v78);
                  v129.val[0] = vmovl_u16(*&v79);
                  v26 = vqtbl4q_s8(v129, xmmword_2711050F0);
                  *v76++ = v26;
                  v77 -= 16;
                }

                while (v77);
                if (v75 == v41)
                {
                  goto LABEL_64;
                }

                if ((v41 & 0xC) == 0)
                {
                  goto LABEL_93;
                }
              }

              else
              {
                v75 = 0;
              }

              v80 = v75;
              v75 = v41 & 0x7FFFFFFC;
              v73 = vdupq_lane_s32(v43, 0);
              v81 = (v40 + v80 + v37);
              v82 = v80 - v75;
              do
              {
                v26.i32[0] = *v81;
                *v26.i8 = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(vsubq_f32(vmulq_n_f32(vaddq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v26.i8))), v87), v25.f32[0]), v73), v74)), v35), 0)), *v25.f32);
                *v81++ = v26.i32[0];
                v82 += 4;
              }

              while (v82);
              if (v75 != v41)
              {
                goto LABEL_93;
              }
            }

            else
            {
              v75 = 0;
LABEL_93:
              v83 = v41 - v75;
              v84 = (v40 + v75 + v37);
              do
              {
                v73.i8[0] = *v84;
                v73.f32[0] = v74 * ((v25.f32[0] * (v73.u32[0] + -127.5)) - *v43.i32);
                v85 = v73.f32[0];
                if (v73.f32[0] >= 255)
                {
                  v85 = 255;
                }

                *v84++ = v85 & ~(v85 >> 31);
                --v83;
              }

              while (v83);
            }

LABEL_64:
            v39 = v5[66];
            v36 = *(v5 + 30);
LABEL_65:
            v38 += v39;
            v37 = v38;
            if (v36 <= v38)
            {
              break;
            }

            continue;
          }
        }
      }

      *(v5 + 1) = v92;
      log_col_app("%sMAP: loaded %d track points%s", &str_4_6, *(v5 + 6), &str_4_6);
      v27 = 1;
      v28 = 2;
      if (vl_os_log_once_token != -1)
      {
LABEL_99:
        dispatch_once(&vl_os_log_once_token, &__block_literal_global_4);
      }
    }

LABEL_49:
    v32 = vl_os_log_log;
    v33 = os_signpost_id_make_with_pointer(vl_os_log_log, v5);
    v34 = v33;
    if (v27)
    {
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_27103D000, v32, OS_SIGNPOST_INTERVAL_END, v34, "vl_map_load", "", buf, 2u);
      }

      vl_timer_stop(v3 + 1136);
      if (vl_os_log_once_token == -1)
      {
        goto LABEL_7;
      }

LABEL_54:
      dispatch_once(&vl_os_log_once_token, &__block_literal_global_4);
LABEL_7:
      v6 = vl_os_log_log;
      v7 = os_signpost_id_make_with_pointer(vl_os_log_log, v5);
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v8 = v7;
        if (os_signpost_enabled(v6))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_27103D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "vl_map_index", "", buf, 2u);
        }
      }

      if (*v2 == 2)
      {
        *(v5 + 94) = vl_match_sss_build(v3, *(v5 + 31), *(v5 + 30) / v5[66], v5[66], v2 + 1);
        printf("Verbose : ");
        printf("MAP: Built SSS search index");
      }

      else
      {
        printf("%sWarning : ", &str_4_6);
        printf("Unknown match index: %d");
      }

      putchar(10);
      if (vl_os_log_once_token != -1)
      {
        dispatch_once(&vl_os_log_once_token, &__block_literal_global_4);
      }

      v9 = vl_os_log_log;
      v10 = os_signpost_id_make_with_pointer(vl_os_log_log, v5);
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = v10;
        if (os_signpost_enabled(v9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_27103D000, v9, OS_SIGNPOST_INTERVAL_END, v11, "vl_map_index", "", buf, 2u);
        }
      }

      pthread_rwlock_wrlock((v3 + 936));
      vl_map_free(*(v3 + 584));
      atomic_fetch_add(v5, 1u);
      *(v3 + 584) = v5;
      pthread_rwlock_unlock((v3 + 936));
      pthread_rwlock_wrlock((v3 + 736));
      vl_map_free(v5);
      *(v3 + 4) = 0;
      pthread_rwlock_unlock((v3 + 736));
      printf("Verbose : ");
      printf("Map:   Update Successfully");
      putchar(10);
      continue;
    }

    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_27103D000, v32, OS_SIGNPOST_INTERVAL_END, v34, "vl_map_load", "", buf, 2u);
    }

    vl_timer_stop(v3 + 1136);
    usleep(0x186A0u);
    vl_map_free(v5);
    pthread_rwlock_wrlock((v3 + 736));
    *(v3 + 4) = v28;
    pthread_rwlock_unlock((v3 + 736));
  }

  while (*(v3 + 48));
  vl_map_free(*(v3 + 584));
  *(v3 + 584) = 0;
  free(a1);
  return 0;
}

uint64_t vl_map_update(int *a1, float a2, uint64_t a3, double *a4, uint64_t a5)
{
  if (!a1[12])
  {
    printf("Verbose : ");
    printf("Map build thread haven't started");
    putchar(10);
    return 4294967294;
  }

  v9 = a1[1];
  if ((v9 - 2) < 2)
  {
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 4;
    }

    pthread_rwlock_wrlock((a1 + 184));
    a1[1] = 0;
    pthread_rwlock_unlock((a1 + 184));
    if (vabdd_f64(*(a1 + 1), *a4) <= 0.0001 && vabdd_f64(*(a1 + 2), a4[1]) <= 0.0001 && vabdd_f64(*(a1 + 3), a4[2]) <= 0.0001 && *(a1 + 8) == a2)
    {
      printf("Verbose : ");
      printf("Map update not finished: %f %f %f", *a4, a4[1], a4[2]);
      putchar(10);
      return v10;
    }

LABEL_15:
    if (a5)
    {
      pthread_rwlock_rdlock((a1 + 234));
      v11 = *(a1 + 73);
      pthread_rwlock_unlock((a1 + 234));
      if (v11 == a5)
      {
        return 0;
      }

      pthread_rwlock_wrlock((a1 + 184));
      v10 = 1;
      a1[1] = 1;
      *(a1 + 5) = a5;
    }

    else
    {
      v12 = *a1;
      printf("Verbose : ");
      v13 = *a4;
      v14 = a4[2];
      if (v12)
      {
        printf("Map force update: %f %f %f", v13, a4[1], v14);
        putchar(10);
        pthread_rwlock_wrlock((a1 + 184));
        *a1 = 0;
        pthread_rwlock_unlock((a1 + 184));
        v10 = 3;
      }

      else
      {
        printf("Map update: %f %f %f", v13, a4[1], v14);
        putchar(10);
        pthread_rwlock_rdlock((a1 + 234));
        v15 = *(a1 + 73);
        if (v15)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21[0] = 0uLL;
          v21[1] = vdupq_n_s64(0x41831BF8457C1095uLL);
          v22 = 0u;
          vl_geo_calc_gnd(v21, *(v15 + 4), ~(-1 << *(v15 + 4)) - *(v15 + 12), *(v15 + 8), &v22);
          v16 = *a4 - *(&v26 + 1);
          v17 = a4[1] - *&v27;
          v18 = a4[2] - *(&v27 + 1);
          if (fabs(*(&v23 + 1) * v17 + *&v22 * v16 + *&v25 * v18) + *(&v28 + 1) * -0.5 <= 2.0 && fabs(v17 * *&v24 + *(&v22 + 1) * v16 + *(&v25 + 1) * v18) + *&v28 * -0.5 <= 2.0)
          {
            if (*(v15 + 272) >= a2 || *&dword_280875530 < a2)
            {
              pthread_rwlock_unlock((a1 + 234));
              return 0;
            }

            printf("Verbose : ");
            printf("MAP: Need rebuild, uncertainty > current map uncertainty (%f > %f)");
          }

          else
          {
            printf("Verbose : ");
            printf("MAP: Need rebuild, point outside current map gnd");
          }
        }

        else
        {
          printf("Verbose : ");
          printf("Map: Need rebuild, no map");
        }

        putchar(10);
        pthread_rwlock_unlock((a1 + 234));
        v10 = 1;
      }

      pthread_rwlock_wrlock((a1 + 184));
      a1[1] = 1;
      v19 = *(a4 + 2);
      *(a1 + 2) = *a4;
      *(a1 + 3) = v19;
      *(a1 + 8) = a2;
      *(a1 + 5) = 0;
    }

    pthread_rwlock_unlock((a1 + 184));
    return v10;
  }

  if (v9 != 1)
  {
    goto LABEL_15;
  }

  printf("Verbose : ");
  if (a4)
  {
    printf("Map update not finished: %f %f %f");
  }

  else
  {
    printf("Map update not finished.");
  }

  putchar(10);
  return 0xFFFFFFFFLL;
}

uint64_t vl_map_get(uint64_t a1, float a2, uint64_t a3, double *a4, uint64_t a5)
{
  pthread_rwlock_rdlock((a1 + 936));
  v9 = *(a1 + 584);
  if (v9)
  {
    v10 = *a4 - v9[45];
    v11 = a4[1] - v9[46];
    v12 = a4[2] - v9[47];
    v13 = v9[39] * v11 + v9[36] * v10 + v9[42] * v12;
    v14 = sqrt((v11 * v9[40] + v9[37] * v10 + v9[43] * v12) * (v11 * v9[40] + v9[37] * v10 + v9[43] * v12) + v13 * v13);
    if (v14 > v9[89] * 0.5 || v14 > v9[90] * 0.5)
    {
      printf("Verbose : ");
      printf("MAP: Map not validated, distance: %f > (%f, %f)", v14, v9[89] * 0.5, v9[90] * 0.5);
      v15 = 3;
      putchar(10);
      pthread_rwlock_unlock((a1 + 936));
      if (!a5)
      {
        return v15;
      }

      goto LABEL_7;
    }

    pthread_rwlock_unlock((a1 + 936));
    if (a5)
    {
      pthread_rwlock_rdlock((a1 + 936));
      v18 = *(a1 + 584);
      if (v18)
      {
        atomic_fetch_add(v18, 1u);
      }

      *a5 = v18;
      *(a1 + 592) = *(*(a1 + 584) + 4);
      printf("Verbose : ");
      printf("MAP:   Using map with %s%llu%s tracks", &str_4_6, *(*a5 + 48), &str_4_6);
      putchar(10);
      pthread_rwlock_unlock((a1 + 936));
      v15 = 0;
      v19 = *a5;
      v20 = *(*a5 + 336);
      v21 = *(*a5 + 352);
      v22 = *(*a5 + 384);
      *(a1 + 688) = *(*a5 + 368);
      *(a1 + 704) = v22;
      *(a1 + 656) = v20;
      *(a1 + 672) = v21;
      v24 = v19[19];
      v23 = v19[20];
      *(a1 + 608) = v19[18];
      *(a1 + 624) = v24;
      *(a1 + 640) = v23;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    printf("Verbose : ");
    printf("MAP: Not validate, no map");
    v15 = 2;
    putchar(10);
    pthread_rwlock_unlock((a1 + 936));
    if (a5)
    {
LABEL_7:
      *a5 = 0;
      pthread_rwlock_wrlock((a1 + 736));
      *(a1 + 4) = 1;
      v16 = *(a4 + 2);
      *(a1 + 8) = *a4;
      *(a1 + 24) = v16;
      *(a1 + 32) = a2;
      *(a1 + 40) = 0;
      pthread_rwlock_unlock((a1 + 736));
    }
  }

  return v15;
}

BOOL vl_pose_fuse(uint64_t *a1, double *a2, float32x2_t *a3, const void *a4, const void *a5, uint64_t a6, float32x2_t *a7, float *a8, float a9, double a10, float32x4_t *a11, _DWORD *a12, uint64_t a13, uint64_t a14)
{
  v183[2] = *MEMORY[0x277D85DE8];
  __src[0] = 0uLL;
  gettimeofday(__src, 0);
  v163 = __src[0];
  bzero(&__src[6], 0x268uLL);
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  *&__src[28].tv_sec = a10;
  *&__src[27].tv_sec = a9;
  v23 = vcvtq_f64_f32(a3[1]);
  __src[0] = vcvtq_f64_f32(*a3);
  __src[1] = v23;
  v24 = vcvtq_f64_f32(a3[3]);
  __src[2] = vcvtq_f64_f32(a3[2]);
  __src[3] = v24;
  v25 = vcvtq_f64_f32(a3[5]);
  __src[4] = vcvtq_f64_f32(a3[4]);
  __src[5] = v25;
  v165 = a2;
  g_coords_conv(&__src[0].tv_sec, a2, &__src[0].tv_sec);
  v26 = vcvtq_f64_f32(a7[1]);
  __src[6] = vcvtq_f64_f32(*a7);
  __src[7] = v26;
  v27 = vcvtq_f64_f32(a7[3]);
  __src[8] = vcvtq_f64_f32(a7[2]);
  __src[9] = v27;
  v28 = vcvtq_f64_f32(a7[5]);
  __src[10] = vcvtq_f64_f32(a7[4]);
  __src[11] = v28;
  if (a6 >= 1)
  {
    tv_sec = __src[30].tv_sec;
    if (__src[30].tv_sec + a6 > __src[31].tv_sec)
    {
      v30 = 32;
      if (__src[31].tv_sec)
      {
        v30 = 2 * __src[31].tv_sec;
      }

      if (v30 <= __src[30].tv_sec + a6)
      {
        v31 = __src[30].tv_sec + a6;
      }

      else
      {
        v31 = v30;
      }

      if (v31)
      {
        *&__src[30].tv_usec = malloc_type_realloc(*&__src[30].tv_usec, 8 * v31, 0x100004000313F17uLL);
        tv_sec = __src[30].tv_sec;
      }

      __src[31].tv_sec = v31;
    }

    memcpy((*&__src[30].tv_usec + 8 * tv_sec), a4, 8 * a6);
    __src[30].tv_sec += a6;
    v32 = *&__src[28].tv_usec;
    if (*&__src[28].tv_usec + a6 > *&__src[29].tv_usec)
    {
      v33 = 21;
      if (*&__src[29].tv_usec)
      {
        v33 = 2 * *&__src[29].tv_usec;
      }

      if (v33 <= *&__src[28].tv_usec + a6)
      {
        v34 = *&__src[28].tv_usec + a6;
      }

      else
      {
        v34 = v33;
      }

      if (v34)
      {
        __src[29].tv_sec = malloc_type_realloc(__src[29].tv_sec, 12 * v34, 0x10000403E1C8BA9uLL);
        v32 = *&__src[28].tv_usec;
      }

      *&__src[29].tv_usec = v34;
    }

    memcpy((__src[29].tv_sec + 12 * v32), a5, 12 * a6);
    *&__src[28].tv_usec += a6;
  }

  v177.tv_sec = 0x3D4CCCCD00000010;
  v177.tv_usec = 0;
  v35 = malloc_type_malloc(4 * a6, 0x100004052888210uLL);
  if (a6 >= 1)
  {
    if (a6 < 8)
    {
      v36 = 0;
      do
      {
LABEL_27:
        v35->i32[v36] = v36;
        ++v36;
      }

      while (a6 != v36);
      goto LABEL_28;
    }

    v36 = a6 & 0x7FFFFFF8;
    v37 = xmmword_271103920;
    v38 = v35 + 1;
    v39.i64[0] = 0x400000004;
    v39.i64[1] = 0x400000004;
    v40.i64[0] = 0x800000008;
    v40.i64[1] = 0x800000008;
    v41 = v36;
    do
    {
      v38[-1] = v37;
      *v38 = vaddq_s32(v37, v39);
      v37 = vaddq_s32(v37, v40);
      v38 += 2;
      v41 -= 8;
    }

    while (v41);
    if (v36 != a6)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  *&__src[31].tv_usec = rkd_create_ex(a4, v35, 2, a6, 1, &v177);
  g_coords_diff(a2, &__src[0].tv_sec, &v167);
  v42 = *&__src[28].tv_usec;
  if (*&__src[28].tv_usec < 1)
  {
    goto LABEL_36;
  }

  v43 = __src[29].tv_sec;
  v44 = v167;
  v45 = v168;
  v46 = v169;
  v47 = v170;
  v48 = v171;
  v49 = v172;
  if (*&__src[28].tv_usec == 1)
  {
    v50 = 0;
LABEL_34:
    v65 = v42 - v50;
    v66 = (v43 + 12 * v50 + 8);
    do
    {
      v67 = *(v66 - 2);
      v68 = *(v66 - 1);
      v69 = *v66;
      v70 = v48.f64[1] + v44.f64[1] * v68 + v44.f64[0] * v67 + v45.f64[0] * v69;
      v71 = v49.f64[0] + v46.f64[0] * v68 + v45.f64[1] * v67 + v46.f64[1] * v69;
      v72 = v49.f64[1] + v47.f64[1] * v68 + v47.f64[0] * v67 + v48.f64[0] * v69;
      *&v68 = v70;
      *&v70 = v71;
      *(v66 - 2) = *&v68;
      *(v66 - 1) = *&v70;
      *&v72 = v72;
      *v66 = *&v72;
      v66 += 3;
      --v65;
    }

    while (v65);
    goto LABEL_36;
  }

  v50 = *&__src[28].tv_usec & 0x7FFFFFFFFFFFFFFELL;
  v51 = vdupq_lane_s64(*&v167.f64[0], 0);
  v52 = vdupq_lane_s64(*&v168.f64[0], 0);
  v53 = vdupq_lane_s64(*&v171.f64[1], 0);
  v54 = vdupq_lane_s64(*&v168.f64[1], 0);
  v55 = vdupq_lane_s64(*&v169.f64[1], 0);
  v56 = vdupq_lane_s64(*&v172.f64[0], 0);
  v57 = vdupq_lane_s64(*&v170.f64[0], 0);
  v58 = vdupq_lane_s64(*&v171.f64[0], 0);
  v59 = *&__src[28].tv_usec & 0x7FFFFFFFFFFFFFFELL;
  v60 = __src[29].tv_sec;
  v61 = vdupq_lane_s64(*&v172.f64[1], 0);
  do
  {
    v184 = vld3_f32(v60);
    v62 = vcvtq_f64_f32(v184.val[0]);
    v63 = vcvtq_f64_f32(v184.val[1]);
    *v184.val[0].f32 = vcvtq_f64_f32(v184.val[2]);
    v64 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v63, v44.f64[1]), v62, v51), *v184.val[0].f32, v52);
    *v184.val[2].f32 = vaddq_f64(v56, vmlaq_f64(vmlaq_f64(vmulq_n_f64(v63, v46.f64[0]), v62, v54), *v184.val[0].f32, v55));
    *v184.val[0].f32 = vaddq_f64(v61, vmlaq_f64(vmlaq_f64(vmulq_n_f64(v63, v47.f64[1]), v62, v57), *v184.val[0].f32, v58));
    *&v62.f64[0] = vcvt_f32_f64(vaddq_f64(v53, v64));
    *&v63.f64[0] = vcvt_f32_f64(*v184.val[2].f32);
    *&v64.f64[0] = vcvt_f32_f64(*v184.val[0].f32);
    vst3_f32(v60, *v62.f64);
    v60 += 6;
    v59 -= 2;
  }

  while (v59);
  if (v42 != v50)
  {
    goto LABEL_34;
  }

LABEL_36:
  if (a14)
  {
    v73 = *(a14 + 144);
    *&__src[41].tv_usec = *(a14 + 128);
    *&__src[42].tv_usec = v73;
    *&__src[43].tv_usec = *(a14 + 160);
    v74 = *(a14 + 80);
    *&__src[37].tv_usec = *(a14 + 64);
    *&__src[38].tv_usec = v74;
    v75 = *(a14 + 112);
    *&__src[39].tv_usec = *(a14 + 96);
    *&__src[40].tv_usec = v75;
    v76 = *(a14 + 16);
    *&__src[33].tv_usec = *a14;
    *&__src[34].tv_usec = v76;
    v77 = *(a14 + 48);
    *&__src[35].tv_usec = *(a14 + 32);
    *&__src[36].tv_usec = v77;
  }

  v78 = *(a1 + 2);
  if (v78 < 1)
  {
    v90 = 0;
  }

  else
  {
    v79 = 0;
    for (i = 0; i < v78; ++i)
    {
      v82 = *a1;
      v83 = *a1 + v79;
      if (a10 - *(v83 + 448) > *(a1 + 2))
      {
        free(*(v83 + 488));
        free(*(v83 + 464));
        v84 = *(v83 + 504);
        if (v84)
        {
          free(*v84);
          free(v84[1]);
          free(v84[2]);
          free(v84);
        }

        v85 = *(v82 + v79 + 512);
        if (v85)
        {
          v86 = *(v85 - 8 * *(v82 + v79 + 528) - 8);
          v87 = atomic_fetch_add((v86 + 24), 0xFFFFFFFF) - 1;
          if (v87 < 0)
          {
            goto LABEL_148;
          }

          if (v87)
          {
            atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_or(&global_stats[2], 0);
            atomic_fetch_or(global_stats, 0);
            atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_or(&_pmem_total_blocks, 0);
            atomic_fetch_or(&pmem_bytes_allocated, 0);
          }

          else
          {
            v81 = -*(v86 + 8);
            atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_add(&global_stats[2], 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_add(global_stats, v81);
            atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_add(&_pmem_total_blocks, 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_add(&pmem_bytes_allocated, v81);
            (*(v86 + 40))(v86);
            free(v86);
          }
        }

        bzero(v83, 0x2C8uLL);
        v78 = *(a1 + 2);
      }

      v79 += 712;
    }

    if (v78 < 1)
    {
      v90 = 0;
    }

    else
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
      do
      {
        v91 = *a1;
        if (*a1 && a10 - *(v91 + v88 + 448) <= *(a1 + 2))
        {
          memcpy((v91 + 712 * v90++), (v91 + v88), 0x2C8uLL);
          v78 = *(a1 + 2);
        }

        ++v89;
        v88 += 712;
      }

      while (v89 < v78);
    }
  }

  *(a1 + 2) = v90;
  v92 = 1.0 - *&__src[27].tv_sec;
  v93 = malloc_type_calloc(v90, 1uLL, 0x9D6E6962uLL);
  v166 = malloc_type_calloc(*(a1 + 2) + 1, 8uLL, 0x2004093837F09uLL);
  *v166 = __src;
  if (*(a1 + 2) <= 0)
  {
    v114 = 0;
    *&__src[27].tv_usec = 1.0 - v92;
    v115 = 1;
    goto LABEL_108;
  }

  v94 = 0;
  v95 = 0;
  v164 = 1;
  do
  {
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v177 = 0;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    memset(v174, 0, sizeof(v174));
    g_coords_diff((*a1 + v94), &__src[0].tv_sec, &v177);
    g_coords_diff((*a1 + v94 + 96), &__src[6].tv_sec, v174);
    v97 = *a1 + v94;
    v98 = *(a1 + 6);
    v99 = *(a1 + 4);
    v100 = pose_est_inlier_sim(v97, __src, v99);
    v101 = pose_est_inlier_sim(__src, v97, v99);
    v102 = v101 + v100 > 1 && *(*(v97 + 504) + 28) - (v101 + v100) + *(*&__src[31].tv_usec + 28) < v98;
    v103 = v102;
    v93[v95] = v103;
    if (!v102)
    {
      v104 = *(a1 + 5);
      v105 = *(a1 + 7);
      if (g_coords_angle_diff(&v177.tv_sec, v174) < v105 && (*&v182 - *&v176) * (*&v182 - *&v176) + (*(&v181 + 1) - *(&v175 + 1)) * (*(&v181 + 1) - *(&v175 + 1)) + (*(&v182 + 1) - *(&v176 + 1)) * (*(&v182 + 1) - *(&v176 + 1)) < v104 * v104)
      {
        v106 = *a1 + v94;
        v183[0] = __src;
        v183[1] = v106;
        refine_poses(v183, 2, 0, 0, &v177);
        v107 = *(a1 + 6);
        v108 = *(a1 + 8);
        if (g_coords_angle_diff(&v177.tv_sec, v174) < v108 && (*&v182 - *&v176) * (*&v182 - *&v176) + (*(&v181 + 1) - *(&v175 + 1)) * (*(&v181 + 1) - *(&v175 + 1)) + (*(&v182 + 1) - *(&v176 + 1)) * (*(&v182 + 1) - *(&v176 + 1)) < v107 * v107)
        {
          v92 = v92 * (1.0 - *(*a1 + v94 + 432));
          v93[v95] = 2;
          v166[v164++] = *a1 + v94;
        }
      }
    }

    ++v95;
    v96 = *(a1 + 2);
    v94 += 712;
  }

  while (v95 < v96);
  *&__src[27].tv_usec = 1.0 - v92;
  if (v96 < 1)
  {
    goto LABEL_107;
  }

  v109 = 0;
  v110 = 0;
LABEL_75:
  v111 = 712 * v109 + 440;
  do
  {
    if ((v93[v109] & 1) != 0 && *(*a1 + v111) > 1.0 - v92)
    {
      v110 = 1;
      if (v96 - 1 == v109++)
      {
LABEL_83:
        refine_poses(v166, v164, &__src[12].tv_sec, &__src[18], 0);
        v113 = 1;
        goto LABEL_125;
      }

      goto LABEL_75;
    }

    ++v109;
    v111 += 712;
  }

  while (v96 != v109);
  if (v110)
  {
    goto LABEL_83;
  }

  v116 = 0;
  v117 = 0;
  do
  {
    if (v93[v117])
    {
      v119 = *a1;
      v120 = *a1 + v116;
      free(*(v120 + 488));
      free(*(v120 + 464));
      v121 = *(v120 + 504);
      if (v121)
      {
        free(*v121);
        free(v121[1]);
        free(v121[2]);
        free(v121);
      }

      v122 = *(v120 + 512);
      if (v122)
      {
        v123 = *(v122 - 8 * *(v119 + v116 + 528) - 8);
        v124 = atomic_fetch_add((v123 + 24), 0xFFFFFFFF) - 1;
        if (v124 < 0)
        {
          goto LABEL_148;
        }

        if (v124)
        {
          atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
          atomic_fetch_or(&global_stats[2], 0);
          atomic_fetch_or(global_stats, 0);
          atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
          atomic_fetch_or(&_pmem_total_blocks, 0);
          atomic_fetch_or(&pmem_bytes_allocated, 0);
        }

        else
        {
          v118 = -*(v123 + 8);
          atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
          atomic_fetch_add(&global_stats[2], 0xFFFFFFFFFFFFFFFFLL);
          atomic_fetch_add(global_stats, v118);
          atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
          atomic_fetch_add(&_pmem_total_blocks, 0xFFFFFFFFFFFFFFFFLL);
          atomic_fetch_add(&pmem_bytes_allocated, v118);
          (*(v123 + 40))(v123);
          free(v123);
        }
      }

      bzero(v120, 0x2C8uLL);
      LODWORD(v96) = *(a1 + 2);
    }

    ++v117;
    v116 += 712;
  }

  while (v117 < v96);
  if (v96 < 1)
  {
    goto LABEL_107;
  }

  v125 = 0;
  v126 = 0;
  v127 = 0;
  do
  {
    if ((v93[v126] & 1) == 0 && *a1)
    {
      memcpy((*a1 + 712 * v127++), (*a1 + v125), 0x2C8uLL);
      LODWORD(v96) = *(a1 + 2);
    }

    ++v126;
    v125 += 712;
  }

  while (v126 < v96);
  if (v96 < 1)
  {
LABEL_107:
    v114 = 0;
    v115 = v164;
    goto LABEL_108;
  }

  v128 = 0;
  v114 = 0;
  v115 = v164;
  do
  {
    if ((v93[v128] & 1) == 0)
    {
      v93[v114++] = v93[v128];
      LODWORD(v96) = *(a1 + 2);
    }

    ++v128;
  }

  while (v128 < v96);
LABEL_108:
  *(a1 + 2) = v114;
  refine_poses(v166, v115, &__src[12].tv_sec, &__src[18], 0);
  v129 = *(a1 + 2);
  if (v129 == *(a1 + 3))
  {
    if (*&__src[27].tv_sec < 0.1)
    {
      v113 = 1;
      goto LABEL_125;
    }

    v132 = *a1;
    free(*(*a1 + 488));
    free(*(v132 + 464));
    v133 = *(v132 + 504);
    if (v133)
    {
      free(*v133);
      free(v133[1]);
      free(v133[2]);
      free(v133);
    }

    v134 = *(v132 + 512);
    if (v134)
    {
      v135 = *(v134 - 8 * *(v132 + 528) - 8);
      v136 = atomic_fetch_add((v135 + 24), 0xFFFFFFFF) - 1;
      if (v136 < 0)
      {
        goto LABEL_148;
      }

      if (v136)
      {
        atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_or(&global_stats[2], 0);
        atomic_fetch_or(global_stats, 0);
        atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_or(&_pmem_total_blocks, 0);
        atomic_fetch_or(&pmem_bytes_allocated, 0);
      }

      else
      {
        v137 = -*(v135 + 8);
        atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(&global_stats[2], 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(global_stats, v137);
        atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(&_pmem_total_blocks, 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(&pmem_bytes_allocated, v137);
        (*(v135 + 40))(v135);
        free(v135);
      }
    }

    bzero(v132, 0x2C8uLL);
    v138 = *(a1 + 2);
    v139 = *a1;
    if (v138 >= 1)
    {
      if (v138 == 1)
      {
        v138 = 1;
      }

      else
      {
        v159 = 0;
        v160 = 1;
        v161 = 712;
        do
        {
          if (v139)
          {
            memcpy((v139 + 712 * v159++), (v139 + v161), 0x2C8uLL);
            v138 = *(a1 + 2);
          }

          ++v160;
          v139 = *a1;
          v161 += 712;
        }

        while (v160 < v138);
      }
    }

    v131 = (v139 + 712 * v138 - 712);
  }

  else
  {
    v130 = *a1;
    *(a1 + 2) = v129 + 1;
    v131 = (v130 + 712 * v129);
  }

  memcpy(v131, __src, 0x2C8uLL);
  v113 = 0;
LABEL_125:
  free(v93);
  free(v166);
  *a8 = 0.0;
  v140 = *(a1 + 2);
  v141 = *a1;
  if (v140 < 1)
  {
    v143 = 0;
  }

  else
  {
    v142 = 0;
    v143 = 0;
    v144 = (v141 + 440);
    v145 = 0.0;
    do
    {
      if (*v144 > v145)
      {
        v145 = *v144;
        *a8 = v145;
        v143 = v142;
      }

      ++v142;
      v144 += 89;
    }

    while (v140 != v142);
  }

  v146 = v143;
  g_coords_diff(&__src[6].tv_sec, (v141 + 712 * v143 + 96), &v167);
  g_coords_conv(v167.f64, (*a1 + 712 * v143 + 192), v167.f64);
  g_coords_diff(v167.f64, v165, &v167);
  v147 = vcvt_hight_f32_f64(vcvt_f32_f64(v169), v170);
  *a11 = vcvt_hight_f32_f64(vcvt_f32_f64(v167), v168);
  a11[1] = v147;
  a11[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v171), v172);
  if (a12)
  {
    v148 = (*a1 + 712 * v143);
    *a12 = v148[72];
    a12[1] = v148[73];
    a12[2] = v148[74];
    a12[3] = v148[75];
    a12[4] = v148[76];
    a12[5] = v148[77];
    a12[6] = v148[78];
    a12[7] = v148[79];
    a12[8] = v148[80];
    a12[9] = v148[81];
    a12[10] = v148[82];
    a12[11] = v148[83];
    a12[12] = v148[84];
    a12[13] = v148[85];
    a12[14] = v148[86];
    a12[15] = v148[87];
    a12[16] = v148[88];
    a12[17] = v148[89];
    a12[18] = v148[90];
    a12[19] = v148[91];
    a12[20] = v148[92];
    a12[21] = v148[93];
    a12[22] = v148[94];
    a12[23] = v148[95];
    a12[24] = v148[96];
    a12[25] = v148[97];
    a12[26] = v148[98];
    a12[27] = v148[99];
    a12[28] = v148[100];
    a12[29] = v148[101];
    a12[30] = v148[102];
    a12[31] = v148[103];
    a12[32] = v148[104];
    a12[33] = v148[105];
    a12[34] = v148[106];
    a12[35] = v148[107];
  }

  v177.tv_sec = 0;
  *&v177.tv_usec = 0;
  gettimeofday(&v177, 0);
  v149 = v177.tv_sec;
  tv_usec = v177.tv_usec;
  printf("Verbose (toc) : ");
  printf("%s: fuse", "vl_pose_fuse");
  printf(": %f ms", ((1000000 * (v149 - v163.tv_sec) - *&v163.tv_usec + tv_usec) / 1000.0));
  putchar(10);
  if (v113)
  {
    free(*&__src[30].tv_usec);
    free(__src[29].tv_sec);
    v151 = *&__src[31].tv_usec;
    if (*&__src[31].tv_usec)
    {
      free(**&__src[31].tv_usec);
      free(v151[1]);
      free(v151[2]);
      free(v151);
    }

    if (!__src[32].tv_sec)
    {
      return 1;
    }

    v152 = *(__src[32].tv_sec - 8 * __src[33].tv_sec - 8);
    v153 = atomic_fetch_add((v152 + 24), 0xFFFFFFFF) - 1;
    if (v153 >= 0)
    {
      if (v153)
      {
        atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_or(&global_stats[2], 0);
        atomic_fetch_or(global_stats, 0);
        atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_or(&_pmem_total_blocks, 0);
        atomic_fetch_or(&pmem_bytes_allocated, 0);
      }

      else
      {
        v158 = -*(v152 + 8);
        atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(&global_stats[2], 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(global_stats, v158);
        atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(&_pmem_total_blocks, 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(&pmem_bytes_allocated, v158);
        (*(v152 + 40))(v152);
        free(v152);
      }

      return 1;
    }

LABEL_148:
    __assert_rtn("pmem_free", "pmem.c", 302, "count >= 0 && Negative count! Something is broken, double free? Memory corruption?");
  }

  v154 = *(a1 + 2);
  v155 = (*a1 + 712 * v154 - 272);
  v156 = *v155;
  if (*v155 >= *(a1 + 9))
  {
    v156 = *(a1 + 9);
  }

  *v155 = v156;
  return v146 != v154 - 1;
}

void vl_pose_fuse_free(int *a1)
{
  if (a1)
  {
    if (a1[2] >= 1)
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v5 = *a1;
        v6 = *a1 + v2;
        free(*(v6 + 488));
        free(*(v6 + 464));
        v7 = *(v6 + 504);
        if (v7)
        {
          free(*v7);
          free(v7[1]);
          free(v7[2]);
          free(v7);
        }

        v8 = *(v6 + 512);
        if (v8)
        {
          v9 = *(v8 - 8 * *(v5 + v2 + 528) - 8);
          v10 = atomic_fetch_add((v9 + 24), 0xFFFFFFFF) - 1;
          if (v10 < 0)
          {
            __assert_rtn("pmem_free", "pmem.c", 302, "count >= 0 && Negative count! Something is broken, double free? Memory corruption?");
          }

          if (v10)
          {
            atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_or(&global_stats[2], 0);
            atomic_fetch_or(global_stats, 0);
            atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_or(&_pmem_total_blocks, 0);
            atomic_fetch_or(&pmem_bytes_allocated, 0);
          }

          else
          {
            v4 = -*(v9 + 8);
            atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_add(&global_stats[2], 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_add(global_stats, v4);
            atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_add(&_pmem_total_blocks, 0xFFFFFFFFFFFFFFFFLL);
            atomic_fetch_add(&pmem_bytes_allocated, v4);
            (*(v9 + 40))(v9);
            free(v9);
          }
        }

        bzero(v6, 0x2C8uLL);
        ++v3;
        v2 += 712;
      }

      while (v3 < a1[2]);
    }

    free(*a1);

    free(a1);
  }
}

void refine_poses(uint64_t *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v10 = 3 * a2;
  v11 = 96 * a2;
  v12 = malloc_type_malloc(v11, 0x1000040565EDBD2uLL);
  v13 = malloc_type_malloc(v11, 0x1000040565EDBD2uLL);
  v10 *= 8;
  v14 = malloc_type_malloc(v10, 0x1020040FBFA920DuLL);
  v15 = malloc_type_malloc(v10, 0x1020040FBFA920DuLL);
  v16 = v15;
  if (a2 >= 1)
  {
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = a2;
    do
    {
      v22 = *a1;
      v23 = *(*a1 + 16);
      *v17 = **a1;
      *(v17 + 1) = v23;
      v24 = v22[2];
      v25 = v22[3];
      v26 = v22[5];
      *(v17 + 4) = v22[4];
      *(v17 + 5) = v26;
      *(v17 + 2) = v24;
      *(v17 + 3) = v25;
      v27 = *a1;
      v28 = *(*a1 + 112);
      *v18 = *(*a1 + 96);
      v18[1] = v28;
      v29 = v27[8];
      v30 = v27[9];
      v31 = v27[11];
      v18[4] = v27[10];
      v18[5] = v31;
      v18[2] = v29;
      v18[3] = v30;
      v32 = *(*a1 + 480);
      v19[2] = *(*a1 + 496);
      *v19 = v32;
      v19 += 3;
      v33 = *a1++;
      v34 = *(v33 + 456);
      v20[2] = *(v33 + 472);
      *v20 = v34;
      v20 += 3;
      v18 += 6;
      v17 += 12;
      --v21;
    }

    while (v21);
  }

  vl_pose_refine_multi(v12, v13, v14, v15, a2, 5, v13, a4, 0.1, 0.0026667, 0.05, 0.00049751);
  if (a3)
  {
    v35 = *(v13 + 1);
    *a3 = *v13;
    a3[1] = v35;
    v36 = *(v13 + 2);
    v37 = *(v13 + 3);
    v38 = *(v13 + 5);
    a3[4] = *(v13 + 4);
    a3[5] = v38;
    a3[2] = v36;
    a3[3] = v37;
  }

  if (a5)
  {
    g_coords_diff(v13 + 12, v13, a5);
  }

  free(v12);
  free(v13);
  free(v14);

  free(v16);
}

uint64_t pose_est_inlier_sim(uint64_t a1, uint64_t a2, float a3)
{
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  g_coords_diff(a1, a2, &v24);
  v6 = *(*(a1 + 504) + 28);
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8.f64[0] = *(&v25 + 1);
  *&v8.f64[1] = v27;
  v9 = *(&v28 + 1);
  v22 = vcvt_f32_f64(v29);
  v10.i32[1] = DWORD1(v24);
  v11 = *&v24;
  v12 = vcvt_f32_f64(v8);
  v13 = *(&v24 + 1);
  *&v8.f64[0] = v26;
  v8.f64[1] = *(&v27 + 1);
  v14 = vcvt_f32_f64(v8);
  v15 = *&v25;
  v8.f64[0] = *(&v26 + 1);
  *&v8.f64[1] = v28;
  v16 = vcvt_f32_f64(v8);
  v17 = (*(a1 + 464) + 8);
  do
  {
    v18 = *(v17 - 2);
    v19 = *(v17 - 1);
    *v10.i32 = (((v19 * v13) + (v11 * v18)) + (v15 * *v17)) + v9;
    if (*v10.i32 > 0.0)
    {
      v23 = vdiv_f32(vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v14, v19), v12, v18), v16, *v17), v22), vdup_lane_s32(v10, 0));
      rkd_nn_app(*(a2 + 504), &v23, 0, 0, 0x7FFFFFFF, a3);
      if (v20 < a3)
      {
        v7 = (v7 + 1);
      }
    }

    v17 += 3;
    --v6;
  }

  while (v6);
  return v7;
}

_DWORD *vl_match_sss_build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = a4;
  v6 = a3;
  v9 = *a5;
  v16 = xmmword_271105740;
  v17 = xmmword_271105750;
  v18 = 0;
  v19 = 0x3DCCCCCD3F800000;
  v20 = xmmword_271105760;
  if (v9 <= 103)
  {
    if (v9 > 100)
    {
      if (v9 == 101)
      {
        v18 = 1;
        DWORD2(v17) = 2;
        HIDWORD(v19) = 1065353216;
        DWORD2(v20) = 4;
        v10 = 0xA00000040;
      }

      else
      {
        v18 = 1;
        DWORD2(v17) = 2;
        HIDWORD(v19) = 1065353216;
        if (v9 == 102)
        {
          DWORD2(v20) = 10;
          v10 = 0x1000000040;
        }

        else
        {
          DWORD2(v20) = 2;
          v10 = 0x600000040;
        }
      }

      goto LABEL_23;
    }

    if (!v9)
    {
      goto LABEL_24;
    }

    if (v9 == 100)
    {
      HIDWORD(v19) = 1065353216;
      v18 = 1;
      DWORD2(v17) = 2;
      v10 = 0x800000040;
      goto LABEL_23;
    }

LABEL_32:
    __assert_rtn("sss_par_version", "sss.c", 255, "0 && Not implemented");
  }

  if (v9 <= 200)
  {
    if (v9 != 104)
    {
      if (v9 == 200)
      {
        DWORD2(v17) = 2;
        DWORD1(v20) = 6;
        v10 = 0x200000050;
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    v18 = 1;
    DWORD2(v17) = 2;
    HIDWORD(v19) = 1065353216;
    DWORD2(v20) = 2;
LABEL_20:
    v10 = 0x400000050;
    goto LABEL_23;
  }

  if (v9 == 201)
  {
    DWORD2(v17) = 2;
    *(&v20 + 4) = 6;
    v10 = 0x300000050;
    goto LABEL_23;
  }

  if (v9 == 202)
  {
    DWORD2(v17) = 2;
    *(&v20 + 4) = 0x100000006;
    goto LABEL_20;
  }

  if (v9 != 706)
  {
    goto LABEL_32;
  }

  v18 = 1;
  DWORD2(v17) = 2;
  HIDWORD(v19) = 1065353216;
  DWORD2(v20) = 2;
  v10 = 0x800000060;
LABEL_23:
  *&v17 = v10;
LABEL_24:
  if (*(a1 + 1564))
  {
    *(a1 + 1472) -= mach_absolute_time();
  }

  else
  {
    clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (a1 + 1384));
    clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (a1 + 1368));
    clock_gettime(_CLOCK_MONOTONIC, (a1 + 1352));
  }

  v11 = sss_create_ids(a2, 0, v5, v6, &v16);
  if (*(a1 + 1564))
  {
    *(a1 + 1472) += mach_absolute_time();
    if (*(a1 + 1564))
    {
LABEL_29:
      printf("Verbose : ");
      printf("Total time for %40s : %7.3f ms", (a1 + 1500), *(a1 + 1472) * 0.000001);
      putchar(10);
      return v11;
    }
  }

  else
  {
    clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (a1 + 1416));
    clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (a1 + 1432));
    clock_gettime(_CLOCK_MONOTONIC, (a1 + 1400));
    v13 = *(a1 + 1408) - *(a1 + 1360) + 1000000000 * (*(a1 + 1400) - *(a1 + 1352));
    *(a1 + 1448) = v13;
    *(a1 + 1472) += v13;
    v14 = *(a1 + 1424) - *(a1 + 1376) + 1000000000 * (*(a1 + 1416) - *(a1 + 1368));
    *(a1 + 1456) = v14;
    *(a1 + 1480) += v14;
    v15 = *(a1 + 1440) - *(a1 + 1392) + 1000000000 * (*(a1 + 1432) - *(a1 + 1384));
    *(a1 + 1464) = v15;
    *(a1 + 1488) += v15;
    ++*(a1 + 1496);
    if (*(a1 + 1564))
    {
      goto LABEL_29;
    }
  }

  log_col_app("%s%s%s:%s%7.1fms%s", &str_4_1, (a1 + 1500), &str_4_1, &str_4_1, *(a1 + 1448) * 0.000001, &str_4_1);
  return v11;
}

void vl_match_sss(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, int *a6, void *a7)
{
  v12 = *a2 / a5;
  v13 = malloc_type_calloc(2 * v12, 4uLL, 0x100004052888210uLL);
  v14 = v13;
  v15 = *a6;
  v39 = xmmword_271105740;
  v40 = xmmword_271105750;
  v41 = 0;
  v42 = 0x3DCCCCCD3F800000;
  v43 = xmmword_271105760;
  if (v15 <= 103)
  {
    if (v15 > 100)
    {
      if (v15 == 101)
      {
        v41 = 1;
        DWORD2(v40) = 2;
        HIDWORD(v42) = 1065353216;
        DWORD2(v43) = 4;
        v16 = 0xA00000040;
      }

      else
      {
        v41 = 1;
        DWORD2(v40) = 2;
        HIDWORD(v42) = 1065353216;
        if (v15 == 102)
        {
          DWORD2(v43) = 10;
          v16 = 0x1000000040;
        }

        else
        {
          DWORD2(v43) = 2;
          v16 = 0x600000040;
        }
      }

      goto LABEL_23;
    }

    if (!v15)
    {
      goto LABEL_24;
    }

    if (v15 == 100)
    {
      HIDWORD(v42) = 1065353216;
      v41 = 1;
      DWORD2(v40) = 2;
      v16 = 0x800000040;
      goto LABEL_23;
    }

LABEL_40:
    __assert_rtn("sss_par_version", "sss.c", 255, "0 && Not implemented");
  }

  if (v15 <= 200)
  {
    if (v15 != 104)
    {
      if (v15 == 200)
      {
        DWORD2(v40) = 2;
        DWORD1(v43) = 6;
        v16 = 0x200000050;
        goto LABEL_23;
      }

      goto LABEL_40;
    }

    v41 = 1;
    DWORD2(v40) = 2;
    HIDWORD(v42) = 1065353216;
    DWORD2(v43) = 2;
LABEL_20:
    v16 = 0x400000050;
    goto LABEL_23;
  }

  if (v15 == 201)
  {
    DWORD2(v40) = 2;
    *(&v43 + 4) = 6;
    v16 = 0x300000050;
    goto LABEL_23;
  }

  if (v15 == 202)
  {
    DWORD2(v40) = 2;
    *(&v43 + 4) = 0x100000006;
    goto LABEL_20;
  }

  if (v15 != 706)
  {
    goto LABEL_40;
  }

  v41 = 1;
  DWORD2(v40) = 2;
  HIDWORD(v42) = 1065353216;
  DWORD2(v43) = 2;
  v16 = 0x800000060;
LABEL_23:
  *&v40 = v16;
LABEL_24:
  if (v12 >= 1)
  {
    v17 = a2[1];
    v18 = (255 * a5);
    v19 = a7[1];
    v20 = v12 & 0x7FFFFFFF;
    if (v13)
    {
      v21 = 0;
      v22 = v13;
      do
      {
        sss_knn(a4, &v39, v17 + v21 * *(a4 + 260), v19, v22, 2, v18);
        ++v21;
        v19 = (v19 + 8);
        v22 += 8;
      }

      while (v20 != v21);
    }

    else
    {
      v23 = 0;
      do
      {
        sss_knn(a4, &v39, v17 + v23 * *(a4 + 260), v19, 0, 2, v18);
        ++v23;
        v19 = (v19 + 8);
      }

      while (v20 != v23);
    }
  }

  if (a7[3] >= 1)
  {
    v24 = a7[4];
    v25 = a7[3] & 0x7FFFFFFFLL;
    if (v25 < 8)
    {
      v26 = 0;
LABEL_37:
      v35 = v14 + v26;
      v36 = v25 - v26;
      v37 = v24 + v26;
      do
      {
        v38 = *v35++;
        *v37++ = vcvt_f32_s32(v38);
        --v36;
      }

      while (v36);
      goto LABEL_39;
    }

    v27 = a7[3] & 7;
    v26 = v25 - v27;
    v28 = v24 + 2;
    v29 = v14 + 2;
    v30 = v25 - v27;
    do
    {
      v32 = v29[-2];
      v31 = v29[-1];
      v34 = *v29;
      v33 = v29[1];
      v29 += 4;
      v28[-2] = vcvtq_f32_s32(v32);
      v28[-1] = vcvtq_f32_s32(v31);
      *v28 = vcvtq_f32_s32(v34);
      v28[1] = vcvtq_f32_s32(v33);
      v28 += 4;
      v30 -= 8;
    }

    while (v30);
    if (v27)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
  free(v14);
}

void g_norm_rot3(double *a1)
{
  v90 = *MEMORY[0x277D85DE8];
  v3 = a1[7];
  v2 = a1[8];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[5];
  v6 = a1[6];
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[4];
  v11 = *a1 * v8 + 0.0 + v4 * v10 + v6 * v3;
  v73[0] = v9 * v9 + 0.0 + v4 * v4 + v6 * v6;
  v73[1] = v11;
  v74 = v9 * v5 + 0.0 + v4 * v7 + v6 * v2;
  v75 = v11;
  v76 = v8 * v8 + 0.0 + v10 * v10 + v3 * v3;
  v77 = v8 * v5 + 0.0 + v10 * v7 + v3 * v2;
  v78 = v74;
  v79 = v77;
  v69 = v2;
  v80 = v5 * v5 + 0.0 + v7 * v7 + v2 * v2;
  eig_sym3x3(v73, &v70, &v81);
  v12 = v83;
  v13 = v86;
  v14 = v89;
  v15 = v71;
  if (v70 >= 1.0e-20)
  {
    v16 = v70;
  }

  else
  {
    v16 = 1.0e-20;
  }

  if (v71 < 1.0e-20)
  {
    v15 = 1.0e-20;
  }

  v17 = v81 * v81;
  v18 = v81 * v84;
  v19 = v81 * v87;
  v20 = v84 * v84;
  v21 = v84 * v87;
  v22 = v87 * v87;
  if (v72 <= 1.0e-20)
  {
    v38 = 1.0 / v16;
    v39 = 1.0 / v15;
    v40 = v17 * v38 + v82 * v82 * (1.0 / v15);
    v41 = v18 * v38 + v82 * v85 * v39;
    v42 = v19 * v38 + v82 * v88 * v39;
    v43 = v20 * v38 + v85 * v85 * v39;
    v44 = v21 * v38 + v85 * v88 * v39;
    v45 = v22 * v38 + v88 * v88 * v39;
    v46 = v9 * v40 + 0.0 + v8 * v41 + v5 * v42;
    v47 = v9 * v41 + 0.0 + v8 * v43 + v5 * v44;
    v48 = v9 * v42 + 0.0 + v8 * v44 + v5 * v45;
    v49 = v4 * v40 + 0.0 + v10 * v41 + v7 * v42;
    v50 = v4 * v41 + 0.0 + v10 * v43 + v7 * v44;
    v51 = v4 * v42 + 0.0 + v10 * v44 + v7 * v45;
    v52 = v6 * v40 + 0.0 + v3 * v41 + v69 * v42;
    v53 = v6 * v41 + 0.0 + v3 * v43 + v69 * v44;
    v54 = v6 * v42 + 0.0 + v3 * v44 + v69 * v45;
    v55 = v83 * v87;
    v56 = v83 * v88;
    v57 = v83 * v89;
    v58 = v87 * v86;
    v59 = v86 * v88;
    v60 = v86 * v89;
    v61 = v87 * v89;
    v62 = v88 * v89;
    v63 = v89 * v89;
    v64 = v83 * v87 + v46;
    v65 = v56 + v47;
    *a1 = v64;
    a1[1] = v56 + v47;
    v66 = v57 + v48;
    v67 = v58 + v49;
    a1[2] = v57 + v48;
    a1[3] = v58 + v49;
    v68 = v59 + v50;
    a1[4] = v59 + v50;
    a1[5] = v60 + v51;
    a1[6] = v61 + v52;
    a1[7] = v62 + v53;
    a1[8] = v63 + v54;
    if (v64 * v68 * (v63 + v54) + 0.0 + v67 * (v62 + v53) * v66 + (v61 + v52) * v65 * (v60 + v51) + -((v61 + v52) * v68) * v66 + -(v67 * v65) * (v63 + v54) + -(v64 * (v62 + v53)) * (v60 + v51) >= 0.0)
    {
      return;
    }

    *a1 = v64 - v55 - v55;
    a1[1] = v65 - v56 - v56;
    a1[2] = v66 - v57 - v57;
    a1[3] = v67 - v58 - v58;
    a1[4] = v68 - v59 - v59;
    a1[5] = v60 + v51 - v60 - v60;
    a1[6] = v61 + v52 - v61 - v61;
    a1[7] = v62 + v53 - v62 - v62;
    v37 = v63 + v54 - v63 - v63;
  }

  else
  {
    v23 = 1.0 / sqrt(v16);
    v24 = v17 * v23;
    v25 = 1.0 / sqrt(v15);
    v26 = v18 * v23 + v82 * v85 * v25;
    v27 = v20 * v23 + v85 * v85 * v25;
    v28 = v21 * v23 + v85 * v88 * v25;
    v29 = v22 * v23 + v88 * v88 * v25;
    if (v9 * v10 * v69 + 0.0 + v4 * v3 * v5 + v6 * v8 * v7 + -(v6 * v10) * v5 + -(v4 * v8) * v69 + -(v9 * v3) * v7 < 0.0)
    {
      v14 = -v89;
      v13 = -v86;
      v12 = -v83;
    }

    v30 = 1.0 / sqrt(v72);
    v31 = v12 * v13 * v30;
    v32 = v13 * v13 * v30;
    v33 = v12 * v12 * v30 + v24 + v82 * v82 * v25;
    v34 = v12 * v14 * v30 + v19 * v23 + v82 * v88 * v25;
    v35 = v13 * v14 * v30 + v28;
    v36 = v14 * v14 * v30 + v29;
    *a1 = v9 * v33 + 0.0 + v8 * (v31 + v26) + v5 * v34;
    a1[1] = v9 * (v31 + v26) + 0.0 + v8 * (v32 + v27) + v5 * v35;
    a1[2] = v9 * v34 + 0.0 + v8 * v35 + v5 * v36;
    a1[3] = v4 * v33 + 0.0 + v10 * (v31 + v26) + v7 * v34;
    a1[4] = v4 * (v31 + v26) + 0.0 + v10 * (v32 + v27) + v7 * v35;
    a1[5] = v4 * v34 + 0.0 + v10 * v35 + v7 * v36;
    a1[6] = v6 * v33 + 0.0 + v3 * (v31 + v26) + v69 * v34;
    a1[7] = v6 * (v31 + v26) + 0.0 + v3 * (v32 + v27) + v69 * v35;
    v37 = v6 * v34 + 0.0 + v3 * v35 + v69 * v36;
  }

  a1[8] = v37;
}

double eig_sym3x3(double *a1, double *a2, double *a3)
{
  v5 = a1[1];
  v6 = fmax(fabs(*a1), 1.0e-10);
  v7 = fabs(v5);
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = a1[2];
  v9 = fabs(v8);
  if (v9 > v6)
  {
    v6 = v9;
  }

  v76 = a1[3];
  v10 = fabs(v76);
  if (v10 > v6)
  {
    v6 = v10;
  }

  v11 = a1[4];
  v12 = a1[5];
  v13 = fabs(v11);
  if (v13 > v6)
  {
    v6 = v13;
  }

  v14 = fabs(v12);
  if (v14 > v6)
  {
    v6 = v14;
  }

  v74 = a1[7];
  v75 = a1[6];
  v15 = fabs(v75);
  if (v15 > v6)
  {
    v6 = v15;
  }

  v16 = fabs(a1[7]);
  if (v16 > v6)
  {
    v6 = v16;
  }

  v17 = a1[8];
  v18 = fabs(v17);
  if (v18 <= v6)
  {
    v18 = v6;
  }

  v82 = v18;
  v19 = 1.0 / v18;
  v20 = *a1 * (1.0 / v18);
  v77 = a1[2];
  v78 = a1[1];
  v21 = v5 * (1.0 / v18);
  v22 = v8 * (1.0 / v18);
  v23 = v11 * v19;
  v24 = v17 * v19;
  v79 = v21;
  v80 = v12 * v19;
  v81 = v22;
  v25 = v20 * (v11 * v19) - v21 * v21 + v20 * (v17 * v19) - v22 * v22 + v11 * v19 * (v17 * v19) - v80 * v80;
  v26 = v17 * v19 + v20 + v11 * v19;
  v27 = v26 / 3.0;
  v28 = (v25 - v26 * (v26 / 3.0)) / 3.0;
  if (v28 > 0.0)
  {
    v28 = 0.0;
  }

  v29 = (v12 * v19 * (v22 * (v21 + v21)) + v20 * v23 * (v17 * v19) + -(v20 * (v12 * v19)) * (v12 * v19) + -(v23 * v22) * v22 + -(v17 * v19 * v21) * v21 + v27 * -(v25 - (v27 + v27) * v27)) * 0.5;
  v30 = v28 * (v28 * v28) + v29 * v29;
  v31 = sqrt(-v28);
  v32 = -v30;
  if (v30 > 0.0)
  {
    v32 = -0.0;
  }

  v33 = atan2(sqrt(v32), v29);
  v34 = __sincos_stret(v33 / 3.0);
  v35 = v27 + (v31 + v31) * v34.__cosval;
  v36 = v27 - v31 * (v34.__cosval + v34.__sinval * 1.73205081);
  *a2 = v35;
  a2[1] = v36;
  v37 = v27 - v31 * (v34.__cosval + v34.__sinval * -1.73205081);
  a2[2] = v37;
  if (v37 <= v36)
  {
    v38 = v27 - v31 * (v34.__cosval + v34.__sinval * 1.73205081);
    v36 = v27 - v31 * (v34.__cosval + v34.__sinval * -1.73205081);
    if (v37 <= v35)
    {
LABEL_23:
      v39 = v36;
      v36 = v27 + (v31 + v31) * v34.__cosval;
      if (v38 <= v35)
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    }
  }

  else
  {
    a2[1] = v37;
    a2[2] = v36;
    v38 = v27 - v31 * (v34.__cosval + v34.__sinval * -1.73205081);
    if (v36 <= v35)
    {
      goto LABEL_23;
    }
  }

  a2[2] = v35;
  *a2 = v36;
  v39 = v27 + (v31 + v31) * v34.__cosval;
  if (v38 <= v36)
  {
LABEL_24:
    v40 = v38;
    v38 = v36;
    if (a3)
    {
      goto LABEL_25;
    }

LABEL_47:
    v70 = v82;
    v71 = v82 * v38;
    goto LABEL_50;
  }

LABEL_46:
  *a2 = v38;
  a2[1] = v36;
  v40 = v36;
  if (!a3)
  {
    goto LABEL_47;
  }

LABEL_25:
  if (v38 < 1.0e-10 || v38 - v39 < 1.0e-10)
  {
    *a3 = 1.0;
    a3[1] = 0.0;
    a3[2] = 0.0;
    a3[3] = 0.0;
    a3[4] = 1.0;
    a3[5] = 0.0;
    a3[6] = 0.0;
    a3[7] = 0.0;
    a3[8] = 1.0;
  }

  else
  {
    v41 = v76 * v19;
    v42 = v75 * v19;
    v43 = v74 * v19;
    v44 = -(v78 * v19);
    v45 = -(v77 * v19);
    v46 = -(v12 * v19);
    v47 = v20 - v38;
    v48 = v23 - v38;
    v49 = (v23 - v38) * v45 + v79 * v80;
    v50 = v81 * (v76 * v19) - (v20 - v38) * v80;
    v51 = v76 * v19 * v44 + (v20 - v38) * (v23 - v38);
    v52 = v50 * v50 + v49 * v49 + v51 * v51;
    if (v52 < 1.0e-10)
    {
      v53 = v24 - v38;
      v49 = v43 * v45 + v79 * (v24 - v38);
      v50 = (v24 - v38) * -v47 + v81 * v42;
      v51 = v42 * v44 + v47 * v43;
      v52 = v50 * v50 + v49 * v49 + v51 * v51;
      if (v52 < 1.0e-10)
      {
        v49 = v43 * v46 + v48 * v53;
        v50 = v80 * v42 - v41 * v53;
        v51 = v41 * v43 - v48 * v42;
        v52 = v50 * v50 + v49 * v49 + v51 * v51;
      }
    }

    v54 = 1.0 / sqrt(v52);
    v55 = v49 * v54;
    v56 = v50 * v54;
    v57 = v51 * v54;
    v58 = v56 * v45 + v79 * v57;
    v59 = v81 * v55 - (v20 - v40) * v57;
    v60 = v55 * v44 + (v20 - v40) * v56;
    v61 = v59 * v59 + v58 * v58 + v60 * v60;
    if (v61 < 1.0e-10)
    {
      v58 = v56 * v46 + (v23 - v40) * v57;
      v59 = v80 * v55 - v41 * v57;
      v60 = v41 * v56 - (v23 - v40) * v55;
      v61 = v59 * v59 + v58 * v58 + v60 * v60;
      if (v61 < 1.0e-10)
      {
        v58 = v43 * v57 - (v24 - v40) * v56;
        v59 = (v24 - v40) * v55 - v42 * v57;
        v60 = v42 * v56 - v43 * v55;
        v61 = v59 * v59 + v58 * v58 + v60 * v60;
        if (v61 < 1.0e-10)
        {
          v62 = fabs(v55) <= fabs(v56);
          v63 = 0.0;
          if (v62)
          {
            v64 = 0.0;
          }

          else
          {
            v64 = -v57;
          }

          if (v62)
          {
            v63 = -v57;
          }

          if (v62)
          {
            v65 = v56;
          }

          else
          {
            v65 = v55;
          }

          v58 = v63 * v57 - v65 * v56;
          v59 = v65 * v55 - v64 * v57;
          v60 = v64 * v56 - v63 * v55;
          v61 = v59 * v59 + v58 * v58 + v60 * v60;
        }
      }
    }

    v66 = 1.0 / sqrt(v61);
    v67 = v58 * v66;
    v68 = v59 * v66;
    v69 = v60 * v66;
    *a3 = v55;
    a3[1] = v67;
    a3[2] = v56 * v69 - v57 * v68;
    a3[3] = v56;
    a3[4] = v68;
    a3[5] = v57 * v67 - v55 * v69;
    a3[6] = v57;
    a3[7] = v69;
    a3[8] = v55 * v68 - v56 * v67;
  }

  v40 = a2[1];
  v70 = v82;
  v71 = v82 * *a2;
LABEL_50:
  *a2 = v71;
  result = v70 * v40;
  v73 = v70 * a2[2];
  a2[1] = v70 * v40;
  a2[2] = v73;
  return result;
}

uint64_t g_isect_line_line_ex2(double *a1, double *a2, float64x2_t *a3, float64x2_t *a4, double *a5, float64x2_t *a6, double *a7, double *a8, double a9)
{
  v9 = a3[1].f64[0];
  v10 = *a3;
  v11 = vsubq_f64(*a4, *a3);
  v12 = a4[1].f64[0];
  v13 = fabs(v11.f64[1]);
  v14 = vabdd_f64(v12, v9);
  if (fabs(v11.f64[0]) < a9 && v13 < a9 && v14 < a9)
  {
    return 0;
  }

  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  v20 = *a2;
  v21 = a2[1];
  v22 = a2[2];
  v23 = vabdd_f64(v21, v17);
  v24 = vabdd_f64(v22, v19);
  v25 = vabdd_f64(*a2, *a1) < a9 && v23 < a9;
  if (v25 && v24 < a9)
  {
    return 0;
  }

  v27 = v12 - v9;
  v28 = v20 - v18;
  v29 = v21 - v17;
  v30 = v22 - v19;
  v31 = v11.f64[1] * v29 + v11.f64[0] * (v20 - v18) + v27 * (v22 - v19);
  v32 = v11.f64[1] * v11.f64[1] + v11.f64[0] * v11.f64[0] + v27 * v27;
  v33 = (v29 * v29 + v28 * v28 + v30 * v30) * v32 - v31 * v31;
  if (fabs(v33) < a9)
  {
    return 0;
  }

  v35 = (v17 - v10.f64[1]) * v29 + (v18 - v10.f64[0]) * v28 + (v19 - v9) * v30;
  v36 = (v17 - v10.f64[1]) * v11.f64[1] + (v18 - v10.f64[0]) * v11.f64[0] + (v19 - v9) * v27;
  v37 = (v36 * v31 - v35 * v32) / v33;
  if (a5)
  {
    *a5 = v18 + v37 * v28;
    a5[1] = v17 + v37 * v29;
    a5[2] = v19 + v37 * v30;
  }

  if (a7)
  {
    *a7 = v37;
  }

  v38 = (v36 + v31 * v37) / v32;
  if (a6)
  {
    *a6 = vmlaq_n_f64(*a3, v11, v38);
    a6[1].f64[0] = a3[1].f64[0] + v38 * v27;
  }

  if (a8)
  {
    *a8 = v38;
  }

  return 1;
}

uint64_t int_pair_cmp_dec(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    v4 = a1[1];
    v5 = a2[1];
    v7 = __OFSUB__(v4, v5);
    v6 = v4 - v5 < 0;
    if (v4 <= v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    if (v6 != v7)
    {
      return 1;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (v2 <= v3)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }

    if (v2 >= v3)
    {
      return v10;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t vl_pose_ransac(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v12;
  v849 = v14;
  v899 = v15;
  v901 = v16;
  v906 = v17;
  v19 = v18;
  v20 = v11;
  *&v929[4] = *MEMORY[0x277D85DE8];
  v21 = *(v12 + 28);
  if (*(v11 + 284))
  {
    *(v11 + 192) -= mach_absolute_time();
  }

  else
  {
    clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (v11 + 104));
    clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (v20 + 88));
    clock_gettime(_CLOCK_MONOTONIC, (v20 + 72));
  }

  v22 = *(v13 + 8);
  v23 = *(v13 + 12);
  v24 = *(v13 + 52);
  v25 = *(v13 + 44);
  v26 = v901[3];
  v27 = malloc_type_malloc(8 * v26, 0x100004000313F17uLL);
  v28 = v27;
  *v20 = 0;
  *(v20 + 24) = 0;
  v851 = v20 + 24;
  *(v20 + 48) = 0;
  v884 = v20;
  v857 = v19;
  v863 = v13;
  v894 = v27;
  if (v23 >= v22)
  {
    if (v26 >= 1)
    {
      v40 = v22 * v22;
      v41 = v26 & 0x7FFFFFFF;
      v42 = 0;
      LODWORD(v37) = 0;
      v43 = (v901[4] + 4);
      if (v24)
      {
        do
        {
          v44 = *(v43 - 1) / *v43;
          if (v44 < v40)
          {
            v45 = &v27[2 * v37];
            *(v45 + 1) = v42;
            *v45 = v44;
            LODWORD(v37) = v37 + 1;
          }

          ++v42;
          v43 += 2;
        }

        while (v41 != v42);
      }

      else
      {
        do
        {
          v46 = *(v43 - 1);
          if ((v46 / *v43) < v40)
          {
            v47 = &v27[2 * v37];
            *(v47 + 1) = v42;
            *v47 = v46;
            LODWORD(v37) = v37 + 1;
          }

          ++v42;
          v43 += 2;
        }

        while (v41 != v42);
      }

      v33 = v21;
LABEL_22:
      v48 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
      if (!v37)
      {
        goto LABEL_93;
      }

      v890 = v33;
      v892 = v25;
      v49 = 0;
      v50 = v37;
      v51 = &v920;
      v52 = 1;
      v53 = 32;
      v54 = v28;
      while (1)
      {
        v55 = v49;
        while (1)
        {
          if (!v52)
          {
            --v55;
            v56 = &v48[16 * v55];
            v50 = *(v56 + 1);
            v54 = &v28[2 * *v56];
          }

          if (v50 > 15)
          {
            break;
          }

          if (v50 > 1)
          {
            v57 = v54 + 2;
            v58 = 2;
            for (i = 1; i != v50; ++i)
            {
              v60 = v57;
              v61 = v58;
              do
              {
                v62 = &v54[2 * (v61 - 2)];
                if (*v60 >= *v62)
                {
                  break;
                }

                v63 = *v60;
                *v60 = *v62;
                v60 -= 2;
                *v62 = v63;
                --v61;
              }

              while (v61 > 1);
              ++v58;
              v57 += 2;
            }
          }

          v52 = 0;
          v50 = 0;
          if (v55 < 1)
          {
            goto LABEL_89;
          }
        }

        if (v50 > 0x27)
        {
          break;
        }

        v64 = v50 >> 1;
        v65 = *v54;
        v66 = v54[2 * (v50 >> 1)];
        v67 = v50 - 1;
        v68 = v54[2 * v50 - 2];
        if (v66 >= v68)
        {
          v69 = v50 >> 1;
        }

        else
        {
          v69 = v50 - 1;
        }

        if (v65 >= v68)
        {
          v67 = 0;
        }

        else
        {
          v69 = 0;
        }

        if (v66 >= v68)
        {
          v64 = v67;
        }

        if (v65 >= v66)
        {
          v64 = v69;
        }

LABEL_77:
        v88 = 0;
        v89 = 0;
        v90 = *v54;
        *v54 = *&v54[2 * v64];
        *&v54[2 * v64] = v90;
        v91 = v50 - 1;
        v92 = 2;
        do
        {
          if ((v54[v92] - *v54) <= 0.0)
          {
            ++v88;
            v93 = *&v54[v92];
            *&v54[v92] = *&v54[2 * v88];
            *&v54[2 * v88] = v93;
            if ((v54[v92] - *v54) == 0.0)
            {
              ++v89;
              *&v54[2 * v88] = *&v54[2 * v89];
              *&v54[2 * v89] = v93;
            }
          }

          v92 += 2;
          --v91;
        }

        while (v91);
        v94 = 8 * v88 - 8 * v89;
        v95 = v89;
        do
        {
          v96 = *(v54 + v94);
          *(v54 + v94) = *&v54[2 * v95];
          *&v54[2 * v95] = v96;
          v94 += 8;
          v458 = v95-- <= 0;
        }

        while (!v458);
        v49 = v55 + 1;
        if (v55 + 1 >= v53)
        {
          v887 = v21;
          v885 = 2 * v53;
          v97 = v51;
          v48 = malloc_type_realloc(v48, 32 * v53, 0x100004000313F17uLL);
          v51 = v97;
          v53 = v885;
          v21 = v887;
        }

        v98 = &v48[16 * v55];
        *v98 = v88 + ((v54 - v28) >> 3) + 1;
        *(v98 + 1) = v50 + ~v88;
        v50 = v88 - v89;
        v52 = v88 != v89;
        if (v55 < 0 && !v50)
        {
LABEL_89:
          v25 = v892;
          v33 = v890;
          goto LABEL_93;
        }
      }

      v70 = 0;
      v71 = 0;
      if (v50 <= 0x7D0)
      {
        v72 = 8;
      }

      else
      {
        v72 = 26;
      }

      if (v50 <= 0x7D0)
      {
        v73 = 3;
      }

      else
      {
        v73 = 9;
      }

      while (1)
      {
        v74 = (v50 - 1 + v70) / v72;
        v75 = v54[2 * (v70 / v72)];
        v76 = v54[2 * v74];
        v77 = (2 * v50 - 2 + v70) / v72;
        v78 = v54[2 * v77];
        if (v75 >= v76)
        {
          if (v75 < v78)
          {
            goto LABEL_61;
          }

          if (v76 < v78)
          {
LABEL_63:
            *(&v919 + v71) = v77;
            goto LABEL_55;
          }
        }

        else if (v76 >= v78)
        {
          if (v75 < v78)
          {
            goto LABEL_63;
          }

LABEL_61:
          *(&v919 + v71) = v70 / v72;
          goto LABEL_55;
        }

        *(&v919 + v71) = v74;
LABEL_55:
        ++v71;
        v70 += 3 * v50 - 3;
        if (v73 == v71)
        {
          while (1)
          {
            v79 = v73;
            v73 /= 3uLL;
            v80 = &v919;
            v81 = v51;
            v82 = v73;
            do
            {
              v83 = *(v81 - 2);
              v84 = *(v81 - 1);
              v85 = v54[2 * v83];
              v86 = v54[2 * v84];
              v87 = v54[2 * *v81];
              if (v85 >= v86)
              {
                if (v85 < v87)
                {
                  goto LABEL_73;
                }

                if (v86 >= v87)
                {
LABEL_66:
                  *v80 = v84;
                  goto LABEL_67;
                }
              }

              else
              {
                if (v86 < v87)
                {
                  goto LABEL_66;
                }

                if (v85 >= v87)
                {
LABEL_73:
                  *v80 = v83;
                  goto LABEL_67;
                }
              }

              *v80 = *v81;
LABEL_67:
              v81 = (v81 + 24);
              v80 = (v80 + 8);
              --v82;
            }

            while (v82);
            if (v79 < 9)
            {
              v64 = v919;
              goto LABEL_77;
            }
          }
        }
      }
    }

    v33 = v21;
  }

  else
  {
    if (v26 > 0)
    {
      v29 = v901[4];
      v30 = v22 * v22;
      v31 = v23 * v23;
      v32 = v26 & 0x7FFFFFFF;
      v33 = 0;
      v34 = 0;
      if (v24)
      {
        LODWORD(v35) = 0;
        v36 = (v29 + 4);
        do
        {
          v38 = *(v36 - 1) / *v36;
          if (v38 < v30)
          {
            v39 = &v27[2 * v35];
            *(v39 + 1) = v34;
            *v39 = v38;
            v35 = v35 + 1;
            if (v38 < v31)
            {
              v27[2 * v35] = v38 + -1.0;
              ++v33;
            }
          }

          ++v34;
          v36 += 2;
          LODWORD(v37) = v35;
        }

        while (v32 != v34);
      }

      else
      {
        LODWORD(v37) = 0;
        v228 = (v29 + 4);
        do
        {
          v229 = *(v228 - 1);
          v230 = v229 / *v228;
          if (v230 < v30)
          {
            v231 = &v27[2 * v37];
            *(v231 + 1) = v34;
            *v231 = v229;
            v37 = v37 + 1;
            if (v230 < v31)
            {
              v27[2 * v37] = v230 + -1.0;
              ++v33;
            }
          }

          ++v34;
          v228 += 2;
        }

        while (v32 != v34);
      }

      goto LABEL_22;
    }

    v33 = 0;
  }

  v48 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
  LODWORD(v37) = 0;
LABEL_93:
  free(v48);
  if (v37 >= v25)
  {
    v99 = v25;
  }

  else
  {
    v99 = v37;
  }

  if (v33 >= v99)
  {
    v100 = v99;
  }

  else
  {
    v100 = v33;
  }

  if (v100 >= v21)
  {
    v101 = v21;
  }

  else
  {
    v101 = v100;
  }

  v102 = v906;
  if (v99 >= 1)
  {
    v103 = v894 + 1;
    do
    {
      v110 = *v103;
      v103 += 2;
      v111 = *(v901[1] + 8 * v110);
      v112 = *(*(v899 + 8) + 288 * v110);
      v113 = v102[1];
      v114 = *v884;
      v115 = v884[2];
      if (*v884 >= v115)
      {
        v117 = 2 * v115;
        v118 = v115 == 0;
        v119 = 32;
        if (!v118)
        {
          v119 = v117;
        }

        if (v119 <= v114)
        {
          v120 = v114 + 1;
        }

        else
        {
          v120 = v119;
        }

        v116 = v884;
        if (v120)
        {
          v121 = malloc_type_realloc(v884[1], 8 * v120, 0x100004000313F17uLL);
          v102 = v906;
          v884[1] = v121;
          v114 = *v884;
        }

        v884[2] = v120;
      }

      else
      {
        v116 = v884;
      }

      *v116 = v114 + 1;
      *(v116[1] + 8 * v114) = v112;
      v122 = v116[3];
      v123 = v116[5];
      if (v122 >= v123)
      {
        v125 = 2 * v123;
        v118 = v123 == 0;
        v126 = 21;
        if (!v118)
        {
          v126 = v125;
        }

        if (v126 <= v122)
        {
          v127 = v122 + 1;
        }

        else
        {
          v127 = v126;
        }

        v124 = v884;
        if (v127)
        {
          v128 = malloc_type_realloc(v884[4], 12 * v127, 0x10000403E1C8BA9uLL);
          v102 = v906;
          v884[4] = v128;
          v122 = v884[3];
        }

        v884[5] = v127;
      }

      else
      {
        v124 = v884;
      }

      v129 = (v113 + 12 * v111);
      v124[3] = v122 + 1;
      v130 = v124[4] + 12 * v122;
      v131 = *v129;
      *(v130 + 8) = *(v129 + 2);
      *v130 = v131;
      if (v102[12])
      {
        v132 = v102[13];
        v133 = v124[6];
        v134 = v124[8];
        if (v133 < v134)
        {
          v104 = v884;
        }

        else
        {
          v135 = 2 * v134;
          v118 = v134 == 0;
          v136 = 21;
          if (!v118)
          {
            v136 = v135;
          }

          if (v136 <= v133)
          {
            v137 = v133 + 1;
          }

          else
          {
            v137 = v136;
          }

          v104 = v884;
          if (v137)
          {
            v884[7] = malloc_type_realloc(v884[7], 12 * v137, 0x10000403E1C8BA9uLL);
            v133 = v884[6];
          }

          v884[8] = v137;
        }

        v105 = (v132 + 8 * v111);
        v104[6] = v133 + 1;
        v106 = (v104[7] + 12 * v133);
        v107 = *v105;
        v108 = __sincosf_stret(v105[1]);
        v109 = __sincosf_stret(v107);
        *v106 = v109.__sinval * v108.__cosval;
        v106[1] = v109.__sinval * v108.__sinval;
        v106[2] = v109.__cosval;
        v102 = v906;
      }

      --v99;
    }

    while (v99);
  }

  free(v894);
  printf("Spam : ");
  v138 = v884;
  printf("POSE:  num of matches after lowe: %s%llu / %d, (m: %d), %s", "", *v884, v37, v101, "");
  putchar(10);
  v854 = *v863;
  v908[0] = 0;
  v139 = *v884;
  v928 = 0.0;
  memset(v927, 0, sizeof(v927));
  v140 = v863[6];
  if (v140 <= 1)
  {
    v141 = 1;
  }

  else
  {
    v141 = v140;
  }

  v858 = v141;
  v907 = malloc_type_calloc(v141, 0x34uLL, 0x10000403884A0CCuLL);
  v142 = *v849;
  v143 = v849[1].f32[0];
  if (v857 != 32 && v857 != 1)
  {
    v853 = 0;
    v852 = 0;
    v152 = 3;
    if (v101 > 3)
    {
      goto LABEL_200;
    }

    goto LABEL_153;
  }

  v144 = v863[8];
  if (!v144)
  {
    v853 = 0;
    v152 = 2;
    v852 = 1;
    if (v101 > 2)
    {
      goto LABEL_200;
    }

LABEL_153:
    free(v907);
    free(v853);
    v153 = 32;
    if (!*(v884 + 71))
    {
      goto LABEL_506;
    }

    goto LABEL_154;
  }

  if (v144 >= v101)
  {
    v145 = v101;
  }

  else
  {
    v145 = v863[8];
  }

  v902 = *v849;
  if (v145 > 0)
  {
    v146 = v863[9];
    if (v146 <= 1)
    {
      v147 = 1;
    }

    else
    {
      v147 = v863[9];
    }

    if (v145 == 1)
    {
      v148 = 0;
      v149 = 0;
      v150 = -v146;
      v151 = v863[9];
    }

    else
    {
      v156 = 0;
      v157 = 0;
      v158 = 0;
      v149 = v145 & 0x7FFFFFFE;
      v150 = -v146 - (v145 & 0x7FFFFFFE);
      v151 = v146 + (v145 & 0x7FFFFFFE);
      v159 = v146 + 1;
      v160 = v863[9];
      do
      {
        if (v101 <= v159)
        {
          v161 = v159;
        }

        else
        {
          v161 = v101;
        }

        v162 = v156 + ~v146 + v161;
        v158 += (v162 - (v162 != 0)) / v147;
        if (v162)
        {
          ++v158;
        }

        if (v101 <= v160)
        {
          v163 = v160;
        }

        else
        {
          v163 = v101;
        }

        v164 = v156 - v146 + v163;
        v157 += (v164 - (v164 != 0)) / v147;
        if (v164)
        {
          ++v157;
        }

        v156 -= 2;
        v160 += 2;
        v159 += 2;
      }

      while (-(v145 & 0x7FFFFFFE) != v156);
      v148 = v158 + v157;
      if (v145 == v149)
      {
        goto LABEL_181;
      }
    }

    v165 = v145 - v149;
    do
    {
      if (v101 <= v151)
      {
        v166 = v151;
      }

      else
      {
        v166 = v101;
      }

      v167 = v166 + v150;
      v118 = v167 == 0;
      v168 = (v167 - (v167 != 0)) / v147 + v148;
      if (v118)
      {
        v148 = v168;
      }

      else
      {
        v148 = v168 + 1;
      }

      ++v151;
      --v150;
      --v165;
    }

    while (v165);
LABEL_181:
    v169 = malloc_type_malloc(4 * v148, 0x1000040BDFB0063uLL);
    LODWORD(v170) = 0;
    v171 = 0;
    v172 = 2 * v146;
    v173 = vmulq_s16(vdupq_n_s16(v146), xmmword_271105800);
    v174 = vdupq_n_s16(8 * v146);
    v175 = v169 + 32;
    v853 = v169;
    v176 = v169 + 2;
    v142 = v902;
    while (1)
    {
      v177 = v171 + v146;
      if ((v171 + v146) < v101)
      {
        v178 = v172 + v171;
        if (v101 > (v172 + v171))
        {
          v178 = v101;
        }

        v179 = v178 + -2 * v146 - v171;
        v180 = v170;
        LODWORD(v170) = (v179 - (v179 != 0)) / v146;
        if (v179)
        {
          v170 = (v170 + 1);
        }

        else
        {
          v170 = v170;
        }

        if (v170 >= 0xF)
        {
          v181 = v170 + 1;
          v182 = (v170 + 1) & 0x1FFFFFFF0;
          v170 = v182 + v180;
          v183 = vdupq_n_s16(v177);
          v177 += v146 * v182;
          v184 = vaddq_s16(v183, v173);
          v185 = vdupq_n_s16(v171);
          v186 = &v175[4 * v180];
          v187 = v182;
          do
          {
            v188 = vaddq_s16(v184, v174);
            v189 = v186 - 16;
            v190 = v185;
            vst2q_s16(v189, *(&v184 - 1));
            vst2q_s16(v186, *v185.i8);
            v184 = vaddq_s16(v188, v174);
            v186 += 32;
            v187 -= 16;
          }

          while (v187);
          if (v181 == v182)
          {
            goto LABEL_182;
          }
        }

        else
        {
          v170 = v180;
        }

        v191 = &v176[4 * v170];
        do
        {
          *(v191 - 1) = v171;
          *v191 = v177;
          v191 += 4;
          LODWORD(v170) = v170 + 1;
          v177 += v146;
        }

        while (v177 < v101);
      }

LABEL_182:
      if (++v171 == v145)
      {
        goto LABEL_197;
      }
    }
  }

  v155 = malloc_type_malloc(0, 0x1000040BDFB0063uLL);
  v142 = v902;
  v853 = v155;
  v148 = 0;
LABEL_197:
  v192 = *v863;
  if (v148 < *v863)
  {
    v192 = v148;
  }

  v854 = v192;
  v152 = 2;
  v852 = 1;
  if (v101 <= 2)
  {
    goto LABEL_153;
  }

LABEL_200:
  if (v857 != 1)
  {
    v208 = v142.f32[1];
    if (v857 != 32)
    {
      v843 = v143;
      v844 = v142.f32[0];
      v842 = a9;
      if (v854 < 1)
      {
        goto LABEL_503;
      }

LABEL_236:
      v856 = 0;
      v242 = 0;
      v903 = 0;
      v845 = v101 - 1;
      v850 = v152;
      v848 = v152;
      v846 = v208;
      v847 = v139;
      v243 = v907;
      v874 = v907 + 12;
      v244 = 2.0;
      v245 = 1.0;
      v246 = v857;
      v247 = v863;
      v248 = v853;
      while (1)
      {
        v855 = v242;
        if (v248)
        {
          v249 = 0;
          v250 = &v248[2 * v856 * v848];
          v251 = *v250;
          v924 = v251;
          v252 = *(v250 + 1);
          v925 = v252;
          if (v246 == 1)
          {
            v253 = v852;
          }

          else
          {
            v253 = v852;
            if (v246 != 32)
            {
              v249 = *(v250 + 2);
            }
          }

          v926 = v249;
        }

        else
        {
          vl_randperm_int_s(v845, v850, &v924, v908);
          v251 = v924;
          v252 = v925;
          v253 = v852;
        }

        v254 = v138[1];
        v255 = v138[4];
        v256 = (v254 + 8 * v251);
        v257 = (v254 + 8 * v252);
        v258 = (v255 + 12 * v251);
        if (v246 != 32)
        {
          if (v246 == 2)
          {
            v259 = vl_pose_p3p(v256, v257, (v254 + 8 * v926), v258, (v255 + 12 * v252), (v255 + 12 * v926), &v919);
            if (v259 >= 1)
            {
              break;
            }
          }

          else if (v246 == 1)
          {
            v259 = vl_pose_p2p(v256, v257, v258, (v255 + 12 * v252), v927[0].f32, &v919);
            if (v259 >= 1)
            {
              break;
            }
          }

          else
          {
            printf("%sError : ", "");
            printf("pose method not recognized");
            putchar(10);
          }

          goto LABEL_280;
        }

        v259 = vl_pose_p2p_z(v256, v257, v258, (v255 + 12 * v252), &v919);
        if (v259 >= 1)
        {
          break;
        }

LABEL_280:
        v270 = 0;
LABEL_281:
        v303 = *v138;
        v304 = v247[10];
        if (v304 <= *v138 - 100)
        {
          v305 = v304;
        }

        else
        {
          v305 = v303;
        }

        if (v270 >= 1)
        {
          v306 = 0;
          v895 = v247[4];
          v893 = v303 - v305;
          v900 = v270;
          v869 = 8 * (v305 & 0x7FFFFFF8);
          v876 = (~v305 + v303);
          v886 = v305 & 0x7FFFFFF8;
          v868 = 3 * v886;
          v307 = (v876 + 1) & 0x1FFFFFFF8;
          v861 = 8 * v307;
          v862 = v876 + 1;
          v875 = v307;
          v859 = 8 * v305;
          v860 = 12 * v307;
          v871 = v305 - v303;
          v891 = *v138;
          do
          {
            v308 = &v919 + 3 * v306;
            v309 = *(v247 + 1) * *(v247 + 1);
            LODWORD(v9) = *v308;
            v310 = *(v308 + 3);
            if (v246 == 32)
            {
              v312 = *(v308 + 9);
              v311 = *(v308 + 10);
              LODWORD(v10) = *(v308 + 1);
              v313 = *(v308 + 4);
              LODWORD(v268) = *(v308 + 11);
              if (v305 < 1)
              {
                goto LABEL_295;
              }

              *&v260 = (v310 * v311) + (*&v9 * v312);
              *&v261 = (v311 * v313) + (*&v10 * v312);
              v314 = v138[4];
              v315 = v138[1];
              if (v305 < 8)
              {
                v316 = 0;
                v317 = 0;
                v318 = v138[1];
                v319 = v138[4];
LABEL_299:
                v339 = v305 - v316;
                do
                {
                  v340 = v319[1];
                  v341 = (v313 * v340) + (*&v10 * *v319);
                  v342 = ((v310 * v340) + (*&v9 * *v319)) - *&v260;
                  v343 = *v318;
                  v344 = v318[1];
                  v318 += 2;
                  v345 = (v319[2] - *&v268) - (v344 * v342);
                  v346 = (v345 * v345) + (((v341 - *&v261) - (v343 * v342)) * ((v341 - *&v261) - (v343 * v342)));
                  v458 = v342 <= 0.0;
                  v347 = v309 * (v342 * v342);
                  v349 = !v458 && v346 < v347;
                  v317 += v349;
                  v319 += 3;
                  --v339;
                }

                while (v339);
                goto LABEL_319;
              }

              v318 = (v315 + v869);
              v319 = &v314[v868];
              v326 = v9;
              v327 = vdupq_lane_s32(*&v9, 0);
              v263 = vdupq_lane_s32(*&v260, 0);
              v328 = v10;
              v264 = vdupq_lane_s32(*&v10, 0);
              v265 = vdupq_lane_s32(*&v261, 0);
              v329 = (v315 + 32);
              v266 = 0uLL;
              v330 = v268;
              v267 = vdupq_lane_s32(*&v268, 0);
              v331 = v305 & 0x7FFFFFF8;
              v332 = 0uLL;
              do
              {
                v333 = v314;
                v950 = vld3q_f32(v333);
                v333 += 12;
                v952 = vld3q_f32(v333);
                v334 = v329 - 8;
                v335 = vsubq_f32(vmlaq_f32(vmulq_n_f32(v950.val[1], v310), v950.val[0], v327), v263);
                v931 = vld2q_f32(v334);
                v336 = vsubq_f32(vmlaq_f32(vmulq_n_f32(v952.val[1], v310), v952.val[0], v327), v263);
                v933 = vld2q_f32(v329);
                v337 = vmlsq_f32(vsubq_f32(vmlaq_f32(vmulq_n_f32(v950.val[1], v313), v950.val[0], v264), v265), v335, v931.val[0]);
                v950.val[0] = vmlsq_f32(vsubq_f32(v950.val[2], v267), v335, v931.val[1]);
                v950.val[1] = vmlsq_f32(vsubq_f32(v952.val[2], v267), v336, v933.val[1]);
                v338 = vmlsq_f32(vsubq_f32(vmlaq_f32(vmulq_n_f32(v952.val[1], v313), v952.val[0], v264), v265), v336, v933.val[0]);
                v266 = vsubq_s32(v266, vandq_s8(vcgtq_f32(vmulq_n_f32(vmulq_f32(v335, v335), v309), vmlaq_f32(vmulq_f32(v950.val[0], v950.val[0]), v337, v337)), vcgtzq_f32(v335)));
                v332 = vsubq_s32(v332, vandq_s8(vcgtq_f32(vmulq_n_f32(vmulq_f32(v336, v336), v309), vmlaq_f32(vmulq_f32(v950.val[1], v950.val[1]), v338, v338)), vcgtzq_f32(v336)));
                v329 += 16;
                v314 += 24;
                v331 -= 8;
              }

              while (v331);
              v262 = vaddq_s32(v332, v266);
              v317 = vaddvq_s32(v262);
              v316 = v305 & 0x7FFFFFF8;
              v244 = 2.0;
              v245 = 1.0;
              v9 = v326;
              v10 = v328;
              v311 = *(v308 + 10);
              v312 = *(v308 + 9);
              v268 = v330;
              if (v886 != v305)
              {
                goto LABEL_299;
              }
            }

            else
            {
              v312 = *(v308 + 9);
              v311 = *(v308 + 10);
              LODWORD(v268) = *(v308 + 11);
              LODWORD(v10) = *(v308 + 1);
              v313 = *(v308 + 4);
              if (v305 < 1)
              {
LABEL_295:
                v317 = 0;
                goto LABEL_319;
              }

              v320 = *(v308 + 5);
              LODWORD(v260) = *(v308 + 6);
              v262.f32[0] = ((v310 * v311) + (*&v9 * v312)) + (*&v260 * *&v268);
              v263.i32[0] = *(v308 + 7);
              v264.i32[0] = *(v308 + 8);
              v265.f32[0] = ((v311 * v313) + (*&v10 * v312)) + (v263.f32[0] * *&v268);
              v266.i32[0] = *(v308 + 2);
              v267.f32[0] = ((v311 * v320) + (*v266.i32 * v312)) + (v264.f32[0] * *&v268);
              v321 = v138[4];
              v322 = v138[1];
              if (v305 < 8)
              {
                v323 = 0;
                v317 = 0;
                v324 = v138[1];
                v325 = v138[4];
LABEL_311:
                v375 = v305 - v323;
                do
                {
                  v376 = v325[1];
                  v377 = v325[2];
                  v378 = (((v310 * v376) + (*&v9 * *v325)) + (*&v260 * v377)) - v262.f32[0];
                  v379 = (((v313 * v376) + (*&v10 * *v325)) + (v263.f32[0] * v377)) - v265.f32[0];
                  v380 = (((v320 * v376) + (*v266.i32 * *v325)) + (v264.f32[0] * v377)) - v267.f32[0];
                  v381 = *v324;
                  v382 = v324[1];
                  v324 += 2;
                  v383 = ((v380 - (v382 * v378)) * (v380 - (v382 * v378))) + ((v379 - (v381 * v378)) * (v379 - (v381 * v378)));
                  v385 = v378 > 0.0 && v383 < (v309 * (v378 * v378));
                  v317 += v385;
                  v325 += 3;
                  --v375;
                }

                while (v375);
                goto LABEL_319;
              }

              v877 = v268;
              v324 = (v322 + v869);
              v325 = &v321[v868];
              v880 = v10;
              v882 = v9;
              v350 = vdupq_lane_s32(*&v9, 0);
              v864 = v262;
              v866 = v260;
              v351 = vdupq_lane_s32(*&v260, 0);
              v352 = vdupq_lane_s32(*v262.f32, 0);
              v353 = vdupq_lane_s32(*&v10, 0);
              v354 = vdupq_lane_s32(*v263.f32, 0);
              v355 = (v322 + 32);
              v356 = vdupq_lane_s32(*v265.f32, 0);
              v357 = vdupq_lane_s32(*v266.i8, 0);
              v358 = 0uLL;
              v359 = v305 & 0x7FFFFFF8;
              v360 = vdupq_lane_s32(*v264.f32, 0);
              v361 = 0uLL;
              v362 = vdupq_lane_s32(*v267.f32, 0);
              do
              {
                v363 = v321;
                v943 = vld3q_f32(v363);
                v363 += 12;
                v937 = vld3q_f32(v363);
                v364 = v355 - 8;
                v365 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v943.val[1], v310), v943.val[0], v350), v943.val[2], v351), v352);
                v366 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v943.val[1], v313), v943.val[0], v353), v943.val[2], v354), v356);
                v367 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v937.val[1], v310), v937.val[0], v350), v937.val[2], v351);
                v368 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v937.val[1], v313), v937.val[0], v353), v937.val[2], v354);
                v369 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v937.val[1], v320), v937.val[0], v357), v937.val[2], v360);
                *v937.val[0].f32 = vld2q_f32(v364);
                v937.val[2] = vsubq_f32(v367, v352);
                v370 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v943.val[1], v320), v943.val[0], v357), v943.val[2], v360), v362);
                *v943.val[0].f32 = vld2q_f32(v355);
                v371 = vmlsq_f32(v366, v365, v937.val[0]);
                v372 = vmlsq_f32(v370, v365, v937.val[1]);
                v373 = vmlsq_f32(vsubq_f32(v369, v362), v937.val[2], v943.val[1]);
                v374 = vmlsq_f32(vsubq_f32(v368, v356), v937.val[2], v943.val[0]);
                v358 = vsubq_s32(v358, vandq_s8(vcgtq_f32(vmulq_n_f32(vmulq_f32(v365, v365), v309), vmlaq_f32(vmulq_f32(v372, v372), v371, v371)), vcgtzq_f32(v365)));
                v361 = vsubq_s32(v361, vandq_s8(vcgtq_f32(vmulq_n_f32(vmulq_f32(v937.val[2], v937.val[2]), v309), vmlaq_f32(vmulq_f32(v373, v373), v374, v374)), vcgtzq_f32(v937.val[2])));
                v355 += 16;
                v321 += 24;
                v359 -= 8;
              }

              while (v359);
              v317 = vaddvq_s32(vaddq_s32(v361, v358));
              v323 = v305 & 0x7FFFFFF8;
              v244 = 2.0;
              v245 = 1.0;
              v10 = v880;
              v9 = v882;
              v311 = *(v308 + 10);
              v312 = *(v308 + 9);
              v268 = v877;
              v262 = v864;
              v260 = v866;
              if (v886 != v305)
              {
                goto LABEL_311;
              }
            }

LABEL_319:
            if (v305 >= v303)
            {
              goto LABEL_323;
            }

            v386 = *(v247 + 12) * v243[12];
            if (v386 <= v895)
            {
              v386 = v895;
            }

            if ((v386 * v305) <= (v317 * v303))
            {
LABEL_323:
              if (v246 == 32)
              {
                if (v893 >= 1)
                {
                  *&v260 = (v310 * v311) + (*&v9 * v312);
                  *&v261 = (v311 * v313) + (*&v10 * v312);
                  v387 = v138[4] + 12 * v305;
                  v388 = v138[1];
                  v389 = (v388 + 8 * v305);
                  if (v876 >= 7)
                  {
                    v888 = v312;
                    v399 = v311;
                    v389 = (v389 + v861);
                    v262 = vdupq_lane_s32(*&v9, 0);
                    v263 = vdupq_lane_s32(*&v260, 0);
                    v392 = (v387 + v860);
                    v264 = vdupq_lane_s32(*&v10, 0);
                    v265 = vdupq_lane_s32(*&v261, 0);
                    v400 = (v388 + v859 + 32);
                    v401 = v268;
                    v267 = vdupq_lane_s32(*&v268, 0);
                    v266 = 0uLL;
                    v402 = (v876 + 1) & 0x1FFFFFFF8;
                    v403 = 0uLL;
                    do
                    {
                      v404 = v387;
                      v935 = vld3q_f32(v404);
                      v404 += 12;
                      v951 = vld3q_f32(v404);
                      v405 = v400 - 8;
                      v406 = vsubq_f32(vmlaq_f32(vmulq_n_f32(v935.val[1], v310), v935.val[0], v262), v263);
                      v934 = vld2q_f32(v405);
                      v407 = vsubq_f32(vmlaq_f32(vmulq_n_f32(v951.val[1], v310), v951.val[0], v262), v263);
                      v932 = vld2q_f32(v400);
                      v408 = vmlsq_f32(vsubq_f32(vmlaq_f32(vmulq_n_f32(v935.val[1], v313), v935.val[0], v264), v265), v406, v934.val[0]);
                      v935.val[0] = vmlsq_f32(vsubq_f32(v935.val[2], v267), v406, v934.val[1]);
                      v935.val[1] = vmlsq_f32(vsubq_f32(v951.val[2], v267), v407, v932.val[1]);
                      v409 = vmlsq_f32(vsubq_f32(vmlaq_f32(vmulq_n_f32(v951.val[1], v313), v951.val[0], v264), v265), v407, v932.val[0]);
                      v266 = vsubq_s32(v266, vandq_s8(vcgtq_f32(vmulq_n_f32(vmulq_f32(v406, v406), v309), vmlaq_f32(vmulq_f32(v935.val[0], v935.val[0]), v408, v408)), vcgtzq_f32(v406)));
                      v403 = vsubq_s32(v403, vandq_s8(vcgtq_f32(vmulq_n_f32(vmulq_f32(v407, v407), v309), vmlaq_f32(vmulq_f32(v935.val[1], v935.val[1]), v409, v409)), vcgtzq_f32(v407)));
                      v400 += 16;
                      v387 += 96;
                      v402 -= 8;
                    }

                    while (v402);
                    v391 = vaddvq_s32(vaddq_s32(v403, v266));
                    v390 = (v876 + 1) & 0xFFFFFFF8;
                    v311 = v399;
                    v245 = 1.0;
                    v312 = v888;
                    v268 = v401;
                    if (v862 != v875)
                    {
                      goto LABEL_334;
                    }
                  }

                  else
                  {
                    v390 = 0;
                    v391 = 0;
                    v392 = (v138[4] + 12 * v305);
LABEL_334:
                    v410 = v871 + v390;
                    do
                    {
                      v411 = v392[1];
                      v412 = (v313 * v411) + (*&v10 * *v392);
                      v413 = ((v310 * v411) + (*&v9 * *v392)) - *&v260;
                      v414 = *v389;
                      v415 = v389[1];
                      v389 += 2;
                      v416 = (v392[2] - *&v268) - (v415 * v413);
                      v417 = (v416 * v416) + (((v412 - *&v261) - (v414 * v413)) * ((v412 - *&v261) - (v414 * v413)));
                      v458 = v413 <= 0.0;
                      v418 = v309 * (v413 * v413);
                      v420 = !v458 && v417 < v418;
                      v391 += v420;
                      v392 += 3;
                      v421 = __CFADD__(v410++, 1);
                    }

                    while (!v421);
                  }

LABEL_356:
                  v457 = v391 + v317;
                  v458 = v391 + v317 < v243[12] || v457 < v895;
                  if (v458)
                  {
                    goto LABEL_286;
                  }

                  v916 = v312;
                  v917 = v311;
                  v918 = *&v268;
                  *v912.i64 = *&v9;
                  *&v912.i64[1] = *&v10;
                  *&v913.i64[1] = v310;
                  *v914 = v313;
                  *v913.i64 = *(v308 + 2);
                  *&v914[8] = vcvtq_f64_f32(*(v308 + 20));
                  v915 = vcvtq_f64_f32(*(v308 + 28));
                  if (v903 < 1)
                  {
                    v469 = 0;
                  }

                  else
                  {
                    v459 = 0;
                    v460 = 0;
LABEL_362:
                    v461 = v874 + 13 * v459;
                    do
                    {
                      v911 = vcvtq_f64_f32(*(v461 - 2));
                      v909[0] = vcvtq_f64_f32(*(v461 - 12));
                      v909[3] = vcvtq_f64_f32(*(v461 - 6));
                      v909[1] = vcvtq_f64_f32(*(v461 - 10));
                      v909[2] = vcvtq_f64_f32(*(v461 - 8));
                      v910 = vcvtq_f64_f32(*(v461 - 4));
                      v462 = (v916 - v910.f64[1]) * (v916 - v910.f64[1]) + 0.0;
                      v463 = v462 + (v917 - v911.f64[0]) * (v917 - v911.f64[0]);
                      v464 = v463 + (v918 - v911.f64[1]) * (v918 - v911.f64[1]);
                      v465 = sqrtf(v464);
                      v466 = g_coords_angle_diff(v912.i64, v909);
                      if (v465 < v244 && v466 < 0.034907)
                      {
                        if (*v461 >= v457)
                        {
                          ++v459;
                          v460 = 1;
                          if (v459 < v903)
                          {
                            goto LABEL_362;
                          }

LABEL_374:
                          if (v903 == 1)
                          {
                            v468 = 0;
                            v138 = v884;
                            v246 = v857;
                            v247 = v863;
                            v303 = v891;
                            goto LABEL_392;
                          }

                          v468 = v903 & 0x7FFFFFFE;
                          v487 = v468;
                          v488 = (v907 + 25);
                          v138 = v884;
                          v246 = v857;
                          v247 = v863;
                          v303 = v891;
                          do
                          {
                            v489 = *v488 & 0x7FFFFFFF;
                            *(v488 - 13) &= ~0x80000000;
                            *v488 = v489;
                            v488 += 26;
                            v487 -= 2;
                          }

                          while (v487);
                          if (v468 != v903)
                          {
LABEL_392:
                            v490 = v903 - v468;
                            v491 = v874 + 13 * v468;
                            do
                            {
                              *v491 &= ~0x80000000;
                              v491 += 13;
                              --v490;
                            }

                            while (v490);
                          }

                          v243 = v907;
                          goto LABEL_287;
                        }

                        *v461 |= 0x80000000;
                      }

                      ++v459;
                      v461 += 13;
                    }

                    while (v459 < v903);
                    if (v460)
                    {
                      goto LABEL_374;
                    }

                    v470 = 0;
                    v469 = 0;
                    v471 = v907;
                    v138 = v884;
                    v246 = v857;
                    v247 = v863;
                    do
                    {
                      while ((v471[12] & 0x80000000) != 0)
                      {
                        ++v470;
                        v471 += 13;
                        if (v470 >= v903)
                        {
                          goto LABEL_381;
                        }
                      }

                      v472 = &v907[13 * v469];
                      v473 = *v471;
                      v474 = *(v471 + 1);
                      v475 = *(v471 + 2);
                      v472[12] = v471[12];
                      *(v472 + 1) = v474;
                      *(v472 + 2) = v475;
                      *v472 = v473;
                      ++v469;
                      ++v470;
                      v471 += 13;
                    }

                    while (v470 < v903);
                  }

LABEL_381:
                  v476 = v469 >= v858 ? v469 : v469 + 1;
                  v243 = v907;
                  v477 = &v907[13 * v476 - 13];
                  v478 = *v308;
                  v479 = v308[2];
                  *(v477 + 1) = v308[1];
                  *(v477 + 2) = v479;
                  *v477 = v478;
                  *(v477 + 12) = v457;
                  v903 = v476;
                  if (v476 <= 1)
                  {
LABEL_286:
                    v303 = v891;
                  }

                  else
                  {
                    v480 = v476;
                    v303 = v891;
                    do
                    {
                      v481 = &v907[13 * --v480];
                      if (*(v481 - 1) >= *(v481 + 12))
                      {
                        break;
                      }

                      v482 = *(v481 - 1);
                      v483 = *(v481 - 5);
                      v484 = *(v481 - 13);
                      v485 = *(v481 + 1);
                      *(v481 - 13) = *v481;
                      v486 = *(v481 - 9);
                      *(v481 - 9) = v485;
                      *(v481 - 5) = *(v481 + 2);
                      *(v481 - 1) = v481[12];
                      *v481 = v484;
                      *(v481 + 1) = v486;
                      *(v481 + 2) = v483;
                      *(v481 + 12) = v482;
                    }

                    while (v480 > 1);
                  }

                  goto LABEL_287;
                }
              }

              else if (v893 >= 1)
              {
                v393 = *(v308 + 5);
                LODWORD(v260) = *(v308 + 6);
                v262.f32[0] = ((v310 * v311) + (*&v9 * v312)) + (*&v260 * *&v268);
                v263.i32[0] = *(v308 + 7);
                v264.i32[0] = *(v308 + 8);
                v265.f32[0] = ((v311 * v313) + (*&v10 * v312)) + (v263.f32[0] * *&v268);
                v266.i32[0] = *(v308 + 2);
                v267.f32[0] = ((v311 * v393) + (*v266.i32 * v312)) + (v264.f32[0] * *&v268);
                v394 = v138[4] + 12 * v305;
                v395 = v138[1];
                v396 = (v395 + 8 * v305);
                if (v876 >= 7)
                {
                  v878 = v268;
                  v889 = v312;
                  v879 = v311;
                  v396 = (v396 + v861);
                  v881 = v10;
                  v883 = v9;
                  v422 = vdupq_lane_s32(*&v9, 0);
                  v865 = v262;
                  v867 = v260;
                  v423 = vdupq_lane_s32(*&v260, 0);
                  v424 = vdupq_lane_s32(*v262.f32, 0);
                  v398 = (v394 + v860);
                  v425 = vdupq_lane_s32(*&v10, 0);
                  v426 = vdupq_lane_s32(*v263.f32, 0);
                  v427 = (v395 + v859 + 32);
                  v428 = vdupq_lane_s32(*v265.f32, 0);
                  v429 = vdupq_lane_s32(*v266.i8, 0);
                  v430 = 0uLL;
                  v431 = (v876 + 1) & 0x1FFFFFFF8;
                  v432 = vdupq_lane_s32(*v264.f32, 0);
                  v433 = 0uLL;
                  v434 = vdupq_lane_s32(*v267.f32, 0);
                  do
                  {
                    v435 = v394;
                    v936 = vld3q_f32(v435);
                    v435 += 12;
                    v944 = vld3q_f32(v435);
                    v436 = v427 - 8;
                    v437 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v936.val[1], v310), v936.val[0], v422), v936.val[2], v423), v424);
                    v438 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v936.val[1], v313), v936.val[0], v425), v936.val[2], v426), v428);
                    v439 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v936.val[1], v393), v936.val[0], v429), v936.val[2], v432);
                    v440 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v944.val[1], v313), v944.val[0], v425), v944.val[2], v426);
                    v441 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v944.val[1], v393), v944.val[0], v429), v944.val[2], v432);
                    *v936.val[0].f32 = vld2q_f32(v436);
                    v936.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v944.val[1], v310), v944.val[0], v422), v944.val[2], v423), v424);
                    *v944.val[0].f32 = vld2q_f32(v427);
                    v442 = vmlsq_f32(v438, v437, v936.val[0]);
                    v443 = vmlsq_f32(vsubq_f32(v439, v434), v437, v936.val[1]);
                    v444 = vmlsq_f32(vsubq_f32(v441, v434), v936.val[2], v944.val[1]);
                    v445 = vmlsq_f32(vsubq_f32(v440, v428), v936.val[2], v944.val[0]);
                    v430 = vsubq_s32(v430, vandq_s8(vcgtq_f32(vmulq_n_f32(vmulq_f32(v437, v437), v309), vmlaq_f32(vmulq_f32(v443, v443), v442, v442)), vcgtzq_f32(v437)));
                    v433 = vsubq_s32(v433, vandq_s8(vcgtq_f32(vmulq_n_f32(vmulq_f32(v936.val[2], v936.val[2]), v309), vmlaq_f32(vmulq_f32(v444, v444), v445, v445)), vcgtzq_f32(v936.val[2])));
                    v427 += 16;
                    v394 += 96;
                    v431 -= 8;
                  }

                  while (v431);
                  v391 = vaddvq_s32(vaddq_s32(v433, v430));
                  v397 = (v876 + 1) & 0xFFFFFFF8;
                  v244 = 2.0;
                  v245 = 1.0;
                  v10 = v881;
                  v9 = v883;
                  v311 = v879;
                  v312 = v889;
                  v268 = v878;
                  v262 = v865;
                  v260 = v867;
                  if (v862 == v875)
                  {
                    goto LABEL_356;
                  }
                }

                else
                {
                  v397 = 0;
                  v391 = 0;
                  v398 = (v138[4] + 12 * v305);
                }

                v446 = v871 + v397;
                do
                {
                  v447 = v398[1];
                  v448 = v398[2];
                  v449 = (((v310 * v447) + (*&v9 * *v398)) + (*&v260 * v448)) - v262.f32[0];
                  v450 = (((v313 * v447) + (*&v10 * *v398)) + (v263.f32[0] * v448)) - v265.f32[0];
                  v451 = (((v393 * v447) + (*v266.i32 * *v398)) + (v264.f32[0] * v448)) - v267.f32[0];
                  v452 = *v396;
                  v453 = v396[1];
                  v396 += 2;
                  v454 = ((v451 - (v453 * v449)) * (v451 - (v453 * v449))) + ((v450 - (v452 * v449)) * (v450 - (v452 * v449)));
                  v456 = v449 > 0.0 && v454 < (v309 * (v449 * v449));
                  v391 += v456;
                  v398 += 3;
                  v421 = __CFADD__(v446++, 1);
                }

                while (!v421);
                goto LABEL_356;
              }

              v391 = 0;
              goto LABEL_356;
            }

LABEL_287:
            ++v306;
          }

          while (v306 != v900);
        }

        v492 = *(v247 + 5);
        v242 = v243[12];
        if (v492 < v245 && v855 < v242)
        {
          v494 = v242 / v847;
          v495 = 1.0;
          v496 = v850;
          v248 = v853;
          do
          {
            if (v496)
            {
              v497 = v494;
            }

            else
            {
              v497 = v245;
            }

            v495 = v495 * v497;
            v494 = v494 * v494;
            v458 = v496 > 1;
            v496 >>= 1;
          }

          while (v458);
          v498 = v245 - v495;
          if ((v245 - v495) < 1.0)
          {
            v499 = log2f(v245 - v492);
            v500 = ceilf(v499 / log2f(v498));
            if (v500 > v854)
            {
              v500 = v854;
            }

            v854 = v500;
          }
        }

        else
        {
          v248 = v853;
        }

        if (++v856 >= v854)
        {
          v501 = v846;
          if (!v247[6] || v903 < 1)
          {
            goto LABEL_503;
          }

          v502 = 0;
          v503 = v903;
          v504 = 1.0;
          v505 = -1.0;
          v506 = &unk_271103000;
          while (2)
          {
            v507 = v907 + 4;
            v508 = v503;
            do
            {
              v536 = v507[2];
              if (fabs(v536) < v504)
              {
                v509 = v507[4];
                v510 = v507[3];
                v511 = *(v507 - 1);
                v512 = *(v507 - 4);
                v513 = asin(-v536);
                v514 = atan2(v511, v512);
                v515 = atan2(v510, v509);
                v516 = v514;
              }

              else
              {
                v537 = *(v507 - 3);
                v538 = *(v507 - 2);
                if (v536 <= v505)
                {
                  v539 = atan2(v537, v538);
                  v516 = 0.0;
                  v515 = v539 + 0.0;
                  v513 = 1.57079633;
                }

                else
                {
                  v515 = atan2(-v537, -v538);
                  v516 = 0.0;
                  v513 = v506[165];
                }
              }

              v517 = __sincos_stret(v516);
              v519 = __sincos_stret(v513);
              *&v518 = v519.__cosval;
              v904 = v518;
              v520 = __sincos_stret(v515);
              v528.i64[1] = *(&v904 + 1);
              v532 = v519.__sinval * v517.__cosval * v520.__sinval - v517.__sinval * v520.__cosval;
              v530 = *&v904 * v517.__sinval;
              v527 = v517.__cosval * v520.__cosval + v519.__sinval * v517.__sinval * v520.__sinval;
              *v528.i64 = v519.__sinval * v517.__sinval * v520.__cosval - v517.__cosval * v520.__sinval;
              v529 = *&v904 * v517.__cosval;
              *&v530 = *&v904 * v517.__sinval;
              sinval = v519.__sinval;
              *&v532 = v532;
              *(v507 - 4) = v529;
              *(v507 - 3) = *&v532;
              v533 = v527;
              v534 = v517.__sinval * v520.__sinval + v519.__sinval * v517.__cosval * v520.__cosval;
              *(v507 - 2) = v534;
              *(v507 - 1) = *&v530;
              v535 = *v528.i64;
              *v507 = v533;
              v507[1] = v535;
              v507[2] = -sinval;
              *(v507 + 3) = vcvt_f32_f64(vmulq_n_f64(v520, *&v904));
              v507 += 13;
              --v503;
            }

            while (v503);
            v540 = v506;
            v541 = &v907[13 * v502];
            LODWORD(v532) = v863[1];
            v922 = 0u;
            v923 = 0u;
            v920 = 0u;
            v921 = 0u;
            v919 = 0u;
            v543 = v541[1];
            v542 = v541[2];
            v544 = *v541;
            v912 = *v541;
            v913 = v543;
            *v914 = v542;
            v545 = *v138;
            v905 = vdupq_n_s32(0x378637BEu);
            if (*v138 < 1)
            {
              v549 = 0;
              v503 = v508;
            }

            else
            {
              v542.i32[0] = v912.i32[3];
              v526.i32[0] = v912.i32[2];
              v524.i32[0] = v912.i32[1];
              v523.i32[0] = v912.i32[0];
              LODWORD(v530) = *v914;
              LODWORD(v527) = v913.i32[3];
              v528.i32[0] = v913.i32[2];
              *v525.i32 = ((*&v912.i32[3] * *&v914[8]) + (*v912.i32 * *&v914[4])) + (*&v913.i32[2] * *&v914[12]);
              *v521.i32 = ((*&v914[8] * *v913.i32) + (*&v912.i32[1] * *&v914[4])) + (*&v913.i32[3] * *&v914[12]);
              *v522.i32 = ((*&v914[8] * *&v913.i32[1]) + (*&v912.i32[2] * *&v914[4])) + (*v914 * *&v914[12]);
              v546 = v138[4];
              v547 = v138[1];
              v503 = v508;
              if ((*v138 & 0x7FFFFFFFuLL) >= 8)
              {
                v548 = (*v138 & 0x7FFFFFFF) - (*v138 & 7);
                v550 = (v547 + 8 * v548);
                v551 = &v546[3 * v548];
                v552 = vdupq_lane_s32(v523, 0);
                v553 = vdupq_lane_s32(*v528.i8, 0);
                v554 = vdupq_lane_s32(v525, 0);
                v555 = vdupq_lane_s32(v524, 0);
                v556 = vdupq_lane_s32(*&v527, 0);
                v557 = vdupq_lane_s32(v521, 0);
                v558 = (v547 + 32);
                v559 = vdupq_lane_s32(*v526.i8, 0);
                v526.i64[0] = 0;
                v526.i64[1] = 0;
                v560 = v548;
                v561 = vdupq_lane_s32(*&v530, 0);
                v562 = 0uLL;
                v563 = vdupq_lane_s32(v522, 0);
                HIDWORD(v532) = v905.i32[1];
                do
                {
                  v564 = v546;
                  v938 = vld3q_f32(v564);
                  v564 += 12;
                  v945 = vld3q_f32(v564);
                  v565 = v558 - 8;
                  v566 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v938.val[1], *&v912.i32[3]), v938.val[0], v552), v938.val[2], v553), v554);
                  v567 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v938.val[1], *v913.i32), v938.val[0], v555), v938.val[2], v556), v557);
                  v568 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v938.val[1], *&v913.i32[1]), v938.val[0], v559), v938.val[2], v561);
                  v569 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v945.val[1], *v913.i32), v945.val[0], v555), v945.val[2], v556);
                  v570 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v945.val[1], *&v913.i32[1]), v945.val[0], v559), v945.val[2], v561);
                  *v938.val[0].f32 = vld2q_f32(v565);
                  v938.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v945.val[1], *&v912.i32[3]), v945.val[0], v552), v945.val[2], v553), v554);
                  *v945.val[0].f32 = vld2q_f32(v558);
                  v571 = vmlsq_f32(v567, v566, v938.val[0]);
                  v572 = vmlsq_f32(vsubq_f32(v568, v563), v566, v938.val[1]);
                  v573 = vmlsq_f32(vsubq_f32(v570, v563), v938.val[2], v945.val[1]);
                  v574 = vmlsq_f32(vsubq_f32(v569, v557), v938.val[2], v945.val[0]);
                  v575 = vmlaq_f32(vmulq_f32(v572, v572), v571, v571);
                  v576 = vcgtq_f32(vmulq_f32(vmulq_f32(v938.val[2], v938.val[2]), v905), vmlaq_f32(vmulq_f32(v573, v573), v574, v574));
                  v544 = vcgtzq_f32(v566);
                  v543 = vandq_s8(v576, vcgtzq_f32(v938.val[2]));
                  v526 = vsubq_s32(v526, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v566, v566), v905), v575), v544));
                  v562 = vsubq_s32(v562, v543);
                  v558 += 16;
                  v546 += 24;
                  v560 -= 8;
                }

                while (v560);
                v549 = vaddvq_s32(vaddq_s32(v562, v526));
                v501 = v846;
                v504 = 1.0;
                v505 = -1.0;
                v523.i32[0] = v912.i32[0];
                v526.i32[0] = v912.i32[2];
                *v525.i32 = ((*&v912.i32[3] * *&v914[8]) + (*v912.i32 * *&v914[4])) + (*&v913.i32[2] * *&v914[12]);
                v524.i32[0] = v912.i32[1];
                if ((v545 & 7) != 0)
                {
                  goto LABEL_427;
                }
              }

              else
              {
                LODWORD(v548) = 0;
                v549 = 0;
                v550 = v138[1];
                v551 = v138[4];
LABEL_427:
                v577 = v545 - v548;
                do
                {
                  v578 = v551[1];
                  v579 = v551[2];
                  *v544.i32 = (((*&v912.i32[3] * v578) + (*v523.i32 * *v551)) + (*&v913.i32[2] * v579)) - *v525.i32;
                  v580 = (*&v913.i32[1] * v578) + (*v526.i32 * *v551);
                  v581 = (((*v913.i32 * v578) + (*v524.i32 * *v551)) + (*&v913.i32[3] * v579)) - *v521.i32;
                  v582 = (v580 + (*v914 * v579)) - *v522.i32;
                  v583 = *v550;
                  v584 = v550[1];
                  v550 += 2;
                  v585 = ((v582 - (v584 * *v544.i32)) * (v582 - (v584 * *v544.i32))) + ((v581 - (v583 * *v544.i32)) * (v581 - (v583 * *v544.i32)));
                  *v543.i32 = (*v544.i32 * *v544.i32) * 0.000016;
                  v587 = *v544.i32 > 0.0 && v585 < *v543.i32;
                  v549 += v587;
                  v551 += 3;
                  --v577;
                }

                while (v577);
              }
            }

            v541[3].i32[0] = v549;
            vl_pose_count_inliers(&v912, v138, v851, 0, &v919, *&v532, *v542.i64, *v543.i64, *v544.i64, v532, v530, v528);
            v588 = vl_pose_refine(&v912, &v919, &v920 + 1, 2, &v912, 0, 1.0, 0.0, 0.0);
            v599 = *v138;
            if (*v138 < 1)
            {
              v603 = 0;
            }

            else
            {
              v598.i32[0] = v912.i32[2];
              v596.i32[0] = v912.i32[1];
              v595.i32[0] = v912.i32[0];
              LODWORD(v590) = *v914;
              v592.i32[0] = v913.i32[3];
              v591.i32[0] = v913.i32[2];
              *v597.i32 = ((*&v912.i32[3] * *&v914[8]) + (*v912.i32 * *&v914[4])) + (*&v913.i32[2] * *&v914[12]);
              *v593.i32 = ((*&v914[8] * *v913.i32) + (*&v912.i32[1] * *&v914[4])) + (*&v913.i32[3] * *&v914[12]);
              *v594.i32 = ((*&v914[8] * *&v913.i32[1]) + (*&v912.i32[2] * *&v914[4])) + (*v914 * *&v914[12]);
              v600 = v138[4];
              v601 = v138[1];
              if ((*v138 & 0x7FFFFFFFuLL) >= 8)
              {
                v896 = v588;
                v602 = (*v138 & 0x7FFFFFFF) - (*v138 & 7);
                v604 = (v601 + 8 * v602);
                v605 = &v600[3 * v602];
                v606 = vdupq_lane_s32(v595, 0);
                v607 = vdupq_lane_s32(*v591.i8, 0);
                v608 = vdupq_lane_s32(v597, 0);
                v609 = vdupq_lane_s32(v596, 0);
                v610 = vdupq_lane_s32(v592, 0);
                v611 = vdupq_lane_s32(v593, 0);
                v612 = (v601 + 32);
                v613 = vdupq_lane_s32(*v598.i8, 0);
                v598 = 0uLL;
                v614 = v602;
                v615 = vdupq_lane_s32(*&v590, 0);
                v616 = 0uLL;
                v617 = vdupq_lane_s32(v594, 0);
                v589 = *v905.i64;
                do
                {
                  v618 = v600;
                  v939 = vld3q_f32(v618);
                  v618 += 12;
                  v946 = vld3q_f32(v618);
                  v619 = v612 - 8;
                  v620 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v939.val[1], *&v912.i32[3]), v939.val[0], v606), v939.val[2], v607), v608);
                  v621 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v939.val[1], *v913.i32), v939.val[0], v609), v939.val[2], v610), v611);
                  v622 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v939.val[1], *&v913.i32[1]), v939.val[0], v613), v939.val[2], v615);
                  v623 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v946.val[1], *v913.i32), v946.val[0], v609), v946.val[2], v610);
                  v624 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v946.val[1], *&v913.i32[1]), v946.val[0], v613), v946.val[2], v615);
                  *v939.val[0].f32 = vld2q_f32(v619);
                  v939.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v946.val[1], *&v912.i32[3]), v946.val[0], v606), v946.val[2], v607), v608);
                  *v946.val[0].f32 = vld2q_f32(v612);
                  v625 = vmlsq_f32(v621, v620, v939.val[0]);
                  v626 = vmlsq_f32(vsubq_f32(v622, v617), v620, v939.val[1]);
                  v627 = vmlsq_f32(vsubq_f32(v624, v617), v939.val[2], v946.val[1]);
                  v628 = vmlsq_f32(vsubq_f32(v623, v611), v939.val[2], v946.val[0]);
                  v598 = vsubq_s32(v598, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v620, v620), v905), vmlaq_f32(vmulq_f32(v626, v626), v625, v625)), vcgtzq_f32(v620)));
                  v616 = vsubq_s32(v616, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v939.val[2], v939.val[2]), v905), vmlaq_f32(vmulq_f32(v627, v627), v628, v628)), vcgtzq_f32(v939.val[2])));
                  v612 += 16;
                  v600 += 24;
                  v614 -= 8;
                }

                while (v614);
                v603 = vaddvq_s32(vaddq_s32(v616, v598));
                v501 = v846;
                v504 = 1.0;
                v505 = -1.0;
                v588 = v896;
                v595.i32[0] = v912.i32[0];
                v598.i32[0] = v912.i32[2];
                *v597.i32 = ((*&v912.i32[3] * *&v914[8]) + (*v912.i32 * *&v914[4])) + (*&v913.i32[2] * *&v914[12]);
                v596.i32[0] = v912.i32[1];
                if ((v599 & 7) != 0)
                {
                  goto LABEL_442;
                }
              }

              else
              {
                LODWORD(v602) = 0;
                v603 = 0;
                v604 = v138[1];
                v605 = v138[4];
LABEL_442:
                v629 = v599 - v602;
                do
                {
                  v630 = v605[1];
                  v631 = v605[2];
                  v632 = (((*&v912.i32[3] * v630) + (*v595.i32 * *v605)) + (*&v913.i32[2] * v631)) - *v597.i32;
                  v633 = (*&v913.i32[1] * v630) + (*v598.i32 * *v605);
                  v634 = (((*v913.i32 * v630) + (*v596.i32 * *v605)) + (*&v913.i32[3] * v631)) - *v593.i32;
                  v635 = (v633 + (*v914 * v631)) - *v594.i32;
                  v636 = *v604;
                  v637 = v604[1];
                  v604 += 2;
                  *&v589 = ((v635 - (v637 * v632)) * (v635 - (v637 * v632))) + ((v634 - (v636 * v632)) * (v634 - (v636 * v632)));
                  v639 = v632 > 0.0 && *&v589 < ((v632 * v632) * 0.000016);
                  v603 += v639;
                  v605 += 3;
                  --v629;
                }

                while (v629);
              }
            }

            if (v603 >= v541[3].i32[0])
            {
              v641 = v912;
              HIDWORD(v640) = v913.i32[1];
              v642 = *v914;
              v541[1] = v913;
              v541[2] = v642;
              *v541 = v641;
              v541[3].i32[0] = v603;
              LODWORD(v640) = 998445679;
              vl_pose_count_inliers(&v912, v138, v851, 0, &v919, fmaxf(v588 + v588, 0.004), v640, *v642.i64, *v641.i64, v589, v590, v591);
              v643 = vl_pose_refine(&v912, &v919, &v920 + 1, 2, &v912, 0, 1.0, 0.0, 0.0);
              v654 = *v138;
              if (*v138 < 1)
              {
                v658 = 0;
              }

              else
              {
                v653.i32[0] = v912.i32[2];
                v651.i32[0] = v912.i32[1];
                v650.i32[0] = v912.i32[0];
                LODWORD(v645) = *v914;
                v647.i32[0] = v913.i32[3];
                v646.i32[0] = v913.i32[2];
                *v652.i32 = ((*&v912.i32[3] * *&v914[8]) + (*v912.i32 * *&v914[4])) + (*&v913.i32[2] * *&v914[12]);
                *v648.i32 = ((*&v914[8] * *v913.i32) + (*&v912.i32[1] * *&v914[4])) + (*&v913.i32[3] * *&v914[12]);
                *v649.i32 = ((*&v914[8] * *&v913.i32[1]) + (*&v912.i32[2] * *&v914[4])) + (*v914 * *&v914[12]);
                v655 = v138[4];
                v656 = v138[1];
                if ((*v138 & 0x7FFFFFFFuLL) >= 8)
                {
                  v897 = v643;
                  v657 = (*v138 & 0x7FFFFFFF) - (*v138 & 7);
                  v659 = (v656 + 8 * v657);
                  v660 = &v655[3 * v657];
                  v661 = vdupq_lane_s32(v650, 0);
                  v662 = vdupq_lane_s32(*v646.i8, 0);
                  v663 = vdupq_lane_s32(v652, 0);
                  v664 = vdupq_lane_s32(v651, 0);
                  v665 = vdupq_lane_s32(v647, 0);
                  v666 = vdupq_lane_s32(v648, 0);
                  v667 = (v656 + 32);
                  v668 = vdupq_lane_s32(*v653.i8, 0);
                  v653 = 0uLL;
                  v669 = v657;
                  v670 = vdupq_lane_s32(*&v645, 0);
                  v671 = 0uLL;
                  v672 = vdupq_lane_s32(v649, 0);
                  v644 = *v905.i64;
                  do
                  {
                    v673 = v655;
                    v940 = vld3q_f32(v673);
                    v673 += 12;
                    v947 = vld3q_f32(v673);
                    v674 = v667 - 8;
                    v675 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v940.val[1], *&v912.i32[3]), v940.val[0], v661), v940.val[2], v662), v663);
                    v676 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v940.val[1], *v913.i32), v940.val[0], v664), v940.val[2], v665), v666);
                    v677 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v940.val[1], *&v913.i32[1]), v940.val[0], v668), v940.val[2], v670);
                    v678 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v947.val[1], *v913.i32), v947.val[0], v664), v947.val[2], v665);
                    v679 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v947.val[1], *&v913.i32[1]), v947.val[0], v668), v947.val[2], v670);
                    *v940.val[0].f32 = vld2q_f32(v674);
                    v940.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v947.val[1], *&v912.i32[3]), v947.val[0], v661), v947.val[2], v662), v663);
                    *v947.val[0].f32 = vld2q_f32(v667);
                    v680 = vmlsq_f32(v676, v675, v940.val[0]);
                    v681 = vmlsq_f32(vsubq_f32(v677, v672), v675, v940.val[1]);
                    v682 = vmlsq_f32(vsubq_f32(v679, v672), v940.val[2], v947.val[1]);
                    v683 = vmlsq_f32(vsubq_f32(v678, v666), v940.val[2], v947.val[0]);
                    v653 = vsubq_s32(v653, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v675, v675), v905), vmlaq_f32(vmulq_f32(v681, v681), v680, v680)), vcgtzq_f32(v675)));
                    v671 = vsubq_s32(v671, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v940.val[2], v940.val[2]), v905), vmlaq_f32(vmulq_f32(v682, v682), v683, v683)), vcgtzq_f32(v940.val[2])));
                    v667 += 16;
                    v655 += 24;
                    v669 -= 8;
                  }

                  while (v669);
                  v658 = vaddvq_s32(vaddq_s32(v671, v653));
                  v501 = v846;
                  v504 = 1.0;
                  v505 = -1.0;
                  v643 = v897;
                  v650.i32[0] = v912.i32[0];
                  v653.i32[0] = v912.i32[2];
                  *v652.i32 = ((*&v912.i32[3] * *&v914[8]) + (*v912.i32 * *&v914[4])) + (*&v913.i32[2] * *&v914[12]);
                  v651.i32[0] = v912.i32[1];
                  if ((v654 & 7) != 0)
                  {
                    goto LABEL_458;
                  }
                }

                else
                {
                  LODWORD(v657) = 0;
                  v658 = 0;
                  v659 = v138[1];
                  v660 = v138[4];
LABEL_458:
                  v684 = v654 - v657;
                  do
                  {
                    v685 = v660[1];
                    v686 = v660[2];
                    v687 = (((*&v912.i32[3] * v685) + (*v650.i32 * *v660)) + (*&v913.i32[2] * v686)) - *v652.i32;
                    v688 = (*&v913.i32[1] * v685) + (*v653.i32 * *v660);
                    v689 = (((*v913.i32 * v685) + (*v651.i32 * *v660)) + (*&v913.i32[3] * v686)) - *v648.i32;
                    v690 = (v688 + (*v914 * v686)) - *v649.i32;
                    v691 = *v659;
                    v692 = v659[1];
                    v659 += 2;
                    *&v644 = ((v690 - (v692 * v687)) * (v690 - (v692 * v687))) + ((v689 - (v691 * v687)) * (v689 - (v691 * v687)));
                    v694 = v687 > 0.0 && *&v644 < ((v687 * v687) * 0.000016);
                    v658 += v694;
                    v660 += 3;
                    --v684;
                  }

                  while (v684);
                }
              }

              if (v658 >= v541[3].i32[0])
              {
                v696 = v912;
                HIDWORD(v695) = v913.i32[1];
                v697 = *v914;
                v541[1] = v913;
                v541[2] = v697;
                *v541 = v696;
                v541[3].i32[0] = v658;
                LODWORD(v695) = 998445679;
                vl_pose_count_inliers(&v912, v138, v851, 0, &v919, fmaxf(v643 + v643, 0.004), v695, *v697.i64, *v696.i64, v644, v645, v646);
                v698 = vl_pose_refine(&v912, &v919, &v920 + 1, 2, &v912, 0, 1.0, 0.0, 0.0);
                v709 = *v138;
                if (*v138 < 1)
                {
                  v713 = 0;
                }

                else
                {
                  v708.i32[0] = v912.i32[2];
                  v706.i32[0] = v912.i32[1];
                  v705.i32[0] = v912.i32[0];
                  LODWORD(v700) = *v914;
                  v702.i32[0] = v913.i32[3];
                  v701.i32[0] = v913.i32[2];
                  *v707.i32 = ((*&v912.i32[3] * *&v914[8]) + (*v912.i32 * *&v914[4])) + (*&v913.i32[2] * *&v914[12]);
                  *v703.i32 = ((*&v914[8] * *v913.i32) + (*&v912.i32[1] * *&v914[4])) + (*&v913.i32[3] * *&v914[12]);
                  *v704.i32 = ((*&v914[8] * *&v913.i32[1]) + (*&v912.i32[2] * *&v914[4])) + (*v914 * *&v914[12]);
                  v710 = v138[4];
                  v711 = v138[1];
                  if ((*v138 & 0x7FFFFFFFuLL) >= 8)
                  {
                    v898 = v698;
                    v712 = (*v138 & 0x7FFFFFFF) - (*v138 & 7);
                    v714 = (v711 + 8 * v712);
                    v715 = &v710[3 * v712];
                    v716 = vdupq_lane_s32(v705, 0);
                    v717 = vdupq_lane_s32(*v701.i8, 0);
                    v718 = vdupq_lane_s32(v707, 0);
                    v719 = vdupq_lane_s32(v706, 0);
                    v720 = vdupq_lane_s32(v702, 0);
                    v721 = vdupq_lane_s32(v703, 0);
                    v722 = (v711 + 32);
                    v723 = vdupq_lane_s32(*v708.i8, 0);
                    v708 = 0uLL;
                    v724 = v712;
                    v725 = vdupq_lane_s32(*&v700, 0);
                    v726 = 0uLL;
                    v727 = vdupq_lane_s32(v704, 0);
                    v699 = *v905.i64;
                    do
                    {
                      v728 = v710;
                      v941 = vld3q_f32(v728);
                      v728 += 12;
                      v948 = vld3q_f32(v728);
                      v729 = v722 - 8;
                      v730 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v941.val[1], *&v912.i32[3]), v941.val[0], v716), v941.val[2], v717), v718);
                      v731 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v941.val[1], *v913.i32), v941.val[0], v719), v941.val[2], v720), v721);
                      v732 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v941.val[1], *&v913.i32[1]), v941.val[0], v723), v941.val[2], v725);
                      v733 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v948.val[1], *v913.i32), v948.val[0], v719), v948.val[2], v720);
                      v734 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v948.val[1], *&v913.i32[1]), v948.val[0], v723), v948.val[2], v725);
                      *v941.val[0].f32 = vld2q_f32(v729);
                      v941.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v948.val[1], *&v912.i32[3]), v948.val[0], v716), v948.val[2], v717), v718);
                      *v948.val[0].f32 = vld2q_f32(v722);
                      v735 = vmlsq_f32(v731, v730, v941.val[0]);
                      v736 = vmlsq_f32(vsubq_f32(v732, v727), v730, v941.val[1]);
                      v737 = vmlsq_f32(vsubq_f32(v734, v727), v941.val[2], v948.val[1]);
                      v738 = vmlsq_f32(vsubq_f32(v733, v721), v941.val[2], v948.val[0]);
                      v708 = vsubq_s32(v708, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v730, v730), v905), vmlaq_f32(vmulq_f32(v736, v736), v735, v735)), vcgtzq_f32(v730)));
                      v726 = vsubq_s32(v726, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v941.val[2], v941.val[2]), v905), vmlaq_f32(vmulq_f32(v737, v737), v738, v738)), vcgtzq_f32(v941.val[2])));
                      v722 += 16;
                      v710 += 24;
                      v724 -= 8;
                    }

                    while (v724);
                    v713 = vaddvq_s32(vaddq_s32(v726, v708));
                    v501 = v846;
                    v504 = 1.0;
                    v505 = -1.0;
                    v698 = v898;
                    v705.i32[0] = v912.i32[0];
                    v708.i32[0] = v912.i32[2];
                    *v707.i32 = ((*&v912.i32[3] * *&v914[8]) + (*v912.i32 * *&v914[4])) + (*&v913.i32[2] * *&v914[12]);
                    v706.i32[0] = v912.i32[1];
                    if ((v709 & 7) != 0)
                    {
                      goto LABEL_474;
                    }
                  }

                  else
                  {
                    LODWORD(v712) = 0;
                    v713 = 0;
                    v714 = v138[1];
                    v715 = v138[4];
LABEL_474:
                    v739 = v709 - v712;
                    do
                    {
                      v740 = v715[1];
                      v741 = v715[2];
                      v742 = (((*&v912.i32[3] * v740) + (*v705.i32 * *v715)) + (*&v913.i32[2] * v741)) - *v707.i32;
                      v743 = (*&v913.i32[1] * v740) + (*v708.i32 * *v715);
                      v744 = (((*v913.i32 * v740) + (*v706.i32 * *v715)) + (*&v913.i32[3] * v741)) - *v703.i32;
                      v745 = (v743 + (*v914 * v741)) - *v704.i32;
                      v746 = *v714;
                      v747 = v714[1];
                      v714 += 2;
                      *&v699 = ((v745 - (v747 * v742)) * (v745 - (v747 * v742))) + ((v744 - (v746 * v742)) * (v744 - (v746 * v742)));
                      v749 = v742 > 0.0 && *&v699 < ((v742 * v742) * 0.000016);
                      v713 += v749;
                      v715 += 3;
                      --v739;
                    }

                    while (v739);
                  }
                }

                if (v713 >= v541[3].i32[0])
                {
                  v751 = v912;
                  HIDWORD(v750) = v913.i32[1];
                  v752 = *v914;
                  v541[1] = v913;
                  v541[2] = v752;
                  *v541 = v751;
                  v541[3].i32[0] = v713;
                  LODWORD(v750) = 998445679;
                  vl_pose_count_inliers(&v912, v138, v851, 0, &v919, fmaxf(v698 + v698, 0.004), v750, *v752.i64, *v751.i64, v699, v700, v701);
                  vl_pose_refine(&v912, &v919, &v920 + 1, 2, &v912, 0, 1.0, 0.0, 0.0);
                  v762 = *v138;
                  if (*v138 < 1)
                  {
                    v766 = 0;
                  }

                  else
                  {
                    v753.i32[0] = v912.i32[2];
                    v760.i32[0] = v912.i32[1];
                    v759.i32[0] = v912.i32[0];
                    v754.i32[0] = *v914;
                    v756.i32[0] = v913.i32[3];
                    v755.i32[0] = v913.i32[2];
                    *v761.i32 = ((*&v912.i32[3] * *&v914[8]) + (*v912.i32 * *&v914[4])) + (*&v913.i32[2] * *&v914[12]);
                    *v757.i32 = ((*&v914[8] * *v913.i32) + (*&v912.i32[1] * *&v914[4])) + (*&v913.i32[3] * *&v914[12]);
                    *v758.i32 = ((*&v914[8] * *&v913.i32[1]) + (*&v912.i32[2] * *&v914[4])) + (*v914 * *&v914[12]);
                    v763 = v138[4];
                    v764 = v138[1];
                    if ((*v138 & 0x7FFFFFFFuLL) >= 8)
                    {
                      v765 = (*v138 & 0x7FFFFFFF) - (*v138 & 7);
                      v767 = (v764 + 8 * v765);
                      v768 = &v763[3 * v765];
                      v769 = vdupq_lane_s32(v759, 0);
                      v770 = vdupq_lane_s32(v755, 0);
                      v771 = vdupq_lane_s32(v761, 0);
                      v772 = vdupq_lane_s32(v760, 0);
                      v773 = vdupq_lane_s32(v756, 0);
                      v774 = vdupq_lane_s32(v757, 0);
                      v775 = (v764 + 32);
                      v776 = vdupq_lane_s32(v753, 0);
                      v777 = 0uLL;
                      v778 = v765;
                      v779 = vdupq_lane_s32(v754, 0);
                      v780 = 0uLL;
                      v781 = vdupq_lane_s32(v758, 0);
                      do
                      {
                        v782 = v763;
                        v942 = vld3q_f32(v782);
                        v782 += 12;
                        v949 = vld3q_f32(v782);
                        v783 = v775 - 8;
                        v784 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v942.val[1], *&v912.i32[3]), v942.val[0], v769), v942.val[2], v770), v771);
                        v785 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v942.val[1], *v913.i32), v942.val[0], v772), v942.val[2], v773), v774);
                        v786 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v942.val[1], *&v913.i32[1]), v942.val[0], v776), v942.val[2], v779);
                        v787 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v949.val[1], *v913.i32), v949.val[0], v772), v949.val[2], v773);
                        v788 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v949.val[1], *&v913.i32[1]), v949.val[0], v776), v949.val[2], v779);
                        *v942.val[0].f32 = vld2q_f32(v783);
                        v942.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v949.val[1], *&v912.i32[3]), v949.val[0], v769), v949.val[2], v770), v771);
                        *v949.val[0].f32 = vld2q_f32(v775);
                        v789 = vmlsq_f32(v785, v784, v942.val[0]);
                        v790 = vmlsq_f32(vsubq_f32(v786, v781), v784, v942.val[1]);
                        v791 = vmlsq_f32(vsubq_f32(v788, v781), v942.val[2], v949.val[1]);
                        v792 = vmlsq_f32(vsubq_f32(v787, v774), v942.val[2], v949.val[0]);
                        v777 = vsubq_s32(v777, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v784, v784), v905), vmlaq_f32(vmulq_f32(v790, v790), v789, v789)), vcgtzq_f32(v784)));
                        v780 = vsubq_s32(v780, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v942.val[2], v942.val[2]), v905), vmlaq_f32(vmulq_f32(v791, v791), v792, v792)), vcgtzq_f32(v942.val[2])));
                        v775 += 16;
                        v763 += 24;
                        v778 -= 8;
                      }

                      while (v778);
                      v766 = vaddvq_s32(vaddq_s32(v780, v777));
                      v501 = v846;
                      v504 = 1.0;
                      v505 = -1.0;
                      v759.i32[0] = v912.i32[0];
                      *v761.i32 = ((*&v912.i32[3] * *&v914[8]) + (*v912.i32 * *&v914[4])) + (*&v913.i32[2] * *&v914[12]);
                      v760.i32[0] = v912.i32[1];
                      if ((v762 & 7) != 0)
                      {
                        goto LABEL_490;
                      }
                    }

                    else
                    {
                      LODWORD(v765) = 0;
                      v766 = 0;
                      v767 = v138[1];
                      v768 = v138[4];
LABEL_490:
                      v793 = v762 - v765;
                      do
                      {
                        v794 = v768[1];
                        v795 = v768[2];
                        v796 = (((*&v912.i32[3] * v794) + (*v759.i32 * *v768)) + (*&v913.i32[2] * v795)) - *v761.i32;
                        v797 = (*&v913.i32[1] * v794) + (*&v912.i32[2] * *v768);
                        v798 = (((*v913.i32 * v794) + (*v760.i32 * *v768)) + (*&v913.i32[3] * v795)) - *v757.i32;
                        v799 = (v797 + (*v914 * v795)) - *v758.i32;
                        v800 = *v767;
                        v801 = v767[1];
                        v767 += 2;
                        v802 = ((v799 - (v801 * v796)) * (v799 - (v801 * v796))) + ((v798 - (v800 * v796)) * (v798 - (v800 * v796)));
                        v804 = v796 > 0.0 && v802 < ((v796 * v796) * 0.000016);
                        v766 += v804;
                        v768 += 3;
                        --v793;
                      }

                      while (v793);
                    }
                  }

                  if (v766 >= v541[3].i32[0])
                  {
                    v805 = v912;
                    v806 = *v914;
                    v541[1] = v913;
                    v541[2] = v806;
                    *v541 = v805;
                    v541[3].i32[0] = v766;
                  }
                }
              }
            }

            free(*(&v919 + 1));
            free(v921);
            free(*(&v922 + 1));
            if (v541[3].i32[0] > *(v907 + 12) && ((((v501 * *&v541[1].i32[3]) + (*&v541[1].i32[2] * v844)) + (*v541[2].i32 * v843)) / (sqrtf((((v846 * v846) + (v844 * v844)) + (v843 * v843)) * (((*&v541[1].i32[3] * *&v541[1].i32[3]) + (*&v541[1].i32[2] * *&v541[1].i32[2])) + (*v541[2].i32 * *v541[2].i32))) + 1.0e-20)) > 0.99619)
            {
              v807 = *v541;
              v808 = v541[1];
              v809 = v541[2];
              v907[12] = *v541[3].i32;
              *(v907 + 1) = v808;
              *(v907 + 2) = v809;
              *v907 = v807;
            }

            ++v502;
            v506 = v540;
            if (v502 == v503)
            {
              goto LABEL_503;
            }

            continue;
          }
        }
      }

      v269 = 0;
      v270 = 0;
      v271 = v849[1].f32[1];
      v272 = v849[2].f32[0];
      v273 = v924;
      v274 = v925;
      v275 = v926;
      while (1)
      {
        if ((((*(&v921 + 2) - v272) * (*(&v921 + 2) - v272)) + ((*(&v921 + 1) - v271) * (*(&v921 + 1) - v271))) > 6400.0)
        {
          goto LABEL_255;
        }

        v279 = v138[4];
        if (!v253)
        {
          v280 = (v279 + 12 * v275);
          v873 = *v280;
          v872 = v280[1];
          v870 = v280[2];
        }

        v281 = (v279 + 12 * v273);
        v282 = *v281;
        v283 = v281[1];
        v284 = (v279 + 12 * v274);
        v285 = *v284;
        v286 = v284[1];
        *&v260 = *&v919;
        v261 = *(&v919 + 3);
        *v262.i64 = *(&v920 + 2);
        *v266.i64 = *(&v919 + 3) * (v283 - *(&v921 + 2)) + *&v919 * (*v281 - *(&v921 + 1));
        *v266.i32 = *v266.i64 + *(&v920 + 2) * (v281[2] - *(&v921 + 3));
        *v265.i64 = (v284[2] - *(&v921 + 3));
        *v267.i64 = *(&v919 + 3) * (v286 - *(&v921 + 2));
        *v264.i64 = *v267.i64 + *&v919 * (*v284 - *(&v921 + 1)) + *(&v920 + 2) * *v265.i64;
        v265.f32[0] = *v264.i64;
        if (*v266.i32 >= v265.f32[0])
        {
          v287 = *v264.i64;
        }

        else
        {
          v287 = *v266.i32;
        }

        if (*v266.i32 > v265.f32[0])
        {
          v265.f32[0] = *v266.i32;
        }

        if ((v253 & 1) == 0)
        {
          *v266.i64 = (v873 - *(&v921 + 1));
          *v267.i64 = (v872 - *(&v921 + 2));
          *v263.i64 = (v870 - *(&v921 + 3));
          v261 = v261 * *v267.i64;
          *&v260 = v261 + *&v260 * *v266.i64 + *v262.i64 * *v263.i64;
          *&v260 = *&v260;
          if (v287 >= *&v260)
          {
            v287 = *&v260;
          }

          if (v265.f32[0] <= *&v260)
          {
            v265.f32[0] = *&v260;
          }
        }

        if ((v287 / v265.f32[0]) < -0.1)
        {
          goto LABEL_255;
        }

        v288 = v138[7];
        v289 = (v288 + 12 * v273);
        v290 = *(&v921 + 1) - v282;
        v291 = *(&v921 + 2) - v283;
        v292 = v289[1];
        *v262.i64 = ((v291 * v292) + (v290 * *v289));
        *&v260 = *v262.i64 / (sqrt((((v291 * v291) + (v290 * v290)) * ((v292 * v292) + (*v289 * *v289)))) + 1.0e-20);
        if (*&v260 < 0.258819073)
        {
          goto LABEL_255;
        }

        v293 = (v288 + 12 * v274);
        v294 = *(&v921 + 1) - v285;
        v295 = *(&v921 + 2) - v286;
        v296 = v293[1];
        *v262.i64 = ((v295 * v296) + (v294 * *v293));
        v297 = *v262.i64 / (sqrt((((v295 * v295) + (v294 * v294)) * ((v296 * v296) + (*v293 * *v293)))) + 1.0e-20);
        v298 = v297 < 0.258819073 ? 1 : v253;
        if (v298)
        {
          break;
        }

        v300 = (v288 + 12 * v275);
        v301 = v300[1];
        *&v260 = (((*(&v921 + 2) - v872) * v301) + ((*(&v921 + 1) - v873) * *v300));
        v302 = *&v260 / (sqrt(((((*(&v921 + 2) - v872) * (*(&v921 + 2) - v872)) + ((*(&v921 + 1) - v873) * (*(&v921 + 1) - v873))) * ((v301 * v301) + (*v300 * *v300)))) + 1.0e-20);
        v299 = v253;
        if (v302 < 0.258819073)
        {
          goto LABEL_277;
        }

LABEL_254:
        v276 = &v919 + 3 * v270;
        v277 = *(&v919 + v269);
        v278 = *(&v921 + v269);
        v276[1] = *(&v919 + v269 + 16);
        v276[2] = v278;
        *v276 = v277;
        ++v270;
LABEL_255:
        v269 += 48;
        if (48 * v259 == v269)
        {
          goto LABEL_281;
        }
      }

      v299 = (v297 >= 0.258819073) & v253;
LABEL_277:
      if (!v299)
      {
        goto LABEL_255;
      }

      goto LABEL_254;
    }

    v209 = 0.0;
    v210.f32[0] = (v143 * -0.0) + (v142.f32[1] * 0.0);
    v211 = v143 + (v142.f32[0] * -0.0);
    v212 = -(v142.f32[1] - (v142.f32[0] * 0.0));
    v213 = (v211 * v143) - (v212 * v142.f32[1]);
    v214 = (v212 * v142.f32[0]) - (v210.f32[0] * v143);
    v215 = (v210.f32[0] * v142.f32[1]) - (v211 * v142.f32[0]);
    v216 = sqrt((((v214 * v214) + (v213 * v213)) + (v215 * v215)));
    v217 = 0.0;
    v218 = 0.0;
    v219 = 0.0;
    if (v216 > 0.0)
    {
      v217 = v213 / v216;
      v218 = v214 / v216;
      v219 = v215 / v216;
    }

    v220 = sqrt((((v211 * v211) + (v210.f32[0] * v210.f32[0])) + (v212 * v212)));
    v221 = 0;
    v222 = 0;
    if (v220 > 0.0)
    {
      v210.f32[1] = v143 + (v142.f32[0] * -0.0);
      v222 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v210), vdupq_lane_s64(*&v220, 0)));
      v209 = v212 / v220;
    }

    v223 = sqrt((((v142.f32[1] * v142.f32[1]) + (v142.f32[0] * v142.f32[0])) + (v143 * v143)));
    v224 = 0.0;
    v844 = 0.0;
    if (v223 > 0.0)
    {
      v221 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v142), vdupq_lane_s64(*&v223, 0)));
      v224 = v143 / v223;
    }

    v927[0].i64[0] = __PAIR64__(LODWORD(v218), LODWORD(v217));
    v927[0].f32[2] = v219;
    *(&v927[0].i64[1] + 4) = v222;
    v927[1].f32[1] = v209;
    *&v927[1].u32[2] = v221;
    v928 = v224;
    v225 = *v884;
    if (*v884 < 1)
    {
      v843 = 1.0;
      goto LABEL_235;
    }

    v226 = v884[1];
    if (v225 >= 4)
    {
      v843 = 1.0;
      if (v226 >= v929 || v927 >= v226 + 8 * v225)
      {
        v227 = v225 & 0x7FFFFFFFFFFFFFFCLL;
        v232 = v225 & 0x7FFFFFFFFFFFFFFCLL;
        v233 = v884[1];
        do
        {
          v930 = vld2q_f32(v233);
          v234 = vmlaq_n_f32(vmlaq_n_f32(vdupq_lane_s32(*&vaddq_f32(v927[0], 0), 0), v930.val[0], v927[0].f32[1]), v930.val[1], v927[0].f32[2]);
          v235 = vmlaq_n_f32(vmlaq_n_f32(vdupq_lane_s32(vadd_f32(*&v927[1].u32[2], 0), 0), v930.val[0], v927[1].f32[3]), v930.val[1], v928);
          v930.val[0] = vdivq_f32(vmlaq_n_f32(vmlaq_n_f32(vdupq_lane_s32(*&vaddq_f32(*(v927 + 12), 0), 0), v930.val[0], v927[1].f32[0]), v930.val[1], v927[1].f32[1]), v234);
          v930.val[1] = vdivq_f32(v235, v234);
          vst2q_f32(v233, v930);
          v233 += 8;
          v232 -= 4;
        }

        while (v232);
        if (v225 == v227)
        {
LABEL_235:
          v208 = 0.0;
          v842 = a9;
          if (v854 < 1)
          {
            goto LABEL_503;
          }

          goto LABEL_236;
        }
      }

      else
      {
        v227 = 0;
      }
    }

    else
    {
      v843 = 1.0;
      v227 = 0;
    }

    v236 = v225 - v227;
    v237 = (v226 + 8 * v227 + 4);
    do
    {
      v238 = *(v237 - 1);
      v239 = ((v927[0].f32[0] + 0.0) + (v927[0].f32[1] * v238)) + (v927[0].f32[2] * *v237);
      v240 = (((v927[0].f32[3] + 0.0) + (v927[1].f32[0] * v238)) + (v927[1].f32[1] * *v237)) / v239;
      v241 = (((v927[1].f32[2] + 0.0) + (v927[1].f32[3] * v238)) + (v928 * *v237)) / v239;
      *(v237 - 1) = v240;
      *v237 = v241;
      v237 += 2;
      --v236;
    }

    while (v236);
    v844 = 0.0;
    goto LABEL_235;
  }

  v843 = v143;
  v194 = v849->f32[1];
  v193 = v849[1].f32[0];
  v195 = v849->f32[0];
  v196 = sqrtf(((v193 * v193) + (v194 * v194)) + (v195 * v195));
  v197 = 0.0;
  v198 = 0.0;
  v199 = 0.0;
  if (v196 > 0.0)
  {
    v197 = v194 / v196;
    v198 = v193 / v196;
    v199 = v195 / v196;
  }

  v200 = (v199 * -0.0) + (v198 * 0.0);
  v201 = v199 + (v197 * -0.0);
  v202 = -(v198 - (v197 * 0.0));
  v203 = ((v201 * v201) + (v200 * v200)) + (v202 * v202);
  if (sqrt(v203) <= 0.00001)
  {
    __assert_rtn("vl_pose_p2p_get_base_from_z", "vl_pose_p2p.c", 107, "g_len3(&ya) > 1e-5 && new_z_axis and x_ini are too similar.");
  }

  v204 = sqrtf(v203);
  v205 = 0.0;
  v206 = 0.0;
  v207 = 0.0;
  if (v204 > 0.0)
  {
    v207 = v200 / v204;
    v206 = v201 / v204;
    v205 = v202 / v204;
  }

  v927[0].f32[0] = (v206 * v199) - (v205 * v198);
  *(v927[0].i64 + 4) = __PAIR64__(LODWORD(v197), LODWORD(v207));
  v927[0].f32[3] = (v205 * v197) - (v207 * v199);
  v927[1].i64[0] = __PAIR64__(LODWORD(v198), LODWORD(v206));
  v927[1].f32[2] = (v207 * v198) - (v206 * v197);
  v927[1].f32[3] = v205;
  v928 = v199;
  v208 = v142.f32[1];
  v844 = v142.f32[0];
  v842 = a9;
  if (v854 >= 1)
  {
    goto LABEL_236;
  }

LABEL_503:
  v810 = *v907;
  v811 = *(v907 + 2);
  *(v842 + 16) = *(v907 + 1);
  *(v842 + 32) = v811;
  *v842 = v810;
  if (v857 == 32)
  {
    *v842 = 0;
    v812 = v927[0].i64[0];
    v813 = (*v907 * v927[0].f32[0]) + 0.0;
    *v842 = v813;
    v814 = v927[0].i64[1];
    v815 = v813 + (v907[1] * v927[0].f32[3]);
    *v842 = v815;
    v816 = v927[1].i64[1];
    *v842 = v815 + (v907[2] * v927[1].f32[2]);
    *(v842 + 4) = 0;
    v817 = (*v907 * *(&v812 + 1)) + 0.0;
    *(v842 + 4) = v817;
    v818 = v927[1].i64[0];
    v819 = v817 + (v907[1] * v927[1].f32[0]);
    *(v842 + 4) = v819;
    *(v842 + 4) = v819 + (v907[2] * *(&v816 + 1));
    *(v842 + 8) = 0;
    v820 = (*v907 * *&v814) + 0.0;
    *(v842 + 8) = v820;
    v821 = v820 + (v907[1] * *(&v818 + 1));
    *(v842 + 8) = v821;
    v822 = v928;
    *(v842 + 8) = v821 + (v907[2] * v928);
    *(v842 + 12) = 0;
    v823 = (v907[3] * *&v812) + 0.0;
    *(v842 + 12) = v823;
    v824 = v823 + (v907[4] * *(&v814 + 1));
    *(v842 + 12) = v824;
    *(v842 + 12) = v824 + (v907[5] * *&v816);
    *(v842 + 16) = 0;
    v825 = (v907[3] * *(&v812 + 1)) + 0.0;
    *(v842 + 16) = v825;
    v826 = v825 + (v907[4] * *&v818);
    *(v842 + 16) = v826;
    *(v842 + 16) = v826 + (v907[5] * *(&v816 + 1));
    *(v842 + 20) = 0;
    v827 = (v907[3] * *&v814) + 0.0;
    *(v842 + 20) = v827;
    v828 = v827 + (v907[4] * *(&v818 + 1));
    *(v842 + 20) = v828;
    *(v842 + 20) = v828 + (v907[5] * v822);
    *(v842 + 24) = 0;
    v829 = (v907[6] * *&v812) + 0.0;
    *(v842 + 24) = v829;
    v830 = v829 + (v907[7] * *(&v814 + 1));
    *(v842 + 24) = v830;
    *(v842 + 24) = v830 + (v907[8] * *&v816);
    *(v842 + 28) = 0;
    v831 = (v907[6] * *(&v812 + 1)) + 0.0;
    *(v842 + 28) = v831;
    v832 = v831 + (v907[7] * *&v818);
    *(v842 + 28) = v832;
    *(v842 + 28) = v832 + (v907[8] * *(&v816 + 1));
    *(v842 + 32) = 0;
    v833 = (v907[6] * *&v814) + 0.0;
    *(v842 + 32) = v833;
    v834 = v833 + (v907[7] * *(&v818 + 1));
    *(v842 + 32) = v834;
    *(v842 + 32) = v834 + (v907[8] * v822);
  }

  free(v907);
  free(v853);
  v153 = 1;
  if (!*(v138 + 71))
  {
LABEL_506:
    clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (v138 + 17));
    clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (v138 + 19));
    clock_gettime(_CLOCK_MONOTONIC, (v138 + 15));
    v835 = v138[16] - v138[10] + 1000000000 * (v138[15] - v138[9]);
    v836 = v138[18] - v138[12] + 1000000000 * (v138[17] - v138[11]);
    v837 = v138[20] - v138[14] + 1000000000 * (v138[19] - v138[13]);
    v838 = v138[25];
    v839 = v835 + v138[24];
    v138[21] = v835;
    v138[22] = v836;
    v840 = v836 + v838;
    v138[23] = v837;
    v138[24] = v839;
    v841 = v837 + v138[26];
    v138[25] = v840;
    v138[26] = v841;
    ++*(v138 + 54);
    if (!*(v138 + 71))
    {
      goto LABEL_507;
    }

    goto LABEL_155;
  }

LABEL_154:
  v138[24] += mach_absolute_time();
  if (!*(v138 + 71))
  {
LABEL_507:
    log_col_app("%s%s%s:%s%7.1fms%s", &str_4_1, v138 + 220, &str_4_1, &str_4_1, v138[21] * 0.000001, &str_4_1);
    return v153;
  }

LABEL_155:
  printf("Verbose : ");
  printf("Total time for %40s : %7.3f ms", v138 + 220, v138[24] * 0.000001);
  putchar(10);
  return v153;
}

uint64_t sss_par_version@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_271105740;
  *(a2 + 16) = xmmword_271105750;
  *(a2 + 32) = 0;
  *(a2 + 36) = 0x3DCCCCCD3F800000;
  *(a2 + 44) = xmmword_271105760;
  if (result <= 103)
  {
    if (result > 100)
    {
      if (result == 101)
      {
        *(a2 + 40) = 1065353216;
        *(a2 + 32) = 1;
        *(a2 + 24) = 2;
        *(a2 + 52) = 4;
        v2 = 0xA00000040;
      }

      else
      {
        *(a2 + 40) = 1065353216;
        *(a2 + 32) = 1;
        *(a2 + 24) = 2;
        if (result == 102)
        {
          *(a2 + 52) = 10;
          v2 = 0x1000000040;
        }

        else
        {
          *(a2 + 52) = 2;
          v2 = 0x600000040;
        }
      }

      goto LABEL_23;
    }

    if (!result)
    {
      return result;
    }

    if (result == 100)
    {
      *(a2 + 40) = 1065353216;
      *(a2 + 32) = 1;
      *(a2 + 24) = 2;
      v2 = 0x800000040;
      goto LABEL_23;
    }

LABEL_25:
    __assert_rtn("sss_par_version", "sss.c", 255, "0 && Not implemented");
  }

  if (result <= 200)
  {
    if (result != 104)
    {
      if (result == 200)
      {
        *(a2 + 24) = 2;
        *(a2 + 48) = 6;
        v2 = 0x200000050;
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    *(a2 + 40) = 1065353216;
    *(a2 + 32) = 1;
    *(a2 + 24) = 2;
    *(a2 + 52) = 2;
LABEL_20:
    v2 = 0x400000050;
    goto LABEL_23;
  }

  if (result == 201)
  {
    *(a2 + 24) = 2;
    *(a2 + 48) = 6;
    v2 = 0x300000050;
    goto LABEL_23;
  }

  if (result == 202)
  {
    *(a2 + 24) = 2;
    *(a2 + 48) = 0x100000006;
    goto LABEL_20;
  }

  if (result != 706)
  {
    goto LABEL_25;
  }

  *(a2 + 40) = 1065353216;
  *(a2 + 32) = 1;
  *(a2 + 24) = 2;
  *(a2 + 52) = 2;
  v2 = 0x800000060;
LABEL_23:
  *(a2 + 16) = v2;
  return result;
}

_DWORD *sss_create_ids(void *a1, const void *a2, int a3, unsigned int a4, _DWORD *a5)
{
  v50 = malloc_type_calloc(1uLL, 0x108uLL, 0x10200408B489881uLL);
  v10 = a1;
  v49 = a3;
  if (!*a5)
  {
    v10 = a1;
    if (a5[14] > 1)
    {
      if (a1)
      {
        v10 = malloc_type_malloc((a4 * a3), 0x47083B8CuLL);
        memcpy(v10, a1, (a4 * a3));
      }

      else
      {
        v10 = 0;
      }
    }
  }

  v45 = a1;
  __src = v10;
  v50[65] = a3;
  v50[64] = a5[5];
  v11 = malloc_type_malloc(8 * a4 + a4 * a3, 0x100004052888210uLL);
  v12 = v11;
  v13 = a5[5];
  v14 = (v13 - 1);
  if (v13 >= 1)
  {
    v15 = a4 * a3;
    v48 = &v11[v15];
    v47 = &v11[4 * a4 + v15];
    if (a2)
    {
      if (__src)
      {
        do
        {
          v51 = v14 + a5[1];
          if (v14 || (v16 = v45, *a5))
          {
            v16 = malloc_type_malloc(v15, 0x47083B8CuLL);
            memcpy(v16, __src, v15);
          }

          v17 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B004018EF0026uLL);
          v18 = malloc_type_malloc(4 * a4, 0x47083B8CuLL);
          memcpy(v18, a2, 4 * a4);
          v17[4] = v16;
          v17[5] = v18;
          *(v17 + 12) = a4;
          *&v50[2 * v14] = v17;
          sss_split_km(v17, a5, v49, &v51, v12, v48, v47, 0);
          v19 = v14-- <= 0;
        }

        while (!v19);
      }

      else
      {
        do
        {
          v51 = v14 + a5[1];
          if (v14 || (v20 = v45, *a5))
          {
            v20 = 0;
          }

          v21 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B004018EF0026uLL);
          v22 = malloc_type_malloc(4 * a4, 0x47083B8CuLL);
          memcpy(v22, a2, 4 * a4);
          v21[4] = v20;
          v21[5] = v22;
          *(v21 + 12) = a4;
          *&v50[2 * v14] = v21;
          sss_split_km(v21, a5, a3, &v51, v12, v48, v47, 0);
          v19 = v14-- <= 0;
        }

        while (!v19);
      }

      goto LABEL_47;
    }

    v44 = a4 & 0x7FFFFFF8;
    if (__src)
    {
      while (1)
      {
        v23 = v13;
        v13 = v14;
        v51 = a5[1] + v14;
        if (v23 != 1 || (v24 = v45, *a5))
        {
          v24 = malloc_type_malloc(v15, 0x47083B8CuLL);
          memcpy(v24, __src, v15);
        }

        v25 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B004018EF0026uLL);
        v26 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
        if (a4 < 1)
        {
          goto LABEL_22;
        }

        if (a4 >= 8)
        {
          v28 = v26 + 1;
          v29 = a4 & 0x7FFFFFF8;
          v30 = xmmword_271103920;
          v31.i64[0] = 0x400000004;
          v31.i64[1] = 0x400000004;
          v32.i64[0] = 0x800000008;
          v32.i64[1] = 0x800000008;
          do
          {
            v28[-1] = v30;
            *v28 = vaddq_s32(v30, v31);
            v30 = vaddq_s32(v30, v32);
            v28 += 2;
            v29 -= 8;
          }

          while (v29);
          v27 = a4 & 0x7FFFFFF8;
          if (v44 == a4)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v27 = 0;
        }

        do
        {
          v26->i32[v27] = v27;
          ++v27;
        }

        while (a4 != v27);
LABEL_22:
        v25[4] = v24;
        v25[5] = v26;
        *(v25 + 12) = a4;
        *&v50[2 * v14] = v25;
        sss_split_km(v25, a5, a3, &v51, v12, v48, v47, 0);
        v19 = v14-- <= 0;
        if (v19)
        {
          goto LABEL_47;
        }
      }
    }

    do
    {
      v33 = v13;
      v13 = v14;
      v51 = a5[1] + v14;
      if (v33 != 1 || (v34 = v45, *a5))
      {
        v34 = 0;
      }

      v35 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B004018EF0026uLL);
      v36 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
      if (a4 < 1)
      {
        goto LABEL_35;
      }

      if (a4 >= 8)
      {
        v38 = v36 + 1;
        v39 = a4 & 0x7FFFFFF8;
        v40 = xmmword_271103920;
        v41.i64[0] = 0x400000004;
        v41.i64[1] = 0x400000004;
        v42.i64[0] = 0x800000008;
        v42.i64[1] = 0x800000008;
        do
        {
          v38[-1] = v40;
          *v38 = vaddq_s32(v40, v41);
          v40 = vaddq_s32(v40, v42);
          v38 += 2;
          v39 -= 8;
        }

        while (v39);
        v37 = a4 & 0x7FFFFFF8;
        if (v44 == a4)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v37 = 0;
      }

      do
      {
        v36->i32[v37] = v37;
        ++v37;
      }

      while (a4 != v37);
LABEL_35:
      v35[4] = v34;
      v35[5] = v36;
      *(v35 + 12) = a4;
      *&v50[2 * v14] = v35;
      sss_split_km(v35, a5, a3, &v51, v12, v48, v47, 0);
      v19 = v14-- <= 0;
    }

    while (!v19);
  }

LABEL_47:
  free(v12);
  if (__src != v45)
  {
    free(__src);
  }

  return v50;
}

void sss_split_km(void **a1, _DWORD *a2, uint64_t a3, unsigned int *a4, char *a5, uint64_t a6, unsigned int *a7, int a8)
{
  v8 = a2[3];
  v9 = *(a1 + 12) / a2[4];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v10 < 2)
  {
    return;
  }

  v264 = v10 * a3;
  *a1 = malloc_type_malloc(v264, 0xFE2BA123uLL);
  a1[1] = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  *(a1 + 4) = v10;
  a1[3] = malloc_type_calloc(v10, 0x38uLL, 0x10B004018EF0026uLL);
  v263 = 4 * v10;
  v14 = malloc_type_malloc(v263, 0x100004052888210uLL);
  v15 = 0;
  v16 = *(a1 + 12);
  v17 = v10 - 1;
  do
  {
    v19 = rand_r(a4) % (v16 - v15);
    if (v15)
    {
      v20 = v17;
      while (1)
      {
        v21 = &v14[v20];
        v22 = *(v21 + 1);
        if (v19 < v22)
        {
          break;
        }

        v18 = v20 + 1;
        v23 = v14[v20];
        v14[v20] = v22;
        *(v21 + 1) = v23;
        ++v19;
        v20 = v18;
        if (v18 >= (v10 - 1))
        {
          goto LABEL_7;
        }
      }

      LODWORD(v18) = v20;
    }

    else
    {
      LODWORD(v18) = v10 - 1;
    }

LABEL_7:
    v14[v18] = v19;
    ++v15;
    --v17;
  }

  while (v15 != v10);
  if (a3 >= 1)
  {
    v24 = 0;
    for (i = 0; i != v10; ++i)
    {
      v26 = 0;
      do
      {
        *(*a1 + v24 + v26) = *(a1[4] + v14[i] * a3 + v26);
        ++v26;
      }

      while (a3 != v26);
      v24 += a3;
    }
  }

  free(v14);
  v27 = malloc_type_malloc(8 * v264, 0x100004000313F17uLL);
  v28 = malloc_type_malloc(v263, 0x100004052888210uLL);
  v29 = malloc_type_malloc(v263, 0x100004052888210uLL);
  v32 = v29;
  LODWORD(v33) = *(a1 + 12);
  if (v33 < 1)
  {
    if (a2[6] < 1)
    {
LABEL_134:
      free(a1[3]);
      a1[3] = 0;
      free(*a1);
      *a1 = 0;
      free(a1[1]);
      v158 = 0;
      a1[1] = 0;
      goto LABEL_135;
    }
  }

  else
  {
    v34 = 0;
    do
    {
      a7[v34++] = -1;
      v33 = *(a1 + 12);
    }

    while (v34 < v33);
    if (a2[6] < 1)
    {
      goto LABEL_134;
    }
  }

  if (a3 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = a3;
  }

  if (v33 < 1)
  {
    goto LABEL_134;
  }

  v259 = v29;
  v36 = 0;
  v37 = 0;
  v38 = a3;
  v39 = a3 & 0x1C;
  v40 = a3 & 0x7FFFFFFC;
  v262 = v35;
  do
  {
    v41 = *a1;
    v42 = a1[4];
    v267 = v42;
    if (a3 == 64)
    {
      v43 = 0;
      v44 = (v41 + 32);
      v45 = 1;
      do
      {
        v46 = 0;
        v47 = 0x7FFFFFFF;
        v48 = v44;
        do
        {
          v49 = vabdq_u8(v48[-2], *v42);
          v50 = vaddlvq_u16(vqaddq_u16(vmull_u8(*v49.i8, *v49.i8), vmull_high_u8(v49, v49)));
          v51 = vabdq_u8(v48[-1], v42[1]);
          v52 = vaddlvq_u16(vqaddq_u16(vmull_u8(*v51.i8, *v51.i8), vmull_high_u8(v51, v51)));
          v53 = vabdq_u8(*v48, v42[2]);
          v54 = v52 + v50 + vaddlvq_u16(vqaddq_u16(vmull_u8(*v53.i8, *v53.i8), vmull_high_u8(v53, v53)));
          v55 = vabdq_u8(v48[1], v42[3]);
          v56 = v54 + vaddlvq_u16(vqaddq_u16(vmull_u8(*v55.i8, *v55.i8), vmull_high_u8(v55, v55)));
          if (v56 < v47)
          {
            if (v43 != a7[v46])
            {
              v45 = 0;
            }

            a7[v43] = v46;
            v47 = v56;
          }

          ++v46;
          v48 += 4;
        }

        while (v10 != v46);
        v42 = (v42 + v38);
        ++v43;
      }

      while (v43 != v33);
      goto LABEL_81;
    }

    if ((a3 & 0xF) != 0)
    {
      if (a3 > 0)
      {
        v57 = 0;
        v58 = a1[4];
        v59 = &v42[1];
        v45 = 1;
        while (1)
        {
          v60 = 0;
          v61 = 0x7FFFFFFF;
          v62 = v41;
          v63 = (v41 + 16);
          do
          {
            if (a3 < 4)
            {
              v64 = 0;
              v65 = 0;
              do
              {
LABEL_56:
                v85 = *(v62 + v64) - v58[v64];
                v65 += v85 * v85;
                ++v64;
              }

              while (a3 != v64);
              goto LABEL_57;
            }

            if (a3 >= 0x20)
            {
              v67 = 0uLL;
              v68 = a3 & 0x7FFFFFE0;
              v69 = 0uLL;
              v70 = v59;
              v71 = v63;
              v72 = 0uLL;
              v73 = 0uLL;
              v74 = 0uLL;
              v75 = 0uLL;
              v76 = 0uLL;
              v77 = 0uLL;
              do
              {
                v78 = *v71[-2].i8;
                v79 = *v70[-2].i8;
                v80 = vsubl_u8(*v78.i8, *v79.i8);
                v81 = vsubl_high_u8(v78, v79);
                v82 = vsubl_u8(*v71, *v70);
                v83 = vsubl_high_u8(*v71->i8, *v70->i8);
                v73 = vmlal_high_s16(v73, v81, v81);
                v72 = vmlal_s16(v72, *v81.i8, *v81.i8);
                v69 = vmlal_high_s16(v69, v80, v80);
                v67 = vmlal_s16(v67, *v80.i8, *v80.i8);
                v77 = vmlal_high_s16(v77, v83, v83);
                v76 = vmlal_s16(v76, *v83.i8, *v83.i8);
                v75 = vmlal_high_s16(v75, v82, v82);
                v74 = vmlal_s16(v74, *v82.i8, *v82.i8);
                v71 += 4;
                v70 += 4;
                v68 -= 32;
              }

              while (v68);
              v31 = vaddq_s32(v76, v72);
              v30 = vaddq_s32(vaddq_s32(v75, v69), vaddq_s32(v77, v73));
              v65 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v74, v67), v31), v30));
              if ((a3 & 0x7FFFFFE0) == a3)
              {
                goto LABEL_57;
              }

              v66 = a3 & 0x7FFFFFE0;
              v64 = v66;
              if (!v39)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v65 = 0;
              v66 = 0;
            }

            v84 = v65;
            do
            {
              v30.i32[0] = *(v62 + v66);
              v31.i32[0] = *&v58[v66];
              v31.i64[0] = vmovl_u8(*v31.i8).u64[0];
              v30 = vsubl_u16(*&vmovl_u8(*v30.i8), *v31.i8);
              v84 = vmlaq_s32(v84, v30, v30);
              v66 += 4;
            }

            while (v40 != v66);
            v65 = vaddvq_s32(v84);
            v64 = a3 & 0x7FFFFFFC;
            if (v40 != a3)
            {
              goto LABEL_56;
            }

LABEL_57:
            if (v65 < v61)
            {
              if (v57 != a7[v60])
              {
                v45 = 0;
              }

              a7[v57] = v60;
              v61 = v65;
            }

            ++v60;
            v63 = (v63 + a3);
            v62 += a3;
          }

          while (v60 != v10);
          v58 += v38;
          ++v57;
          v59 = (v59 + v38);
          if (v57 == v33)
          {
            goto LABEL_81;
          }
        }
      }

      v94 = 0;
      v45 = 1;
      do
      {
        v95 = *a7;
        a7[v94] = 0;
        if (v94 != v95)
        {
          v45 = 0;
        }

        ++v94;
      }

      while (v33 != v94);
    }

    else if (a3 <= 0)
    {
      v96 = 0;
      v45 = 1;
      do
      {
        v97 = *a7;
        a7[v96] = 0;
        if (v96 != v97)
        {
          v45 = 0;
        }

        ++v96;
      }

      while (v33 != v96);
    }

    else
    {
      v86 = 0;
      v45 = 1;
      v87 = a1[4];
      do
      {
        v88 = 0;
        v89 = 0x7FFFFFFF;
        v90 = v41;
        do
        {
          v91 = 0;
          v92 = 0;
          do
          {
            v93 = vabdq_u8(*(v90 + v91), *&v87[v91]);
            v92 += vaddlvq_u16(vqaddq_u16(vmull_u8(*v93.i8, *v93.i8), vmull_high_u8(v93, v93)));
            v91 += 16;
          }

          while (v91 < a3);
          if (v92 < v89)
          {
            if (v86 != a7[v88])
            {
              v45 = 0;
            }

            a7[v86] = v88;
            v89 = v92;
          }

          ++v88;
          v90 += a3;
        }

        while (v88 != v10);
        v87 += v38;
        ++v86;
      }

      while (v86 != v33);
    }

LABEL_81:
    if (v45)
    {
      break;
    }

    v98 = v37;
    if (v264 >= 1)
    {
      bzero(v27, 8 * v264);
    }

    bzero(v28, v263);
    if (a2[7])
    {
      v100 = v98;
      v101 = *(a1 + 12);
      v103 = &v27[8 * a3];
      v102 = a3 & 0x7FFFFFF0;
      v104 = v267;
      if (v98 + 1 >= a2[6])
      {
        v105 = v262;
        v39 = a3 & 0x1C;
        v38 = a3;
        if (v101 >= 1)
        {
          v106 = 0;
          do
          {
            ++v28[a7[v106++]];
          }

          while (v106 < *(a1 + 12));
        }

        goto LABEL_113;
      }
    }

    else
    {
      v101 = *(a1 + 12);
      v100 = v98;
      v103 = &v27[8 * a3];
      v102 = a3 & 0x7FFFFFF0;
      v104 = v267;
    }

    v105 = v262;
    v39 = a3 & 0x1C;
    v38 = a3;
    v107.i64[0] = 255;
    v107.i64[1] = 255;
    if (v101 >= 1)
    {
      v108 = 0;
      v109 = v104;
      while (1)
      {
        v110 = a7[v108];
        if (a3 >= 1)
        {
          break;
        }

LABEL_93:
        ++v28[v110];
        ++v108;
        v109 = (v109 + a3);
        if (v108 >= *(a1 + 12))
        {
          goto LABEL_113;
        }
      }

      v111 = v110 * a3;
      v112 = &v27[8 * v110 * a3];
      if (a3 >= 4)
      {
        if (v112 >= v104->u64 + a3 + v108 * a3 || &v104->i8[v108 * a3] >= &v103[8 * v111])
        {
          if (a3 >= 0x10)
          {
            v116 = v102;
            v117 = v109;
            v118 = &v27[8 * v111];
            do
            {
              v119 = *v117++;
              v120 = vqtbl1q_s8(v119, xmmword_2711050E0);
              v121 = vqtbl1q_s8(v119, xmmword_2711050D0);
              v122 = vqtbl1q_s8(v119, xmmword_2711050C0);
              v123 = vqtbl1q_s8(v119, xmmword_2711050B0);
              v124 = vaddw_u32(*v118, *v120.i8);
              v125 = vaddw_u32(v118[2], *v121.i8);
              v126 = vaddw_u32(v118[4], *v122.i8);
              v127 = vaddw_u32(v118[6], *v123.i8);
              v30 = vaddw_high_u32(v118[1], v120);
              v31 = vaddw_high_u32(v118[3], v121);
              v128 = vaddw_high_u32(v118[5], v122);
              v99 = vaddw_high_u32(v118[7], v123);
              v118[6] = v127;
              v118[7] = v99;
              v118[4] = v126;
              v118[5] = v128;
              v118[2] = v125;
              v118[3] = v31;
              *v118 = v124;
              v118[1] = v30;
              v118 += 8;
              v116 -= 16;
            }

            while (v116);
            if (v102 == a3)
            {
              goto LABEL_93;
            }

            v115 = v102;
            v113 = v102;
            if ((a3 & 0xC) == 0)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v115 = 0;
          }

          v129 = &v27[8 * v115 + 8 * v111];
          do
          {
            v99.i32[0] = *(v109->i32 + v115);
            v130 = vmovl_u16(*&vmovl_u8(*v99.i8));
            v131.i64[0] = v130.u32[2];
            v131.i64[1] = v130.u32[3];
            v132 = vandq_s8(v131, v107);
            v131.i64[0] = v130.u32[0];
            v131.i64[1] = v130.u32[1];
            v31 = v129[1];
            v99 = vaddq_s64(*v129, vandq_s8(v131, v107));
            v30 = vaddq_s64(v31, v132);
            *v129 = v99;
            v129[1] = v30;
            v129 += 2;
            v115 += 4;
          }

          while (v40 != v115);
          v113 = a3 & 0x7FFFFFFC;
          if (v40 == a3)
          {
            goto LABEL_93;
          }

          goto LABEL_111;
        }

        v113 = 0;
      }

      else
      {
        v113 = 0;
      }

      do
      {
LABEL_111:
        *(v112 + 8 * v113) += v109->u8[v113];
        ++v113;
      }

      while (a3 != v113);
      goto LABEL_93;
    }

LABEL_113:
    v133 = 0;
    v134 = 0;
    v36 = 0;
    v37 = v100 + 1;
    do
    {
      if (!v28[v134])
      {
        goto LABEL_114;
      }

      ++v36;
      if (!a2[7])
      {
        if (a3 < 1)
        {
          goto LABEL_114;
        }

LABEL_121:
        v135 = v133;
        v136 = v105;
        do
        {
          *(*a1 + v135) = (*&v27[8 * v135] + v28[v134] / 2) / v28[v134];
          ++v135;
          --v136;
        }

        while (v136);
        goto LABEL_114;
      }

      if (a3 >= 1 && v37 < a2[6])
      {
        goto LABEL_121;
      }

LABEL_114:
      ++v134;
      v133 += v38;
    }

    while (v134 != v10);
    if (v37 >= a2[6])
    {
      break;
    }

    LODWORD(v33) = *(a1 + 12);
  }

  while (v33 >= 1);
  v32 = v259;
  if (v36 <= 1)
  {
    goto LABEL_134;
  }

  v137 = v36;
  v138 = a1[1];
  bzero(v138, v263);
  v141 = *(a1 + 12);
  if (a3 != 64)
  {
    v142 = v137;
    v32 = v259;
    if (v141 < 1)
    {
      goto LABEL_165;
    }

    v165 = 0;
    v166 = *a1;
    v167 = a1[4];
    v168 = *a1 + 16;
    v169 = v167 + 2;
    while (1)
    {
      v172 = a7[v165];
      v173 = v172 * a3;
      v174 = v166 + v173;
      if ((a3 & 0xF) != 0)
      {
        if (a3 >= 1)
        {
          if (a3 < 4)
          {
            v175 = 0;
            v170 = 0;
            do
            {
LABEL_163:
              v202 = *(v174 + v175) - v167->u8[v175];
              v170 += v202 * v202;
              ++v175;
            }

            while (a3 != v175);
            goto LABEL_143;
          }

          if (a3 >= 0x20)
          {
            v179 = 0uLL;
            v180 = &v168[v173];
            v181 = 0uLL;
            v182 = a3 & 0x7FFFFFE0;
            v183 = v169;
            v184 = 0uLL;
            v185 = 0uLL;
            v186 = 0uLL;
            v187 = 0uLL;
            v188 = 0uLL;
            v189 = 0uLL;
            do
            {
              v190 = *v180[-2].i8;
              v191 = *v183[-2].i8;
              v192 = vsubl_u8(*v190.i8, *v191.i8);
              v193 = vsubl_high_u8(v190, v191);
              v194 = vsubl_u8(*v180, *v183);
              v195 = vsubl_high_u8(*v180->i8, *v183->i8);
              v185 = vmlal_high_s16(v185, v193, v193);
              v184 = vmlal_s16(v184, *v193.i8, *v193.i8);
              v181 = vmlal_high_s16(v181, v192, v192);
              v179 = vmlal_s16(v179, *v192.i8, *v192.i8);
              v189 = vmlal_high_s16(v189, v195, v195);
              v188 = vmlal_s16(v188, *v195.i8, *v195.i8);
              v187 = vmlal_high_s16(v187, v194, v194);
              v186 = vmlal_s16(v186, *v194.i8, *v194.i8);
              v180 += 4;
              v183 += 4;
              v182 -= 32;
            }

            while (v182);
            v140 = vaddq_s32(v188, v184);
            v139 = vaddq_s32(vaddq_s32(v187, v181), vaddq_s32(v189, v185));
            v170 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v186, v179), v140), v139));
            if ((a3 & 0x7FFFFFE0) == a3)
            {
              goto LABEL_143;
            }

            v178 = a3 & 0x7FFFFFE0;
            v175 = v178;
            if ((a3 & 0x1C) == 0)
            {
              goto LABEL_163;
            }
          }

          else
          {
            v170 = 0;
            v178 = 0;
          }

          v196 = v170;
          v197 = (v166 + v178 + v173);
          v198 = (v167 + v178);
          v199 = v178 - (a3 & 0x7FFFFFFC);
          do
          {
            v200 = *v197++;
            v139.i32[0] = v200;
            v201 = *v198++;
            v140.i32[0] = v201;
            v140.i64[0] = vmovl_u8(*v140.i8).u64[0];
            v139 = vsubl_u16(*&vmovl_u8(*v139.i8), *v140.i8);
            v196 = vmlaq_s32(v196, v139, v139);
            v199 += 4;
          }

          while (v199);
          v170 = vaddvq_s32(v196);
          v175 = a3 & 0x7FFFFFFC;
          if (v175 == a3)
          {
            goto LABEL_143;
          }

          goto LABEL_163;
        }
      }

      else if (a3 >= 1)
      {
        v176 = 0;
        v170 = 0;
        do
        {
          v177 = vabdq_u8(*(v174 + v176), *v167[v176 / 8].i8);
          v139 = vmull_u8(*v177.i8, *v177.i8);
          v170 += vaddlvq_u16(vqaddq_u16(v139, vmull_high_u8(v177, v177)));
          v176 += 16;
        }

        while (v176 < a3);
        goto LABEL_143;
      }

      v170 = 0;
LABEL_143:
      v171 = v170;
      if (v138->f32[v172] >= v170)
      {
        v171 = v138->f32[v172];
      }

      v138->f32[v172] = v171;
      ++v165;
      v169 = (v169 + v38);
      v167 = (v167 + v38);
      if (v165 == v141)
      {
        goto LABEL_165;
      }
    }
  }

  v142 = v137;
  v32 = v259;
  if (v141 >= 1)
  {
    v143 = *a1;
    v144 = (a1[4] + 32);
    v145 = a7;
    do
    {
      v147 = *v145++;
      v146 = v147;
      v148 = (v143 + (v147 << 6));
      v149 = vabdq_u8(*v148, v144[-2]);
      v150 = vabdq_u8(v148[1], v144[-1]);
      v151 = vaddlvq_u16(vqaddq_u16(vmull_u8(*v149.i8, *v149.i8), vmull_high_u8(v149, v149)));
      v152 = *v144;
      v153 = v144[1];
      v144 += 4;
      v154 = vabdq_u8(v148[2], v152);
      v155 = vabdq_u8(v148[3], v153);
      v156 = (vaddlvq_u16(vqaddq_u16(vmull_u8(*v150.i8, *v150.i8), vmull_high_u8(v150, v150))) + v151 + vaddlvq_u16(vqaddq_u16(vmull_u8(*v154.i8, *v154.i8), vmull_high_u8(v154, v154))) + vaddlvq_u16(vqaddq_u16(vmull_u8(*v155.i8, *v155.i8), vmull_high_u8(v155, v155))));
      v157 = v138->f32[v147];
      if (v157 >= v156)
      {
        v156 = v157;
      }

      v138->f32[v146] = v156;
      --v141;
    }

    while (v141);
  }

LABEL_165:
  if (v10 < 8)
  {
    v203 = 0;
    goto LABEL_170;
  }

  v203 = v10 & 0x7FFFFFF8;
  v204 = v138 + 1;
  v205 = v203;
  do
  {
    v206 = vsqrtq_f32(*v204);
    v204[-1] = vsqrtq_f32(v204[-1]);
    *v204 = v206;
    v204 += 2;
    v205 -= 8;
  }

  while (v205);
  if (v203 != v10)
  {
LABEL_170:
    v207 = v10 - v203;
    v208 = &v138->f32[v203];
    do
    {
      *v208 = sqrtf(*v208);
      ++v208;
      --v207;
    }

    while (v207);
  }

  *v32 = 0;
  v209 = a1[3];
  v210 = *v28;
  *(v209 + 2) = *(a1 + 2);
  *(v209 + 12) = v210;
  v211 = v209 + 104;
  if (v32 >= &v209[56 * v10 - 4] || v211 >= &v32[4 * v10])
  {
    v213 = v32 + 4;
    v214 = *v32;
    v215 = v10 - 1;
    v216 = v28 + 1;
    do
    {
      v214 += v210;
      *v213++ = v214;
      v217 = *v216++;
      v210 = v217;
      v218 = a1[5] + 4 * v214;
      *(v211 - 2) = a1[4] + v38 * v214;
      *(v211 - 1) = v218;
      *v211 = v217;
      v211 += 56;
      --v215;
    }

    while (v215);
  }

  else
  {
    v219 = v10 - 1;
    v220 = v28 + 1;
    v221 = v32 + 4;
    do
    {
      v222 = *(v221 - 1) + v210;
      *v221++ = v222;
      v223 = a1[4] + v222 * v38;
      v224 = a1[5] + 4 * v222;
      v225 = *v220++;
      v210 = v225;
      *(v211 - 2) = v223;
      *(v211 - 1) = v224;
      *v211 = v225;
      v211 += 56;
      --v219;
    }

    while (v219);
  }

  v226 = *(a1 + 12);
  if (v226 * a3 >= 1)
  {
    v227 = 0;
    do
    {
      a5[v227] = *(a1[4] + v227);
      ++v227;
      v226 = *(a1 + 12);
    }

    while (v227 < v226 * a3);
  }

  if (v226 >= 1)
  {
    v228 = 0;
    v229 = a1[5];
    do
    {
      *(a6 + 4 * v228) = v229[v228];
      ++v228;
      v230 = *(a1 + 12);
    }

    while (v228 < v230);
    if (v230 >= 1)
    {
      v231 = 0;
      v232 = a5;
      do
      {
        v233 = a7[v231];
        v234 = *&v32[4 * v233];
        *&v32[4 * v233] = v234 + 1;
        if (a3 >= 1)
        {
          v235 = v234 * a3;
          v236 = v232;
          v237 = a3;
          do
          {
            v238 = *v236++;
            *(a1[4] + v235++) = v238;
            --v237;
          }

          while (v237);
          v229 = a1[5];
        }

        v229[v234] = *(a6 + 4 * v231++);
        v232 += a3;
      }

      while (v231 < *(a1 + 12));
    }
  }

  if (v10 < v142)
  {
    v239 = 0;
    v240 = 0;
    v241 = 48;
    do
    {
      v242 = *a1;
      if (*(a1[3] + v241))
      {
        v243 = v242 == 0;
      }

      else
      {
        v243 = 1;
      }

      if (!v243)
      {
        *(v242 + v240++) = *(v242 + v239);
      }

      ++v239;
      v241 += 56;
    }

    while (v10 != v239);
    v244 = 0;
    v245 = a1[1];
    v246 = (a1[3] + 48);
    v247 = v245;
    v248 = v10;
    do
    {
      v249 = *v246;
      v246 += 14;
      if (v249)
      {
        v250 = v245 == 0;
      }

      else
      {
        v250 = 1;
      }

      if (!v250)
      {
        v245[v244++] = *v247;
      }

      ++v247;
      --v248;
    }

    while (v248);
    v251 = 0;
    v158 = 0;
    do
    {
      v252 = a1[3];
      v253 = &v252[v251];
      if (v252)
      {
        v254 = *&v252[v251 + 48] == 0;
      }

      else
      {
        v254 = 1;
      }

      if (!v254)
      {
        v255 = &v252[56 * v158];
        v256 = *v253;
        v257 = *(v253 + 1);
        v258 = *(v253 + 2);
        *(v255 + 6) = *(v253 + 6);
        *(v255 + 1) = v257;
        *(v255 + 2) = v258;
        *v255 = v256;
        ++v158;
      }

      v251 += 56;
      --v10;
    }

    while (v10);
LABEL_135:
    *(a1 + 4) = v158;
    LODWORD(v10) = v158;
  }

  free(v27);
  free(v28);
  free(v32);
  v159 = a4;
  if (v10 >= 1)
  {
    v160 = 0;
    v161 = 56 * v10;
    do
    {
      v162 = a1[3] + v160;
      v163 = ((*(v162 + 5) - a1[5]) >> 2);
      v164 = v159;
      sss_split_km(v162, a2, a3, v159, &a5[v163], a6 + 4 * v163, &a7[v163], a8 + 1);
      v159 = v164;
      v160 += 56;
    }

    while (v161 != v160);
  }
}

void sss_node_free(uint64_t a1)
{
  if (*(a1 + 16) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sss_node_free(*(a1 + 24) + v2);
      ++v3;
      v2 += 56;
    }

    while (v3 < *(a1 + 16));
  }

  free(*a1);
  free(*(a1 + 8));
  v4 = *(a1 + 24);

  free(v4);
}

uint64_t sss_knn(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, int a6, float a7)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a6 < 17)
  {
    v12 = v18;
    if (a6 < 1)
    {
      goto LABEL_6;
    }

    v13 = a6;
    v12 = v18;
  }

  else
  {
    v12 = malloc_type_malloc(4 * (2 * a6), 0x100004052888210uLL);
    v13 = a6;
  }

  memset(a4, 255, 4 * v13);
LABEL_6:
  if (*(a1 + 256) >= 1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      sss_nn_node(*(a1 + 8 * v14));
      if (v16 >= a7)
      {
        ++v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 > *(a2 + 52))
      {
        break;
      }

      ++v14;
      a7 = v16;
    }

    while (v14 < *(a1 + 256));
  }

  if (a6 >= 17)
  {
    free(v12);
  }

  return 0;
}

void sss_nn_node(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v10 = v9;
  v11 = v3;
  v12 = v2;
  v13 = v1;
  v326[2185] = *MEMORY[0x277D85DE8];
  v14 = *v1;
  if (!*v1)
  {
LABEL_156:
    v186 = 46340.0;
    if ((v6 * v6) < 2147500000.0)
    {
      v186 = v6;
    }

    v187 = *(v13 + 48);
    v188.i32[0] = 1;
    v188.i32[1] = v187;
    *v4 = vadd_s32(*v4, *v188.i8);
    if (v11 == 64)
    {
      if (v187 >= 1)
      {
        v189 = 0;
        v190 = *(v13 + 32);
        v191 = v186 * v186;
        do
        {
          v192 = (v190 + (v189 << 6));
          v193 = vabdq_u8(*v192, *v12);
          v194 = vaddlvq_u16(vqaddq_u16(vmull_u8(*v193.i8, *v193.i8), vmull_high_u8(v193, v193)));
          v195 = vabdq_u8(v192[1], v12[1]);
          v196 = vaddlvq_u16(vqaddq_u16(vmull_u8(*v195.i8, *v195.i8), vmull_high_u8(v195, v195)));
          v197 = v192[3];
          v198 = vabdq_u8(v192[2], v12[2]);
          LODWORD(v192) = v196 + v194 + vaddlvq_u16(vqaddq_u16(vmull_u8(*v198.i8, *v198.i8), vmull_high_u8(v198, v198)));
          v199 = vabdq_u8(v197, v12[3]);
          v200 = v192 + vaddlvq_u16(vqaddq_u16(vmull_u8(*v199.i8, *v199.i8), vmull_high_u8(v199, v199)));
          if (v200 <= v191)
          {
            v201 = *(*(v13 + 40) + 4 * v189);
            v202 = *(v10 + 20);
            v203 = *v10;
            v204 = v202;
            v205 = *v10;
            if (v202 < 1)
            {
LABEL_166:
              if (v202 < *(v10 + 16))
              {
                LODWORD(v202) = v202 + 1;
              }

              *(v10 + 20) = v202;
              v203[v202 - 1] = v201;
              v207 = *(v10 + 8);
              *(v207 + 4 * *(v10 + 20) - 4) = v200;
              v208 = *(v10 + 20);
              if (v208 > 1)
              {
                v209 = v208 + 1;
                v210 = v208;
                v211 = &v203[v210 - 2];
                v212 = (v207 + v210 * 4 - 4);
                do
                {
                  v214 = *(v212 - 1);
                  v213 = *v212;
                  if (*v212 >= v214)
                  {
                    break;
                  }

                  *v212 = v214;
                  *--v212 = v213;
                  *v211 = vrev64_s32(*v211);
                  v211 = (v211 - 4);
                  --v209;
                }

                while (v209 > 2);
                LODWORD(v208) = *(v10 + 20);
              }

              if (v208 == *(v10 + 16))
              {
                v191 = *(v207 + 4 * v208 - 4);
              }
            }

            else
            {
              while (1)
              {
                v206 = *v205++;
                if (v206 == v201)
                {
                  break;
                }

                if (!--v204)
                {
                  goto LABEL_166;
                }
              }
            }
          }

          ++v189;
        }

        while (v189 < *(v13 + 48));
      }

      return;
    }

    if (v187 < 1)
    {
      return;
    }

    v215 = 0;
    v216 = *(v13 + 32);
    v217 = v11 & 0x7FFFFFFC;
    v218 = v216 + 2;
    v219 = v186 * v186;
    while (1)
    {
      if ((v11 & 0xF) != 0)
      {
        if (v11 >= 1)
        {
          if (v11 < 4)
          {
            v220 = 0;
            v221 = 0;
            do
            {
LABEL_196:
              v248 = v216->u8[v220] - v12->u8[v220];
              v221 += v248 * v248;
              ++v220;
            }

            while (v11 != v220);
            goto LABEL_197;
          }

          if (v11 >= 0x20)
          {
            v225 = 0uLL;
            v226 = v11 & 0x7FFFFFE0;
            v227 = 0uLL;
            v228 = &v12[1];
            v229 = v218;
            v230 = 0uLL;
            v231 = 0uLL;
            v232 = 0uLL;
            v233 = 0uLL;
            v234 = 0uLL;
            v235 = 0uLL;
            do
            {
              v236 = *v229[-2].i8;
              v237 = *v228[-2].i8;
              v238 = vsubl_u8(*v236.i8, *v237.i8);
              v239 = vsubl_high_u8(v236, v237);
              v240 = vsubl_u8(*v229, *v228);
              v241 = vsubl_high_u8(*v229->i8, *v228->i8);
              v231 = vmlal_high_s16(v231, v239, v239);
              v230 = vmlal_s16(v230, *v239.i8, *v239.i8);
              v227 = vmlal_high_s16(v227, v238, v238);
              v225 = vmlal_s16(v225, *v238.i8, *v238.i8);
              v235 = vmlal_high_s16(v235, v241, v241);
              v234 = vmlal_s16(v234, *v241.i8, *v241.i8);
              v233 = vmlal_high_s16(v233, v240, v240);
              v232 = vmlal_s16(v232, *v240.i8, *v240.i8);
              v229 += 4;
              v228 += 4;
              v226 -= 32;
            }

            while (v226);
            v7 = vaddq_s32(v234, v230);
            v188 = vaddq_s32(vaddq_s32(v233, v227), vaddq_s32(v235, v231));
            v221 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v232, v225), v7), v188));
            if ((v11 & 0x7FFFFFE0) == v11)
            {
              goto LABEL_197;
            }

            v224 = v11 & 0x7FFFFFE0;
            v220 = v224;
            if ((v11 & 0x1C) == 0)
            {
              goto LABEL_196;
            }
          }

          else
          {
            v221 = 0;
            v224 = 0;
          }

          v242 = v221;
          v243 = (v216 + v224);
          v244 = (v12->i32 + v224);
          v245 = v224 - v217;
          do
          {
            v246 = *v243++;
            v188.i32[0] = v246;
            v247 = *v244++;
            v7.i32[0] = v247;
            v7.i64[0] = vmovl_u8(*v7.i8).u64[0];
            v188 = vsubl_u16(*&vmovl_u8(*v188.i8), *v7.i8);
            v242 = vmlaq_s32(v242, v188, v188);
            v245 += 4;
          }

          while (v245);
          v221 = vaddvq_s32(v242);
          v220 = v11 & 0x7FFFFFFC;
          if (v217 == v11)
          {
            goto LABEL_197;
          }

          goto LABEL_196;
        }
      }

      else if (v11 >= 1)
      {
        v222 = 0;
        v221 = 0;
        do
        {
          v223 = vabdq_u8(*v216[v222 / 8].i8, v12[v222 / 0x10]);
          v188 = vmull_u8(*v223.i8, *v223.i8);
          v221 += vaddlvq_u16(vqaddq_u16(v188, vmull_high_u8(v223, v223)));
          v222 += 16;
        }

        while (v222 < v11);
        goto LABEL_197;
      }

      v221 = 0;
LABEL_197:
      if (v221 <= v219)
      {
        v249 = *(*(v13 + 40) + 4 * v215);
        v250 = *(v10 + 20);
        v251 = *v10;
        v252 = v250;
        v253 = *v10;
        if (v250 < 1)
        {
LABEL_201:
          if (v250 < *(v10 + 16))
          {
            LODWORD(v250) = v250 + 1;
          }

          *(v10 + 20) = v250;
          v251[v250 - 1] = v249;
          v255 = *(v10 + 8);
          *(v255 + 4 * *(v10 + 20) - 4) = v221;
          v256 = *(v10 + 20);
          if (v256 > 1)
          {
            v257 = v256 + 1;
            v258 = v256;
            v259 = &v251[v258 - 2];
            v260 = (v255 + v258 * 4 - 4);
            do
            {
              v262 = *(v260 - 1);
              v261 = *v260;
              if (*v260 >= v262)
              {
                break;
              }

              *v260 = v262;
              *--v260 = v261;
              *v259 = vrev64_s32(*v259);
              v259 = (v259 - 4);
              --v257;
            }

            while (v257 > 2);
            LODWORD(v256) = *(v10 + 20);
          }

          if (v256 == *(v10 + 16))
          {
            v219 = *(v255 + 4 * v256 - 4);
          }
        }

        else
        {
          while (1)
          {
            v254 = *v253++;
            if (v254 == v249)
            {
              break;
            }

            if (!--v252)
            {
              goto LABEL_201;
            }
          }
        }
      }

      ++v215;
      v218 = (v218 + v11);
      v216 = (v216 + v11);
      if (v215 >= *(v13 + 48))
      {
        return;
      }
    }
  }

  v15 = v5;
  v16 = v3 & 0xF;
  v17 = v3;
  if (!*(v5 + 32))
  {
    v324 = v4;
    v31 = v6;
    v32 = malloc_type_malloc(8 * *(v1 + 16), 0x100004052888210uLL);
    v35 = *(v13 + 16);
    v36 = &v32[v35];
    if (v11 == 64)
    {
      if (v35 >= 1)
      {
        v37 = 0;
        v38 = 0;
        v39 = *(v13 + 8);
        v40 = (*v13 + 32);
        do
        {
          v41 = vabdq_u8(v40[-2], *v12);
          v42 = vabdq_u8(v40[-1], v12[1]);
          v43 = vaddlvq_u16(vqaddq_u16(vmull_u8(*v41.i8, *v41.i8), vmull_high_u8(v41, v41)));
          v45 = *v40;
          v44 = v40[1];
          v40 += 4;
          v46 = vabdq_u8(v45, v12[2]);
          v47 = vabdq_u8(v44, v12[3]);
          *v47.i32 = sqrtf((vaddlvq_u16(vqaddq_u16(vmull_u8(*v42.i8, *v42.i8), vmull_high_u8(v42, v42))) + v43 + vaddlvq_u16(vqaddq_u16(vmull_u8(*v46.i8, *v46.i8), vmull_high_u8(v46, v46))) + vaddlvq_u16(vqaddq_u16(vmull_u8(*v47.i8, *v47.i8), vmull_high_u8(v47, v47)))));
          v36[v38] = v47.i32[0];
          *v47.i32 = *v47.i32 - *(v39 + 4 * v37);
          v32[v38] = v37;
          if (*v47.i32 < v31)
          {
            ++v38;
          }

          ++v37;
        }

        while (v37 < *(v13 + 16));
LABEL_19:
        if (v38)
        {
          v323 = v32;
          if (v38 > 16)
          {
            v321 = v16;
            v322 = &v32[v35];
            v48 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
            v49 = v322;
            v50 = v323;
            v51 = 0;
            v52 = v326;
            v53 = 1;
            v54 = 32;
            v55 = v322;
            v56 = v323;
            v57 = v38;
            while (1)
            {
              v58 = v51;
              while (1)
              {
                if (!v53)
                {
                  --v58;
                  v59 = &v48[16 * v58];
                  v57 = v59[1];
                  v60 = *v59;
                  v55 = &v49[v60];
                  v56 = &v50[v60];
                }

                if (v57 > 15)
                {
                  break;
                }

                if (v57 > 1)
                {
                  v61 = 0;
                  v62 = v56 + 1;
                  v63 = v55 + 1;
                  for (i = 1; i != v57; ++i)
                  {
                    v65 = v61;
                    do
                    {
                      v66 = v63[v65];
                      v67 = v55[v65];
                      if (v66 >= v67)
                      {
                        break;
                      }

                      v63[v65] = v67;
                      v55[v65] = v66;
                      v68 = v62[v65];
                      v62[v65] = v56[v65];
                      v56[v65] = v68;
                      v69 = v65-- + 1;
                    }

                    while (v69 > 1);
                    ++v61;
                  }
                }

                v53 = 0;
                v57 = 0;
                if (v58 < 1)
                {
                  goto LABEL_88;
                }
              }

              if (v57 <= 0x27)
              {
                v70 = v57 >> 1;
                v71 = *v55;
                v72 = v55[v57 >> 1];
                v73 = v57 - 1;
                v74 = v55[v57 - 1];
                if (v72 >= v74)
                {
                  v75 = v57 >> 1;
                }

                else
                {
                  v75 = v57 - 1;
                }

                if (v71 >= v74)
                {
                  v73 = 0;
                }

                else
                {
                  v75 = 0;
                }

                if (v72 >= v74)
                {
                  v70 = v73;
                }

                if (v71 >= v72)
                {
                  v70 = v75;
                }

                goto LABEL_76;
              }

              v76 = v58;
              v77 = 0;
              v78 = 0;
              if (v57 <= 0x7D0)
              {
                v79 = 8;
              }

              else
              {
                v79 = 26;
              }

              v80 = 9;
              if (v57 <= 0x7D0)
              {
                v80 = 3;
              }

              do
              {
                v81 = (v57 - 1 + v77) / v79;
                v82 = v55[v77 / v79];
                v83 = v55[v81];
                v84 = (2 * v57 - 2 + v77) / v79;
                v85 = v55[v84];
                if (v82 >= v83)
                {
                  if (v82 < v85)
                  {
                    goto LABEL_59;
                  }

                  if (v83 >= v85)
                  {
LABEL_52:
                    v325[v78] = v81;
                    goto LABEL_53;
                  }
                }

                else
                {
                  if (v83 < v85)
                  {
                    goto LABEL_52;
                  }

                  if (v82 >= v85)
                  {
LABEL_59:
                    v325[v78] = v77 / v79;
                    goto LABEL_53;
                  }
                }

                v325[v78] = v84;
LABEL_53:
                ++v78;
                v77 += 3 * v57 - 3;
              }

              while (v80 != v78);
              while (2)
              {
                v86 = v80;
                v80 /= 3uLL;
                v87 = v325;
                v88 = v52;
                v89 = v80;
                do
                {
                  v90 = *(v88 - 2);
                  v91 = *(v88 - 1);
                  v92 = v55[v90];
                  v93 = v55[v91];
                  v94 = v55[*v88];
                  if (v92 >= v93)
                  {
                    if (v92 < v94)
                    {
                      goto LABEL_72;
                    }

                    if (v93 >= v94)
                    {
LABEL_65:
                      *v87 = v91;
                      goto LABEL_66;
                    }
                  }

                  else
                  {
                    if (v93 < v94)
                    {
                      goto LABEL_65;
                    }

                    if (v92 >= v94)
                    {
LABEL_72:
                      *v87 = v90;
                      goto LABEL_66;
                    }
                  }

                  *v87 = *v88;
LABEL_66:
                  v88 += 3;
                  ++v87;
                  --v89;
                }

                while (v89);
                if (v86 >= 9)
                {
                  continue;
                }

                break;
              }

              v70 = v325[0];
              v71 = *v55;
              v58 = v76;
LABEL_76:
              v95 = 0;
              v96 = 0;
              *v55 = v55[v70];
              v55[v70] = v71;
              v97 = *v56;
              *v56 = v56[v70];
              v56[v70] = v97;
              for (j = 1; j != v57; ++j)
              {
                v99 = v55[j];
                if ((v99 - *v55) <= 0.0)
                {
                  v55[j] = v55[++v95];
                  v55[v95] = v99;
                  v100 = v56[j];
                  v56[j] = v56[v95];
                  v56[v95] = v100;
                  if ((v55[j] - *v55) == 0.0)
                  {
                    v55[v95] = v55[++v96];
                    v55[v96] = v99;
                    v56[v95] = v56[v96];
                    v56[v96] = v100;
                  }
                }
              }

              v101 = 4 * v95 - 4 * v96;
              v102 = v96;
              do
              {
                v103 = *(v55 + v101);
                *(v55 + v101) = v55[v102];
                v55[v102] = v103;
                v104 = *(v56 + v101);
                *(v56 + v101) = v56[v102];
                v56[v102] = v104;
                v101 += 4;
              }

              while (v102-- > 0);
              v51 = v58 + 1;
              if (v58 + 1 >= v54)
              {
                v316 = 2 * v54;
                v317 = v58 + 1;
                v319 = v58;
                v320 = v52;
                v318 = v96;
                v48 = malloc_type_realloc(v48, 32 * v54, 0x100004000313F17uLL);
                v51 = v317;
                v96 = v318;
                v58 = v319;
                v52 = v320;
                v49 = v322;
                v50 = v323;
                v54 = v316;
              }

              v106 = &v48[16 * v58];
              *v106 = v95 + v55 - v49 + 1;
              *(v106 + 1) = v57 + ~v95;
              v57 = v95 - v96;
              v53 = v95 != v96;
              if (v58 < 0 && !v57)
              {
LABEL_88:
                free(v48);
                v32 = v323;
                v16 = v321;
                goto LABEL_218;
              }
            }
          }

          if (v38 >= 2)
          {
            v263 = v32 + 1;
            v264 = 1;
            v265 = 2;
            do
            {
              v266 = v263;
              v267 = v265;
              do
              {
                v268 = (v267 - 2);
                v269 = *&v266[v35];
                v270 = *&v36[v268];
                if (v269 >= v270)
                {
                  break;
                }

                *&v266[v35] = v270;
                *&v36[v268] = v269;
                v271 = *v266;
                *v266-- = v32[v268];
                v32[v268] = v271;
                --v267;
              }

              while (v267 > 1);
              ++v264;
              ++v265;
              ++v263;
            }

            while (v264 != v38);
          }

LABEL_218:
          v272 = (*(v15 + 36) * v38);
          sss_nn_node(*(v13 + 24) + 56 * *v32);
          if (v272 >= 2)
          {
            v276 = 1;
            v32 = v323;
            v277 = v324;
            while (1)
            {
              if (v277->i32[0] >= *(v15 + 48) || v277->i32[1] >= *(v15 + 44))
              {
                goto LABEL_246;
              }

              v278 = *v13;
              v279 = v32[v276];
              v280 = v279 * v11;
              if (v16)
              {
                if (v11 >= 1)
                {
                  if (v11 < 4)
                  {
                    v281 = 0;
                    v282 = 0;
LABEL_241:
                    v310 = v11 - v281;
                    v311 = &v12->u8[v281];
                    v312 = &v278->u8[v281 + v280];
                    do
                    {
                      v314 = *v312++;
                      v313 = v314;
                      v315 = *v311++;
                      v282 += (v313 - v315) * (v313 - v315);
                      --v310;
                    }

                    while (v310);
                    goto LABEL_243;
                  }

                  if (v11 >= 0x20)
                  {
                    v287 = 0uLL;
                    v288 = 0uLL;
                    v289 = &v278[1].i8[v280];
                    v290 = v17 & 0x7FFFFFE0;
                    v291 = &v12[1];
                    v292 = 0uLL;
                    v293 = 0uLL;
                    v294 = 0uLL;
                    v295 = 0uLL;
                    v296 = 0uLL;
                    v297 = 0uLL;
                    do
                    {
                      v298 = *v289[-2].i8;
                      v299 = *v291[-2].i8;
                      v300 = vsubl_u8(*v298.i8, *v299.i8);
                      v301 = vsubl_high_u8(v298, v299);
                      v302 = vsubl_u8(*v289, *v291);
                      v303 = vsubl_high_u8(*v289->i8, *v291->i8);
                      v293 = vmlal_high_s16(v293, v301, v301);
                      v292 = vmlal_s16(v292, *v301.i8, *v301.i8);
                      v288 = vmlal_high_s16(v288, v300, v300);
                      v287 = vmlal_s16(v287, *v300.i8, *v300.i8);
                      v297 = vmlal_high_s16(v297, v303, v303);
                      v296 = vmlal_s16(v296, *v303.i8, *v303.i8);
                      v295 = vmlal_high_s16(v295, v302, v302);
                      v294 = vmlal_s16(v294, *v302.i8, *v302.i8);
                      v289 += 4;
                      v291 += 4;
                      v290 -= 32;
                    }

                    while (v290);
                    v275 = vaddq_s32(v296, v292);
                    v274 = vaddq_s32(vaddq_s32(v295, v288), vaddq_s32(v297, v293));
                    v282 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v294, v287), v275), v274));
                    if ((v17 & 0x7FFFFFE0) == v11)
                    {
                      goto LABEL_243;
                    }

                    v286 = v17 & 0x7FFFFFE0;
                    v281 = v286;
                    if ((v17 & 0x1C) == 0)
                    {
                      goto LABEL_241;
                    }
                  }

                  else
                  {
                    v282 = 0;
                    v286 = 0;
                  }

                  v304 = v282;
                  v305 = (v278->i32 + v286 + v280);
                  v306 = (v12->i32 + v286);
                  v307 = v286 - (v17 & 0x7FFFFFFC);
                  do
                  {
                    v308 = *v305++;
                    v274.i32[0] = v308;
                    v309 = *v306++;
                    v275.i32[0] = v309;
                    v275.i64[0] = vmovl_u8(*v275.i8).u64[0];
                    v274 = vsubl_u16(*&vmovl_u8(*v274.i8), *v275.i8);
                    v304 = vmlaq_s32(v304, v274, v274);
                    v307 += 4;
                  }

                  while (v307);
                  v282 = vaddvq_s32(v304);
                  v281 = v17 & 0x7FFFFFFC;
                  if (v281 == v11)
                  {
                    goto LABEL_243;
                  }

                  goto LABEL_241;
                }
              }

              else if (v11 >= 1)
              {
                v283 = 0;
                v282 = 0;
                v284 = v278->i64 + v280;
                do
                {
                  v285 = vabdq_u8(*(v284 + v283), v12[v283 / 0x10]);
                  v274 = vmull_u8(*v285.i8, *v285.i8);
                  v282 += vaddlvq_u16(vqaddq_u16(v274, vmull_high_u8(v285, v285)));
                  v283 += 16;
                }

                while (v283 < v11);
                goto LABEL_243;
              }

              v282 = 0;
LABEL_243:
              if ((sqrtf(v282) - *(*(v13 + 8) + 4 * v279)) < (v273 * *(v15 + 40)))
              {
                sss_nn_node(*(v13 + 24) + 56 * v279);
                v32 = v323;
                v277 = v324;
              }

              if (++v276 == v272)
              {
                goto LABEL_246;
              }
            }
          }

          v32 = v323;
        }
      }

LABEL_246:
      free(v32);
      return;
    }

    if (v35 < 1)
    {
      goto LABEL_246;
    }

    v142 = 0;
    v38 = 0;
    v144 = *v13;
    v143 = *(v13 + 8);
    v145 = *v13 + 16;
    while (1)
    {
      if (v16)
      {
        if (v11 >= 1)
        {
          if (v11 < 4)
          {
            v148 = 0;
            v146 = 0;
            do
            {
LABEL_138:
              v175 = v144->u8[v148] - v12->u8[v148];
              v146 += v175 * v175;
              ++v148;
            }

            while (v11 != v148);
            goto LABEL_118;
          }

          if (v11 >= 0x20)
          {
            v152 = 0uLL;
            v153 = v17 & 0x7FFFFFE0;
            v154 = 0uLL;
            v155 = &v12[1];
            v156 = v145;
            v157 = 0uLL;
            v158 = 0uLL;
            v159 = 0uLL;
            v160 = 0uLL;
            v161 = 0uLL;
            v162 = 0uLL;
            do
            {
              v163 = *v156[-2].i8;
              v164 = *v155[-2].i8;
              v165 = vsubl_u8(*v163.i8, *v164.i8);
              v166 = vsubl_high_u8(v163, v164);
              v167 = vsubl_u8(*v156, *v155);
              v168 = vsubl_high_u8(*v156->i8, *v155->i8);
              v158 = vmlal_high_s16(v158, v166, v166);
              v157 = vmlal_s16(v157, *v166.i8, *v166.i8);
              v154 = vmlal_high_s16(v154, v165, v165);
              v152 = vmlal_s16(v152, *v165.i8, *v165.i8);
              v162 = vmlal_high_s16(v162, v168, v168);
              v161 = vmlal_s16(v161, *v168.i8, *v168.i8);
              v160 = vmlal_high_s16(v160, v167, v167);
              v159 = vmlal_s16(v159, *v167.i8, *v167.i8);
              v156 += 4;
              v155 += 4;
              v153 -= 32;
            }

            while (v153);
            v34 = vaddq_s32(v161, v157);
            v33 = vaddq_s32(vaddq_s32(v160, v154), vaddq_s32(v162, v158));
            v146 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v159, v152), v34), v33));
            if ((v17 & 0x7FFFFFE0) == v11)
            {
              goto LABEL_118;
            }

            v151 = v17 & 0x7FFFFFE0;
            v148 = v151;
            if ((v17 & 0x1C) == 0)
            {
              goto LABEL_138;
            }
          }

          else
          {
            v146 = 0;
            v151 = 0;
          }

          v169 = v146;
          v170 = (v144->i32 + v151);
          v171 = (v12->i32 + v151);
          v172 = v151 - (v17 & 0x7FFFFFFC);
          do
          {
            v173 = *v170++;
            v33.i32[0] = v173;
            v174 = *v171++;
            v34.i32[0] = v174;
            v34.i64[0] = vmovl_u8(*v34.i8).u64[0];
            v33 = vsubl_u16(*&vmovl_u8(*v33.i8), *v34.i8);
            v169 = vmlaq_s32(v169, v33, v33);
            v172 += 4;
          }

          while (v172);
          v146 = vaddvq_s32(v169);
          v148 = v11 & 0x7FFFFFFC;
          if ((v17 & 0x7FFFFFFC) == v11)
          {
            goto LABEL_118;
          }

          goto LABEL_138;
        }
      }

      else if (v11 >= 1)
      {
        v149 = 0;
        v146 = 0;
        do
        {
          v150 = vabdq_u8(v144[v149 / 0x10], v12[v149 / 0x10]);
          v33 = vmull_u8(*v150.i8, *v150.i8);
          v146 += vaddlvq_u16(vqaddq_u16(v33, vmull_high_u8(v150, v150)));
          v149 += 16;
        }

        while (v149 < v11);
        goto LABEL_118;
      }

      v146 = 0;
LABEL_118:
      v147 = sqrtf(v146);
      *&v36[v38] = v147;
      v32[v38] = v142;
      if ((v147 - *(v143 + 4 * v142)) < v31)
      {
        ++v38;
      }

      ++v142;
      v145 += v11;
      v144 = (v144 + v11);
      if (v142 >= *(v13 + 16))
      {
        goto LABEL_19;
      }
    }
  }

  if (v3 == 64)
  {
    while (1)
    {
      v18 = *(v13 + 16);
      if (v18 < 1)
      {
        break;
      }

      v19 = 0;
      v7 = *(v2 + 32);
      v20 = v14 + 2;
      v21 = -1;
      v22 = INFINITY;
      do
      {
        v23 = vabdq_u8(v20[-2], *v2);
        v24 = vaddlvq_u16(vqaddq_u16(vmull_u8(*v23.i8, *v23.i8), vmull_high_u8(v23, v23)));
        v25 = vabdq_u8(v20[-1], *(v2 + 16));
        v26 = vaddlvq_u16(vqaddq_u16(vmull_u8(*v25.i8, *v25.i8), vmull_high_u8(v25, v25)));
        v27 = vabdq_u8(*v20, v7);
        v28 = v26 + v24 + vaddlvq_u16(vqaddq_u16(vmull_u8(*v27.i8, *v27.i8), vmull_high_u8(v27, v27)));
        v29 = vabdq_u8(v20[1], *(v2 + 48));
        v30 = sqrtf((v28 + vaddlvq_u16(vqaddq_u16(vmull_u8(*v29.i8, *v29.i8), vmull_high_u8(v29, v29)))));
        if (v30 < v22 && (v30 - *(*(v13 + 8) + 4 * v19)) < (*(v5 + 40) * v6))
        {
          v21 = v19;
          v22 = v30;
        }

        ++v19;
        v20 += 4;
      }

      while (v18 != v19);
      if (v21 == -1)
      {
        break;
      }

      v13 = *(v13 + 24) + 56 * v21;
      v14 = *v13;
      if (!*v13)
      {
        goto LABEL_156;
      }
    }

    return;
  }

  if ((v3 & 0xF) != 0)
  {
    v107 = v3 & 0x7FFFFFE0;
    v108 = v3 & 0x7FFFFFFC;
    while (1)
    {
      v109 = *(v13 + 16);
      if (v109 <= 0)
      {
        return;
      }

      v110 = 0;
      v111 = &v14[1];
      v112 = -1;
      v113 = INFINITY;
      do
      {
        if (v11 < 1)
        {
          v116 = sqrtf(0.0);
          if (v116 >= v113)
          {
            goto LABEL_93;
          }

          goto LABEL_110;
        }

        if (v11 < 4)
        {
          v114 = 0;
          v115 = 0;
          do
          {
LABEL_108:
            v141 = v14->u8[v114] - v12->u8[v114];
            v115 += v141 * v141;
            ++v114;
          }

          while (v11 != v114);
          goto LABEL_109;
        }

        if (v11 >= 0x20)
        {
          v118 = 0uLL;
          v119 = v17 & 0x7FFFFFE0;
          v120 = 0uLL;
          v121 = &v12[1];
          v122 = v111;
          v123 = 0uLL;
          v124 = 0uLL;
          v125 = 0uLL;
          v126 = 0uLL;
          v127 = 0uLL;
          v128 = 0uLL;
          do
          {
            v129 = *v122[-2].i8;
            v130 = *v121[-2].i8;
            v131 = vsubl_u8(*v129.i8, *v130.i8);
            v132 = vsubl_high_u8(v129, v130);
            v133 = vsubl_u8(*v122, *v121);
            v134 = vsubl_high_u8(*v122->i8, *v121->i8);
            v124 = vmlal_high_s16(v124, v132, v132);
            v123 = vmlal_s16(v123, *v132.i8, *v132.i8);
            v120 = vmlal_high_s16(v120, v131, v131);
            v118 = vmlal_s16(v118, *v131.i8, *v131.i8);
            v128 = vmlal_high_s16(v128, v134, v134);
            v127 = vmlal_s16(v127, *v134.i8, *v134.i8);
            v126 = vmlal_high_s16(v126, v133, v133);
            v125 = vmlal_s16(v125, *v133.i8, *v133.i8);
            v122 += 4;
            v121 += 4;
            v119 -= 32;
          }

          while (v119);
          v8 = vaddq_s32(v127, v123);
          v7 = vaddq_s32(vaddq_s32(v126, v120), vaddq_s32(v128, v124));
          v115 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v125, v118), v8), v7));
          if (v107 == v11)
          {
            goto LABEL_109;
          }

          v117 = v17 & 0x7FFFFFE0;
          v114 = v117;
          if ((v17 & 0x1C) == 0)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v115 = 0;
          v117 = 0;
        }

        v135 = v115;
        v136 = (v14->i32 + v117);
        v137 = (v12->i32 + v117);
        v138 = v117 - (v17 & 0x7FFFFFFC);
        do
        {
          v139 = *v136++;
          v7.i32[0] = v139;
          v140 = *v137++;
          v8.i32[0] = v140;
          v8.i64[0] = vmovl_u8(*v8.i8).u64[0];
          v7 = vsubl_u16(*&vmovl_u8(*v7.i8), *v8.i8);
          v135 = vmlaq_s32(v135, v7, v7);
          v138 += 4;
        }

        while (v138);
        v115 = vaddvq_s32(v135);
        v114 = v11 & 0x7FFFFFFC;
        if (v108 != v11)
        {
          goto LABEL_108;
        }

LABEL_109:
        v116 = sqrtf(v115);
        if (v116 >= v113)
        {
          goto LABEL_93;
        }

LABEL_110:
        if ((v116 - *(*(v13 + 8) + 4 * v110)) < (*(v5 + 40) * v6))
        {
          v112 = v110;
          v113 = v116;
        }

LABEL_93:
        ++v110;
        v111 = (v111 + v11);
        v14 = (v14 + v11);
      }

      while (v110 != v109);
      if (v112 == -1)
      {
        return;
      }

      v13 = *(v13 + 24) + 56 * v112;
      v14 = *v13;
      if (!*v13)
      {
        goto LABEL_156;
      }
    }
  }

  while (1)
  {
    v176 = *(v13 + 16);
    if (v176 < 1)
    {
      break;
    }

    if (v3 <= 0)
    {
      v184 = 0;
      v178 = -1;
      v185 = INFINITY;
      do
      {
        if (v185 > 0.0 && (0.0 - *(*(v13 + 8) + 4 * v184)) < (*(v5 + 40) * v6))
        {
          v185 = 0.0;
          v178 = v184;
        }

        ++v184;
      }

      while (v176 != v184);
    }

    else
    {
      v177 = 0;
      v178 = -1;
      v179 = INFINITY;
      do
      {
        v180 = 0;
        v181 = 0;
        do
        {
          v182 = vabdq_u8(v14[v180 / 0x10], *(v2 + v180));
          v7 = vqaddq_u16(vmull_u8(*v182.i8, *v182.i8), vmull_high_u8(v182, v182));
          v181 += vaddlvq_u16(v7);
          v180 += 16;
        }

        while (v180 < v3);
        v183 = sqrtf(v181);
        if (v183 < v179 && (v183 - *(*(v13 + 8) + 4 * v177)) < (*(v5 + 40) * v6))
        {
          v178 = v177;
          v179 = v183;
        }

        ++v177;
        v14 = (v14 + v3);
      }

      while (v177 != v176);
    }

    if (v178 == -1)
    {
      break;
    }

    v13 = *(v13 + 24) + 56 * v178;
    v14 = *v13;
    if (!*v13)
    {
      goto LABEL_156;
    }
  }
}

uint64_t vl_pose_count_inliers(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12)
{
  v20 = a6 * a6;
  v21 = *a2;
  v22 = a2[1];
  v23 = *(a3 + 8);
  v24 = *(a1 + 40);
  v25 = *(a1 + 44);
  v12.i32[0] = *(a1 + 8);
  v26 = *(a1 + 12);
  v13.i32[0] = *a1;
  v14.i32[0] = *(a1 + 4);
  v15.i32[0] = *(a1 + 32);
  v27 = *(a1 + 36);
  v16.i32[0] = *(a1 + 24);
  v17.i32[0] = *(a1 + 28);
  *v18.i32 = ((v26 * v24) + (*a1 * v27)) + (*v16.i32 * v25);
  v28 = *(a1 + 16);
  v29 = *(a1 + 20);
  *a12.i32 = ((v24 * v28) + (*v14.i32 * v27)) + (*v17.i32 * v25);
  *v19.i32 = ((v24 * v29) + (*v12.i32 * v27)) + (*v15.i32 * v25);
  v109 = v28;
  v107 = a12.i32[0];
  v108 = v29;
  v106 = *v19.i32;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 24) = 0;
    *(a5 + 48) = 0;
    if (v21 >= 1)
    {
      v32 = 0;
      v33 = 0;
      v34 = v21 & 0x7FFFFFFF;
      v104 = v26;
      v105 = v20;
      v102 = v13.i32[0];
      v103 = v12.i32[0];
      v100 = v15.i32[0];
      v101 = v14.i32[0];
      v98 = v17.i32[0];
      v99 = v16.i32[0];
      v97 = v18.i32[0];
      do
      {
        v35 = *v23;
        v36 = v23[1];
        v37 = v23[2];
        v38 = (((v26 * v36) + (*v13.i32 * *v23)) + (*v16.i32 * v37)) - *v18.i32;
        if (v38 > 0.0)
        {
          v39 = (((v28 * v36) + (*v14.i32 * v35)) + (*v17.i32 * v37)) - *a12.i32;
          v40 = (((v29 * v36) + (*v12.i32 * v35)) + (*v15.i32 * v37)) - *v19.i32;
          if ((((v40 - (*(v22 + 4) * v38)) * (v40 - (*(v22 + 4) * v38))) + ((v39 - (*v22 * v38)) * (v39 - (*v22 * v38)))) < (v20 * (v38 * v38)))
          {
            v41 = *a5;
            v42 = *(a5 + 16);
            if (*a5 >= v42)
            {
              if (v42)
              {
                v43 = 2 * v42;
              }

              else
              {
                v43 = 32;
              }

              if (v43 <= v41)
              {
                v44 = v41 + 1;
              }

              else
              {
                v44 = v43;
              }

              if (v44)
              {
                v45 = malloc_type_realloc(*(a5 + 8), 8 * v44, 0x100004000313F17uLL);
                *v19.i32 = v106;
                a12.i32[0] = v107;
                v29 = v108;
                v28 = v109;
                v18.i32[0] = v97;
                v17.i32[0] = v98;
                v16.i32[0] = v99;
                v15.i32[0] = v100;
                v14.i32[0] = v101;
                v13.i32[0] = v102;
                v12.i32[0] = v103;
                v26 = v104;
                v20 = v105;
                *(a5 + 8) = v45;
                v41 = *a5;
              }

              *(a5 + 16) = v44;
            }

            *a5 = v41 + 1;
            *(*(a5 + 8) + 8 * v41) = *v22;
            v46 = *(a5 + 24);
            v47 = *(a5 + 40);
            if (v46 >= v47)
            {
              v48 = 2 * v47;
              v49 = v47 == 0;
              v50 = 21;
              if (!v49)
              {
                v50 = v48;
              }

              if (v50 <= v46)
              {
                v51 = v46 + 1;
              }

              else
              {
                v51 = v50;
              }

              if (v51)
              {
                v52 = malloc_type_realloc(*(a5 + 32), 12 * v51, 0x10000403E1C8BA9uLL);
                *v19.i32 = v106;
                a12.i32[0] = v107;
                v29 = v108;
                v28 = v109;
                v18.i32[0] = v97;
                v17.i32[0] = v98;
                v16.i32[0] = v99;
                v15.i32[0] = v100;
                v14.i32[0] = v101;
                v13.i32[0] = v102;
                v12.i32[0] = v103;
                v26 = v104;
                v20 = v105;
                *(a5 + 32) = v52;
                v46 = *(a5 + 24);
              }

              *(a5 + 40) = v51;
            }

            v33 = (v33 + 1);
            *(a5 + 24) = v46 + 1;
            v53 = *(a5 + 32) + 12 * v46;
            v54 = *v23;
            *(v53 + 8) = v23[2];
            *v53 = v54;
            if (a4)
            {
              v55 = *(a5 + 48);
              v56 = *(a5 + 64);
              if (v55 >= v56)
              {
                if (v56)
                {
                  v57 = 2 * v56;
                }

                else
                {
                  v57 = 32;
                }

                if (v57 <= v55)
                {
                  v58 = v55 + 1;
                }

                else
                {
                  v58 = v57;
                }

                if (v58)
                {
                  v59 = malloc_type_realloc(*(a5 + 56), 8 * v58, 0x100004000313F17uLL);
                  *v19.i32 = v106;
                  a12.i32[0] = v107;
                  v29 = v108;
                  v28 = v109;
                  v18.i32[0] = v97;
                  v17.i32[0] = v98;
                  v16.i32[0] = v99;
                  v15.i32[0] = v100;
                  v14.i32[0] = v101;
                  v13.i32[0] = v102;
                  v12.i32[0] = v103;
                  v26 = v104;
                  v20 = v105;
                  *(a5 + 56) = v59;
                  v55 = *(a5 + 48);
                }

                *(a5 + 64) = v58;
              }

              *(a5 + 48) = v55 + 1;
              *(*(a5 + 56) + 8 * v55) = *(*(a4 + 8) + 8 * v32);
            }
          }
        }

        v22 += 8;
        v23 += 3;
        ++v32;
      }

      while (v34 != v32);
      return v33;
    }

    return 0;
  }

  if (v21 < 1)
  {
    return 0;
  }

  if ((*a2 & 0x7FFFFFFFuLL) > 7)
  {
    v60 = (*a2 & 0x7FFFFFFF) - (*a2 & 7);
    v61 = (v22 + 8 * v60);
    v62 = &v23[3 * v60];
    v63 = vdupq_lane_s32(v13, 0);
    v64 = vdupq_lane_s32(v16, 0);
    v65 = vdupq_lane_s32(v18, 0);
    v66 = vdupq_lane_s32(v14, 0);
    v67 = vdupq_lane_s32(v17, 0);
    v68 = vdupq_lane_s32(*a12.i8, 0);
    v69 = (v22 + 32);
    v70 = vdupq_lane_s32(v12, 0);
    a12 = 0uLL;
    v71 = vdupq_lane_s32(v15, 0);
    v72 = v60;
    v73 = vdupq_lane_s32(v19, 0);
    v74 = 0uLL;
    do
    {
      v75 = v23;
      v110 = vld3q_f32(v75);
      v75 += 12;
      v111 = vld3q_f32(v75);
      v76 = v69 - 8;
      v77 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v110.val[1], v26), v110.val[0], v63), v110.val[2], v64), v65);
      v78 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v110.val[1], v28), v110.val[0], v66), v110.val[2], v67), v68);
      v79 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v110.val[1], v29), v110.val[0], v70), v110.val[2], v71);
      v80 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v111.val[1], v109), v111.val[0], v66), v111.val[2], v67);
      v81 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v111.val[1], v108), v111.val[0], v70), v111.val[2], v71);
      *v110.val[0].f32 = vld2q_f32(v76);
      v110.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v111.val[1], v26), v111.val[0], v63), v111.val[2], v64), v65);
      v111.val[0] = vsubq_f32(v79, v73);
      *v111.val[1].f32 = vld2q_f32(v69);
      v82 = vsubq_f32(v80, v68);
      v29 = *(a1 + 20);
      v83 = vmlsq_f32(v78, v77, v110.val[0]);
      v111.val[0] = vmlsq_f32(v111.val[0], v77, v110.val[1]);
      v84 = vmlsq_f32(vsubq_f32(v81, v73), v110.val[2], v111.val[2]);
      v85 = vmlsq_f32(v82, v110.val[2], v111.val[1]);
      v110.val[1] = vmulq_f32(v84, v84);
      v28 = *(a1 + 16);
      a12 = vsubq_s32(a12, vandq_s8(vcgtzq_f32(v77), vcgtq_f32(vmulq_n_f32(vmulq_f32(v77, v77), v20), vmlaq_f32(vmulq_f32(v111.val[0], v111.val[0]), v83, v83))));
      v74 = vsubq_s32(v74, vandq_s8(vcgtzq_f32(v110.val[2]), vcgtq_f32(vmulq_n_f32(vmulq_f32(v110.val[2], v110.val[2]), v20), vmlaq_f32(v110.val[1], v85, v85))));
      v69 += 16;
      v23 += 24;
      v72 -= 8;
    }

    while (v72);
    v33 = vaddvq_s32(vaddq_s32(v74, a12));
    *v19.i32 = v106;
    a12.i32[0] = v107;
    if ((v21 & 7) == 0)
    {
      return v33;
    }
  }

  else
  {
    LODWORD(v60) = 0;
    LODWORD(v33) = 0;
    v61 = a2[1];
    v62 = *(a3 + 8);
  }

  v86 = v21 - v60;
  do
  {
    v87 = v62[1];
    v88 = v62[2];
    v89 = (((v26 * v87) + (*v13.i32 * *v62)) + (*v16.i32 * v88)) - *v18.i32;
    v90 = (((v28 * v87) + (*v14.i32 * *v62)) + (*v17.i32 * v88)) - *a12.i32;
    v91 = (((v29 * v87) + (*v12.i32 * *v62)) + (*v15.i32 * v88)) - *v19.i32;
    v92 = *v61;
    v93 = v61[1];
    v61 += 2;
    v95 = (((v91 - (v93 * v89)) * (v91 - (v93 * v89))) + ((v90 - (v92 * v89)) * (v90 - (v92 * v89)))) < (v20 * (v89 * v89)) && v89 > 0.0;
    v33 = (v33 + v95);
    v62 += 3;
    --v86;
  }

  while (v86);
  return v33;
}

uint64_t vl_pose_get_inliers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, float a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12)
{
  v13 = *a4;
  v68 = 0;
  v69 = 0;
  v65 = 0;
  v66 = 0;
  v62 = 0;
  v63 = 0;
  if (v13 < 1)
  {
    v48 = 0;
    v49 = 0;
    goto LABEL_32;
  }

  v53 = a1;
  v54 = a5;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v60 = 0;
  v52 = v13 & 0x7FFFFFFF;
  v22 = 1;
  do
  {
    v24 = *(a4[1] + v16);
    v25 = v22 - 1;
    v26 = *(a3 + 8);
    v27 = *(*(a2 + 8) + v14);
    if (v22 - 1 >= v60)
    {
      v28 = 2 * v60;
      if (!v60)
      {
        v28 = 32;
      }

      if (v28 <= v25)
      {
        v28 = v22;
      }

      if (!v28)
      {
        v60 = 0;
        *&v21[v16] = v27;
        if (v25 < v20)
        {
          goto LABEL_22;
        }

        goto LABEL_12;
      }

      v29 = v17;
      v58 = v20;
      v60 = v28;
      v30 = v18;
      v31 = v19;
      v32 = *(a3 + 8);
      v21 = malloc_type_realloc(v21, 8 * v28, 0x100004000313F17uLL);
      v26 = v32;
      v19 = v31;
      v18 = v30;
      v20 = v58;
      v17 = v29;
    }

    *&v21[v16] = v27;
    if (v25 < v20)
    {
      goto LABEL_22;
    }

LABEL_12:
    v33 = 2 * v20;
    if (!v20)
    {
      v33 = 21;
    }

    if (v33 <= v25)
    {
      v34 = v22;
    }

    else
    {
      v34 = v33;
    }

    if (v34)
    {
      v59 = v34;
      v35 = v21;
      v36 = v18;
      v37 = v17;
      v38 = v24;
      v39 = v26;
      v40 = malloc_type_realloc(v19, 12 * v34, 0x10000403E1C8BA9uLL);
      v26 = v39;
      v24 = v38;
      v17 = v37;
      v18 = v36;
      v19 = v40;
      v21 = v35;
      v20 = v59;
    }

    else
    {
      v20 = 0;
    }

LABEL_22:
    v41 = (v26 + 12 * v24);
    v42 = *v41;
    v43 = &v19[v15];
    *(v43 + 2) = *(v41 + 2);
    *v43 = v42;
    if (v25 >= v18)
    {
      v44 = 2 * v18;
      if (!v18)
      {
        v44 = 32;
      }

      if (v44 <= v25)
      {
        v18 = v22;
      }

      else
      {
        v18 = v44;
      }

      if (v18)
      {
        v45 = v21;
        v46 = v19;
        v47 = malloc_type_realloc(v17, 8 * v18, 0x100004000313F17uLL);
        v19 = v46;
        v17 = v47;
        v21 = v45;
      }
    }

    v23 = &v17[v16];
    *v23 = v24;
    *(v23 + 1) = v22++ - 1;
    v16 += 8;
    v15 += 12;
    v14 += 288;
  }

  while (v22 - v52 != 1);
  v68 = v21;
  v69 = v60;
  v65 = v19;
  v66 = v20;
  v62 = v17;
  v63 = v18;
  v48 = v21;
  a1 = v53;
  a5 = v54;
  v49 = v52;
LABEL_32:
  v67 = v49;
  v64 = v49;
  v61 = v49;
  v50 = vl_pose_count_inliers(a1, &v67, &v64, &v61, a5, a6, a7, a8, a9, a10, a11, a12);
  free(v48);
  free(v65);
  free(v62);
  return v50;
}

uint64_t vl_pose(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, _DWORD *a15)
{
  v108 = 0;
  v109 = 0;
  v110 = 0;
  if (*(a1 + 3900))
  {
    *(a1 + 3808) -= mach_absolute_time();
  }

  else
  {
    clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (a1 + 3720));
    clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (a1 + 3704));
    clock_gettime(_CLOCK_MONOTONIC, (a1 + 3688));
  }

  vl_dump_detail_add_hash(a11, "vl_pose input", a3, a7, a5);
  vl_dump_detail_pose_input(a11, a3, a7);
  v19 = *(a5 + 240);
  v111 = *(a2 + 232);
  v112 = *(a2 + 240);
  v20 = *(a2 + 200) - *(a5 + 312);
  v21 = *(a2 + 208) - *(a5 + 320);
  v22 = *(a2 + 216) - *(a5 + 328);
  v23 = v21 * *(a5 + 280) + *(a5 + 256) * v20 + *(a5 + 304) * v22;
  v102 = (a5 + 240);
  v113 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*(a5 + 264), v21), v19, v20), *(a5 + 288), v22));
  *v19.f64 = v23;
  *&v20 = (*(a2 + 224) + 8.0) * 3.0;
  v114 = LODWORD(v19.f64[0]);
  v115 = LODWORD(v20);
  *a13 = 0;
  *(a13 + 24) = 0;
  *(a13 + 48) = 0;
  *(a1 + 3928) = 0;
  *(a1 + 3952) = 0;
  v24 = 1;
  do
  {
    if ((*a10 & v24) != 0)
    {
      ptr[0] = 0;
      ptr[1] = 0;
      v106.i64[0] = 0;
      if (v24 <= 7)
      {
        if ((v24 - 1) >= 2)
        {
          if (!v24)
          {
            printf("Verbose : ");
            printf("Skipping pose estimation (VL_POSE_METHOD_NONE)");
            putchar(10);
            goto LABEL_6;
          }

          if (v24 != 4)
          {
LABEL_55:
            printf("%sError : ", "");
            printf("Unsupported detection method %d", *a10);
            putchar(10);
            if (ptr[0] < 1)
            {
              goto LABEL_6;
            }

            goto LABEL_37;
          }
        }
      }

      else
      {
        if (v24 <= 31)
        {
          if (v24 != 8)
          {
            if (v24 == 16)
            {
              vl_pose_g_ps(a1 + 360, a2, a3, a5, a6, a7, a8, a10, ptr);
              if (ptr[0] < 1)
              {
                goto LABEL_6;
              }

              goto LABEL_37;
            }

            goto LABEL_55;
          }

          vl_pose_score(a1 + 360, a2, a3, a4, a5, a7, a6, a10 + 60, ptr);
LABEL_36:
          if (ptr[0] < 1)
          {
            goto LABEL_6;
          }

          goto LABEL_37;
        }

        if (v24 != 32)
        {
          if (v24 == 128)
          {
            v25 = malloc_type_realloc(0, 0xF0uLL, 0x1000040EED21634uLL);
            ptr[1] = v25;
            v106.i64[0] = 5;
            ptr[0] = 1;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            g_coords_diff((a2 + 304), v102, &v116);
            v30 = vcvt_hight_f32_f64(vcvt_f32_f64(v118), v119);
            *v25 = vcvt_hight_f32_f64(vcvt_f32_f64(v116), v117);
            v25[1] = v30;
            v25[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v120), v121);
            if (ptr[0] < 1)
            {
              goto LABEL_6;
            }

            goto LABEL_37;
          }

          if (v24 == 64)
          {
            printf("%sAborting : ", "");
            printf("Not support running CSL in standalone compilation.");
            putchar(10);
            __assert_rtn("pose_solver", "vl_pose.c", 265, "0");
          }

          goto LABEL_55;
        }
      }

      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      if (vl_pose_ransac(a1, v24, a2, a3, a5, a7, &v111, a10 + 4, &v116) == 1)
      {
        v31 = ptr[0];
        if (ptr[0] >= v106.i64[0])
        {
          v32 = 5;
          if (v106.i64[0])
          {
            v32 = 2 * v106.i64[0];
          }

          if (v32 <= ptr[0])
          {
            v33 = ptr[0] + 1;
          }

          else
          {
            v33 = v32;
          }

          if (v33)
          {
            ptr[1] = malloc_type_realloc(ptr[1], 48 * v33, 0x1000040EED21634uLL);
            v31 = ptr[0];
          }

          v106.i64[0] = v33;
        }

        ptr[0] = v31 + 1;
        v34 = (ptr[1] + 48 * v31);
        v35 = v118;
        v36 = v116;
        v34[1] = v117;
        v34[2] = v35;
        *v34 = v36;
        if (ptr[0] < 1)
        {
          goto LABEL_6;
        }

LABEL_37:
        v37 = v108;
        if (v108 >= v110)
        {
          if (2 * v110 <= v108)
          {
            v38 = v108 + 1;
          }

          else
          {
            v38 = 2 * v110;
          }

          if (v38)
          {
            v109 = malloc_type_realloc(v109, 280 * v38, 0x102004030D21021uLL);
            v37 = v108;
          }

          v110 = v38;
        }

        v108 = v37 + 1;
        v39 = v109 + 280 * v37;
        *(v39 + 2) = 0u;
        *(v39 + 3) = 0u;
        *(v39 + 4) = 0u;
        *(v39 + 5) = 0u;
        *(v39 + 6) = 0u;
        *(v39 + 7) = 0u;
        *(v39 + 8) = 0u;
        *(v39 + 9) = 0u;
        *(v39 + 10) = 0u;
        *(v39 + 11) = 0u;
        *(v39 + 12) = 0u;
        *(v39 + 13) = 0u;
        *(v39 + 14) = 0u;
        *(v39 + 15) = 0u;
        *(v39 + 16) = 0u;
        *(v39 + 34) = 0;
        *v39 = 0u;
        *(v39 + 1) = 0u;
        v41 = *(ptr[1] + 1);
        v40 = *(ptr[1] + 2);
        v42 = *ptr[1];
        *(v39 + 1) = v41;
        *(v39 + 2) = v40;
        *v39 = v42;
        if (*(a10 + 344) == 2)
        {
          v43 = *(a2 + 32);
          vl_pose_irefine(v39, a3, a5, a7, a10, v39, (v39 + 128), (v39 + 48), v43);
        }

        else
        {
          v45 = *(a2 + 32);
          v46 = *(a10 + 328) / v45;
          vl_pose_get_inliers(v39, a3, a5, a7, (v39 + 48), v46, v45, *&v41, v26, v27, v28, v29);
          if (*(a10 + 344) == 1)
          {
            v47 = *(a10 + 348) / *(a2 + 32);
            vl_pose_refine(v39, (v39 + 48), v39 + 9, *(a10 + 364), v39, (v39 + 128), v47, *(a10 + 356), *(a10 + 360));
          }
        }

        if (v24 > 0x20)
        {
          goto LABEL_52;
        }

        if (((1 << v24) & 0x100000016) == 0)
        {
          if (((1 << v24) & 0x10100) != 0)
          {
            LODWORD(v44) = 1.0;
            log_col_app("SCORE inlier  = %s%d%s", 0.0, 0.0, v44);
            goto LABEL_6;
          }

LABEL_52:
          if (v24 == 128)
          {
            LODWORD(v44) = 1.0;
            log_col_app("INPUT inlier  = %s%d%s", 0.0, 0.0, v44);
          }

          goto LABEL_6;
        }

        LODWORD(v44) = 1.0;
        log_col_app("RANSAC inlier = %s%d%s", 0.0, 0.0, v44);
LABEL_6:
        free(ptr[1]);
        goto LABEL_7;
      }

      goto LABEL_36;
    }

LABEL_7:
    v24 = (2 * v24);
  }

  while (v24 != 256);
  if (v108)
  {
    vl_dump_detail_pose_score(a11, &v108);
    if (*(a10 + 384))
    {
      if (!a9)
      {
        __assert_rtn("vl_pose", "vl_pose.c", 385, "hs != NULL");
      }

      vl_hs_compute_hypothesis_scores(a9, a1 + 2120, &v108, a2, a3, a5, a7);
      if (v108 >= 1)
      {
        v48 = 0;
        v49 = 272;
        do
        {
          log_col_app("POSE Confidence = %7.5f", *(v109 + v49));
          ++v48;
          v49 += 280;
        }

        while (v108 > v48);
      }
    }

    else if (v108 >= 1)
    {
      v50 = 0;
      v51 = 272;
      do
      {
        v52 = (v109 + v51);
        v53 = (1.0 - exp(-(*(v109 + v51 - 224) * 0.13 * (*(v109 + v51 - 224) * 0.13)))) * 0.980000019;
        *v52 = v53;
        log_col_app("POSE Confidence = %7.5f", v53);
        ++v50;
        v51 += 280;
      }

      while (v108 > v50);
    }

    vl_dump_detail_pose_referee(a11, &v108);
    v54 = v108;
    if (v108 >= 1)
    {
      v55 = 0;
      v56 = *(a1 + 3928);
      v57 = *(a1 + 3944);
      v58 = 272;
      do
      {
        v59 = v109;
        if (v56 >= v57)
        {
          v60 = 2 * v57;
          if (!v57)
          {
            v60 = 64;
          }

          if (v60 <= v56)
          {
            v57 = v56 + 1;
          }

          else
          {
            v57 = v60;
          }

          if (v57)
          {
            *(a1 + 3936) = malloc_type_realloc(*(a1 + 3936), 4 * v57, 0x100004052888210uLL);
            v56 = *(a1 + 3928);
            v54 = v108;
          }

          *(a1 + 3944) = v57;
        }

        *(a1 + 3928) = v56 + 1;
        *(*(a1 + 3936) + 4 * v56) = *&v59[v58];
        ++v55;
        v58 += 280;
        ++v56;
      }

      while (v55 < v54);
    }

    v61 = a11;
    v62 = (a5 + 240);
    if (*(a10 + 376))
    {
      if (*(a1 + 3684))
      {
        *(a1 + 3592) -= mach_absolute_time();
        if (!*(a1 + 3976))
        {
          goto LABEL_83;
        }
      }

      else
      {
        clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (a1 + 3504));
        clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (a1 + 3488));
        clock_gettime(_CLOCK_MONOTONIC, (a1 + 3472));
        if (!*(a1 + 3976))
        {
LABEL_83:
          v63 = *(a10 + 380);
          v64 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040FF0452BCuLL);
          v64[3] = v63;
          *v64 = malloc_type_calloc(v63, 0x2C8uLL, 0x10300403D7DEA7AuLL);
          *(v64 + 2) = 0x40A0240000000000;
          v64[6] = 8;
          *(v64 + 2) = xmmword_2711060F0;
          *(v64 + 3) = xmmword_271106100;
          *(v64 + 4) = xmmword_271106110;
          *(a1 + 3976) = v64;
        }
      }

      if (v108 >= 1)
      {
        v65 = 0;
        v66 = 272;
        do
        {
          v67 = v109 + v66;
          if (vl_pose_fuse(*(a1 + 3976), v102, (v109 + v66 - 272), *(v109 + v66 - 216), *(v109 + v66 - 192), *(v109 + v66 - 200), (a2 + 256), (v109 + v66), *(v109 + v66), 0.0, (v109 + v66 - 272), v109 + v66 - 144, a2, a2 + 24))
          {
            *v67 = 0;
          }

          ++v65;
          v66 += 280;
        }

        while (v108 > v65);
      }

      vl_timer_stop(a1 + 3472);
      if (*(a1 + 3684))
      {
        printf("Verbose : ");
        printf("Total time for %40s : %7.3f ms", (a1 + 3620), *(a1 + 3592) * 0.000001);
        putchar(10);
      }

      else
      {
        log_col_app("%s%s%s:%s%7.1fms%s", &str_4_1, (a1 + 3620), &str_4_1, &str_4_1, *(a1 + 3568) * 0.000001, &str_4_1);
      }

      v61 = a11;
    }

    vl_dump_detail_pose_fuse(v61, &v108);
    v68 = v108;
    if (v108 <= 0)
    {
      v77 = -1;
      v76 = v109;
      v73 = a15;
      goto LABEL_117;
    }

    v69 = 0;
    v70 = *(a1 + 3952);
    v71 = *(a1 + 3968);
    v72 = 272;
    v73 = a15;
    do
    {
      v74 = v109;
      if (v70 >= v71)
      {
        v75 = 2 * v71;
        if (!v71)
        {
          v75 = 64;
        }

        if (v75 <= v70)
        {
          v71 = v70 + 1;
        }

        else
        {
          v71 = v75;
        }

        if (v71)
        {
          *(a1 + 3960) = malloc_type_realloc(*(a1 + 3960), 4 * v71, 0x100004052888210uLL);
          v70 = *(a1 + 3952);
          v68 = v108;
        }

        *(a1 + 3968) = v71;
      }

      *(a1 + 3952) = v70 + 1;
      *(*(a1 + 3960) + 4 * v70) = *&v74[v72];
      ++v69;
      v72 += 280;
      ++v70;
    }

    while (v69 < v68);
    v76 = v109;
    if (v68 < 1)
    {
      v77 = -1;
      v79 = a14;
      v78 = a12;
      v61 = a11;
      v62 = (a5 + 240);
    }

    else
    {
      v61 = a11;
      v62 = (a5 + 240);
      if (v68 == 1)
      {
        v77 = 0;
      }

      else
      {
        v80 = 0;
        v81 = *(v109 + 68);
        v82 = 1;
        v83 = 552;
        do
        {
          if (*(v109 + v83) > v81)
          {
            v81 = *(v109 + v83);
            v80 = v82;
          }

          ++v82;
          v83 += 280;
        }

        while (v68 != v82);
        v77 = v80;
      }

LABEL_117:
      v79 = a14;
      v78 = a12;
    }

    v84 = &v76[280 * v77];
    v85 = *v84;
    v86 = *(v84 + 2);
    *(v78 + 16) = *(v84 + 1);
    *(v78 + 32) = v86;
    *v78 = v85;
    v117 = *(v84 + 4);
    v118 = *(v84 + 5);
    v119 = *(v84 + 6);
    v120 = *(v84 + 7);
    v116 = *(v84 + 3);
    *(v84 + 3) = *a13;
    v87 = *(a13 + 64);
    v89 = *(a13 + 16);
    v88 = *(a13 + 32);
    *(v84 + 6) = *(a13 + 48);
    *(v84 + 7) = v87;
    *(v84 + 4) = v89;
    *(v84 + 5) = v88;
    v90 = v120;
    *(a13 + 48) = v119;
    *(a13 + 64) = v90;
    v91 = v118;
    *(a13 + 16) = v117;
    *(a13 + 32) = v91;
    *a13 = v116;
    *v79 = *(v84 + 32);
    v79[1] = *(v84 + 33);
    v79[2] = *(v84 + 34);
    v79[3] = *(v84 + 35);
    v79[4] = *(v84 + 36);
    v79[5] = *(v84 + 37);
    v79[6] = *(v84 + 38);
    v79[7] = *(v84 + 39);
    v79[8] = *(v84 + 40);
    v79[9] = *(v84 + 41);
    v79[10] = *(v84 + 42);
    v79[11] = *(v84 + 43);
    v79[12] = *(v84 + 44);
    v79[13] = *(v84 + 45);
    v79[14] = *(v84 + 46);
    v79[15] = *(v84 + 47);
    v79[16] = *(v84 + 48);
    v79[17] = *(v84 + 49);
    v79[18] = *(v84 + 50);
    v79[19] = *(v84 + 51);
    v79[20] = *(v84 + 52);
    v79[21] = *(v84 + 53);
    v79[22] = *(v84 + 54);
    v79[23] = *(v84 + 55);
    v79[24] = *(v84 + 56);
    v79[25] = *(v84 + 57);
    v79[26] = *(v84 + 58);
    v79[27] = *(v84 + 59);
    v79[28] = *(v84 + 60);
    v79[29] = *(v84 + 61);
    v79[30] = *(v84 + 62);
    v79[31] = *(v84 + 63);
    v79[32] = *(v84 + 64);
    v79[33] = *(v84 + 65);
    v79[34] = *(v84 + 66);
    v79[35] = *(v84 + 67);
    LODWORD(v85) = *(v84 + 68);
    *v73 = v85;
    vl_dump_detail_pose_result(v61, v78, a13, *&v85);
    if (*(a1 + 4056) != 0.0 || *(a1 + 4064) != 0.0 || *(a1 + 4072) != 0.0)
    {
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      g_camera_global_to_local(v62, (a1 + 3984), v116.f64);
      *ptr = vcvt_hight_f32_f64(vcvt_f32_f64(v116), v117);
      v106 = vcvt_hight_f32_f64(vcvt_f32_f64(v118), v119);
      v107 = vcvt_hight_f32_f64(vcvt_f32_f64(v120), v121);
      *(a13 + 72) = vl_pose_get_inliers(ptr, a3, a5, a7, 0, *(a10 + 8), *v107.i64, *v106.i64, v92, v93, v94, v95);
      printf("Verbose : ");
      printf("%s: %d inliers_gt_pose", "vl_pose", *(a13 + 72));
      putchar(10);
    }
  }

  else
  {
    *a15 = 0;
    *a13 = 0;
    *(a13 + 24) = 0;
    *(a13 + 48) = 0;
  }

  if (v108 >= 1)
  {
    v96 = 0;
    for (i = 0; i < v108; ++i)
    {
      v98 = (v109 + v96);
      free(*(v109 + v96 + 56));
      free(v98[10]);
      free(v98[13]);
      v96 += 280;
    }
  }

  free(v109);
  vl_timer_stop(a1 + 3688);
  if (!*(a1 + 3900))
  {
    return log_col_app("%s%s%s:%s%7.1fms%s", &str_4_1, (a1 + 3836), &str_4_1, &str_4_1, *(a1 + 3784) * 0.000001, &str_4_1);
  }

  printf("Verbose : ");
  printf("Total time for %40s : %7.3f ms", (a1 + 3836), *(a1 + 3808) * 0.000001);
  return putchar(10);
}

double g_rot_xyz(double *a1, double a2, double a3, double a4)
{
  v7 = __sincos_stret(a4);
  v8 = __sincos_stret(a3);
  v9 = __sincos_stret(a2);
  v10 = -(v7.__sinval * v8.__cosval);
  v11 = v9.__sinval * (v8.__sinval * v7.__cosval) + v7.__sinval * v9.__cosval;
  v12 = v7.__cosval * v9.__cosval - v8.__sinval * v7.__sinval * v9.__sinval;
  v13 = -(v8.__cosval * v9.__sinval);
  v14 = v7.__sinval * v9.__sinval - v8.__sinval * v7.__cosval * v9.__cosval;
  v15 = v9.__cosval * (v8.__sinval * v7.__sinval) + v7.__cosval * v9.__sinval;
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = v12 * v17 + *a1 * v10 + v18 * v15;
  *a1 = v11 * v17 + *a1 * (v8.__cosval * v7.__cosval) + v18 * v14;
  a1[1] = v19;
  a1[2] = v13 * v17 + v16 * v8.__sinval + v18 * (v9.__cosval * v8.__cosval);
  v20 = a1[4];
  v21 = a1[5];
  v22 = a1[6];
  a1[4] = v11 * v21 + v20 * (v8.__cosval * v7.__cosval) + v22 * v14;
  a1[5] = v12 * v21 + v20 * v10 + v22 * v15;
  a1[6] = v13 * v21 + v20 * v8.__sinval + v22 * (v9.__cosval * v8.__cosval);
  v23 = a1[8];
  v24 = a1[9];
  v25 = a1[10];
  a1[8] = v11 * v24 + v23 * (v8.__cosval * v7.__cosval) + v25 * v14;
  a1[9] = v12 * v24 + v23 * v10 + v25 * v15;
  a1[10] = v13 * v24 + v23 * v8.__sinval + v25 * (v9.__cosval * v8.__cosval);
  v26 = a1[12];
  v27 = a1[13];
  v28 = v11 * v27 + v26 * (v8.__cosval * v7.__cosval);
  v29 = a1[14];
  a1[12] = v28 + v29 * v14;
  a1[13] = v12 * v27 + v26 * v10 + v29 * v15;
  result = v13 * v27 + v26 * v8.__sinval + v29 * (v9.__cosval * v8.__cosval);
  a1[14] = result;
  return result;
}

double g_mul_4x4(double *a1, double *a2, double *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[1];
  v10 = a3[8];
  v9 = a3[9];
  v12 = a3[12];
  v11 = a3[13];
  v13 = v3 * v6 + *a2 * *a3 + v4 * v10 + v5 * v12;
  v14 = v3 * v7 + *a2 * v8 + v4 * v9 + v5 * v11;
  v15 = a3[6];
  v16 = a3[7];
  v18 = a3[2];
  v17 = a3[3];
  v20 = a3[10];
  v19 = a3[11];
  v22 = a3[14];
  v21 = a3[15];
  v23 = v3 * v15 + *a2 * v18 + v4 * v20 + v5 * v22;
  v24 = v3 * v16 + *a2 * v17 + v4 * v19 + v5 * v21;
  v25 = a2[4];
  v26 = a2[5];
  v27 = a2[6];
  v28 = a2[7];
  v29 = v6 * v26 + v25 * *a3 + v27 * v10 + v28 * v12;
  v30 = v7 * v26 + v25 * v8 + v27 * v9 + v28 * v11;
  v31 = v15 * v26 + v25 * v18 + v27 * v20 + v28 * v22;
  v32 = v16 * v26 + v25 * v17 + v27 * v19 + v28 * v21;
  v33 = a2[8];
  v34 = a2[9];
  v36 = a2[10];
  v35 = a2[11];
  v37 = v6 * v34 + v33 * *a3 + v36 * v10 + v35 * v12;
  v38 = v7 * v34 + v33 * v8 + v36 * v9 + v35 * v11;
  v39 = v15 * v34 + v33 * v18 + v36 * v20 + v35 * v22;
  v40 = v16 * v34 + v33 * v17 + v36 * v19 + v35 * v21;
  v41 = a2[12];
  v42 = a2[13];
  v43 = a2[14];
  v44 = a2[15];
  v45 = v6 * v42 + v41 * *a3 + v43 * v10 + v44 * v12;
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v23;
  a1[3] = v24;
  a1[4] = v29;
  a1[5] = v30;
  a1[6] = v31;
  a1[7] = v32;
  a1[8] = v37;
  a1[9] = v38;
  a1[10] = v39;
  a1[11] = v40;
  a1[12] = v45;
  a1[13] = v7 * v42 + v41 * v8 + v43 * v9 + v44 * v11;
  result = v16 * v42 + v41 * v17 + v43 * v19 + v44 * v21;
  a1[14] = v15 * v42 + v41 * v18 + v43 * v20 + v44 * v22;
  a1[15] = result;
  return result;
}

double g_log_so3(double *a1, double *a2)
{
  v4 = a2[4];
  v5 = a2[8];
  v6 = *a2 + v4 + v5;
  v7 = -1.0;
  if (v6 == -1.0)
  {
    v8 = sqrt((*a2 + -1.0) * 0.5 + 1.0);
    if (v8 == 0.0)
    {
      v9 = sqrt((v4 + -1.0) * 0.5 + 1.0);
      if (v9 == 0.0)
      {
        v10 = sqrt((v5 + -1.0) * 0.5 + 1.0);
        if (v10 == 0.0)
        {
          log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/core/base/g_matrix.c", 398, "g_log_so3", "One of b, c, d should be nonzero");
          exit(1);
        }

        v8 = a2[2] * 0.5 / v10;
        v9 = a2[5] * 0.5 / v10;
      }

      else
      {
        v8 = a2[1] * 0.5 / v9;
        v10 = a2[7] * 0.5 / v9;
      }
    }

    else
    {
      v9 = a2[1] * 0.5 / v8;
      v10 = a2[2] * 0.5 / v8;
    }

    result = 3.14159265;
    *a1 = v8 * 3.14159265;
    a1[1] = v9 * 3.14159265;
    a1[2] = v10 * 3.14159265;
  }

  else
  {
    v11 = 0.5;
    v12 = (v6 + -1.0) * 0.5;
    v13 = 1.0;
    if (v12 <= 1.0)
    {
      v13 = (v6 + -1.0) * 0.5;
    }

    if (v12 >= -1.0)
    {
      v7 = v13;
    }

    result = acos(v7);
    if (result != 0.0)
    {
      v15 = result * 0.5;
      v16 = result;
      v17 = sin(result);
      result = v16;
      v11 = v15 / v17;
    }

    *a1 = -(v11 * (a2[5] - a2[7]));
    a1[1] = v11 * (a2[2] - a2[6]);
    a1[2] = -(v11 * (a2[1] - a2[3]));
  }

  return result;
}

void g_exp_so3(void *a1, double *a2)
{
  v2 = *a2 * *a2 + 0.0 + a2[1] * a2[1] + a2[2] * a2[2];
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0x3FF0000000000000;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0x3FF0000000000000;
  v3 = sqrt(v2);
  if (v3 != 0.0)
  {
    v5 = a2[1];
    v6 = a2[2];
    v39 = *a2;
    v7 = sin(v3) / v3;
    v8 = v7 * v5;
    v9 = v7 * v6;
    v10 = v39;
    v11 = vmulq_n_f64(*&v39, v7);
    v12 = 0.0 - v9;
    v13 = v8 + 0.0;
    v14 = v9 + 0.0;
    v15 = 0.0 - v11.f64[0];
    v16 = 0.0 - v8;
    v17 = vaddq_f64(v11, xmmword_271103540);
    v11.f64[0] = 0.0 - v6 * v6;
    v18 = v11.f64[0] - v5 * v5;
    v19 = 0.0 - v6 * 0.0 - v6 * 0.0 + v5 * v39;
    v20 = v5 * 0.0 + 0.0 + v6 * v39 + v5 * 0.0;
    v21 = v6 * 0.0 + 0.0 + v6 * 0.0 + v39 * v5;
    v22 = v11.f64[0] + 0.0 - v10 * v10;
    v11.f64[0] = v6 * v5 + 0.0;
    v23 = v11.f64[0] - v39 * 0.0 - v39 * 0.0;
    v24 = 0.0 - v5 * 0.0 + v39 * v6 - v5 * 0.0;
    v25.f64[0] = v11.f64[0] + v39 * 0.0 + v39 * 0.0;
    v26 = 0.0 - v5 * v5 - v10 * v10 + 0.0;
    if (fabs(v3) >= 0.001)
    {
      v37 = 0.0 - v8;
      v38 = v5 * 0.0 + 0.0 + v6 * v39 + v5 * 0.0;
      v40 = v17;
      v28 = v15;
      v33 = v8 + 0.0;
      v34 = v23;
      v29 = v19;
      v30 = v21;
      v36 = v22;
      v35 = v25.f64[0];
      v32 = v26;
      v31 = cos(v3);
      v26 = v32;
      v13 = v33;
      v23 = v34;
      v25.f64[0] = v35;
      v22 = v36;
      v16 = v37;
      v21 = v30;
      v20 = v38;
      v19 = v29;
      v15 = v28;
      v17 = v40;
      v27 = (1.0 - v31) / v3 / v3;
    }

    else
    {
      v27 = v3 * v3 / -24.0 + 0.5;
    }

    v25.f64[1] = v26;
    *a1 = v17.f64[1] + v18 * v27;
    *(a1 + 1) = v12 + v19 * v27;
    *(a1 + 2) = v13 + v20 * v27;
    *(a1 + 3) = v14 + v21 * v27;
    *(a1 + 4) = v17.f64[1] + v22 * v27;
    *(a1 + 5) = v15 + v23 * v27;
    *(a1 + 6) = v16 + v24 * v27;
    *(a1 + 7) = vaddq_f64(v17, vmulq_n_f64(v25, v27));
  }
}

double g_inv_3x3(double *a1, double *a2)
{
  v3 = a2[7];
  v2 = a2[8];
  v4 = a2[4];
  v5 = a2[5];
  v6 = v2 * v4 - v3 * v5;
  v7 = a2[2];
  v8 = a2[1];
  v9 = v2 * v8 - v3 * v7;
  v10 = v5 * v8 - v4 * v7;
  result = *a2 * v6 - v9 * a2[3] + a2[6] * v10;
  *a1 = v6 * (1.0 / result);
  a1[1] = -(v9 * (1.0 / result));
  a1[2] = v10 * (1.0 / result);
  a1[3] = -((a2[8] * a2[3] - a2[6] * a2[5]) * (1.0 / result));
  a1[4] = 1.0 / result * (a2[8] * *a2 - a2[6] * a2[2]);
  a1[5] = -((a2[5] * *a2 - a2[3] * a2[2]) * (1.0 / result));
  a1[6] = 1.0 / result * (a2[7] * a2[3] - a2[6] * a2[4]);
  a1[7] = -((a2[7] * *a2 - a2[6] * a2[1]) * (1.0 / result));
  a1[8] = 1.0 / result * (a2[4] * *a2 - a2[3] * a2[1]);
  return result;
}

void vl_height_get_for_latlon(int *a1, uint64_t a2, float a3, float a4)
{
  v4 = *(a1 + 15) / (a1[1] * *a1);
  if (v4 >= 1)
  {
    v41 = *(a1 + 14);
    v8 = __sincos_stret(a3);
    v9 = 6378137.0 / sqrt(v8.__sinval * -0.00669437999 * v8.__sinval + 1.0);
    v40 = v8.__sinval * (v9 * 0.99330562) - *(a1 + 12);
    v39 = *(a1 + 2);
    v10 = __sincos_stret(a4);
    v11 = 0;
    v12 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*(a1 + 2), v10.__sinval * (v8.__cosval * v9) - *(a1 + 11)), v39, v10.__cosval * (v8.__cosval * v9) - *(a1 + 10)), v41, v40);
    v13 = vcvt_f32_f64(v12);
    v14 = v12;
    do
    {
      v16 = vrev64_s32(vcvt_f32_f64(*(a1 + 26)));
      v17 = vcvt_s32_f32(vmul_f32(vadd_f32(vmul_f32(v16, 0x3F0000003F000000), v13), vdiv_f32(vcvt_f32_s32(*a1), v16)));
      v18 = vcgt_s32(*a1, v17);
      if (v18.i8[0] & 1) != 0 && (v17.i32[0] & 0x80000000) == 0 && (v17.i32[1] & 0x80000000) == 0 && (v18.i8[4])
      {
        v19 = *(*(a1 + 16) + 4 * (v17.i32[0] + (v17.i32[1] + HIDWORD(*a1) * v11) * *a1));
        if (fabsf(v19) <= 80000.0 && v19 != 3.4028e38)
        {
          v21 = v19;
          v22 = *(a1 + 10) + v14.f64[1] * *(a1 + 2) + *(a1 + 1) * v14.f64[0] + *(a1 + 3) * v21;
          v23 = v14.f64[1] * *(a1 + 8);
          v24 = *(a1 + 12);
          v25 = *(a1 + 11) + v14.f64[1] * *(a1 + 5) + *(a1 + 4) * v14.f64[0] + *(a1 + 6) * v21;
          v26 = v24 + v23 + *(a1 + 7) * v14.f64[0] + *(a1 + 9) * v21;
          v27 = sqrt(v25 * v25 + v22 * v22);
          if (v27 >= 0.001)
          {
            v28 = atan2(v24 + v23 + *(a1 + 7) * v14.f64[0] + *(a1 + 9) * v21, v27 * 0.996647189);
          }

          else
          {
            v28 = dbl_2711036C0[v26 < 0.0];
            v27 = 0.001;
          }

          v29 = __sincos_stret(v28);
          v30 = atan2(v26 + v29.__sinval * (v29.__sinval * v29.__sinval) * 42841.3115, v27 + v29.__cosval * (v29.__cosval * v29.__cosval) * -42697.6727);
          v33 = __sincos_stret(v30);
          cosval = v33.__cosval;
          sinval = v33.__sinval;
          v34 = *a2;
          v35 = *(a2 + 16);
          if (*a2 >= v35)
          {
            if (v35)
            {
              v36 = 2 * v35;
            }

            else
            {
              v36 = 64;
            }

            if (v36 <= v34)
            {
              v37 = v34 + 1;
            }

            else
            {
              v37 = v36;
            }

            if (v37)
            {
              v38 = malloc_type_realloc(*(a2 + 8), 4 * v37, 0x100004052888210uLL);
              sinval = v33.__sinval;
              cosval = v33.__cosval;
              *(a2 + 8) = v38;
              v34 = *a2;
            }

            *(a2 + 16) = v37;
          }

          *a2 = v34 + 1;
          v15 = v27 / cosval + -6378137.0 / sqrt(sinval * -0.00669437999 * sinval + 1.0);
          *(*(a2 + 8) + 4 * v34) = v15;
        }
      }

      ++v11;
    }

    while (v4 != v11);
  }
}

int *vl_height_get_for_cs(int *result, double *a2, uint64_t a3, float a4, float a5)
{
  v5 = *(result + 15) / (result[1] * *result);
  if (v5 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = a4;
    v11 = a5;
    do
    {
      v13 = a2[2];
      v15 = a2[8];
      v14 = a2[9];
      v16 = a2[5];
      v18 = a2[10];
      v17 = a2[11];
      v20 = *(v8 + 10);
      v19 = *(v8 + 11);
      v21 = *(v8 + 12);
      v22 = *(v8 + 2);
      v23 = *(v8 + 2);
      v24 = *(v8 + 14);
      v25 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v23, v18 + a2[4] * v11 + a2[3] * v10 + v16 * 0.0 - v19), v22, v14 + a2[1] * v11 + *a2 * v10 + v13 * 0.0 - v20), v24, v17 + a2[7] * v11 + a2[6] * v10 + v15 * 0.0 - v21);
      v26 = vrev64_s32(vcvt_f32_f64(*(v8 + 26)));
      v27 = vcvt_s32_f32(vmul_f32(vadd_f32(vmul_f32(v26, 0x3F0000003F000000), vcvt_f32_f64(v25)), vdiv_f32(vcvt_f32_s32(*v8), v26)));
      v28 = vcgt_s32(*v8, v27);
      if (v28.i8[0] & 1) != 0 && (v27.i32[0] & 0x80000000) == 0 && (v27.i32[1] & 0x80000000) == 0 && (v28.i8[4])
      {
        v29 = *(*(v8 + 16) + 4 * (v27.i32[0] + (v27.i32[1] + HIDWORD(*v8) * v9) * *v8));
        if (fabsf(v29) <= 80000.0 && v29 != 3.4028e38)
        {
          v31 = *(v8 + 3);
          v32 = *(v8 + 6);
          v33 = *(v8 + 9);
          v34 = *a3;
          v35 = *(a3 + 16);
          if (*a3 >= v35)
          {
            if (v35)
            {
              v36 = 2 * v35;
            }

            else
            {
              v36 = 64;
            }

            if (v36 <= v34)
            {
              v37 = v34 + 1;
            }

            else
            {
              v37 = v36;
            }

            if (v37)
            {
              v47 = a2[9];
              v48 = a2[2];
              v45 = a2[5];
              v46 = a2[8];
              v43 = *(v8 + 14);
              v44 = v25;
              v41 = *(v8 + 2);
              v42 = *(v8 + 2);
              v39 = *(v8 + 6);
              v40 = *(v8 + 9);
              v38 = *(v8 + 3);
              result = malloc_type_realloc(*(a3 + 8), 4 * v37, 0x100004052888210uLL);
              v31 = v38;
              v32 = v39;
              v33 = v40;
              v22 = v41;
              v23 = v42;
              v24 = v43;
              v25 = v44;
              v16 = v45;
              v15 = v46;
              v14 = v47;
              v13 = v48;
              *(a3 + 8) = result;
              v34 = *a3;
            }

            *(a3 + 16) = v37;
          }

          *a3 = v34 + 1;
          v12 = v16 * (v19 + COERCE_DOUBLE(*&vmulq_f64(v23, v25).f64[1]) + v23.f64[0] * v25.f64[0] + v32 * v29 - v18) + v13 * (v20 + COERCE_DOUBLE(*&vmulq_f64(v22, v25).f64[1]) + v22.f64[0] * v25.f64[0] + v31 * v29 - v14) + v15 * (v21 + COERCE_DOUBLE(*&vmulq_f64(v24, v25).f64[1]) + v24.f64[0] * v25.f64[0] + v33 * v29 - v17);
          *(*(a3 + 8) + 4 * v34) = v12;
        }
      }

      ++v9;
    }

    while (v5 != v9);
  }

  return result;
}

float vl_height_get_for_global(uint64_t a1, double *a2)
{
  v2 = *a2 - *(a1 + 80);
  v3 = a2[1] - *(a1 + 88);
  v4 = a2[2] - *(a1 + 96);
  v5 = vextq_s8(*(a1 + 104), *(a1 + 104), 8uLL);
  __asm
  {
    FMOV            V5.2D, #0.5
    FMOV            V6.2D, #-0.5
  }

  v12 = vaddq_f64(vmulq_f64(v5, _Q5), _Q6);
  v13.i64[0] = *a1;
  v13.i64[1] = HIDWORD(*a1);
  v14 = vcvtq_f64_s64(v13);
  v15 = vmulq_f64(vdivq_f64(v14, v5), vaddq_f64(v12, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*(a1 + 32), v3), *(a1 + 8), v2), *(a1 + 56), v4)));
  LODWORD(v12.f64[0]) = vuzp1_s16(vmovn_s64(vmvnq_s8(vcgeq_f64(v15, v14))), *&v2).u32[0];
  HIDWORD(v12.f64[0]) = vuzp1_s16(*&v2, vmovn_s64(vmvnq_s8(vcltzq_f64(v15)))).i32[1];
  if ((vminv_u16(*&v12.f64[0]) & 1) == 0)
  {
    return 3.4028e38;
  }

  v16 = *(*(a1 + 128) + 4 * (v15.f64[0] + *a1 * v15.f64[1]));
  if (fabsf(v16) > 80000.0)
  {
    return 3.4028e38;
  }

  v18 = v3 * *(a1 + 48) + *(a1 + 24) * v2 + *(a1 + 72) * v4;
  return v16 - v18;
}

BOOL vl_ps_refine(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v2;
  v1431 = v5;
  v1502 = v6;
  v8 = v7;
  v1437 = v9;
  v1604 = *MEMORY[0x277D85DE8];
  v1432 = v2;
  v1433 = v7;
  v1436 = v3;
  if (*(v3 + 156))
  {
    v10 = *(v3 + 80);
    v1532 = vl_ps_debug_printout;
    ptr = 0;
    v1563 = 0;
    v1565 = 0;
    v1508 = malloc_type_malloc(4 * *(v2 + 4), 0x100004052888210uLL);
    v11 = *(v4 + 4);
    if (v11 <= 0)
    {
      ptr = 0;
      v1563 = 0;
      v1565 = v11;
    }

    else
    {
      v12 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
      v11 = *(v4 + 4);
      ptr = v12;
      v1563 = 0;
      v1565 = v11;
      if (v11 >= 1)
      {
        v1561 = malloc_type_malloc(12 * v11, 0x10000403E1C8BA9uLL);
        v13 = *(v4 + 4);
        v1560 = 0;
        v1562 = v13;
        v14 = *v8;
        if (!*v8)
        {
          goto LABEL_817;
        }

LABEL_613:
        if (v10 >= v14)
        {
          v14 = v14;
        }

        else
        {
          v14 = v10;
        }

        v1501 = v14;
        if (v14 >= 1)
        {
          v806 = 0;
          do
          {
            v1531 = v806;
            v807 = v8[1] + 160 * v806;
            v1559 = 0u;
            v1558 = 0u;
            v1557 = 0u;
            v1555 = 0u;
            v1556 = 0u;
            v1554 = 0u;
            v809 = *(v807 + 16);
            v808 = *(v807 + 20);
            v810 = *(v807 + 8);
            vl_ps_get_inliers(v807, v4, v1436, v1508);
            *(&v1559 + 4) = v810;
            HIDWORD(v1559) = v809;
            v811 = __sincosf_stret(v808);
            v812.i64[0] = 0;
            *&v813 = v811.__cosval * 0.0;
            *&v1557 = v811.__cosval;
            *(&v1557 + 1) = -(v811.__sinval - ((v811.__cosval * 0.0) * 0.0));
            *v814.i32 = v811.__sinval * 0.0;
            *v815.i32 = (v811.__cosval * 0.0) + (v811.__sinval * 0.0);
            *(&v1557 + 2) = *v815.i32;
            HIDWORD(v1557) = LODWORD(v811.__sinval);
            *&v816 = (v811.__sinval * 0.0) - (v811.__cosval * 0.0);
            *&v1558 = __PAIR64__(LODWORD(v816), v811.__cosval + ((v811.__sinval * 0.0) * 0.0));
            *(&v1558 + 1) = -COERCE_DOUBLE(0x8000000080000000);
            LODWORD(v1559) = 1065353216;
            apply_pose_rotation(&v1557, *&v1437[18] + 232, &v1554, -COERCE_DOUBLE(0x8000000080000000), v816, v813, v814, v815, v812);
            v1563 = 0;
            v1560 = 0;
            if (*(v807 + 88) >= 1)
            {
              v826 = 0;
              v827 = 0;
              do
              {
                v829 = *(*(v1502 + 8) + 288 * *(*(v807 + 96) + v826 + 4));
                v830 = *(v1431 + 8) + 12 * *(*(v807 + 96) + v826);
                v1566[0] = *v830;
                LODWORD(v1566[1]) = *(v830 + 8);
                v831 = v1563;
                if (v1563 >= v1565)
                {
                  v832 = 32;
                  if (v1565)
                  {
                    v832 = 2 * v1565;
                  }

                  if (v832 <= v1563)
                  {
                    v833 = v1563 + 1;
                  }

                  else
                  {
                    v833 = v832;
                  }

                  if (v833)
                  {
                    ptr = malloc_type_realloc(ptr, 8 * v833, 0x100004000313F17uLL);
                    v831 = v1563;
                  }

                  v1565 = v833;
                }

                v1563 = v831 + 1;
                *(ptr + v831) = v829;
                v834 = v1560;
                if (v1560 >= v1562)
                {
                  v835 = 21;
                  if (v1562)
                  {
                    v835 = 2 * v1562;
                  }

                  if (v835 <= v1560)
                  {
                    v836 = v1560 + 1;
                  }

                  else
                  {
                    v836 = v835;
                  }

                  if (v836)
                  {
                    v1561 = malloc_type_realloc(v1561, 12 * v836, 0x10000403E1C8BA9uLL);
                    v834 = v1560;
                  }

                  v1562 = v836;
                }

                v1560 = v834 + 1;
                v828 = v1561 + 12 * v834;
                *v828 = v1566[0];
                *(v828 + 2) = v1566[1];
                ++v827;
                v826 += 8;
              }

              while (*(v807 + 88) > v827);
            }

            if (v1532)
            {
              printf("Info : ");
              printf("\n  ------- Testing hyp %d (hist count %.0f, inliers %d), x: %.2f, y: %.2f, z: %.2f, ang: %.2f --------  ", v1531, *v807, *(v807 + 88), *(v807 + 8), *(v807 + 12), *(v807 + 16), *(v807 + 20) * 180.0 / 3.14159265);
              putchar(10);
            }

            memset(v1569, 0, 32);
            *v1568 = 0u;
            v1567 = 0u;
            *v1566 = 0u;
            v1543 = v1554;
            v1544 = v1555;
            *v1545 = v1556;
            v1521 = vdupq_n_s32(0x378637BEu);
            if (v1563 < 1)
            {
              v839 = 0;
              goto LABEL_657;
            }

            v817.i32[0] = DWORD2(v1543);
            v824.i32[0] = DWORD1(v1543);
            v823.i32[0] = v1543;
            v818.i32[0] = v1545[0];
            v820.i32[0] = HIDWORD(v1544);
            v819.i32[0] = DWORD2(v1544);
            *v825.i32 = ((*(&v1543 + 3) * *&v1545[1]) + (*&v1543 * *(v1545 + 1))) + (*(&v1544 + 2) * *(&v1545[1] + 1));
            *v821.i32 = ((*&v1545[1] * *&v1544) + (*(&v1543 + 1) * *(v1545 + 1))) + (*(&v1544 + 3) * *(&v1545[1] + 1));
            *v822.i32 = ((*&v1545[1] * *(&v1544 + 1)) + (*(&v1543 + 2) * *(v1545 + 1))) + (*v1545 * *(&v1545[1] + 1));
            v837 = v1561;
            if ((v1563 & 0x7FFFFFFF) >= 8uLL)
            {
              v838 = (v1563 & 0x7FFFFFFF) - (v1563 & 7);
              v840 = (ptr + 8 * v838);
              v841 = (v1561 + 12 * v838);
              v842 = vdupq_lane_s32(v823, 0);
              v843 = vdupq_lane_s32(v819, 0);
              v844 = vdupq_lane_s32(v825, 0);
              v845 = vdupq_lane_s32(v824, 0);
              v846 = vdupq_lane_s32(v820, 0);
              v847 = vdupq_lane_s32(v821, 0);
              v848 = (ptr + 32);
              v849 = vdupq_lane_s32(v817, 0);
              v850 = 0uLL;
              v851 = v838;
              v852 = vdupq_lane_s32(v818, 0);
              v853 = 0uLL;
              v854 = vdupq_lane_s32(v822, 0);
              do
              {
                v855 = v837;
                v1614 = vld3q_f32(v855);
                v855 += 12;
                v1605 = vld3q_f32(v855);
                v856 = v848 - 8;
                v857 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1614.val[1], *(&v1543 + 3)), v1614.val[0], v842), v1614.val[2], v843), v844);
                v858 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1614.val[1], *&v1544), v1614.val[0], v845), v1614.val[2], v846), v847);
                v859 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1605.val[1], *(&v1543 + 3)), v1605.val[0], v842), v1605.val[2], v843);
                v860 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1605.val[1], *&v1544), v1605.val[0], v845), v1605.val[2], v846);
                v861 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1605.val[1], *(&v1544 + 1)), v1605.val[0], v849), v1605.val[2], v852);
                *v1605.val[0].f32 = vld2q_f32(v856);
                v1605.val[2] = vsubq_f32(v859, v844);
                v862 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1614.val[1], *(&v1544 + 1)), v1614.val[0], v849), v1614.val[2], v852), v854);
                *v1614.val[0].f32 = vld2q_f32(v848);
                v863 = vmlsq_f32(v858, v857, v1605.val[0]);
                v864 = vmlsq_f32(v862, v857, v1605.val[1]);
                v865 = vmlsq_f32(vsubq_f32(v861, v854), v1605.val[2], v1614.val[0]);
                v867 = vmlsq_f32(vsubq_f32(v860, v847), v1605.val[2], v866);
                v850 = vsubq_s32(v850, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v857, v857), v1521), vmlaq_f32(vmulq_f32(v864, v864), v863, v863)), vcgtzq_f32(v857)));
                v853 = vsubq_s32(v853, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v1605.val[2], v1605.val[2]), v1521), vmlaq_f32(vmulq_f32(v865, v865), v867, v867)), vcgtzq_f32(v1605.val[2])));
                v848 += 16;
                v837 += 24;
                v851 -= 8;
              }

              while (v851);
              v839 = vaddvq_s32(vaddq_s32(v853, v850));
              v823.i32[0] = v1543;
              *v825.i32 = ((*(&v1543 + 3) * *&v1545[1]) + (*&v1543 * *(v1545 + 1))) + (*(&v1544 + 2) * *(&v1545[1] + 1));
              v824.i32[0] = DWORD1(v1543);
              if ((v1563 & 7) == 0)
              {
                goto LABEL_657;
              }
            }

            else
            {
              LODWORD(v838) = 0;
              v839 = 0;
              v840 = ptr;
              v841 = v1561;
            }

            v868 = v1563 - v838;
            do
            {
              v869 = v841[1];
              v870 = v841[2];
              v871 = (((*(&v1543 + 3) * v869) + (*v823.i32 * *v841)) + (*(&v1544 + 2) * v870)) - *v825.i32;
              v872 = (((*&v1544 * v869) + (*v824.i32 * *v841)) + (*(&v1544 + 3) * v870)) - *v821.i32;
              v873 = (((*(&v1544 + 1) * v869) + (*(&v1543 + 2) * *v841)) + (*v1545 * v870)) - *v822.i32;
              v874 = *v840;
              v875 = v840[1];
              v840 += 2;
              v876 = ((v873 - (v875 * v871)) * (v873 - (v875 * v871))) + ((v872 - (v874 * v871)) * (v872 - (v874 * v871)));
              v878 = v871 > 0.0 && v876 < ((v871 * v871) * 0.000016);
              v839 += v878;
              v841 += 3;
              --v868;
            }

            while (v868);
LABEL_657:
            if (v1563 >= 1)
            {
              v879 = 0;
              v880 = 0;
              v881 = 0;
              v882 = 0;
              do
              {
                v885 = v882 + 1;
                if (v882 >= v881)
                {
                  v886 = 2 * v881;
                  if (!v881)
                  {
                    v886 = 32;
                  }

                  if (v886 <= v882)
                  {
                    v881 = v882 + 1;
                  }

                  else
                  {
                    v881 = v886;
                  }

                  if (v881)
                  {
                    v880 = malloc_type_realloc(v880, 8 * v881, 0x100004000313F17uLL);
                    v1566[1] = v880;
                  }

                  *&v1567 = v881;
                }

                v1566[0] = (v882 + 1);
                *(v880 + v882) = *(ptr + v882);
                v887 = *(&v1567 + 1);
                v888 = *(&v1567 + 1) + 1;
                if (*(&v1567 + 1) >= v1568[1])
                {
                  v889 = 21;
                  if (v1568[1])
                  {
                    v889 = 2 * v1568[1];
                  }

                  if (v889 <= *(&v1567 + 1))
                  {
                    v890 = *(&v1567 + 1) + 1;
                  }

                  else
                  {
                    v890 = v889;
                  }

                  if (v890)
                  {
                    v1568[0] = malloc_type_realloc(v1568[0], 12 * v890, 0x10000403E1C8BA9uLL);
                  }

                  v1568[1] = v890;
                }

                *(&v1567 + 1) = v888;
                v883 = v1568[0] + 12 * v887;
                v884 = *(v1561 + v879);
                *(v883 + 2) = *(v1561 + v879 + 8);
                *v883 = v884;
                v879 += 12;
                v882 = v885;
              }

              while (v1563 > v885);
            }

            v891 = vl_pose_refine(&v1543, v1566, &v1567 + 1, 2, &v1543, 0, 1.0, 0.0, 0.0);
            if (v1563 < 1)
            {
              v4 = v1432;
              v8 = v1433;
              goto LABEL_746;
            }

            v902.i32[0] = DWORD2(v1543);
            v900.i32[0] = DWORD1(v1543);
            v899.i32[0] = v1543;
            LODWORD(v894) = v1545[0];
            v896.i32[0] = HIDWORD(v1544);
            v895.i32[0] = DWORD2(v1544);
            *v901.i32 = ((*(&v1543 + 3) * *&v1545[1]) + (*&v1543 * *(v1545 + 1))) + (*(&v1544 + 2) * *(&v1545[1] + 1));
            *v897.i32 = ((*&v1545[1] * *&v1544) + (*(&v1543 + 1) * *(v1545 + 1))) + (*(&v1544 + 3) * *(&v1545[1] + 1));
            *v898.i32 = ((*&v1545[1] * *(&v1544 + 1)) + (*(&v1543 + 2) * *(v1545 + 1))) + (*v1545 * *(&v1545[1] + 1));
            v903 = v1561;
            v8 = v1433;
            if ((v1563 & 0x7FFFFFFF) >= 8uLL)
            {
              v1493 = v891;
              v904 = (v1563 & 0x7FFFFFFF) - (v1563 & 7);
              v906 = (ptr + 8 * v904);
              v907 = (v1561 + 12 * v904);
              v908 = vdupq_lane_s32(v899, 0);
              v909 = vdupq_lane_s32(*v895.i8, 0);
              v910 = vdupq_lane_s32(v901, 0);
              v911 = vdupq_lane_s32(v900, 0);
              v912 = vdupq_lane_s32(v896, 0);
              v913 = vdupq_lane_s32(v897, 0);
              v914 = (ptr + 32);
              v915 = vdupq_lane_s32(*v902.i8, 0);
              v902 = 0uLL;
              v916 = v904;
              v917 = vdupq_lane_s32(*&v894, 0);
              v918 = 0uLL;
              v919 = vdupq_lane_s32(v898, 0);
              v893 = *v1521.i64;
              do
              {
                v920 = v903;
                v1606 = vld3q_f32(v920);
                v920 += 12;
                v1610 = vld3q_f32(v920);
                v921 = v914 - 8;
                v922 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1606.val[1], *(&v1543 + 3)), v1606.val[0], v908), v1606.val[2], v909), v910);
                v923 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1606.val[1], *&v1544), v1606.val[0], v911), v1606.val[2], v912), v913);
                v924 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1606.val[1], *(&v1544 + 1)), v1606.val[0], v915), v1606.val[2], v917);
                v925 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1610.val[1], *&v1544), v1610.val[0], v911), v1610.val[2], v912);
                v926 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1610.val[1], *(&v1544 + 1)), v1610.val[0], v915), v1610.val[2], v917);
                *v1606.val[0].f32 = vld2q_f32(v921);
                v1606.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1610.val[1], *(&v1543 + 3)), v1610.val[0], v908), v1610.val[2], v909), v910);
                *v1610.val[0].f32 = vld2q_f32(v914);
                v927 = vmlsq_f32(v923, v922, v1606.val[0]);
                v928 = vmlsq_f32(vsubq_f32(v924, v919), v922, v1606.val[1]);
                v929 = vmlsq_f32(vsubq_f32(v926, v919), v1606.val[2], v1610.val[1]);
                v930 = vmlsq_f32(vsubq_f32(v925, v913), v1606.val[2], v1610.val[0]);
                v931 = vmlaq_f32(vmulq_f32(v928, v928), v927, v927);
                v932 = vcgtq_f32(vmulq_f32(vmulq_f32(v1606.val[2], v1606.val[2]), v1521), vmlaq_f32(vmulq_f32(v929, v929), v930, v930));
                v892 = vcgtzq_f32(v922);
                v902 = vsubq_s32(v902, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v922, v922), v1521), v931), v892));
                v918 = vsubq_s32(v918, vandq_s8(v932, vcgtzq_f32(v1606.val[2])));
                v914 += 16;
                v903 += 24;
                v916 -= 8;
              }

              while (v916);
              v905 = vaddvq_s32(vaddq_s32(v918, v902));
              v4 = v1432;
              v891 = v1493;
              v899.i32[0] = v1543;
              v902.i32[0] = DWORD2(v1543);
              *v901.i32 = ((*(&v1543 + 3) * *&v1545[1]) + (*&v1543 * *(v1545 + 1))) + (*(&v1544 + 2) * *(&v1545[1] + 1));
              v900.i32[0] = DWORD1(v1543);
              if ((v1563 & 7) == 0)
              {
                goto LABEL_693;
              }
            }

            else
            {
              LODWORD(v904) = 0;
              v905 = 0;
              v906 = ptr;
              v907 = v1561;
              v4 = v1432;
            }

            v933 = v1563 - v904;
            do
            {
              v934 = v907[1];
              v935 = v907[2];
              *v892.i32 = (((*(&v1543 + 3) * v934) + (*v899.i32 * *v907)) + (*(&v1544 + 2) * v935)) - *v901.i32;
              v936 = (*(&v1544 + 1) * v934) + (*v902.i32 * *v907);
              v937 = (((*&v1544 * v934) + (*v900.i32 * *v907)) + (*(&v1544 + 3) * v935)) - *v897.i32;
              v938 = (v936 + (*v1545 * v935)) - *v898.i32;
              v939 = *v906;
              v940 = v906[1];
              v906 += 2;
              *&v893 = ((v938 - (v940 * *v892.i32)) * (v938 - (v940 * *v892.i32))) + ((v937 - (v939 * *v892.i32)) * (v937 - (v939 * *v892.i32)));
              v942 = *v892.i32 > 0.0 && *&v893 < ((*v892.i32 * *v892.i32) * 0.000016);
              v905 += v942;
              v907 += 3;
              --v933;
            }

            while (v933);
LABEL_693:
            if (v905 < v839 || v905 == 0)
            {
              goto LABEL_746;
            }

            v1554 = v1543;
            v1555 = v1544;
            HIDWORD(v944) = HIDWORD(v1545[0]);
            v1556 = *v1545;
            LODWORD(v944) = 998445679;
            vl_pose_count_inliers(&v1543, &v1563, &v1560, 0, v1566, fmaxf(v891 + v891, 0.004), v944, *&v1543, *v892.i64, v893, v894, v895);
            v945 = vl_pose_refine(&v1543, v1566, &v1567 + 1, 2, &v1543, 0, 1.0, 0.0, 0.0);
            if (v1563 < 1)
            {
              v959 = 0;
              goto LABEL_712;
            }

            v956.i32[0] = DWORD2(v1543);
            v954.i32[0] = DWORD1(v1543);
            v953.i32[0] = v1543;
            LODWORD(v948) = v1545[0];
            v950.i32[0] = HIDWORD(v1544);
            v949.i32[0] = DWORD2(v1544);
            *v955.i32 = ((*(&v1543 + 3) * *&v1545[1]) + (*&v1543 * *(v1545 + 1))) + (*(&v1544 + 2) * *(&v1545[1] + 1));
            *v951.i32 = ((*&v1545[1] * *&v1544) + (*(&v1543 + 1) * *(v1545 + 1))) + (*(&v1544 + 3) * *(&v1545[1] + 1));
            *v952.i32 = ((*&v1545[1] * *(&v1544 + 1)) + (*(&v1543 + 2) * *(v1545 + 1))) + (*v1545 * *(&v1545[1] + 1));
            v957 = v1561;
            if ((v1563 & 0x7FFFFFFF) >= 8uLL)
            {
              v1494 = v945;
              v958 = (v1563 & 0x7FFFFFFF) - (v1563 & 7);
              v960 = (ptr + 8 * v958);
              v961 = (v1561 + 12 * v958);
              v962 = vdupq_lane_s32(v953, 0);
              v963 = vdupq_lane_s32(*v949.i8, 0);
              v964 = vdupq_lane_s32(v955, 0);
              v965 = vdupq_lane_s32(v954, 0);
              v966 = vdupq_lane_s32(v950, 0);
              v967 = vdupq_lane_s32(v951, 0);
              v968 = (ptr + 32);
              v969 = vdupq_lane_s32(*v956.i8, 0);
              v956 = 0uLL;
              v970 = v958;
              v971 = vdupq_lane_s32(*&v948, 0);
              v972 = 0uLL;
              v973 = vdupq_lane_s32(v952, 0);
              v947 = *v1521.i64;
              do
              {
                v974 = v957;
                v1607 = vld3q_f32(v974);
                v974 += 12;
                v1611 = vld3q_f32(v974);
                v975 = v968 - 8;
                v976 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1607.val[1], *(&v1543 + 3)), v1607.val[0], v962), v1607.val[2], v963), v964);
                v977 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1607.val[1], *&v1544), v1607.val[0], v965), v1607.val[2], v966), v967);
                v978 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1607.val[1], *(&v1544 + 1)), v1607.val[0], v969), v1607.val[2], v971);
                v979 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1611.val[1], *&v1544), v1611.val[0], v965), v1611.val[2], v966);
                v980 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1611.val[1], *(&v1544 + 1)), v1611.val[0], v969), v1611.val[2], v971);
                *v1607.val[0].f32 = vld2q_f32(v975);
                v1607.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1611.val[1], *(&v1543 + 3)), v1611.val[0], v962), v1611.val[2], v963), v964);
                *v1611.val[0].f32 = vld2q_f32(v968);
                v981 = vmlsq_f32(v977, v976, v1607.val[0]);
                v982 = vmlsq_f32(vsubq_f32(v978, v973), v976, v1607.val[1]);
                v983 = vmlsq_f32(vsubq_f32(v980, v973), v1607.val[2], v1611.val[1]);
                v984 = vmlsq_f32(vsubq_f32(v979, v967), v1607.val[2], v1611.val[0]);
                v985 = vmlaq_f32(vmulq_f32(v982, v982), v981, v981);
                v986 = vcgtq_f32(vmulq_f32(vmulq_f32(v1607.val[2], v1607.val[2]), v1521), vmlaq_f32(vmulq_f32(v983, v983), v984, v984));
                v946 = vcgtzq_f32(v976);
                v956 = vsubq_s32(v956, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v976, v976), v1521), v985), v946));
                v972 = vsubq_s32(v972, vandq_s8(v986, vcgtzq_f32(v1607.val[2])));
                v968 += 16;
                v957 += 24;
                v970 -= 8;
              }

              while (v970);
              v959 = vaddvq_s32(vaddq_s32(v972, v956));
              v945 = v1494;
              v953.i32[0] = v1543;
              v956.i32[0] = DWORD2(v1543);
              *v955.i32 = ((*(&v1543 + 3) * *&v1545[1]) + (*&v1543 * *(v1545 + 1))) + (*(&v1544 + 2) * *(&v1545[1] + 1));
              v954.i32[0] = DWORD1(v1543);
              if ((v1563 & 7) == 0)
              {
                goto LABEL_712;
              }
            }

            else
            {
              LODWORD(v958) = 0;
              v959 = 0;
              v960 = ptr;
              v961 = v1561;
            }

            v987 = v1563 - v958;
            do
            {
              v988 = v961[1];
              v989 = v961[2];
              *v946.i32 = (((*(&v1543 + 3) * v988) + (*v953.i32 * *v961)) + (*(&v1544 + 2) * v989)) - *v955.i32;
              v990 = (*(&v1544 + 1) * v988) + (*v956.i32 * *v961);
              v991 = (((*&v1544 * v988) + (*v954.i32 * *v961)) + (*(&v1544 + 3) * v989)) - *v951.i32;
              v992 = (v990 + (*v1545 * v989)) - *v952.i32;
              v993 = *v960;
              v994 = v960[1];
              v960 += 2;
              *&v947 = ((v992 - (v994 * *v946.i32)) * (v992 - (v994 * *v946.i32))) + ((v991 - (v993 * *v946.i32)) * (v991 - (v993 * *v946.i32)));
              v996 = *v946.i32 > 0.0 && *&v947 < ((*v946.i32 * *v946.i32) * 0.000016);
              v959 += v996;
              v961 += 3;
              --v987;
            }

            while (v987);
LABEL_712:
            v839 = v905;
            if (v959 < v905)
            {
              goto LABEL_746;
            }

            v1554 = v1543;
            v1555 = v1544;
            HIDWORD(v997) = HIDWORD(v1545[0]);
            v1556 = *v1545;
            LODWORD(v997) = 998445679;
            vl_pose_count_inliers(&v1543, &v1563, &v1560, 0, v1566, fmaxf(v945 + v945, 0.004), v997, *&v1543, *v946.i64, v947, v948, v949);
            v998 = vl_pose_refine(&v1543, v1566, &v1567 + 1, 2, &v1543, 0, 1.0, 0.0, 0.0);
            if (v1563 < 1)
            {
              v1012 = 0;
              goto LABEL_728;
            }

            v1009.i32[0] = DWORD2(v1543);
            v1007.i32[0] = DWORD1(v1543);
            v1006.i32[0] = v1543;
            LODWORD(v1001) = v1545[0];
            v1003.i32[0] = HIDWORD(v1544);
            v1002.i32[0] = DWORD2(v1544);
            *v1008.i32 = ((*(&v1543 + 3) * *&v1545[1]) + (*&v1543 * *(v1545 + 1))) + (*(&v1544 + 2) * *(&v1545[1] + 1));
            *v1004.i32 = ((*&v1545[1] * *&v1544) + (*(&v1543 + 1) * *(v1545 + 1))) + (*(&v1544 + 3) * *(&v1545[1] + 1));
            *v1005.i32 = ((*&v1545[1] * *(&v1544 + 1)) + (*(&v1543 + 2) * *(v1545 + 1))) + (*v1545 * *(&v1545[1] + 1));
            v1010 = v1561;
            if ((v1563 & 0x7FFFFFFF) >= 8uLL)
            {
              v1495 = v998;
              v1011 = (v1563 & 0x7FFFFFFF) - (v1563 & 7);
              v1013 = (ptr + 8 * v1011);
              v1014 = (v1561 + 12 * v1011);
              v1015 = vdupq_lane_s32(v1006, 0);
              v1016 = vdupq_lane_s32(*v1002.i8, 0);
              v1017 = vdupq_lane_s32(v1008, 0);
              v1018 = vdupq_lane_s32(v1007, 0);
              v1019 = vdupq_lane_s32(v1003, 0);
              v1020 = vdupq_lane_s32(v1004, 0);
              v1021 = (ptr + 32);
              v1022 = vdupq_lane_s32(*v1009.i8, 0);
              v1009 = 0uLL;
              v1023 = v1011;
              v1024 = vdupq_lane_s32(*&v1001, 0);
              v1025 = 0uLL;
              v1026 = vdupq_lane_s32(v1005, 0);
              v1000 = *v1521.i64;
              do
              {
                v1027 = v1010;
                v1608 = vld3q_f32(v1027);
                v1027 += 12;
                v1612 = vld3q_f32(v1027);
                v1028 = v1021 - 8;
                v1029 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1608.val[1], *(&v1543 + 3)), v1608.val[0], v1015), v1608.val[2], v1016), v1017);
                v1030 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1608.val[1], *&v1544), v1608.val[0], v1018), v1608.val[2], v1019), v1020);
                v1031 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1608.val[1], *(&v1544 + 1)), v1608.val[0], v1022), v1608.val[2], v1024);
                v1032 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1612.val[1], *&v1544), v1612.val[0], v1018), v1612.val[2], v1019);
                v1033 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1612.val[1], *(&v1544 + 1)), v1612.val[0], v1022), v1612.val[2], v1024);
                *v1608.val[0].f32 = vld2q_f32(v1028);
                v1608.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1612.val[1], *(&v1543 + 3)), v1612.val[0], v1015), v1612.val[2], v1016), v1017);
                *v1612.val[0].f32 = vld2q_f32(v1021);
                v1034 = vmlsq_f32(v1030, v1029, v1608.val[0]);
                v1035 = vmlsq_f32(vsubq_f32(v1031, v1026), v1029, v1608.val[1]);
                v1036 = vmlsq_f32(vsubq_f32(v1033, v1026), v1608.val[2], v1612.val[1]);
                v1037 = vmlsq_f32(vsubq_f32(v1032, v1020), v1608.val[2], v1612.val[0]);
                v1038 = vmlaq_f32(vmulq_f32(v1035, v1035), v1034, v1034);
                v1039 = vcgtq_f32(vmulq_f32(vmulq_f32(v1608.val[2], v1608.val[2]), v1521), vmlaq_f32(vmulq_f32(v1036, v1036), v1037, v1037));
                v999 = vcgtzq_f32(v1029);
                v1009 = vsubq_s32(v1009, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v1029, v1029), v1521), v1038), v999));
                v1025 = vsubq_s32(v1025, vandq_s8(v1039, vcgtzq_f32(v1608.val[2])));
                v1021 += 16;
                v1010 += 24;
                v1023 -= 8;
              }

              while (v1023);
              v1012 = vaddvq_s32(vaddq_s32(v1025, v1009));
              v998 = v1495;
              v1006.i32[0] = v1543;
              v1009.i32[0] = DWORD2(v1543);
              *v1008.i32 = ((*(&v1543 + 3) * *&v1545[1]) + (*&v1543 * *(v1545 + 1))) + (*(&v1544 + 2) * *(&v1545[1] + 1));
              v1007.i32[0] = DWORD1(v1543);
              if ((v1563 & 7) == 0)
              {
                goto LABEL_728;
              }
            }

            else
            {
              LODWORD(v1011) = 0;
              v1012 = 0;
              v1013 = ptr;
              v1014 = v1561;
            }

            v1040 = v1563 - v1011;
            do
            {
              v1041 = v1014[1];
              v1042 = v1014[2];
              *v999.i32 = (((*(&v1543 + 3) * v1041) + (*v1006.i32 * *v1014)) + (*(&v1544 + 2) * v1042)) - *v1008.i32;
              v1043 = (*(&v1544 + 1) * v1041) + (*v1009.i32 * *v1014);
              v1044 = (((*&v1544 * v1041) + (*v1007.i32 * *v1014)) + (*(&v1544 + 3) * v1042)) - *v1004.i32;
              v1045 = (v1043 + (*v1545 * v1042)) - *v1005.i32;
              v1046 = *v1013;
              v1047 = v1013[1];
              v1013 += 2;
              *&v1000 = ((v1045 - (v1047 * *v999.i32)) * (v1045 - (v1047 * *v999.i32))) + ((v1044 - (v1046 * *v999.i32)) * (v1044 - (v1046 * *v999.i32)));
              v1049 = *v999.i32 > 0.0 && *&v1000 < ((*v999.i32 * *v999.i32) * 0.000016);
              v1012 += v1049;
              v1014 += 3;
              --v1040;
            }

            while (v1040);
LABEL_728:
            v839 = v959;
            if (v1012 >= v959)
            {
              v1554 = v1543;
              v1555 = v1544;
              HIDWORD(v1050) = HIDWORD(v1545[0]);
              v1556 = *v1545;
              LODWORD(v1050) = 998445679;
              vl_pose_count_inliers(&v1543, &v1563, &v1560, 0, v1566, fmaxf(v998 + v998, 0.004), v1050, *&v1543, *v999.i64, v1000, v1001, v1002);
              v1051 = vl_pose_refine(&v1543, v1566, &v1567 + 1, 2, &v1543, 0, 1.0, 0.0, 0.0);
              if (v1563 < 1)
              {
                v1065 = 0;
              }

              else
              {
                v1062.i32[0] = DWORD2(v1543);
                v1060.i32[0] = DWORD1(v1543);
                v1059.i32[0] = v1543;
                LODWORD(v1054) = v1545[0];
                v1056.i32[0] = HIDWORD(v1544);
                v1055.i32[0] = DWORD2(v1544);
                *v1061.i32 = ((*(&v1543 + 3) * *&v1545[1]) + (*&v1543 * *(v1545 + 1))) + (*(&v1544 + 2) * *(&v1545[1] + 1));
                *v1057.i32 = ((*&v1545[1] * *&v1544) + (*(&v1543 + 1) * *(v1545 + 1))) + (*(&v1544 + 3) * *(&v1545[1] + 1));
                *v1058.i32 = ((*&v1545[1] * *(&v1544 + 1)) + (*(&v1543 + 2) * *(v1545 + 1))) + (*v1545 * *(&v1545[1] + 1));
                v1063 = v1561;
                if ((v1563 & 0x7FFFFFFF) >= 8uLL)
                {
                  v1496 = v1051;
                  v1064 = (v1563 & 0x7FFFFFFF) - (v1563 & 7);
                  v1066 = (ptr + 8 * v1064);
                  v1067 = (v1561 + 12 * v1064);
                  v1068 = vdupq_lane_s32(v1059, 0);
                  v1069 = vdupq_lane_s32(*v1055.i8, 0);
                  v1070 = vdupq_lane_s32(v1061, 0);
                  v1071 = vdupq_lane_s32(v1060, 0);
                  v1072 = vdupq_lane_s32(v1056, 0);
                  v1073 = vdupq_lane_s32(v1057, 0);
                  v1074 = (ptr + 32);
                  v1075 = vdupq_lane_s32(*v1062.i8, 0);
                  v1062 = 0uLL;
                  v1076 = v1064;
                  v1077 = vdupq_lane_s32(*&v1054, 0);
                  v1078 = 0uLL;
                  v1079 = vdupq_lane_s32(v1058, 0);
                  v1053 = *v1521.i64;
                  do
                  {
                    v1080 = v1063;
                    v1609 = vld3q_f32(v1080);
                    v1080 += 12;
                    v1613 = vld3q_f32(v1080);
                    v1081 = v1074 - 8;
                    v1082 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1609.val[1], *(&v1543 + 3)), v1609.val[0], v1068), v1609.val[2], v1069), v1070);
                    v1083 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1609.val[1], *&v1544), v1609.val[0], v1071), v1609.val[2], v1072), v1073);
                    v1084 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1609.val[1], *(&v1544 + 1)), v1609.val[0], v1075), v1609.val[2], v1077);
                    v1085 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1613.val[1], *&v1544), v1613.val[0], v1071), v1613.val[2], v1072);
                    v1086 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1613.val[1], *(&v1544 + 1)), v1613.val[0], v1075), v1613.val[2], v1077);
                    *v1609.val[0].f32 = vld2q_f32(v1081);
                    v1609.val[2] = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v1613.val[1], *(&v1543 + 3)), v1613.val[0], v1068), v1613.val[2], v1069), v1070);
                    *v1613.val[0].f32 = vld2q_f32(v1074);
                    v1087 = vmlsq_f32(v1083, v1082, v1609.val[0]);
                    v1088 = vmlsq_f32(vsubq_f32(v1084, v1079), v1082, v1609.val[1]);
                    v1089 = vmlsq_f32(vsubq_f32(v1086, v1079), v1609.val[2], v1613.val[1]);
                    v1090 = vmlsq_f32(vsubq_f32(v1085, v1073), v1609.val[2], v1613.val[0]);
                    v1091 = vmlaq_f32(vmulq_f32(v1088, v1088), v1087, v1087);
                    v1092 = vcgtq_f32(vmulq_f32(vmulq_f32(v1609.val[2], v1609.val[2]), v1521), vmlaq_f32(vmulq_f32(v1089, v1089), v1090, v1090));
                    v1052 = vcgtzq_f32(v1082);
                    v1062 = vsubq_s32(v1062, vandq_s8(vcgtq_f32(vmulq_f32(vmulq_f32(v1082, v1082), v1521), v1091), v1052));
                    v1078 = vsubq_s32(v1078, vandq_s8(v1092, vcgtzq_f32(v1609.val[2])));
                    v1074 += 16;
                    v1063 += 24;
                    v1076 -= 8;
                  }

                  while (v1076);
                  v1065 = vaddvq_s32(vaddq_s32(v1078, v1062));
                  v1051 = v1496;
                  v1059.i32[0] = v1543;
                  v1062.i32[0] = DWORD2(v1543);
                  *v1061.i32 = ((*(&v1543 + 3) * *&v1545[1]) + (*&v1543 * *(v1545 + 1))) + (*(&v1544 + 2) * *(&v1545[1] + 1));
                  v1060.i32[0] = DWORD1(v1543);
                  if ((v1563 & 7) != 0)
                  {
                    goto LABEL_736;
                  }
                }

                else
                {
                  LODWORD(v1064) = 0;
                  v1065 = 0;
                  v1066 = ptr;
                  v1067 = v1561;
LABEL_736:
                  v1093 = v1563 - v1064;
                  do
                  {
                    v1094 = v1067[1];
                    v1095 = v1067[2];
                    *v1052.i32 = (((*(&v1543 + 3) * v1094) + (*v1059.i32 * *v1067)) + (*(&v1544 + 2) * v1095)) - *v1061.i32;
                    v1096 = (*(&v1544 + 1) * v1094) + (*v1062.i32 * *v1067);
                    v1097 = (((*&v1544 * v1094) + (*v1060.i32 * *v1067)) + (*(&v1544 + 3) * v1095)) - *v1057.i32;
                    v1098 = (v1096 + (*v1545 * v1095)) - *v1058.i32;
                    v1099 = *v1066;
                    v1100 = v1066[1];
                    v1066 += 2;
                    *&v1053 = ((v1098 - (v1100 * *v1052.i32)) * (v1098 - (v1100 * *v1052.i32))) + ((v1097 - (v1099 * *v1052.i32)) * (v1097 - (v1099 * *v1052.i32)));
                    v1102 = *v1052.i32 > 0.0 && *&v1053 < ((*v1052.i32 * *v1052.i32) * 0.000016);
                    v1065 += v1102;
                    v1067 += 3;
                    --v1093;
                  }

                  while (v1093);
                }
              }

              v839 = v1012;
              if (v1065 >= v1012)
              {
                v1554 = v1543;
                v1555 = v1544;
                HIDWORD(v1103) = HIDWORD(v1545[0]);
                v1556 = *v1545;
                LODWORD(v1103) = 998445679;
                vl_pose_count_inliers(&v1543, &v1563, &v1560, 0, v1566, fmaxf(v1051 + v1051, 0.004), v1103, *&v1543, *v1052.i64, v1053, v1054, v1055);
                v839 = v1065;
              }
            }

LABEL_746:
            free(v1566[1]);
            free(v1568[0]);
            free(v1569[1]);
            *(v807 + 4) = (32 * v839);
            v1104 = v1554;
            v1105 = v1555;
            *(v807 + 72) = v1556;
            *(v807 + 56) = v1105;
            *(v807 + 40) = v1104;
            v1106 = *(*&v1437[18] + 236) * *(v807 + 68) + *(v807 + 64) * *(*&v1437[18] + 232) + *(v807 + 72) * *(*&v1437[18] + 240);
            v1107 = fabs(v1106);
            v1108 = cosf(*(v1436 + 140));
            if (v1532)
            {
              printf("Info : ");
              v1109 = (*(v807 + 4) * 0.03125);
              v1110 = v1106;
              v1111 = acosf(v1110);
              printf(" score: %6.3f (gravity test: %d (%f degrees))", v1109, v1107 > v1108, v1111 * 180.0 / 3.14159265);
              putchar(10);
            }

            if (v1107 <= v1108)
            {
              *(v807 + 4) = 0;
            }

            if (v1532)
            {
              LODWORD(v1566[0]) = 0;
              LODWORD(v1543) = 0;
              vl_gt_get_pose_err(v1437 + 12, (v807 + 40), v1566, &v1543);
              printf("Info : ");
              printf("  diff from gt : (%s%.2f%s, %s%.2f%s)", &str_8, *&v1543 * 180.0 / 3.14159265, &str_8, &str_8, *v1566, &str_8);
              putchar(10);
            }

            v806 = v1531 + 1;
          }

          while (v1531 + 1 != v1501);
        }

        v1112 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
        v1113 = *v8;
        if (*v8)
        {
          v1114 = 0;
          v1115 = v8[1];
          v1116 = 1;
          v1117 = 32;
          v1118 = 0uLL;
          while (1)
          {
            v1119 = v1114;
            while (1)
            {
              if (!v1116)
              {
                --v1119;
                v1120 = &v1112[16 * v1119];
                v1113 = *(v1120 + 1);
                v1115 = v8[1] + 160 * *v1120;
              }

              if (v1113 > 15)
              {
                break;
              }

              if (v1113 > 1)
              {
                v1121 = v1115 + 160;
                v1122 = 2;
                for (i = 1; i != v1113; ++i)
                {
                  v1124 = v1121;
                  v1125 = v1122;
                  do
                  {
                    v1126 = v1115 + 160 * (v1125 - 2);
                    if (*(v1126 + 4) >= *(v1124 + 4))
                    {
                      break;
                    }

                    v1573 = v1118;
                    v1572 = v1118;
                    v1571 = v1118;
                    v1570 = v1118;
                    *&v1569[4] = v1118;
                    *&v1569[2] = v1118;
                    *v1569 = v1118;
                    *v1568 = v1118;
                    v1567 = v1118;
                    *v1566 = v1118;
                    v1127 = *v1124;
                    v1567 = *(v1124 + 16);
                    *v1566 = v1127;
                    v1128 = *(v1124 + 32);
                    v1129 = *(v1124 + 48);
                    v1130 = *(v1124 + 64);
                    *&v1569[4] = *(v1124 + 80);
                    *&v1569[2] = v1130;
                    *v1569 = v1129;
                    *v1568 = v1128;
                    v1131 = *(v1124 + 96);
                    v1132 = *(v1124 + 112);
                    v1133 = *(v1124 + 128);
                    v1573 = *(v1124 + 144);
                    v1572 = v1133;
                    v1571 = v1132;
                    v1570 = v1131;
                    v1134 = *(v1126 + 16);
                    *v1124 = *v1126;
                    *(v1124 + 16) = v1134;
                    v1135 = *(v1126 + 32);
                    v1136 = *(v1126 + 48);
                    v1137 = *(v1126 + 80);
                    *(v1124 + 64) = *(v1126 + 64);
                    *(v1124 + 80) = v1137;
                    *(v1124 + 32) = v1135;
                    *(v1124 + 48) = v1136;
                    v1138 = *(v1126 + 96);
                    v1139 = *(v1126 + 112);
                    v1140 = *(v1126 + 144);
                    *(v1124 + 128) = *(v1126 + 128);
                    *(v1124 + 144) = v1140;
                    *(v1124 + 96) = v1138;
                    *(v1124 + 112) = v1139;
                    v1141 = v1567;
                    *v1126 = *v1566;
                    *(v1126 + 16) = v1141;
                    v1142 = *v1568;
                    v1143 = *v1569;
                    v1144 = *&v1569[4];
                    *(v1126 + 64) = *&v1569[2];
                    *(v1126 + 80) = v1144;
                    *(v1126 + 32) = v1142;
                    *(v1126 + 48) = v1143;
                    v1145 = v1570;
                    v1146 = v1571;
                    v1147 = v1573;
                    *(v1126 + 128) = v1572;
                    *(v1126 + 144) = v1147;
                    *(v1126 + 96) = v1145;
                    *(v1126 + 112) = v1146;
                    --v1125;
                    v1124 -= 160;
                  }

                  while (v1125 > 1);
                  ++v1122;
                  v1121 += 160;
                }
              }

              v1116 = 0;
              v1113 = 0;
              if (v1119 < 1)
              {
                goto LABEL_816;
              }
            }

            if (v1113 > 0x27)
            {
              break;
            }

            v1148 = v1113 >> 1;
            v1149 = *(v1115 + 160 * (v1113 >> 1) + 4);
            v1150 = *(v1115 + 4);
            v1151 = *(v1115 + 160 * v1113 - 156);
            if (v1149 >= v1150)
            {
              if (v1151 >= v1150)
              {
                if (v1151 < v1149)
                {
                  v1148 = v1113 - 1;
                }
              }

              else
              {
                v1148 = 0;
              }
            }

            else if (v1151 >= v1149)
            {
              if (v1151 >= v1150)
              {
                v1148 = 0;
              }

              else
              {
                v1148 = v1113 - 1;
              }
            }

LABEL_805:
            v1170 = 0;
            v1171 = 0;
            v1573 = v1118;
            v1572 = v1118;
            v1571 = v1118;
            v1570 = v1118;
            *&v1569[4] = v1118;
            *&v1569[2] = v1118;
            *v1569 = v1118;
            *v1568 = v1118;
            v1567 = v1118;
            *v1566 = v1118;
            v1172 = *v1115;
            v1567 = *(v1115 + 16);
            *v1566 = v1172;
            v1173 = *(v1115 + 32);
            v1174 = *(v1115 + 48);
            v1175 = *(v1115 + 64);
            *&v1569[4] = *(v1115 + 80);
            *&v1569[2] = v1175;
            *v1569 = v1174;
            *v1568 = v1173;
            v1176 = *(v1115 + 96);
            v1177 = *(v1115 + 112);
            v1178 = *(v1115 + 128);
            v1573 = *(v1115 + 144);
            v1572 = v1178;
            v1571 = v1177;
            v1570 = v1176;
            v1179 = (v1115 + 160 * v1148);
            v1180 = v1179[1];
            *v1115 = *v1179;
            *(v1115 + 16) = v1180;
            v1181 = v1179[2];
            v1182 = v1179[3];
            v1183 = v1179[5];
            *(v1115 + 64) = v1179[4];
            *(v1115 + 80) = v1183;
            *(v1115 + 32) = v1181;
            *(v1115 + 48) = v1182;
            v1184 = v1179[6];
            v1185 = v1179[7];
            v1186 = v1179[9];
            *(v1115 + 128) = v1179[8];
            *(v1115 + 144) = v1186;
            *(v1115 + 96) = v1184;
            *(v1115 + 112) = v1185;
            v1187 = v1567;
            *v1179 = *v1566;
            v1179[1] = v1187;
            v1188 = *v1568;
            v1189 = *v1569;
            v1190 = *&v1569[4];
            v1179[4] = *&v1569[2];
            v1179[5] = v1190;
            v1179[2] = v1188;
            v1179[3] = v1189;
            v1191 = v1570;
            v1192 = v1571;
            v1193 = v1573;
            v1179[8] = v1572;
            v1179[9] = v1193;
            v1179[6] = v1191;
            v1179[7] = v1192;
            v1194 = v1113 - 1;
            v1195 = v1115 + 164;
            do
            {
              v1196 = (v1195 - 4);
              if ((*(v1115 + 4) - *v1195) <= 0.0)
              {
                ++v1171;
                v1573 = v1118;
                v1572 = v1118;
                v1571 = v1118;
                v1570 = v1118;
                *&v1569[4] = v1118;
                *&v1569[2] = v1118;
                *v1569 = v1118;
                *v1568 = v1118;
                v1567 = v1118;
                *v1566 = v1118;
                v1197 = *v1196;
                v1567 = *(v1195 + 12);
                *v1566 = v1197;
                v1198 = *(v1195 + 28);
                v1199 = *(v1195 + 44);
                v1200 = *(v1195 + 60);
                *&v1569[4] = *(v1195 + 76);
                *&v1569[2] = v1200;
                *v1569 = v1199;
                *v1568 = v1198;
                v1201 = *(v1195 + 92);
                v1202 = *(v1195 + 108);
                v1203 = *(v1195 + 124);
                v1573 = *(v1195 + 140);
                v1572 = v1203;
                v1571 = v1202;
                v1570 = v1201;
                v1204 = (v1115 + 160 * v1171);
                v1205 = v1204[1];
                *v1196 = *v1204;
                *(v1195 + 12) = v1205;
                v1206 = v1204[2];
                v1207 = v1204[3];
                v1208 = v1204[5];
                *(v1195 + 60) = v1204[4];
                *(v1195 + 76) = v1208;
                *(v1195 + 28) = v1206;
                *(v1195 + 44) = v1207;
                v1209 = v1204[6];
                v1210 = v1204[7];
                v1211 = v1204[9];
                *(v1195 + 124) = v1204[8];
                *(v1195 + 140) = v1211;
                *(v1195 + 92) = v1209;
                *(v1195 + 108) = v1210;
                v1212 = v1567;
                *v1204 = *v1566;
                v1204[1] = v1212;
                v1213 = *v1568;
                v1214 = *v1569;
                v1215 = *&v1569[4];
                v1204[4] = *&v1569[2];
                v1204[5] = v1215;
                v1204[2] = v1213;
                v1204[3] = v1214;
                v1216 = v1570;
                v1217 = v1571;
                v1218 = v1573;
                v1204[8] = v1572;
                v1204[9] = v1218;
                v1204[6] = v1216;
                v1204[7] = v1217;
                if ((*(v1115 + 4) - *v1195) == 0.0)
                {
                  ++v1170;
                  v1573 = v1118;
                  v1572 = v1118;
                  v1571 = v1118;
                  v1570 = v1118;
                  *&v1569[4] = v1118;
                  *&v1569[2] = v1118;
                  *v1569 = v1118;
                  *v1568 = v1118;
                  v1567 = v1118;
                  *v1566 = v1118;
                  v1219 = *v1204;
                  v1567 = v1204[1];
                  *v1566 = v1219;
                  v1220 = v1204[2];
                  v1221 = v1204[3];
                  v1222 = v1204[4];
                  *&v1569[4] = v1204[5];
                  *&v1569[2] = v1222;
                  *v1569 = v1221;
                  *v1568 = v1220;
                  v1223 = v1204[6];
                  v1224 = v1204[7];
                  v1225 = v1204[8];
                  v1573 = v1204[9];
                  v1572 = v1225;
                  v1571 = v1224;
                  v1570 = v1223;
                  v1226 = (v1115 + 160 * v1170);
                  v1227 = v1226[1];
                  *v1204 = *v1226;
                  v1204[1] = v1227;
                  v1228 = v1226[2];
                  v1229 = v1226[3];
                  v1230 = v1226[5];
                  v1204[4] = v1226[4];
                  v1204[5] = v1230;
                  v1204[2] = v1228;
                  v1204[3] = v1229;
                  v1231 = v1226[6];
                  v1232 = v1226[7];
                  v1233 = v1226[9];
                  v1204[8] = v1226[8];
                  v1204[9] = v1233;
                  v1204[6] = v1231;
                  v1204[7] = v1232;
                  v1234 = v1567;
                  *v1226 = *v1566;
                  v1226[1] = v1234;
                  v1235 = *v1568;
                  v1236 = *v1569;
                  v1237 = *&v1569[4];
                  v1226[4] = *&v1569[2];
                  v1226[5] = v1237;
                  v1226[2] = v1235;
                  v1226[3] = v1236;
                  v1238 = v1570;
                  v1239 = v1571;
                  v1240 = v1573;
                  v1226[8] = v1572;
                  v1226[9] = v1240;
                  v1226[6] = v1238;
                  v1226[7] = v1239;
                }
              }

              v1195 += 160;
              --v1194;
            }

            while (v1194);
            v1241 = v1170 + 1;
            v1242 = 160 * v1170;
            v1243 = -160 * v1170 + 160 * v1171;
            do
            {
              v1573 = v1118;
              v1572 = v1118;
              v1571 = v1118;
              v1570 = v1118;
              *&v1569[4] = v1118;
              *&v1569[2] = v1118;
              *v1569 = v1118;
              *v1568 = v1118;
              v1567 = v1118;
              *v1566 = v1118;
              v1244 = (v1115 + v1243);
              v1245 = *(v1115 + v1243);
              v1567 = *(v1115 + v1243 + 16);
              *v1566 = v1245;
              v1246 = *(v1115 + v1243 + 32);
              v1247 = *(v1115 + v1243 + 48);
              v1248 = *(v1115 + v1243 + 64);
              *&v1569[4] = *(v1115 + v1243 + 80);
              *&v1569[2] = v1248;
              *v1569 = v1247;
              *v1568 = v1246;
              v1249 = *(v1115 + v1243 + 96);
              v1250 = *(v1115 + v1243 + 112);
              v1251 = *(v1115 + v1243 + 128);
              v1573 = *(v1115 + v1243 + 144);
              v1572 = v1251;
              v1571 = v1250;
              v1570 = v1249;
              v1252 = (v1115 + v1242);
              v1253 = *(v1115 + v1242 + 16);
              *v1244 = *(v1115 + v1242);
              v1244[1] = v1253;
              v1254 = *(v1115 + v1242 + 32);
              v1255 = *(v1115 + v1242 + 48);
              v1256 = *(v1115 + v1242 + 80);
              v1244[4] = *(v1115 + v1242 + 64);
              v1244[5] = v1256;
              v1244[2] = v1254;
              v1244[3] = v1255;
              v1257 = *(v1115 + v1242 + 96);
              v1258 = *(v1115 + v1242 + 112);
              v1259 = *(v1115 + v1242 + 144);
              v1244[8] = *(v1115 + v1242 + 128);
              v1244[9] = v1259;
              v1244[6] = v1257;
              v1244[7] = v1258;
              v1260 = v1567;
              *v1252 = *v1566;
              v1252[1] = v1260;
              v1261 = *v1568;
              v1262 = *v1569;
              v1263 = *&v1569[4];
              v1252[4] = *&v1569[2];
              v1252[5] = v1263;
              v1252[2] = v1261;
              v1252[3] = v1262;
              v1264 = v1570;
              v1265 = v1571;
              v1266 = v1573;
              v1252[8] = v1572;
              v1252[9] = v1266;
              v1252[6] = v1264;
              v1252[7] = v1265;
              --v1241;
              v1242 -= 160;
              v1243 += 160;
            }

            while (v1241 > 0);
            v1114 = v1119 + 1;
            if (v1119 + 1 >= v1117)
            {
              v1267 = 2 * v1117;
              v1112 = malloc_type_realloc(v1112, 32 * v1117, 0x100004000313F17uLL);
              v1118 = 0uLL;
              v1117 = v1267;
              v8 = v1433;
            }

            v1268 = &v1112[16 * v1119];
            *v1268 = v1171 - 0x3333333333333333 * ((v1115 - v8[1]) >> 5) + 1;
            *(v1268 + 1) = v1113 + ~v1171;
            v1113 = v1171 - v1170;
            v1116 = v1171 != v1170;
            if (v1119 < 0 && !v1113)
            {
              goto LABEL_816;
            }
          }

          v1152 = 0;
          v1153 = 0;
          if (v1113 <= 0x7D0)
          {
            v1154 = 8;
          }

          else
          {
            v1154 = 26;
          }

          if (v1113 <= 0x7D0)
          {
            v1155 = 3;
          }

          else
          {
            v1155 = 9;
          }

          while (1)
          {
            v1156 = (v1113 - 1 + v1152) / v1154;
            v1157 = *(v1115 + 160 * v1156 + 4);
            v1158 = *(v1115 + 160 * (v1152 / v1154) + 4);
            v1159 = (2 * v1113 - 2 + v1152) / v1154;
            v1160 = *(v1115 + 160 * v1159 + 4);
            if (v1157 >= v1158)
            {
              if (v1160 < v1158)
              {
                goto LABEL_785;
              }

              if (v1160 < v1157)
              {
LABEL_787:
                v1566[v1153] = v1159;
                goto LABEL_779;
              }
            }

            else if (v1160 >= v1157)
            {
              if (v1160 < v1158)
              {
                goto LABEL_787;
              }

LABEL_785:
              v1566[v1153] = (v1152 / v1154);
              goto LABEL_779;
            }

            v1566[v1153] = v1156;
LABEL_779:
            ++v1153;
            v1152 += 3 * v1113 - 3;
            if (v1155 == v1153)
            {
              while (1)
              {
                v1161 = v1155;
                v1155 /= 3uLL;
                v1162 = v1566;
                v1163 = &v1567;
                v1164 = v1155;
                do
                {
                  v1165 = *(v1163 - 2);
                  v1166 = *(v1163 - 1);
                  v1167 = *(v1115 + 160 * v1166 + 4);
                  v1168 = *(v1115 + 160 * v1165 + 4);
                  v1169 = *(v1115 + 160 * *v1163 + 4);
                  if (v1167 >= v1168)
                  {
                    if (v1169 < v1168)
                    {
                      goto LABEL_797;
                    }

                    if (v1169 >= v1167)
                    {
LABEL_790:
                      *v1162 = v1166;
                      goto LABEL_791;
                    }
                  }

                  else
                  {
                    if (v1169 < v1167)
                    {
                      goto LABEL_790;
                    }

                    if (v1169 >= v1168)
                    {
LABEL_797:
                      *v1162 = v1165;
                      goto LABEL_791;
                    }
                  }

                  *v1162 = *v1163;
LABEL_791:
                  v1163 = (v1163 + 24);
                  ++v1162;
                  --v1164;
                }

                while (v1164);
                if (v1161 < 9)
                {
                  v1148 = v1566[0];
                  goto LABEL_805;
                }
              }
            }
          }
        }

LABEL_816:
        free(v1112);
        if (*(v8[1] + 4) >= (32 * *(v1436 + 152)))
        {
          v1269 = 0;
          goto LABEL_887;
        }

LABEL_817:
        v1269 = 1;
LABEL_887:
        free(v1561);
        free(ptr);
        free(v1508);
        return v1269;
      }
    }

    v1561 = 0;
    v1560 = 0;
    v1562 = v11;
    v14 = *v8;
    if (!*v8)
    {
      goto LABEL_817;
    }

    goto LABEL_613;
  }

  v15 = *(v1 + 48);
  v16 = *(v3 + 80);
  v1434 = vl_ps_debug_printout;
  v17 = *(v3 + 148);
  v18 = *(v1 + 8);
  v1553 = 0;
  v1551 = 0u;
  v1552 = 0u;
  v1549 = 0u;
  v1550 = 0u;
  v1548 = 0u;
  memset(v1547, 0, sizeof(v1547));
  *v1545 = 0u;
  v1546 = 0u;
  v19 = 4 * *(v2 + 4);
  v1543 = 0u;
  v1544 = 0u;
  v1429 = malloc_type_malloc(v19, 0x100004052888210uLL);
  hyp_refine_create(&v1543, 200);
  v20 = *v8;
  if (!*v8)
  {
    v1269 = 1;
    goto LABEL_890;
  }

  if (v16 >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = v16;
  }

  v1428 = v20;
  if (v20 < 1)
  {
    goto LABEL_818;
  }

  v21 = 0;
  v22 = v15 * v17 / v18;
  v23 = &unk_271103000;
  v1438 = (v22 * 32.0) * 3.0;
  v24 = 0uLL;
  while (2)
  {
    v25 = v8[1];
    v1559 = v24;
    v26 = v25 + 160 * v21;
    v1558 = v24;
    v1557 = v24;
    vl_ps_get_inliers(v26, v4, v1436, v1429);
    if (v1434)
    {
      printf("Info : ");
      printf("\n  ------- Testing hyp %d (hist count %.0f, inliers %d), x: %.2f, y: %.2f, z: %.2f, ang: %.2f --------  ", v21, *v26, *(v26 + 88), *(v26 + 8), *(v26 + 12), *(v26 + 16), *(v26 + 20) * 180.0 / v23[166]);
      putchar(10);
    }

    v1430 = v21;
    v1435 = v26;
    v27 = *(v26 + 88);
    if (SLODWORD(v1547[0]) < v27)
    {
      hyp_refine_free(&v1543);
      hyp_refine_create(&v1543, v27);
    }

    DWORD2(v1546) = v27;
    bzero(v1545[1], v27);
    if (v27 >= 1)
    {
      v1533 = v1437[1];
      v1522 = v1437[4];
      v1512 = *(v1431 + 8);
      v28 = *(&v1543 + 1);
      v29 = v1543;
      v30 = *(&v1544 + 1);
      v31 = v1544;
      v32 = v1545[0];
      v33 = v1546;
      v34 = v27 & 0x7FFFFFFF;
      v35 = (*&v1435[12] + 4);
      do
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v38 = *(*&v1533 + 4 * v36);
        v39 = atanf(*(*&v1522 + 4 * v36));
        v40 = (v1512 + 12 * v37);
        v41 = *v40;
        v42 = v40[1];
        v43 = v40[2];
        *v29++ = v38;
        *v28++ = v39;
        *v31++ = v41;
        *v30++ = v42;
        *v32++ = v43;
        *v33++ = 1107296256;
        v35 += 2;
        --v34;
      }

      while (v34);
    }

    v44 = *(v1436 + 144);
    v46 = v1435[2].i32[0];
    v45 = v1435[2].f32[1];
    *(&v1547[2] + 1) = v1435[1];
    LODWORD(v1547[3]) = v46;
    v47 = __sincosf_stret(v45);
    v48 = 0.0;
    v49.f32[0] = v47.__cosval * 0.0;
    DWORD1(v1547[0]) = LODWORD(v47.__cosval);
    *(v1547 + 2) = -(v47.__sinval - ((v47.__cosval * 0.0) * 0.0));
    *v50.i32 = v47.__sinval * 0.0;
    *v51.i32 = (v47.__cosval * 0.0) + (v47.__sinval * 0.0);
    *(v1547 + 3) = *v51.i32;
    *&v1547[1] = v47.__sinval;
    *(&v1547[1] + 1) = v47.__cosval + ((v47.__sinval * 0.0) * 0.0);
    *(&v1547[1] + 2) = (v47.__sinval * 0.0) - (v47.__cosval * 0.0);
    *(&v1547[1] + 12) = -COERCE_DOUBLE(0x8000000080000000);
    DWORD1(v1547[2]) = 1065353216;
    *(&v1547[3] + 4) = *(v1547 + 4);
    *(&v1547[4] + 4) = *(&v1547[1] + 4);
    *(&v1547[5] + 4) = *(&v1547[2] + 4);
    v1439 = v44;
    v23 = &unk_271103000;
    if (v44 < 1)
    {
      goto LABEL_605;
    }

    v1440 = 0;
    LODWORD(v52) = DWORD2(v1546);
    while (2)
    {
      HIDWORD(v1546) = 0;
      if (v52 < 1)
      {
        v55 = 0;
        v67 = 0uLL;
        v69 = 0;
      }

      else
      {
        v55 = 0;
        v57 = *(&v1543 + 1);
        v56 = v1543;
        v52 = v52;
        v58 = v1548;
        v60 = *(&v1544 + 1);
        v59 = v1544;
        v61 = v1545[1];
        v62 = v1545[0];
        v63 = v1549;
        v64 = *(&v1547[6] + 1);
        v65 = v1546;
        v66 = *(&v1551 + 1);
        v67 = 0uLL;
        do
        {
          if (!*v61++)
          {
            *(v64 + 4 * v55) = *v56;
            *(v58 + 4 * v55) = *v57;
            *(*(&v58 + 1) + 4 * v55) = *v59;
            *(v63 + 4 * v55) = *v60;
            *(*(&v63 + 1) + 4 * v55) = *v62;
            *(v66 + 4 * v55++) = *v65;
            HIDWORD(v1546) = v55;
          }

          ++v65;
          ++v62;
          ++v60;
          ++v59;
          ++v57;
          ++v56;
          --v52;
        }

        while (v52);
        v69 = 0;
      }

      while (1)
      {
        v1442 = v69;
        v72 = v55 <= 0 ? -(-v55 & 3) : v55 & 3;
        v73 = (v55 - v72);
        if (v73 < 1)
        {
          LODWORD(v89) = 0;
          if (v55 <= 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v74 = 0;
          v75 = 0;
          v76 = *(v1547 + 4);
          v77 = *(v1547 + 3);
          v78 = *&v1547[1];
          v79 = *&v1547[2];
          v80 = *(&v1547[1] + 4);
          v81 = *(&v1547[1] + 3);
          v82 = *(&v1547[2] + 1);
          v83 = vdupq_lane_s32(*(&v1547[2] + 8), 0);
          v84 = vdupq_lane_s32(*(&v1547[2] + 12), 0);
          v85 = vdupq_lane_s32(*&v1547[3], 0);
          do
          {
            v86 = vsubq_f32(*(*(&v1548 + 1) + v74), v83);
            v87 = vsubq_f32(*(v1549 + v74), v84);
            v88 = vsubq_f32(*(*(&v1549 + 1) + v74), v85);
            *(v1550 + v74) = vaddq_f32(vaddq_f32(vmulq_n_f32(v86, *&v76), vmulq_n_f32(v87, v78)), vmulq_n_f32(v88, v81));
            *(*(&v1550 + 1) + v74) = vaddq_f32(vaddq_f32(vmulq_n_f32(v86, *(&v76 + 1)), vmulq_n_f32(v87, *&v80)), vmulq_n_f32(v88, v79));
            *(v1551 + v74) = vaddq_f32(vaddq_f32(vmulq_n_f32(v86, v77), vmulq_n_f32(v87, *(&v80 + 1))), vmulq_n_f32(v88, v82));
            v75 += 4;
            v74 += 16;
          }

          while (v75 < v73);
          LODWORD(v89) = v75;
          if (v75 >= v55)
          {
            goto LABEL_47;
          }
        }

        v90 = *(&v1548 + 1);
        v91 = v1549;
        v92 = v1550;
        v93 = v1551;
        v89 = v89;
        v94 = v55;
        if ((v55 - v89) < 8)
        {
          goto LABEL_893;
        }

        v1505 = v55 - v89;
        v416 = 4 * v89;
        v417 = v1550 + v416;
        v418 = v1550 + 4 * v55;
        v419 = *(&v1550 + 1) + v416;
        v420 = *(&v1550 + 1) + 4 * v55;
        v421 = v1551 + v416;
        v422 = v1551 + 4 * v55;
        v423 = *(&v1548 + 1) + v416;
        v424 = *(&v1548 + 1) + 4 * v55;
        v425 = v1549 + v416;
        v426 = v1549 + 4 * v55;
        v427 = *(&v1549 + 1) + v416;
        v428 = *(&v1549 + 1) + 4 * v55;
        _CF = v1550 + v416 >= v422 || v421 >= v418;
        v430 = !_CF;
        v1538 = v430;
        v431 = v417 >= v424 || v423 >= v418;
        v432 = !v431;
        v1527 = v432;
        v433 = v417 >= v426 || v425 >= v418;
        v434 = !v433;
        v1516 = v434;
        v435 = v417 >= v428 || v427 >= v418;
        v436 = !v435;
        v437 = v417 >= &v1547[3] + 4 || v1547 + 4 >= v418;
        v438 = !v437;
        v439 = v419 >= v422 || v421 >= v420;
        v440 = !v439;
        v441 = v419 >= v424 || v423 >= v420;
        v442 = !v441;
        v443 = v419 >= v426 || v425 >= v420;
        v444 = !v443;
        v445 = v419 >= v428 || v427 >= v420;
        v446 = !v445;
        v447 = v419 >= &v1547[3] + 4 || v1547 + 4 >= v420;
        v448 = !v447;
        v449 = v421 >= v424 || v423 >= v422;
        v450 = !v449;
        v451 = v421 >= v426 || v425 >= v422;
        v452 = !v451;
        v453 = v421 >= v428 || v427 >= v422;
        v454 = !v453;
        v455 = v421 >= &v1547[3] + 4 || v1547 + 4 >= v422;
        v456 = !v455;
        if (v419 < v418 && v417 < v420)
        {
          goto LABEL_893;
        }

        if (v1538)
        {
          goto LABEL_893;
        }

        if (v1527)
        {
          goto LABEL_893;
        }

        if (v1516)
        {
          goto LABEL_893;
        }

        if (v436)
        {
          goto LABEL_893;
        }

        if (v438)
        {
          goto LABEL_893;
        }

        if (v440)
        {
          goto LABEL_893;
        }

        if (v442)
        {
          goto LABEL_893;
        }

        if (v444)
        {
          goto LABEL_893;
        }

        if (v446)
        {
          goto LABEL_893;
        }

        if (v448)
        {
          goto LABEL_893;
        }

        if (v450)
        {
          goto LABEL_893;
        }

        if (v452)
        {
          goto LABEL_893;
        }

        if (v454)
        {
          goto LABEL_893;
        }

        if (v456)
        {
          goto LABEL_893;
        }

        v89 = (v1505 & 0xFFFFFFFFFFFFFFFCLL) + v89;
        v458 = (*(&v1548 + 1) + v416);
        v459 = (v1549 + v416);
        v460 = (*(&v1549 + 1) + v416);
        v461 = (v1550 + v416);
        v462 = (*(&v1550 + 1) + v416);
        v463 = (v1551 + v416);
        v464 = v1505 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v465 = *v458++;
          v466 = v465;
          v467 = *v459++;
          v468 = v467;
          v469 = *v460++;
          v470 = vsubq_f32(v466, vdupq_lane_s32(*(&v1547[2] + 8), 0));
          v471 = vsubq_f32(v468, vdupq_lane_s32(*(&v1547[2] + 12), 0));
          v472 = vsubq_f32(v469, vdupq_lane_s32(*&v1547[3], 0));
          v473 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v471, *&v1547[1]), v470, *(v1547 + 1)), v472, *(&v1547[1] + 3));
          v474 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v471, *(&v1547[1] + 1)), v470, *(v1547 + 2)), v472, *&v1547[2]);
          v475 = vmlaq_n_f32(vmulq_n_f32(v471, *(&v1547[1] + 2)), v470, *(v1547 + 3));
          v470.i32[0] = DWORD1(v1547[2]);
          *v461++ = v473;
          *v462++ = v474;
          *v463++ = vmlaq_n_f32(v475, v472, v470.f32[0]);
          v464 -= 4;
        }

        while (v464);
        if (v1505 != (v1505 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_893:
          do
          {
            v95 = *(v90 + 4 * v89) - *(&v1547[2] + 2);
            v96 = *(v91 + 4 * v89) - *(&v1547[2] + 3);
            v97 = *(*(&v91 + 1) + 4 * v89) - *&v1547[3];
            v98 = ((*&v1547[1] * v96) + (*(v1547 + 1) * v95)) + (*(&v1547[1] + 3) * v97);
            v99 = ((v96 * *(&v1547[1] + 1)) + (*(v1547 + 2) * v95)) + (*&v1547[2] * v97);
            v100 = ((v96 * *(&v1547[1] + 2)) + (*(v1547 + 3) * v95)) + (*(&v1547[2] + 1) * v97);
            *(v92 + 4 * v89) = v98;
            *(*(&v92 + 1) + 4 * v89) = v99;
            *(v93 + 4 * v89++) = v100;
          }

          while (v94 != v89);
        }

LABEL_47:
        v101 = *(&v1551 + 1);
        v102 = v1552;
        v103 = SHIDWORD(v1546) <= 0 ? -(-HIDWORD(v1546) & 3) : BYTE12(v1546) & 3;
        v1454 = SHIDWORD(v1546);
        v104 = (HIDWORD(v1546) - v103);
        v105 = vdupq_n_s32(0xBD3E7316);
        v106 = vdupq_n_s32(0x3E232344u);
        v107 = vdupq_n_s32(0xBEA7BE2C);
        v108 = vdupq_n_s32(0x3FC90FDBu);
        v109 = vdupq_n_s32(0x40490FDBu);
        v110 = vdupq_n_s32(0x3E4CCCCDu);
        v111 = vdupq_n_s32(0xBEAAAAAB);
        v112 = vdupq_n_s32(0x3E22F983u);
        __asm { FMOV            V29.4S, #1.0 }

        v115 = vdupq_n_s32(0xC0490FDB);
        v116 = vdupq_n_s32(0xC0C90FDB);
        if (v104 < 1)
        {
          LODWORD(v118) = 0;
          v119 = 0uLL;
        }

        else
        {
          v117 = 0;
          v118 = 0;
          v119 = 0uLL;
          do
          {
            v133 = *(*(&v1547[6] + 1) + v117);
            v134 = *(v1548 + v117);
            v135 = *(v1550 + v117);
            v136 = *(*(&v1550 + 1) + v117);
            v137 = *(v1551 + v117);
            v138 = *(v101 + v117);
            v139 = vsqrtq_f32(vaddq_f32(vmulq_f32(v135, v135), vmulq_f32(v136, v136)));
            if (v102)
            {
              *(v102 + v117) = v139;
            }

            v120 = vabsq_f32(v135);
            v121 = vabsq_f32(v136);
            v122 = vdivq_f32(vminq_f32(v120, v121), vmaxq_f32(v120, v121));
            v123 = vmulq_f32(v122, v122);
            v124 = vaddq_f32(v122, vmulq_f32(vmulq_f32(v122, v123), vaddq_f32(vmulq_f32(v123, vaddq_f32(vmulq_f32(v123, v105), v106)), v107)));
            v125 = vbslq_s8(vcagtq_f32(v136, v135), vsubq_f32(v108, v124), vaddq_f32(v124, v67));
            v126 = vbslq_s8(vcltzq_f32(v135), vsubq_f32(v109, v125), v125);
            v127 = vbslq_s8(vcltzq_f32(v136), vsubq_f32(v67, v126), v126);
            v128 = vdivq_f32(v137, v139);
            v129 = vmulq_f32(v128, v128);
            v130 = vsubq_f32(v133, v127);
            v131 = vmulq_f32(v138, vaddq_f32(v130, vmulq_f32(vcvtq_f32_s32(vaddq_s32(vcvtq_s32_f32(vmulq_f32(vaddq_f32(v130, v109), v112)), vcgtq_f32(v115, v130))), v116)));
            v132 = vmulq_f32(v138, vsubq_f32(v134, vmulq_f32(v128, vaddq_f32(vaddq_f32(vmulq_f32(vmulq_f32(v129, v129), v110), vmulq_f32(v129, v111)), _Q29))));
            *(*(&v1552 + 1) + v117) = v131;
            *&v1553[v117 / 4] = v132;
            v119 = vaddq_f32(v119, vaddq_f32(vmulq_f32(v132, v132), vmulq_f32(v131, v131)));
            v118 += 4;
            v117 += 16;
          }

          while (v118 < v104);
        }

        v1449 = v116;
        v1450 = v115;
        v1451 = _Q29;
        v1452 = v112;
        v1453 = v111;
        v1443 = v110;
        v1444 = v109;
        v1445 = v108;
        v1446 = v107;
        v1447 = v106;
        v1448 = v105;
        v140 = vpaddq_f32(v119, v119);
        v141.i32[1] = 0;
        v142 = vpaddq_f32(v140, v140).f32[0] + 0.0;
        if (v118 < v1454)
        {
          v143 = *(&v1547[6] + 1);
          v144 = v1548;
          v145 = v1550;
          v146 = v118;
          v147 = v1551;
          v148 = *(&v1552 + 1);
          v149 = v1553;
          do
          {
            v153 = *(v143 + 4 * v146);
            v154 = *(v144 + 4 * v146);
            v155 = *(v145 + 4 * v146);
            v156 = *(*(&v145 + 1) + 4 * v146);
            v157 = *(v147 + 4 * v146);
            v158 = atan2f(v156, v155);
            v159 = sqrtf((v156 * v156) + (v155 * v155));
            if (v102)
            {
              *(v102 + 4 * v146) = v159;
            }

            v150 = atanf(v157 / v159);
            v151 = *(v101 + 4 * v146);
            *v141.i64 = ((v153 - v158) + 3.14159265 + ((((v153 - v158) + 3.14159265) * 0.159154943) - ((v153 - v158) + 3.14159265 < 0.0)) * -6.28318531 + -3.14159265) * v151;
            v141.f32[0] = *v141.i64;
            v152 = (v154 - v150) * v151;
            *(v148 + 4 * v146) = v141.i32[0];
            v149[v146] = v152;
            v142 = v142 + ((v152 * v152) + (v141.f32[0] * v141.f32[0]));
            ++v146;
          }

          while (v1454 != v146);
        }

        v1441 = v142;
        v1574 = 0;
        v1573 = 0u;
        v1572 = 0u;
        v1571 = 0u;
        v1570 = 0u;
        memset(v1569, 0, sizeof(v1569));
        *v1568 = 0u;
        v1567 = 0u;
        *v1566 = 0u;
        v160 = HIDWORD(v1546);
        if (SHIDWORD(v1546) >= 1)
        {
          v1463 = -*(v1547 + 1);
          v1462 = -*(v1547 + 2);
          v1461 = -*(v1547 + 3);
          v1460 = -*&v1547[1];
          v1459 = -*(&v1547[1] + 1);
          v1458 = -*(&v1547[1] + 2);
          v1457 = -*(&v1547[1] + 3);
          v1456 = -*&v1547[2];
          v1455 = -*(&v1547[2] + 1);
          v161 = 0uLL;
          v1513 = 0.0;
          v1509 = 0.0;
          v1497 = 0.0;
          v1503 = 0.0;
          v1499 = 0.0;
          v1498 = 0.0;
          v163 = *(&v1551 + 1);
          v162 = v1551;
          v164 = HIDWORD(v1546);
          v165 = 0.0;
          v166 = 0.0;
          v167 = v1553;
          v168 = 0.0;
          v169 = 0.0;
          v170 = 0.0;
          v172 = *(&v1550 + 1);
          v171 = v1550;
          v173 = 0.0;
          v174 = 0.0;
          v175 = 0.0;
          v176 = *(&v1552 + 1);
          v177 = v1552;
          v178 = 0.0;
          *&v179 = 0.0;
          *&v180 = 0.0;
          v181 = 0.0;
          v182 = 0.0;
          v183 = 0.0;
          v184 = 0.0;
          v185 = 0.0;
          v186 = 0.0;
          v187 = 0.0;
          v188 = 0.0;
          *&v189 = 0.0;
          v190 = 0.0;
          v1534 = 0.0;
          *&v191 = 0.0;
          v192 = 0.0;
          v193 = 0.0;
          v194 = 0.0;
          *&v195 = 0.0;
          v196 = 0.0;
          v141 = 0uLL;
          do
          {
            v1523 = v141;
            v1492 = v161;
            v1491 = v165;
            v1490 = v166;
            v1489 = v168;
            v1488 = v170;
            v1487 = v173;
            v1486 = v174;
            v1485 = v175;
            v1484 = v178;
            v1483 = *&v179;
            v1482 = *&v180;
            v1481 = v181;
            v1480 = v182;
            v1479 = v183;
            v1478 = v184;
            v1477 = v185;
            v1476 = v186;
            v1475 = v187;
            v1474 = v188;
            v1472 = v190;
            v1471 = *&v191;
            if (*(&v1551 + 1))
            {
              v197 = *v163;
            }

            else
            {
              v197 = 1.0;
            }

            v198 = *&v189;
            v199 = v194;
            v200 = *&v195;
            v201 = *v177;
            v202 = -(v197 * *v172) / (v201 * v201);
            v203 = (*v171 * v197) / (v201 * v201);
            v204 = (v201 * v201) + (*v162 * *v162);
            v205 = -(v197 * (*v162 / v204));
            v206 = (*v171 / *v177) * v205;
            v207 = (*v172 / *v177) * v205;
            v208 = (*v177 * v197) / v204;
            v209 = (((v202 * v1463) + 0.0) + (v203 * v1462)) + (v1461 * 0.0);
            v210 = (((v206 * v1463) + 0.0) + (v207 * v1462)) + (v208 * v1461);
            v211 = (((v202 * v1460) + 0.0) + (v203 * v1459)) + (v1458 * 0.0);
            v212 = (((v206 * v1460) + 0.0) + (v207 * v1459)) + (v208 * v1458);
            v213 = (((v202 * v1457) + 0.0) + (v203 * v1456)) + (v1455 * 0.0);
            v214 = (((v206 * v1457) + 0.0) + (v207 * v1456)) + (v208 * v1455);
            v215 = (((v202 * *v172) + 0.0) - (v203 * *v171)) + 0.0;
            v216 = (((v206 * *v172) + 0.0) - (v207 * *v171)) + (v208 * 0.0);
            v217 = ((0.0 - (v202 * *v162)) + (v203 * 0.0)) + (*v171 * 0.0);
            v218 = ((0.0 - (v206 * *v162)) + (v207 * 0.0)) + (v208 * *v171);
            v219 = (((v202 * 0.0) + 0.0) + (v203 * *v162)) - (*v172 * 0.0);
            v220 = (((v206 * 0.0) + 0.0) + (v207 * *v162)) - (v208 * *v172);
            v1468 = ((v209 * v209) + 0.0) + (v210 * v210);
            v221 = ((v211 * v209) + 0.0) + (v212 * v210);
            v1467 = ((v213 * v209) + 0.0) + (v214 * v210);
            v1470 = ((v217 * v209) + 0.0) + (v218 * v210);
            v222.f32[0] = ((v213 * v211) + 0.0) + (v214 * v212);
            *&v1464 = v198 + v222.f32[0];
            v222.f32[1] = ((v213 * v213) + 0.0) + (v214 * v214);
            v223.f32[0] = ((v219 * v213) + 0.0) + (v220 * v214);
            v222.f32[2] = ((v215 * v213) + 0.0) + (v216 * v214);
            v223.f32[1] = ((v215 * v209) + 0.0) + (v216 * v210);
            v223.f32[2] = ((v215 * v211) + 0.0) + (v216 * v212);
            v223.f32[3] = v222.f32[2];
            v224 = ((v219 * v209) + 0.0) + (v220 * v210);
            v225 = ((v211 * v211) + 0.0) + (v212 * v212);
            v1498 = (v1498 + (v209 * *v176)) + (v210 * *v167);
            v226 = ((v217 * v211) + 0.0) + (v218 * v212);
            v227 = v1499 + (v211 * *v176);
            v228 = ((v219 * v211) + 0.0) + (v220 * v212);
            v1499 = v227 + (v212 * *v167);
            v229 = ((v217 * v213) + 0.0) + (v218 * v214);
            v230 = v1503 + (v213 * *v176);
            v231 = ((v215 * v215) + 0.0) + (v216 * v216);
            v1503 = v230 + (v214 * *v167);
            v232 = ((v217 * v215) + 0.0) + (v218 * v216);
            v233 = v1497 + (v215 * *v176);
            v234 = ((v219 * v215) + 0.0) + (v220 * v216);
            *&v235 = v233 + (v216 * *v167);
            v236 = ((v217 * v217) + 0.0) + (v218 * v218);
            v237 = v1509 + (v217 * *v176);
            v238 = ((v219 * v217) + 0.0) + (v220 * v218);
            v1509 = v237 + (v218 * *v167);
            v1513 = (v1513 + (v219 * *v176)) + (v220 * *v167);
            v239 = ((v219 * v219) + 0.0) + (v220 * v220);
            *&v1469 = v196 + v1468;
            *&v240 = v1534 + v221;
            v1465 = v193 + v223.f32[1];
            *&v241 = v1474 + v223.f32[2];
            v1473 = v199 + v1467;
            v222.f32[3] = v229;
            v161 = vaddq_f32(v1492, v222);
            v242 = v1478 + v231;
            v187 = v1475 + v226;
            *&v243 = v1482 + v226;
            *&v244 = v1483 + v229;
            v183 = v183 + v232;
            v245 = v1485 + v236;
            *&v1466 = v200 + v221;
            *&v246 = v1471 + v224;
            v247 = v1487 + v224;
            v186 = v1476 + v228;
            v168 = v168 + v234;
            v174 = v1486 + v238;
            v165 = v1491 + v239;
            v1566[0] = __PAIR64__(v1466, v1469);
            *&v1566[1] = v199 + v1467;
            *(&v1566[1] + 1) = v193 + v223.f32[1];
            *&v1567 = v192 + v1470;
            v248 = v192 + v1470;
            *(&v1567 + 4) = __PAIR64__(v240, v246);
            v1534 = *&v240;
            v190 = v1472 + v225;
            *(&v1567 + 3) = v1472 + v225;
            v1568[0] = __PAIR64__(v241, v1464);
            v249 = v241;
            *&v1568[1] = v187;
            *(&v1568[1] + 1) = v1476 + v228;
            *(&v1569[2] + 4) = vaddq_f32(v1523, v223);
            *(v1569 + 4) = v161;
            *v1569 = v1477 + v1467;
            *(&v1569[4] + 1) = v242;
            *&v1569[5] = v1479 + v232;
            *(&v1569[5] + 1) = v1480 + v234;
            *&v1570 = v1481 + v1470;
            *(&v1570 + 4) = __PAIR64__(v244, v243);
            *(&v1570 + 3) = v1484 + v232;
            *&v1571 = v245;
            *(&v1571 + 1) = v1486 + v238;
            *(&v1571 + 2) = v247;
            *(&v1571 + 3) = v1488 + v228;
            *&v1572 = v169 + v223.f32[0];
            *(&v1572 + 1) = v1489 + v234;
            *(&v1572 + 2) = v1490 + v238;
            *(&v1572 + 3) = v1491 + v239;
            *&v1573 = __PAIR64__(LODWORD(v1499), LODWORD(v1498));
            *(&v1573 + 1) = __PAIR64__(v235, LODWORD(v1503));
            v1497 = *&v235;
            ++v163;
            ++v177;
            ++v162;
            ++v172;
            v1574 = __PAIR64__(LODWORD(v1513), LODWORD(v1509));
            ++v171;
            ++v167;
            ++v176;
            --v164;
            v166 = v1490 + v238;
            v169 = v169 + v223.f32[0];
            v170 = v1488 + v228;
            v173 = v247;
            v175 = v245;
            v178 = v1484 + v232;
            v179 = v244;
            v180 = v243;
            v181 = v1481 + v1470;
            v182 = v1480 + v234;
            v184 = v242;
            v185 = v1477 + v1467;
            v188 = *&v249;
            v189 = v1464;
            v191 = v246;
            v192 = v248;
            v193 = v1465;
            v194 = v1473;
            v195 = v1466;
            v196 = *&v1469;
            v141 = *(&v1569[2] + 4);
          }

          while (v164);
        }

        v250 = 0;
        v251 = v1441 / v1454;
        v252 = v1566;
        v253 = 2;
        v254 = &v1583;
        do
        {
          v255 = *v252;
          *v254 = *v252;
          v256 = &v254[v250];
          if (v250)
          {
            v257 = &v254[-v250];
            v258 = -v250;
            do
            {
              v255 = v255 - (v254[v258] * v254[v258]);
              *v254 = v255;
              _CF = __CFADD__(v258++, 1);
            }

            while (!_CF);
            *v254 = sqrtf(v255);
            v259 = v250 + 1;
            v260 = v252 + 1;
            if (v250 <= 4)
            {
              v261 = v256 + 1;
              v262 = v253;
              do
              {
                v263 = *v260;
                *v261 = *v260;
                v264 = &v261[-v250];
                v265 = v263 - (*v264 * *v257);
                *v261 = v265;
                if (v250 != 1)
                {
                  v265 = v265 - (v264[1] * v257[1]);
                  *v261 = v265;
                  if (v250 != 2)
                  {
                    v265 = v265 - (v264[2] * v257[2]);
                    *v261 = v265;
                    if (v250 != 3)
                    {
                      v265 = v265 - (v264[3] * v257[3]);
                      *v261 = v265;
                    }
                  }
                }

                *v261 = v265 / *v254;
                v261 += v262;
                ++v260;
                ++v262;
              }

              while (v262 != 7);
            }
          }

          else
          {
            *v254 = sqrtf(v255);
            v266 = v254 + 1;
            v260 = v252 + 1;
            v267 = v253;
            do
            {
              v268 = *v260++;
              *v266 = v268;
              *v266 = v268 / *v254;
              v266 += v267++;
            }

            while (v267 != 7);
            v259 = 1;
          }

          v254 = v256 + 2;
          v252 = &v260[v259];
          ++v253;
          v250 = v259;
        }

        while (v259 != 6);
        v1577 = *&v1573 / v1583;
        v1578 = (*(&v1573 + 1) - (v1584 * (*&v1573 / v1583))) / v1585;
        v269 = ((*(&v1573 + 2) - (v1586 * (*&v1573 / v1583))) - (v1587 * v1578)) / v1588;
        v1579 = v269;
        v1580 = (((*(&v1573 + 3) - (v1589 * (*&v1573 / v1583))) - (v1590 * v1578)) - (v1591 * v269)) / v1592;
        v270 = ((((*&v1574 - (v1593 * (*&v1573 / v1583))) - (v1594 * v1578)) - (v1595 * v269)) - (v1596 * v1580)) / v1597;
        v1581 = v270;
        v1582 = (((((*(&v1574 + 1) - (v1598 * (*&v1573 / v1583))) - (v1599 * v1578)) - (v1600 * v269)) - (v1601 * v1580)) - (v1602 * v270)) / v1603;
        v271 = v1582 / v1603;
        v272 = (v270 - (v1602 * (v1582 / v1603))) / v1597;
        v1576.f32[1] = v1582 / v1603;
        v1576.f32[0] = v272;
        v273 = ((v1580 - (v1596 * v272)) - (v1601 * (v1582 / v1603))) / v1592;
        v1575.f32[3] = v273;
        v1575.f32[2] = (((v269 - (v1591 * v273)) - (v1595 * v272)) - (v1600 * (v1582 / v1603))) / v1588;
        v274 = ((((v1578 - (v1587 * v1575.f32[2])) - (v1590 * v273)) - (v1594 * v272)) - (v1599 * (v1582 / v1603))) / v1585;
        v1575.f32[1] = v274;
        v1575.f32[0] = ((((((*&v1573 / v1583) - (v1584 * v274)) - (v1586 * v1575.f32[2])) - (v1589 * v273)) - (v1593 * v272)) - (v1598 * (v1582 / v1603))) / v1583;
        v275.i32[1] = DWORD2(v1547[0]);
        *(&v1547[4] + 4) = *(&v1547[1] + 4);
        *(&v1547[5] + 4) = *(&v1547[2] + 4);
        *(&v1547[3] + 4) = *(v1547 + 4);
        *v275.i32 = *(&v1547[2] + 2) + v1575.f32[0];
        v141.f32[0] = *(&v1547[2] + 3) + v274;
        v1524 = v275;
        v1535 = *v141.f32;
        *(&v1547[2] + 2) = *(&v1547[2] + 2) + v1575.f32[0];
        *(&v1547[2] + 3) = *(&v1547[2] + 3) + v274;
        v141.f32[0] = v1575.f32[2] + *&v1547[3];
        v1514 = *v141.f32;
        *&v1547[3] = v1575.f32[2] + *&v1547[3];
        v276 = __sincosf_stret(v273);
        v277 = __sincosf_stret(v272);
        cosval = v277.__cosval;
        v279 = __sincosf_stret(v271);
        v280 = ((v277.__sinval * v276.__cosval) * v279.__sinval) - (v276.__sinval * v279.__cosval);
        v281 = (v279.__sinval * v276.__sinval) + ((v277.__sinval * v276.__cosval) * v279.__cosval);
        v282 = (v279.__cosval * v276.__cosval) + ((v277.__sinval * v276.__sinval) * v279.__sinval);
        v283 = ((v277.__sinval * v276.__sinval) * v279.__cosval) - (v276.__cosval * v279.__sinval);
        v49.i32[0] = DWORD2(v1547[0]);
        v284 = *(v1547 + 1);
        v51.i32[0] = v1547[1];
        v285 = *(&v1547[1] + 3);
        v286 = *&v1547[2];
        v287 = (((*(v1547 + 1) * (cosval * v276.__cosval)) + 0.0) + (*(v1547 + 2) * (cosval * v276.__sinval))) - (*(v1547 + 3) * v277.__sinval);
        v288 = (((*(v1547 + 1) * v280) + 0.0) + (*(v1547 + 2) * v282)) + (*(v1547 + 3) * (v279.__sinval * v277.__cosval));
        *(v1547 + 1) = v287;
        *(v1547 + 2) = v288;
        v289 = (((v284 * v281) + 0.0) + (v49.f32[0] * v283)) + (*(v1547 + 3) * (v279.__cosval * v277.__cosval));
        v49.f32[0] = (((*&v1547[1] * (cosval * v276.__cosval)) + 0.0) + (*(&v1547[1] + 1) * (cosval * v276.__sinval))) - (*(&v1547[1] + 2) * v277.__sinval);
        *(v1547 + 3) = v289;
        *&v1547[1] = v49.f32[0];
        *v50.i32 = (((*v51.i32 * v280) + 0.0) + (*(&v1547[1] + 1) * v282)) + (*(&v1547[1] + 2) * (v279.__sinval * v277.__cosval));
        *v51.i32 = (((*v51.i32 * v281) + 0.0) + (*(&v1547[1] + 1) * v283)) + (*(&v1547[1] + 2) * (v279.__cosval * v277.__cosval));
        *(&v1547[1] + 4) = __PAIR64__(v51.u32[0], v50.u32[0]);
        v290 = (((*(&v1547[1] + 3) * (cosval * v276.__cosval)) + 0.0) + (*&v1547[2] * (cosval * v276.__sinval))) - (*(&v1547[2] + 1) * v277.__sinval);
        v291 = (((*(&v1547[1] + 3) * v280) + 0.0) + (*&v1547[2] * v282)) + (*(&v1547[2] + 1) * (v279.__sinval * v277.__cosval));
        *(&v1547[1] + 3) = v290;
        *&v1547[2] = v291;
        v292 = (((v285 * v281) + 0.0) + (v286 * v283)) + (*(&v1547[2] + 1) * (v279.__cosval * v277.__cosval));
        *(&v1547[2] + 1) = v292;
        v293 = v160 <= 0 ? -(-v160 & 3) : v160 & 3;
        v294 = (v160 - v293);
        if (v294 < 1)
        {
          LODWORD(v308) = 0;
          v309 = 0uLL;
          v301 = v1452;
          v300 = v1453;
          v303 = v1450;
          v302 = v1451;
          v304 = v1449;
          v311 = v1447;
          v310 = v1448;
          v313 = v1445;
          v312 = v1446;
          v315 = v1443;
          v314 = v1444;
          if (v160 <= 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v295 = 0;
          v296 = 0;
          v297 = vdupq_lane_s32(v1524, 0);
          v298 = vdupq_lane_s32(v1535, 0);
          v299 = vdupq_lane_s32(v1514, 0);
          v301 = v1452;
          v300 = v1453;
          v303 = v1450;
          v302 = v1451;
          v304 = v1449;
          do
          {
            v305 = vsubq_f32(*(*(&v1548 + 1) + v295), v297);
            v306 = vsubq_f32(*(v1549 + v295), v298);
            v307 = vsubq_f32(*(*(&v1549 + 1) + v295), v299);
            *(v1550 + v295) = vaddq_f32(vaddq_f32(vmulq_n_f32(v305, v287), vmulq_n_f32(v306, v49.f32[0])), vmulq_n_f32(v307, v290));
            *(*(&v1550 + 1) + v295) = vaddq_f32(vaddq_f32(vmulq_n_f32(v305, v288), vmulq_n_f32(v306, *v50.i32)), vmulq_n_f32(v307, v291));
            *(v1551 + v295) = vaddq_f32(vaddq_f32(vmulq_n_f32(v305, v289), vmulq_n_f32(v306, *v51.i32)), vmulq_n_f32(v307, v292));
            v296 += 4;
            v295 += 16;
          }

          while (v296 < v294);
          LODWORD(v308) = v296;
          v309 = 0uLL;
          v311 = v1447;
          v310 = v1448;
          v313 = v1445;
          v312 = v1446;
          v315 = v1443;
          v314 = v1444;
          if (v296 >= v160)
          {
            goto LABEL_94;
          }
        }

        v316 = *(&v1548 + 1);
        v317 = v1549;
        v318 = v1550;
        v319 = v1551;
        v308 = v308;
        v320 = v160;
        if ((v160 - v308) < 8)
        {
          goto LABEL_894;
        }

        v1506 = v160 - v308;
        v476 = 4 * v308;
        v477 = v1550 + v476;
        v478 = v1550 + 4 * v160;
        v479 = *(&v1550 + 1) + v476;
        v480 = *(&v1550 + 1) + 4 * v160;
        v481 = v1551 + v476;
        v482 = v1551 + 4 * v320;
        v483 = *(&v1548 + 1) + v476;
        v484 = *(&v1548 + 1) + 4 * v320;
        v485 = v1549 + v476;
        v486 = v1549 + 4 * v320;
        v487 = *(&v1549 + 1) + v476;
        v488 = *(&v1549 + 1) + 4 * v320;
        v489 = v1550 + v476 >= v482 || v481 >= v478;
        v490 = !v489;
        v1539 = v490;
        v491 = v477 >= v484 || v483 >= v478;
        v492 = !v491;
        v1528 = v492;
        v493 = v477 >= v486 || v485 >= v478;
        v494 = !v493;
        v1517 = v494;
        v495 = v477 >= v488 || v487 >= v478;
        v496 = !v495;
        v497 = v477 >= &v1547[3] + 4 || v1547 + 4 >= v478;
        v498 = !v497;
        v499 = v479 >= v482 || v481 >= v480;
        v500 = !v499;
        v501 = v479 >= v484 || v483 >= v480;
        v502 = !v501;
        v503 = v479 >= v486 || v485 >= v480;
        v504 = !v503;
        v505 = v479 >= v488 || v487 >= v480;
        v506 = !v505;
        v507 = v479 >= &v1547[3] + 4 || v1547 + 4 >= v480;
        v508 = !v507;
        v509 = v481 >= v484 || v483 >= v482;
        v510 = !v509;
        v511 = v481 >= v486 || v485 >= v482;
        v512 = !v511;
        v513 = v481 >= v488 || v487 >= v482;
        v514 = !v513;
        v515 = v481 >= &v1547[3] + 4 || v1547 + 4 >= v482;
        v516 = !v515;
        if (v479 < v478 && v477 < v480)
        {
          goto LABEL_894;
        }

        if (v1539)
        {
          goto LABEL_894;
        }

        if (v1528)
        {
          goto LABEL_894;
        }

        if (v1517)
        {
          goto LABEL_894;
        }

        if (v496)
        {
          goto LABEL_894;
        }

        if (v498)
        {
          goto LABEL_894;
        }

        if (v500)
        {
          goto LABEL_894;
        }

        if (v502)
        {
          goto LABEL_894;
        }

        if (v504)
        {
          goto LABEL_894;
        }

        if (v506)
        {
          goto LABEL_894;
        }

        if (v508)
        {
          goto LABEL_894;
        }

        if (v510)
        {
          goto LABEL_894;
        }

        if (v512)
        {
          goto LABEL_894;
        }

        if (v514)
        {
          goto LABEL_894;
        }

        if (v516)
        {
          goto LABEL_894;
        }

        v308 = (v1506 & 0xFFFFFFFFFFFFFFFCLL) + v308;
        v518 = (*(&v1548 + 1) + v476);
        v519 = (v1549 + v476);
        v520 = (*(&v1549 + 1) + v476);
        v521 = (v1550 + v476);
        v522 = (*(&v1550 + 1) + v476);
        v523 = (v1551 + v476);
        v524 = v1506 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v525 = *v518++;
          v526 = v525;
          v527 = *v519++;
          v528 = v527;
          v529 = *v520++;
          v530 = vsubq_f32(v526, vdupq_lane_s32(*(&v1547[2] + 8), 0));
          v531 = vsubq_f32(v528, vdupq_lane_s32(*(&v1547[2] + 12), 0));
          v532 = vsubq_f32(v529, vdupq_lane_s32(*&v1547[3], 0));
          v50 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v531, *&v1547[1]), v530, *(v1547 + 1)), v532, *(&v1547[1] + 3));
          v51 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v531, *(&v1547[1] + 1)), v530, *(v1547 + 2)), v532, *&v1547[2]);
          v49 = *(v1547 + 12);
          v533 = vmlaq_n_f32(vmulq_n_f32(v531, *(&v1547[1] + 2)), v530, *(v1547 + 3));
          v530.i32[0] = DWORD1(v1547[2]);
          *v521++ = v50;
          *v522++ = v51;
          *v523++ = vmlaq_n_f32(v533, v532, v530.f32[0]);
          v524 -= 4;
        }

        while (v524);
        if (v1506 != (v1506 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_894:
          do
          {
            v50.i32[0] = DWORD1(v1547[2]);
            v321 = *(v316 + 4 * v308) - *(&v1547[2] + 2);
            v322 = *(v317 + 4 * v308) - *(&v1547[2] + 3);
            v323 = *(*(&v317 + 1) + 4 * v308) - *&v1547[3];
            v49.f32[0] = ((*&v1547[1] * v322) + (*(v1547 + 1) * v321)) + (*(&v1547[1] + 3) * v323);
            *v51.i32 = ((v322 * *(&v1547[1] + 1)) + (*(v1547 + 2) * v321)) + (*&v1547[2] * v323);
            v324 = ((v322 * *(&v1547[1] + 2)) + (*(v1547 + 3) * v321)) + (*(&v1547[2] + 1) * v323);
            *(v318 + 4 * v308) = v49.i32[0];
            *(*(&v318 + 1) + 4 * v308) = v51.i32[0];
            *(v319 + 4 * v308++) = v324;
          }

          while (v320 != v308);
        }

LABEL_94:
        v325 = *(&v1551 + 1);
        if (SHIDWORD(v1546) <= 0)
        {
          v326 = -(-HIDWORD(v1546) & 3);
        }

        else
        {
          v326 = BYTE12(v1546) & 3;
        }

        v327 = (HIDWORD(v1546) - v326);
        if (v327 < 1)
        {
          LODWORD(v328) = 0;
          v333 = 0uLL;
        }

        else
        {
          v328 = 0;
          v329 = *(&v1547[6] + 1);
          v330 = v1548;
          v332 = *(&v1550 + 1);
          v331 = v1550;
          v333 = 0uLL;
          v334 = *(&v1551 + 1);
          v335 = v1551;
          do
          {
            v336 = *v329++;
            v337 = v336;
            v338 = *v330++;
            v339 = v338;
            v340 = *v331++;
            v341 = v340;
            v342 = *v332++;
            v343 = v342;
            v344 = vabsq_f32(v341);
            v345 = vabsq_f32(v342);
            v346 = vdivq_f32(vminq_f32(v344, v345), vmaxq_f32(v344, v345));
            v347 = vmulq_f32(v346, v346);
            v348 = vaddq_f32(v346, vmulq_f32(vmulq_f32(v346, v347), vaddq_f32(vmulq_f32(v347, vaddq_f32(vmulq_f32(v347, v310), v311)), v312)));
            v349 = *v335++;
            v350 = v349;
            v351 = vbslq_s8(vcagtq_f32(v343, v341), vsubq_f32(v313, v348), vaddq_f32(v348, v309));
            v352 = *v334++;
            v353 = vbslq_s8(vcltzq_f32(v341), vsubq_f32(v314, v351), v351);
            v354 = vbslq_s8(vcltzq_f32(v343), vsubq_f32(v309, v353), v353);
            v355 = vdivq_f32(v350, vsqrtq_f32(vaddq_f32(vmulq_f32(v341, v341), vmulq_f32(v343, v343))));
            v356 = vmulq_f32(v355, v355);
            v357 = vsubq_f32(v337, v354);
            v51 = vaddq_s32(vcvtq_s32_f32(vmulq_f32(vaddq_f32(v357, v314), v301)), vcgtq_f32(v303, v357));
            v49 = vmulq_f32(v355, vaddq_f32(vaddq_f32(vmulq_f32(vmulq_f32(v356, v356), v315), vmulq_f32(v356, v300)), v302));
            v50 = vmulq_f32(vcvtq_f32_s32(v51), v304);
            v358 = vmulq_f32(v352, vsubq_f32(v339, v49));
            v359 = vmulq_f32(v352, vaddq_f32(v357, v50));
            v333 = vaddq_f32(v333, vaddq_f32(vmulq_f32(v358, v358), vmulq_f32(v359, v359)));
            v328 += 4;
          }

          while (v328 < v327);
        }

        v1510 = v327;
        v360 = SHIDWORD(v1546);
        v361 = vpaddq_f32(v333, v333);
        v362 = vpaddq_f32(v361, v361).f32[0] + 0.0;
        v1515 = HIDWORD(v1546);
        if (v328 < SHIDWORD(v1546))
        {
          v1536 = *(&v1547[6] + 1);
          v1525 = v1548;
          v363 = v1550;
          v364 = v328;
          v365 = v1551;
          do
          {
            v366 = *(v1536 + 4 * v364);
            v367 = *(v1525 + 4 * v364);
            v368 = *(v363 + 4 * v364);
            v369 = *(*(&v363 + 1) + 4 * v364);
            v370 = *(v365 + 4 * v364);
            v371 = atan2f(v369, v368);
            v372 = atanf(v370 / sqrtf((v369 * v369) + (v368 * v368)));
            v373 = *(v325 + 4 * v364);
            *v49.i64 = v373;
            v374 = ((v366 - v371) + 3.14159265 + ((((v366 - v371) + 3.14159265) * 0.159154943) - ((v366 - v371) + 3.14159265 < 0.0)) * -6.28318531 + -3.14159265) * v373;
            v362 = v362 + (((v373 * (v367 - v372)) * (v373 * (v367 - v372))) + (v374 * v374));
            ++v364;
          }

          while (v360 != v364);
        }

        v55 = v1515;
        v70 = v362 / v1515;
        v71 = v1442;
        if (v70 < v251)
        {
          goto LABEL_35;
        }

        v1526 = v360;
        v375.i64[0] = 0x3F0000003F000000;
        v375.i64[1] = 0x3F0000003F000000;
        v1575 = vmulq_f32(v1575, v375);
        v1537 = vmul_f32(v1576, 0x3F0000003F000000);
        v1576 = v1537;
        *(&v1547[1] + 4) = *(&v1547[4] + 4);
        DWORD1(v1547[2]) = DWORD1(v1547[5]);
        *(v1547 + 4) = *(&v1547[3] + 4);
        *v375.f32 = vadd_f32(*v1575.f32, (*(&v1547[5] + 4) >> 32));
        v1504 = *v375.f32;
        *(&v1547[2] + 1) = v375.i64[0];
        v375.f32[0] = v1575.f32[2] + *&v1547[6];
        v1500 = *v375.f32;
        *&v1547[3] = v1575.f32[2] + *&v1547[6];
        v376 = __sincosf_stret(v1575.f32[3]);
        v377 = __sincosf_stret(v1537.f32[0]);
        v378 = v377.__cosval;
        v379 = __sincosf_stret(v1537.f32[1]);
        v380 = ((v376.__cosval * v377.__sinval) * v379.__sinval) - (v376.__sinval * v379.__cosval);
        v381 = (v376.__sinval * v379.__sinval) + ((v376.__cosval * v377.__sinval) * v379.__cosval);
        v382 = (v376.__cosval * v379.__cosval) + ((v376.__sinval * v377.__sinval) * v379.__sinval);
        v383 = ((v376.__sinval * v377.__sinval) * v379.__cosval) - (v376.__cosval * v379.__sinval);
        v49.i32[0] = DWORD2(v1547[0]);
        v384 = *(v1547 + 1);
        v51.i32[0] = v1547[1];
        v385 = *(&v1547[1] + 3);
        v386 = *&v1547[2];
        v387 = (((*(v1547 + 1) * (v376.__cosval * v378)) + 0.0) + (*(v1547 + 2) * (v376.__sinval * v378))) - (*(v1547 + 3) * v377.__sinval);
        v388 = (((*(v1547 + 1) * v380) + 0.0) + (*(v1547 + 2) * v382)) + (*(v1547 + 3) * (v377.__cosval * v379.__sinval));
        *(v1547 + 1) = v387;
        *(v1547 + 2) = v388;
        v389 = (((v384 * v381) + 0.0) + (v49.f32[0] * v383)) + (*(v1547 + 3) * (v377.__cosval * v379.__cosval));
        v49.f32[0] = (((*&v1547[1] * (v376.__cosval * v378)) + 0.0) + (*(&v1547[1] + 1) * (v376.__sinval * v378))) - (*(&v1547[1] + 2) * v377.__sinval);
        *(v1547 + 3) = v389;
        *&v1547[1] = v49.f32[0];
        *v50.i32 = (((*v51.i32 * v380) + 0.0) + (*(&v1547[1] + 1) * v382)) + (*(&v1547[1] + 2) * (v377.__cosval * v379.__sinval));
        *v51.i32 = (((*v51.i32 * v381) + 0.0) + (*(&v1547[1] + 1) * v383)) + (*(&v1547[1] + 2) * (v377.__cosval * v379.__cosval));
        *(&v1547[1] + 4) = __PAIR64__(v51.u32[0], v50.u32[0]);
        v390 = (((*(&v1547[1] + 3) * (v376.__cosval * v378)) + 0.0) + (*&v1547[2] * (v376.__sinval * v378))) - (*(&v1547[2] + 1) * v377.__sinval);
        v391 = (((*(&v1547[1] + 3) * v380) + 0.0) + (*&v1547[2] * v382)) + (*(&v1547[2] + 1) * (v377.__cosval * v379.__sinval));
        *(&v1547[1] + 3) = v390;
        *&v1547[2] = v391;
        v392 = (((v385 * v381) + 0.0) + (v386 * v383)) + (*(&v1547[2] + 1) * (v377.__cosval * v379.__cosval));
        *(&v1547[2] + 1) = v392;
        if (v1510 < 1)
        {
          LODWORD(v408) = 0;
          v398 = 0uLL;
          v400 = v1452;
          v399 = v1453;
          v402 = v1450;
          v401 = v1451;
          v403 = v1449;
          v404 = v360;
          v409 = &unk_271103000;
          v411 = v1447;
          v410 = v1448;
          v413 = v1445;
          v412 = v1446;
          v415 = v1443;
          v414 = v1444;
          if (v1515 <= 0)
          {
            goto LABEL_328;
          }
        }

        else
        {
          v393 = 0;
          v394 = 0;
          v395 = vdupq_lane_s32(v1504, 0);
          v396 = vdupq_lane_s32(v1504, 1);
          v397 = vdupq_lane_s32(v1500, 0);
          v398 = 0uLL;
          v400 = v1452;
          v399 = v1453;
          v402 = v1450;
          v401 = v1451;
          v403 = v1449;
          v404 = v360;
          do
          {
            v405 = vsubq_f32(*(*(&v1548 + 1) + v393), v395);
            v406 = vsubq_f32(*(v1549 + v393), v396);
            v407 = vsubq_f32(*(*(&v1549 + 1) + v393), v397);
            *(v1550 + v393) = vaddq_f32(vaddq_f32(vmulq_n_f32(v405, v387), vmulq_n_f32(v406, v49.f32[0])), vmulq_n_f32(v407, v390));
            *(*(&v1550 + 1) + v393) = vaddq_f32(vaddq_f32(vmulq_n_f32(v405, v388), vmulq_n_f32(v406, *v50.i32)), vmulq_n_f32(v407, v391));
            *(v1551 + v393) = vaddq_f32(vaddq_f32(vmulq_n_f32(v405, v389), vmulq_n_f32(v406, *v51.i32)), vmulq_n_f32(v407, v392));
            v394 += 4;
            v393 += 16;
          }

          while (v394 < v1510);
          LODWORD(v408) = v394;
          v409 = &unk_271103000;
          v411 = v1447;
          v410 = v1448;
          v413 = v1445;
          v412 = v1446;
          v415 = v1443;
          v414 = v1444;
          if (v394 >= v1515)
          {
            goto LABEL_328;
          }
        }

        v534 = *(&v1548 + 1);
        v535 = v1549;
        v536 = v1550;
        v537 = v1551;
        v408 = v408;
        v538 = v404 - v408;
        if (v538 >= 8)
        {
          v593 = 4 * v408;
          v594 = v1550 + v593;
          v595 = 4 * v404;
          v596 = v1550 + 4 * v404;
          v597 = *(&v1550 + 1) + v593;
          v598 = *(&v1550 + 1) + 4 * v404;
          v599 = v1551 + v593;
          v600 = v1551 + 4 * v404;
          v601 = *(&v1548 + 1) + v593;
          v602 = *(&v1548 + 1) + 4 * v404;
          v603 = v1549 + v593;
          v604 = v1549 + 4 * v404;
          v605 = *(&v1549 + 1) + v593;
          v606 = *(&v1549 + 1) + v595;
          v608 = v1550 + v593 < v600 && v599 < v596;
          v1541 = v608;
          v610 = v594 < v602 && v601 < v596;
          v1519 = v610;
          v612 = v594 < v604 && v603 < v596;
          v1511 = v612;
          v614 = v594 < v606 && v605 < v596;
          v616 = v594 < &v1547[3] + 4 && v1547 + 4 < v596;
          v618 = v597 < v600 && v599 < v598;
          v620 = v597 < v602 && v601 < v598;
          v622 = v597 < v604 && v603 < v598;
          v624 = v597 < v606 && v605 < v598;
          v626 = v597 < &v1547[3] + 4 && v1547 + 4 < v598;
          v628 = v599 < v602 && v601 < v600;
          v630 = v599 < v604 && v603 < v600;
          v632 = v599 < v606 && v605 < v600;
          v634 = v599 < &v1547[3] + 4 && v1547 + 4 < v600;
          v409 = &unk_271103000;
          if (v597 >= v596 || v594 >= v598)
          {
            if (v1541)
            {
              v404 = v1526;
            }

            else if (v1519)
            {
              v404 = v1526;
            }

            else if (v1511)
            {
              v404 = v1526;
            }

            else if (v614)
            {
              v404 = v1526;
            }

            else if (v616)
            {
              v404 = v1526;
            }

            else if (v618)
            {
              v404 = v1526;
            }

            else if (v620)
            {
              v404 = v1526;
            }

            else if (v622)
            {
              v404 = v1526;
            }

            else if (v624)
            {
              v404 = v1526;
            }

            else if (v626)
            {
              v404 = v1526;
            }

            else
            {
              v404 = v1526;
              if (!v628 && !v630 && !v632 && !v634)
              {
                v408 = (v538 & 0xFFFFFFFFFFFFFFFCLL) + v408;
                v636 = (*(&v1548 + 1) + v593);
                v637 = (v1549 + v593);
                v638 = (*(&v1549 + 1) + v593);
                v639 = (v1550 + v593);
                v640 = (*(&v1550 + 1) + v593);
                v641 = (v1551 + v593);
                v642 = v538 & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v643 = *v636++;
                  v644 = v643;
                  v645 = *v637++;
                  v646 = v645;
                  v647 = *v638++;
                  v648 = vsubq_f32(v644, vdupq_lane_s32(*(&v1547[2] + 8), 0));
                  v649 = vsubq_f32(v646, vdupq_lane_s32(*(&v1547[2] + 12), 0));
                  v650 = vsubq_f32(v647, vdupq_lane_s32(*&v1547[3], 0));
                  v50 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v649, *&v1547[1]), v648, *(v1547 + 1)), v650, *(&v1547[1] + 3));
                  v51 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v649, *(&v1547[1] + 1)), v648, *(v1547 + 2)), v650, *&v1547[2]);
                  v49 = *(v1547 + 12);
                  v651 = vmlaq_n_f32(vmulq_n_f32(v649, *(&v1547[1] + 2)), v648, *(v1547 + 3));
                  v648.i32[0] = DWORD1(v1547[2]);
                  *v639++ = v50;
                  *v640++ = v51;
                  *v641++ = vmlaq_n_f32(v651, v650, v648.f32[0]);
                  v642 -= 4;
                }

                while (v642);
                if (v538 == (v538 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_328;
                }
              }
            }
          }

          else
          {
            v404 = v1526;
          }
        }

        do
        {
          v50.i32[0] = DWORD1(v1547[2]);
          v539 = *(v534 + 4 * v408) - *(&v1547[2] + 2);
          v540 = *(v535 + 4 * v408) - *(&v1547[2] + 3);
          v541 = *(*(&v535 + 1) + 4 * v408) - *&v1547[3];
          v49.f32[0] = ((*&v1547[1] * v540) + (*(v1547 + 1) * v539)) + (*(&v1547[1] + 3) * v541);
          *v51.i32 = ((v540 * *(&v1547[1] + 1)) + (*(v1547 + 2) * v539)) + (*&v1547[2] * v541);
          v542 = ((v540 * *(&v1547[1] + 2)) + (*(v1547 + 3) * v539)) + (*(&v1547[2] + 1) * v541);
          *(v536 + 4 * v408) = v49.i32[0];
          *(*(&v536 + 1) + 4 * v408) = v51.i32[0];
          *(v537 + 4 * v408++) = v542;
        }

        while (v404 != v408);
LABEL_328:
        v543 = *(&v1551 + 1);
        if (SHIDWORD(v1546) <= 0)
        {
          v544 = -(-HIDWORD(v1546) & 3);
        }

        else
        {
          v544 = BYTE12(v1546) & 3;
        }

        v545 = (HIDWORD(v1546) - v544);
        if (v545 < 1)
        {
          LODWORD(v546) = 0;
          v551 = 0uLL;
        }

        else
        {
          v546 = 0;
          v547 = *(&v1547[6] + 1);
          v548 = v1548;
          v550 = *(&v1550 + 1);
          v549 = v1550;
          v551 = 0uLL;
          v552 = *(&v1551 + 1);
          v553 = v1551;
          do
          {
            v554 = *v547++;
            v555 = v554;
            v556 = *v548++;
            v557 = v556;
            v558 = *v549++;
            v559 = v558;
            v560 = *v550++;
            v561 = v560;
            v562 = vabsq_f32(v559);
            v563 = vabsq_f32(v560);
            v564 = vdivq_f32(vminq_f32(v562, v563), vmaxq_f32(v562, v563));
            v565 = vmulq_f32(v564, v564);
            v566 = vaddq_f32(v564, vmulq_f32(vmulq_f32(v564, v565), vaddq_f32(vmulq_f32(v565, vaddq_f32(vmulq_f32(v565, v410), v411)), v412)));
            v567 = *v553++;
            v568 = v567;
            v569 = vbslq_s8(vcagtq_f32(v561, v559), vsubq_f32(v413, v566), vaddq_f32(v566, v398));
            v570 = *v552++;
            v571 = vbslq_s8(vcltzq_f32(v559), vsubq_f32(v414, v569), v569);
            v572 = vbslq_s8(vcltzq_f32(v561), vsubq_f32(v398, v571), v571);
            v573 = vdivq_f32(v568, vsqrtq_f32(vaddq_f32(vmulq_f32(v559, v559), vmulq_f32(v561, v561))));
            v574 = vmulq_f32(v573, v573);
            v575 = vsubq_f32(v555, v572);
            v51 = vaddq_s32(vcvtq_s32_f32(vmulq_f32(vaddq_f32(v575, v414), v400)), vcgtq_f32(v402, v575));
            v49 = vmulq_f32(v573, vaddq_f32(vaddq_f32(vmulq_f32(vmulq_f32(v574, v574), v415), vmulq_f32(v574, v399)), v401));
            v50 = vmulq_f32(vcvtq_f32_s32(v51), v403);
            v576 = vmulq_f32(v570, vsubq_f32(v557, v49));
            v577 = vmulq_f32(v570, vaddq_f32(v575, v50));
            v551 = vaddq_f32(v551, vaddq_f32(vmulq_f32(v576, v576), vmulq_f32(v577, v577)));
            v546 += 4;
          }

          while (v546 < v545);
        }

        v578 = vpaddq_f32(v551, v551);
        v579 = vpaddq_f32(v578, v578).f32[0] + 0.0;
        v1518 = HIDWORD(v1546);
        if (v546 < SHIDWORD(v1546))
        {
          v1540 = SHIDWORD(v1546);
          v1529 = *(&v1547[6] + 1);
          v580 = v1548;
          v581 = v1550;
          v582 = v546;
          v583 = v1551;
          do
          {
            v584 = *(v1529 + 4 * v582);
            v585 = *(v580 + 4 * v582);
            v586 = *(v581 + 4 * v582);
            v587 = *(*(&v581 + 1) + 4 * v582);
            v588 = *(v583 + 4 * v582);
            v589 = atan2f(v587, v586);
            v590 = atanf(v588 / sqrtf((v587 * v587) + (v586 * v586)));
            v591 = (v584 - v589) + v409[166];
            v592 = *(v543 + 4 * v582);
            *v49.i64 = v592;
            *&v591 = (v591 + ((v591 * 0.159154943) - (v591 < 0.0)) * -6.28318531 + -3.14159265) * v592;
            v579 = v579 + (((v592 * (v585 - v590)) * (v592 * (v585 - v590))) + (*&v591 * *&v591));
            ++v582;
          }

          while (v1540 != v582);
        }

        v55 = v1518;
        v70 = v579 / v1518;
        v71 = v1442;
        if (v70 >= v251)
        {
          break;
        }

LABEL_35:
        v69 = v71 + 1;
        v67 = 0uLL;
        if (v69 == 4)
        {
          goto LABEL_458;
        }
      }

      *(v1547 + 4) = *(&v1547[3] + 4);
      *(&v1547[1] + 4) = *(&v1547[4] + 4);
      *(&v1547[2] + 4) = *(&v1547[5] + 4);
      v70 = v1441 / v1454;
      v67 = 0uLL;
LABEL_458:
      v652 = sqrtf(v70);
      v653 = v652 > v1438 && v1440 + 2 < v1439;
      if (v653)
      {
        v654 = v652;
      }

      else
      {
        v654 = v1438;
      }

      v655 = SDWORD2(v1546);
      if (SDWORD2(v1546) <= 0)
      {
        v656 = -(-DWORD2(v1546) & 3);
      }

      else
      {
        v656 = BYTE8(v1546) & 3;
      }

      v657 = (DWORD2(v1546) - v656);
      if (v657 < 1)
      {
        LODWORD(v676) = 0;
        v669 = v1452;
        v668 = v1453;
        v671 = v1450;
        v670 = v1451;
        v672 = v1449;
        v678 = v1447;
        v677 = v1448;
        v680 = v1445;
        v679 = v1446;
        v682 = v1443;
        v681 = v1444;
        if (*(&v1546 + 4) > 0)
        {
          goto LABEL_473;
        }
      }

      else
      {
        v658 = 0;
        v659 = 0;
        v660 = *(v1547 + 4);
        v661 = *(v1547 + 3);
        v49 = v1547[1];
        v662 = *&v1547[2];
        v50 = *(&v1547[1] + 4);
        v51 = *(&v1547[1] + 8);
        v663 = *(&v1547[1] + 3);
        v664 = *(&v1547[2] + 1);
        v665 = vdupq_lane_s32(*(&v1547[2] + 8), 0);
        v666 = vdupq_lane_s32(*(&v1547[2] + 12), 0);
        v667 = vdupq_lane_s32(*&v1547[3], 0);
        v669 = v1452;
        v668 = v1453;
        v671 = v1450;
        v670 = v1451;
        v672 = v1449;
        do
        {
          v673 = vsubq_f32(*(v1544 + v658), v665);
          v674 = vsubq_f32(*(*(&v1544 + 1) + v658), v666);
          v675 = vsubq_f32(*(v1545[0] + v658), v667);
          *(v1550 + v658) = vaddq_f32(vaddq_f32(vmulq_n_f32(v673, *&v660), vmulq_n_f32(v674, v49.f32[0])), vmulq_n_f32(v675, v663));
          *(*(&v1550 + 1) + v658) = vaddq_f32(vaddq_f32(vmulq_n_f32(v673, *(&v660 + 1)), vmulq_n_f32(v674, *v50.i32)), vmulq_n_f32(v675, v662));
          *(v1551 + v658) = vaddq_f32(vaddq_f32(vmulq_n_f32(v673, v661), vmulq_n_f32(v674, *v51.i32)), vmulq_n_f32(v675, v664));
          v659 += 4;
          v658 += 16;
        }

        while (v659 < v657);
        LODWORD(v676) = v659;
        v678 = v1447;
        v677 = v1448;
        v680 = v1445;
        v679 = v1446;
        v682 = v1443;
        v681 = v1444;
        if (v659 >= v655)
        {
          goto LABEL_475;
        }

LABEL_473:
        v683 = v1544;
        v684 = v1545[0];
        v685 = v1550;
        v686 = v1551;
        v676 = v676;
        if ((v655 - v676) < 8)
        {
          goto LABEL_895;
        }

        v1507 = v655 - v676;
        v740 = 4 * v676;
        v741 = v1550 + v740;
        v742 = v1550 + 4 * v655;
        v743 = *(&v1550 + 1) + v740;
        v744 = *(&v1550 + 1) + 4 * v655;
        v745 = v1551 + v740;
        v746 = v1551 + 4 * v655;
        v747 = v1544 + v740;
        v748 = v1544 + 4 * v655;
        v749 = *(&v1544 + 1) + v740;
        v750 = *(&v1544 + 1) + 4 * v655;
        v751 = v1545[0] + v740;
        v752 = v1545[0] + 4 * v655;
        v753 = v1550 + v740 >= v746 || v745 >= v742;
        v754 = !v753;
        v1542 = v754;
        v755 = v741 >= v748 || v747 >= v742;
        v756 = !v755;
        v1530 = v756;
        v757 = v741 >= v750 || v749 >= v742;
        v758 = !v757;
        v1520 = v758;
        v759 = v741 >= v752 || v751 >= v742;
        v760 = !v759;
        v761 = v741 >= &v1547[3] + 4 || v1547 + 4 >= v742;
        v762 = !v761;
        v763 = v743 >= v746 || v745 >= v744;
        v764 = !v763;
        v765 = v743 >= v748 || v747 >= v744;
        v766 = !v765;
        v767 = v743 >= v750 || v749 >= v744;
        v768 = !v767;
        v769 = v743 >= v752 || v751 >= v744;
        v770 = !v769;
        v771 = v743 >= &v1547[3] + 4 || v1547 + 4 >= v744;
        v772 = !v771;
        v773 = v745 >= v748 || v747 >= v746;
        v774 = !v773;
        v775 = v745 >= v750 || v749 >= v746;
        v776 = !v775;
        v777 = v745 >= v752 || v751 >= v746;
        v778 = !v777;
        v779 = v745 >= &v1547[3] + 4 || v1547 + 4 >= v746;
        v780 = !v779;
        if (v743 < v742 && v741 < v744)
        {
          goto LABEL_895;
        }

        if (v1542)
        {
          goto LABEL_895;
        }

        if (v1530)
        {
          goto LABEL_895;
        }

        if (v1520)
        {
          goto LABEL_895;
        }

        if (v760)
        {
          goto LABEL_895;
        }

        if (v762)
        {
          goto LABEL_895;
        }

        if (v764)
        {
          goto LABEL_895;
        }

        if (v766)
        {
          goto LABEL_895;
        }

        if (v768)
        {
          goto LABEL_895;
        }

        if (v770)
        {
          goto LABEL_895;
        }

        if (v772)
        {
          goto LABEL_895;
        }

        if (v774)
        {
          goto LABEL_895;
        }

        if (v776)
        {
          goto LABEL_895;
        }

        if (v778)
        {
          goto LABEL_895;
        }

        if (v780)
        {
          goto LABEL_895;
        }

        v676 = (v1507 & 0xFFFFFFFFFFFFFFFCLL) + v676;
        v782 = (v1544 + v740);
        v783 = (*(&v1544 + 1) + v740);
        v784 = (v1545[0] + v740);
        v785 = (v1550 + v740);
        v786 = (*(&v1550 + 1) + v740);
        v787 = (v1551 + v740);
        v788 = v1507 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v789 = *v782++;
          v790 = v789;
          v791 = *v783++;
          v792 = v791;
          v793 = *v784++;
          v794 = vsubq_f32(v790, vdupq_lane_s32(*(&v1547[2] + 8), 0));
          v795 = vsubq_f32(v792, vdupq_lane_s32(*(&v1547[2] + 12), 0));
          v796 = vsubq_f32(v793, vdupq_lane_s32(*&v1547[3], 0));
          v50 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v795, *&v1547[1]), v794, *(v1547 + 1)), v796, *(&v1547[1] + 3));
          v51 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v795, *(&v1547[1] + 1)), v794, *(v1547 + 2)), v796, *&v1547[2]);
          v49 = *(v1547 + 12);
          v797 = vmlaq_n_f32(vmulq_n_f32(v795, *(&v1547[1] + 2)), v794, *(v1547 + 3));
          v794.i32[0] = DWORD1(v1547[2]);
          *v785++ = v50;
          *v786++ = v51;
          *v787++ = vmlaq_n_f32(v797, v796, v794.f32[0]);
          v788 -= 4;
        }

        while (v788);
        if (v1507 != (v1507 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_895:
          do
          {
            v50.i32[0] = DWORD1(v1547[2]);
            v687 = *(v683 + 4 * v676) - *(&v1547[2] + 2);
            v688 = *(*(&v683 + 1) + 4 * v676) - *(&v1547[2] + 3);
            v689 = v684[v676] - *&v1547[3];
            v49.f32[0] = ((*&v1547[1] * v688) + (*(v1547 + 1) * v687)) + (*(&v1547[1] + 3) * v689);
            *v51.i32 = ((v688 * *(&v1547[1] + 1)) + (*(v1547 + 2) * v687)) + (*&v1547[2] * v689);
            v690 = ((v688 * *(&v1547[1] + 2)) + (*(v1547 + 3) * v687)) + (*(&v1547[2] + 1) * v689);
            *(v685 + 4 * v676) = v49.i32[0];
            *(*(&v685 + 1) + 4 * v676) = v51.i32[0];
            *(v686 + 4 * v676++) = v690;
          }

          while (v655 != v676);
        }
      }

LABEL_475:
      v691 = v1546;
      v692 = SDWORD2(v1546);
      if (SDWORD2(v1546) <= 0)
      {
        v693 = -(-DWORD2(v1546) & 3);
      }

      else
      {
        v693 = BYTE8(v1546) & 3;
      }

      v694 = (DWORD2(v1546) - v693);
      if (v694 < 1)
      {
        LODWORD(j) = 0;
        v712 = &unk_271103000;
        v713 = &unk_271103000;
        v714 = &unk_271103000;
        v715 = &unk_271103000;
        if (*(&v1546 + 4) <= 0)
        {
          goto LABEL_486;
        }

        goto LABEL_484;
      }

      v695 = 0;
      for (j = 0; j < v694; j += 4)
      {
        v697 = *(v1550 + v695);
        v698 = *(*(&v1550 + 1) + v695);
        v51 = *(v691 + v695);
        v699 = vabsq_f32(v697);
        v700 = vabsq_f32(v698);
        v701 = vdivq_f32(vminq_f32(v699, v700), vmaxq_f32(v699, v700));
        v702 = vmulq_f32(v701, v701);
        v703 = vaddq_f32(v701, vmulq_f32(vmulq_f32(v701, v702), vaddq_f32(vmulq_f32(v702, vaddq_f32(vmulq_f32(v702, v677), v678)), v679)));
        v704 = vbslq_s8(vcagtq_f32(v698, v697), vsubq_f32(v680, v703), vaddq_f32(v703, v67));
        v705 = vbslq_s8(vcltzq_f32(v697), vsubq_f32(v681, v704), v704);
        v706 = vbslq_s8(vcltzq_f32(v698), vsubq_f32(v67, v705), v705);
        v707 = vdivq_f32(*(v1551 + v695), vsqrtq_f32(vaddq_f32(vmulq_f32(v697, v697), vmulq_f32(v698, v698))));
        v708 = vmulq_f32(v707, v707);
        v709 = vmulq_f32(v707, vaddq_f32(vaddq_f32(vmulq_f32(vmulq_f32(v708, v708), v682), vmulq_f32(v708, v668)), v670));
        v710 = vsubq_f32(*(v1543 + v695), v706);
        v50 = vcgtq_f32(v671, v710);
        v49 = vmulq_f32(vcvtq_f32_s32(vaddq_s32(vcvtq_s32_f32(vmulq_f32(vaddq_f32(v710, v681), v669)), v50)), v672);
        v711 = vmulq_f32(v51, vsubq_f32(*(*(&v1543 + 1) + v695), v709));
        *(*(&v1552 + 1) + v695) = vmulq_f32(v51, vaddq_f32(v710, v49));
        *&v1553[v695 / 4] = v711;
        v695 += 16;
      }

      v712 = &unk_271103000;
      v713 = &unk_271103000;
      v714 = &unk_271103000;
      v715 = &unk_271103000;
      if (j < v692)
      {
LABEL_484:
        v716 = v1543;
        v717 = v1550;
        v718 = j;
        v719 = v1551;
        v720 = *(&v1552 + 1);
        v721 = v1553;
        do
        {
          v722 = *(v716 + 4 * v718);
          v723 = *(*(&v716 + 1) + 4 * v718);
          v724 = *(v717 + 4 * v718);
          v725 = *(*(&v717 + 1) + 4 * v718);
          v726 = *(v719 + 4 * v718);
          v727 = v691;
          v728 = v692;
          v729 = v713;
          v730 = atan2f(v725, v724);
          v731 = atanf(v726 / sqrtf((v725 * v725) + (v724 * v724)));
          v713 = v729;
          v692 = v728;
          v691 = v727;
          v732 = (v722 - v730) + v712[166];
          v49.i64[0] = v714[316];
          v733 = v732 + ((v732 * v729[315]) - (v732 < 0.0)) * *v49.i64;
          v49.i32[0] = *(v727 + 4 * v718);
          *&v733 = (v733 + v715[317]) * v49.f32[0];
          *(v720 + 4 * v718) = LODWORD(v733);
          v721[v718++] = v49.f32[0] * (v723 - v731);
        }

        while (v728 != v718);
      }

LABEL_486:
      LODWORD(v52) = DWORD2(v1546);
      if (SDWORD2(v1546) < 1)
      {
        v48 = 0.0;
        v23 = &unk_271103000;
        if (v654 != v1438)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v734 = 0;
        v735 = v654 * v654;
        v48 = 0.0;
        v736 = 1;
        v23 = &unk_271103000;
        do
        {
          v49.f32[0] = v1553[v734] * v1553[v734];
          v738 = v49.f32[0] + (*(*(&v1552 + 1) + 4 * v734) * *(*(&v1552 + 1) + 4 * v734));
          v739 = v738 > v735;
          if (*(v1545[1] + v734) != v739)
          {
            v736 = 0;
          }

          v653 = v738 <= v735;
          v737 = 0.0;
          if (v653)
          {
            if (v1546)
            {
              v737 = *(v1546 + 4 * v734);
            }

            else
            {
              v737 = 1.0;
            }
          }

          *&v48 = *&v48 + v737;
          *(v1545[1] + v734++) = v739;
          LODWORD(v52) = DWORD2(v1546);
        }

        while (v734 < SDWORD2(v1546));
        if (v654 != v1438 || v736 == 0)
        {
LABEL_23:
          v53 = ++v1440;
          _ZF = *&v48 < 0.0 || v53 == v1439;
          if (!_ZF)
          {
            continue;
          }
        }
      }

      break;
    }

LABEL_605:
    v798 = *(&v1547[1] + 4);
    v1557 = *(v1547 + 4);
    v1558 = *(&v1547[1] + 4);
    v1559 = *(&v1547[2] + 4);
    v799 = *(&v1547[2] + 4);
    v1435->i32[1] = LODWORD(v48);
    apply_pose_rotation(&v1557, *&v1437[18] + 232, &v1435[5], v799, v798, v48, v49, v50, v51);
    v800 = *(*&v1437[18] + 236) * v1435[8].f32[1] + v1435[8].f32[0] * *(*&v1437[18] + 232) + v1435[9].f32[0] * *(*&v1437[18] + 240);
    v801 = fabs(v800);
    v802 = cosf(*(v1436 + 140));
    if (v1434)
    {
      printf("Info : ");
      v803 = (v1435->f32[1] * 0.03125);
      v804 = v800;
      v805 = acosf(v804);
      printf(" score: %6.3f (gravity test: %d (%f degrees))", v803, v801 > v802, v805 * 180.0 / v23[166]);
      putchar(10);
    }

    v4 = v1432;
    v8 = v1433;
    if (v801 <= v802)
    {
      v1435->i32[1] = 0;
    }

    if (v1434)
    {
      LODWORD(v1566[0]) = 0;
      LODWORD(v1554) = 0;
      vl_gt_get_pose_err(v1437 + 12, v1435 + 5, v1566, &v1554);
      printf("Info : ");
      printf("  diff from gt : (%s%.2f%s, %s%.2f%s)", &str_8, *&v1554 * 180.0 / v23[166], &str_8, &str_8, *v1566, &str_8);
      putchar(10);
    }

    v21 = v1430 + 1;
    v24 = 0uLL;
    if (v1430 + 1 != v1428)
    {
      continue;
    }

    break;
  }

LABEL_818:
  v1270 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
  v1271 = *v8;
  if (*v8)
  {
    v1272 = 0;
    v1273 = v8[1];
    v1274 = 1;
    v1275 = 32;
    v1276 = 0uLL;
    while (1)
    {
      v1277 = v1272;
      while (1)
      {
        if ((v1274 & 1) == 0)
        {
          --v1277;
          v1278 = &v1270[16 * v1277];
          v1271 = *(v1278 + 1);
          v1273 = v8[1] + 160 * *v1278;
        }

        if (v1271 > 15)
        {
          break;
        }

        if (v1271 > 1)
        {
          v1279 = v1273 + 160;
          v1280 = 2;
          for (k = 1; k != v1271; ++k)
          {
            v1282 = v1279;
            v1283 = v1280;
            do
            {
              v1284 = v1273 + 160 * (v1283 - 2);
              if (*(v1284 + 4) >= *(v1282 + 4))
              {
                break;
              }

              v1573 = v1276;
              v1572 = v1276;
              v1571 = v1276;
              v1570 = v1276;
              *&v1569[4] = v1276;
              *&v1569[2] = v1276;
              *v1569 = v1276;
              *v1568 = v1276;
              v1567 = v1276;
              *v1566 = v1276;
              v1285 = *v1282;
              v1567 = *(v1282 + 16);
              *v1566 = v1285;
              v1286 = *(v1282 + 32);
              v1287 = *(v1282 + 48);
              v1288 = *(v1282 + 64);
              *&v1569[4] = *(v1282 + 80);
              *&v1569[2] = v1288;
              *v1569 = v1287;
              *v1568 = v1286;
              v1289 = *(v1282 + 96);
              v1290 = *(v1282 + 112);
              v1291 = *(v1282 + 128);
              v1573 = *(v1282 + 144);
              v1572 = v1291;
              v1571 = v1290;
              v1570 = v1289;
              v1292 = *(v1284 + 16);
              *v1282 = *v1284;
              *(v1282 + 16) = v1292;
              v1293 = *(v1284 + 32);
              v1294 = *(v1284 + 48);
              v1295 = *(v1284 + 80);
              *(v1282 + 64) = *(v1284 + 64);
              *(v1282 + 80) = v1295;
              *(v1282 + 32) = v1293;
              *(v1282 + 48) = v1294;
              v1296 = *(v1284 + 96);
              v1297 = *(v1284 + 112);
              v1298 = *(v1284 + 144);
              *(v1282 + 128) = *(v1284 + 128);
              *(v1282 + 144) = v1298;
              *(v1282 + 96) = v1296;
              *(v1282 + 112) = v1297;
              v1299 = v1567;
              *v1284 = *v1566;
              *(v1284 + 16) = v1299;
              v1300 = *v1568;
              v1301 = *v1569;
              v1302 = *&v1569[4];
              *(v1284 + 64) = *&v1569[2];
              *(v1284 + 80) = v1302;
              *(v1284 + 32) = v1300;
              *(v1284 + 48) = v1301;
              v1303 = v1570;
              v1304 = v1571;
              v1305 = v1573;
              *(v1284 + 128) = v1572;
              *(v1284 + 144) = v1305;
              *(v1284 + 96) = v1303;
              *(v1284 + 112) = v1304;
              --v1283;
              v1282 -= 160;
            }

            while (v1283 > 1);
            ++v1280;
            v1279 += 160;
          }
        }

        v1274 = 0;
        v1271 = 0;
        if (v1277 < 1)
        {
          goto LABEL_885;
        }
      }

      if (v1271 > 0x27)
      {
        break;
      }

      v1306 = v1271 >> 1;
      v1307 = *(v1273 + 160 * (v1271 >> 1) + 4);
      v1308 = *(v1273 + 4);
      v1309 = *(v1273 + 160 * v1271 - 156);
      if (v1307 >= v1308)
      {
        if (v1309 >= v1308)
        {
          if (v1309 < v1307)
          {
            v1306 = v1271 - 1;
          }
        }

        else
        {
          v1306 = 0;
        }
      }

      else if (v1309 >= v1307)
      {
        if (v1309 >= v1308)
        {
          v1306 = 0;
        }

        else
        {
          v1306 = v1271 - 1;
        }
      }

LABEL_871:
      v1328 = 0;
      v1329 = 0;
      v1573 = v1276;
      v1572 = v1276;
      v1571 = v1276;
      v1570 = v1276;
      *&v1569[4] = v1276;
      *&v1569[2] = v1276;
      *v1569 = v1276;
      *v1568 = v1276;
      v1567 = v1276;
      *v1566 = v1276;
      v1330 = *v1273;
      v1567 = *(v1273 + 16);
      *v1566 = v1330;
      v1331 = *(v1273 + 32);
      v1332 = *(v1273 + 48);
      v1333 = *(v1273 + 64);
      *&v1569[4] = *(v1273 + 80);
      *&v1569[2] = v1333;
      *v1569 = v1332;
      *v1568 = v1331;
      v1334 = *(v1273 + 96);
      v1335 = *(v1273 + 112);
      v1336 = *(v1273 + 128);
      v1573 = *(v1273 + 144);
      v1572 = v1336;
      v1571 = v1335;
      v1570 = v1334;
      v1337 = (v1273 + 160 * v1306);
      v1338 = v1337[1];
      *v1273 = *v1337;
      *(v1273 + 16) = v1338;
      v1339 = v1337[2];
      v1340 = v1337[3];
      v1341 = v1337[5];
      *(v1273 + 64) = v1337[4];
      *(v1273 + 80) = v1341;
      *(v1273 + 32) = v1339;
      *(v1273 + 48) = v1340;
      v1342 = v1337[6];
      v1343 = v1337[7];
      v1344 = v1337[9];
      *(v1273 + 128) = v1337[8];
      *(v1273 + 144) = v1344;
      *(v1273 + 96) = v1342;
      *(v1273 + 112) = v1343;
      v1345 = v1567;
      *v1337 = *v1566;
      v1337[1] = v1345;
      v1346 = *v1568;
      v1347 = *v1569;
      v1348 = *&v1569[4];
      v1337[4] = *&v1569[2];
      v1337[5] = v1348;
      v1337[2] = v1346;
      v1337[3] = v1347;
      v1349 = v1570;
      v1350 = v1571;
      v1351 = v1573;
      v1337[8] = v1572;
      v1337[9] = v1351;
      v1337[6] = v1349;
      v1337[7] = v1350;
      v1352 = v1271 - 1;
      v1353 = v1273 + 164;
      do
      {
        v1354 = (v1353 - 4);
        if ((*(v1273 + 4) - *v1353) <= 0.0)
        {
          ++v1329;
          v1573 = v1276;
          v1572 = v1276;
          v1571 = v1276;
          v1570 = v1276;
          *&v1569[4] = v1276;
          *&v1569[2] = v1276;
          *v1569 = v1276;
          *v1568 = v1276;
          v1567 = v1276;
          *v1566 = v1276;
          v1355 = *v1354;
          v1567 = *(v1353 + 12);
          *v1566 = v1355;
          v1356 = *(v1353 + 28);
          v1357 = *(v1353 + 44);
          v1358 = *(v1353 + 60);
          *&v1569[4] = *(v1353 + 76);
          *&v1569[2] = v1358;
          *v1569 = v1357;
          *v1568 = v1356;
          v1359 = *(v1353 + 92);
          v1360 = *(v1353 + 108);
          v1361 = *(v1353 + 124);
          v1573 = *(v1353 + 140);
          v1572 = v1361;
          v1571 = v1360;
          v1570 = v1359;
          v1362 = (v1273 + 160 * v1329);
          v1363 = v1362[1];
          *v1354 = *v1362;
          *(v1353 + 12) = v1363;
          v1364 = v1362[2];
          v1365 = v1362[3];
          v1366 = v1362[5];
          *(v1353 + 60) = v1362[4];
          *(v1353 + 76) = v1366;
          *(v1353 + 28) = v1364;
          *(v1353 + 44) = v1365;
          v1367 = v1362[6];
          v1368 = v1362[7];
          v1369 = v1362[9];
          *(v1353 + 124) = v1362[8];
          *(v1353 + 140) = v1369;
          *(v1353 + 92) = v1367;
          *(v1353 + 108) = v1368;
          v1370 = v1567;
          *v1362 = *v1566;
          v1362[1] = v1370;
          v1371 = *v1568;
          v1372 = *v1569;
          v1373 = *&v1569[4];
          v1362[4] = *&v1569[2];
          v1362[5] = v1373;
          v1362[2] = v1371;
          v1362[3] = v1372;
          v1374 = v1570;
          v1375 = v1571;
          v1376 = v1573;
          v1362[8] = v1572;
          v1362[9] = v1376;
          v1362[6] = v1374;
          v1362[7] = v1375;
          if ((*(v1273 + 4) - *v1353) == 0.0)
          {
            ++v1328;
            v1573 = v1276;
            v1572 = v1276;
            v1571 = v1276;
            v1570 = v1276;
            *&v1569[4] = v1276;
            *&v1569[2] = v1276;
            *v1569 = v1276;
            *v1568 = v1276;
            v1567 = v1276;
            *v1566 = v1276;
            v1377 = *v1362;
            v1567 = v1362[1];
            *v1566 = v1377;
            v1378 = v1362[2];
            v1379 = v1362[3];
            v1380 = v1362[4];
            *&v1569[4] = v1362[5];
            *&v1569[2] = v1380;
            *v1569 = v1379;
            *v1568 = v1378;
            v1381 = v1362[6];
            v1382 = v1362[7];
            v1383 = v1362[8];
            v1573 = v1362[9];
            v1572 = v1383;
            v1571 = v1382;
            v1570 = v1381;
            v1384 = (v1273 + 160 * v1328);
            v1385 = v1384[1];
            *v1362 = *v1384;
            v1362[1] = v1385;
            v1386 = v1384[2];
            v1387 = v1384[3];
            v1388 = v1384[5];
            v1362[4] = v1384[4];
            v1362[5] = v1388;
            v1362[2] = v1386;
            v1362[3] = v1387;
            v1389 = v1384[6];
            v1390 = v1384[7];
            v1391 = v1384[9];
            v1362[8] = v1384[8];
            v1362[9] = v1391;
            v1362[6] = v1389;
            v1362[7] = v1390;
            v1392 = v1567;
            *v1384 = *v1566;
            v1384[1] = v1392;
            v1393 = *v1568;
            v1394 = *v1569;
            v1395 = *&v1569[4];
            v1384[4] = *&v1569[2];
            v1384[5] = v1395;
            v1384[2] = v1393;
            v1384[3] = v1394;
            v1396 = v1570;
            v1397 = v1571;
            v1398 = v1573;
            v1384[8] = v1572;
            v1384[9] = v1398;
            v1384[6] = v1396;
            v1384[7] = v1397;
          }
        }

        v1353 += 160;
        --v1352;
      }

      while (v1352);
      v1399 = v1328 + 1;
      v1400 = 160 * v1328;
      v1401 = -160 * v1328 + 160 * v1329;
      do
      {
        v1573 = v1276;
        v1572 = v1276;
        v1571 = v1276;
        v1570 = v1276;
        *&v1569[4] = v1276;
        *&v1569[2] = v1276;
        *v1569 = v1276;
        *v1568 = v1276;
        v1567 = v1276;
        *v1566 = v1276;
        v1402 = (v1273 + v1401);
        v1403 = *(v1273 + v1401);
        v1567 = *(v1273 + v1401 + 16);
        *v1566 = v1403;
        v1404 = *(v1273 + v1401 + 32);
        v1405 = *(v1273 + v1401 + 48);
        v1406 = *(v1273 + v1401 + 64);
        *&v1569[4] = *(v1273 + v1401 + 80);
        *&v1569[2] = v1406;
        *v1569 = v1405;
        *v1568 = v1404;
        v1407 = *(v1273 + v1401 + 96);
        v1408 = *(v1273 + v1401 + 112);
        v1409 = *(v1273 + v1401 + 128);
        v1573 = *(v1273 + v1401 + 144);
        v1572 = v1409;
        v1571 = v1408;
        v1570 = v1407;
        v1410 = (v1273 + v1400);
        v1411 = *(v1273 + v1400 + 16);
        *v1402 = *(v1273 + v1400);
        v1402[1] = v1411;
        v1412 = *(v1273 + v1400 + 32);
        v1413 = *(v1273 + v1400 + 48);
        v1414 = *(v1273 + v1400 + 80);
        v1402[4] = *(v1273 + v1400 + 64);
        v1402[5] = v1414;
        v1402[2] = v1412;
        v1402[3] = v1413;
        v1415 = *(v1273 + v1400 + 96);
        v1416 = *(v1273 + v1400 + 112);
        v1417 = *(v1273 + v1400 + 144);
        v1402[8] = *(v1273 + v1400 + 128);
        v1402[9] = v1417;
        v1402[6] = v1415;
        v1402[7] = v1416;
        v1418 = v1567;
        *v1410 = *v1566;
        v1410[1] = v1418;
        v1419 = *v1568;
        v1420 = *v1569;
        v1421 = *&v1569[4];
        v1410[4] = *&v1569[2];
        v1410[5] = v1421;
        v1410[2] = v1419;
        v1410[3] = v1420;
        v1422 = v1570;
        v1423 = v1571;
        v1424 = v1573;
        v1410[8] = v1572;
        v1410[9] = v1424;
        v1410[6] = v1422;
        v1410[7] = v1423;
        --v1399;
        v1400 -= 160;
        v1401 += 160;
      }

      while (v1399 > 0);
      v1272 = v1277 + 1;
      if (v1277 + 1 >= v1275)
      {
        v1425 = 2 * v1275;
        v1270 = malloc_type_realloc(v1270, 32 * v1275, 0x100004000313F17uLL);
        v1276 = 0uLL;
        v1275 = v1425;
      }

      v1426 = &v1270[16 * v1277];
      *v1426 = v1329 - 0x3333333333333333 * ((v1273 - v1433[1]) >> 5) + 1;
      *(v1426 + 1) = v1271 + ~v1329;
      v1271 = v1329 - v1328;
      _ZF = v1329 == v1328;
      v8 = v1433;
      v1274 = !_ZF;
      if (v1277 < 0 && !v1271)
      {
        goto LABEL_885;
      }
    }

    v1310 = 0;
    v1311 = 0;
    if (v1271 <= 0x7D0)
    {
      v1312 = 8;
    }

    else
    {
      v1312 = 26;
    }

    if (v1271 <= 0x7D0)
    {
      v1313 = 3;
    }

    else
    {
      v1313 = 9;
    }

    while (2)
    {
      v1314 = (v1271 - 1 + v1310) / v1312;
      v1315 = *(v1273 + 160 * v1314 + 4);
      v1316 = *(v1273 + 160 * (v1310 / v1312) + 4);
      v1317 = (2 * v1271 - 2 + v1310) / v1312;
      v1318 = *(v1273 + 160 * v1317 + 4);
      if (v1315 >= v1316)
      {
        if (v1318 < v1316)
        {
          goto LABEL_851;
        }

        if (v1318 < v1315)
        {
          goto LABEL_853;
        }
      }

      else if (v1318 >= v1315)
      {
        if (v1318 < v1316)
        {
LABEL_853:
          v1566[v1311] = v1317;
LABEL_845:
          ++v1311;
          v1310 += 3 * v1271 - 3;
          if (v1313 != v1311)
          {
            continue;
          }

          while (2)
          {
            v1319 = v1313;
            v1313 /= 3uLL;
            v1320 = v1566;
            v1321 = &v1567;
            v1322 = v1313;
LABEL_858:
            v1323 = *(v1321 - 2);
            v1324 = *(v1321 - 1);
            v1325 = *(v1273 + 160 * v1324 + 4);
            v1326 = *(v1273 + 160 * v1323 + 4);
            v1327 = *(v1273 + 160 * *v1321 + 4);
            if (v1325 >= v1326)
            {
              if (v1327 < v1326)
              {
                goto LABEL_863;
              }

              if (v1327 < v1325)
              {
                goto LABEL_865;
              }
            }

            else if (v1327 >= v1325)
            {
              if (v1327 < v1326)
              {
LABEL_865:
                *v1320 = *v1321;
LABEL_857:
                v1321 = (v1321 + 24);
                ++v1320;
                if (!--v1322)
                {
                  if (v1319 < 9)
                  {
                    v1306 = v1566[0];
                    goto LABEL_871;
                  }

                  continue;
                }

                goto LABEL_858;
              }

LABEL_863:
              *v1320 = v1323;
              goto LABEL_857;
            }

            break;
          }

          *v1320 = v1324;
          goto LABEL_857;
        }

LABEL_851:
        v1566[v1311] = (v1310 / v1312);
        goto LABEL_845;
      }

      break;
    }

    v1566[v1311] = v1314;
    goto LABEL_845;
  }

LABEL_885:
  free(v1270);
  v1269 = *(v8[1] + 4) < (32 * *(v1436 + 152));
LABEL_890:
  free(v1429);
  hyp_refine_free(&v1543);
  return v1269;
}

void *hyp_refine_create(uint64_t a1, int a2)
{
  *(a1 + 40) = malloc_type_calloc(a2, 1uLL, 0x100004077774924uLL);
  *a1 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 168) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 248) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 8) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 176) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 256) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 16) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 184) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 208) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 24) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 192) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 216) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 32) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 200) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 224) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 48) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 232) = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  result = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(a1 + 240) = result;
  *(a1 + 64) = a2;
  return result;
}

float apply_pose_rotation(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, int64x2_t a7, int8x16_t a8, int8x16_t a9)
{
  _Q1.f64[0] = *a2;
  LODWORD(a4) = *(a2 + 8);
  v34 = 0;
  v33 = 0;
  _D2 = 0.0;
  __asm { FMLA            S7, S2, V1.S[1] }

  v16 = *&a4 + (-0.0 * *_Q1.f64);
  v17 = -(*(_Q1.f64 + 1) - (*_Q1.f64 * 0.0));
  v18 = vmuls_lane_f32(-((*_Q1.f64 * 0.0) - *(_Q1.f64 + 1)), *&_Q1.f64[0], 1) + (v16 * *&a4);
  v19 = (v17 * *_Q1.f64) - (_D7.f32[0] * *&a4);
  __asm { FMLA            S20, S7, V1.S[1] }

  v21 = sqrt((((v19 * v19) + (v18 * v18)) + (_S20 * _S20)));
  a8.i64[0] = 0;
  a9.i64[0] = 0;
  v22 = 0.0;
  if (v21 > 0.0)
  {
    v22 = v18 / v21;
    *a9.i64 = v19 / v21;
    *a9.i32 = *a9.i64;
    *a8.i64 = _S20 / v21;
    *a8.i32 = *a8.i64;
  }

  v23 = sqrt((((v16 * v16) + (_D7.f32[0] * _D7.f32[0])) + (v17 * v17)));
  v24 = 0;
  v25 = 0;
  if (v23 > 0.0)
  {
    _D7.f32[1] = *&a4 + (-0.0 * *_Q1.f64);
    v25 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(_D7), vdupq_lane_s64(*&v23, 0)));
    _D2 = v17 / v23;
    *&_D2 = _D2;
  }

  v26 = sqrt((((*(_Q1.f64 + 1) * *(_Q1.f64 + 1)) + (*_Q1.f64 * *_Q1.f64)) + (*&a4 * *&a4)));
  a7.i64[0] = 0;
  if (v26 > 0.0)
  {
    a7 = vdupq_lane_s64(*&v26, 0);
    _Q1 = vdivq_f64(vcvtq_f64_f32(*&_Q1.f64[0]), a7);
    v24 = vcvt_f32_f64(_Q1);
    a4 = *&a4 / v26;
    *a7.i32 = a4;
  }

  *v28 = v22;
  v28[1] = a9.i32[0];
  v28[2] = a8.i32[0];
  v29 = v25;
  v30 = LODWORD(_D2);
  v31 = v24;
  v32 = a7.i32[0];
  return g_coordsf_conv(v28, a1, a3, a4, _Q1.f64[0], _D2, a7, a8, a9);
}

void hyp_refine_free(uint64_t a1)
{
  free(*(a1 + 40));
  free(*a1);
  free(*(a1 + 168));
  free(*(a1 + 248));
  free(*(a1 + 8));
  free(*(a1 + 176));
  free(*(a1 + 256));
  free(*(a1 + 16));
  free(*(a1 + 184));
  free(*(a1 + 208));
  free(*(a1 + 24));
  free(*(a1 + 192));
  free(*(a1 + 216));
  free(*(a1 + 32));
  free(*(a1 + 200));
  free(*(a1 + 224));
  free(*(a1 + 48));
  free(*(a1 + 232));
  free(*(a1 + 240));
  *(a1 + 64) = 0;
}

unint64_t pmem_alloc_ex(uint64_t a1, unint64_t a2, void *(*a3)(size_t a1, uint64_t a2))
{
  v6 = malloc_type_malloc(0x40uLL, 0x10800409FEEBF35uLL);
  if (!a2)
  {
    a2 = 16;
  }

  if (!v6)
  {
    printf("header malloc failed, size: %lu\n", 64);
    v13 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "header malloc failed, size: %lu\n", 64);
    fflush(*MEMORY[0x277D85E08]);
    fflush(*v13);
    abort();
  }

  v7 = v6;
  *(v6 + 24) = 0u;
  *(v6 + 7) = 0;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = pmem_default_alloc;
  }

  *(v6 + 40) = 0uLL;
  *(v6 + 8) = 0uLL;
  *v6 = a1;
  v9 = a1 + a2 + 8;
  *(v6 + 6) = 1;
  v10 = v8(v9, v6);
  v11 = *(v7 + 1);
  if (v11 < v9)
  {
    __assert_rtn("pmem_alloc_ex", "pmem.c", 249, "header->size_allocated >= min_size && Allocator should allocate at least enough space!");
  }

  if (!v10)
  {
    v14 = pmem_type_to_str(*(v7 + 8));
    printf("Allocation (%s) failed, size: %llu\n", v14, *(v7 + 1));
    v15 = MEMORY[0x277D85DF8];
    v16 = *MEMORY[0x277D85DF8];
    v17 = pmem_type_to_str(*(v7 + 8));
    fprintf(v16, "Allocation (%s) failed, size: %llu\n", v17, *(v7 + 1));
    fflush(*MEMORY[0x277D85E08]);
    fflush(*v15);
    abort();
  }

  result = (v10 + a2 + 7) / a2 * a2;
  *(result - 8) = v7;
  atomic_fetch_add(&global_stats[1], 1uLL);
  atomic_fetch_add(&global_stats[2], 1uLL);
  atomic_fetch_add(global_stats, v11);
  atomic_fetch_add(&pmem_total_refs, 1uLL);
  atomic_fetch_add(&_pmem_total_blocks, 1uLL);
  atomic_fetch_add(&pmem_bytes_allocated, v11);
  return result;
}

void *pmem_default_alloc(size_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 <= 0x100000)
  {
    *(a2 + 8) = a1;
    *(a2 + 32) = 1;
    result = malloc_type_malloc(a1, 0xAF8914E7uLL);
    *(a2 + 56) = result;
    *(a2 + 40) = pmem_malloc_free;
  }

  else
  {
    result = mmap(0, a1, 3, 4098, -1, 0);
    if (result + 1 > 1)
    {
      *(a2 + 8) = a1;
      *(a2 + 32) = 2;
      *(a2 + 40) = pmem_mmap_free;
      *(a2 + 48) = pmem_mmap_write_protect;
      *(a2 + 56) = result;
    }

    else
    {
      v5 = __error();
      strerror_r(*v5, __strerrbuf, 0x64uLL);
      v6 = __error();
      printf("Failed to mmap block of size: %zu, error %d: %s\n", a1, *v6, __strerrbuf);
      v7 = *MEMORY[0x277D85DF8];
      v8 = __error();
      fprintf(v7, "Failed to mmap block of size: %zu, error %d: %s\n", a1, *v8, __strerrbuf);
      return 0;
    }
  }

  return result;
}

char *pmem_type_to_str(unsigned int a1)
{
  if (a1 >= 6)
  {
    __assert_rtn("pmem_type_to_str", "pmem.c", 500, "0 && Unsupported type");
  }

  return off_279E2DC88[a1];
}

void lbl_feature_extract_kpts_score_map(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, int a11, int a12, uint64_t a13)
{
  v13 = MEMORY[0x28223BE20](a1);
  v559 = v16;
  v550 = v17;
  v19 = v18;
  v20 = v15;
  v21 = v14;
  v23 = v22;
  v25 = v24;
  v549 = v26;
  v28 = v27;
  v30 = v29;
  v565 = v13;
  v575 = *MEMORY[0x277D85DE8];
  if (v14)
  {
    v31 = v14;
  }

  else
  {
    v31 = v15;
  }

  v32 = *(v31 + 3);
  v563 = *(v31 + 2);
  v567.tv_sec = 0;
  *&v567.tv_usec = 0;
  if (gettimeofday(&v567, 0) || (v567.tv_usec + 1000000 * v567.tv_sec) / 1000000.0 <= 1514764800.0 || (v567.tv_sec = 0, *&v567.tv_usec = 0, gettimeofday(&v567, 0)) || (HIWORD(v47) = 0, (v567.tv_usec + 1000000 * v567.tv_sec) / 1000000.0 <= 1514764800.0))
  {
    __assert_rtn("u_timel", "arch_dtime.c", 118, "ret == 0 && result/1e6 > 1514764800L");
  }

  *v565 = 0;
  if (v30)
  {
    *v30 = 0;
  }

  v554 = v19;
  *v23 = 0;
  v48 = *(v565 + 16);
  if (v48 <= 999)
  {
    v49 = 2 * v48;
    if (v49 <= 1000)
    {
      v50 = 1000;
    }

    else
    {
      v50 = v49;
    }

    *(v565 + 8) = malloc_type_realloc(*(v565 + 8), 8 * v50, 0x100004000313F17uLL);
    *(v565 + 16) = v50;
  }

  v51 = *(v23 + 16);
  if (v51 <= 999)
  {
    v52 = 2 * v51;
    if (v52 <= 1000)
    {
      v53 = 1000;
    }

    else
    {
      v53 = v52;
    }

    *(v23 + 8) = malloc_type_realloc(*(v23 + 8), 4 * v53, 0x100004052888210uLL);
    *(v23 + 16) = v53;
  }

  v564 = v23;
  v551 = v30;
  if (v21)
  {
    v28 = v28 * 65535.0;
  }

  v552 = (v32 - 1);
  if (v21)
  {
    if (v32 >= 3 && v563 >= 3)
    {
      v54 = (v563 - 1);
      v55 = 1;
      v56 = 2;
      do
      {
        v57 = v55 + 1;
        v555 = v56;
        v58 = (*v21 + v21[2] * v56 + 2);
        v59 = 1;
        do
        {
          while (1)
          {
            v66 = *v58++;
            v67 = v66;
            if (v28 > v66)
            {
              break;
            }

            v60 = v21[2];
            v61 = *v21 + 2 * v60 * v55;
            v62 = 2 * v59 - 2;
            LOWORD(v47) = *(v61 + v62);
            v63 = v59 + 1;
            LOWORD(v33) = *(v61 + 2 * (v59 + 1));
            v64 = *v21 + 2 * v60 * (v55 - 1);
            LOWORD(v34) = *(v64 + 2 * v59);
            v65 = *v21 + 2 * v60 * v57;
            LOWORD(v35) = *(v65 + 2 * v59);
            LOWORD(v36) = *(v64 + v62);
            LOWORD(v37) = *(v64 + 2 * (v59 + 1));
            LOWORD(v38) = *(v65 + v62);
            LOWORD(v39) = *(v65 + 2 * (v59 + 1));
            pick_xy(a9, v59, v55, v563, v32, a13, v565, v564, v67, v47, v33, v34, v35, v36, v37, v38, v39, v28, v559);
            v59 = v63;
            if (v63 == v54)
            {
              goto LABEL_26;
            }
          }

          ++v59;
        }

        while (v59 != v54);
LABEL_26:
        v56 = v555 + 2;
        ++v55;
      }

      while (v57 != v552);
    }
  }

  else if (v32 >= 3 && v563 >= 3)
  {
    v68 = (v563 - 1);
    v69 = 1;
    v70 = 4;
    do
    {
      v71 = v69 + 1;
      v556 = v70;
      v72 = (*v20 + v20[2] * v70 + 4);
      v73 = 1;
      do
      {
        while (*v72 >= v28)
        {
          v74 = v20[2];
          v75 = *v20 + 4 * v74 * v69;
          v76 = 4 * v73 - 4;
          v77 = *(v75 + v76);
          v78 = v73 + 1;
          v79 = *(v75 + 4 * (v73 + 1));
          v80 = *v20 + 4 * v74 * (v69 - 1);
          pick_xy(a9, v73, v69, v563, v32, a13, v565, v564, *v72, v77, v79, *(v80 + 4 * v73), *(*v20 + 4 * v74 * v71 + 4 * v73), *(v80 + v76), *(v80 + 4 * (v73 + 1)), *(*v20 + 4 * v74 * v71 + v76), *(*v20 + 4 * v74 * v71 + 4 * (v73 + 1)), v28, v559);
          v73 = v78;
          ++v72;
          if (v78 == v68)
          {
            goto LABEL_35;
          }
        }

        ++v73;
        ++v72;
      }

      while (v73 != v68);
LABEL_35:
      v70 = v556 + 4;
      ++v69;
    }

    while (v71 != v552);
  }

  v81 = v565;
  v82 = *v565;
  v83 = v549;
  v84 = v551;
  if (*v565 <= a10)
  {
    goto LABEL_427;
  }

  if (a11 < 1)
  {
    v566 = 1337;
    if (v82)
    {
      v131 = *(v565 + 8);
      v132 = *(v564 + 8);
      v133 = a10;
      while (1)
      {
        if (v82 <= 9999)
        {
          v139 = rand_r(&v566) % v82;
          goto LABEL_107;
        }

        v149 = 0;
        for (i = 0; i != 72; i += 8)
        {
          v151 = (v82 - 1 + v149) / 26;
          v152 = v132[v151];
          v153 = (2 * v82 - 2 + v149) / 26;
          v154 = v132[v149 / 26];
          v155 = v132[v153];
          if (v152 >= v154)
          {
            if (v155 < v154)
            {
              goto LABEL_121;
            }

            if (v155 >= v152)
            {
LABEL_114:
              *(&v567.tv_sec + i) = v151;
              goto LABEL_115;
            }
          }

          else
          {
            if (v155 < v152)
            {
              goto LABEL_114;
            }

            if (v155 >= v154)
            {
LABEL_121:
              *(&v567.tv_sec + i) = v149 / 26;
              goto LABEL_115;
            }
          }

          *(&v567.tv_sec + i) = v153;
LABEL_115:
          v149 += 3 * v82 - 3;
        }

        v160 = v132[*&v567.tv_usec];
        v161 = v132[v567.tv_sec];
        v162 = v132[v568];
        if (v160 >= v161)
        {
          tv_sec = v567.tv_sec;
          if (v162 >= v161)
          {
            if (v162 >= v160)
            {
              tv_sec = *&v567.tv_usec;
            }

            else
            {
              tv_sec = v568;
            }
          }
        }

        else
        {
          tv_sec = *&v567.tv_usec;
          if (v162 >= v160)
          {
            tv_sec = v567.tv_sec;
            if (v162 < v161)
            {
              tv_sec = v568;
            }
          }
        }

        v164 = v132[v570];
        v165 = v132[v569];
        v166 = v132[v571];
        if (v164 >= v165)
        {
          v167 = v569;
          if (v166 >= v165)
          {
            if (v166 >= v164)
            {
              v167 = v570;
            }

            else
            {
              v167 = v571;
            }
          }
        }

        else
        {
          v167 = v570;
          if (v166 >= v164)
          {
            if (v166 >= v165)
            {
              v167 = v569;
            }

            else
            {
              v167 = v571;
            }
          }
        }

        v168 = v132[v573];
        v169 = v132[v572];
        v170 = v132[v574];
        if (v168 >= v169)
        {
          v171 = v572;
          if (v170 >= v169)
          {
            if (v170 >= v168)
            {
              v171 = v573;
            }

            else
            {
              v171 = v574;
            }
          }
        }

        else
        {
          v171 = v573;
          if (v170 >= v168)
          {
            if (v170 >= v169)
            {
              v171 = v572;
            }

            else
            {
              v171 = v574;
            }
          }
        }

        v172 = v132[v167];
        v173 = v132[tv_sec];
        v174 = v132[v171];
        if (v172 >= v173)
        {
          v139 = tv_sec;
          if (v174 >= v173)
          {
            if (v174 >= v172)
            {
              v139 = v167;
            }

            else
            {
              v139 = v171;
            }
          }
        }

        else
        {
          v139 = v167;
          if (v174 >= v172)
          {
            v139 = tv_sec;
            if (v174 < v173)
            {
              v139 = v171;
            }
          }
        }

LABEL_107:
        v140 = *v132;
        *v132 = v132[v139];
        v132[v139] = v140;
        v141 = *v131;
        *v131 = v131[v139];
        v131[v139] = v141;
        if (v82 < 2)
        {
          v143 = 0;
          v142 = 0;
          v83 = v549;
        }

        else
        {
          v142 = 0;
          v143 = 0;
          v144 = 1;
          v83 = v549;
          do
          {
            v145 = v132[v144];
            if ((*v132 - v145) <= 0.0)
            {
              v132[v144] = v132[++v143];
              v132[v143] = v145;
              v146 = v131[v144];
              v131[v144] = v131[v143];
              v131[v143] = v146;
              if ((*v132 - v132[v144]) == 0.0)
              {
                ++v142;
                v147 = v132[v143];
                v132[v143] = v132[v142];
                v132[v142] = v147;
                v148 = v131[v143];
                v131[v143] = v131[v142];
                v131[v142] = v148;
              }
            }

            ++v144;
          }

          while (v82 != v144);
        }

        v156 = v143 - v142;
        v157 = v143 - v142;
        do
        {
          v158 = v132[v157];
          v132[v157] = v132[v142];
          v132[v142] = v158;
          v159 = v131[v157];
          v131[v157] = v131[v142];
          v131[v142] = v159;
          ++v157;
          v411 = v142-- <= 0;
        }

        while (!v411);
        if (v133 > v143 || v133 < v156)
        {
          v134 = v143 + 1;
          v135 = &v132[v134];
          v136 = &v131[v134];
          v137 = v133 - v134;
          v138 = v82 - v134;
          if (v133 < v156)
          {
            v82 = v156;
          }

          else
          {
            v131 = v136;
            v82 = v138;
          }

          if (v133 >= v156)
          {
            v133 = v137;
            v132 = v135;
          }

          if (v82)
          {
            continue;
          }
        }

        break;
      }
    }

    v175 = *v564;
    v176 = *(v564 + 16);
    if (v176 >= a10)
    {
      v182 = a10 - v175;
      if (a10 <= v175)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v177 = 2 * v176;
      v178 = v176 == 0;
      v179 = 64;
      if (!v178)
      {
        v179 = v177;
      }

      if (v179 <= a10)
      {
        v180 = a10;
      }

      else
      {
        v180 = v179;
      }

      if (v180)
      {
        v181 = malloc_type_realloc(*(v564 + 8), 4 * v180, 0x100004052888210uLL);
        v83 = v549;
        *(v564 + 8) = v181;
      }

      *(v564 + 16) = v180;
      v182 = a10 - v175;
      if (a10 <= v175)
      {
LABEL_174:
        *v564 = a10;
        v183 = *v565;
        v184 = *(v565 + 16);
        if (v184 < a10)
        {
          goto LABEL_175;
        }

        goto LABEL_186;
      }
    }

    bzero((*(v564 + 8) + 4 * *v564), 4 * v182);
    v83 = v549;
    *v564 = a10;
    v183 = *v565;
    v184 = *(v565 + 16);
    if (v184 < a10)
    {
LABEL_175:
      v185 = 2 * v184;
      v178 = v184 == 0;
      v186 = 32;
      if (!v178)
      {
        v186 = v185;
      }

      if (v186 <= a10)
      {
        v187 = a10;
      }

      else
      {
        v187 = v186;
      }

      if (v187)
      {
        v188 = malloc_type_realloc(*(v565 + 8), 8 * v187, 0x100004000313F17uLL);
        v83 = v549;
        *(v565 + 8) = v188;
      }

      *(v565 + 16) = v187;
      v189 = a10 - v183;
      if (a10 <= v183)
      {
        goto LABEL_188;
      }

      goto LABEL_187;
    }

LABEL_186:
    v189 = a10 - v183;
    if (a10 <= v183)
    {
LABEL_188:
      *v565 = a10;
      goto LABEL_426;
    }

LABEL_187:
    bzero((*(v565 + 8) + 8 * *v565), 8 * v189);
    v83 = v549;
    goto LABEL_188;
  }

  v85 = malloc_type_malloc(8 * v82, 0x100004000313F17uLL);
  v86 = malloc_type_malloc(4 * v82, 0x100004052888210uLL);
  v87 = v564;
  if (v82 <= a10)
  {
    v190 = v86;
    free(v85);
    v191 = v190;
    goto LABEL_425;
  }

  v548 = v86;
  v88 = v563 / ((v552 + a11) / a11);
  v89 = -0.5;
  if (v88 <= 0.0)
  {
    v90 = -0.5;
  }

  else
  {
    v90 = 0.5;
  }

  v91 = (v88 + v90);
  if (v91 <= 1)
  {
    v91 = 1;
  }

  v92 = v32 / ((v563 + a11 - 1) / a11);
  if (v92 > 0.0)
  {
    v89 = 0.5;
  }

  v93 = (v92 + v89);
  if (v93 <= 1)
  {
    v93 = 1;
  }

  if (v563 > v32)
  {
    v94 = (v93 + v552) / v93;
  }

  else
  {
    v93 = a11;
    v94 = (v552 + a11) / a11;
  }

  if (v563 > v32)
  {
    v95 = (v563 + a11 - 1) / a11;
  }

  else
  {
    v95 = (v563 + v91 - 1) / v91;
  }

  if (v563 > v32)
  {
    v96 = a11;
  }

  else
  {
    v96 = v91;
  }

  v97 = (v96 * v93);
  v98 = malloc_type_calloc(v97, 4uLL, 0x100004052888210uLL);
  v547 = v97;
  v99 = (v97 + 1);
  v557 = malloc_type_calloc(v99, 4uLL, 0x100004052888210uLL);
  v100 = v95;
  if (v82 >= 1)
  {
    v101 = v82 & 0x7FFFFFFF;
    v102 = (*(v565 + 8) + 4);
    do
    {
      v103 = *(v102 - 1);
      v104 = *v102;
      if (v103 <= (v563 - 1))
      {
        v105 = *(v102 - 1);
      }

      else
      {
        v105 = (v563 - 1);
      }

      if (v103 >= 0.0)
      {
        v106 = v105;
      }

      else
      {
        v106 = 0.0;
      }

      if (v104 <= v552)
      {
        v107 = *v102;
      }

      else
      {
        v107 = v552;
      }

      v108 = v106 / v100;
      if (v104 >= 0.0)
      {
        v109 = v107;
      }

      else
      {
        v109 = 0.0;
      }

      v110 = v108 + v96 * (v109 / v94);
      ++v98[v110];
      v102 += 2;
      --v101;
    }

    while (v101);
  }

  v111 = 0;
  v112 = 0;
  v113 = v557;
  *v557 = 0;
  v114 = v99 - 1;
  do
  {
    v112 += v98[v111];
    v557[++v111] = v112;
  }

  while (v114 != v111);
  v115 = v547;
  if (v82 >= 1)
  {
    v116 = 0;
    v117 = 0;
    do
    {
      v118 = (*(v565 + 8) + v116);
      v119 = v118[1];
      if (*v118 <= (v563 - 1))
      {
        v120 = *v118;
      }

      else
      {
        v120 = (v563 - 1);
      }

      if (*v118 >= 0.0)
      {
        v121 = v120;
      }

      else
      {
        v121 = 0.0;
      }

      v122 = (v121 / v100);
      if (v119 <= v552)
      {
        v123 = v118[1];
      }

      else
      {
        v123 = v552;
      }

      if (v119 < 0.0)
      {
        v123 = 0.0;
      }

      v124 = v122 + v96 * (v123 / v94);
      v125 = v557[v124];
      v557[v124] = v125 + 1;
      *&v85[8 * v125] = *v118;
      v548[v125] = *(*(v564 + 8) + 4 * v117++);
      v116 += 8;
    }

    while ((v82 & 0x7FFFFFFF) != v117);
  }

  v126 = 0;
  v127 = 0;
  *v557 = 0;
  do
  {
    v127 += v98[v126];
    v557[++v126] = v127;
  }

  while (v114 != v126);
  v128 = malloc_type_malloc(4 * v547, 0x100004052888210uLL);
  v129 = v128;
  v546 = v85;
  if (v547 >= 8)
  {
    v130 = v547 & 0x7FFFFFF8;
    v192 = xmmword_271103920;
    v193 = v128 + 1;
    v194.i64[0] = 0x400000004;
    v194.i64[1] = 0x400000004;
    v195.i64[0] = 0x800000008;
    v195.i64[1] = 0x800000008;
    v196 = v130;
    do
    {
      v193[-1] = v192;
      *v193 = vaddq_s32(v192, v194);
      v192 = vaddq_s32(v192, v195);
      v193 += 2;
      v196 -= 8;
    }

    while (v196);
    if (v130 == v547)
    {
      goto LABEL_194;
    }
  }

  else
  {
    v130 = 0;
  }

  do
  {
    v128->i32[v130] = v130;
    ++v130;
  }

  while (v547 != v130);
LABEL_194:
  v197 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
  v198 = 0;
  v199 = &v568;
  v200 = 1;
  v201 = 32;
  v553 = v98;
  v202 = v129;
  v203 = v547;
  do
  {
    v204 = v198;
    while (1)
    {
      if (!v200)
      {
        --v204;
        v205 = &v197[16 * v204];
        v203 = v205[1];
        v206 = *v205;
        v98 = &v553[v206];
        v202 = (v129 + v206 * 4);
      }

      if (v203 > 15)
      {
        break;
      }

      if (v203 > 1)
      {
        v207 = 2;
        for (j = 1; j != v203; ++j)
        {
          v209 = v207;
          do
          {
            v210 = v209 - 1;
            v211 = v209 - 2;
            v212 = v98[v210];
            v213 = v98[v211];
            if (v212 >= v213)
            {
              break;
            }

            v98[v210] = v213;
            v98[v211] = v212;
            v214 = v202->i32[v210];
            v202->i32[v210] = v202->i32[v211];
            v202->i32[v211] = v214;
            v209 = v210;
          }

          while (v210 > 1);
          ++v207;
        }
      }

      v200 = 0;
      v203 = 0;
      if (v204 < 1)
      {
        goto LABEL_260;
      }
    }

    if (v203 > 0x27)
    {
      v221 = 0;
      v222 = 0;
      if (v203 <= 0x7D0)
      {
        v223 = 8;
      }

      else
      {
        v223 = 26;
      }

      v224 = 3;
      if (v203 > 0x7D0)
      {
        v224 = 9;
      }

      while (1)
      {
        v225 = (v203 - 1 + v221) / v223;
        v226 = v98[v221 / v223];
        v227 = v98[v225];
        v228 = (2 * v203 - 2 + v221) / v223;
        v229 = v98[v228];
        if (v226 >= v227)
        {
          if (v226 < v229)
          {
            goto LABEL_232;
          }

          if (v227 < v229)
          {
LABEL_234:
            *(&v567.tv_sec + v222) = v228;
            goto LABEL_226;
          }
        }

        else if (v227 >= v229)
        {
          if (v226 < v229)
          {
            goto LABEL_234;
          }

LABEL_232:
          *(&v567.tv_sec + v222) = v221 / v223;
          goto LABEL_226;
        }

        *(&v567.tv_sec + v222) = v225;
LABEL_226:
        ++v222;
        v221 += 3 * v203 - 3;
        if (v224 == v222)
        {
          while (1)
          {
            v230 = v224;
            v224 /= 3uLL;
            v231 = &v567;
            v232 = v199;
            v233 = v224;
            do
            {
              v234 = *(v232 - 2);
              v235 = *(v232 - 1);
              v236 = v98[v234];
              v237 = v98[v235];
              v238 = v98[*v232];
              if (v236 >= v237)
              {
                if (v236 < v238)
                {
                  goto LABEL_244;
                }

                if (v237 >= v238)
                {
LABEL_237:
                  v231->tv_sec = v235;
                  goto LABEL_238;
                }
              }

              else
              {
                if (v237 < v238)
                {
                  goto LABEL_237;
                }

                if (v236 >= v238)
                {
LABEL_244:
                  v231->tv_sec = v234;
                  goto LABEL_238;
                }
              }

              v231->tv_sec = *v232;
LABEL_238:
              v232 += 3;
              v231 = (v231 + 8);
              --v233;
            }

            while (v233);
            if (v230 < 9)
            {
              v215 = v567.tv_sec;
              v216 = *v98;
              goto LABEL_248;
            }
          }
        }
      }
    }

    v215 = v203 >> 1;
    v216 = *v98;
    v217 = v98[v203 >> 1];
    v218 = v203 - 1;
    v219 = v98[v203 - 1];
    if (v217 >= v219)
    {
      v220 = v203 >> 1;
    }

    else
    {
      v220 = v203 - 1;
    }

    if (v216 >= v219)
    {
      v218 = 0;
    }

    else
    {
      v220 = 0;
    }

    if (v217 >= v219)
    {
      v215 = v218;
    }

    if (v216 >= v217)
    {
      v215 = v220;
    }

LABEL_248:
    v239 = 0;
    v240 = 0;
    *v98 = v98[v215];
    v98[v215] = v216;
    v241 = v202->i32[0];
    v202->i32[0] = v202->i32[v215];
    v202->i32[v215] = v241;
    for (k = 1; k != v203; ++k)
    {
      v243 = v98[k];
      if (v243 <= *v98)
      {
        v98[k] = v98[++v239];
        v98[v239] = v243;
        v244 = v202->i32[k];
        v202->i32[k] = v202->i32[v239];
        v202->i32[v239] = v244;
        if (v98[k] == *v98)
        {
          ++v240;
          v245 = v98[v239];
          v98[v239] = v98[v240];
          v98[v240] = v245;
          v246 = v202->i32[v239];
          v202->i32[v239] = v202->i32[v240];
          v202->i32[v240] = v246;
        }
      }
    }

    v247 = 4 * v239 - 4 * v240;
    v248 = v240;
    do
    {
      v249 = *(v98 + v247);
      *(v98 + v247) = v98[v248];
      v98[v248] = v249;
      v250 = *(v202->i32 + v247);
      *(v202->i32 + v247) = v202->i32[v248];
      v202->i32[v248] = v250;
      v247 += 4;
      v411 = v248-- <= 0;
    }

    while (!v411);
    v198 = v204 + 1;
    if (v204 + 1 >= v201)
    {
      v560 = 2 * v201;
      v251 = v199;
      v197 = malloc_type_realloc(v197, 32 * v201, 0x100004000313F17uLL);
      v199 = v251;
      v201 = v560;
      v87 = v564;
    }

    v252 = &v197[16 * v204];
    *v252 = v239 + v98 - v553 + 1;
    *(v252 + 1) = v203 + ~v239;
    v203 = v239 - v240;
    v200 = v239 != v240;
    v113 = v557;
  }

  while ((v204 & 0x8000000000000000) == 0 || v203);
LABEL_260:
  free(v197);
  v253 = v553;
  v254 = v547;
  v255 = a10;
  do
  {
    v256 = *v253;
    if (v254 * v256 > v255)
    {
      v256 = v255 / v254;
      *v253 = v256;
    }

    v255 -= v256;
    ++v253;
    --v254;
  }

  while (v254);
  v257 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
  v258 = 0;
  v259 = &v568;
  v260 = 1;
  v261 = 32;
  v262 = v547;
  v263 = v553;
  v264 = v129;
  while (2)
  {
    v265 = v258;
    while (1)
    {
      if (!v260)
      {
        --v265;
        v266 = &v257[16 * v265];
        v262 = v266[1];
        v267 = *v266;
        v264 = &v129->i8[v267 * 4];
        v263 = &v553[v267];
      }

      if (v262 > 15)
      {
        break;
      }

      if (v262 > 1)
      {
        v268 = 2;
        for (m = 1; m != v262; ++m)
        {
          v270 = v268;
          do
          {
            v271 = v270 - 1;
            v272 = v270 - 2;
            v273 = *&v264[4 * v271];
            v274 = *&v264[4 * v272];
            if (v273 >= v274)
            {
              break;
            }

            *&v264[4 * v271] = v274;
            *&v264[4 * v272] = v273;
            v275 = v263[v271];
            v263[v271] = v263[v272];
            v263[v272] = v275;
            v270 = v271;
          }

          while (v271 > 1);
          ++v268;
        }
      }

      v260 = 0;
      v262 = 0;
      if (v265 < 1)
      {
        goto LABEL_330;
      }
    }

    if (v262 > 0x27)
    {
      v282 = 0;
      v283 = 0;
      if (v262 <= 0x7D0)
      {
        v284 = 8;
      }

      else
      {
        v284 = 26;
      }

      v285 = 3;
      if (v262 > 0x7D0)
      {
        v285 = 9;
      }

      while (1)
      {
        v286 = (v262 - 1 + v282) / v284;
        v287 = *&v264[4 * (v282 / v284)];
        v288 = *&v264[4 * v286];
        v289 = (2 * v262 - 2 + v282) / v284;
        v290 = *&v264[4 * v289];
        if (v287 >= v288)
        {
          if (v287 < v290)
          {
            goto LABEL_302;
          }

          if (v288 < v290)
          {
LABEL_304:
            *(&v567.tv_sec + v283) = v289;
            goto LABEL_296;
          }
        }

        else if (v288 >= v290)
        {
          if (v287 < v290)
          {
            goto LABEL_304;
          }

LABEL_302:
          *(&v567.tv_sec + v283) = v282 / v284;
          goto LABEL_296;
        }

        *(&v567.tv_sec + v283) = v286;
LABEL_296:
        ++v283;
        v282 += 3 * v262 - 3;
        if (v285 == v283)
        {
          while (1)
          {
            v291 = v285;
            v285 /= 3uLL;
            v292 = &v567;
            v293 = v259;
            v294 = v285;
            do
            {
              v295 = *(v293 - 2);
              v296 = *(v293 - 1);
              v297 = *&v264[4 * v295];
              v298 = *&v264[4 * v296];
              v299 = *&v264[4 * *v293];
              if (v297 >= v298)
              {
                if (v297 < v299)
                {
                  goto LABEL_314;
                }

                if (v298 >= v299)
                {
LABEL_307:
                  v292->tv_sec = v296;
                  goto LABEL_308;
                }
              }

              else
              {
                if (v298 < v299)
                {
                  goto LABEL_307;
                }

                if (v297 >= v299)
                {
LABEL_314:
                  v292->tv_sec = v295;
                  goto LABEL_308;
                }
              }

              v292->tv_sec = *v293;
LABEL_308:
              v293 += 3;
              v292 = (v292 + 8);
              --v294;
            }

            while (v294);
            if (v291 < 9)
            {
              v276 = v567.tv_sec;
              v277 = *v264;
              goto LABEL_318;
            }
          }
        }
      }
    }

    v276 = v262 >> 1;
    v277 = *v264;
    v278 = *&v264[4 * (v262 >> 1)];
    v279 = v262 - 1;
    v280 = *&v264[4 * v262 - 4];
    if (v278 >= v280)
    {
      v281 = v262 >> 1;
    }

    else
    {
      v281 = v262 - 1;
    }

    if (v277 >= v280)
    {
      v279 = 0;
    }

    else
    {
      v281 = 0;
    }

    if (v278 >= v280)
    {
      v276 = v279;
    }

    if (v277 >= v278)
    {
      v276 = v281;
    }

LABEL_318:
    v300 = 0;
    v301 = 0;
    *v264 = *&v264[4 * v276];
    *&v264[4 * v276] = v277;
    v302 = *v263;
    *v263 = v263[v276];
    v263[v276] = v302;
    for (n = 1; n != v262; ++n)
    {
      v304 = *&v264[4 * n];
      if (v304 <= *v264)
      {
        ++v301;
        *&v264[4 * n] = *&v264[4 * v301];
        *&v264[4 * v301] = v304;
        v305 = v263[n];
        v263[n] = v263[v301];
        v263[v301] = v305;
        if (*&v264[4 * n] == *v264)
        {
          ++v300;
          v306 = *&v264[4 * v301];
          *&v264[4 * v301] = *&v264[4 * v300];
          *&v264[4 * v300] = v306;
          v307 = v263[v301];
          v263[v301] = v263[v300];
          v263[v300] = v307;
        }
      }
    }

    v308 = 4 * v301 - 4 * v300;
    v309 = v300;
    do
    {
      v310 = *&v264[v308];
      *&v264[v308] = *&v264[4 * v309];
      *&v264[4 * v309] = v310;
      v311 = *(v263 + v308);
      *(v263 + v308) = v263[v309];
      v263[v309] = v311;
      v308 += 4;
      v411 = v309-- <= 0;
    }

    while (!v411);
    v258 = v265 + 1;
    if (v265 + 1 >= v261)
    {
      v561 = 2 * v261;
      v312 = v259;
      v257 = malloc_type_realloc(v257, 32 * v261, 0x100004000313F17uLL);
      v259 = v312;
      v261 = v561;
      v87 = v564;
    }

    v313 = &v257[16 * v265];
    *v313 = v301 + ((v264 - v129) >> 2) + 1;
    *(v313 + 1) = v262 + ~v301;
    v262 = v301 - v300;
    v260 = v301 != v300;
    v113 = v557;
    if ((v265 & 0x8000000000000000) == 0 || v262)
    {
      continue;
    }

    break;
  }

LABEL_330:
  free(v257);
  free(v129);
  v314 = 0;
  v81 = v565;
  *v565 = 0;
  *v87 = 0;
  v315 = v546;
  v316 = v553;
  while (2)
  {
    v562 = v314 + 1;
    v318 = v113[v314 + 1];
    v319 = v113[v314];
    v320 = v316[v314];
    if (v318 - v319 > v320)
    {
      v321 = v315;
      v566 = 1337;
      if (v318 == v319)
      {
LABEL_336:
        v316 = v553;
        v320 = v553[v314];
        v315 = v321;
        v115 = v547;
        v113 = v557;
        goto LABEL_337;
      }

      v338 = v320;
      v339 = v318 - v319;
      v340 = v557[v314];
      v341 = &v315[8 * v340];
      v342 = &v548[v340];
      while (2)
      {
        if (v339 <= 9999)
        {
          v348 = rand_r(&v566) % v339;
          goto LABEL_366;
        }

        v358 = 0;
        v359 = 0;
LABEL_375:
        v360 = (v339 - 1 + v358) / 26;
        v361 = v342[v360];
        v362 = (2 * v339 - 2 + v358) / 26;
        v363 = v342[v358 / 26];
        v364 = v342[v362];
        if (v361 >= v363)
        {
          if (v364 < v363)
          {
            goto LABEL_380;
          }

          if (v364 < v361)
          {
            goto LABEL_382;
          }
        }

        else if (v364 >= v361)
        {
          if (v364 < v363)
          {
LABEL_382:
            *(&v567.tv_sec + v359) = v362;
LABEL_374:
            v359 += 8;
            v358 += 3 * v339 - 3;
            if (v359 == 72)
            {
              v369 = v342[*&v567.tv_usec];
              v370 = v342[v567.tv_sec];
              v371 = v342[v568];
              if (v369 >= v370)
              {
                v372 = v567.tv_sec;
                if (v371 >= v370)
                {
                  if (v371 >= v369)
                  {
                    v372 = *&v567.tv_usec;
                  }

                  else
                  {
                    v372 = v568;
                  }
                }
              }

              else
              {
                v372 = *&v567.tv_usec;
                if (v371 >= v369)
                {
                  v372 = v567.tv_sec;
                  if (v371 < v370)
                  {
                    v372 = v568;
                  }
                }
              }

              v373 = v342[v570];
              v374 = v342[v569];
              v375 = v342[v571];
              if (v373 >= v374)
              {
                v376 = v569;
                if (v375 >= v374)
                {
                  if (v375 >= v373)
                  {
                    v376 = v570;
                  }

                  else
                  {
                    v376 = v571;
                  }
                }
              }

              else
              {
                v376 = v570;
                if (v375 >= v373)
                {
                  if (v375 >= v374)
                  {
                    v376 = v569;
                  }

                  else
                  {
                    v376 = v571;
                  }
                }
              }

              v377 = v342[v573];
              v378 = v342[v572];
              v379 = v342[v574];
              if (v377 >= v378)
              {
                v380 = v572;
                if (v379 >= v378)
                {
                  if (v379 >= v377)
                  {
                    v380 = v573;
                  }

                  else
                  {
                    v380 = v574;
                  }
                }
              }

              else
              {
                v380 = v573;
                if (v379 >= v377)
                {
                  if (v379 >= v378)
                  {
                    v380 = v572;
                  }

                  else
                  {
                    v380 = v574;
                  }
                }
              }

              v381 = v342[v376];
              v382 = v342[v372];
              v383 = v342[v380];
              if (v381 >= v382)
              {
                v348 = v372;
                if (v383 >= v382)
                {
                  if (v383 >= v381)
                  {
                    v348 = v376;
                  }

                  else
                  {
                    v348 = v380;
                  }
                }
              }

              else
              {
                v348 = v376;
                if (v383 >= v381)
                {
                  v348 = v372;
                  if (v383 < v382)
                  {
                    v348 = v380;
                  }
                }
              }

LABEL_366:
              v349 = *v342;
              *v342 = v342[v348];
              v342[v348] = v349;
              v350 = *v341;
              *v341 = *&v341[8 * v348];
              *&v341[8 * v348] = v350;
              if (v339 < 2)
              {
                v352 = 0;
                v351 = 0;
              }

              else
              {
                v351 = 0;
                v352 = 0;
                for (ii = 1; ii != v339; ++ii)
                {
                  v354 = v342[ii];
                  if ((*v342 - v354) <= 0.0)
                  {
                    v342[ii] = v342[++v352];
                    v342[v352] = v354;
                    v355 = *&v341[8 * ii];
                    *&v341[8 * ii] = *&v341[8 * v352];
                    *&v341[8 * v352] = v355;
                    if ((*v342 - v342[ii]) == 0.0)
                    {
                      ++v351;
                      v356 = v342[v352];
                      v342[v352] = v342[v351];
                      v342[v351] = v356;
                      v357 = *&v341[8 * v352];
                      *&v341[8 * v352] = *&v341[8 * v351];
                      *&v341[8 * v351] = v357;
                    }
                  }
                }
              }

              v365 = v352 - v351;
              v366 = v352 - v351;
              do
              {
                v367 = v342[v366];
                v342[v366] = v342[v351];
                v342[v351] = v367;
                v368 = *&v341[8 * v366];
                *&v341[8 * v366] = *&v341[8 * v351];
                *&v341[8 * v351] = v368;
                ++v366;
                v411 = v351-- <= 0;
              }

              while (!v411);
              if (v338 <= v352 && v338 >= v365)
              {
                goto LABEL_336;
              }

              v343 = v352 + 1;
              v344 = &v342[v343];
              v345 = &v341[8 * v343];
              v346 = v338 - v343;
              v347 = v339 - v343;
              if (v338 < v365)
              {
                v339 = v365;
              }

              else
              {
                v342 = v344;
                v341 = v345;
                v339 = v347;
              }

              if (v338 >= v365)
              {
                v338 = v346;
              }

              if (!v339)
              {
                goto LABEL_336;
              }

              continue;
            }

            goto LABEL_375;
          }

LABEL_380:
          *(&v567.tv_sec + v359) = v358 / 26;
          goto LABEL_374;
        }

        break;
      }

      *(&v567.tv_sec + v359) = v360;
      goto LABEL_374;
    }

LABEL_337:
    if (v320 >= 1)
    {
      v322 = v113[v314];
      v323 = *v565;
      v324 = *v565 + v320;
      v325 = *(v565 + 16);
      if (v324 > v325)
      {
        v326 = 2 * v325;
        v178 = v325 == 0;
        v327 = 32;
        if (!v178)
        {
          v327 = v326;
        }

        if (v327 <= v324)
        {
          v328 = *v565 + v320;
        }

        else
        {
          v328 = v327;
        }

        if (v328)
        {
          *(v565 + 8) = malloc_type_realloc(*(v565 + 8), 8 * v328, 0x100004000313F17uLL);
          v323 = *v565;
          v320 = v316[v314];
        }

        *(v565 + 16) = v328;
      }

      memcpy((*(v565 + 8) + 8 * v323), &v315[8 * v322], 8 * v320);
      v329 = v316[v314];
      *v565 += v329;
      v113 = v557;
      if (v329 >= 1)
      {
        v330 = v115;
        v331 = v557[v314];
        v332 = *v564;
        v333 = *v564 + v329;
        v334 = *(v564 + 16);
        if (v333 <= v334)
        {
          v317 = v564;
        }

        else
        {
          v335 = 2 * v334;
          v178 = v334 == 0;
          v336 = 64;
          if (!v178)
          {
            v336 = v335;
          }

          if (v336 <= v333)
          {
            v337 = *v564 + v329;
          }

          else
          {
            v337 = v336;
          }

          v317 = v564;
          if (v337)
          {
            *(v564 + 8) = malloc_type_realloc(*(v564 + 8), 4 * v337, 0x100004052888210uLL);
            v332 = *v564;
            v329 = v316[v314];
          }

          *(v564 + 16) = v337;
        }

        memcpy((v317[1] + 4 * v332), &v548[v331], 4 * v329);
        *v317 += v316[v314];
        v113 = v557;
        v115 = v330;
      }
    }

    ++v314;
    if (v562 != v115)
    {
      continue;
    }

    break;
  }

  free(v316);
  free(v113);
  free(v315);
  v191 = v548;
LABEL_425:
  free(v191);
  v83 = v549;
LABEL_426:
  v84 = v551;
LABEL_427:
  v384 = v554;
  if (v84)
  {
    v385 = v550;
    if (v554)
    {
      v385 = v554;
    }

    v386 = *(v385 + 2);
    v387 = v385[2] / v386;
    v388 = v551[2];
    if ((v83.i32[0] & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v25) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v400 = *v81;
      v401 = *v551;
      v391 = 4 * v387;
      v402 = v400 * v391;
      if (v400 * v391 > v388)
      {
        v403 = 2 * v388;
        v178 = v388 == 0;
        v404 = 256;
        if (!v178)
        {
          v404 = v403;
        }

        if (v404 <= v402)
        {
          v405 = v400 * 4 * v387;
        }

        else
        {
          v405 = v404;
        }

        if (v405)
        {
          v406 = malloc_type_realloc(v551[1], v405, 0x100004077774924uLL);
          v83 = v549;
          v551[1] = v406;
        }

        v551[2] = v405;
      }

      if (v402 <= v401)
      {
        v397 = 4;
        goto LABEL_458;
      }

      bzero((v551[1] + *v551), v402 - v401);
      v83 = v549;
      v397 = 4;
      v398 = v565;
      v399 = *v565;
      *v551 = *v565 * v391;
      if (v399 >= 1)
      {
        goto LABEL_459;
      }
    }

    else
    {
      v389 = *v551;
      v390 = *v81;
      v391 = v387;
      v392 = v390 * v387;
      if (v392 > v388)
      {
        v393 = 2 * v388;
        v178 = v388 == 0;
        v394 = 256;
        if (!v178)
        {
          v394 = v393;
        }

        if (v394 <= v392)
        {
          v395 = v390 * v387;
        }

        else
        {
          v395 = v394;
        }

        if (v395)
        {
          v396 = malloc_type_realloc(v551[1], v395, 0x100004077774924uLL);
          v83 = v549;
          v551[1] = v396;
        }

        v551[2] = v395;
      }

      if (v392 > v389)
      {
        bzero((v551[1] + *v551), v392 - v389);
        v83 = v549;
        v397 = 1;
        v398 = v565;
        v399 = *v565;
        *v551 = *v565 * v387;
        if (v399 < 1)
        {
          return;
        }

LABEL_459:
        v407 = v398;
        v408 = 0;
        v409 = (v563 / v386);
        v410 = v387 & 0x7FFFFFFF;
        v411 = (v83.i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v25) & 0x7FFFFFFFu) <= 0x7F7FFFFF;
        v412 = !v411;
        v413 = 256.0 / (v25 - *v83.i32);
        v558 = v387 & 0xF;
        v414 = vdupq_lane_s32(v83, 0);
        v415.i64[0] = 0xFF000000FFLL;
        v415.i64[1] = 0xFF000000FFLL;
        while (2)
        {
          v416 = (*(v407 + 8) + 8 * v408);
          v423 = (*v416 + 0.5) / v409 + -0.5;
          *&v423 = v423;
          v417 = (v416[1] + 0.5) / v409 + -0.5;
          v418 = *&v423;
          v419 = v417;
          v420 = (*&v423 + 1.0);
          v421 = (v417 + 1.0);
          v422 = *&v423 - *&v423;
          v42.f32[0] = v417 - v417;
          *&v423 = (1.0 - v422) * (1.0 - v42.f32[0]);
          v424 = v422 * (1.0 - v42.f32[0]);
          *v40.i32 = (1.0 - v422) * v42.f32[0];
          v41.f32[0] = v422 * v42.f32[0];
          if (!v384)
          {
            v436 = *(v550 + 2);
            v435 = *(v550 + 3);
            if (v436 - 1 < v420)
            {
              v420 = v436 - 1;
            }

            if (v435 - 1 < v421)
            {
              v421 = v435 - 1;
            }

            v437 = *v550;
            if (a12)
            {
              if (v387 >= 1)
              {
                v438 = v418 * v387;
                v439 = v421;
                v440 = v550[2];
                v441 = 4 * v440;
                v442 = 4 * v420 * v387;
                if (v410 >= 8)
                {
                  v42 = vdupq_lane_s32(*&v423, 0);
                  v43 = vdupq_lane_s32(*v40.i8, 0);
                  v467 = vdupq_lane_s32(*v41.f32, 0);
                  v468 = (v437 + 16 + v441 * v419 + 4 * v438);
                  v469 = (v437 + 16 + v441 * v419 + v442);
                  v470 = (v437 + 16 + v441 * v421 + v442);
                  v471 = (v437 + 16 + 4 * v438 + v441 * v421);
                  v472 = &v568;
                  v473 = v410 - (v387 & 7);
                  do
                  {
                    v44 = v470[-1];
                    v45 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v469[-1], v424), v42, v468[-1]), v43, v471[-1]), v467, v44);
                    v46 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(*v469, v424), v42, *v468), v43, *v471), v467, *v470);
                    v468 += 2;
                    v472[-1] = v45;
                    *v472 = v46;
                    v472 += 2;
                    v469 += 2;
                    v470 += 2;
                    v471 += 2;
                    v473 -= 8;
                  }

                  while (v473);
                  v443 = v410 - (v387 & 7);
                  if ((v387 & 7) == 0)
                  {
                    goto LABEL_507;
                  }
                }

                else
                {
                  v443 = 0;
                }

                do
                {
                  v43.i32[0] = *(v437 + v441 * v439 + 4 * v438 + 4 * v443);
                  *(&v567.tv_sec + v443) = (((v424 * *(v437 + v442 + v441 * v419 + 4 * v443)) + (*(v437 + 4 * v440 * v419 + 4 * v438 + 4 * v443) * *&v423)) + (v43.f32[0] * *v40.i32)) + (*(v437 + v442 + v441 * v439 + 4 * v443) * v41.f32[0]);
                  ++v443;
                }

                while (v410 != v443);
                goto LABEL_507;
              }
            }

            else if (v387 >= 1)
            {
              v455 = 4 * v436 * v421;
              v456 = 4 * v420;
              v457 = v455 + v456;
              v458 = 4 * v435 * v436;
              v459 = 4 * v418;
              v460 = v455 + v459;
              v461 = 4 * v436 * v419;
              v462 = v461 + v456;
              v463 = v461 + v459;
              v464 = &v567;
              v465 = v387 & 0x7FFFFFFF;
              do
              {
                v43.i32[0] = *(v437 + v460);
                *&v464->tv_sec = (((v424 * *(v437 + v462)) + (*(v437 + v463) * *&v423)) + (v43.f32[0] * *v40.i32)) + (*(v437 + v457) * v41.f32[0]);
                v464 = (v464 + 4);
                v437 += v458;
                --v465;
              }

              while (v465);
              goto LABEL_507;
            }

            goto LABEL_466;
          }

          v425 = *(v384 + 2);
          v426 = *(v384 + 3);
          if (v425 - 1 < v420)
          {
            v420 = v425 - 1;
          }

          if (v426 - 1 < v421)
          {
            v421 = v426 - 1;
          }

          v427 = *v384;
          if (!a12)
          {
            if (v387 >= 1)
            {
              v444 = v418;
              v445 = v420;
              v446 = v420 + v425 * v421;
              v447 = v426 * v425;
              v448 = v444 + v425 * v421;
              v449 = v445 + v425 * v419;
              v450 = &v567;
              v451 = v387 & 0x7FFFFFFF;
              v452 = v444 + v425 * v419;
              do
              {
                v42.i8[0] = *(v427 + v452);
                v42.i64[0] = vmovl_s16(*&vmovl_s8(*v42.f32)).u64[0];
                v43.i8[0] = *(v427 + v449);
                v453 = vmovl_s16(*&vmovl_s8(*v43.f32)).u64[0];
                *v453.i32 = v424 * v453.i32[0];
                v42.f32[0] = *v453.i32 + (v42.i32[0] * *&v423);
                v453.i8[0] = *(v427 + v448);
                v454 = vmovl_s16(*&vmovl_s8(v453)).u64[0];
                *v454.i32 = v454.i32[0];
                v42.f32[0] = v42.f32[0] + (*v454.i32 * *v40.i32);
                v454.i8[0] = *(v427 + v446);
                v43.i64[0] = vmovl_s16(*&vmovl_s8(v454)).u64[0];
                v43.f32[0] = v43.i32[0];
                v42.f32[0] = v42.f32[0] + (v43.f32[0] * v41.f32[0]);
                LODWORD(v450->tv_sec) = v42.i32[0];
                v450 = (v450 + 4);
                v427 += v447;
                --v451;
              }

              while (v451);
              goto LABEL_507;
            }

            goto LABEL_466;
          }

          if (v387 < 1)
          {
            goto LABEL_466;
          }

          v428 = v418 * v387;
          v429 = v384[2];
          v430 = v429 * v419;
          v431 = v427 + v430;
          v432 = v420 * v387;
          v433 = v429 * v421;
          if (v410 < 4)
          {
            v434 = 0;
            goto LABEL_506;
          }

          if (v410 >= 0x10)
          {
            v474 = v427 + v433;
            v42 = vdupq_lane_s32(*&v423, 0);
            v43 = vdupq_lane_s32(*v40.i8, 0);
            v475 = &v567;
            v476 = vdupq_lane_s32(*v41.f32, 0);
            v477 = v410 - (v387 & 0xF);
            do
            {
              v478 = *(v431 + v428);
              v479 = *(v431 + v432);
              v480 = vqtbl1q_s8(v479, xmmword_2711061C0);
              v481 = vqtbl1q_s8(v479, xmmword_2711061B0);
              v482 = vqtbl1q_s8(v479, xmmword_2711061A0);
              v483 = vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v479, xmmword_271106190), 0x18uLL), v424), v42, vcvtq_n_f32_s32(vqtbl1q_s8(v478, xmmword_271106190), 0x18uLL));
              v484 = vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(v482, 0x18uLL), v424), v42, vcvtq_n_f32_s32(vqtbl1q_s8(v478, xmmword_2711061A0), 0x18uLL));
              v485 = vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(v481, 0x18uLL), v424), v42, vcvtq_n_f32_s32(vqtbl1q_s8(v478, xmmword_2711061B0), 0x18uLL));
              v486 = vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(v480, 0x18uLL), v424), v42, vcvtq_n_f32_s32(vqtbl1q_s8(v478, xmmword_2711061C0), 0x18uLL));
              v487 = *(v474 + v428);
              v488 = vqtbl1q_s8(v487, xmmword_2711061B0);
              v489 = vqtbl1q_s8(v487, xmmword_2711061A0);
              v490 = vmlaq_f32(v486, v43, vcvtq_n_f32_s32(vqtbl1q_s8(v487, xmmword_2711061C0), 0x18uLL));
              v491 = vmlaq_f32(v483, v43, vcvtq_n_f32_s32(vqtbl1q_s8(v487, xmmword_271106190), 0x18uLL));
              v492 = *(v474 + v432);
              v493 = vqtbl1q_s8(v492, xmmword_271106190);
              v494 = vqtbl1q_s8(v492, xmmword_2711061A0);
              v495 = vqtbl1q_s8(v492, xmmword_2711061B0);
              v44 = vcvtq_n_f32_s32(vqtbl1q_s8(v492, xmmword_2711061C0), 0x18uLL);
              v46 = vcvtq_n_f32_s32(v495, 0x18uLL);
              v45 = vcvtq_n_f32_s32(v494, 0x18uLL);
              v475[2] = vmlaq_f32(vmlaq_f32(v485, v43, vcvtq_n_f32_s32(v488, 0x18uLL)), v476, v46);
              v475[3] = vmlaq_f32(v490, v476, v44);
              *v475 = vmlaq_f32(v491, v476, vcvtq_n_f32_s32(v493, 0x18uLL));
              v475[1] = vmlaq_f32(vmlaq_f32(v484, v43, vcvtq_n_f32_s32(v489, 0x18uLL)), v476, v45);
              v475 += 4;
              v431 += 16;
              v474 += 16;
              v477 -= 16;
            }

            while (v477);
            v83.i32[0] = v549.i32[0];
            if ((v387 & 0xF) != 0)
            {
              v434 = v410 - (v387 & 0xF);
              v466 = v434;
              if (v558 < 4)
              {
                goto LABEL_506;
              }

              goto LABEL_503;
            }
          }

          else
          {
            v466 = 0;
LABEL_503:
            v42 = vdupq_lane_s32(*&v423, 0);
            v43 = vdupq_lane_s32(*v40.i8, 0);
            v496 = v427 + v430 + v432;
            v497 = vdupq_lane_s32(*v41.f32, 0);
            v498 = v427 + v433 + v428;
            v499 = v427 + v433 + v432;
            v500 = (&v567 + 4 * v466);
            v501 = v410 - (v387 & 3);
            v502 = v427 + v430 + v428;
            do
            {
              v44.i32[0] = *(v502 + v466);
              v503 = vcvtq_n_f32_s32(vqtbl1q_s8(v44, xmmword_271106190), 0x18uLL);
              v45.i32[0] = *(v496 + v466);
              v504 = vmlaq_f32(vmulq_n_f32(vcvtq_n_f32_s32(vqtbl1q_s8(v45, xmmword_271106190), 0x18uLL), v424), v42, v503);
              v503.i32[0] = *(v498 + v466);
              v46.i32[0] = *(v499 + v466);
              v505 = vmlaq_f32(v504, v43, vcvtq_n_f32_s32(vqtbl1q_s8(v503, xmmword_271106190), 0x18uLL));
              v44 = vcvtq_n_f32_s32(vqtbl1q_s8(v46, xmmword_271106190), 0x18uLL);
              v45 = vmlaq_f32(v505, v497, v44);
              *v500++ = v45;
              v502 += 4;
              v496 += 4;
              v498 += 4;
              v499 += 4;
              v501 -= 4;
            }

            while (v466 != v501);
            v434 = v410 - (v387 & 3);
            if ((v387 & 3) != 0)
            {
              do
              {
LABEL_506:
                v42.i8[0] = *(v427 + v430 + v428 + v434);
                v42.i64[0] = vmovl_s16(*&vmovl_s8(*v42.f32)).u64[0];
                v43.i8[0] = *(v427 + v430 + v432 + v434);
                v506 = vmovl_s16(*&vmovl_s8(*v43.f32)).u64[0];
                *v506.i32 = v424 * v506.i32[0];
                v42.f32[0] = *v506.i32 + (v42.i32[0] * *&v423);
                v506.i8[0] = *(v427 + v433 + v428 + v434);
                v507 = vmovl_s16(*&vmovl_s8(v506)).u64[0];
                *v507.i32 = v507.i32[0];
                v42.f32[0] = v42.f32[0] + (*v507.i32 * *v40.i32);
                v507.i8[0] = *(v427 + v433 + v432 + v434);
                v43.i64[0] = vmovl_s16(*&vmovl_s8(v507)).u64[0];
                v43.f32[0] = v43.i32[0];
                v42.f32[0] = v42.f32[0] + (v43.f32[0] * v41.f32[0]);
                *(&v567.tv_sec + v434++) = v42.i32[0];
              }

              while (v410 != v434);
            }
          }

LABEL_507:
          v384 = v554;
          v407 = v565;
          if (v410 < 8)
          {
            v508 = 0;
            v509 = 0.0;
            goto LABEL_512;
          }

          v509 = 0.0;
          v510 = v410 - (v387 & 7);
          v511 = &v568;
          do
          {
            v512 = vmulq_f32(v511[-1], v511[-1]);
            v43.i32[0] = v512.i32[1];
            v40 = vmulq_f32(*v511, *v511);
            v509 = (((((((v509 + v512.f32[0]) + v512.f32[1]) + v512.f32[2]) + v512.f32[3]) + *v40.i32) + *&v40.i32[1]) + *&v40.i32[2]) + *&v40.i32[3];
            v511 += 2;
            v510 -= 8;
          }

          while (v510);
          v508 = v410 - (v387 & 7);
          if ((v387 & 7) != 0)
          {
LABEL_512:
            v513 = v410 - v508;
            v514 = &v567 + v508;
            do
            {
              v515 = *v514++;
              v509 = v509 + (v515 * v515);
              --v513;
            }

            while (v513);
          }

          v516 = 0.0;
          if (v509 > 1.0e-12)
          {
            v516 = 1.0 / sqrtf(v509);
          }

          v517 = v551[1];
          v518 = (((v387 * v397) << 32) * v408) >> 32;
          if (v412)
          {
            if (v410 < 8)
            {
              v519 = 0;
              goto LABEL_524;
            }

            v521 = (v517 + v518 + 16);
            v522 = v410 - (v387 & 7);
            v523 = &v568;
            do
            {
              v40 = vmulq_n_f32(*v523, v516);
              v521[-1] = vmulq_n_f32(v523[-1], v516);
              *v521 = v40;
              v523 += 2;
              v521 += 2;
              v522 -= 8;
            }

            while (v522);
            v519 = v410 - (v387 & 7);
            if ((v387 & 7) != 0)
            {
LABEL_524:
              v524 = v410 - v519;
              v525 = 4 * v519;
              v526 = (v517 + v518 + 4 * v519);
              v527 = (&v567 + v525);
              do
              {
                v528 = *v527++;
                *v526++ = v516 * v528;
                --v524;
              }

              while (v524);
            }

LABEL_466:
            if (v399 <= ++v408)
            {
              return;
            }

            continue;
          }

          break;
        }

        if (v410 >= 4)
        {
          if (v410 >= 0x10)
          {
            v530 = (v517 + v518);
            v531 = &v567;
            v532 = v410 - (v387 & 0xF);
            do
            {
              v42 = vmulq_n_f32(vsubq_f32(vmulq_n_f32(v531[3], v516), v414), v413);
              v41 = vmulq_n_f32(vsubq_f32(vmulq_n_f32(v531[2], v516), v414), v413);
              v533 = *&vuzp1q_s16(vminq_u32(vcvtq_u32_f32(vmulq_n_f32(vsubq_f32(vmulq_n_f32(*v531, v516), v414), v413)), v415), vminq_u32(vcvtq_u32_f32(vmulq_n_f32(vsubq_f32(vmulq_n_f32(v531[1], v516), v414), v413)), v415)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
              v534 = vmovl_high_u16(v533);
              v43 = vmovl_u16(*&v533);
              v40 = vminq_u32(vcvtq_u32_f32(v42), v415);
              v535 = *&vuzp1q_s16(vminq_u32(vcvtq_u32_f32(v41), v415), v40) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
              v536 = vmovl_high_u16(v535);
              v44 = vmovl_u16(*&v535);
              *v530++ = vqtbl4q_s8(*v43.f32, xmmword_2711050F0);
              v531 += 4;
              v532 -= 16;
            }

            while (v532);
            if ((v387 & 0xF) == 0)
            {
              goto LABEL_540;
            }

            v529 = v410 - (v387 & 0xF);
            v520 = v529;
            if (v558 <= 3)
            {
              goto LABEL_536;
            }
          }

          else
          {
            v529 = 0;
          }

          v537 = (&v567 + 4 * v529);
          v538 = (v517 + v529 + v518);
          v539 = (v387 & 3) - v410 + v529;
          do
          {
            v540 = *v537++;
            *v538++ = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vcvtq_s32_f32(vmulq_n_f32(vsubq_f32(vmulq_n_f32(v540, v516), v414), v413)), v415), 0)), *&v409).u32[0];
            v539 += 4;
          }

          while (v539);
          v520 = v410 - (v387 & 3);
          if ((v387 & 3) != 0)
          {
            goto LABEL_536;
          }
        }

        else
        {
          v520 = 0;
LABEL_536:
          v541 = v410 - v520;
          v542 = (v517 + v520 + v518);
          v543 = &v567 + v520;
          do
          {
            v544 = *v543++;
            v545 = (v413 * ((v516 * v544) - *v83.i32));
            if (v545 >= 255)
            {
              v545 = 255;
            }

            *v542++ = v545 & ~(v545 >> 31);
            --v541;
          }

          while (v541);
        }

LABEL_540:
        v399 = *v565;
        goto LABEL_466;
      }

      v397 = 1;
LABEL_458:
      v398 = v565;
      v399 = *v565;
      *v551 = *v565 * v391;
      if (v399 >= 1)
      {
        goto LABEL_459;
      }
    }
  }
}

void *pick_xy(void *result, int a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t *a7, uint64_t *a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, float a17, float a18, int a19)
{
  if (result == 4)
  {
    if (a9 <= a10 || a9 <= a11 || a9 <= a12 || a9 <= a13)
    {
      return result;
    }
  }

  else if (result == 8)
  {
    v19 = a9 <= a10 || a9 < a11;
    v20 = v19 || a9 <= a12;
    v21 = v20 || a9 < a13;
    v22 = v21 || a9 <= a14;
    v23 = v22 || a9 <= a15;
    v24 = v23 || a9 <= a16;
    if (v24 || a9 <= a17)
    {
      return result;
    }
  }

  v29 = a9;
  if (a6)
  {
    v30 = ((a2 + 0.5) * *(a6 + 8) / a4 + -0.5);
    v31 = *a6 + 4 * *(a6 + 16) * ((a3 + 0.5) * *(a6 + 12) / a5 + -0.5);
    v29 = (*(v31 + 4 * v30) * a9) <= 1.0 ? *(v31 + 4 * v30) * a9 : 1.0;
    if (v29 < a18)
    {
      return result;
    }
  }

  if (a19)
  {
    v32 = 1.0 / ((((a9 + a10) + a11) + a12) + a13);
    v33 = (a11 - a10) * v32;
    v34 = -1.0;
    v35 = -1.0;
    if (v33 >= -1.0)
    {
      v35 = 1.0;
      if (v33 <= 1.0)
      {
        v35 = v33;
      }
    }

    v36 = (a13 - a12) * v32;
    if (v36 >= -1.0)
    {
      v34 = 1.0;
      if (v36 <= 1.0)
      {
        v34 = v36;
      }
    }

    v37 = v35 + a2;
    v38 = v34 + a3;
    v39 = *a7;
    v40 = a7[2];
    if (*a7 < v40)
    {
      goto LABEL_60;
    }

    goto LABEL_52;
  }

  v37 = a2;
  v38 = a3;
  v39 = *a7;
  v40 = a7[2];
  if (*a7 >= v40)
  {
LABEL_52:
    v41 = 2 * v40;
    v42 = v40 == 0;
    v43 = 32;
    if (!v42)
    {
      v43 = v41;
    }

    if (v43 <= v39)
    {
      v44 = v39 + 1;
    }

    else
    {
      v44 = v43;
    }

    if (v44)
    {
      v45 = a8;
      v46 = a7;
      result = malloc_type_realloc(a7[1], 8 * v44, 0x100004000313F17uLL);
      a7 = v46;
      a8 = v45;
      v46[1] = result;
      v39 = *v46;
    }

    a7[2] = v44;
  }

LABEL_60:
  *a7 = v39 + 1;
  v47 = (a7[1] + 8 * v39);
  *v47 = v37;
  v47[1] = v38;
  v48 = *a8;
  v49 = a8[2];
  if (*a8 >= v49)
  {
    v50 = 2 * v49;
    v42 = v49 == 0;
    v51 = 64;
    if (!v42)
    {
      v51 = v50;
    }

    if (v51 <= v48)
    {
      v52 = v48 + 1;
    }

    else
    {
      v52 = v51;
    }

    if (v52)
    {
      v53 = a8;
      result = malloc_type_realloc(a8[1], 4 * v52, 0x100004052888210uLL);
      a8 = v53;
      v53[1] = result;
      v48 = *v53;
    }

    a8[2] = v52;
  }

  *a8 = v48 + 1;
  *(a8[1] + 4 * v48) = v29;
  return result;
}

float slam_vo_map_triangulate_track(uint64_t a1, int *a2, unsigned int a3, uint64_t a4)
{
  v82 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x80000000) != 0 || *(a1 + 392) <= a3)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*(a1 + 400) + 4 * a3);
  }

  v69 = v6;
  v71 = a3;
  v7 = *a2;
  v8 = *(a1 + 608);
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = v7 * v8;
  v10 = malloc_type_malloc(48 * (v7 * v8), 0x1000040EED21634uLL);
  v11 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
  v15 = *(a1 + 160);
  v16 = *(*(a1 + 304) + 880 * *(a1 + 592) + 360);
  if (*a2 < 1)
  {
    LODWORD(v23) = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(*(a2 + 1) + 4 * v17);
      v20 = v19 >> 15;
      v21 = *(a1 + 304) + 880 * (v19 & 0x7FFF);
      v22 = &v10[48 * v18];
      *v22 = vcvt_hight_f32_f64(vcvt_f32_f64(*v21), *(v21 + 16));
      v22[1] = vcvt_hight_f32_f64(vcvt_f32_f64(*(v21 + 32)), *(v21 + 48));
      v12 = *(v21 + 80);
      v22[2] = vcvt_hight_f32_f64(vcvt_f32_f64(*(v21 + 64)), v12);
      *&v11[2 * v18] = *(*(v21 + 368) + 8 * (v19 >> 15));
      v23 = v18 + 1;
      if (*(v21 + 768))
      {
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
        memset(v74, 0, sizeof(v74));
        v24 = v11;
        g_coords_conv((v21 + 776), v21, v74[0].f64);
        v11 = v24;
        v25 = &v10[48 * v23];
        *v25 = vcvt_hight_f32_f64(vcvt_f32_f64(v74[0]), v74[1]);
        v25[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v74[2]), v75);
        HIDWORD(v12.f64[0]) = HIDWORD(v77.f64[0]);
        v25[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v76), v77);
        *&v24[2 * v23] = *(*(v21 + 768) + 8 * v20);
        LODWORD(v23) = v18 + 2;
      }

      ++v17;
      v18 = v23;
    }

    while (*a2 > v17);
  }

  if ((a3 & 0x80000000) != 0 || *(a1 + 368) <= v71)
  {
    v33 = v23 - 1;
    v28 = a4;
    if (v23 <= 1)
    {
      log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_vo_map.c", 105, "slam_vo_map_triangulate_track", "n <= 1");
      __assert_rtn("slam_vo_map_triangulate_track", "slam_vo_map.c", 105, "0");
    }

    v32 = &v10[48 * v33];
    v34 = &v11[2 * v33];
    v35 = *v11;
    v36 = v11[1];
    v29 = v11;
    v73 = 0.0;
    v74[1].f64[0] = *(v32 + 44);
    v37 = *v34;
    v38 = v34[1];
    v39.i32[0] = *v32;
    v40.i32[0] = *(v32 + 4);
    v41.i32[0] = *(v32 + 8);
    v42 = v37 * *(v32 + 28) + *(v32 + 24) + *(v32 + 32) * v38;
    v74[0] = vcvtq_f64_f32(*(v32 + 36));
    v39.i32[1] = *(v32 + 12);
    v40.i32[1] = *(v32 + 16);
    v41.i32[1] = *(v32 + 20);
    *(&v74[1] + 8) = vaddq_f64(vmlaq_n_f64(vaddq_f64(vmulq_n_f64(vcvtq_f64_f32(v40), v37), vcvtq_f64_f32(v39)), vcvtq_f64_f32(v41), v38), v74[0]);
    v74[2].f64[1] = v42 + v74[1].f64[0];
    v79 = *(v10 + 11);
    v43 = v35;
    v44 = v36;
    LODWORD(v37) = *v10;
    LODWORD(v38) = *(v10 + 1);
    v39.i32[0] = *(v10 + 2);
    v45 = v43 * *(v10 + 7) + *(v10 + 6) + *(v10 + 8) * v44 + v79;
    v78 = vcvtq_f64_f32(*(v10 + 36));
    HIDWORD(v37) = *(v10 + 3);
    HIDWORD(v38) = *(v10 + 4);
    v39.i32[1] = *(v10 + 5);
    v80 = vaddq_f64(vmlaq_n_f64(vaddq_f64(vmulq_n_f64(vcvtq_f64_f32(*&v38), v43), vcvtq_f64_f32(*&v37)), vcvtq_f64_f32(v39), v44), v78);
    v81 = v45;
    if (g_isect_line_line_ex2(v74[0].f64, &v74[1].f64[1], &v78, &v80, 0, 0, &v73, 0, 0.0000001) == 1)
    {
      v46 = 100000.0;
      if (v73 <= 100000.0)
      {
        v46 = v73;
      }

      v47 = 1.0;
      if (v73 < 1.0)
      {
        v46 = 1.0;
      }

      if (v73 >= 0.0)
      {
        v49 = v46;
      }

      else
      {
        v49 = 100000.0;
      }
    }

    else
    {
      v49 = 100000.0;
    }

    v30 = 0;
    v50 = 1.0;
    v51 = 1.0 / v49;
    *a4 = v51;
    v12.f64[0] = *v34;
    *(a4 + 4) = *v34;
    v31 = a4;
  }

  else
  {
    v26 = *(a1 + 376) + 12 * v71;
    v27 = *v26;
    v28 = a4;
    *(a4 + 8) = *(v26 + 8);
    *a4 = v27;
    v29 = v11;
    if (v69 == -1)
    {
      v30 = 0;
      v32 = &v10[48 * v23 - 48];
      v31 = a4;
    }

    else
    {
      v30 = *(a1 + 472) + 36 * v69;
      v31 = (*(a1 + 448) + 12 * v69);
      v32 = *(a1 + 568) + 48 * v69;
    }

    v52 = *a4 - *(v32 + 36);
    v53 = *(a4 + 4) - *(v32 + 40);
    *&v13 = *(a4 + 8) - *(v32 + 44);
    *v12.f64 = ((*(v32 + 12) * v53) + (*v32 * v52)) + (*(v32 + 24) * *&v13);
    v48 = *(v32 + 16);
    v47 = COERCE_DOUBLE(vdup_lane_s32(*&v12.f64[0], 0));
    v46 = COERCE_DOUBLE(vmla_n_f32(vmla_n_f32(vmul_n_f32(*&v48, v53), *(v32 + 4), v52), *(v32 + 28), *&v13));
    v50 = COERCE_DOUBLE(vdiv_f32(*&v46, *&v47));
    *(a4 + 4) = v50;
    LODWORD(v50) = 1.0;
    *a4 = 1.0 / *v12.f64;
  }

  *v12.f64 = 1.0 / (v15 * v16);
  g_triangulate_inv_depthf(v10, v29, 0, v23, v32, v28, v31, v30, v12.f64[0], v50, v46, v47, v13, v48, v14, 0);
  v55 = v54;
  _D0.i32[0] = *v28;
  _D1 = vdiv_f32(*(v28 + 4), vdup_lane_s32(_D0, 0));
  *(v28 + 4) = _D1;
  *v28 = 1.0 / *_D0.i32;
  _S3 = *(v32 + 8);
  __asm { FMLA            S2, S3, V1.S[1] }

  _S5 = *(v32 + 32);
  _S6 = *(v32 + 20);
  __asm { FMLA            S3, S6, V1.S[1] }

  v67 = *(v32 + 40) + _S3;
  __asm { FMLA            S0, S5, V1.S[1] }

  *_D0.i32 = *(v32 + 44) + *_D0.i32;
  *v28 = *(v32 + 36) + _S2;
  *(v28 + 4) = v67;
  *(v28 + 8) = _D0.i32[0];
  free(v10);
  free(v29);
  return v55;
}

uint64_t slam_vo_map_marginalize_cam(uint64_t a1, int a2, uint64_t a3)
{
  v212 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 304);
  v208 = xmmword_2711061D8;
  v209 = 0;
  v6 = *(a1 + 292);
  v204.tv_sec = 0;
  *&v204.tv_usec = 0;
  if (gettimeofday(&v204, 0) || (v204.tv_usec + 1000000 * v204.tv_sec) / 1000000.0 <= 1514764800.0)
  {
LABEL_264:
    __assert_rtn("u_timel", "arch_dtime.c", 118, "ret == 0 && result/1e6 > 1514764800L");
  }

  v7 = v5 + 880 * a2;
  v200 = v7;
  if (*(v7 + 516))
  {
    v201 = 0;
  }

  else
  {
    v201 = 0;
    if (v6 > 0.0 && *(v7 + 512) < *(a1 + 268))
    {
      v202.i32[0] = 0;
      v204.tv_sec = 1;
      *&v204.tv_usec = &v202;
      v205.i64[0] = 0;
      v8 = *(a1 + 304) + 880 * a2;
      v9 = *(v8 + 488);
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = a2 & 0x7FFF;
        do
        {
          v12 = *(*(v8 + 400) + 4 * v10);
          if (v12 != -1)
          {
            v13 = *(*(a1 + 400) + 4 * v12);
            if (v13 != -1)
            {
              DWORD2(v210[0]) = 0;
              *&v210[0] = 0;
              v14 = *(a1 + 448) + 12 * v13;
              v15 = *(v14 + 8);
              *&v210[0] = *v14;
              DWORD2(v210[0]) = v15;
              v16 = *(a1 + 568) + 48 * v13;
              v17 = *(a1 + 472) + 36 * v13;
              v18 = *(a1 + 160) * *(v8 + 360);
              v202.i32[0] = v11;
              triangulate_track(a1, &v204.tv_sec, v16, v210, v17, v17, v18);
              v19 = *(a1 + 304) + 880 * a2;
              v20 = *(a1 + 16);
              v21 = (*(v19 + 384) + v20 * v10);
              v22 = *(v19 + 504);
              v23 = *(a1 + 448) + 12 * v13;
              v24 = *&v210[0];
              *(v23 + 8) = DWORD2(v210[0]);
              *v23 = v24;
              v25 = *(a1 + 472) + 36 * v13;
              v26 = *v17;
              v27 = *(v17 + 16);
              *(v25 + 32) = *(v17 + 32);
              *v25 = v26;
              *(v25 + 16) = v27;
              memcpy((*(a1 + 496) + v20 * v13), v21, v20);
              ++*(*(a1 + 520) + 4 * v13);
              *(*(a1 + 544) + 8 * v13) = v22;
              v9 = *(v8 + 488);
            }
          }

          ++v10;
          v11 += 0x8000;
        }

        while (v10 < v9);
      }

      v201 = 1;
    }
  }

  v28 = *(v7 + 488);
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v39 = *(v7 + 400);
      v40 = *(v39 + 4 * v29);
      if (v40 == -1)
      {
        goto LABEL_19;
      }

      v41 = *(a1 + 320) + 24 * v40;
      v207 = 0;
      v42 = *(*(a1 + 400) + 4 * *(v39 + 4 * v29));
      v43 = *v41;
      if (*v41 < 1)
      {
        v53 = 0;
        v48 = 0;
        v54 = *(v41 + 16);
        if (v54 >= 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v46 = *(v41 + 8);
        do
        {
          while (1)
          {
            v47 = v46[v44];
            if ((v47 & 0x7FFF) != a2)
            {
              break;
            }

            v207 = v46[v44];
            v46[v44] = -1;
            v30 = &v207;
            if (v43 == ++v44)
            {
              goto LABEL_28;
            }
          }

          if (!*(*(a1 + 304) + 880 * (v47 & 0x7FFF) + 668))
          {
            v45 = 1;
          }

          ++v44;
        }

        while (v43 != v44);
LABEL_28:
        v48 = 0;
        *(&v208 + 1) = v30;
        v49 = v46;
        v50 = v43;
        do
        {
          v52 = *v49++;
          v51 = v52;
          if (v52 != -1)
          {
            v46[v48++] = v51;
          }

          --v50;
        }

        while (v50);
        v53 = v45 != 0;
        v54 = *(v41 + 16);
        if (v48 <= v54)
        {
LABEL_33:
          v55 = v48 - v43;
          if (v48 > v43)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        }
      }

      v76 = 2 * v54;
      v125 = v54 == 0;
      v77 = 64;
      if (!v125)
      {
        v77 = v76;
      }

      if (v77 <= v48)
      {
        v78 = v48;
      }

      else
      {
        v78 = v77;
      }

      if (v78)
      {
        *(v41 + 8) = malloc_type_realloc(*(v41 + 8), 4 * v78, 0x100004052888210uLL);
      }

      *(v41 + 16) = v78;
      v7 = v200;
      v55 = v48 - v43;
      if (v48 > v43)
      {
LABEL_34:
        bzero((*(v41 + 8) + 4 * *v41), 4 * v55);
      }

LABEL_35:
      *v41 = v48;
      *(a3 + *(*(v7 + 400) + 4 * v29)) = v48 == 0;
      if ((v201 & v53) != 1 || v42 != -1)
      {
        goto LABEL_18;
      }

      v56 = *(a1 + 160) * *(v7 + 360);
      v205 = 0u;
      v206 = 0u;
      v204 = 0;
      v203 = 0;
      v202 = 0;
      v57 = (*(a1 + 376) + 12 * *(*(v7 + 400) + 4 * v29));
      v58 = v57[1].i32[0];
      v202 = *v57;
      v203 = v58;
      v198 = *v30;
      v59 = (*(a1 + 304) + 880 * (*v30 & 0x7FFF));
      v204 = vcvt_hight_f32_f64(vcvt_f32_f64(*v59), v59[1]);
      v205 = vcvt_hight_f32_f64(vcvt_f32_f64(v59[2]), v59[3]);
      v206 = vcvt_hight_f32_f64(vcvt_f32_f64(v59[4]), v59[5]);
      triangulate_track(a1, &v208, &v204, &v202, 0, v210, v56);
      v60 = *(a1 + 440);
      *(*(a1 + 400) + 4 * *(*(v7 + 400) + 4 * v29)) = v60;
      v61 = *(a1 + 304) + 880 * (v198 & 0x7FFF);
      v197 = *(v61 + 384);
      v62 = *(a1 + 16);
      v63 = *(v61 + 504);
      v64 = v60 + 1;
      v65 = *(a1 + 456);
      if (v65 < v64)
      {
        v79 = 2 * v65;
        v125 = v65 == 0;
        v80 = 21;
        if (!v125)
        {
          v80 = v79;
        }

        if (v80 <= v64)
        {
          v81 = v60 + 1;
        }

        else
        {
          v81 = v80;
        }

        if (v81)
        {
          *(a1 + 448) = malloc_type_realloc(*(a1 + 448), 12 * v81, 0x10000403E1C8BA9uLL);
        }

        *(a1 + 456) = v81;
        *(a1 + 440) = v64;
        v66 = 9 * v64;
        v67 = *(a1 + 480);
        if (v67 >= v66)
        {
LABEL_39:
          *(a1 + 464) = v66;
          v68 = v62 * v64;
          v69 = *(a1 + 504);
          if (v69 >= v68)
          {
            goto LABEL_40;
          }

          goto LABEL_71;
        }
      }

      else
      {
        *(a1 + 440) = v64;
        v66 = 9 * v64;
        v67 = *(a1 + 480);
        if (v67 >= v66)
        {
          goto LABEL_39;
        }
      }

      v82 = 2 * v67;
      v125 = v67 == 0;
      v83 = 64;
      if (!v125)
      {
        v83 = v82;
      }

      if (v83 <= v66)
      {
        v84 = v66;
      }

      else
      {
        v84 = v83;
      }

      if (v84)
      {
        *(a1 + 472) = malloc_type_realloc(*(a1 + 472), 4 * v84, 0x100004052888210uLL);
      }

      *(a1 + 480) = v84;
      v7 = v200;
      *(a1 + 464) = v66;
      v68 = v62 * v64;
      v69 = *(a1 + 504);
      if (v69 >= v68)
      {
LABEL_40:
        *(a1 + 488) = v68;
        v70 = *(a1 + 512);
        v71 = *(a1 + 528);
        if (v71 >= v64)
        {
          goto LABEL_41;
        }

        goto LABEL_79;
      }

LABEL_71:
      v85 = 2 * v69;
      v125 = v69 == 0;
      v86 = 256;
      if (!v125)
      {
        v86 = v85;
      }

      if (v86 <= v68)
      {
        v87 = v68;
      }

      else
      {
        v87 = v86;
      }

      if (v87)
      {
        *(a1 + 496) = malloc_type_realloc(*(a1 + 496), v87, 0x100004077774924uLL);
      }

      *(a1 + 504) = v87;
      *(a1 + 488) = v68;
      v70 = *(a1 + 512);
      v71 = *(a1 + 528);
      if (v71 >= v64)
      {
LABEL_41:
        v72 = v64 - v70;
        if (v64 <= v70)
        {
          goto LABEL_42;
        }

        goto LABEL_87;
      }

LABEL_79:
      v88 = 2 * v71;
      v125 = v71 == 0;
      v89 = 64;
      if (!v125)
      {
        v89 = v88;
      }

      if (v89 <= v64)
      {
        v90 = v60 + 1;
      }

      else
      {
        v90 = v89;
      }

      if (v90)
      {
        *(a1 + 520) = malloc_type_realloc(*(a1 + 520), 4 * v90, 0x100004052888210uLL);
      }

      *(a1 + 528) = v90;
      v7 = v200;
      v72 = v64 - v70;
      if (v64 <= v70)
      {
LABEL_42:
        *(a1 + 512) = v64;
        v73 = *(a1 + 552);
        if (v73 < v64)
        {
          goto LABEL_88;
        }

        goto LABEL_43;
      }

LABEL_87:
      bzero((*(a1 + 520) + 4 * *(a1 + 512)), 4 * v72);
      *(a1 + 512) = v64;
      v73 = *(a1 + 552);
      if (v73 < v64)
      {
LABEL_88:
        v91 = 2 * v73;
        v125 = v73 == 0;
        v92 = 32;
        if (!v125)
        {
          v92 = v91;
        }

        if (v92 <= v64)
        {
          v93 = v60 + 1;
        }

        else
        {
          v93 = v92;
        }

        if (v93)
        {
          *(a1 + 544) = malloc_type_realloc(*(a1 + 544), 8 * v93, 0x100004000313F17uLL);
        }

        *(a1 + 552) = v93;
        *(a1 + 536) = v64;
        v74 = *(a1 + 560);
        v75 = *(a1 + 576);
        if (v74 < v75)
        {
          goto LABEL_17;
        }

LABEL_96:
        v94 = 2 * v75;
        v125 = v75 == 0;
        v95 = 5;
        if (!v125)
        {
          v95 = v94;
        }

        if (v95 <= v74)
        {
          v96 = v74 + 1;
        }

        else
        {
          v96 = v95;
        }

        if (v96)
        {
          *(a1 + 568) = malloc_type_realloc(*(a1 + 568), 48 * v96, 0x1000040EED21634uLL);
          v74 = *(a1 + 560);
        }

        *(a1 + 576) = v96;
        goto LABEL_17;
      }

LABEL_43:
      *(a1 + 536) = v64;
      v74 = *(a1 + 560);
      v75 = *(a1 + 576);
      if (v74 >= v75)
      {
        goto LABEL_96;
      }

LABEL_17:
      *(a1 + 560) = v74 + 1;
      v31 = (*(a1 + 568) + 48 * v74);
      v32 = v204;
      v33 = v206;
      v31[1] = v205;
      v31[2] = v33;
      *v31 = v32;
      v34 = *(a1 + 448) + 12 * v60;
      v35 = v202;
      *(v34 + 8) = v203;
      *v34 = v35;
      v36 = *(a1 + 472) + 36 * v60;
      v37 = v210[0];
      v38 = v210[1];
      *(v36 + 32) = v211;
      *v36 = v37;
      *(v36 + 16) = v38;
      memcpy((*(a1 + 496) + v62 * v60), (v197 + v62 * (v198 >> 15)), v62);
      ++*(*(a1 + 520) + 4 * v60);
      *(*(a1 + 544) + 8 * v60) = v63;
LABEL_18:
      v28 = *(v7 + 488);
LABEL_19:
      ++v29;
    }

    while (v29 < v28);
  }

  if (v201)
  {
    v97 = *(a1 + 464);
    if (v97 >= 1)
    {
      v98 = (1.0 / *(a1 + 292)) * (1.0 / *(a1 + 292));
      v99 = *(a1 + 472);
      if (v97 < 8)
      {
        v100 = 0;
LABEL_110:
        v104 = v97 - v100;
        v105 = &v99->f32[v100];
        do
        {
          *v105 = v98 * *v105;
          ++v105;
          --v104;
        }

        while (v104);
        goto LABEL_112;
      }

      v100 = v97 & 0x7FFFFFFFFFFFFFF8;
      v101 = v99 + 1;
      v102 = v97 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v103 = vmulq_n_f32(*v101, v98);
        v101[-1] = vmulq_n_f32(v101[-1], v98);
        *v101 = v103;
        v101 += 2;
        v102 -= 8;
      }

      while (v102);
      if (v97 != v100)
      {
        goto LABEL_110;
      }
    }
  }

LABEL_112:
  v204.tv_sec = 0;
  *&v204.tv_usec = 0;
  if (gettimeofday(&v204, 0) || (v204.tv_usec + 1000000 * v204.tv_sec) / 1000000.0 <= 1514764800.0)
  {
    goto LABEL_264;
  }

  v106 = *(a1 + 440);
  if (v106 >= 5001)
  {
    v107 = *(a1 + 16);
    v108 = malloc_type_calloc(v106, 1uLL, 0x1566FB6uLL);
    v109 = malloc_type_malloc(4 * *(a1 + 440), 0x100004052888210uLL);
    v110 = v109;
    v111 = *(a1 + 392);
    if (v111 <= 0)
    {
      v115 = *(a1 + 440);
      if (v115 >= 1)
      {
LABEL_130:
        v118 = 0;
        v119 = 0;
        do
        {
          if (v108[v118])
          {
            v120 = v119;
          }

          else
          {
            v120 = -1;
          }

          if (v108[v118])
          {
            ++v119;
          }

          *(v109 + v118++) = v120;
        }

        while (v115 != v118);
        v121 = 0;
        v122 = 0;
        v123 = 0;
        do
        {
          v124 = *(a1 + 448);
          if (v108[v122])
          {
            v125 = v124 == 0;
          }

          else
          {
            v125 = 1;
          }

          if (!v125)
          {
            v126 = (v124 + v121);
            v127 = v124 + 12 * v123;
            v128 = *v126;
            *(v127 + 8) = *(v126 + 2);
            *v127 = v128;
            ++v123;
            v115 = *(a1 + 440);
          }

          ++v122;
          v121 += 12;
        }

        while (v122 < v115);
LABEL_146:
        v129 = *(a1 + 456);
        if (v123 > v129)
        {
          v136 = 2 * v129;
          v125 = v129 == 0;
          v137 = 21;
          if (!v125)
          {
            v137 = v136;
          }

          if (v137 <= v123)
          {
            v138 = v123;
          }

          else
          {
            v138 = v137;
          }

          if (v138)
          {
            *(a1 + 448) = malloc_type_realloc(*(a1 + 448), 12 * v138, 0x10000403E1C8BA9uLL);
          }

          *(a1 + 456) = v138;
          v130 = v123 - v115;
          if (v123 <= v115)
          {
LABEL_148:
            *(a1 + 440) = v123;
            v131 = *(a1 + 464);
            if (v131 >= 1)
            {
              goto LABEL_149;
            }

            goto LABEL_165;
          }
        }

        else
        {
          v130 = v123 - v115;
          if (v123 <= v115)
          {
            goto LABEL_148;
          }
        }

        bzero((*(a1 + 448) + 12 * *(a1 + 440)), 12 * v130);
        *(a1 + 440) = v123;
        v131 = *(a1 + 464);
        if (v131 >= 1)
        {
LABEL_149:
          v132 = 0;
          v133 = 0;
          v134 = *(a1 + 472);
          do
          {
            if (v108[v132 / 9])
            {
              v135 = v134 == 0;
            }

            else
            {
              v135 = 1;
            }

            if (!v135)
            {
              *(v134 + 4 * v133++) = *(v134 + 4 * v132);
            }

            ++v132;
          }

          while (v131 != v132);
LABEL_166:
          v139 = *(a1 + 480);
          if (v133 > v139)
          {
            v146 = 2 * v139;
            v125 = v139 == 0;
            v147 = 64;
            if (!v125)
            {
              v147 = v146;
            }

            if (v147 <= v133)
            {
              v148 = v133;
            }

            else
            {
              v148 = v147;
            }

            if (v148)
            {
              *(a1 + 472) = malloc_type_realloc(*(a1 + 472), 4 * v148, 0x100004052888210uLL);
            }

            *(a1 + 480) = v148;
            v140 = v133 - v131;
            if (v133 <= v131)
            {
LABEL_168:
              *(a1 + 464) = v133;
              v141 = *(a1 + 488);
              if (v141 >= 1)
              {
                goto LABEL_169;
              }

              goto LABEL_185;
            }
          }

          else
          {
            v140 = v133 - v131;
            if (v133 <= v131)
            {
              goto LABEL_168;
            }
          }

          bzero((*(a1 + 472) + 4 * *(a1 + 464)), 4 * v140);
          *(a1 + 464) = v133;
          v141 = *(a1 + 488);
          if (v141 >= 1)
          {
LABEL_169:
            v142 = 0;
            v143 = 0;
            do
            {
              v144 = *(a1 + 496);
              if (v108[v142 / v107])
              {
                v145 = v144 == 0;
              }

              else
              {
                v145 = 1;
              }

              if (!v145)
              {
                *(v144 + v143++) = *(v144 + v142);
                v141 = *(a1 + 488);
              }

              ++v142;
            }

            while (v142 < v141);
LABEL_186:
            v149 = *(a1 + 504);
            if (v143 > v149)
            {
              v158 = 2 * v149;
              v125 = v149 == 0;
              v159 = 256;
              if (!v125)
              {
                v159 = v158;
              }

              if (v159 <= v143)
              {
                v160 = v143;
              }

              else
              {
                v160 = v159;
              }

              if (v160)
              {
                *(a1 + 496) = malloc_type_realloc(*(a1 + 496), v160, 0x100004077774924uLL);
              }

              *(a1 + 504) = v160;
              v150 = v143 - v141;
              if (v143 <= v141)
              {
LABEL_188:
                *(a1 + 488) = v143;
                v151 = *(a1 + 512);
                if (v151 >= 1)
                {
LABEL_189:
                  v152 = *(a1 + 520);
                  if (!v152)
                  {
                    v153 = 0;
                    v161 = *(a1 + 528);
                    if (v161 >= 0)
                    {
LABEL_205:
                      v162 = v153 - v151;
                      if (v153 <= v151)
                      {
                        goto LABEL_206;
                      }

                      goto LABEL_221;
                    }

LABEL_213:
                    v170 = 2 * v161;
                    v125 = v161 == 0;
                    v171 = 64;
                    if (!v125)
                    {
                      v171 = v170;
                    }

                    if (v171 <= v153)
                    {
                      v172 = v153;
                    }

                    else
                    {
                      v172 = v171;
                    }

                    if (v172)
                    {
                      *(a1 + 520) = malloc_type_realloc(*(a1 + 520), 4 * v172, 0x100004052888210uLL);
                    }

                    *(a1 + 528) = v172;
                    v162 = v153 - v151;
                    if (v153 <= v151)
                    {
LABEL_206:
                      *(a1 + 512) = v153;
                      v163 = *(a1 + 536);
                      if (v163 >= 1)
                      {
LABEL_207:
                        v164 = *(a1 + 544);
                        if (!v164)
                        {
                          v165 = 0;
                          v173 = *(a1 + 552);
                          if (v173 >= 0)
                          {
LABEL_224:
                            v174 = v165 - v163;
                            if (v165 <= v163)
                            {
                              goto LABEL_225;
                            }

                            goto LABEL_242;
                          }

LABEL_234:
                          v185 = 2 * v173;
                          v125 = v173 == 0;
                          v186 = 32;
                          if (!v125)
                          {
                            v186 = v185;
                          }

                          if (v186 <= v165)
                          {
                            v187 = v165;
                          }

                          else
                          {
                            v187 = v186;
                          }

                          if (v187)
                          {
                            *(a1 + 544) = malloc_type_realloc(*(a1 + 544), 8 * v187, 0x100004000313F17uLL);
                          }

                          *(a1 + 552) = v187;
                          v174 = v165 - v163;
                          if (v165 <= v163)
                          {
LABEL_225:
                            *(a1 + 536) = v165;
                            v175 = *(a1 + 560);
                            if (v175 >= 1)
                            {
                              goto LABEL_226;
                            }

                            goto LABEL_243;
                          }

LABEL_242:
                          bzero((*(a1 + 544) + 8 * *(a1 + 536)), 8 * v174);
                          *(a1 + 536) = v165;
                          v175 = *(a1 + 560);
                          if (v175 >= 1)
                          {
LABEL_226:
                            v176 = 0;
                            v177 = 0;
                            for (i = 0; i < v175; ++i)
                            {
                              v179 = *(a1 + 568);
                              if (v108[i])
                              {
                                v180 = v179 == 0;
                              }

                              else
                              {
                                v180 = 1;
                              }

                              if (!v180)
                              {
                                v181 = (v179 + v176);
                                v182 = (v179 + 48 * v177);
                                v183 = *v181;
                                v184 = v181[2];
                                v182[1] = v181[1];
                                v182[2] = v184;
                                *v182 = v183;
                                ++v177;
                                v175 = *(a1 + 560);
                              }

                              v176 += 48;
                            }

LABEL_244:
                            v188 = *(a1 + 576);
                            if (v177 > v188)
                            {
                              v191 = 2 * v188;
                              v125 = v188 == 0;
                              v192 = 5;
                              if (!v125)
                              {
                                v192 = v191;
                              }

                              if (v192 <= v177)
                              {
                                v193 = v177;
                              }

                              else
                              {
                                v193 = v192;
                              }

                              if (v193)
                              {
                                *(a1 + 568) = malloc_type_realloc(*(a1 + 568), 48 * v193, 0x1000040EED21634uLL);
                              }

                              *(a1 + 576) = v193;
                              v189 = v177 - v175;
                              if (v177 <= v175)
                              {
LABEL_246:
                                *(a1 + 560) = v177;
                                v190 = *(a1 + 392);
                                if (v190 < 1)
                                {
                                  goto LABEL_261;
                                }

                                goto LABEL_257;
                              }
                            }

                            else
                            {
                              v189 = v177 - v175;
                              if (v177 <= v175)
                              {
                                goto LABEL_246;
                              }
                            }

                            bzero((*(a1 + 568) + 48 * *(a1 + 560)), 48 * v189);
                            *(a1 + 560) = v177;
                            v190 = *(a1 + 392);
                            if (v190 < 1)
                            {
LABEL_261:
                              free(v108);
                              free(v110);
                              goto LABEL_262;
                            }

LABEL_257:
                            v194 = *(a1 + 400);
                            do
                            {
                              v195 = *v194;
                              if (v195 != -1)
                              {
                                LODWORD(v195) = *(v110 + v195);
                              }

                              *v194++ = v195;
                              --v190;
                            }

                            while (v190);
                            goto LABEL_261;
                          }

LABEL_243:
                          v177 = 0;
                          goto LABEL_244;
                        }

                        v165 = 0;
                        v166 = v108;
                        v167 = *(a1 + 544);
                        v168 = v163;
                        do
                        {
                          if (*v166++)
                          {
                            *(v164 + 8 * v165++) = *v167;
                          }

                          ++v167;
                          --v168;
                        }

                        while (v168);
LABEL_223:
                        v173 = *(a1 + 552);
                        if (v165 <= v173)
                        {
                          goto LABEL_224;
                        }

                        goto LABEL_234;
                      }

LABEL_222:
                      v165 = 0;
                      goto LABEL_223;
                    }

LABEL_221:
                    bzero((*(a1 + 520) + 4 * *(a1 + 512)), 4 * v162);
                    *(a1 + 512) = v153;
                    v163 = *(a1 + 536);
                    if (v163 >= 1)
                    {
                      goto LABEL_207;
                    }

                    goto LABEL_222;
                  }

                  v153 = 0;
                  v154 = v108;
                  v155 = *(a1 + 520);
                  v156 = v151;
                  do
                  {
                    if (*v154++)
                    {
                      *(v152 + 4 * v153++) = *v155;
                    }

                    ++v155;
                    --v156;
                  }

                  while (v156);
LABEL_204:
                  v161 = *(a1 + 528);
                  if (v153 <= v161)
                  {
                    goto LABEL_205;
                  }

                  goto LABEL_213;
                }

LABEL_203:
                v153 = 0;
                goto LABEL_204;
              }
            }

            else
            {
              v150 = v143 - v141;
              if (v143 <= v141)
              {
                goto LABEL_188;
              }
            }

            bzero((*(a1 + 496) + *(a1 + 488)), v150);
            *(a1 + 488) = v143;
            v151 = *(a1 + 512);
            if (v151 >= 1)
            {
              goto LABEL_189;
            }

            goto LABEL_203;
          }

LABEL_185:
          v143 = 0;
          goto LABEL_186;
        }

LABEL_165:
        v133 = 0;
        goto LABEL_166;
      }
    }

    else
    {
      v112 = 0;
      v113 = 0;
      do
      {
        v114 = *(*(a1 + 400) + 4 * v112);
        if (v114 != -1)
        {
          v108[v114] = 1;
          ++v113;
          v111 = *(a1 + 392);
        }

        ++v112;
      }

      while (v111 > v112);
      v115 = *(a1 + 440);
      if (v115 >= 1 && v113 >= 5001)
      {
        v117 = 0;
        do
        {
          if (v108[v117])
          {
            v108[v117] = 0;
            --v113;
            v115 = *(a1 + 440);
          }

          ++v117;
        }

        while (v115 > v117 && v113 > 5000);
      }

      if (v115 >= 1)
      {
        goto LABEL_130;
      }
    }

    v123 = 0;
    goto LABEL_146;
  }

LABEL_262:
  v204.tv_sec = 0;
  *&v204.tv_usec = 0;
  result = gettimeofday(&v204, 0);
  if (result || (v204.tv_usec + 1000000 * v204.tv_sec) / 1000000.0 <= 1514764800.0)
  {
    goto LABEL_264;
  }

  return result;
}

void triangulate_track(uint64_t a1, uint64_t *a2, uint64_t a3, float32x2_t *a4, uint64_t a5, uint64_t a6, float a7)
{
  v14 = *a2;
  v15 = malloc_type_malloc(48 * *a2, 0x1000040EED21634uLL);
  v16 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
  v24 = v16;
  if (v14 >= 1)
  {
    v25 = 0;
    v26 = v15 + 2;
    do
    {
      v27 = *(a2[1] + 4 * v25);
      v28 = *(a1 + 304) + 880 * (v27 & 0x7FFF);
      v19 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v28 + 32)), *(v28 + 48));
      v26[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(*v28), *(v28 + 16));
      v26[-1] = v19;
      v17 = *(v28 + 80);
      v18 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v28 + 64)), v17);
      *v26 = v18;
      v26 += 3;
      v16[v25++] = *(*(v28 + 368) + ((v27 >> 12) & 0xFFFF8));
    }

    while ((v14 & 0x7FFFFFFF) != v25);
  }

  if (!a5 && (v29 = a4->f32[0] - *(a3 + 36), v30 = a4->f32[1] - *(a3 + 40), *&v21 = a4[1].f32[0] - *(a3 + 44), *v17.f64 = ((*(a3 + 12) * v30) + (*a3 * v29)) + (*(a3 + 24) * *&v21), v20 = *(a3 + 4), v22 = *(a3 + 16), *v19.f32 = vmla_n_f32(vmla_n_f32(vmul_n_f32(*&v22, v30), *&v20, v29), *(a3 + 28), *&v21), *v18.f32 = vdiv_f32(*v19.f32, vdup_lane_s32(*&v17.f64[0], 0)), *(a4 + 4) = *v18.f32, v18.i32[0] = 1.0, a4->f32[0] = 1.0 / *v17.f64, *a2 == 1) && (v17.f64[0] = *v16, *(a4 + 4) = *v16, a6))
  {
    *a6 = 0u;
    *(a6 + 16) = 0u;
    v31 = (1.0 / a7) * (1.0 / a7);
    *(a6 + 16) = v31;
    *(a6 + 32) = v31;
    free(v15);
    free(v24);
  }

  else
  {
    *v17.f64 = 1.0 / a7;
    g_triangulate_inv_depthf(v15, v16, 0, v14, a3, a4, a4, a5, v17.f64[0], *v18.i64, *v19.i64, v20, v21, v22, v23, a6);
    free(v15);
    free(v24);
  }
}

double vl_par_default@<D0>(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 268);
  bzero(a1, 0x3F0uLL);
  *(a1 + 8) = 0x300000007;
  *(a1 + 20) = 0x412000003D75C28FLL;
  *(a1 + 28) = -3232969523;
  *(a1 + 36) = 1061997773;
  *(a1 + 40) = 0x700000003;
  *(a1 + 52) = 0xA3D75C28FLL;
  *(a1 + 60) = 0x53F000000;
  *(a1 + 68) = 0x3FC0000040900000;
  *(a1 + 76) = 0x3F4CCCCD00000024;
  *(a1 + 88) = 1000;
  *(a1 + 92) = 0;
  *(a1 + 100) = 0x40000000000;
  *(a1 + 112) = 942130604;
  *(a1 + 152) = 0x6400000002;
  *(a1 + 168) = 0x1400000000;
  *(a1 + 248) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 176) = 0x186A000000002;
  *(a1 + 184) = 0x3F59999A3BDA740ELL;
  *(a1 + 192) = 1061158912;
  *(a1 + 200) = 1065353216;
  *(a1 + 204) = xmmword_271106260;
  *(a1 + 220) = 0x8000000080000000;
  *(a1 + 228) = 1065353216;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 252) = 0x3FC000003F000000;
  *(a1 + 260) = 0x13F800000;
  *v2 = xmmword_271106270;
  *(a1 + 284) = 0;
  *(a1 + 288) = 1;
  *(a1 + 296) = 1070386381;
  *(a1 + 308) = 0;
  *(a1 + 300) = 0;
  *(a1 + 312) = 0xFFFFFFFFFLL;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = xmmword_271106280;
  *(a1 + 368) = 0x3C8EFA353F800000;
  *(a1 + 376) = 0x143DB2B8C2;
  *(a1 + 384) = 0x240000000;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0x3F8000003A0EFA35;
  *(a1 + 408) = 1061997773;
  *(a1 + 412) = xmmword_271106290;
  *(a1 + 428) = xmmword_2711062A0;
  *(a1 + 444) = 1084227584;
  *(a1 + 448) = 0x53DB2B8C2;
  *(a1 + 480) = 0x434800003F7D70A4;
  *(a1 + 488) = 1135542272;
  *(a1 + 496) = 0;
  *(a1 + 504) = xmmword_2711062B0;
  *(a1 + 520) = 0;
  *(a1 + 524) = xmmword_2711062C0;
  *(a1 + 540) = 0x3F8CCCCD00000005;
  *(a1 + 548) = xmmword_2711062D0;
  *(a1 + 564) = xmmword_2711062E0;
  *(a1 + 580) = 0x40A0000000000000;
  __asm { FMOV            V0.2S, #20.0 }

  *(a1 + 120) = _D0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x100000015;
  *(a1 + 588) = xmmword_2711062F0;
  *(a1 + 604) = 1;
  *(a1 + 608) = 0x600000000;
  *(a1 + 616) = 1077936128;
  *(a1 + 624) = 0x3FAACEE9F37BEBD5;
  *(a1 + 632) = xmmword_271106300;
  slam_tracker_vo_par_ver(0, __src);
  *(a1 + 648) = xmmword_271106310;
  *(a1 + 664) = 120;
  memcpy((a1 + 672), __src, 0x130uLL);
  *&result = 0xA00000000;
  *(a1 + 976) = xmmword_271106320;
  return result;
}

void *vl_kpts2_to_kpt_list(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a1;
  v6 = a2[2];
  if (*a1 <= v6)
  {
    v7 = v5 - v4;
    if (v5 <= v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    bzero((a2[1] + 288 * *a2), 288 * v7);
    v8 = *a1;
    *a2 = *a1;
    if (v8 < 1)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  v9 = 2 * v6;
  if (v9 <= v5)
  {
    v10 = *a1;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    a2[1] = malloc_type_realloc(a2[1], 288 * v10, 0x1000040A8CFB95EuLL);
  }

  a2[2] = v10;
  v7 = v5 - v4;
  if (v5 > v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = *a1;
  *a2 = *a1;
  if (v8 < 1)
  {
    goto LABEL_31;
  }

LABEL_12:
  LODWORD(v11) = *(a1 + 24);
  if (v11 < 1)
  {
    v17 = a1[1];
    v18 = a2[1];
    if (a1[3])
    {
      v19 = a1[4];
      v20 = (v18 + 16);
      do
      {
        v21 = *v17++;
        *(v20 - 2) = v21;
        LODWORD(v21) = *v19++;
        *v20 = v21;
        v20 += 72;
        --v8;
      }

      while (v8);
      goto LABEL_31;
    }

    if (v8 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = v8 & 0x7FFFFFFFFFFFFFFELL;
      v23 = v17 + 3;
      v24 = v8 & 0x7FFFFFFFFFFFFFFELL;
      v25 = a2[1];
      do
      {
        v26 = *v23;
        *(v25 + 288) = *(v23 - 1);
        *v25 = *(v23 - 3);
        *(v25 + 292) = v26;
        v23 += 4;
        v25 += 576;
        v24 -= 2;
      }

      while (v24);
      if (v8 == v22)
      {
        goto LABEL_31;
      }
    }

    v27 = v8 - v22;
    v28 = (v18 + 288 * v22);
    v29 = &v17[v22];
    do
    {
      v30 = *v29++;
      *v28 = v30;
      v28 += 36;
      --v27;
    }

    while (v27);
    goto LABEL_31;
  }

  v12 = 0;
  v13 = 32;
  do
  {
    v14 = a1[7];
    *(a2[1] + 288 * v12) = *(a1[1] + 8 * v12);
    if (v11 >= 1)
    {
      v15 = 0;
      v16 = v14 + v11 * v12;
      do
      {
        *(a2[1] + v13 + v15) = *(v16 + v15);
        ++v15;
        v11 = *(a1 + 24);
      }

      while (v15 < v11);
    }

    if (a1[3])
    {
      *(a2[1] + 288 * v12 + 16) = *(a1[4] + 4 * v12);
    }

    ++v12;
    v13 += 288;
  }

  while (*a1 > v12);
LABEL_31:
  v31 = a2[3];
  v32 = a1[9] >> 2;
  v33 = a2[5];
  if (v32 > v33)
  {
    v34 = 2 * v33;
    v35 = v33 == 0;
    v36 = 64;
    if (!v35)
    {
      v36 = v34;
    }

    if (v36 <= v32)
    {
      v37 = a1[9] >> 2;
    }

    else
    {
      v37 = v36;
    }

    if (v37)
    {
      a2[4] = malloc_type_realloc(a2[4], 4 * v37, 0x100004052888210uLL);
    }

    a2[5] = v37;
  }

  if (v32 > v31)
  {
    bzero((a2[4] + 4 * a2[3]), 4 * (v32 - v31));
  }

  v39 = a1[9];
  v38 = a1[10];
  a2[3] = v39 >> 2;
  v40 = a2[4];

  return memcpy(v40, v38, v39);
}

void vl_mat_imgnd_to_xyz(double *a1, double *a2, int a3, int a4, double a5, double a6, double a7)
{
  v83 = *MEMORY[0x277D85DE8];
  v9 = a3 * 0.5 + -0.5;
  v10 = a4 * 0.5 + -0.5;
  v11 = v9 * -0.0 + 1.0;
  v12 = v10 * -0.0 + 0.0;
  a1[2] = 0.0;
  a1[3] = 0.0;
  v13 = v9 * -0.0 + 0.0;
  v14 = v10 * -0.0 + 1.0;
  a1[6] = 0.0;
  a1[7] = 0.0;
  a1[10] = 1.0;
  a1[11] = 0.0;
  v15 = 0.0 - v9;
  v16 = 0.0 - v10;
  *(a1 + 7) = xmmword_271103540;
  v17 = -(v12 - v11 * 6.123234e-17);
  v18 = v12 * 6.123234e-17;
  v19 = v11 + v12 * 6.123234e-17;
  *a1 = v17;
  a1[1] = v19;
  v20 = -(v14 - v13 * 6.123234e-17);
  v21 = v13 + v14 * 6.123234e-17;
  a1[4] = v20;
  a1[5] = v21;
  v22 = -(v12 - v13 * 6.123234e-17);
  v23 = v13 + v18;
  a1[8] = v22;
  a1[9] = v23;
  v24 = -(v16 - v15 * 6.123234e-17);
  v25 = v15 + v16 * 6.123234e-17;
  a1[12] = v24;
  a1[13] = v25;
  v26 = a2[13] / a4;
  v27 = a2[12] / a3;
  *a1 = v17 * v26;
  a1[1] = v19 * v27;
  a1[2] = a7 * -0.0;
  a1[4] = v20 * v26;
  a1[5] = v21 * v27;
  a1[6] = a7 * -0.0;
  a1[8] = v22 * v26;
  a1[9] = v23 * v27;
  a1[10] = -a7;
  a1[12] = v24 * v26;
  a1[13] = v25 * v27;
  a1[14] = a7 * -0.0;
  v71 = 0x3FF0000000000000;
  v72 = 0u;
  v73 = 0u;
  v75 = 0;
  v76 = 0;
  v74 = 0x3FF0000000000000;
  v77 = -a5;
  v78 = -a6;
  v79 = 0x3FF0000000000000;
  v80 = 0u;
  v81 = 0u;
  v82 = 0x3FF0000000000000;
  g_mul_4x4(a1, a1, &v71);
  v28 = a2[1];
  v30 = a2[2];
  v29 = a2[3];
  v31 = a2[4];
  v32 = a2[5];
  v33 = a2[6];
  v34 = a2[7];
  v35 = a2[8];
  v36 = a1[1];
  v37 = a1[2];
  v38 = a1[3];
  v39 = *a1 * *a2 + 0.0 + v36 * v28 + v37 * v30 + v38 * 0.0;
  v40 = *a1 * v29 + 0.0 + v36 * v31 + v37 * v32 + v38 * 0.0;
  v41 = *a1 * v33 + 0.0 + v36 * v34 + v37 * v35 + v38 * 0.0;
  v42 = v38 + *a1 * 0.0 + 0.0 + v36 * 0.0 + v37 * 0.0;
  v43 = a1[4];
  v44 = a1[5];
  v45 = a1[6];
  v46 = a1[7];
  v47 = v43 * *a2 + 0.0 + v44 * v28 + v45 * v30 + v46 * 0.0;
  v48 = v43 * v29 + 0.0 + v44 * v31 + v45 * v32 + v46 * 0.0;
  v49 = v43 * v33 + 0.0 + v44 * v34 + v45 * v35 + v46 * 0.0;
  v50 = v46 + v43 * 0.0 + 0.0 + v44 * 0.0 + v45 * 0.0;
  v51 = a1[8];
  v52 = a1[9];
  v53 = a1[10];
  v54 = a1[11];
  v55 = v51 * *a2 + 0.0 + v52 * v28 + v53 * v30 + v54 * 0.0;
  v56 = v51 * v29 + 0.0 + v52 * v31 + v53 * v32 + v54 * 0.0;
  v57 = v51 * v33 + 0.0 + v52 * v34 + v53 * v35 + v54 * 0.0;
  v58 = v54 + v51 * 0.0 + 0.0 + v52 * 0.0 + v53 * 0.0;
  v59 = a1[12];
  v60 = a1[13];
  v61 = v59 * *a2 + 0.0 + v60 * v28;
  v62 = a1[14];
  v63 = a1[15];
  v64 = v61 + v62 * v30 + v63 * 0.0;
  v65 = v59 * v29 + 0.0 + v60 * v31 + v62 * v32 + v63 * 0.0;
  v66 = v59 * v33 + 0.0 + v60 * v34 + v62 * v35 + v63 * 0.0;
  v67 = v63 + v59 * 0.0 + 0.0 + v60 * 0.0 + v62 * 0.0;
  *a1 = v39;
  a1[1] = v40;
  a1[2] = v41;
  a1[3] = v42;
  a1[4] = v47;
  a1[5] = v48;
  a1[6] = v49;
  a1[7] = v50;
  a1[8] = v55;
  a1[9] = v56;
  a1[10] = v57;
  a1[11] = v58;
  a1[12] = v64;
  a1[13] = v65;
  a1[14] = v66;
  a1[15] = v67;
  v68 = a2[9];
  v69 = a2[10];
  v70 = a2[11];
  *a1 = v39 + v42 * v68;
  a1[1] = v40 + v42 * v69;
  a1[2] = v41 + v42 * v70;
  a1[4] = v47 + v50 * v68;
  a1[5] = v48 + v50 * v69;
  a1[6] = v49 + v50 * v70;
  a1[8] = v55 + v58 * v68;
  a1[9] = v56 + v58 * v69;
  a1[10] = v57 + v58 * v70;
  a1[12] = v64 + v67 * v68;
  a1[13] = v65 + v67 * v69;
  a1[14] = v66 + v67 * v70;
}

void _da_sort_indexed(char *a1, int64_t a2, void **a3, int64_t *a4, int64_t *a5, size_t a6, int (__cdecl *a7)(const void *, const void *))
{
  v14 = a6 + 8;
  v15 = malloc_type_malloc((a6 + 8) * a2, 0x100004000313F17uLL);
  if (*a5 < a2)
  {
    free(*a3);
    *a3 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
    *a5 = a2;
  }

  if (a2)
  {
    v24 = a4;
    v16 = 0;
    v17 = a1;
    v18 = v15;
    do
    {
      memcpy(v18, v17, a6);
      v19 = &v18[a6];
      *v19 = v16;
      v18 = v19 + 8;
      ++v16;
      v17 += a6;
    }

    while (a2 != v16);
    qsort(v15, a2, v14, a7);
    v20 = 0;
    v21 = v15;
    a4 = v24;
    do
    {
      memcpy(a1, v21, a6);
      v22 = &v21[a6];
      v23 = *v22;
      v21 = v22 + 8;
      *(*a3 + v20++) = v23;
      a1 += a6;
    }

    while (a2 != v20);
  }

  else
  {
    qsort(v15, 0, v14, a7);
  }

  *a4 = a2;

  free(v15);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}