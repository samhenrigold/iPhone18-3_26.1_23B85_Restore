float sub_162284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = *(a2 + 16 + v3);
    *&v8 = v7;
    v4 += v7;
    LODWORD(v8) = *(a3 + 16 + v3);
    v6 = v6 + v7 - v8;
    v9 = -v6;
    if (v6 >= 0.0)
    {
      v9 = v6;
    }

    v5 = v5 + v9;
    v3 += 4;
  }

  while (v3 != 1024);
  if (sub_160EF0(0xD8u, 7))
  {
    v10 = sub_160F34(0xD8u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    if (v10)
    {
      printf("%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d\n", v11, 216, v12, v5, v4);
      v13 = sub_175AE4();
      v15 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d", v13, 216, v15, v5, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d", v11, 216, v12, v5, v4);
    }
  }

  return v5 / v4;
}

BOOL sub_1623A8(float a1, float a2, float a3, float a4)
{
  v4 = a2;
  v5 = a3;
  if (v4 <= 0.00272072)
  {
    v9 = a4 <= 0.96605313 && v5 > 1.34009841;
  }

  else
  {
    v6 = a1;
    if (v6 <= 71.5876885)
    {
      v7 = v6 > 26.7539587;
      v8 = 23.2484817;
    }

    else
    {
      v7 = v4 <= 0.03005953;
      v8 = 4.51769352;
    }

    v9 = v5 > v8 && v7;
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v10 = sub_160F34(0xD8u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    if (v10)
    {
      printf("%lld %d AVE %s: MP: scene_change_detect() returns %d\n", v11, 216, v12, v9);
      v13 = sub_175AE4();
      v15 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_detect() returns %d", v13, 216, v15, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_detect() returns %d", v11, 216, v12, v9);
    }
  }

  return v9;
}

void sub_1624F0(uint64_t a1, uint64_t a2)
{
  if (sub_160EF0(0xD8u, 7))
  {
    v4 = sub_160F34(0xD8u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    v7 = *(a2 + 44);
    if (v4)
    {
      printf("%lld %d AVE %s: MP: accumulate_scene_info() display_order %d\n", v5, 216, v6, v7);
      v8 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: accumulate_scene_info() display_order %d", v8, 216, v31, *(a2 + 44));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: accumulate_scene_info() display_order %d", v5, 216, v6, v7);
    }
  }

  if (*(a2 + 44) != -1)
  {
    v9 = *(a1 + 25500) + 1;
    *(a1 + 25500) = v9;
    if (*(a2 + 1200))
    {
      ++*(a1 + 25496);
    }

    v10 = *(a2 + 64);
    *(a1 + 25504) += v10;
    if (*(a2 + 52) == 2)
    {
      *(a1 + 25516) += v10;
      ++*(a1 + 25512);
      v11 = *(a2 + 1556);
      *(a1 + 25576) = *(a1 + 25576) + v11;
    }

    else
    {
      v11 = *(a2 + 1556);
    }

    v12 = (a2 + 1220);
    v13 = *(a1 + 25760) + v11;
    *(a1 + 25760) = v13;
    *&v13 = v13 / v9;
    *(a1 + 25572) = LODWORD(v13);
    *(a1 + 25584) = vaddq_f64(*(a1 + 25584), vcvtq_f64_f32(*(a2 + 1560)));
    v14 = (a2 + 1460);
    v15 = (a1 + 25664);
    v16 = 16;
    v17 = (a2 + 1460);
    do
    {
      *(v15 - 16) += *(v17 - 16);
      v18 = *v17++;
      *v15 = v18 + *v15;
      ++v15;
      --v16;
    }

    while (v16);
    v19 = *(a2 + 1572);
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        *(a1 + 25552) += *(a2 + 64);
        ++*(a1 + 25548);
      }

      else if (v19 == 3)
      {
        *(a1 + 25564) += *(a2 + 64);
        ++*(a1 + 25560);
      }
    }

    else if (*(a2 + 1572))
    {
      if (v19 == 1)
      {
        *(a1 + 25540) += *(a2 + 64);
        ++*(a1 + 25536);
      }
    }

    else
    {
      *(a1 + 25528) += *(a2 + 64);
      ++*(a1 + 25524);
    }

    if (!*(a2 + 1200))
    {
      v20 = *(a1 + 25488);
      v21 = *(v20 + 1220);
      v22 = vadd_s32(v21, *v12);
      *(v20 + 1216) = ((*(a2 + 1216) * v12->u32[0]) + (*(v20 + 1216) * v21.u32[0])) / v22.u32[0];
      *(v20 + 1220) = v22;
      *(v20 + 1228) = vaddq_s64(*(v20 + 1228), *(a2 + 1228));
      *(v20 + 1244) = vaddq_s64(*(v20 + 1244), *(a2 + 1244));
      *(v20 + 1260) += *(a2 + 1260);
      *(v20 + 1268) = vaddq_f64(*(a2 + 1268), *(v20 + 1268));
      v23 = *(a2 + 1284);
      if (v23 >= *(v20 + 1284))
      {
        v23 = *(v20 + 1284);
      }

      *(v20 + 1284) = v23;
      v24 = *(v20 + 1288);
      if (v24 < *(a2 + 1288))
      {
        v24 = *(a2 + 1288);
      }

      *(v20 + 1288) = v24;
      *(v20 + 1292) += *(a2 + 1292);
      v25 = vaddq_s64(*(v20 + 1316), *(a2 + 1316));
      *(v20 + 1300) = vaddq_s32(*(v20 + 1300), *(a2 + 1300));
      *(v20 + 1316) = v25;
      v26 = vaddq_f64(*(a2 + 1348), *(v20 + 1348));
      *(v20 + 1332) = vaddq_s64(*(v20 + 1332), *(a2 + 1332));
      *(v20 + 1348) = v26;
      v27 = vaddq_f64(*(v20 + 1380), vcvtq_f64_f32(*(a2 + 1560)));
      *(v20 + 1364) = vaddq_f64(*(a2 + 1364), *(v20 + 1364));
      *(v20 + 1380) = v27;
      v28 = (v20 + 1460);
      v29 = 16;
      do
      {
        *(v28 - 16) += *(v14 - 16);
        v30 = *v14++;
        *v28 = v30 + *v28;
        ++v28;
        --v29;
      }

      while (v29);
    }

    sub_1628A8(a1);
  }
}

