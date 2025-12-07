void sub_E97CC(uint64_t a1)
{
  v2 = a1 + 13184;
  if (sub_160EF0(0xCu, 7))
  {
    v3 = sub_160F34(0xCu);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams\n", v4, 12, v5);
      v6 = sub_175AE4();
      v30 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v6, 12, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v4, 12, v5);
    }
  }

  v7 = *(a1 + 1440);
  v8 = *(a1 + 1444);
  *v2 = 0;
  *(a1 + 13188) = 0u;
  v9 = sub_14E470(*(a1 + 68), 1, 1);
  v10 = *(a1 + 1444);
  if ((v10 & 0xF) != 0 || v10 < v9[1])
  {
    if (*(a1 + 76) >= 12)
    {
      *(v2 + 3364) = v10;
    }

    v11 = (v10 + 15) & 0xFFFFFFF0;
    if (v11 <= v9[1])
    {
      v11 = v9[1];
    }

    *(a1 + 1444) = v11;
    *v2 = 1;
    *(a1 + 13200) = v11 - v8;
  }

  v12 = *(a1 + 1440);
  if ((v12 & 0xF) != 0 || v12 < *v9)
  {
    if (*(a1 + 76) >= 12)
    {
      *(v2 + 3360) = v12;
    }

    v13 = (v12 + 15) & 0xFFFFFFF0;
    if (v13 <= *v9)
    {
      v13 = *v9;
    }

    *(a1 + 1440) = v13;
    *v2 = 1;
    *(a1 + 13192) = v13 - v7;
  }

  if (sub_160EF0(0x10u, 7))
  {
    v14 = sub_160F34(0x10u);
    v15 = sub_175AE4();
    v16 = sub_160F68(7);
    if (v14)
    {
      printf("%lld %d AVE %s: FIG: input -> %dx%d\n", v15, 16, v16, v7, v8);
      v17 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v17, 16, v31, v7, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v15, 16, v16, v7, v8);
    }
  }

  if (sub_160EF0(0x10u, 7))
  {
    v18 = sub_160F34(0x10u);
    v19 = sub_175AE4();
    v20 = sub_160F68(7);
    v21 = *(a1 + 1444);
    if (v18)
    {
      printf("%lld %d AVE %s: FIG: input multiple -> %dx%d\n", v19, 16, v20, *(a1 + 1440), v21);
      v22 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v22, 16, v23, *(a1 + 1440), *(a1 + 1444));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v19, 16, v20, *(a1 + 1440), v21);
    }
  }

  if (sub_160EF0(0x10u, 7))
  {
    v24 = sub_160F34(0x10u);
    v25 = sub_175AE4();
    v26 = sub_160F68(7);
    v27 = *(a1 + 13192);
    if (v24)
    {
      printf("%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d\n", v25, 16, v26, *(a1 + 13200), v27);
      v28 = sub_175AE4();
      v29 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v28, 16, v29, *(a1 + 13200), *(a1 + 13192));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v25, 16, v26, *(a1 + 13200), v27);
    }
  }
}

double sub_E9B08(uint64_t a1)
{
  v2 = a1 + 14572;
  v3 = a1 + 10168;
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault\n", v5, 12, v6);
      v7 = sub_175AE4();
      v16 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v7, 12, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v5, 12, v6);
    }
  }

  v8 = 0;
  *(v3 + 588) = 0;
  *(a1 + 1308) = 1;
  *(v3 + 596) = 1;
  *(a1 + 1096) = 0x39D00000000;
  *(a1 + 1296) &= ~1u;
  *(v3 + 613) = 0;
  *(a1 + 10792) = 0x300000006;
  *(a1 + 10844) = 0x10000;
  *(v3 + 684) = 0;
  *(a1 + 10864) = 0;
  *(a1 + 10880) = 0;
  *(a1 + 10872) = 0;
  *(a1 + 10888) = 0;
  *(a1 + 10860) = -1;
  *(v3 + 687) = 0;
  *(a1 + 688) &= ~2u;
  v9 = *(a1 + 1336);
  *(v3 + 688) = 0;
  *(a1 + 11744) = 0u;
  *(a1 + 11728) = 0u;
  *(a1 + 11712) = 0u;
  *(a1 + 11696) = 0u;
  *(a1 + 11680) = 0u;
  *(a1 + 11664) = 0u;
  *(a1 + 11648) = 0u;
  *(a1 + 11632) = 0u;
  *(a1 + 11616) = 0u;
  *(a1 + 11600) = 0u;
  *(a1 + 11584) = 0u;
  *(a1 + 11568) = 0u;
  *(a1 + 11552) = 0u;
  *(a1 + 11536) = 0u;
  *(a1 + 11520) = 0u;
  *(a1 + 11504) = 0u;
  *(a1 + 11488) = 0u;
  *(a1 + 11472) = 0u;
  *(a1 + 10776) = 0;
  do
  {
    *(a1 + 11472 + v8) = 0xFFFFFFFF00000001;
    v8 += 48;
  }

  while (v8 != 288);
  *(a1 + 11464) = 0x100000006;
  *(a1 + 11760) = 1;
  *(v3 + 344) = 0;
  *(v3 + 1642) = 0;
  *(a1 + 11812) = -1;
  *(a1 + 11772) = 0;
  *(a1 + 11792) = 0;
  *(v3 + 1632) = 0;
  *(a1 + 11804) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1464) = 1;
  *(a1 + 1256) = 0x300000003;
  v10 = *(a1 + 1240);
  *(a1 + 10536) = 0;
  *(a1 + 1240) = v10 & 0xFFFFF8FF | 0x600;
  if (*(a1 + 76) <= 29)
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  *v3 = v11;
  *(v3 + 2) = 0;
  *(a1 + 10176) = 2;
  *(v3 + 5) = 0;
  *(a1 + 10244) = 1;
  *(v3 + 80) = 0;
  *(a1 + 10252) = 1;
  v12 = *(a1 + 1444);
  *(a1 + 10260) = v12;
  *(a1 + 10516) = 4;
  *(a1 + 10524) = 0;
  *(a1 + 1288) = 1;
  *(v3 + 354) = 0;
  *(v3 + 363) = 0;
  *(a1 + 1336) = v9 & 0xFBFEFDFF | 0x200;
  *(v3 + 372) = 0;
  *(a1 + 10604) = 0x1000000001;
  *(a1 + 10744) = 8;
  *(a1 + 1392) = -1;
  *(v3 + 12) = 3;
  *(v3 + 16) = 0;
  *(a1 + 1356) &= ~4u;
  *(a1 + 10188) = 0x800000001;
  *(v3 + 3) = 1;
  *(a1 + 1448) &= ~0x2000000uLL;
  *(a1 + 10544) = 21;
  *(a1 + 1136) = ((*(a1 + 1440) * v12) * 1.5 * 0.15 * 30.0);
  *(a1 + 1112) = 30;
  *(a1 + 11968) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0xBFF0000000000000;
  *(a1 + 1280) = 0xBFF0000000000000;
  *(a1 + 1132) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = xmmword_1849B0;
  *(a1 + 1120) = 0;
  *(a1 + 1352) = 30;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1252) = 1;
  *(a1 + 720) = 0;
  if (!*(v3 + 612))
  {
    *(a1 + 10892) = 0;
  }

  *(a1 + 11460) = 0;
  *(a1 + 692) = -1;
  *(a1 + 1232) = 0xC0000000CLL;
  *(a1 + 1344) = 0xC0000000CLL;
  *(a1 + 1336) = v9 & 0xFBFE7DAD | 0x8202;
  *(a1 + 1144) = 0x1A0000001ALL;
  *(a1 + 1152) = 26;
  *(a1 + 1192) = 0;
  *(a1 + 1160) = 0uLL;
  *(a1 + 1176) = 0uLL;
  *(a1 + 1324) = 1;
  *(a1 + 1328) = 0x100000001;
  *(a1 + 1128) = 0;
  *(a1 + 11448) = 30;
  *(a1 + 1296) &= ~2u;
  *(a1 + 11964) = 0;
  *(v3 + 1648) = 0;
  *(a1 + 11952) = 0;
  *(a1 + 11936) = 0uLL;
  *(a1 + 11920) = 0uLL;
  *(a1 + 11904) = 0uLL;
  *(a1 + 11888) = 0uLL;
  *(a1 + 11872) = 0uLL;
  *(a1 + 11856) = 0uLL;
  *(a1 + 11840) = 0uLL;
  *(a1 + 11824) = 0uLL;
  *(a1 + 12008) = 6;
  *(a1 + 12028) = 0;
  *(a1 + 12012) = 0uLL;
  *(a1 + 12036) = 1;
  *(a1 + 12040) = 0x100000000;
  *(a1 + 12064) = 0;
  *(a1 + 12048) = 0;
  *(a1 + 12054) = 0;
  *(a1 + 13056) = xmmword_1849C0;
  *(a1 + 13072) = 1;
  *(v3 + 2908) = 0;
  *(a1 + 13088) = 0x100000001;
  *(a1 + 13096) = 0x1000000;
  *(a1 + 13100) = 5;
  *(v3 + 2940) = 1;
  *(a1 + 13112) = 0x200000002;
  *(a1 + 13120) = 2;
  *(v3 + 2956) = 0;
  *(v3 + 2968) = 0;
  *(v3 + 2981) = 0;
  *(v3 + 2983) = 0;
  *(a1 + 1104) = 24;
  v13 = *(a1 + 10892);
  if (v13 == 37 || v13 == 20)
  {
    *(a1 + 1104) = 152;
  }

  *(a1 + 13724) = 0;
  *(a1 + 13728) = 0x100000000;
  *(v3 + 3568) = 0;
  result = 0.0;
  *(a1 + 13760) = 0;
  *(a1 + 13768) = 0;
  *(a1 + 13740) = 0u;
  *(a1 + 13756) = 0;
  *(v3 + 3604) = xmmword_1849D0;
  *(v3 + 3644) = xmmword_1849D0;
  *&v15 = 0xC0000000CLL;
  *(&v15 + 1) = 0xC0000000CLL;
  *(v3 + 3620) = v15;
  *(v3 + 3660) = v15;
  *(a1 + 13804) = 16777217;
  *(v3 + 3640) = 0;
  *(a1 + 14108) = 1;
  *(a1 + 14116) = 0x200000000;
  *(a1 + 14124) = 0;
  *(a1 + 14131) = 0;
  *(a1 + 14140) = 0u;
  *(a1 + 14156) = 0;
  *(v3 + 3996) = 1;
  *(v3 + 4020) = 0;
  *(v3 + 4060) = 0;
  *(v3 + 4062) = 0;
  *v2 = 0;
  *(a1 + 14168) = 0u;
  *(a1 + 14208) = 0;
  *(a1 + 14192) = 0u;
  *(v2 + 1872) = -1;
  *(a1 + 696) = 0;
  *(a1 + 716) = 0;
  return result;
}

uint64_t sub_EA07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  theDict = v10;
  v119 = v9;
  v120 = v11;
  v121 = v12;
  v14 = v13;
  v117 = v15;
  v122 = v8;
  pixelBuffer = v13;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v140 = 0uLL;
  v16 = sub_1502C8();
  if (sub_160EF0(0xCu, 7))
  {
    v17 = sub_160F34(0xCu);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v18, 12, v19, "AVE_Session_AVC_Process", v122, v117, v14, v119, v120, v121, theDict);
      v20 = sub_175AE4();
      v111 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v20, 12, v111, "AVE_Session_AVC_Process", v122);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v18, 12, v19, "AVE_Session_AVC_Process", v122);
    }
  }

  if (v121 && v120 && v119 && v122 && pixelBuffer)
  {
    if (!*(v122 + 16468))
    {
      v35 = sub_173E4(*(v122 + 16488), *(v122 + 1096));
      if (v35)
      {
        v36 = v35;
        if (sub_160EF0(3u, 4))
        {
          v37 = sub_160F34(3u);
          v38 = sub_175AE4();
          v39 = sub_160F68(4);
          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v38, 3, v39, "AVE_Session_AVC_Process", 5104, "ret == 0");
            v40 = sub_175AE4();
            v113 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v40, 3, v113, "AVE_Session_AVC_Process", 5104, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v38, 3, v39, "AVE_Session_AVC_Process", 5104, "ret == 0");
          }
        }

        goto LABEL_69;
      }

      v63 = *(v122 + 12000);
      v64 = sub_175AE4();
      sub_140028(v63, 5u, v64);
    }

    v21 = sub_175AE4();
    v143 = *v120;
    v144 = v120[2];
    v141 = *v121;
    v142 = v121[2];
    *&v140 = v143;
    DWORD2(v140) = DWORD2(v143);
    sub_1729E0(0, &v140);
    if (sub_160EF0(0x33u, 7))
    {
      v22 = sub_160F34(0x33u);
      v23 = sub_175AE4();
      v24 = sub_160F68(7);
      v25 = *(v122 + 56);
      v26 = *(v122 + 16468);
      v27 = *v120;
      v28 = *(v120 + 2);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v23, 51, v24, "AVE_Session_AVC_Process", 5124, v25, v26, v27, v28, *(v120 + 3), v120[2], v140, DWORD2(v140), *v121, *(v121 + 2), *(v121 + 3), v121[2]);
        v29 = sub_175AE4();
        v30 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v29, 51, v30, "AVE_Session_AVC_Process", 5124, *(v122 + 56), *(v122 + 16468), *v120, *(v120 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v23, &stru_20.segname[11], v24, "AVE_Session_AVC_Process", 5124, v25, v26, v27, v28);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v122 + 18080) = PixelFormatType;
    if (!*(v122 + 16468))
    {
      v153 = *(v122 + 1440);
      v43 = sub_167CD8(PixelFormatType);
      if (!v43)
      {
        if (sub_160EF0(3u, 4))
        {
          v65 = sub_160F34(3u);
          v66 = sub_175AE4();
          v67 = sub_160F68(4);
          if (v65)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v66, 3, v67, "AVE_Session_AVC_Process", 5141, "pPixelFmt != __null", v122, *(v122 + 56), *(v122 + 18080));
            v68 = sub_175AE4();
            v115 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v68, 3, v115);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v66, 3, v67);
          }
        }

        v41 = 0;
        goto LABEL_78;
      }

      if (*(v16 + 420))
      {
        v44 = (v16 + 105);
      }

      else
      {
        v44 = 0;
      }

      sub_CC848(*(v122 + 18064), v44, *(v122 + 64), *(v122 + 10772), v16[103], v16[104], &v153, 1, *(v43 + 3), *(v43 + 1), *(v122 + 1136));
    }

    sub_CCF60(*(v122 + 18064), -1, pixelBuffer);
    v45 = *(v122 + 16464);
    if (v45 != 30566)
    {
      if (v45 != 30567)
      {
        if (v45 != 30568)
        {
          if (sub_160EF0(3u, 4))
          {
            v60 = sub_160F34(3u);
            v61 = sub_175AE4();
            v62 = sub_160F68(4);
            if (v60)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v61, 3, v62, "AVE_Session_AVC_Process", 5280, "false", *(v122 + 16464));
              v61 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v61);
          }

          v41 = 0;
          goto LABEL_133;
        }

        v46 = sub_EB66C(v122, &pixelBuffer, &v147, &v146, &v145 + 1, &v145, 0);
        if (v46)
        {
          v41 = v46;
          if (sub_160EF0(3u, 4))
          {
            v47 = sub_160F34(3u);
            v48 = sub_175AE4();
            v49 = sub_160F68(4);
            if (!v47)
            {
LABEL_77:
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
              goto LABEL_78;
            }

            v50 = 5160;
LABEL_44:
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v48, 3, v49, "AVE_Session_AVC_Process", v50, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        goto LABEL_94;
      }

      if (sub_15F5D0(pixelBuffer))
      {
        v51 = 1;
      }

      else
      {
        v51 = 2;
      }

      *(v122 + 10804) = v51;
      sub_EBCB0(v122, pixelBuffer);
      v52 = sub_EB66C(v122, &pixelBuffer, &v147, &v146, &v145 + 1, &v145, 1);
      if (v52)
      {
        v41 = v52;
        if (sub_160EF0(3u, 4))
        {
          v53 = sub_160F34(3u);
          v48 = sub_175AE4();
          v49 = sub_160F68(4);
          if (!v53)
          {
            goto LABEL_77;
          }

          v50 = 5177;
          goto LABEL_44;
        }

LABEL_78:
        v36 = -1002;
        goto LABEL_134;
      }

      sub_EBECC();
      v69 = sub_EBF6C(v122);
      if (v69)
      {
        v41 = v69;
        if (sub_160EF0(3u, 4))
        {
          v70 = sub_160F34(3u);
          v71 = sub_175AE4();
          v72 = sub_160F68(4);
          if (v70)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v71, 3, v72, "AVE_Session_AVC_Process", 5187, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_78;
      }

      sub_EF0EC(v122, pixelBuffer);
      bzero(v159, 0x1058uLL);
      v153 = v122 + 672;
      v154 = v122 + 1440;
      v77 = *(v122 + 12000);
      v155 = v122 + 10752;
      v156 = v77;
      v78 = *(v122 + 18064);
      v158 = *(v122 + 16480);
      v157 = v78;
      v160 = v122 + 12008;
      v161 = v122 + 13724;
      v162 = v122 + 14108;
      memcpy(v163, (v122 + 16592), sizeof(v163));
      v164 = v21;
      v79 = sub_12A644(*(v122 + 120), &v153, v122 + 128, *(v122 + 16), *(v122 + 112), *(v122 + 16472), *(v122 + 16496), v122 + 160, (v122 + 11772), (v122 + 11464));
      if (v79)
      {
        v41 = v79;
        if (sub_160EF0(3u, 4))
        {
          v80 = sub_160F34(3u);
          v81 = sub_175AE4();
          v82 = sub_160F68(4);
          if (!v80)
          {
            goto LABEL_132;
          }

          v83 = 5212;
          goto LABEL_93;
        }

        goto LABEL_133;
      }

      goto LABEL_94;
    }

    if (sub_15F5D0(pixelBuffer))
    {
      v54 = 1;
    }

    else
    {
      v54 = 2;
    }

    *(v122 + 10804) = v54;
    v55 = sub_EFE80(v122);
    if (!v55)
    {
      sub_EBCB0(v122, pixelBuffer);
      v73 = sub_EB66C(v122, &pixelBuffer, &v147, &v146, &v145 + 1, &v145, 1);
      if (v73)
      {
        v41 = v73;
        if (sub_160EF0(3u, 4))
        {
          v74 = sub_160F34(3u);
          v75 = sub_175AE4();
          v76 = sub_160F68(4);
          if (v74)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v75, 3, v76, "AVE_Session_AVC_Process", 5237, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
        }

        goto LABEL_133;
      }

      sub_EBECC();
      v84 = sub_EBF6C(v122);
      if (v84)
      {
        v41 = v84;
        if (sub_160EF0(3u, 4))
        {
          v85 = sub_160F34(3u);
          v86 = sub_175AE4();
          v87 = sub_160F68(4);
          if (v85)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v86, 3, v87, "AVE_Session_AVC_Process", 5247, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_133;
      }

      sub_EF0EC(v122, pixelBuffer);
      bzero(v159, 0x1058uLL);
      v153 = v122 + 672;
      v154 = v122 + 1440;
      v88 = *(v122 + 12000);
      v155 = v122 + 10752;
      v156 = v88;
      v89 = *(v122 + 18064);
      v158 = *(v122 + 16480);
      v157 = v89;
      v160 = v122 + 12008;
      v161 = v122 + 13724;
      v162 = v122 + 14108;
      memcpy(v163, (v122 + 16592), sizeof(v163));
      v164 = v21;
      v90 = sub_12A644(*(v122 + 120), &v153, v122 + 128, *(v122 + 16), *(v122 + 112), *(v122 + 16472), *(v122 + 16496), v122 + 160, (v122 + 11772), (v122 + 11464));
      if (v90)
      {
        v41 = v90;
        if (sub_160EF0(3u, 4))
        {
          v91 = sub_160F34(3u);
          v81 = sub_175AE4();
          v82 = sub_160F68(4);
          if (!v91)
          {
LABEL_132:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
            goto LABEL_133;
          }

          v83 = 5272;
LABEL_93:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v81, 3, v82, "AVE_Session_AVC_Process", v83, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          goto LABEL_132;
        }

LABEL_133:
        v36 = -1000;
        goto LABEL_134;
      }

LABEL_94:
      *(v122 + 16464) = 30568;
      bzero(v150, 0x1738uLL);
      v123 = 0;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      memset(v134, 0, sizeof(v134));
      v135 = 0u;
      memset(v136, 0, sizeof(v136));
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0;
      bzero(&v153, 0x4A40uLL);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"ResetRCState");
        if (Value)
        {
          if (CFEqual(Value, kCFBooleanTrue))
          {
            v21 = sub_175AE4();
            v123 = v21;
            sub_12D170(*(v122 + 120), &v123);
          }
        }
      }

      *&v134[1] = v143;
      v135 = v141;
      v130[0] = v117;
      v130[1] = pixelBuffer;
      v134[3] = v144;
      v136[0] = v142;
      *&v136[1] = v140;
      *(&v137 + 1) = v150;
      *&v138 = v21;
      DWORD2(v138) = *(v122 + 16508);
      *&v137 = &v153;
      if (*(v122 + 10804) == 2)
      {
        sub_15F768(pixelBuffer, &v124);
        sub_CD91C(*(v122 + 18064), *(v122 + 16508), *(v122 + 16468), &v124);
      }

      v136[3] = &v124;
      if ((*(v122 + 1337) & 2) != 0 && *(v122 + 76) >= 4 && !sub_133F6C(theDict, v151))
      {
        memset(v149, 0, sizeof(v149));
        sub_172100(v149, 32, "%llu %d %d", *(v122 + 56), *(v122 + 16468), v151[0]);
        sub_133ED0(v151, 47, 6, v149, 0);
        v152 = v152 & 0xFFFFFDFF | ((v151[0] > 0) << 9);
      }

      v93 = CMGetAttachment(pixelBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
      if (v93)
      {
        sub_1C324(*(v122 + 16488), *(v122 + 16468), v93);
      }

      sub_207A4(*(v122 + 16488), *(v122 + 16468));
      sub_20464(*(v122 + 16488), *(v122 + 16468), *(v122 + 56));
      sub_1D808(*(v122 + 16488), *(v122 + 16468), *&v125);
      sub_1DC50(*(v122 + 16488), *(v122 + 16468), *&v124);
      sub_1CE6C(*(v122 + 16488), *(v122 + 16468), SDWORD1(v128));
      sub_1F124(*(v122 + 16488), *(v122 + 16468), *(v120 + 2), *v120);
      v36 = sub_F1DC8(v122, theDict, v150, &v153, v130);
      if (!*(v122 + 11476))
      {
        sub_F3720(v122, &v153, *v136[3]);
      }

      if (*(v122 + 16508))
      {
        if (*(v122 + 16496))
        {
          v94 = sub_F3858(v122, &v143, &v153);
          if (v94)
          {
            v41 = v94;
            if (sub_160EF0(3u, 4))
            {
              v95 = sub_160F34(3u);
              v96 = sub_175AE4();
              v97 = sub_160F68(4);
              if (v95)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264MultipassDataFetch failed.\n", v96, 3, v97, "AVE_Session_AVC_Process", 5404, "err == noErr");
                sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264MultipassDataFetch failed.");
            }

            goto LABEL_133;
          }
        }
      }

      *(&v139 + 1) = *(v122 + 16468);
      if (v146)
      {
        v98 = pixelBuffer;
      }

      else
      {
        v98 = 0;
      }

      *(&v133 + 1) = v98;
      v99 = sub_12D95C(*(v122 + 120), v130);
      if (v99)
      {
        v41 = v99;
        if (v99 == -536870173)
        {
          v41 = 3758097123;
          if (sub_160EF0(0x10u, 5))
          {
            v100 = sub_160F34(0x10u);
            v101 = sub_175AE4();
            v102 = sub_160F68(5);
            if (v100)
            {
              printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v101, 16, v102);
              sub_175AE4();
              sub_160F68(5);
            }

            syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
          }
        }

        else if (sub_160EF0(3u, 4))
        {
          v103 = sub_160F34(3u);
          v104 = sub_175AE4();
          v105 = sub_160F68(4);
          if (v103)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v104, 3, v105, "AVE_Session_AVC_Process", 5429, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
        }

        goto LABEL_133;
      }

      if (!v36)
      {
        v41 = 0;
        ++*(v122 + 16468);
        goto LABEL_134;
      }

LABEL_69:
      v41 = 0;
      goto LABEL_134;
    }

    v41 = v55;
    if (sub_160EF0(3u, 4))
    {
      v56 = sub_160F34(3u);
      v57 = sub_175AE4();
      v58 = sub_160F68(4);
      if (v56)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v57, 3, v58, "AVE_Session_AVC_Process", 5227, "err == 0");
        v59 = sub_175AE4();
        v114 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed", v59, 3, v114, "AVE_Session_AVC_Process", 5227, "err == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed", v57, 3, v58, "AVE_Session_AVC_Process", 5227, "err == 0");
      }
    }

    v36 = v41;
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v31 = sub_160F34(0xCu);
      v32 = sub_175AE4();
      v33 = sub_160F68(4);
      if (v31)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v32, 12, v33, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v122, v117, pixelBuffer, v119, v120, v121, theDict);
        v34 = sub_175AE4();
        v112 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v34, 12, v112, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v122);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v32, 12, v33, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v122);
      }
    }

    v41 = 0;
    v36 = -1001;
  }

LABEL_134:
  if (sub_160EF0(0xCu, 7))
  {
    v106 = sub_160F34(0xCu);
    v107 = sub_175AE4();
    v108 = sub_160F68(7);
    if (v106)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v107, 12, v108, "AVE_Session_AVC_Process", v122, v117, pixelBuffer, v119, v120, v121, theDict, v36);
      v109 = sub_175AE4();
      v116 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v109, 12, v116, "AVE_Session_AVC_Process", v122, v117);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v107, 12, v108, "AVE_Session_AVC_Process", v122, v117);
    }
  }

  return v41;
}

uint64_t sub_EB66C(uint64_t a1, CVPixelBufferRef *a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, char a7)
{
  v59 = 0;
  v14 = (a1 + 16448);
  v15 = a1 + 10171;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  HIDWORD(v53) = PixelFormatType;
  v17 = v14[24];
  if (!v17)
  {
    v17 = *(a1 + 1440);
  }

  v45 = v17;
  v18 = v14[25];
  if (!v18)
  {
    v18 = *(a1 + 1444);
  }

  v46 = v18;
  v19 = *(a1 + 10772);
  v47 = vrev64_s32(*(a1 + 64));
  v48 = *(a1 + 716);
  v49 = v19;
  v20 = *(a1 + 10892);
  v50 = *(a1 + 10752);
  v51 = v20;
  LODWORD(v53) = *(a1 + 10860);
  BYTE4(v53) = *(a1 + 692) > 0;
  DWORD2(v53) = *(a1 + 10804);
  HIBYTE(v59) = *(a1 + 76) > 11;
  if (*(v15 + 3013) == 1)
  {
    v52 = *(v15 + 3017);
  }

  if (v14[5] && *(a1 + 11972) != PixelFormatType)
  {
    kdebug_trace();
    v21 = sub_DDF24(&v45, a2, (a1 + 16568), *(a1 + 11972));
    kdebug_trace();
    if (v21)
    {
      if (sub_160EF0(3u, 4))
      {
        v22 = sub_160F34(3u);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", v23, 3, v24, "AVE_AVC_VerifyImageBuffer", 2946, "err == noErr", *a2, HIDWORD(v53), *(a1 + 11972), v21);
          v25 = sub_175AE4();
          v43 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v25, 3, v43);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v23, 3, v24);
        }
      }

      return v21;
    }

    *a4 = 1;
  }

  v21 = sub_DCDC0(&v45, a2, (a1 + 16560));
  if (v21)
  {
    return v21;
  }

  *a3 = v59;
  v27 = DWORD1(v57);
  *a5 = v57;
  *a6 = v27;
  if (*(a1 + 76) < 12)
  {
    *(v15 + 351) = BYTE1(v59);
  }

  else
  {
    *(v15 + 351) = 0;
    if (v45 != *(a1 + 1440) || v46 != *(a1 + 1444))
    {
      v28 = 1;
      goto LABEL_22;
    }
  }

  v28 = BYTE2(v59);
