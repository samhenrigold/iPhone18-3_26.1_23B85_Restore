uint64_t sub_124F68(const void *a1, int a2, unsigned int a3, unsigned int *a4)
{
  if (a1 && a2 >= 1 && a4)
  {
    v7 = *a4;
    if (v7 < 0x4A)
    {
      result = 0;
      v9 = &a4[8 * v7];
      v9[2] = a3;
      *(v9 + 2) = a1;
      v9[6] = a2;
      *a4 = v7 + 1;
      return result;
    }

    if (sub_160EF0(0x2Eu, 4))
    {
      v13 = sub_160F34(0x2Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d\n", v14, 46, v15, "AVE_EncFrameInfo_AddBuf", 2098, "0 <= psEncFrameInfo->iNum && psEncFrameInfo->iNum < (2 * ((32) < (256) ? (32) : (256)) + 10)", a1, a2, a4, *a4);
        v16 = sub_175AE4();
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", v16, 46, v18, "AVE_EncFrameInfo_AddBuf");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", v14, 46, v15, "AVE_EncFrameInfo_AddBuf");
      }
    }
  }

  else if (sub_160EF0(0x2Eu, 4))
  {
    v10 = sub_160F34(0x2Eu);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v11, 46, v12, "AVE_EncFrameInfo_AddBuf", 2093, "(pBuf != __null) && (iSize > 0) && (psEncFrameInfo != __null)", a1, a2, a4);
      v11 = sub_175AE4();
      v17 = sub_160F68(4);
    }

    else
    {
      v17 = v12;
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v11, 46, v17);
  }

  return 4294966295;
}

uint64_t sub_1251A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  if (a1)
  {
    sub_1252F8(a1, a2, a3, a4, a5);
    return 0;
  }

  else
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v10 = sub_160F34(0x2Eu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d\n", v11, 46, v12, "Recv", 3528, "pCtx != __null", 0, v8, v7, v6, v5);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", v13, 46, v14);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", v11, 46, v12);
      }
    }

    return 4294966295;
  }
}

void sub_1252F8(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = (a1 + 137804);
  if (sub_160EF0(0x2Eu, 8))
  {
    v10 = sub_160F34(0x2Eu);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d\n", v11, 46, v12, "FrameDone", a2, a3, a4, a5);
      v11 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d", v11);
  }

  if (!*(a1 + 29328) || !v9[1])
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v17 = sub_160F34(0x2Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d\n", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(a1 + 29328), v9[1]);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(a1 + 29328), v9[1]);
    }

    goto LABEL_348;
  }

  if (a2 != -1023)
  {
    if (!a2)
    {
      goto LABEL_22;
    }

    if (a2 != -1004)
    {
      if (sub_160EF0(3u, 4))
      {
        v20 = sub_160F34(3u);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.\n", v21, 3, v22, "FrameDone", 3568, "result == 0");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.");
      }

      goto LABEL_348;
    }
  }

  if (sub_160EF0(0x2Eu, 4))
  {
    v13 = sub_160F34(0x2Eu);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources\n", v14, 46, v15);
      v16 = sub_175AE4();
      v331 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v16, 46, v331);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v14, 46, v15);
    }
  }

LABEL_22:
  v363 = (a1 + 137792);
  if (sub_160EF0(0x2Eu, 7))
  {
    v23 = a5;
    v24 = sub_160F34(0x2Eu);
    v25 = sub_175AE4();
    v26 = sub_160F68(7);
    if (v24)
    {
      printf("%lld %d AVE %s: \nH264FrameRec: counter received = %d\n", v25, 46, v26, a4);
      v27 = sub_175AE4();
      v332 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v27, 46, v332, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v25, 46, v26, a4);
    }

    a5 = v23;
  }

  *&v368 = 0;
  sub_E11A4(*(a1 + 29328), a4, &v368);
  v28 = v368;
  kdebug_trace();
  v367 = v28;
  v29 = *(v28 + 4);
  v364 = a5;
  v365 = a4;
  if (v29 <= 6)
  {
    if (v29 == 5)
    {
      if (a2 != -1023 && a2 != -1004)
      {
        v357 = a2;
        if (sub_160EF0(0x2Eu, 7))
        {
          v59 = sub_160F34(0x2Eu);
          v60 = sub_175AE4();
          v61 = sub_160F68(7);
          if (v59)
          {
            printf("%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d\n", v60, 46, v61, "FrameDone", 3788, a4, *(v28 + 40));
            v60 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d", v60);
        }

        v356 = v9;
        v215 = 0;
        v216 = v28 + 2620;
        v217 = (a1 + 26712);
        do
        {
          v218 = *(v216 + 4 * v215);
          if (v218)
          {
            v219 = IOSurfaceLookup(v218);
            *v217 = v219;
            IOSurfaceLock(v219, 0, 0);
            *(v217 - 30) = IOSurfaceGetBaseAddress(*v217);
            *(a1 + 26952 + 4 * v215) = IOSurfaceGetAllocSize(*v217);
            if (sub_160EF0(0x2Eu, 7))
            {
              v220 = sub_160F34(0x2Eu);
              v221 = sub_175AE4();
              v222 = sub_160F68(7);
              v223 = *(v216 + 4 * v215);
              v224 = *(v217 - 30);
              if (v220)
              {
                printf("%lld %d AVE %s: %s:%d CodedData %d %d %p %p\n", v221, 46, v222, "FrameDone", 3802, v215, v223, *v217, v224);
                v225 = sub_175AE4();
                v226 = sub_160F68(7);
                syslog(3, "%lld %d AVE %s: %s:%d CodedData %d %d %p %p", v225, 46, v226, "FrameDone", 3802, v215, *(v216 + 4 * v215), *v217, *(v217 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d CodedData %d %d %p %p", v221, 46, v222, "FrameDone", 3802, v215, v223, *v217, v224);
              }
            }
          }

          ++v215;
          ++v217;
        }

        while (v215 != 30);
        v227 = (v367 + 2740);
        v228 = (a1 + 27312);
        v229 = -30;
        do
        {
          if (*v227)
          {
            v230 = IOSurfaceLookup(*v227);
            *v228 = v230;
            IOSurfaceLock(v230, 0, 0);
            *(v228 - 30) = IOSurfaceGetBaseAddress(*v228);
            if (sub_160EF0(0x2Eu, 7))
            {
              v231 = sub_160F34(0x2Eu);
              v232 = sub_175AE4();
              v233 = sub_160F68(7);
              v234 = *v227;
              v235 = *(v228 - 30);
              if (v231)
              {
                printf("%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p\n", v232, 46, v233, "FrameDone", 3818, v229 + 30, v234, *v228, v235);
                v236 = sub_175AE4();
                v237 = sub_160F68(7);
                syslog(3, "%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p", v236, 46, v237, "FrameDone", 3818, v229 + 30, *v227, *v228, *(v228 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p", v232, 46, v233, "FrameDone", 3818, v229 + 30, v234, *v228, v235);
              }
            }
          }

          ++v228;
          ++v227;
          v238 = __CFADD__(v229++, 1);
        }

        while (!v238);
        v239 = (v367 + 2860);
        v240 = (a1 + 27792);
        v241 = -30;
        do
        {
          if (*v239)
          {
            v242 = IOSurfaceLookup(*v239);
            *v240 = v242;
            IOSurfaceLock(v242, 0, 0);
            *(v240 - 30) = IOSurfaceGetBaseAddress(*v240);
            if (sub_160EF0(0x2Eu, 7))
            {
              v243 = sub_160F34(0x2Eu);
              v244 = sub_175AE4();
              v245 = sub_160F68(7);
              v246 = *v239;
              v247 = *(v240 - 30);
              if (v243)
              {
                printf("%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p\n", v244, 46, v245, "FrameDone", 3834, v241 + 30, v246, *v240, v247);
                v248 = sub_175AE4();
                v249 = sub_160F68(7);
                syslog(3, "%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p", v248, 46, v249, "FrameDone", 3834, v241 + 30, *v239, *v240, *(v240 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p", v244, 46, v245, "FrameDone", 3834, v241 + 30, v246, *v240, v247);
              }
            }
          }

          ++v240;
          ++v239;
          v238 = __CFADD__(v241++, 1);
        }

        while (!v238);
        v250 = (v367 + 2980);
        v251 = (a1 + 26032);
        v252 = -30;
        do
        {
          if (*v250)
          {
            v253 = IOSurfaceLookup(*v250);
            *v251 = v253;
            IOSurfaceLock(v253, 0, 0);
            *(v251 - 30) = IOSurfaceGetBaseAddress(*v251);
            if (sub_160EF0(0x2Eu, 7))
            {
              v254 = sub_160F34(0x2Eu);
              v255 = sub_175AE4();
              v256 = sub_160F68(7);
              v257 = *v250;
              v258 = *(v251 - 30);
              if (v254)
              {
                printf("%lld %d AVE %s: %s:%d MBStats %d %d %p %p\n", v255, 46, v256, "FrameDone", 3850, v252 + 30, v257, *v251, v258);
                v259 = sub_175AE4();
                v260 = sub_160F68(7);
                syslog(3, "%lld %d AVE %s: %s:%d MBStats %d %d %p %p", v259, 46, v260, "FrameDone", 3850, v252 + 30, *v250, *v251, *(v251 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d MBStats %d %d %p %p", v255, 46, v256, "FrameDone", 3850, v252 + 30, v257, *v251, v258);
              }
            }
          }

          ++v251;
          ++v250;
          v238 = __CFADD__(v252++, 1);
        }

        while (!v238);
        v261 = 0;
        v262 = v367 + 3100;
        do
        {
          v263 = *(v262 + 4 * v261);
          if (v263)
          {
            *(a1 + 26392 + 4 * v261) = v263;
            if (sub_160EF0(0x2Eu, 7))
            {
              v264 = sub_160F34(0x2Eu);
              v265 = sub_175AE4();
              v266 = sub_160F68(7);
              v267 = *(v262 + 4 * v261);
              if (v264)
              {
                printf("%lld %d AVE %s: %s:%d iaLFSResult %d %d\n", v265, 46, v266, "FrameDone", 3864, v261, v267);
                v268 = sub_175AE4();
                v269 = sub_160F68(7);
                syslog(3, "%lld %d AVE %s: %s:%d iaLFSResult %d %d", v268, 46, v269, "FrameDone", 3864, v261, *(v262 + 4 * v261));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d iaLFSResult %d %d", v265, 46, v266, "FrameDone", 3864, v261, v267);
              }
            }
          }

          ++v261;
        }

        while (v261 != 10);
        v270 = 0;
        v271 = v367 + 3140;
        do
        {
          v272 = *(v271 + 4 * v270);
          if (v272)
          {
            *(a1 + 26432 + 4 * v270) = v272;
            if (sub_160EF0(0x2Eu, 7))
            {
              v273 = sub_160F34(0x2Eu);
              v274 = sub_175AE4();
              v275 = sub_160F68(7);
              v276 = *(v271 + 4 * v270);
              if (v273)
              {
                printf("%lld %d AVE %s: %s:%d iaLRSResult %d %d\n", v274, 46, v275, "FrameDone", 3876, v270, v276);
                v277 = sub_175AE4();
                v278 = sub_160F68(7);
                syslog(3, "%lld %d AVE %s: %s:%d iaLRSResult %d %d", v277, 46, v278, "FrameDone", 3876, v270, *(v271 + 4 * v270));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d iaLRSResult %d %d", v274, 46, v275, "FrameDone", 3876, v270, v276);
              }
            }
          }

          ++v270;
        }

        while (v270 != 10);
        *(a1 + 38940) = *(v367 + 4624);
        v9 = v356;
        a2 = v357;
      }

      sub_E0C68(*(a1 + 29328), v367);
      v362 = -1;
      goto LABEL_104;
    }

    v30 = a2;
    if (v29 == 6)
    {
      v39 = v9;
      if (sub_160EF0(0x2Eu, 7))
      {
        v40 = sub_160F34(0x2Eu);
        v41 = sub_175AE4();
        v42 = sub_160F68(7);
        v43 = *(v9 + 3);
        if (v40)
        {
          printf("%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld \n", v41, 46, v42, *(v28 + 40), v43);
          v44 = sub_175AE4();
          v45 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v44, 46, v45, *(v28 + 40), *(v9 + 3));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v41, 46, v42, *(v28 + 40), v43);
        }
      }

      v86 = (a1 + 26032);
      v87 = 30;
      do
      {
        if (*v86)
        {
          IOSurfaceUnlock(*v86, 0, 0);
          CFRelease(*v86);
          *v86 = 0;
        }

        v88 = v86[85];
        if (v88)
        {
          IOSurfaceUnlock(v88, 0, 0);
          CFRelease(v86[85]);
          v86[85] = 0;
        }

        v89 = v86[160];
        if (v89)
        {
          IOSurfaceUnlock(v89, 0, 0);
          CFRelease(v86[160]);
          v86[160] = 0;
        }

        v90 = v86[220];
        if (v90)
        {
          IOSurfaceUnlock(v90, 0, 0);
          CFRelease(v86[220]);
          v86[220] = 0;
        }

        ++v86;
        --v87;
      }

      while (v87);
      sub_E0C68(*(a1 + 29328), v367);
      v362 = -1;
      v9 = v39;
      goto LABEL_103;
    }

    goto LABEL_51;
  }

  v30 = a2;
  v31 = (a1 + 25784);
  if (v29 == 10)
  {
    if (sub_160EF0(0x2Eu, 7))
    {
      v46 = sub_160F34(0x2Eu);
      v47 = sub_175AE4();
      v48 = sub_160F68(7);
      v49 = *(v28 + 40);
      if (v46)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d\n", v47, 46, v48, v49);
        v50 = sub_175AE4();
        v333 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v50, 46, v333, *(v28 + 40));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v47, 46, v48, v49);
      }
    }

    if (*v363)
    {
      sub_164AF8((a1 + 16), *v363, 0);
    }

    *v31 = 0;
    if (*(a1 + 29360))
    {
      FigFormatDescriptionRelease();
      *(a1 + 29360) = 0;
    }

    goto LABEL_62;
  }

  if (v29 == 8)
  {
    if (sub_160EF0(0x2Eu, 7))
    {
      v51 = v30;
      v52 = sub_160F34(0x2Eu);
      v53 = sub_175AE4();
      v54 = sub_160F68(7);
      v55 = *(v28 + 40);
      v56 = *(v9 + 3);
      if (v52)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld\n", v53, 46, v54, v55, v365, v56);
        v57 = sub_175AE4();
        v58 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v57, 46, v58, *(v28 + 40), v365, *(v9 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v53, 46, v54, v55, v365, v56);
      }

      v30 = v51;
    }

LABEL_62:
    sub_E0C68(*(a1 + 29328), v28);
LABEL_63:
    v362 = -1;
LABEL_103:
    a2 = v30;
    goto LABEL_104;
  }

  if (v29 != 7)
  {
LABEL_51:
    if (sub_160EF0(0x2Eu, 4))
    {
      v62 = sub_160F34(0x2Eu);
      v63 = sub_175AE4();
      v64 = sub_160F68(4);
      v65 = *(v28 + 4);
      if (v62)
      {
        printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v63, 46, v64, v65);
        v66 = sub_175AE4();
        v334 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v66, 46, v334, *(v28 + 4));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v63, 46, v64, v65);
      }
    }

    goto LABEL_63;
  }

  v360 = a3;
  v32 = a1 + 38944;
  *(v28 + 33080) = sub_175AE4();
  if (sub_160EF0(0x2Eu, 7))
  {
    v33 = a5;
    v34 = a4;
    v35 = v30;
    v36 = sub_160F34(0x2Eu);
    v37 = sub_175AE4();
    v38 = sub_160F68(7);
    if (v36)
    {
      printf("%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d\n", v37, 46, v38, *(v28 + 40), *(v28 + 2456), *(v9 + 3), v34);
      v37 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d", v37);
    v30 = v35;
    LODWORD(a4) = v34;
    a5 = v33;
    v32 = a1 + 38944;
  }

  if (!*(v28 + 40))
  {
    *(a1 + 29320) = *(v28 + 4608);
  }

  if (*(v32 + 308) >= 2u && *(v28 + 44) && *(a1 + 29277) == 1)
  {
    *(v28 + 2456) = 4;
  }

  v67 = *v9;
  if (*v9 == 5)
  {
    v76 = sub_11C71C(a1, v28);
    sub_E0C68(*(a1 + 29328), v28);
    if (v76)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (sub_160EF0(3u, 4))
      {
        v77 = sub_160F34(3u);
        v78 = sub_175AE4();
        v79 = sub_160F68(4);
        if (v77)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.\n", v78, 3, v79, "FrameDone", 3629, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.");
      }

      goto LABEL_344;
    }

LABEL_86:
    v362 = -1;
    a3 = v360;
    goto LABEL_103;
  }

  if (v67 == 4)
  {
    v72 = sub_11DB70(a1, v28);
    sub_E0C68(*(a1 + 29328), v28);
    if (v72)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (sub_160EF0(0x2Eu, 4))
      {
        v73 = sub_160F34(0x2Eu);
        v74 = sub_175AE4();
        v75 = sub_160F68(4);
        if (v73)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done\n", v74, 46, v75, "FrameDone", 3620, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done");
      }

      goto LABEL_344;
    }

    goto LABEL_86;
  }

  if (v67 == 3)
  {
    v68 = sub_11D888(a1, v28);
    sub_E0C68(*(a1 + 29328), v28);
    if (v68)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (sub_160EF0(3u, 4))
      {
        v69 = sub_160F34(3u);
        v70 = sub_175AE4();
        v71 = sub_160F68(4);
        if (v69)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.\n", v70, 3, v71, "FrameDone", 3613, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.");
      }

      goto LABEL_344;
    }

    goto LABEL_86;
  }

  v80 = *(v28 + 2456);
  if (v80 >= 4)
  {
    if (v80 == 4)
    {
      a2 = v30;
      if (sub_160EF0(0x2Eu, 5))
      {
        v287 = sub_160F34(0x2Eu);
        v288 = sub_175AE4();
        v289 = sub_160F68(5);
        v290 = *(v28 + 40);
        v291 = *(v28 + 2456);
        if (v287)
        {
          printf("%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d\n", v288, 46, v289, v290, v291);
          v292 = sub_175AE4();
          v293 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v292, 46, v293, *(v28 + 40), *(v28 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v288, 46, v289, v290, v291);
        }
      }

      v104 = sub_11CE6C(a1, v28);
      v297 = 0;
      v308 = 0;
      v319 = -1;
LABEL_367:
      v362 = v319;
      goto LABEL_368;
    }

    if (v80 != 6)
    {
      if (sub_160EF0(0x2Eu, 4))
      {
        a2 = v30;
        v210 = sub_160F34(0x2Eu);
        v211 = sub_175AE4();
        v212 = sub_160F68(4);
        v213 = *(v28 + 2456);
        if (v210)
        {
          printf("%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.\n", v211, 46, v212, v213);
          v214 = sub_175AE4();
          v342 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.", v214, 46, v342, *(v28 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.", v211, 46, v212, v213);
        }

        v297 = 0;
        v308 = 0;
        v104 = 0;
        v362 = -1;
      }

      else
      {
        v297 = 0;
        v308 = 0;
        v104 = 0;
        v362 = -1;
        a2 = v30;
      }

      goto LABEL_368;
    }
  }

  if (sub_160EF0(0x2Eu, 8))
  {
    v81 = v30;
    v82 = sub_160F34(0x2Eu);
    v83 = sub_175AE4();
    v84 = sub_160F68(8);
    if (v82)
    {
      printf("%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d\n", v83, 46, v84, "AVE_FrameRecv", "FrameDone", 3645, *v9, *(v28 + 40), *(v28 + 2456), *(a1 + 29360), *v31, *(v32 + 504), *(v28 + 6081));
      v85 = sub_175AE4();
      v335 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d", v85, 46, v335, "AVE_FrameRecv", "FrameDone");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d", v83, 46, v84, "AVE_FrameRecv", "FrameDone");
    }

    v30 = v81;
    a5 = v364;
  }

  v279 = *(a1 + 29360);
  if (v279 || *v31 == 1)
  {
    a2 = v30;
    if (*(v32 + 504) == 2 && *(v28 + 6081) == 1)
    {
      if (v279)
      {
        FigFormatDescriptionRelease();
        *(a1 + 29360) = 0;
      }

      if (sub_1191C0(a1, v28))
      {
        a3 = v360;
        if (sub_160EF0(0x2Eu, 4))
        {
          v280 = a5;
          v281 = sub_160F34(0x2Eu);
          v282 = sub_175AE4();
          v283 = sub_160F68(4);
          if (v281)
          {
            v284 = v367;
            v349 = v367;
            v285 = a1;
            v346 = a1;
            v286 = 3667;
LABEL_326:
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p\n", v282, 46, v283, "AVE_FrameRecv", "FrameDone", v286, "ret == 0", v346, v349);
            v282 = sub_175AE4();
            v347 = v285;
            v350 = v284;
            v345 = v286;
            a2 = v30;
            a3 = v360;
            v343 = sub_160F68(4);
            v295 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
LABEL_386:
            syslog(3, v295, v282, 46, v343, "AVE_FrameRecv", "FrameDone", v345, "ret == 0", v347, v350, v352);
            LODWORD(a5) = v280;
            goto LABEL_344;
          }

          v350 = v367;
          v347 = a1;
          v330 = 3667;
          goto LABEL_385;
        }

        goto LABEL_344;
      }
    }
  }

  else
  {
    a2 = v30;
    if (*v9 == 1 && sub_1191C0(a1, v28))
    {
      a3 = v360;
      if (sub_160EF0(0x2Eu, 4))
      {
        v280 = a5;
        v294 = sub_160F34(0x2Eu);
        v282 = sub_175AE4();
        v283 = sub_160F68(4);
        if (v294)
        {
          v284 = v367;
          v349 = v367;
          v285 = a1;
          v346 = a1;
          v286 = 3675;
          goto LABEL_326;
        }

        v350 = v367;
        v347 = a1;
        v330 = 3675;
LABEL_385:
        v345 = v330;
        v343 = v283;
        v295 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
        goto LABEL_386;
      }

LABEL_344:
      v312 = *(v367 + 2600);
      if (v312)
      {
        CVPixelBufferRelease(v312);
        *(v367 + 2600) = 0;
      }

      v313 = *(v367 + 2608);
      if (v313)
      {
        CVPixelBufferRelease(v313);
        *(v367 + 2608) = 0;
      }

      goto LABEL_348;
    }
  }

  v296 = *(v32 + 4) - 1;
  v297 = v296 == a5;
  if ((a5 & 0x80000000) != 0 || !*v32)
  {
    v304 = *v9;
    if (*v9 == 2)
    {
      if (sub_11A7B8(a1, v367))
      {
        a3 = v360;
        if (sub_160EF0(3u, 4))
        {
          v305 = sub_160F34(3u);
          v306 = sub_175AE4();
          v307 = sub_160F68(4);
          if (v305)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed\n", v306, 3, v307, "FrameDone", 3704, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
            a3 = v360;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed");
        }

        goto LABEL_344;
      }

      v308 = 0;
      v319 = a5;
      v104 = 0;
    }

    else
    {
      if (*v32)
      {
        v308 = 0;
        v309 = a5;
        v104 = 0;
        v362 = v309;
LABEL_369:
        if (v304 == 1)
        {
          v322 = *(v32 + 1752);
          v323 = sub_175AE4();
          sub_1403FC(v322, 5u, v323);
        }

        a3 = v360;
        if (v104 && sub_160EF0(0x2Eu, 4))
        {
          v324 = v9;
          v325 = a2;
          v326 = sub_160F34(0x2Eu);
          v327 = sub_175AE4();
          v328 = sub_160F68(4);
          if (v326)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.\n", v327, 46, v328);
            v329 = sub_175AE4();
            v344 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v329, 46, v344);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v327, 46, v328);
          }

          a2 = v325;
          v9 = v324;
        }

        sub_E0C68(*(a1 + 29328), v367);
        if (v297 || (v308 & 1) == 0)
        {
          goto LABEL_104;
        }

        if (!v308)
        {
          goto LABEL_121;
        }

        goto LABEL_379;
      }

      if (sub_117BCC(a1, *(v367 + 3180), *(v367 + 44)))
      {
        a3 = v360;
        if (!sub_160EF0(0x2Eu, 4))
        {
          goto LABEL_344;
        }

        v280 = a5;
        v318 = sub_160F34(0x2Eu);
        v282 = sub_175AE4();
        v299 = sub_160F68(4);
        if (v318)
        {
          v300 = v367;
          v351 = *(v367 + 3180);
          v353 = *(v367 + 44);
          v301 = a1;
          v348 = a1;
          v302 = 3716;
          goto LABEL_333;
        }

        v350 = *(v367 + 3180);
        v352 = *(v367 + 44);
        v347 = a1;
        v320 = 3716;
LABEL_361:
        v345 = v320;
        v343 = v299;
        v295 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
        goto LABEL_386;
      }

      v370 = 0;
      v368 = 0u;
      v369 = 0u;
      sub_1283E8(*(a1 + 29336), &v368);
      v321 = sub_11DEB4(a1, v367, &v368, 0xFFFFFFFFLL);
      v319 = a5;
      v104 = v321;
      v308 = 0;
    }

    goto LABEL_367;
  }

  if (sub_117BCC(a1, *(v367 + 3180), *(v367 + 44)))
  {
    a3 = v360;
    if (!sub_160EF0(0x2Eu, 4))
    {
      goto LABEL_344;
    }

    v280 = a5;
    v298 = sub_160F34(0x2Eu);
    v282 = sub_175AE4();
    v299 = sub_160F68(4);
    if (v298)
    {
      v300 = v367;
      v351 = *(v367 + 3180);
      v353 = *(v367 + 44);
      v301 = a1;
      v348 = a1;
      v302 = 3692;
LABEL_333:
      printf("%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d\n", v282, 46, v299, "AVE_FrameRecv", "FrameDone", v302, "ret == 0", v348, v351, v353);
      v282 = sub_175AE4();
      v303 = sub_160F68(4);
      v350 = *(v300 + 3180);
      v352 = *(v300 + 44);
      v347 = v301;
      v345 = v302;
      a2 = v30;
      v343 = v303;
      a3 = v360;
      v295 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
      goto LABEL_386;
    }

    v350 = *(v367 + 3180);
    v352 = *(v367 + 44);
    v347 = a1;
    v320 = 3692;
    goto LABEL_361;
  }

  v370 = 0;
  v368 = 0u;
  v369 = 0u;
  sub_1283E8(*(a1 + 29336), &v368);
  v310 = sub_11DEB4(a1, v367, &v368, a5);
  v311 = a5;
  v104 = v310;
  if (v296 == v311)
  {
    v297 = 1;
    v362 = v311;
    v308 = 1;
LABEL_368:
    v304 = *v9;
    goto LABEL_369;
  }

  v362 = v311;
  a3 = v360;