void sub_1628A8(uint64_t a1)
{
  v2 = a1 + 24576;
  if (sub_160EF0(0xD8u, 7))
  {
    v3 = sub_160F34(0xD8u);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: MP: seq_rc_info()\n", v4, 216, v5);
      v6 = sub_175AE4();
      v71 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: seq_rc_info()", v6, 216, v71);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: seq_rc_info()", v4, 216, v5);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v7 = sub_160F34(0xD8u);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    v10 = *(v2 + 920);
    if (v7)
    {
      printf("%lld %d AVE %s:  total_scenes %u\n", v8, 216, v9, v10);
      v11 = sub_175AE4();
      v72 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v11, 216, v72, *(v2 + 920));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v8, 216, v9, v10);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v12 = sub_160F34(0xD8u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *(v2 + 924);
    if (v12)
    {
      printf("%lld %d AVE %s:  cnt_All %u\n", v13, 216, v14, v15);
      v16 = sub_175AE4();
      v73 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v16, 216, v73, *(v2 + 924));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v13, 216, v14, v15);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v17 = sub_160F34(0xD8u);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    v20 = *(a1 + 25504);
    if (v17)
    {
      printf("%lld %d AVE %s:  bits_All %llu\n", v18, 216, v19, v20);
      v21 = sub_175AE4();
      v74 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v21, 216, v74, *(a1 + 25504));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v18, 216, v19, v20);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v22 = sub_160F34(0xD8u);
    v23 = sub_175AE4();
    v24 = sub_160F68(7);
    v25 = *(v2 + 948);
    if (v22)
    {
      printf("%lld %d AVE %s:  cnt_NORMAL %u\n", v23, 216, v24, v25);
      v26 = sub_175AE4();
      v75 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v26, 216, v75, *(v2 + 948));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v23, 216, v24, v25);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v27 = sub_160F34(0xD8u);
    v28 = sub_175AE4();
    v29 = sub_160F68(7);
    v30 = *(a1 + 25528);
    if (v27)
    {
      printf("%lld %d AVE %s:  bits_NORMAL %llu\n", v28, 216, v29, v30);
      v31 = sub_175AE4();
      v76 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v31, 216, v76, *(a1 + 25528));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v28, 216, v29, v30);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v32 = sub_160F34(0xD8u);
    v33 = sub_175AE4();
    v34 = sub_160F68(7);
    v35 = *(v2 + 960);
    if (v32)
    {
      printf("%lld %d AVE %s:  cnt_MIN %u\n", v33, 216, v34, v35);
      v36 = sub_175AE4();
      v77 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v36, 216, v77, *(v2 + 960));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v33, 216, v34, v35);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v37 = sub_160F34(0xD8u);
    v38 = sub_175AE4();
    v39 = sub_160F68(7);
    v40 = *(v2 + 964);
    if (v37)
    {
      printf("%lld %d AVE %s:  bits_MIN %llu\n", v38, 216, v39, v40);
      v41 = sub_175AE4();
      v78 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v41, 216, v78, *(v2 + 964));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v38, 216, v39, v40);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v42 = sub_160F34(0xD8u);
    v43 = sub_175AE4();
    v44 = sub_160F68(7);
    v45 = *(v2 + 972);
    if (v42)
    {
      printf("%lld %d AVE %s:  cnt_MAX %u\n", v43, 216, v44, v45);
      v46 = sub_175AE4();
      v79 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v46, 216, v79, *(v2 + 972));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v43, 216, v44, v45);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v47 = sub_160F34(0xD8u);
    v48 = sub_175AE4();
    v49 = sub_160F68(7);
    v50 = *(a1 + 25552);
    if (v47)
    {
      printf("%lld %d AVE %s:  bits_MAX %llu\n", v48, 216, v49, v50);
      v51 = sub_175AE4();
      v80 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v51, 216, v80, *(a1 + 25552));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v48, 216, v49, v50);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v52 = sub_160F34(0xD8u);
    v53 = sub_175AE4();
    v54 = sub_160F68(7);
    v55 = *(v2 + 984);
    if (v52)
    {
      printf("%lld %d AVE %s:  cnt_BLANK %u\n", v53, 216, v54, v55);
      v56 = sub_175AE4();
      v81 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v56, 216, v81, *(v2 + 984));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v53, 216, v54, v55);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v57 = sub_160F34(0xD8u);
    v58 = sub_175AE4();
    v59 = sub_160F68(7);
    v60 = *(v2 + 988);
    if (v57)
    {
      printf("%lld %d AVE %s:  bits_BLANK %llu\n", v58, 216, v59, v60);
      v61 = sub_175AE4();
      v82 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  bits_BLANK %llu", v61, 216, v82, *(v2 + 988));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_BLANK %llu", v58, 216, v59, v60);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v62 = sub_160F34(0xD8u);
    v63 = sub_175AE4();
    v64 = sub_160F68(7);
    if (v62)
    {
      printf("%lld %d AVE %s:  avg_qscale %f\n", v63, 216, v64, *(v2 + 996));
      v63 = sub_175AE4();
      v64 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s:  avg_qscale %f", v63, 216, v64, *(v2 + 996));
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v65 = sub_160F34(0xD8u);
    v66 = sub_175AE4();
    v67 = sub_160F68(7);
    if (v65)
    {
      printf("%lld %d AVE %s:  current_complexity %lf\n", v66, 216, v67, *(a1 + 25584));
      v66 = sub_175AE4();
      v67 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s:  current_complexity %lf", v66, 216, v67, *(a1 + 25584));
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v68 = sub_160F34(0xD8u);
    v69 = sub_175AE4();
    v70 = sub_160F68(7);
    if (v68)
    {
      printf("%lld %d AVE %s:  totalcplxsum %lf\n", v69, 216, v70, *(a1 + 25592));
      v69 = sub_175AE4();
      v70 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s:  totalcplxsum %lf", v69, 216, v70, *(a1 + 25592));
  }
}

_DWORD *sub_163124(uint64_t a1, _DWORD *a2)
{
  v59 = a2;
  if (sub_160EF0(0xD8u, 7))
  {
    v4 = sub_160F34(0xD8u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      if (a2)
      {
        v7 = a2[11];
      }

      else
      {
        v7 = -1;
      }

      printf("%lld %d AVE %s: MP: scene_change_pipeline() Entry stats %p display_order %d\n", v5, 216, v6, a2, v7);
      v5 = sub_175AE4();
      v6 = sub_160F68(7);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else if (!a2)
    {
LABEL_9:
      v8 = -1;
      goto LABEL_10;
    }

    v8 = a2[11];
LABEL_10:
    syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() Entry stats %p display_order %d", v5, 216, v6, a2, v8);
  }

  if (!*(a1 + 25488))
  {
    v9 = v59;
    v59[300] = 1;
    *(a1 + 25488) = v9;
    sub_163750((a1 + 25432), (a1 + 25488));
  }

  sub_163750((a1 + 25384), &v59);
  v11 = *(a1 + 25424);
  v12 = v59;
  if (v11 <= 1)
  {
    *(v59 + 151) = 0;
LABEL_19:
    v59 = 0;
    goto LABEL_20;
  }

  v13 = v11 - 2;
  v14 = *(a1 + 25416);
  v15 = v14 + v11 - 2;
  v16 = *(a1 + 25392);
  v17 = v15 >> 9;
  v18 = *(v16 + 8 * (v15 >> 9));
  v19 = v15 & 0x1FF;
  v20 = *(v18 + 8 * v19);
  if (v59[11] == -1)
  {
    v22 = *(v20 + 1208);
  }

  else
  {
    v21 = *(v59 + 304) + *(v20 + 1216);
    if (v21 < 1.0)
    {
      v21 = 1.0;
    }

    v22 = fmaxf(sub_162284(v10, (v59 + 40), v20 + 160) / (v21 * 0.0019531), 0.01);
    v14 = *(a1 + 25416);
    v16 = *(a1 + 25392);
    v12 = v59;
    v17 = (v14 + v13) >> 9;
    v19 = (v14 + v13) & 0x1FF;
  }

  v28 = *(*(*(v16 + 8 * v17) + 8 * v19) + 1208);
  if (v22 >= v28)
  {
    v28 = v22;
  }

  v12[302] = v22;
  v12[303] = v28;
  if (v11 < 4)
  {
    if (v11 == 2)
    {
      v38 = *(*(v16 + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v14 & 0x1FF));
      *(v38 + 1208) = *(*(*(v16 + (((v14 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + 1) & 0x1FF)) + 1208);
      sub_1624F0(a1, v38);
    }

    goto LABEL_19;
  }

  v29 = v11 + v14;
  v30 = *(*(v16 + (((v29 - 3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 3) & 0x1FF));
  v58 = v30;
  v31 = *(*(*(v16 + (((v29 - 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 4) & 0x1FF)) + 1212);
  v32 = *(v30 + 1208);
  v33 = *(*(*(v16 + (((v29 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 1) & 0x1FF)) + 1212);
  v34 = v32 / v31;
  v35 = v33 / v32;
  v36 = (v33 / v32) / (v32 / v31);
  if (*(v12 + 11) == -1 || *(v30 + 44) < 3u)
  {
    *(v30 + 1200) = *(v30 + 80) & 1;
    sub_1624F0(a1, v30);
    *(v30 + 1200) |= *(v30 + 44) == -1;
  }

  else
  {
    v37 = *(v30 + 36);
    *(v30 + 1200) = 0;
    if ((*(v30 + 80) & 1) != 0 || sub_1623A8(v32, (v33 / v32) / (v32 / v31), v32 / v31, v33 / v32) || *(*(a1 + 25488) + 1220) >= ((v37 * 6.0) + 0.5))
    {
      *(v30 + 1200) = 1;
    }

    sub_1624F0(a1, v30);
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v39 = sub_160F34(0xD8u);
    v40 = sub_175AE4();
    v41 = sub_160F68(7);
    v42 = *(v30 + 44);
    v43 = *(v30 + 1200);
    if (v39)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d\n", v40, 216, v41, v42, *(v30 + 80) & 1, v43);
      v44 = sub_175AE4();
      v45 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d", v44, 216, v45, *(v30 + 44), *(v30 + 80) & 1, *(v30 + 1200));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d", v40, 216, v41, v42, *(v30 + 80) & 1, v43);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v46 = sub_160F34(0xD8u);
    v47 = sub_175AE4();
    v48 = sub_160F68(7);
    v49 = v31;
    v50 = v32;
    v51 = v33;
    v52 = v36;
    v53 = v34;
    v54 = v35;
    if (v46)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() m0 %f m1 %f m2 %f m0m2 %f mdpa_ratio_p %f mdpa_ratio_n %f\n", v47, 216, v48, v49, v50, v51, v52, v53, v54);
      sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() m0 %f m1 %f m2 %f m0m2 %f mdpa_ratio_p %f mdpa_ratio_n %f");
  }

  if (*(v30 + 1200))
  {
    sub_163750((a1 + 25432), &v58);
    *(a1 + 25488) = v58;
  }

  v55 = vaddq_s64(*(a1 + 25416), xmmword_19DC30);
  v59 = *(*(*(a1 + 25392) + ((*(a1 + 25416) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 25416) & 0x1FFLL));
  *(a1 + 25416) = v55;
  sub_165498(a1 + 25384, 1);
  if (v59[300])
  {
    v59 = 0;
    v56 = *(a1 + 25464);
    if (*(*(*(a1 + 25440) + ((v56 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v56 & 0x1FF)) != *(a1 + 25488))
    {
      v59 = *(*(*(a1 + 25440) + ((*(a1 + 25464) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 25464) & 0x1FFLL));
      --*(a1 + 25472);
      *(a1 + 25464) = v56 + 1;
      sub_165498(a1 + 25432, 1);
    }
  }

LABEL_20:
  if (sub_160EF0(0xD8u, 7))
  {
    v23 = sub_160F34(0xD8u);
    v24 = sub_175AE4();
    v25 = sub_160F68(7);
    if (v23)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p\n", v24, 216, v25, v59);
      v26 = sub_175AE4();
      v57 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p", v26, 216, v57, v59);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p", v24, 216, v25, v59);
    }
  }

  return v59;
}

void sub_163750(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_164E20(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void sub_1637D8(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (sub_160EF0(0xD8u, 7))
    {
      v5 = sub_160F34(0xD8u);
      v6 = sub_175AE4();
      v7 = sub_160F68(7);
      v8 = *(a2 + 44);
      if (v5)
      {
        printf("%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d\n", v6, 216, v7, v8, *(a2 + 64), a3);
        v9 = sub_175AE4();
        v10 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d", v9, 216, v10, *(a2 + 44), *(a2 + 64), a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d", v6, 216, v7, v8, *(a2 + 64), a3);
      }
    }

    if (a3)
    {
      v11 = *(a2 + 64);
      if (v11 + a3 >= 1)
      {
        v12 = *(a2 + 68) * a3 / v11;
        if (sub_160EF0(0xD8u, 7))
        {
          v13 = sub_160F34(0xD8u);
          v14 = sub_175AE4();
          v15 = sub_160F68(7);
          v16 = *(a2 + 44);
          if (v13)
          {
            printf("%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d\n", v14, 216, v15, v16, *(a2 + 68), v12);
            v17 = sub_175AE4();
            v18 = sub_160F68(7);
            syslog(3, "%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d", v17, 216, v18, *(a2 + 44), *(a2 + 68), v12);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d", v14, 216, v15, v16, *(a2 + 68), v12);
          }
        }

        v19 = *(a2 + 68);
        v20 = *(a2 + 64) + a3;
        *(a2 + 1228) += a3;
        *(a2 + 1244) += v12;
        *(a2 + 64) = v20;
        *(a2 + 68) = v19 + v12;
        v21 = *(a2 + 52);
        if (v21 == 2)
        {
          v22 = 1252;
        }

        else
        {
          if (v21)
          {
LABEL_17:
            v23 = *(a2 + 1316);
            if (v23)
            {
              *(a2 + 1316) = v23 + a3;
            }

            v24 = *(a2 + 1324);
            if (v24)
            {
              *(a2 + 1324) = v24 + a3;
            }

            v25 = *(a2 + 1332);
            if (v25)
            {
              *(a2 + 1332) = v25 + a3;
            }

            v26 = *(a2 + 1340);
            if (v26)
            {
              *(a2 + 1340) = v26 + a3;
            }

            return;
          }

          v22 = 1260;
        }

        *(a2 + v22) += v12;
        goto LABEL_17;
      }
    }
  }
}

const void *sub_163A30(void *a1, uint64_t a2, int a3)
{
  v6 = (a1 + 3072);
  v7 = sub_160EF0(0xD8u, 7);
  if (v7)
  {
    v8 = sub_160F34(0xD8u);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      if (a2)
      {
        v11 = *(a2 + 44);
      }

      else
      {
        v11 = -1;
      }

      printf("%lld %d AVE %s: MP: enqueue_first_pass() display_order %d flush %d fixup_fifo_len %d\n", v9, 216, v10, v11, a3, v6[192]);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else if (!a2)
    {
LABEL_9:
      v12 = -1;
      goto LABEL_10;
    }

    v12 = *(a2 + 44);
LABEL_10:
    syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() display_order %d flush %d fixup_fifo_len %d", v9, 216, v10, v12, a3, v6[192]);
  }

  v13 = v6[192];
  if ((a3 & 1) == 0)
  {
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        v17 = 0;
        a1[(v6[193] == 0) + 3166] = a2;
        v18 = 2;
      }

      else
      {
        if (v13)
        {
          goto LABEL_66;
        }

        v17 = 0;
        a1[v6[193] + 3166] = a2;
        v18 = 1;
      }

      v6[192] = v18;
      goto LABEL_80;
    }

LABEL_21:
    v19 = a1 + 3166;
    sub_1637D8(v7, a1[v6[193] + 3166], *(a2 + 72));
    v20 = v6[193];
    v21 = a1[3170];
    v22 = a1[3171];
    if (v21 >= v22)
    {
      v29 = a1[3169];
      v30 = (v21 - v29) >> 3;
      if ((v30 + 1) >> 61)
      {
        goto LABEL_85;
      }

      v31 = v22 - v29;
      v32 = v31 >> 2;
      if (v31 >> 2 <= (v30 + 1))
      {
        v32 = v30 + 1;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        sub_1655A0((a1 + 3169), v33);
      }

      v44 = (8 * v30);
      *v44 = v19[v20];
      v23 = 8 * v30 + 8;
      v45 = a1[3169];
      v46 = a1[3170] - v45;
      v47 = v44 - v46;
      memcpy(v44 - v46, v45, v46);
      v48 = a1[3169];
      a1[3169] = v47;
      a1[3170] = v23;
      a1[3171] = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      *v21 = v19[v20];
      v23 = (v21 + 1);
    }

    a1[3170] = v23;
    sub_1655E8(a1[3169], v23, &v82, (v23 - a1[3169]) >> 3);
    if (a3)
    {
      --v6[192];
      v6[193] = v6[193] == 0;
    }

    else
    {
      v49 = v6[193] == 0;
      v19[v6[193]] = a2;
      v6[193] = v49;
    }

    goto LABEL_66;
  }

  if (v13 == 2)
  {
    goto LABEL_21;
  }

  if (v13 == 1)
  {
    v24 = a1 + 3166;
    v25 = v6[193];
    v26 = a1[3170];
    v27 = a1[3171];
    if (v26 >= v27)
    {
      v34 = a1[3169];
      v35 = (v26 - v34) >> 3;
      if ((v35 + 1) >> 61)
      {
        goto LABEL_85;
      }

      v36 = v27 - v34;
      v37 = v36 >> 2;
      if (v36 >> 2 <= (v35 + 1))
      {
        v37 = v35 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
        sub_1655A0((a1 + 3169), v38);
      }

      v50 = (8 * v35);
      *v50 = v24[v25];
      v28 = 8 * v35 + 8;
      v51 = a1[3169];
      v52 = a1[3170] - v51;
      v53 = v50 - v52;
      memcpy(v50 - v52, v51, v52);
      v54 = a1[3169];
      a1[3169] = v53;
      a1[3170] = v28;
      a1[3171] = 0;
      if (v54)
      {
        operator delete(v54);
      }
    }

    else
    {
      *v26 = v24[v25];
      v28 = (v26 + 1);
    }

    a1[3170] = v28;
    sub_1655E8(a1[3169], v28, &v81, (v28 - a1[3169]) >> 3);
    --v6[192];
    v6[193] = v6[193] == 0;
    if (a2)
    {
      v55 = v6[186];
      a1[v55 + 3149] = a2;
      if (v55 < 0x10)
      {
        v56 = v55 + 1;
      }

      else
      {
        v56 = 16;
      }

      v6[186] = v56;
    }

    goto LABEL_66;
  }

  if (v13)
  {
    goto LABEL_66;
  }

  v14 = a1[3170];
  v15 = a1[3171];
  if (v14 >= v15)
  {
    v39 = a1[3169];
    v40 = (v14 - v39) >> 3;
    if (!((v40 + 1) >> 61))
    {
      v41 = v15 - v39;
      v42 = v41 >> 2;
      if (v41 >> 2 <= (v40 + 1))
      {
        v42 = v40 + 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        sub_1655A0((a1 + 3169), v43);
      }

      v57 = (8 * v40);
      *v57 = a2;
      v16 = 8 * v40 + 8;
      v58 = a1[3169];
      v59 = a1[3170] - v58;
      v60 = v57 - v59;
      memcpy(v57 - v59, v58, v59);
      v61 = a1[3169];
      a1[3169] = v60;
      a1[3170] = v16;
      a1[3171] = 0;
      if (v61)
      {
        operator delete(v61);
      }

      goto LABEL_65;
    }

LABEL_85:
    sub_1654F8();
  }

  *v14 = a2;
  v16 = (v14 + 1);
LABEL_65:
  a1[3170] = v16;
  sub_1655E8(a1[3169], v16, &v80, (v16 - a1[3169]) >> 3);
LABEL_66:
  v62 = a1[3169];
  v63 = *v62;
  v64 = *(*v62 + 44);
  v65 = v6[226];
  if (v64 == -1 || v64 == v65)
  {
    v6[226] = v65 + 1;
    v67 = a1[3170];
    v68 = (v67 - v62) >> 3;
    if (v68 >= 2)
    {
      v69 = sub_165644(v62, &v83, v68);
      v70 = (v67 - 8);
      if ((v67 - 8) == v69)
      {
        *v69 = v63;
      }

      else
      {
        *v69 = *v70;
        *v70 = v63;
        sub_1655E8(v62, (v69 + 1), &v83, v69 + 1 - v62);
      }
    }

    a1[3170] -= 8;
    v71 = sub_163124(a1, v63);
    v17 = v71;
    if (v71)
    {
      v72 = v6[186];
      a1[v72 + 3149] = v71;
      if (v72 < 0x10)
      {
        v73 = v72 + 1;
      }

      else
      {
        v73 = 16;
      }

      v6[186] = v73;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_80:
  if (sub_160EF0(0xD8u, 7))
  {
    v74 = sub_160F34(0xD8u);
    v75 = sub_175AE4();
    v76 = sub_160F68(7);
    if (v74)
    {
      printf("%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p\n", v75, 216, v76, v17);
      v77 = sub_175AE4();
      v79 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p", v77, 216, v79, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p", v75, 216, v76, v17);
    }
  }

  return v17;
}

void sub_163FDC(uint64_t a1)
{
  v1 = a1 + 24576;
  if (sub_160EF0(0xD8u, 7))
  {
    v3 = sub_160F34(0xD8u);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: MP: FinalizeSeqRcInfo()\n", v4, 216, v5);
      v6 = sub_175AE4();
      v54 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: FinalizeSeqRcInfo()", v6, 216, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: FinalizeSeqRcInfo()", v4, 216, v5);
    }
  }

  v66 = 0;
  v67 = 0;
  v7 = (v1 + 1088);
  v2.n128_u64[0] = 0;
  v8 = 16;
  v9 = 0.1875;
  v68 = 0;
  do
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      v11 = *v7;
      *&v64 = *(v7 - 16);
      *(&v64 + 1) = v11 / v10;
      *(&v64 + 1) = __PAIR64__(LODWORD(v9), v2.n128_u32[0]);
      sub_164678(&v66, &v64);
    }

    v2.n128_f32[0] = v9;
    v9 = v9 + 0.1875;
    ++v7;
    --v8;
  }

  while (v8);
  v12 = v66;
  v13 = v67;
  if (v66 == v67)
  {
    LODWORD(v64) = 1;
    *(&v64 + 4) = 1069547520;
    HIDWORD(v64) = 1077936128;
    sub_164678(&v66, &v64);
    v12 = v66;
    v13 = v67;
  }

  v14 = v13 - v12;
  if (v14 <= 3)
  {
    do
    {
      v15 = 126 - 2 * __clz(v14);
      if (v13 == v12)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      v2 = sub_1656F8(v12, v13, &v64, v16, 1, v2);
      v12 = v66;
      v17 = v66[1];
      v18 = v66[2];
      v19 = (v18 + v17) * 0.5;
      v20 = *v66;
      v21 = *v66 >> 1;
      v2.n128_f32[0] = (v17 + v66[3]) * 0.5;
      v66[1] = v2.n128_f32[0];
      v12->n128_f32[2] = v17;
      v12->n128_u32[0] = LODWORD(v20) - (LODWORD(v20) >> 1);
      v22 = v67;
      if (v67 >= v68)
      {
        v23 = v67 - v12;
        v24 = v67 - v12;
        v25 = v24 + 1;
        if ((v24 + 1) >> 60)
        {
          sub_1654F8();
        }

        v26 = v68 - v12;
        if ((v68 - v12) >> 3 > v25)
        {
          v25 = v26 >> 3;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF0)
        {
          v27 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          sub_1656B0(&v66, v27);
        }

        v28 = 16 * v24;
        *v28 = v21;
        *(v28 + 4) = v19;
        *(v28 + 8) = v18;
        *(v28 + 12) = v17;
        v13 = (16 * v24 + 16);
        memcpy(0, v12, v23);
        v29 = v66;
        v66 = 0;
        v67 = v13;
        v68 = 0;
        if (v29)
        {
          operator delete(v29);
          v12 = v66;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v67->n128_u32[0] = v21;
        v22[1] = v19;
        v22[2] = v18;
        v13 = (v22 + 4);
        v22[3] = v17;
      }

      v67 = v13;
      v14 = v13 - v12;
    }

    while (v14 < 4);
  }

  v30 = 126 - 2 * __clz(v14);
  if (v13 == v12)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  sub_16689C(v12, v13, &v64, v31, 1, v2);
  v64 = 0uLL;
  v65 = 0;
  v32 = v67[-1].n128_f32[3];
  v33 = v66[2];
  sub_164750(&v64, 4uLL);
  v34 = 0;
  v35 = (v32 - v33) * 0.25;
  v36 = v33 + v35;
  v37 = (v33 + (v33 + v35)) * 0.5;
  do
  {
    v38 = v64 + v34;
    *(v38 + 4) = v37;
    *(v38 + 8) = v33;
    *(v38 + 12) = v36;
    *v38 = 0;
    if (sub_160EF0(0x2Eu, 8))
    {
      if (sub_160F34(0x2Eu))
      {
        v39 = sub_175AE4();
        v40 = sub_160F68(8);
        printf("%lld %d AVE %s: center %f left %f right %f count %u\n", v39, 46, v40, *(v64 + v34 + 4), *(v64 + v34 + 8), *(v64 + v34 + 12), *(v64 + v34));
      }

      v41 = sub_175AE4();
      v42 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: center %f left %f right %f count %u", v41, 46, v42, *(v64 + v34 + 4), *(v64 + v34 + 8), *(v64 + v34 + 12), *(v64 + v34));
    }

    v37 = v35 + v37;
    v33 = v35 + v33;
    v36 = v35 + v36;
    v34 += 16;
  }

  while (v34 != 64);
  __p = 0;
  v62 = 0;
  v63 = 0;
  v43 = sub_167C20(&__p, v66, v67, (v67 - v66) >> 4);
  sub_164780(v43, &__p, &v64);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v44 = sub_167C20(&v58, v66, v67, (v67 - v66) >> 4);
  sub_164780(v44, &v58, &v64);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  v45 = sub_167C20(&v55, v66, v67, (v67 - v66) >> 4);
  sub_164780(v45, &v55, &v64);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  v46 = (v1 + 1168);
  v47 = (v64 + 4);
  v48 = 4;
  do
  {
    *(v46 - 4) = *(v47 - 1);
    v49 = *v47;
    v47 += 4;
    *v46++ = v49;
    --v48;
  }

  while (v48);
  if (sub_160EF0(0x2Eu, 8))
  {
    if (sub_160F34(0x2Eu))
    {
      v50 = sub_175AE4();
      v51 = sub_160F68(8);
      printf("%lld %d AVE %s: log10_cplx quantized histogram : values %f %f %f %f counts %u %u %u %u\n", v50, 46, v51, *(v1 + 1168), *(v1 + 1172), *(v1 + 1176), *(v1 + 1180), *(v1 + 1152), *(v1 + 1156), *(v1 + 1160), *(v1 + 1164));
    }

    v52 = sub_175AE4();
    v53 = sub_160F68(8);
    syslog(3, "%lld %d AVE %s: log10_cplx quantized histogram : values %f %f %f %f counts %u %u %u %u", v52, 46, v53, *(v1 + 1168), *(v1 + 1172), *(v1 + 1176), *(v1 + 1180), *(v1 + 1152), *(v1 + 1156), *(v1 + 1160), *(v1 + 1164));
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_1645EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_164678(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1654F8();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1656B0(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_164750(const void **result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_167B28(result, a2 - v2);
  }
}

void sub_164780(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (sub_160EF0(0xD8u, 7))
  {
    v5 = sub_160F34(0xD8u);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: MP: QuantizeData()\n", v6, 216, v7);
      v8 = sub_175AE4();
      v43 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: QuantizeData()", v8, 216, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: QuantizeData()", v6, 216, v7);
    }
  }

  v10 = *a3;
  v9 = a3[1];
  if (*a3 < v9)
  {
    v11 = a2[1];
    v12 = 0.0;
    do
    {
      v13 = *a2;
      v14 = 0.0;
      if (*a2 >= v11)
      {
        v40 = ((v12 + 0.0) + 0.5);
        *v10 = v40;
      }

      else
      {
        v15 = 0.0;
        do
        {
          if (sub_160EF0(0x2Eu, 8))
          {
            v16 = sub_160F34(0x2Eu);
            v17 = sub_175AE4();
            v18 = sub_160F68(8);
            v19 = *(v13 + 8);
            v20 = *(v13 + 4);
            v21 = *(v13 + 12);
            v22 = *(v10 + 8);
            v23 = *(v10 + 4);
            v24 = *(v10 + 12);
            if (v16)
            {
              printf("%lld %d AVE %s: it %f %f %f q_it %f %f %f\n", v17, 46, v18, v19, v20, v21, v22, *(v10 + 4), v24);
              v17 = sub_175AE4();
              v18 = sub_160F68(8);
              v19 = *(v13 + 8);
              v20 = *(v13 + 4);
              v21 = *(v13 + 12);
              v22 = *(v10 + 8);
              v23 = *(v10 + 4);
              v24 = *(v10 + 12);
            }

            syslog(3, "%lld %d AVE %s: it %f %f %f q_it %f %f %f", v17, 46, v18, v19, v20, v21, v22, v23, v24);
          }

          v25 = *(v13 + 12);
          v26 = *(v10 + 8);
          if (v25 > v26)
          {
            v27 = *(v13 + 8);
            v28 = *(v10 + 12);
            if (v27 < v28)
            {
              v29 = v27 >= v26 ? *(v13 + 8) : *(v10 + 8);
              v30 = v28 >= v25 ? *(v13 + 12) : *(v10 + 12);
              v31 = ((v30 - v29) * *v13) / (v25 - v27);
              v32 = (v29 + v30) * 0.5;
              v14 = v14 + v31;
              v15 = v15 + (v31 * v32);
              if (sub_160EF0(0x2Eu, 8))
              {
                v33 = sub_160F34(0x2Eu);
                v34 = sub_175AE4();
                v35 = sub_160F68(8);
                v36 = v29;
                v37 = v30;
                v38 = v31;
                v39 = v32;
                if (v33)
                {
                  printf("%lld %d AVE %s: left_overlap %f right_overlap %f l_count %f center %f\n", v34, 46, v35, v36, v37, v38, v39);
                  v34 = sub_175AE4();
                  v35 = sub_160F68(8);
                }

                syslog(3, "%lld %d AVE %s: left_overlap %f right_overlap %f l_count %f center %f", v34, 46, v35, v36, v37, v38, v39);
              }
            }
          }

          v13 += 16;
          v11 = a2[1];
        }

        while (v13 < v11);
        v40 = ((v12 + v14) + 0.5);
        *v10 = v40;
        if (v14 > 0.0)
        {
          *(v10 + 4) = v15 / v14;
        }
      }

      v12 = v14 - v40;
      v10 += 16;
      v9 = a3[1];
    }

    while (v10 < v9);
    v10 = *a3;
  }

  if (v10 < v9)
  {
    do
    {
      v41 = v10 + 16;
      if (v10 + 16 != v9)
      {
        v42 = (*(v10 + 4) + *(v10 + 20)) * 0.5;
        *(v10 + 12) = v42;
        *(v10 + 24) = v42;
      }

      v10 += 16;
    }

    while (v41 < v9);
  }
}

void sub_164AF8(void *a1, uint64_t a2, FILE *a3)
{
  if (sub_160EF0(0xD8u, 7))
  {
    v6 = sub_160F34(0xD8u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: MP: %s\n", v7, 216, v8, "FlushStats");
      v9 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: %s", v9, 216, v23, "FlushStats");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: %s", v7, 216, v8, "FlushStats");
    }
  }

  v10 = 0;
  while (!v10 || *(v10 + 11) != -1)
  {
    v11 = sub_11CA40(a1);
    if (!v11)
    {
      break;
    }

    *(v11 + 44) = -1;
    v10 = sub_163A30(a1, v11, 0);
    if (!sub_160EF0(0xD8u, 7))
    {
      goto LABEL_19;
    }

    v12 = sub_160F34(0xD8u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      if (v10)
      {
        v15 = *(v10 + 11);
      }

      else
      {
        v15 = -1;
      }

      printf("%lld %d AVE %s: MP: %s flushes stats %p display_order %d\n", v13, 216, v14, "FlushStats", v10, v15);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      if (!v10)
      {
LABEL_17:
        v16 = -1;
        goto LABEL_18;
      }
    }

    else if (!v10)
    {
      goto LABEL_17;
    }

    v16 = *(v10 + 11);
LABEL_18:
    syslog(3, "%lld %d AVE %s: MP: %s flushes stats %p display_order %d", v13, 216, v14, "FlushStats", v10, v16);
LABEL_19:
    if (v10 && *(v10 + 11) != -1)
    {
      if (a2)
      {
        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
        CFDataAppendBytes(Mutable, v10, 1574);
        v18 = VTMultiPassStorageSetDataAtTimeStamp();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v18 && sub_160EF0(0x2Eu, 4))
        {
          v19 = sub_160F34(0x2Eu);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          if (v19)
          {
            printf("%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...\n", v20, 46, v21, "FlushStats");
            v22 = sub_175AE4();
            v24 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...", v22, 46, v24, "FlushStats");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...", v20, 46, v21, "FlushStats");
          }
        }
      }

      if (a3)
      {
        fseeko(a3, 1574 * *(v10 + 11) + 264, 0);
        fwrite(v10, 1uLL, 0x626uLL, a3);
      }
    }
  }

  sub_128654(a1);
  sub_163FDC(a1);
  if (a3)
  {
    fseek(a3, 0, 0);
    fwrite(a1 + 3187, 1uLL, 0x108uLL, a3);
  }
}

void sub_164E20(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_165450(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_164FF4(a1, &v9);
}

void sub_164FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_164FF4(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_165450(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_1650FC(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_165450(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_165208(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_165450(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_165310(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_165450(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_16541C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_165450(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_16541C();
}

uint64_t sub_165498(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

void sub_165510(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_16556C(exception, a1);
}

std::logic_error *sub_16556C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1655A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_16541C();
}

uint64_t sub_1655E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *(v9 + 44);
    if (*(*v5 + 44) > v10)
    {
      do
      {
        v11 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v11;
      }

      while (*(*v5 + 44) > v10);
      *v11 = v8;
    }
  }

  return result;
}

void *sub_165644(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3 + 1];
    v5 = (2 * v3) | 1;
    v6 = 2 * v3 + 2;
    if (v6 < a3)
    {
      v7 = *(*v4 + 44) > *(v4[1] + 44);
      v4 += v7;
      if (v7)
      {
        v5 = v6;
      }
    }

    *a1 = *v4;
    a1 = v4;
    v3 = v5;
  }

  while (v5 <= (a3 - 2) / 2);
  return v4;
}

void sub_1656B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_16541C();
}

__n128 sub_1656F8(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = &a2[-2];
  v11 = &a2[-3];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v47 = a2[-1].n128_u32[0];
        v45 = &a2[-1];
        if (v47 <= v12->n128_u32[0])
        {
          return result;
        }

LABEL_77:
        v76 = *v12;
        *v12 = *v45;
        result = v76;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v42 = v12 + 1;
      v43 = v12[1].n128_u32[0];
      v46 = a2[-1].n128_u32[0];
      v45 = &a2[-1];
      v44 = v46;
      if (v43 > v12->n128_u32[0])
      {
        if (v44 > v43)
        {
          goto LABEL_77;
        }

        v75 = *v12;
        *v12 = *v42;
        result = v75;
        *v42 = v75;
        if (*v45 <= v12[1].n128_u32[0])
        {
          return result;
        }

        result = *v42;
        *v42 = *v45;
LABEL_78:
        *v45 = result;
        return result;
      }

      if (v44 <= v43)
      {
        return result;
      }

      result = *v42;
      *v42 = *v45;
      *v45 = result;
      goto LABEL_109;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_165F20(v12, v12 + 1, &v12[2], v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_1660A4(v12, a2);
      }

      else if (v12 != a2)
      {
        v51 = &v12[1];
        while (v51 != a2)
        {
          v52 = v51;
          v53 = a1[1].n128_u64[0];
          if (v53 > a1->n128_u32[0])
          {
            v54 = a1[1].n128_u64[1];
            v55 = v52;
            do
            {
              result = v55[-1];
              *v55 = result;
              v56 = v55[-2].n128_u32[0];
              --v55;
            }

            while (v53 > v56);
            v55->n128_u64[0] = v53;
            v55->n128_u64[1] = v54;
          }

          v51 = &v52[1];
          a1 = v52;
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_1665EC(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = *v9;
    if (v15 >= 0x81)
    {
      v19 = v16->n128_u32[0];
      if (v16->n128_u32[0] <= v12->n128_u32[0])
      {
        if (v18 > v19)
        {
          v60 = *v16;
          *v16 = *v9;
          *v9 = v60;
          if (v16->n128_u32[0] > v12->n128_u32[0])
          {
            v61 = *v12;
            *v12 = *v16;
            *v16 = v61;
          }
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v64 = *v12;
          *v12 = *v16;
          *v16 = v64;
          if (*v9 <= v16->n128_u32[0])
          {
            goto LABEL_28;
          }

          v58 = *v16;
          *v16 = *v9;
        }

        else
        {
          v58 = *v12;
          *v12 = *v9;
        }

        *v9 = v58;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = v16 - 1;
      v23 = v16[-1].n128_u32[0];
      v24 = *v10;
      if (v23 <= v12[1].n128_u32[0])
      {
        if (v24 > v23)
        {
          v65 = *v22;
          *v22 = *v10;
          *v10 = v65;
          if (v22->n128_u32[0] > v21->n128_u32[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 <= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (*v10 <= v22->n128_u32[0])
          {
            goto LABEL_40;
          }

          v67 = *v22;
          *v22 = *v10;
          v25 = v67;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v31 = v16[1].n128_u32[0];
      v29 = v16 + 1;
      v30 = v31;
      v32 = *v11;
      if (v31 <= v12[2].n128_u32[0])
      {
        if (v32 > v30)
        {
          v68 = *v29;
          *v29 = *v11;
          *v11 = v68;
          if (v29->n128_u32[0] > v28->n128_u32[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 <= v30)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (*v11 <= v29->n128_u32[0])
          {
            goto LABEL_49;
          }

          v69 = *v29;
          *v29 = *v11;
          v33 = v69;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = v17->n128_u32[0];
      v37 = v29->n128_u32[0];
      if (v17->n128_u32[0] <= v22->n128_u32[0])
      {
        if (v37 > v36)
        {
          v71 = *v17;
          *v17 = *v29;
          *v29 = v71;
          if (v17->n128_u32[0] > v22->n128_u32[0])
          {
            v72 = *v22;
            *v22 = *v17;
            *v17 = v72;
          }
        }

        goto LABEL_58;
      }

      if (v37 <= v36)
      {
        v73 = *v22;
        *v22 = *v17;
        *v17 = v73;
        if (v29->n128_u32[0] <= v17->n128_u32[0])
        {
LABEL_58:
          v74 = *v12;
          *v12 = *v17;
          *v17 = v74;
          goto LABEL_59;
        }

        v70 = *v17;
        *v17 = *v29;
      }

      else
      {
        v70 = *v22;
        *v22 = *v29;
      }

      *v29 = v70;
      goto LABEL_58;
    }

    v20 = v12->n128_u32[0];
    if (v12->n128_u32[0] <= v17->n128_u32[0])
    {
      if (v18 > v20)
      {
        v62 = *v12;
        *v12 = *v9;
        *v9 = v62;
        if (v12->n128_u32[0] > v17->n128_u32[0])
        {
          v63 = *v17;
          *v17 = *v12;
          *v12 = v63;
        }
      }
    }

    else
    {
      if (v18 > v20)
      {
        v59 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v59;
        goto LABEL_59;
      }

      v66 = *v17;
      *v17 = *v12;
      *v12 = v66;
      if (*v9 > v12->n128_u32[0])
      {
        v59 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && v12[-1].n128_u32[0] <= v12->n128_u32[0])
    {
      v12 = sub_166128(v12, a2);
      goto LABEL_66;
    }

    v38 = sub_1661E8(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = sub_1662B0(v12, v38, result);
    v12 = (v38 + 1);
    if (sub_1662B0((v38 + 1), a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      result = sub_1656F8(a1, v38, a3, -v14, a5 & 1, result);
      v12 = (v38 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v48 = v12[1].n128_u32[0];
  v49 = v12 + 2;
  v50 = v12[2].n128_u32[0];
  if (v48 <= v12->n128_u32[0])
  {
    if (v50 > v48)
    {
      result = *v42;
      *v42 = *v49;
      *v49 = result;
      if (v12[1].n128_u32[0] > v12->n128_u32[0])
      {
        v78 = *v12;
        *v12 = *v42;
        result = v78;
        *v42 = v78;
      }
    }
  }

  else
  {
    if (v50 > v48)
    {
      v77 = *v12;
      *v12 = *v49;
      result = v77;
      goto LABEL_105;
    }

    v79 = *v12;
    *v12 = *v42;
    result = v79;
    *v42 = v79;
    if (v50 > v12[1].n128_u32[0])
    {
      result = *v42;
      *v42 = *v49;
LABEL_105:
      *v49 = result;
    }
  }

  if (*v9 <= v49->n128_u32[0])
  {
    return result;
  }

  result = *v49;
  *v49 = *v9;
  *v9 = result;
  if (v49->n128_u32[0] <= v42->n128_u32[0])
  {
    return result;
  }

  result = *v42;
  *v42 = *v49;
  *v49 = result;
LABEL_109:
  if (v12[1].n128_u32[0] > v12->n128_u32[0])
  {
    v80 = *v12;
    *v12 = *v42;
    result = v80;
    *v42 = v80;
  }

  return result;
}

__n128 sub_165F20(__n128 *a1, __n128 *a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = *a3;
  if (a2->n128_u32[0] <= a1->n128_u32[0])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] > a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 > a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 > a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] > a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 > *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 > *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 > a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] > a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

void *sub_1660A4(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (v6 > *v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 16);
            v8 -= 16;
            if (v6 <= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unsigned int *sub_166128(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (v3 <= *(a2 - 4))
  {
    v6 = a1 + 4;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 4;
    }

    while (v3 <= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[4];
      v4 += 4;
    }

    while (v3 <= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 4);
      a2 -= 4;
    }

    while (v3 > v7);
  }

  while (v4 < a2)
  {
    v11 = *v4;
    *v4 = *a2;
    *a2 = v11;
    do
    {
      v8 = v4[4];
      v4 += 4;
    }

    while (v3 <= v8);
    do
    {
      v9 = *(a2 - 4);
      a2 -= 4;
    }

    while (v3 > v9);
  }

  if (v4 - 4 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

__int128 *sub_1661E8(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = a1[++v2];
  }

  while (v4 < v5);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *(a2-- - 4);
    }

    while (v4 >= v9);
  }

  else
  {
    do
    {
      v8 = *(a2-- - 4);
    }

    while (v4 >= v8);
  }

  if (v6 < a2)
  {
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10++ + 4);
      }

      while (v4 < v13);
      do
      {
        v14 = *(v11-- - 4);
      }

      while (v4 >= v14);
    }

    while (v10 < v11);
    v7 = v10 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL sub_1662B0(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u32[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 > *a1)
      {
        if (v8 <= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u32[0] <= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 <= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) > *a1)
      {
        v42 = *a1;
        *a1 = *v6;
        *v6 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      sub_165F20(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 <= *a1)
    {
      if (v19 > v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u32[0] > v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 <= v17)
    {
      v39 = *a1;
      *a1 = *v6;
      *v6 = v39;
      if (v19 <= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u32[0] <= v18->n128_u32[0])
    {
      return 1;
    }

    v40 = *v18;
    *v18 = *v20;
    *v20 = v40;
    if (v18->n128_u32[0] <= v6->n128_u32[0])
    {
      return 1;
    }

    v41 = *v6;
    *v6 = *v18;
    *v18 = v41;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u32[0];
    v4 = a2 - 1;
    if (v5 <= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 <= *a1)
  {
    if (v12 > v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u32[0] > v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 <= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 <= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = v11->n128_u32[0];
    v35 = *v30;
    if (v35 > v34)
    {
      v36 = v31;
      while (1)
      {
        *(a1 + v36 + 48) = *(a1 + v36 + 32);
        if (v36 == -32)
        {
          break;
        }

        v37 = *(a1 + v36 + 16);
        v36 -= 16;
        if (v35 <= v37)
        {
          v38 = (a1 + v36 + 48);
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_1665EC(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_1667DC(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 > *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_1667DC(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v30 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = *(v16 + 8);
            v19 = v16 + 2;
            if (*(v19 - 4) <= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v30;
        }

        else
        {
          *v17 = *v6;
          *v6 = v30;
          v21 = (v17 - a1 + 16) >> 4;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &a1[v24];
            v26 = *v17;
            if (*v25 > *v17)
            {
              v27 = *(v17 + 1);
              do
              {
                v28 = v25;
                *v17 = *v25;
                if (!v24)
                {
                  break;
                }

                v24 = (v24 - 1) >> 1;
                v25 = &a1[v24];
                v17 = v28;
              }

              while (*v25 > v26);
              *v28 = v26;
              *(v28 + 1) = v27;
            }
          }
        }

        v22 = v8-- <= 2;
      }

      while (!v22);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1667DC(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      v10 = *v8;
      if (v9 < a3 && v10 > *(v8 + 2))
      {
        v10 = *(v8++ + 2);
        v7 = v9;
      }

      v11 = *a4;
      v12 = *a4;
      if (v12 >= v10)
      {
        do
        {
          v13 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 16 * v14);
          v15 = 2 * v7 + 2;
          v16 = *v8;
          if (v15 < a3 && v16 > *(v8 + 2))
          {
            v16 = *(v8++ + 2);
            v14 = v15;
          }

          a4 = v13;
          v7 = v14;
        }

        while (v12 >= v16);
        *v13 = v11;
      }
    }
  }

  return result;
}

__n128 sub_16689C(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[1];
        if (result.n128_f32[0] >= v12->n128_f32[1])
        {
          return result;
        }

LABEL_77:
        v64 = *v12;
        *v12 = *v9;
        result = v64;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v41 = v12 + 1;
      v42 = v12 + 2;
      v43 = v12[1].n128_f32[1];
      v44 = v12[2].n128_f32[1];
      if (v43 >= v12->n128_f32[1])
      {
        if (v44 < v43)
        {
          result = *v41;
          *v41 = *v42;
          *v42 = result;
          if (v12[1].n128_f32[1] < v12->n128_f32[1])
          {
            v67 = *v12;
            *v12 = *v41;
            result = v67;
            *v41 = v67;
          }
        }
      }

      else
      {
        if (v44 < v43)
        {
          v65 = *v12;
          *v12 = *v42;
          result = v65;
          goto LABEL_101;
        }

        v68 = *v12;
        *v12 = *v41;
        *v41 = v68;
        if (v44 < v12[1].n128_f32[1])
        {
          result = *v41;
          *v41 = *v42;
LABEL_101:
          *v42 = result;
        }
      }

      result.n128_u32[0] = a2[-1].n128_u32[1];
      if (result.n128_f32[0] < v12[2].n128_f32[1])
      {
        result = *v42;
        *v42 = *v9;
        *v9 = result;
        result.n128_u32[0] = v12[2].n128_u32[1];
        if (result.n128_f32[0] < v12[1].n128_f32[1])
        {
          result = *v41;
          *v41 = *v42;
          *v42 = result;
          result.n128_u32[0] = v12[1].n128_u32[1];
          if (result.n128_f32[0] < v12->n128_f32[1])
          {
            v69 = *v12;
            *v12 = *v41;
            result = v69;
            *v41 = v69;
          }
        }
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_1670C4(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_167248(v12, a2);
      }

      else
      {

        sub_1672D4(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_167850(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_f32[1];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_f32[1];
      if (v18 >= v12->n128_f32[1])
      {
        if (v17 < v18)
        {
          v48 = *v16;
          *v16 = *v9;
          *v9 = v48;
          if (v16->n128_f32[1] < v12->n128_f32[1])
          {
            v49 = *v12;
            *v12 = *v16;
            *v16 = v49;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v46 = *v12;
          *v12 = *v9;
          goto LABEL_27;
        }

        v52 = *v12;
        *v12 = *v16;
        *v16 = v52;
        if (a2[-1].n128_f32[1] < v16->n128_f32[1])
        {
          v46 = *v16;
          *v16 = *v9;
LABEL_27:
          *v9 = v46;
        }
      }

      v20 = v12 + 1;
      v21 = v16 - 1;
      v22 = v16[-1].n128_f32[1];
      v23 = a2[-2].n128_f32[1];
      if (v22 >= v12[1].n128_f32[1])
      {
        if (v23 < v22)
        {
          v53 = *v21;
          *v21 = *v10;
          *v10 = v53;
          if (v16[-1].n128_f32[1] < v12[1].n128_f32[1])
          {
            v25 = *v20;
            *v20 = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v23 < v22)
        {
          v24 = *v20;
          *v20 = *v10;
          goto LABEL_39;
        }

        v26 = *v20;
        *v20 = *v21;
        *v21 = v26;
        if (a2[-2].n128_f32[1] < v16[-1].n128_f32[1])
        {
          v55 = *v21;
          *v21 = *v10;
          v24 = v55;
LABEL_39:
          *v10 = v24;
        }
      }

      v27 = v12 + 2;
      v28 = v16 + 1;
      v29 = v16[1].n128_f32[1];
      v30 = a2[-3].n128_f32[1];
      if (v29 >= v12[2].n128_f32[1])
      {
        if (v30 < v29)
        {
          v56 = *v28;
          *v28 = *v11;
          *v11 = v56;
          if (v16[1].n128_f32[1] < v12[2].n128_f32[1])
          {
            v32 = *v27;
            *v27 = *v28;
            *v28 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v27;
          *v27 = *v11;
          goto LABEL_48;
        }

        v33 = *v27;
        *v27 = *v28;
        *v28 = v33;
        if (a2[-3].n128_f32[1] < v16[1].n128_f32[1])
        {
          v57 = *v28;
          *v28 = *v11;
          v31 = v57;
LABEL_48:
          *v11 = v31;
        }
      }

      v34 = v16->n128_f32[1];
      v35 = v16[1].n128_f32[1];
      if (v34 >= v16[-1].n128_f32[1])
      {
        if (v35 < v34)
        {
          v59 = *v16;
          *v16 = *v28;
          *v28 = v59;
          if (v16->n128_f32[1] < v16[-1].n128_f32[1])
          {
            v60 = *v21;
            *v21 = *v16;
            *v16 = v60;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v58 = *v21;
          *v21 = *v28;
          goto LABEL_57;
        }

        v61 = *v21;
        *v21 = *v16;
        *v16 = v61;
        if (v16[1].n128_f32[1] < v16->n128_f32[1])
        {
          v58 = *v16;
          *v16 = *v28;
LABEL_57:
          *v28 = v58;
        }
      }

      v62 = *v12;
      *v12 = *v16;
      *v16 = v62;
      goto LABEL_59;
    }

    v19 = v12->n128_f32[1];
    if (v19 >= v16->n128_f32[1])
    {
      if (v17 < v19)
      {
        v50 = *v12;
        *v12 = *v9;
        *v9 = v50;
        if (v12->n128_f32[1] < v16->n128_f32[1])
        {
          v51 = *v16;
          *v16 = *v12;
          *v12 = v51;
        }
      }
    }

    else
    {
      if (v17 < v19)
      {
        v47 = *v16;
        *v16 = *v9;
LABEL_36:
        *v9 = v47;
        goto LABEL_59;
      }

      v54 = *v16;
      *v16 = *v12;
      *v12 = v54;
      if (a2[-1].n128_f32[1] < v12->n128_f32[1])
      {
        v47 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && v12[-1].n128_f32[1] >= v12->n128_f32[1])
    {
      v12 = sub_167338(v12, a2);
      goto LABEL_66;
    }

    v36 = sub_167420(v12, a2);
    if ((v37 & 1) == 0)
    {
      goto LABEL_64;
    }

    v38 = sub_16750C(v12, v36, result);
    v12 = v36 + 1;
    if (sub_16750C(v36 + 1, a2, v39))
    {
      a4 = -v14;
      a2 = v36;
      if (v38)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v38)
    {
LABEL_64:
      result = sub_16689C(a1, v36, a3, -v14, a5 & 1, result);
      v12 = v36 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u32[0] = v12[1].n128_u32[1];
  v40 = a2[-1].n128_f32[1];
  if (result.n128_f32[0] < v12->n128_f32[1])
  {
    if (v40 < result.n128_f32[0])
    {
      goto LABEL_77;
    }

    v63 = *v12;
    *v12 = v12[1];
    result = v63;
    v12[1] = v63;
    result.n128_u32[0] = a2[-1].n128_u32[1];
    if (result.n128_f32[0] >= v12[1].n128_f32[1])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v9;
LABEL_78:
    *v9 = result;
    return result;
  }

  if (v40 < result.n128_f32[0])
  {
    result = v12[1];
    v12[1] = *v9;
    *v9 = result;
    result.n128_u32[0] = v12[1].n128_u32[1];
    if (result.n128_f32[0] < v12->n128_f32[1])
    {
      v66 = *v12;
      *v12 = v12[1];
      result = v66;
      v12[1] = v66;
    }
  }

  return result;
}

__n128 sub_1670C4(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f32[1];
  v7 = a3->n128_f32[1];
  if (v6 >= a1->n128_f32[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[1] < a1->n128_f32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f32[1] < a2->n128_f32[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[1] < a3->n128_f32[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f32[1] < a2->n128_f32[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[1] < a1->n128_f32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[1];
  if (result.n128_f32[0] < a4->n128_f32[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u32[0] = a4->n128_u32[1];
    if (result.n128_f32[0] < a3->n128_f32[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u32[0] = a3->n128_u32[1];
      if (result.n128_f32[0] < a2->n128_f32[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u32[0] = a2->n128_u32[1];
        if (result.n128_f32[0] < a1->n128_f32[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

void *sub_167248(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 2);
        if (*(&v6 + 1) < v4[1])
        {
          v7 = *(v4 + 3);
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 12);
            v8 -= 16;
            if (*(&v6 + 1) >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t sub_1672D4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*(&v4 + 1) < *(result + 4))
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 28);
          v6 -= 16;
        }

        while (*(&v4 + 1) < v7);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

unint64_t sub_167338(float *a1, float *a2)
{
  v2 = *a1;
  LODWORD(v3) = HIDWORD(*a1);
  if (v3 >= *(a2 - 3))
  {
    v7 = a1 + 4;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = v7[1];
      v7 += 4;
    }

    while (v3 >= v8);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 4);
      v6 = v4[5];
      v4 += 4;
    }

    while (v3 >= v6);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 4;
      v10 = *(a2 - 3);
      a2 -= 4;
    }

    while (v3 < v10);
  }

  while (v5 < v9)
  {
    v14 = *v5;
    *v5 = *v9;
    *v9 = v14;
    do
    {
      v11 = *(v5 + 20);
      v5 += 16;
    }

    while (v3 >= v11);
    do
    {
      v12 = *(v9 - 3);
      v9 -= 4;
    }

    while (v3 < v12);
  }

  if ((v5 - 16) != a1)
  {
    *a1 = *(v5 - 16);
  }

  *(v5 - 16) = v2;
  return v5;
}

__int128 *sub_167420(__int128 *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  LODWORD(v4) = HIDWORD(*a1);
  do
  {
    v5 = *(&a1[++v2] + 1);
  }

  while (v5 < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    while (v6 < a2)
    {
      v8 = a2 - 4;
      v10 = *(a2 - 3);
      a2 -= 4;
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 4;
      v9 = *(a2 - 3);
      a2 -= 4;
    }

    while (v9 >= v4);
  }

LABEL_9:
  if (v6 < v8)
  {
    v11 = v6;
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11++ + 5);
      }

      while (v14 < v4);
      do
      {
        v15 = *(v12 - 3);
        v12 -= 4;
      }

      while (v15 >= v4);
    }

    while (v11 < v12);
    v7 = v11 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL sub_16750C(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = a2 - 1;
      v5 = a1[1].n128_f32[1];
      v6 = a2[-1].n128_f32[1];
      if (v5 >= a1->n128_f32[1])
      {
        if (v6 < v5)
        {
          v21 = a1[1];
          a1[1] = *v4;
          *v4 = v21;
          if (a1[1].n128_f32[1] < a1->n128_f32[1])
          {
            v22 = *a1;
            *a1 = a1[1];
            a1[1] = v22;
          }
        }

        return 1;
      }

      if (v6 < v5)
      {
        goto LABEL_49;
      }

      v7 = *a1;
      *a1 = a1[1];
      a1[1] = v7;
      if (a2[-1].n128_f32[1] < a1[1].n128_f32[1])
      {
        v8 = a1[1];
        a1[1] = *v4;
LABEL_50:
        *v4 = v8;
        return 1;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_1670C4(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_14;
    }

    v4 = a1 + 1;
    v15 = a1 + 2;
    v16 = a2 - 1;
    v17 = a1[1].n128_f32[1];
    v18 = a1->n128_f32[1];
    v19 = a1[2].n128_f32[1];
    if (v17 >= v18)
    {
      if (v19 < v17)
      {
        v25 = *v4;
        *v4 = *v15;
        *v15 = v25;
        if (a1[1].n128_f32[1] < v18)
        {
          v26 = *a1;
          *a1 = *v4;
          *v4 = v26;
        }
      }
    }

    else
    {
      if (v19 < v17)
      {
        v20 = *a1;
        *a1 = *v15;
LABEL_45:
        *v15 = v20;
        goto LABEL_46;
      }

      v36 = *a1;
      *a1 = *v4;
      *v4 = v36;
      if (v19 < a1[1].n128_f32[1])
      {
        v20 = *v4;
        *v4 = *v15;
        goto LABEL_45;
      }
    }

LABEL_46:
    if (a2[-1].n128_f32[1] >= a1[2].n128_f32[1])
    {
      return 1;
    }

    v37 = *v15;
    *v15 = *v16;
    *v16 = v37;
    if (a1[2].n128_f32[1] >= a1[1].n128_f32[1])
    {
      return 1;
    }

    v38 = *v4;
    *v4 = *v15;
    *v15 = v38;
    if (a1[1].n128_f32[1] >= a1->n128_f32[1])
    {
      return 1;
    }

    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f32[1] < a1->n128_f32[1])
    {
      v4 = a2 - 1;
LABEL_49:
      v8 = *a1;
      *a1 = *v4;
      goto LABEL_50;
    }

    return 1;
  }

LABEL_14:
  v9 = a1 + 2;
  v10 = a1 + 1;
  v11 = a1[1].n128_f32[1];
  v12 = a1->n128_f32[1];
  v13 = a1[2].n128_f32[1];
  if (v11 >= v12)
  {
    if (v13 < v11)
    {
      v23 = *v10;
      *v10 = *v9;
      *v9 = v23;
      if (a1[1].n128_f32[1] < v12)
      {
        v24 = *a1;
        *a1 = *v10;
        *v10 = v24;
      }
    }
  }

  else
  {
    if (v13 >= v11)
    {
      v27 = *a1;
      *a1 = *v10;
      *v10 = v27;
      if (v13 >= a1[1].n128_f32[1])
      {
        goto LABEL_32;
      }

      v14 = *v10;
      *v10 = *v9;
    }

    else
    {
      v14 = *a1;
      *a1 = *v9;
    }

    *v9 = v14;
  }

LABEL_32:
  v28 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    v31 = *v28;
    LODWORD(v32) = HIDWORD(v28->n128_u64[0]);
    if (v32 < v9->n128_f32[1])
    {
      v33 = v29;
      while (1)
      {
        *(a1 + v33 + 48) = *(a1 + v33 + 32);
        if (v33 == -32)
        {
          break;
        }

        v34 = *(&a1[1].n128_f32[1] + v33);
        v33 -= 16;
        if (v32 >= v34)
        {
          v35 = (a1 + v33 + 48);
          goto LABEL_40;
        }
      }

      v35 = a1;
LABEL_40:
      *v35 = v31;
      if (++v30 == 8)
      {
        return &v28[1] == a2;
      }
    }

    v9 = v28;
    v29 += 16;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

float *sub_167850(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        sub_1679FC(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[1] < a1[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_1679FC(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v21 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[4 * v14];
          v17 = v16 + 4;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else if (v16[5] >= v16[9])
          {
            v14 = v18;
          }

          else
          {
            v17 = v16 + 8;
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 4;
        if (v17 == v6)
        {
          *v17 = v21;
        }

        else
        {
          *v17 = *v6;
          *v6 = v21;
          sub_167AC4(a1, (v17 + 4), a4, ((v17 + 4) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1679FC(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3 && *(v8 + 4) < *(v8 + 20))
      {
        v8 += 16;
        v7 = v9;
      }

      v10 = *a4;
      LODWORD(v11) = HIDWORD(*a4);
      if (*(v8 + 4) >= v11)
      {
        do
        {
          v12 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = result + 16 * v7;
          v14 = v13 + 2;
          if (v14 < a3 && *(v8 + 4) < *(v8 + 20))
          {
            v8 += 16;
            v7 = v14;
          }

          a4 = v12;
        }

        while (*(v8 + 4) >= v11);
        *v12 = v10;
      }
    }
  }

  return result;
}

uint64_t sub_167AC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v7 = (a2 - 16);
    v6 = *(a2 - 16);
    if (*(v5 + 4) < *(&v6 + 1))
    {
      v8 = *(a2 - 8);
      do
      {
        v9 = v5;
        *v7 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
        v7 = v9;
      }

      while (*(v5 + 4) < *(&v6 + 1));
      *v9 = v6;
      v9[1] = v8;
    }
  }

  return result;
}

void sub_167B28(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    a1[1] = &v5[16 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      sub_1654F8();
    }

    v9 = v7 >> 4;
    v10 = v4 - v6;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF0;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      sub_1656B0(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (16 * v9 + 16 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t *sub_167C20(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_167C9C(result, a4);
  }

  return result;
}

void sub_167C80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_167C9C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1656B0(a1, a2);
  }

  sub_1654F8();
}

const char *sub_167CD8(int a1)
{
  result = "v024\b";
  v3 = 86;
  while (*result != a1)
  {
    result += 44;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_167D10(_DWORD *a1)
{
  v1 = a1[8];
  v2 = &dword_19DC50;
  v3 = 86;
  while (v1 != -1 && v1 != v2[4] || a1[6] != v2[2] || a1[3] != *(v2 - 1) || a1[1] != *(v2 - 3) || a1[2] != *(v2 - 2) || a1[4] != *v2 || a1[5] != v2[1])
  {
    v2 += 11;
    if (!--v3)
    {
      return 0;
    }
  }

  return *(v2 - 4);
}

uint64_t sub_167DB0(int a1, int *a2, int a3)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v6 = sub_160F34(0xD4u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %d\n", v7, 212, v8, "AVE_PS_CalcSizeOfavcC", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %d", v7);
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v9 = sub_160F34(0xD4u);
    v10 = sub_175AE4();
    v11 = sub_160F68(8);
    v12 = *a2;
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d pInfo->iNum %d\n", v10, 212, v11, "AVE_PS_CalcSizeOfavcC", 80, v12);
      v13 = sub_175AE4();
      v14 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s:%d pInfo->iNum %d", v13, 212, v14, "AVE_PS_CalcSizeOfavcC", 80, *a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d pInfo->iNum %d", v10, 212, v11, "AVE_PS_CalcSizeOfavcC", 80, v12);
    }
  }

  v32 = a3;
  if (*a2 < 1)
  {
    v17 = 7;
  }

  else
  {
    v15 = 0;
    v16 = a2 + 4;
    v17 = 7;
    do
    {
      if (*v16)
      {
        if (*(v16 - 2) == a1 && (*(v16 - 3) & 0xFFFFFFFE) == 2)
        {
          v17 = (v17 + *v16 - 2);
          if (sub_160EF0(0xD4u, 8))
          {
            v18 = sub_160F34(0xD4u);
            v19 = sub_175AE4();
            v20 = sub_160F68(8);
            if (v18)
            {
              printf("%lld %d AVE %s: %s:%d i %d iSize %d size %d\n", v19, 212, v20, "AVE_PS_CalcSizeOfavcC", 92, v15, *v16, v17);
              v19 = sub_175AE4();
              v20 = sub_160F68(8);
            }

            syslog(3, "%lld %d AVE %s: %s:%d i %d iSize %d size %d", v19, 212, v20, "AVE_PS_CalcSizeOfavcC", 92, v15, *v16, v17);
          }
        }
      }

      ++v15;
      v16 += 4;
    }

    while (v15 < *a2);
  }

  if ((v32 - 6) >= 3)
  {
    v21 = v17;
  }

  else
  {
    v21 = (v17 + 4);
    if (sub_160EF0(0xD4u, 8))
    {
      v22 = sub_160F34(0xD4u);
      v23 = sub_175AE4();
      v24 = sub_160F68(8);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d size %d\n", v23, 212, v24, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
        v25 = sub_175AE4();
        v31 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s:%d size %d", v25, 212, v31, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d size %d", v23, 212, v24, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
      }
    }
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v26 = sub_160F34(0xD4u);
    v27 = sub_175AE4();
    v28 = sub_160F68(8);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d %d\n", v27, 212, v28, "AVE_PS_CalcSizeOfavcC", a1, a2, v32, v21);
      v29 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d", v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d", v27);
    }
  }

  return v21;
}

uint64_t sub_16821C(int a1, char *a2, unsigned int *a3, int *a4, _BYTE *a5, int a6)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v10 = sub_160F34(0xD4u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p %d\n", v11, 212, v12, "AVE_PS_Compose_avcC", a1, a2, a3, a4, a5, a6);
      v13 = sub_175AE4();
      v48 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p %d", v13, 212, v48, "AVE_PS_Compose_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p %d", v11, 212, v12, "AVE_PS_Compose_avcC");
    }
  }

  *a5 = 1;
  a5[1] = sub_132570(*a4);
  a5[2] = (*(a4 + 8) << 6) | (*(a4 + 4) << 7) | (32 * *(a4 + 12)) | (16 * *(a4 + 16)) | (8 * a4[5]) | (4 * a4[6]);
  a5[3] = sub_132AEC(a4[7]);
  a5[4] = -1;
  v14 = *a3;
  if (*a3 < 1)
  {
    goto LABEL_43;
  }

  v52 = a4;
  v15 = 0;
  v16 = 0;
  v17 = a2 + 4;
  v18 = a3 + 2;
  v19 = 6;
  do
  {
    v20 = v18[2];
    if (v20 && *v18 == a1 && *(v18 - 1) == 2)
    {
      v21 = v20 - 4;
      *&a5[v19] = bswap32(v20 - 4) >> 16;
      v22 = v19 + 2;
      memcpy(&a5[v22], &v17[v18[1]], (v20 - 4));
      v19 = v22 + v21;
      ++v16;
      v14 = *a3;
    }

    ++v15;
    v18 += 4;
  }

  while (v15 < v14);
  a4 = v52;
  if (!v16)
  {
LABEL_43:
    if (sub_160EF0(0xD4u, 4))
    {
      v34 = sub_160F34(0xD4u);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      if (!v34)
      {
        v51 = *a3;
        v50 = 191;
        v49 = v36;
        v41 = "%lld %d AVE %s: %s:%d %s | no SPS %d";
        goto LABEL_34;
      }

      printf("%lld %d AVE %s: %s:%d %s | no SPS %d\n", v35, 212, v36, "AVE_PS_Compose_avcC", 191, "cnt != 0", *a3);
      v37 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | no SPS %d", v37);
    }

LABEL_35:
    v33 = 4294966295;
    goto LABEL_36;
  }

  a5[5] = v16 | 0xE0;
  v23 = *a3;
  if (*a3 < 1)
  {
    goto LABEL_44;
  }

  v24 = 0;
  v25 = 0;
  v26 = v19 + 1;
  v27 = a3 + 2;
  do
  {
    v28 = v27[2];
    if (v28 && *v27 == a1 && *(v27 - 1) == 3)
    {
      v29 = v28 - 4;
      *&a5[v26] = bswap32(v28 - 4) >> 16;
      v30 = a3;
      v31 = v26 + 2;
      memcpy(&a5[v31], &v17[v27[1]], (v28 - 4));
      v26 = v31 + v29;
      a3 = v30;
      ++v25;
      v23 = *v30;
    }

    ++v24;
    v27 += 4;
  }

  while (v24 < v23);
  a4 = v52;
  if (!v25)
  {
LABEL_44:
    if (sub_160EF0(0xD4u, 4))
    {
      v38 = sub_160F34(0xD4u);
      v35 = sub_175AE4();
      v39 = sub_160F68(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | no PPS %d\n", v35, 212, v39, "AVE_PS_Compose_avcC", 226, "cnt != 0", *a3);
        v40 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | no PPS %d", v40);
        goto LABEL_35;
      }

      v51 = *a3;
      v50 = 226;
      v49 = v39;
      v41 = "%lld %d AVE %s: %s:%d %s | no PPS %d";
LABEL_34:
      syslog(3, v41, v35, 212, v49, "AVE_PS_Compose_avcC", v50, "cnt != 0", v51);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  a5[v19] = v25;
  if ((*v52 - 6) <= 2)
  {
    v32 = &a5[v26];
    *v32 = *(v52 + 36) | 0xFC;
    v32[1] = *(v52 + 44) | 0xF8;
    v32[2] = *(v52 + 48) | 0xF8;
    v32[3] = 0;
    v26 += 4;
  }

  if (v26 <= a6)
  {
    v33 = 0;
  }

  else
  {
    v33 = 4294966277;
  }

LABEL_36:
  if (sub_160EF0(0xD4u, 8))
  {
    v42 = sub_160F34(0xD4u);
    v43 = sub_175AE4();
    v44 = sub_160F68(8);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d\n", v43, 212, v44, "AVE_PS_Compose_avcC", a1, a2, a3, a4, a5, a6, v33);
      v45 = sub_175AE4();
      v46 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d", v45, 212, v46, "AVE_PS_Compose_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d", v43, 212, v44, "AVE_PS_Compose_avcC");
    }
  }

  return v33;
}

uint64_t sub_1687B8(int a1, unsigned int *a2, int a3, int a4)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v8 = sub_160F34(0xD4u);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %d %d\n", v9, 212, v10, "AVE_PS_CalcSizeOfhvcC", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %d %d", v9);
  }

  v24 = 0;
  v11 = *a2;
  if (v11 < 1)
  {
    v13 = 23;
  }

  else
  {
    v12 = a2 + 2;
    v13 = 23;
    do
    {
      v14 = v12[2];
      if (v14)
      {
        if (*v12 == a1)
        {
          v15 = *(v12 - 1);
          if ((v15 - 1) <= 2)
          {
            if ((*(&v24 + v15) & 1) == 0)
            {
              v13 += 3;
              *(&v24 + v15) = 1;
            }

            v13 = v14 + v13 - 2;
          }
        }
      }

      v12 += 4;
      --v11;
    }

    while (v11);
  }

  if (a3)
  {
    v16 = a3 + 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = a4 + 5;
  if (!a4)
  {
    v17 = 0;
  }

  v18 = (v17 + v16 + v13);
  if (sub_160EF0(0xD4u, 8))
  {
    v19 = sub_160F34(0xD4u);
    v20 = sub_175AE4();
    v21 = sub_160F68(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d %d %d\n", v20, 212, v21, "AVE_PS_CalcSizeOfhvcC", a1, a2, a3, a4, v18);
      v22 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d %d", v22, 212);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d %d", v20, 212);
    }
  }

  return v18;
}

uint64_t sub_168A1C(int a1, unsigned int a2, char *a3, int *a4, _BYTE *a5)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v9 = sub_160F34(0xD4u);
    v10 = sub_175AE4();
    v11 = sub_160F68(8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p %p %p\n", v10, 212, v11, "AVE_PS_ComposeNALUArray", a1, a2, a3, a4, a5);
      v12 = sub_175AE4();
      v42 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %d %p %p %p", v12, 212, v42);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %d %p %p %p", v10, 212, v11);
    }
  }

  if (a2 - 1 <= 2)
  {
    *a5 = (a2 - 1) | 0xA0;
    v13 = *a4;
    v46 = a4;
    if (*a4 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v44 = a3;
      v45 = a3 + 4;
      v16 = a4 + 1;
      v17 = 3;
      v18 = a1;
      do
      {
        v19 = &v16[4 * v14];
        v20 = v19[3];
        if (v20 && *v19 == __PAIR64__(v18, a2))
        {
          v49 = v15;
          *&a5[v17] = bswap32(v20 - 4) >> 16;
          v47 = v17 + 2;
          v48 = v20 - 4;
          v21 = (v20 - 4);
          memcpy(&a5[v47], &v45[v19[2]], v21);
          if (sub_160EF0(0xD4u, 8))
          {
            v22 = sub_160F34(0xD4u);
            v23 = sub_175AE4();
            v24 = sub_160F68(8);
            v25 = *v19;
            v26 = v19[1];
            if (v22)
            {
              printf("%lld %d AVE %s: type %d layer id %d\n", v23, 212, v24, *v19, v26);
              v23 = sub_175AE4();
              v24 = sub_160F68(8);
              v25 = *v19;
              v26 = v19[1];
            }

            syslog(3, "%lld %d AVE %s: type %d layer id %d", v23, 212, v24, v25, v26);
          }

          if (v21)
          {
            v27 = 0;
            v28 = v44;
            do
            {
              if (sub_160EF0(0xD4u, 8))
              {
                v29 = sub_160F34(0xD4u);
                v30 = sub_175AE4();
                v31 = sub_160F68(8);
                v32 = &v28[v19[2]];
                v33 = *v32;
                if (v29)
                {
                  printf("%lld %d AVE %s: %p: 0x%x\n", v30, 212, v31, &v28[v19[2]], v33);
                  v30 = sub_175AE4();
                  v31 = sub_160F68(8);
                  v32 = &v28[v19[2]];
                  v33 = *v32;
                }

                syslog(3, "%lld %d AVE %s: %p: 0x%x", v30, 212, v31, v32, v33);
              }

              v27 += 2;
              v28 += 2;
            }

            while (v27 < v21);
          }

          v17 = v47 + v48;
          v15 = v49 + 1;
          a4 = v46;
          v13 = *v46;
          v18 = a1;
        }

        ++v14;
      }

      while (v14 < v13);
      a3 = v44;
      if (v15)
      {
        *(a5 + 1) = BYTE1(v15) | (v15 << 8);
        goto LABEL_31;
      }
    }

    if (sub_160EF0(0xD4u, 4))
    {
      v34 = sub_160F34(0xD4u);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | no PS %d\n", v35, 212, v36, "AVE_PS_ComposeNALUArray", 489, "cnt != 0", *a4);
        v35 = sub_175AE4();
        sub_160F68(4);
        a4 = v46;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | no PS %d", v35);
    }
  }

  v17 = 4294966295;
LABEL_31:
  if (sub_160EF0(0xD4u, 8))
  {
    v37 = sub_160F34(0xD4u);
    v38 = sub_175AE4();
    v39 = sub_160F68(8);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %p %p %d\n", v38, 212, v39, "AVE_PS_ComposeNALUArray", a1, a2, a3, a4, a5, v17);
      v40 = sub_175AE4();
      v43 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %p %p %d", v40, 212, v43, "AVE_PS_ComposeNALUArray");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %p %p %d", v38, 212, v39, "AVE_PS_ComposeNALUArray");
    }
  }

  return v17;
}

uint64_t sub_168F1C(uint64_t a1, char *a2, int *a3, uint64_t a4, int a5, const void *a6, int a7, uint64_t a8, _BYTE *a9, int a10)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v14 = sub_160F34(0xD4u);
    v15 = sub_175AE4();
    v16 = sub_160F68(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d\n", v15, 212, v16, "AVE_PS_Compose_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v48 = sub_175AE4();
      v17 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d", v48, 212, v17, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d", v15, 212, v16, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }
  }

  *a9 = 1;
  v18 = *(a8 + 20);
  LOBYTE(v18) = (32 * sub_17D658(*(a8 + 24))) | (v18 << 6);
  a9[1] = v18 | sub_17D4BC(*(a8 + 28));
  sub_1700F4(a8, (a9 + 2), 4);
  sub_170148(a8, a9 + 6, 6u);
  a9[12] = sub_17DA3C(*(a8 + 80));
  *(a9 + 13) = 240;
  a9[15] = -4;
  a9[16] = *(a8 + 452) | 0xFC;
  a9[17] = *(a8 + 496) | 0xF8;
  a9[18] = *(a8 + 500) | 0xF8;
  *(a9 + 19) = 0;
  a9[21] = 11;
  v19 = sub_1696B0(a3, a1);
  v20 = a4 != 0;
  if (a6)
  {
    ++v20;
  }

  a9[22] = v20 + v19;
  v21 = sub_168A1C(a1, 1u, a2, a3, a9 + 23);
  if (v21 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v32 = sub_160F34(0xD4u);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose VPS failed\n", v33, 212, v34, "AVE_PS_Compose_hvcC", 593, "retOffset > 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose VPS failed");
    }

    goto LABEL_32;
  }

  v22 = (v21 + 23);
  v23 = sub_168A1C(a1, 2u, a2, a3, &a9[v22]);
  if (v23 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v35 = sub_160F34(0xD4u);
      v36 = sub_175AE4();
      v37 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v36, 212, v37, "AVE_PS_Compose_hvcC", 599, "retOffset > 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_32;
  }

  v24 = (v23 + v22);
  v25 = sub_168A1C(a1, 3u, a2, a3, &a9[v24]);
  if (v25 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v38 = sub_160F34(0xD4u);
      v39 = sub_175AE4();
      v40 = sub_160F68(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v39, 212, v40, "AVE_PS_Compose_hvcC", 605, "retOffset > 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_32:
    v41 = 4294966296;
    goto LABEL_33;
  }

  v26 = v25 + v24;
  if (a4)
  {
    v27 = &a9[v26];
    *v27 = -89;
    *(v27 + 1) = 256;
    *(v27 + 3) = ((a5 - 4) >> 8) | ((a5 - 4) << 8);
    v26 = (v26 + 5);
    memcpy(&a9[v26], (a4 + 4), a5 - 4);
    LODWORD(v26) = v26 + a5 - 4;
  }

  if (a6)
  {
    v28 = &a9[v26];
    *v28 = -89;
    *(v28 + 1) = 256;
    *(v28 + 3) = BYTE1(a7) | (a7 << 8);
    v26 = v26 + 5;
    memcpy(&a9[v26], a6, a7);
    LODWORD(v26) = v26 + a7;
  }

  if (v26 <= a10)
  {
    v41 = 0;
  }

  else
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v29 = sub_160F34(0xD4u);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d offset > num %d > %d\n", v30, 212, v31, "AVE_PS_Compose_hvcC", 651, v26, a10);
        v30 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d offset > num %d > %d", v30);
    }

    v41 = 4294966277;
  }

LABEL_33:
  if (sub_160EF0(0xD4u, 8))
  {
    v42 = sub_160F34(0xD4u);
    v43 = sub_175AE4();
    v44 = sub_160F68(8);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d\n", v43, 212, v44, "AVE_PS_Compose_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v41);
      v45 = sub_175AE4();
      v47 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d", v45, 212, v47, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d", v43, 212, v44, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }
  }

  return v41;
}

uint64_t sub_1696B0(int *a1, int a2)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v4 = sub_160F34(0xD4u);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", v5, 212, v6, "AVE_PS_CalcNumOfType", a1, a2);
      v7 = sub_175AE4();
      v20 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v7, 212, v20, "AVE_PS_CalcNumOfType", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v5, 212, v6, "AVE_PS_CalcNumOfType", a1, a2);
    }
  }

  if (a1)
  {
    v8 = 0;
    for (i = 1; i != 4; ++i)
    {
      if (*a1 >= 1)
      {
        v10 = *a1;
        v11 = a1 + 2;
        while (*(v11 - 1) != i || *v11 != a2)
        {
          v11 += 4;
          if (!--v10)
          {
            goto LABEL_14;
          }
        }

        v8 = (v8 + 1);
      }

LABEL_14:
      ;
    }
  }

  else
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v12 = sub_160F34(0xD4u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d\n", v13, 212, v14, "AVE_PS_CalcNumOfType", 386, "psInfo != __null", 0, a2);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d", v13, 212);
    }

    v8 = 0xFFFFFFFFLL;
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v15 = sub_160F34(0xD4u);
    v16 = sub_175AE4();
    v17 = sub_160F68(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v16, 212, v17, "AVE_PS_CalcNumOfType", a1, a2, v8);
      v18 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v16);
    }
  }

  return v8;
}

uint64_t sub_16998C(int a1, unsigned int *a2)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v4 = sub_160F34(0xD4u);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", v5, 212, v6, "AVE_PS_CalcSizeOflhvC", a1, a2);
      v7 = sub_175AE4();
      v18 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v7, 212, v18, "AVE_PS_CalcSizeOflhvC", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v5, 212, v6, "AVE_PS_CalcSizeOflhvC", a1, a2);
    }
  }

  v19 = 0;
  v8 = *a2;
  if (v8 < 1)
  {
    v10 = 6;
  }

  else
  {
    v9 = a2 + 2;
    v10 = 6;
    do
    {
      v11 = v9[2];
      if (v11)
      {
        if (*v9 == a1)
        {
          v12 = *(v9 - 1);
          if ((v12 & 0xFFFFFFFE) == 2)
          {
            if ((*(&v19 + v12) & 1) == 0)
            {
              LODWORD(v10) = v10 + 3;
              *(&v19 + v12) = 1;
            }

            v10 = v11 + v10 - 2;
          }
        }
      }

      v9 += 4;
      --v8;
    }

    while (v8);
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v13 = sub_160F34(0xD4u);
    v14 = sub_175AE4();
    v15 = sub_160F68(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v14, 212, v15, "AVE_PS_CalcSizeOflhvC", a1, a2, v10);
      v16 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v14);
    }
  }

  return v10;
}

uint64_t sub_169BA0(int a1, char *a2, int *a3, const void *a4, _BYTE *a5, int a6)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v12 = sub_160F34(0xD4u);
    v13 = sub_175AE4();
    v14 = sub_160F68(8);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %d\n", v13, 212, v14, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6);
      v15 = sub_175AE4();
      v31 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", v15, 212, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", v13, 212, v14);
    }
  }

  *a5 = -67047423;
  a5[4] = -53;
  a5[5] = sub_1696B0(a3, a1);
  v16 = sub_168A1C(a1, 2u, a2, a3, a5 + 6);
  if (v16 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v20 = sub_160F34(0xD4u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v21, 212, v22, "AVE_PS_Compose_lhvC", 789, "retOffset > 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_18;
  }

  v17 = (v16 + 6);
  v18 = sub_168A1C(a1, 3u, a2, a3, &a5[v17]);
  if (v18 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v23 = sub_160F34(0xD4u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v24, 212, v25, "AVE_PS_Compose_lhvC", 795, "retOffset > 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_18:
    v19 = 4294966296;
    goto LABEL_19;
  }

  if (v18 + v17 <= a6)
  {
    v19 = 0;
  }

  else
  {
    v19 = 4294966277;
  }

LABEL_19:
  if (sub_160EF0(0xD4u, 8))
  {
    v26 = sub_160F34(0xD4u);
    v27 = sub_175AE4();
    v28 = sub_160F68(8);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d %d\n", v27, 212, v28, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6, v19);
      v29 = sub_175AE4();
      v32 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v29, 212, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v27, 212, v28);
    }
  }

  return v19;
}

uint64_t sub_169F6C(uint64_t a1, char *a2, int *a3, int *a4, __CFData **a5)
{
  v9 = a1;
  if (sub_160EF0(0xD4u, 8))
  {
    v10 = sub_160F34(0xD4u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Make_avcC", v9, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v52 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v24 = sub_160F34(0xD4u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_avcC", 835, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", v9, a2, a3, a4, a5);
        v27 = sub_175AE4();
        v54 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_avcC", 835);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_avcC", 835);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = sub_167DB0(v9, a3, *a4);
  if (v14 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v28 = sub_160F34(0xD4u);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_avcC", 842, "size > 0", v9, a2, a3, a4, v14);
        v31 = sub_175AE4();
        v55 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_avcC", 842);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_avcC", 842);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a5;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v19 = sub_16821C(v9, a2, a3, a4, MutableBytePtr, v14);
      if (sub_160EF0(0xD4u, 8))
      {
        v20 = sub_160F34(0xD4u);
        v21 = sub_175AE4();
        v22 = sub_160F68(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d avcC data: size %d\n", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
          v23 = sub_175AE4();
          v53 = sub_160F68(8);
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v23, 212, v53, "AVE_PS_Make_avcC", 861, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
        }
      }

      v58 = v9;
      for (i = 0; i < v14; i += 2)
      {
        if (sub_160EF0(0xD4u, 8))
        {
          v46 = sub_160F34(0xD4u);
          v47 = sub_175AE4();
          v48 = sub_160F68(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = sub_175AE4();
            v51 = sub_160F68(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        v18 += 2;
      }

      v44 = v59;
      a5 = v60;
      *v60 = v59;
      v9 = v58;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (sub_160EF0(0xD4u, 4))
    {
      v36 = sub_160F34(0xD4u);
      v37 = sub_175AE4();
      v38 = sub_160F68(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", v9, a2, a3, a4, v16, v14);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", v9, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (sub_160EF0(0xD4u, 4))
  {
    v32 = sub_160F34(0xD4u);
    v33 = sub_175AE4();
    v34 = sub_160F68(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_avcC", 847, "pCFData != __null", v9, a2, a3, a4, v14);
      v35 = sub_175AE4();
      v56 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_avcC", 847);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_avcC", 847);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (sub_160EF0(0xD4u, 8))
  {
    v39 = sub_160F34(0xD4u);
    v40 = sub_175AE4();
    v41 = sub_160F68(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_avcC", v9, a2, a3, a4, a5, v19);
      v42 = sub_175AE4();
      v57 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_avcC");
    }
  }

  return v19;
}

uint64_t sub_16A75C(uint64_t a1, char *a2, int *a3, int *a4, __CFDictionary **a5)
{
  v47 = 0;
  if (sub_160EF0(0xD4u, 8))
  {
    v10 = sub_160F34(0xD4u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v41 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v41);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    *a5 = 0;
    v14 = sub_169F6C(a1, a2, a3, a4, &v47);
    if (v14)
    {
      v15 = v14;
      if (sub_160EF0(0xD4u, 4))
      {
        v16 = sub_160F34(0xD4u);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = sub_175AE4();
          v42 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v42, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }
      }

      v25 = 0;
      v27 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"avcC", v47);
        v26 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v26)
        {
          v27 = v26;
          CFDictionaryAddValue(v26, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms, v25);
          CFDictionaryAddValue(v27, kCMFormatDescriptionExtension_FormatName, @"H.264");
          v15 = 0;
          *a5 = v27;
          goto LABEL_33;
        }

        if (sub_160EF0(0xD4u, 4))
        {
          v32 = sub_160F34(0xD4u);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p\n", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932, "pDict != __null", a1, a2, a3, a4, v25);
            v35 = sub_175AE4();
            v45 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v35, 212, v45, "AVE_PS_Make_avcC_Dict", 932);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932);
          }
        }
      }

      else
      {
        if (sub_160EF0(0xD4u, 4))
        {
          v28 = sub_160F34(0xD4u);
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p\n", v29, 212, v30, "AVE_PS_Make_avcC_Dict", 924, "pDataDict != __null", a2, a3, a4, v47);
            v31 = sub_175AE4();
            v44 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v31, 212, v44, "AVE_PS_Make_avcC_Dict");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v29, 212, v30, "AVE_PS_Make_avcC_Dict");
          }
        }

        v25 = 0;
      }

      v27 = 0;
      v15 = 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v20 = sub_160F34(0xD4u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null", a1, a2, a3, a4, a5);
        v23 = sub_175AE4();
        v43 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v43, "AVE_PS_Make_avcC_Dict", 911);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911);
      }
    }

    v25 = 0;
    v27 = 0;
    v15 = 4294966296;
  }

LABEL_33:
  if (v47)
  {
    CFRelease(v47);
    v47 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v15 && v27)
  {
    CFRelease(v27);
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v36 = sub_160F34(0xD4u);
    v37 = sub_175AE4();
    v38 = sub_160F68(8);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5, v15);
      v39 = sub_175AE4();
      v46 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v39, 212, v46, "AVE_PS_Make_avcC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC_Dict");
    }
  }

  return v15;
}

uint64_t sub_16AE28(uint64_t a1, char *a2, unsigned int *a3, const void *a4, int a5, const void *a6, int a7, const void *a8, __CFData **a9)
{
  v13 = a9;
  if (sub_160EF0(0xD4u, 8))
  {
    v14 = sub_160F34(0xD4u);
    v15 = sub_175AE4();
    v16 = sub_160F68(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p\n", v15, 212, v16, "AVE_PS_Make_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v17 = sub_175AE4();
      v54 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v17, 212, v54, "AVE_PS_Make_hvcC", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v15, 212, v16, "AVE_PS_Make_hvcC", a1, a2, a3);
    }
  }

  if (!a2 || !a3 || !a8 || !a9 || (a4 == 0) != (a5 == 0))
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v18 = sub_160F34(0xD4u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p\n", v19, 212, v20, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1, a2, a3, a4, a5, a8, a9);
        v21 = sub_175AE4();
        v55 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v21, 212, v55, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v19, 212, v20, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }
    }

    goto LABEL_20;
  }

  v64 = a4;
  *a9 = 0;
  v22 = sub_1687B8(a1, a3, a5, a7);
  if (v22 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v37 = sub_160F34(0xD4u);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d\n", v38, 212, v39, "AVE_PS_Make_hvcC", 1010, "size > 0", a1, a2, a3, v64, a5, a8, v22);
        v40 = sub_175AE4();
        a4 = v64;
        v58 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d", v40, 212, v58, "AVE_PS_Make_hvcC", 1010, "size > 0", a1);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d", v38, 212, v39, "AVE_PS_Make_hvcC", 1010, "size > 0", a1);
      }