LABEL_22:
  *(v15 + 679) = v28;
  v29 = DWORD1(v55);
  *(v15 + 33) = (DWORD1(v55) & 0xFFFFFFFE) == 2;
  if (v29 == 3)
  {
    *(v15 + 358) = BYTE12(v55);
  }

  if (*(a1 + 10752) == 2)
  {
    *(a1 + 10864) = DWORD2(v57);
    *(v15 + 697) = *(&v56 + 1);
    *(v15 + 705) = vuzp2q_s32(vextq_s8(v58, v58, 4uLL), v58);
    if (a7)
    {
      *(a1 + 10768) = HIDWORD(v53);
LABEL_29:
      v31 = DWORD2(v54);
      v32 = v54;
      *(a1 + 12044) = DWORD2(v54);
      *(a1 + 10188) = v31;
      *(a1 + 10192) = v32;
      *v15 = DWORD1(v55) != 1;
      *(v15 + 610) = 1;
      if (*(a1 + 10892) == 37 && v31 == 3)
      {
        *(v15 + 685) = 1;
        *(a1 + 1088) &= ~2uLL;
      }
    }
  }

  else if (a7)
  {
    v30 = HIDWORD(v53);
    *(a1 + 10768) = HIDWORD(v53);
    if (!v14[5])
    {
      v37 = *(a1 + 12052) + 8;
      if (v37 <= *(a1 + 12056) + 8)
      {
        v37 = *(a1 + 12056) + 8;
      }

      v38 = sub_DDADC(*(a1 + 68), *(a1 + 64), *(a1 + 716), 1, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v37, *v14, v30 | 0x100000000, *(a1 + 16));
      if (v38)
      {
        v39 = v38;
        if (sub_160EF0(0x1Eu, 5))
        {
          v40 = sub_160F34(0x1Eu);
          v41 = sub_175AE4();
          v42 = sub_160F68(5);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d\n", v41, 30, v42, "AVE_AVC_VerifyImageBuffer", 3018, a1, *(a1 + 56), 0, v39);
            v41 = sub_175AE4();
            sub_160F68(5);
          }

          syslog(3, "%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d", v41, 30);
        }
      }
    }

    goto LABEL_29;
  }

  if (v14[5])
  {
    if (*(a1 + 11972) == HIDWORD(v53))
    {
      return 0;
    }

    else
    {
      if (sub_160EF0(0xCu, 4))
      {
        v33 = sub_160F34(0xCu);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x\n", v34, 12, v35, "AVE_AVC_VerifyImageBuffer", 3051, "false", *(a1 + 56), v14[5], *(a1 + 11972), HIDWORD(v53));
          v36 = sub_175AE4();
          v44 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x", v36, 12, v44);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x", v34, 12, v35);
        }
      }

      return 4294954394;
    }
  }

  else
  {
    v21 = 0;
    *(a1 + 11972) = HIDWORD(v53);
  }

  return v21;
}

void sub_EBCB0(uint64_t a1, __CVBuffer *a2)
{
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams\n", v5, 12, v6);
      v7 = sub_175AE4();
      v22 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v7, 12, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v5, 12, v6);
    }
  }

  if (*(a1 + 13184))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v9 = sub_167CD8(PixelFormatType);
    if (v9)
    {
      v10 = *(v9 + 3);
      *(a1 + 12044) = v10;
    }

    else
    {
      v10 = *(a1 + 12044);
    }

    v12 = v10 != 3 && v10 != 0;
    v13 = v10 == 1;
    v14 = *(a1 + 13196);
    if (v14)
    {
      if (v10 == 1)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      *(a1 + 13196) = ((v14 + v15 - 1) & ~v13) >> v13;
    }

    v16 = *(a1 + 13200);
    if (v16)
    {
      *(a1 + 13200) = ((v16 + v13) & ~v13) >> v13;
    }

    v17 = *(a1 + 13188);
    if (v17)
    {
      *(a1 + 13188) = ((v17 + v12) & ~v12) >> v12;
    }

    v18 = *(a1 + 13192);
    if (v18)
    {
      *(a1 + 13192) = ((v18 + v12) & ~v12) >> v12;
    }

    if (sub_160EF0(0x10u, 7))
    {
      v19 = sub_160F34(0x10u);
      v20 = sub_175AE4();
      v21 = sub_160F68(7);
      if (v19)
      {
        printf("%lld %d AVE %s: FIG: frame_crop_top_offset = %d frame_crop_bottom_offset %d frame_crop_left_offset = %d frame_crop_right_offset %d\n", v20, 16, v21, *(a1 + 13196), *(a1 + 13200), *(a1 + 13188), *(a1 + 13192));
        v20 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: FIG: frame_crop_top_offset = %d frame_crop_bottom_offset %d frame_crop_left_offset = %d frame_crop_right_offset %d", v20);
    }
  }
}

void sub_EBECC()
{
  if (sub_160EF0(0xCu, 7))
  {
    v0 = sub_160F34(0xCu);
    v1 = sub_175AE4();
    v2 = sub_160F68(7);
    if (v0)
    {
      printf("%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame\n", v1, 12, v2);
      v3 = sub_175AE4();
      v4 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v3, 12, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v1, 12, v2);
    }
  }
}

uint64_t sub_EBF6C(uint64_t a1)
{
  v2 = sub_1502C8();
  v320 = 0;
  v319 = 0.0;
  if (sub_160EF0(0xCu, 7))
  {
    v3 = sub_160F34(0xCu);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters\n", v4, 12, v5);
      v6 = sub_175AE4();
      v289 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v6, 12, v289);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v4, 12, v5);
    }
  }

  v7 = *(a1 + 16856);
  if (v7 >= 0.0 && sub_E7BA4(a1, v7) && sub_160EF0(0x1Eu, 5))
  {
    v8 = sub_160F34(0x1Eu);
    v9 = sub_175AE4();
    v10 = sub_160F68(5);
    if (v8)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]\n", v9, 30, v10);
      v11 = sub_175AE4();
      v290 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v11, 30, v290);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v9, 30, v10);
    }
  }

  v12 = *(a1 + 16848);
  if (v12 >= 0.0 && sub_E7948(a1, v12) && sub_160EF0(0x1Eu, 5))
  {
    v13 = sub_160F34(0x1Eu);
    v14 = sub_175AE4();
    v15 = sub_160F68(5);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]\n", v14, 30, v15);
      v16 = sub_175AE4();
      v291 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]", v16, 30, v291);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]", v14, 30, v15);
    }
  }

  if ((*(a1 + 1132) & 0xFFFFFFFE) == 6)
  {
    v17 = sub_16D34C(*(v2 + 206), *(a1 + 16828), &v320);
    if (v17)
    {
      v18 = v17;
      if (sub_160EF0(0x10u, 4))
      {
        v19 = sub_160F34(0x10u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d\n", v20, 16, v21, "AVE_ValidateEncoderParameters", 1921, "ret == 0", a1, *(a1 + 56), *(v2 + 206), *(a1 + 16828));
          v22 = sub_175AE4();
          v292 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d", v22, 16, v292);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d", v20, 16, v21);
        }
      }

      return v18;
    }

    *(a1 + 1208) = v320;
  }

  v23 = sub_16D7F4(*(a1 + 1120), &v319, v2[104], *(a1 + 17864), *(a1 + 16832));
  if (v23)
  {
    v18 = v23;
    if (sub_160EF0(0x10u, 4))
    {
      v24 = sub_160F34(0x10u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx\n", v25, 16, v26, "AVE_ValidateEncoderParameters", 1932, "ret == 0", a1, *(a1 + 56), v2[104], *(a1 + 17864), *(a1 + 16832), *(a1 + 1120));
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx", v25, 16, v26);
    }

    return v18;
  }

  v27 = *&v319;
  *(a1 + 1216) = v319;
  v28 = sub_16DDF4(*(a1 + 1120), &v319, v2[105], *(a1 + 17872), *(a1 + 16840), *&v27);
  if (!v28)
  {
    v33 = (a1 + 10168);
    *(a1 + 1224) = v319;
    v34 = *(a1 + 76);
    if (v34 >= 30)
    {
      v35 = *(a1 + 1336);
      if ((v35 & 0x200) != 0)
      {
        if (sub_160EF0(0x10u, 5))
        {
          v36 = sub_160F34(0x10u);
          v37 = sub_175AE4();
          v38 = sub_160F68(5);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.\n", v37, 16, v38, "AVE_ValidateEncoderParameters", 1956);
            v39 = sub_175AE4();
            v294 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.", v39, 16, v294, "AVE_ValidateEncoderParameters", 1956);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.", v37, 16, v38, "AVE_ValidateEncoderParameters", 1956);
          }
        }

        v35 = *(a1 + 1336) & 0xFFFFFDFF;
        *(a1 + 1336) = v35;
      }

      if ((v35 & 0x40) != 0)
      {
        if (sub_160EF0(0x10u, 5))
        {
          v41 = sub_160F34(0x10u);
          v42 = sub_175AE4();
          v43 = sub_160F68(5);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.\n", v42, 16, v43, "AVE_ValidateEncoderParameters", 1963);
            v44 = sub_175AE4();
            v295 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.", v44, 16, v295, "AVE_ValidateEncoderParameters", 1963);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.", v42, 16, v43, "AVE_ValidateEncoderParameters", 1963);
          }
        }

        *(a1 + 1336) &= ~0x40u;
      }

      if (*(a1 + 10248) == 1)
      {
        if (sub_160EF0(3u, 4))
        {
          v45 = sub_160F34(3u);
          v46 = sub_175AE4();
          v47 = sub_160F68(4);
          if (v45)
          {
            printf("%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.\n", v46, 3, v47, "AVE_ValidateEncoderParameters", 1968, "!pINS->VideoParams.bSliceEncodingMode");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.");
        }

        return 4294966295;
      }

      v34 = *(a1 + 76);
    }

    if (v34 >= 17)
    {
      v48 = *(a1 + 716);
      if (*(a1 + 10752) == 2)
      {
        v48 &= 0xFFFFFC3F;
        *(a1 + 716) = v48;
      }

      if ((v48 & 0x3C0) != 0)
      {
        *(a1 + 716) = v48 & 0xFFFFFC3F;
        if (sub_160EF0(0x10u, 5))
        {
          v49 = sub_160F34(0x10u);
          v50 = sub_175AE4();
          v51 = sub_160F68(5);
          if (v49)
          {
            printf("%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!\n", v50, 16, v51);
            v52 = sub_175AE4();
            v296 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!", v52, 16, v296);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!", v50, 16, v51);
          }
        }
      }
    }

    else
    {
      *(a1 + 716) &= 0xFFFFFC3F;
    }

    v53 = *(a1 + 1132);
    if (v53 == 4)
    {
      if (*(a1 + 16496))
      {
        if (sub_160EF0(3u, 4))
        {
          v57 = sub_160F34(3u);
          v58 = sub_175AE4();
          v59 = sub_160F68(4);
          if (v57)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail\n", v58, 3, v59, "AVE_ValidateEncoderParameters", 2010, "false", *(a1 + 10892));
            v58 = sub_175AE4();
            v59 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail", v58, 3, v59, "AVE_ValidateEncoderParameters", 2010, "false", *(a1 + 10892));
        }

        return 4294966296;
      }
    }

    else if (v53 == 20 && *(a1 + 10892) != 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v54 = sub_160F34(3u);
        v55 = sub_175AE4();
        v56 = sub_160F68(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = %d. Fail.\n", v55, 3, v56, "AVE_ValidateEncoderParameters", 2001, "false", *(a1 + 10892), *(a1 + 1132));
          v55 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = %d. Fail.", v55);
      }

      return 4294966295;
    }

    v60 = *(a1 + 1120);
    if ((v60 & 0x80000000) == 0)
    {
      v61 = *(a1 + 1256);
      goto LABEL_83;
    }

    *(a1 + 1120) = v60 | 4;
    v61 = *(a1 + 1256);
    if (v61 == 2)
    {
      v61 = 3;
      *(a1 + 1256) = 3;
    }

    if (v53 != 4)
    {
LABEL_83:
      if (v61)
      {
        if (*(a1 + 76) >= 3)
        {
          if (v61 > 3)
          {
            if (sub_160EF0(0x10u, 5))
            {
              v72 = sub_160F34(0x10u);
              v73 = sub_175AE4();
              v74 = sub_160F68(5);
              if (v72)
              {
                printf("%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!\n", v73, 16, v74, "AVE_ValidateEncoderParameters", 2061, *(a1 + 1256), 3);
                v73 = sub_175AE4();
                sub_160F68(5);
              }

              syslog(3, "%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!", v73);
            }

            *(a1 + 1256) = 3;
            v75 = *(a1 + 1240);
LABEL_110:
            v80 = *(a1 + 1264);
            if (v80 == 1)
            {
              *(a1 + 1268) = 0;
              *(a1 + 1272) = 0xBFF0000000000000;
              *(a1 + 1280) = 0xBFF0000000000000;
              *(a1 + 1252) = 0;
              *(a1 + 1260) = 1;
              v75 &= ~0x400u;
              *(a1 + 1240) = v75;
              *(a1 + 1288) = 1;
            }

            else if (v80 <= 0 && *(a1 + 1268) <= 0 && *(a1 + 1272) <= 0.0 && *(a1 + 1280) <= 0.0)
            {
              *(a1 + 1264) = 30;
            }

            if (!*(a1 + 1256))
            {
              v75 &= ~0x400u;
              *(a1 + 1240) = v75;
            }

            if (((*(a1 + 17884) | *(a1 + 17880)) & 0x400) == 0 && (v75 & 0x400) != 0 && (*(a1 + 1123) & 0x80) != 0)
            {
              *(a1 + 1240) = v75 & 0xFFFFFBFF;
            }

            if (*(a1 + 1232) <= -13)
            {
              *(a1 + 1232) = -6 * *(a1 + 12052);
            }

            if (*(a1 + 1236) <= -13)
            {
              if (*(a1 + 1132) == 20)
              {
                v81 = 51;
              }

              else
              {
                v81 = 48;
              }

              *(a1 + 1236) = v81;
            }

            if (*(a1 + 1344) <= -13)
            {
              *(a1 + 1344) = -6 * *(a1 + 12052);
            }

            v82 = (a1 + 1344);
            if (*(a1 + 1348) <= -13)
            {
              if (*(a1 + 1132) == 20)
              {
                v83 = 51;
              }

              else
              {
                v83 = 48;
              }

              *(a1 + 1348) = v83;
            }

            if (sub_17D104((a1 + 1344), *(a1 + 12052) + 8))
            {
              if (sub_160EF0(3u, 4))
              {
                v84 = sub_160F34(3u);
                v85 = sub_175AE4();
                v86 = sub_160F68(4);
                if (v84)
                {
                  printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]\n", v85, 3, v86, "AVE_ValidateEncoderParameters", 2148, "false", *(a1 + 1344), *(a1 + 1348));
                  v85 = sub_175AE4();
                  sub_160F68(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]", v85);
              }

              return 4294966295;
            }

            v87 = (a1 + 1232);
            if (sub_17D104((a1 + 1232), *(a1 + 12052) + 8))
            {
              if (sub_160EF0(3u, 4))
              {
                v88 = sub_160F34(3u);
                v89 = sub_175AE4();
                v90 = sub_160F68(4);
                if (v88)
                {
                  printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]\n", v89, 3, v90, "AVE_ValidateEncoderParameters", 2156, "false", *(a1 + 1232), *(a1 + 1236));
                  v89 = sub_175AE4();
                  sub_160F68(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]", v89);
              }

              return 4294966295;
            }

            if (*v87 < *v82)
            {
              *v87 = *v82;
            }

            v91 = *(a1 + 1348);
            if (*(a1 + 1236) > v91)
            {
              *(a1 + 1236) = v91;
            }

            v92 = *(a1 + 10252);
            if (v92 >= 33)
            {
              if (!sub_160EF0(3u, 4))
              {
                return 4294966295;
              }

              v99 = sub_160F34(3u);
              v100 = sub_175AE4();
              v101 = sub_160F68(4);
              if (v99)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)\n", v100, 3, v101, "AVE_ValidateEncoderParameters", 2178, "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))", *(v33 + 21), 32);
                v100 = sub_175AE4();
                v101 = sub_160F68(4);
              }

              v317 = *(v33 + 21);
              v318 = 32;
              v315 = 2178;
              v316 = "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))";
              v299 = v101;
              v102 = "%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)";
            }

            else
            {
              if (v92)
              {
                v93 = *(a1 + 12008);
                if (v93 != 4)
                {
                  if (v93 != 2)
                  {
                    goto LABEL_196;
                  }

                  if (*(a1 + 13732))
                  {
                    if (sub_160EF0(0x10u, 5))
                    {
                      v94 = sub_160F34(0x10u);
                      v95 = sub_175AE4();
                      v96 = sub_160F68(5);
                      v97 = *(a1 + 12008);
                      if (v94)
                      {
                        printf("%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.\n", v95, 16, v96, v97);
                        v98 = sub_175AE4();
                        v298 = sub_160F68(5);
                        syslog(3, "%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.", v98, 16, v298, *(a1 + 12008));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.", v95, 16, v96, v97);
                      }
                    }

                    *(a1 + 13732) = 0;
                  }
                }

                if (*(a1 + 13807) == 1)
                {
                  if (sub_160EF0(0x10u, 5))
                  {
                    v105 = sub_160F34(0x10u);
                    v106 = sub_175AE4();
                    v107 = sub_160F68(5);
                    v108 = *(a1 + 12008);
                    if (v105)
                    {
                      printf("%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.\n", v106, 16, v107, v108);
                      v109 = sub_175AE4();
                      v300 = sub_160F68(5);
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.", v109, 16, v300, *(a1 + 12008));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.", v106, 16, v107, v108);
                    }
                  }

                  *(a1 + 13807) = 0;
                  *(a1 + 10176) = 0;
                }

                if (*(a1 + 13808) == 1)
                {
                  if (sub_160EF0(0x10u, 5))
                  {
                    v110 = sub_160F34(0x10u);
                    v111 = sub_175AE4();
                    v112 = sub_160F68(5);
                    v113 = *(a1 + 12008);
                    if (v110)
                    {
                      printf("%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.\n", v111, 16, v112, v113);
                      v114 = sub_175AE4();
                      v301 = sub_160F68(5);
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.", v114, 16, v301, *(a1 + 12008));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.", v111, 16, v112, v113);
                    }
                  }

                  *(a1 + 13808) = 0;
                }

                v115 = 0;
                v116 = a1 + 13812;
                do
                {
                  if (*(v116 + v115) >= 1)
                  {
                    if (sub_160EF0(0x10u, 5))
                    {
                      v117 = sub_160F34(0x10u);
                      v118 = sub_175AE4();
                      v119 = sub_160F68(5);
                      v120 = *(a1 + 12008);
                      if (v117)
                      {
                        printf("%lld %d AVE %s: FIG: profile %d and second_chroma_qp_index_offset is > 0. setting it to 0.\n", v118, 16, v119, v120);
                        v118 = sub_175AE4();
                        v119 = sub_160F68(5);
                        v120 = *(a1 + 12008);
                      }

                      syslog(3, "%lld %d AVE %s: FIG: profile %d and second_chroma_qp_index_offset is > 0. setting it to 0.", v118, 16, v119, v120);
                    }

                    *(v116 + v115) = 0;
                  }

                  v115 += 4;
                }

                while (v115 != 32);
                v93 = *(a1 + 12008);