LABEL_379:
  if (*(v367 + 2456) != 4)
  {
LABEL_121:
    v105 = *(v367 + 4);
    if (v105 <= 6)
    {
      if (v105 == 5)
      {
        v368 = 0u;
        v369 = 0u;
        LODWORD(a4) = v365;
        LODWORD(v368) = v365;
        v370 = a2;
        v118 = sub_128458(*(a1 + 29344), &v368);
        if (v104)
        {
          LODWORD(a5) = v364;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_344;
          }

          v119 = sub_160F34(3u);
          v113 = sub_175AE4();
          v114 = sub_160F68(4);
          if (!v119)
          {
            goto LABEL_302;
          }

          v115 = 4018;
          goto LABEL_167;
        }

        if (!v118)
        {
          goto LABEL_174;
        }

        LODWORD(a5) = v364;
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_344;
        }

        v129 = sub_160F34(3u);
        v126 = sub_175AE4();
        v127 = sub_160F68(4);
        if (!v129)
        {
          goto LABEL_343;
        }

        v128 = 4019;
      }

      else
      {
        LODWORD(a4) = v365;
        if (v105 != 6)
        {
          goto LABEL_146;
        }

        v368 = 0u;
        v369 = 0u;
        LODWORD(v368) = v365;
        v370 = a2;
        v111 = sub_128458(*(a1 + 29344), &v368);
        if (v104)
        {
          LODWORD(a5) = v364;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_344;
          }

          v112 = sub_160F34(3u);
          v113 = sub_175AE4();
          v114 = sub_160F68(4);
          if (!v112)
          {
            goto LABEL_302;
          }

          v115 = 4034;
LABEL_167:
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.\n", v113, 3, v114, "FrameDone", v115, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          goto LABEL_302;
        }

        if (!v111)
        {
          goto LABEL_174;
        }

        LODWORD(a5) = v364;
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_344;
        }

        v130 = sub_160F34(3u);
        v126 = sub_175AE4();
        v127 = sub_160F68(4);
        if (!v130)
        {
          goto LABEL_343;
        }

        v128 = 4035;
      }
    }

    else
    {
      LODWORD(a4) = v365;
      if (v105 == 7)
      {
        goto LABEL_174;
      }

      if (v105 != 10)
      {
        if (v105 == 8)
        {
          v368 = 0u;
          v369 = 0u;
          LODWORD(v368) = v365;
          v370 = a2;
          if (sub_160EF0(0x2Eu, 7))
          {
            v106 = sub_160F34(0x2Eu);
            v107 = sub_175AE4();
            v108 = sub_160F68(7);
            if (v106)
            {
              printf("%lld %d AVE %s: H264FrameRec: writePacketBlock = %d\n", v107, 46, v108, v365);
              v109 = sub_175AE4();
              v110 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v109, 46, v110, v365);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v107, 46, v108, v365);
            }

            LODWORD(a4) = v365;
          }

          v131 = sub_128458(*(a1 + 29344), &v368);
          if (v104)
          {
            LODWORD(a5) = v364;
            if (!sub_160EF0(3u, 4))
            {
              goto LABEL_344;
            }

            v132 = sub_160F34(3u);
            v113 = sub_175AE4();
            v114 = sub_160F68(4);
            if (v132)
            {
              v115 = 4002;
              goto LABEL_167;
            }

LABEL_302:
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.");
            goto LABEL_344;
          }

          if (v131)
          {
            LODWORD(a5) = v364;
            if (!sub_160EF0(3u, 4))
            {
              goto LABEL_344;
            }

            v133 = sub_160F34(3u);
            v126 = sub_175AE4();
            v127 = sub_160F68(4);
            if (v133)
            {
              v128 = 4003;
              goto LABEL_172;
            }

LABEL_343:
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread");
            goto LABEL_344;
          }

LABEL_174:
          LODWORD(a5) = v364;
          if ((sub_1502C8()[103] & 0x20) != 0)
          {
            v361 = a3;
            v134 = a1 + 139568;
            v135 = *(a1 + 139568 + 16 * *(v367 + 40) + 8);
            if (sub_160EF0(0x2Eu, 8))
            {
              v136 = sub_160F34(0x2Eu);
              v137 = sub_175AE4();
              v138 = sub_160F68(8);
              if (v136)
              {
                printf("%lld %d AVE %s: \n", v137, 46, v138);
                v139 = sub_175AE4();
                v338 = sub_160F68(8);
                v134 = a1 + 139568;
                syslog(3, "%lld %d AVE %s: ", v139, 46, v338);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: ", v137, 46, v138);
              }
            }

            v140 = v135;
            v141 = *(v367 + 40) - 1;
            v355 = v9;
            v358 = a2;
            if (v141 < 0)
            {
              v151 = 0;
              LODWORD(v143) = 0;
              v152 = 0;
              *(v367 + 34744) = 0;
              v145 = 0.0;
            }

            else
            {
              v354 = *(v367 + 40);
              v142 = 0;
              LODWORD(v143) = 0;
              while (1)
              {
                v144 = (v134 + 16 * v141);
                v145 = (v140 - v144[1]) / *(v367 + 4616);
                if (sub_160EF0(0x2Eu, 8))
                {
                  v146 = sub_160F34(0x2Eu);
                  v147 = sub_175AE4();
                  v148 = sub_160F68(8);
                  v149 = *(v367 + 40);
                  if (v146)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v147, 46, v148, v149, v141, v143, v145, v142);
                    v150 = sub_175AE4();
                    v134 = a1 + 139568;
                    v339 = sub_160F68(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v150, 46, v339, *(v367 + 40), v141, v143, v145, v142);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v147, 46, v148, v149, v141, v143, v145, v142);
                  }
                }

                v143 = *v144 + v143;
                if (v145 >= 0.1)
                {
                  break;
                }

                --v141;
                ++v142;
                if (v141 == -1)
                {
                  v151 = v354;
                  goto LABEL_190;
                }
              }

              v151 = v142 + 1;
LABEL_190:
              *(v367 + 34744) = v143;
              if (v145 == 0.0)
              {
                v152 = 0;
              }

              else
              {
                v152 = (v143 / v145);
              }
            }

            if (sub_160EF0(0x2Eu, 8))
            {
              v153 = sub_160F34(0x2Eu);
              v154 = sub_175AE4();
              v155 = sub_160F68(8);
              if (v153)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d\n", v154, 46, v155, *(v367 + 40), v151, v143, v145, v152);
                v156 = sub_175AE4();
                sub_160F68(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d", v156);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d", v154);
              }
            }

            v157 = *(v367 + 40);
            v158 = v157 - 1;
            if (v157 - 1 < 0)
            {
              v160 = 0;
              LODWORD(v159) = 0;
              v168 = 0;
              *(v367 + 34752) = 0;
              v162 = 0.0;
            }

            else
            {
              LODWORD(v159) = 0;
              v160 = 1;
              while (1)
              {
                v161 = (v134 + 16 * v158);
                v162 = (v140 - v161[1]) / *(v367 + 4616);
                v159 = *v161 + v159;
                if (sub_160EF0(0x2Eu, 8))
                {
                  v163 = sub_160F34(0x2Eu);
                  v164 = sub_175AE4();
                  v165 = sub_160F68(8);
                  v166 = *(v367 + 40);
                  if (v163)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v164, 46, v165, v166, v158, v159, v162, v160);
                    v167 = sub_175AE4();
                    v340 = sub_160F68(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v167, 46, v340, *(v367 + 40), v158, v159, v162, v160);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v164, 46, v165, v166, v158, v159, v162, v160);
                  }
                }

                if (v162 >= 0.5)
                {
                  break;
                }

                --v158;
                ++v160;
                if (v158 == -1)
                {
                  v160 = v157;
                  break;
                }
              }

              *(v367 + 34752) = v159;
              if (v162 == 0.0)
              {
                v168 = 0;
              }

              else
              {
                v168 = (v159 / v162);
              }
            }

            if (sub_160EF0(0x2Eu, 8))
            {
              v169 = sub_160F34(0x2Eu);
              v170 = sub_175AE4();
              v171 = sub_160F68(8);
              if (v169)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v170, 46, v171, *(v367 + 40), v160, v159, v162, v168);
                v172 = sub_175AE4();
                sub_160F68(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v172);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v170);
              }
            }

            if (*(v367 + 40) - 1 <= 0)
            {
              v174 = 0;
              LODWORD(v173) = 0;
              v185 = 0;
              *(v367 + 34760) = 0;
              v177 = 0.0;
            }

            else
            {
              LODWORD(v173) = 0;
              v174 = 1;
              v359 = *(v367 + 40) - 1;
              v175 = v359;
              while (1)
              {
                v176 = (v134 + 16 * v175);
                v177 = (v140 - v176[1]) / *(v367 + 4616);
                v173 = *v176 + v173;
                if (sub_160EF0(0x2Eu, 8))
                {
                  v178 = sub_160F34(0x2Eu);
                  v179 = sub_175AE4();
                  v180 = sub_160F68(8);
                  v181 = *(v367 + 40);
                  v182 = *v176;
                  if (v178)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d\n", v179, 46, v180, v181, v175, v173, v182, v177, v174);
                    v183 = sub_175AE4();
                    v184 = sub_160F68(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d", v183, 46, v184, *(v367 + 40), v175, v173, *v176, v177, v174);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d", v179, 46, v180, v181, v175, v173, v182, v177, v174);
                  }
                }

                if (v177 >= 1.0)
                {
                  break;
                }

                ++v174;
                if (!--v175)
                {
                  v174 = v359;
                  break;
                }
              }

              *(v367 + 34760) = v173;
              if (v177 == 0.0)
              {
                v185 = 0;
              }

              else
              {
                v185 = (v173 / v177);
              }
            }

            if (sub_160EF0(0x2Eu, 8))
            {
              v186 = sub_160F34(0x2Eu);
              v187 = sub_175AE4();
              v188 = sub_160F68(8);
              if (v186)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######\n", v187, 46, v188, *(v367 + 40), v174, v173, v177, v185);
                v189 = sub_175AE4();
                sub_160F68(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######", v189);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######", v187);
              }
            }

            v190 = *(v367 + 40);
            v191 = v190 - 1;
            if (v190 - 1 < 0)
            {
              v193 = 0;
              LODWORD(v192) = 0;
              v202 = 0;
              *(v367 + 34768) = 0;
              v195 = 0.0;
              LODWORD(a4) = v365;
              v201 = v355;
            }

            else
            {
              LODWORD(v192) = 0;
              v193 = 1;
              LODWORD(a4) = v365;
              while (1)
              {
                v194 = (v134 + 16 * v191);
                v195 = (v140 - v194[1]) / *(v367 + 4616);
                v192 = *v194 + v192;
                if (sub_160EF0(0x2Eu, 8))
                {
                  v196 = sub_160F34(0x2Eu);
                  v197 = sub_175AE4();
                  v198 = sub_160F68(8);
                  v199 = *(v367 + 40);
                  if (v196)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v197, 46, v198, v199, v191, v192, v195, v193);
                    v200 = sub_175AE4();
                    LODWORD(a4) = v365;
                    v341 = sub_160F68(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v200, 46, v341, *(v367 + 40), v191, v192, v195, v193);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v197, 46, v198, v199, v191, v192, v195, v193);
                  }
                }

                if (v195 >= 2.0)
                {
                  break;
                }

                --v191;
                ++v193;
                if (v191 == -1)
                {
                  v193 = v190;
                  break;
                }
              }

              *(v367 + 34768) = v192;
              v201 = v355;
              if (v195 == 0.0)
              {
                v202 = 0;
              }

              else
              {
                v202 = (v192 / v195);
              }
            }

            if (sub_160EF0(0x2Eu, 8))
            {
              v203 = sub_160F34(0x2Eu);
              v204 = sub_175AE4();
              v205 = sub_160F68(8);
              if (v203)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v204, 46, v205, *(v367 + 40), v193, v192, v195, v202);
                v206 = sub_175AE4();
                sub_160F68(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v206);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v204);
              }
            }

            v207 = *(a1 + 39588);
            *(a1 + 137852) = (*(a1 + 29992) & 2) != 0;
            v208 = v201[1];
            *(a1 + 137844) = v207;
            *(a1 + 137848) = v208;
            *(a1 + 137840) = sub_1502C8()[104] & 0x20;
            *(a1 + 137853) = *(a1 + 38944);
            *(a1 + 137856) = v362;
            v209 = sub_CBC74(*(a1 + 40704), 5u, *(v367 + 24));
            sub_DA98C((a1 + 137840), v367, v209);
            memcpy((a1 + 137864), (v367 + 33048), 0x698uLL);
            *(a1 + 139552) = *(v367 + 4608);
            a2 = v358;
            a3 = v361;
            LODWORD(a5) = v364;
          }

          goto LABEL_344;
        }

LABEL_146:
        if (sub_160EF0(0x2Eu, 4))
        {
          v120 = sub_160F34(0x2Eu);
          v121 = sub_175AE4();
          v122 = sub_160F68(4);
          v123 = *(v367 + 4);
          if (v120)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v121, 46, v122, v123);
            v124 = sub_175AE4();
            v337 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v124, 46, v337, *(v367 + 4));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v121, 46, v122, v123);
          }
        }

        goto LABEL_174;
      }

      v368 = 0u;
      v369 = 0u;
      LODWORD(v368) = v365;
      v370 = a2;
      v116 = sub_128458(*(a1 + 29344), &v368);
      if (v104)
      {
        LODWORD(a5) = v364;
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_344;
        }

        v117 = sub_160F34(3u);
        v113 = sub_175AE4();
        v114 = sub_160F68(4);
        if (!v117)
        {
          goto LABEL_302;
        }

        v115 = 4050;
        goto LABEL_167;
      }

      if (!v116)
      {
        goto LABEL_174;
      }

      LODWORD(a5) = v364;
      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_344;
      }

      v125 = sub_160F34(3u);
      v126 = sub_175AE4();
      v127 = sub_160F68(4);
      if (!v125)
      {
        goto LABEL_343;
      }

      v128 = 4051;
    }

LABEL_172:
    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread\n", v126, 3, v127, "FrameDone", v128, "ret == 0");
    sub_175AE4();
    sub_160F68(4);
    goto LABEL_343;
  }

LABEL_104:
  a5 = *(a1 + 29336);
  pthread_mutex_lock(a5);
  do
  {
    v92 = *(a5 + 208);
    v91 = *(a5 + 216);
    if (v91 > v92)
    {
      v97 = v92 + 1;
      *(a5 + 208) = v97;
      v98 = v91 <= v97;
      v99 = v91 - v97;
      if (v98)
      {
        v99 = 0;
      }

      if (v99 < *(a5 + 200))
      {
        pthread_cond_signal((a5 + 112));
      }

      pthread_mutex_unlock(a5);
      if (sub_160EF0(0x2Eu, 7))
      {
        v100 = sub_160F34(0x2Eu);
        v101 = sub_175AE4();
        v102 = sub_160F68(7);
        if (v100)
        {
          printf("%lld %d AVE %s: H264FrameRec: readPacketBlock = %d\n", v101, 46, v102, v365);
          v103 = sub_175AE4();
          v336 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: readPacketBlock = %d", v103, 46, v336, v365);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: readPacketBlock = %d", v101, 46, v102, v365);
        }
      }

      v104 = 0;
      goto LABEL_121;
    }

    gettimeofday((a5 + 176), 0);
    v93 = 1000 * *(a5 + 184);
    *(a5 + 160) = *(a5 + 176) + 120;
    *(a5 + 168) = v93;
  }

  while (pthread_cond_timedwait((a5 + 64), a5, (a5 + 160)) != 60);
  pthread_mutex_unlock(a5);
  LODWORD(a5) = v364;
  if (sub_160EF0(3u, 4))
  {
    v94 = sub_160F34(3u);
    v95 = sub_175AE4();
    v96 = sub_160F68(4);
    if (v94)
    {
      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d\n", v95, 3, v96, "FrameDone", 3978, "err == noErr", -1);
      v95 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d", v95);
  }

  LODWORD(a4) = v365;
  if (v367)
  {
    goto LABEL_344;
  }

LABEL_348:
  if (sub_160EF0(0x2Eu, 8))
  {
    v314 = sub_160F34(0x2Eu);
    v315 = sub_175AE4();
    v316 = sub_160F68(8);
    if (v314)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d\n", v315, 46, v316, "FrameDone", a2, a3, a4, a5);
      v317 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v317);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v315);
    }
  }
}

uint64_t sub_1283E8(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(a1);
  v4 = *(a1 + 208);
  if (*(a1 + 216) > v4)
  {
    v5 = *(a1 + 224) + 40 * (v4 % *(a1 + 192));
    v6 = *v5;
    v7 = *(v5 + 16);
    *(a2 + 32) = *(v5 + 32);
    *a2 = v6;
    *(a2 + 16) = v7;
  }

  return pthread_mutex_unlock(a1);
}

uint64_t sub_128458(uint64_t a1, __int128 *a2)
{
  pthread_mutex_lock(a1);
  while (1)
  {
    v5 = *(a1 + 208);
    v4 = *(a1 + 216);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if ((v7 < 0) ^ v6 | (v7 == 0))
    {
      v7 = 0;
    }

    if (v7 < *(a1 + 200))
    {
      break;
    }

    gettimeofday((a1 + 176), 0);
    v8 = 1000 * *(a1 + 184);
    *(a1 + 160) = *(a1 + 176) + 120;
    *(a1 + 168) = v8;
    if (pthread_cond_timedwait((a1 + 112), a1, (a1 + 160)) == 60)
    {
      if (sub_160EF0(0x2Au, 4))
      {
        v9 = sub_160F34(0x2Au);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        v13 = *(a1 + 208);
        v12 = *(a1 + 216);
        v14 = v12 <= v13;
        v15 = v12 - v13;
        if (v14)
        {
          v15 = 0;
        }

        if (v9)
        {
          printf("%lld %d AVE %s: H264 Connection: connection full %lld\n", v10, 42, v11, v15);
          v10 = sub_175AE4();
          v11 = sub_160F68(4);
          v17 = *(a1 + 208);
          v16 = *(a1 + 216);
          v14 = v16 <= v17;
          v15 = v16 - v17;
          if (v14)
          {
            v15 = 0;
          }
        }

        syslog(3, "%lld %d AVE %s: H264 Connection: connection full %lld", v10, 42, v11, v15);
      }

      v23 = 0xFFFFFFFFLL;
      goto LABEL_20;
    }
  }

  v18 = *(a1 + 224) + 40 * (v4 % *(a1 + 192));
  v19 = *a2;
  v20 = a2[1];
  *(v18 + 32) = *(a2 + 4);
  *v18 = v19;
  *(v18 + 16) = v20;
  v22 = *(a1 + 208);
  v21 = *(a1 + 216);
  *(a1 + 216) = v21 + 1;
  if (v21 >= v22)
  {
    pthread_cond_signal((a1 + 64));
  }

  v23 = 0;
LABEL_20:
  pthread_mutex_unlock(a1);
  return v23;
}

uint64_t sub_1285DC(uint64_t a1)
{
  *(a1 + 25352) = 0u;
  *(a1 + 25368) = 0;
  v2 = a1 + 24576;
  *(a1 + 25384) = 0u;
  *(a1 + 25400) = 0u;
  *(a1 + 25416) = 0u;
  *(a1 + 25432) = 0u;
  *(a1 + 25448) = 0u;
  *(a1 + 25464) = 0u;
  sub_128654(a1);
  *(v2 + 904) = 0;
  *(a1 + 25488) = 0;
  *(a1 + 25760) = 0;
  bzero((a1 + 25496), 0x108uLL);
  *(v2 + 996) = 0;
  *(a1 + 25344) = 0;
  return a1;
}

void sub_128654(uint64_t a1)
{
  v2 = (a1 + 25352);
  v3 = *(a1 + 25352);
  if (v3)
  {
    *(a1 + 25360) = v3;
    operator delete(v3);
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v4 = *(a1 + 25392);
  v5 = *(a1 + 25400);
  *(a1 + 25424) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v4 = (*(a1 + 25392) + 8);
      *(a1 + 25392) = v4;
      v6 = (*(a1 + 25400) - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v7 = 256;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v7 = 512;
  }

  *(a1 + 25416) = v7;
LABEL_10:
  v8 = *(a1 + 25440);
  v9 = *(a1 + 25448);
  *(a1 + 25472) = 0;
  v10 = (v9 - v8) >> 3;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v8);
      v8 = (*(a1 + 25440) + 8);
      *(a1 + 25440) = v8;
      v10 = (*(a1 + 25448) - v8) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_16;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_16:
    *(a1 + 25464) = v11;
  }

  v12 = 0;
  v13 = xmmword_185C60;
  v14 = vdupq_n_s64(a1 + 2);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    v16.i64[0] = 1574 * v13.i64[0];
    v16.i64[1] = 1574 * v13.i64[1];
    *(a1 + 25192 + v12) = vaddq_s64(v14, v16);
    v13 = vaddq_s64(v13, v15);
    v12 += 16;
  }

  while (v12 != 128);
  *(a1 + 25320) = 16;
}

uint64_t sub_1287C0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_12886C(a1);
}

uint64_t sub_12886C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_1288BC(void *a1)
{
  sub_1287C0(a1 + 3179);
  sub_1287C0(a1 + 3173);
  v2 = a1[3169];
  if (v2)
  {
    a1[3170] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_128908(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  v5 = *(a1 + 20);
  v6 = a2[2995];
  v7 = a2[662];
  v8 = a2[663];
  *(a3 + 16) = sub_13DC80(*(a1 + 8), v6, HIWORD(a2[166]) & 1, a4);
  *(a3 + 20) = sub_13DC94(v5, v6, v7, v8);
  return 0;
}

uint64_t sub_12897C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 40) == 0;
  v6 = *(a3 + 23712) != 0;
  *(a4 + 56) = sub_13DD24(*(a1 + 8), 2 * (*(a1 + 106096) != 0), *(a1 + 106096));
  *(a4 + 60) = sub_13DD38(v5, v6);
  return 0;
}