LABEL_20:
      v27 = 4294966296;
      goto LABEL_21;
    }

    v27 = 4294966296;
    goto LABEL_37;
  }

  Mutable = CFDataCreateMutable(0, v22);
  if (!Mutable)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v41 = sub_160F34(0xD4u);
      v42 = sub_175AE4();
      v43 = sub_160F68(4);
      if (v41)
      {
        v61 = v22;
        a4 = v64;
        printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d\n", v42, 212, v43, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1, a2, a3, v64, a5, a8, v61);
        v44 = sub_175AE4();
        v59 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d", v44, 212, v59, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d", v42, 212, v43, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1);
      }

      v27 = 4294966293;
      goto LABEL_21;
    }

    v27 = 4294966293;
LABEL_37:
    a4 = v64;
    goto LABEL_21;
  }

  v24 = Mutable;
  CFDataSetLength(Mutable, v22);
  MutableBytePtr = CFDataGetMutableBytePtr(v24);
  if (!MutableBytePtr)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v45 = sub_160F34(0xD4u);
      v46 = sub_175AE4();
      v47 = sub_160F68(4);
      if (v45)
      {
        v62 = v22;
        a4 = v64;
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d\n", v46, 212, v47, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2, a3, v64, a5, a8, v24, v62);
        v48 = sub_175AE4();
        v60 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d", v48, 212, v60, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d", v46, 212, v47, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2);
      }

      v27 = 4294966293;
    }

    else
    {
      v27 = 4294966293;
      a4 = v64;
    }