LABEL_196:
                if (v93 != 6 && v93 != 0)
                {
                  goto LABEL_219;
                }

                v122 = *(a1 + 12044);
                v123 = sub_160EF0(0x10u, 6);
                if (v122 == 3)
                {
                  if (v123)
                  {
                    v127 = sub_160F34(0x10u);
                    v128 = sub_175AE4();
                    v129 = sub_160F68(6);
                    if (v127)
                    {
                      printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v128, 16, v129, "AVE_ValidateEncoderParameters", 2245, *(a1 + 12008), 9);
                      v128 = sub_175AE4();
                      sub_160F68(6);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v128);
                  }

                  v133 = 9;
                }

                else
                {
                  if (v122 != 2)
                  {
                    if (v123)
                    {
                      v130 = sub_160F34(0x10u);
                      v131 = sub_175AE4();
                      v132 = sub_160F68(6);
                      if (v130)
                      {
                        printf("%lld %d AVE %s: %s:%d chroma format idc %d profile %d\n", v131, 16, v132, "AVE_ValidateEncoderParameters", 2251, *(a1 + 12044), *(a1 + 12008));
                        v131 = sub_175AE4();
                        sub_160F68(6);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d chroma format idc %d profile %d", v131);
                    }

LABEL_219:
                    *(a1 + 1368) = sub_FB108(*(v2 + 256), *(a1 + 18004), *(a1 + 68), *(a1 + 76), *(a1 + 64), 1, *(a1 + 12044), *(a1 + 16628), *(a1 + 10892), *(a1 + 692), *(a1 + 1112) * ((*(a1 + 1440) + 15) >> 4) * ((*(a1 + 1444) + 15) >> 4), *(a1 + 1440), *(a1 + 1444));
                    if (*(a1 + 76) >= 30 && !*(a1 + 692) && *(a1 + 16628) >= 1)
                    {
                      *(a1 + 688) |= 0x100u;
                      *(a1 + 1256) = 0;
                      *(a1 + 1240) &= 0xFFFFFAFF;
                    }

                    if (*(a1 + 1308) > 1)
                    {
                      if ((v134 = *(a1 + 10892), v134 <= 0x26) && ((1 << v134) & 0x6000100000) != 0 || v134 == 10000)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v135 = sub_160F34(0x10u);
                          v136 = sub_175AE4();
                          v137 = sub_160F68(5);
                          v138 = *(a1 + 1308);
                          if (v135)
                          {
                            printf("%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1\n", v136, 16, v137, *(a1 + 10892), v138);
                            v139 = sub_175AE4();
                            v140 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1", v139, 16, v140, *(a1 + 10892), *(a1 + 1308));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1", v136, 16, v137, *(a1 + 10892), v138);
                          }
                        }

                        *(a1 + 1308) = 1;
                      }
                    }

                    if (*(a1 + 12060) == 1)
                    {
                      v141 = *(a1 + 10892);
                      if (v141 <= 0x26 && ((1 << v141) & 0x6000100002) != 0 || v141 == 10000)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v142 = sub_160F34(0x10u);
                          v143 = sub_175AE4();
                          v144 = sub_160F68(5);
                          v145 = *(a1 + 10892);
                          if (v142)
                          {
                            printf("%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.\n", v143, 16, v144, v145);
                            v146 = sub_175AE4();
                            v302 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v146, 16, v302, *(a1 + 10892));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v143, 16, v144, v145);
                          }
                        }

                        *(a1 + 12060) = 0;
                      }

                      if (*(a1 + 12008) != 9)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v147 = sub_160F34(0x10u);
                          v148 = sub_175AE4();
                          v149 = sub_160F68(5);
                          v150 = *(a1 + 12008);
                          if (v147)
                          {
                            printf("%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.\n", v148, 16, v149, v150);
                            v151 = sub_175AE4();
                            v303 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.", v151, 16, v303, *(a1 + 12008));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.", v148, 16, v149, v150);
                          }
                        }

                        *(a1 + 12008) = 9;
                        *(a1 + 12036) = 17;
                      }

                      if (*(a1 + 1132) != 3)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v152 = sub_160F34(0x10u);
                          v153 = sub_175AE4();
                          v154 = sub_160F68(5);
                          v155 = *(a1 + 1132);
                          if (v152)
                          {
                            printf("%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.\n", v153, 16, v154, v155);
                            v156 = sub_175AE4();
                            v304 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v156, 16, v304, *(a1 + 1132));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v153, 16, v154, v155);
                          }
                        }

                        *(a1 + 1132) = 3;
                      }

                      if (*(a1 + 1336))
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v157 = sub_160F34(0x10u);
                          v158 = sub_175AE4();
                          v159 = sub_160F68(5);
                          v160 = *(a1 + 1336);
                          if (v157)
                          {
                            printf("%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.\n", v158, 16, v159, "AVE_ValidateEncoderParameters", 2350, v160);
                            v161 = sub_175AE4();
                            v162 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.", v161, 16, v162, "AVE_ValidateEncoderParameters", 2350, *(a1 + 1336));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.", v158, 16, v159, "AVE_ValidateEncoderParameters", 2350, v160);
                          }
                        }

                        *(a1 + 1336) = 0;
                      }

                      if ((*(a1 + 1352) & 0x1E) != 0)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v163 = sub_160F34(0x10u);
                          v164 = sub_175AE4();
                          v165 = sub_160F68(5);
                          v166 = *(a1 + 1352);
                          if (v163)
                          {
                            printf("%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0\n", v164, 16, v165, v166);
                            v167 = sub_175AE4();
                            v305 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v167, 16, v305, *(a1 + 1352));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v164, 16, v165, v166);
                          }
                        }

                        *(a1 + 1352) = 0;
                      }

                      v168 = -6 * *(a1 + 12052);
                      *(a1 + 1348) = v168;
                      *(a1 + 1344) = v168;
                      *(a1 + 1236) = v168;
                      *(a1 + 1232) = v168;
                      *(a1 + 1152) = v168;
                      *(a1 + 1148) = v168;
                      *(a1 + 1144) = v168;
                      if (*(a1 + 13732) == 1)
                      {
                        v169 = ((*(a1 + 1440) >> 4) + 31) & 0x1FFFFFE0;
                        if (v169 > 0x100 || (*(a1 + 1444) >> 4) * v169 > 0xC000)
                        {
                          if (sub_160EF0(0x10u, 5))
                          {
                            v170 = sub_160F34(0x10u);
                            v171 = sub_175AE4();
                            v172 = sub_160F68(5);
                            v173 = *(a1 + 1440);
                            v174 = *(a1 + 13732);
                            if (v170)
                            {
                              printf("%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.\n", v171, 16, v172, v173, *(a1 + 1444), v174);
                              v175 = sub_175AE4();
                              v176 = sub_160F68(5);
                              syslog(3, "%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.", v175, 16, v176, *(a1 + 1440), *(a1 + 1444), *(a1 + 13732));
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.", v171, 16, v172, v173, *(a1 + 1444), v174);
                            }
                          }

                          *(a1 + 13732) = 0;
                        }
                      }

                      if (*(a1 + 1464))
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v177 = sub_160F34(0x10u);
                          v178 = sub_175AE4();
                          v179 = sub_160F68(5);
                          v180 = *(a1 + 1464);
                          if (v177)
                          {
                            printf("%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.\n", v178, 16, v179, v180);
                            v181 = sub_175AE4();
                            v306 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v181, 16, v306, *(a1 + 1464));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v178, 16, v179, v180);
                          }
                        }

                        *(a1 + 1464) = 0;
                      }

                      if ((*(a1 + 1336) & 0x40) != 0)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v182 = sub_160F34(0x10u);
                          v183 = sub_175AE4();
                          v184 = sub_160F68(5);
                          v185 = *(a1 + 1336);
                          if (v182)
                          {
                            printf("%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.\n", v183, 16, v184, v185);
                            v186 = sub_175AE4();
                            v307 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v186, 16, v307, *(a1 + 1336));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v183, 16, v184, v185);
                          }
                        }

                        *(a1 + 1336) &= ~0x40u;
                      }
                    }

                    v187 = *(a1 + 11460);
                    if (v187 >= *(a1 + 1112))
                    {
                      *(a1 + 11460) = 0;
                      *(a1 + 1288) = 1;
                      v192 = *(a1 + 1256) == 0;
                    }

                    else if (*(a1 + 1256))
                    {
                      if (v187 < 1)
                      {
                        v192 = 0;
                      }

                      else
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v188 = sub_160F34(0x10u);
                          v189 = sub_175AE4();
                          v190 = sub_160F68(5);
                          if (v188)
                          {
                            printf("%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)\n", v189, 16, v190);
                            v191 = sub_175AE4();
                            v308 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)", v191, 16, v308);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)", v189, 16, v190);
                          }
                        }

                        *(a1 + 1256) = 0x100000000;
                        v192 = 1;
                        *(a1 + 1288) = 1;
                        *(a1 + 1240) &= ~0x400u;
                      }
                    }

                    else
                    {
                      v192 = 1;
                    }

                    if ((*(a1 + 10764) & 1) == 0)
                    {
                      if (*(a1 + 1132) == 20)
                      {
                        v192 = 1;
                      }

                      if (!v192)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v193 = sub_160F34(0x10u);
                          v194 = sub_175AE4();
                          v195 = sub_160F68(5);
                          v196 = *(a1 + 1256);
                          if (v193)
                          {
                            printf("%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true\n", v194, 16, v195, *(a1 + 1132), v196);
                            v197 = sub_175AE4();
                            v198 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v197, 16, v198, *(a1 + 1132), *(a1 + 1256));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v194, 16, v195, *(a1 + 1132), v196);
                          }
                        }

                        *(a1 + 10764) = 1;
                      }
                    }

                    if (*(a1 + 16496))
                    {
                      *(a1 + 10540) = 1;
                    }

                    if (*(a1 + 1256) && *(a1 + 1476) == 1)
                    {
                      if (sub_160EF0(0x10u, 5))
                      {
                        v199 = sub_160F34(0x10u);
                        v200 = sub_175AE4();
                        v201 = sub_160F68(5);
                        v202 = *(a1 + 1256);
                        if (v199)
                        {
                          printf("%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.\n", v200, 16, v201, v202);
                          v203 = sub_175AE4();
                          v309 = sub_160F68(5);
                          syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.", v203, 16, v309, *(a1 + 1256));
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.", v200, 16, v201, v202);
                        }
                      }

                      *(a1 + 1476) = 0;
                    }

                    if (!sub_E71EC(*(a1 + 68), 1, 1, *v33))
                    {
                      if (sub_160EF0(3u, 4))
                      {
                        v213 = sub_160F34(3u);
                        v214 = sub_175AE4();
                        v215 = sub_160F68(4);
                        if (v213)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | FIG: invalid search_range\n", v214, 3, v215, "AVE_ValidateEncoderParameters", 2473, "pEntry != __null");
                          sub_175AE4();
                          sub_160F68(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: invalid search_range");
                      }

                      return 4294966295;
                    }

                    if (*(a1 + 10857) == 1 && (*(a1 + 10783) & 1) == 0 && *(a1 + 1132) != 4 && !*(a1 + 16496) && (*(a1 + 10858) & 1) == 0)
                    {
                      if (*(a1 + 10904) == 1)
                      {
                        *(a1 + 1352) = 0;
                        *(a1 + 1336) = 0;
                      }

                      *(a1 + 10764) = 1;
                    }

                    if ((*(a1 + 10904) & 1) != 0 || (*(a1 + 716) & 0x3C0) != 0 || *(a1 + 16496))
                    {
                      *(a1 + 1128) = 0;
                      *(a1 + 1120) &= ~0x80000000uLL;
                    }

                    else if ((*(a1 + 1123) & 0x80) != 0)
                    {
                      *(a1 + 11460) = 0;
                      *(a1 + 1104) |= 0x40uLL;
                    }

                    v204 = *(a1 + 1336);
                    if ((v204 & 0x40) != 0)
                    {
                      v205 = *(a1 + 1440) >> 4;
                      v206 = *(a1 + 1444) >> 4;
                      v207 = (v205 + 31) & 0x1FFFFFE0;
                      if (v207 > 0x80 || v207 * v206 >= 0x2D01)
                      {
                        v208 = (((v205 + 1) >> 1) + 31) & 0x1FFFFFE0;
                        if (v208 > 0x80 || v208 * ((v206 + 1) >> 1) >= 0x2D01)
                        {
                          v204 &= ~0x40u;
                          *(a1 + 1336) = v204;
                        }
                      }
                    }

                    if (*(a1 + 11792) >= 0x1Fu)
                    {
                      if (sub_160EF0(0x10u, 5))
                      {
                        v209 = sub_160F34(0x10u);
                        v210 = sub_175AE4();
                        v211 = sub_160F68(5);
                        if (v209)
                        {
                          printf("%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM\n", v210, 16, v211, 30);
                          v212 = sub_175AE4();
                          v310 = sub_160F68(5);
                          syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v212, 16, v310, 30);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v210, 16, v211, 30);
                        }
                      }

                      *(a1 + 11792) = 30;
                      v204 = *(a1 + 1336);
                    }

                    if ((v204 & 0x10) != 0)
                    {
                      v216 = *(a1 + 1132);
                      if (v216 <= 0x14 && ((1 << v216) & 0x100009) != 0)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v217 = sub_160F34(0x10u);
                          v218 = sub_175AE4();
                          v219 = sub_160F68(5);
                          if (v217)
                          {
                            printf("%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x (!= 0) is not supported. set QPMod feature to 0\n", v218, 16, v219, "AVE_ValidateEncoderParameters", 2560, *(a1 + 1132), *(a1 + 1336));
                            v218 = sub_175AE4();
                            sub_160F68(5);
                          }

                          syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x (!= 0) is not supported. set QPMod feature to 0", v218);
                        }

                        v204 = 0;
                        *(a1 + 1336) = 0;
                        v216 = *(a1 + 1132);
                      }

                      if (v216 == 100)
                      {
                        if (sub_160EF0(3u, 4))
                        {
                          v220 = sub_160F34(3u);
                          v221 = sub_175AE4();
                          v222 = sub_160F68(4);
                          if (v220)
                          {
                            printf("%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.\n", v221, 3, v222, "AVE_ValidateEncoderParameters", 2569, "pINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_HwVal", "AVE_ValidateEncoderParameters", 2569, *(a1 + 1132), *(a1 + 1336));
                            v221 = sub_175AE4();
                            v222 = sub_160F68(4);
                          }

                          syslog(3, "%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.", v221, 3, v222);
                        }

                        return 4294966295;
                      }
                    }

                    if ((v204 & 0x8010) == 0x8000 && *(a1 + 1132) == 1)
                    {
                      v204 &= 0xFFFF7FEF;
                      *(a1 + 1336) = v204;
                    }

                    if ((*(a1 + 1123) & 0x80) != 0)
                    {
                      v223 = *(a1 + 1240) | 0x30000;
                      v224 = v204 & 0xFFFFFFAF;
                      v225 = *(a1 + 1132);
                      if (v225 == 8 || v225 == 6)
                      {
                        v224 |= 0x30u;
                      }

                      *(a1 + 1336) = (v224 | *(v2 + 237)) & ~*(v2 + 238);
                      *(a1 + 1240) = (*(v2 + 218) | v223) & ~*(v2 + 219);
                      if (sub_160EF0(0x10u, 6))
                      {
                        v226 = sub_160F34(0x10u);
                        v227 = sub_175AE4();
                        v228 = sub_160F68(6);
                        if (v226)
                        {
                          printf("%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled\n", v227, 16, v228);
                          v229 = sub_175AE4();
                          v311 = sub_160F68(6);
                          syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v229, 16, v311);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v227, 16, v228);
                        }
                      }
                    }

                    v230 = *(a1 + 10244);
                    if (v230 != 1)
                    {
                      v231 = *(a1 + 1132);
                      if (v231 && v231 != 20)
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v232 = sub_160F34(0x10u);
                          v233 = sub_175AE4();
                          v234 = sub_160F68(5);
                          v235 = *(a1 + 1132);
                          if (v232)
                          {
                            printf("%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1\n", v233, 16, v234, v235);
                            v236 = sub_175AE4();
                            v312 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1", v236, 16, v312, *(a1 + 1132));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1", v233, 16, v234, v235);
                          }
                        }

                        v230 = 1;
                        *(a1 + 10244) = 1;
                      }

                      v237.i64[0] = 0xC0000000CLL;
                      v237.i64[1] = 0xC0000000CLL;
                      v238.i64[0] = 0x100000001;
                      v238.i64[1] = 0x100000001;
                      v239 = vaddvq_s32(vsubq_s32(vbicq_s8(v238, vceqq_s32(*(a1 + 13772), v237)), vmvnq_s8(vceqq_s32(*(a1 + 13788), v237))));
                      if (v230 != v239)
                      {
                        if (sub_160EF0(3u, 4))
                        {
                          v244 = sub_160F34(3u);
                          v245 = sub_175AE4();
                          v246 = sub_160F68(4);
                          if (v244)
                          {
                            printf("%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail\n", v245, 3, v246, "AVE_ValidateEncoderParameters", 2642, "pINS->VideoParams.i32PPSsCount == ch_qp_index_offset_cnt", *(a1 + 10244), v239);
                            v245 = sub_175AE4();
                            sub_160F68(4);
                          }

                          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail", v245);
                        }

                        return 4294966295;
                      }
                    }

                    if ((*(a1 + 1308) > 1 || *(a1 + 1256) || (*(a1 + 716) & 0x3C0) != 0) && (*(a1 + 10173) & 1) == 0)
                    {
                      *(a1 + 10173) = 1;
                    }

                    v240 = *(a1 + 76);
                    if (v240 >= 4)
                    {
                      *(a1 + 10205) = 1;
                    }

                    v241 = *(a1 + 692);
                    if (v241 == 1)
                    {
                      *(a1 + 688) &= ~2u;
                    }

                    if ((*(a1 + 712) & 8) != 0 || *(a1 + 10776))
                    {
                      *(a1 + 1464) = 0x8000000;
                    }

                    v242 = *(a1 + 1120);
                    if ((v242 & 0x10) != 0)
                    {
                      *(a1 + 1112) = *(a1 + 11448);
                      *(a1 + 1240) &= ~0x400u;
                    }

                    if ((*(a1 + 716) & 0x3C0) == 0)
                    {
LABEL_431:
                      if ((v242 & 0x80000000) != 0 && *(a1 + 76) >= 9)
                      {
                        *(a1 + 10172) = 1;
                        *(a1 + 10530) = 1;
                      }

                      if (*(a1 + 10531) && !*(a1 + 10172))
                      {
                        if (sub_160EF0(0x10u, 5))
                        {
                          v258 = sub_160F34(0x10u);
                          v259 = sub_175AE4();
                          v260 = sub_160F68(5);
                          if (v258)
                          {
                            printf("%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.\n", v259, 16, v260);
                            v261 = sub_175AE4();
                            v313 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.", v261, 16, v313);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.", v259, 16, v260);
                          }
                        }

                        *(a1 + 10172) = 1;
                      }

                      else if ((*(a1 + 10172) & 1) == 0)
                      {
                        v257 = *(a1 + 1240) & 0xFFFEFFFF;
LABEL_444:
                        *(a1 + 1240) = v257;
                        if (*(a1 + 10248) == 1)
                        {
                          v262 = *(a1 + 10252);
                          if (v262 == 1)
                          {
                            if (sub_160EF0(0x10u, 5))
                            {
                              v263 = sub_160F34(0x10u);
                              v264 = sub_175AE4();
                              v265 = sub_160F68(5);
                              if (v263)
                              {
                                printf("%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode\n", v264, 16, v265);
                                v266 = sub_175AE4();
                                v314 = sub_160F68(5);
                                syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v266, 16, v314);
                              }

                              else
                              {
                                syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v264, 16, v265);
                              }
                            }

                            *(a1 + 10248) = 0;
                            v262 = *(a1 + 10252);
                          }

                          if (v262)
                          {
                            v267 = 0;
                            v268 = (v262 - 1);
                            v269 = (a1 + 10260);
                            while (1)
                            {
                              if (v268 == v267)
                              {
                                v270 = *(a1 + 10260 + 8 * v268);
                                if (v270 < 96)
                                {
                                  break;
                                }
                              }

                              else
                              {
                                v270 = *v269;
                                if (*v269 < 128)
                                {
                                  break;
                                }
                              }

                              if ((v270 + *(v269 - 1)) > *(a1 + 1444))
                              {
                                break;
                              }

                              ++v267;
                              v269 += 2;
                              if (v262 == v267)
                              {
                                goto LABEL_466;
                              }
                            }

                            if (sub_160EF0(0x10u, 5))
                            {
                              v271 = sub_160F34(0x10u);
                              v272 = sub_175AE4();
                              v273 = sub_160F68(5);
                              if (v271)
                              {
                                printf("%lld %d AVE %s: FIG: Slice Parameters Invalid slice[%d] %d iY: %d, iHeight: %d. %d Force to Frame Encoding\n", v272, 16, v273, v267, *(a1 + 10252), *(v269 - 1), *v269, *(a1 + 1444));
                                v272 = sub_175AE4();
                                sub_160F68(5);
                              }

                              syslog(3, "%lld %d AVE %s: FIG: Slice Parameters Invalid slice[%d] %d iY: %d, iHeight: %d. %d Force to Frame Encoding", v272);
                            }

                            *(a1 + 10248) = 0;
                            *(a1 + 10252) = 1;
                            *(a1 + 10260) = *(a1 + 1444);
                          }
                        }

LABEL_466:
                        v274 = *(a1 + 716) | 0x3E;
                        *(a1 + 716) = v274;
                        if (!*(a1 + 10531))
                        {
                          *(a1 + 716) = v274 & 0xFFFFFFF7;
                        }

                        *(a1 + 1096) = (*(v2 + 123) | *(a1 + 1096) & ~*(a1 + 17968)) & ~*(v2 + 124);
                        if (sub_17D0E0(*(a1 + 1144), *(a1 + 12052) + 8))
                        {
                          if (sub_160EF0(3u, 4))
                          {
                            v275 = sub_160F34(3u);
                            v276 = sub_175AE4();
                            v277 = sub_160F68(4);
                            if (v275)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d\n", v276, 3, v277, "AVE_ValidateEncoderParameters", 2850, "false", *(a1 + 1144));
                              v276 = sub_175AE4();
                              sub_160F68(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d", v276);
                          }
                        }

                        else if (sub_17D0E0(*(a1 + 1148), *(a1 + 12052) + 8))
                        {
                          if (sub_160EF0(3u, 4))
                          {
                            v278 = sub_160F34(3u);
                            v279 = sub_175AE4();
                            v280 = sub_160F68(4);
                            if (v278)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d\n", v279, 3, v280, "AVE_ValidateEncoderParameters", 2855, "false", *(a1 + 1148));
                              v279 = sub_175AE4();
                              sub_160F68(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d", v279);
                          }
                        }

                        else if (sub_17D0E0(*(a1 + 1152), *(a1 + 12052) + 8))
                        {
                          if (sub_160EF0(3u, 4))
                          {
                            v281 = sub_160F34(3u);
                            v282 = sub_175AE4();
                            v283 = sub_160F68(4);
                            if (v281)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d\n", v282, 3, v283, "AVE_ValidateEncoderParameters", 2860, "false", *(a1 + 1152));
                              v282 = sub_175AE4();
                              sub_160F68(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d", v282);
                          }
                        }

                        else
                        {
                          if (!sub_14E248(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), *(a1 + 1264) != 1))
                          {
                            if (*(a1 + 16932) < 1)
                            {
                              return 0;
                            }

                            v287 = *(a1 + 11460);
                            if (v287 < 1)
                            {
                              return 0;
                            }

                            v288 = *(a1 + 1112);
                            if (v287 > v288)
                            {
                              return 0;
                            }

                            v18 = 0;
                            *(a1 + 1248) = 0;
                            *(a1 + 1252) = v288 / v287;
                            *(a1 + 1256) = 0x200000000;
                            *(a1 + 1288) = 1;
                            return v18;
                          }

                          if (sub_160EF0(3u, 4))
                          {
                            v284 = sub_160F34(3u);
                            v285 = sub_175AE4();
                            v286 = sub_160F68(4);
                            if (v284)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.\n", v285, 3, v286, "AVE_ValidateEncoderParameters", 2872, "false", *(a1 + 1440), *(a1 + 1444), *(a1 + 1264));
                              v285 = sub_175AE4();
                              sub_160F68(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.", v285, 3);
                          }
                        }

                        return 4294966295;
                      }

                      v257 = *(a1 + 1240) | 0x10000;
                      goto LABEL_444;
                    }

                    *(a1 + 688) |= 0x100u;
                    if (!*(a1 + 10531))
                    {
                      *(a1 + 10531) = 3;
                    }

                    *(a1 + 10172) = 1;
                    *(a1 + 10530) = 1;
                    if (*(a1 + 12044) != 1)
                    {
                      if (sub_160EF0(3u, 4))
                      {
                        v247 = sub_160F34(3u);
                        v248 = sub_175AE4();
                        v249 = sub_160F68(4);
                        if (v247)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail\n", v248, 3, v249, "AVE_ValidateEncoderParameters", 2710, "(pINS->SPSParams.chroma_format_idc == ChromaFmt_420)", *(a1 + 12044));
                          v248 = sub_175AE4();
                          sub_160F68(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail", v248);
                      }

                      return 4294966295;
                    }

                    v243 = *(a1 + 11812);
                    if (v240 < 30)
                    {
                      if (v243 < 0)
                      {
                        *(a1 + 1392) = 1;
                        if (*(a1 + 1396) < 1)
                        {
                          goto LABEL_431;
                        }

LABEL_426:
                        if (sub_160EF0(0x10u, 5))
                        {
                          v250 = sub_160F34(0x10u);
                          v251 = sub_175AE4();
                          v252 = sub_160F68(5);
                          v253 = *(a1 + 16);
                          v254 = *(a1 + 1396);
                          if (v250)
                          {
                            printf("%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)\n", v251, 16, v252, v253, *(a1 + 1392), v254);
                            v255 = sub_175AE4();
                            v256 = sub_160F68(5);
                            syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v255, 16, v256, *(a1 + 16), *(a1 + 1392), *(a1 + 1396));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v251, 16, v252, v253, *(a1 + 1392), v254);
                          }
                        }

                        *(a1 + 1396) = -1;
                        v242 = *(a1 + 1120);
                        goto LABEL_431;
                      }

                      *(a1 + 1392) = v243;
LABEL_424:
                      if (*(a1 + 1396) < 1 || v243 != 1)
                      {
                        goto LABEL_431;
                      }

                      goto LABEL_426;
                    }

                    if (v243 < 0)
                    {
                      if (v241 >= 1 && *(a1 + 10804) == 2)
                      {
                        v243 = 0;
                        *(a1 + 1392) = 0;
LABEL_420:
                        if (*(a1 + 1396) == -1 && v241 >= 1 && *(a1 + 10804) == 2)
                        {
                          *(a1 + 1396) = 5;
                        }

                        goto LABEL_424;
                      }

                      v243 = 1;
                    }

                    *(a1 + 1392) = v243;
                    goto LABEL_420;
                  }

                  if (v123)
                  {
                    v124 = sub_160F34(0x10u);
                    v125 = sub_175AE4();
                    v126 = sub_160F68(6);
                    if (v124)
                    {
                      printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v125, 16, v126, "AVE_ValidateEncoderParameters", 2239, *(a1 + 12008), 8);
                      v125 = sub_175AE4();
                      sub_160F68(6);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v125);
                  }

                  v133 = 8;
                }

                *(a1 + 12008) = v133;
                goto LABEL_219;
              }

              if (!sub_160EF0(3u, 4))
              {
                return 4294966295;
              }

              v103 = sub_160F34(3u);
              v100 = sub_175AE4();
              v104 = sub_160F68(4);
              if (v103)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d\n", v100, 3, v104, "AVE_ValidateEncoderParameters", 2179, "pINS->VideoParams.sSliceMap.iNum != 0", *(v33 + 21));
                v100 = sub_175AE4();
                v104 = sub_160F68(4);
                v316 = "pINS->VideoParams.sSliceMap.iNum != 0";
                v317 = *(v33 + 21);
                v315 = 2179;
              }

              else
              {
                v317 = *(v33 + 21);
                v315 = 2179;
                v316 = "pINS->VideoParams.sSliceMap.iNum != 0";
              }

              v299 = v104;
              v102 = "%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d";
            }

            syslog(3, v102, v100, 3, v299, "AVE_ValidateEncoderParameters", v315, v316, v317, v318);
            return 4294966295;
          }

          v71 = 0;
        }

        else
        {
          if (sub_160EF0(0x10u, 5))
          {
            v65 = sub_160F34(0x10u);
            v66 = sub_175AE4();
            v67 = sub_160F68(5);
            v68 = *(a1 + 76);
            if (v65)
            {
              printf("%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.\n", v66, 16, v67, *(a1 + 1256), v68);
              v69 = sub_175AE4();
              v70 = sub_160F68(5);
              syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.", v69, 16, v70, *(a1 + 1256), *(a1 + 76));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.", v66, 16, v67, *(a1 + 1256), v68);
            }
          }

          *(a1 + 1256) = 0x100000000;
          v71 = 1;
          *(a1 + 1288) = 1;
          *(a1 + 1240) &= ~0x400u;
        }
      }

      else
      {
        v71 = 1;
      }

      v75 = *(a1 + 1240);
      if (v75 & 0x400) != 0 && (v71)
      {
        if (sub_160EF0(0x10u, 5))
        {
          v76 = sub_160F34(0x10u);
          v77 = sub_175AE4();
          v78 = sub_160F68(5);
          if (v76)
          {
            printf("%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB\n", v77, 16, v78);
            v79 = sub_175AE4();
            v297 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v79, 16, v297);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v77, 16, v78);
          }
        }

        v75 = *(a1 + 1240) & 0xFFFFFBFF;
        *(a1 + 1240) = v75;
      }

      goto LABEL_110;
    }

    if (sub_160EF0(3u, 4))
    {
      v62 = sub_160F34(3u);
      v63 = sub_175AE4();
      v64 = sub_160F68(4);
      if (v62)
      {
        printf("%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature\n", v63, 3, v64, "AVE_ValidateEncoderParameters", 2030, "false");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature");
    }

    return 4294966296;
  }

  v18 = v28;
  if (sub_160EF0(0x10u, 4))
  {
    v29 = sub_160F34(0x10u);
    v30 = sub_175AE4();
    v31 = sub_160F68(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx\n", v30, 16, v31, "AVE_ValidateEncoderParameters", 1944, "ret == 0", a1, *(a1 + 56), v2[105], *(a1 + 17872), *(a1 + 16840), *(a1 + 1216), *(a1 + 1120));
      v32 = sub_175AE4();
      v293 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx", v32, 16, v293);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx", v30, 16, v31);
    }
  }

  return v18;
}