uint64_t sub_1289FC(uint64_t a1, int a2, void *a3)
{
  v4 = a1;
  bzero(v16, 0x7A0uLL);
  if (sub_160EF0(0x28u, 6))
  {
    v5 = sub_160F34(0x28u);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %d %d\n", v6, 40, v7, "AVE_USL_Drv_Create", v4, a2);
      v6 = sub_175AE4();
      v7 = sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d", v6, 40, v7, "AVE_USL_Drv_Create", v4, a2);
  }

  v8 = malloc_type_malloc(0x19E98uLL, 0x10200409CA022ABuLL);
  if (v8)
  {
    bzero(v8, 0x19E98uLL);
    operator new();
  }

  if (sub_160EF0(0x28u, 4))
  {
    v9 = sub_160F34(0x28u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to allocate %d %d\n", v10, 40, v11, "AVE_USL_Drv_Create", 354, "pINS != __null", v4, a2);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to allocate %d %d", v10, 40, v11, "AVE_USL_Drv_Create", 354, "pINS != __null", v4, a2);
  }

  if (sub_160EF0(0x28u, 6))
  {
    v12 = sub_160F34(0x28u);
    v13 = sub_175AE4();
    v14 = sub_160F68(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d\n", v13, 40, v14, "AVE_USL_Drv_Create", v4, a2, -1003);
      v13 = sub_175AE4();
      v14 = sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d %d", v13, 40, v14, "AVE_USL_Drv_Create", v4, a2, -1003);
  }

  return 4294966293;
}

uint64_t sub_129100(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_12910C(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_129118(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t sub_129124(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 106064);
    if (v1)
    {
      return *v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_129148(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 106064);
    if (v1)
    {
      return *(v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_12916C(void *a1)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  if (sub_160EF0(0x28u, 6))
  {
    v2 = sub_160F34(0x28u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 40, v4, "AVE_USL_Drv_Destroy", a1);
      v5 = sub_175AE4();
      v27 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 40, v27, "AVE_USL_Drv_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 40, v4, "AVE_USL_Drv_Destroy", a1);
    }
  }

  if (a1)
  {
    if (a1[3])
    {
      *&v33 = *a1;
      *(&v34 + 1) = 118000000;
      v35 = sub_175AE4();
      v6 = sub_E2EF4(a1[3], &v33, v32);
      if (v6)
      {
        v7 = v6;
        if (!sub_160EF0(0x28u, 4))
        {
LABEL_30:
          free(a1);
          goto LABEL_31;
        }

        v8 = sub_160F34(0x28u);
        v9 = sub_175AE4();
        v10 = sub_160F68(4);
        if (v8)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %d\n", v9, 40, v10, "AVE_USL_Drv_Destroy", 528, "ret == 0", v7);
          v11 = sub_175AE4();
          sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %d", v11);
          goto LABEL_30;
        }

        v31 = v7;
        v30 = 528;
        v28 = v10;
        v19 = "%lld %d AVE %s: %s:%d %s | fail to close client %d";
LABEL_29:
        syslog(3, v19, v9, 40, v28, "AVE_USL_Drv_Destroy", v30, "ret == 0", v31);
        goto LABEL_30;
      }

      sub_DED78(a1[3]);
      v15 = sub_E2824(a1[3]);
      if (v15)
      {
        v7 = v15;
        if (!sub_160EF0(0x28u, 4))
        {
          goto LABEL_30;
        }

        v16 = sub_160F34(0x28u);
        v9 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %d\n", v9, 40, v17, "AVE_USL_Drv_Destroy", 534, "ret == 0", v7);
          v18 = sub_175AE4();
          sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %d", v18);
          goto LABEL_30;
        }

        v31 = v7;
        v30 = 534;
        v28 = v17;
        v19 = "%lld %d AVE %s: %s:%d %s | fail to close driver %d";
        goto LABEL_29;
      }

      v20 = a1[3];
      if (v20)
      {
        sub_DE988(v20);
        operator delete();
      }

      a1[3] = 0;
    }

    sub_129604(a1);
    v21 = a1[13266];
    if (v21)
    {
      CVPixelBufferPoolRelease(v21);
    }

    v7 = 0;
    goto LABEL_30;
  }

  if (sub_160EF0(0x28u, 4))
  {
    v12 = sub_160F34(0x28u);
    v13 = sub_175AE4();
    v14 = sub_160F68(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v13, 40, v14, "AVE_USL_Drv_Destroy", 518, "pDrv != __null", 0);
      v13 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v13);
  }

  v7 = 4294966295;
LABEL_31:
  if (sub_160EF0(0x28u, 6))
  {
    v22 = sub_160F34(0x28u);
    v23 = sub_175AE4();
    v24 = sub_160F68(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
      v25 = sub_175AE4();
      v29 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v25, 40, v29, "AVE_USL_Drv_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t sub_129604(uint64_t a1)
{
  v2 = a1 + 102400;
  v3 = *(a1 + 106064);
  if (v3)
  {
    sub_116028(v3);
    operator delete();
  }

  v4 = *(v2 + 3672);
  if (v4)
  {
    sub_130A9C(v4);
    operator delete();
  }

  v5 = *(v2 + 3680);
  if (v5)
  {
    sub_130A9C(v5);
    operator delete();
  }

  sub_13ED4C(a1 + 136);

  return sub_13E77C(a1 + 128);
}

uint64_t sub_1296B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  if (sub_160EF0(0x28u, 7))
  {
    v14 = sub_160F34(0x28u);
    v15 = sub_175AE4();
    v16 = sub_160F68(7);
    if (v14)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.\n", v15, 40, v16);
      v17 = sub_175AE4();
      v90 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.", v17, 40, v90);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.", v15, 40, v16);
    }
  }

  if (!v13)
  {
    if (sub_160EF0(3u, 4))
    {
      v23 = sub_160F34(3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_Prepare, Null pointer for driver data.\n", v24, 3, v25, "AVE_USL_Drv_Prepare", 569, "pDriverInstance");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_Prepare, Null pointer for driver data.");
    }

    goto LABEL_100;
  }

  if (!v12)
  {
    if (sub_160EF0(3u, 4))
    {
      v26 = sub_160F34(3u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for AppleAVEVA_InitSettings.\n", v27, 3, v28, "AVE_USL_Drv_Prepare", 570, "pInitSettings");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for AppleAVEVA_InitSettings.");
    }

    goto LABEL_100;
  }

  if (!*v12)
  {
    if (sub_160EF0(3u, 4))
    {
      v29 = sub_160F34(3u);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for psSessionCfg.\n", v30, 3, v31, "AVE_USL_Drv_Prepare", 572, "pInitSettings->psSessionCfg");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for psSessionCfg.");
    }

    goto LABEL_100;
  }

  if (!*(v12 + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v32 = sub_160F34(3u);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParams.\n", v33, 3, v34, "AVE_USL_Drv_Prepare", 573, "pInitSettings->pVideoParams");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParams.");
    }

    goto LABEL_100;
  }

  v18 = *(v12 + 16);
  if (!v18)
  {
    if (sub_160EF0(3u, 4))
    {
      v35 = sub_160F34(3u);
      v36 = sub_175AE4();
      v37 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParamsDriver.\n", v36, 3, v37, "AVE_USL_Drv_Prepare", 574, "pInitSettings->pVideoParamsDriver");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParamsDriver.");
    }

    goto LABEL_100;
  }

  v19 = *(v18 + 20);
  if (v19 == 2)
  {
    if (!*(v12 + 2304))
    {
      if (sub_160EF0(3u, 4))
      {
        v50 = sub_160F34(3u);
        v51 = sub_175AE4();
        v52 = sub_160F68(4);
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for VPSHevcParams.\n", v51, 3, v52, "AVE_USL_Drv_Prepare", 588, "pInitSettings->VPSHevcParams");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for VPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2312))
    {
      if (sub_160EF0(3u, 4))
      {
        v57 = sub_160F34(3u);
        v58 = sub_175AE4();
        v59 = sub_160F68(4);
        if (v57)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSHevcParams.\n", v58, 3, v59, "AVE_USL_Drv_Prepare", 589, "pInitSettings->psaHEVC_SPS[0]");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2328))
    {
      if (sub_160EF0(3u, 4))
      {
        v60 = sub_160F34(3u);
        v61 = sub_175AE4();
        v62 = sub_160F68(4);
        if (v60)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSHevcParams.\n", v61, 3, v62, "AVE_USL_Drv_Prepare", 590, "pInitSettings->psaHEVC_PPS[0]");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2344))
    {
      if (sub_160EF0(3u, 4))
      {
        v63 = sub_160F34(3u);
        v64 = sub_175AE4();
        v65 = sub_160F68(4);
        if (v63)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHHevcParams.\n", v64, 3, v65, "AVE_USL_Drv_Prepare", 591, "pInitSettings->SHHevcParams");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2352))
    {
      if (sub_160EF0(3u, 4))
      {
        v66 = sub_160F34(3u);
        v67 = sub_175AE4();
        v68 = sub_160F68(4);
        if (v66)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for RPSHevcParams.\n", v67, 3, v68, "AVE_USL_Drv_Prepare", 592, "pInitSettings->RPSHevcParams");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for RPSHevcParams.");
      }

      goto LABEL_100;
    }
  }

  else
  {
    if (v19 != 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v42 = sub_160F34(3u);
        v43 = sub_175AE4();
        v44 = sub_160F68(4);
        if (v42)
        {
          v45 = 597;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d\n", v43, 3, v44, "AVE_USL_Drv_Prepare", 597, "false", *(*(v12 + 16) + 20));
LABEL_48:
          v43 = sub_175AE4();
          v46 = sub_160F68(4);
          v93 = *(*(v12 + 16) + 20);
          v92 = v45;
          v91 = v46;
LABEL_59:
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d", v43, 3, v91, "AVE_USL_Drv_Prepare", v92, "false", v93);
          goto LABEL_100;
        }

        v93 = *(*(v12 + 16) + 20);
        v53 = 597;
LABEL_58:
        v92 = v53;
        v91 = v44;
        goto LABEL_59;
      }

LABEL_100:
      v74 = 4294966295;
      goto LABEL_101;
    }

    if (!*(v12 + 808))
    {
      if (sub_160EF0(3u, 4))
      {
        v47 = sub_160F34(3u);
        v48 = sub_175AE4();
        v49 = sub_160F68(4);
        if (v47)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSParams.\n", v48, 3, v49, "AVE_USL_Drv_Prepare", 580, "pInitSettings->SPSParams");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 816))
    {
      if (sub_160EF0(3u, 4))
      {
        v54 = sub_160F34(3u);
        v55 = sub_175AE4();
        v56 = sub_160F68(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSParams.\n", v55, 3, v56, "AVE_USL_Drv_Prepare", 581, "pInitSettings->PPSParams");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 824))
    {
      if (sub_160EF0(3u, 4))
      {
        v20 = sub_160F34(3u);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHParams.\n", v21, 3, v22, "AVE_USL_Drv_Prepare", 582, "pInitSettings->SHParams");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHParams.");
      }

      goto LABEL_100;
    }
  }

  memcpy((v13 + 232), *v12, 0x300uLL);
  memcpy((v13 + 2880), *(v12 + 8), 0x2460uLL);
  memcpy((v13 + 12192), *(v12 + 16), 0x4E0uLL);
  if ((*(v13 + 8) - 2) >= 4)
  {
    v38 = *(*(v12 + 16) + 20);
    if (v38 == 2)
    {
      memcpy((v13 + 13440), *(v12 + 2304), 0x2FCCuLL);
      memcpy((v13 + 25676), *(v12 + 2312), 0x1E7CuLL);
      memcpy((v13 + 41284), *(v12 + 2328), 0x25A0uLL);
      memcpy((v13 + 33480), *(v12 + 2320), 0x1E7CuLL);
      memcpy((v13 + 50916), *(v12 + 2336), 0x25A0uLL);
      memcpy((v13 + 60552), *(v12 + 2344), 0x53F0uLL);
      v39 = *(v12 + 2352);
      v40 = (v13 + 82040);
      v41 = 24024;
      goto LABEL_80;
    }

    if (v38 == 1)
    {
      memcpy((v13 + 13440), *(v12 + 808), 0x6B4uLL);
      memcpy((v13 + 15156), *(v12 + 816), 0x180uLL);
      v39 = *(v12 + 824);
      v40 = (v13 + 15540);
      v41 = 2340;
LABEL_80:
      memcpy(v40, v39, v41);
      goto LABEL_81;
    }

    if (sub_160EF0(3u, 4))
    {
      v85 = sub_160F34(3u);
      v43 = sub_175AE4();
      v44 = sub_160F68(4);
      if (v85)
      {
        v45 = 637;
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d\n", v43, 3, v44, "AVE_USL_Drv_Prepare", 637, "false", *(*(v12 + 16) + 20));
        goto LABEL_48;
      }

      v93 = *(*(v12 + 16) + 20);
      v53 = 637;
      goto LABEL_58;
    }

    goto LABEL_100;
  }

LABEL_81:
  bzero(v96, 0x1A098uLL);
  v95 = *v13;
  v69 = &unk_1A7265;
  if (v10)
  {
    v69 = v10;
  }

  sub_172100(v97, 512, "%s", v69);
  v70 = *(v13 + 13280);
  v71 = *(v13 + 13312);
  v100 = *(v13 + 13296);
  v101 = v71;
  v98 = *(v13 + 13264);
  v99 = v70;
  v102 = *(v13 + 13328);
  v72 = *(v13 + 13380);
  v105 = *(v13 + 13364);
  v106 = v72;
  v107 = *(v13 + 13396);
  v73 = *(v13 + 13348);
  v103 = *(v13 + 13332);
  v104 = v73;
  v96[2] = 118000000;
  v96[3] = sub_175AE4();
  memcpy(v108, (v13 + 232), sizeof(v108));
  memset(v94, 0, sizeof(v94));
  v74 = sub_E3368(*(v13 + 24), &v95, v94);
  if (v74)
  {
    if (sub_160EF0(0x28u, 4))
    {
      v75 = sub_160F34(0x28u);
      v76 = sub_175AE4();
      v77 = sub_160F68(4);
      if (v75)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %d\n", v76, 40, v77, "AVE_USL_Drv_Prepare", 665, "ret == 0", v74);
        v76 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %d", v76);
    }
  }

  else
  {
    v78 = 0;
    v79 = *(v12 + 16) + 1072;
    v80 = 1;
    do
    {
      v81 = 0;
      v82 = 17 * v78;
      v83 = v80;
      v84 = v13 + 13264 + 68 * v78;
      do
      {
        *(v79 + 4 * v82 + v81) = *(v84 + v81);
        v81 += 4;
      }

      while (v81 != 68);
      v80 = 0;
      v78 = 1;
    }

    while ((v83 & 1) != 0);
  }

LABEL_101:
  if (sub_160EF0(0x28u, 7))
  {
    v86 = sub_160F34(0x28u);
    v87 = sub_175AE4();
    v88 = sub_160F68(7);
    if (v86)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Prepare F %d %d\n", v87, 40, v88, *(v13 + 44), v74);
      v87 = sub_175AE4();
      v88 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Prepare F %d %d", v87, 40, v88, *(v13 + 44), v74);
  }

  return v74;
}

uint64_t sub_12A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, void *__dst)
{
  v10 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v145 = v11;
  v13 = v12;
  v15 = v14;
  v16 = v10;
  v162 = -1;
  bzero(v163, 0x1A0B0uLL);
  memset(v161, 0, sizeof(v161));
  if (sub_160EF0(0x28u, 7))
  {
    v17 = sub_160F34(0x28u);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    if (v17)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Start.\n", v18, 40, v19);
      v18 = sub_175AE4();
      v19 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Start.", v18, 40, v19);
  }

  if (!v16)
  {
    if (sub_160EF0(3u, 4))
    {
      v26 = sub_160F34(3u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.\n", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
    }

    goto LABEL_170;
  }

  if (!v15)
  {
    if (sub_160EF0(3u, 4))
    {
      v29 = sub_160F34(3u);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.\n", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
    }

    goto LABEL_170;
  }

  v20 = *v15;
  if (!*v15)
  {
    if (sub_160EF0(3u, 4))
    {
      v32 = sub_160F34(3u);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.\n", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
    }

    goto LABEL_170;
  }

  if (!v15[1])
  {
    if (sub_160EF0(3u, 4))
    {
      v35 = sub_160F34(3u);
      v36 = sub_175AE4();
      v37 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.\n", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
    }

    goto LABEL_170;
  }

  v21 = v15[2];
  if (!v21)
  {
    if (sub_160EF0(3u, 4))
    {
      v38 = sub_160F34(3u);
      v39 = sub_175AE4();
      v40 = sub_160F68(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParamsDriver.\n", v39, 3, v40, "AVE_USL_Drv_Start", 716, "pInitSettings->pVideoParamsDriver");
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParamsDriver.", v39, 3, v40, "AVE_USL_Drv_Start", 716, "pInitSettings->pVideoParamsDriver");
    }

    goto LABEL_170;
  }

  v22 = v21[5];
  if (v22 == 2)
  {
    if (!v15[288])
    {
      if (sub_160EF0(3u, 4))
      {
        v49 = sub_160F34(3u);
        v50 = sub_175AE4();
        v51 = sub_160F68(4);
        if (v49)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.\n", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
          v50 = sub_175AE4();
          v51 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[289])
    {
      if (sub_160EF0(3u, 4))
      {
        v55 = sub_160F34(3u);
        v56 = sub_175AE4();
        v57 = sub_160F68(4);
        if (v55)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.\n", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
          v56 = sub_175AE4();
          v57 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[291])
    {
      if (sub_160EF0(3u, 4))
      {
        v58 = sub_160F34(3u);
        v59 = sub_175AE4();
        v60 = sub_160F68(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.\n", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
          v59 = sub_175AE4();
          v60 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[293])
    {
      if (sub_160EF0(3u, 4))
      {
        v74 = sub_160F34(3u);
        v75 = sub_175AE4();
        v76 = sub_160F68(4);
        if (v74)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.\n", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
          v75 = sub_175AE4();
          v76 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[294])
    {
      if (sub_160EF0(3u, 4))
      {
        v88 = sub_160F34(3u);
        v89 = sub_175AE4();
        v90 = sub_160F68(4);
        if (v88)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for RPSHevcParams.\n", v89, 3, v90, "AVE_USL_Drv_Start", 734, "pInitSettings->RPSHevcParams");
          v89 = sub_175AE4();
          v90 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for RPSHevcParams.", v89, 3, v90, "AVE_USL_Drv_Start", 734, "pInitSettings->RPSHevcParams");
      }

      goto LABEL_170;
    }
  }

  else
  {
    if (v22 != 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v43 = sub_160F34(3u);
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
          v44 = sub_175AE4();
          v45 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
      }

      goto LABEL_170;
    }

    if (!v15[101])
    {
      if (sub_160EF0(3u, 4))
      {
        v46 = sub_160F34(3u);
        v47 = sub_175AE4();
        v48 = sub_160F68(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.\n", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
          v47 = sub_175AE4();
          v48 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[102])
    {
      if (sub_160EF0(3u, 4))
      {
        v52 = sub_160F34(3u);
        v53 = sub_175AE4();
        v54 = sub_160F68(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.\n", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
          v53 = sub_175AE4();
          v54 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[103])
    {
      if (sub_160EF0(3u, 4))
      {
        v23 = sub_160F34(3u);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.\n", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
      }

LABEL_170:
      v96 = 4294966295;
      goto LABEL_171;
    }
  }

  v41 = v16 + 12800;
  v16[13261] = v13;
  memcpy(v16 + 29, v20, 0x300uLL);
  memcpy(v16 + 360, v15[1], 0x2460uLL);
  memcpy(v16 + 1524, v15[2], 0x4E0uLL);
  v42 = *(v15[2] + 5);
  v142 = v16 + 12800;
  if (v42 == 2)
  {
    __src = v16 + 29;
    memcpy(v16 + 1680, v15[288], 0x2FCCuLL);
    v61 = v15;
    v62 = 0;
    v63 = v61 + 289;
    v140 = v61;
    v64 = v61 + 291;
    v144 = v16 + 25676;
    v65 = v16;
    v143 = v16 + 41284;
    v66 = 1;
    do
    {
      v67 = v66;
      v68 = v63[v62];
      if (v68)
      {
        memcpy(&v144[7804 * v62], v68, 0x1E7CuLL);
      }

      v69 = v64[v62];
      if (v69)
      {
        memcpy(&v143[9632 * v62], v69, 0x25A0uLL);
      }

      v66 = 0;
      v62 = 1;
    }

    while ((v67 & 1) != 0);
    v15 = v140;
    v16 = v65;
    memcpy(v65 + 7569, v140[293], 0x53F0uLL);
    memcpy(v65 + 10255, v140[294], 0x5DD8uLL);
    memcpy(v65 + 125, v140 + 295, 0x758uLL);
    v41 = v142;
  }

  else
  {
    if (v42 != 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v71 = sub_160F34(3u);
        v72 = sub_175AE4();
        v73 = sub_160F68(4);
        if (v71)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v72, 3, v73, "AVE_USL_Drv_Start", 785, "false", *(v15[2] + 5));
          v72 = sub_175AE4();
          v73 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d", v72, 3, v73, "AVE_USL_Drv_Start", 785, "false", *(v15[2] + 5));
      }

      goto LABEL_170;
    }

    __src = v16 + 29;
    memcpy(v16 + 1680, v15[101], 0x6B4uLL);
    memcpy(v16 + 15156, v15[102], 0x180uLL);
    memcpy(v16 + 15540, v15[103], 0x924uLL);
    memcpy(v16 + 125, v15 + 104, 0x5C0uLL);
  }

  v70 = *(v16 + 2);
  if (v70 == 4)
  {
    v77 = *(v15 + 48);
    v78 = *(v15 + 49);
    v16[129] = v15[100];
    *(v16 + 125) = v77;
    *(v16 + 127) = v78;
  }

  else if (v70 == 3)
  {
    memcpy(v16 + 125, v15 + 7, 0x2C8uLL);
  }

  *(v41 + 232) = *(v15 + 5);
  if (!v41[458])
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v84 = 48;
    v146 = 0u;
    if (v70 <= 2)
    {
      if (v70 == 1)
      {
        if ((*(v16 + 683) & 0x80) != 0)
        {
          v106 = *(v16 + 172);
        }

        else
        {
          v106 = -1;
        }

        v100 = sub_FB3F0(*(v16 + 80), *(v16 + 81), *(v16 + 82), *(v16 + 83), v106);
        goto LABEL_154;
      }

      if (v70 != 2)
      {
LABEL_155:
        v110 = sub_DF5F4(v16[3], (v84 + 1), 72736);
        if (!v110)
        {
          operator new();
        }

        v96 = v110;
        if (sub_160EF0(0xEu, 4))
        {
          v111 = sub_160F34(0xEu);
          v112 = sub_175AE4();
          v113 = sub_160F68(4);
          if (v111)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d\n", v112, 14, v113, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, v96);
            v112 = sub_175AE4();
            v113 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d", v112, 14, v113, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, v96);
        }

        goto LABEL_171;
      }
    }

    else if (v70 != 3 && v70 != 4 && v70 != 5)
    {
      goto LABEL_155;
    }

    v100 = sub_1523E0();
LABEL_154:
    v84 = v100;
    goto LABEL_155;
  }

  *&v146 = 0;
  sub_E06B8(v16[3], 72736, &v146);
  sub_E1750(v16[3], v146, &v162);
  v79 = v146;
  if (!v146)
  {
    if (sub_160EF0(3u, 4))
    {
      v85 = sub_160F34(3u);
      v86 = sub_175AE4();
      v87 = sub_160F68(4);
      if (v85)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v86, 3, v87, "AVE_USL_Drv_Start", 926, "Frame");
        v86 = sub_175AE4();
        v87 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v86, 3, v87, "AVE_USL_Drv_Start", 926, "Frame");
    }

    goto LABEL_164;
  }

  bzero((v146 + 8), 0x11C18uLL);
  v80 = v162;
  *v79 = v162;
  *(v79 + 4) = 5;
  *(v79 + 40) = *(v16 + 11);
  *(v79 + 33048) = v15[530];
  *(v79 + 16) = v142[461] != 0;
  *(v79 + 20) = *(v142 + 924);
  *&v148 = 0;
  v146 = 0u;
  v147 = 0u;
  LODWORD(v146) = v80;
  if (sub_128458(v142[460], &v146))
  {
    if (sub_160EF0(3u, 4))
    {
      v81 = sub_160F34(3u);
      v82 = sub_175AE4();
      v83 = sub_160F68(4);
      if (v81)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v82, 3, v83, "AVE_USL_Drv_Start", 946, "res == 0");
        v82 = sub_175AE4();
        v83 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread", v82, 3, v83, "AVE_USL_Drv_Start", 946, "res == 0");
    }

LABEL_135:
    v96 = 4294966296;
    v101 = v16;
LABEL_136:
    *&v146 = v15[530];
    sub_12C9EC(v101, &v146, 0);
    goto LABEL_171;
  }

  v163[0] = *v16;
  v91 = &unk_1A7265;
  if (v145)
  {
    v91 = v145;
  }

  sub_172100(v164, 512, "%s", v91);
  v176 = v162;
  v92 = *(v16 + 830);
  v93 = *(v16 + 832);
  v167 = *(v16 + 831);
  v168 = v93;
  v165 = *(v16 + 829);
  v166 = v92;
  v169 = *(v16 + 3332);
  v94 = *(v16 + 13380);
  v172 = *(v16 + 13364);
  v173 = v94;
  v95 = *(v16 + 13348);
  v170 = *(v16 + 13332);
  v171 = v95;
  v174 = *(v16 + 3349);
  v163[3] = 118000000;
  v163[4] = sub_175AE4();
  memcpy(v175, __src, sizeof(v175));
  *(v79 + 33072) = sub_175AE4();
  v96 = sub_E37DC(v16[3], v163, v161);
  if (v96)
  {
    sub_12C770(v142[460]);
    if (sub_160EF0(0x28u, 4))
    {
      v97 = sub_160F34(0x28u);
      v98 = sub_175AE4();
      v99 = sub_160F68(4);
      if (v97)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to start %d\n", v98, 40, v99, "AVE_USL_Drv_Start", 973, "ret == 0", v96);
        v98 = sub_175AE4();
        v99 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %d", v98, 40, v99, "AVE_USL_Drv_Start", 973, "ret == 0", v96);
    }

    goto LABEL_163;
  }

  *&v148 = 0;
  v146 = 0u;
  v147 = 0u;
  v102 = sub_12C7B4(v142[459], &v146, 120000000);
  if (v146 != v162)
  {
    if (sub_160EF0(3u, 4))
    {
      v107 = sub_160F34(3u);
      v108 = sub_175AE4();
      v109 = sub_160F68(4);
      if (v107)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.\n", v108, 3, v109, "AVE_USL_Drv_Start", 984, "status.counter == counter");
        v108 = sub_175AE4();
        v109 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.", v108, 3, v109, "AVE_USL_Drv_Start", 984, "status.counter == counter");
    }

    goto LABEL_135;
  }

  if (v148)
  {
    if (sub_160EF0(3u, 4))
    {
      v103 = sub_160F34(3u);
      v104 = sub_175AE4();
      v105 = sub_160F68(4);
      if (v103)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.\n", v104, 3, v105, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v148);
        v104 = sub_175AE4();
        v105 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.", v104, 3, v105, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v148);
    }

    goto LABEL_135;
  }

  if (v102)
  {
    if (sub_160EF0(3u, 4))
    {
      v114 = sub_160F34(3u);
      v115 = sub_175AE4();
      v116 = sub_160F68(4);
      if (v114)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v115, 3, v116, "AVE_USL_Drv_Start", 986, "res == 0");
        v115 = sub_175AE4();
        v116 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread", v115, 3, v116, "AVE_USL_Drv_Start", 986, "res == 0");
    }

    goto LABEL_135;
  }

  v121 = v161[2];
  v122 = DWORD1(v161[2]);
  *(v142 + 925) = v161[2];
  *(v142 + 926) = v122;
  v123 = *a9;
  if (*a9)
  {
    if (v123 != -1 && v123 > v122)
    {
      v122 = *a9;
    }
  }

  else
  {
    v122 = v121;
  }

  *a9 = v122;
  if (sub_12C8CC(v142[460], v122))
  {
    if (sub_160EF0(3u, 4))
    {
      v124 = sub_160F34(3u);
      v125 = sub_175AE4();
      v126 = sub_160F68(4);
      if (v124)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v125, 3, v126, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
        v125 = sub_175AE4();
        v126 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v125, 3, v126, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (sub_12C8CC(v142[459], *a9))
  {
    if (sub_160EF0(3u, 4))
    {
      v127 = sub_160F34(3u);
      v128 = sub_175AE4();
      v129 = sub_160F68(4);
      if (v127)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v128, 3, v129, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
        v128 = sub_175AE4();
        v129 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v128, 3, v129, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (__dst)
  {
    memcpy(__dst, &v161[2] + 8, 0x128uLL);
  }

  sub_128908(v16, __src, (v16 + 6), *a9);
  if ((*(*v15 + 666) & 1) != 0 && !v142[466])
  {
    v96 = sub_159678(*(v16 + 17), *(v16 + 16), v142 + 466);
    if (v96)
    {
      if (sub_160EF0(0x28u, 4))
      {
        v133 = sub_160F34(0x28u);
        v134 = sub_175AE4();
        v135 = sub_160F68(4);
        v137 = *(v16 + 16);
        v136 = *(v16 + 17);
        if (v133)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d\n", v134, 40, v135, "AVE_USL_Drv_Start", 1036, "ret == 0", v136, v137, *v16, v96);
          v138 = sub_175AE4();
          v139 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v138, 40, v139, "AVE_USL_Drv_Start", 1036, "ret == 0", *(v16 + 17), *(v16 + 16), *v16, v96);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v134, 40, v135, "AVE_USL_Drv_Start", 1036, "ret == 0", v136, v137, *v16, v96);
        }
      }

      goto LABEL_163;
    }
  }

  v96 = sub_13E648(v16 + 6, *v16, v16 + 16);
  if (v96)
  {
    if (sub_160EF0(0x28u, 4))
    {
      v130 = sub_160F34(0x28u);
      v131 = sub_175AE4();
      v132 = sub_160F68(4);
      if (v130)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v131, 40, v132, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, v96);
        v131 = sub_175AE4();
        v132 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d", v131, 40, v132, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, v96);
    }

LABEL_163:
    v101 = v16;
    if (v96 != -1003)
    {
      goto LABEL_136;
    }

LABEL_164:
    v96 = 4294966293;
    goto LABEL_171;
  }

  *(v16 + 40) = 1;
LABEL_171:
  if (sub_160EF0(0x28u, 7))
  {
    v117 = sub_160F34(0x28u);
    v118 = sub_175AE4();
    v119 = sub_160F68(7);
    if (v117)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.\n", v118, 40, v119, v96);
      v118 = sub_175AE4();
      v119 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.", v118, 40, v119, v96);
  }

  return v96;
}

void sub_12C700(uint64_t a1)
{
  pthread_mutex_init(a1, 0);
  pthread_cond_init((a1 + 64), 0);
  pthread_cond_init((a1 + 112), 0);
  *(a1 + 192) = vdupq_n_s64(0x80uLL);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  operator new[]();
}

uint64_t sub_12C770(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 216);
  if (v2 >= 1 && v2 > *(a1 + 208))
  {
    *(a1 + 216) = v2 - 1;
  }

  pthread_mutex_unlock(a1);
  return 0;
}

uint64_t sub_12C7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(a1);
  v6 = a3 / 1000000;
  v7 = a3 % 1000000;
  while (1)
  {
    v8 = *(a1 + 208);
    if (*(a1 + 216) > v8)
    {
      break;
    }

    gettimeofday((a1 + 176), 0);
    v9 = 1000 * (v7 + *(a1 + 184));
    *(a1 + 160) = *(a1 + 176) + v6;
    *(a1 + 168) = v9;
    if (pthread_cond_timedwait((a1 + 64), a1, (a1 + 160)) == 60)
    {
      v10 = 0xFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  v11 = *(a1 + 224) + 40 * (v8 % *(a1 + 192));
  v12 = *v11;
  v13 = *(v11 + 16);
  *(a2 + 32) = *(v11 + 32);
  *a2 = v12;
  *(a2 + 16) = v13;
  v14 = *(a1 + 200);
  v15 = *(a1 + 208) + 1;
  *(a1 + 208) = v15;
  v16 = *(a1 + 216);
  v17 = __OFSUB__(v16, v15);
  v18 = v16 - v15;
  if ((v18 < 0) ^ v17 | (v18 == 0))
  {
    v18 = 0;
  }

  if (v18 < v14)
  {
    pthread_cond_signal((a1 + 112));
  }

  v10 = 0;
LABEL_11:
  pthread_mutex_unlock(a1);
  return v10;
}

uint64_t sub_12C8CC(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock(a1);
  if (*(a1 + 192) >= a2)
  {
    v11 = 0;
    *(a1 + 200) = a2;
  }

  else
  {
    if (sub_160EF0(0x2Au, 4))
    {
      v4 = sub_160F34(0x2Au);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      v8 = *(a1 + 208);
      v7 = *(a1 + 216);
      v9 = v7 <= v8;
      v10 = v7 - v8;
      if (v9)
      {
        v10 = 0;
      }

      if (v4)
      {
        printf("%lld %d AVE %s: configure connection size fail %lld %lld %d %lld\n", v5, 42, v6, *(a1 + 192), *(a1 + 200), a2, v10);
        v5 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: configure connection size fail %lld %lld %d %lld", v5);
    }

    v11 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock(a1);
  return v11;
}

uint64_t sub_12C9EC(uint64_t a1, uint64_t *a2, int a3)
{
  v50 = -1;
  if (sub_160EF0(0x28u, 7))
  {
    v6 = sub_160F34(0x28u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.\n", v7, 40, v8);
      v9 = sub_175AE4();
      v43 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v9, 40, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v7, 40, v8);
    }
  }

  if (a1)
  {
    v49 = *a2;
    if (sub_12D170(a1, &v49) == -1004)
    {
      v10 = 4294966292;
    }

    else
    {
      *v47 = 0;
      sub_E06B8(*(a1 + 24), 72736, v47);
      sub_E1750(*(a1 + 24), *v47, &v50);
      v15 = *v47;
      if (!*v47)
      {
        if (sub_160EF0(3u, 4))
        {
          v20 = sub_160F34(3u);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
            v23 = sub_175AE4();
            v45 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v23, 3, v45, "AVE_USL_Drv_Stop", 1103, "Frame");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
          }
        }

        v10 = 4294966293;
        goto LABEL_32;
      }

      bzero((*v47 + 8), 0x11C18uLL);
      v16 = v50;
      *v15 = v50;
      *(v15 + 4) = 6;
      *(v15 + 40) = *(a1 + 44);
      *(v15 + 33048) = *a2;
      *(v15 + 16) = *(a1 + 106088) != 0;
      *(v15 + 20) = *(a1 + 106096);
      memset(v47, 0, sizeof(v47));
      *v47 = v16;
      if (sub_128458(*(a1 + 106080), v47))
      {
        if (sub_160EF0(3u, 4))
        {
          v17 = sub_160F34(3u);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v18, 3, v19, "AVE_USL_Drv_Stop", 1123, "res == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }
      }

      else
      {
        *&v47[24] = 0u;
        *&v47[8] = 0u;
        memset(v46, 0, sizeof(v46));
        *v47 = *a1;
        v48 = v50;
        *&v47[24] = 118000000;
        *&v47[32] = sub_175AE4();
        v24 = sub_E3C60(*(a1 + 24), v47, v46);
        if (v24)
        {
          v10 = v24;
          v25 = *(a1 + 106080);
          pthread_mutex_lock(v25);
          v26 = *(v25 + 216);
          if (v26 >= 1 && v26 > *(v25 + 208))
          {
            *(v25 + 216) = v26 - 1;
          }

          pthread_mutex_unlock(v25);
          if (sub_160EF0(0x28u, 4))
          {
            v27 = sub_160F34(0x28u);
            v28 = sub_175AE4();
            v29 = sub_160F68(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v28, 40, v29, "AVE_USL_Drv_Stop", 1140, "ret == 0", v10);
              v28 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v28);
          }

          goto LABEL_32;
        }

        memset(v47, 0, sizeof(v47));
        v36 = sub_12C7B4(*(a1 + 106072), v47, 120000000);
        if (*v47 == v50)
        {
          if (!v36)
          {
            v10 = 0;
            goto LABEL_32;
          }

          if (sub_160EF0(3u, 4))
          {
            v37 = sub_160F34(3u);
            v38 = sub_175AE4();
            v39 = sub_160F68(4);
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v38, 3, v39, "AVE_USL_Drv_Stop", 1152, "res == 0");
              sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
          }
        }

        else if (sub_160EF0(3u, 4))
        {
          v40 = sub_160F34(3u);
          v41 = sub_175AE4();
          v42 = sub_160F68(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v41, 3, v42, "AVE_USL_Drv_Stop", 1151, "status.counter == counter");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
        }
      }

      v10 = 4294966296;
    }

LABEL_32:
    if (a3)
    {
      sub_129604(a1);
    }

    *(a1 + 40) = 0;
    goto LABEL_35;
  }

  if (sub_160EF0(3u, 4))
  {
    v11 = sub_160F34(3u);
    v12 = sub_175AE4();
    v13 = sub_160F68(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.\n", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
      v14 = sub_175AE4();
      v44 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v14, 3, v44, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }
  }

  v10 = 4294966295;
LABEL_35:
  if (sub_160EF0(0x28u, 7))
  {
    v30 = sub_160F34(0x28u);
    v31 = sub_175AE4();
    v32 = sub_160F68(7);
    if (v30)
    {
      if (a1)
      {
        v33 = *(a1 + 44);
      }

      else
      {
        v33 = 0;
      }

      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Stop F %d %d\n", v31, 40, v32, v33, v10);
      v31 = sub_175AE4();
      v32 = sub_160F68(7);
      if (!a1)
      {
        goto LABEL_43;
      }
    }

    else if (!a1)
    {
LABEL_43:
      v34 = 0;
      goto LABEL_44;
    }

    v34 = *(a1 + 44);
LABEL_44:
    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Stop F %d %d", v31, 40, v32, v34, v10);
  }

  return v10;
}

uint64_t sub_12D170(uint64_t a1, void *a2)
{
  v54 = -1;
  if (sub_160EF0(0x28u, 7))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.\n", v5, 40, v6);
      v7 = sub_175AE4();
      v47 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", v7, 40, v47);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", v5, 40, v6);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) != 1)
    {
      v17 = 4294966292;
      goto LABEL_32;
    }

    *v52 = 0;
    sub_E06B8(*(a1 + 24), 72736, v52);
    sub_E1750(*(a1 + 24), *v52, &v54);
    v8 = *v52;
    if (*v52)
    {
      bzero((*v52 + 8), 0x11C18uLL);
      v9 = v54;
      *v8 = v54;
      *(v8 + 4) = 8;
      *(v8 + 40) = *(a1 + 44);
      *(v8 + 33048) = *a2;
      *(v8 + 16) = *(a1 + 106088) != 0;
      *(v8 + 20) = *(a1 + 106096);
      memset(v52, 0, sizeof(v52));
      *v52 = v9;
      if (sub_128458(*(a1 + 106080), v52))
      {
        if (sub_160EF0(3u, 4))
        {
          v10 = sub_160F34(3u);
          v11 = sub_175AE4();
          v12 = sub_160F68(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v11, 3, v12, "AVE_USL_Drv_Complete", 1215, "res == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }

LABEL_29:
        v17 = 4294966296;
        goto LABEL_32;
      }

      *&v52[24] = 0u;
      *&v52[8] = 0u;
      v50 = 0u;
      v51 = 0u;
      *v52 = *a1;
      v53 = v54;
      *&v52[24] = 118000000;
      *&v52[32] = sub_175AE4();
      v22 = sub_E4548(*(a1 + 24), v52, &v50);
      if (!v22)
      {
        v32 = *(a1 + 106072);
        pthread_mutex_lock(v32);
        do
        {
          v34 = *(v32 + 208);
          v33 = *(v32 + 216);
          if (v33 > v34)
          {
            v37 = *(v32 + 200);
            v36 = *(*(v32 + 224) + 40 * (v34 % *(v32 + 192)));
            v38 = v34 + 1;
            *(v32 + 208) = v38;
            v39 = v33 <= v38;
            v40 = v33 - v38;
            if (v39)
            {
              v40 = 0;
            }

            if (v40 < v37)
            {
              pthread_cond_signal((v32 + 112));
            }

            pthread_mutex_unlock(v32);
            if (v36 == v54)
            {
              v17 = 0;
              goto LABEL_32;
            }

            goto LABEL_50;
          }

          gettimeofday((v32 + 176), 0);
          v35 = 1000 * *(v32 + 184);
          *(v32 + 160) = *(v32 + 176) + 120;
          *(v32 + 168) = v35;
        }

        while (pthread_cond_timedwait((v32 + 64), v32, (v32 + 160)) != 60);
        pthread_mutex_unlock(v32);
        if (v54)
        {
          v36 = 0;
LABEL_50:
          if (sub_160EF0(3u, 4))
          {
            v41 = sub_160F34(3u);
            v42 = sub_175AE4();
            v43 = sub_160F68(4);
            if (v41)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).\n", v42, 3, v43, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v36, v54);
              v42 = sub_175AE4();
              v43 = sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).", v42, 3, v43, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v36, v54, v50, v51);
          }

          goto LABEL_29;
        }

        if (sub_160EF0(3u, 4))
        {
          v44 = sub_160F34(3u);
          v45 = sub_175AE4();
          v46 = sub_160F68(4);
          if (v44)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v45, 3, v46, "AVE_USL_Drv_Complete", 1244, "res == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
        }

        goto LABEL_29;
      }

      v17 = v22;
      v23 = *(a1 + 106080);
      pthread_mutex_lock(v23);
      v24 = *(v23 + 216);
      if (v24 >= 1 && v24 > *(v23 + 208))
      {
        *(v23 + 216) = v24 - 1;
      }

      pthread_mutex_unlock(v23);
      if (sub_160EF0(0x28u, 4))
      {
        v25 = sub_160F34(0x28u);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %d\n", v26, 40, v27, "AVE_USL_Drv_Complete", 1232, "ret == 0", v17);
          v26 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %d", v26);
      }
    }

    else
    {
      if (sub_160EF0(3u, 4))
      {
        v18 = sub_160F34(3u);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
          v21 = sub_175AE4();
          v49 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v21, 3, v49, "AVE_USL_Drv_Complete", 1195, "Frame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
        }
      }

      v17 = 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(3u, 4))
    {
      v13 = sub_160F34(3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
        v16 = sub_175AE4();
        v48 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.", v16, 3, v48, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
      }
    }

    v17 = 4294966295;
  }

LABEL_32:
  if (sub_160EF0(0x28u, 7))
  {
    v28 = sub_160F34(0x28u);
    v29 = sub_175AE4();
    v30 = sub_160F68(7);
    if (v28)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d\n", v29, 40, v30, *(a1 + 44), v17);
      v29 = sub_175AE4();
      v30 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d", v29, 40, v30, *(a1 + 44), v17);
  }

  return v17;
}

uint64_t sub_12D95C(void *a1, uint64_t a2)
{
  v143[0] = -1;
  pixelBufferOut = 0;
  if (sub_160EF0(0x28u, 7))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame\n", v5, 40, v6);
      v7 = sub_175AE4();
      v125 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", v7, 40, v125);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", v5, 40, v6);
    }
  }

  if (!a1)
  {
    if (sub_160EF0(3u, 4))
    {
      v14 = sub_160F34(3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.\n", v15, 3, v16, "AVE_USL_Drv_Process", 1268, "pDriverInstance");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.");
    }

    goto LABEL_58;
  }

  if (!a2)
  {
    if (sub_160EF0(3u, 4))
    {
      v17 = sub_160F34(3u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.\n", v18, 3, v19, "AVE_USL_Drv_Process", 1269, "pSettings");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.");
    }

    goto LABEL_58;
  }

  if ((a1[5] & 1) == 0)
  {
    if (sub_160EF0(3u, 4))
    {
      v20 = sub_160F34(3u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.\n", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
        v23 = sub_175AE4();
        v127 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.", v23, 3, v127, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
      }
    }

    v27 = 4294966285;
    goto LABEL_59;
  }

  if (!*(a2 + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v24 = sub_160F34(3u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL\n", v25, 3, v26, "AVE_USL_Drv_Process", 1271, "pSettings->CVImageBuffer");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL");
    }

    goto LABEL_58;
  }

  v8 = *(a1 + 2);
  if (v8 != 5 && v8 != 3)
  {
    goto LABEL_36;
  }

  if (!*(a2 + 24))
  {
    if (sub_160EF0(3u, 4))
    {
      v28 = sub_160F34(3u);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL\n", v29, 3, v30, "AVE_USL_Drv_Process", 1276, "pSettings->CVImageBufferOutput");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL");
    }

LABEL_58:
    v27 = 4294966295;
    goto LABEL_59;
  }

  if (sub_160EF0(0x28u, 7))
  {
    v9 = sub_160F34(0x28u);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    v12 = *(a2 + 24);
    if (v9)
    {
      printf("%lld %d AVE %s: pSettings->CVImageBufferOutput = %p\n", v10, 40, v11, v12);
      v13 = sub_175AE4();
      v126 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v13, 40, v126, *(a2 + 24));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v10, 40, v11, v12);
    }
  }