LABEL_53:
    CFRelease(v24);
    goto LABEL_21;
  }

  v26 = MutableBytePtr;
  v63 = a8;
  v27 = sub_168F1C(a1, a2, a3, v64, a5, a6, a7, a8, MutableBytePtr, v22);
  if (sub_160EF0(0xD4u, 8))
  {
    v28 = sub_160F34(0xD4u);
    v29 = sub_175AE4();
    v30 = sub_160F68(8);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d hvcC data: size %d\n", v29, 212, v30, "AVE_PS_Make_hvcC", 1030, v22);
      v31 = sub_175AE4();
      v56 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s:%d hvcC data: size %d", v31, 212, v56, "AVE_PS_Make_hvcC", 1030, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d hvcC data: size %d", v29, 212, v30, "AVE_PS_Make_hvcC", 1030, v22);
    }
  }

  for (i = 0; i < v22; i += 2)
  {
    if (sub_160EF0(0xD4u, 8))
    {
      v50 = sub_160F34(0xD4u);
      v51 = sub_175AE4();
      v52 = sub_160F68(8);
      v53 = *v26;
      if (v50)
      {
        printf("%lld %d AVE %s: %p: 0x%x\n", v51, 212, v52, v26, v53);
        v51 = sub_175AE4();
        v52 = sub_160F68(8);
        v53 = *v26;
      }

      syslog(3, "%lld %d AVE %s: %p: 0x%x", v51, 212, v52, v26, v53);
    }

    ++v26;
  }

  v13 = a9;
  *a9 = v24;
  a4 = v64;
  a8 = v63;
  if (v27)
  {
    goto LABEL_53;
  }