void sub_EF0EC(uint64_t a1, __CVBuffer *a2)
{
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader\n", v5, 12, v6);
      v7 = sub_175AE4();
      v104 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader", v7, 12, v104);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader", v5, 12, v6);
    }
  }

  if (a2)
  {
    if (*(a1 + 12060) == 1)
    {
      *(a1 + 12061) = 1;
    }

    v8 = *(a1 + 12064);
    if (v8 <= 4)
    {
      if (v8 == 1)
      {
        v38 = 0;
        v39 = (a1 + 12254);
        *(a1 + 12076) = 0x101010101010101;
        *(a1 + 12084) = 0x101010101010101;
        *(a1 + 12068) = 0x101010101010101;
        *(a1 + 12092) = 1;
        do
        {
          v40 = vuzp1q_s16(*(&unk_182F18 + v38), *(&unk_182F18 + v38 + 16));
          v39[-6] = v40;
          v39[-8] = v40;
          v39[-10] = v40;
          v41 = vuzp1q_s16(*(&unk_182F58 + v38), *(&unk_182F58 + v38 + 16));
          *v39 = v41;
          v39[-2] = v41;
          v39[-4] = v41;
          v38 += 32;
          ++v39;
        }

        while (v38 != 64);
        v42 = 0;
        v43 = (a1 + 12286);
        do
        {
          v44 = vuzp1q_s16(*(&unk_182F98 + v42), *(&unk_182F98 + v42 + 16));
          v43[32] = v44;
          v43[16] = v44;
          *v43 = v44;
          v45 = vuzp1q_s16(*(&unk_183098 + v42), *(&unk_183098 + v42 + 16));
          v43[40] = v45;
          v43[24] = v45;
          v43[8] = v45;
          v42 += 32;
          ++v43;
        }

        while (v42 != 256);
      }

      else
      {
        if (v8 != 2)
        {
LABEL_42:
          v46 = (a1 + 12286);
          v47 = (a1 + 12094);
          *(a1 + 12071) = 0;
          *(a1 + 12068) = 0;
          v48 = (a1 + 12075);
          v49 = 6;
          do
          {
            v48[6] = 0;
            memset_pattern16(v47, &unk_184A10, 0x20uLL);
            *v48 = 0;
            v48[12] = 0;
            memset_pattern16(v46, &unk_184A10, 0x80uLL);
            v46 += 128;
            ++v48;
            v47 += 32;
            --v49;
          }

          while (v49);
          goto LABEL_44;
        }

        v17 = 0;
        v18 = (a1 + 12081);
        v19 = (a1 + 12286);
        *(a1 + 12073) = 0x101010101010101;
        *(a1 + 12068) = 0x101010101010101;
        v20 = a0123210;
        do
        {
          v21 = (a1 + 12094 + v17);
          *v18 = 0;
          *v21 = *(&unk_184A20 + v17);
          v21[1] = *(&unk_184A20 + v17 + 16);
          v18[6] = 0;
          v19[3] = *(v20 + 3);
          v19[2] = *(v20 + 2);
          v19[1] = *(v20 + 1);
          *v19 = *v20;
          v19[7] = *(v20 + 7);
          v19[6] = *(v20 + 6);
          v19[5] = *(v20 + 5);
          v17 += 32;
          v19[4] = *(v20 + 4);
          v19 += 8;
          ++v18;
          v20 += 64;
        }

        while (v17 != 192);
      }
    }

    else
    {
      switch(v8)
      {
        case 5:
          v22 = 0;
          *(a1 + 12068) = 1;
          v23 = a1 + 12069;
          v24 = a1 + 12094;
          v25 = a1 + 12286;
          v26 = &unk_184DE0;
          v27 = &unk_184EA0;
          do
          {
            v28 = 0;
            *(v23 + v22) = 1;
            *(a1 + 12081 + v22) = 0;
            do
            {
              *(v24 + v28) = vshlq_n_s16(*&v26[v28], 3uLL);
              v28 += 16;
            }

            while (v28 != 32);
            v29 = 0;
            *(v22 + v23 + 6) = 1;
            *(a1 + 12087 + v22) = 0;
            do
            {
              *(v25 + v29) = vshlq_n_s16(*&v27[v29], 3uLL);
              v29 += 16;
            }

            while (v29 != 128);
            ++v22;
            v26 += 32;
            v24 += 32;
            v27 += 128;
            v25 += 128;
          }

          while (v22 != 6);
          break;
        case 6:
          v30 = 0;
          *(a1 + 12068) = 1;
          v31 = a1 + 12069;
          v32 = a1 + 12094;
          v33 = a1 + 12286;
          v34 = &unk_1851A0;
          v35 = &unk_185260;
          do
          {
            v36 = 0;
            *(v31 + v30) = 1;
            *(a1 + 12081 + v30) = 0;
            do
            {
              *(v32 + v36) = vshlq_n_s16(*&v34[v36], 3uLL);
              v36 += 16;
            }

            while (v36 != 32);
            v37 = 0;
            *(v30 + v31 + 6) = 1;
            *(a1 + 12087 + v30) = 0;
            do
            {
              *(v33 + v37) = vshlq_n_s16(*&v35[v37], 3uLL);
              v37 += 16;
            }

            while (v37 != 128);
            ++v30;
            v34 += 32;
            v32 += 32;
            v35 += 128;
            v33 += 128;
          }

          while (v30 != 6);
          break;
        case 7:
          v9 = 0;
          v10 = (a1 + 12081);
          v11 = (a1 + 12286);
          *(a1 + 12073) = 0x101010101010101;
          *(a1 + 12068) = 0x101010101010101;
          v12 = &xmmword_185620;
          do
          {
            v13 = (a1 + 12094 + v9);
            *v10 = 0;
            *v13 = *(&unk_185560 + v9);
            v13[1] = *(&unk_185560 + v9 + 16);
            v10[6] = 0;
            v11[3] = v12[3];
            v11[2] = v12[2];
            v11[1] = v12[1];
            *v11 = *v12;
            v11[7] = v12[7];
            v11[6] = v12[6];
            v11[5] = v12[5];
            v9 += 32;
            v11[4] = v12[4];
            v11 += 8;
            ++v10;
            v12 += 8;
          }

          while (v9 != 192);
          break;
        default:
          goto LABEL_42;
      }
    }

LABEL_44:
    *(a1 + 13080) = vsra_n_u32(-1, *(a1 + 1440), 4uLL);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v51 = sub_167CD8(PixelFormatType);
    if (v51 && (*(a1 + 1104) & 8) != 0)
    {
      v55 = v51;
      v56 = *(v51 + 7) == 1;
      *(a1 + 13104) = v56;
      if (v56)
      {
        v57 = 1;
      }

      else
      {
        v57 = *(a1 + 13096);
      }

      *(a1 + 13096) = v57 & 1;
      if (sub_160EF0(0x1Eu, 6))
      {
        v58 = sub_160F34(0x1Eu);
        v59 = sub_175AE4();
        v60 = sub_160F68(6);
        if (v58)
        {
          printf("%lld %d AVE %s: FIG: video_full_range_flag %d\n", v59, 30, v60, *(v55 + 7) == 1);
          sub_175AE4();
          sub_160F68(6);
        }

        syslog(3, "%lld %d AVE %s: FIG: video_full_range_flag %d");
      }
    }

    else if (sub_160EF0(0x1Eu, 6))
    {
      v52 = sub_160F34(0x1Eu);
      v53 = sub_175AE4();
      v54 = sub_160F68(6);
      if (v52)
      {
        printf("%lld %d AVE %s: FIG: Unknown dynamic range\n", v53, 30, v54);
        sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: Unknown dynamic range");
    }

    if ((*(a1 + 1104) & 0x40) != 0)
    {
      if (*(a1 + 1112) >= 1)
      {
        v62 = *(a1 + 1112);
      }

      else
      {
        v62 = 30;
      }

      v61 = 1;
      *(a1 + 13096) = 1;
      *(a1 + 13144) = 27000000;
      *(a1 + 13140) = 0x19BFCC0 / v62;
      *(a1 + 13148) = 0;
    }

    else
    {
      v61 = 0;
    }

    *(a1 + 13136) = v61;
    v63 = CVBufferCopyAttachment(a2, kCVImageBufferChromaLocationTopFieldKey, 0);
    if (!v63)
    {
LABEL_86:
      v76 = CVBufferCopyAttachment(a2, kCVImageBufferChromaLocationBottomFieldKey, 0);
      if (!v76)
      {
LABEL_108:
        if ((*(a1 + 13128) || *(a1 + 13132)) && (*(a1 + 1104) & 0x10) != 0)
        {
          *(a1 + 13096) = 1;
          *(a1 + 13124) = 1;
          if (sub_160EF0(0x1Eu, 6))
          {
            v89 = sub_160F34(0x1Eu);
            v90 = sub_175AE4();
            v91 = sub_160F68(6);
            if (v89)
            {
              printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE\n", v90, 30, v91);
              v92 = sub_175AE4();
              v107 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v92, 30, v107);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v90, 30, v91);
            }
          }
        }

        if (sub_160EF0(0x1Eu, 6))
        {
          v93 = sub_160F34(0x1Eu);
          v94 = sub_175AE4();
          v95 = sub_160F68(6);
          if (v93)
          {
            printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v94, 30, v95, *(a1 + 13124), *(a1 + 13128), *(a1 + 13132));
            sub_175AE4();
            sub_160F68(6);
          }

          syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d");
        }

        return;
      }

      v77 = v76;
      if (sub_160EF0(0x1Eu, 6))
      {
        v78 = sub_160F34(0x1Eu);
        v79 = sub_175AE4();
        v80 = sub_160F68(6);
        if (v78)
        {
          printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!\n", v79, 30, v80);
          v81 = sub_175AE4();
          v106 = sub_160F68(6);
          syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v81, 30, v106);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v79, 30, v80);
        }
      }

      if (!CFEqual(v77, kCVImageBufferChromaLocation_Left))
      {
        if (CFEqual(v77, kCVImageBufferChromaLocation_Center))
        {
          v82 = 1;
          goto LABEL_103;
        }

        if (CFEqual(v77, kCVImageBufferChromaLocation_TopLeft))
        {
          v82 = 2;
          goto LABEL_103;
        }

        if (CFEqual(v77, kCVImageBufferChromaLocation_Top))
        {
          v82 = 3;
          goto LABEL_103;
        }

        if (CFEqual(v77, kCVImageBufferChromaLocation_BottomLeft))
        {
          v82 = 4;
          goto LABEL_103;
        }

        if (CFEqual(v77, kCVImageBufferChromaLocation_Bottom))
        {
          v82 = 5;
          goto LABEL_103;
        }

        if (sub_160EF0(0x1Eu, 5))
        {
          v100 = sub_160F34(0x1Eu);
          v101 = sub_175AE4();
          v102 = sub_160F68(5);
          if (v100)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v101, 30, v102);
            v103 = sub_175AE4();
            v109 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v103, 30, v109);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v101, 30, v102);
          }
        }
      }

      v82 = 0;
LABEL_103:
      *(a1 + 13132) = v82;
      if (sub_160EF0(0x1Eu, 6))
      {
        v83 = sub_160F34(0x1Eu);
        v84 = sub_175AE4();
        v85 = sub_160F68(6);
        v86 = *(a1 + 13132);
        if (v83)
        {
          printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v84, 30, v85, *(a1 + 13128), v86);
          v87 = sub_175AE4();
          v88 = sub_160F68(6);
          syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v87, 30, v88, *(a1 + 13128), *(a1 + 13132));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v84, 30, v85, *(a1 + 13128), v86);
        }
      }

      CFRelease(v77);
      goto LABEL_108;
    }

    v64 = v63;
    if (sub_160EF0(0x1Eu, 6))
    {
      v65 = sub_160F34(0x1Eu);
      v66 = sub_175AE4();
      v67 = sub_160F68(6);
      if (v65)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!\n", v66, 30, v67);
        v68 = sub_175AE4();
        v105 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v68, 30, v105);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v66, 30, v67);
      }
    }

    if (!CFEqual(v64, kCVImageBufferChromaLocation_Left))
    {
      if (CFEqual(v64, kCVImageBufferChromaLocation_Center))
      {
        v69 = 1;
        goto LABEL_81;
      }

      if (CFEqual(v64, kCVImageBufferChromaLocation_TopLeft))
      {
        v69 = 2;
        goto LABEL_81;
      }

      if (CFEqual(v64, kCVImageBufferChromaLocation_Top))
      {
        v69 = 3;
        goto LABEL_81;
      }

      if (CFEqual(v64, kCVImageBufferChromaLocation_BottomLeft))
      {
        v69 = 4;
        goto LABEL_81;
      }

      if (CFEqual(v64, kCVImageBufferChromaLocation_Bottom))
      {
        v69 = 5;
        goto LABEL_81;
      }

      if (sub_160EF0(0x1Eu, 5))
      {
        v96 = sub_160F34(0x1Eu);
        v97 = sub_175AE4();
        v98 = sub_160F68(5);
        if (v96)
        {
          printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v97, 30, v98);
          v99 = sub_175AE4();
          v108 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v99, 30, v108);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v97, 30, v98);
        }
      }
    }

    v69 = 0;
LABEL_81:
    *(a1 + 13128) = v69;
    *(a1 + 13132) = v69;
    if (sub_160EF0(0x1Eu, 6))
    {
      v70 = sub_160F34(0x1Eu);
      v71 = sub_175AE4();
      v72 = sub_160F68(6);
      v73 = *(a1 + 13132);
      if (v70)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v71, 30, v72, *(a1 + 13128), v73);
        v74 = sub_175AE4();
        v75 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v74, 30, v75, *(a1 + 13128), *(a1 + 13132));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v71, 30, v72, *(a1 + 13128), v73);
      }
    }

    CFRelease(v64);
    goto LABEL_86;
  }

  if (sub_160EF0(3u, 4))
  {
    v14 = sub_160F34(3u);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.\n", v15, 3, v16, "AVE_PrepareSequenceHeader", 1325, "imageBuffer != __null");
      sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.");
  }
}

uint64_t sub_EFE80(uint64_t a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings\n", v3, 12, v4);
      v5 = sub_175AE4();
      v210 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v5, 12, v210);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v3, 12, v4);
    }
  }

  if (*(a1 + 1132) == 4 && !*(a1 + 10892))
  {
    *(a1 + 10892) = 10000;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v6 = sub_160F34(0xCu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters\n", v7, 12, v8);
      v9 = sub_175AE4();
      v211 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v9, 12, v211);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v7, 12, v8);
    }
  }

  v10 = (a1 + 16448);
  v11 = sub_1502C8();
  v12 = v11[20];
  if (v12 <= -2)
  {
    v12 = *(a1 + 692);
  }

  else
  {
    *(a1 + 692) = v12;
  }

  if (v12 == 1 && (!*(a1 + 1256) || *v10 == 2))
  {
    v13 = *(a1 + 1132);
    if (v13 != 3 && v13 != 20)
    {
      sub_F9BA8(a1);
    }
  }

  v14 = v11[19];
  if (v14 >= 1)
  {
    *(a1 + 11968) = v14;
  }

  v15 = (*(a1 + 1336) | v11[237] & 0x10) & (~*(v11 + 952) | 0xFFFFFFEF);
  *(a1 + 1336) = v15;
  if ((*(v11 + 769) & 0x80) != 0)
  {
    v15 |= 0x8000u;
    *(a1 + 1336) = v15;
  }

  if ((*(v11 + 777) & 0x80) != 0)
  {
    *(a1 + 1336) = v15 & 0xFFFF7FFF;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v16 = sub_160F34(0xCu);
    v17 = sub_175AE4();
    v18 = sub_160F68(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v17, 12, v18, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
      v19 = sub_175AE4();
      v212 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v19, 12, v212, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v17, 12, v18, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }
  }

  v20 = sub_1502C8();
  v21 = sub_13253C(v20[186]);
  if (v21)
  {
    *v10 = v21;
  }

  v22 = sub_132AB8(v20[187]);
  if (v22)
  {
    *(a1 + 16452) = v22;
  }

  v23 = (a1 + 10168);
  if (*v10)
  {
    if (sub_160EF0(0x1Eu, 6))
    {
      v24 = sub_160F34(0x1Eu);
      v25 = sub_175AE4();
      v26 = sub_160F68(6);
      v27 = *(a1 + 12008);
      if (v24)
      {
        printf("%lld %d AVE %s: profile = %d -> change the default %d\n", v25, 30, v26, *v10, v27);
        v28 = sub_175AE4();
        v29 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v28, 30, v29, *v10, *(a1 + 12008));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v25, 30, v26, *v10, v27);
      }
    }

    *(a1 + 12008) = *v10;
  }

  v30 = *(a1 + 1308) > 1 || *(a1 + 1256) || *(a1 + 1324) > 1;
  *(a1 + 10173) = v30;
  v31 = *(a1 + 1132);
  if ((v31 == 4 || v31 == 2) && !*(a1 + 10892))
  {
    *(a1 + 10892) = 10000;
  }

  v32 = v20[395];
  if (v32 > 36)
  {
    switch(v32)
    {
      case 37:
        *(a1 + 10892) = 37;
        *(a1 + 1104) |= 0x80uLL;
        goto LABEL_74;
      case 38:
        *(a1 + 10892) = 38;
        goto LABEL_90;
      case 10000:
        *(a1 + 10892) = 10000;
        goto LABEL_57;
    }
  }

  else
  {
    switch(v32)
    {
      case 0:
        *(a1 + 10892) = 0;
        goto LABEL_64;
      case 1:
        *(a1 + 10892) = 1;
        goto LABEL_84;
      case 20:
        *(a1 + 10892) = 20;
        *(a1 + 1104) |= 0x80uLL;
        goto LABEL_91;
    }
  }

  v47 = *(a1 + 10892);
  if (v47 <= 36)
  {
    if (v47 != 1)
    {
      if (v47 != 20)
      {
        goto LABEL_64;
      }

      goto LABEL_116;
    }

LABEL_84:
    *(a1 + 1336) = 0x10000;
    *(a1 + 1132) = 20;
    *(a1 + 10784) = 1;
    *(a1 + 10764) = 0;
    if (*(a1 + 1256) >= 1 && sub_160EF0(0x1Eu, 6))
    {
      v48 = sub_160F34(0x1Eu);
      v49 = sub_175AE4();
      v50 = sub_160F68(6);
      if (v48)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v49, 30, v50, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 3876, *(a1 + 1256), *(a1 + 17892));
        v49 = sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v49);
    }

    if (*(a1 + 1296))
    {
      *(a1 + 13756) = 1;
      *(a1 + 13760) = 0;
    }

    if (*(a1 + 16456) == 2)
    {
      goto LABEL_154;
    }

    if (sub_160EF0(0x1Eu, 6))
    {
      v79 = sub_160F34(0x1Eu);
      v80 = sub_175AE4();
      v81 = sub_160F68(6);
      v82 = *(a1 + 13732);
      if (v79)
      {
        printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v80, 30, v81, *(a1 + 16456), v82);
        v83 = sub_175AE4();
        v84 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v83, 30, v84, *(a1 + 16456), *(a1 + 13732));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v80, 30, v81, *(a1 + 16456), v82);
      }
    }

    if (*(a1 + 16456))
    {
LABEL_154:
      *(a1 + 13732) = 1;
    }

    else
    {
      *(a1 + 13732) = 0;
    }

    if ((*(a1 + 1104) & 0x80) != 0)
    {
      v85 = 1;
      *(a1 + 13096) = 1;
      *(a1 + 13156) = xmmword_1849E0;
      *(a1 + 13172) = 15;
      *(a1 + 13176) = 0x1000000000;
    }

    else
    {
      v85 = 0;
    }

    v78 = 0;
    *(a1 + 13152) = v85;
    *(a1 + 1096) &= 0xFFFFFC00FFFFFCBFLL;
    goto LABEL_184;
  }

  if (v47 != 10000)
  {
    if (v47 != 38)
    {
      if (v47 != 37)
      {
LABEL_64:
        v36 = *(a1 + 76);
        if (v36 <= 0x1D && ((1 << v36) & 0x2679CC00) != 0)
        {
          v37 = *(a1 + 10248);
          *(a1 + 10172) = v37 ^ 1;
          if ((v37 & 1) == 0)
          {
            *(a1 + 688) |= 0x100u;
          }
        }

        if (!sub_FA1D4(a1))
        {
          goto LABEL_183;
        }

        if (sub_160EF0(3u, 4))
        {
          v38 = sub_160F34(3u);
          v39 = sub_175AE4();
          v40 = sub_160F68(4);
          if (v38)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed\n", v39, 3, v40, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4197, "err == noErr");
            v39 = sub_175AE4();
            v40 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed", v39, 3, v40, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4197, "err == noErr");
        }

LABEL_144:
        v78 = -12902;
        goto LABEL_184;
      }

LABEL_116:
      *(a1 + 1104) |= 0x80uLL;
      if (v47 != 20)
      {
LABEL_74:
        if (*(a1 + 16456) == 2)
        {
          goto LABEL_162;
        }

        if (sub_160EF0(0x1Eu, 6))
        {
          v41 = sub_160F34(0x1Eu);
          v42 = sub_175AE4();
          v43 = sub_160F68(6);
          v44 = *(a1 + 13732);
          if (v41)
          {
            printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v42, 30, v43, *(a1 + 16456), v44);
            v45 = sub_175AE4();
            v46 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v45, 30, v46, *(a1 + 16456), *(a1 + 13732));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v42, 30, v43, *(a1 + 16456), v44);
          }
        }

        if (*(a1 + 16456))
        {
LABEL_162:
          *(a1 + 13732) = 1;
        }

        else
        {
          *(a1 + 13732) = 0;
        }

        v86 = *(a1 + 12008);
        if (v86 == 2)
        {
          *(a1 + 13732) = 0;
          v87 = 1;
        }

        else
        {
          v87 = v86 == 4;
        }

        v88 = !v87;
        *(a1 + 13807) = v88;
        *(a1 + 13772) = xmmword_1849F0;
        *(a1 + 13812) = xmmword_1849F0;
        *&v89 = 0xC0000000CLL;
        *(&v89 + 1) = 0xC0000000CLL;
        *(a1 + 13788) = v89;
        *(a1 + 13828) = v89;
        *(a1 + 10176) = 2;
        if ((*(a1 + 1104) & 0x80) != 0)
        {
          *(a1 + 13096) = 1;
          *(a1 + 13152) = 1;
          *(a1 + 13156) = xmmword_184A00;
          *(a1 + 13172) = 15;
          *(a1 + 13176) = 0x400000000;
        }

        *(a1 + 1112) = 60;
        *(a1 + 1264) = 60;
        *(a1 + 1272) = 0xBFF0000000000000;
        *(a1 + 1280) = 0xBFF0000000000000;
        *(a1 + 1088) |= 2uLL;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10764) = 0;
        *(a1 + 1296) |= 2u;
        *(a1 + 10170) = 1;
        if (*(a1 + 16776) > 0)
        {
          goto LABEL_183;
        }

        if (*(a1 + 16460) != 1)
        {
          goto LABEL_183;
        }

        v90 = *(a1 + 1160);
        if (v90 < 1)
        {
          goto LABEL_183;
        }

        v91 = 0;
        v92 = (a1 + 1176);
        v60 = 0x7FFFFFFF;
        do
        {
          if (v60 > (*(v92 - 1) * 8.0 / *v92))
          {
            if (sub_160EF0(0x1Eu, 6))
            {
              v93 = sub_160F34(0x1Eu);
              v94 = sub_175AE4();
              v95 = sub_160F68(6);
              v96 = *(v92 - 1);
              v97 = *v92;
              if (v93)
              {
                printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v94, 30, v95, v91, *(v92 - 1), v97);
                v94 = sub_175AE4();
                v95 = sub_160F68(6);
                v96 = *(v92 - 1);
                v97 = *v92;
              }

              syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v94, 30, v95, v91, v96, v97);
            }

            v60 = (*(v92 - 1) * 8.0 / *v92);
            v90 = *(a1 + 1160);
          }

          ++v91;
          v92 += 2;
        }

        while (v91 < v90);
        goto LABEL_182;
      }

LABEL_91:
      if (*(a1 + 16456) == 2)
      {
        goto LABEL_120;
      }

      if (sub_160EF0(0x1Eu, 6))
      {
        v51 = sub_160F34(0x1Eu);
        v52 = sub_175AE4();
        v53 = sub_160F68(6);
        v54 = *(a1 + 13732);
        if (v51)
        {
          printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v52, 30, v53, *(a1 + 16456), v54);
          v55 = sub_175AE4();
          v56 = sub_160F68(6);
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v55, 30, v56, *(a1 + 16456), *(a1 + 13732));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v52, 30, v53, *(a1 + 16456), v54);
        }
      }

      if (*(a1 + 16456))
      {
LABEL_120:
        *(a1 + 13732) = 1;
      }

      else
      {
        *(a1 + 13732) = 0;
      }

      v66 = *(a1 + 12008);
      if (v66 == 2)
      {
        *(a1 + 13732) = 0;
        v67 = 1;
      }

      else
      {
        v67 = v66 == 4;
      }

      v68 = !v67;
      *(a1 + 13807) = v68;
      *(a1 + 13772) = xmmword_1849F0;
      *(a1 + 13812) = xmmword_1849F0;
      *&v69 = 0xC0000000CLL;
      *(&v69 + 1) = 0xC0000000CLL;
      *(a1 + 13788) = v69;
      *(a1 + 13828) = v69;
      *(a1 + 10176) = 2;
      if ((*(a1 + 1104) & 0x80) != 0)
      {
        *(a1 + 13096) = 1;
        *(a1 + 13152) = 1;
        *(a1 + 13156) = xmmword_184A00;
        *(a1 + 13172) = 15;
        *(a1 + 13176) = 0x400000000;
      }

      *(a1 + 1112) = 60;
      *(a1 + 1264) = 0x7FFFFFFFLL;
      *(a1 + 1272) = 0xBFF0000000000000;
      *(a1 + 1280) = 0xBFF0000000000000;
      *(a1 + 1088) |= 2uLL;
      *(a1 + 1336) &= ~0x40u;
      *(a1 + 10764) = 0;
      *(a1 + 1296) |= 2u;
      if (*(a1 + 16776) > 0)
      {
        goto LABEL_183;
      }

      if (*(a1 + 16460) != 1)
      {
        goto LABEL_183;
      }

      v70 = *(a1 + 1160);
      if (v70 < 1)
      {
        goto LABEL_183;
      }

      v71 = 0;
      v72 = (a1 + 1176);
      v60 = 0x7FFFFFFF;
      do
      {
        if (v60 > (*(v72 - 1) * 8.0 / *v72))
        {
          if (sub_160EF0(0x1Eu, 6))
          {
            v73 = sub_160F34(0x1Eu);
            v74 = sub_175AE4();
            v75 = sub_160F68(6);
            v76 = *(v72 - 1);
            v77 = *v72;
            if (v73)
            {
              printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v74, 30, v75, v71, *(v72 - 1), v77);
              v74 = sub_175AE4();
              v75 = sub_160F68(6);
              v76 = *(v72 - 1);
              v77 = *v72;
            }

            syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v74, 30, v75, v71, v76, v77);
          }

          v60 = (*(v72 - 1) * 8.0 / *v72);
          v70 = *(a1 + 1160);
        }

        ++v71;
        v72 += 2;
      }

      while (v71 < v70);
      goto LABEL_182;
    }

LABEL_90:
    *(a1 + 1352) |= 0x1Eu;
    *(a1 + 1336) &= ~0x40u;
    goto LABEL_91;
  }

LABEL_57:
  if (sub_FA1D4(a1))
  {
    if (sub_160EF0(3u, 4))
    {
      v33 = sub_160F34(3u);
      v34 = sub_175AE4();
      v35 = sub_160F68(4);
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed\n", v34, 3, v35, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4122, "err == noErr");
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed", v34, 3, v35, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4122, "err == noErr");
    }

    goto LABEL_144;
  }

  *(a1 + 1296) &= ~2u;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1336) &= ~0x40u;
  if (*(a1 + 1348) <= -13)
  {
    *(a1 + 1348) = 51;
  }

  if (*(a1 + 1236) <= -13)
  {
    *(a1 + 1236) = 51;
  }

  if (*(a1 + 16900) <= 0 && *(a1 + 16912) <= 0.0)
  {
    *(a1 + 1264) = 120;
    *(a1 + 1272) = 0xBFF0000000000000;
    *(a1 + 1280) = 0xBFF0000000000000;
  }

  if (*(a1 + 16776) > 0)
  {
    goto LABEL_183;
  }

  if (*(a1 + 16460) != 1)
  {
    goto LABEL_183;
  }

  v57 = *(a1 + 1160);
  if (v57 < 1)
  {
    goto LABEL_183;
  }

  v58 = 0;
  v59 = (a1 + 1176);
  v60 = 0x7FFFFFFF;
  do
  {
    if (v60 > (*(v59 - 1) * 8.0 / *v59))
    {
      if (sub_160EF0(0x1Eu, 6))
      {
        v61 = sub_160F34(0x1Eu);
        v62 = sub_175AE4();
        v63 = sub_160F68(6);
        v64 = *(v59 - 1);
        v65 = *v59;
        if (v61)
        {
          printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v62, 30, v63, v58, *(v59 - 1), v65);
          v62 = sub_175AE4();
          v63 = sub_160F68(6);
          v64 = *(v59 - 1);
          v65 = *v59;
        }

        syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v62, 30, v63, v58, v64, v65);
      }

      v60 = (*(v59 - 1) * 8.0 / 1.5 / *v59);
      v57 = *(a1 + 1160);
    }

    ++v58;
    v59 += 2;
  }

  while (v58 < v57);
LABEL_182:
  if (v60 == 0x7FFFFFFF)
  {
LABEL_183:
    v78 = 0;
    goto LABEL_184;
  }

  v78 = 0;
  *(a1 + 1136) = v60;