LABEL_36:
  *v140 = 0;
  sub_E06B8(a1[3], 72736, v140);
  sub_E1750(a1[3], *v140, v143);
  v31 = *v140;
  if (*v140)
  {
    v32 = a1 + 13260;
    bzero((*v140 + 8), 0x11C18uLL);
    *v31 = v143[0];
    *(v31 + 4) = 7;
    *(v31 + 40) = *(a1 + 11);
    *(v31 + 44) = *(a2 + 188);
    *(v31 + 16) = a1[13261] != 0;
    *(v31 + 20) = *(a1 + 26524);
    *(v31 + 2552) = *a2;
    *(v31 + 2600) = *(a2 + 56);
    IOSurface = CVPixelBufferGetIOSurface(*(a2 + 8));
    *(v31 + 2508) = IOSurfaceGetID(IOSurface);
    v34 = CVPixelBufferGetIOSurface(*(a2 + 16));
    *(v31 + 2512) = IOSurfaceGetID(v34);
    v35 = *(*(a2 + 144) + 19000);
    if (v35)
    {
      v36 = CVPixelBufferGetIOSurface(v35);
      *(v31 + 2516) = IOSurfaceGetID(v36);
    }

    v37 = *(a1 + 2);
    if (v37 > 3)
    {
      if (v37 == 4)
      {
        *(v31 + 2552) = *a2;
        *(v31 + 2560) = *(a2 + 8);
        if (sub_160EF0(0x28u, 7))
        {
          v48 = sub_160F34(0x28u);
          v49 = sub_175AE4();
          v50 = sub_160F68(7);
          if (v48)
          {
            printf("%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d\n", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
            v49 = sub_175AE4();
            v50 = sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
        }

        v55 = *(a2 + 32);
        *(v31 + 2576) = v55;
        if (v55)
        {
          v56 = CVPixelBufferGetIOSurface(v55);
          *(v31 + 2536) = IOSurfaceGetID(v56);
          if (sub_160EF0(0x28u, 7))
          {
            v57 = sub_160F34(0x28u);
            v58 = sub_175AE4();
            v59 = sub_160F68(7);
            if (v57)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d\n", v58, 40, v59, "AVE_USL_Drv_Process", *(v31 + 2536));
              v58 = sub_175AE4();
              v59 = sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d", v58, 40, v59, "AVE_USL_Drv_Process", *(v31 + 2536));
          }
        }

        v60 = 0;
        v61 = v31 + 2528;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *(a2 + 40 + 8 * v60);
          *(v31 + 2584 + 8 * v60) = v64;
          if (v64)
          {
            v65 = CVPixelBufferGetIOSurface(v64);
            *(v61 + 4 * v60) = IOSurfaceGetID(v65);
            if (sub_160EF0(0x28u, 7))
            {
              v66 = sub_160F34(0x28u);
              v67 = sub_175AE4();
              v68 = sub_160F68(7);
              v69 = *(v61 + 4 * v60);
              if (v66)
              {
                printf("%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d\n", v67, 40, v68, "AVE_USL_Drv_Process", v60, v69);
                v70 = sub_175AE4();
                v71 = sub_160F68(7);
                syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d", v70, 40, v71, "AVE_USL_Drv_Process", v60, *(v61 + 4 * v60));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d", v67, 40, v68, "AVE_USL_Drv_Process", v60, v69);
              }
            }
          }

          v62 = 0;
          v60 = 1;
        }

        while ((v63 & 1) != 0);
        v72 = *(a2 + 24);
        v32 = a1 + 13260;
        *(v31 + 2568) = v72;
        if (v72)
        {
          v73 = CVPixelBufferGetIOSurface(v72);
          *(v31 + 2540) = IOSurfaceGetID(v73);
          if (sub_160EF0(0x28u, 7))
          {
            v74 = sub_160F34(0x28u);
            v75 = sub_175AE4();
            v76 = sub_160F68(7);
            if (v74)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d\n", v75, 40, v76, "AVE_USL_Drv_Process", *(v31 + 2540));
              v75 = sub_175AE4();
              v76 = sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d", v75, 40, v76, "AVE_USL_Drv_Process", *(v31 + 2540));
          }
        }
      }

      else if (v37 == 5)
      {
        *(v31 + 2552) = *a2;
        v46 = *(a2 + 24);
        *(v31 + 2568) = v46;
        v47 = CVPixelBufferGetIOSurface(v46);
        *(v31 + 2544) = IOSurfaceGetID(v47);
      }
    }

    else if (v37 == 2)
    {
      *(v31 + 2552) = *a2;
    }

    else if (v37 == 3)
    {
      *(v31 + 2560) = *(a2 + 8);
      v38 = *(a2 + 24);
      *(v31 + 2568) = v38;
      *(v31 + 2584) = *(a2 + 40);
      v39 = CVPixelBufferGetIOSurface(v38);
      *(v31 + 2520) = IOSurfaceGetID(v39);
      v40 = *(a2 + 40);
      if (v40)
      {
        v41 = CVPixelBufferGetIOSurface(v40);
        *(v31 + 2524) = IOSurfaceGetID(v41);
      }
    }

    v77 = *(a2 + 72);
    *(v31 + 4576) = *(a2 + 88);
    *(v31 + 4560) = v77;
    v78 = *(a2 + 112);
    *(v31 + 4584) = *(a2 + 96);
    *(v31 + 4600) = v78;
    *(v31 + 4608) = *(a2 + 120);
    *(v31 + 33048) = *(a2 + 160);
    v79 = *(a2 + 136);
    v80 = *(v79 + 16);
    *(v31 + 4632) = *v79;
    *(v31 + 4648) = v80;
    v81 = *(v79 + 32);
    v82 = *(v79 + 48);
    v83 = *(v79 + 64);
    *(v31 + 4712) = *(v79 + 80);
    *(v31 + 4680) = v82;
    *(v31 + 4696) = v83;
    *(v31 + 4664) = v81;
    memcpy((v31 + 4720), *(a2 + 144), 0x4A40uLL);
    memcpy((v31 + 23728), *(a2 + 152), 0x1738uLL);
    if (*(a1 + 13256) == 1)
    {
      v85 = *(a2 + 64);
      if (v85)
      {
        if (*(a1 + 3351))
        {
          if (!v32[4])
          {
            if (sub_160EF0(0x28u, 4))
            {
              v107 = sub_160F34(0x28u);
              v108 = sub_175AE4();
              v109 = sub_160F68(4);
              if (v107)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get VCP %p\n", v108, 40, v109, "AVE_USL_Drv_Process", 1413, "pDriverInstance->pcVCP != __null", a1);
                v108 = sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VCP %p", v108);
            }

            v27 = 4294966281;
            goto LABEL_142;
          }

          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          if (!Mutable)
          {
            if (sub_160EF0(0x28u, 4))
            {
              v113 = sub_160F34(0x28u);
              v114 = sub_175AE4();
              v115 = sub_160F68(4);
              if (v113)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray\n", v114, 40, v115, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
                v116 = sub_175AE4();
                v131 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray", v116, 40, v131, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray", v114, 40, v115, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
              }
            }

            v27 = 4294966293;
            goto LABEL_142;
          }

          v87 = Mutable;
          sub_170570((v31 + 4788), *(v31 + 4776), Mutable);
          sub_D8AA4(v32[4], *(a2 + 64), v87);
          CFRelease(v87);
          v85 = *(a2 + 64);
        }

        sub_16F3AC(v85, (v31 + 3184));
      }
    }

    sub_12897C(a1, v84, v31, (a1 + 6));
    v88 = v32[6];
    if (v88)
    {
      v89 = CVPixelBufferPoolCreatePixelBuffer(0, v88, &pixelBufferOut);
      if (v89)
      {
        v27 = v89;
        if (!sub_160EF0(0x28u, 4))
        {
          goto LABEL_142;
        }

        v90 = sub_160F34(0x28u);
        v91 = sub_175AE4();
        v92 = sub_160F68(4);
        if (v90)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d\n", v91, 40, v92, "AVE_USL_Drv_Process", 1440, "ret == 0", v32[6], v27);
          v91 = sub_175AE4();
          v92 = sub_160F68(4);
        }

        v135 = v32[6];
        v137 = v27;
        v133 = 1440;
        v129 = v92;
        v93 = "%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d";
        goto LABEL_112;
      }

      v95 = CVPixelBufferGetIOSurface(pixelBufferOut);
      if (!v95)
      {
        if (sub_160EF0(0x28u, 4))
        {
          v104 = sub_160F34(0x28u);
          v105 = sub_175AE4();
          v106 = sub_160F68(4);
          if (v104)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d\n", v105, 40, v106, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
            v105 = sub_175AE4();
            v106 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d", v105, 40, v106, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
        }

        goto LABEL_141;
      }

      ID = IOSurfaceGetID(v95);
    }

    else
    {
      ID = 0;
    }

    v96 = sub_13E990(a1 + 12, *a1, (a1 + 16), a1 + 17, ID);
    if (v96)
    {
      v27 = v96;
      if (!sub_160EF0(0x28u, 4))
      {
        goto LABEL_142;
      }

      v97 = sub_160F34(0x28u);
      v98 = sub_175AE4();
      v99 = sub_160F68(4);
      if (v97)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v98, 40, v99, "AVE_USL_Drv_Process", 1454, "ret == 0", *a1, *(v31 + 40));
        v98 = sub_175AE4();
        v99 = sub_160F68(4);
      }

      v136 = *a1;
      v138 = *(v31 + 40);
      v134 = 1454;
      v130 = v99;
      v100 = "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d";