LABEL_21:
  if (sub_160EF0(0xD4u, 8))
  {
    v32 = sub_160F34(0xD4u);
    v33 = sub_175AE4();
    v34 = sub_160F68(8);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d\n", v33, 212, v34, "AVE_PS_Make_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, v13, v27);
      v35 = sub_175AE4();
      v57 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v35, 212, v57, "AVE_PS_Make_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v33, 212, v34, "AVE_PS_Make_hvcC", a1, a2, a3, a4);
    }
  }

  return v27;
}

uint64_t sub_16B828(uint64_t a1, char *a2, unsigned int *a3, const void *a4, int a5, const void *a6, int a7, const void *a8, __CFDictionary **a9)
{
  v54 = 0;
  if (sub_160EF0(0xD4u, 8))
  {
    v11 = sub_160F34(0xD4u);
    v12 = sub_175AE4();
    v13 = sub_160F68(8);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p\n", v12, 212, v13, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v14 = sub_175AE4();
      v42 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v14, 212, v42, "AVE_PS_Make_hvcC_Dict", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v12, 212, v13, "AVE_PS_Make_hvcC_Dict", a1, a2, a3);
    }
  }

  if (a2 && a3 && a8 && a9 && (a4 == 0) == (a5 == 0))
  {
    *a9 = 0;
    v19 = sub_16AE28(a1, a2, a3, a4, a5, a6, a7, a8, &v54);
    if (v19)
    {
      v20 = v19;
      if (sub_160EF0(0xD4u, 4))
      {
        v21 = sub_160F34(0xD4u);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d\n", v22, 212, v23, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2, a3, a4, a5, a8, a9, v20);
          v24 = sub_175AE4();
          v44 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d", v24, 212, v44, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d", v22, 212, v23, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2);
        }
      }

      v25 = 0;
      v26 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"hvcC", v54);
        v33 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v33)
        {
          v26 = v33;
          CFDictionaryAddValue(v33, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms, v25);
          CFDictionaryAddValue(v26, kCMFormatDescriptionExtension_FormatName, @"HEVC");
          v20 = 0;
          *a9 = v26;
          goto LABEL_19;
        }

        if (sub_160EF0(0xD4u, 4))
        {
          v38 = sub_160F34(0xD4u);
          v39 = sub_175AE4();
          v40 = sub_160F68(4);
          if (v38)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p\n", v39, 212, v40, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1, a2, a3, a4, a5, a8, v25);
            v41 = sub_175AE4();
            v47 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p", v41, 212, v47, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p", v39, 212, v40, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1);
          }
        }
      }

      else
      {
        if (sub_160EF0(0xD4u, 4))
        {
          v34 = sub_160F34(0xD4u);
          v35 = sub_175AE4();
          v36 = sub_160F68(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p\n", v35, 212, v36, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1, a2, a3, a4, a5, a8, v54);
            v37 = sub_175AE4();
            v46 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p", v37, 212, v46, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p", v35, 212, v36, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1);
          }
        }

        v25 = 0;
      }

      v26 = 0;
      v20 = 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v15 = sub_160F34(0xD4u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p\n", v16, 212, v17, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1, a2, a3, a4, a5, a8, a9);
        v18 = sub_175AE4();
        v43 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v18, 212, v43, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v16, 212, v17, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }
    }

    v25 = 0;
    v26 = 0;
    v20 = 4294966296;
  }