LABEL_184:
  if (sub_160EF0(0xCu, 7))
  {
    v98 = sub_160F34(0xCu);
    v99 = sub_175AE4();
    v100 = sub_160F68(7);
    if (v98)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v99, 12, v100, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v78);
      v101 = sub_175AE4();
      v213 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v101, 12, v213, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v78);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v99, 12, v100, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v78);
    }
  }

  if (sub_160EF0(0xD1u, 6))
  {
    v102 = sub_160F34(0xD1u);
    v103 = sub_175AE4();
    v104 = sub_160F68(6);
    if (v102)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v103, 209, v104, "AVE_PrepareH264Level", a1);
      v105 = sub_175AE4();
      v214 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v105, 209, v214, "AVE_PrepareH264Level", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v103, 209, v104, "AVE_PrepareH264Level", a1);
    }
  }

  v106 = *(a1 + 1132);
  if (v106 < 1)
  {
    v107 = 0;
  }

  else
  {
    v107 = 0;
    if (v106 != 3 && v106 != 8)
    {
      v107 = *(a1 + 1136);
    }
  }

  if (sub_160EF0(0xD1u, 7))
  {
    v108 = sub_160F34(0xD1u);
    v109 = sub_175AE4();
    v110 = sub_160F68(7);
    if (v108)
    {
      printf("%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d\n", v109, 209, v110, "AVE_PrepareH264Level", 1823, *(a1 + 12008), *(a1 + 12036), *(a1 + 16448), *(a1 + 16452));
      v109 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d", v109, 209);
  }

  if (sub_160EF0(0xD1u, 7))
  {
    v111 = sub_160F34(0xD1u);
    v112 = sub_175AE4();
    v113 = sub_160F68(7);
    if (v111)
    {
      printf("%lld %d AVE %s: %s:%d starting with bitrate %d (RCMode %d) FrameRate %d USAGE %d\n", v112, 209, v113, "AVE_PrepareH264Level", 1827, *(a1 + 1136), *(a1 + 1132), *(a1 + 1112), *(a1 + 10892));
      v112 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with bitrate %d (RCMode %d) FrameRate %d USAGE %d", v112, 209);
  }

  v114 = *(a1 + 1256);
  if (*(a1 + 1260) < 3 || v114 <= 2)
  {
    if (v114)
    {
      v115 = 2;
    }

    else if (*(a1 + 1476))
    {
      v115 = 2;
    }

    else
    {
      v115 = 1;
    }
  }

  else
  {
    v115 = 4;
  }

  v116 = sub_1326C8(*(a1 + 12008), *(a1 + 1440), *(a1 + 1444), *(a1 + 1112), v107, v115);
  if (v116)
  {
    v117 = v116;
    v118 = *(a1 + 12036);
    if (v118 <= v116)
    {
      v118 = v116;
    }

    *(a1 + 12036) = v118;
    v119 = *(a1 + 16452);
    if (v119)
    {
      if (v119 < v118)
      {
        if (sub_160EF0(0xD1u, 4))
        {
          v120 = sub_160F34(0xD1u);
          v121 = sub_175AE4();
          v122 = sub_160F68(4);
          if (v120)
          {
            printf("%lld %d AVE %s: %s:%d H264Level %d incompatible with other settings (min should be %d)\n", v121, 209, v122, "AVE_PrepareH264Level", 1858, *(a1 + 16452), *(a1 + 12036));
            v121 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d H264Level %d incompatible with other settings (min should be %d)", v121);
        }

        v130 = 4294966295;
        goto LABEL_241;
      }

      if (v119 > v118)
      {
        if (sub_160EF0(0xD1u, 6))
        {
          v127 = sub_160F34(0xD1u);
          v128 = sub_175AE4();
          v129 = sub_160F68(6);
          if (v127)
          {
            printf("%lld %d AVE %s: %s:%d H264Level received (%d) is too high... consider lowering it with these settings (min should be %d)\n", v128, 209, v129, "AVE_PrepareH264Level", 1865, *(a1 + 16452), *(a1 + 12036));
            v128 = sub_175AE4();
            sub_160F68(6);
          }

          syslog(3, "%lld %d AVE %s: %s:%d H264Level received (%d) is too high... consider lowering it with these settings (min should be %d)", v128);
        }

        v130 = 0;
        *(a1 + 12036) = *(a1 + 16452);
        goto LABEL_241;
      }
    }

    v130 = 0;
LABEL_241:
    if (sub_160EF0(0xD1u, 7))
    {
      v131 = sub_160F34(0xD1u);
      v132 = sub_175AE4();
      v133 = sub_160F68(7);
      if (v131)
      {
        printf("%lld %d AVE %s: %s:%d end with level %d (min %d)\n", v132, 209, v133, "AVE_PrepareH264Level", 1871, *(a1 + 12036), v117);
        v132 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s:%d end with level %d (min %d)", v132);
    }

    goto LABEL_246;
  }

  if (sub_160EF0(0xD1u, 4))
  {
    v123 = sub_160F34(0xD1u);
    v124 = sub_175AE4();
    v125 = sub_160F68(4);
    if (v123)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level\n", v124, 209, v125, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
      v126 = sub_175AE4();
      v215 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v126, 209, v215, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v124, 209, v125, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
    }
  }

  v130 = 4294966295;
LABEL_246:
  if (sub_160EF0(0xD1u, 6))
  {
    v134 = sub_160F34(0xD1u);
    v135 = sub_175AE4();
    v136 = sub_160F68(6);
    if (v134)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v135, 209, v136, "AVE_PrepareH264Level", a1, v130);
      v137 = sub_175AE4();
      v216 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v137, 209, v216, "AVE_PrepareH264Level", a1, v130);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v135, 209, v136, "AVE_PrepareH264Level", a1, v130);
    }
  }

  if (v130)
  {
    if (sub_160EF0(3u, 4))
    {
      v138 = sub_160F34(3u);
      v139 = sub_175AE4();
      v140 = sub_160F68(4);
      if (v138)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareH264Level failed\n", v139, 3, v140, "AVE_ManageSessionSettings", 5016, "err == 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareH264Level failed");
    }

    return v130;
  }

  v141 = sub_1502C8();
  v142 = v141;
  v143 = *(v141 + 224);
  if ((v143 & 0x80000000) == 0)
  {
    *(a1 + 1264) = v143;
    if (v143 == 1)
    {
      *(a1 + 1252) = 0;
    }
  }

  v144 = *(v141 + 225);
  if ((v144 & 0x80000000) == 0)
  {
    *(a1 + 1268) = v144;
  }

  v145 = v141[113];
  if (v145 >= 0.0)
  {
    *(a1 + 1272) = v145;
  }

  v146 = v141[114];
  if (v146 >= 0.0)
  {
    *(a1 + 1280) = v146;
  }

  v147 = *(a1 + 716);
  v148 = *(v141 + 7);
  v149 = *(a1 + 1456) | *(v141 + 6);
  v151 = *(v141 + 4);
  v150 = *(v141 + 5);
  v152 = (*(a1 + 1448) | v151) & ~v150;
  *(a1 + 1448) = v152;
  *(a1 + 1456) = v149 & ~v148;
  v153 = v152 | v151 & 0x20;
  v154 = v152 & 0xFFFFFFFFFFFFFFDFLL;
  if ((v150 & 0x20) == 0)
  {
    v154 = v153;
  }

  if (((v150 | v151) & 0x20) != 0)
  {
    *(a1 + 1448) = v154;
  }

  if ((v154 & 0x20) != 0)
  {
    if (*(v141 + 1) == 1)
    {
      v156 = sub_1523E8(*(a1 + 68), *(a1 + 64), v147, *(a1 + 10772), *(a1 + 18080));
      v157 = *(a1 + 716);
      if (v156)
      {
        v155 = v157 & 0xFFFFFC3F;
      }

      else
      {
        v155 = v157 | 0x3C0;
      }
    }

    else
    {
      v155 = v147 | 0x3C0;
    }

    *(a1 + 716) = v155;
    v154 = *(a1 + 1448);
    if ((v154 & 0x1000000) != 0)
    {
      *(a1 + 11810) = 1;
    }

    v150 = *(v142 + 5);
    if ((v150 & 0x1000000) != 0)
    {
      *(a1 + 11810) = 0;
    }
  }

  else
  {
    v155 = v147;
  }

  if ((v150 & 0x20) != 0)
  {
    *(a1 + 716) = v155 & 0xFFFFFC3F;
  }

  v158 = *(v142 + 272);
  if ((v158 & 0x80000000) == 0)
  {
    *(a1 + 11812) = v158;
  }

  v159 = *(v142 + 273);
  if ((v159 & 0x80000000) == 0)
  {
    *(a1 + 1396) = v159;
  }

  if ((v154 & 0x40) != 0)
  {
    *(a1 + 13805) = 1;
    if ((v150 & 0x40) == 0)
    {
LABEL_287:
      if ((v154 & 0x80) == 0)
      {
        goto LABEL_288;
      }

      goto LABEL_295;
    }
  }

  else if ((v150 & 0x40) == 0)
  {
    goto LABEL_287;
  }

  *(a1 + 13805) = 0;
  if ((v154 & 0x80) == 0)
  {
LABEL_288:
    if ((v150 & 0x80) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_296;
  }

LABEL_295:
  *(a1 + 13807) = 1;
  *(a1 + 10176) = 2;
  if ((v150 & 0x80) == 0)
  {
LABEL_289:
    if ((v154 & 0x100) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_297;
  }

LABEL_296:
  *(a1 + 13807) = 0;
  *(a1 + 10176) = 0;
  if ((v154 & 0x100) == 0)
  {
LABEL_290:
    if ((v150 & 0x100) == 0)
    {
      goto LABEL_291;
    }

LABEL_298:
    *(a1 + 14164) = 0;
    if ((v154 & 0x200) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_299;
  }

LABEL_297:
  *(a1 + 14164) = 1;
  if ((v150 & 0x100) != 0)
  {
    goto LABEL_298;
  }

LABEL_291:
  if ((v154 & 0x200) == 0)
  {
    goto LABEL_301;
  }

LABEL_299:
  if (*(a1 + 10892) != 1)
  {
    *(a1 + 12060) = 1;
  }

LABEL_301:
  if ((v150 & 0x200) != 0 && *(a1 + 10892) != 1)
  {
    *(a1 + 12060) = 0;
  }

  if ((v154 & 0x20000) != 0)
  {
    *(a1 + 10205) = 1;
    if ((v150 & 0x20000) == 0)
    {
LABEL_306:
      if ((v154 & 0x40000) == 0)
      {
        goto LABEL_307;
      }

      goto LABEL_391;
    }
  }

  else if ((v150 & 0x20000) == 0)
  {
    goto LABEL_306;
  }

  *(a1 + 10205) = 0;
  if ((v154 & 0x40000) == 0)
  {
LABEL_307:
    if ((v150 & 0x40000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_392;
  }

LABEL_391:
  *(a1 + 10206) = 1;
  if ((v150 & 0x40000) == 0)
  {
LABEL_308:
    if ((v154 & 0x80000) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_393;
  }

LABEL_392:
  *(a1 + 10206) = 0;
  if ((v154 & 0x80000) == 0)
  {
LABEL_309:
    if ((v150 & 0x80000) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_394;
  }

LABEL_393:
  *(a1 + 1336) |= 0x200u;
  if ((v150 & 0x80000) == 0)
  {
LABEL_310:
    if ((v154 & 0x100000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_395;
  }

LABEL_394:
  *(a1 + 1336) &= ~0x200u;
  if ((v154 & 0x100000) == 0)
  {
LABEL_311:
    if ((v150 & 0x100000) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_312;
  }

LABEL_395:
  *(a1 + 10855) = 1;
  if ((v150 & 0x100000) != 0)
  {
LABEL_312:
    *(a1 + 10855) = 0;
  }

LABEL_313:
  v160 = *(v142 + 123);
  if (v160)
  {
    *(a1 + 1096) |= v160;
  }

  v161 = *(v142 + 124);
  if (v161)
  {
    *(a1 + 1096) &= ~v161;
  }

  v162 = *(v142 + 96);
  v163 = *(v142 + 97);
  *(a1 + 1120) = (*(a1 + 1120) | v162) & ~v163;
  if ((v162 & 0x40) != 0)
  {
    *(a1 + 1476) = 1;
    if ((v163 & 0x40) == 0)
    {
LABEL_319:
      if ((v162 & 0x80000) == 0)
      {
        goto LABEL_320;
      }

      goto LABEL_399;
    }
  }

  else if ((v163 & 0x40) == 0)
  {
    goto LABEL_319;
  }

  *(a1 + 1476) = 0;
  if ((v162 & 0x80000) == 0)
  {
LABEL_320:
    if ((v163 & 0x80000) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_400;
  }

LABEL_399:
  *(a1 + 10852) = 1;
  if ((v163 & 0x80000) == 0)
  {
LABEL_321:
    if ((v162 & 0x800000) == 0)
    {
      goto LABEL_322;
    }

LABEL_401:
    *(a1 + 1336) |= 0x4000000u;
    if ((v163 & 0x800000) == 0)
    {
      goto LABEL_324;
    }

    goto LABEL_323;
  }

LABEL_400:
  *(a1 + 10852) = 0;
  if ((v162 & 0x800000) != 0)
  {
    goto LABEL_401;
  }

LABEL_322:
  if ((v163 & 0x800000) != 0)
  {
LABEL_323:
    *(a1 + 1336) &= ~0x4000000u;
  }

LABEL_324:
  v164 = *(v142 + 242);
  if (v164)
  {
    *(a1 + 1352) |= v164;
  }

  v165 = *(v142 + 243);
  if (v165)
  {
    *(a1 + 1352) &= ~v165;
  }

  *(a1 + 1336) = ((*(a1 + 1336) | *(v142 + 237)) & ~*(v142 + 238) | *(v142 + 237) & 4) & (~*(v142 + 238) | 0xFFFFFFFB);
  *(a1 + 1240) = (*(a1 + 1240) | *(v142 + 218)) & ~*(v142 + 219);
  *(a1 + 1296) = (*(a1 + 1296) | *(v142 + 230)) & ~*(v142 + 231);
  v167 = *(v142 + 16);
  v166 = *(v142 + 17);
  *(a1 + 688) = (*(a1 + 688) | v167) & ~v166;
  if ((v167 & 0x400) != 0)
  {
    *(a1 + 10172) = 1;
  }

  if ((v166 & 0x400) != 0)
  {
    *(a1 + 10172) = 0;
  }

  if ((*(v142 + 412) & 8) != 0)
  {
    *(a1 + 1464) = 0x8000000;
  }

  v168 = *(v142 + 200);
  if (v168 >= 1)
  {
    *(a1 + 1136) = v168;
  }

  v169 = *(v142 + 18);
  if ((v169 - 1) <= 0x2F)
  {
    *(a1 + 11772) = v169;
  }

  v170 = *(v142 + 256);
  if (v170 >= 1)
  {
    *(a1 + 1368) = v170;
  }

  v171 = *(v142 + 255);
  if (sub_E71EC(*(a1 + 68), 1, 1, v171))
  {
    *v23 = v171;
  }

  v172 = *(v142 + 189);
  if ((v172 & 0x80000000) == 0)
  {
    *(a1 + 12064) = v172;
    *(a1 + 10845) = 1;
  }

  v173 = *(v142 + 260);
  if (v173 <= 4)
  {
    *(a1 + 10860) = v173;
  }

  v174 = *(v142 + 400);
  if (v174 >= 1)
  {
    *(a1 + 11792) = v174;
  }

  v175 = *(v142 + 240);
  if (v175 != -13)
  {
    *(a1 + 1344) = v175;
  }

  v176 = *(v142 + 241);
  if (v176 != -13)
  {
    *(a1 + 1348) = v176;
  }

  v177 = *(v142 + 196);
  if (v177 != -13)
  {
    *(a1 + 1232) = v177;
  }

  v178 = *(v142 + 197);
  if (v178 != -13)
  {
    *(a1 + 1236) = v178;
  }

  v179 = *(v142 + 201);
  if (v179 != -13)
  {
    *(a1 + 1144) = v179;
  }

  v180 = *(v142 + 202);
  if (v180 != -13)
  {
    *(a1 + 1148) = v180;
  }

  v181 = *(v142 + 203);
  if (v181 != -13)
  {
    *(a1 + 1152) = v181;
  }

  v182 = *(v142 + 401);
  if (v182 >= 1)
  {
    *(a1 + 11796) = v182;
  }

  if (*v142 >= 1)
  {
    *(a1 + 11460) = *v142;
  }

  v183 = *(v142 + 190);
  if (v183 >= 1)
  {
    *(a1 + 1112) = v183;
  }

  v184 = *(v142 + 199);
  if (v184 >= 1)
  {
    *(a1 + 1132) = v184;
  }

  v185 = *(v142 + 200);
  if (v185 >= 1)
  {
    *(a1 + 1136) = v185;
  }

  v186 = *(v142 + 198);
  if ((v186 & 0x80000000) == 0)
  {
    *(a1 + 1128) = v186;
    *(a1 + 1120) |= 0x80000000uLL;
  }

  v187 = v142[102];
  if (v187 >= 0.0)
  {
    *(a1 + 1200) = v187;
  }

  v188 = *(v142 + 397);
  if (v188 >= 1)
  {
    *(a1 + 720) = v188;
  }

  v189 = *(v142 + 258);
  if (v189 <= 2)
  {
    *(a1 + 14196) = v189;
  }

  v190 = *(v142 + 254);
  if (v190 >= 1)
  {
    *(a1 + 10252) = v190;
  }

  v191 = *(a1 + 716);
  if (v147 != v191)
  {
    v192 = *(a1 + 12052) + 8;
    if (v192 <= *(a1 + 12056) + 8)
    {
      v192 = *(a1 + 12056) + 8;
    }

    if (sub_DDADC(*(a1 + 68), *(a1 + 64), v191, 1, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v192, 0, 0x1414C4C20, *(a1 + 16)) && sub_160EF0(0x1Eu, 4))
    {
      v193 = sub_160F34(0x1Eu);
      v194 = sub_175AE4();
      v195 = sub_160F68(4);
      if (v193)
      {
        printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v194, 30, v195, "AVE_AVC_ApplyDW", 4719, "ret == 0");
        v196 = sub_175AE4();
        v217 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v196, 30, v217, "AVE_AVC_ApplyDW", 4719, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v194, 30, v195, "AVE_AVC_ApplyDW", 4719, "ret == 0");
      }
    }
  }

  v197 = *(a1 + 12036);
  if (v197 <= 2 && *(a1 + 10892) != 1)
  {
    if (*(a1 + 76) <= 29)
    {
      v198 = 1;
    }

    else
    {
      v198 = 2;
    }

    *v23 = v198;
  }

  *(a1 + 1468) = sub_132C10(v197);
  if (*(a1 + 12008) == 2)
  {
    v199 = sub_132D3C(*(a1 + 12036));
  }

  else
  {
    v199 = 0;
  }

  *(a1 + 1472) = v199;
  if (sub_160EF0(0x10u, 7))
  {
    v200 = sub_160F34(0x10u);
    v201 = sub_175AE4();
    v202 = sub_160F68(7);
    v203 = *(a1 + 1472);
    if (v200)
    {
      printf("%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d\n", v201, 16, v202, *(a1 + 1468), v203);
      v204 = sub_175AE4();
      v205 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d", v204, 16, v205, *(a1 + 1468), *(a1 + 1472));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d", v201, 16, v202, *(a1 + 1468), v203);
    }
  }

  v130 = sub_EBF6C(a1);
  if (v130 && sub_160EF0(3u, 4))
  {
    v206 = sub_160F34(3u);
    v207 = sub_175AE4();
    v208 = sub_160F68(4);
    if (v206)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v207, 3, v208, "AVE_ManageSessionSettings", 5031, "err == 0");
      sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
  }

  return v130;
}

uint64_t sub_F1DC8(uint64_t a1, const __CFDictionary *a2, unint64_t *a3, int *a4, void *a5)
{
  if (sub_160EF0(0xCu, 7))
  {
    v9 = sub_160F34(0xCu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p\n", v10, 12, v11, "AVE_GetPerFrameData", a1, a2, a3, a4, a5);
      v12 = sub_175AE4();
      v208 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v12, 12, v208);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v10, 12, v11);
    }
  }

  if (a4)
  {
    v13 = a1 + 16460;
    *(a3 + 216) = *(a1 + 1136);
    *(a3 + 212) = *(a1 + 1112);
    v14 = *(a1 + 1160);
    v15 = *(a1 + 1176);
    a3[113] = *(a1 + 1192);
    *(a3 + 109) = v14;
    *(a3 + 111) = v15;
    *(a1 + 16460) = 0;
    *(a3 + 28) = *(a1 + 688) & 2;
    *(a4 + 1362) = *(a1 + 10204);
    v16 = *(a1 + 16544);
    if (!v16)
    {
      v16 = *(a1 + 1440);
    }

    a4[140] = v16;
    v17 = *(a1 + 16548);
    if (!v17)
    {
      v17 = *(a1 + 1444);
    }

    a4[141] = v17;
    a4[342] = *(a1 + 10808);
    *a4 = 0;
    if ((*(a1 + 716) & 0x3C0) == 0)
    {
      *a3 &= ~4uLL;
LABEL_28:
      *(a4 + 3) = 0;
      *(a4 + 30) = 0;
      a5[8] = 0;
      *&v33 = -1;
      *(&v33 + 1) = -1;
      *(a4 + 17) = v33;
      *(a4 + 1392) = 0;
      *(a4 + 48) = 0;
      a4[13] = -1;
      *(a4 + 15) = 0;
      *(a4 + 5) = 0xFFFFFFF3FFFFFFFFLL;
      *(a4 + 21) = v33;
      *(a4 + 66) = 0;
      a4[343] = -1;
      a4[135] = -1;
      if (a2)
      {
        v231 = a4 + 132;
        if (sub_160EF0(0x1Du, 6))
        {
          v34 = sub_160F34(0x1Du);
          v35 = sub_175AE4();
          v36 = sub_160F68(6);
          v37 = *(a1 + 16468);
          if (v34)
          {
            printf("%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d\n", v35, 29, v36, v37);
            v38 = sub_175AE4();
            v210 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v38, 29, v210, *(a1 + 16468));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v35, 29, v36, v37);
          }
        }

        Value = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ForceKeyFrame);
        if (Value && CFEqual(Value, kCFBooleanTrue))
        {
          v41 = (*(a1 + 1240) & 0x100) != 0 ? 1 : 2;
          *a4 = v41;
          *(a3 + 230) |= 1u;
          if (sub_160EF0(0x1Du, 6))
          {
            v42 = sub_160F34(0x1Du);
            v43 = sub_175AE4();
            v44 = sub_160F68(6);
            v45 = *(a3 + 230);
            if (v42)
            {
              printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v43, 29, v44, *a4, v45);
              v46 = sub_175AE4();
              v47 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v46, 29, v47, *a4, *(a3 + 230));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v43, 29, v44, *a4, v45);
            }
          }
        }

        v49 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_FirstMbInRecvSlices);
        if (v49)
        {
          v50 = v49;
          TypeID = CFDataGetTypeID();
          if (TypeID == CFGetTypeID(v50))
          {
            *(a3 + 232) |= 0x10u;
            if (sub_160EF0(0x1Du, 6))
            {
              v52 = sub_160F34(0x1Du);
              v53 = sub_175AE4();
              v54 = sub_160F68(6);
              if (v52)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices\n", v53, 29, v54);
                v55 = sub_175AE4();
                v211 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v55, 29, v211);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v53, 29, v54);
              }
            }
          }
        }

        v56 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ForceRefresh);
        if (v56)
        {
          if (CFEqual(v56, kCFBooleanTrue))
          {
            *(a3 + 232) |= 0x10u;
            if (sub_160EF0(0x1Du, 6))
            {
              v57 = sub_160F34(0x1Du);
              v58 = sub_175AE4();
              v59 = sub_160F68(6);
              v60 = *(a3 + 232);
              if (v57)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x\n", v58, 29, v59, v60);
                v61 = sub_175AE4();
                v212 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v61, 29, v212, *(a3 + 232));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v58, 29, v59, v60);
              }
            }
          }
        }

        v62 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_RepeatedFrame);
        if (v62)
        {
          if (CFEqual(v62, kCFBooleanTrue))
          {
            *a3 |= 8uLL;
            if (sub_160EF0(0x1Du, 6))
            {
              v63 = sub_160F34(0x1Du);
              v64 = sub_175AE4();
              v65 = sub_160F68(6);
              v66 = *a3;
              if (v63)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx\n", v64, 29, v65, v66);
                v67 = sub_175AE4();
                v213 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v67, 29, v213, *a3);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v64, 29, v65, v66);
              }
            }
          }
        }

        v68 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_UserQpMap);
        a4[8] = 0;
        *(a4 + 3) = 0;
        *(a3 + 234) &= ~0x10000u;
        if (*(a1 + 1338))
        {
          v69 = v68;
          if (v68)
          {
            a4[8] = CFDataGetLength(v68);
            *(a4 + 3) = CFDataGetBytePtr(v69);
            *(a3 + 234) |= 0x10000u;
          }
        }

        v70 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_VRAUsedDimension);
        if (v70)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v70, kCFNumberSInt32Type, &valuePtr);
          v71 = valuePtr;
          a4[2] = WORD1(valuePtr);
          a4[3] = v71;
          if (sub_160EF0(0x1Du, 6))
          {
            v72 = sub_160F34(0x1Du);
            v73 = sub_175AE4();
            v74 = sub_160F68(6);
            v75 = a4[3];
            if (v72)
            {
              printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d\n", v73, 29, v74, a4[2], v75);
              v76 = sub_175AE4();
              v77 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v76, 29, v77, a4[2], a4[3]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v73, 29, v74, a4[2], v75);
            }
          }
        }

        v78 = CFDictionaryGetValue(a2, @"AttachDPB");
        if (v78 && CFEqual(v78, kCFBooleanTrue))
        {
          if (sub_160EF0(0x1Du, 6))
          {
            v79 = sub_160F34(0x1Du);
            v80 = sub_175AE4();
            v81 = sub_160F68(6);
            v82 = *(a1 + 16468);
            if (v79)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)\n", v80, 29, v81, v82);
              v83 = sub_175AE4();
              v214 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v83, 29, v214, *(a1 + 16468));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v80, 29, v81, v82);
            }
          }

          *(a4 + 36) = 1;
        }

        v84 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_SetDPB);
        if (v84)
        {
          if (*(a1 + 16468))
          {
            v85 = v84;
            if (sub_160EF0(0x1Eu, 6))
            {
              v86 = sub_160F34(0x1Eu);
              v87 = sub_175AE4();
              v88 = sub_160F68(6);
              v89 = *(a1 + 16468);
              if (v86)
              {
                printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)\n", v87, 30, v88, v89);
                v90 = sub_175AE4();
                v215 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v90, 30, v215, *(a1 + 16468));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v87, 30, v88, v89);
              }

              v13 = a1 + 16460;
            }

            *(a4 + 37) = 1;
            a5[8] = v85;
          }

          else
          {
            if (sub_160EF0(0x1Du, 5))
            {
              v91 = sub_160F34(0x1Du);
              v92 = sub_175AE4();
              v93 = sub_160F68(5);
              if (v91)
              {
                printf("%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true\n", v92, 29, v93);
                v94 = sub_175AE4();
                v216 = sub_160F68(5);
                syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v94, 29, v216);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v92, 29, v93);
              }
            }

            if (sub_160EF0(0x1Du, 5))
            {
              v95 = sub_160F34(0x1Du);
              v96 = sub_175AE4();
              v97 = sub_160F68(5);
              if (v95)
              {
                printf("%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag\n", v96, 29, v97);
                v98 = sub_175AE4();
                v217 = sub_160F68(5);
                syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v98, 29, v217);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v96, 29, v97);
              }
            }
          }
        }

        v99 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_CalculateYUVChecksum);
        if (v99)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v99, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr)
          {
            *a3 |= 0x10000uLL;
          }
        }

        v100 = CFDictionaryGetValue(a2, @"MarkCurrentFrameAsLTR");
        if (v100)
        {
          if (CFEqual(v100, kCFBooleanTrue))
          {
            *(a4 + 48) = 1;
            if (sub_160EF0(0x1Du, 6))
            {
              v101 = sub_160F34(0x1Du);
              v102 = sub_175AE4();
              v103 = sub_160F68(6);
              if (v101)
              {
                printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE\n", v102, 29, v103);
                v104 = sub_175AE4();
                v218 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v104, 29, v218);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v102, 29, v103);
              }
            }
          }
        }

        v105 = CFDictionaryGetValue(a2, @"RVRADimension");
        if (v105)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v105, kCFNumberSInt32Type, &valuePtr);
          v106 = valuePtr;
          a4[15] = WORD1(valuePtr);
          a4[16] = v106;
          if (sub_160EF0(0x1Du, 6))
          {
            v107 = sub_160F34(0x1Du);
            v108 = sub_175AE4();
            v109 = sub_160F68(6);
            v110 = a4[16];
            if (v107)
            {
              printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d\n", v108, 29, v109, a4[15], v110);
              v111 = sub_175AE4();
              v112 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v111, 29, v112, a4[15], a4[16]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v108, 29, v109, a4[15], v110);
            }
          }
        }

        v113 = CFDictionaryGetValue(a2, @"FrameNumForLTRToReplace");
        if (v113)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v113, kCFNumberSInt32Type, &valuePtr);
          a4[13] = valuePtr;
          if (sub_160EF0(0x1Du, 6))
          {
            v114 = sub_160F34(0x1Du);
            v115 = sub_175AE4();
            v116 = sub_160F68(6);
            v117 = a4[13];
            if (v114)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)\n", v115, 29, v116, v117);
              v118 = sub_175AE4();
              v219 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v118, 29, v219, a4[13]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v115, 29, v116, v117);
            }
          }
        }

        v119 = CFDictionaryGetValue(a2, @"UserFrameType");
        if (v119)
        {
          LODWORD(valuePtr) = 5;
          CFNumberGetValue(v119, kCFNumberSInt32Type, &valuePtr);
          a4[10] = valuePtr;
          if (sub_160EF0(0x1Du, 6))
          {
            v120 = sub_160F34(0x1Du);
            v121 = sub_175AE4();
            v122 = sub_160F68(6);
            v123 = a4[10];
            if (v120)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)\n", v121, 29, v122, v123);
              v124 = sub_175AE4();
              v220 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v124, 29, v220, a4[10]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v121, 29, v122, v123);
            }
          }
        }

        v125 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ReferenceL0);
        if (v125)
        {
          v126 = v125;
          v127 = CFArrayGetTypeID();
          if (v127 == CFGetTypeID(v126))
          {
            LODWORD(valuePtr) = 4;
            sub_1702C8(v126, a4 + 17, &valuePtr);
            *(a4 + 56) = valuePtr;
            if (sub_160EF0(0x1Du, 6))
            {
              v128 = sub_160F34(0x1Du);
              v129 = sub_175AE4();
              v130 = sub_160F68(6);
              v131 = *(a4 + 56);
              if (v128)
              {
                printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d\n", v129, 29, v130, v131);
                v132 = sub_175AE4();
                v221 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v132, 29, v221, *(a4 + 56));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v129, 29, v130, v131);
              }
            }
          }
        }

        v133 = CFDictionaryGetValue(a2, @"SliceAlphaC0OffsetDiv2");
        if (v133)
        {
          CFNumberGetValue(v133, kCFNumberSInt32Type, v231);
          if (sub_160EF0(0x1Du, 6))
          {
            v134 = sub_160F34(0x1Du);
            v135 = sub_175AE4();
            v136 = sub_160F68(6);
            v137 = *v231;
            if (v134)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)\n", v135, 29, v136, v137);
              v138 = sub_175AE4();
              v222 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)", v138, 29, v222, *v231);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)", v135, 29, v136, v137);
            }
          }
        }

        v139 = CFDictionaryGetValue(a2, @"SliceBetaOffsetDiv2");
        if (v139)
        {
          v140 = a4 + 133;
          CFNumberGetValue(v139, kCFNumberSInt32Type, a4 + 133);
          if (sub_160EF0(0x1Du, 6))
          {
            v141 = sub_160F34(0x1Du);
            v142 = sub_175AE4();
            v143 = sub_160F68(6);
            v144 = *v140;
            if (v141)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)\n", v142, 29, v143, v144);
              v145 = sub_175AE4();
              v223 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v145, 29, v223, *v140);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v142, 29, v143, v144);
            }
          }
        }

        if ((*(a1 + 1296) & 1) != 0 && a4[10] == 1)
        {
          v39 = sub_170D74(a2, *(a4 + 56), a4 + 25);
          if (!v39)
          {
            valuePtr = 0u;
            v237 = 0u;
            sub_172100(&valuePtr, 32, "%llu %d", *(a1 + 56), *(v13 + 8));
            sub_171244(a4 + 25, 0xD7u, 6, &valuePtr, 0);
          }
        }

        else
        {
          v39 = 0;
        }

        v146 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_FinalFrame);
        if (v146)
        {
          if (CFEqual(v146, kCFBooleanTrue))
          {
            *a3 |= 2uLL;
            if (sub_160EF0(0x1Du, 6))
            {
              v147 = sub_160F34(0x1Du);
              v148 = sub_175AE4();
              v149 = sub_160F68(6);
              if (v147)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE\n", v148, 29, v149);
                v150 = sub_175AE4();
                v224 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v150, 29, v224);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v148, 29, v149);
              }
            }
          }
        }

        v151 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_PicParameterSetId);
        if (v151)
        {
          v152 = a4 + 135;
          CFNumberGetValue(v151, kCFNumberSInt32Type, a4 + 135);
          if (sub_160EF0(0x1Du, 6))
          {
            v232 = v39;
            v153 = v13;
            v154 = sub_160F34(0x1Du);
            v155 = sub_175AE4();
            v156 = sub_160F68(6);
            v157 = *v152;
            if (v154)
            {
              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)\n", v155, 29, v156, v157);
              v158 = sub_175AE4();
              v225 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v158, 29, v225, *v152);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v155, 29, v156, v157);
            }

            v13 = v153;
            v39 = v232;
          }
        }

        v159 = a4 + 11;
        v160 = CFDictionaryGetValue(a2, @"POCLsb");
        if (v160)
        {
          v161 = a4 + 343;
          CFNumberGetValue(v160, kCFNumberSInt32Type, a4 + 343);
          if (sub_160EF0(0x1Du, 6))
          {
            v233 = v39;
            v162 = v13;
            v163 = sub_160F34(0x1Du);
            v164 = sub_175AE4();
            v165 = sub_160F68(6);
            v166 = *v161;
            if (v163)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)\n", v164, 29, v165, v166);
              v167 = sub_175AE4();
              v226 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v167, 29, v226, *v161);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v164, 29, v165, v166);
            }

            v13 = v162;
            v39 = v233;
          }
        }

        v168 = kVTEncodeFrameOptionKey_SliceQP;
        v169 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_SliceQP);
        if (v169)
        {
          CFNumberGetValue(v169, kCFNumberSInt32Type, a4 + 11);
          if (sub_160EF0(0x1Du, 6))
          {
            v170 = sub_160F34(0x1Du);
            v171 = sub_175AE4();
            v172 = sub_160F68(6);
            v173 = *v159;
            if (v170)
            {
              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)\n", v171, 29, v172, v173);
              v174 = sub_175AE4();
              v227 = sub_160F68(6);
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v174, 29, v227, *v159);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v171, 29, v172, v173);
            }
          }
        }

        else
        {
          v175 = CFDictionaryGetValue(a2, v168);
          if (v175)
          {
            v176 = v175;
            v177 = CFArrayGetTypeID();
            if (v177 == CFGetTypeID(v176))
            {
              v230 = v13;
              v234 = v39;
              Count = CFArrayGetCount(v176);
              LODWORD(valuePtr) = 0;
              if (Count >= 1)
              {
                v179 = Count;
                for (i = 0; i < v179; i = (i + 1))
                {
                  sub_14AE14(v176, i, &valuePtr);
                  if (!i)
                  {
                    *v159 = valuePtr;
                  }

                  if (sub_160EF0(0x1Du, 6))
                  {
                    v181 = sub_160F34(0x1Du);
                    v182 = sub_175AE4();
                    v183 = sub_160F68(6);
                    if (v181)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)\n", v182, 29, v183, i, valuePtr);
                      v182 = sub_175AE4();
                      v183 = sub_160F68(6);
                    }

                    syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)", v182, 29, v183, i, valuePtr);
                  }
                }
              }

              v13 = v230;
              v39 = v234;
            }
          }
        }

        v184 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_RequestNonReferenceFrame);
        if (v184)
        {
          if (CFEqual(v184, kCFBooleanTrue))
          {
            *(a4 + 1392) = 1;
            if (sub_160EF0(0x1Du, 6))
            {
              v185 = sub_160F34(0x1Du);
              v186 = sub_175AE4();
              v187 = sub_160F68(6);
              v188 = *(a4 + 1392);
              if (v185)
              {
                printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)\n", v186, 29, v187, v188);
                v189 = sub_175AE4();
                v228 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v189, 29, v228, *(a4 + 1392));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v186, 29, v187, v188);
              }
            }
          }
        }

        v190 = CFDictionaryGetValue(a2, @"ResetRCState");
        if (v190)
        {
          v191 = CFEqual(v190, kCFBooleanTrue);
          *(a4 + 4) = v191 != 0;
          if (v191)
          {
            v192 = *(a1 + 1132);
            if (v192 == 1)
            {
              *a4 = 2;
              if (sub_160EF0(0x1Du, 6))
              {
                v196 = sub_160F34(0x1Du);
                v197 = sub_175AE4();
                v198 = sub_160F68(6);
                if (v196)
                {
                  printf("%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR\n", v197, 29, v198, *(a4 + 4));
                  sub_175AE4();
                  sub_160F68(6);
                }

                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR");
              }
            }

            else if (v192 == 20)
            {
              *(a4 + 4) = 0;
              if (sub_160EF0(0x1Du, 5))
              {
                v193 = sub_160F34(0x1Du);
                v194 = sub_175AE4();
                v195 = sub_160F68(5);
                if (v193)
                {
                  printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.\n", v194, 29, v195);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.");
              }
            }

            else
            {
              *(a4 + 4) = 0;
              if (sub_160EF0(0x1Du, 5))
              {
                v199 = sub_160F34(0x1Du);
                v200 = sub_175AE4();
                v201 = sub_160F68(5);
                if (v199)
                {
                  printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.\n", v200, 29, v201);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.");
              }
            }
          }
        }

        v202 = a3 + 100;
        if ((*(a1 + 1337) & 4) != 0)
        {
          if (!sub_13D92C(a2, a3 + 200))
          {
            valuePtr = 0u;
            v237 = 0u;
            sub_172100(&valuePtr, 32, "%llu %d %d", *(a1 + 56), *(v13 + 8), *v202);
            sub_13D890(a3 + 200, 50, 6, &valuePtr, 0);
          }
        }

        else
        {
          *v202 = 0;
        }
      }

      else
      {
        v39 = 0;
      }

      goto LABEL_205;
    }

    if (*(a1 + 11810) == 1)
    {
      v18 = sub_1502C8()[263];
      if (v18 >= 1)
      {
        v19 = *(a1 + 16468);
        if (v19 <= 3)
        {
          v20 = *a3 | 4;
          *a3 = v20;
          *(a1 + 18088) |= 4uLL;
LABEL_22:
          if (*(a1 + 16468) <= 5u)
          {
            *a3 = v20 | 4;
          }

          if (sub_160EF0(0x10u, 8))
          {
            v26 = sub_160F34(0x10u);
            v27 = sub_175AE4();
            v28 = sub_160F68(8);
            v29 = *(a1 + 16468);
            v30 = *a3;
            if (v26)
            {
              printf("%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx\n", v27, 16, v28, v29, *(a5[17] + 72), v30);
              v31 = sub_175AE4();
              v32 = sub_160F68(8);
              syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v31, 16, v32, *(a1 + 16468), *(a5[17] + 72), *a3);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v27, 16, v28, v29, *(a5[17] + 72), v30);
            }
          }

          goto LABEL_28;
        }

        v48 = v19 % v18;
        v20 = *(a1 + 18088);
        if (!v48)
        {
          v20 = (*a3 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v20 >> 2) & 1))) ^ 4;
          *a3 = v20;
          *(a1 + 18088) = v20;
          goto LABEL_22;
        }