LABEL_129:
      syslog(3, v100, v98, 40, v130, "AVE_USL_Drv_Process", v134, "ret == 0", v136, v138);
      goto LABEL_142;
    }

    *(v31 + 2608) = pixelBufferOut;
    v101 = sub_12EE74(a1, v31);
    if (v101)
    {
      v27 = v101;
      if (!sub_160EF0(0x28u, 4))
      {
        goto LABEL_142;
      }

      v102 = sub_160F34(0x28u);
      v98 = sub_175AE4();
      v103 = sub_160F68(4);
      if (v102)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d\n", v98, 40, v103, "AVE_USL_Drv_Process", 1462, "ret == 0", *a1, *(v31 + 40));
        v98 = sub_175AE4();
        v103 = sub_160F68(4);
      }

      v136 = *a1;
      v138 = *(v31 + 40);
      v134 = 1462;
      v130 = v103;
      v100 = "%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d";
      goto LABEL_129;
    }

    sub_12F0B4(a1, v31);
    sub_13E888(a1 + 17, (v31 + 2500));
    memset(v140, 0, sizeof(v140));
    *v140 = v143[0];
    *&v140[8] = *(v31 + 4560);
    *&v140[24] = *(v31 + 4576);
    if (sub_128458(*v32, v140))
    {
      if (sub_160EF0(3u, 4))
      {
        v110 = sub_160F34(3u);
        v111 = sub_175AE4();
        v112 = sub_160F68(4);
        if (v110)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v111, 3, v112, "AVE_USL_Drv_Process", 1482, "res == 0");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

LABEL_141:
      v27 = 4294966296;
      goto LABEL_142;
    }

    *&v140[24] = 0u;
    *&v140[8] = 0u;
    memset(v139, 0, sizeof(v139));
    *v140 = *a1;
    v141 = v143[0];
    *&v140[16] = *(v31 + 40);
    *&v140[24] = 58000000;
    *&v140[32] = sub_175AE4();
    *(v31 + 33072) = sub_175AE4();
    v117 = sub_E40D4(a1[3], v140, v139);
    if (v117)
    {
      v27 = v117;
      sub_12C770(*v32);
      if (sub_160EF0(0x28u, 4))
      {
        v118 = sub_160F34(0x28u);
        v91 = sub_175AE4();
        v119 = sub_160F68(4);
        if (v118)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v91, 40, v119, "AVE_USL_Drv_Process", 1503, "ret == 0", v27);
          v91 = sub_175AE4();
          v135 = v27;
          v133 = 1503;
          v129 = sub_160F68(4);
        }

        else
        {
          v135 = v27;
          v133 = 1503;
          v129 = v119;
        }

        v93 = "%lld %d AVE %s: %s:%d %s | fail to process %d";
LABEL_112:
        syslog(3, v93, v91, 40, v129, "AVE_USL_Drv_Process", v133, "ret == 0", v135, v137);
      }

LABEL_142:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      goto LABEL_59;
    }

    pixelBufferOut = 0;
    v120 = *(a1 + 11) + 1;
    *(a1 + 11) = v120;
    if (v120 != *(a1 + 2999) || *(a1 + 3048) == 2 || (*(a1 + 138) & 0x3C0) != 0)
    {
      v27 = 0;
    }

    else if ((*(a1 + 2) - 2) >= 4)
    {
      *v140 = sub_175AE4();
      v27 = sub_12D170(a1, v140);
      if (v27 && sub_160EF0(3u, 4))
      {
        v121 = sub_160F34(3u);
        v122 = sub_175AE4();
        v123 = sub_160F68(4);
        if (v121)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.\n", v122, 3, v123, "AVE_USL_Drv_Process", 1535, "ret == 0");
          v124 = sub_175AE4();
          v132 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.", v124, 3, v132, "AVE_USL_Drv_Process", 1535, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.", v122, 3, v123, "AVE_USL_Drv_Process", 1535, "ret == 0");
        }
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    if (sub_160EF0(3u, 4))
    {
      v42 = sub_160F34(3u);
      v43 = sub_175AE4();
      v44 = sub_160F68(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.\n", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
        v45 = sub_175AE4();
        v128 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.", v45, 3, v128, "AVE_USL_Drv_Process", 1293, "Frame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
      }
    }

    v27 = 4294966293;
  }

LABEL_59:
  sub_13ED4C((a1 + 17));
  if (sub_160EF0(0x28u, 7))
  {
    v51 = sub_160F34(0x28u);
    v52 = sub_175AE4();
    v53 = sub_160F68(7);
    if (v51)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d\n", v52, 40, v53, *(a1 + 11) - 1, v27);
      v52 = sub_175AE4();
      v53 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d", v52, 40, v53, *(a1 + 11) - 1, v27);
  }

  return v27;
}

uint64_t sub_12EE74(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 136);
  if (result)
  {
    if (!*(a2 + 4744))
    {
      return 0;
    }

    v5 = *(a1 + 12212);
    if (v5 == 2)
    {
      v6 = sub_132380(result, 0);
      v13 = *(a1 + 2880);
      v14 = *(a1 + 2884);
      v15 = (v13 + 31) & 0xFFFFFFE0;
      v16 = (v14 + 31) >> 5;
      v17 = (v13 + 63) & 0xFFFFFFC0;
      v18 = ((v14 + 63) >> 5) & 0x7FFFFFE;
      if (*(a1 + 20) < 30)
      {
        v19 = v16;
      }

      else
      {
        v15 = v17;
        v19 = v18;
      }

      v11 = *(a2 + 4744);
      v12 = v15 * v19;
LABEL_12:
      if (*(a2 + 4752) < v12)
      {
        if (sub_160EF0(0x28u, 5))
        {
          v20 = sub_160F34(0x28u);
          v21 = sub_175AE4();
          v22 = sub_160F68(5);
          if (v20)
          {
            printf("%lld %d AVE %s: UserQpMapSize (%d) is smaller than required (%d), copying only received data\n", v21, 40, v22, *(a2 + 4752), v12);
            v21 = sub_175AE4();
            v22 = sub_160F68(5);
          }

          syslog(3, "%lld %d AVE %s: UserQpMapSize (%d) is smaller than required (%d), copying only received data", v21, 40, v22, *(a2 + 4752), v12);
        }

        v12 = *(a2 + 4752);
      }

      memcpy(v6, v11, v12);
      return 0;
    }

    if (v5 == 1)
    {
      v6 = sub_132380(result, 0);
      v7 = *(a1 + 2880);
      v8 = (v7 + 15) >> 4;
      v9 = (*(a1 + 2884) + 15) & 0xFFFFFFF0;
      v10 = ((v7 + 63) >> 4) & 0xFFFFFFC;
      if (*(a1 + 20) <= 29)
      {
        v10 = v8;
      }

      v11 = *(a2 + 4744);
      v12 = v9 * v10;
      goto LABEL_12;
    }

    if (sub_160EF0(0x28u, 4))
    {
      v23 = sub_160F34(0x28u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      v26 = *(a1 + 12212);
      if (v23)
      {
        printf("%lld %d AVE %s: wrong encode type %d\n", v24, 40, v25, v26);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: wrong encode type %d", v27, 40, v28, *(a1 + 12212));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: wrong encode type %d", v24, 40, v25, v26);
      }
    }

    return 4294966295;
  }

  return result;
}

void sub_12F0B4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 102400;
  if (!*(a1 + 106096))
  {
    return;
  }

  *(a2 + 24) = 2;
  v5 = *(a1 + 108);
  v6 = sub_132380(*(a1 + 144), 0);
  v7 = v6;
  v8 = *(a2 + 23712);
  if (v8)
  {
    *(a2 + 16) = 1;
LABEL_6:

    memcpy(v6, v8, v5);
    return;
  }

  v9 = (a2 + 23446);
  sub_115EF8(*(v2 + 3664), (a2 + 23446));
  if (*(a1 + 44))
  {
    *(a2 + 4724) = 0;
    memcpy(v7, (a2 + 23446), 0x108uLL);
    v6 = (v7 + 264);
    v8 = (a2 + 6132);
    goto LABEL_6;
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v10 = sub_160F34(0xD8u);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: ------ Sequence RC Info ------\n", v11, 216, v12);
      v13 = sub_175AE4();
      v78 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: ------ Sequence RC Info ------", v13, 216, v78);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ------ Sequence RC Info ------", v11, 216, v12);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v14 = sub_160F34(0xD8u);
    v15 = sub_175AE4();
    v16 = sub_160F68(6);
    v17 = *v9;
    if (v14)
    {
      printf("%lld %d AVE %s:  total_scenes %u\n", v15, 216, v16, v17);
      v18 = sub_175AE4();
      v79 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v18, 216, v79, *v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v15, 216, v16, v17);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v19 = sub_160F34(0xD8u);
    v20 = sub_175AE4();
    v21 = sub_160F68(6);
    v22 = *(a2 + 23450);
    if (v19)
    {
      printf("%lld %d AVE %s:  cnt_All %u\n", v20, 216, v21, v22);
      v23 = sub_175AE4();
      v80 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v23, 216, v80, *(a2 + 23450));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v20, 216, v21, v22);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v24 = sub_160F34(0xD8u);
    v25 = sub_175AE4();
    v26 = sub_160F68(6);
    v27 = *(a2 + 23454);
    if (v24)
    {
      printf("%lld %d AVE %s:  bits_All %llu\n", v25, 216, v26, v27);
      v28 = sub_175AE4();
      v81 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v28, 216, v81, *(a2 + 23454));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v25, 216, v26, v27);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v29 = sub_160F34(0xD8u);
    v30 = sub_175AE4();
    v31 = sub_160F68(6);
    v32 = *(a2 + 23474);
    if (v29)
    {
      printf("%lld %d AVE %s:  cnt_NORMAL %u\n", v30, 216, v31, v32);
      v33 = sub_175AE4();
      v82 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v33, 216, v82, *(a2 + 23474));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v30, 216, v31, v32);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v34 = sub_160F34(0xD8u);
    v35 = sub_175AE4();
    v36 = sub_160F68(6);
    v37 = *(a2 + 23478);
    if (v34)
    {
      printf("%lld %d AVE %s:  bits_NORMAL %llu\n", v35, 216, v36, v37);
      v38 = sub_175AE4();
      v83 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v38, 216, v83, *(a2 + 23478));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v35, 216, v36, v37);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v39 = sub_160F34(0xD8u);
    v40 = sub_175AE4();
    v41 = sub_160F68(6);
    v42 = *(a2 + 23486);
    if (v39)
    {
      printf("%lld %d AVE %s:  cnt_MIN %u\n", v40, 216, v41, v42);
      v43 = sub_175AE4();
      v84 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v43, 216, v84, *(a2 + 23486));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v40, 216, v41, v42);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v44 = sub_160F34(0xD8u);
    v45 = sub_175AE4();
    v46 = sub_160F68(6);
    v47 = *(a2 + 23490);
    if (v44)
    {
      printf("%lld %d AVE %s:  bits_MIN %llu\n", v45, 216, v46, v47);
      v48 = sub_175AE4();
      v85 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v48, 216, v85, *(a2 + 23490));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v45, 216, v46, v47);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v49 = sub_160F34(0xD8u);
    v50 = sub_175AE4();
    v51 = sub_160F68(6);
    v52 = *(a2 + 23498);
    if (v49)
    {
      printf("%lld %d AVE %s:  cnt_MAX %u\n", v50, 216, v51, v52);
      v53 = sub_175AE4();
      v86 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v53, 216, v86, *(a2 + 23498));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v50, 216, v51, v52);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v54 = sub_160F34(0xD8u);
    v55 = sub_175AE4();
    v56 = sub_160F68(6);
    v57 = *(a2 + 23502);
    if (v54)
    {
      printf("%lld %d AVE %s:  bits_MAX %llu\n", v55, 216, v56, v57);
      v58 = sub_175AE4();
      v87 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v58, 216, v87, *(a2 + 23502));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v55, 216, v56, v57);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v59 = sub_160F34(0xD8u);
    v60 = sub_175AE4();
    v61 = sub_160F68(6);
    v62 = *(a2 + 23510);
    if (v59)
    {
      printf("%lld %d AVE %s:  cnt_BLANK %u\n", v60, 216, v61, v62);
      v63 = sub_175AE4();
      v88 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v63, 216, v88, *(a2 + 23510));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v60, 216, v61, v62);
    }
  }

  sub_115EF8(*(v2 + 3664), (a2 + 23446));
  memcpy(v7, (a2 + 23446), 0x108uLL);
  memcpy(v7 + 264, (a2 + 6132), v5);
  for (i = 0; i != 11; ++i)
  {
    if (sub_160EF0(0xD8u, 6))
    {
      v65 = sub_160F34(0xD8u);
      v66 = sub_175AE4();
      v67 = sub_160F68(6);
      v68 = *(v7 + 371);
      v69 = *(v7 + 1492);
      v70 = *(v7 + 1508);
      v71 = *(v7 + 1516);
      v72 = *(v7 + 1524);
      v73 = *(v7 + 1532);
      v74 = *(v7 + 1540);
      v75 = *(v7 + 388);
      if (v65)
      {
        printf("%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f\n", v66, 216, v67, i, v68, v69, v70, v71, v72, v73, v74, *(v7 + 387), v75);
        v76 = sub_175AE4();
        v77 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f", v76, 216, v77, i, *(v7 + 371), *(v7 + 1492), *(v7 + 1508), *(v7 + 1516), *(v7 + 1524), *(v7 + 1532), *(v7 + 1540), *(v7 + 387), *(v7 + 388));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f", v66, 216, v67, i, v68, v69, v70, v71, v72, v73, v74, *(v7 + 387), v75);
      }
    }

    v7 = (v7 + 1574);
  }
}

uint64_t sub_12F8E8(uint64_t a1, int a2)
{
  if (sub_160EF0(0x28u, 7))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.\n", v5, 40, v6);
      v7 = sub_175AE4();
      v17 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.", v7, 40, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.", v5, 40, v6);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      sub_E2008(*(a1 + 24), a2, *(a1 + 672));
    }

    v8 = 0;
  }

  else
  {
    if (sub_160EF0(3u, 4))
    {
      v9 = sub_160F34(3u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.\n", v10, 3, v11, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
        v12 = sub_175AE4();
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.", v12, 3, v18, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.", v10, 3, v11, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
      }
    }

    v8 = 4294966295;
  }

  if (sub_160EF0(0x28u, 7))
  {
    v13 = sub_160F34(0x28u);
    v14 = sub_175AE4();
    v15 = sub_160F68(7);
    if (v13)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_SetInternalThreadPriority frame number %d. %d\n", v14, 40, v15, *(a1 + 44), v8);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_SetInternalThreadPriority frame number %d. %d", v14, 40, v15, *(a1 + 44), v8);
  }

  return v8;
}

uint64_t sub_12FB1C(uint64_t a1, signed int a2)
{
  if (sub_160EF0(0x28u, 8))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", v5, 40, v6, "AVE_USL_Drv_SetQueueSize", a1, a2);
      v7 = sub_175AE4();
      v36 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v7, 40, v36, "AVE_USL_Drv_SetQueueSize", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v5, 40, v6, "AVE_USL_Drv_SetQueueSize", a1, a2);
    }
  }

  if (a1)
  {
    if (a2 == -1)
    {
      v8 = *(a1 + 106104);
    }

    else if (a2)
    {
      v8 = a2;
      if (*(a1 + 106104) > a2)
      {
        if (sub_160EF0(0x28u, 5))
        {
          v12 = sub_160F34(0x28u);
          v13 = sub_175AE4();
          v14 = sub_160F68(5);
          if (v12)
          {
            printf("%lld %d AVE %s: %s below minimum value %p %d [%d, %d]\n", v13, 40, v14, "AVE_USL_Drv_SetQueueSize", a1, a2, *(a1 + 106104), 48);
            v13 = sub_175AE4();
            sub_160F68(5);
          }

          syslog(3, "%lld %d AVE %s: %s below minimum value %p %d [%d, %d]", v13);
        }

LABEL_43:
        v27 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v8 = *(a1 + 106100);
    }

    v15 = *(a1 + 106080);
    if (v15)
    {
      if (sub_12C8CC(v15, v8))
      {
        if (sub_160EF0(3u, 4))
        {
          v16 = sub_160F34(3u);
          v17 = sub_175AE4();
          v18 = sub_160F68(4);
          if (v16)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v17, 3, v18, "AVE_USL_Drv_SetQueueSize", 1635, "ret == 0", v8);
            v17 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v17);
        }

LABEL_36:
        v27 = 4294966296;
        goto LABEL_44;
      }

      v22 = *(a1 + 106072);
      if (v22)
      {
        if (sub_12C8CC(v22, v8))
        {
          if (sub_160EF0(3u, 4))
          {
            v23 = sub_160F34(3u);
            v24 = sub_175AE4();
            v25 = sub_160F68(4);
            if (v23)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v24, 3, v25, "AVE_USL_Drv_SetQueueSize", 1640, "ret == 0", v8);
              v26 = sub_175AE4();
              sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v26);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v24);
            }
          }

          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (sub_160EF0(3u, 4))
      {
        v28 = sub_160F34(3u);
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverOutput connection failed.\n", v29, 3, v30, "AVE_USL_Drv_SetQueueSize", 1637, "pDriverInstance->FrameReceiverOutput");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverOutput connection failed.");
      }
    }

    else if (sub_160EF0(3u, 4))
    {
      v19 = sub_160F34(3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverInput connection failed.\n", v20, 3, v21, "AVE_USL_Drv_SetQueueSize", 1632, "pDriverInstance->FrameReceiverInput");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverInput connection failed.");
    }

    v27 = 4294966293;
    goto LABEL_44;
  }

  if (sub_160EF0(3u, 4))
  {
    v9 = sub_160F34(3u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Wrong parameter %p %d\n", v10, 3, v11, "AVE_USL_Drv_SetQueueSize", 1600, "pDrv != __null", 0, a2);
      v10 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Wrong parameter %p %d", v10, 3);
  }

  v27 = 4294966295;
LABEL_44:
  if (sub_160EF0(0x28u, 8))
  {
    v31 = sub_160F34(0x28u);
    v32 = sub_175AE4();
    v33 = sub_160F68(8);
    if (v31)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v32, 40, v33, "AVE_USL_Drv_SetQueueSize", a1, a2, v27);
      v34 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v32);
    }
  }

  return v27;
}