LABEL_19:
  if (v54)
  {
    CFRelease(v54);
    v54 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v20 && v26)
  {
    CFRelease(v26);
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v27 = sub_160F34(0xD4u);
    v28 = sub_175AE4();
    v29 = sub_160F68(8);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d\n", v28, 212, v29, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4, a5, a6, a7, a8, a9, v20);
      v30 = sub_175AE4();
      v45 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v30, 212, v45, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v28, 212, v29, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4);
    }
  }

  return v20;
}

uint64_t sub_16C1A8(uint64_t a1, char *a2, unsigned int *a3, const void *a4, __CFData **a5)
{
  v9 = a1;
  if (sub_160EF0(0xD4u, 8))
  {
    v10 = sub_160F34(0xD4u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Make_lhvC", v9, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v52 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v24 = sub_160F34(0xD4u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_lhvC", 1172, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", v9, a2, a3, a4, a5);
        v27 = sub_175AE4();
        v54 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_lhvC", 1172);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_lhvC", 1172);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = sub_16998C(v9, a3);
  if (v14 <= 0)
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v28 = sub_160F34(0xD4u);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_lhvC", 1179, "size > 0", v9, a2, a3, a4, v14);
        v31 = sub_175AE4();
        v55 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_lhvC", 1179);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_lhvC", 1179);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a4;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v58 = a5;
      v19 = sub_169BA0(v9, a2, a3, v60, MutableBytePtr, v14);
      if (sub_160EF0(0xD4u, 8))
      {
        v20 = sub_160F34(0xD4u);
        v21 = sub_175AE4();
        v22 = sub_160F68(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d lhvC data: size %d\n", v21, 212, v22, "AVE_PS_Make_lhvC", 1198, v14);
          v23 = sub_175AE4();
          v53 = sub_160F68(8);
          syslog(3, "%lld %d AVE %s: %s:%d lhvC data: size %d", v23, 212, v53, "AVE_PS_Make_lhvC", 1198, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d lhvC data: size %d", v21, 212, v22, "AVE_PS_Make_lhvC", 1198, v14);
        }
      }

      for (i = 0; i < v14; i += 2)
      {
        if (sub_160EF0(0xD4u, 8))
        {
          v46 = sub_160F34(0xD4u);
          v47 = sub_175AE4();
          v48 = sub_160F68(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = sub_175AE4();
            v51 = sub_160F68(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        ++v18;
      }

      a5 = v58;
      v44 = v59;
      *v58 = v59;
      a4 = v60;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (sub_160EF0(0xD4u, 4))
    {
      v36 = sub_160F34(0xD4u);
      v37 = sub_175AE4();
      v38 = sub_160F68(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_lhvC", 1191, "pData != __null", v9, a2, a3, a4, v16, v14);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_lhvC", 1191, "pData != __null", v9, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (sub_160EF0(0xD4u, 4))
  {
    v32 = sub_160F34(0xD4u);
    v33 = sub_175AE4();
    v34 = sub_160F68(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_lhvC", 1184, "pCFData != __null", v9, a2, a3, a4, v14);
      v35 = sub_175AE4();
      v56 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_lhvC", 1184);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_lhvC", 1184);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (sub_160EF0(0xD4u, 8))
  {
    v39 = sub_160F34(0xD4u);
    v40 = sub_175AE4();
    v41 = sub_160F68(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_lhvC", v9, a2, a3, a4, a5, v19);
      v42 = sub_175AE4();
      v57 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_lhvC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_lhvC");
    }
  }

  return v19;
}

uint64_t sub_16C9A8(uint64_t a1, char *a2, unsigned int *a3, const void *a4, const __CFDictionary *a5)
{
  v39 = 0;
  if (sub_160EF0(0xD4u, 8))
  {
    v10 = sub_160F34(0xD4u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Add_lhvC_Dict", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v34 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    v14 = sub_16C1A8(a1, a2, a3, a4, &v39);
    if (v14)
    {
      v15 = v14;
      if (sub_160EF0(0xD4u, 4))
      {
        v16 = sub_160F34(0xD4u);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v35, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0");
        }
      }
    }

    else
    {
      Value = CFDictionaryGetValue(a5, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms);
      if (Value)
      {
        CFDictionaryAddValue(Value, @"lhvC", v39);
        v15 = 0;
      }

      else
      {
        if (sub_160EF0(0xD4u, 4))
        {
          v25 = sub_160F34(0xD4u);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p\n", v26, 212, v27, "AVE_PS_Add_lhvC_Dict", 1342, "pDataDict != __null", a1, a2, a3, a4, v39);
            v28 = sub_175AE4();
            v37 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p", v28, 212, v37, "AVE_PS_Add_lhvC_Dict", 1342);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p", v26, 212, v27, "AVE_PS_Add_lhvC_Dict", 1342);
          }
        }

        v15 = 4294966293;
      }
    }
  }

  else
  {
    if (sub_160EF0(0xD4u, 4))
    {
      v20 = sub_160F34(0xD4u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Add_lhvC_Dict", 1331, "pInData != __null && pInfo != __null && pSPS != __null && pCFDict != __null", a1, a2, a3, a4, a5);
        v23 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v36, "AVE_PS_Add_lhvC_Dict", 1331);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Add_lhvC_Dict", 1331);
      }
    }

    v15 = 4294966296;
  }

  if (v39)
  {
    CFRelease(v39);
    v39 = 0;
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v29 = sub_160F34(0xD4u);
    v30 = sub_175AE4();
    v31 = sub_160F68(8);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v30, 212, v31, "AVE_PS_Add_lhvC_Dict", a1, a2, a3, a4, a5, v15);
      v32 = sub_175AE4();
      v38 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v32, 212, v38, "AVE_PS_Add_lhvC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v30, 212, v31, "AVE_PS_Add_lhvC_Dict");
    }
  }

  return v15;
}

uint64_t sub_16CEF8(double *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  memset(v39, 0, sizeof(v39));
  sub_CB274(a4, a5, v39, 32);
  v8 = a3;
  if (sub_160EF0(a2, a3))
  {
    v9 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (!v9 || (-a3 & 0x20) != 0)
      {
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v39, a1, *a1);
      }

      else
      {
        v26 = a1[1];
        v27 = a1[2];
        v28 = v26;
        v29 = ((v26 - v26) * 1000.0);
        v30 = v27;
        v31 = ((v27 - v27) * 1000.0);
        v32 = a1[3];
        v33 = a1[4];
        v34 = v32;
        v35 = v32 - v32;
        if (v29 < 0)
        {
          v29 = -v29;
        }

        if (v31 < 0)
        {
          v31 = -v31;
        }

        v36 = (v35 * 1000.0);
        if (v36 < 0)
        {
          v36 = -v36;
        }

        v37 = ((v33 - v33) * 1000.0);
        if (v37 < 0)
        {
          v37 = -v37;
        }

        printf("DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", v39, a1, *a1, v28, v29, v30, v31, v34, v36, v33, v37);
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v39, a1, *a1);
      }
    }

    else
    {
      v10 = a3 & 0x20;
      v11 = v9 ^ 1;
      v12 = sub_175AE4();
      v13 = sub_160F68(v8);
      v14 = a1[1];
      v15 = a1[2];
      v16 = v14;
      v17 = ((v14 - v14) * 1000.0);
      v18 = v15;
      v19 = ((v15 - v15) * 1000.0);
      v20 = a1[3];
      v21 = a1[4];
      v22 = v20;
      v23 = v20 - v20;
      if (v17 < 0)
      {
        v17 = -v17;
      }

      if (v19 < 0)
      {
        v19 = -v19;
      }

      v24 = (v23 * 1000.0);
      if (v24 < 0)
      {
        v24 = -v24;
      }

      v25 = ((v21 - v21) * 1000.0);
      if (v25 < 0)
      {
        v25 = -v25;
      }

      if (((v11 | (v10 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", v12, a2, v13, v39, a1, *a1, v16, v17, v18, v19, v22, v24, v21, v25);
        v12 = sub_175AE4();
        v13 = sub_160F68(v8);
      }

      syslog(3, "%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v12, a2, v13, v39);
    }
  }

  return 0;
}

uint64_t sub_16D34C(int a1, int a2, int *a3)
{
  if (sub_160EF0(0xE3u, 7))
  {
    v6 = sub_160F34(0xE3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p\n", v7, 227, v8, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %p", v7);
  }

  if (a3)
  {
    if (a1 > 0)
    {
      v9 = 1;
      v10 = a1;
LABEL_15:
      *a3 = v10;
      if (sub_160EF0(0xE3u, 8))
      {
        v14 = sub_160F34(0xE3u);
        v15 = sub_175AE4();
        v16 = sub_160F68(8);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %d %d %d %d %d\n", v15, 227, v16, "AVE_RC_DecideVBVMaxBitRate", 259, a1, a2, *a3, v9, 0);
          v15 = sub_175AE4();
          sub_160F68(8);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d", v15, 227);
      }

      v17 = 0;
      goto LABEL_23;
    }

    if (a2 > 0)
    {
      v9 = 2;
      v10 = a2;
      goto LABEL_15;
    }

    if (sub_160EF0(0xE3u, 4))
    {
      v23 = sub_160F34(0xE3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p\n", v24, 227, v25, "AVE_RC_DecideVBVMaxBitRate", 253, "0", a1, a2, a3);
        v24 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p", v24, 227);
    }

    v17 = 4294966288;
  }

  else
  {
    if (sub_160EF0(0xE3u, 4))
    {
      v11 = sub_160F34(0xE3u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p\n", v12, 227, v13, "AVE_RC_DecideVBVMaxBitRate", 237, "piVBVMaxBitRate != __null", a1, a2, 0);
        v12 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p", v12, 227);
    }

    v17 = 4294966295;
  }

LABEL_23:
  if (sub_160EF0(0xE3u, 7))
  {
    v18 = sub_160F34(0xE3u);
    v19 = sub_175AE4();
    v20 = sub_160F68(7);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %d\n", v19, 227, v20, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3, v17);
      v21 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v21, 227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v19, 227);
    }
  }

  return v17;
}

uint64_t sub_16D7F4(uint64_t a1, double *a2, double a3, double a4, double a5)
{
  if (sub_160EF0(0xE3u, 7))
  {
    v10 = sub_160F34(0xE3u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    v13 = ((a3 - a3) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a4 - a4) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a5 - a5) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a5 - a5) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v11, 227, v12, "AVE_RC_DecideVBVBufferSize", a3, v14, a4, v16, a5, v18, a1, a2);
      v19 = sub_175AE4();
      v57 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", v19, 227, v57, "AVE_RC_DecideVBVBufferSize");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", v11, 227, v12, "AVE_RC_DecideVBVBufferSize");
    }
  }

  if (a2)
  {
    if ((a1 & 0x80000000) != 0)
    {
      v20 = 10;
    }

    else
    {
      v20 = 20;
    }

    v21 = 2.5;
    if ((a1 & 0x80000000) == 0)
    {
      v21 = 1.0;
    }

    if (a5 <= 0.0)
    {
      v22 = v20;
    }

    else
    {
      v22 = 4;
    }

    if (a5 > 0.0)
    {
      v21 = a5;
    }

    if (a4 <= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 2;
    }

    if (a4 > 0.0)
    {
      v21 = a4;
    }

    if (a3 <= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    if (a3 > 0.0)
    {
      v21 = a3;
    }

    *a2 = v21;
    if (sub_160EF0(0xE3u, 8))
    {
      v25 = sub_160F34(0xE3u);
      v60 = sub_175AE4();
      v26 = sub_160F68(8);
      v27 = ((a3 - a3) * 1000.0);
      v28 = ((a4 - a4) * 1000.0);
      if (v27 >= 0)
      {
        v29 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v29 = -v27;
      }

      if (v28 >= 0)
      {
        v30 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v30 = -v28;
      }

      v31 = ((a5 - a5) * 1000.0);
      if (v31 >= 0)
      {
        v32 = ((a5 - a5) * 1000.0);
      }

      else
      {
        v32 = -v31;
      }

      v33 = *a2;
      v34 = ((*a2 - v33) * 1000.0);
      if (v34 < 0)
      {
        v34 = -v34;
      }

      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a3, v29, a4, v30, a5, v32, a1, v33, v34, v24, 0);
        v35 = sub_175AE4();
        v36 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v35, 227, v36, "AVE_RC_DecideVBVBufferSize", 332, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a3);
      }
    }

    v47 = 0;
  }

  else
  {
    if (sub_160EF0(0xE3u, 4))
    {
      v37 = sub_160F34(0xE3u);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      v40 = ((a3 - a3) * 1000.0);
      if (v40 >= 0)
      {
        v41 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v41 = -v40;
      }

      v42 = ((a4 - a4) * 1000.0);
      if (v42 >= 0)
      {
        v43 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v43 = -v42;
      }

      v44 = ((a5 - a5) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a5 - a5) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294, "pfVBVBufferSize != __null", a3, v41, a4, v43, a5, v45, a1, 0);
        v46 = sub_175AE4();
        v58 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v46, 227, v58, "AVE_RC_DecideVBVBufferSize", 294);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294);
      }
    }

    v47 = 4294966295;
  }

  if (sub_160EF0(0xE3u, 7))
  {
    v48 = sub_160F34(0xE3u);
    v49 = sub_175AE4();
    v50 = sub_160F68(7);
    v51 = ((a3 - a3) * 1000.0);
    if (v51 >= 0)
    {
      v52 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v52 = -v51;
    }

    v53 = ((a4 - a4) * 1000.0);
    if (v53 >= 0)
    {
      v54 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v54 = -v53;
    }

    if (v48)
    {
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a3, v52, a4, v54, a4, v54, a1, a2, v47);
      v55 = sub_175AE4();
      v59 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v55, 227, v59, "AVE_RC_DecideVBVBufferSize", a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a3);
    }
  }

  return v47;
}