LABEL_21:
        *a3 = v20;
        goto LABEL_22;
      }

      v25 = *a3;
      if (*(a5[17] + 72) > 254)
      {
        v20 = v25 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_21;
      }
    }

    else
    {
      v25 = *a3;
    }

    v20 = v25 | 4;
    goto LABEL_21;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v21 = sub_160F34(0xCu);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s:%d %s | PerFrameData = NULL\n", v22, 12, v23, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
      v24 = sub_175AE4();
      v209 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v24, 12, v209, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v22, 12, v23, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
    }
  }

  v39 = 4294966295;
LABEL_205:
  if (sub_160EF0(0xCu, 7))
  {
    v203 = sub_160F34(0xCu);
    v204 = sub_175AE4();
    v205 = sub_160F68(7);
    if (v203)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %d\n", v204, 12, v205, "AVE_GetPerFrameData", a1, a2, a3, a4, a5, v39);
      v206 = sub_175AE4();
      v229 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v206, 12, v229, "AVE_GetPerFrameData");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v204, 12, v205, "AVE_GetPerFrameData");
    }
  }

  return v39;
}

void sub_F3720(uint64_t a1, uint64_t a2, double a3)
{
  if (!*(a1 + 10892))
  {
    if (sub_160EF0(0x30u, 6))
    {
      v6 = sub_160F34(0x30u);
      v7 = sub_175AE4();
      v8 = sub_160F68(6);
      v9 = *(a1 + 16468);
      if (v6)
      {
        printf("%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f\n", v7, 48, v8, v9, 25.0, a3);
        v10 = sub_175AE4();
        v11 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v10, 48, v11, *(a1 + 16468), 25.0, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v7, 48, v8, v9, 25.0, a3);
      }
    }

    if (*(a1 + 10804) == 2)
    {
      *(a2 + 20) = a3 <= 25.0;
    }

    if (*(a1 + 10852) == 1)
    {
      *(a2 + 20) = 1;
    }
  }
}

uint64_t sub_F3858(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = a1 + 0x4000;
  if (!*(a1 + 16468))
  {
    v9 = a2[2];
    *(a1 + 16516) = *a2;
    *(a1 + 16524) = a2[1];
    *(a1 + 16532) = v9;
    if (sub_160EF0(0xD8u, 6))
    {
      v10 = sub_160F34(0xD8u);
      v11 = sub_175AE4();
      v12 = sub_160F68(6);
      if (v10)
      {
        printf("%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v11, 216, v12, *a2, *(a2 + 2), *(a2 + 3), a2[2]);
        v11 = sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v11);
    }

    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v18 = sub_160F34(3u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d\n", v19, 3, v20, "AVE_H264MultipassDataFetch", 4877, "err == noErr", *(v3 + 84), *a2, *(a2 + 2));
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v35 = *a2;
        v36 = *(a2 + 2);
        v33 = "err == noErr";
        v34 = *(v3 + 84);
        v32 = 4877;
      }

      else
      {
        v35 = *a2;
        v36 = *(a2 + 2);
        v34 = *(v3 + 84);
        v32 = 4877;
        v33 = "err == noErr";
      }

      v31 = v20;
      v21 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d";
    }

    else
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v22 = sub_160F34(3u);
      v19 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d\n", v19, 3, v23, "AVE_H264MultipassDataFetch", 4878, "data != __null", *(v3 + 84), *a2, *(a2 + 2));
        v19 = sub_175AE4();
        v23 = sub_160F68(4);
        v35 = *a2;
        v36 = *(a2 + 2);
        v33 = "data != __null";
        v34 = *(v3 + 84);
        v32 = 4878;
      }

      else
      {
        v35 = *a2;
        v36 = *(a2 + 2);
        v34 = *(v3 + 84);
        v32 = 4878;
        v33 = "data != __null";
      }

      v31 = v23;
      v21 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d";
    }

    syslog(3, v21, v19, 3, v31, "AVE_H264MultipassDataFetch", v32, v33, v34, v35, v36);
    return 4294954394;
  }

  if (VTMultiPassStorageGetTimeStamp())
  {
    if (sub_160EF0(3u, 4))
    {
      v4 = sub_160F34(3u);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      if (!v4)
      {
LABEL_21:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.");
        return 4294954394;
      }

      v7 = 4932;
LABEL_6:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.\n", v5, 3, v6, "AVE_H264MultipassDataFetch", v7, "err == noErr");
      sub_175AE4();
      sub_160F68(4);
      goto LABEL_21;
    }

    return 4294954394;
  }

  if ((*(v3 + 144) & 0x1D) == 1)
  {
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v13 = sub_160F34(3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        v16 = 4937;
LABEL_16:
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.\n", v14, 3, v15, "AVE_H264MultipassDataFetch", v16, "err == noErr");
        sub_175AE4();
        sub_160F68(4);
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    if (!sub_160EF0(3u, 4))
    {
      return 4294954394;
    }

    v25 = sub_160F34(3u);
    v26 = sub_175AE4();
    v27 = sub_160F68(4);
    if (v25)
    {
      v28 = 4938;
LABEL_46:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.\n", v26, 3, v27, "AVE_H264MultipassDataFetch", v28, "d != __null");
      sub_175AE4();
      sub_160F68(4);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  if (!VTMultiPassStorageGetTimeStamp())
  {
    if ((*(v3 + 144) & 0x1D) != 1)
    {
      return 0;
    }

    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v24 = sub_160F34(3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v24)
      {
        v16 = 4962;
        goto LABEL_16;
      }

LABEL_41:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.");
      return 4294954394;
    }

    if (!sub_160EF0(3u, 4))
    {
      return 4294954394;
    }

    v30 = sub_160F34(3u);
    v26 = sub_175AE4();
    v27 = sub_160F68(4);
    if (v30)
    {
      v28 = 4963;
      goto LABEL_46;
    }

LABEL_50:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.");
    return 4294954394;
  }

  if (sub_160EF0(3u, 4))
  {
    v17 = sub_160F34(3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(4);
    if (!v17)
    {
      goto LABEL_21;
    }

    v7 = 4957;
    goto LABEL_6;
  }

  return 4294954394;
}

uint64_t sub_F46C0(uint64_t a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: Enter %s %p\n", v3, 12, v4, "AVE_Session_AVC_Complete", a1);
      v5 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: Enter %s %p", v5, 12, v23, "AVE_Session_AVC_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Enter %s %p", v3, 12, v4, "AVE_Session_AVC_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 12000);
    v7 = sub_175AE4();
    sub_140028(v6, 6u, v7);
    if (*(a1 + 16464) == 30568)
    {
      v26 = sub_175AE4();
      v8 = sub_12D170(*(a1 + 120), &v26);
      if (v8 && sub_160EF0(0xCu, 4))
      {
        v9 = sub_160F34(0xCu);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d\n", v10, 12, v11, "AVE_Session_AVC_Complete", 5476, "ret == 0", a1, *(a1 + 56), v8);
          v12 = sub_175AE4();
          v24 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d", v12, 12, v24);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d", v10, 12, v11);
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v13 = sub_160F34(0xCu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v14, 12, v15, "AVE_Session_AVC_Complete", 5463, "pINS != __null", 0);
        v14 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v14);
    }

    v8 = 4294966295;
  }

  v16 = *(a1 + 12000);
  v17 = sub_175AE4();
  sub_1403FC(v16, 6u, v17);
  if (sub_160EF0(0xCu, 7))
  {
    v18 = sub_160F34(0xCu);
    v19 = sub_175AE4();
    v20 = sub_160F68(7);
    if (v18)
    {
      printf("%lld %d AVE %s: Exit %s %p %d\n", v19, 12, v20, "AVE_Session_AVC_Complete", a1, v8);
      v21 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v21, 12, v25, "AVE_Session_AVC_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v19, 12, v20, "AVE_Session_AVC_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_F4A58(uint64_t a1, void *a2)
{
  if (sub_160EF0(0xCu, 8))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_AVC_GetPropertyDict", a1, a2);
      v7 = sub_175AE4();
      v23 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v23, "AVE_Session_AVC_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_AVC_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = (a1 + 8 * v8 + 80);
    }

    else
    {
      v9 = (a1 + 88);
    }

    v10 = *v9;
    if (*v9)
    {
      v11 = CFGetRetainCount(*v9);
      if (v11 != 1 && sub_160EF0(0xCu, 5))
      {
        v12 = sub_160F34(0xCu);
        v13 = sub_175AE4();
        v14 = sub_160F68(5);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d property dictionary ref count %p %lld %d\n", v13, 12, v14, "AVE_Session_AVC_GetPropertyDict", 5518, a1, *(a1 + 56), v11);
          v13 = sub_175AE4();
          sub_160F68(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d property dictionary ref count %p %lld %d", v13, 12);
      }

      CFRetain(v10);
      v18 = 0;
    }

    else
    {
      v18 = 4294966288;
    }

    *a2 = v10;
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v15 = sub_160F34(0xCu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v16, 12, v17, "AVE_Session_AVC_GetPropertyDict", 5498, "pINS != __null && ppDict != __null", a1, a2);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v16, 12);
    }

    v18 = 4294966295;
  }

  if (sub_160EF0(0xCu, 8))
  {
    v19 = sub_160F34(0xCu);
    v20 = sub_175AE4();
    v21 = sub_160F68(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v20, 12, v21, "AVE_Session_AVC_GetPropertyDict", a1, a2, v18);
      v20 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v20);
  }

  return v18;
}

uint64_t sub_F4DE0(const void *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (sub_160EF0(0xCu, 8))
  {
    v8 = sub_160F34(0xCu);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 12, v10, "AVE_Session_AVC_GetProperty", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 12);
  }

  if (a1 && a3 && a4)
  {
    v11 = sub_CA7D8(a1, a2, a3, a4);
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v12 = sub_160F34(0xCu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 12, v14, "AVE_Session_AVC_GetProperty", 5545, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 12, v21, "AVE_Session_AVC_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 12, v14, "AVE_Session_AVC_GetProperty");
      }
    }

    v11 = 4294966295;
  }

  if (sub_160EF0(0xCu, 8))
  {
    v16 = sub_160F34(0xCu);
    v17 = sub_175AE4();
    v18 = sub_160F68(8);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v17, 12, v18, "AVE_Session_AVC_GetProperty", a1, a2, a3, a4, v11);
      v19 = sub_175AE4();
      v22 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v19, 12, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v17, 12, v18);
    }
  }

  return v11;
}

uint64_t sub_F50AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  if (sub_160EF0(0xCu, 6))
  {
    v9 = sub_160F34(0xCu);
    v10 = sub_175AE4();
    v11 = sub_160F68(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v10, 12, v11, "AVE_Session_AVC_Prepare", v8);
      v12 = sub_175AE4();
      v37 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v12, 12, v37, "AVE_Session_AVC_Prepare", v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v10, 12, v11, "AVE_Session_AVC_Prepare", v8);
    }
  }

  if (v8)
  {
    if (*(v8 + 16464) != 30566)
    {
      goto LABEL_20;
    }

    bzero(v41, 0x1058uLL);
    v13 = sub_EFE80(v8);
    if (v13)
    {
      v14 = v13;
      if (sub_160EF0(0xCu, 4))
      {
        v15 = sub_160F34(0xCu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld\n", v16, 12, v17, "AVE_Session_AVC_Prepare", 5577, "err == 0", v8, *(v8 + 56));
          v16 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld", v16, 12);
      }

      goto LABEL_26;
    }

    *(v8 + 10760) = 1;
    v21 = sub_175AE4();
    v39[0] = v8 + 672;
    v39[1] = v8 + 1440;
    v22 = *(v8 + 12000);
    v39[2] = v8 + 10752;
    v39[3] = v22;
    v39[4] = *(v8 + 18064);
    v23 = *(v8 + 16480);
    v41[94] = v8 + 12008;
    v41[95] = v8 + 13724;
    v41[96] = v8 + 14108;
    v40 = v23;
    memcpy(v42, (v8 + 16592), sizeof(v42));
    v43 = v21;
    if (!sub_1296B0(*(v8 + 120), v39, v8 + 160, v24, v25, v26, v27, v28))
    {
LABEL_20:
      v14 = 0;
      *(v8 + 16464) = 30567;
      goto LABEL_26;
    }

    if (sub_160EF0(0xCu, 4))
    {
      v29 = sub_160F34(0xCu);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld\n", v30, 12, v31, "AVE_Session_AVC_Prepare", 5586, "err == noErr", v8, *(v8 + 56));
        v30 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld", v30, 12);
    }

    v14 = 4294966296;
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v18 = sub_160F34(0xCu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v19, 12, v20, "AVE_Session_AVC_Prepare", 5567, "pINS != __null", 0);
        v19 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v19);
    }

    v14 = 4294966295;
  }

LABEL_26:
  if (sub_160EF0(0xCu, 6))
  {
    v32 = sub_160F34(0xCu);
    v33 = sub_175AE4();
    v34 = sub_160F68(6);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v33, 12, v34, "AVE_Session_AVC_Prepare", v8, v14);
      v35 = sub_175AE4();
      v38 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v35, 12, v38, "AVE_Session_AVC_Prepare", v8, v14);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v33, 12, v34, "AVE_Session_AVC_Prepare", v8, v14);
    }
  }

  return v14;
}

uint64_t sub_F55C4(uint64_t a1, int a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x\n", v5, 12, v6, "AVE_Session_AVC_BeginPass", a1, a2);
      v7 = sub_175AE4();
      v37 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v7, 12, v37, "AVE_Session_AVC_BeginPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v5, 12, v6, "AVE_Session_AVC_BeginPass", a1, a2);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xD8u, 7))
    {
      v8 = sub_160F34(0xD8u);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      v11 = *(a1 + 16508);
      if (v8)
      {
        printf("%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)\n", v9, 216, v10, a2, *(a1 + 16504), v11);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v12, 216, v13, a2, *(a1 + 16504), *(a1 + 16508));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v9, 216, v10, a2, *(a1 + 16504), v11);
      }
    }

    if (!*(a1 + 16496))
    {
      if (sub_160EF0(3u, 4))
      {
        v22 = sub_160F34(3u);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.\n", v23, 3, v24, "AVE_Session_AVC_BeginPass", 5616, "pINS->multiPassStorage != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.");
      }

      goto LABEL_40;
    }

    v17 = *(a1 + 16504);
    if (v17 != *(a1 + 16508))
    {
      if (sub_160EF0(3u, 4))
      {
        v25 = sub_160F34(3u);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v26, 3, v27, "AVE_Session_AVC_BeginPass", 5617, "pINS->multiPassBeginPassCounter == pINS->multiPassEndPassCounter", *(a1 + 16504), *(a1 + 16508));
          v26 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v26);
      }

      goto LABEL_40;
    }

    if (v17)
    {
      v18 = v17 + 1;
      *(a1 + 16504) = v18;
      if (v18 >= 3)
      {
        if (sub_160EF0(3u, 4))
        {
          v19 = sub_160F34(3u);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          if (v19)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d\n", v20, 3, v21, "AVE_Session_AVC_BeginPass", 5626, "false", *(a1 + 16504));
            v20 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d", v20);
        }

LABEL_40:
        v28 = 4294966296;
        goto LABEL_41;
      }
    }

    else
    {
      if (*(a1 + 16464) == 30568)
      {
        if (sub_160EF0(3u, 4))
        {
          v29 = sub_160F34(3u);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run\n", v30, 3, v31, "AVE_Session_AVC_BeginPass", 5620, "pINS->SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run");
        }

        goto LABEL_40;
      }

      *(a1 + 16504) = 1;
    }

    v28 = 0;
    *(a1 + 16512) = a2;
    goto LABEL_41;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v14 = sub_160F34(0xCu);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x\n", v15, 12, v16, "AVE_Session_AVC_BeginPass", 5611, "pINS != __null", 0, a2);
      v15 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x", v15, 12);
  }

  v28 = 4294966295;
LABEL_41:
  if (sub_160EF0(0xCu, 6))
  {
    v32 = sub_160F34(0xCu);
    v33 = sub_175AE4();
    v34 = sub_160F68(6);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v33, 12, v34, "AVE_Session_AVC_BeginPass", a1, a2, v28);
      v35 = sub_175AE4();
      sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v33);
    }
  }

  return v28;
}

uint64_t sub_F5C3C(uint64_t a1, int *a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_AVC_EndPass", a1, a2);
      v7 = sub_175AE4();
      v94 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v94, "AVE_Session_AVC_EndPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_AVC_EndPass", a1, a2);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xD8u, 7))
    {
      v8 = sub_160F34(0xD8u);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      if (v8)
      {
        printf("%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)\n", v9, 216, v10, "AVE_Session_AVC_EndPass", *(a1 + 16512), *(a1 + 16504), *(a1 + 16508));
        v9 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)", v9);
    }

    if (*(a1 + 16464) != 30568)
    {
      if (sub_160EF0(3u, 4))
      {
        v24 = sub_160F34(3u);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run\n", v25, 3, v26, "AVE_Session_AVC_EndPass", 5665, "pINS->SessionStatus == AVE_CommonWrapper_SessionStatus_Run");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
      }

      goto LABEL_57;
    }

    if (!*(a1 + 16496))
    {
      if (sub_160EF0(3u, 4))
      {
        v27 = sub_160F34(3u);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.\n", v28, 3, v29, "AVE_Session_AVC_EndPass", 5667, "pINS->multiPassStorage != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.");
      }

      goto LABEL_57;
    }

    v14 = *(a1 + 16504);
    v15 = *(a1 + 16508);
    if (v14 != v15 + 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v30 = sub_160F34(3u);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v31, 3, v32, "AVE_Session_AVC_EndPass", 5672, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 16504), *(a1 + 16508));
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v31, 3, v32, "AVE_Session_AVC_EndPass", 5672, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 16504), *(a1 + 16508));
      }

      goto LABEL_57;
    }

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = *(a1 + 16512) == 1;
    }

    v17 = !v16;
    *(a1 + 16508) = v14;
    if (a2)
    {
      *a2 = v17;
    }

    if (!v17)
    {
      v33 = 0;
      goto LABEL_58;
    }

    if (sub_160EF0(0xD8u, 6))
    {
      v18 = sub_160F34(0xD8u);
      v19 = sub_175AE4();
      v20 = sub_160F68(6);
      v21 = *(a1 + 16468);
      if (v18)
      {
        printf("%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d\n", v19, 216, v20, "AVE_Session_AVC_EndPass", *(a1 + 16508), v21);
        v22 = sub_175AE4();
        v23 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v22, 216, v23, "AVE_Session_AVC_EndPass", *(a1 + 16508), *(a1 + 16468));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v19, 216, v20, "AVE_Session_AVC_EndPass", *(a1 + 16508), v21);
      }
    }

    if (sub_1301D8(*(a1 + 120), *(a1 + 16508)))
    {
      if (sub_160EF0(3u, 4))
      {
        v34 = sub_160F34(3u);
        v35 = sub_175AE4();
        v36 = sub_160F68(4);
        if (v34)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.\n", v35, 3, v36, "AVE_Session_AVC_EndPass", 5707, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.");
      }