uint64_t sub_1301D8(uint64_t a1, int a2)
{
  v54 = -1;
  if (sub_160EF0(0x28u, 7))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.\n", v5, 40, v6);
      v7 = sub_175AE4();
      v45 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.", v7, 40, v45);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.", v5, 40, v6);
    }
  }

  if (!a1)
  {
    if (sub_160EF0(3u, 4))
    {
      v13 = sub_160F34(3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Reset", 1659, "pDriverInstance");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset, Null pointer for driver data.");
    }

    goto LABEL_26;
  }

  if (!a2)
  {
    if (sub_160EF0(3u, 4))
    {
      v16 = sub_160F34(3u);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset multiPassEndPassCounter = %d.\n", v17, 3, v18, "AVE_USL_Drv_Reset", 1660, "multiPassEndPassCounter > 0", 0);
        v17 = sub_175AE4();
        v46 = sub_160F68(4);
      }

      else
      {
        v46 = v18;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset multiPassEndPassCounter = %d.", v17, 3, v46, "AVE_USL_Drv_Reset", 1660, "multiPassEndPassCounter > 0", 0);
    }

LABEL_26:
    v9 = 4294966295;
    goto LABEL_27;
  }

  v53 = sub_175AE4();
  v8 = sub_12D170(a1, &v53);
  if (v8)
  {
    v9 = v8;
    if (sub_160EF0(3u, 4))
    {
      v10 = sub_160F34(3u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames failed.\n", v11, 3, v12, "AVE_USL_Drv_Reset", 1669, "ret == 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames failed.");
    }

    goto LABEL_27;
  }

  *(a1 + 44) = 0;
  *(a1 + 106096) = a2;
  *v51 = 0;
  sub_E06B8(*(a1 + 24), 72736, v51);
  sub_E1750(*(a1 + 24), *v51, &v54);
  v19 = *v51;
  if (*v51)
  {
    bzero((*v51 + 8), 0x11C18uLL);
    v20 = v54;
    *v19 = v54;
    *(v19 + 4) = 10;
    *(v19 + 40) = *(a1 + 44);
    *(v19 + 16) = *(a1 + 106088) != 0;
    *(v19 + 20) = *(a1 + 106096);
    memset(v51, 0, sizeof(v51));
    *v51 = v20;
    if (sub_128458(*(a1 + 106080), v51))
    {
      if (sub_160EF0(3u, 4))
      {
        v21 = sub_160F34(3u);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v22, 3, v23, "AVE_USL_Drv_Reset", 1705, "res == 0");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

      goto LABEL_44;
    }

    *&v51[24] = 0u;
    *&v51[8] = 0u;
    memset(v50, 0, sizeof(v50));
    *v51 = *a1;
    v52 = v54;
    *&v51[24] = 118000000;
    *&v51[32] = sub_175AE4();
    v32 = sub_E49BC(*(a1 + 24), v51, v50);
    if (!v32)
    {
      memset(v51, 0, sizeof(v51));
      v38 = sub_12C7B4(*(a1 + 106072), v51, 120000000);
      if (*v51 == v54)
      {
        if (!v38)
        {
          v9 = 0;
          goto LABEL_27;
        }

        if (sub_160EF0(3u, 4))
        {
          v39 = sub_160F34(3u);
          v40 = sub_175AE4();
          v41 = sub_160F68(4);
          if (v39)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v40, 3, v41, "AVE_USL_Drv_Reset", 1736, "res == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
        }
      }

      else if (sub_160EF0(3u, 4))
      {
        v42 = sub_160F34(3u);
        v43 = sub_175AE4();
        v44 = sub_160F68(4);
        if (v42)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v43, 3, v44, "AVE_USL_Drv_Reset", 1735, "status.counter == counter");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
      }

LABEL_44:
      v9 = 4294966296;
      goto LABEL_27;
    }

    v9 = v32;
    v33 = *(a1 + 106080);
    pthread_mutex_lock(v33);
    v34 = *(v33 + 216);
    if (v34 >= 1 && v34 > *(v33 + 208))
    {
      *(v33 + 216) = v34 - 1;
    }

    pthread_mutex_unlock(v33);
    if (sub_160EF0(0x28u, 4))
    {
      v35 = sub_160F34(0x28u);
      v36 = sub_175AE4();
      v37 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v36, 40, v37, "AVE_USL_Drv_Reset", 1722, "ret == 0", v9);
        v36 = sub_175AE4();
        v49 = v9;
        v48 = sub_160F68(4);
      }

      else
      {
        v49 = v9;
        v48 = v37;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v36, 40, v48, "AVE_USL_Drv_Reset", 1722, "ret == 0", v49);
    }
  }

  else
  {
    if (sub_160EF0(3u, 4))
    {
      v28 = sub_160F34(3u);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v29, 3, v30, "AVE_USL_Drv_Reset", 1685, "Frame");
        v31 = sub_175AE4();
        v47 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v31, 3, v47, "AVE_USL_Drv_Reset", 1685, "Frame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v29, 3, v30, "AVE_USL_Drv_Reset", 1685, "Frame");
      }
    }

    v9 = 4294966293;
  }

LABEL_27:
  if (sub_160EF0(0x28u, 7))
  {
    v24 = sub_160F34(0x28u);
    v25 = sub_175AE4();
    v26 = sub_160F68(7);
    if (v24)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Reset frame number %d. err 0x%08x\n", v25, 40, v26, *(a1 + 44), v9);
      v25 = sub_175AE4();
      v26 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Reset frame number %d. err 0x%08x", v25, 40, v26, *(a1 + 44), v9);
  }

  return v9;
}

uint64_t sub_130A9C(uint64_t a1)
{
  pthread_mutex_lock(a1);
  if (*(a1 + 216) > *(a1 + 208) && sub_160EF0(0x2Au, 5))
  {
    if (sub_160F34(0x2Au))
    {
      v2 = sub_175AE4();
      v3 = sub_160F68(5);
      v5 = *(a1 + 208);
      v4 = *(a1 + 216);
      v6 = v4 <= v5;
      v7 = v4 - v5;
      if (v6)
      {
        v7 = 0;
      }

      printf("%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left\n", v2, 42, v3, a1, v7);
      v8 = sub_175AE4();
      v9 = sub_160F68(5);
    }

    else
    {
      v8 = sub_175AE4();
      v9 = sub_160F68(5);
    }

    v11 = *(a1 + 208);
    v10 = *(a1 + 216);
    v6 = v10 <= v11;
    v12 = v10 - v11;
    if (v6)
    {
      v12 = 0;
    }

    syslog(3, "%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left", v8, 42, v9, a1, v12);
  }

  if (*(a1 + 224))
  {
    operator delete[]();
  }

  pthread_cond_destroy((a1 + 112));
  pthread_cond_destroy((a1 + 64));
  pthread_mutex_unlock(a1);
  pthread_mutex_destroy(a1);
  return a1;
}

uint64_t sub_130BC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CFMutableDictionaryRef *a5)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  *a5 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v11 = Mutable;
    v12 = sub_14B9CC(kIOSurfaceCacheMode, v9, Mutable);
    v13 = sub_14B9CC(kIOSurfaceMapCacheAttribute, v8, v11) + v12;
    v14 = v13 + sub_14B9CC(kIOSurfacePixelFormat, v7, v11);
    v15 = vm_page_size;
    if (vm_page_size <= 0x4000)
    {
      v15 = 0x4000;
    }

    v16 = (a4 + v15 - 1) & -v15;
    if (!(v14 + sub_14B9CC(kIOSurfaceAllocSize, v16, v11)))
    {
      result = 0;
      *a5 = v11;
      return result;
    }

    if (sub_160EF0(0x4Cu, 4))
    {
      v21 = sub_160F34(0x4Cu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p\n", v22, 76, v23, "AVE_USurface", "CreateDict", 49, "ret == 0", v9, v8, v7, v16, v11);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p", v24, 76, v25, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p", v22, 76, v23, "AVE_USurface");
      }
    }

    CFRelease(v11);
  }

  else if (sub_160EF0(0x4Cu, 4))
  {
    v18 = sub_160F34(0x4Cu);
    v19 = sub_175AE4();
    v20 = sub_160F68(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create CFDictionary\n", v19, 76, v20, "AVE_USurface", "CreateDict", 36, "pDict != __null");
      v19 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create CFDictionary", v19);
  }

  return 4294966293;
}

uint64_t sub_130EC8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, IOSurfaceRef *a5)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v30 = 0;
  if (a4 >= 1 && a5)
  {
    *a5 = 0;
    v10 = sub_130BC0(a1, a2, a3, a4, &v30);
    if (v10)
    {
      v11 = v10;
      if (sub_160EF0(0x4Cu, 4))
      {
        v12 = sub_160F34(0x4Cu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d\n", v13, 76, v14, "AVE_USurface", "CreateIOSurface", 94, "ret == 0", v9, v8, v7, a4, v11);
          v15 = sub_175AE4();
          v27 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d", v15, 76, v27, "AVE_USurface");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d", v13, 76, v14, "AVE_USurface");
        }
      }
    }

    else
    {
      v20 = v30;
      v21 = IOSurfaceCreate(v30);
      if (v21)
      {
        v11 = 0;
        *a5 = v21;
        if (!v20)
        {
          return v11;
        }

        goto LABEL_17;
      }

      if (!sub_160EF0(0x4Cu, 4))
      {
        v11 = 4294966296;
        if (!v20)
        {
          return v11;
        }

        goto LABEL_17;
      }

      v23 = sub_160F34(0x4Cu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d\n", v24, 76, v25, "AVE_USurface", "CreateIOSurface", 99, "pSurface != __null", v9, v8, v7, a4);
        v26 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d", v26, 76, v29);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d", v24, 76, v25);
      }

      v11 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v16 = sub_160F34(0x4Cu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p\n", v17, 76, v18, "AVE_USurface", "CreateIOSurface", 88, "size > 0 && ppSurface != __null", v9, v8, v7, a4, a5);
        v19 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p", v19, 76, v28, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p", v17, 76, v18, "AVE_USurface");
      }
    }

    v11 = 4294966295;
  }

  v20 = v30;
  if (v30)
  {
LABEL_17:
    CFRelease(v20);
  }

  return v11;
}

uint64_t sub_1312A0(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

uint64_t sub_1312BC(char *a1, __IOSurface *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v27 = 0u;
  v28 = 0u;
  *cStr = 0u;
  v26 = 0u;
  if (a2)
  {
    if ((a3 & 8) == 0)
    {
LABEL_8:
      if (a4)
      {
        v14 = a4;
      }

      else
      {
        v14 = &unk_1A7265;
      }

      sub_172100(a1 + 8, 64, "%s", v14);
      AllocSize = IOSurfaceGetAllocSize(a2);
      result = 0;
      *(a1 + 20) = AllocSize;
      *(a1 + 9) = a2;
      *(a1 + 11) = a5;
      return result;
    }

    v10 = " ";
    if (a4)
    {
      v11 = a4;
    }

    else
    {
      v10 = &unk_1A7265;
      v11 = &unk_1A7265;
    }

    sub_172100(cStr, 64, "%s%s%s", "AVE2", v10, v11);
    v12 = CFStringCreateWithCString(0, cStr, 0);
    if (v12)
    {
      v13 = v12;
      IOSurfaceSetValue(a2, kIOSurfaceName, v12);
      CFRelease(v13);
      goto LABEL_8;
    }

    if (sub_160EF0(0x4Cu, 4))
    {
      v21 = sub_160F34(0x4Cu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to create CFString %s\n", v22, 76, v23, "AVE_USurface", "Create", 171, "pNameStr != __null", cStr);
        v22 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create CFString %s", v22, 76);
    }

    return 4294966293;
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v17 = sub_160F34(0x4Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx\n", v18, 76, v19, "AVE_USurface", "Create", 162, "pSurface != __null", a1, *a1, 0, a3, a4, a5);
        v20 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx", v20, 76, v24, "AVE_USurface", "Create", 162, "pSurface != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx", v18, 76, v19, "AVE_USurface", "Create", 162, "pSurface != __null");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_1315FC(char *a1, IOSurfaceID csid, uint64_t a3, const char *a4, uint64_t a5)
{
  v10 = IOSurfaceLookup(csid);
  if (!v10)
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v13 = sub_160F34(0x4Cu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx\n", v14, 76, v15, "AVE_USurface", "Create", 209, "pSurface != __null", a1, *a1, csid, a3, a5);
        v16 = sub_175AE4();
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx", v16, 76, v18, "AVE_USurface", "Create", 209);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx", v14, 76, v15, "AVE_USurface", "Create", 209);
      }
    }

    v12 = 4294966281;
    goto LABEL_9;
  }

  v11 = v10;
  v12 = sub_1312BC(a1, v10, a3, a4, a5);
  if (v12)
  {
    CFRelease(v11);
LABEL_9:
    *(a1 + 11) = 0;
    *(a1 + 20) = 0;
  }

  return v12;
}

uint64_t sub_13179C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, const char *a7, uint64_t a8)
{
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v31 = 0;
  if (a5 > 0)
  {
    v16 = vm_page_size;
    if (vm_page_size <= 0x4000)
    {
      v16 = 0x4000;
    }

    v17 = (a5 + v16 - 1) & -v16;
    v18 = sub_130EC8(a2, a3, a4, v17, &v31);
    if (v18)
    {
      v19 = v18;
      if (sub_160EF0(0x4Cu, 4))
      {
        v20 = sub_160F34(0x4Cu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d\n", v21, 76, v22, "AVE_USurface", "Create", 264, "ret == 0", a1, *a1, v13, v12, v11, v17, v19);
          v23 = sub_175AE4();
          v29 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d", v23, 76, v29, "AVE_USurface", "Create", 264);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d", v21, 76, v22, "AVE_USurface", "Create", 264);
        }
      }
    }

    else
    {
      v19 = sub_1312BC(a1, v31, a6, a7, a8);
      *(a1 + 11) |= 4uLL;
      if (!v19)
      {
        return v19;
      }
    }

    goto LABEL_17;
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v24 = sub_160F34(0x4Cu);
    v25 = sub_175AE4();
    v26 = sub_160F68(4);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d %d 0x%llx 0x%llx\n", v25, 76, v26, "AVE_USurface", "Create", 251, "size > 0", a1, *a1, v13, v12, v11, a5, a6, a8);
      v27 = sub_175AE4();
      v30 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d %d 0x%llx 0x%llx", v27, 76, v30, "AVE_USurface", "Create", 251, "size > 0");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d %d 0x%llx 0x%llx", v25, 76, v26, "AVE_USurface", "Create", 251, "size > 0");
    }

    v19 = 4294966295;
LABEL_17:
    if (v31)
    {
      CFRelease(v31);
    }

    goto LABEL_19;
  }

  v19 = 4294966295;
LABEL_19:
  *(a1 + 11) = 0;
  *(a1 + 20) = 0;
  return v19;
}

uint64_t sub_131AE4(void *a1)
{
  if (a1[9])
  {
    v2 = sub_131D48(a1);
    if (v2)
    {
      v3 = v2;
      if (sub_160EF0(0x4Cu, 4))
      {
        v4 = sub_160F34(0x4Cu);
        v5 = sub_175AE4();
        v6 = sub_160F68(4);
        if (v4)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d\n", v5, 76, v6, "AVE_USurface", "Destroy", 325, "ret == 0", a1, *a1, v3);
          v7 = sub_175AE4();
          v14 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d", v7, 76, v14, "AVE_USurface");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d", v5, 76, v6, "AVE_USurface");
        }
      }
    }

    else
    {
      v12 = a1[9];
      if (v12)
      {
        CFRelease(v12);
        a1[9] = 0;
      }

      v3 = 0;
      *(a1 + 8) = 0;
      *(a1 + 20) = 0;
      a1[11] = 0;
    }
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v8 = sub_160F34(0x4Cu);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld\n", v9, 76, v10, "AVE_USurface", "Destroy", 299, "m_pcSurface != __null", a1, *a1);
        v11 = sub_175AE4();
        v15 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld", v11, 76, v15);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld", v9, 76, v10);
      }
    }

    return 4294966285;
  }

  return v3;
}

uint64_t sub_131D48(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    if (*(a1 + 97))
    {
      IOSurfaceUnlock(v2, 0, 0);
      result = 0;
      a1[12] &= ~0x100uLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v4 = sub_160F34(0x4Cu);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s\n", v5, 76, v6, "AVE_USurface", "Unlock", 417, "m_pcSurface != __null", a1, *a1, a1 + 8);
        v7 = sub_175AE4();
        v8 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", v7, 76, v8, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", v5, 76, v6, "AVE_USurface");
      }
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_131EB8(uint64_t *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  v51 = 0;
  v10 = a3;
  if (sub_160EF0(a2, a3))
  {
    sub_CB274(a4, a5, v53, 32);
    v11 = a1[9];
    if (v11)
    {
      v51 = bswap32(IOSurfaceGetPixelFormat(v11));
      v52 = 0;
    }

    if (sub_160EF0(a2, v10))
    {
      v12 = sub_160F34(a2);
      if (a3 < 0)
      {
        if (!v12 || (-a3 & 0x20) != 0)
        {
          v33 = *a1;
          v34 = a1[9];
          if (v34)
          {
            IOSurfaceGetID(a1[9]);
            v35 = a1[9];
            if (v35)
            {
              IOSurfaceGetUseCount(v35);
              v36 = a1[9];
              if (v36)
              {
                IOSurfaceGetBaseAddress(v36);
              }
            }
          }

          syslog(3, "Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v53, a1 + 1, a1, v33, v34);
        }

        else
        {
          v24 = *a1;
          v25 = a1[9];
          if (v25)
          {
            ID = IOSurfaceGetID(a1[9]);
            v27 = a1[12];
            BaseAddress = a1[9];
            v29 = *(a1 + 20);
            if (BaseAddress)
            {
              UseCount = IOSurfaceGetUseCount(BaseAddress);
              BaseAddress = a1[9];
              if (BaseAddress)
              {
                BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
              }
            }

            else
            {
              UseCount = 0;
            }
          }

          else
          {
            UseCount = 0;
            ID = 0;
            BaseAddress = 0;
            v29 = *(a1 + 20);
            v27 = a1[12];
          }

          printf("Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s \n", v53, a1 + 8, a1, v24, v25, ID, v29, v27, UseCount, BaseAddress, &v51);
          v42 = *a1;
          v43 = a1[9];
          if (v43)
          {
            IOSurfaceGetID(a1[9]);
            v44 = a1[9];
            if (v44)
            {
              IOSurfaceGetUseCount(v44);
              v45 = a1[9];
              if (v45)
              {
                IOSurfaceGetBaseAddress(v45);
              }
            }
          }

          syslog(3, "Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v53, a1 + 1, a1, v42, v43);
        }
      }

      else
      {
        v13 = v12 ^ 1;
        v14 = sub_175AE4();
        v15 = sub_160F68(v10);
        v16 = v15;
        v17 = *a1;
        v18 = a1[9];
        if ((v13 | ((a3 & 0x20) >> 5)))
        {
          if (v18)
          {
            v49 = v15;
            IOSurfaceGetID(v18);
            v31 = a1[9];
            if (v31)
            {
              IOSurfaceGetUseCount(v31);
              v32 = a1[9];
              if (v32)
              {
                IOSurfaceGetBaseAddress(v32);
              }
            }

            v16 = v49;
          }

          syslog(3, "%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v14, a2, v16, v53, a1 + 1, a1, v17);
        }

        else
        {
          v50 = (a1 + 1);
          if (v18)
          {
            v48 = v15;
            v19 = IOSurfaceGetID(v18);
            v20 = a1[12];
            v21 = a1[9];
            v22 = *(a1 + 20);
            if (v21)
            {
              v47 = v19;
              v23 = IOSurfaceGetUseCount(v21);
              v21 = a1[9];
              if (v21)
              {
                v21 = IOSurfaceGetBaseAddress(v21);
              }

              v16 = v48;
              v19 = v47;
            }

            else
            {
              v23 = 0;
              v16 = v48;
            }
          }

          else
          {
            v23 = 0;
            v19 = 0;
            v21 = 0;
            v22 = *(a1 + 20);
            v20 = a1[12];
          }

          printf("%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s \n", v14, a2, v16, v53, v50, a1, v17, v18, v19, v22, v20, v23, v21, &v51);
          v37 = sub_175AE4();
          v38 = sub_160F68(v10);
          v39 = *a1;
          if (a1[9])
          {
            IOSurfaceGetID(a1[9]);
            v40 = a1[9];
            if (v40)
            {
              IOSurfaceGetUseCount(v40);
              v41 = a1[9];
              if (v41)
              {
                IOSurfaceGetBaseAddress(v41);
              }
            }
          }

          syslog(3, "%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v37, a2, v38, v53, v50, a1, v39);
        }
      }
    }
  }

  return 0;
}

__IOSurface *sub_132370(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    return IOSurfaceGetID(result);
  }

  return result;
}

__IOSurface *sub_132380(uint64_t a1, int a2)
{
  result = *(a1 + 72);
  if (result)
  {
    return (IOSurfaceGetBaseAddress(result) + a2);
  }

  return result;
}

uint64_t sub_1323B4(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    if (*(a1 + 97))
    {
      return 0;
    }

    else
    {
      IOSurfaceLock(v2, 0, 0);
      result = 0;
      a1[12] |= 0x100uLL;
    }
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v4 = sub_160F34(0x4Cu);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s\n", v5, 76, v6, "AVE_USurface", "Lock", 392, "m_pcSurface != __null", a1, *a1, a1 + 8);
        v7 = sub_175AE4();
        v8 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", v7, 76, v8, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", v5, 76, v6, "AVE_USurface");
      }
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_132524(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return *(a1 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_13253C(int a1)
{
  v1 = &dword_203754;
  v2 = 9;
  while (*v1 != a1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t sub_132570(int a1)
{
  if ((a1 - 1) < 9)
  {
    return dword_203750[6 * (a1 - 1) + 1];
  }

  result = sub_160EF0(0xD0u, 4);
  if (result)
  {
    v3 = sub_160F34(0xD0u);
    v4 = sub_175AE4();
    v5 = sub_160F68(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v4, 208, v5, "AVC_FindProfileIdc", 65, "(AVC_Profile_Invalid < eProfile) && (eProfile < AVC_Profile_Max)", a1);
      v4 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v4);
    return 0;
  }

  return result;
}

int *sub_132698(int a1)
{
  result = dword_203750;
  v3 = 9;
  while (*result != a1)
  {
    result += 6;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1326C8(int a1, int a2, int a3, int a4, int a5, int a6)
{
  if (sub_160EF0(0xD1u, 6))
  {
    v12 = sub_160F34(0xD1u);
    v13 = sub_175AE4();
    v14 = sub_160F68(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d %d %d\n", v13, 209, v14, "AVC_FindLevel", a1, a2, a3, a4, a5, a6);
      v13 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d %d %d", v13, 209);
  }

  if (a2 <= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = a2;
  }

  if (a5 < 1)
  {
    v17 = 0.0;
  }

  else
  {
    v16 = a1 - 2;
    if ((a1 - 2) >= 8 || ((0xD5u >> v16) & 1) == 0)
    {
      if (sub_160EF0(0xD1u, 4))
      {
        v18 = sub_160F34(0xD1u);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d unsupported profile (%d)\n", v19, 209, v20, "AVC_FindLevel", 222, a1);
          v21 = sub_175AE4();
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d unsupported profile (%d)", v21, 209, v40, "AVC_FindLevel", 222, a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d unsupported profile (%d)", v19, 209, v20, "AVC_FindLevel", 222, a1);
        }
      }

      v26 = 0;
      goto LABEL_46;
    }

    v17 = dbl_185F60[v16];
  }

  v22 = 0;
  v23 = (a3 >> 4) * (a2 >> 4);
  v24 = dword_185C90;
  while (1)
  {
    if (v23 * a4 <= v24[2] && v23 <= v24[3] && v15 <= v24[6] && v17 * v24[5] >= a5)
    {
      v25 = v24[4] / v23;
      if (v25 >= 16)
      {
        v25 = 16;
      }

      if (v25 >= a6)
      {
        break;
      }
    }

    ++v22;
    v24 += 9;
    if (v22 == 20)
    {
      v24 = &dword_185F3C;
      break;
    }
  }

  v26 = *v24;
  v27 = a1 >= 7 || a1 == 1;
  if (v27 && v26 <= 17 && v23 >= 1621 && v22 <= 0x13)
  {
    v28 = 4 * v23;
    v29 = v22;
    v30 = &dword_185C90[9 * v22];
    do
    {
      v26 = *v30;
      v31 = v30[3];
      v30 += 9;
    }

    while (v28 > v31 && v29++ <= 0x12 && v26 <= 17);
  }

LABEL_46:
  if (sub_160EF0(0xD1u, 6))
  {
    v34 = sub_160F34(0xD1u);
    v35 = sub_175AE4();
    v36 = sub_160F68(6);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d\n", v35, 209, v36, "AVC_FindLevel", a1, a2, a3, a4, a5, a6, v26);
      v37 = sub_175AE4();
      v38 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d", v37, 209, v38);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d", v35, 209, v36);
    }
  }

  return v26;
}

uint64_t sub_132AB8(int a1)
{
  v1 = &dword_185C94;
  v2 = 20;
  while (*v1 != a1)
  {
    v1 += 9;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t sub_132AEC(int a1)
{
  if ((a1 - 1) < 0x14)
  {
    return dword_185C90[9 * (a1 - 1) + 1];
  }

  result = sub_160EF0(0xD1u, 4);
  if (result)
  {
    v2 = sub_160F34(0xD1u);
    v3 = sub_175AE4();
    v4 = sub_160F68(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v3, 209, v4, "AVC_FindLevelIdc", 295, "(AVC_Level_Invalid < eLevel) && (eLevel < AVC_Level_Max)", 0);
      v3 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v3);
    return 0;
  }

  return result;
}

uint64_t sub_132C10(int a1)
{
  v2 = dword_185C90;
  v3 = 20;
  do
  {
    if (*v2 == a1)
    {
      return v2[7];
    }

    v2 += 9;
    --v3;
  }

  while (v3);
  if (sub_160EF0(0xD1u, 4))
  {
    v4 = sub_160F34(0xD1u);
    v5 = sub_175AE4();
    v6 = sub_160F68(4);
    if (v4)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level %d\n", v5, 209, v6, "AVC_FindMaxMvsPer2Mb", 363, "psLimit != __null", a1);
      v5 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level %d", v5);
  }

  return 64;
}

uint64_t sub_132D3C(int a1)
{
  v2 = &dword_185CB0;
  v3 = 20;
  do
  {
    if (*(v2 - 8) == a1)
    {
      return *v2;
    }

    v2 += 9;
    --v3;
  }

  while (v3);
  result = sub_160EF0(0xD1u, 4);
  if (result)
  {
    v5 = sub_160F34(0xD1u);
    v6 = sub_175AE4();
    v7 = sub_160F68(4);
    if (v5)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level %d\n", v6, 209, v7, "AVC_FindMaxSubMbRectSize", 385, "psLimit != __null", a1);
      v6 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level %d", v6);
    return 0;
  }

  return result;
}

uint64_t sub_132E68(_DWORD *a1)
{
  bzero(a1, 0x650uLL);
  *a1 = -1;
  a1[20] = -2;
  for (i = 31; i != 103; i += 12)
  {
    *&a1[i] = -1;
  }

  v3 = 0;
  a1[18] = -2;
  *(a1 + 420) = 0;
  a1[189] = -1;
  *(a1 + 98) = 0xC0000000CLL;
  a1[198] = -2;
  a1[201] = -13;
  *(a1 + 101) = 0xC0000000CLL;
  *(a1 + 102) = 0xBFF0000000000000;
  *(a1 + 105) = 0xBFF0000000000000;
  *(a1 + 110) = -1;
  *(a1 + 112) = -1;
  *(a1 + 113) = 0xBFF0000000000000;
  *(a1 + 114) = 0xBFF0000000000000;
  a1[261] = -1;
  *(a1 + 133) = 0xBFF0000000000000;
  *(a1 + 134) = 0xBFF0000000000000;
  v4 = a1 + 278;
  *(a1 + 120) = 0xC0000000CLL;
  *(a1 + 136) = -1;
  do
  {
    v5 = 0;
    a1[24 * v3 + 276] = 1;
    do
    {
      *&v4[v5] = -NAN;
      v5 += 3;
    }

    while (v5 != 21);
    ++v3;
    v4 += 24;
  }

  while (v3 != 5);
  a1[255] = -1;
  *(a1 + 395) = 0xFFFFFFFFLL;
  *(a1 + 257) = -1;
  *(a1 + 259) = -1;
  *(a1 + 199) = -1;
  return 0;
}

uint64_t sub_132F90(CFDictionaryRef theDict, _DWORD *a2)
{
  v41 = 0.0;
  if (theDict && a2)
  {
    v4 = sub_14C90C(theDict, @"AnfdModality", a2);
    if (!v4)
    {
      v13 = sub_14C90C(theDict, @"FaceID", a2 + 1);
      if (v13)
      {
        v5 = v13;
        if (!sub_160EF0(0x2Fu, 4))
        {
          return v5;
        }

        v14 = sub_160F34(0x2Fu);
        v7 = sub_175AE4();
        v8 = sub_160F68(4);
        if (!v14)
        {
          goto LABEL_30;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 40, "ret == 0", theDict, a2, v5);
      }

      else
      {
        v15 = sub_14C90C(theDict, @"ConfidenceLevel", a2 + 2);
        if (v15)
        {
          v5 = v15;
          if (!sub_160EF0(0x2Fu, 4))
          {
            return v5;
          }

          v16 = sub_160F34(0x2Fu);
          v7 = sub_175AE4();
          v8 = sub_160F68(4);
          if (!v16)
          {
            goto LABEL_30;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 45, "ret == 0", theDict, a2, v5);
        }

        else
        {
          Value = CFDictionaryGetValue(theDict, @"Rect");
          if (!Value)
          {
            if (sub_160EF0(0x2Fu, 4))
            {
              v22 = sub_160F34(0x2Fu);
              v23 = sub_175AE4();
              v24 = sub_160F68(4);
              if (v22)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v23, 47, v24, "AVE_ANFD_RetrieveEntry", 50, "pRect != __null", theDict, a2, 0);
                v25 = sub_175AE4();
                v40 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v25, 47, v40);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v23, 47, v24);
              }
            }

            return 4294966288;
          }

          v18 = Value;
          v19 = sub_14C3AC(Value, @"X", &v41);
          if (v19)
          {
            v5 = v19;
            if (!sub_160EF0(0x2Fu, 4))
            {
              return v5;
            }

            v20 = sub_160F34(0x2Fu);
            v7 = sub_175AE4();
            v8 = sub_160F68(4);
            if (!v20)
            {
              goto LABEL_30;
            }

            printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 54, "ret == 0", theDict, a2, v5);
          }

          else
          {
            a2[4] = vcvtd_n_s64_f64(v41, 0x13uLL);
            v26 = sub_14C3AC(v18, @"Y", &v41);
            if (v26)
            {
              v5 = v26;
              if (!sub_160EF0(0x2Fu, 4))
              {
                return v5;
              }

              v27 = sub_160F34(0x2Fu);
              v7 = sub_175AE4();
              v8 = sub_160F68(4);
              if (!v27)
              {
                goto LABEL_30;
              }

              printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 60, "ret == 0", theDict, a2, v5);
            }

            else
            {
              a2[5] = vcvtd_n_s64_f64(v41, 0x13uLL);
              v28 = sub_14C3AC(v18, @"Width", &v41);
              if (v28)
              {
                v5 = v28;
                if (!sub_160EF0(0x2Fu, 4))
                {
                  return v5;
                }

                v29 = sub_160F34(0x2Fu);
                v7 = sub_175AE4();
                v8 = sub_160F68(4);
                if (!v29)
                {
                  goto LABEL_30;
                }

                printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 66, "ret == 0", theDict, a2, v5);
              }

              else
              {
                a2[6] = vcvtd_n_s64_f64(v41, 0x13uLL);
                v30 = sub_14C3AC(v18, @"Height", &v41);
                if (v30)
                {
                  v5 = v30;
                  if (!sub_160EF0(0x2Fu, 4))
                  {
                    return v5;
                  }

                  v31 = sub_160F34(0x2Fu);
                  v7 = sub_175AE4();
                  v8 = sub_160F68(4);
                  if (!v31)
                  {
                    goto LABEL_30;
                  }

                  printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 72, "ret == 0", theDict, a2, v5);
                }

                else
                {
                  a2[7] = vcvtd_n_s64_f64(v41, 0x13uLL);
                  a2[3] = 0x80000;
                  v32 = sub_14C90C(theDict, @"AngleInfoRoll", a2 + 8);
                  if (v32)
                  {
                    v5 = v32;
                    if (!sub_160EF0(0x2Fu, 4))
                    {
                      return v5;
                    }

                    v33 = sub_160F34(0x2Fu);
                    v7 = sub_175AE4();
                    v8 = sub_160F68(4);
                    if (!v33)
                    {
                      goto LABEL_30;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 82, "ret == 0", theDict, a2, v5);
                  }

                  else
                  {
                    v34 = sub_14C90C(theDict, @"AngleInfoYaw", a2 + 9);
                    if (v34)
                    {
                      v5 = v34;
                      if (!sub_160EF0(0x2Fu, 4))
                      {
                        return v5;
                      }

                      v35 = sub_160F34(0x2Fu);
                      v7 = sub_175AE4();
                      v8 = sub_160F68(4);
                      if (!v35)
                      {
                        goto LABEL_30;
                      }

                      printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 87, "ret == 0", theDict, a2, v5);
                    }

                    else
                    {
                      v36 = sub_14CBBC(theDict, @"OriginalTimestamp", a2 + 5);
                      if (v36)
                      {
                        v5 = v36;
                        if (!sub_160EF0(0x2Fu, 4))
                        {
                          return v5;
                        }

                        v37 = sub_160F34(0x2Fu);
                        v7 = sub_175AE4();
                        v8 = sub_160F68(4);
                        if (!v37)
                        {
                          goto LABEL_30;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 92, "ret == 0", theDict, a2, v5);
                      }

                      else
                      {
                        v5 = sub_14CBBC(theDict, @"Timestamp", a2 + 6);
                        if (!v5 || !sub_160EF0(0x2Fu, 4))
                        {
                          return v5;
                        }

                        v38 = sub_160F34(0x2Fu);
                        v7 = sub_175AE4();
                        v8 = sub_160F68(4);
                        if (!v38)
                        {
                          goto LABEL_30;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 96, "ret == 0", theDict, a2, v5);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v9 = sub_175AE4();
      v39 = sub_160F68(4);
      goto LABEL_23;
    }

    v5 = v4;
    if (sub_160EF0(0x2Fu, 4))
    {
      v6 = sub_160F34(0x2Fu);
      v7 = sub_175AE4();
      v8 = sub_160F68(4);
      if (v6)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v7, 47, v8, "AVE_ANFD_RetrieveEntry", 35, "ret == 0", theDict, a2, v5);
        v9 = sub_175AE4();
        v39 = sub_160F68(4);
LABEL_23:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v9, 47, v39);
        return v5;
      }

LABEL_30:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v7, 47, v8);
    }
  }

  else
  {
    if (sub_160EF0(0x2Fu, 4))
    {
      v10 = sub_160F34(0x2Fu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 47, v12, "AVE_ANFD_RetrieveEntry", 30, "pDict != __null && psEntry != __null", theDict, a2);
        v11 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 47);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t sub_133844(CFArrayRef theArray, _DWORD *a2)
{
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 10)
    {
      v5 = 10;
    }

    else
    {
      v5 = Count;
    }

    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v7 = a2 + 2;
      if (v5 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5;
      }

      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
        if (!ValueAtIndex)
        {
          break;
        }

        v10 = sub_132F90(ValueAtIndex, v7);
        if (v10)
        {
          v11 = v10;
          if (sub_160EF0(0x2Fu, 4))
          {
            v20 = sub_160F34(0x2Fu);
            v21 = sub_175AE4();
            v22 = sub_160F68(4);
            if (v20)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", v21, 47, v22, "AVE_ANFD_RetrieveArray", 225, "ret == 0", theArray, a2, v11);
              v23 = sub_175AE4();
              v25 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v23, 47, v25);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v21, 47, v22);
            }
          }

          return v11;
        }

        ++*a2;
        ++v6;
        v7 += 16;
        if (v8 == v6)
        {
          return 0;
        }
      }

      if (sub_160EF0(0x2Fu, 4))
      {
        v16 = sub_160F34(0x2Fu);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d\n", v17, 47, v18, "AVE_ANFD_RetrieveArray", 220, "pDict != __null", theArray, a2, theArray, v5, v6);
          v19 = sub_175AE4();
          v24 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d", v19, 47, v24, "AVE_ANFD_RetrieveArray");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d", v17, 47, v18, "AVE_ANFD_RetrieveArray");
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0x2Fu, 4))
    {
      v12 = sub_160F34(0x2Fu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 47, v14, "AVE_ANFD_RetrieveArray", 211, "pArray != __null && pInfo != __null", theArray, a2);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 47);
    }

    return 4294966295;
  }
}