uint64_t sub_16DDF4(uint64_t a1, double *a2, double a3, double a4, double a5, double a6)
{
  v6 = a2;
  if (sub_160EF0(0xE3u, 7))
  {
    v11 = sub_160F34(0xE3u);
    v66 = sub_175AE4();
    v12 = sub_160F68(7);
    v13 = ((a3 - a3) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a4 - a4) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a5 - a5) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a5 - a5) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    v19 = ((a6 - a6) * 1000.0);
    if (v19 >= 0)
    {
      v20 = ((a6 - a6) * 1000.0);
    }

    else
    {
      v20 = -v19;
    }

    v6 = a2;
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v66, 227, v12, "AVE_RC_DecideVBVInitialDelay", a3, v14, a4, v16, a5, v18, a6, v20, a1, a2);
      v67 = sub_175AE4();
      v63 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v67, 227, v63, "AVE_RC_DecideVBVInitialDelay", a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v66, 227, v12, "AVE_RC_DecideVBVInitialDelay", a3);
    }
  }

  if (v6)
  {
    if (a3 >= 0.0)
    {
      v21 = 1;
      v22 = a3;
    }

    else if (a4 >= 0.0)
    {
      v21 = 2;
      v22 = a4;
    }

    else if (a5 >= 0.0)
    {
      v21 = 4;
      v22 = a5 * a6 / 100.0;
    }

    else
    {
      if ((a1 & 0x80000000) != 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = 20;
      }

      v22 = 2.25;
      if ((a1 & 0x80000000) == 0)
      {
        v22 = 0.5;
      }
    }

    *v6 = v22;
    if (sub_160EF0(0xE3u, 8))
    {
      v36 = sub_160F34(0xE3u);
      v68 = sub_175AE4();
      v37 = sub_160F68(8);
      v38 = ((a3 - a3) * 1000.0);
      if (v38 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = -v38;
      }

      v40 = ((a4 - a4) * 1000.0);
      v41 = ((a5 - a5) * 1000.0);
      if (v40 >= 0)
      {
        v42 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v42 = -v40;
      }

      if (v41 >= 0)
      {
        v43 = ((a5 - a5) * 1000.0);
      }

      else
      {
        v43 = -v41;
      }

      v44 = ((a6 - a6) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a6 - a6) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      v46 = *v6;
      v47 = ((*v6 - v46) * 1000.0);
      if (v47 < 0)
      {
        v47 = -v47;
      }

      if (v36)
      {
        v48 = v39;
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a3, v39, a4, v42, a5, v43, a6, v45, a1, v46, v47, v21, 0);
        v69 = sub_175AE4();
        v49 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v69, 227, v49, "AVE_RC_DecideVBVInitialDelay", 409, a3, v48);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a3, v39);
      }
    }

    v35 = 0;
  }

  else
  {
    if (sub_160EF0(0xE3u, 4))
    {
      v23 = sub_160F34(0xE3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      v26 = ((a3 - a3) * 1000.0);
      if (v26 >= 0)
      {
        v27 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v27 = -v26;
      }

      v28 = ((a4 - a4) * 1000.0);
      if (v28 >= 0)
      {
        v29 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v29 = -v28;
      }

      v30 = ((a5 - a5) * 1000.0);
      if (v30 >= 0)
      {
        v31 = ((a5 - a5) * 1000.0);
      }

      else
      {
        v31 = -v30;
      }

      v32 = ((a6 - a6) * 1000.0);
      if (v32 >= 0)
      {
        v33 = ((a6 - a6) * 1000.0);
      }

      else
      {
        v33 = -v32;
      }

      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null", a3, v27, a4, v29, a5, v31, a6, v33, a1, 0);
        v34 = sub_175AE4();
        v64 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v34, 227, v64, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }
    }

    v35 = 4294966295;
  }

  if (sub_160EF0(0xE3u, 7))
  {
    v50 = sub_160F34(0xE3u);
    v51 = sub_175AE4();
    v52 = sub_160F68(7);
    v53 = ((a3 - a3) * 1000.0);
    if (v53 >= 0)
    {
      v54 = v53;
    }

    else
    {
      v54 = -v53;
    }

    v55 = ((a4 - a4) * 1000.0);
    if (v55 >= 0)
    {
      v56 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v56 = -v55;
    }

    v57 = ((a5 - a5) * 1000.0);
    if (v57 >= 0)
    {
      v58 = ((a5 - a5) * 1000.0);
    }

    else
    {
      v58 = -v57;
    }

    v59 = ((a6 - a6) * 1000.0);
    if (v59 >= 0)
    {
      v60 = ((a6 - a6) * 1000.0);
    }

    else
    {
      v60 = -v59;
    }

    if (v50)
    {
      v65 = v54;
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a3, v54, a4, v56, a5, v58, a6, v60, a1, a2, v35);
      v70 = sub_175AE4();
      v61 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v70, 227, v61, "AVE_RC_DecideVBVInitialDelay", a3, v65);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a3, v54);
    }
  }

  return v35;
}

uint64_t sub_16E570(CFDictionaryRef theDict, uint64_t a2)
{
  v14 = 0;
  if (theDict && a2)
  {
    v4 = sub_14BE4C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Acknowledged, a2);
    v5 = sub_14BE4C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Reserved, (a2 + 1)) + v4;
    v6 = sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceIndex, &v14);
    *(a2 + 2) = v14;
    v7 = v5 + v6 + sub_14BE4C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceAnchor, (a2 + 3));
    return v7 + sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_RefFrameNum, (a2 + 4));
  }

  else
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v9 = sub_160F34(0xE2u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 226, v11, "AVE_DRC_RetrieveMetaData", 25, "pDict != __null && pMetaData != __null", theDict, a2, 0);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 226, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_16E730(unsigned __int8 *a1, CFMutableDictionaryRef theDict)
{
  if (a1 && theDict)
  {
    v4 = sub_14B618(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Acknowledged, *a1, theDict);
    v5 = sub_14B618(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_Reserved, a1[1], theDict) + v4;
    v6 = sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceIndex, a1[2], theDict);
    v7 = v5 + v6 + sub_14B618(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_CadenceAnchor, a1[3], theDict);
    return v7 + sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData_RefFrameNum, *(a1 + 1), theDict);
  }

  else
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v9 = sub_160F34(0xE2u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 226, v11, "AVE_DRC_MakeMetaData", 60, "pMetaData != __null && pDict != __null", a1, theDict, 0);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 226, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_16E8E4(CFDictionaryRef theDict, _DWORD *a2)
{
  v33 = 0;
  if (theDict && a2)
  {
    sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_ReferenceType, &v33);
    *a2 = v33;
    sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumber, &v33);
    a2[1] = v33;
    sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumberFromIDR, &v33);
    a2[2] = v33;
    sub_14CBBC(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PresentationTimestamp, a2 + 2);
    sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PTSTimescale, &v33);
    a2[6] = v33;
    Value = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_OriginalBuffer);
    if (Value)
    {
      v5 = Value;
      v6 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width;
      sub_14C90C(Value, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width, &v33);
      a2[12] = v33;
      v7 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height;
      sub_14C90C(v5, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height, &v33);
      a2[14] = v33;
      v8 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID;
      sub_14C90C(v5, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID, &v33);
      a2[16] = v33;
      v9 = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_RVRABuffer);
      if (v9)
      {
        v10 = v9;
        sub_14C90C(v9, v6, &v33);
        a2[13] = v33;
        sub_14C90C(v10, v7, &v33);
        a2[15] = v33;
        sub_14C90C(v10, v8, &v33);
        a2[17] = v33;
        v11 = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData);
        v12 = sub_16E570(v11, (a2 + 18));
        if (v12 && sub_160EF0(0xE2u, 4))
        {
          v13 = sub_160F34(0xE2u);
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d\n", v14, 226, v15, "AVE_DPB_RetrieveSnapshotEntry", 150, "ret == 0", theDict, a2, v12);
            v16 = sub_175AE4();
            v29 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", v16, 226, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", v14, 226, v15);
          }
        }

        return v12;
      }

      if (sub_160EF0(0xE2u, 4))
      {
        v24 = sub_160F34(0xE2u);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d\n", v25, 226, v26, "AVE_DPB_RetrieveSnapshotEntry", 131, "pTmpDict != __null", theDict, a2, 0);
          v27 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v27, 226, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v25, 226, v26);
        }
      }
    }

    else if (sub_160EF0(0xE2u, 4))
    {
      v21 = sub_160F34(0xE2u);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d\n", v22, 226, v23, "AVE_DPB_RetrieveSnapshotEntry", 113, "pTmpDict != __null", theDict, a2, 0);
        v22 = sub_175AE4();
        v31 = sub_160F68(4);
      }

      else
      {
        v31 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d", v22, 226, v31);
    }

    return 4294966288;
  }

  if (sub_160EF0(0xE2u, 4))
  {
    v17 = sub_160F34(0xE2u);
    v18 = sub_175AE4();
    v19 = sub_160F68(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v18, 226, v19, "AVE_DPB_RetrieveSnapshotEntry", 92, "pDict != __null && pEntry != __null", theDict, a2, 0);
      v20 = sub_175AE4();
      v30 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v20, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v18, 226, v19);
    }
  }

  return 4294966295;
}

uint64_t sub_16EE2C(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_ReferenceType, *a1, a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumber, *(a1 + 4), a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_FrameNumberFromIDR, *(a1 + 8), a2);
    sub_14BC0C(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PresentationTimestamp, *(a1 + 16), a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_PTSTimescale, *(a1 + 24), a2);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width;
      sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Width, *(a1 + 48), Mutable);
      v7 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height;
      sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_Height, *(a1 + 56), v5);
      v8 = kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID;
      sub_14B9CC(kVTEncodeFrameOptionKey_DPB_ReferenceFrames_Buffers_IOSurfaceID, *(a1 + 64), v5);
      CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_OriginalBuffer, v5);
      CFRelease(v5);
      v9 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v9)
      {
        v10 = v9;
        sub_14B9CC(v6, *(a1 + 52), v9);
        sub_14B9CC(v7, *(a1 + 60), v10);
        sub_14B9CC(v8, *(a1 + 68), v10);
        CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_RVRABuffer, v10);
        CFRelease(v10);
        v11 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v11)
        {
          v12 = v11;
          v13 = sub_16E730((a1 + 72), v11);
          if (v13)
          {
            if (sub_160EF0(0xE2u, 4))
            {
              v14 = sub_160F34(0xE2u);
              v15 = sub_175AE4();
              v16 = sub_160F68(4);
              if (v14)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d\n", v15, 226, v16, "AVE_DPB_MakeSnapshotEntry", 227, "ret == 0", a1, a2, v13);
                v17 = sub_175AE4();
                v29 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", v17, 226, v29);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", v15, 226, v16);
              }
            }
          }

          else
          {
            CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames_SWRCMetaData, v12);
          }

          CFRelease(v12);
          return v13;
        }

        if (sub_160EF0(0xE2u, 4))
        {
          v26 = sub_160F34(0xE2u);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 223, "pTmpDict != __null", a1, a2, 0);
            goto LABEL_24;
          }

LABEL_30:
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v23, 226, v24);
        }

        return 4294966293;
      }

      if (!sub_160EF0(0xE2u, 4))
      {
        return 4294966293;
      }

      v25 = sub_160F34(0xE2u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (!v25)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 206, "pTmpDict != __null", a1, a2, 0);
    }

    else
    {
      if (!sub_160EF0(0xE2u, 4))
      {
        return 4294966293;
      }

      v22 = sub_160F34(0xE2u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (!v22)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 189, "pTmpDict != __null", a1, a2, 0);
    }

LABEL_24:
    v27 = sub_175AE4();
    v31 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v27, 226, v31);
    return 4294966293;
  }

  if (sub_160EF0(0xE2u, 4))
  {
    v18 = sub_160F34(0xE2u);
    v19 = sub_175AE4();
    v20 = sub_160F68(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v19, 226, v20, "AVE_DPB_MakeSnapshotEntry", 170, "pEntry != __null && pDict != __null", a1, a2, 0);
      v21 = sub_175AE4();
      v30 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v21, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v19, 226, v20);
    }
  }

  return 4294966295;
}

uint64_t sub_16F3AC(CFDictionaryRef theDict, _DWORD *a2)
{
  v36 = 0;
  if (!theDict || !a2)
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v14 = sub_160F34(0xE2u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v15, 226, v16, "AVE_DPB_RetrieveSnapshot", 261, "pDict != __null && pSnapshot != __null", theDict, a2, 0);
        v17 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v17, 226, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v15, 226, v16);
      }
    }

    return 4294966295;
  }

  sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_FrameNumberFromIDR, &v36);
  a2[340] = v36;
  sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_LongTermFrameNumberFromIDR, &v36);
  a2[341] = v36;
  sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_HowManyShortTermFromIDR, &v36);
  a2[342] = v36;
  sub_14C90C(theDict, kVTEncodeFrameOptionKey_DPB_NumberOfReferenceFrames, &v36);
  v4 = v36;
  a2[343] = v36;
  if (v4 >= 17)
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v18 = sub_160F34(0xE2u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d\n", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", a2[343], 16);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", a2[343], 16);
    }

    return 4294966296;
  }

  Value = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_DPB_ReferenceFrames);
  if (!Value)
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v21 = sub_160F34(0xE2u);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d\n", v22, 226, v23, "AVE_DPB_RetrieveSnapshot", 278, "pTmpArray != __null", theDict, a2, 0);
        v24 = sub_175AE4();
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v24, 226, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v22, 226, v23);
      }
    }

    return 4294966288;
  }

  v6 = Value;
  Count = CFArrayGetCount(Value);
  v8 = Count;
  if (Count > 17)
  {
    if (sub_160EF0(0xE2u, 4))
    {
      v25 = sub_160F34(0xE2u);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d\n", v26, 226, v27, "AVE_DPB_RetrieveSnapshot", 284, "num <= (((16) > (16) ? (16) : (16)) + 1)", v8, 17);
        v26 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d", v26);
    }

    return 4294966296;
  }

  if (Count < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = Count & 0x7FFFFFFF;
  for (i = a2; ; i += 20)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    v13 = sub_16E8E4(ValueAtIndex, i);
    if (v13)
    {
      break;
    }

    if (v10 == ++v9)
    {
      return v13;
    }
  }

  if (sub_160EF0(0xE2u, 4))
  {
    v28 = sub_160F34(0xE2u);
    v29 = sub_175AE4();
    v30 = sub_160F68(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d\n", v29, 226, v30, "AVE_DPB_RetrieveSnapshot", 293, "ret == 0", theDict, a2, ValueAtIndex, v9, v13);
      v31 = sub_175AE4();
      v35 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v31, 226, v35, "AVE_DPB_RetrieveSnapshot");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v29, 226, v30, "AVE_DPB_RetrieveSnapshot");
    }
  }

  return v13;
}

uint64_t sub_16F950(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_FrameNumberFromIDR, a1[340], a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_LongTermFrameNumberFromIDR, a1[341], a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_HowManyShortTermFromIDR, a1[342], a2);
    sub_14B9CC(kVTEncodeFrameOptionKey_DPB_NumberOfReferenceFrames, a1[343], a2);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v5 = Mutable;
      if (a1[343] < 0)
      {
        v10 = 0;
LABEL_19:
        CFDictionaryAddValue(a2, kVTEncodeFrameOptionKey_DPB_ReferenceFrames, v5);
        CFRelease(v5);
        return v10;
      }

      v6 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = a1;
        while (1)
        {
          v10 = sub_16EE2C(v9, v7);
          CFArrayAppendValue(v5, v7);
          CFRelease(v7);
          if (v8 >= a1[343])
          {
            goto LABEL_19;
          }

          ++v8;
          v7 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v9 += 20;
          if (!v7)
          {
            goto LABEL_21;
          }
        }
      }

      LODWORD(v8) = 0;
      LODWORD(v10) = 0;
      v9 = a1;
LABEL_21:
      if (sub_160EF0(0xE2u, 4))
      {
        v19 = sub_160F34(0xE2u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d\n", v20, 226, v21, "AVE_DPB_MakeSnapshot", 339, "pTmpDict != __null", a1, a2, v9, v8, v10);
          v22 = sub_175AE4();
          v26 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", v22, 226, v26, "AVE_DPB_MakeSnapshot");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", v20, 226, v21, "AVE_DPB_MakeSnapshot");
        }
      }

      CFRelease(v5);
    }

    else if (sub_160EF0(0xE2u, 4))
    {
      v15 = sub_160F34(0xE2u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d\n", v16, 226, v17, "AVE_DPB_MakeSnapshot", 329, "pTmpArray != __null", a1, a2, 0);
        v18 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v18, 226, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v16, 226, v17);
      }
    }

    return 4294966293;
  }

  if (sub_160EF0(0xE2u, 4))
  {
    v11 = sub_160F34(0xE2u);
    v12 = sub_175AE4();
    v13 = sub_160F68(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v12, 226, v13, "AVE_DPB_MakeSnapshot", 316, "pDict != __null && pSnapshot != __null", a2, a1, 0);
      v14 = sub_175AE4();
      v24 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v14, 226, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
    }
  }

  return 4294966295;
}

char *sub_16FD90(int a1)
{
  if (a1 >= 35)
  {
    return 0;
  }

  else
  {
    return &qword_203CF0[9 * a1];
  }
}

uint64_t sub_16FDAC(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_203CF0[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 24);
  }

  return v3;
}

uint64_t sub_16FE54(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_203CF0[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 32);
  }

  return v3;
}

uint64_t sub_16FEFC(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_203CF0[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 40);
  }

  return v3;
}

uint64_t sub_16FFA4(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_203CF0[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 48);
  }

  return v3;
}

uint64_t sub_17004C(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_203CF0[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 56);
  }

  return v3;
}

uint64_t sub_1700F4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 4)
  {
    return 4294966277;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    *(a2 + v5) |= *(a1 + 32 + v4) << (v4 & 7 ^ 7);
    if ((v4 & 7) == 7)
    {
      ++v5;
    }

    ++v4;
  }

  while (v4 != 32);
  return 4;
}

uint64_t sub_170148(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  if (a3 < 6)
  {
    return 4294966277;
  }

  v7 = sub_17D4BC(*(a1 + 28));
  bzero(a2, a3);
  v9 = (*(a1 + 65) << 6) | (*(a1 + 64) << 7) | (32 * *(a1 + 66)) | (16 * *(a1 + 67));
  *a2 = v9;
  if (v7 == 4 || v7 == 5 || (*(a1 + 36) & 1) != 0 || v7 == 6 || (*(a1 + 37) & 1) != 0 || v7 == 7 || (*(a1 + 38) & 1) != 0 || v7 == 8 || (*(a1 + 39) & 1) != 0 || v7 == 9 || (*(a1 + 40) & 1) != 0 || v7 == 10 || (*(a1 + 41) & 1) != 0 || v7 == 11 || (*(a1 + 42) & 1) != 0 || *(a1 + 43) == 1)
  {
    *a2 = (8 * *(a1 + 68)) | (4 * *(a1 + 69)) | (2 * *(a1 + 70)) | *(a1 + 71) | v9;
    v8.i32[0] = *(a1 + 72);
    v10 = vshl_u16(*&vmovl_u8(v8), 0x4000500060007);
    v11 = v10.i32[0] | v10.i32[1] | ((*&v10 | HIDWORD(*&v10)) >> 16) | (8 * *(a1 + 76));
  }

  else
  {
    if (v7 != 2 && *(a1 + 34) != 1)
    {
      return 5;
    }

    LOBYTE(v11) = 16 * *(a1 + 75);
  }

  a2[1] = v11;
  return 5;
}