LABEL_57:
      v33 = 4294966296;
      goto LABEL_58;
    }

    if (*(a1 + 16) == 1)
    {
      goto LABEL_122;
    }

    v100 = kCMTimeInvalid;
    start = v100;
    v98 = v100;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v38 = Mutable;
      *&v96.start.value = *&kCMTimeInvalid.value;
      v96.start.epoch = kCMTimeInvalid.epoch;
      if (VTMultiPassStorageGetTimeStamp())
      {
        if (sub_160EF0(3u, 4))
        {
          v39 = sub_160F34(3u);
          v40 = sub_175AE4();
          v41 = sub_160F68(4);
          if (v39)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.\n", v40, 3, v41, "AVE_Session_AVC_EndPass", 5723, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (sub_160EF0(0xD8u, 7))
      {
        v49 = sub_160F34(0xD8u);
        v50 = sub_175AE4();
        v51 = sub_160F68(7);
        if (v49)
        {
          printf("%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d\n", v50, 216, v51, "AVE_Session_AVC_EndPass", v100.value, v100.timescale, v100.flags);
          v50 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d", v50);
      }

      *&v96.start.value = *&kCMTimeInvalid.value;
      v96.start.epoch = kCMTimeInvalid.epoch;
      if (VTMultiPassStorageGetTimeStampAndDuration())
      {
        if (sub_160EF0(3u, 4))
        {
          v52 = sub_160F34(3u);
          v53 = sub_175AE4();
          v54 = sub_160F68(4);
          if (v52)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.\n", v53, 3, v54, "AVE_Session_AVC_EndPass", 5739, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (sub_160EF0(0xD8u, 7))
      {
        v55 = sub_160F34(0xD8u);
        v56 = sub_175AE4();
        v57 = sub_160F68(7);
        if (v55)
        {
          printf("%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d\n", v56, 216, v57, "AVE_Session_AVC_EndPass", start.value, start.timescale, start.flags);
          v56 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d", v56);
      }

      if (sub_160EF0(0xD8u, 7))
      {
        v58 = sub_160F34(0xD8u);
        v59 = sub_175AE4();
        v60 = sub_160F68(7);
        if (v58)
        {
          printf("%lld %d AVE %s: %s duration value %lld timescale %d flags %d\n", v59, 216, v60, "AVE_Session_AVC_EndPass", v98.value, v98.timescale, v98.flags);
          v59 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s duration value %lld timescale %d flags %d", v59);
      }

      lhs.start = start;
      rhs = v98;
      CMTimeAdd(&v96.start, &lhs.start, &rhs);
      start = v96.start;
      if (sub_160EF0(0xD8u, 7))
      {
        v61 = sub_160F34(0xD8u);
        v62 = sub_175AE4();
        v63 = sub_160F68(7);
        if (v61)
        {
          printf("%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d\n", v62, 216, v63, "AVE_Session_AVC_EndPass", start.value, start.timescale, start.flags);
          v62 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d", v62);
      }

      if (*(a1 + 16468) <= 1u && !start.flags)
      {
        v64 = *(a1 + 1112);
        if (v64 < 1)
        {
          v64 = 30;
        }

        *&start.timescale = *&v100.timescale;
        start.epoch = v100.epoch;
        start.value = v100.value + v100.timescale / v64;
      }

      if (!v100.flags)
      {
        if (sub_160EF0(3u, 4))
        {
          v68 = sub_160F34(3u);
          v69 = sub_175AE4();
          v70 = sub_160F68(4);
          if (v68)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.\n", v69, 3, v70, "AVE_Session_AVC_EndPass", 5765, "firstTimeInTimeRange.flags != 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      if (!start.flags)
      {
        if (sub_160EF0(3u, 4))
        {
          v71 = sub_160F34(3u);
          v72 = sub_175AE4();
          v73 = sub_160F68(4);
          if (v71)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.\n", v72, 3, v73, "AVE_Session_AVC_EndPass", 5767, "lastTimeInTimeRange.flags != 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      memset(&v96, 0, sizeof(v96));
      lhs.start = v100;
      rhs = start;
      CMTimeRangeFromTimeToTime(&v96, &lhs.start, &rhs);
      if (sub_160EF0(0xD8u, 6))
      {
        v65 = sub_160F34(0xD8u);
        v66 = sub_175AE4();
        v67 = sub_160F68(6);
        if (v65)
        {
          printf("%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d\n", v66, 216, v67, v96.start.value, v96.start.timescale, v96.start.flags, v96.duration.value, v96.duration.timescale, v96.duration.flags);
          v66 = sub_175AE4();
          sub_160F68(6);
        }

        syslog(3, "%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d", v66, 216);
      }

      lhs = v96;
      v74 = CMTimeRangeCopyAsDictionary(&lhs, kCFAllocatorDefault);
      if (!v74)
      {
        if (sub_160EF0(3u, 4))
        {
          v88 = sub_160F34(3u);
          v89 = sub_175AE4();
          v90 = sub_160F68(4);
          if (v88)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.\n", v89, 3, v90, "AVE_Session_AVC_EndPass", 5776, "currentTimeRangeDictionary != __null");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.");
        }

        goto LABEL_57;
      }

      v75 = v74;
      CFArrayAppendValue(v38, v74);
      CFRelease(v75);
      Count = CFArrayGetCount(v38);
      v77 = malloc_type_malloc(48 * Count, 0x1000040EED21634uLL);
      if (v77)
      {
        v78 = v77;
        if (Count >= 1)
        {
          v79 = 0;
          v80 = v77;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v38, v79);
            CMTimeRangeMakeFromDictionary(&lhs, ValueAtIndex);
            v82 = *&lhs.start.value;
            v83 = *&lhs.duration.timescale;
            v80[1] = *&lhs.start.epoch;
            v80[2] = v83;
            *v80 = v82;
            v80 += 3;
            ++v79;
          }

          while (Count != v79);
        }

        Pass = VTEncoderSessionSetTimeRangesForNextPass();
        free(v78);
        CFRelease(v38);
        if (Pass)
        {
          if (sub_160EF0(3u, 4))
          {
            v85 = sub_160F34(3u);
            v86 = sub_175AE4();
            v87 = sub_160F68(4);
            if (v85)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.\n", v86, 3, v87, "AVE_Session_AVC_EndPass", 5810, "err == noErr");
              sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.");
          }

          goto LABEL_57;
        }

LABEL_122:
        v33 = 0;
        *(a1 + 16540) = *(a1 + 16468);
        *(a1 + 16468) = 0;
        goto LABEL_58;
      }

      if (sub_160EF0(3u, 4))
      {
        v91 = sub_160F34(3u);
        v92 = sub_175AE4();
        v93 = sub_160F68(4);
        if (v91)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.\n", v92, 3, v93, "AVE_Session_AVC_EndPass", 5788, "timeRanges != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.");
      }
    }

    else if (sub_160EF0(3u, 4))
    {
      v46 = sub_160F34(3u);
      v47 = sub_175AE4();
      v48 = sub_160F68(4);
      if (v46)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.\n", v47, 3, v48, "AVE_Session_AVC_EndPass", 5720, "timeRangeArray != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.");
    }

    v33 = 4294966293;
    goto LABEL_58;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v11 = sub_160F34(0xCu);
    v12 = sub_175AE4();
    v13 = sub_160F68(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v12, 12, v13, "AVE_Session_AVC_EndPass", 5654, "pINS != __null", 0, a2);
      v12 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v12, 12);
  }

  v33 = 4294966295;
LABEL_58:
  if (sub_160EF0(0xCu, 6))
  {
    v42 = sub_160F34(0xCu);
    v43 = sub_175AE4();
    v44 = sub_160F68(6);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v43, 12, v44, "AVE_Session_AVC_EndPass", a1, a2, v33);
      v43 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v43);
  }

  return v33;
}

uint64_t sub_F6F68(uint64_t a1, unsigned int *a2)
{
  cf = 0;
  memset(v69, 0, sizeof(v69));
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_AVC_StartTileSession", a1, a2);
      v7 = sub_175AE4();
      v63 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v63, "AVE_Session_AVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_AVC_StartTileSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (sub_160EF0(0xCu, 4))
      {
        v19 = sub_160F34(0xCu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartTileSession", 6039, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
        }

        goto LABEL_32;
      }

LABEL_33:
      v28 = 0;
      v20 = 4294965295;
LABEL_34:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v28)
      {
        CFRelease(v28);
      }

      goto LABEL_38;
    }

    v8 = *(a1 + 12000);
    v9 = sub_175AE4();
    sub_140028(v8, 3u, v9);
    v10 = *a2;
    v11 = a2[1];
    *(a1 + 1440) = *a2;
    *(a1 + 1444) = v11;
    *(a1 + 11452) = v10;
    *(a1 + 11456) = v11;
    *(a1 + 764) = 2;
    v12 = sub_14E470(*(a1 + 68), 1, 1);
    sub_E97CC(a1);
    if (sub_14E248(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), 0))
    {
      if (sub_160EF0(0xCu, 4))
      {
        v13 = sub_160F34(0xCu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartTileSession", 6060, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
        }

LABEL_32:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    v21 = v12[1];
    if (*(a1 + 1440) <= *v12)
    {
      v22 = *v12;
    }

    else
    {
      v22 = *(a1 + 1440);
    }

    if (*(a1 + 1444) <= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = *(a1 + 1444);
    }

    sub_E9B08(a1);
    if (sub_160EF0(0xCu, 7))
    {
      v24 = sub_160F34(0xCu);
      v25 = sub_175AE4();
      v26 = sub_160F68(7);
      if (v24)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault\n", v25, 12, v26);
        v27 = sub_175AE4();
        v64 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v27, 12, v64);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v25, 12, v26);
      }
    }

    *(a1 + 10752) = 2;
    *(a1 + 1464) = 0;
    *(a1 + 1252) = 1;
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
    if (*(a1 + 1132) != 3)
    {
      *(a1 + 1132) = 3;
      if ((*(a1 + 10844) & 1) == 0)
      {
        *(a1 + 1144) = 0xC0000000CLL;
        *(a1 + 1152) = 12;
      }

      *(a1 + 1112) = 30;
      *(a1 + 1352) = 30;
      *(a1 + 10764) = 1;
    }

    *(a1 + 10184) = 1;
    *(a1 + 10176) = 2;
    *(a1 + 14196) = 1;
    *(a1 + 12064) = 6;
    *(a1 + 1448) |= 0x10000000uLL;
    v33 = *(a1 + 1336);
    *(a1 + 1120) |= 0x200000000uLL;
    *(a1 + 1356) |= 2u;
    *(a1 + 1336) = v33 & 0xFEFFFFBF | 0x1000000;
    *(a1 + 1096) = 0;
    sub_FA1D4(a1);
    *(a1 + 10522) = 0;
    *(a1 + 1240) &= ~0x100u;
    *(a1 + 10855) = 0;
    if (sub_160EF0(0xCu, 7))
    {
      v34 = sub_160F34(0xCu);
      v35 = sub_175AE4();
      v36 = sub_160F68(7);
      if (v34)
      {
        printf("%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault\n", v35, 12, v36);
        v37 = sub_175AE4();
        v65 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v37, 12, v65);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v35, 12, v36);
      }
    }

    if (sub_158978(*(a1 + 68), *(a1 + 64), 62, 1, *a2, a2[1], v22, v23, 0x414C4C20u, 1, v69, &cf))
    {
      if (sub_160EF0(0xCu, 4))
      {
        v38 = sub_160F34(0xCu);
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d\n", v39, 12, v40, "AVE_Session_AVC_StartTileSession", 6078, "err == noErr", a1, *(a1 + 56), 0);
          v39 = sub_175AE4();
          v40 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d", v39, 12, v40, "AVE_Session_AVC_StartTileSession", 6078, "err == noErr", a1, *(a1 + 56), 0);
      }

LABEL_63:
      v28 = 0;
LABEL_64:
      v20 = 4294966296;
      goto LABEL_34;
    }

    if (*(a1 + 16) == 1)
    {
      if (sub_160EF0(0xCu, 7))
      {
        v44 = sub_160F34(0xCu);
        v45 = sub_175AE4();
        v46 = sub_160F68(7);
        if (v44)
        {
          printf("%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK\n", v45, 12, v46);
          v47 = sub_175AE4();
          v66 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v47, 12, v66);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v45, 12, v46);
        }
      }

      v28 = 0;
    }

    else
    {
      if (VTTileEncoderSessionSetTileAttributes())
      {
        if (sub_160EF0(3u, 4))
        {
          v41 = sub_160F34(3u);
          v42 = sub_175AE4();
          v43 = sub_160F68(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.\n", v42, 3, v43, "AVE_Session_AVC_StartTileSession", 6092, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.");
        }

        goto LABEL_63;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        if (sub_160EF0(3u, 4))
        {
          v59 = sub_160F34(3u);
          v60 = sub_175AE4();
          v61 = sub_160F68(4);
          if (v59)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.\n", v60, 3, v61, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
            v62 = sub_175AE4();
            v67 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v62, 3, v67, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v60, 3, v61, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
          }
        }

        v28 = 0;
        v20 = 4294966293;
        goto LABEL_34;
      }

      v28 = Mutable;
      if (*(a1 + 76) >= 12)
      {
        CFDictionaryAddValue(Mutable, kVTTileEncoderRequirement_EncoderSupportsSourcePadding, kCFBooleanTrue);
      }

      if (VTTileEncoderSessionSetTileEncodeRequirements())
      {
        if (sub_160EF0(3u, 4))
        {
          v49 = sub_160F34(3u);
          v50 = sub_175AE4();
          v51 = sub_160F68(4);
          if (v49)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.\n", v50, 3, v51, "AVE_Session_AVC_StartTileSession", 6102, "err == noErr", "AVE_Session_AVC_StartTileSession", 6102);
            v50 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.", v50, 3);
        }

        goto LABEL_64;
      }
    }

    *(a1 + 16464) = 30566;
    if (*(a1 + 16) == 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = 3;
    }

    v53 = sub_16960(*(a1 + 16488), *(a1 + 56), 0, 0, 1, v52);
    if (v53)
    {
      v20 = v53;
      if (sub_160EF0(0xCu, 4))
      {
        v54 = sub_160F34(0xCu);
        v55 = sub_175AE4();
        v56 = sub_160F68(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v55, 12, v56, "AVE_Session_AVC_StartTileSession", 6120, "ret == 0", a1, *(a1 + 56));
          v55 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v55, 12);
      }
    }

    else
    {
      v57 = *(a1 + 12000);
      v58 = sub_175AE4();
      sub_1403FC(v57, 3u, v58);
      v20 = 0;
    }

    goto LABEL_34;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v16 = sub_160F34(0xCu);
    v17 = sub_175AE4();
    v18 = sub_160F68(4);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v17, 12, v18, "AVE_Session_AVC_StartTileSession", 6035, "pINS != __null && pDim != __null", a1, a2);
      v17 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v17, 12);
  }

  v20 = 4294966295;
LABEL_38:
  if (sub_160EF0(0xCu, 6))
  {
    v29 = sub_160F34(0xCu);
    v30 = sub_175AE4();
    v31 = sub_160F68(6);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v30, 12, v31, "AVE_Session_AVC_StartTileSession", a1, a2, v20);
      v30 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v30);
  }

  return v20;
}

uint64_t sub_F7BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  theDict = v10;
  v119 = v9;
  v120 = v11;
  v121 = v8;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  pixelBuffer = v14;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v18 = sub_1502C8();
  if (sub_160EF0(0xCu, 7))
  {
    v19 = sub_160F34(0xCu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v20, 12, v21, "AVE_Session_AVC_ProcessTile", v121, v17, v15, v13, v119, v120, theDict);
      v22 = sub_175AE4();
      v106 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v22, 12, v106, "AVE_Session_AVC_ProcessTile", v121);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v20, 12, v21, "AVE_Session_AVC_ProcessTile", v121);
    }
  }

  if (v120 && v119 && v121 && pixelBuffer)
  {
    v23 = (v121 + 16464);
    if (!*(v121 + 16468))
    {
      v34 = sub_173E4(*(v121 + 16488), *(v121 + 1096));
      if (v34)
      {
        v35 = v34;
        if (sub_160EF0(3u, 4))
        {
          v36 = sub_160F34(3u);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v37, 3, v38, "AVE_Session_AVC_ProcessTile", 6176, "ret == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration");
        }

        goto LABEL_90;
      }

      v58 = *(v121 + 12000);
      v59 = sub_175AE4();
      sub_140028(v58, 5u, v59);
    }

    v24 = sub_175AE4();
    if (*(v121 + 1112) >= 1)
    {
      v25 = *(v121 + 1112);
    }

    else
    {
      v25 = 30;
    }

    sub_172A38(v25, v121 + 16576);
    if (sub_160EF0(0x33u, 7))
    {
      v26 = sub_160F34(0x33u);
      v27 = sub_175AE4();
      v28 = sub_160F68(7);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d\n", v27, 51, v28, "AVE_Session_AVC_ProcessTile", 6188, *(v121 + 56), *(v121 + 16468), *(v121 + 16576), *(v121 + 16584));
        v29 = sub_175AE4();
        v107 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v29, 51, v107);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v27, &stru_20.segname[11], v28);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v121 + 18080) = PixelFormatType;
    if (!*(v121 + 16468))
    {
      v148 = *(v121 + 1440);
      v40 = sub_167CD8(PixelFormatType);
      if (!v40)
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v60 = sub_160F34(3u);
        v55 = sub_175AE4();
        v61 = sub_160F68(4);
        if (v60)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v55, 3, v61, "AVE_Session_AVC_ProcessTile", 6202, "pPixelFmt != __null", v121, *(v121 + 56), *(v121 + 18080));
          v55 = sub_175AE4();
          v61 = sub_160F68(4);
        }

        v116 = *(v121 + 56);
        v117 = *(v121 + 18080);
        v114 = "pPixelFmt != __null";
        v115 = v121;
        v113 = 6202;
        v109 = v61;
        v57 = "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x";
        goto LABEL_74;
      }

      if (*(v18 + 420))
      {
        v41 = (v18 + 105);
      }

      else
      {
        v41 = 0;
      }

      sub_CC848(*(v121 + 18064), v41, *(v121 + 64), *(v121 + 10772), v18[103], v18[104], &v148, 1, *(v40 + 3), *(v40 + 1), *(v121 + 1136));
      sub_CCF60(*(v121 + 18064), -1, pixelBuffer);
    }

    v42 = *v23;
    if (*v23 == 30566)
    {
      if (sub_15F5D0(pixelBuffer))
      {
        v49 = 1;
      }

      else
      {
        v49 = 2;
      }

      *(v121 + 10804) = v49;
      v50 = sub_EFE80(v121);
      if (v50)
      {
        v35 = v50;
        if (sub_160EF0(3u, 4))
        {
          v51 = sub_160F34(3u);
          v52 = sub_175AE4();
          v53 = sub_160F68(4);
          if (v51)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v52, 3, v53, "AVE_Session_AVC_ProcessTile", 6287, "err == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_90;
      }

      sub_EBCB0(v121, pixelBuffer);
      if (sub_EB66C(v121, &pixelBuffer, &v142, &v141, &v140 + 1, &v140, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v66 = sub_160F34(3u);
          v44 = sub_175AE4();
          v45 = sub_160F68(4);
          if (!v66)
          {
LABEL_88:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
            goto LABEL_89;
          }

          v46 = 6297;
LABEL_70:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v44, 3, v45, "AVE_Session_AVC_ProcessTile", v46, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          goto LABEL_88;
        }

LABEL_89:
        v35 = 4294966296;
LABEL_90:
        if (v142 == 1 && pixelBuffer)
        {
          CVPixelBufferRelease(pixelBuffer);
        }

        ++*(v121 + 16468);
        goto LABEL_94;
      }

      sub_EBECC();
      if (sub_EBF6C(v121))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v74 = sub_160F34(3u);
        v63 = sub_175AE4();
        v64 = sub_160F68(4);
        if (v74)
        {
          v65 = 6307;
          goto LABEL_86;
        }

LABEL_142:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        goto LABEL_89;
      }

      v67 = v17;
      sub_EF0EC(v121, pixelBuffer);
      bzero(v154, 0x1058uLL);
      v148 = v121 + 672;
      v149 = v121 + 1440;
      v80 = *(v121 + 12000);
      v150 = v121 + 10752;
      BytePtr = v80;
      v81 = *(v121 + 16480);
      v152 = *(v121 + 18064);
      v155 = v121 + 12008;
      v156 = v121 + 13724;
      v157 = v121 + 14108;
      v153 = v81;
      memcpy(v158, (v121 + 16592), sizeof(v158));
      v159 = v24;
      if (sub_12A644(*(v121 + 120), &v148, v121 + 128, *(v121 + 16), *(v121 + 112), *(v121 + 16472), *(v121 + 16496), v121 + 160, (v121 + 11772), (v121 + 11464)))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v82 = sub_160F34(3u);
        v71 = sub_175AE4();
        v72 = sub_160F68(4);
        if (v82)
        {
          v73 = 6331;
          goto LABEL_103;
        }

LABEL_145:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
        goto LABEL_89;
      }
    }

    else
    {
      if (v42 != 30567)
      {
        if (v42 == 30568)
        {
          if (sub_EB66C(v121, &pixelBuffer, &v142, &v141, &v140 + 1, &v140, 0))
          {
            if (sub_160EF0(3u, 4))
            {
              v43 = sub_160F34(3u);
              v44 = sub_175AE4();
              v45 = sub_160F68(4);
              if (!v43)
              {
                goto LABEL_88;
              }

              v46 = 6221;
              goto LABEL_70;
            }

            goto LABEL_89;
          }

LABEL_105:
          *v23 = 30568;
          bzero(v145, 0x1738uLL);
          v138 = 0u;
          v139 = 0u;
          *&v135[16] = 0u;
          v136 = 0;
          v134 = 0u;
          *v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v131 = 0u;
          v130 = 0u;
          v129 = 0u;
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v127 = 0;
          bzero(&v148, 0x4A40uLL);
          v128[0] = v17;
          v128[1] = pixelBuffer;
          v137 = v145;
          *&v138 = v24;
          v83 = *(v121 + 16576);
          DWORD2(v138) = *(v121 + 16508);
          *&v135[8] = v83;
          v136 = &v148;
          if (*(v121 + 10804) == 2)
          {
            sub_15F768(pixelBuffer, &v122);
            sub_CD91C(*(v121 + 18064), *(v121 + 16508), *(v121 + 16468), &v122);
          }

          *&v135[24] = &v122;
          if ((*(v121 + 1337) & 2) != 0 && *(v121 + 76) >= 4 && !sub_133F6C(theDict, v146))
          {
            memset(v144, 0, sizeof(v144));
            sub_172100(v144, 32, "%llu %d %d", *(v121 + 56), *(v121 + 16468), v146[0]);
            sub_133ED0(v146, 47, 6, v144, 0);
            v147 = v147 & 0xFFFFFDFF | ((v146[0] > 0) << 9);
          }

          v84 = CMGetAttachment(pixelBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
          if (v84)
          {
            sub_1C324(*(v121 + 16488), *(v121 + 16468), v84);
          }

          sub_207A4(*(v121 + 16488), *(v121 + 16468));
          sub_20464(*(v121 + 16488), *(v121 + 16468), *(v121 + 56));
          sub_1D808(*(v121 + 16488), *(v121 + 16468), *&v123);
          sub_1DC50(*(v121 + 16488), *(v121 + 16468), *&v122);
          sub_1CE6C(*(v121 + 16488), *(v121 + 16468), SDWORD1(v126));
          sub_1F124(*(v121 + 16488), *(v121 + 16468), v119[2], *v119);
          if (sub_160EF0(0xCu, 7))
          {
            v85 = sub_160F34(0xCu);
            v86 = sub_175AE4();
            v87 = sub_160F68(7);
            if (v85)
            {
              printf("%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData\n", v86, 12, v87);
              v88 = sub_175AE4();
              v111 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v88, 12, v111);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v86, 12, v87);
            }
          }

          v158[530] = *(v121 + 10204);
          LODWORD(v152) = 0;
          BytePtr = 0;
          if (theDict)
          {
            Value = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_UserQpMap);
            v147 &= ~0x10000u;
            if (*(v121 + 1338))
            {
              v90 = Value;
              if (Value)
              {
                LODWORD(v152) = CFDataGetLength(Value);
                BytePtr = CFDataGetBytePtr(v90);
                v147 |= 0x10000u;
              }
            }
          }

          if (sub_160EF0(0xCu, 7))
          {
            v91 = sub_160F34(0xCu);
            v92 = sub_175AE4();
            v93 = sub_160F68(7);
            if (v91)
            {
              printf("%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData\n", v92, 12, v93);
              v94 = sub_175AE4();
              v112 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v94, 12, v112);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v92, 12, v93);
            }
          }

          if (sub_F90F0(v121, &v148, v13))
          {
            if (sub_160EF0(3u, 4))
            {
              v95 = sub_160F34(3u);
              v96 = sub_175AE4();
              v97 = sub_160F68(4);
              if (v95)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.\n", v96, 3, v97, "AVE_Session_AVC_ProcessTile", 6433, "err == noErr");
                sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.");
            }
          }

          else
          {
            if (v141)
            {
              v98 = pixelBuffer;
            }

            else
            {
              v98 = 0;
            }

            *(&v131 + 1) = v98;
            v99 = sub_12D95C(*(v121 + 120), v128);
            v35 = v99;
            if (!v99)
            {
              goto LABEL_90;
            }

            if (v99 == -536870173)
            {
              if (sub_160EF0(0x10u, 5))
              {
                v100 = sub_160F34(0x10u);
                v101 = sub_175AE4();
                v102 = sub_160F68(5);
                if (v100)
                {
                  printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v101, 16, v102);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
              }
            }

            else if (sub_160EF0(3u, 4))
            {
              v103 = sub_160F34(3u);
              v104 = sub_175AE4();
              v105 = sub_160F68(4);
              if (v103)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v104, 3, v105, "AVE_Session_AVC_ProcessTile", 6456, "err == noErr");
                sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
            }
          }

          goto LABEL_89;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v54 = sub_160F34(3u);
        v55 = sub_175AE4();
        v56 = sub_160F68(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v55, 3, v56, "AVE_Session_AVC_ProcessTile", 6339, "false", *v23);
          v55 = sub_175AE4();
          v56 = sub_160F68(4);
          v114 = "false";
          v115 = *v23;
          v113 = 6339;
        }

        else
        {
          v115 = *v23;
          v113 = 6339;
          v114 = "false";
        }

        v109 = v56;
        v57 = "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.";