uint64_t sub_133B98(unsigned int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  memset(v21, 0, sizeof(v21));
  sub_CB274(a4, a5, v21, 32);
  v8 = a3;
  if (sub_160EF0(a2, a3))
  {
    v9 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (!v9 || (-a3 & 0x20) != 0)
      {
        syslog(3, "ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v21, *a1, a1[1]);
      }

      else
      {
        v19 = a1[3];
        printf("ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d\n", v21, *a1, a1[1], a1[2], a1[4] / v19, a1[5] / v19, a1[6] / v19, a1[7] / v19, a1[8], a1[9], *(a1 + 5), *(a1 + 6), a1[14]);
        syslog(3, "ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v21, *a1, a1[1]);
      }
    }

    else
    {
      v10 = a3 & 0x20;
      v11 = v9 ^ 1;
      v12 = sub_175AE4();
      v13 = sub_160F68(v8);
      v14 = a1[3];
      v15 = a1[4] / v14;
      v16 = a1[5] / v14;
      v17 = a1[6] / v14;
      v18 = a1[7] / v14;
      if (((v11 | (v10 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d\n", v12, a2, v13, v21, *a1, a1[1], a1[2], v15, v16, v17, v18, a1[8], a1[9], *(a1 + 5), *(a1 + 6), a1[14]);
        v12 = sub_175AE4();
        v13 = sub_160F68(v8);
      }

      syslog(3, "%lld %d AVE %s: ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v12, a2, v13, v21, *a1);
    }
  }

  return 0;
}

uint64_t sub_133ED0(int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (*a1 >= 1)
  {
    v10 = 0;
    v11 = (a1 + 2);
    do
    {
      sub_133B98(v11, a2, a3, a4, a5);
      ++v10;
      v11 += 16;
    }

    while (v10 < *a1);
  }

  return 0;
}

uint64_t sub_133F6C(const __CFDictionary *a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    bzero(a2, 0x288uLL);
    Value = CFDictionaryGetValue(a1, @"StabilizedDetectedFacesArray");
    if (Value)
    {
      v5 = sub_133844(Value, a2);
      if (v5 && sub_160EF0(0x2Fu, 4))
      {
        v6 = sub_160F34(0x2Fu);
        v7 = sub_175AE4();
        v8 = sub_160F68(4);
        if (v6)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", v7, 47, v8, "AVE_ANFD_GetInfo", 365, "ret == 0", a1, a2, v5);
          v9 = sub_175AE4();
          v14 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 47, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v7, 47, v8);
        }
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0x2Fu, 6))
    {
      v10 = sub_160F34(0x2Fu);
      v11 = sub_175AE4();
      v12 = sub_160F68(6);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 47, v12, "AVE_ANFD_GetInfo", 354, "pProperty != NULL && pInfo != NULL", a1, a2);
        v11 = sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 47);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t sub_13419C(uint64_t a1, uint64_t a2)
{
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  sub_CB318(a1 + 32, a2);
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_1341D4(_DWORD *a1)
{
  if (sub_160EF0(0x38u, 6))
  {
    v2 = sub_160F34(0x38u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", v3, 56, v4, "AVE_BlkPool", "Destroy", a1);
      v5 = sub_175AE4();
      v19 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v5, 56, v19, "AVE_BlkPool", "Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v3, 56, v4, "AVE_BlkPool", "Destroy", a1);
    }
  }

  do
  {
    v6 = sub_CB4B8(a1 + 4);
    if (!v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = v6;
    sub_CB550(a1 + 4);
    v8 = sub_CB9D8(v7);
  }

  while (!v8);
  v9 = v8;
  if (sub_160EF0(0x38u, 5))
  {
    v10 = sub_160F34(0x38u);
    v11 = sub_175AE4();
    v12 = sub_160F68(5);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v11, 56, v12, "AVE_BlkPool", "Destroy", 285, a1, v7, v9);
      v13 = sub_175AE4();
      v20 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v13, 56, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v11, 56, v12);
    }
  }

LABEL_12:
  v14 = *(a1 + 3);
  if (v14)
  {
    v9 = sub_13DBD0(v14) + v9;
    *(a1 + 3) = 0;
  }

  *a1 = 0;
  a1[16] = 0;
  *(a1 + 3) = 0;
  *(a1 + 1) = 0;
  if (sub_160EF0(0x38u, 6))
  {
    v15 = sub_160F34(0x38u);
    v16 = sub_175AE4();
    v17 = sub_160F68(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v16, 56, v17, "AVE_BlkPool", "Destroy", a1, v9);
      v16 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v16);
  }

  return v9;
}

uint64_t sub_1344E0(int *a1, int a2, int a3, int a4, unsigned int a5, int a6)
{
  v41 = 0;
  if (sub_160EF0(0x38u, 6))
  {
    v11 = sub_160F34(0x38u);
    v12 = sub_175AE4();
    v13 = sub_160F68(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d\n", v12, 56, v13, "AVE_BlkPool", "Create", a1, a2, a3, a4, a5, a6);
      v14 = sub_175AE4();
      v35 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d", v14, 56, v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d", v12, 56, v13);
    }
  }

  if (a3 < 1 || a4 < 1 || a5 > 0x40 || a5 && ((a5 + 127) & a5) != 0)
  {
    if (sub_160EF0(0x38u, 4))
    {
      v15 = sub_160F34(0x38u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d\n", v16, 56, v17, "AVE_BlkPool", "Create", 75, "num > 0 && size > 0 && alignment >= 0 && alignment <= 64 && (alignment == 0 || (alignment & (alignment - 1)) == 0)", a1, a2, a3, a4, a5, a6);
        v18 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d", v18, 56, v36, "AVE_BlkPool", "Create");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d", v16, 56, v17, "AVE_BlkPool", "Create");
      }
    }

    v20 = 4294966295;
    goto LABEL_17;
  }

  if ((a2 & 1) == 0)
  {
    v19 = 0;
    goto LABEL_23;
  }

  v19 = sub_13DB68();
  if (v19)
  {
LABEL_23:
    v20 = sub_CB70C(a3, a4, a5, &v41);
    if (v20)
    {
      if (sub_160EF0(0x38u, 4))
      {
        v26 = sub_160F34(0x38u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p\n", v27, 56, v28, "AVE_BlkPool", "Create", 88, "ret == 0", a1, a2, a3, a4, a5, &v41);
          v39 = sub_175AE4();
          v29 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p", v39, 56, v29, "AVE_BlkPool", "Create");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p", v27, 56, v28, "AVE_BlkPool", "Create");
        }
      }

      if (v19)
      {
        sub_13DBD0(v19);
      }
    }

    else
    {
      v30 = v41;
      *a1 = a2;
      a1[1] = a3;
      a1[2] = a4;
      a1[3] = a5;
      a1[4] = a6;
      *(a1 + 3) = v19;
      sub_CB4F4((a1 + 8), v30);
    }

    goto LABEL_17;
  }

  if (sub_160EF0(0x38u, 4))
  {
    v31 = sub_160F34(0x38u);
    v32 = sub_175AE4();
    v33 = sub_160F68(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d\n", v32, 56, v33, "AVE_BlkPool", "Create", 82, "pMutex != __null", a1, a2, a3, a4, a5, a6);
      v34 = sub_175AE4();
      v38 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d", v34, 56, v38, "AVE_BlkPool", "Create");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d", v32, 56, v33, "AVE_BlkPool", "Create");
    }
  }

  v20 = 4294966293;
LABEL_17:
  if (sub_160EF0(0x38u, 6))
  {
    v21 = sub_160F34(0x38u);
    v22 = sub_175AE4();
    v23 = sub_160F68(6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d\n", v22, 56, v23, "AVE_BlkPool", "Create", a1, a2, a3, a4, a5, a6, v20);
      v24 = sub_175AE4();
      v37 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d", v24, 56, v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d", v22, 56, v23);
    }
  }

  return v20;
}

uint64_t sub_134BDC(int *a1, int a2, const void *a3, int a4, int a5, int a6, unsigned int a7)
{
  v44[0] = 0;
  if (sub_160EF0(0x38u, 6))
  {
    v12 = sub_160F34(0x38u);
    v13 = sub_175AE4();
    v14 = sub_160F68(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d\n", v13, 56, v14, "AVE_BlkPool", "CreateWithMem", a1, a2, a3, a4, a5, a6, a7);
      v15 = sub_175AE4();
      v38 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d", v15, 56, v38, "AVE_BlkPool");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d", v13, 56, v14, "AVE_BlkPool");
    }
  }

  if (a4 < 1 || a5 < 1 || a6 < 1 || a7 > 0x40 || a7 && ((a7 + 127) & a7) != 0)
  {
    if (sub_160EF0(0x38u, 4))
    {
      v16 = sub_160F34(0x38u);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d\n", v17, 56, v18, "AVE_BlkPool", "CreateWithMem", 146, "msize > 0 && num > 0 && size > 0 && alignment >= 0 && alignment <= 64 && (alignment == 0 || (alignment & (alignment - 1)) == 0)", a1, a2, a3, a4, a5, a6, a7);
        v19 = sub_175AE4();
        v39 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d", v19, 56, v39, "AVE_BlkPool", "CreateWithMem", 146);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d", v17, 56, v18, "AVE_BlkPool", "CreateWithMem", 146);
      }
    }

    v21 = 4294966295;
    goto LABEL_18;
  }

  if ((a2 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_24;
  }

  v20 = sub_13DB68();
  if (v20)
  {
LABEL_24:
    v21 = sub_CB894(a3, a4, a5, a6, a7, v44);
    if (v21)
    {
      if (sub_160EF0(0x38u, 4))
      {
        v29 = a6;
        v30 = sub_160F34(0x38u);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p\n", v31, 56, v32, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0", a1, a2, a3, a4, a5, v29, a7, v44);
          v41 = sub_175AE4();
          v33 = sub_160F68(4);
          a6 = v29;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p", v41, 56, v33, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0");
        }

        else
        {
          a6 = v29;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p", v31, 56, v32, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0");
        }
      }

      if (v20)
      {
        sub_13DBD0(v20);
      }
    }

    else
    {
      *a1 = a2;
      a1[1] = a5;
      a1[2] = a6;
      a1[3] = a7;
      a1[4] = 0;
      *(a1 + 3) = v20;
      sub_CB4F4((a1 + 8), v44[0]);
    }

    goto LABEL_18;
  }

  if (sub_160EF0(0x38u, 4))
  {
    v34 = sub_160F34(0x38u);
    v35 = sub_175AE4();
    v36 = sub_160F68(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d\n", v35, 56, v36, "AVE_BlkPool", "CreateWithMem", 153, "pMutex != __null", a1, a2, a3, a4, a5, a6, a7);
      v37 = sub_175AE4();
      v40 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d", v37, 56, v40, "AVE_BlkPool", "CreateWithMem", 153);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d", v35, 56, v36, "AVE_BlkPool", "CreateWithMem", 153);
    }
  }

  v21 = 4294966293;
LABEL_18:
  if (sub_160EF0(0x38u, 6))
  {
    v22 = a6;
    v23 = sub_160F34(0x38u);
    v24 = sub_175AE4();
    v25 = sub_160F68(6);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d\n", v24, 56, v25, "AVE_BlkPool", "CreateWithMem", a1, a2, a3, a4, a5, v22, a7, v21);
      v26 = sub_175AE4();
      v27 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d", v26, 56, v27, "AVE_BlkPool", "CreateWithMem");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d", v24, 56, v25, "AVE_BlkPool", "CreateWithMem");
    }
  }

  return v21;
}

uint64_t sub_1353B4(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  for (i = sub_CB5C0(a1 + 32, a2); ; i = sub_CB408(v6, v7))
  {
    v6 = i;
    if (i == sub_CB5DC(a1 + 32, v5))
    {
      return 4294966289;
    }

    if (sub_CBBCC(v6))
    {
      break;
    }
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t sub_135428(uint64_t a1, void *a2, _DWORD *a3)
{
  v20 = 0;
  if (a2)
  {
    *a2 = 0;
    if (*a1)
    {
      sub_13DC18(*(a1 + 24));
    }

    v6 = sub_1353B4(a1, &v20);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 64) >= *(a1 + 16))
      {
        goto LABEL_17;
      }

      v8 = sub_CB70C(*(a1 + 4), *(a1 + 8), *(a1 + 12), &v20);
      if (v8)
      {
        v7 = v8;
        if (sub_160EF0(0x38u, 6))
        {
          v9 = sub_160F34(0x38u);
          v10 = sub_175AE4();
          v11 = sub_160F68(6);
          if (v9)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d\n", v10, 56, v11, "AVE_BlkPool", "Alloc", 377, a1, *(a1 + 4), *(a1 + 8), *(a1 + 12), &v20, v7);
            v12 = sub_175AE4();
            v18 = sub_160F68(6);
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d", v12, 56, v18, "AVE_BlkPool", "Alloc");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d", v10, 56, v11, "AVE_BlkPool", "Alloc");
          }
        }

        goto LABEL_17;
      }

      sub_CB4F4(a1 + 32, v20);
      ++*(a1 + 64);
    }

    v7 = sub_CBA7C(v20, a2, a3);
LABEL_17:
    if (*a1)
    {
      sub_13DC4C(*(a1 + 24));
    }

    return v7;
  }

  if (sub_160EF0(0x38u, 4))
  {
    v13 = sub_160F34(0x38u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p\n", v14, 56, v15, "AVE_BlkPool", "Alloc", 353, "pAddr != __null", a1, a3);
      v16 = sub_175AE4();
      v19 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v16, 56, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v14, 56, v15);
    }
  }

  return 4294966295;
}

uint64_t sub_1356F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  for (i = sub_CB5C0(a1 + 32, a2); ; i = sub_CB408(v8, v9))
  {
    v8 = i;
    if (i == sub_CB5DC(a1 + 32, v7))
    {
      return 4294966295;
    }

    if (sub_CBA4C(v8, a2))
    {
      break;
    }
  }

  result = 0;
  *a3 = v8;
  return result;
}