uint64_t sub_1702C8(CFArrayRef theArray, _DWORD *a2, int *a3)
{
  if (theArray && a2 && a3 && *a3 > 0)
  {
    Count = CFArrayGetCount(theArray);
    v7 = *a3;
    if (Count < *a3)
    {
      v7 = Count;
    }

    if (v7 >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    if (v7 < 1)
    {
LABEL_17:
      result = 0;
      *a3 = v8;
    }

    else
    {
      v9 = 0;
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = a2;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        if (!ValueAtIndex)
        {
          break;
        }

        v13 = ValueAtIndex;
        sub_14C90C(ValueAtIndex, @"ReferenceFrameNumDriver", v11);
        sub_14C90C(v13, @"ReferenceRVRAIndex", v11 + 1);
        ++v9;
        v11 += 2;
        if (v10 == v9)
        {
          goto LABEL_17;
        }
      }

      if (sub_160EF0(0xE1u, 4))
      {
        v19 = sub_160F34(0xE1u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p\n", v20, 225, v21, "AVE_Ref_RetrieveArray", 36, "pDict != __null", theArray, a2, a3);
          v22 = sub_175AE4();
          v24 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", v22, 225, v24);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", v20, 225, v21);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0xE1u, 4))
    {
      v15 = sub_160F34(0xE1u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v16, 225, v17, "AVE_Ref_RetrieveArray", 25, "pArray != __null && pInfo != __null && pNum != __null && *pNum > 0", theArray, a2, a3);
        v18 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 225, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 225, v17);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_170570(char *a1, unsigned int a2, __CFArray *a3)
{
  if (a1 && a2 >= 1 && a3)
  {
    v6 = a2;
    v7 = (a1 + 4);
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        break;
      }

      v9 = Mutable;
      sub_14B9CC(@"ReferenceFrameNumDriver", *(v7 - 1), Mutable);
      v10 = *v7;
      v7 += 2;
      sub_14B9CC(@"ReferenceRVRAIndex", v10, v9);
      CFArrayAppendValue(a3, v9);
      CFRelease(v9);
      if (!--v6)
      {
        return 0;
      }
    }

    if (sub_160EF0(0xE1u, 4))
    {
      v16 = sub_160F34(0xE1u);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p\n", v17, 225, v18, "AVE_Ref_MakeArray", 73, "pDict != __null", a1, a2, a3);
        v19 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p", v19, 225, v21);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p", v17, 225, v18);
      }
    }

    return 4294966293;
  }

  else
  {
    if (sub_160EF0(0xE1u, 4))
    {
      v12 = sub_160F34(0xE1u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v13, 225, v14, "AVE_Ref_MakeArray", 65, "pInfo != __null && iNum > 0 && pArray != __null", a1, a2, a3);
        v15 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v15, 225, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v13, 225, v14);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_17080C(CFDictionaryRef theDict, int a2, int *a3)
{
  if (a2 <= 4 && theDict && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"WeightData_WeightFlagArray");
    v7 = CFDictionaryGetValue(theDict, @"WeightData_Weight");
    v8 = CFDictionaryGetValue(theDict, @"WeightData_Weight");
    v9 = v8;
    v52 = Value;
    if (Value && v7 && v8)
    {
      Count = CFArrayGetCount(Value);
      v11 = CFArrayGetCount(v7);
      v12 = CFArrayGetCount(v9);
      if (a2 < 1)
      {
        return 0;
      }

      else
      {
        v51 = 0;
        v13 = 0;
        v46 = v11;
        v47 = Count;
        if (Count >= v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = Count;
        }

        v45 = v12;
        if (v14 >= v12)
        {
          v14 = v12;
        }

        v15 = a3 + 11;
        v16 = a3 + 3;
        v50 = v14;
        v48 = a2;
        v17 = a3 + 50;
        while (2)
        {
          v18 = 0;
          v49 = v17;
          do
          {
            v54[0] = 0;
            v53 = 0;
            v19 = v51 + v18;
            if (v51 + v18 >= v50)
            {
              if (sub_160EF0(0xD7u, 4))
              {
                v35 = sub_160F34(0xD7u);
                v36 = sub_175AE4();
                v37 = sub_160F68(4);
                if (v35)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Wrong WP array size %d %d %d %d\n", v36, 215, v37, "AVE_WtPred_RetrieveArray", 56, "arrayIdx < iFlagCnt && arrayIdx < iWeightCnt && arrayIdx < iOffsetCnt", v47, v46, v45, v19);
                  v36 = sub_175AE4();
                  v43 = v45;
                  v44 = v51 + v18;
                  v41 = v47;
                  v42 = v46;
                  v40 = sub_160F68(4);
                }

                else
                {
                  v43 = v45;
                  v44 = v51 + v18;
                  v41 = v47;
                  v42 = v46;
                  v40 = v37;
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong WP array size %d %d %d %d", v36, 215, v40, "AVE_WtPred_RetrieveArray", 56, "arrayIdx < iFlagCnt && arrayIdx < iWeightCnt && arrayIdx < iOffsetCnt", v41, v42, v43, v44);
              }

              return 4294966295;
            }

            result = sub_14A8C4(v52, v51 + v18, v54);
            if (result)
            {
              return result;
            }

            if (v18)
            {
              v15[v13] = v54[0];
              result = sub_14AE14(v7, v19, &v53);
              if (result)
              {
                return result;
              }

              v21 = v15[v13] ? v53 : 1 << a3[1];
              *(v17 - 16) = v21;
              v17[24] = (-1 << a3[1]) + v21;
              result = sub_14AE14(v9, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v15[v13])
              {
                v24 = v53;
              }

              else
              {
                v24 = 0;
              }

              *v17 = v24;
              v25 = v24 + (*(v17 - 16) << 7 >> a3[1]) - 128;
              if (v25 <= -512)
              {
                v25 = -512;
              }

              if (v25 >= 511)
              {
                v25 = 511;
              }

              v17[40] = v25;
            }

            else
            {
              v16[v13] = v54[0];
              result = sub_14AE14(v7, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v16[v13])
              {
                v22 = v53;
                v23 = *a3;
              }

              else
              {
                v23 = *a3;
                v22 = 1 << *a3;
              }

              a3[v13 + 19] = v22;
              a3[v13 + 67] = (-1 << v23) + v22;
              result = sub_14AE14(v9, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v16[v13])
              {
                v26 = v53;
              }

              else
              {
                v26 = 0;
              }

              a3[v13 + 27] = v26;
            }

            ++v18;
            ++v17;
          }

          while (v18 != 3);
          result = 0;
          ++v13;
          v51 += 3;
          v17 = v49 + 2;
          if (v13 != v48)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      if (sub_160EF0(0xD7u, 4))
      {
        v31 = sub_160F34(0xD7u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p\n", v32, 215, v33, "AVE_WtPred_RetrieveArray", 39, "pFlagArray != __null && pWeightArray != __null && pOffsetArray != __null", Value, v7, v9);
          v34 = sub_175AE4();
          v39 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p", v34, 215, v39);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p", v32, 215, v33);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0xD7u, 4))
    {
      v27 = sub_160F34(0xD7u);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v28, 215, v29, "AVE_WtPred_RetrieveArray", 30, "pDict != __null && pInfo != __null && iFrameCount <= 4", theDict, a3, a2);
        v30 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v30, 215, v38);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v28, 215, v29);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_170D74(CFDictionaryRef theDict, int a2, _OWORD *a3)
{
  if (!theDict || !a3)
  {
    if (sub_160EF0(0xD7u, 4))
    {
      v12 = sub_160F34(0xD7u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 215, v14, "AVE_WtPred_GetInfo", 246, "pDict != __null && pInfo != __null", theDict, a3);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 215);
    }

    return 4294966295;
  }

  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  *(a3 + 412) = 0u;
  Value = CFDictionaryGetValue(theDict, @"WeightedPredictionInfo");
  if (!Value)
  {
    if (sub_160EF0(0xD7u, 4))
    {
      v15 = sub_160F34(0xD7u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get dictionary %p %p\n", v16, 215, v17, "AVE_WtPred_GetInfo", 254, "pWPInfoDict != __null", theDict, 0);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get dictionary %p %p", v16, 215);
    }

    return 4294966288;
  }

  v7 = Value;
  if (sub_160EF0(0x1Du, 6))
  {
    v8 = sub_160F34(0x1Du);
    v9 = sub_175AE4();
    v10 = sub_160F68(6);
    if (v8)
    {
      printf("%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found \n", v9, 29, v10);
      v11 = sub_175AE4();
      v27 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found ", v11, 29, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found ", v9, 29, v10);
    }
  }

  v19 = sub_14C90C(v7, @"WeightData_LumaLog2WeightDenom", a3);
  if (v19)
  {
    v18 = v19;
    if (sub_160EF0(0xD7u, 4))
    {
      v20 = sub_160F34(0xD7u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v21, 215, v22, "AVE_WtPred_GetInfo", 261, "ret == 0", v7, a3, v18);
        v23 = sub_175AE4();
        v28 = sub_160F68(4);
LABEL_26:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v23, 215, v28);
        return v18;
      }

      goto LABEL_33;
    }

    return v18;
  }

  v24 = sub_14C90C(v7, @"WeightData_ChromaLog2WeightDenom", a3 + 1);
  if (v24)
  {
    v18 = v24;
    if (sub_160EF0(0xD7u, 4))
    {
      v25 = sub_160F34(0xD7u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v21, 215, v22, "AVE_WtPred_GetInfo", 266, "ret == 0", v7, a3, v18);
        v23 = sub_175AE4();
        v28 = sub_160F68(4);
        goto LABEL_26;
      }

LABEL_33:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v21, 215, v22);
    }

    return v18;
  }

  return sub_17080C(v7, a2, a3);
}

uint64_t sub_171244(_DWORD *a1, unsigned int a2, int a3, const char *a4, int a5)
{
  memset(v110, 0, sizeof(v110));
  if (!a1)
  {
    return 4294966295;
  }

  sub_CB274(a4, a5, v110, 32);
  if (sub_160EF0(a2, a3))
  {
    v8 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (v8 && (-a3 & 0x20) == 0)
      {
        printf("WP %s luma_log2_weight_denom = %d\n", v110, *a1);
      }

      syslog(3, "WP %s luma_log2_weight_denom = %d");
    }

    else
    {
      v9 = v8 ^ 1;
      v10 = sub_175AE4();
      v11 = sub_160F68(a3);
      if (((v9 | ((a3 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: WP %s luma_log2_weight_denom = %d\n", v10, a2, v11, v110, *a1);
        sub_175AE4();
        sub_160F68(a3);
      }

      syslog(3, "%lld %d AVE %s: WP %s luma_log2_weight_denom = %d");
    }
  }

  if (sub_160EF0(a2, a3))
  {
    v13 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (v13 && (-a3 & 0x20) == 0)
      {
        printf("WP %s chroma_log2_weight_denom = %d\n", v110, a1[1]);
      }

      syslog(3, "WP %s chroma_log2_weight_denom = %d");
    }

    else
    {
      v14 = v13 ^ 1;
      v15 = sub_175AE4();
      v16 = sub_160F68(a3);
      if (((v14 | ((a3 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: WP %s chroma_log2_weight_denom = %d\n", v15, a2, v16, v110, a1[1]);
        sub_175AE4();
        sub_160F68(a3);
      }

      syslog(3, "%lld %d AVE %s: WP %s chroma_log2_weight_denom = %d");
    }
  }

  if (sub_160EF0(a2, a3))
  {
    v17 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (v17 && (-a3 & 0x20) == 0)
      {
        printf("WP %s delta_chroma_log2_weight_denom = %d\n", v110, a1[2]);
      }

      syslog(3, "WP %s delta_chroma_log2_weight_denom = %d");
    }

    else
    {
      v18 = v17 ^ 1;
      v19 = sub_175AE4();
      v20 = sub_160F68(a3);
      if (((v18 | ((a3 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: WP %s delta_chroma_log2_weight_denom = %d\n", v19, a2, v20, v110, a1[2]);
        sub_175AE4();
        sub_160F68(a3);
      }

      syslog(3, "%lld %d AVE %s: WP %s delta_chroma_log2_weight_denom = %d");
    }
  }

  v21 = 0;
  v103 = a1 + 3;
  v108 = -a3;
  v22 = a1 + 27;
  v23 = a1 + 67;
  v104 = a1 + 51;
  v101 = a1 + 11;
  v24 = a1 + 27;
  v109 = a1 + 67;
  v102 = a1 + 19;
  do
  {
    v105 = v21;
    if (sub_160EF0(a2, a3))
    {
      v25 = sub_160F34(a2);
      if (a3 < 0)
      {
        if ((v108 & 0x20) != 0)
        {
          v32 = 0;
        }

        else
        {
          v32 = v25;
        }

        if (v32 == 1)
        {
          printf("WP %s luma_weight_l0_flag[%d] = %d\n", v110, v105, v103[v105]);
        }

        syslog(3, "WP %s luma_weight_l0_flag[%d] = %d", v110, v105, v103[v105]);
      }

      else
      {
        v26 = v25 ^ 1;
        v27 = sub_175AE4();
        v28 = sub_160F68(a3);
        v29 = v103[v105];
        if ((v26 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d", v27, a2, v28, v110, v105, v29);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d\n", v27, a2, v28, v110, v105, v29);
          v30 = sub_175AE4();
          v31 = sub_160F68(a3);
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d", v30, a2, v31, v110, v105, v103[v105]);
        }

        v22 = v24;
      }
    }

    if (sub_160EF0(a2, a3))
    {
      v33 = sub_160F34(a2);
      if (a3 < 0)
      {
        if ((v108 & 0x20) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = v33;
        }

        if (v39 == 1)
        {
          printf("WP %s luma_weight_l0[%d] = %d\n", v110, v105, v102[v105]);
        }

        syslog(3, "WP %s luma_weight_l0[%d] = %d", v110, v105, v102[v105]);
      }

      else
      {
        v34 = v33 ^ 1;
        v35 = sub_175AE4();
        v36 = sub_160F68(a3);
        v37 = v102[v105];
        if ((v34 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d", v35, a2, v36, v110, v105, v37);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d\n", v35, a2, v36, v110, v105, v37);
          v106 = sub_175AE4();
          v38 = sub_160F68(a3);
          syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d", v106, a2, v38, v110, v105, v102[v105]);
        }

        v22 = v24;
      }
    }

    if (sub_160EF0(a2, a3))
    {
      v40 = sub_160F34(a2);
      if (a3 < 0)
      {
        if ((v108 & 0x20) != 0)
        {
          v47 = 0;
        }

        else
        {
          v47 = v40;
        }

        if (v47 == 1)
        {
          printf("WP %s luma_offset_l0[%d] = %d\n", v110, v105, v22[v105]);
        }

        syslog(3, "WP %s luma_offset_l0[%d] = %d", v110, v105, v22[v105]);
      }

      else
      {
        v41 = v40 ^ 1;
        v42 = sub_175AE4();
        v43 = sub_160F68(a3);
        v44 = v22[v105];
        if ((v41 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d", v42, a2, v43, v110, v105, v44);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d\n", v42, a2, v43, v110, v105, v44);
          v45 = sub_175AE4();
          v46 = sub_160F68(a3);
          syslog(3, "%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d", v45, a2, v46, v110, v105, v22[v105]);
        }

        v23 = v109;
      }
    }

    if (sub_160EF0(a2, a3))
    {
      v48 = sub_160F34(a2);
      if (a3 < 0)
      {
        if ((v108 & 0x20) != 0)
        {
          v55 = 0;
        }

        else
        {
          v55 = v48;
        }

        if (v55 == 1)
        {
          printf("WP %s delta_luma_weight_l0[%d] = %d\n", v110, v105, v23[v105]);
        }

        syslog(3, "WP %s delta_luma_weight_l0[%d] = %d", v110, v105, v23[v105]);
      }

      else
      {
        v49 = v48 ^ 1;
        v50 = sub_175AE4();
        v51 = sub_160F68(a3);
        v52 = v23[v105];
        if ((v49 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d", v50, a2, v51, v110, v105, v52);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d\n", v50, a2, v51, v110, v105, v52);
          v53 = sub_175AE4();
          v54 = sub_160F68(a3);
          syslog(3, "%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d", v53, a2, v54, v110, v105, v23[v105]);
        }

        v22 = v24;
      }
    }

    if (sub_160EF0(a2, a3))
    {
      v56 = sub_160F34(a2);
      if (a3 < 0)
      {
        if ((v108 & 0x20) != 0)
        {
          v62 = 0;
        }

        else
        {
          v62 = v56;
        }

        if (v62 == 1)
        {
          printf("WP %s chroma_weight_l0_flag[%d] = %d\n", v110, v105, v101[v105]);
        }

        syslog(3, "WP %s chroma_weight_l0_flag[%d] = %d", v110, v105, v101[v105]);
      }

      else
      {
        v57 = v56 ^ 1;
        v58 = sub_175AE4();
        v59 = sub_160F68(a3);
        v60 = v101[v105];
        if ((v57 | ((a3 & 0x20) >> 5)))
        {
          syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d", v58, a2, v59, v110, v105, v60);
        }

        else
        {
          printf("%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d\n", v58, a2, v59, v110, v105, v60);
          v107 = sub_175AE4();
          v61 = sub_160F68(a3);
          syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d", v107, a2, v61, v110, v105, v101[v105]);
        }

        v22 = v24;
      }
    }

    v63 = 0;
    v64 = v104;
    do
    {
      if (sub_160EF0(a2, a3))
      {
        v65 = sub_160F34(a2);
        if (a3 < 0)
        {
          if ((v108 & 0x20) != 0)
          {
            v72 = 0;
          }

          else
          {
            v72 = v65;
          }

          v73 = *(v64 - 16);
          if (v72 == 1)
          {
            printf("WP %s chroma_weight_l0[%d][%d] = %d\n", v110, v105, v63, v73);
            syslog(3, "WP %s chroma_weight_l0[%d][%d] = %d", v110, v105, v63, *(v64 - 16));
          }

          else
          {
            syslog(3, "WP %s chroma_weight_l0[%d][%d] = %d", v110, v105, v63, v73);
          }
        }

        else
        {
          v66 = v65 ^ 1;
          v67 = sub_175AE4();
          v68 = sub_160F68(a3);
          v69 = *(v64 - 16);
          if ((v66 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d", v67, a2, v68, v110, v105, v63, v69);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d\n", v67, a2, v68, v110, v105, v63, v69);
            v70 = sub_175AE4();
            v71 = sub_160F68(a3);
            syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d", v70, a2, v71, v110, v105, v63, *(v64 - 16));
          }

          v22 = v24;
          v23 = v109;
        }
      }

      if (sub_160EF0(a2, a3))
      {
        v74 = sub_160F34(a2);
        if (a3 < 0)
        {
          if ((v108 & 0x20) != 0)
          {
            v81 = 0;
          }

          else
          {
            v81 = v74;
          }

          v82 = *v64;
          if (v81 == 1)
          {
            printf("WP %s chroma_offset_l0[%d][%d] = %d\n", v110, v105, v63, v82);
            syslog(3, "WP %s chroma_offset_l0[%d][%d] = %d", v110, v105, v63, *v64);
          }

          else
          {
            syslog(3, "WP %s chroma_offset_l0[%d][%d] = %d", v110, v105, v63, v82);
          }
        }

        else
        {
          v75 = v74 ^ 1;
          v76 = sub_175AE4();
          v77 = sub_160F68(a3);
          v78 = *v64;
          if ((v75 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d", v76, a2, v77, v110, v105, v63, v78);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d\n", v76, a2, v77, v110, v105, v63, v78);
            v79 = sub_175AE4();
            v80 = sub_160F68(a3);
            syslog(3, "%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d", v79, a2, v80, v110, v105, v63, *v64);
          }

          v22 = v24;
          v23 = v109;
        }
      }

      if (sub_160EF0(a2, a3))
      {
        v83 = sub_160F34(a2);
        if (a3 < 0)
        {
          if ((v108 & 0x20) != 0)
          {
            v90 = 0;
          }

          else
          {
            v90 = v83;
          }

          v91 = v64[24];
          if (v90 == 1)
          {
            printf("WP %s delta_chroma_weight_l0[%d][%d] = %d\n", v110, v105, v63, v91);
            syslog(3, "WP %s delta_chroma_weight_l0[%d][%d] = %d", v110, v105, v63, v64[24]);
          }

          else
          {
            syslog(3, "WP %s delta_chroma_weight_l0[%d][%d] = %d", v110, v105, v63, v91);
          }
        }

        else
        {
          v84 = v83 ^ 1;
          v85 = sub_175AE4();
          v86 = sub_160F68(a3);
          v87 = v64[24];
          if ((v84 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d", v85, a2, v86, v110, v105, v63, v87);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d\n", v85, a2, v86, v110, v105, v63, v87);
            v88 = sub_175AE4();
            v89 = sub_160F68(a3);
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d", v88, a2, v89, v110, v105, v63, v64[24]);
          }

          v22 = v24;
          v23 = v109;
        }
      }

      if (sub_160EF0(a2, a3))
      {
        v92 = sub_160F34(a2);
        if (a3 < 0)
        {
          if ((v108 & 0x20) != 0)
          {
            v99 = 0;
          }

          else
          {
            v99 = v92;
          }

          v100 = v64[40];
          if (v99 == 1)
          {
            printf("WP %s delta_chroma_offset_l0[%d][%d] = %d\n", v110, v105, v63, v100);
            syslog(3, "WP %s delta_chroma_offset_l0[%d][%d] = %d", v110, v105, v63, v64[40]);
          }

          else
          {
            syslog(3, "WP %s delta_chroma_offset_l0[%d][%d] = %d", v110, v105, v63, v100);
          }
        }

        else
        {
          v93 = v92 ^ 1;
          v94 = sub_175AE4();
          v95 = sub_160F68(a3);
          v96 = v64[40];
          if ((v93 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d", v94, a2, v95, v110, v105, v63, v96);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d\n", v94, a2, v95, v110, v105, v63, v96);
            v97 = sub_175AE4();
            v98 = sub_160F68(a3);
            syslog(3, "%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d", v97, a2, v98, v110, v105, v63, v64[40]);
          }

          v22 = v24;
          v23 = v109;
        }
      }

      ++v63;
      ++v64;
    }

    while (v63 != 2);
    v21 = v105 + 1;
    v104 += 2;
  }

  while (v105 != 3);
  return 0;
}