LABEL_74:
        syslog(3, v57, v55, 3, v109, "AVE_Session_AVC_ProcessTile", v113, v114, v115, v116, v117);
        goto LABEL_89;
      }

      if (sub_15F5D0(pixelBuffer))
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }

      *(v121 + 10804) = v47;
      sub_EBCB0(v121, pixelBuffer);
      if (sub_EB66C(v121, &pixelBuffer, &v142, &v141, &v140 + 1, &v140, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v48 = sub_160F34(3u);
          v44 = sub_175AE4();
          v45 = sub_160F68(4);
          if (!v48)
          {
            goto LABEL_88;
          }

          v46 = 6238;
          goto LABEL_70;
        }

        goto LABEL_89;
      }

      sub_EBECC();
      if (sub_EBF6C(v121))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v62 = sub_160F34(3u);
        v63 = sub_175AE4();
        v64 = sub_160F68(4);
        if (v62)
        {
          v65 = 6248;
LABEL_86:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v63, 3, v64, "AVE_Session_AVC_ProcessTile", v65, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          goto LABEL_142;
        }

        goto LABEL_142;
      }

      v67 = v17;
      sub_EF0EC(v121, pixelBuffer);
      bzero(v154, 0x1058uLL);
      v148 = v121 + 672;
      v149 = v121 + 1440;
      v68 = *(v121 + 12000);
      v150 = v121 + 10752;
      BytePtr = v68;
      v69 = *(v121 + 16480);
      v152 = *(v121 + 18064);
      v155 = v121 + 12008;
      v156 = v121 + 13724;
      v157 = v121 + 14108;
      v153 = v69;
      memcpy(v158, (v121 + 16592), sizeof(v158));
      v159 = v24;
      if (sub_12A644(*(v121 + 120), &v148, v121 + 128, *(v121 + 16), *(v121 + 112), *(v121 + 16472), *(v121 + 16496), v121 + 160, (v121 + 11772), (v121 + 11464)))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_89;
        }

        v70 = sub_160F34(3u);
        v71 = sub_175AE4();
        v72 = sub_160F68(4);
        if (v70)
        {
          v73 = 6272;
LABEL_103:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v71, 3, v72, "AVE_Session_AVC_ProcessTile", v73, "err == noErr");
          sub_175AE4();
          v17 = v67;
          sub_160F68(4);
          goto LABEL_145;
        }

        goto LABEL_145;
      }
    }

    v17 = v67;
    goto LABEL_105;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v30 = sub_160F34(0xCu);
    v31 = sub_175AE4();
    v32 = sub_160F68(4);
    if (v30)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v31, 12, v32, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v121, v17, pixelBuffer, v13, v119, v120, theDict);
      v33 = sub_175AE4();
      v108 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v33, 12, v108, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v121);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v31, 12, v32, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v121);
    }
  }

  v35 = 4294966295;
LABEL_94:
  if (sub_160EF0(0xCu, 7))
  {
    v75 = sub_160F34(0xCu);
    v76 = sub_175AE4();
    v77 = sub_160F68(7);
    if (v75)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v76, 12, v77, "AVE_Session_AVC_ProcessTile", v121, v17, pixelBuffer, v13, v119, v120, theDict, v35);
      v78 = sub_175AE4();
      v110 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v78, 12, v110, "AVE_Session_AVC_ProcessTile", v121, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v76, 12, v77, "AVE_Session_AVC_ProcessTile", v121, v17);
    }
  }

  return v35;
}

uint64_t sub_F90F0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a3;
  if (*a3 != ((*a3 + 63) & 0xFFFFFFC0))
  {
    if (sub_160EF0(3u, 4))
    {
      v8 = sub_160F34(3u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned\n", v9, 3, v10, "AVE_GetTileInfo", 5876, "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))", *a3);
        v9 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned", v9);
    }

    return 4294966296;
  }

  v5 = a3[1];
  if (v5 != ((v5 + 15) & 0xFFFFFFF0))
  {
    if (sub_160EF0(3u, 4))
    {
      v11 = sub_160F34(3u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned\n", v12, 3, v13, "AVE_GetTileInfo", 5879, "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))", a3[1]);
        v12 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned", v12);
    }

    return 4294966296;
  }

  *(a2 + 552) = v4;
  *(a2 + 556) = v5;
  if (*(a1 + 10204) == 1)
  {
    result = 0;
    *(a2 + 544) = 0;
    return result;
  }

  if (*(a1 + 10171) != 1)
  {
    return 4294966296;
  }

  v14 = a3[3];
  v15 = a3[2] + v4;
  v16 = v14 + v5;
  if (*(a1 + 76) >= 12)
  {
    v17 = *(a1 + 10868);
    if (*(a1 + 10855) == 1)
    {
      if (v15 >= v17)
      {
        v15 = *(a1 + 10868);
      }

      *(a2 + 560) = v15;
      v18 = *(a1 + 10872);
      if (v16 >= v18)
      {
        v16 = *(a1 + 10872);
      }

      *(a2 + 564) = v16;
      v15 = v17;
      v16 = v18;
    }

    else
    {
      if (v15 <= v17)
      {
        v19 = a3[2];
      }

      else
      {
        v19 = v17 - v4;
      }

      *(a2 + 560) = v19;
      v15 = v19 + v4;
      v20 = *(a1 + 10872);
      if (v16 <= v20)
      {
        v21 = v14;
      }

      else
      {
        v21 = v20 - v5;
      }

      *(a2 + 564) = v21;
      v16 = v21 + v5;
    }
  }

  if (v15 > *(a1 + 10864))
  {
    if (sub_160EF0(3u, 4))
    {
      v22 = sub_160F34(3u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v23, 3, v24, "AVE_GetTileInfo", 5927, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], *(a1 + 10864));
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v32 = a3[2];
        v33 = *(a1 + 10864);
        v30 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
        v31 = *a3;
        v29 = 5927;
      }

      else
      {
        v32 = a3[2];
        v33 = *(a1 + 10864);
        v31 = *a3;
        v29 = 5927;
        v30 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
      }

      v28 = v24;
      v25 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
LABEL_44:
      syslog(3, v25, v23, 3, v28, "AVE_GetTileInfo", v29, v30, v31, v32, v33);
      return 4294966296;
    }

    return 4294966296;
  }

  if (v16 > *(a1 + 10872))
  {
    if (sub_160EF0(3u, 4))
    {
      v26 = sub_160F34(3u);
      v23 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)\n", v23, 3, v27, "AVE_GetTileInfo", 5932, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], *(a1 + 10872));
        v23 = sub_175AE4();
        v27 = sub_160F68(4);
        v32 = a3[3];
        v33 = *(a1 + 10872);
        v30 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        v31 = a3[1];
        v29 = 5932;
      }

      else
      {
        v32 = a3[3];
        v33 = *(a1 + 10872);
        v31 = a3[1];
        v29 = 5932;
        v30 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
      }

      v28 = v27;
      v25 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)";
      goto LABEL_44;
    }

    return 4294966296;
  }

  result = 0;
  *(a2 + 544) = v4;
  *(a2 + 548) = v5;
  return result;
}

uint64_t sub_F959C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16456);
  v5 = (a1 + 760);
  v6 = sub_175AE4();
  if (sub_160EF0(0xCu, 6))
  {
    v7 = sub_160F34(0xCu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%llx\n", v8, 12, v9, "AVE_Session_AVC_Create", a1, a2);
      v10 = sub_175AE4();
      v43 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v10, 12, v43, "AVE_Session_AVC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v8, 12, v9, "AVE_Session_AVC_Create", a1, a2);
    }
  }

  v11 = sub_1502C8();
  *(a1 + 64) = 1;
  *v4 = 2;
  *(a1 + 1256) = -1;
  *(a1 + 10556) = 0x100000001;
  *(a1 + 10772) = 1;
  *(a1 + 776) = 1;
  *&v12 = 0x100000001;
  *(&v12 + 1) = 0x100000001;
  *v5 = v12;
  *(a1 + 712) = v11[103];
  v13 = sub_1289FC(1, 1, (a1 + 120));
  if (v13)
  {
    v14 = v13;
    if (sub_160EF0(0xCu, 4))
    {
      v15 = sub_160F34(0xCu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d\n", v16, 12, v17, "AVE_Session_AVC_Create", 6526, "ret == 0", a1, 0, v14);
        v18 = sub_175AE4();
        v44 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d", v18, 12, v44);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d", v16, 12, v17);
      }
    }

    v19 = 0;
  }

  else
  {
    *(a1 + 68) = sub_129100(*(a1 + 120));
    *(a1 + 72) = sub_12910C(*(a1 + 120));
    *(a1 + 56) = sub_129118(*(a1 + 120));
    *(a1 + 76) = *(sub_16FD90(*(a1 + 68)) + 1);
    v19 = *(a1 + 56);
    sub_14DE24((a1 + 16592), v19);
    sub_13EF48(*(a1 + 56), v11[403], (a1 + 12000));
    sub_140028(*(a1 + 12000), 0, v6);
    sub_CBCA0(*(a1 + 56), (a1 + 18064));
    v4[2] = 30565;
    v20 = sub_E814C(a1);
    if (v20)
    {
      v14 = v20;
      if (sub_160EF0(0xCu, 4))
      {
        v21 = sub_160F34(0xCu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d\n", v22, 12, v23, "AVE_Session_AVC_Create", 6553, "ret == 0", a1, v19, v14);
          v24 = sub_175AE4();
          v45 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v24, 12, v45);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v22, 12, v23);
        }
      }
    }

    else
    {
      v27 = operator new(0x50uLL, &std::nothrow);
      if (v27)
      {
        v29 = v27;
        sub_16600(v27, v28);
        *(a1 + 16488) = v29;
        v30 = *(a1 + 12000);
        v31 = sub_175AE4();
        sub_1403FC(v30, 0, v31);
        v14 = 0;
        v26 = 1;
        goto LABEL_20;
      }

      *(a1 + 16488) = 0;
      if (sub_160EF0(0xCu, 4))
      {
        v40 = sub_160F34(0xCu);
        v41 = sub_175AE4();
        v42 = sub_160F68(4);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to create SEI instance %p %llu\n", v41, 12, v42, "AVE_Session_AVC_Create", 6558, "pINS->pcSEI != __null", a1, *(a1 + 56));
          v41 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create SEI instance %p %llu", v41, 12);
      }

      v14 = 4294966296;
    }
  }

  v25 = *(a1 + 16488);
  if (v25)
  {
    sub_16934(v25);
    operator delete();
  }

  v26 = 0;
LABEL_20:
  v32 = sub_175AE4() - v6;
  if (v32 >= 1000000)
  {
    v33 = 5;
  }

  else
  {
    v33 = 6;
  }

  if (v26)
  {
    v34 = v33;
  }

  else
  {
    v34 = 4;
  }

  if (sub_160EF0(0xCu, v34))
  {
    v35 = sub_160F34(0xCu);
    v36 = sub_175AE4();
    v37 = sub_160F68(v34);
    if (v35)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d\n", v36, 12, v37, "AVE_Session_AVC_Create", a1, a2, v19, v32, v14);
      v38 = sub_175AE4();
      v46 = sub_160F68(v34);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v38, 12, v46);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v36, 12, v37);
    }
  }

  return v14;
}

void sub_F9BA8(int32x2_t *a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 12, v4, "AVE_EnableH264FWRCSettings", a1);
      v5 = sub_175AE4();
      v37 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v37, "AVE_EnableH264FWRCSettings", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 12, v4, "AVE_EnableH264FWRCSettings", a1);
    }
  }

  if (sub_160EF0(0x10u, 8))
  {
    v6 = sub_160F34(0x10u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d\n", v7, 16, v8, "AVE_EnableH264FWRCSettings", 1680, a1[1361].i32[1], a1[86].i32[1], a1[1348].u8[0], a1[141].i32[1]);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d", v7, 16);
  }

  if ((a1[140].i8[3] & 0x80) == 0 && a1[141].i32[1] == 8)
  {
    a1[1348].i8[0] = 0;
  }

  if (a1[1361].i32[1])
  {
    if ((a1[1348].i8[0] & 1) == 0)
    {
      a1[141].i32[1] = 1;
    }

    a1[1345].i8[4] = 1;
    goto LABEL_58;
  }

  if (a1[86].i32[1] == 1)
  {
    if ((a1[1348].i8[0] & 1) == 0)
    {
      a1[141].i32[1] = 1;
    }

    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
    a1[86].i32[0] &= ~2u;
    if (sub_160EF0(0xCu, 7))
    {
      v9 = sub_160F34(0xCu);
      v10 = sub_175AE4();
      v11 = sub_160F68(7);
      if (v9)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload\n", v10, 12, v11);
        v12 = sub_175AE4();
        v38 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload", v12, 12, v38);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload", v10, 12, v11);
      }
    }

    v13 = vshr_n_u32(vadd_s32(a1[180], 0xF0000000FLL), 4uLL);
    v14 = a1[139].i32[0] * v13.i32[1] * v13.i32[0];
    if (v14 >= 0x13C681)
    {
      a1[86].i32[0] |= 0x100u;
    }

    v15 = (v13.i32[0] + 31) & 0x1FFFFFE0;
    v16 = a1[167].i32[0];
    if ((v16 & 0x40) != 0)
    {
      a1[86].i32[0] = a1[86].i32[0] & 0xFFFFFEFF | ((v14 > 0xAFC80) << 8);
    }

    if (v15 > 0x80 || v15 * v13.i32[1] >= 0x2D01)
    {
      v17 = (((v13.i32[0] + 1) >> 1) + 31) & 0x1FFFFFE0;
      if (v17 > 0x80 || (v17 * ((v13.i32[1] + 1) >> 1) <= 0x2D00 ? (v18 = (v16 & 0x40) == 0) : (v18 = 1), v18))
      {
        v16 &= ~0x40u;
      }

      else
      {
        a1[86].i32[0] |= 0x100u;
      }

      a1[167].i32[0] = v16;
    }
  }

  else if ((a1[1348].i8[0] & 1) == 0)
  {
    a1[141].i32[1] = 1;
    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v19 = sub_160F34(0xCu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP\n", v20, 12, v21);
      v22 = sub_175AE4();
      v39 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP", v22, 12, v39);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP", v20, 12, v21);
    }
  }

  v23 = a1[180].i32[1] + 15;
  v24 = a1[180].i32[0] + 15;
  v25 = ((v24 & 0xFFFFFF0) * (v23 & 0xFFFFFFF0));
  v26 = (v24 >> 4) * (v23 >> 4);
  v27 = a1[139].i32[0];
  v28 = v27 * v25;
  if (v26 < 0xE11)
  {
    if (v27 <= 60 && v28 * 0.26 > a1[142].i32[0])
    {
      a1[167].i32[0] &= ~0x10u;
    }

    if (sub_160EF0(0xDCu, 7))
    {
      v30 = sub_160F34(0xDCu);
      v31 = sub_175AE4();
      v32 = sub_160F68(7);
      v29 = v28 * 0.26;
      goto LABEL_54;
    }
  }

  else
  {
    v29 = v28 * 0.17;
    if (v28 * 0.17 > a1[142].i32[0])
    {
      a1[167].i32[0] &= ~0x10u;
    }

    if (sub_160EF0(0xDCu, 7))
    {
      v30 = sub_160F34(0xDCu);
      v31 = sub_175AE4();
      v32 = sub_160F68(7);
LABEL_54:
      if (v30)
      {
        printf("%lld %d AVE %s: BPP: BPP %f, BPP Scaled %f, iBitrate %d, AVE_QPMOD_FEATURE_FLAT_AREA %d\n", v31, 220, v32, v28, v29, a1[142].i32[0], a1[167].i32[0] & 0x10);
        sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: BPP: BPP %f, BPP Scaled %f, iBitrate %d, AVE_QPMOD_FEATURE_FLAT_AREA %d");
    }
  }

LABEL_58:
  if (sub_160EF0(0xCu, 7))
  {
    v33 = sub_160F34(0xCu);
    v34 = sub_175AE4();
    v35 = sub_160F68(7);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p\n", v34, 12, v35, "AVE_EnableH264FWRCSettings", a1);
      v36 = sub_175AE4();
      v40 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p", v36, 12, v40, "AVE_EnableH264FWRCSettings", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p", v34, 12, v35, "AVE_EnableH264FWRCSettings", a1);
    }
  }
}

uint64_t sub_FA1D4(int32x2_t *a1)
{
  v2 = sub_1502C8();
  v3 = v2[221];
  if (v3 <= 3)
  {
    a1[157].i32[0] = v3;
  }

  v4 = v2[220];
  if ((v4 & 0x80000000) == 0)
  {
    a1[156].i32[1] = v4;
  }

  v5 = v2[223];
  if (v5 >= 1)
  {
    a1[161].i32[0] = v5;
  }

  v6 = v2[232];
  if (v6 >= 1)
  {
    a1[163].i32[1] = v6;
  }

  v7 = v2[233];
  if (v7 >= 1)
  {
    a1[164].i32[0] = v7;
  }

  v8 = a1[1501].i32[0];
  if (sub_160EF0(0x10u, 6))
  {
    v9 = sub_160F34(0x10u);
    v10 = sub_175AE4();
    v11 = sub_160F68(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", v10, 16, v11, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
      v12 = sub_175AE4();
      v80 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v12, 16, v80, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v10, 16, v11, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
    }
  }

  v13 = a1 + 2057;
  sub_F9BA8(a1);
  v14 = a1[167].i32[0];
  if ((v14 & 0x40) != 0)
  {
    v15 = a1[180].i32[0] >> 4;
    v16 = a1[180].i32[1] >> 4;
    v17 = (v15 + 31) & 0x1FFFFFE0;
    if (v17 > 0x80 || v17 * v16 >= 0x2D01)
    {
      v18 = (((v15 + 1) >> 1) + 31) & 0x1FFFFFE0;
      if (v18 > 0x80 || v18 * ((v16 + 1) >> 1) >= 0x2D01)
      {
        a1[167].i32[0] = v14 & 0xFFFFFFBF;
      }
    }
  }

  if (v8 > 7)
  {
    if ((v8 - 8) > 1)
    {
LABEL_25:
      if (sub_160EF0(3u, 4))
      {
        v19 = sub_160F34(3u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: profile not understood\n", v20, 3, v21, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3632, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: profile not understood");
      }

      goto LABEL_109;
    }

LABEL_29:
    if (v13->i32[0] == 2)
    {
      goto LABEL_43;
    }

    if (sub_160EF0(0x1Eu, 6))
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(6);
      v25 = a1[1716].i32[1];
      if (v22)
      {
        printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v23, 30, v24, v13->i32[0], v25);
        v26 = sub_175AE4();
        v27 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v26, 30, v27, v13->i32[0], a1[1716].i32[1]);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v23, 30, v24, v13->i32[0], v25);
      }
    }

    if (v13->i32[0])
    {
LABEL_43:
      a1[1716].i32[1] = 1;
    }

    else
    {
      a1[1716].i32[1] = 0;
    }

    a1[1725].i8[7] = 1;
    a1[1272].i32[0] = 2;
    if (a1[157].i32[0] < 1)
    {
      a1[157] = 0x100000000;
      a1[161].i32[0] = 1;
      a1[155].i32[0] &= ~0x400u;
      if (sub_160EF0(0x1Eu, 6))
      {
        v43 = sub_160F34(0x1Eu);
        v44 = sub_175AE4();
        v45 = sub_160F68(6);
        if (v43)
        {
          printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", v44, 30, v45);
          sub_175AE4();
          sub_160F68(6);
        }

        syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
      }
    }

    else
    {
      if (a1[141].i32[1] != 20)
      {
        a1[1345].i8[4] = 1;
      }

      if (sub_160EF0(0x1Eu, 6))
      {
        v40 = sub_160F34(0x1Eu);
        v41 = sub_175AE4();
        v42 = sub_160F68(6);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v41, 30, v42, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3512, a1[157].i32[0], a1[2236].i32[1]);
          v41 = sub_175AE4();
          v42 = sub_160F68(6);
        }

        syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v41, 30, v42, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3512, a1[157].u32[0], a1[2236].u32[1]);
      }
    }

    if (a1[162].i8[0])
    {
      if (sub_160EF0(3u, 4))
      {
        v46 = sub_160F34(3u);
        v47 = sub_175AE4();
        v48 = sub_160F68(4);
        if (!v46)
        {
          goto LABEL_87;
        }

        v49 = 3530;
        goto LABEL_86;
      }

      goto LABEL_109;
    }

    goto LABEL_95;
  }

  if (v8 == 2)
  {
    if (v13->i32[0] != 2)
    {
      if (sub_160EF0(0x1Eu, 6))
      {
        v28 = sub_160F34(0x1Eu);
        v29 = sub_175AE4();
        v30 = sub_160F68(6);
        v31 = a1[1716].i32[1];
        if (v28)
        {
          printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v29, 30, v30, v13->i32[0], v31);
          v32 = sub_175AE4();
          v33 = sub_160F68(6);
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v32, 30, v33, v13->i32[0], a1[1716].i32[1]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v29, 30, v30, v13->i32[0], v31);
        }
      }

      if (v13->i32[0] == 1 && sub_160EF0(0x1Eu, 4))
      {
        v50 = sub_160F34(0x1Eu);
        v51 = sub_175AE4();
        v52 = sub_160F68(4);
        if (v50)
        {
          printf("%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC\n", v51, 30, v52);
          v53 = sub_175AE4();
          v81 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC", v53, 30, v81);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC", v51, 30, v52);
        }
      }
    }

    a1[1716].i32[1] = 0;
    a1[1725].i8[7] = 0;
    a1[1272].i32[0] = 0;
    a1[157] = 0x100000000;
    a1[161].i32[0] = 1;
    a1[155].i32[0] &= ~0x400u;
    if (v13->i32[0] == 1)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v61 = sub_160F34(0x1Eu);
        v62 = sub_175AE4();
        v63 = sub_160F68(4);
        if (v61)
        {
          printf("%lld %d AVE %s: %s:%d %s | profile %d but CABAC is on\n", v62, 30, v63, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3622, "pINS->FIGEntropyMode != EntropyModeCABAC", 2);
          v62 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | profile %d but CABAC is on", v62);
      }

      goto LABEL_109;
    }

    if (a1[162].i8[0])
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v69 = sub_160F34(0x1Eu);
        v70 = sub_175AE4();
        v71 = sub_160F68(4);
        if (v69)
        {
          printf("%lld %d AVE %s: %s:%d %s | profile %d but bWeightedPrediction is on\n", v70, 30, v71, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3625, "(pINS->sSessionCfg.sEnc.sAlgCfg.sRef.iFeature & (1U<<0)) == 0", 2);
          v70 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | profile %d but bWeightedPrediction is on", v70);
      }

      goto LABEL_109;
    }

    goto LABEL_95;
  }

  if (v8 != 4)
  {
    if (v8 != 6)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (v13->i32[0] == 2)
  {
    goto LABEL_69;
  }

  if (sub_160EF0(0x1Eu, 6))
  {
    v34 = sub_160F34(0x1Eu);
    v35 = sub_175AE4();
    v36 = sub_160F68(6);
    v37 = a1[1716].i32[1];
    if (v34)
    {
      printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v35, 30, v36, v13->i32[0], v37);
      v38 = sub_175AE4();
      v39 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v38, 30, v39, v13->i32[0], a1[1716].i32[1]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v35, 30, v36, v13->i32[0], v37);
    }
  }

  if (v13->i32[0])
  {
LABEL_69:
    a1[1716].i32[1] = 1;
  }

  else
  {
    a1[1716].i32[1] = 0;
  }

  a1[1725].i8[7] = 0;
  a1[1272].i32[0] = 0;
  if (a1[157].i32[0] < 1)
  {
    a1[157] = 0x100000000;
    a1[161].i32[0] = 1;
    a1[155].i32[0] &= ~0x400u;
    if (sub_160EF0(0x1Eu, 6))
    {
      v57 = sub_160F34(0x1Eu);
      v58 = sub_175AE4();
      v59 = sub_160F68(6);
      if (v57)
      {
        printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", v58, 30, v59);
        sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
    }
  }

  else
  {
    if (a1[141].i32[1] != 20)
    {
      a1[1345].i8[4] = 1;
    }

    if (sub_160EF0(0x1Eu, 6))
    {
      v54 = sub_160F34(0x1Eu);
      v55 = sub_175AE4();
      v56 = sub_160F68(6);
      if (v54)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v55, 30, v56, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3580, a1[157].i32[0], a1[2236].i32[1]);
        v55 = sub_175AE4();
        v56 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v55, 30, v56, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3580, a1[157].u32[0], a1[2236].u32[1]);
    }
  }

  if (a1[162].i8[0])
  {
    if (sub_160EF0(3u, 4))
    {
      v60 = sub_160F34(3u);
      v47 = sub_175AE4();
      v48 = sub_160F68(4);
      if (!v60)
      {
LABEL_87:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: bWeightedPredictionis true and usage is default. not yet supported...");
        goto LABEL_109;
      }

      v49 = 3597;
LABEL_86:
      printf("%lld %d AVE %s: %s:%d %s | FIG: bWeightedPredictionis true and usage is default. not yet supported...\n", v47, 3, v48, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", v49, "false");
      sub_175AE4();
      sub_160F68(4);
      goto LABEL_87;
    }

LABEL_109:
    v66 = 0;
    v68 = -12902;
    goto LABEL_110;
  }

LABEL_95:
  if (a1[141].i32[1] == 3)
  {
    v64 = 0;
    v65 = 0;
    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
    if (a1[1344].i32[0] == 2)
    {
      v65 = a1[167].i32[0] & 0xFFFF7FAF;
      v64 = a1[169].i32[0] & 0x1E;
    }

    a1[167].i32[0] = v65;
    a1[169].i32[0] = v64;
  }

  v66 = 1;
  if (a1[1507].i8[4] == 1 && (a1[141].i32[1] = 3, a1[1345].i8[4] = 1, a1[183].i32[0] = 0, a1[169].i32[0] = 0, a1[155].i32[0] &= ~0x400u, v67 = -6 * a1[1506].i32[1], a1[168].i32[1] = v67, a1[168].i32[0] = v67, a1[154].i32[1] = v67, a1[154].i32[0] = v67, a1[144].i32[0] = v67, a1[143].i32[1] = v67, a1[143].i32[0] = v67, a1[1501].i32[0] = 9, a1[1504].i32[1] = 17, a1[1716].i32[1] = 0, a1[167].i32[0] = 0, a1[1325].i32[1] = 0, a1[9].i32[1] >= 30))
  {
    v68 = 0;
    a1[1271].i8[2] = 1;
  }

  else
  {
    v68 = 0;
  }

LABEL_110:
  if (sub_160EF0(0x10u, 6))
  {
    v72 = sub_160F34(0x10u);
    v73 = sub_175AE4();
    v74 = sub_160F68(6);
    if (v72)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v73, 16, v74, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8, v68);
      v73 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v73);
  }

  if (v66)
  {
    return 0;
  }

  if (sub_160EF0(3u, 4))
  {
    v76 = sub_160F34(3u);
    v77 = sub_175AE4();
    v78 = sub_160F68(4);
    if (v76)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed\n", v77, 3, v78, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
      v79 = sub_175AE4();
      v82 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed", v79, 3, v82, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed", v77, 3, v78, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
    }
  }

  return 4294954394;
}

void H264H9EncoderRegister()
{
  v0 = sub_15B650();
  if (!v0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v2 = Mutable;
      CFDictionaryAddValue(Mutable, kVTVideoEncoder_IsHardwareAccelerated, kCFBooleanTrue);
      CFDictionaryAddValue(v2, kVTVideoEncoder_IsParavirtualizationAware, kCFBooleanTrue);
      CFDictionaryAddValue(v2, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.h264");
      v0 = VTRegisterVideoEncoderWithInfo();
      CFRelease(v2);
    }

    else
    {
      v0 = 0;
    }
  }

  if (sub_160EF0(2u, 5))
  {
    v3 = sub_160F34(2u);
    v4 = sub_175AE4();
    v5 = sub_160F68(5);
    if (v3)
    {
      printf("%lld %d AVE %s: Register AVC video encoder of AVE %d\n", v4, 2, v5, v0);
      v6 = sub_175AE4();
      v7 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: Register AVC video encoder of AVE %d", v6, 2, v7, v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Register AVC video encoder of AVE %d", v4, 2, v5, v0);
    }
  }
}