uint64_t sub_135770(uint64_t a1, uint64_t *a2)
{
  v35 = 0;
  if (*a1)
  {
    sub_13DC18(*(a1 + 24));
  }

  v4 = sub_1356F4(a1, a2, &v35);
  if (v4)
  {
    v5 = v4;
    if (!sub_160EF0(0x38u, 4))
    {
      goto LABEL_20;
    }

    v6 = sub_160F34(0x38u);
    v7 = sub_175AE4();
    v8 = sub_160F68(4);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d\n", v7, 56, v8, "AVE_BlkPool", "Free", 447, "ret == 0", a1, a2, &v35, v5);
      v9 = sub_175AE4();
      v26 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d", v9, 56, v26, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v34 = v5;
    v32 = a2;
    v33 = &v35;
    v31 = a1;
    v30 = 447;
    v28 = v8;
    v16 = "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d";
LABEL_19:
    syslog(3, v16, v7, 56, v28, "AVE_BlkPool", "Free", v30, "ret == 0", v31, v32, v33, v34);
    goto LABEL_20;
  }

  v10 = v35;
  v11 = sub_CBB2C(v35, a2);
  if (v11)
  {
    v5 = v11;
    if (!sub_160EF0(0x38u, 4))
    {
      goto LABEL_20;
    }

    v13 = sub_160F34(0x38u);
    v7 = sub_175AE4();
    v14 = sub_160F68(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d\n", v7, 56, v14, "AVE_BlkPool", "Free", 451, "ret == 0", a1, &v35, a2, v5);
      v15 = sub_175AE4();
      v27 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d", v15, 56, v27, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v33 = a2;
    v34 = v5;
    v31 = a1;
    v32 = &v35;
    v30 = 451;
    v28 = v14;
    v16 = "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d";
    goto LABEL_19;
  }

  v17 = sub_CB5F4(a1 + 32, v12);
  if (*(a1 + 64))
  {
    v19 = v17;
    while (v19 != sub_CB610(a1 + 32, v18))
    {
      v10 = v19;
      v19 = sub_CB3EC(v19, v20);
      if (sub_CBBB8(v10))
      {
        v35 = v10;
        sub_CB424(v10);
        v5 = sub_CB9D8(v10);
        if (v5 && sub_160EF0(0x38u, 5))
        {
          v22 = sub_160F34(0x38u);
          v23 = sub_175AE4();
          v24 = sub_160F68(5);
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v23, 56, v24, "AVE_BlkPool", "Free", 468, a1, v10, v5);
            v25 = sub_175AE4();
            v29 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v25, 56, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v23, 56, v24);
          }
        }

        --*(a1 + 64);
        goto LABEL_20;
      }

      if (!*(a1 + 64))
      {
        break;
      }
    }
  }

  v5 = 0;
  v35 = v10;
LABEL_20:
  if (*a1)
  {
    sub_13DC4C(*(a1 + 24));
  }

  return v5;
}

uint64_t sub_135B60(uint64_t a1, int a2, void *a3)
{
  if (*a1)
  {
    sub_13DC18(*(a1 + 24));
  }

  if (*(a1 + 64))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = sub_CB47C((a1 + 32));
    v6 = sub_CBBF8(v7, a2, a3);
  }

  if (*a1)
  {
    sub_13DC4C(*(a1 + 24));
  }

  return v6;
}

uint64_t sub_135BDC(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (*a1)
  {
    sub_13DC18(*(a1 + 24));
  }

  if (*(a1 + 64))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = sub_CB47C((a1 + 32));
    v6 = sub_CBC34(v7, a2, a3);
  }

  if (*a1)
  {
    sub_13DC4C(*(a1 + 24));
  }

  return v6;
}

uint64_t AVE_Plugin_AVC_CreateInstance(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  memset(v68, 0, sizeof(v68));
  v6 = sub_175AE4();
  sub_160F98();
  sub_151990();
  v7 = sub_1502C8();
  sub_1621A4((v7 + 138));
  v67 = a3;
  if (sub_160EF0(0xBu, 0))
  {
    v8 = sub_160F34(0xBu);
    v9 = sub_175AE4();
    v10 = sub_160F68(0);
    if (v8)
    {
      printf("%lld %d AVE %s: Compiled %s in %s on %s %s\n", v9, 11, v10, "905.5.3", "prod", "Oct 23 2025", "06:45:21");
      v9 = sub_175AE4();
      sub_160F68(0);
    }

    syslog(3, "%lld %d AVE %s: Compiled %s in %s on %s %s", v9);
  }

  v11 = sub_160D68(v68, 128);
  if (v11 >= 1 && sub_160EF0(0xBu, 0))
  {
    v12 = sub_160F34(0xBu);
    v13 = sub_175AE4();
    v14 = sub_160F68(0);
    if (v12)
    {
      printf("%lld %d AVE %s: Temporary Path: %s\n", v13, 11, v14, v68);
      v15 = sub_175AE4();
      v60 = sub_160F68(0);
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v15, 11, v60, v68);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v13, 11, v14, v68);
    }
  }

  if (sub_160EF0(0xBu, 6))
  {
    v16 = sub_160F34(0xBu);
    v17 = sub_175AE4();
    v18 = sub_160F68(6);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %lld\n", v17, 11, v18, "AVE_Plugin_AVC_CreateInstance", a1, a2, a3, 0);
      v17 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %lld", v17, 11);
  }

  if (!a3)
  {
    if (sub_160EF0(0xBu, 4))
    {
      v25 = sub_160F34(0xBu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p %p %lld %d\n", v26, 11, v27, "AVE_Plugin_AVC_CreateInstance", 1237, "instanceOut != __null", a1, a2, 0, 0, v11);
        v26 = sub_175AE4();
        v62 = sub_160F68(4);
      }

      else
      {
        v62 = v27;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p %p %lld %d", v26, 11, v62, "AVE_Plugin_AVC_CreateInstance", 1237);
    }

    goto LABEL_36;
  }

  if (a1 != 1635148593)
  {
    if (sub_160EF0(0xBu, 4))
    {
      v28 = sub_160F34(0xBu);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d\n", v29, 11, v30, "AVE_Plugin_AVC_CreateInstance", 1242, "codecType == kCMVideoCodecType_H264", a1, a2, a3, 0, v11);
        v31 = sub_175AE4();
        v63 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d", v31, 11, v63, "AVE_Plugin_AVC_CreateInstance", 1242);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d", v29, 11, v30, "AVE_Plugin_AVC_CreateInstance", 1242);
      }
    }

LABEL_36:
    v33 = 0;
    v40 = 0;
    v35 = 4294966295;
    goto LABEL_41;
  }

  kdebug_trace();
  *a3 = 0;
  VTVideoEncoderGetClassID();
  v19 = CMDerivedObjectCreate();
  if (v19)
  {
    v20 = v19;
    if (sub_160EF0(0xBu, 4))
    {
      v21 = sub_160F34(0xBu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create AVC Object %d %p %p %lld %d\n", v22, 11, v23, "AVE_Plugin_AVC_CreateInstance", 1252, "res == noErr", 1635148593, a2, a3, 0, v20);
        v24 = sub_175AE4();
        v61 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC Object %d %p %p %lld %d", v24, 11, v61, "AVE_Plugin_AVC_CreateInstance", 1252);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC Object %d %p %p %lld %d", v22, 11, v23, "AVE_Plugin_AVC_CreateInstance", 1252);
      }
    }

    v35 = 4294966292;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v33 = DerivedStorage;
      bzero(DerivedStorage, 0x46B0uLL);
      v34 = sub_13DB68();
      *v33 = v34;
      if (v34)
      {
        v35 = sub_F959C(v33, 0);
        if (!v35)
        {
          v40 = v33[7];
          *a3 = 0;
          goto LABEL_40;
        }

        if (sub_160EF0(0xBu, 4))
        {
          v36 = sub_160F34(0xBu);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create AVC %d %p %p %lld %p %p 0x%llx %d\n", v37, 11, v38, "AVE_Plugin_AVC_CreateInstance", 1269, "ret == 0", 1635148593, a2, a3, 0, 0, v33, 0, v35);
            v39 = sub_175AE4();
            v64 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC %d %p %p %lld %p %p 0x%llx %d", v39, 11, v64, "AVE_Plugin_AVC_CreateInstance", 1269, "ret == 0", 1635148593, a2);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC %d %p %p %lld %p %p 0x%llx %d", v37, 11, v38, "AVE_Plugin_AVC_CreateInstance", 1269, "ret == 0", 1635148593, a2);
          }
        }
      }

      else
      {
        if (sub_160EF0(0xBu, 4))
        {
          v56 = sub_160F34(0xBu);
          v57 = sub_175AE4();
          v58 = sub_160F68(4);
          if (v56)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d\n", v57, 11, v58, "AVE_Plugin_AVC_CreateInstance", 1264, "pPI->pPIMutex != __null", 1635148593, a2, a3, 0, 0, v33, v11);
            v59 = sub_175AE4();
            v66 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d", v59, 11, v66, "AVE_Plugin_AVC_CreateInstance", 1264, "pPI->pPIMutex != __null", 1635148593);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d", v57, 11, v58, "AVE_Plugin_AVC_CreateInstance", 1264, "pPI->pPIMutex != __null", 1635148593);
          }
        }

        v35 = 4294966293;
      }

      if (*v33)
      {
        sub_13DBD0(*v33);
        *v33 = 0;
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v52 = sub_160F34(0xBu);
        v53 = sub_175AE4();
        v54 = sub_160F68(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC Object %d %p %p %lld %p %d\n", v53, 11, v54, "AVE_Plugin_AVC_CreateInstance", 1257, "pPI != __null", 1635148593, a2, a3, 0, 0, v11);
          v55 = sub_175AE4();
          v65 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC Object %d %p %p %lld %p %d", v55, 11, v65, "AVE_Plugin_AVC_CreateInstance", 1257, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC Object %d %p %p %lld %p %d", v53, 11, v54, "AVE_Plugin_AVC_CreateInstance", 1257, "pPI != __null");
        }
      }

      v35 = 4294966296;
    }
  }

  v40 = 0;
  v33 = 0;
LABEL_40:
  kdebug_trace();
LABEL_41:
  v41 = sub_175AE4() - v6;
  if (v41 >= 50000)
  {
    v42 = 5;
  }

  else
  {
    v42 = 6;
  }

  v43 = sub_175994(v35);
  if (v35)
  {
    v44 = 4;
  }

  else
  {
    v44 = v42;
  }

  if (sub_160EF0(0xBu, v44))
  {
    v45 = sub_160F34(0xBu);
    v46 = sub_175AE4();
    v47 = sub_160F68(v44);
    if (v45)
    {
      v48 = a1;
      printf("%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d\n", v46, 11, v47, "AVE_Plugin_AVC_CreateInstance", a1, a2, v67, v40, 0, v33, v41, v35, v43);
      v49 = sub_175AE4();
      v50 = sub_160F68(v44);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d", v49, 11, v50, "AVE_Plugin_AVC_CreateInstance", v48, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d", v46, 11, v47, "AVE_Plugin_AVC_CreateInstance", a1, a2);
    }
  }

  return v43;
}

uint64_t AVE_Plugin_AVC_SetCallback(const void *a1, _OWORD *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, v7, "AVE_Plugin_AVC_SetCallback", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = v9[7];
      kdebug_trace();
      v11 = 0;
      v12 = a2[1];
      *(v9 + 8) = *a2;
      *(v9 + 9) = v12;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v17 = sub_160F34(0xBu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_SetCallback", 1335, "pPI != __null", a1, a2, 0, 0);
          v20 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v20, 11, v31, "AVE_Plugin_AVC_SetCallback");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v18, 11, v19, "AVE_Plugin_AVC_SetCallback");
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v9);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v13 = sub_160F34(0xBu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_AVC_SetCallback", 1330, "encoder != __null && pCallback != __null", a1, a2, 0, 0);
        v16 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v16, 11, v30, "AVE_Plugin_AVC_SetCallback");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v14, 11, v15, "AVE_Plugin_AVC_SetCallback");
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v21 = sub_175AE4() - v4;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 6;
  }

  v23 = sub_175994(v11);
  if (v11)
  {
    v24 = 4;
  }

  else
  {
    v24 = v22;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_AVC_SetCallback", a1, a2, v10, v21, v11, v23);
      v28 = sub_175AE4();
      v32 = sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v23;
}

uint64_t sub_136B80(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_AVC_Invalidate", a1, 0);
      v6 = sub_175AE4();
      v31 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_AVC_Invalidate", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_AVC_Invalidate", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_E8690(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_Invalidate", 55, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop AVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_AVC_Invalidate");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_Invalidate");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_Invalidate", 44, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_Invalidate", 39, "object != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_Invalidate", a1, v9, v23, v10, v25);
      v28 = sub_175AE4();
      sub_160F68(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }

  return v25;
}

void sub_137084(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_AVC_Finalize", a1, 0);
      v6 = sub_175AE4();
      v30 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v30, "AVE_Plugin_AVC_Finalize", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_AVC_Finalize", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_E893C(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to destroy AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_Finalize", 110, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy AVC %p %lld %p %d", v14, 11, v31, "AVE_Plugin_AVC_Finalize");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_Finalize");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_Finalize", 99, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v33 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v33);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
    sub_13DBD0(*v8);
    *v8 = 0;
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_Finalize", 94, "object != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_Finalize", a1, v9, v23, v10, v25);
      v28 = sub_175AE4();
      sub_160F68(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }
}

uint64_t sub_13758C(const void *a1, const __CFString *a2, const void *a3, const void *a4)
{
  v8 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v9 = sub_160F34(0xBu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %lld\n", v10, 11, v11, "AVE_Plugin_AVC_CopyProperty", a1, a2, a3, a4, 0);
      v12 = sub_175AE4();
      v34 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %lld", v12, 11, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %lld", v10, 11, v11);
    }
  }

  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v15 = v14[7];
      kdebug_trace();
      v16 = sub_F4DE0(v14, a3, a2, a4);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v21 = sub_160F34(0xBu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %p %lld %d\n", v22, 11, v23, "AVE_Plugin_AVC_CopyProperty", 218, "pPI != __null", a1, a2, a3, a4, 0, 0);
          v24 = sub_175AE4();
          v36 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %p %lld %d", v24, 11, v36, "AVE_Plugin_AVC_CopyProperty", 218, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %p %lld %d", v22, 11, v23, "AVE_Plugin_AVC_CopyProperty", 218, "pPI != __null");
        }
      }

      v15 = 0;
      v16 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v14);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v17 = sub_160F34(0xBu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_CopyProperty", 213, "object != __null && propertyKey != __null && propertyValueOut != __null", a1, a2, a3, a4, 0, 0);
        v20 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v20, 11, v35, "AVE_Plugin_AVC_CopyProperty", 213, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v18, 11, v19, "AVE_Plugin_AVC_CopyProperty", 213, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }
    }

    v15 = 0;
    v16 = 4294966295;
  }

  v25 = sub_175AE4() - v8;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 7;
  }

  v27 = sub_175994(v16);
  if (v16)
  {
    v26 = 4;
  }

  if (sub_160EF0(0xBu, v26))
  {
    v28 = a2;
    v29 = a3;
    v30 = sub_160F34(0xBu);
    v38 = sub_175AE4();
    v31 = sub_160F68(v26);
    if (v30)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d\n", v38, 11, v31, "AVE_Plugin_AVC_CopyProperty", a1, v28, v29, a4, v15, v25, v16, v27);
      v32 = sub_175AE4();
      v37 = sub_160F68(v26);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v32, 11, v37, "AVE_Plugin_AVC_CopyProperty", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v38, 11, v31, "AVE_Plugin_AVC_CopyProperty", a1);
    }
  }

  return v27;
}

uint64_t sub_137A68(const void *a1, const __CFString *a2, const void *a3)
{
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, v9, "AVE_Plugin_AVC_SetProperty", a1, a2, a3, 0);
      v8 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v8, 11);
  }

  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = sub_E7EA8(v11, a2, a3);
      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_AVC_SetProperty", 161, "pPI != __null", a1, a2, a3, 0, 0);
          v21 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v21, 11, v32, "AVE_Plugin_AVC_SetProperty", 161);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_AVC_SetProperty", 161);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v14 = sub_160F34(0xBu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v15, 11, v16, "AVE_Plugin_AVC_SetProperty", 156, "object != __null && propertyKey != __null && propertyValue != __null", a1, a2, a3, 0, 0);
        v17 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v17, 11, v31, "AVE_Plugin_AVC_SetProperty", 156);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v15, 11, v16, "AVE_Plugin_AVC_SetProperty", 156);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  v22 = sub_175AE4() - v6;
  if (v22 >= 50000)
  {
    v23 = 5;
  }

  else
  {
    v23 = 7;
  }

  v24 = sub_175994(v13);
  if (v13)
  {
    v23 = 4;
  }

  if (sub_160EF0(0xBu, v23))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v23);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_AVC_SetProperty", a1, a2, a3, v12, v22, v13, v24);
      v28 = sub_175AE4();
      v29 = sub_160F68(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v28, 11, v29, "AVE_Plugin_AVC_SetProperty");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v26, 11, v27, "AVE_Plugin_AVC_SetProperty");
    }
  }

  return v24;
}

uint64_t sub_137ED8(const void *a1, pthread_mutex_t *a2, unint64_t a3, pthread_mutex_t *a4)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  v48 = 0;
  v7 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v8 = sub_160F34(0xBu);
    v9 = sub_175AE4();
    v10 = sub_160F68(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d %p %lld\n", v9, 11, v10, "AVE_Plugin_AVC_StartSession", a1, a2, v5, v6, a4, 0);
      v11 = sub_175AE4();
      v39 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d %p %lld", v11, 11, v39);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d %p %lld", v9, 11, v10);
    }
  }

  v45 = v6;
  if (a1 && a2 && v5 >= 1 && v6 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = DerivedStorage;
    if (DerivedStorage)
    {
      v48 = __PAIR64__(v6, v5);
      sub_13DC18(*DerivedStorage);
      v14 = v13[7];
      kdebug_trace();
      v13[2] = a2;
      v13[14] = a4;
      *(v13 + 8) = 1;
      v15 = sub_E8E20(v13, &v48);
      if (!v15)
      {
        v29 = v13[14];
        v24 = a4;
        if (v29)
        {
          CFRetain(v29);
        }

        v16 = 0;
        goto LABEL_30;
      }

      v16 = v15;
      if (sub_160EF0(0xBu, 4))
      {
        v17 = sub_160F34(0xBu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d\n", v18, 11, v19, "AVE_Plugin_AVC_StartSession", 301, "ret == 0", a1, a2, v5, v45, a4, v14, v13, v16);
          v44 = sub_175AE4();
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v44, 11, v40, "AVE_Plugin_AVC_StartSession", 301, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v18, 11, v19, "AVE_Plugin_AVC_StartSession", 301, "ret == 0", a1);
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v25 = sub_160F34(0xBu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d\n", v26, 11, v27, "AVE_Plugin_AVC_StartSession", 281, "pPI != __null", a1, a2, v5, v6, a4, 0, 0);
          v28 = sub_175AE4();
          v42 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v28, 11, v42, "AVE_Plugin_AVC_StartSession", 281, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v26, 11, v27, "AVE_Plugin_AVC_StartSession", 281, "pPI != __null");
        }
      }

      v14 = 0;
      v16 = 4294966296;
    }

    v24 = a4;
    v13[2] = 0;
    v13[14] = 0;
LABEL_30:
    kdebug_trace();
    sub_13DC4C(*v13);
    goto LABEL_31;
  }

  if (sub_160EF0(0xBu, 4))
  {
    v20 = sub_160F34(0xBu);
    v21 = sub_175AE4();
    v22 = sub_160F68(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d\n", v21, 11, v22, "AVE_Plugin_AVC_StartSession", 275, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0", a1, a2, v5, v6, a4, 0, 0);
      v23 = sub_175AE4();
      v24 = a4;
      v41 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v23, 11, v41, "AVE_Plugin_AVC_StartSession", 275, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0");
    }

    else
    {
      v24 = a4;
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v21, 11, v22, "AVE_Plugin_AVC_StartSession", 275, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0");
    }
  }

  else
  {
    v24 = a4;
  }

  v14 = 0;
  v16 = 4294966295;
LABEL_31:
  v30 = sub_175AE4() - v7;
  if (v30 >= 50000)
  {
    v31 = 5;
  }

  else
  {
    v31 = 6;
  }

  v32 = sub_175994(v16);
  if (v16)
  {
    v33 = 4;
  }

  else
  {
    v33 = v31;
  }

  if (sub_160EF0(0xBu, v33))
  {
    v34 = sub_160F34(0xBu);
    v35 = sub_175AE4();
    v36 = sub_160F68(v33);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d\n", v35, 11, v36, "AVE_Plugin_AVC_StartSession", a1, a2, v5, v45, v24, v14, v30, v16, v32);
      v37 = sub_175AE4();
      v43 = sub_160F68(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d", v37, 11, v43, "AVE_Plugin_AVC_StartSession", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d", v35, 11, v36, "AVE_Plugin_AVC_StartSession", a1);
    }
  }

  return v32;
}

uint64_t sub_13862C(const void *a1, const void *a2, const void *a3, uint64_t *a4, void *a5, const void *a6, _DWORD *a7)
{
  v71[0] = 0;
  v71[1] = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v14 = sub_175AE4();
  v64 = a7;
  if (sub_160EF0(0xBu, 8))
  {
    v15 = sub_160F34(0xBu);
    v16 = sub_175AE4();
    v17 = sub_160F68(8);
    v18 = *a4;
    v19 = *(a4 + 2);
    v20 = *(a4 + 3);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld\n", v16, 11, v17, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, v18, v19, v20, a4[2], *a5, *(a5 + 2), *(a5 + 3), a5[2], a6, a7, 0);
      v21 = sub_175AE4();
      v22 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v21, 11, v22, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, *a4, *(a4 + 2), *(a4 + 3));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v16, 11, v17, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, v18, v19, v20);
    }
  }

  v62 = a3;
  v63 = a1;
  if (a1 && a3)
  {
    v23 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v25 = DerivedStorage;
    if (DerivedStorage)
    {
      v26 = *a4;
      v69 = a4[1];
      v70 = a4[2];
      v65 = *a5;
      v66 = a5[1];
      v67 = a5[2];
      v68 = v26;
      sub_13DC18(*DerivedStorage);
      v27 = *(v25 + 56);
      kdebug_trace();
      v29 = sub_EA07C(v25, a2, a3, v71, &v68, &v65, v23, v28);
      ++*(v25 + 48);
    }

    else if (sub_160EF0(0xBu, 4))
    {
      v38 = sub_160F34(0xBu);
      v39 = sub_175AE4();
      v40 = sub_160F68(4);
      v41 = *a4;
      v42 = *(a4 + 2);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d\n", v39, 11, v40, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, v41, v42, *a5, *(a5 + 2), v23, v64, 0, 0);
        v59 = sub_175AE4();
        v43 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d", v59, 11, v43, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, *a4, *(a4 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d", v39, 11, v40, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, v41, v42);
      }

      v27 = 0;
      v29 = 4294966296;
    }

    else
    {
      v27 = 0;
      v29 = 4294966296;
    }

    v37 = a2;
    kdebug_trace();
    if (v64)
    {
      *v64 |= 1u;
    }

    sub_13DC4C(*v25);
    a6 = v23;
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v30 = sub_160F34(0xBu);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      v33 = *a4;
      v34 = *(a4 + 2);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d\n", v31, 11, v32, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, a3, v33, v34, *a5, *(a5 + 2), a6, a7, 0, 0);
        v35 = sub_175AE4();
        v36 = sub_160F68(4);
        v57 = a3;
        v37 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v35, 11, v36, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, v57, *a4, *(a4 + 2));
      }

      else
      {
        v58 = a3;
        v37 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v31, 11, v32, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, v58, v33, v34);
      }
    }

    else
    {
      v37 = a2;
    }

    v27 = 0;
    v29 = 4294966295;
  }

  v44 = sub_175AE4() - v14;
  if (v44 >= 50000)
  {
    v45 = 5;
  }

  else
  {
    v45 = 8;
  }

  v46 = sub_175994(v29);
  if (v29)
  {
    v47 = 4;
  }

  else
  {
    v47 = v45;
  }

  if (sub_160EF0(0xBu, v47))
  {
    v48 = sub_160F34(0xBu);
    v60 = sub_175AE4();
    v49 = sub_160F68(v47);
    v50 = *a4;
    v51 = *(a4 + 2);
    v52 = *(a4 + 3);
    v53 = a4[2];
    v54 = *a5;
    if (v48)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d\n", v60, 11, v49, "AVE_Plugin_AVC_EncodeFrame", v63, v37, v62, v50, v51, v52, v53, v54, *(a5 + 2), *(a5 + 3), a5[2], a6, v64, v27, v44, v29, v46);
      v61 = sub_175AE4();
      v55 = sub_160F68(v47);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v61, 11, v55, "AVE_Plugin_AVC_EncodeFrame", v63, v37, v62, *a4, *(a4 + 2), *(a4 + 3), a4[2], *a5);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v60, 11, v49, "AVE_Plugin_AVC_EncodeFrame", v63, v37, v62, v50, v51, v52, v53, v54);
    }
  }

  return v46;
}