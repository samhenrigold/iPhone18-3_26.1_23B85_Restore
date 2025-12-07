void sub_245F11D30(int *a1, unint64_t a2)
{
  v152 = *MEMORY[0x277D85DE8];
  v2 = a2 - *(a1 + 1239);
  if (v2 >= 0x4C4B40)
  {
    v5 = *a1;
    if (*a1 == 1 || v5 != a1[2506])
    {
      v6 = a1 + 1732;
      *(a1 + 1239) = a2;
      a1[2506] = v5;
      *v7.i64 = sub_245F1D50C((a1 + 2), a2);
      *buf = v7.i32[0];
      v74 = __PAIR64__(v9, v8);
      *v75 = v10;
      v69 = sub_245F24A60(buf, v11, v7);
      v70 = v12;
      v71 = v13;
      v72 = v14;
      v15 = sub_245F0F554(&v69);
      v17 = v16;
      v19 = v18;
      v20 = -1.0;
      v21 = -1.0;
      if (*(a1 + 9920) == 1)
      {
        v22 = (a2 - *(a1 + 1241)) * 0.000001;
        v21 = v22;
      }

      v23 = *(a1 + 1251);
      if (a2 > v23 && v23)
      {
        v24 = (a2 - v23) * 0.000001;
        v20 = v24;
      }

      v25 = *(a1 + 1236);
      v26 = *(a1 + 1237);
      v27 = -1.0;
      v28 = -1.0;
      v29 = v25 > v26;
      v30 = v25 - v26;
      if (v29)
      {
        v31 = v30 * 0.001;
        v28 = v31;
      }

      v32 = *(a1 + 1238);
      v33 = v32 >= v26;
      v34 = v32 - v26;
      if (v34 != 0 && v33)
      {
        v35 = v34 * 0.001;
        v27 = v35;
      }

      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }

      v36 = qword_27EE374F8;
      if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v37 = a1[2488];
      v38 = *(a1 + 2489);
      if (v37 && (v39 = v38 / v37, v39 >= 0.000001))
      {
        v40 = (1.0 / v39);
      }

      else
      {
        v40 = 0;
        if (!v37)
        {
          v41 = 0.0;
LABEL_24:
          v42 = a1[2492];
          v43 = *(a1 + 2493);
          if (v42 && (v44 = v43 / v42, v44 >= 0.000001))
          {
            v45 = (1.0 / v44);
          }

          else
          {
            v45 = 0;
          }

          if (v42)
          {
            v46 = ((v43 / v42) * 1000.0);
          }

          else
          {
            v46 = 0.0;
          }

          v47 = *(a1 + 2491) * 1000.0;
          v48 = *(a1 + 2494) * 1000.0;
          v49 = a1[2496];
          v50 = *(a1 + 2497);
          v51 = *(a1 + 2495) * 1000.0;
          if (v49 && (v52 = v50 / v49, v52 >= 0.000001))
          {
            v53 = (1.0 / v52);
          }

          else
          {
            v53 = 0;
          }

          v54 = *a1;
          v55 = *(a1 + 9920);
          v56 = *(a1 + 10000);
          v57 = *(a1 + 1251);
          v58 = *v6;
          v59 = *(a1 + 1236);
          v60 = v38;
          v61 = (*(a1 + 2490) * 1000.0);
          v62 = v43;
          v63 = v50;
          v64 = (*(a1 + 2498) * 1000.0);
          v65 = (*(a1 + 2499) * 1000.0);
          if (v49)
          {
            v66 = ((v50 / v49) * 1000.0);
          }

          else
          {
            v66 = 0.0;
          }

          v67 = *(a1 + 1238);
          v68 = *(a1 + 1237);
          *buf = 134359040;
          v74 = a2;
          *v75 = 1026;
          *&v75[2] = v54;
          v76 = 2050;
          v77 = v2;
          v78 = 1026;
          v79 = v55;
          v80 = 1026;
          v81 = v56;
          v82 = 2050;
          v83 = v57;
          v84 = 2050;
          v85 = v21;
          v86 = 2050;
          v87 = v20;
          v88 = 1026;
          v89 = v58;
          v90 = 2050;
          v91 = v59;
          v92 = 2050;
          v93 = v69;
          v94 = 2050;
          v95 = v70;
          v96 = 2050;
          v97 = v71;
          v98 = 2050;
          v99 = v72;
          v100 = 2050;
          v101 = (v19 * 57.296);
          v102 = 2050;
          v103 = (v17 * 57.296);
          v104 = 2050;
          v105 = (v15 * 57.296);
          v106 = 1026;
          v107 = v40;
          v108 = 2050;
          v109 = v60;
          v110 = 1026;
          v111 = v37;
          v112 = 2050;
          v113 = v61;
          v114 = 2050;
          v115 = v47;
          v116 = 2050;
          v117 = v41;
          v118 = 1026;
          v119 = v45;
          v120 = 2050;
          v121 = v62;
          v122 = 1026;
          v123 = v42;
          v124 = 2050;
          v125 = v48;
          v126 = 2050;
          v127 = v51;
          v128 = 2050;
          v129 = v46;
          v130 = 1026;
          v131 = v53;
          v132 = 2050;
          v133 = v63;
          v134 = 1026;
          v135 = v49;
          v136 = 2050;
          v137 = v64;
          v138 = 2050;
          v139 = v65;
          v140 = 2050;
          v141 = v66;
          v142 = 2050;
          v143 = v59;
          v144 = 2050;
          v145 = v67;
          v146 = 2050;
          v147 = v68;
          v148 = 2050;
          v149 = v28;
          v150 = 2050;
          v151 = v27;
          _os_log_impl(&dword_245D80000, v36, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[periodicSysDiagnoseLog] { timestamp: %{public}llu us, trackingStatus: %{public}d, sinceLastLog: %{public}llu us, fSessionStarted: %{public}d, HID started flag: %{public}d , HID start timestamp: %{public}llu us, durationSinceSessionStart: %{public}.1f s, durationSinceHIDStart: %{public}.1f s }, { initialized during no-trust: %{public}d, }, { Latest estimate: timestamp: %{public}llu us, Q_SP: %{public}.3f %{public}.3f %{public}.3f %{public}.3f, roll: %{public}.1f deg, azimuth: %{public}.1f deg, altitude: %{public}.1f deg } { Ring: avgNumSamplesPerSecond: %{public}u, over: %{public}.1f s, num samples: %{public}d, sample period min/max/avg: %{public}.1f/%{public}.1f/%{public}.1f ms }, { Src : avgNumSamplesPerSecond: %{public}u, over: %{public}.1f s, num samples: %{public}d, sample period min/max/avg: %{public}.1f/%{public}.1f/%{public}.1f ms }, { Aux : avgNumSamplesPerSecond: %{public}u, over: %{public}.1f s, num samples: %{public}d, sample period min/max/avg: %{public}.1f/%{public}.1f/%{public}.1f ms }, { Latest timestamp ring / src / aux: %{public}llu us / %{public}llu us/ %{public}llu us }, { Aux-to-Ring Delay: %{public}.1f ms, Aux-to-Src Delay: %{public}.1f ms  }", buf, 0x16Au);
LABEL_39:
          *(a1 + 1244) = 0;
          *(a1 + 1245) = 0xFF7FFFFF7F7FFFFFLL;
          *(a1 + 1246) = 0;
          *(a1 + 1247) = 0xFF7FFFFF7F7FFFFFLL;
          *(a1 + 1248) = 0;
          *(a1 + 1249) = 0xFF7FFFFF7F7FFFFFLL;
          return;
        }
      }

      v41 = ((v38 / v37) * 1000.0);
      goto LABEL_24;
    }
  }
}

void sub_245F12268(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 10000) == 1)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v2 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 9904);
      v4 = *(a1 + 10008);
      v11 = 134349312;
      v12 = v3;
      v13 = 2050;
      v14 = v4;
      v5 = "[BarrelRoll]:[CMABarrelRollService]:[informStartPencilFusionUpdates] Called hidStartedPencilFusionUpdates when the start flag was already true. Latest src timestamp: %{public}llu us, HID start timestamp: %{public}llu";
      v6 = v2;
      v7 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_245D80000, v6, v7, v5, &v11, 0x16u);
    }
  }

  else
  {
    *(a1 + 10000) = 1;
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v8 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 9904);
      v10 = *(a1 + 10008);
      v11 = 134349312;
      v12 = v9;
      v13 = 2050;
      v14 = v10;
      v5 = "[BarrelRoll]:[CMABarrelRollService]:[informStartPencilFusionUpdates] HID started pencil fusion updates.  Latest src timestamp: %{public}llu us, fTimeStampHIDStartedPencilFusionUpdates: %{public}llu";
      v6 = v8;
      v7 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }
}

void sub_245F123C0(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 10000))
  {
    *(a1 + 10000) = 0;
    v2 = *(a1 + 9904);
    *(a1 + 10016) = v2;
    v3 = *(a1 + 10008);
    v4 = -1.0;
    v5 = v2 > v3;
    v6 = v2 - v3;
    if (v5)
    {
      v7 = v6 * 0.000001;
      v4 = v7;
    }

    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v8 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 9904);
      v10 = *(a1 + 10008);
      v11 = *(a1 + 10016);
      v20 = 134349824;
      v21 = v4;
      v22 = 2050;
      v23 = v9;
      v24 = 2050;
      v25 = v10;
      v26 = 2050;
      v27 = v11;
      v12 = "[BarrelRoll]:[CMABarrelRollService]:[informStopPencilFusionUpdates] HID stopped pencil fusion updates. Session duration: %{public}.1f s. Latest src timestamp: %{public}llu us, HID start timestamp: %{public}llu, HID stop timestamp: %{public}llu .";
      v13 = v8;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 42;
LABEL_13:
      _os_log_impl(&dword_245D80000, v13, v14, v12, &v20, v15);
    }
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v16 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 9904);
      v18 = *(a1 + 10008);
      v19 = *(a1 + 10016);
      v20 = 134349568;
      v21 = v17;
      v22 = 2050;
      v23 = v18;
      v24 = 2050;
      v25 = v19;
      v12 = "[BarrelRoll]:[CMABarrelRollService]:[informStopPencilFusionUpdates] Called hidStoppedPencilFusionUpdates when the start flag was already false. Latest src timestamp: %{public}llu us, HID start timestamp: %{public}llu, HID stop timestamp: %{public}llu .";
      v13 = v16;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 32;
      goto LABEL_13;
    }
  }
}

uint64_t sub_245F12578(uint64_t a1)
{
  *a1 = 0x7800000000;
  v2 = a1 + 6168;
  *(a1 + 968) = 0x7800000000;
  *(a1 + 1936) = 0x7800000000;
  *(a1 + 2904) = 0x7800000000;
  *(a1 + 3032) = 0x3200000000;
  *(a1 + 3440) = 0x3200000000;
  *(a1 + 4248) = 0u;
  *(a1 + 4264) = 0u;
  *(a1 + 4280) = 0u;
  *(a1 + 4296) = 0u;
  *(a1 + 4312) = 0u;
  *(a1 + 4328) = 0u;
  *(a1 + 4344) = 0x3200000000;
  *(a1 + 4752) = 0x3200000000;
  *(a1 + 5560) = 0u;
  *(a1 + 5576) = 0u;
  *(a1 + 5592) = 0u;
  *(a1 + 5608) = 0u;
  *(a1 + 5624) = 0u;
  *(a1 + 5640) = 0u;
  *(a1 + 5656) = 0x7800000000;
  *(a1 + 6144) = 0u;
  *(a1 + 6168) = 1;
  *(a1 + 6160) = 0x3F80000000000000;
  sub_245F1270C(a1 + 6176);
  *(a1 + 6696) = 0;
  *(v2 + 536) = 0;
  *(a1 + 6708) = 0;
  *(a1 + 6716) = 0x3F80000000000000;
  *(a1 + 6728) = 0;
  *(a1 + 6776) = 0;
  *(a1 + 6784) = 0x3F80000000000000;
  *(a1 + 6792) = 0;
  *(v2 + 632) = 0;
  *(a1 + 6804) = 0;
  *(a1 + 6812) = 0x3F80000000000000;
  *(a1 + 6824) = 0;
  *(a1 + 6872) = 0;
  *(a1 + 6880) = 0x3F80000000000000;
  *(a1 + 6896) = 0;
  *(a1 + 6904) = 0x3F80000000000000;
  *(v2 + 752) = 0;
  *(v2 + 756) = xmmword_245F32B40;
  sub_245F24EC0((v2 + 756), xmmword_245F32B40);
  *(a1 + 6944) = 0;
  *(v2 + 784) = 0;
  *(a1 + 6968) = 0;
  *(a1 + 6976) = 0x7800000000;
  *(a1 + 7944) = 0x7800000000;
  *(a1 + 9872) = 0;
  *(v2 + 3708) = 0;
  return a1;
}

void sub_245F126BC(_Unwind_Exception *a1)
{
  sub_245F12848(v1 + 6672);
  sub_245F128C8((v1 + v4));
  sub_245F12B1C((v1 + 5608));
  sub_245F12B1C(v3);
  sub_245F12B1C((v1 + 4296));
  sub_245F12B1C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_245F1270C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = xmmword_245F32B50;
  *(a1 + 208) = xmmword_245F32B60;
  *(a1 + 224) = 0x7F7FFFFF00000000;
  *(a1 + 232) = -8388609;
  *(a1 + 292) = 0;
  *(a1 + 236) = 0u;
  *(a1 + 282) = 0;
  *(a1 + 252) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 296) = 0;
  sub_245F14C78(a1 + 304, 120);
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 476) = 0;
  *(a1 + 484) = 0x3F80000000000000;
  return a1;
}

void sub_245F127D8(_Unwind_Exception *a1)
{
  sub_245F127FC(v2);
  sub_245F12B1C((v1 + 72));
  sub_245F12B1C((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_245F127FC(uint64_t a1)
{
  sub_245F12B1C((a1 + 96));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_245F12848(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_245F128C8(void *a1)
{
  v2 = a1[53];
  if (v2)
  {
    a1[54] = v2;
    operator delete(v2);
  }

  v3 = a1[50];
  if (v3)
  {
    a1[51] = v3;
    operator delete(v3);
  }

  v4 = a1[47];
  if (v4)
  {
    a1[48] = v4;
    operator delete(v4);
  }

  v5 = a1[40];
  if (v5)
  {
    a1[41] = v5;
    operator delete(v5);
  }

  sub_245F12B1C(a1 + 30);
  v6 = a1[21];
  if (v6)
  {
    a1[22] = v6;
    operator delete(v6);
  }

  v7 = a1[18];
  if (v7)
  {
    a1[19] = v7;
    operator delete(v7);
  }

  sub_245F12B1C(a1 + 9);
  sub_245F12B1C(a1 + 3);
  return a1;
}

uint64_t sub_245F12964(uint64_t result)
{
  v1 = 0;
  *result = 0;
  *(result + 4) = 0;
  *(result + 12) = 0xFF7FFFFF7F7FFFFFLL;
  *(result + 20) = 0;
  *(result + 28) = 0xFF7FFFFF7F7FFFFFLL;
  *(result + 36) = 0;
  *(result + 44) = 0xFF7FFFFF7F7FFFFFLL;
  *(result + 52) = 0;
  *(result + 60) = 0xFF7FFFFF7F7FFFFFLL;
  do
  {
    v2 = result + v1;
    *(v2 + 68) = 0;
    *(v2 + 76) = 0xFF7FFFFF7F7FFFFFLL;
    v1 += 16;
  }

  while (v1 != 48);
  for (i = 0; i != 48; i += 16)
  {
    v4 = result + i;
    *(v4 + 116) = 0;
    *(v4 + 124) = 0xFF7FFFFF7F7FFFFFLL;
  }

  for (j = 0; j != 48; j += 16)
  {
    v6 = result + j;
    *(v6 + 164) = 0;
    *(v6 + 172) = 0xFF7FFFFF7F7FFFFFLL;
  }

  for (k = 0; k != 48; k += 16)
  {
    v8 = result + k;
    *(v8 + 212) = 0;
    *(v8 + 220) = 0xFF7FFFFF7F7FFFFFLL;
  }

  for (m = 0; m != 48; m += 16)
  {
    *(result + m + 260) = 0;
    *(result + m + 268) = 0xFF7FFFFF7F7FFFFFLL;
  }

  v10 = 0;
  *(result + 308) = 0;
  *(result + 312) = 0;
  do
  {
    v11 = result + v10;
    *(v11 + 328) = 0;
    *(v11 + 336) = 0xFF7FFFFF7F7FFFFFLL;
    v10 += 16;
  }

  while (v10 != 48);
  for (n = 0; n != 48; n += 16)
  {
    v13 = result + n;
    *(v13 + 376) = 0;
    *(v13 + 384) = 0xFF7FFFFF7F7FFFFFLL;
  }

  *(result + 424) = 0;
  *(result + 432) = 0xFF7FFFFF7F7FFFFFLL;
  *(result + 440) = 0;
  *(result + 448) = 0xFF7FFFFF7F7FFFFFLL;
  *(result + 456) = 0;
  *(result + 464) = 0xFF7FFFFF7F7FFFFFLL;
  return result;
}

os_log_t sub_245F12A80()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

void *sub_245F12AB0(void *a1)
{
  sub_245F12848((a1 + 834));
  sub_245F128C8(a1 + 772);
  sub_245F12B1C(a1 + 701);
  sub_245F12B1C(a1 + 695);
  sub_245F12B1C(a1 + 537);
  sub_245F12B1C(a1 + 531);
  return a1;
}

uint64_t sub_245F12B1C(void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_245E4CADC(a1);
}

unint64_t *sub_245F12BC8(unint64_t *a1, void *a2)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 10));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 10));
  }

  else
  {
    v8 = &(*v7)[4 * (v4 & 0x3FF)];
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 10));
    v11 = (*v10 + 4 * (v9 & 0x3FF));
  }

  sub_245F12C74(a1, v7, v8, v10, v11);
  return a1;
}

void *sub_245F12C74(unint64_t *a1, char **a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&a5[-*a4] >> 2) + ((a4 - a2) << 7) - ((a3 - *a2) >> 2);
  }

  return sub_245F12CA8(a1, a2, a3, v5);
}

void *sub_245F12CA8(unint64_t *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 7) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_245F12DE8(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 10));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 4 * (v11 & 0x3FF);
    v15 = v14;
  }

  v25[0] = v13;
  v25[1] = v15;
  result = sub_245F13100(v25, a4);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = *a2;
        v21 = v14;
        do
        {
          v22 = *a3;
          a3 += 4;
          *v21++ = v22;
          if (a3 - v20 == 4096)
          {
            v23 = a2[1];
            ++a2;
            v20 = v23;
            a3 = v23;
          }
        }

        while (v21 != v19);
      }

      v18 += (v19 - v14) >> 2;
      if (v13 == result)
      {
        break;
      }

      v24 = v13[1];
      ++v13;
      v14 = v24;
    }

    while (v24 != v17);
    a1[5] = v18;
  }

  return result;
}

void sub_245F12DE8(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (a1[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_245F13164(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_245F1358C(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= v7 << 10; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_245F13164(a1, v16);
    }
  }
}

void sub_245F1308C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_245F13100(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 2);
    if (v4 < 1)
    {
      result -= (1023 - v4) >> 10;
    }

    else
    {
      result += v4 >> 10;
    }
  }

  return result;
}

void sub_245F13164(unint64_t *a1, void *a2)
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

      sub_245F1358C(a1, v11);
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

void sub_245F1326C(const void **a1, void *a2)
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

      sub_245F1358C(a1, v9);
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

void sub_245F13378(unint64_t *a1, void *a2)
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

      sub_245F1358C(a1[4], v11);
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

void sub_245F13480(const void **a1, void *a2)
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

      sub_245F1358C(a1[4], v9);
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

void sub_245F1358C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_245DF8694();
}

BOOL sub_245F135D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  if (v4 > 0.0 && v5 < v4 + *(a1 + 16))
  {
    return 0;
  }

  *(a1 + 16) = v5;
  v7 = *(a2 + 24);
  v8[0] = vcvt_hight_f32_f64(vcvt_f32_f64(*(a2 + 8)), v7);
  sub_245F24EC0(v8, v7);
  v8[1] = vcvt_hight_f32_f64(vcvt_f32_f64(*(a2 + 40)), *(a2 + 56));
  v9 = vcvt_f32_f64(*(a2 + 72));
  v10 = (*a2 * 1000000.0);
  v11 = 0;
  v12 = 0;
  return sub_245F13694(a1, v8);
}

BOOL sub_245F13694(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  sub_245F24680(0x2B7304A0u, 1, 1, 0, 0, 0);
  sub_245F0A3B0(a1 + 40, a2);
  v4 = sub_245F0BF24(a1 + 40);
  sub_245F0A8D8(a1 + 40, 0, v25, v4, v24);
  if (v4)
  {
    sub_245F0BF74(a1 + 40, v24);
    sub_245F172A8((a1 + 20928), v24);
    sub_245F17E24(a1 + 20936, a1 + 15760, a1 + 8424);
    v6 = v5;
    v7 = sub_245F180CC((a1 + 20936), (a1 + 15760));
    *(a1 + 20968) = 0;
    v8 = v7;
    if (v7 < 0.61087)
    {
      *(a1 + 20968) = 1;
      v23 = *(a1 + 20928) + 0.04;
      v9 = __sincosf_stret(v6);
      v10 = sinf(v8);
      v11 = vmul_n_f32(v9, v23);
      v12 = vmul_n_f32(v11, v10);
      v13 = vbsl_s8(vcgtz_f32(v12), v12, vneg_f32(v12));
      if (v13.f32[0] >= 0.5 || v13.f32[1] >= 0.5)
      {
        *(a1 + 20968) = 0;
      }

      *(a1 + 24) = vrev64_s32(v11);
      *(a1 + 32) = vmla_f32(0x3E692A303E767A10, 0x3F2717593F10C49CLL, v13);
      v15 = *(a2 + 40);
      if (qword_27EE374E0 != -1)
      {
        sub_245F2CA24();
      }

      v16 = v15 * 0.000000999999997;
      v17 = off_27EE374E8;
      if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 24);
        v19 = *(a1 + 28);
        *buf = 134349824;
        *&buf[4] = v16;
        *v27 = 2050;
        *&v27[2] = v6;
        *&v27[10] = 2050;
        *&v27[12] = v18;
        v28 = 2050;
        v29 = v19;
        _os_log_impl(&dword_245D80000, v17, OS_LOG_TYPE_DEFAULT, "CMPrecisionFindingVelocityEstimator,timestamp,%{public}f,directionOfTravel,%{public}f,velocityX,%{public}f,velocityY,%{public}f", buf, 0x2Au);
      }

      *&v27[12] = 0;
      *buf = v16;
      *&buf[8] = v6;
      *&v20 = *(a1 + 20928);
      *(&v20 + 1) = *(a1 + 24);
      *v27 = v20;
      sub_245F22A34(buf);
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  sub_245F24680(0x2B7304A0u, 2, 1, v21, 0, 0);
  return v4;
}

os_log_t sub_245F1395C()
{
  result = os_log_create("com.apple.locationd.Motion", "PrecisionFinding");
  off_27EE374E8 = result;
  return result;
}

uint64_t sub_245F139A0(float32x4_t *a1, __n128 a2, __n128 a3, float a4, float a5)
{
  v8 = a3.n128_f32[0];
  v9 = a2.n128_u32[0];
  v27 = *MEMORY[0x277D85DE8];
  a2.n128_u64[0] = 0;
  a3.n128_u64[0] = 0;
  if (sub_245F13D8C(0, &unk_27EE37530, 0, 0, 0, 0, a2, a3, 0.0, 0.0))
  {
    if (qword_27EE37510 != -1)
    {
      sub_245F2CA4C();
    }

    v12 = qword_27EE37518;
    if (!os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_DEBUG))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 0;
    v13 = "WMM initialization encountered an error";
LABEL_11:
    _os_log_impl(&dword_245D80000, v12, OS_LOG_TYPE_DEBUG, v13, buf, 2u);
    return 0xFFFFFFFFLL;
  }

  LODWORD(qword_27EE376F8) = v9;
  *(&qword_27EE376F8 + 1) = v8;
  v10.n128_f32[0] = a4 / 1000.0;
  *&dword_27EE37700 = a4 / 1000.0;
  dword_27EE37704 = LODWORD(a5);
  v11.n128_u32[0] = v9;
  if (sub_245F13D8C(1, 0, &dword_27EE37708, &dword_27EE3770C, &dword_27EE37710, &flt_27EE37714, v10, v11, v8, a5))
  {
    if (qword_27EE37510 != -1)
    {
      sub_245F2CA4C();
    }

    v12 = qword_27EE37518;
    if (!os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_DEBUG))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 0;
    v13 = "WMM evaluation encountered an error";
    goto LABEL_11;
  }

  dword_27EE37718 = dword_27EE37708;
  dword_27EE3771C = dword_27EE3770C;
  dword_27EE37720 = dword_27EE37710;
  *&dword_27EE37704 = *&dword_27EE37704 + 1.0;
  v14.n128_u32[0] = dword_27EE37700;
  v15.n128_u32[0] = qword_27EE376F8;
  sub_245F13D8C(1, 0, &dword_27EE37708, &dword_27EE3770C, &dword_27EE37710, &flt_27EE37714, v14, v15, *(&qword_27EE376F8 + 1), *&dword_27EE37704);
  v25 = *&dword_27EE37720;
  v17 = *&dword_27EE37718;
  v19 = __sincosf_stret(*&dword_27EE37718 * 0.017453);
  cosval = v19.__cosval;
  LODWORD(v24) = *&v19;
  v20 = dword_27EE3771C;
  v21 = __sincosf_stret(*&dword_27EE3771C * 0.017453);
  if ((v25 * v21.__cosval) < 100.0)
  {
    v17 = log(-1.0);
    dword_27EE37718 = LODWORD(v17);
  }

  if (90.0 - fabsf(*&qword_27EE376F8) <= 0.001)
  {
    v17 = log(-1.0);
    dword_27EE37718 = LODWORD(v17);
    v23 = v17;
    v22.f32[0] = v17;
  }

  else
  {
    v22.f32[0] = v25 * (cosval * v21.__cosval);
    v23 = v25 * (v24 * v21.__cosval);
  }

  result = 0;
  v22.f32[1] = v23;
  v22.f32[2] = v25 * v21.__sinval;
  v22.f32[3] = v25;
  *a1 = vdivq_f32(v22, vdupq_n_s32(0x447A0000u));
  a1[1].f32[0] = (v25 * v21.__cosval) / 1000.0;
  a1[1].f32[1] = v17;
  a1[1].i32[2] = v20;
  return result;
}

uint64_t sub_245F13D8C(int a1, int *a2, float *a3, float *a4, float *a5, float *a6, __n128 a7, __n128 a8, float a9, float a10)
{
  v142 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    v14 = a8.n128_f32[0];
    v15 = a7.n128_f32[0];
    v16 = a10 - *&dword_27EE38824;
    v17 = &unk_27EE38000;
    v18 = *&dword_27EE38838;
    if (*&dword_27EE38838 < 0.0 && v16 < 0.0)
    {
      if (qword_27EE37510 != -1)
      {
        sub_245F2CA4C();
      }

      v19 = qword_27EE37518;
      v20 = 1;
      if (os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_INFO))
      {
        *buf = 134349312;
        v139 = a10;
        v140 = 2050;
        v141 = *&dword_27EE38824;
        v21 = "supplied date (%{public}f) outside valid range (epoch=%{public}f)";
        v22 = v19;
LABEL_41:
        v69 = 22;
LABEL_111:
        _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_INFO, v21, buf, v69);
        return v20;
      }

      return v20;
    }

    v51 = __sincosf_stret(a9 * 0.017453);
    sinval = v51.__sinval;
    cosval = v51.__cosval;
    v54 = &unk_27EE38000;
    v55 = *&dword_27EE38840 != v14 || *&dword_27EE3883C != v15;
    dword_27EE38468 = LODWORD(v51.__sinval);
    dword_27EE3849C = LODWORD(v51.__cosval);
    v56 = &unk_27EE38000;
    v57 = &unk_27EE38000;
    if (v55)
    {
      v58 = __sincosf_stret(v14 * 0.017453);
      v17 = &unk_27EE38000;
      v54 = &unk_27EE38000;
      v59 = sqrtf(*&dword_27EE38810 - (*&dword_27EE38818 * (v58.__sinval * v58.__sinval)));
      v60 = (*&dword_27EE38810 + (v59 * v15)) / ((v59 * v15) + *&dword_27EE38814);
      *&dword_27EE38848 = v58.__sinval / sqrtf((v58.__sinval * v58.__sinval) + ((v60 * v60) * (v58.__cosval * v58.__cosval)));
      *&v61 = sqrt(1.0 - (*&dword_27EE38848 * *&dword_27EE38848));
      dword_27EE3884C = v61;
      v62 = (v15 * v15) + (v59 * v15) * 2.0 + ((*&dword_27EE3881C - (*&dword_27EE38820 * (v58.__sinval * v58.__sinval))) / (v59 * v59));
      dword_27EE38850 = sqrtf(v62);
      v63 = sqrtf(((v58.__sinval * v58.__sinval) * *&dword_27EE38814) + (*&dword_27EE38810 * (v58.__cosval * v58.__cosval)));
      *&dword_27EE38854 = (v63 + v15) / *&dword_27EE38850;
      *&dword_27EE38858 = (v58.__sinval * (v58.__cosval * *&dword_27EE38818)) / (v63 * *&dword_27EE38850);
    }

    v64 = dword_27EE37724;
    if (*&dword_27EE38844 != a9)
    {
      if (dword_27EE37724 >= 2)
      {
        v65 = dword_27EE37724 + 1;
        v71 = dword_27EE37724 - 1;
        v72 = &dword_27EE384A0;
        v73 = v51.__sinval;
        v74 = &dword_27EE3846C;
        do
        {
          v75 = *&dword_27EE3849C;
          v76 = (*&dword_27EE3849C * sinval) + (v73 * cosval);
          *v74++ = v76;
          v73 = *&dword_27EE38468;
          cosval = (v75 * cosval) - (*&dword_27EE38468 * sinval);
          *v72++ = cosval;
          sinval = v76;
          --v71;
        }

        while (v71);
      }

      else
      {
        v65 = 2;
      }

      dword_27EE3772C = v65;
    }

    v77 = *&dword_27EE3884C;
    if (v64 >= 1)
    {
      v78 = 0;
      v79 = 0;
      v80 = 3;
      v81 = &unk_27EE37CA8;
      v82 = &unk_27EE37760;
      v83 = &unk_27EE37A04;
      v84 = 1;
      v85 = *&dword_27EE3880C / *&dword_27EE38850;
      v86 = v85 * v85;
      v87 = *&dword_27EE38848;
      v88 = -*&dword_27EE3884C;
      v89 = *dword_27EE38498;
      v90 = dword_27EE38534[0];
      v91 = *dword_27EE38464;
      v92 = 0.0;
      v93 = 0.0;
      v94 = 0.0;
      v95 = 0.0;
      while (1)
      {
        v96 = 0;
        v97 = 0;
        v98 = -(v85 * v86);
        v86 = v85 * v86;
        v135 = v84 + 1;
        v99 = flt_27EE384CC[v84];
        v100 = &dword_27EE381C0[v84];
        v101 = v84 - 2;
        v102 = v100 - 1;
        v103 = v78;
        v104 = v84 - 1;
        v136 = v79;
        v137 = v103;
        v105 = v79 + 1;
        v106 = v103;
        v107 = v80;
        do
        {
          if (v55)
          {
            if (v105 == v97)
            {
              *&v100[13 * v84] = v77 * *&v102[13 * v84 - 13];
              *&dword_27EE37F1C[13 * v84 + v84] = (v87 * *&v102[13 * v84 - 13]) + (v77 * *&dword_27EE37F1C[13 * v84 - 14 + v84]);
            }

            else
            {
              if (v84 == 1 && !v97)
              {
                v115 = *&dword_27EE37F1C[v104];
                *&dword_27EE381C4 = v87 * *dword_27EE381C0;
                *&dword_27EE37F20 = (*(v100 - 1) * v88) + (v87 * v115);
                if (v18 == a10)
                {
LABEL_63:
                  v108 = v86 * *(&dword_27EE381C0[1] + v106);
LABEL_64:
                  v116 = flt_27EE37C78[v84];
                  v113 = v116 * v89;
                  v114 = v116 * v91;
                  goto LABEL_65;
                }

LABEL_56:
                *(&flt_27EE37C78[1] + v106) = *(&dword_27EE37730[1] + v106) + (v16 * *(&dword_27EE379D4[1] + v106));
                if (!v97)
                {
                  goto LABEL_63;
                }

                v81[v97] = v82[v97] + (v16 * v83[v97]);
                v108 = v86 * *(&dword_27EE381C0[1] + v106);
                goto LABEL_59;
              }

              if (v84 >= 2)
              {
                if (v97 <= v101)
                {
                  v121 = *(&dword_27EE37F1C[-1] + v106);
                  v120 = v96;
                }

                else
                {
                  v120 = 13 * v97;
                  *(&dword_27EE381C0[-1] + v106) = 0;
                  *(&dword_27EE37F1C[-1] + v106) = 0;
                  v121 = 0.0;
                }

                v122 = *&v102[v120];
                v123 = *(&unk_27EE38568 + v106 + 4);
                *&v100[v120] = (v87 * v122) - (v123 * *&v100[v120 - 2]);
                *(&dword_27EE37F1C[1] + v106) = ((v122 * v88) + (v87 * *(dword_27EE37F1C + v106))) - (v123 * v121);
              }
            }
          }

          if (v18 != a10)
          {
            goto LABEL_56;
          }

          v108 = v86 * *(&dword_27EE381C0[1] + v106);
          if (!v97)
          {
            goto LABEL_64;
          }

LABEL_59:
          v109 = *(&flt_27EE37C78[1] + v106);
          v110 = *&dword_27EE38498[v97];
          v111 = v81[v97];
          v112 = *&dword_27EE38464[v97];
          v113 = (v111 * v112) + (v109 * v110);
          v114 = (v109 * v112) - (v111 * v110);
LABEL_65:
          v117 = *(&dword_27EE37F1C[1] + v106);
          v118 = v114 * flt_27EE38500[v97];
          if (v97 == 1 && v77 == 0.0)
          {
            if (v84 == 1)
            {
              dword_27EE38538 = v90;
              v119 = *&v90;
            }

            else
            {
              v119 = (v87 * *&dword_27EE38534[v104]) - (*(&unk_27EE38568 + v84 + 13) * *&dword_27EE38534[v101]);
              *&dword_27EE38534[v84] = v119;
            }

            v95 = v95 + (v118 * (v86 * v119));
          }

          v92 = v92 + ((v113 * v98) * v117);
          v93 = v93 + (v118 * v108);
          v94 = v94 + ((v113 * v99) * v108);
          ++v97;
          --v107;
          v96 += 13;
          v106 += 52;
        }

        while (v107 > 1);
        ++v80;
        v79 = v136 + 1;
        v78 = v137 + 4;
        v81 += 13;
        v82 += 13;
        v83 += 13;
        v124 = v64 + 1;
        ++v84;
        if (v135 == v64 + 1)
        {
          dword_27EE3772C = v97;
          v17 = &unk_27EE38000;
          v54 = &unk_27EE38000;
          v56 = &unk_27EE38000;
          v57 = &unk_27EE38000;
          goto LABEL_81;
        }
      }
    }

    v124 = 1;
    v94 = 0.0;
    v92 = 0.0;
    v95 = 0.0;
    v93 = 0.0;
LABEL_81:
    dword_27EE37728 = v124;
    if (v77 == 0.0)
    {
      v125 = v95;
    }

    else
    {
      v125 = v93 / v77;
    }

    v126 = v56[533];
    v127 = v57[534];
    v128 = -(v94 * v127) - (v92 * v126);
    v129 = (v92 * v127) - (v94 * v126);
    v130 = sqrtf((v125 * v125) + (v128 * v128));
    *a5 = sqrtf((v129 * v129) + (v130 * v130));
    *a3 = atan2f(v125, v128) / 0.017453;
    *a4 = atan2f(v129, v130) / 0.017453;
    *a6 = -999.0;
    if (fabsf(v14) >= 55.0)
    {
      v131 = -999.0;
      if (a9 >= 0.0 && v14 > 0.0)
      {
        v131 = *a3 - a9;
        *a6 = v131;
      }

      if (v14 > 0.0 && a9 < 0.0)
      {
        v131 = fabsf(a9) + *a3;
        *a6 = v131;
      }

      if (a9 >= 0.0 && v14 < 0.0)
      {
        v131 = *a3 + a9;
        *a6 = v131;
      }

      if (v14 < 0.0 && a9 < 0.0)
      {
        v131 = *a3 - fabsf(a9);
        *a6 = v131;
      }

      if (v131 > 180.0)
      {
        v131 = v131 + -360.0;
LABEL_100:
        if (v131 < -180.0)
        {
          v131 = v131 + 360.0;
        }

        *a6 = v131;
        goto LABEL_103;
      }

      if (v131 < -180.0)
      {
        goto LABEL_100;
      }
    }

LABEL_103:
    v20 = 0;
    v17[526] = a10;
    v54[527] = v15;
    dword_27EE38840 = LODWORD(v14);
    dword_27EE38844 = LODWORD(a9);
    return v20;
  }

  v24 = fopen(byte_27EE38A28, "r");
  if (v24)
  {
    v25 = v24;
    dword_27EE37724 = *a2;
    dword_27EE38464[0] = 0;
    dword_27EE38534[0] = 1065353216;
    dword_27EE381C0[0] = 1065353216;
    dword_27EE38498[0] = 1065353216;
    dword_27EE37F1C[0] = 0;
    dword_27EE3880C = 1170676122;
    dword_27EE38810 = 1276849967;
    dword_27EE38814 = 1276781883;
    dword_27EE38818 = 1216674304;
    dword_27EE3881C = 1488725079;
    dword_27EE38820 = 1436593536;
    dword_27EE37730[0] = 0;
    dword_27EE379D4[0] = 0;
    if (fgets(byte_27EE3885C, 80, v24))
    {
      sscanf(byte_27EE3885C, "%f", &dword_27EE38824);
      if (fgets(byte_27EE3885C, 80, v25))
      {
        v26 = 0;
        do
        {
          do
          {
            if (!byte_27EE3885C[v26])
            {
              break;
            }

            *(&dword_27EE388AD + v26) = byte_27EE3885C[v26];
            ++v26;
            *(&dword_27EE388AD + v26) = 0;
          }

          while (v26 != 4);
          if (!(dword_27EE388AD ^ 0x39393939 | byte_27EE388B1))
          {
            break;
          }

          sscanf(byte_27EE3885C, "%d%d%f%f%f%f", &dword_27EE37728, &dword_27EE3772C, &dword_27EE38828, &dword_27EE3882C, &dword_27EE38830, &dword_27EE38834);
          v27 = dword_27EE3772C;
          if (dword_27EE3772C > 0xC || (v28 = dword_27EE37728, dword_27EE37728 >= 0xD))
          {
            fclose(v25);
            if (qword_27EE37510 != -1)
            {
              sub_245F2CA4C();
            }

            v70 = qword_27EE37518;
            v20 = 1;
            if (os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v21 = "geomagnetic data file appears to have invalid dimensions";
              goto LABEL_110;
            }

            return v20;
          }

          if (dword_27EE3772C <= dword_27EE37728)
          {
            dword_27EE37730[13 * dword_27EE3772C + dword_27EE37728] = dword_27EE38828;
            dword_27EE379D4[13 * v27 + v28] = dword_27EE38830;
            if (v27)
            {
              v29 = v27 - 1;
              dword_27EE37730[13 * v28 + v29] = dword_27EE3882C;
              dword_27EE379D4[13 * v28 + v29] = dword_27EE38834;
            }
          }

          v30 = fgets(byte_27EE3885C, 80, v25);
          v26 = 0;
        }

        while (v30);
      }

      dword_27EE381C0[0] = 1065353216;
      if (dword_27EE37724 < 1)
      {
        LODWORD(v32) = 1;
      }

      else
      {
        v31 = 0;
        v32 = dword_27EE37724 + 1;
        v33 = &unk_27EE379D8;
        v34 = &unk_27EE37A04;
        v35 = &unk_27EE37734;
        v36 = &unk_27EE37760;
        v37 = &dword_27EE381C4;
        v38 = &unk_27EE3856C;
        v39 = 1;
        do
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = &dword_27EE381C0[v39];
          v44 = 2 * v39 - 1;
          *v43 = (*(v43 - 1) * v44) / v39;
          v45 = v39 + 1;
          v46 = (v44 * (2 * v39 - 3));
          v47 = 2;
          v48 = 3;
          do
          {
            v38[v41] = ((v31 + v42) * (v31 + v40)) / v46;
            if (v41)
            {
              v49 = v43[v41 - 13] * sqrtf((v47 * (v31 + v40 + 2)) / (v31 + v42 + 1));
              v43[v41] = v49;
              v36[v42] = v36[v42] * v49;
              v34[v42] = v49 * v34[v42];
              v47 = 1;
            }

            v50 = *&v37[v41];
            v35[v41] = v50 * v35[v41];
            v33[v41] = v50 * v33[v41];
            ++v42;
            v41 += 13;
            --v40;
            --v48;
          }

          while (v31 + v48 > 1);
          flt_27EE384CC[v39] = v45;
          flt_27EE38500[v39] = v39;
          ++v37;
          ++v31;
          ++v33;
          ++v35;
          ++v38;
          v34 += 13;
          v36 += 13;
          ++v39;
        }

        while (v45 != v32);
        dword_27EE3772C = v42;
      }

      dword_27EE37728 = v32;
      dword_27EE385A0 = 0;
      dword_27EE38844 = -998637568;
      dword_27EE38840 = -998637568;
      dword_27EE3883C = -998637568;
      dword_27EE38838 = -998637568;
      fclose(v25);
      return 0;
    }

    else
    {
      fclose(v25);
      if (qword_27EE37510 != -1)
      {
        sub_245F2CA4C();
      }

      v70 = qword_27EE37518;
      v20 = 1;
      if (os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v21 = "geomagnetic data file appears to be empty";
LABEL_110:
        v22 = v70;
        v69 = 2;
        goto LABEL_111;
      }
    }
  }

  else
  {
    if (qword_27EE37510 != -1)
    {
      sub_245F2CA4C();
    }

    v66 = qword_27EE37518;
    v20 = 1;
    if (os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_INFO))
    {
      v67 = __error();
      v68 = strerror(*v67);
      *buf = 136315394;
      v139 = COERCE_DOUBLE(byte_27EE38A28);
      v140 = 2082;
      v141 = *&v68;
      v21 = "could not open geomagnetic data file %s (%{public}s)";
      v22 = v66;
      goto LABEL_41;
    }
  }

  return v20;
}

os_log_t sub_245F14B78()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_27EE37518 = result;
  return result;
}

uint64_t sub_245F14BA8(uint64_t a1, unint64_t a2)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  v3 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  sub_245F15E24((a1 + 56), a2);
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a1 + 16);
  sub_245F14DE4(v3, *a1);
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  return a1;
}

void sub_245F14C10(_Unwind_Exception *a1)
{
  sub_245F15D58((v1 + 56));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_245F14C3C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a1 + 16);
  sub_245F14DE4((a1 + 16), *a1);
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
}

void sub_245F14C7C(void *a1, float *a2, float *a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[3];
  v7 = a1[4];
  if (v8 >= v7)
  {
    v10 = a1[2];
    v11 = (v8 - v10) >> 5;
    if ((v11 + 1) >> 59)
    {
      sub_245DF85A4();
    }

    v12 = v7 - v10;
    v13 = v12 >> 4;
    if (v12 >> 4 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      sub_245F15DAC((a1 + 2), v14);
    }

    v15 = 32 * v11;
    sub_245F17158(v15, a2, a3, a4, a5);
    v9 = v15 + 32;
    v16 = a1[2];
    v17 = a1[3];
    v18 = (v15 + v16 - v17);
    if (v17 != v16)
    {
      v19 = (v15 + v16 - v17);
      do
      {
        v20 = *v16;
        v21 = *(v16 + 1);
        v16 += 32;
        *v19 = v20;
        v19[1] = v21;
        v19 += 2;
      }

      while (v16 != v17);
      v16 = a1[2];
    }

    a1[2] = v18;
    a1[3] = v9;
    a1[4] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    sub_245F17158(a1[3], a2, a3, a4, a5);
    v9 = v8 + 32;
    a1[3] = v8 + 32;
  }

  a1[3] = v9;
  ++a1[1];
}

void sub_245F14DC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_245F14DE4(char **a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_245F15DAC(a1, a2);
    }

    sub_245DF85A4();
  }
}

void sub_245F14E88(uint64_t a1)
{
  *(a1 + 40) = sub_245F14EC4(a1);
  *(a1 + 44) = sub_245F14F7C(a1);
  *(a1 + 48) = 1;
}

float sub_245F14EC4(uint64_t a1)
{
  memset(v8, 0, sizeof(v8));
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  while (v1 != v2)
  {
    sub_245F171AC(v1);
    v7 = v3;
    sub_245F154C8(v8, &v7);
    v1 += 8;
  }

  sub_245F12BC8(v6, v8);
  v4 = sub_245F15550(v6);
  sub_245F12B1C(v6);
  sub_245F12B1C(v8);
  return v4;
}

void sub_245F14F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_245F12B1C(va);
  sub_245F12B1C(va1);
  _Unwind_Resume(a1);
}

float sub_245F14F7C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0.0;
    do
    {
      v6 = *(a1 + 16) + v2;
      v13 = *(v6 + 16);
      v12[0] = sub_245F1715C(v6, *(a1 + 40));
      v12[1] = v7;
      v8 = sub_245F0FC38(&v13, v12);
      v5 = v5 + ((v9 * v9) + (v8 * v8));
      v4 += 2;
      ++v3;
      v2 += 32;
    }

    while (*(a1 + 8) > v3);
    v10 = v5 / v4;
  }

  else
  {
    v10 = NAN;
  }

  return sqrtf(v10);
}

void sub_245F15034(uint64_t a1, float a2)
{
  *(a1 + 40) = (sub_245F14EC4(a1) + a2) * 0.5;
  *(a1 + 44) = sub_245F14F7C(a1);
  *(a1 + 48) = 1;
}

float sub_245F15088(uint64_t a1, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 1) == 0)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CA60();
    }

    v12 = qword_27EE374F8;
    v6 = 0.0;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "[BarrelRoll]:[CMAPencilDMYawAlignmentSolver]:[iterate] Reject iterate request before initialization.";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_27:
      _os_log_impl(&dword_245D80000, v14, v15, v13, buf, 2u);
    }

    return v6;
  }

  if ((a2 & 0x80000000) != 0)
  {
    return 0.0;
  }

  v3 = *(a1 + 40);
  if (a2 >= 0x32)
  {
    v4 = 50;
  }

  else
  {
    v4 = a2;
  }

  v18 = 0;
  v5 = 0.01;
  v6 = 0.0;
  if (sub_245F153E0(a1, &v18 + 1, &v18, 0.01))
  {
    v7 = 0;
    v8 = v4 + 1;
    while (1)
    {
      *(a1 + 40) = *(&v18 + 1) + *(a1 + 40);
      v6 = sub_245F14F7C(a1);
      v9 = *(a1 + 44);
      if ((v6 - v9) <= 0.0)
      {
        if (fabsf(v6 - v9) < (fabsf(v9) * 0.001))
        {
          if (qword_27EE374F0 != -1)
          {
            sub_245F2CA74();
          }

          v17 = qword_27EE374F8;
          if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v13 = "[BarrelRoll]:[CMAPencilDMYawAlignmentSolver]:[iterate] Converged!";
LABEL_38:
            v14 = v17;
            v15 = OS_LOG_TYPE_DEBUG;
            goto LABEL_27;
          }

          return v6;
        }

        *(a1 + 44) = v6;
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CA74();
        }

        v5 = fmaxf(v5 * 0.5, 0.00000001);
        v11 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v20 = v5;
          _os_log_impl(&dword_245D80000, v11, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilDMYawAlignmentSolver]:[iterate] Accept (lambda = %.6f)", buf, 0xCu);
        }

        v7 = 0;
      }

      else
      {
        *(a1 + 40) = v3;
        *(a1 + 44) = sub_245F14F7C(a1);
        if (v7 >= 3)
        {
          if (qword_27EE374F0 != -1)
          {
            sub_245F2CA74();
          }

          v17 = qword_27EE374F8;
          if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v13 = "[BarrelRoll]:[CMAPencilDMYawAlignmentSolver]:[iterate] Max rollbacks exceeded, exiting!";
            goto LABEL_38;
          }

          return v6;
        }

        if (qword_27EE374F0 != -1)
        {
          sub_245F2CA74();
        }

        v5 = v5 * 5.0;
        ++v7;
        v10 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v20 = v5;
          _os_log_impl(&dword_245D80000, v10, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilDMYawAlignmentSolver]:[iterate] Rollback (lambda = %.6f)", buf, 0xCu);
        }
      }

      if (--v8)
      {
        v3 = *(a1 + 40);
        v18 = 0;
        if (sub_245F153E0(a1, &v18 + 1, &v18, v5))
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

uint64_t sub_245F153E0(uint64_t a1, float *a2, float *a3, float a4)
{
  sub_245F156A4((a1 + 56));
  v8 = __sincosf_stret(*(a1 + 40));
  v18[0] = -v8.__sinval;
  v18[1] = -v8.__cosval;
  v18[2] = v8.__cosval;
  v18[3] = -v8.__sinval;
  if (*(a1 + 8))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a1 + 16) + v9;
      v17 = *(v11 + 16);
      v16[0] = sub_245F0FC38(v18, v11);
      v16[1] = v12;
      v15[0] = sub_245F1715C((*(a1 + 16) + v9), *(a1 + 40));
      v15[1] = v13;
      sub_245F15720((a1 + 56), v15, v16, &v17);
      ++v10;
      v9 += 32;
    }

    while (*(a1 + 8) > v10);
  }

  return sub_245F1592C((a1 + 56), a2, a3, a4);
}

float sub_245F154C8(unint64_t *a1, float *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    sub_245F160BC(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  result = *a2;
  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  a1[5] = v7 + 1;
  return result;
}

float sub_245F15550(void *a1)
{
  v1 = a1[5];
  if (!v1)
  {
    return 0.0;
  }

  if (v1 == 1)
  {
    v3 = a1[4];
  }

  else
  {
    v5 = v1 >> 1;
    v6 = a1[4];
    v7 = a1[1];
    v8 = (v7 + 8 * (v6 >> 10));
    if (a1[2] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = (*v8 + 4 * (a1[4] & 0x3FFLL));
    }

    v18[0] = v7 + 8 * (v6 >> 10);
    v18[1] = v9;
    v11 = sub_245F13100(v18, v5);
    v12 = a1[5];
    v13 = a1[4] + v12;
    v14 = a1[1];
    v15 = (v14 + 8 * (v13 >> 10));
    if (a1[2] == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = (*v15 + 4 * (v13 & 0x3FF));
    }

    if (v10 != v16)
    {
      sub_245F16290(v8, v9, v11, v10, v15, v16, &v19);
      v12 = a1[5];
    }

    if ((v12 & 1) == 0)
    {
      v17 = a1[4] + v5;
      return (*(*(a1[1] + (((v17 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v17 - 1) & 0x3FF)) + *(*(a1[1] + ((v17 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v17 & 0x3FF))) * 0.5;
    }

    v3 = a1[4] + v5;
  }

  return *(*(a1[1] + ((v3 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v3 & 0x3FF));
}

void sub_245F156A4(void *a1)
{
  a1[1] = 0;
  v2 = a1[2];
  v3 = a1[3] - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  v4 = a1[5];
  v5 = a1[6] - v4;
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  v6 = a1[8];
  v7 = a1[9] - v6;
  if (v7 >= 1)
  {

    bzero(v6, v7);
  }
}

void sub_245F15720(unint64_t *a1, float *a2, float *a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  if (v5 <= *a1)
  {
    if (v5 == *a1 - 1)
    {
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CA60();
      }

      v12 = qword_27EE374F8;
      v13 = os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG);
      v5 = a1[1];
      if (v13)
      {
        v14 = *a1;
        *buf = 134218240;
        v25 = v5;
        v26 = 2048;
        v27 = v14;
        _os_log_impl(&dword_245D80000, v12, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAMEstimator1DConstant]:[add] Adding last sample. Number of added inputs: %lu, initial allocation: %lu.", buf, 0x16u);
        v5 = a1[1];
      }
    }

    *(a1[8] + 8 * v5) = 2 * v5;
    *buf = sub_245F0FC38(a4, a3);
    LODWORD(v25) = v15;
    v16 = sub_245F0FC38(a4, a2);
    v17 = 0;
    *v23 = v16;
    v23[1] = v18;
    v19 = 1;
    do
    {
      v20 = v19;
      *(a1[2] + 4 * *(a1[8] + 8 * a1[1]) + 4 * v17) = sub_245F0F064(buf, v17);
      v21 = sub_245F0F064(v23, v17);
      v19 = 0;
      v22 = a1[1];
      *(a1[5] + 4 * *(a1[8] + 8 * v22) + 4 * v17) = v21;
      v17 = 1;
    }

    while ((v20 & 1) != 0);
    a1[1] = v22 + 1;
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CA60();
    }

    v6 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      v7 = a1[1];
      *buf = 134218240;
      v25 = v7;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMAMEstimator1DConstant]:[add] Number of added inputs: %lu exceeded the initial allocation: %lu . Will NOT add this sample.", buf, 0x16u);
    }
  }
}

uint64_t sub_245F1592C(void *a1, float *a2, float *a3, float a4)
{
  v5 = a1[1];
  if (v5)
  {
    *v52 = 1065353216;
    sub_245F15ED0(buf, v5, v52);
    v9 = 0;
    *a2 = 0.0;
    v10 = 0.0;
    v11 = 3.4028e38;
    while (1)
    {
      if (v9 > 0x63)
      {
LABEL_42:
        v42 = 1;
        goto LABEL_53;
      }

      if (!sub_245F168E0(a1, buf, a2, a3, a4))
      {
        break;
      }

      v12 = 2 * a1[1];
      LODWORD(v51[0]) = 0;
      sub_245F15ED0(v52, v12, v51);
      v13 = 2 * a1[1];
      if (v13)
      {
        v14 = a1[5];
        v15 = a1[2];
        v16 = 2 * a1[1];
        v17 = *v52;
        do
        {
          v18 = *v14++;
          v19 = v18;
          v20 = *v15++;
          *v17++ = v19 - (v20 * *a2);
          --v16;
        }

        while (v16);
      }

      LODWORD(__p) = 0;
      sub_245F15ED0(v51, v13, &__p);
      v21 = a1[1];
      v22 = 2 * v21;
      if (2 * v21)
      {
        v23 = a1[5];
        v24 = a1[2];
        v25 = v51[0];
        do
        {
          v26 = *v23++;
          v27 = v26;
          v28 = *v24++;
          *v25++ = v27 - (v28 * v10);
          --v22;
        }

        while (v22);
      }

      v47 = 0.0;
      sub_245F15ED0(&__p, v21, &v47);
      v30 = a1[1];
      if (v30)
      {
        v31 = 0;
        v32 = a1[8];
        v33 = 0.0;
        do
        {
          v34 = *(v32 + 8 * v31);
          v35 = 0.0;
          if (v34 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v36 = 0;
            do
            {
              v37 = *(v51[0] + v34);
              *sub_245F102D0(&v47, v36) = v37;
              v38 = *(*v52 + 4 * v34);
              *sub_245F102D0(v46, v36++) = v38;
              v35 = v35 + (*(*v52 + 4 * v34) * *(*v52 + 4 * v34));
              ++v34;
              v32 = a1[8];
            }

            while (v34 < *(v32 + 8 * v31) + 2);
            v29 = v47;
            v30 = a1[1];
          }

          if (v29 <= 0.0)
          {
            v29 = -v29;
          }

          v39 = v48;
          if (v48 <= 0.0)
          {
            v39 = -v48;
          }

          if (v39 > v29)
          {
            v29 = v39;
          }

          if (v29 <= 1.345)
          {
            v40 = 1.0;
          }

          else
          {
            v40 = 1.345 / v29;
          }

          *(__p + v31) = v40;
          v29 = *(*buf + 4 * v31);
          v33 = v33 + (v29 * v35);
          ++v31;
        }

        while (v30 > v31);
      }

      else
      {
        v33 = 0.0;
      }

      if ((v33 - v11) <= 0.0)
      {
        sub_245DF843C(buf, __p, v50, (v50 - __p) >> 2);
        if (fabsf(v33 - v11) >= (fabsf(v11) * 0.00001))
        {
          v10 = *a2;
          ++v9;
          v41 = 1;
        }

        else
        {
          v41 = 0;
        }

        v11 = v33;
      }

      else
      {
        v41 = 0;
        *a2 = v10;
      }

      if (__p)
      {
        v50 = __p;
        operator delete(__p);
      }

      if (v51[0])
      {
        v51[1] = v51[0];
        operator delete(v51[0]);
      }

      if (*v52)
      {
        v53 = *v52;
        operator delete(*v52);
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if (qword_27EE374F0 != -1)
    {
      sub_245F2CA74();
    }

    v44 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      *v52 = 0;
      _os_log_impl(&dword_245D80000, v44, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMAMEstimator1DConstant]:[solve] Ill conditioned. Exiting solver.", v52, 2u);
    }

    v42 = 0;
LABEL_53:
    if (*buf)
    {
      v55 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CA60();
    }

    v43 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_245D80000, v43, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMAMEstimator1DConstant]:[solve] Called solve before adding any constraints. Aborting and returning false.", buf, 2u);
    }

    return 0;
  }

  return v42;
}

void sub_245F15CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_245F15D58(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_245F15DAC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_245DF8694();
}

os_log_t sub_245F15DF4()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

uint64_t *sub_245F15E24(uint64_t *a1, unint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  v4 = 2 * a2;
  LODWORD(v6) = 0;
  sub_245F15ED0(a1 + 2, 2 * a2, &v6);
  LODWORD(v6) = 0;
  sub_245F15ED0(a1 + 5, v4, &v6);
  v6 = 0;
  sub_245F15FE4(a1 + 8, a2, &v6);
  return a1;
}

void sub_245F15E9C(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  if (v3)
  {
    v1[6] = v3;
    operator delete(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_245F15ED0(uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_245DF8568(a1, a2);
  }

  return a1;
}

void sub_245F15FC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_245F15FE4(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_245DF87F4(a1, a2);
  }

  return a1;
}

void sub_245F160A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_245F160BC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
    sub_245F1358C(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_245F13164(a1, &v9);
}

void sub_245F16244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *sub_245F16290(char *result, float *a2, char *a3, float *a4, char *a5, float *a6, uint64_t a7)
{
  v79 = result;
  v80 = a2;
  if (a6 != a4)
  {
    v7 = a6;
    while (1)
    {
      if (v7 == a2)
      {
        return result;
      }

      v11 = *a5;
      v12 = ((v7 - *a5) >> 2) + ((a5 - result) << 7) - ((a2 - *result) >> 2);
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 3)
      {
        v70 = v80;
        v71 = a2 + 1;
        if ((a2 + 1) - *v79 == 4096)
        {
          v71 = v79[1];
        }

        if (v7 == v11)
        {
          v7 = (*(a5 - 1) + 4096);
        }

        v72 = *v71;
        v73 = *v80;
        v74 = *(v7 - 1);
        if (*v71 >= *v80)
        {
          if (v74 < v72)
          {
            *v71 = v74;
            *(v7 - 1) = v72;
            v77 = *v70;
            if (*v71 < *v70)
            {
              *v70 = *v71;
              *v71 = v77;
            }
          }
        }

        else
        {
          if (v74 >= v72)
          {
            *v80 = v72;
            *v71 = v73;
            v78 = *(v7 - 1);
            if (v78 >= v73)
            {
              return result;
            }

            *v71 = v78;
          }

          else
          {
            *v80 = v74;
          }

          *(v7 - 1) = v73;
        }

        return result;
      }

      if (v12 == 2)
      {
        if (v7 == v11)
        {
          v7 = (*(a5 - 1) + 4096);
        }

        v75 = *(v7 - 1);
        if (v75 < *a2)
        {
          v76 = *v80;
          *v80 = v75;
          *(v7 - 1) = v76;
        }

        return result;
      }

      if (v12 <= 7)
      {
        return sub_245F16834(v79, v80, a5, v7);
      }

      sub_245F13100(&v79, v12 >> 1);
      v14 = v13;
      v15 = *a5;
      v16 = *a5;
      v17 = a5;
      v18 = v7;
      if (v7 == *a5)
      {
        v17 = a5 - 8;
        v16 = *(a5 - 1);
        v18 = v16 + 1024;
      }

      v19 = v80;
      v21 = *(v18 - 1);
      v20 = v18 - 1;
      v22 = v21;
      v23 = *v13;
      v24 = *v80;
      if (*v13 < *v80)
      {
        break;
      }

      if (v22 < v23)
      {
        *v13 = v22;
        *v20 = v23;
        v25 = *v19;
        if (*v13 < *v19)
        {
          *v19 = *v13;
          *v13 = v25;
        }

        goto LABEL_20;
      }

      v26 = 0;
LABEL_22:
      result = v79;
      a2 = v80;
      v27 = *v80;
      if (*v80 >= *v14)
      {
        while (1)
        {
          if (v20 == v16)
          {
            v28 = *(v17 - 1);
            v17 -= 8;
            v16 = v28;
            v20 = v28 + 1024;
          }

          if (v80 == --v20)
          {
            break;
          }

          if (*v20 < *v14)
          {
            *v80 = *v20;
            *v20 = v27;
            if (v26)
            {
              v26 = 2;
            }

            else
            {
              v26 = 1;
            }

            goto LABEL_30;
          }
        }

        v52 = v80 + 1;
        v53 = *v79;
        if ((v80 + 1) - *v79 == 4096)
        {
          result = (v79 + 1);
          v53 = v79[1];
          v52 = v53;
        }

        v54 = a5;
        v55 = v7;
        if (v7 == v15)
        {
          v54 = a5 - 8;
          v15 = *(a5 - 1);
          v55 = v15 + 1024;
        }

        v57 = *(v55 - 1);
        v56 = v55 - 1;
        v58 = v57;
        if (v27 >= v57)
        {
          while (v52 != v56)
          {
            v66 = *v52;
            if (v27 < *v52)
            {
              *v52++ = v58;
              *v56 = v66;
              if (v52 - v53 == 4096)
              {
                v69 = *(result + 1);
                result += 8;
                v53 = v69;
                v52 = v69;
              }

              goto LABEL_79;
            }

            if (++v52 - v53 == 4096)
            {
              v67 = *(result + 1);
              result += 8;
              v53 = v67;
              v52 = v67;
            }
          }

          return result;
        }

LABEL_79:
        if (v52 == v56)
        {
          return result;
        }

        while (1)
        {
          v59 = *a2;
          while (1)
          {
            v60 = *v52;
            if (v59 < *v52)
            {
              break;
            }

            if (++v52 - v53 == 4096)
            {
              v61 = *(result + 1);
              result += 8;
              v53 = v61;
              v52 = v61;
            }
          }

          do
          {
            if (v56 == v15)
            {
              v62 = *(v54 - 1);
              v54 -= 8;
              v15 = v62;
              v56 = v62 + 1024;
            }

            v63 = *--v56;
            v64 = v63;
          }

          while (v59 < v63);
          if (result >= v54 && (result != v54 || v52 >= v56))
          {
            break;
          }

          *v52++ = v64;
          *v56 = v60;
          if (v52 - v53 == 4096)
          {
            v65 = *(result + 1);
            result += 8;
            v53 = v65;
            v52 = v65;
          }
        }

        if (result > a3 || v52 > a4 && result == a3)
        {
          return result;
        }

        goto LABEL_103;
      }

LABEL_30:
      v29 = a2 + 1;
      v30 = *result;
      v31 = *result;
      v32 = result;
      if ((a2 - *result + 4) == 4096)
      {
        v32 = result + 8;
        v31 = *(result + 1);
        v29 = v31;
      }

      if (v32 < v17 || v32 == v17 && v29 < v20)
      {
        while (1)
        {
          v33 = *v14;
          while (1)
          {
            v34 = *v29;
            if (*v29 >= v33)
            {
              break;
            }

            if (++v29 - v31 == 4096)
            {
              v35 = *(v32 + 1);
              v32 += 8;
              v31 = v35;
              v29 = v35;
            }
          }

          do
          {
            if (v20 == v16)
            {
              v36 = *(v17 - 1);
              v17 -= 8;
              v16 = v36;
              v20 = v36 + 1024;
            }

            v37 = *--v20;
            v38 = v37;
          }

          while (v37 >= v33);
          if (v32 >= v17 && (v32 != v17 || v29 >= v20))
          {
            break;
          }

          v39 = v14 == v29;
          *v29++ = v38;
          *v20 = v34;
          ++v26;
          if (v39)
          {
            v14 = v20;
          }

          if (v29 - v31 == 4096)
          {
            v40 = *(v32 + 1);
            v32 += 8;
            v31 = v40;
            v29 = v40;
          }
        }
      }

      if (v29 != v14)
      {
        v41 = *v29;
        if (*v14 < *v29)
        {
          *v29 = *v14;
          *v14 = v41;
          ++v26;
        }
      }

      if (v29 == a4)
      {
        return result;
      }

      if (!v26)
      {
        if (v32 > a3 || (v42 = v31, v43 = v29, v44 = v32, v29 > a4) && (v42 = v31, v43 = v29, v44 = v32, v32 == a3))
        {
          v45 = a2;
          v46 = result;
          while (1)
          {
            v47 = v45 + 1;
            if ((v45 + 1) - v30 == 4096)
            {
              v48 = *(v46 + 1);
              v46 += 8;
              v30 = v48;
              v47 = v48;
            }

            if (v47 == v29)
            {
              break;
            }

            v49 = *v47 < *v45;
            v45 = v47;
            if (v49)
            {
              goto LABEL_54;
            }
          }
        }

        else
        {
          while (1)
          {
            v50 = v43 + 1;
            if ((v43 + 1) - v42 == 4096)
            {
              v51 = *(v44 + 1);
              v44 += 8;
              v42 = v51;
              v50 = v51;
            }

            if (v50 == v7)
            {
              break;
            }

            v49 = *v50 < *v43;
            v43 = v50;
            if (v49)
            {
              goto LABEL_54;
            }
          }
        }

        return result;
      }

LABEL_54:
      if (v32 <= a3 && (v29 <= a4 || v32 != a3))
      {
        v52 = v29 + 1;
        if ((v29 + 1) - v31 == 4096)
        {
          v68 = *(v32 + 1);
          v32 += 8;
          v52 = v68;
        }

        result = v32;
LABEL_103:
        v79 = result;
        v80 = v52;
        a2 = v52;
        goto LABEL_104;
      }

      v7 = v29;
      a5 = v32;
LABEL_104:
      if (v7 == a4)
      {
        return result;
      }
    }

    if (v22 >= v23)
    {
      *v80 = v23;
      *v13 = v24;
      if (*v20 >= v24)
      {
LABEL_20:
        v26 = 1;
        goto LABEL_22;
      }

      *v13 = *v20;
    }

    else
    {
      *v80 = v22;
    }

    *v20 = v24;
    goto LABEL_20;
  }

  return result;
}

float **sub_245F16834(float **result, float *a2, float **a3, float *a4)
{
  v4 = a4;
  if (*a3 == a4)
  {
    v4 = *(a3 - 1) + 1024;
  }

  v5 = v4 - 1;
  while (a2 != v5)
  {
    if (a4 != a2)
    {
      v6 = *result;
      v7 = a2;
      v8 = a2;
      v9 = result;
      while (1)
      {
        if (++v8 - v6 == 4096)
        {
          v10 = v9[1];
          ++v9;
          v6 = v10;
          v8 = v10;
        }

        if (v8 == a4)
        {
          break;
        }

        if (*v8 < *v7)
        {
          v7 = v8;
        }
      }

      if (v7 != a2)
      {
        v11 = *a2;
        *a2 = *v7;
        *v7 = v11;
      }
    }

    if (++a2 - *result == 4096)
    {
      v12 = result[1];
      ++result;
      a2 = v12;
    }
  }

  return result;
}

BOOL sub_245F168E0(void *a1, void *a2, float *a3, float *a4, float a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a1[1];
  if (v7)
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = *(a1[8] + 8 * v8);
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = 0;
        v13 = *(*a2 + 4 * v8);
        v14 = a1[2] + 4 * v11;
        v15 = a1[5] + 4 * v11;
        do
        {
          v16 = *(v14 + v12);
          v9 = v9 + ((v13 * v16) * v16);
          v10 = v10 + ((v13 * v16) * *(v15 + v12));
          v12 += 4;
        }

        while (v12 != 8);
      }

      ++v8;
    }

    while (v8 != v7);
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
  }

  v17 = v9 + a5;
  if ((v9 + a5) < 0.000000001)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CA60();
    }

    v19 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v21 = 134218240;
      v22 = v17;
      v23 = 2048;
      v24 = 0x3E112E0BE0000000;
      _os_log_impl(&dword_245D80000, v19, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMAMEstimator1DConstant]:[normal_solve] Information matrix: %f below min valid value: %f. Will not proceed with this solve step.", &v21, 0x16u);
    }

    *a4 = 0.0;
    v18 = 0.0;
  }

  else
  {
    *a4 = v17;
    v18 = v10 / v17;
  }

  result = v17 >= 0.000000001;
  *a3 = v18;
  return result;
}

uint64_t sub_245F16A74(uint64_t a1, double a2, double a3, __n128 a4)
{
  v5 = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = 1065353216;
  *(a1 + 132) = 0;
  do
  {
    v6 = a1 + v5;
    *(v6 + 136) = 0;
    *(v6 + 144) = 1065353216;
    *(v6 + 152) = 1065353216;
    *(v6 + 160) = 0;
    *(v6 + 164) = 0;
    *(v6 + 168) = 1065353216;
    *(v6 + 176) = 0;
    v5 += 48;
    *(v6 + 180) = 0;
  }

  while (v5 != 192);
  *(a1 + 428) = 0;
  *(a1 + 440) = 2;
  *(a1 + 448) = 0;
  v7 = &dword_245F32C14;
  for (i = 492; i != 472; i -= 4)
  {
    v9 = *v7++;
    *(a1 + i) = v9;
  }

  *(a1 + 480) = -*(a1 + 480);
  *(a1 + 488) = -*(a1 + 488);
  *(a1 + 496) = *(a1 + 476);
  *(a1 + 512) = xmmword_245F32C00;
  v10 = &dword_245F32C14;
  for (j = 564; j != 544; j -= 4)
  {
    v12 = *v10++;
    *(a1 + j) = v12;
  }

  *(a1 + 552) = -*(a1 + 552);
  *(a1 + 560) = -*(a1 + 560);
  v13 = *(a1 + 548);
  *(a1 + 568) = v13;
  sub_245F16B90(a1, *&v13, xmmword_245F32C00, a4);
  return a1;
}

double sub_245F16B90(uint64_t a1, double a2, __n128 a3, __n128 a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  do
  {
    *(a1 + 4 * v7 + 104) = (v7 * 3.0) / 3.0;
    v8 = a1 + v5;
    *(v8 + 328) = 1065353216;
    *(v8 + 336) = 0;
    *(v8 + 376) = 0;
    *(v8 + 384) = 1065353216;
    *(a1 + v7 + 424) = 0;
    v9 = a1 + v6;
    *(v9 + 160) = 1;
    *(v9 + 176) = 1;
    *(v9 + 180) = 1;
    *(v9 + 136) = 0;
    *(v9 + 144) = 0x33CBCD5A0;
    *(v9 + 152) = 0x3727C5AC3CBCD5A0;
    *(v9 + 168) = 0x3727C5AC3CBCD5A0;
    *(v9 + 164) = 3;
    ++v7;
    v6 += 48;
    v5 += 12;
  }

  while (v6 != 192);
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = (a1 + 440 + 72 * v10);
    v14 = 4;
    do
    {
      sub_245F16D54(v13, 0.0);
      --v14;
    }

    while (v14);
    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  *(a1 + 132) = 1;
  result = 5.32990247e-43;
  *(a1 + 124) = 0x3727C5AC3CA23660;
  *(a1 + 120) = 3;
  return result;
}

uint64_t sub_245F16CC8(uint64_t result, float *a2)
{
  v2 = *result;
  v3 = *result + 1;
  *result = v3;
  if (*(result + 12) == 1)
  {
    v4 = 1.0 / v3;
    if (!v3)
    {
      v4 = 1.0;
    }

    if (v4 <= *(result + 4))
    {
      v4 = *(result + 4);
    }

    v5 = *(result + 8) - (v4 * (*(result + 8) - *a2));
  }

  else if (v2 > 2)
  {
    v5 = *(result + 8) - (*(result + 4) * (*(result + 8) - *a2));
  }

  else
  {
    v5 = (1.0 / v3) * (*a2 + (*(result + 8) * v2));
  }

  *(result + 8) = v5;
  return result;
}

BOOL sub_245F16D54(float *a1, float a2)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = v2 - 1;
    v3 = *(a1 + 1);
    if ((v3 + 1) <= 4)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    a1[v4 + 4] = a2;
  }

  else
  {
    v5 = 0;
    v6 = *(a1 + 1);
    if ((v6 + 1) <= 4)
    {
      v4 = v6 + 1;
    }

    else
    {
      v4 = 0;
    }

    a1[v4 + 4] = a2;
    a2 = 0.0;
    do
    {
      a2 = a2 + (a1[v5 + 13 - v4] * a1[v5 + 4]);
      ++v5;
    }

    while (v5 != 5);
  }

  v7 = v2 == 0;
  if ((v4 + 1) <= 4)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 1) = v8;
  a1[v8 + 4] = a2;
  return v7;
}

uint64_t sub_245F16DE8(uint64_t a1, float *a2, float *a3, float32x2_t *a4, float32x2_t *a5)
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  v10 = __sincosf_stret(*a2);
  v12 = __sincosf_stret(v9);
  v11.f32[0] = v12.__sinval;
  *buf = sub_245F24A60(a4, v13, v11);
  v54 = __PAIR64__(v15, v14);
  *v55 = v16;
  v18.f32[0] = sub_245F24D2C(buf, v10.__sinval * v12.__cosval, v10.__sinval * v12.__sinval, v10.__cosval);
  v20 = 0;
  *buf = v18.i32[0];
  v54 = LODWORD(v19);
  v21 = 0.0;
  do
  {
    v21 = v21 + (*&buf[v20] * *&buf[v20]);
    v20 += 4;
  }

  while (v20 != 12);
  if (sqrtf(v21) > 0.00000011921)
  {
    v22 = 0;
    v23 = 0.0;
    do
    {
      v23 = v23 + (*&buf[v22] * *&buf[v22]);
      v22 += 4;
    }

    while (v22 != 12);
    v24 = sqrtf(v23);
    v18.f32[0] = v18.f32[0] / v24;
    v19 = v19 / v24;
  }

  *a1 = v18.i32[0];
  *(a1 + 4) = v19;
  if ((atomic_load_explicit(byte_27EE388B8, memory_order_acquire) & 1) == 0)
  {
    sub_245F2CA9C();
  }

  *buf = sub_245F24A60(a5, v17, v18);
  v54 = __PAIR64__(v26, v25);
  *v55 = v27;
  v28 = sub_245F24D2C(buf, *&qword_27EE388C0, *(&qword_27EE388C0 + 1), *&dword_27EE388C8);
  v30 = 0;
  *buf = v28;
  v54 = LODWORD(v29);
  v31 = 0.0;
  do
  {
    v31 = v31 + (*&buf[v30] * *&buf[v30]);
    v30 += 4;
  }

  while (v30 != 12);
  if (sqrtf(v31) > 0.00000011921)
  {
    v32 = 0;
    v33 = 0.0;
    do
    {
      v33 = v33 + (*&buf[v32] * *&buf[v32]);
      v32 += 4;
    }

    while (v32 != 12);
    v34 = sqrtf(v33);
    v28 = v28 / v34;
    v29 = v29 / v34;
  }

  v35 = 0;
  *(a1 + 8) = v28;
  *(a1 + 12) = v29;
  v36 = 1;
  v37 = 1;
  do
  {
    v38 = v36;
    if (sub_245F0F064(a3, v35) >= 0.000000001)
    {
      v39 = sqrtf(1.0 / sub_245F0F064(a3, v35));
    }

    else
    {
      if (v37)
      {
        v37 = 0;
      }

      v39 = 0.000000001;
    }

    v40 = sub_245F102D0(v52, v35);
    v36 = 0;
    *v40 = v39;
    v35 = 1;
  }

  while ((v38 & 1) != 0);
  *(a1 + 16) = sub_245F0E0C4(v52);
  *(a1 + 20) = v41;
  *(a1 + 24) = v42;
  *(a1 + 28) = v43;
  if ((v37 & 1) == 0)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CAE4();
    }

    v44 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      *&v45 = *a1;
      v46 = *(a1 + 4);
      v47 = *(a1 + 8);
      v48 = *(a1 + 12);
      v49 = *a3;
      v50 = a3[1];
      *buf = 134219264;
      v54 = v45;
      *v55 = 2048;
      *&v55[2] = v46;
      v56 = 2048;
      v57 = v47;
      v58 = 2048;
      v59 = v48;
      v60 = 2048;
      v61 = v49;
      v62 = 2048;
      v63 = v50;
      _os_log_impl(&dword_245D80000, v44, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMAPencilDMYawAlignmentMeasurement]:[CMAPencilDMYawAlignmentMeasurement] Failed measurement covariance Cholesky decomposition. f_eY_IS_xy: %.6f %.6f, f_eY_IP_xy: %.6f %.6f, ringMeasCovRad2: %.6f %.6f", buf, 0x3Eu);
    }
  }

  return a1;
}

float sub_245F1710C(float *a1)
{
  v1 = a1[1];
  sinval = __sincosf_stret(*a1).__sinval;
  return sinval * __sincosf_stret(v1).__cosval;
}

float sub_245F1715C(float *a1, float a2)
{
  v3 = __sincosf_stret(a2);
  v5[0] = LODWORD(v3.__cosval);
  *&v5[1] = -v3.__sinval;
  v6 = v3;
  return a1[2] - sub_245F0FC38(v5, a1);
}

void sub_245F171AC(float *a1)
{
  v1 = ((a1[1] * a1[3]) + 0.0) + (*a1 * a1[2]);
  if (v1 > 1.0)
  {
    v1 = 1.0;
  }

  if (v1 < -1.0)
  {
    v1 = -1.0;
  }

  acosf(v1);
}

float sub_245F1720C@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = __sincosf_stret(*a1);
  v5 = __sincosf_stret(v3);
  result = -(v5.__sinval * v4.__sinval);
  *a2 = v4.__cosval * v5.__cosval;
  *(a2 + 4) = v4.__cosval * v5.__sinval;
  *(a2 + 8) = -v4.__sinval;
  *(a2 + 12) = result;
  *(a2 + 16) = v4.__sinval * v5.__cosval;
  *(a2 + 20) = 0;
  return result;
}

os_log_t sub_245F17278()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

float sub_245F172A8(float *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v8[0] = *(a2 + 16);
  v8[1] = v3;
  v4 = *(a2 + 64);
  v8[2] = *(a2 + 48);
  v8[3] = v4;
  v8[4] = *(a2 + 80);
  v9 = *(a2 + 96);
  sub_245F21830(v8, word_245F32C6C, word_245F32C96, 21, 0);
  sub_245F219BC(v8, v12, &unk_245F32CC0, 1, 21, 0xAuLL);
  sub_245F219BC(v12, v11, &unk_245F32E78, 1, 10, 0xAuLL);
  sub_245F219BC(v11, v10, &unk_245F32F54, 1, 10, 0xAuLL);
  sub_245F219BC(v10, &v7, &unk_245F33030, 0, 10, 1uLL);
  v5 = v7;
  if (v7 <= 0.15)
  {
    v5 = 0.0;
  }

  *a1 = fminf(v5, 3.5);
  sub_245F219BC(v8, v12, &unk_245F32C40, 0, 21, 1uLL);
  result = fminf(fmaxf(v12[0] + (v7 * -0.19324), 0.0225), 12.25);
  a1[1] = result;
  return result;
}

uint64_t sub_245F17430(uint64_t a1)
{
  *a1 = 0x1000000;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0xBF80000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x3F80000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3F80000000000000;
  sub_245F21AC0(a1 + 176);
  *a1 = 0x1000000;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0xBF80000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x3F80000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3F80000000000000;
  sub_245F21B18(v2);
  return a1;
}

double sub_245F174F0(uint64_t a1)
{
  *a1 = 0x1000000;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0xBF80000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0x3F80000000000000;
  *(a1 + 152) = 0x3F80000000000000;
  *(a1 + 160) = 0;
  return sub_245F21B18(a1 + 176);
}

void sub_245F17554(uint64_t a1, uint64_t a2, float a3, double a4)
{
  v7 = (a4 * 1000000.0);
  v8 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v8;
  v9 = *(a2 + 32);
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 48);
  *(a1 + 80) = v10;
  *(a1 + 48) = v9;
  *(a1 + 96) = v11;
  *(a1 + 104) = v7;
  v12 = *(a2 + 44);
  v13 = *(a2 + 48);
  v14 = *(a2 + 52);
  v37 = __PAIR64__(LODWORD(v13), v12);
  v38 = v14;
  LODWORD(v9) = *(a2 + 64);
  v35 = *(a2 + 56);
  v36 = v9;
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), *(a2 + 16));
  v34 = vextq_s8(v15, v15, 4uLL);
  sub_245F24EC0(&v34, v34);
  v16.i32[1] = v34.i32[1];
  *(a1 + 144) = v34;
  v17 = *(a1 + 84);
  *a1 = v17 > 0;
  if (v17 >= 1)
  {
    v18 = *(a2 + 72);
    *(a1 + 1) = v18;
    if (*(a1 + 2))
    {
      v19 = (v7 - *(a1 + 136)) < 60000000.0;
      if (*(a1 + 3) == 1)
      {
        *(a1 + 3) = 0;
      }

      if (!v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (*(a1 + 3))
      {
        *(a1 + 160) = v34;
LABEL_17:
        sub_245F21B4C(a1 + 176, &v37, (a1 + 160), v7);
        v31 = v37;
        *(a1 + 112) = v7;
        *(a1 + 120) = v31;
        *(a1 + 128) = v38;
        v32 = *(a1 + 168);
        *(a1 + 16) = *(a1 + 172);
        *(a1 + 24) = vcvtq_f64_f32(*(a1 + 160));
        *(a1 + 40) = v32;
        sub_245F25054((a1 + 160));
        *(a1 + 92) = v33;
        *(a1 + 88) = *(a1 + 1);
        *(a1 + 96) = *(a1 + 2);
        *(a1 + 97) = *(a1 + 4);
        *(a1 + 4) = 0;
        *(a1 + 12) = a3;
        return;
      }

      v19 = 0;
      if (!v18)
      {
        goto LABEL_12;
      }
    }

    if (!v19)
    {
      sub_245F1779C(a1, &v35);
      goto LABEL_13;
    }

LABEL_12:
    v16.i32[0] = v12;
    sub_245F17864(a1, v16, v13, v14);
    sub_245F25054((a1 + 160));
    v21 = v20;
    sub_245F25054((a1 + 144));
    sub_245F17908(a1, v21 - v22);
    *(a1 + 1) = 0;
LABEL_13:
    if ((*(a1 + 2) & 1) == 0)
    {
      sub_245F25054((a1 + 160));
      v24 = v23;
      sub_245F25054((a1 + 144));
      v26 = v25;
      sub_245F25054((a1 + 160));
      v28 = v27;
      sub_245F25054((a1 + 144));
      v30 = v28 - v29;
      if (v24 < v26)
      {
        v30 = -v30;
      }

      *(a1 + 3) = v30 < 0.1;
    }

    goto LABEL_17;
  }
}

void sub_245F1779C(uint64_t a1, float32x2_t *a2)
{
  v4.f32[0] = sub_245F24C20((a1 + 160));
  v5 = 0;
  v12 = *a2;
  v13 = a2[1].f32[0];
  v8 = ((v6 * a2[1].f32[0]) + (a2->f32[1] * v7)) + (a2->f32[0] * v4.f32[0]);
  v4.f32[1] = v7;
  v9 = vsub_f32(v12, vmul_n_f32(v4, v8));
  v12 = v9;
  v10 = v13 - (v6 * v8);
  v13 = v10;
  v11 = 0;
  do
  {
    *v11.i32 = *v11.i32 + (v12.f32[v5] * v12.f32[v5]);
    ++v5;
  }

  while (v5 != 3);
  *v11.i32 = sqrtf(*v11.i32);
  v12 = vdiv_f32(v9, vdup_lane_s32(v11, 0));
  v13 = v10 / *v11.i32;
  sub_245F17984(a1, &v12);
  *(a1 + 2) = 0;
}

void sub_245F17864(float32x2_t *a1, float32x2_t a2, float32_t a3, float a4)
{
  v6 = (*&a1[13] - *&a1[14]) * 0.000001;
  if (v6 <= 0.1)
  {
    v17 = v4;
    v18 = v5;
    v8 = v6 * 0.5;
    v9 = v8 * (a4 + a1[16].f32[0]);
    a2.f32[1] = a3;
    v15 = vmul_n_f32(vadd_f32(a2, a1[15]), v8);
    v16 = v9;
    *v10.i64 = sub_245F24E08(&v14, &v15);
    a1[20].f32[0] = sub_245F249DC(v14.f32, &a1[20], v10);
    a1[20].i32[1] = v11;
    a1[21].i32[0] = v12;
    a1[21].i32[1] = v13;
  }
}

void sub_245F17908(uint64_t a1, float a2)
{
  v11[0] = (a2 * 0.017453) * sub_245F24C20((a1 + 144));
  v11[1] = (a2 * 0.017453) * v4;
  v11[2] = (a2 * 0.017453) * v5;
  *v6.i64 = sub_245F24E08(&v10, v11);
  *(a1 + 160) = sub_245F249DC(v10.f32, (a1 + 144), v6);
  *(a1 + 164) = v7;
  *(a1 + 168) = v8;
  *(a1 + 172) = v9;
}

void sub_245F17984(uint64_t a1, float *a2)
{
  sub_245F24DB8((a1 + 160), v7);
  v4 = sub_245F17C3C(v7, a2);
  v6 = atan2f(v5, v4);
  sub_245F17D04(a1, v6);
}

uint64_t sub_245F179E0(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_245F21BDC(a1 + 176, a2, *(a1 + 8), a3);
  if (result)
  {
    result = sub_245F17A30(a1, v5, (a1 + 8200));
    *(a1 + 2) |= result;
  }

  *(a1 + 4) = result;
  return result;
}

uint64_t sub_245F17A30(uint64_t a1, uint64_t a2, float *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    sub_245F2CB0C();
  }

  v5 = qword_27EE37528;
  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *v18 = 134218752;
    *&v18[4] = v6;
    *&v18[12] = 2048;
    *&v18[14] = v7;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&dword_245D80000, v5, OS_LOG_TYPE_DEBUG, "visual localization,measurement,%f,%f,%f,%f", v18, 0x2Au);
  }

  *v18 = *(a1 + 160);
  sub_245F25054(a3);
  v11 = v10;
  sub_245F25054(v18);
  v13 = v11 - v12;
  if (v13 < 0.0)
  {
    v13 = -v13;
  }

  if (v13 > 30.0 && *(a1 + 84) == 5)
  {
    return 0;
  }

  *(a1 + 136) = *(a1 + 104);
  sub_245F25054(a3);
  v16 = v15;
  sub_245F25054(v18);
  sub_245F17BA8(a1, v16 - v17);
  return 1;
}

void sub_245F17BA8(uint64_t a1, float a2)
{
  v3 = -a2;
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  if (v3 >= 0.00000011921)
  {
    v12[0] = (a2 * 0.017453) * sub_245F24C20((a1 + 144));
    v12[1] = (a2 * 0.017453) * v5;
    v12[2] = (a2 * 0.017453) * v6;
    *v7.i64 = sub_245F24E08(&v11, v12);
    *(a1 + 160) = sub_245F249DC(v11.f32, (a1 + 160), v7);
    *(a1 + 164) = v8;
    *(a1 + 168) = v9;
    *(a1 + 172) = v10;
  }
}

float sub_245F17C3C(uint64_t a1, float *a2)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = sub_245F0ECD8(a1, i, 0) * *a2;
    *sub_245F0F2E8(&v11, i) = v5;
    for (j = 1; j != 3; ++j)
    {
      v7 = sub_245F0ECD8(a1, i, j);
      v8 = sub_245F0EA08(a2, j);
      v9 = sub_245F0F2E8(&v11, i);
      *v9 = *v9 + (v7 * v8);
    }
  }

  return v11;
}

void sub_245F17D04(uint64_t a1, float a2)
{
  v4 = sub_245F24C20((a1 + 144));
  v5 = 0;
  v6 = v4 * a2;
  v8 = v7 * a2;
  v10 = v9 * a2;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v11 = 0.0;
  do
  {
    v11 = v11 + (*(&v17 + v5) * *(&v17 + v5));
    v5 += 4;
  }

  while (v5 != 12);
  if (sqrtf(v11) > 0.00000011921)
  {
    v17 = v6 * 0.01;
    v18 = v8 * 0.01;
    v19 = v10 * 0.01;
  }

  *v12.i64 = sub_245F24E08(&v16, &v17);
  *(a1 + 160) = sub_245F249DC(v16.f32, (a1 + 160), v12);
  *(a1 + 164) = v13;
  *(a1 + 168) = v14;
  *(a1 + 172) = v15;
}

os_log_t sub_245F17DF4()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

void sub_245F17E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) == 1)
  {
    v5 = sub_245F17EE4(a1, a3);
    if (!v5 && *(a2 + 4) == *(a2 + 2))
    {
      if (sub_245F17F8C(v5, a2))
      {
        v6 = sub_245F0C3C0(a2, 0xFFuLL);
        v7 = sub_245F24DC8(v6, *a1, *(a1 + 4), *(a1 + 8));
        atan2f(v8, v7);
      }
    }
  }
}

BOOL sub_245F17EE4(uint64_t a1, uint64_t a2)
{
  v3 = 0.0;
  v4 = 255;
  v5 = 1;
  v6 = 0.0;
  do
  {
    v7 = *sub_245F09E3C((a2 + 16), v4) * -9.8067;
    v8 = v7 - v6;
    v6 = v6 + ((v7 - v6) / v5);
    v3 = v3 + (v8 * (v7 - v6));
    --v4;
    ++v5;
  }

  while (v4 != 155);
  return (v3 / 99.0) < 0.18;
}

uint64_t sub_245F17F8C(uint64_t a1, unsigned __int16 *a2)
{
  if (!a2[1])
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = sub_245F0C3C0(a2, v3);
    v5 = sub_245F24C20(v4);
    v7 = v6;
    v8 = v5 * v5;
    v10 = v9 * v9;
    v11 = atan2f(sqrtf((v9 * v9) + (v6 * v6)), v5);
    v13 = atan2f(sqrtf(v8 + v10), v7) >= 1.5708 && v11 >= 1.309;
    result = v13 & (v11 <= 1.9199);
    if (!v13 || v11 > 1.9199)
    {
      break;
    }

    ++v3;
  }

  while (v3 < a2[1]);
  return result;
}

double sub_245F18070(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 12) != 1 || *(a1 + 24) != *(a2 + 2) || (v2 = *(a1 + 28), v2 != *(a2 + 3)))
  {
    v3 = *a2;
    *(a1 + 16) = *a2;
    *(a1 + 12) = 1;
    v2 = *(a1 + 28);
  }

  if (v2 == 1)
  {
    *&v3 = 0xBF80000000000000;
    *a1 = 0xBF80000000000000;
    *(a1 + 8) = 0;
  }

  return *&v3;
}

float sub_245F180CC(float *a1, unsigned __int16 *a2)
{
  if (a2[1])
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = sub_245F0C3C0(a2, v4);
      v8 = sub_245F24DC8(v7, *a1, a1[1], a1[2]);
      v10 = atan2f(v9, v8);
      v11 = __sincosf_stret(v10);
      v5 = v5 + v11.__cosval;
      v6 = v6 + v11.__sinval;
      ++v4;
      v12 = a2[1];
    }

    while (v4 < v12);
    v13 = v12;
  }

  else
  {
    v6 = 0.0;
    v5 = 0.0;
    v13 = 0.0;
  }

  return (((sqrtf(1.0 - (sqrtf((v6 * v6) + (v5 * v5)) / v13)) * 57.296) * 0.5228) + 14.06) * 0.017453;
}

double sub_245F181B8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 20) = 0x800000000;
  *(a1 + 16) = 1031798784;
  *(a1 + 64) = 1;
  *(a1 + 96) = 0x800000000;
  *(a1 + 88) = 0x3FB0000000000000;
  *(a1 + 168) = 1;
  *(a1 + 172) = 0x800000000;
  *(a1 + 171) = 1;
  *(a1 + 192) = 0;
  *&result = 1036182680;
  *(a1 + 196) = 1036182680;
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  *(a1 + 212) = 0;
  return result;
}

double sub_245F18214@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 12) = 0;
  result = -0.00781250572;
  *(a2 + 16) = 0xBF800000C47A0000;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_245F18240(uint64_t a1, double *a2, uint64_t a3, double a4)
{
  v9 = *(a1 + 22);
  v10 = *(a1 + 24);
  v11 = *(a1 + 20);
  if (v11 + v9 >= v10)
  {
    v12 = *(a1 + 24);
  }

  else
  {
    v12 = 0;
  }

  v8 = a2[1];
  *(a1 + 4 * (v11 + v9 - v12) + 28) = v8;
  if (v10 <= v9)
  {
    if (v11 + 1 < v10)
    {
      LOWORD(v10) = 0;
    }

    *(a1 + 20) = v11 + 1 - v10;
  }

  else
  {
    *(a1 + 22) = v9 + 1;
  }

  *(a1 + 4) = 1;
  sub_245F187A0((a1 + 96), a2);
  *(a1 + 64) = 1;
  v13 = a2[1];
  v30 = v13;
  result = sub_245F16CC8(a1 + 192, &v30);
  LOWORD(v15) = *(a1 + 22);
  v16 = v15;
  v17 = *(a1 + 98);
  v18 = 0.0;
  if (*(a1 + 98))
  {
    result = sub_245F187F4((a1 + 96), v17 - 1);
    v19 = *result;
    LODWORD(v17) = *(a1 + 98);
    if (*(a1 + 98))
    {
      result = sub_245F187F4((a1 + 96), 0);
      v18 = *result;
      LODWORD(v17) = *(a1 + 98);
    }
  }

  else
  {
    v19 = 0.0;
  }

  v20 = v16 / fmax(v19 - v18, 0.100000001);
  *(a3 + 20) = v20;
  if (*(a1 + 100) == v17 && v20 >= 4.0)
  {
    sub_245F18488(a1, a3);
    v21 = *(a1 + 174);
    v22 = *(a1 + 176);
    v23 = *(a1 + 172);
    if (v23 + v21 >= v22)
    {
      v24 = *(a1 + 176);
    }

    else
    {
      v24 = 0;
    }

    *(a1 + v23 + v21 - v24 + 180) = *(a3 + 24) ^ 1;
    if (v22 <= v21)
    {
      if (v23 + 1 < v22)
      {
        LOWORD(v22) = 0;
      }

      *(a1 + 172) = v23 + 1 - v22;
    }

    else
    {
      *(a1 + 174) = v21 + 1;
    }

    result = 1;
    *(a1 + 168) = 1;
    if ((*a1 & 1) == 0)
    {
      result = sub_245F185C0(a1);
    }

    v29 = 0;
    *a1 = result;
    if ((*(a3 + 24) & 1) == 0)
    {
      if (result)
      {
        v29 = *a2 + 0.5 >= a4;
      }
    }

    *(a3 + 25) = v29;
  }

  else
  {
    v25 = *(a1 + 174);
    v26 = *(a1 + 176);
    v27 = *(a1 + 172);
    if (v27 + v25 >= v26)
    {
      v28 = *(a1 + 176);
    }

    else
    {
      v28 = 0;
    }

    *(a1 + v27 + v25 - v28 + 180) = 0;
    if (v26 <= v25)
    {
      if (v27 + 1 < v26)
      {
        LOWORD(v26) = 0;
      }

      *(a1 + 172) = v27 + 1 - v26;
    }

    else
    {
      *(a1 + 174) = v25 + 1;
    }

    *(a1 + 168) = 1;
  }

  return result;
}

double *sub_245F18488(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v13 = *MEMORY[0x277D85DE8];
  for (i = 1; i != 8; ++i)
  {
    v12[i] = 1;
    v7 = *sub_245F09E3C((a1 + 20), i);
    v8 = *sub_245F09E3C((a1 + 20), v4);
    v9 = *sub_245F187F4((a1 + 96), i);
    result = sub_245F187F4((a1 + 96), v4);
    v11 = v9 - *result;
    if (v11 > 0.0 && (v7 - v8) < 0.4 && ((v7 - v8) / v11) < 4.0)
    {
      v12[i] = 0;
      v4 = i;
      ++v5;
    }
  }

  *(a2 + 12) = v5;
  *(a2 + 24) = v12[7];
  return result;
}

BOOL sub_245F185C0(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 1;
  v4 = 7;
  for (i = 1; i != 9; ++i)
  {
    v2 += *sub_245F1893C(a1 + 86, v4);
    if (v2 >= 5u)
    {
      v6 = a1[49] ? *sub_245F187F4(a1 + 48, a1[49] - 1) : 0.0;
      if (v6 - *sub_245F187F4(a1 + 48, v4) < 1.0)
      {
        break;
      }
    }

    v3 = i < 8;
    --v4;
  }

  return v3;
}

uint64_t sub_245F18688(uint64_t a1, char a2, float a3)
{
  if (a3 > 0.01)
  {
    if (a3 >= 25.0)
    {
      *(a1 + 212) = 0;
    }

    else
    {
      v3 = *(a1 + 212) + 1;
      *(a1 + 212) = v3;
      if (v3 > 2)
      {
        v4 = 1;
LABEL_8:
        *(a1 + 208) = v4 & 1;
        v5 = (a3 < 25.0) | v4 ^ 1 | a2;
        return v5 & 1;
      }
    }

    v4 = *(a1 + 208);
    goto LABEL_8;
  }

  v5 = 0;
  return v5 & 1;
}

float sub_245F186F4(uint64_t a1, double a2)
{
  v2 = a2 - *(a1 + 200);
  v3 = -v2;
  if (v2 > 0.0)
  {
    v3 = a2 - *(a1 + 200);
  }

  v4 = 0.0;
  if (v3 > 0.2)
  {
    v4 = (((v3 + -0.2) * v2) / v3);
  }

  return v4 / a2;
}

uint64_t sub_245F18748(double a1, float a2, uint64_t a3, int a4)
{
  v4 = a1 > 2.0;
  if (a2 <= 0.0)
  {
    a2 = -a2;
  }

  if (a2 > 2.0)
  {
    v4 = 1;
  }

  v5 = v4 & (a4 ^ 1);
  if (a1 > 15.0)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_245F18784(uint64_t result)
{
  *(result + 20) = 0;
  *(result + 96) = 0;
  *(result + 172) = 0;
  *result = 0;
  *(result + 208) = 0;
  *(result + 212) = 0;
  return result;
}

unsigned __int16 *sub_245F187A0(unsigned __int16 *result, void *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[4 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

unsigned __int16 *sub_245F187F4(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D70B8);
    }

    v7 = qword_27EE37528;
    v8 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v8)
    {
      v9 = 134218240;
      v10 = a2;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v9, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return &a1[4 * (v5 - v4) + 4];
}

os_log_t sub_245F1890C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

uint64_t sub_245F1893C(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D70B8);
    }

    v7 = qword_27EE37528;
    v8 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v8)
    {
      v9 = 134218240;
      v10 = a2;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v9, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return a1 + v5 - v4 + 8;
}

double sub_245F18A54(unsigned __int16 *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if (qword_27EE374F0 != -1)
  {
    sub_245F2CB20();
  }

  v2 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1517];
    if (a1[1517])
    {
      v4 = v3 + a1[1516] - 1;
      v5 = *(a1 + 759);
      if (v4 < v5)
      {
        v5 = 0;
      }

      v6 = *&a1[4 * (v4 - v5) + 1520];
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[2173];
    if (a1[2173])
    {
      v8 = v7 + a1[2172] - 1;
      v9 = *(a1 + 1087);
      if (v8 < v9)
      {
        v9 = 0;
      }

      v10 = *&a1[4 * (v8 - v9) + 2176];
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 6920);
    v12 = *(a1 + 6176);
    v13 = a1[1];
    if (a1[1])
    {
      v14 = v13 + *a1 - 1;
      v15 = *(a1 + 1);
      if (v14 < v15)
      {
        v15 = 0;
      }

      v16 = *&a1[4 * (v14 - v15) + 4];
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a1 + 861);
    v35[0] = 67111168;
    v35[1] = v11;
    v36 = 1024;
    v37 = v12;
    v38 = 2048;
    v39 = v6;
    v40 = 2048;
    v41 = v3;
    v42 = 2048;
    v43 = v10;
    v44 = 2048;
    v45 = v7;
    v46 = 2048;
    v47 = v16;
    v48 = 2048;
    v49 = v13;
    v50 = 2048;
    v51 = v17;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[reset] Reset CMABarrelRoll. Stats before reset: fBoolInitDuringNoTrust: %d, initializedDMYawAlignment:%d, last src timestamp %llu us, num src samples: %zu, last aux timestamp %llu us, num aux samples: %zu, last ring timestamp %llu us, num ring samples: %zu, fCurrentEstimateTimeMicroSeconds: %llu", v35, 0x54u);
  }

  sub_245F18DF0(a1);
  *(a1 + 859) = 0;
  *(a1 + 860) = 0x3F80000000000000;
  *(a1 + 6920) = 0;
  *(a1 + 758) = 0;
  *(a1 + 860) = 0;
  v18 = *(a1 + 532);
  v19 = *(a1 + 533);
  *(a1 + 536) = 0;
  v20 = (v19 - v18) >> 3;
  if (v20 >= 3)
  {
    do
    {
      operator delete(*v18);
      v18 = (*(a1 + 532) + 8);
      *(a1 + 532) = v18;
      v20 = (*(a1 + 533) - v18) >> 3;
    }

    while (v20 > 2);
  }

  if (v20 == 1)
  {
    v21 = 512;
  }

  else
  {
    if (v20 != 2)
    {
      goto LABEL_27;
    }

    v21 = 1024;
  }

  *(a1 + 535) = v21;
LABEL_27:
  v22 = *(a1 + 538);
  v23 = *(a1 + 539);
  *(a1 + 542) = 0;
  v24 = (v23 - v22) >> 3;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v22);
      v22 = (*(a1 + 538) + 8);
      *(a1 + 538) = v22;
      v24 = (*(a1 + 539) - v22) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v25 = 512;
  }

  else
  {
    if (v24 != 2)
    {
      goto LABEL_34;
    }

    v25 = 1024;
  }

  *(a1 + 541) = v25;
LABEL_34:
  *(a1 + 1086) = 0;
  *(a1 + 1188) = 0;
  v26 = *(a1 + 696);
  v27 = *(a1 + 697);
  *(a1 + 700) = 0;
  v28 = (v27 - v26) >> 3;
  if (v28 >= 3)
  {
    do
    {
      operator delete(*v26);
      v26 = (*(a1 + 696) + 8);
      *(a1 + 696) = v26;
      v28 = (*(a1 + 697) - v26) >> 3;
    }

    while (v28 > 2);
  }

  if (v28 == 1)
  {
    v29 = 512;
  }

  else
  {
    if (v28 != 2)
    {
      goto LABEL_41;
    }

    v29 = 1024;
  }

  *(a1 + 699) = v29;
LABEL_41:
  v30 = *(a1 + 702);
  v31 = *(a1 + 703);
  *(a1 + 706) = 0;
  v32 = (v31 - v30) >> 3;
  if (v32 >= 3)
  {
    do
    {
      operator delete(*v30);
      v30 = (*(a1 + 702) + 8);
      *(a1 + 702) = v30;
      v32 = (*(a1 + 703) - v30) >> 3;
    }

    while (v32 > 2);
  }

  if (v32 == 1)
  {
    v33 = 512;
    goto LABEL_47;
  }

  if (v32 == 2)
  {
    v33 = 1024;
LABEL_47:
    *(a1 + 705) = v33;
  }

  *(a1 + 1414) = 0;
  result = 0.0;
  *(a1 + 384) = 0u;
  *(a1 + 770) = 0x3F80000000000000;
  *(a1 + 6168) = 1;
  *(a1 + 6921) = 0;
  *(a1 + 3462) = 0;
  *(a1 + 3466) = 0x3F80000000000000;
  return result;
}

double sub_245F18DF0(uint64_t a1)
{
  *a1 = 0;
  v2 = a1 + 6952;
  *(a1 + 968) = 0;
  *(a1 + 1936) = 0;
  *(a1 + 2904) = 0;
  sub_245F20EE0((a1 + 6176));
  *(a1 + 6792) = 0;
  sub_245F0D1C4(a1 + 6704);
  *(a1 + 6776) = 0;
  *(a1 + 6784) = 0x3F80000000000000;
  sub_245F0D1C4(a1 + 6800);
  *(a1 + 6944) = 0;
  *v2 = 0;
  *(a1 + 6960) = 0;
  result = 0.0;
  *(a1 + 6888) = 0u;
  *(a1 + 6904) = 0x3F80000000000000;
  *(a1 + 6912) = 0;
  *(a1 + 6976) = 0;
  *(a1 + 7944) = 0;
  *(a1 + 9872) = 0;
  *(v2 + 2924) = 0;
  *(a1 + 6968) = 0;
  return result;
}

void sub_245F18E98(uint64_t a1, uint64_t a2)
{
  sub_245F18F20((a1 + 6672), a2);
  if (qword_27EE374F0 != -1)
  {
    sub_245F2CB20();
  }

  v2 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[registerCorrectedUpdateCallbackFn] Registered corrected update callback.", v3, 2u);
  }
}

void *sub_245F18F20(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  sub_245F1D8BC(v4, a2);
  sub_245F1D954(v4, a1);
  sub_245F12848(v4);
  return a1;
}

BOOL sub_245F18F94(unsigned __int16 *a1, unint64_t a2, int a3, int a4, float a5, float a6)
{
  v60 = *MEMORY[0x277D85DE8];
  if (!a1[1])
  {
    goto LABEL_63;
  }

  v12 = a1 + 4;
  v13 = a1[1] + *a1 - 1;
  v14 = *(a1 + 1);
  if (v13 < v14)
  {
    v14 = 0;
  }

  if (*&v12[4 * (v13 - v14)] >= a2)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB20();
    }

    v26 = qword_27EE374F8;
    result = os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v28 = *a1 + a1[1] - 1;
      v29 = *(a1 + 1);
      if (v28 < v29)
      {
        v29 = 0;
      }

      v30 = *&v12[4 * (v28 - v29)];
      *buf = 3.8521e-34;
      *v51 = a2;
      *&v51[8] = 2048;
      *&v51[10] = v30;
      _os_log_impl(&dword_245D80000, v26, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[feedRingSensor] Ring sensor timestamp must be greater than the last value. Input: %llu us, last: %llu us", buf, 0x16u);
      return 0;
    }
  }

  else
  {
LABEL_63:
    if ((a1[3088] & 1) == 0 && !*(a1 + 868))
    {
      *(a1 + 868) = a2;
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CB20();
      }

      v15 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 868);
        *buf = 3.852e-34;
        *v51 = v16;
        _os_log_impl(&dword_245D80000, v15, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedRingSensor] Received initial ring sensor timestamp : %llu", buf, 0xCu);
      }
    }

    sub_245F12BC8(v49, a1 + 695);
    v17 = sub_245F10E5C(v49);
    v18 = *&v17;
    sub_245F12B1C(v49);
    sub_245F12BC8(v48, a1 + 701);
    v19 = sub_245F10E5C(v48);
    v20 = *&v19;
    sub_245F12B1C(v48);
    sub_245F12BC8(v47, a1 + 531);
    v21 = sub_245F10E5C(v47);
    v22 = *&v21;
    sub_245F12B1C(v47);
    sub_245F12BC8(v46, a1 + 537);
    v23 = sub_245F10E5C(v46);
    v24 = *&v23;
    sub_245F12B1C(v46);
    if ((a1[3088] & 1) != 0 || a3)
    {
      *(a1 + 6952) = 0;
    }

    else
    {
      v25 = 0;
      if (v18 < 6.2832 && v20 < 0.5 && v22 < 0.5236 && v24 < 0.25)
      {
        v25 = *(a1 + 700) >= 2uLL && *(a1 + 536) > 1uLL;
      }

      v31 = a2 - *(a1 + 1736);
      v32 = v31 < 0x7A121 && !v25;
      if (*(a1 + 6952) != v32)
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CB34();
        }

        v33 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 6952);
          *buf = 1.5285e-36;
          *v51 = v34;
          *&v51[4] = 2050;
          *&v51[6] = a2;
          *&v51[14] = 2050;
          *&v51[16] = (v18 * 57.296);
          v52 = 2050;
          v53 = v20;
          v54 = 2050;
          v55 = (v22 * 57.296);
          v56 = 2050;
          v57 = v24;
          v58 = 1026;
          v59 = v31;
          _os_log_impl(&dword_245D80000, v33, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedRingSensor] Setting fBlockInitializationDueToHighDynamicMotion to %{public}d, timestamp: %{public}llu us, avgOmegaAuxNorm: %{public}.3f dps, avgUserAccelAuxNorm: %{public}.3f g, avgOmegaSrcNorm: %{public}.3f dps, avgUserAccelSrcNorm: %{public}.3f g, timeElapsedMicroSeconds: %{public}u", buf, 0x40u);
        }

        *(a1 + 6952) = v32;
      }
    }

    if (*(a1 + 6920) == 1 && *(a1 + 6472) == 1)
    {
      sub_245F18DF0(a1);
      *(a1 + 6920) = 0;
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CB34();
      }

      v35 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 3.852e-34;
        *v51 = a2;
        _os_log_impl(&dword_245D80000, v35, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedRingSensor] Received ring sensor trust state=True after initializing during no-trust, reinitializing. Ring sensor timestamp: %llu", buf, 0xCu);
      }
    }

    if ((a3 & a4) != 0)
    {
      v36 = 4.0;
    }

    else
    {
      v36 = 32.0;
    }

    v37 = a1[1];
    v38 = *(a1 + 1);
    v39 = *a1;
    if (v39 + v37 >= v38)
    {
      v40 = *(a1 + 1);
    }

    else
    {
      v40 = 0;
    }

    *&a1[4 * (v39 + v37 - v40) + 4] = a2;
    if (v38 <= v37)
    {
      if (v39 + 1 < v38)
      {
        LOWORD(v38) = 0;
      }

      *a1 = v39 + 1 - v38;
    }

    else
    {
      a1[1] = v37 + 1;
    }

    *buf = a5;
    *v51 = a6;
    sub_245F19554(a1 + 484, buf);
    *buf = v36 * sub_245F195B4(a1);
    *v51 = v36 * v41;
    sub_245F19554(a1 + 968, buf);
    v42 = a1[1453];
    v43 = *(a1 + 727);
    v44 = a1[1452];
    if (v44 + v42 >= v43)
    {
      v45 = *(a1 + 727);
    }

    else
    {
      v45 = 0;
    }

    *(a1 + v44 + v42 - v45 + 2912) = a4;
    if (v43 <= v42)
    {
      if (v44 + 1 < v43)
      {
        LOWORD(v43) = 0;
      }

      a1[1452] = v44 + 1 - v43;
    }

    else
    {
      a1[1453] = v42 + 1;
    }

    if ((a1[3088] & 1) == 0)
    {
      sub_245F196C0(a1);
    }

    sub_245F19A58(a1);
    *(a1 + 6968) = a3;
    return 1;
  }

  return result;
}

unsigned __int16 *sub_245F19500(unsigned __int16 *result, void *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[4 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

unsigned __int16 *sub_245F19554(unsigned __int16 *result, void *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[4 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

float sub_245F195B4(uint64_t a1)
{
  if (*(a1 + 5600) == 16)
  {
    sub_245F12BC8(v2, (a1 + 5560));
    sub_245F10E5C(v2);
    sub_245F12B1C(v2);
  }

  return 0.0027416;
}

void sub_245F196C0(unsigned __int16 *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 2048);
  if ((a1[3088] & 1) != 0 || (a1[3476] & 1) == 0)
  {
    if (a1[1])
    {
      if (*(a1 + 700))
      {
        sub_245F12BC8(v25, a1 + 695);
        v3 = sub_245F10E5C(v25);
        v4 = *&v3 > 2.0944;
        sub_245F12B1C(v25);
      }

      else
      {
        v4 = 0;
      }

      if (*(a1 + 536))
      {
        sub_245F12BC8(v24, a1 + 531);
        v5 = sub_245F10E5C(v24);
        v6 = *&v5 > 0.5236;
        sub_245F12B1C(v24);
      }

      else
      {
        v6 = 0;
      }

      if (v2[2080] != 1 || !v4 && !v6)
      {
        sub_245F1B9E4(a1, v21);
        v7 = v2[2080];
        sub_245F20138(v2 + 2080, a1, a1 + 484, a1 + 968, a1 + 1720, a1 + 2376, a1 + 1452, (a1 + 2828), v21, v22, __p);
        v8 = v2[2080];
        if (v8 != v7)
        {
          if (qword_27EE374F0 != -1)
          {
            sub_245F2CB34();
          }

          v9 = qword_27EE374F8;
          if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *a1 + a1[1] - 1;
            v11 = *(a1 + 1);
            if (v10 < v11)
            {
              v11 = 0;
            }

            v12 = *&a1[4 * (v10 - v11) + 4];
            *buf = 67109632;
            *v27 = v7;
            *&v27[4] = 1024;
            *&v27[6] = v8;
            v28 = 2048;
            v29 = v12;
            _os_log_impl(&dword_245D80000, v9, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[updateDMInertialYaw] DM yaw alignment state changed from: %d to %d, latest ring sensor timestamp: %llu", buf, 0x18u);
          }

          if (v8)
          {
            if (qword_27EE374F0 != -1)
            {
              sub_245F2CB34();
            }

            v13 = qword_27EE374F8;
            if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *a1 + a1[1] - 1;
              v15 = *(a1 + 1);
              if (v14 < v15)
              {
                v15 = 0;
              }

              v16 = *&a1[4 * (v14 - v15) + 4];
              *buf = 134217984;
              *v27 = v16;
              _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[updateDMInertialYaw] Initialized DM yaw alignment state, latest ring sensor timestamp: %llu", buf, 0xCu);
            }

            if ((v2[2824] & 1) == 0 && (v2[2376] & 1) == 0)
            {
              v2[2824] = 1;
              if (qword_27EE374F0 != -1)
              {
                sub_245F2CB34();
              }

              v17 = qword_27EE374F8;
              if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
              {
                v18 = *a1 + a1[1] - 1;
                v19 = *(a1 + 1);
                if (v18 < v19)
                {
                  v19 = 0;
                }

                v20 = *&a1[4 * (v18 - v19) + 4];
                *buf = 134217984;
                *v27 = v20;
                _os_log_impl(&dword_245D80000, v17, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedRingSensor] Setting fBoolInitDuringNoTrust=True, latest ring sensor timestamp: %llu", buf, 0xCu);
              }
            }
          }
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v22[0])
        {
          v22[1] = v22[0];
          operator delete(v22[0]);
        }

        if (v21[0])
        {
          v21[1] = v21[0];
          operator delete(v21[0]);
        }
      }
    }
  }
}

void sub_245F19A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_245F1D754(va);
  _Unwind_Resume(a1);
}

void sub_245F19A58(unsigned __int16 *a1)
{
  v171 = *MEMORY[0x277D85DE8];
  v1 = a1 + 2048;
  if (*(a1 + 6176) == 1 && a1[1517] >= 3u)
  {
    v168 = 0;
    if (sub_245F1D028(a1, v169, &v168, &v166))
    {
      v3 = a1 + 2176;
      v4 = a1[1517] - 1;
      do
      {
        v5 = v4;
        if (!v4)
        {
          break;
        }

        v6 = *sub_245F1BE4C(a1 + 1516, v4);
        v7 = a1[2172] + a1[2173] - 1;
        v8 = *(a1 + 1087);
        if (v7 < v8)
        {
          v8 = 0;
        }

        v9 = *&v3[4 * (v7 - v8)];
        v4 = v5 - 1;
      }

      while (v6 > v9);
      v10 = *sub_245F1BE4C(a1 + 1516, v5);
      v11 = a1[2172] + a1[2173] - 1;
      v12 = *(a1 + 1087);
      if (v11 < v12)
      {
        v12 = 0;
      }

      if (v10 != *&v3[4 * (v11 - v12)])
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CB20();
        }

        v13 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
        {
          v14 = a1[2172] + a1[2173] - 1;
          v15 = *(a1 + 1087);
          if (v14 < v15)
          {
            v15 = 0;
          }

          v16 = *&v3[4 * (v14 - v15)];
          v17 = *sub_245F1BE4C(a1 + 1516, v5);
          *buf = 134218240;
          *&buf[4] = v16;
          *&buf[12] = 2048;
          *&buf[14] = v17;
          _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[updateCurrentEstimate] Timestamp mismatch error. Latest aux timestamp: %llu us, corresponding src timestamp: %llu us", buf, 0x16u);
        }
      }

      v18 = sub_245F0C3C0(a1 + 1720, v5);
      v162 = sub_245F24A60(v18, v19, v20);
      v163 = v21;
      v164 = v22;
      v165 = v23;
      v24 = a1[2376] + a1[2377] - 1;
      v25 = *(a1 + 1189);
      if (v24 < v25)
      {
        v25 = 0;
      }

      v161 = *&a1[8 * (v24 - v25) + 2380];
      sub_245F21210((v1 + 1040));
      v160[0] = v26.f32[0];
      v160[1] = v27;
      v160[2] = v28;
      v160[3] = v29;
      v30.f32[0] = sub_245F249DC(&v161, v160, v26);
      v158.n128_u64[0] = __PAIR64__(v31, v30.u32[0]);
      v158.n128_u64[1] = __PAIR64__(v33, v32);
      v34.f32[0] = sub_245F249DC(&v158, &v162, v30);
      *buf = v34.i32[0];
      *&buf[4] = v35;
      *&buf[8] = v36;
      *&buf[12] = v37;
      v159.n128_u32[0] = sub_245F24A60(buf, v38, v34);
      *(v159.n128_u64 + 4) = __PAIR64__(v40, v39);
      v159.n128_u32[3] = v41;
      v42 = *sub_245F1BE4C(a1 + 1516, v5);
      sub_245F0D1C4((a1 + 3400));
      sub_245F1C1D8(a1);
      sub_245F0CEAC((a1 + 3400), a1 + 3354, v42, 0.017453, 0.05236);
      v158.n128_u64[0] = 0;
      v158.n128_u64[1] = 0x3F80000000000000;
      *&v157 = 0;
      *(&v157 + 1) = 0x3F80000000000000;
      if (a1[1517] && a1[2173])
      {
        v44 = a1[1517] + a1[1516] - 1;
        v45 = *(a1 + 759);
        if (v44 < v45)
        {
          v45 = 0;
        }

        v46 = *&a1[4 * (v44 - v45) + 1520];
        v47 = *(a1 + 1736);
        if (*(a1 + 700) < 5uLL)
        {
          v49 = 1;
        }

        else
        {
          sub_245F12BC8(v154, a1 + 695);
          v48 = sub_245F10E5C(v154);
          v49 = *&v48 >= 0.087266;
          sub_245F12B1C(v154);
        }

        if (*(a1 + 536) < 5uLL)
        {
          v51 = 1;
        }

        else
        {
          sub_245F12BC8(v153, a1 + 531);
          v50 = sub_245F10E5C(v153);
          v51 = *&v50 >= 0.087266;
          sub_245F12B1C(v153);
        }

        v52 = v5 + 1;
        v53 = *(a1 + 700);
        if (v53)
        {
          v43.n128_u32[0] = *(*(*(a1 + 696) + (((v53 + *(a1 + 699) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v53 + *(a1 + 699) - 1) & 0x3FF));
        }

        else
        {
          v43.n128_u64[0] = 0;
        }

        v146 = v43.n128_f32[0];
        if (v52 >= a1[1517])
        {
          v67 = 0;
        }

        else
        {
          v54 = 0;
          v147 = (v46 - v47) > 0x4C4B3F || v49 || v51;
          __asm { FMOV            V13.2S, #0.75 }

          do
          {
            v60 = sub_245F0C3C0(a1 + 1720, v52);
            v162 = sub_245F24A60(v60, v61, v62);
            v163 = v63;
            v164 = v64;
            v165 = v65;
            v66 = 0;
            v67 = *sub_245F1BE4C(a1 + 1516, v52);
            v151 = vmul_f32(v166, _D13);
            v152 = v167 * 0.75;
            do
            {
              v68 = *sub_245F0F2E8(&v151, v66);
              v69 = sub_245F0F2E8(&v151, v66);
              if (v68 <= 2.0944)
              {
                if (*v69 < -2.0944)
                {
                  *sub_245F0F2E8(&v151, v66) = -1073345902;
                }
              }

              else
              {
                *v69 = 2.0944;
              }

              ++v66;
            }

            while (v66 != 3);
            v70 = a1[2172] + a1[2173] - 1;
            v71 = *(a1 + 1087);
            if (v70 < v71)
            {
              v71 = 0;
            }

            v72 = (v67 - *&v3[4 * (v70 - v71)]) * 0.000001;
            v148 = vmul_n_f32(v151, v72);
            v149 = v152 * v72;
            *v73.i64 = sub_245F24E08(buf, &v148);
            v74 = a1[2376] + a1[2377] - 1;
            v75 = *(a1 + 1189);
            if (v74 < v75)
            {
              v75 = 0;
            }

            v76.f32[0] = sub_245F249DC(buf, &a1[8 * (v74 - v75) + 2380], v73);
            *&v161 = __PAIR64__(v77, v76.u32[0]);
            *(&v161 + 1) = __PAIR64__(v79, v78);
            v80.f32[0] = sub_245F249DC(&v161, v160, v76);
            v148 = __PAIR64__(v81, v80.u32[0]);
            v149 = v82;
            v150 = v83;
            v84.f32[0] = sub_245F249DC(&v148, &v162, v80);
            *buf = v84.i32[0];
            *&buf[4] = v85;
            *&buf[8] = v86;
            *&buf[12] = v87;
            v89.f32[0] = sub_245F24A60(buf, v88, v84);
            v158.n128_u64[0] = __PAIR64__(v90, v89.u32[0]);
            v158.n128_u64[1] = __PAIR64__(v92, v91);
            v94.f32[0] = sub_245F24A60(&v159, v93, v89);
            *buf = v94.i32[0];
            *&buf[4] = v95;
            *&buf[8] = v96;
            *&buf[12] = v97;
            LODWORD(v157) = sub_245F249DC(&v158, buf, v94);
            *(&v157 + 4) = __PAIR64__(v99, v98);
            HIDWORD(v157) = v101;
            v43.n128_f64[0] = (v67 - v42) * 0.000001;
            v102 = v43.n128_f64[0];
            if (v102 >= 0.0000001)
            {
              v155.f32[0] = sub_245F24F24(&v157, v100) / v102;
              v155.f32[1] = v103 / v102;
              v156 = v105 / v102;
              if (!v147)
              {
                v156 = 0.0;
                v155 = 0;
              }

              v104.n128_f32[0] = v105 / v102;
              sub_245F0D1E8(a1 + 850, &v155, v67, v104);
              v43 = v158;
              v159 = v158;
              v106 = a1[1];
              while (v54 < v106)
              {
                v107 = sub_245F1BE4C(a1, v54);
                v106 = a1[1];
                if (v67 == *v107)
                {
                  break;
                }

                ++v54;
              }

              if (v54 != v106 && *sub_245F1BE4C(a1, v54) == v67)
              {
                v108 = sub_245F1BE4C(a1 + 484, v54);
                v43.n128_u32[0] = *v108;
                if (*v108 > 0.17453)
                {
                  v110 = v108;
                  *buf = sub_245F24A60((a1 + 3354), v109, v43);
                  *&buf[4] = v111;
                  *&buf[8] = v112;
                  *&buf[12] = v113;
                  sub_245F0F554(buf);
                  v43.n128_f32[0] = fmodf((v114 - v110[1]) + 3.1416, 6.2832);
                  if (v43.n128_f32[0] < 0.0)
                  {
                    v43.n128_f32[0] = v43.n128_f32[0] + 6.2832;
                  }

                  v43.n128_f32[0] = fabsf(v43.n128_f32[0] + -3.1416);
                  if ((v1[1188] & 1) != 0 || v43.n128_f32[0] > 0.7854)
                  {
                    v115 = v43.n128_f32[0] <= 0.7854 ? 1.0 : 0.1;
                    v116 = sub_245F1BE4C(a1 + 968, v54);
                    v117 = 0;
                    v43.n128_f32[0] = v115 * *v116;
                    v118 = 0.0;
                    do
                    {
                      v118 = v118 + (v155.f32[v117] * v155.f32[v117]);
                      ++v117;
                    }

                    while (v117 != 3);
                    if (sqrtf(v118) < 0.87266 && v146 < 0.87266)
                    {
                      v119 = 0;
                      v120 = v115 * v116[1];
                      v121 = 0.0;
                      do
                      {
                        v121 = v121 + (v155.f32[v119] * v155.f32[v119]);
                        ++v119;
                      }

                      while (v119 != 3);
                      v122 = fmaxf(sqrtf(v121), v146) <= 0.5236;
                      v123 = 1.0;
                      if (!v122)
                      {
                        v123 = 9.0;
                      }

                      *buf = v43.n128_f32[0] * v123;
                      *&buf[4] = v120 * v123;
                      sub_245F0DB8C((a1 + 3400), v110, buf, v67);
                    }
                  }
                }
              }

              ++v52;
              v42 = v67;
            }
          }

          while (v52 < a1[1517]);
        }

        v124 = *a1 + a1[1] - 1;
        v125 = *(a1 + 1);
        if (v124 < v125)
        {
          v125 = 0;
        }

        v126 = *&a1[4 * (v124 - v125) + 4];
        if (v126 > v67 && (v126 - v67) >> 5 <= 0xC34)
        {
          sub_245F0D1E8(a1 + 850, &v155, v126, v43);
          if (*(v1 + 2376) == 1)
          {
            v127 = a1[484] + a1[485] - 1;
            v128 = *(a1 + 243);
            if (v127 < v128)
            {
              v128 = 0;
            }

            v129 = &a1[4 * (v127 - v128)];
            if (*(v129 + 244) > 0.17453)
            {
              v130 = 0;
              v131 = a1[968] + a1[969] - 1;
              v132 = *(a1 + 485);
              if (v131 < v132)
              {
                v132 = 0;
              }

              v133 = 0.0;
              do
              {
                v133 = v133 + (v155.f32[v130] * v155.f32[v130]);
                ++v130;
              }

              while (v130 != 3);
              if (sqrtf(v133) < 0.87266 && v146 < 0.87266)
              {
                v134 = 0;
                v135 = 0.0;
                do
                {
                  v135 = v135 + (v155.f32[v134] * v155.f32[v134]);
                  ++v134;
                }

                while (v134 != 3);
                v122 = fmaxf(sqrtf(v135), v146) <= 0.5236;
                v136 = 1.0;
                if (!v122)
                {
                  v136 = 9.0;
                }

                *buf = vmul_n_f32(*&a1[4 * (v131 - v132) + 972], v136);
                sub_245F0DB8C((a1 + 3400), v129 + 244, buf, v126);
              }
            }
          }

          v67 = v126;
        }

        *(a1 + 861) = v67;
        *(a1 + 3436) = *(a1 + 3402);
        sub_245F19500(a1 + 3488, a1 + 861);
        sub_245F0A878(a1 + 3972, a1 + 3436);
        if ((*(v1 + 2825) & 1) == 0)
        {
          *buf = sub_245F24A60(a1 + 859, v137, v138);
          *&buf[4] = v139;
          *&buf[8] = v140;
          *&buf[12] = v141;
          sub_245F0F554(buf);
          v143 = v142;
          LODWORD(v148) = 0;
          *(&v148 + 1) = -v142;
          v149 = 0.0;
          sub_245F24E08(buf, &v148);
          *(a1 + 3462) = *buf;
          *(v1 + 2825) = 1;
          if (qword_27EE374F0 != -1)
          {
            sub_245F2CB34();
          }

          v144 = qword_27EE374F8;
          if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
          {
            v145 = *(a1 + 861);
            *buf = 134218240;
            *&buf[4] = (v143 * 57.296);
            *&buf[12] = 2048;
            *&buf[14] = v145;
            _os_log_impl(&dword_245D80000, v144, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[updateCurrentEstimate] Initial roll angle recorded: %.1f deg, timestamp: %llu us", buf, 0x16u);
          }
        }
      }
    }
  }
}

void sub_245F1A54C(uint64_t a1, unint64_t a2, float *a3, float a4, float a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v41 = a5;
  v42 = a4;
  if (!*(a1 + 4346))
  {
    goto LABEL_5;
  }

  v8 = a1 + 4352;
  v9 = *(a1 + 4346) + *(a1 + 4344) - 1;
  v10 = *(a1 + 4348);
  if (v9 < v10)
  {
    v10 = 0;
  }

  if (*(v8 + 8 * (v9 - v10)) >= a2)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB20();
    }

    v18 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 4344) + *(a1 + 4346) - 1;
      v20 = *(a1 + 4348);
      if (v19 < v20)
      {
        v20 = 0;
      }

      v21 = *(v8 + 8 * (v19 - v20));
      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v21;
      _os_log_impl(&dword_245D80000, v18, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[feedAuxDM] AuxDM timestamp must be greater than the last value. Input: %llu us, last: %llu us", buf, 0x16u);
    }
  }

  else
  {
LABEL_5:
    if (*(a1 + 6168) == 1)
    {
      *(a1 + 6144) = a2;
      *(a1 + 6152) = sub_245F24AA4(a3, a2);
      *(a1 + 6156) = v11;
      *(a1 + 6160) = v12;
      *(a1 + 6164) = v13;
      *(a1 + 6168) = 0;
    }

    else
    {
      v14 = *(a1 + 6144);
      if (v14 + 1000000 >= a2)
      {
        sub_245F1A8DC((a1 + 3032), v14, a2, buf);
        v23 = *buf;
        for (i = *&buf[8]; v23 != i; ++v23)
        {
          v25 = *v23;
          v26 = sub_245F1AA0C(*(a1 + 6144), a2, (a1 + 6152), a3, *v23, v22);
          *&v40 = __PAIR64__(v27, LODWORD(v26));
          *(&v40 + 1) = __PAIR64__(v29, v28);
          v30 = *(a1 + 4346);
          v31 = *(a1 + 4348);
          v32 = *(a1 + 4344);
          if (v32 + v30 >= v31)
          {
            v33 = *(a1 + 4348);
          }

          else
          {
            v33 = 0;
          }

          *(a1 + 4352 + 8 * (v32 + v30 - v33)) = v25;
          if (v31 <= v30)
          {
            if (v32 + 1 < v31)
            {
              LOWORD(v31) = 0;
            }

            *(a1 + 4344) = v32 + 1 - v31;
          }

          else
          {
            *(a1 + 4346) = v30 + 1;
          }

          sub_245F0A878((a1 + 4752), &v40);
          if (*(a1 + 6176) == 1)
          {
            sub_245F1AB30(a1);
          }
        }

        if (*(a1 + 4346))
        {
          v34 = *(a1 + 4346) + *(a1 + 4344) - 1;
          v35 = *(a1 + 4348);
          if (v34 < v35)
          {
            v35 = 0;
          }

          *(a1 + 6144) = *(a1 + 8 * (v34 - v35) + 4352);
          v36 = *(a1 + 4752) + *(a1 + 4754) - 1;
          v37 = *(a1 + 4756);
          if (v36 < v37)
          {
            v37 = 0;
          }

          *(a1 + 6152) = *(a1 + 16 * (v36 - v37) + 4760);
        }

        if (*(a1 + 5600) == 16)
        {
          v38 = *(a1 + 5592);
          *(a1 + 5600) = 15;
          *(a1 + 5592) = v38 + 1;
          sub_245F1DBB8(a1 + 5560, 1);
        }

        sub_245F154C8((a1 + 5560), &v42);
        if (*(a1 + 5648) == 16)
        {
          v39 = *(a1 + 5640);
          *(a1 + 5648) = 15;
          *(a1 + 5640) = v39 + 1;
          sub_245F1DBB8(a1 + 5608, 1);
        }

        sub_245F154C8((a1 + 5608), &v41);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else
      {
        *(a1 + 6144) = a2;
        *(a1 + 6152) = sub_245F24AA4(a3, v14);
        *(a1 + 6156) = v15;
        *(a1 + 6160) = v16;
        *(a1 + 6164) = v17;
      }
    }
  }
}

void sub_245F1A8DC(unsigned __int16 *result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = result[1];
  if (result[1])
  {
    v8 = result + 4;
    v9 = *result;
    v10 = v5 + v9 - 1;
    v11 = *(result + 1);
    if (v10 < v11)
    {
      v11 = 0;
    }

    if (*&v8[4 * (v10 - v11)] >= a2 && *&v8[4 * v9] < a3)
    {
      v13 = v5 - 1;
      do
      {
        v14 = v13;
        if (!v13)
        {
          break;
        }

        v15 = sub_245F1BE4C(result, v13);
        v13 = v14 - 1;
      }

      while (*v15 >= a3);
      if (*sub_245F1BE4C(result, v14) > a2)
      {
        v16 = v14 + 1;
        do
        {
          v17 = v16 - 1;
          if (v16 == 1)
          {
            goto LABEL_14;
          }

          v18 = sub_245F1BE4C(result, v16 - 2);
          v16 = v17;
        }

        while (*v18 > a2);
        while (v17 <= v14)
        {
LABEL_14:
          v19 = sub_245F1BE4C(result, v17);
          sub_245F1BD6C(a4, v19);
          ++v17;
        }
      }
    }
  }
}

void sub_245F1A9F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_245F1AA0C(unint64_t a1, unint64_t a2, float32x2_t *a3, float *a4, unint64_t a5, float32x4_t a6)
{
  if (a2 < a1)
  {
    a6.i64[0] = 0;
  }

  else
  {
    v44 = v6;
    v45 = v7;
    v8 = a5;
    v9 = a1;
    a6.i64[0] = 0;
    if (a5 >= a1)
    {
      v12 = a2;
      v13.f32[0] = sub_245F24A60(a3, a2, a6);
      v38.i64[0] = __PAIR64__(v14, v13.u32[0]);
      v38.i64[1] = __PAIR64__(v16, v15);
      v39 = sub_245F249DC(a4, v38.f32, v13);
      v40 = v17;
      v41 = v18;
      v42 = v19;
      LODWORD(v43) = sub_245F24AA4(&v39, v20);
      *(&v43 + 4) = __PAIR64__(v22, v21);
      HIDWORD(v43) = v23;
      v25.f32[0] = sub_245F24F24(&v43, v24);
      v26 = (v12 - v9) * 0.000001;
      *&v26 = v26;
      v28 = (v8 - v9) * 0.000001;
      v25.i32[1] = v29;
      v36 = vmul_n_f32(vdiv_f32(v25, vdup_lane_s32(*&v26, 0)), v28);
      v37 = (v27 / *&v26) * v28;
      *v30.i64 = sub_245F24E08(&v38, &v36);
      v39 = sub_245F249DC(v38.f32, a3, v30);
      v40 = v31;
      v41 = v32;
      v42 = v33;
      a6.f32[0] = sub_245F24AA4(&v39, v34);
    }
  }

  return *a6.i64;
}

unsigned __int16 *sub_245F1AB30(unsigned __int16 *result)
{
  v83 = *MEMORY[0x277D85DE8];
  if (result[1])
  {
    v1 = result;
    v2 = result + 6921;
    if (*(result + 6921) == 1)
    {
      v3 = result + 2176;
      v4 = result[2172] + result[2173] - 1;
      v5 = *(result + 1087);
      if (v4 < v5)
      {
        v5 = 0;
      }

      v6 = *&v3[4 * (v4 - v5)];
      v7 = result[1] - 1;
      while (v7)
      {
        result = sub_245F1BE4C(v1, v7--);
        if (*result == v6)
        {
          v8 = *(v1 + 3034) - 1;
          do
          {
            v9 = v8;
            if (!v8)
            {
              break;
            }

            v10 = sub_245F1BE4C((v1 + 3032), v8);
            v8 = v9 - 1;
          }

          while (*v10 != v6);
          if (*sub_245F1BE4C((v1 + 3032), v9) != v6)
          {
            if (qword_27EE374F0 != -1)
            {
              sub_245F2CB20();
            }

            v11 = qword_27EE374F8;
            if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
            {
              v12 = *sub_245F1BE4C((v1 + 3032), v9);
              *buf = 134218496;
              *&buf[4] = v6;
              *&buf[12] = 2048;
              *&buf[14] = v12;
              v81 = 2048;
              v82 = v9;
              _os_log_impl(&dword_245D80000, v11, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[feedAuxDM] Expected exact source vs aux timestamp, not finding one should not have been possible. fBufAuxDM6TimestampMicroSeconds.back(): %llu, fBufSrcDM6TimestampMicroSeconds[indSrc]: %llu, indSrc: %lu", buf, 0x20u);
            }
          }

          v13 = sub_245F0C3C0((v1 + 3440), v9);
          v79[0] = sub_245F24A60(v13, v14, v15);
          v79[1] = v16;
          v79[2] = v17;
          v79[3] = v18;
          sub_245F21210(v1 + 6176);
          v78[0] = v19.f32[0];
          v78[1] = v20;
          v78[2] = v21;
          v78[3] = v22;
          v23 = *(v1 + 4752) + *(v1 + 4754) - 1;
          v24 = *(v1 + 4756);
          if (v23 < v24)
          {
            v24 = 0;
          }

          v25.f32[0] = sub_245F249DC((v1 + 16 * (v23 - v24) + 4760), v78, v19);
          v74 = __PAIR64__(v26, v25.u32[0]);
          v75 = v27;
          v76 = v28;
          v29.f32[0] = sub_245F249DC(&v74, v79, v25);
          *buf = v29.i32[0];
          *&buf[4] = v30;
          *&buf[8] = v31;
          *&buf[12] = v32;
          v34.f32[0] = sub_245F24A60(buf, v33, v29);
          *&v77 = __PAIR64__(v35, v34.u32[0]);
          *(&v77 + 1) = __PAIR64__(v37, v36);
          v39.f32[0] = sub_245F24A60((v1 + 6924), v38, v34);
          *buf = v39.i32[0];
          *&buf[4] = v40;
          *&buf[8] = v41;
          *&buf[12] = v42;
          v43.f32[0] = sub_245F249DC(&v77, buf, v39);
          *&v77 = __PAIR64__(v44, v43.u32[0]);
          *(&v77 + 1) = __PAIR64__(v46, v45);
          v47 = *(v1 + 4344) + *(v1 + 4346) - 1;
          v48 = *(v1 + 4348);
          if (v47 < v48)
          {
            v48 = 0;
          }

          v49 = *&v3[4 * (v47 - v48)];
          sub_245F1AF00(v1, &v77, v49, v43);
          v50 = *(v1 + 6888);
          *buf = sub_245F24B04(&v77, (v1 + 6872), v51);
          *&buf[4] = v52;
          *&buf[8] = v53;
          *&buf[12] = v54;
          v56 = sub_245F24F24(buf, v55);
          v57 = 0;
          v74 = __PAIR64__(v58, LODWORD(v56));
          v75 = v59;
          v60 = 0.0;
          do
          {
            v60 = v60 + (*(&v74 + v57) * *(&v74 + v57));
            v57 += 4;
          }

          while (v57 != 12);
          v61 = v50 - v49;
          if (v50 <= v49)
          {
            v61 = v49 - v50;
          }

          if (v61 <= 0x7A11F && sqrtf(v60) < 0.017453)
          {
            v77 = *(v1 + 6872);
          }

          *(v1 + 6896) = v77;
          *(v1 + 6912) = v49;
          v62 = *(v1 + 6978);
          if (*(v1 + 6978) && v2[2955] == 1)
          {
            while (v62-- >= 1)
            {
              if (*sub_245F1BE4C((v1 + 6976), v62) == v49)
              {
                v64 = sub_245F0C3C0((v1 + 7944), v62);
                v67.f32[0] = sub_245F24A60((v1 + 6924), v65, v66);
                *buf = v67.i32[0];
                *&buf[4] = v68;
                *&buf[8] = v69;
                *&buf[12] = v70;
                LODWORD(v77) = sub_245F249DC(v64, buf, v67);
                *(&v77 + 4) = __PAIR64__(v72, v71);
                HIDWORD(v77) = v73;
                break;
              }
            }
          }

          result = *(v1 + 6696);
          if (result)
          {
            *buf = v77;
            v74 = v49;
            return (*(*result + 48))(result, &v74, buf);
          }

          return result;
        }
      }
    }
  }

  return result;
}

void sub_245F1AF00(uint64_t a1, float32x2_t *a2, unint64_t a3, float32x4_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1 + 4096;
  if ((*(a1 + 6921) & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 6888);
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = v6 - a3;
  if (v6 < a3)
  {
    goto LABEL_10;
  }

  v9 = *(a1 + 6944);
  if (a3 <= v9)
  {
    goto LABEL_10;
  }

  *a4.i64 = (a3 - v9) * 0.000001;
  a4.f32[0] = *a4.i64;
  if (a4.f32[0] < 5.0)
  {
    goto LABEL_10;
  }

  if (v8 >= 0x30D41)
  {
    goto LABEL_10;
  }

  v11.f32[0] = sub_245F24A60((a1 + 6924), a2, a4);
  *buf = v11.i32[0];
  v37 = __PAIR64__(v13, v12);
  *v38 = v14;
  v15.f32[0] = sub_245F249DC((a1 + 6872), buf, v11);
  v35[0] = v15.f32[0];
  v35[1] = v16;
  v35[2] = v17;
  v35[3] = v18;
  *buf = sub_245F24B04(a2, v35, v15);
  v37 = __PAIR64__(v20, v19);
  *v38 = v21;
  v23 = sub_245F24F24(buf, v22);
  v24 = 0;
  *v34 = v23;
  v34[1] = v25;
  v34[2] = v26;
  v27 = 0.0;
  do
  {
    v27 = v27 + (*&v34[v24] * *&v34[v24]);
    ++v24;
  }

  while (v24 != 3);
  v28 = sqrtf(v27);
  if (v28 < 0.087266)
  {
LABEL_10:
    *(a1 + 6960) = 0;
LABEL_11:
    *(v5 + 2873) = 0;
    return;
  }

  v29 = *(a1 + 6960);
  if (!v29)
  {
    *(a1 + 6960) = a3;
    goto LABEL_11;
  }

  v30 = a3 >= v29;
  v31 = a3 - v29;
  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32 >= 0x4C4B40 && (*(v5 + 2873) & 1) == 0)
  {
    *(v5 + 2873) = 1;
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB34();
    }

    v33 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349824;
      v37 = a3;
      *v38 = 2050;
      *&v38[2] = v32;
      v39 = 2050;
      v40 = v8;
      v41 = 2050;
      v42 = (v28 * 57.296);
      _os_log_impl(&dword_245D80000, v33, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[checkPersistentCorrectedVsCurrentRollDelta] Detected persistent large difference between corrected vs. current roll estimate. Timestamp: %{public}llu us, sustained duration: %{public}llu us durationSinceLastCurrentUpdate: %{public}llu us, rollDelta: %{public}.3f deg", buf, 0x2Au);
    }
  }
}

void sub_245F1B12C(unsigned __int16 *a1, unint64_t a2, float *a3, float a4, float a5)
{
  v78 = *MEMORY[0x277D85DE8];
  v8 = a1 + 3084;
  v75 = a5;
  v76 = a4;
  v9 = a1[1517];
  v10 = a1[1516];
  if (!a1[1517])
  {
    v21 = 0;
    goto LABEL_56;
  }

  v11 = a1 + 1520;
  v12 = v9 + v10 - 1;
  v13 = *(a1 + 759);
  if (v12 < v13)
  {
    v13 = 0;
  }

  v14 = *&v11[4 * (v12 - v13)];
  if (v14 < a2)
  {
    sub_245F1B7EC(a1, v14, a2, buf);
    v15 = *buf;
    v16 = *&buf[8];
    if (*buf == *&buf[8])
    {
      goto LABEL_48;
    }

    v17 = a1[1517];
    if (**buf - v14 > 0x9C3)
    {
      goto LABEL_32;
    }

    if (a1[1517])
    {
      v18 = v17 + a1[1516] - 1;
      v19 = *(a1 + 759);
      if (v18 < v19)
      {
        v19 = 0;
      }

      v20 = *&v11[4 * (v18 - v19)];
    }

    else
    {
      v20 = 0;
    }

    v26 = a1[2173];
    if (a1[2173])
    {
      v27 = v26 + a1[2172] - 1;
      v28 = *(a1 + 1087);
      if (v27 < v28)
      {
        v28 = 0;
      }

      v29 = *&a1[4 * (v27 - v28) + 2176];
      if (!a1[1517])
      {
LABEL_27:
        if (v26 && v17 && v29 == v20)
        {
          v30 = v26 - 1;
          a1[2173] = v30;
          if (a1[2377])
          {
            LOWORD(v31) = a1[2377] - 1;
            a1[2377] = v31;
            v31 = v31;
          }

          else
          {
            v31 = 0;
          }

          if (v30)
          {
            v68 = a1[2172] + v30 - 1;
            v69 = *(a1 + 1087);
            if (v68 < v69)
            {
              v69 = 0;
            }

            *(a1 + 768) = *&a1[4 * (v68 - v69) + 2176];
            v70 = a1[2376] + v31 - 1;
            v71 = *(a1 + 1189);
            if (v70 < v71)
            {
              v71 = 0;
            }

            *(a1 + 3076) = *&a1[8 * (v70 - v71) + 2380];
          }

          else
          {
            *v8 = 1;
          }

LABEL_33:
          v32 = a1[1516] + v17 - 1;
          v33 = *(a1 + 759);
          if (v32 < v33)
          {
            v33 = 0;
          }

          v34 = *&v11[4 * (v32 - v33)];
          v35 = a1[1720] + a1[1721] - 1;
          v36 = *(a1 + 861);
          if (v35 < v36)
          {
            v36 = 0;
          }

          v37 = *&a1[8 * (v35 - v36) + 1724];
          v74 = v37;
          do
          {
            v38 = *v15;
            v39 = sub_245F1AA0C(v34, a2, &v74, a3, *v15, v37);
            *&v73 = __PAIR64__(v40, LODWORD(v39));
            *(&v73 + 1) = __PAIR64__(v42, v41);
            v43 = a1[1517];
            v44 = *(a1 + 759);
            v45 = a1[1516];
            if (v45 + v43 >= v44)
            {
              v46 = *(a1 + 759);
            }

            else
            {
              v46 = 0;
            }

            *&v11[4 * (v45 + v43 - v46)] = v38;
            if (v44 <= v43)
            {
              if (v45 + 1 < v44)
              {
                LOWORD(v44) = 0;
              }

              a1[1516] = v45 + 1 - v44;
            }

            else
            {
              a1[1517] = v43 + 1;
            }

            sub_245F0A878(a1 + 1720, &v73);
            ++v15;
          }

          while (v15 != v16);
          v15 = *buf;
LABEL_48:
          if (!v15)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

LABEL_32:
        if (!v17)
        {
LABEL_49:
          *&buf[8] = v15;
          operator delete(v15);
LABEL_50:
          v9 = a1[1517];
          v10 = a1[1516];
          if (a1[1517])
          {
            v47 = v9 + v10 - 1;
            v48 = *(a1 + 759);
            if (v47 < v48)
            {
              v48 = 0;
            }

            v21 = *&v11[4 * (v47 - v48)];
            if (v21 + 2500 >= a2)
            {
LABEL_66:
              if (*(a1 + 768) > (*(a1 + 849) + 10000))
              {
                sub_245F196C0(a1);
                sub_245F1C1D8(a1);
              }

              if (*(a1 + 536) == 16)
              {
                v54 = *(a1 + 535);
                *(a1 + 536) = 15;
                *(a1 + 535) = v54 + 1;
                sub_245F1DBB8((a1 + 2124), 1);
              }

              sub_245F154C8(a1 + 531, &v76);
              if (*(a1 + 542) == 16)
              {
                v55 = *(a1 + 541);
                *(a1 + 542) = 15;
                *(a1 + 541) = v55 + 1;
                sub_245F1DBB8((a1 + 2148), 1);
              }

              sub_245F154C8(a1 + 537, &v75);
              v56 = *(a1 + 868);
              v57 = (a2 - v56) * 0.000001;
              if (a2 <= v56)
              {
                v57 = 0.0;
              }

              *(a1 + 2468) = v57;
              if (!a1[1])
              {
                goto LABEL_81;
              }

              v58 = a1[1] + *a1 - 1;
              v59 = *(a1 + 1);
              if (v58 < v59)
              {
                v59 = 0;
              }

              v60 = *&a1[4 * (v58 - v59) + 4];
              if (v60)
              {
                v61 = v60 - v21;
                if (v60 <= v21)
                {
                  v61 = v21 - v60;
                }

                v62 = v61 > 0x124F7;
                *(v8 + 802) = v61 < 0x124F8;
              }

              else
              {
LABEL_81:
                *(v8 + 802) = 0;
                v62 = 1;
              }

              v63 = *(v8 + 800) ^ 1 | v62;
              *(v8 + 3709) = v63 & 1;
              if (*(a1 + 700))
              {
                sub_245F12BC8(v72, a1 + 695);
                v64 = sub_245F10E5C(v72);
                v65 = *&v64 < 0.7854;
                sub_245F12B1C(v72);
                if ((*(v8 + 3709) & 1) == 0)
                {
LABEL_94:
                  if (*(v8 + 801) & v63)
                  {
                    sub_245F1B91C(a1);
                    *(v8 + 801) = 0;
                    *(a1 + 870) = 0;
                  }

                  return;
                }
              }

              else
              {
                if ((v63 & 1) == 0)
                {
                  goto LABEL_94;
                }

                v65 = 1;
              }

              if (*(v8 + 3708) == 1 && v65 && *(a1 + 2468) > 5.0)
              {
                sub_245F1B91C(a1);
                *(v8 + 3708) = 0;
                *(v8 + 801) = 0;
                *(a1 + 870) = 0;
                if (qword_27EE374F0 != -1)
                {
                  sub_245F2CB34();
                }

                v66 = qword_27EE374F8;
                if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
                {
                  v67 = *(a1 + 2468);
                  *buf = 134349312;
                  *&buf[4] = a2;
                  *&buf[12] = 2050;
                  *&buf[14] = v67;
                  _os_log_impl(&dword_245D80000, v66, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedSrcDM] Performed soft reset on the first hover-or-out opportunity. Timestamp: %{public}llu us, durationFromSessionStartSeconds: %{public}.3f s", buf, 0x16u);
                }
              }

              goto LABEL_94;
            }
          }

          else
          {
            v21 = 0;
          }

LABEL_56:
          v49 = *(a1 + 759);
          v50 = v10 + v9;
          if (v50 >= v49)
          {
            v51 = *(a1 + 759);
          }

          else
          {
            v51 = 0;
          }

          *&a1[4 * (v50 - v51) + 1520] = a2;
          if (v49 <= v9)
          {
            v52 = v10 + 1;
            if (v10 + 1 >= v49)
            {
              v53 = v49;
            }

            else
            {
              v53 = 0;
            }

            a1[1516] = v52 - v53;
          }

          else
          {
            a1[1517] = v9 + 1;
          }

          sub_245F0A878(a1 + 1720, a3);
          goto LABEL_66;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v29 = 0;
      if (!a1[1517])
      {
        goto LABEL_27;
      }
    }

    LOWORD(v17) = v17 - 1;
    a1[1517] = v17;
    if (a1[1721])
    {
      --a1[1721];
    }

    goto LABEL_27;
  }

  if (qword_27EE374F0 != -1)
  {
    sub_245F2CB20();
  }

  v22 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
  {
    v23 = a1[1516] + a1[1517] - 1;
    v24 = *(a1 + 759);
    if (v23 < v24)
    {
      v24 = 0;
    }

    v25 = *&v11[4 * (v23 - v24)];
    *buf = 134218240;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = v25;
    _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[feedSrcDM] SrcDM timestamp must be greater than the last value. Input: %llu us, last: %llu us", buf, 0x16u);
  }
}

void sub_245F1B7EC(unsigned __int16 *result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = result[1];
  if (result[1])
  {
    v8 = result + 4;
    v9 = *result;
    v10 = v5 + v9 - 1;
    v11 = *(result + 1);
    if (v10 < v11)
    {
      v11 = 0;
    }

    if (*&v8[4 * (v10 - v11)] >= a2 && *&v8[4 * v9] < a3)
    {
      v13 = v5 - 1;
      do
      {
        v14 = v13;
        if (!v13)
        {
          break;
        }

        v15 = sub_245F1BE4C(result, v13);
        v13 = v14 - 1;
      }

      while (*v15 >= a3);
      if (*sub_245F1BE4C(result, v14) > a2)
      {
        v16 = v14 + 1;
        do
        {
          v17 = v16 - 1;
          if (v16 == 1)
          {
            goto LABEL_14;
          }

          v18 = sub_245F1BE4C(result, v16 - 2);
          v16 = v17;
        }

        while (*v18 > a2);
        while (v17 <= v14)
        {
LABEL_14:
          v19 = sub_245F1BE4C(result, v17);
          sub_245F1BD6C(a4, v19);
          ++v17;
        }
      }
    }
  }
}

void sub_245F1B900(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245F1B91C(uint64_t result)
{
  v1 = result + 4096;
  if (*(result + 6921) == 1)
  {
    v2 = result;
    v3 = *(result + 6912);
    if (v3)
    {
      if (*(result + 6704) == 1)
      {
        v4 = *(result + 6728);
        if (v4 <= v3)
        {
          v5 = v3 - v4;
        }

        else
        {
          v5 = v4 - v3;
        }

        if (v5 <= 0x30D40)
        {
          *v6.i64 = sub_245F0D1C4(result + 6704);
          LODWORD(v10) = sub_245F249DC((v2 + 6896), (v2 + 6924), v6);
          *(&v10 + 4) = __PAIR64__(v8, v7);
          HIDWORD(v10) = v9;
          sub_245F0CEAC(v1 + 2608, &v10, *(v2 + 6912), 0.0017453, 0.017453);
          result = sub_245F1FFF0(v2 + 6176);
          *(v2 + 6792) = *(v2 + 6912);
        }
      }
    }
  }

  return result;
}

void sub_245F1B9E4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_245F1BCCC(&v22, *(a1 + 2));
  if (*(a1 + 2))
  {
    v4 = 0;
    do
    {
      v5 = sub_245F1BE4C(a1, v4);
      sub_245F1BD6C(&v22, v5);
      ++v4;
    }

    while (v4 < *(a1 + 2));
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_245F1BCCC(&v19, *(a1 + 3034));
  if (*(a1 + 3034))
  {
    v6 = 0;
    do
    {
      v7 = sub_245F1BE4C((a1 + 3032), v6);
      sub_245F1BD6C(&v19, v7);
      ++v6;
    }

    while (v6 < *(a1 + 3034));
  }

  sub_245F1BF64(&v19, &v22, &v15);
  if (v15 == v16)
  {
    goto LABEL_11;
  }

  v8 = *(a1 + 4346);
  v9 = *(a1 + 4344) + v8 - 1;
  v10 = *(a1 + 4348);
  if (v9 < v10)
  {
    v10 = 0;
  }

  if (*(a1 + 8 * (v9 - v10) + 4352) < *(v19 + *v15))
  {
LABEL_11:
    sub_245F1D5D4(a2, &v31, &v28, &v25);
  }

  else
  {
    v14 = 0;
    if (v8)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (v11 >= (v16 - v15) >> 3)
        {
          break;
        }

        v13 = sub_245F1BE4C((a1 + 4344), v12);
        if (*v13 == *(v19 + *(v15 + v11)))
        {
          sub_245F1BD6C(&v25, &v14);
          sub_245F1BD6C(&v28, v15 + v11);
          sub_245F1BD6C(&v31, __p + v11++);
        }

        v12 = v14 + 1;
        v14 = v12;
      }

      while (v12 < *(a1 + 4346));
    }

    sub_245F1D5D4(a2, &v31, &v28, &v25);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_245F1BC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  sub_245F1D710(&a10);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  v25 = *(v23 - 80);
  if (v25)
  {
    *(v23 - 72) = v25;
    operator delete(v25);
  }

  v26 = *(v23 - 56);
  if (v26)
  {
    *(v23 - 48) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_245F1BCCC(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_245DF8830(a1, a2);
    }

    sub_245DF85A4();
  }
}

void sub_245F1BD6C(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_245DF85A4();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_245DF8830(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

unsigned __int16 *sub_245F1BE4C(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D70F8);
    }

    v7 = qword_27EE37528;
    v8 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v8)
    {
      v9 = 134218240;
      v10 = a2;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v9, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return &a1[4 * (v5 - v4) + 4];
}

void sub_245F1BF64(unint64_t **a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  v6 = a1[1];
  v7 = *a1;
  if (v7 == v6 || (v8 = a2[1], v9 = *a2, *a2 == v8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    v33[1] = 0;
    v34 = 0;
    v33[0] = 0;
    a3[4] = 0;
    a3[5] = 0;
    goto LABEL_24;
  }

  __p = 0;
  v29 = 0;
  v30 = 0;
  sub_245F1DC48(v7, v6, v9, v8, &__p, v35);
  v10 = __p;
  if (__p == v29)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    v33[1] = 0;
    v34 = 0;
    v33[0] = 0;
    a3[4] = 0;
    a3[5] = 0;
    v31[1] = 0;
    v32 = 0;
    v31[0] = 0;
    if (!v10)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v11 = (v29 - __p) >> 3;
  v12 = a1[1];
  v14 = *a2;
  v13 = a2[1];
  v15 = v12 - *a1;
  if (v12 != *a1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = v15 >> 3;
    v20 = 1;
    do
    {
      if ((*a1)[v17] == *(__p + v16))
      {
        v35[0] = v17;
        sub_245F1BD6C(v33, v35);
        ++v18;
      }

      if (v19 <= v20)
      {
        break;
      }

      v17 = v20;
      v16 = v18;
      ++v20;
    }

    while (v11 > v18);
  }

  if (v13 == v14)
  {
    v27 = 0;
    v26 = 0uLL;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v13 - v14;
    v25 = 1;
    do
    {
      if ((*a2)[v22] == *(__p + v21))
      {
        v35[0] = v22;
        sub_245F1BD6C(v31, v35);
        ++v23;
      }

      if (v24 <= v25)
      {
        break;
      }

      v22 = v25;
      v21 = v23;
      ++v25;
    }

    while (v11 > v23);
    v26 = *v31;
    v27 = v32;
  }

  *a3 = *v33;
  a3[2] = v34;
  v33[1] = 0;
  v34 = 0;
  v33[0] = 0;
  *(a3 + 3) = v26;
  a3[5] = v27;
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  v10 = __p;
  if (__p)
  {
LABEL_22:
    v29 = v10;
    operator delete(v10);
    if (v31[0])
    {
      v31[1] = v31[0];
      operator delete(v31[0]);
    }
  }

LABEL_24:
  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }
}

void sub_245F1C194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_245F1C1D8(uint64_t a1)
{
  v119 = *MEMORY[0x277D85DE8];
  sub_245F1C968(a1, v110);
  if (v110[0] == 1)
  {
    v2 = v113;
    v3 = v111;
    v108 = 0;
    v109 = 0x3F80000000000000;
    *&v107 = 0;
    *(&v107 + 1) = 0x3F80000000000000;
    *&v106 = 0;
    *(&v106 + 1) = 0x3F80000000000000;
    *&v105 = 0;
    *(&v105 + 1) = 0x3F80000000000000;
    if (*(a1 + 3034))
    {
      if (*(a1 + 4346))
      {
        v4 = *(a1 + 3034) + *(a1 + 3032) - 1;
        v5 = *(a1 + 3036);
        if (v4 < v5)
        {
          v5 = 0;
        }

        v6 = *(a1 + 8 * (v4 - v5) + 3040);
        v7 = *(a1 + 6944);
        if (*(a1 + 5600) < 5uLL)
        {
          v9 = 1;
        }

        else
        {
          sub_245F12BC8(v102, (a1 + 5560));
          v8 = sub_245F10E5C(v102);
          v9 = *&v8 >= 0.087266;
          sub_245F12B1C(v102);
        }

        if (*(a1 + 4288) < 5uLL)
        {
          v11 = 1;
        }

        else
        {
          sub_245F12BC8(v101, (a1 + 4248));
          v10 = sub_245F10E5C(v101);
          v11 = *&v10 >= 0.087266;
          sub_245F12B1C(v101);
        }

        if (v2 + 1 != v3)
        {
          v12 = 0;
          v13 = v2 + 1 - v3;
          v93 = (v6 - v7) > 0x4C4B3F || v9 || v11;
          v14 = v112;
          if (v13 <= 1)
          {
            v13 = 1;
          }

          v94 = v13;
          while (1)
          {
            v15 = *sub_245F1BE4C((a1 + 4344), v3 + v12);
            v16 = *sub_245F1BE4C((a1 + 4344), v3 + v12);
            if (v16 != *sub_245F1BE4C((a1 + 3032), v14 + v12))
            {
              if (qword_27EE374F0 != -1)
              {
                sub_245F2CB34();
              }

              v17 = qword_27EE374F8;
              if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
              {
                v18 = *sub_245F1BE4C((a1 + 4344), v3 + v12);
                v19 = *sub_245F1BE4C((a1 + 3032), v14 + v12);
                *buf = 134218240;
                v117 = v18;
                LOWORD(v118[0]) = 2048;
                *(v118 + 2) = v19;
                _os_log_impl(&dword_245D80000, v17, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[feedSrcDM] aux timestamp: %llu us does not match the src timestamp: %llu", buf, 0x16u);
              }
            }

            v20 = sub_245F0C3C0((a1 + 3440), v14 + v12);
            LODWORD(v108) = sub_245F24A60(v20, v21, v22);
            HIDWORD(v108) = v23;
            v109 = __PAIR64__(v25, v24);
            v107 = *sub_245F0C3C0((a1 + 4752), v3 + v12);
            sub_245F21210(a1 + 6176);
            *buf = v26.i32[0];
            v117 = __PAIR64__(v28, v27);
            v118[0] = v29;
            v30.f32[0] = sub_245F249DC(&v107, buf, v26);
            v95 = __PAIR64__(v31, v30.u32[0]);
            v96 = v32;
            v97 = v33;
            v34.f32[0] = sub_245F249DC(&v95, &v108, v30);
            v98 = __PAIR64__(v35, v34.u32[0]);
            v99 = v36;
            v100 = v37;
            v40.f32[0] = sub_245F24A60(&v98, v38, v34);
            *&v106 = __PAIR64__(v41, v40.u32[0]);
            *(&v106 + 1) = __PAIR64__(v43, v42);
            if ((*(a1 + 6704) & 1) == 0)
            {
              break;
            }

            v44.f32[0] = sub_245F24A60((a1 + 6776), v39, v40);
            v98 = __PAIR64__(v45, v44.u32[0]);
            v99 = v46;
            v100 = v47;
            LODWORD(v105) = sub_245F249DC(&v106, &v98, v44);
            *(&v105 + 4) = __PAIR64__(v49, v48);
            HIDWORD(v105) = v51;
            v52 = (v15 - *(a1 + 6792)) * 0.000001;
            if (v52 >= 0.0000001)
            {
              v103.f32[0] = sub_245F24F24(&v105, v50) / v52;
              v103.f32[1] = v53 / v52;
              v104 = v55 / v52;
              if (!v93)
              {
                v104 = 0.0;
                v103 = 0;
              }

              v54.n128_f32[0] = v55 / v52;
              sub_245F0D1E8((a1 + 6704), &v103, v15, v54);
              sub_245F210D0(a1 + 6176, v15);
              v56 = 0;
              v57 = 0.0;
              do
              {
                v57 = v57 + (v103.f32[v56] * v103.f32[v56]);
                ++v56;
              }

              while (v56 != 3);
              v58 = sqrtf(v57);
              v59 = *(a1 + 5658);
              v60 = *(a1 + 5660);
              v61 = *(a1 + 5656);
              if (v61 + v59 >= v60)
              {
                v62 = *(a1 + 5660);
              }

              else
              {
                v62 = 0;
              }

              *(a1 + 5664 + 4 * (v61 + v59 - v62)) = v58;
              if (v60 <= v59)
              {
                if (v61 + 1 < v60)
                {
                  LOWORD(v60) = 0;
                }

                *(a1 + 5656) = v61 + 1 - v60;
              }

              else
              {
                *(a1 + 5658) = v59 + 1;
              }

              if (v114 == 1)
              {
                v63 = __p;
                v64 = *(__p + v12);
                if (v64 == -1)
                {
                  v80 = 0;
                }

                else
                {
                  v65 = sub_245F1BE4C((a1 + 968), v64);
                  v98.i32[0] = sub_245F24A60((a1 + 6708), v66, v67);
                  v98.i32[1] = v68;
                  v99 = v69;
                  v100 = v70;
                  v71 = sub_245F0F554(&v98);
                  v73 = fmodf((v72 - v65[1]) + 3.1416, 6.2832);
                  if (v73 < 0.0)
                  {
                    v73 = v73 + 6.2832;
                  }

                  v74 = fabsf(v73 + -3.1416);
                  v75 = *v65;
                  v76 = fmodf((v71 - *v65) + 3.1416, 6.2832);
                  if (v76 < 0.0)
                  {
                    v76 = v76 + 6.2832;
                  }

                  v77 = fabsf(v76 + -3.1416);
                  v78 = v74 <= 0.7854 || v75 <= 0.17453;
                  v79 = !v78;
                  v80 = v79 & (v77 < 0.17453);
                }

                if ((*(a1 + 6472) & 1) != 0 || v80)
                {
                  v81 = v63[v12];
                  if (v81 != -1)
                  {
                    v92 = sub_245F1BE4C((a1 + 968), v81);
                    if (*v92 > 0.17453)
                    {
                      v82 = sub_245F1BE4C((a1 + 1936), v81);
                      v83 = 9.0;
                      if (v80)
                      {
                        v83 = 1.0;
                      }

                      v98 = vmul_n_f32(*v82, v83);
                      v84 = sub_245F0C3C0((a1 + 3440), v14 + v12);
                      sub_245F210D8(a1 + 6176, v92, &v98, v84, &v107, v15);
                      v85 = *(a1 + 5600);
                      v86 = 0.0;
                      v87 = 0.0;
                      if (v85)
                      {
                        v87 = *(*(*(a1 + 5568) + (((v85 + *(a1 + 5592) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v85 + *(a1 + 5592) - 1) & 0x3FF));
                      }

                      for (i = 0; i != 3; ++i)
                      {
                        v86 = v86 + (v103.f32[i] * v103.f32[i]);
                      }

                      if (sqrtf(v86) < 0.87266 && v87 < 0.87266)
                      {
                        v89 = 0;
                        v90 = 0.0;
                        do
                        {
                          v90 = v90 + (v103.f32[v89] * v103.f32[v89]);
                          ++v89;
                        }

                        while (v89 != 3);
                        v78 = fmaxf(sqrtf(v90), v87) <= 0.5236;
                        v91 = 9.0;
                        if (v78)
                        {
                          v91 = 1.0;
                        }

                        v95 = vmul_n_f32(v98, v91);
                        sub_245F0DB8C(a1 + 6704, v92, &v95, v15);
                      }
                    }
                  }
                }
              }

              goto LABEL_36;
            }

LABEL_37:
            if (++v12 == v94)
            {
              goto LABEL_13;
            }
          }

          sub_245F0D1C4(a1 + 6704);
          sub_245F0CEAC(a1 + 6704, &v106, v15, 0.0017453, 0.017453);
LABEL_36:
          *(a1 + 6776) = v106;
          *(a1 + 6792) = v15;
          goto LABEL_37;
        }
      }
    }
  }

LABEL_13:
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_245F1C91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245F1C968(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  if (*(a1 + 6176) != 1 || !a1[2173] || !a1[1517])
  {
    return;
  }

  v4 = a1 + 2176;
  v5 = a1[2173] + a1[2172] - 1;
  v6 = *(a1 + 1087);
  if (v5 < v6)
  {
    v6 = 0;
  }

  v7 = *&v4[4 * (v5 - v6)];
  v8 = a1[1516];
  if (v7 < *&a1[4 * v8 + 1520])
  {
    return;
  }

  v9 = *(a1 + 849);
  if (v7 <= v9)
  {
    return;
  }

  v10 = a1[1517] + v8 - 1;
  v11 = *(a1 + 759);
  if (v10 < v11)
  {
    v11 = 0;
  }

  if (*&a1[4 * (v10 - v11) + 1520] <= v9)
  {
    return;
  }

  v12 = 0;
  do
  {
    v13 = sub_245F1BE4C(a1 + 1516, v12);
    v14 = a1[1517];
    if (*v13 >= *&v4[4 * a1[2172]])
    {
      break;
    }

    ++v12;
  }

  while (v12 < v14);
  if (v12 == v14 || !a1[2173])
  {
    return;
  }

  v15 = 0;
  do
  {
    v16 = *sub_245F1BE4C(a1 + 2172, v15);
    v17 = sub_245F1BE4C(a1 + 1516, v12);
    v18 = a1[2173];
    if (v16 >= *v17)
    {
      break;
    }

    ++v15;
  }

  while (v15 < v18);
  if (v15 == v18)
  {
    return;
  }

  v19 = *sub_245F1BE4C(a1 + 2172, v15);
  if (v19 != *sub_245F1BE4C(a1 + 1516, v12))
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB20();
    }

    v22 = qword_27EE374F8;
    if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    goto LABEL_30;
  }

  v20 = a1[2173];
  if (v15 < v20)
  {
    while (v12 < a1[1517])
    {
      v21 = sub_245F1BE4C(a1 + 2172, v15);
      v20 = a1[2173];
      if (*v21 > *(a1 + 849))
      {
        break;
      }

      ++v12;
      if (++v15 >= v20)
      {
        break;
      }
    }

    v20 = v20;
  }

  if (v15 == v20 || v12 == a1[1517])
  {
    return;
  }

  v27 = *sub_245F1BE4C(a1 + 2172, v15);
  if (v27 != *sub_245F1BE4C(a1 + 1516, v12))
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB20();
    }

    v22 = qword_27EE374F8;
    if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

LABEL_30:
    v23 = *sub_245F1BE4C(a1 + 1516, v12);
    v24 = *sub_245F1BE4C(a1 + 2172, v15);
    *buf = 134218752;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = v23;
    *&buf[22] = 2048;
    v56 = v15;
    v57 = 2048;
    v58 = v24;
    v25 = "[BarrelRoll]:[CMABarrelRoll]:[getPastMEKFUpdateIndices] Unexpected timestamp mismatch.indSrc: %zu, src: %llu, indAux: %zu, aux: %llu";
    v26 = v22;
    goto LABEL_31;
  }

  v28 = v12;
  v29 = v15;
  if (v15 < a1[2173])
  {
    v29 = v15;
    v28 = v12;
    while (v28 < a1[1517])
    {
      v30 = *sub_245F1BE4C(a1 + 2172, v29);
      if (v30 != *sub_245F1BE4C(a1 + 1516, v28))
      {
        break;
      }

      ++v29;
      ++v28;
      if (v29 >= a1[2173])
      {
        goto LABEL_49;
      }
    }
  }

  if (v29 && v28)
  {
LABEL_49:
    v31 = v29 - 1;
    v32 = v28 - 1;
    v33 = v31 - v15;
    if (v31 < v15 || v32 < v12)
    {
      v51 = v31;
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CB20();
      }

      v52 = qword_27EE374F8;
      if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 134218752;
      *&buf[4] = v51;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      v56 = v32;
      v57 = 2048;
      v58 = v12;
      v25 = "[BarrelRoll]:[CMABarrelRoll]:[getPastMEKFUpdateIndices] Unexpected index order.lastAuxInd: %zu, firstAuxInd: %zu, lastSrcInd: %zu, firstSrcInd: %zu";
    }

    else
    {
      v53 = v31;
      if (v33 == v32 - v12)
      {
        *a2 = 1;
        *(a2 + 8) = v15;
        *(a2 + 16) = v12;
        *(a2 + 24) = v31;
        *(a2 + 32) = v32;
        if (a1[1])
        {
          v34 = *sub_245F1BE4C(a1 + 2172, v15);
          v35 = a1 + 4;
          v36 = *a1 + a1[1] - 1;
          v37 = *(a1 + 1);
          if (v36 < v37)
          {
            v37 = 0;
          }

          if (v34 <= *&v35[4 * (v36 - v37)] && *sub_245F1BE4C(a1 + 2172, v53) >= *&v35[4 * *a1] && a1[1])
          {
            v38 = 0;
            do
            {
              v39 = *sub_245F1BE4C(a1, v38);
              v40 = sub_245F1BE4C(a1 + 1516, v12);
              v41 = a1[1];
              if (v39 >= *v40)
              {
                break;
              }

              ++v38;
            }

            while (v38 < v41);
            if (v38 != v41)
            {
              v42 = v38;
              v54 = -1;
              sub_245F1D7A8(buf, v33 + 1, &v54);
              v43 = *buf;
              *(a2 + 48) = *buf;
              v44 = *&buf[8];
              *(a2 + 56) = *&buf[8];
              if (v44 != v43)
              {
                v45 = v44 - v43;
                if (v45 <= 1)
                {
                  v45 = 1;
                }

                v46 = v45 - 1;
                do
                {
                  v47 = v46;
                  v48 = *sub_245F1BE4C(a1 + 1516, v12);
                  v49 = v42;
                  if (v48 == *sub_245F1BE4C(a1, v42))
                  {
                    *v43 = v42++;
                    v49 = v42;
                  }

                  else
                  {
                    v50 = *sub_245F1BE4C(a1 + 1516, v12);
                    if (v50 > *sub_245F1BE4C(a1, v42))
                    {
                      break;
                    }
                  }

                  if (v49 == a1[1])
                  {
                    break;
                  }

                  v46 = v47 - 1;
                  ++v12;
                  ++v43;
                }

                while (v47);
              }

              *(a2 + 40) = 1;
            }
          }
        }

        return;
      }

      if (qword_27EE374F0 != -1)
      {
        sub_245F2CB20();
      }

      v52 = qword_27EE374F8;
      if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 134218752;
      *&buf[4] = v53;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      v56 = v32;
      v57 = 2048;
      v58 = v12;
      v25 = "[BarrelRoll]:[CMABarrelRoll]:[getPastMEKFUpdateIndices] Unexpected index delta.lastAuxInd: %zu, firstAuxInd: %zu, lastSrcInd: %zu, firstSrcInd: %zu";
    }

    v26 = v52;
LABEL_31:
    _os_log_impl(&dword_245D80000, v26, OS_LOG_TYPE_DEBUG, v25, buf, 0x2Au);
  }
}

uint64_t sub_245F1D028(unsigned __int16 *a1, float *a2, unint64_t *a3, float *a4)
{
  v4 = a1[2173];
  v5 = v4 - 3;
  if (v4 < 3)
  {
    return 0;
  }

  v10 = v4 - 1;
  v11 = *sub_245F1BE4C(a1 + 2172, v4 - 1);
  v12 = v4 - 2;
  v13 = *sub_245F1BE4C(a1 + 2172, v12);
  v14 = (v11 - v13) * 0.000001;
  if (v14 < 0.0000001)
  {
    return 0;
  }

  v15 = sub_245F0C3C0(a1 + 2376, v10);
  v16 = sub_245F0C3C0(a1 + 2376, v12);
  v19.f32[0] = sub_245F24A60(v16, v17, v18);
  v56 = v19.i32[0];
  v57 = v20;
  v58 = v21;
  v59 = v22;
  LODWORD(v60) = sub_245F249DC(v15, &v56, v19);
  *(&v60 + 4) = __PAIR64__(v24, v23);
  HIDWORD(v60) = v25;
  v27 = sub_245F24F24(&v60, v26);
  v29 = v28;
  v31 = v30;
  v32 = *sub_245F1BE4C(a1 + 2172, v5);
  v33 = (v13 - v32) * 0.000001;
  if (v33 < 0.0000001)
  {
    return 0;
  }

  v34 = v31 / v14;
  v35 = v29 / v14;
  v36 = v27 / v14;
  v37 = sub_245F0C3C0(a1 + 2376, v12);
  v38 = sub_245F0C3C0(a1 + 2376, v5);
  v41.f32[0] = sub_245F24A60(v38, v39, v40);
  v56 = v41.i32[0];
  v57 = v42;
  v58 = v43;
  v59 = v44;
  LODWORD(v60) = sub_245F249DC(v37, &v56, v41);
  *(&v60 + 4) = __PAIR64__(v46, v45);
  HIDWORD(v60) = v47;
  v49 = sub_245F24F24(&v60, v48) / v33;
  v51 = v50 / v33;
  v53 = v52 / v33;
  v54 = (v11 - v32) * 0.000001;
  *a2 = (v36 - v49) / v54;
  a2[1] = (v35 - v51) / v54;
  a2[2] = (v34 - v53) / v54;
  *a3 = (v13 + v11) >> 1;
  *a4 = (v36 + v49) * 0.5;
  a4[1] = (v35 + v51) * 0.5;
  a4[2] = (v34 + v53) * 0.5;
  return 1;
}

void sub_245F1D24C(unsigned __int16 *a1, float32x2_t *a2, float32x4_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a1 + 6971;
  if (a1[1])
  {
    v5 = a1[1] + *a1 - 1;
    v6 = *(a1 + 1);
    if (v5 < v6)
    {
      v6 = 0;
    }

    v7 = *&a1[4 * (v5 - v6) + 4];
  }

  else
  {
    v7 = 0.0;
  }

  v8 = *(a1 + 868);
  *a3.i64 = (LODWORD(v7) - v8) * 0.000001;
  a3.f32[0] = *a3.i64;
  v9 = 0.0;
  if (*&v7 <= v8)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a3.f32[0];
  }

  a3.i32[0] = 15.0;
  if (v10 <= 15.0)
  {
    *buf = sub_245F24B04(a2, a1 + 1724, a3);
    v25 = COERCE_DOUBLE(__PAIR64__(v12, v11));
    *v26 = v13;
    v15 = sub_245F24F24(buf, v14);
    v16 = 0;
    *v23 = v15;
    v23[1] = v17;
    v23[2] = v18;
    do
    {
      v9 = v9 + (*&v23[v16] * *&v23[v16]);
      ++v16;
    }

    while (v16 != 3);
    v19 = sqrtf(v9);
    if (v10 > 0.2 && v10 < 5.0)
    {
      if (v19 > 0.087266 && (*v4 & 1) == 0)
      {
        *v4 = 1;
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CB34();
        }

        v21 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          v25 = v10;
          *v26 = 2050;
          *&v26[2] = (v19 * 57.296);
          _os_log_impl(&dword_245D80000, v21, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[checkPencilDM6InitAnomaly] Detected cold start init anomaly. deltaFromSessionStartSeconds: %{public}.3f s, rollDeltaWillAndDidUpdateRad: %{public}.3f deg", buf, 0x16u);
        }
      }
    }

    else
    {
      *v4 = 0;
      if (v10 < 15.0 && v19 > 0.087266)
      {
        sub_245F1FFF0((a1 + 3088));
      }
    }

    if (*v4 == 1 && (v4[2905] & 1) == 0)
    {
      v4[2905] = 1;
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CB34();
      }

      v22 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        v25 = v7;
        *v26 = 2050;
        *&v26[2] = v10;
        v27 = 2050;
        v28 = (v19 * 57.296);
        _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedSrcDM] Will perform soft reset on the first hover-or-out opportunity. Timestamp: %{public}llu us, durationFromSessionStartSeconds: %{public}.3f s,  rollDeltaWillAndDidUpdateRad: %{public}.3f deg", buf, 0x20u);
      }
    }
  }

  else
  {
    *v4 = 0;
  }
}

double sub_245F1D50C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 6921) != 1)
  {
    return 0.0;
  }

  v16 = v2;
  v17 = v3;
  v15 = *(a1 + 6872);
  v5.f32[0] = sub_245F24A60((a1 + 6924), a2, v15);
  v14[0] = v5.f32[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v9.f32[0] = sub_245F249DC(v15.f32, v14, v5);
  v15.i64[0] = __PAIR64__(v10, v9.u32[0]);
  v15.i64[1] = __PAIR64__(v12, v11);
  sub_245F1D24C(a1, &v15, v9);
  LODWORD(result) = v15.i32[0];
  return result;
}

os_log_t sub_245F1D5A4()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

uint64_t *sub_245F1D5D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_245F1D694(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_245F1D694(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_245F1D694(a1 + 6, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  return a1;
}

void sub_245F1D660(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_245F1D694(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_245DF87F4(result, a4);
  }

  return result;
}

void sub_245F1D6F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245F1D710(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_245F1D754(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_245F1D7A8(uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_245DF8568(a1, a2);
  }

  return a1;
}

void sub_245F1D8A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245F1D8BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_245F1D954(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_245F1DBAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_245D81068(a1);
}

uint64_t sub_245F1DBB8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
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
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

os_log_t sub_245F1DC18()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

void sub_245F1DC48(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X3>, const void **a5@<X4>, unint64_t **a7@<X8>)
{
  if (a3 != a4)
  {
    v11 = a3;
    v13 = 0;
    do
    {
      v14 = sub_245F1DD64(a1, a2, v11);
      v15 = a1 == v14;
      if (a1 == v14 && v13)
      {
        sub_245F1BD6C(a5, v14);
        v15 = 0;
        ++v14;
        ++v11;
      }

      if (v14 == a2)
      {
        break;
      }

      v16 = sub_245F1DD64(v11, a4, v14);
      v17 = v16;
      v13 = v11 == v16;
      if (v11 == v16 && v15)
      {
        sub_245F1BD6C(a5, v14);
        v13 = 0;
        ++v14;
        v11 = v17 + 1;
      }

      else
      {
        v11 = v16;
      }

      a1 = v14;
    }

    while (v11 != a4);
  }

  *a7 = a2;
  a7[1] = a4;
  a7[2] = a5;
}

unint64_t *sub_245F1DD64(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (a2 != a1)
  {
    v3 = *a3;
    if (*a1 >= *a3)
    {
      return a1;
    }

    v4 = a2 - a1;
    if (v4 >= 1)
    {
      v4 = 1;
    }

    v5 = &a1[v4];
    if (v5 == a2)
    {
LABEL_17:
      v7 = a2;
    }

    else
    {
      v6 = 1;
      while (1)
      {
        v7 = v5;
        if (*v5 >= v3)
        {
          break;
        }

        v4 = a2 - v5;
        v8 = v4 <= 2 * v6;
        v6 *= 2;
        if (v8)
        {
          v9 = v6;
        }

        else
        {
          v9 = a2 - v5;
        }

        if (!v8)
        {
          v4 = v6;
        }

        if (v6 < 0)
        {
          v4 = v9;
        }

        v5 = &v7[v4];
        a1 = v7;
        if (v5 == a2)
        {
          a1 = v7;
          goto LABEL_17;
        }
      }
    }

    if (v4)
    {
      if (v4 == 1)
      {
        return v7;
      }

      do
      {
        v10 = v4 >> 1;
        v11 = &a1[v4 >> 1];
        v13 = *v11;
        v12 = v11 + 1;
        v4 += ~(v4 >> 1);
        if (v13 < v3)
        {
          a1 = v12;
        }

        else
        {
          v4 = v10;
        }
      }

      while (v4);
    }

    return a1;
  }

  return a2;
}

float sub_245F1DE2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], a2, a3);
  v6 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v4, v5);
  v8 = objc_msgSend_components_fromDate_(v6, v7, 252, v3);
  v11 = objc_msgSend_copy(v8, v9, v10);
  objc_msgSend_setDay_(v11, v12, 1);
  objc_msgSend_setMonth_(v11, v13, 1);
  v14 = objc_alloc(MEMORY[0x277CBEA80]);
  v16 = objc_msgSend_initWithCalendarIdentifier_(v14, v15, *MEMORY[0x277CBE5C0]);
  v18 = objc_msgSend_dateFromComponents_(v16, v17, v11);
  v20 = objc_msgSend_components_fromDate_toDate_options_(v16, v19, 16, v18, v3, 0);
  v23 = objc_msgSend_year(v8, v21, v22);
  v26 = fabs((objc_msgSend_day(v20, v24, v25) + 1));
  return v26 / dbl_245F33120[(objc_msgSend_year(v8, v27, v28) & 3) == 0] + v23;
}

void sub_245F1DF30(uint64_t a1)
{
  *(a1 + 48) = xmmword_245F32B50;
  *(a1 + 64) = xmmword_245F32B60;
  *(a1 + 80) = xmmword_245F33130;
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  *(a1 + 136) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 112);
      v2 = (*(a1 + 104) + 8);
      *(a1 + 104) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 1024;
LABEL_7:
    *(a1 + 128) = v6;
  }

  *(a1 + 144) = 1;
}

void sub_245F1DFD4(uint64_t a1, unint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, uint64_t a7, unint64_t **a8, void *a9, void *a10)
{
  v10 = *a8;
  v11 = a8[1];
  if (*a8 == v11)
  {
    return;
  }

  if (*(a7 + 2))
  {
    v20 = *(a7 + 4) == *(a7 + 2);
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v22 = 0;
    v23 = 0.0;
    do
    {
      v23 = v23 + *sub_245F09E3C(a7, v22++);
      v24 = *(a7 + 2);
    }

    while (v22 < v24);
    v10 = *a8;
    v11 = a8[1];
    v25 = v23 / v24;
    v21 = v25 > 0.05236;
    *(a1 + 148) = v25;
  }

  else
  {
    v21 = 0;
  }

  if ((v11 - v10) <= 0x3F)
  {
    v26 = 2;
LABEL_25:
    *(a1 + 145) = v26;

    sub_245F1E22C(a1, 0, a2);
    return;
  }

  while (v10 != v11)
  {
    if ((*sub_245F1893C(a6, *v10) & 1) == 0)
    {
      v26 = 3;
      goto LABEL_25;
    }

    ++v10;
  }

  if (!v21)
  {
    v26 = 4;
    goto LABEL_25;
  }

  sub_245F1E334(a1, a3, a4, a5, a8, a9, a10);
  if ((*(a1 + 52) - *(a1 + 48)) < 0.0034907 || (v27.f32[0] = *(a1 + 64) - *(a1 + 60), v27.f32[0] < 0.0034907))
  {
    v26 = 5;
    goto LABEL_25;
  }

  sub_245F1E640(a1, a3, a8, &v28, v27);
  if (sub_245F1E774(a1, &v28))
  {
    *(a1 + 145) = 1;
    sub_245F1E22C(a1, 1, a2);
    if (*(a1 + 136) == 16)
    {
      ++*(a1 + 128);
      *(a1 + 136) = 15;
      sub_245F1DBB8(a1 + 96, 1);
    }

    sub_245F154C8((a1 + 96), &v29);
  }

  else
  {
    *(a1 + 145) = 6;
    sub_245F1E22C(a1, 0, a2);
  }
}

void sub_245F1E22C(uint64_t a1, int a2, unint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 144) != a2)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB5C();
    }

    v6 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 144);
      v8[0] = 67109632;
      v8[1] = v7;
      v9 = 1024;
      v10 = a2;
      v11 = 2048;
      v12 = (a3 * 0.000001);
      _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilRingSensorTrustModel]:[setTrustPencilBool] Changed fTrustPencilRingSensorBool from %d to %d, t: %.6f s", v8, 0x18u);
    }

    *(a1 + 144) = a2;
  }
}

float sub_245F1E334(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, void *a5, void *a6, void *a7)
{
  *(a1 + 48) = xmmword_245F32B50;
  *(a1 + 64) = xmmword_245F32B60;
  *(a1 + 80) = xmmword_245F33130;
  if ((atomic_load_explicit(byte_27EE388D0, memory_order_acquire) & 1) == 0)
  {
    sub_245F2CB70();
  }

  if ((atomic_load_explicit(byte_27EE388D8, memory_order_acquire) & 1) == 0)
  {
    sub_245F2CBD0();
  }

  *(a1 + 8) = *a1;
  sub_245F1E8D0(a1, (a5[1] - *a5) >> 3);
  *(a1 + 32) = *(a1 + 24);
  sub_245F1E8D0((a1 + 24), (a5[1] - *a5) >> 3);
  if (a5[1] == *a5)
  {
    v42 = 0;
    v37 = *(a1 + 80);
    v38 = *(a1 + 92);
    v39 = *(a1 + 56);
    v41 = *(a1 + 68);
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = sub_245F0C3C0(a3, *(*a6 + 8 * v12));
      v14 = sub_245F0C3C0(a4, *(*a7 + 8 * v12));
      v17.f32[0] = sub_245F24A60(v13, v15, v16);
      v47 = v17.f32[0];
      v48 = v18;
      v49 = v19;
      v50 = v20;
      v21.f32[0] = sub_245F249DC(v14, &v47, v17);
      v51 = __PAIR64__(v22, v21.u32[0]);
      v52 = v23;
      v53 = v24;
      v47 = sub_245F24A60(&v51, v25, v21);
      v48 = v26;
      v49 = v27;
      v50 = v28;
      v29 = sub_245F24D2C(&v47, *&qword_27EE388E0, *(&qword_27EE388E0 + 1), *&dword_27EE388E8);
      v31 = v30;
      v47 = acosf(fmaxf(fminf(((v32 * *&dword_27EE388F8) + (v30 * *(&qword_27EE388F0 + 1))) + (v29 * *&qword_27EE388F0), 1.0), -1.0));
      sub_245F1E970(a1, &v47);
      v46 = atan2f(v31, v29);
      sub_245F1E970((a1 + 24), &v46);
      v33 = *sub_245F1BE4C(a2, *(*a5 + 8 * v12));
      v34 = *(sub_245F1BE4C(a2, *(*a5 + 8 * v12)) + 1);
      v35 = v46;
      v36 = v47;
      v37 = v47 + *(a1 + 80);
      *(a1 + 80) = v37;
      v38 = v35 + *(a1 + 92);
      *(a1 + 92) = v38;
      v39 = v33 + *(a1 + 56);
      *(a1 + 56) = v39;
      v40 = *(a1 + 72);
      v41 = v34 + *(a1 + 68);
      *(a1 + 68) = v41;
      if (v36 < v40)
      {
        *(a1 + 72) = v36;
      }

      if (v35 < *(a1 + 84))
      {
        *(a1 + 84) = v35;
      }

      if (v33 < *(a1 + 48))
      {
        *(a1 + 48) = v33;
      }

      if (v34 < *(a1 + 60))
      {
        *(a1 + 60) = v34;
      }

      if (v36 > *(a1 + 76))
      {
        *(a1 + 76) = v36;
      }

      if (v35 > *(a1 + 88))
      {
        *(a1 + 88) = v35;
      }

      if (v33 > *(a1 + 52))
      {
        *(a1 + 52) = v33;
      }

      if (v34 > *(a1 + 64))
      {
        *(a1 + 64) = v34;
      }

      ++v12;
      v42 = (a5[1] - *a5) >> 3;
    }

    while (v42 > v12);
  }

  *(a1 + 80) = v37 / v42;
  *(a1 + 92) = v38 / v42;
  *(a1 + 56) = v39 / v42;
  result = v41 / v42;
  *(a1 + 68) = result;
  return result;
}

float32x4_t sub_245F1E640@<Q0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, float32x4_t a5@<Q1>)
{
  v7 = *(a1 + 84);
  v6 = *(a1 + 88);
  v9 = *(a1 + 60);
  v8 = *(a1 + 64);
  v10 = *a3;
  if (a3[1] == *a3)
  {
    v17 = 0;
    v15 = 0uLL;
  }

  else
  {
    v14 = 0;
    v15 = 0uLL;
    do
    {
      v19 = v15;
      v16 = *sub_245F1BE4C(a2, *(v10 + 8 * v14));
      a5.f32[0] = *(*(a1 + 24) + 4 * v14) - *(sub_245F1BE4C(a2, *(*a3 + 8 * v14)) + 1);
      a5.f32[1] = a5.f32[0] - (*(a1 + 92) - *(a1 + 68));
      a5.f32[2] = *(*a1 + 4 * v14) - v16;
      a5.f32[3] = a5.f32[2] - (*(a1 + 80) - *(a1 + 56));
      v15 = vmlaq_f32(v19, a5, a5);
      ++v14;
      v10 = *a3;
      v17 = (a3[1] - *a3) >> 3;
    }

    while (v17 > v14);
  }

  a5.f32[0] = v17;
  *a4 = vabds_f32(v8 - v9, v6 - v7);
  result = vsqrtq_f32(vdivq_f32(v15, vdupq_lane_s32(*a5.f32, 0)));
  *(a4 + 4) = result;
  return result;
}

BOOL sub_245F1E774(uint64_t a1, float *a2)
{
  if (*(a1 + 144))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = *"fff?";
  }

  if (*(a1 + 136))
  {
    sub_245F12BC8(v15, (a1 + 96));
    v4 = fminf(sub_245F15550(v15), 0.087266);
    sub_245F12B1C(v15);
  }

  else
  {
    v4 = 0.17453;
  }

  v5 = v3;
  v6 = v3 * *"";
  v7 = a2[3] >= (v3 * v4) || v6 <= a2[4];
  v8 = *a2;
  v9 = a2[2];
  if (!v7 && v5 * 0.043633231 > v8 && v6 > v9)
  {
    return 1;
  }

  v12 = v5 * 0.00872664619;
  v13 = v5 * 0.0872664619 > a2[4];
  v14 = v5 * 0.00349065848;
  if (v12 <= v8)
  {
    v13 = 0;
  }

  return v14 > v9 && v13;
}

void sub_245F1E8D0(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_245DF85BC(a1, a2);
    }

    sub_245DF85A4();
  }
}

void sub_245F1E970(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_245DF85A4();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_245DF85BC(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

os_log_t sub_245F1EA50()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

uint64_t sub_245F1EA80(uint64_t a1)
{
  v2 = a1 + 32;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  v4 = 0;
  sub_245F1FDAC(a1 + 32, sub_245F1EB50, &v4, 0x2710);
  *(a1 + 88) = v2;
  *(a1 + 96) = a1 + 56;
  *(a1 + 104) = 10000;
  *(a1 + 112) = 1;
  *(a1 + 124) = 0;
  *(a1 + 116) = 0;
  *(a1 + 132) = 0x4120000000000000;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 180) = 1;
  *(a1 + 184) = 1;
  *(a1 + 192) = xmmword_245F33170;
  *(a1 + 208) = 0;
  sub_245F1ECAC(a1);
  return a1;
}

void sub_245F1EB50(void *a1, float *a2, unint64_t a3)
{
  if (atomic_load_explicit(byte_27EE38908, memory_order_acquire))
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    sub_245F2CC2C(a3);
    if (!a3)
    {
      return;
    }
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *&dword_27EE38900;
    v9 = *a2;
    sub_245F1FC44();
    v11 = v9 + (v10 * 0.5);
    if (sub_245F1FCFC() >= 0.4)
    {
      sub_245F1FC44();
      v13 = v11;
      if (v11 >= (v14 * 0.5))
      {
        sub_245F1FC44();
        v13 = v15 * 0.5;
      }
    }

    else
    {
      v12 = fminf(v11, 5.0);
      v13 = v12 + ((v12 * -2.0) * sub_245F1FCFC());
    }

    v16 = v8 * v7;
    v17 = (*a1 + v6);
    v17[2] = v13;
    v18 = sqrtf((v11 * v11) - (v13 * v13));
    v19 = __sincosf_stret(v16);
    *v17 = v19.__cosval * v18;
    v17[1] = v19.__sinval * v18;
    sub_245F1FC44();
    *(*a1 + v6 + 12) = v20 * 0.5;
    sub_245F1FC44();
    *(*a1 + v6 + 16) = v21 * 0.5;
    ++v7;
    v6 += 20;
  }

  while (a3 != v7);
}

void sub_245F1ECAC(uint64_t a1)
{
  sub_245F24680(0x2B73049Cu, 1, 1, 0, 0, 0);
  *sub_245F102D0(&v16, 0) = 0;
  *sub_245F102D0(&v16, 1uLL) = 0;
  if (*(a1 + 104))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(**(a1 + 88) + v2);
      *sub_245F102D0(&v15, 0) = v4;
      v5 = *(**(a1 + 88) + v2 + 4);
      *sub_245F102D0(&v15, 1uLL) = v5;
      v6 = v15;
      v7 = vmul_f32(v6, v6);
      v7.f32[0] = sqrtf(vaddv_f32(v7));
      if (v7.f32[0] > 0.00000011921)
      {
        v6 = vdiv_f32(v15, vdup_lane_s32(v7, 0));
      }

      v15 = v6;
      v8 = *sub_245F102D0(&v15, 0);
      v9 = sub_245F102D0(&v16, 0);
      *v9 = v8 + *v9;
      v10 = *sub_245F102D0(&v15, 1uLL);
      v11 = sub_245F102D0(&v16, 1uLL);
      *v11 = v10 + *v11;
      ++v3;
      v12 = *(a1 + 104);
      v2 += 20;
    }

    while (v3 < v12);
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = sqrtf(vaddv_f32(vmul_f32(v16, v16))) / v13;
  *(a1 + 136) = sqrtf((1.0 - v14) + (1.0 - v14));
  sub_245F24680(0x2B73049Cu, 2, 1, 0, 0, 0);
}

void sub_245F1EE54(uint64_t a1, void *a2)
{
  v4 = 0;
  sub_245F1EEB0((a1 + 32), sub_245F1EB50, &v4, a2);
  *(a1 + 104) = a2;
  sub_245F1ECAC(a1);
}

void sub_245F1EEB0(void **a1, void (*a2)(uint64_t, uint64_t, void *), uint64_t a3, void *a4)
{
  if (a4)
  {
    a1[6] = a4;
    v8 = *a1;
    if (v8)
    {
      a1[1] = v8;
      operator delete(v8);
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_245F1FE0C(a1, a4);
    v9 = a1[3];
    if (v9)
    {
      a1[4] = v9;
      operator delete(v9);
    }

    a1[3] = 0;
    a1[4] = 0;
    a1[5] = 0;
    sub_245F1BCCC(a1 + 3, a4);
    a2(a1, a3, a1[6]);

    sub_245F1FEC8(a1);
  }

  else
  {
    if (qword_27EE37500 != -1)
    {
      sub_245F2CC98();
    }

    v10 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_245D80000, v10, OS_LOG_TYPE_FAULT, "Number of particles must be nonzero", v11, 2u);
    }
  }
}

void sub_245F1EFDC(uint64_t a1, float32x2_t *a2, double a3)
{
  v4 = *(a1 + 144);
  if (v4 <= 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v5 = a3 - v4;
    v6 = v5;
  }

  v7 = *a2;
  v8 = vadd_f32(*(a1 + 160), vmul_n_f32(*a2, v6));
  *(a1 + 152) = *a2;
  *(a1 + 160) = v8;
  v8.f32[0] = v6 + *(a1 + 168);
  *(a1 + 168) = v8.i32[0];
  *(a1 + 144) = a3;
  if (v8.f32[0] <= 0.25)
  {
    if (*(a1 + 112) == 1)
    {
      v9 = v6;
      sub_245F1F184((a1 + 32), &v10);
      v6 = v9;
      *(a1 + 116) = v10;
      *(a1 + 132) = v11;
    }

    *&v10 = v6;
    *(&v10 + 4) = *(a1 + 152);
    BYTE12(v10) = 0;
    v11 = 0;
    sub_245F1F1E8((a1 + 116), &v10);
  }

  else
  {
    sub_245F1F0CC(a1, -1.0, *&v7);
    sub_245F1F184((a1 + 32), &v10);
    *(a1 + 116) = v10;
    *(a1 + 132) = v11;
  }

  *(a1 + 112) = 0;
}

float32_t sub_245F1F0CC(float32x2_t *a1, float a2, double a3)
{
  LODWORD(a3) = a1[21].i32[0];
  if (*&a3 > 0.0)
  {
    v7 = a1[21].i32[0];
    v8 = vdiv_f32(a1[20], vdup_lane_s32(*&a3, 0));
    v9 = 1;
    v10 = a1[22].f32[0] - a1[21].f32[1];
    v11 = a2;
    if (a1[10])
    {
      v4 = 0;
      v5 = 0;
      do
      {
        sub_245F1F1E8((*&a1[4] + v4), &v7);
        ++v5;
        v4 += 20;
      }

      while (v5 < *&a1[10]);
    }

    sub_245F1ECAC(a1);
  }

  sub_245F1F9BC(a1);
  a1[21].i32[0] = 0;
  a1[20] = 0;
  result = a1[22].f32[0];
  a1[21].f32[1] = result;
  return result;
}

void *sub_245F1F184@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = result[6];
  do
  {
    if (v4)
    {
      v5 = result[3];
      v6 = *(a2 + 4 * v3);
      v7 = (*result + v2);
      v8 = v4;
      do
      {
        v9 = *v7;
        v7 += 5;
        v10 = v9;
        v11 = *v5++;
        v6 = v6 + v10 * v11;
        --v8;
      }

      while (v8);
      *(a2 + 4 * v3) = v6;
    }

    ++v3;
    v2 += 4;
  }

  while (v3 != 5);
  return result;
}

void sub_245F1F1E8(float32x2_t *a1, uint64_t a2)
{
  v8 = *a2;
  if (*a2 != 0.0)
  {
    v40[1] = v7;
    v40[2] = v6;
    v40[3] = v5;
    v40[4] = v4;
    v40[7] = v2;
    v40[8] = v3;
    v11 = *(a2 + 4);
    v40[0] = v11;
    if (*(a2 + 12) == 1)
    {
      v12 = sqrtf(0.002 / v8);
      sub_245F1FC44();
      v14 = v13;
      v15 = sub_245F102D0(v40, 0);
      *v15 = *v15 + ((v12 * 5.5) * v14);
      sub_245F1FC44();
      v17 = v16;
      v18 = sub_245F102D0(v40, 1uLL);
      *v18 = *v18 + ((v12 * 5.5) * v17);
      sub_245F1FC44();
      v20 = v12 * v19;
      v21 = sub_245F1FCFC();
      v22 = -1.0;
      if (v21 >= 0.005)
      {
        v22 = 1.0;
      }

      v8 = *a2;
      v24 = *(v40 + 1);
      v23 = *v40;
    }

    else
    {
      v24 = *(&v11 + 1);
      v23 = *&v11;
      v20 = 0.0;
      v22 = 1.0;
    }

    *&v25 = v8 * v23;
    *&v26 = v8 * v24;
    v28 = a1[1].f32[0];
    v27 = a1[1].f32[1];
    v29 = a1->f32[1];
    v30 = (v8 * v27) + *&v25 * 0.5 * v8 + a1->f32[0];
    a1->f32[0] = v30;
    v31 = a1[2].f32[0];
    v32 = (v31 * *a2) + *&v26 * 0.5 * *a2;
    v40[0] = __PAIR64__(v26, v25);
    *&v32 = v32 + v29;
    a1->i32[1] = LODWORD(v32);
    a1[1].f32[0] = v22 * ((v20 * v8) + (v28 + *(a2 + 16)));
    a1[1].f32[1] = *&v25 + v27;
    a1[2].f32[0] = *&v26 + v31;
    if (*(a2 + 20) > 0.0 && sub_245F1FCFC() < 0.05)
    {
      v33 = sqrtf(vaddv_f32(vmul_f32(*a1, *a1)));
      sub_245F1FC44();
      v35 = (*(a2 + 20) + (v34 * 0.1)) * (*(a2 + 20) + (v34 * 0.1));
      v36 = a1[1].f32[0] * a1[1].f32[0];
      v37 = v35 - v36;
      v38 = v35 < v36;
      v39 = 0.0;
      if (!v38)
      {
        v39 = v37;
      }

      *a1 = vmul_n_f32(*a1, sqrtf(v39) / fmaxf(v33, 0.0001));
    }
  }
}

uint64_t sub_245F1F400(uint64_t result, float a2)
{
  if (*(result + 180) == 1)
  {
    *(result + 172) = a2;
    *(result + 180) = 0;
  }

  *(result + 176) = a2;
  return result;
}

void sub_245F1F41C(uint64_t a1, int a2, __n128 a3, double a4, float a5)
{
  *a1 = a3.n128_u32[0];
  *(a1 + 4) = a5;
  if (a2)
  {
    sub_245F1EEB0((a1 + 32), sub_245F1EB50, a1, *(a1 + 104));
    sub_245F1ECAC(a1);
    *(a1 + 168) = 0;
    *(a1 + 160) = 0;
    *(a1 + 172) = *(a1 + 176);
  }

  sub_245F1F4A4(a1, 0, a4);
}

void sub_245F1F4A4(uint64_t result, int a2, double a3)
{
  if (a2 <= 2)
  {
    v4 = *(result + 144);
    if (v4 > a3)
    {
      a3 = *(result + 144);
    }

    v5 = a3 - v4;
    v6 = v4 <= 0.0;
    v7 = 0.0;
    if (!v6)
    {
      *&v7 = v5;
    }

    *(result + 160) = vadd_f32(*(result + 160), vmul_n_f32(*(result + 152), *&v7));
    *&v7 = *&v7 + *(result + 168);
    *(result + 168) = LODWORD(v7);
    *(result + 144) = a3;
    if (a2 == 2)
    {
      sub_245F1F5BC((result + 32), sub_245F1F868, result + 8);
    }

    else if (a2 == 1)
    {
      sub_245F1F5BC((result + 32), sub_245F1F7E4, result + 24);
    }

    else
    {
      if (a2)
      {
        return;
      }

      sub_245F1F0CC(result, *result, v7);
      sub_245F1F5BC((result + 32), sub_245F1F6AC, result);
    }

    sub_245F1F918(result);
    *(result + 112) = 1;

    sub_245F1F9BC(result);
  }
}

void sub_245F1F5BC(void *a1, float (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1[6])
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0.0;
  do
  {
    v9 = a2(*a1 + v6, a3);
    v10 = a1[3];
    v11 = *(v10 + 8 * v7) * (v9 + 0.0);
    *(v10 + 8 * v7) = v11;
    v8 = v8 + v11;
    ++v7;
    v12 = a1[6];
    v6 += 20;
  }

  while (v7 < v12);
  if (v8 > 0.000001)
  {
    if (v12)
    {
      v13 = a1[3];
      do
      {
        *v13 = *v13 / v8;
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
LABEL_9:

    sub_245F1FEC8(a1);
  }
}

float sub_245F1F6AC(float *a1, float *a2, __n128 a3)
{
  v3 = a2[1];
  v4 = (*a2 - sqrtf(((*a1 * *a1) + (a1[1] * a1[1])) + (a1[2] * a1[2]))) / *a2;
  if (v3 <= -0.125)
  {
    v14 = &unk_245F331A0;
  }

  else
  {
    if (v3 < 0.275)
    {
      v5 = &unk_245F33580;
      v6 = 0.0;
      v7 = &unk_245F331A0;
      v8 = 4;
      v9 = &off_278E97068;
      do
      {
        v10 = **(v9 - 1);
        if (v3 > v10)
        {
          v11 = **v9;
          if (v3 <= v11)
          {
            v5 = *v9;
            v7 = *(v9 - 1);
            v6 = (v3 - v10) / (v11 - v10);
          }
        }

        ++v9;
        --v8;
      }

      while (v8);
      v12 = sub_245F1FD3C(v7, v4);
      return (v6 * sub_245F1FD3C(v5, v4)) + ((1.0 - v6) * v12);
    }

    v14 = &unk_245F33580;
  }

  return sub_245F1FD3C(v14, v4);
}

float sub_245F1F7E4(uint64_t a1, float *a2)
{
  if ((atomic_load_explicit(byte_27EE38910, memory_order_acquire) & 1) == 0)
  {
    v5 = a1;
    v6 = a2;
    sub_245F2CCAC();
    a1 = v5;
    a2 = v6;
  }

  v2 = sqrtf(vaddv_f32(vmul_f32(*(a1 + 12), *(a1 + 12))));
  v3 = *&dword_27EE38904;
  return v3 * expf((((v2 - *a2) * (v2 - *a2)) * -0.5) / 31.36);
}

float sub_245F1F868(uint64_t a1, float *a2)
{
  v2 = (a2[2] * a2[2]) * 50.0;
  v3 = (a2[3] * a2[3]) * 50.0;
  v4 = (v2 * v3) + -0.0001;
  v5 = a2[1] - *(a1 + 16);
  v6 = 1.0 / (sqrtf(v4) * 6.28318531);
  return expf(((v5 * (((v2 / v4) * v5) + ((0.01 / v4) * (*a2 - *(a1 + 12))))) + ((*a2 - *(a1 + 12)) * (((0.01 / v4) * v5) + ((v3 / v4) * (*a2 - *(a1 + 12)))))) * -0.5) * v6;
}

void sub_245F1F918(uint64_t result)
{
  v2 = *(result + 184);
  *(result + 184) = v2 + 1;
  if (0xAAAAAAAAAAAAAAABLL * v2 <= 0x5555555555555555)
  {
    *(result + 184) = 1;
    sub_245F24680(0x2B730488u, 1, 1, 0, 0, 0);
    sub_245F1FAEC((result + 32));

    sub_245F24680(0x2B730488u, 2, 1, 0, 0, 0);
  }
}

void sub_245F1F9BC(uint64_t a1)
{
  sub_245F24680(0x2B730498u, 1, 1, 0, 0, 0);
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = 0;
    v4 = **(a1 + 96);
    v5 = (**(a1 + 88) + 8);
    v6 = 0.0;
    v7 = *(a1 + 104);
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = -*v5;
      if (*v5 > 0.0)
      {
        v11 = *v5;
      }

      v12 = vaddv_f32(vmul_f32(*(v5 - 2), *(v5 - 2)));
      v13 = sqrtf(v12);
      v14 = sqrtf(v12 + (*v5 * *v5));
      v15 = *v4++;
      v16 = v15;
      v6 = v6 + (v16 * v11);
      v8 = v8 + (v16 * v13);
      v9 = v9 + (v16 * v14);
      if (v11 > 1.8)
      {
        v10 = v10 + v16;
        ++v3;
      }

      v5 += 5;
      --v7;
    }

    while (v7);
    v17 = v3;
  }

  else
  {
    v10 = 0.0;
    v17 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
  }

  *(a1 + 208) = v10;
  *(a1 + 192) = v6;
  *(a1 + 196) = v8;
  *(a1 + 200) = v9;
  *(a1 + 204) = v17 / v2;

  sub_245F24680(0x2B730498u, 2, 1, 0, 0, 0);
}

void sub_245F1FAEC(char **a1)
{
  v2 = a1[6];
  v3 = sub_245F1FCFC();
  v4 = a1[6];
  v5 = *a1[3];
  v6 = *a1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_245F1FE0C(a1, v4);
  v7 = a1[6];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = v3 / v4;
    do
    {
      v11 = v7 - 1;
      if (v5 >= v10 || v9 >= v11)
      {
        v13 = v9;
      }

      else
      {
        do
        {
          v13 = v9 + 1;
          v5 = v5 + *&a1[3][8 * v9 + 8];
          v14 = v5 >= v10 || v13 >= v11;
          ++v9;
        }

        while (!v14);
      }

      v15 = &v6[20 * v13];
      v16 = &(*a1)[20 * v8++];
      v17 = *v15;
      *(v16 + 4) = *(v15 + 4);
      *v16 = v17;
      v10 = (1.0 / v2) + v10;
      v7 = a1[6];
      v18 = v8 >= v7 || v13 >= v7;
      v9 = v13;
    }

    while (!v18);
    sub_245F1FEC8(a1);
  }

  else
  {
    sub_245F1FEC8(a1);
    if (!v6)
    {
      return;
    }
  }

  operator delete(v6);
}

void sub_245F1FC2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_245F1FC44()
{
  if (byte_27EE37538)
  {
    byte_27EE37538 = 0;
  }

  else
  {
    do
    {
      v0 = (sub_245F1FCFC() * 2.0) + -1.0;
      v1 = (sub_245F1FCFC() * 2.0) + -1.0;
      v2 = (v1 * v1) + (v0 * v0);
    }

    while (v2 >= 1.0);
    if (v2 != 0.0)
    {
      *&dword_27EE3753C = v1 * sqrtf((logf((v1 * v1) + (v0 * v0)) * -2.0) / v2);
      byte_27EE37538 = 1;
    }
  }
}

float sub_245F1FCFC()
{
  if ((atomic_load_explicit(byte_27EE37540, memory_order_acquire) & 1) == 0)
  {
    sub_245F2CCFC();
  }

  return vcvts_n_f32_u32(sub_245F0F530(&off_281B31D00, 0x7FFFFFFFu), 0x1FuLL);
}

float sub_245F1FD3C(float *a1, float a2)
{
  if (a1[2] > a2 || a1[31] < a2)
  {
    return a1[1];
  }

  v3 = a1 + 33;
  v4 = 29;
  while (1)
  {
    v5 = *(v3 - 30);
    if (v5 > a2)
    {
      v6 = *(v3 - 31);
      if (v6 < a2)
      {
        break;
      }
    }

    ++v3;
    if (!--v4)
    {
      return 0.0;
    }
  }

  return *(v3 - 1) + (((*v3 - *(v3 - 1)) / (v5 - v6)) * (a2 - v6));
}

uint64_t sub_245F1FDAC(uint64_t a1, void (*a2)(uint64_t, uint64_t, void *), uint64_t a3, void *a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  sub_245F1EEB0(a1, a2, a3, a4);
  return a1;
}

void sub_245F1FDE8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_245F2CD64(v1);
  _Unwind_Resume(a1);
}

void sub_245F1FE0C(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      sub_245F1FF9C(a1, a2);
    }

    sub_245DF85A4();
  }
}

uint64_t sub_245F1FEC8(uint64_t result)
{
  if ((atomic_load_explicit(byte_27EE37550, memory_order_acquire) & 1) == 0)
  {
    v9 = result;
    sub_245F2CD7C(result);
    result = v9;
  }

  v1 = *(result + 48);
  if (v1)
  {
    v2 = qword_27EE37548;
    v3 = (v1 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(v1 - 1);
    v5 = xmmword_245F32BD0;
    v6 = (*(result + 24) + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = v2;
      }

      if (v8.i8[4])
      {
        *v6 = v2;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

os_log_t sub_245F1FF6C()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  qword_27EE37508 = result;
  return result;
}

void sub_245F1FF9C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_245DF8694();
}

uint64_t sub_245F1FFF0(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 472) & 1) == 0)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CDEC();
    }

    v2 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_INFO))
    {
      v4 = sub_245F24F24((a1 + 124), v3);
      v5 = 0;
      *v12 = v4;
      v12[1] = v6;
      v12[2] = v7;
      v8 = 0.0;
      do
      {
        v8 = v8 + (*&v12[v5] * *&v12[v5]);
        ++v5;
      }

      while (v5 != 3);
      v9 = *(a1 + 448) * 57.296;
      v10 = *(a1 + 456);
      *buf = 134349568;
      v14 = (sqrtf(v8) * 57.296);
      v15 = 2050;
      v16 = v9;
      v17 = 2050;
      v18 = v10;
      _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_INFO, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[softReset] Enter soft reset. fDMYawAlignmentQ_IP_IS.angle: %{public}.1f deg, fDMYawAlignmentMEKF angle: %{public}.1f deg, timestamp: %{public}llu", buf, 0x20u);
    }
  }

  *(a1 + 476) = *(a1 + 124);
  *(a1 + 472) = 1;
  return sub_245F0F63C(a1 + 448);
}

void sub_245F20138(unsigned __int8 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  v81 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    v18 = *(a9 + 8);
    if (*a9 == v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = *sub_245F1BE4C(a2, *(v18 - 8));
    }

    sub_245F1DFD4((a1 + 144), v19, a3, a5, a6, a7, a8, a9, a10, a11);
  }

  v20 = a1[288];
  a1[296] = v20;
  if ((v20 & 1) != 0 || (*a1 & 1) == 0)
  {
    v21 = *a9;
    if (*a9 != *(a9 + 8))
    {
      v22 = 0;
      do
      {
        v23 = sub_245F1BE4C(a3, v21[v22]);
        if (*a1 == 1 && *v23 < 0.17453)
        {
          return;
        }

        ++v22;
        v21 = *a9;
        v24 = *(a9 + 8);
      }

      while (v22 < (v24 - *a9) >> 3);
      v25 = sub_245F1BE4C(a2, *(v24 - 8));
      if (*a1 != 1 || ((*v25 - *(a1 + 2)) <= 0x4C4B40 ? (v26 = 200000) : (v26 = 5000000), v26 < *v25 - *(a1 + 4)))
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CDEC();
        }

        v27 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
        {
          v28 = *a1;
          v29 = (*(a9 + 8) - *a9) >> 3;
          v30 = a3[1];
          v31 = a6[1];
          v32 = *a2;
          v33 = *&a2[4 * v32 + 4];
          v34 = v32 + a2[1] - 1;
          v35 = *(a2 + 1);
          if (v34 < v35)
          {
            v35 = 0;
          }

          v36 = *&a2[4 * (v34 - v35) + 4];
          v37 = a5[1];
          *buf = 67110656;
          *&buf[4] = v28;
          *&buf[8] = 2048;
          *&buf[10] = v29;
          *&buf[18] = 2048;
          *&buf[20] = v30;
          *&buf[28] = 2048;
          *&buf[30] = v31;
          v75 = 2048;
          v76 = v37;
          v77 = 2048;
          v78 = v33;
          v79 = 2048;
          v80 = v36;
          _os_log_impl(&dword_245D80000, v27, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[updateDMInertialYaw] Starting north alignment. fBoolInitializedDMYawAlignment: %d, numMatchedSensorData: %zu, numRingSensor: %zu, numAuxDM: %zu, numSrcDM: %zu, first/last ring timestamp entry in buffer: %llu %llu us", buf, 0x44u);
        }

        sub_245F14C3C((a1 + 304));
        v38 = *a9;
        if (*(a9 + 8) != *a9)
        {
          v39 = 0;
          do
          {
            v40 = sub_245F1BE4C(a3, v38[v39]);
            v41 = sub_245F1BE4C(a4, *(*a9 + 8 * v39));
            v42 = sub_245F0C3C0(a5, *(*a10 + 8 * v39));
            v43 = sub_245F0C3C0(a6, *(*a11 + 8 * v39));
            sub_245F14C7C(a1 + 38, v40, v41, v42, v43);
            ++v39;
            v38 = *a9;
          }

          while (v39 < (*(a9 + 8) - *a9) >> 3);
        }

        if (*a1)
        {
          sub_245F15034((a1 + 304), *(a1 + 30));
        }

        else
        {
          sub_245F14E88((a1 + 304));
        }

        sub_245F15088((a1 + 304), 0x32u);
        v45 = fmodf(*(a1 + 86) + 3.1416, 6.2832);
        if (v45 < 0.0)
        {
          v45 = v45 + 6.2832;
        }

        v46 = v45 + -3.1416;
        v73 = v45 + -3.1416;
        v47 = sub_245F2082C(*(a1 + 30), v44, a3, a5, a6, a9, a10, a11);
        v49 = sub_245F2082C(v46, v48, a3, a5, a6, a9, a10, a11);
        if (*a1 != 1 || v47 >= v49)
        {
          if (*(a1 + 8) == 64)
          {
            ++*(a1 + 7);
            *(a1 + 8) = 63;
            sub_245F1DBB8((a1 + 24), 1);
          }

          sub_245F12BC8(v72, a1 + 3);
          v50 = sub_245F15550(v72);
          v51 = fmodf(v50 + 3.1416, 6.2832);
          if (v51 < 0.0)
          {
            v51 = v51 + 6.2832;
          }

          v52 = v51 + -3.1416;
          sub_245F12B1C(v72);
          if (vabds_f32(v52, v46) <= 3.14159265)
          {
            goto LABEL_46;
          }

          if (v52 <= 0.0 || v46 >= 0.0)
          {
            if (v52 >= 0.0 || v46 <= 0.0)
            {
LABEL_46:
              v55 = sub_245F1BE4C(a2, *(*(a9 + 8) - 8));
              if ((sub_245F209B8(a1, *v55, v46) & 1) == 0)
              {
                sub_245F154C8(a1 + 3, &v73);
                v56 = sub_245F1BE4C(a2, *(*(a9 + 8) - 8));
                v57 = *v56;
                *(a1 + 2) = *v56;
                if (!*(a1 + 1))
                {
                  *(a1 + 1) = v57;
                }

                sub_245F12BC8(v71, a1 + 3);
                v58 = sub_245F15550(v71);
                v59 = fmodf(v58 + 3.1416, 6.2832);
                if (v59 < 0.0)
                {
                  v59 = v59 + 6.2832;
                }

                *(a1 + 30) = v59 + -3.1416;
                sub_245F12B1C(v71);
                v60 = *(a1 + 30);
                v69 = 0;
                v70 = v60;
                sub_245F24E08(buf, &v69);
                *(a1 + 124) = *buf;
                v61 = qword_27EE374F0;
                if ((*a1 & 1) == 0)
                {
                  if (qword_27EE374F0 != -1)
                  {
                    sub_245F2CE00();
                  }

                  v62 = qword_27EE374F8;
                  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
                  {
                    v63 = *(a1 + 2) * 0.000001;
                    v64 = (*(a1 + 30) * 57.296);
                    *buf = 134218240;
                    *&buf[4] = v63;
                    *&buf[12] = 2048;
                    *&buf[14] = v64;
                    _os_log_impl(&dword_245D80000, v62, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[updateDMInertialYaw] Initialized DM north alignment, t: %.6f s, angle: %.6f deg", buf, 0x16u);
                    v61 = qword_27EE374F0;
                  }

                  else
                  {
                    v61 = -1;
                  }

                  *a1 = 1;
                }

                if (v61 != -1)
                {
                  sub_245F2CE00();
                }

                v65 = qword_27EE374F8;
                if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
                {
                  v66 = *(a1 + 2) * 0.000001;
                  v67 = (*(a1 + 30) * 57.296);
                  *buf = 134218496;
                  *&buf[4] = v66;
                  *&buf[12] = 2048;
                  *&buf[14] = (v73 * 57.296);
                  *&buf[22] = 2048;
                  *&buf[24] = v67;
                  _os_log_impl(&dword_245D80000, v65, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[updateDMInertialYaw] Updated DM north alignment, t: %.6f s, new angle: %.6f deg, median angle: %.6f deg", buf, 0x20u);
                }
              }

              return;
            }

            v53 = v46;
            v54 = -6.28318531;
          }

          else
          {
            v53 = v46;
            v54 = 6.28318531;
          }

          v46 = v53 + v54;
          v73 = v46;
          goto LABEL_46;
        }
      }
    }
  }
}

void sub_245F20804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_245F12B1C(va);
  _Unwind_Resume(a1);
}

float sub_245F2082C(float a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, uint64_t *a6, void *a7, void *a8)
{
  if (*a6 == a6[1])
  {
    return 0.0;
  }

  v60 = v11;
  v61 = v10;
  v62 = v8;
  v63 = v9;
  v50 = 0;
  v51 = a1;
  sub_245F24E08(&v49, &v50);
  v18 = *a6;
  if (a6[1] == *a6)
  {
    v47 = 0;
    v20 = 0.0;
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v21 = *(v18 + 8 * v19);
      v22 = *(*a7 + 8 * v19);
      v23 = sub_245F0C3C0(a5, *(*a8 + 8 * v19));
      v24 = sub_245F0C3C0(a4, v22);
      v26.f32[0] = sub_245F249DC(v23, v49.f32, v25);
      v59[0] = v26.f32[0];
      v59[1] = v27;
      v59[2] = v28;
      v59[3] = v29;
      v31.f32[0] = sub_245F24A60(v24, v30, v26);
      v52 = v31.f32[0];
      v53 = v32;
      v54 = v33;
      v55 = v34;
      v35.f32[0] = sub_245F249DC(v59, &v52, v31);
      v56 = __PAIR64__(v36, v35.u32[0]);
      v57 = v37;
      v58 = v38;
      v52 = sub_245F24A60(&v56, v39, v35);
      v53 = v40;
      v54 = v41;
      v55 = v42;
      v43 = sub_245F24D2C(&v52, 0.0, 1.0, 0.0);
      v45 = atan2f(v44, v43);
      v46 = sub_245F1BE4C(a3, v21);
      v20 = v20 + ((*(v46 + 1) - v45) * (*(v46 + 1) - v45));
      ++v19;
      v18 = *a6;
      v47 = (a6[1] - *a6) >> 3;
    }

    while (v47 > v19);
  }

  return sqrtf(v20 / v47);
}

uint64_t sub_245F209B8(void *a1, uint64_t a2, float a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v47 = a3;
  if (!a1[8])
  {
    return 0;
  }

  if (a1[14] == 16)
  {
    ++a1[13];
    a1[14] = 15;
    sub_245F1DBB8((a1 + 9), 1);
  }

  sub_245F12BC8(v46, a1 + 3);
  v6 = sub_245F15550(v46);
  v7 = fmodf(v6 + 3.1416, 6.2832);
  if (v7 < 0.0)
  {
    v7 = v7 + 6.2832;
  }

  v8 = v7 + -3.1416;
  sub_245F12B1C(v46);
  v9 = vabds_f32(v8, a3);
  v10 = fabsf(v8) * 0.15;
  if (v10 > 0.2618)
  {
    v10 = 0.2618;
  }

  if (v9 < v10)
  {
    v11 = a1[10];
    v12 = a1[11];
    a1[14] = 0;
    v13 = (v12 - v11) >> 3;
    if (v13 >= 3)
    {
      do
      {
        operator delete(*v11);
        v14 = a1[11];
        v11 = (a1[10] + 8);
        a1[10] = v11;
        v13 = (v14 - v11) >> 3;
      }

      while (v13 > 2);
    }

    if (v13 == 1)
    {
      v15 = 512;
      goto LABEL_39;
    }

    if (v13 == 2)
    {
      v15 = 1024;
LABEL_39:
      result = 0;
      a1[13] = v15;
      return result;
    }

    return 0;
  }

  if (v9 <= 1.5708)
  {
    if (!a1[14])
    {
      sub_245F154C8(a1 + 9, &v47);
      return 1;
    }

    sub_245F12BC8(v45, a1 + 9);
    v21 = sub_245F15550(v45);
    v22 = fmodf(v21 + 3.1416, 6.2832);
    if (v22 < 0.0)
    {
      v22 = v22 + 6.2832;
    }

    v23 = v22 + -3.1416;
    sub_245F12B1C(v45);
    v24 = fmodf((v47 - v23) + 3.1416, 6.2832);
    if (v24 < 0.0)
    {
      v24 = v24 + 6.2832;
    }

    v25 = fabsf(v24 + -3.1416);
    v26 = fabsf(v23) * 0.15;
    if (v26 > 0.2618)
    {
      v26 = 0.2618;
    }

    v27 = a1[13];
    v28 = a1[10];
    v29 = a1[11];
    v30 = &v28[v27 >> 10];
    v31 = *v30;
    v32 = (*v30 + 4 * (v27 & 0x3FF));
    v33 = *v32;
    if (v29 == v28 || (v34 = *(v28 + (((a1[14] + v27) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((a1[14] + v27) & 0x3FF), v32 == v34))
    {
      v35 = *v32;
    }

    else
    {
      v35 = *v32;
      do
      {
        v36 = *v32++;
        v37 = v36;
        if (v36 > v35)
        {
          v35 = v37;
        }

        if (v37 < v33)
        {
          v33 = v37;
        }

        if (v32 - v31 == 4096)
        {
          v38 = v30[1];
          ++v30;
          v31 = v38;
          v32 = v38;
        }
      }

      while (v32 != v34);
    }

    if (v25 <= v26 && (v35 - v33) <= 0.34907)
    {
      sub_245F154C8(a1 + 9, &v47);
      v40 = 8;
      if (v9 > 1.0472)
      {
        v40 = 2;
      }

      if (a1[14] <= v40)
      {
        return 1;
      }

      sub_245F20E64(a1 + 3);
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CE00();
      }

      v41 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        v49 = (v9 * 57.296);
        v50 = 2048;
        v51 = (v47 * 57.296);
        v52 = 2048;
        v53 = (v8 * 57.296);
        v54 = 2048;
        v55 = a2;
        _os_log_impl(&dword_245D80000, v41, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[updateDMInertialYaw] Reset median buffer. Large delta between new angle and median: %.1f deg, new angle: %.1f deg, old median: %.1f deg, timestamp: %llu", buf, 0x2Au);
      }

      sub_245F20E64(a1 + 9);
      return 0;
    }

    a1[14] = 0;
    v42 = v29 - v28;
    if (v42 >= 3)
    {
      do
      {
        operator delete(*v28);
        v43 = a1[11];
        v28 = (a1[10] + 8);
        a1[10] = v28;
        v42 = (v43 - v28) >> 3;
      }

      while (v42 > 2);
    }

    if (v42 == 1)
    {
      v44 = 512;
    }

    else
    {
      if (v42 != 2)
      {
LABEL_62:
        sub_245F154C8(a1 + 9, &v47);
        return 1;
      }

      v44 = 1024;
    }

    a1[13] = v44;
    goto LABEL_62;
  }

  v16 = a1[10];
  v17 = a1[11];
  a1[14] = 0;
  v18 = (v17 - v16) >> 3;
  if (v18 >= 3)
  {
    do
    {
      operator delete(*v16);
      v19 = a1[11];
      v16 = (a1[10] + 8);
      a1[10] = v16;
      v18 = (v19 - v16) >> 3;
    }

    while (v18 > 2);
  }

  if (v18 == 1)
  {
    v20 = 512;
    goto LABEL_54;
  }

  if (v18 == 2)
  {
    v20 = 1024;
LABEL_54:
    a1[13] = v20;
  }

  return 1;
}

void sub_245F20E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_245F12B1C(va);
  _Unwind_Resume(a1);
}

void sub_245F20E64(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[4] = v6;
}

uint64_t sub_245F20EE0(unsigned __int8 *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (qword_27EE374F0 != -1)
  {
    sub_245F2CDEC();
  }

  v2 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = (*(a1 + 30) * 57.296);
    v7 = a1[296];
    v19[0] = 67110144;
    v19[1] = v3;
    v20 = 2048;
    v21 = v4;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    v26 = 1024;
    v27 = v7;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[reset] Resetting. Values before reset: fBoolInitializedDMYawAlignment: %d, fFirstDMYawAlignmentUpdateTimeMicroSeconds: %llu us, fLatestDMYawAlignmentUpdateTimeMicroSeconds: %llu us, fDMYawAlignmentAngle: %.1f deg, fBoolTrustPencilRingSensor: %d", v19, 0x2Cu);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  *(a1 + 8) = 0;
  v10 = (v9 - v8) >> 3;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v8);
      v11 = *(a1 + 5);
      v8 = (*(a1 + 4) + 8);
      *(a1 + 4) = v8;
      v10 = (v11 - v8) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v12 = 512;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_12;
    }

    v12 = 1024;
  }

  *(a1 + 7) = v12;
LABEL_12:
  v13 = *(a1 + 10);
  v14 = *(a1 + 11);
  *(a1 + 14) = 0;
  v15 = (v14 - v13) >> 3;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v13);
      v16 = *(a1 + 11);
      v13 = (*(a1 + 10) + 8);
      *(a1 + 10) = v13;
      v15 = (v16 - v13) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v17 = 512;
    goto LABEL_18;
  }

  if (v15 == 2)
  {
    v17 = 1024;
LABEL_18:
    *(a1 + 13) = v17;
  }

  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 34) = 1065353216;
  sub_245F1DF30((a1 + 144));
  a1[296] = 1;
  sub_245F14C3C((a1 + 304));
  return sub_245F0F63C((a1 + 448));
}

void sub_245F210D8(uint64_t a1, float *a2, float *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_245F0F884(a1 + 448, a2, a3, a4, a5, a6);
  if (*(a1 + 472) == 1)
  {
    *(a1 + 472) = 0;
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CDEC();
    }

    v7 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_INFO))
    {
      v9 = sub_245F24F24((a1 + 124), v8);
      v10 = 0;
      *v16 = v9;
      v16[1] = v11;
      v16[2] = v12;
      v13 = 0.0;
      do
      {
        v13 = v13 + (*&v16[v10] * *&v16[v10]);
        ++v10;
      }

      while (v10 != 3);
      v14 = *(a1 + 448);
      v15 = *(a1 + 456);
      *buf = 134218496;
      v18 = (sqrtf(v13) * 57.296);
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      v22 = v15;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_INFO, "[BarrelRoll]:[CMAPencilDMYawAlignmentManager]:[feedMEKF] Exit soft reset. fDMYawAlignmentQ_IP_IS.angle: %.1f deg, fDMYawAlignmentMEKF angle: %.1f deg, timestamp: %llu", buf, 0x20u);
    }
  }
}

void sub_245F21210(uint64_t a1)
{
  if (*(a1 + 472) != 1)
  {
    if (*(a1 + 464) == 1)
    {
      v2 = sub_245F0F648((a1 + 448));
    }

    else
    {
      v2 = *(a1 + 124);
      v3 = *(a1 + 128);
      v4 = *(a1 + 132);
      v5 = *(a1 + 136);
    }

    *(a1 + 124) = v2;
    *(a1 + 128) = v3;
    *(a1 + 132) = v4;
    *(a1 + 136) = v5;
  }
}

os_log_t sub_245F21278()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

uint64_t sub_245F212B0(uint64_t result, double a2, double a3, double a4)
{
  if (*(result + 24))
  {
    v4 = *(result + 8) + a3 - *(result + 16);
    v5 = v4 / (v4 + a4);
    *result = *result + v5 * (a2 - *result);
    *(result + 8) = v4 * (1.0 - v5);
    *(result + 16) = a3;
  }

  else
  {
    *result = a2;
    *(result + 8) = a4;
    *(result + 16) = a3;
    *(result + 24) = 1;
  }

  return result;
}

double sub_245F21304(double *a1, double *a2, double *a3)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *a2;
  v8 = *a3;
  a1[1] = v3 * v5 + *a2 * a3[1] - v4 * v6 + a2[1] * *a3;
  v9 = a3[1];
  v10 = a2[1];
  a1[2] = v7 * v5 - v3 * v9 + v10 * v6 + v4 * v8;
  v11 = a2[2];
  v12 = a3[2];
  a1[3] = v11 * v9 - v10 * v12 + v7 * v6 + v3 * v8;
  result = -(v11 * v12) - v10 * v9 - a2[3] * a3[3] + v7 * v8;
  *a1 = result;
  return result;
}

void sub_245F21380(uint64_t a1, float a2, double a3)
{
  if (a3 >= 0.0)
  {
    v29 = v6;
    v30 = v5;
    v31 = v3;
    v32 = v4;
    v24 = *(a1 + 24) + *(a1 + 24);
    v23 = *a1;
    v22 = -*a1;
    v9 = __sincos_stret(a2 * -0.5 * *"");
    cosval = v9.__cosval;
    _Q1 = *(a1 + 8);
    _Q2 = vaddq_f64(_Q1, _Q1);
    _Q4.f64[0] = v22;
    _Q4.f64[1] = v23;
    v13 = vcvt_f32_f64(vmlaq_n_f64(vmulq_f64(vextq_s8(_Q2, _Q2, 8uLL), _Q4), _Q1, v24));
    _Q2.i64[0] = _Q2.i64[1];
    __asm { FMLS            D4, D2, V1.D[1] }

    *_Q1.f64 = _Q4.f64[0];
    v27 = vmulq_n_f64(vcvtq_f64_f32(v13), v9.__sinval);
    v28 = v9.__sinval * *_Q1.f64;
    sub_245F21304(v25, &cosval, a1);
    v18 = v25[1];
    *a1 = v25[0];
    *(a1 + 16) = v18;
    v19 = *(a1 + 76);
    if (v19 >= 0.0)
    {
      v20 = v19 + a2;
      *(a1 + 76) = v20;
      v21 = 360.0;
      if (v20 >= 360.0)
      {
        v21 = -360.0;
      }

      else if (v20 >= 0.0)
      {
        return;
      }

      *(a1 + 76) = v20 + v21;
    }
  }
}

void sub_245F214AC(void *a1, char *__s, char *a3)
{
  v6 = strlen(__s);
  if (v6 < 0x7FFFFFFFFFFFFFF8)
  {
    v7 = v6;
    if (v6 < 0x17)
    {
      v10 = v6;
      if (v6)
      {
        memcpy(&__dst, __s, v6);
      }

      *(&__dst + v7) = 0;
      sub_245DFA3D4(a3, "/tmp/", 1048576000, 86400, 50, "msl", 2, 300, v8);
      sub_245DF9D2C(a1, &__dst, v8);
    }

    operator new();
  }

  sub_245DF891C();
}

void sub_245F21610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_245DF91EC(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_245F2163C(uint64_t a1, uint64_t a2)
{
  if (qword_27EE38918 != -1)
  {
    sub_245F2CE28();
  }

  return qword_27EE38B28;
}

void sub_245F21674(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a2, a3);
  v6 = objc_msgSend_processName(v3, v4, v5);
  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s.%@", "com.apple.CoreMotionAlgorithms.Msl", v6);
  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"CoreMotionAlgorithms-%@", v6);
  operator new();
}

void sub_245F21758(uint64_t a1)
{
  sub_245DFA114(a1);

  JUMPOUT(0x24C194490);
}

void sub_245F21790(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3928))
  {
    v7 = sub_245F2163C(a1, a2);

    sub_245DFA234(v7, a1);
  }

  else
  {
    sub_245E65E4C(v8, a1);
    Current = CFAbsoluteTimeGetCurrent();
    v9 |= 1u;
    *&v8[87] = Current;
    v6 = sub_245F2163C(v4, v5);
    sub_245DFA234(v6, v8);
    sub_245E5ADCC(v8);
  }
}

float *sub_245F21830(float *result, __int16 *a2, __int16 *a3, uint64_t a4, int a5)
{
  for (; a4; --a4)
  {
    _H1 = *a2;
    __asm { FCVT            S1, H1 }

    v11 = *result * _S1;
    *result = v11;
    if (a5)
    {
      _H1 = *a3;
      __asm { FCVT            S1, H1 }

      *result = v11 + _S1;
    }

    ++a3;
    ++a2;
    ++result;
  }

  return result;
}

void sub_245F21874(float *a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = a1;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v6 = a1[a2];
      if (v6 < 0.0)
      {
        v6 = 0.0;
      }
    }

    else
    {
      if (a4 != 2)
      {
        return;
      }

      v6 = 1.0 / (expf(-a1[a2]) + 1.0);
    }

LABEL_10:
    v5[a2] = v6;
    return;
  }

  if (a4 != 3)
  {
    if (a4 != 4)
    {
      return;
    }

    v7 = a1[a2];
    v6 = v7 * (1.0 / (expf(-v7) + 1.0));
    goto LABEL_10;
  }

  v8 = a3;
  v9 = a1;
  if (a3 >= 2)
  {
    v10 = a1 + 1;
    v11 = *a1;
    v12 = 4 * a3 - 4;
    v9 = a1;
    v13 = a1 + 1;
    do
    {
      v14 = *v13++;
      v15 = v14;
      if (v11 < v14)
      {
        v11 = v15;
        v9 = v10;
      }

      v10 = v13;
      v12 -= 4;
    }

    while (v12);
  }

  if (a3)
  {
    v16 = *v9;
    v17 = 0.0;
    v18 = a1;
    v19 = a3;
    do
    {
      v20 = expf(*v18 - v16);
      *v18++ = v20;
      v17 = v17 + v20;
      --v19;
    }

    while (v19);
    do
    {
      v21 = *v5;
      if (v17 > 0.0000001)
      {
        v21 = *v5 / v17;
      }

      *v5++ = v21;
      --v8;
    }

    while (v8);
  }
}

void sub_245F219BC(float *a1, float *a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a4 == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  if (a6)
  {
    v12 = 0;
    v13 = a5 + 1;
    v14 = (a3 + 2);
    v15 = 2 * a5 + 2;
    do
    {
      _H0 = *(a3 + 2 * v12 * v13);
      __asm { FCVT            S0, H0 }

      a2[v12] = _S0;
      v22 = v14;
      v23 = a1;
      for (i = a5; i; --i)
      {
        v25 = *v23++;
        v26 = v25;
        LOWORD(v25) = *v22++;
        _H2 = LOWORD(v25);
        __asm { FCVT            S2, H2 }

        _S0 = _S0 + (v26 * _S2);
        a2[v12] = _S0;
      }

      sub_245F21874(a2, v12++, a6, v8);
      v14 = (v14 + v15);
    }

    while (v12 != a6);
  }

  if (a4 == 3)
  {
    v29 = 3;
  }

  else
  {
    v29 = 0;
  }

  sub_245F21874(a2, 0, a6, v29);
}

double sub_245F21AC0(uint64_t a1)
{
  *a1 = &unk_2858D7078;
  *(a1 + 8) = 0x19000000000;
  *(a1 + 4816) = 0x19000000000;
  *(a1 + 8024) = 0;
  *(a1 + 8036) = 0xBF8000003F800000;
  *(a1 + 8032) = 0;
  result = 0.0;
  *(a1 + 8048) = 0u;
  *(a1 + 8064) = 0x3F80000000000000;
  return result;
}

double sub_245F21B18(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 4816) = 0;
  *(a1 + 8024) = 0;
  *(a1 + 8032) = 0;
  *(a1 + 8036) = 0xBF8000003F800000;
  result = 0.0;
  *(a1 + 8048) = 0u;
  *(a1 + 8064) = 0x3F80000000000000;
  return result;
}

__n128 sub_245F21B4C(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4)
{
  sub_245F0C75C((a1 + 8), a2);
  v7 = *(a1 + 4818);
  v8 = *(a1 + 4820);
  v9 = *(a1 + 4816);
  if (v9 + v7 >= v8)
  {
    v10 = *(a1 + 4820);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 8 * (v9 + v7 - v10) + 4824) = a4;
  if (v8 <= v7)
  {
    if (v9 + 1 < v8)
    {
      LOWORD(v8) = 0;
    }

    *(a1 + 4816) = v9 + 1 - v8;
  }

  else
  {
    *(a1 + 4818) = v7 + 1;
  }

  result = *a3;
  *(a1 + 8056) = *a3;
  return result;
}

BOOL sub_245F21BDC(uint64_t a1, void *a2, float a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  objc_msgSend_transform(a2, a2, a4);
  v132 = 0.0;
  v133 = 0.0;
  v131 = 0;
  sub_245F22D48(&v133, &v132, &v131, v140, v141, v142);
  v8 = __sincos_stret(a3 * 3.14159265 / -180.0);
  sinval = v8.__sinval;
  if ((atomic_load_explicit(byte_27EE38920, memory_order_acquire) & 1) == 0)
  {
    sub_245F2CE3C();
    sinval = v8.__sinval;
  }

  v107 = -sinval;
  v10 = __sincos_stret(v133 * 3.14159265 / 180.0);
  v9.f64[0] = v10.__sinval;
  v106 = v9;
  v17 = __sincos_stret(v132 * 3.14159265 / 180.0);
  v13.f64[0] = v17.__cosval;
  v18 = v134;
  v19 = v135;
  v20 = v136;
  v21 = v137;
  v22 = v138;
  v23 = v139;
  if ((atomic_load_explicit(byte_27EE38928, memory_order_acquire) & 1) == 0)
  {
    v104 = v18;
    v105 = v13;
    v102 = v20;
    v103 = v19;
    v100 = v22;
    v101 = v21;
    v99 = v23;
    sub_245F2CE9C();
    v23 = v99;
    v22 = v100;
    v21 = v101;
    v20 = v102;
    v19 = v103;
    v18 = v104;
    v13.f64[0] = v105.f64[0];
  }

  v24 = 0;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v121 = xmmword_27EE38960;
  v122 = unk_27EE38970;
  v123 = xmmword_27EE38980;
  v124 = xmmword_27EE38990;
  v119 = xmmword_27EE38940;
  v120 = unk_27EE38950;
  v26.f64[0] = v8.__cosval;
  v26.f64[1] = v107;
  __asm { FMOV            V7.2D, #1.0 }

  v15.f64[0] = 0.0;
  do
  {
    v32 = *(&v119 + v24);
    v31 = *(&v119 + v24 + 16);
    v33 = (&v113 + v24);
    *v33 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v26, v32.f64[0]), v8, v32, 1), 0, v31.f64[0]);
    v33[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v15, v32), v15, v32, 1), _Q7, v31);
    v24 += 32;
  }

  while (v24 != 96);
  v34 = 0;
  v119 = v18;
  v120 = v19;
  v121 = v20;
  v122 = v21;
  v123 = v22;
  v124 = v23;
  v15.f64[1] = v10.__cosval;
  do
  {
    v36 = *(&v119 + v34 * 16);
    v35 = *(&v119 + v34 * 16 + 16);
    v25.f64[0] = -v17.__sinval;
    v37 = &v112[v34];
    v25.f64[1] = -(v13.f64[0] * v106.f64[0]);
    v13.f64[1] = -(v17.__sinval * v106.f64[0]);
    *v37 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v25, v36.f64[0]), v13, v36, 1), v15, v35.f64[0]);
    v14.f64[0] = v10.__cosval * v17.__sinval;
    v16.f64[0] = v10.__cosval * v13.f64[0];
    v37[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v16, v36), v14, v36, 1), v35, v106);
    v34 += 2;
  }

  while (v34 != 6);
  v38 = 0;
  v40 = v113;
  v39 = v114;
  v42 = v115;
  v41 = v116;
  v44 = v117;
  v43 = v118;
  do
  {
    v46 = v112[v38];
    v45 = v112[v38 + 1];
    v47 = (&v119 + v38 * 16);
    *v47 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v40, v46.f64[0]), v42, v46, 1), v44, *v45.i64);
    v47[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v39, v46.f64[0]), v41, v46, 1), v43, *v45.i64);
    v38 += 2;
  }

  while (v38 != 6);
  v48 = 0;
  v115 = xmmword_27EE389C0;
  v116 = unk_27EE389D0;
  v117 = xmmword_27EE389E0;
  v118 = unk_27EE389F0;
  v113 = xmmword_27EE389A0;
  v114 = *algn_27EE389B0;
  v50 = v119;
  v49 = v120;
  v52 = v121;
  v51 = v122;
  v54 = v123;
  v53 = v124;
  do
  {
    v56 = *(&v113 + v48);
    v55 = *(&v113 + v48 + 16);
    v57 = (&v125 + v48);
    *v57 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v50, v56.f64[0]), v52, v56, 1), v54, *&v55);
    v57[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v49, v56.f64[0]), v51, v56, 1), v53, *&v55);
    v48 += 32;
  }

  while (v48 != 96);
  v58 = *&v125 + *(&v127 + 1) + *&v130;
  if (v58 >= 0.0)
  {
    v64 = sqrt(v58 + 1.0);
    v65 = v64 + v64;
    v108 = vmulq_n_f64(vsubq_f64(vzip1q_s64(v128, v129), vextq_s8(v129, v126, 8uLL)), 1.0 / v65);
    v71 = (*(&v125 + 1) - *&v127) * (1.0 / v65);
    v66 = v65 * 0.25;
    goto LABEL_26;
  }

  if (*&v125 >= *(&v127 + 1) && *&v125 >= *&v130)
  {
    v67 = sqrt(*&v125 + 1.0 - *(&v127 + 1) - *&v130);
    v68.f64[0] = v67 + v67;
    v69 = 1.0 / v68.f64[0];
    v68.f64[1] = *(&v125 + 1) + *&v127;
    __asm { FMOV            V3.2D, #0.25 }

    _Q3.f64[1] = 1.0 / v68.f64[0];
    v108 = vmulq_f64(v68, _Q3);
    v71 = (*v126.i64 + *v129.i64) * (1.0 / v68.f64[0]);
    v72 = *v128.i64 - *&v129.i64[1];
LABEL_24:
    v66 = v72 * v69;
    goto LABEL_26;
  }

  v60 = 1.0 - *&v125;
  if (*(&v127 + 1) < *&v130)
  {
    v61 = sqrt(v60 - *(&v127 + 1) + *&v130);
    v62 = v61 + v61;
    v69 = 1.0 / v62;
    v108 = vmulq_n_f64(vaddq_f64(vzip1q_s64(v126, v128), v129), 1.0 / v62);
    v71 = v62 * 0.25;
    v72 = *(&v125 + 1) - *&v127;
    goto LABEL_24;
  }

  v73 = sqrt(*(&v127 + 1) + v60 - *&v130);
  v74 = v73 + v73;
  v75.f64[0] = 1.0 / v74;
  v71 = (*v128.i64 + *&v129.i64[1]) * (1.0 / v74);
  v66 = (*v129.i64 - *v126.i64) * (1.0 / v74);
  v75.f64[1] = v74;
  __asm { FMOV            V0.2D, #0.25 }

  _Q0.f64[0] = *(&v125 + 1) + *&v127;
  v108 = vmulq_f64(v75, _Q0);
LABEL_26:
  objc_msgSend_timestamp(a2, v11, v12, v99, v100, v101, v102, v103, *&v104, *&v105);
  v78 = (v77 * 1000000.0);
  v79.i64[1] = *&v108.f64[1];
  *v79.f32 = vcvt_f32_f64(v108);
  *&v80 = v71;
  *&v119 = v79.i64[0];
  v79.f32[0] = v66;
  *(&v119 + 1) = __PAIR64__(v79.u32[0], v80);
  sub_245F24EC0(&v119, v79);
  v113 = v119;
  v83 = *(a1 + 4818);
  v84 = *(a1 + 4820);
  v85 = *(a1 + 4816);
  if (v84 == v83 && *(a1 + 4824 + 8 * v85) < v78)
  {
    v86 = v83 + v85 - 1;
    v87 = v86 >= v83 ? *(a1 + 4818) : 0;
    if (*(a1 + 4824 + 8 * (v86 - v87)) > v78)
    {
      if (v83 >= 2)
      {
        v88 = 1;
        v89 = v78;
        do
        {
          if (v89 >= *sub_245F1BE4C((a1 + 4816), v88 - 1) && v89 < *sub_245F1BE4C((a1 + 4816), v88))
          {
            v109 = (*sub_245F1BE4C((a1 + 4816), v88) - v89) * 0.000001;
            v90 = sub_245F0C7C8((a1 + 8), v88 - 1);
            v91 = sub_245F0C7C8((a1 + 8), v88);
            v92 = v109 * ((v90[1].f32[0] + v91[1].f32[0]) * 0.5);
            v110 = vmul_n_f32(vmul_f32(vadd_f32(*v90, *v91), 0x3F0000003F000000), v109);
            v111 = v92;
            *v93.i64 = sub_245F24E08(v112, &v110);
            LODWORD(v113) = sub_245F249DC(v112[0].f32, &v113, v93);
            *(&v113 + 4) = __PAIR64__(v95, v94);
            HIDWORD(v113) = v96;
            v89 = *sub_245F1BE4C((a1 + 4816), v88);
          }

          ++v88;
        }

        while (v88 < *(a1 + 4818));
      }

LABEL_42:
      *(a1 + 8024) = v113;
      *(a1 + 8040) = 989432550;
      *(a1 + 8048) = v78;
      objc_msgSend_confidence(a2, v81, v82);
      return v98 >= 0.85;
    }
  }

  v97 = v83 + v85 - 1;
  if (v97 < v84)
  {
    v84 = 0;
  }

  if (*(a1 + 8 * (v97 - v84) + 4824) == v78)
  {
    goto LABEL_42;
  }

  result = 0;
  *(a1 + 8024) = v119;
  *(a1 + 8040) = 989432550;
  *(a1 + 8048) = v78;
  return result;
}

void sub_245F22254(float *a1)
{
  sub_245E55178(v14);
  sub_245E7A8D8(v14);
  Current = CFAbsoluteTimeGetCurrent();
  v16 |= 1u;
  *&v14[87] = Current;
  v3 = v15;
  v4 = *a1;
  *(v15 + 40) |= 2u;
  *(v3 + 16) = v4;
  v5 = v15;
  v6 = a1[2];
  *(v15 + 40) |= 1u;
  *(v5 + 8) = v6;
  v7 = v15;
  v8 = *(a1 + 12);
  *(v15 + 40) |= 4u;
  *(v7 + 24) = v8;
  v9 = v15;
  *&v6 = a1[4];
  *(v15 + 40) |= 0x10u;
  *(v9 + 32) = LODWORD(v6);
  v10 = v15;
  *&v6 = a1[5];
  *(v15 + 40) |= 8u;
  *(v10 + 28) = LODWORD(v6);
  v11 = v15;
  LOBYTE(v8) = *(a1 + 24);
  *(v15 + 40) |= 0x20u;
  *(v11 + 36) = v8;
  v12 = v15;
  LOBYTE(v8) = *(a1 + 25);
  *(v15 + 40) |= 0x40u;
  *(v12 + 37) = v8;
  sub_245F21790(v14, v13);
  sub_245E5ADCC(v14);
}

void sub_245F22370(uint64_t a1, float *a2, double a3)
{
  sub_245E55178(v31);
  sub_245E7A7B8(v31);
  Current = CFAbsoluteTimeGetCurrent();
  v33 |= 1u;
  *&v31[87] = Current;
  v7 = v32;
  *(v32 + 92) |= 0x40u;
  *(v7 + 56) = a3;
  v8 = v32;
  v9 = *(a1 + 12);
  *(v32 + 92) |= 1u;
  *(v8 + 8) = v9;
  v10 = v32;
  v11 = *(a1 + 16);
  *(v32 + 92) |= 2u;
  *(v10 + 16) = v11;
  v12 = v32;
  v13 = a2[2];
  *(v32 + 92) |= 4u;
  *(v12 + 24) = v13;
  v14 = v32;
  v15 = a2[3];
  *(v32 + 92) |= 8u;
  *(v14 + 32) = v15;
  v16 = v32;
  v17 = a2[4];
  *(v32 + 92) |= 0x10u;
  *(v16 + 40) = v17;
  v18 = v32;
  v19 = a2[5];
  *(v32 + 92) |= 0x20u;
  *(v18 + 48) = v19;
  v20 = v32;
  v21 = a2[6];
  *(v32 + 92) |= 0x80u;
  *(v20 + 64) = v21;
  v22 = v32;
  v23 = a2[7];
  *(v32 + 92) |= 0x100u;
  *(v22 + 72) = v23;
  v24 = v32;
  v25 = *(a1 + 20);
  *(v32 + 92) |= 0x800u;
  *(v24 + 88) = v25;
  v26 = v32;
  v27 = *(a1 + 24);
  *(v32 + 92) |= 0x400u;
  *(v26 + 84) = v27;
  v28 = v32;
  LODWORD(v23) = *(a1 + 8);
  *(v32 + 92) |= 0x200u;
  *(v28 + 80) = LODWORD(v23);
  v29 = v32;
  LOBYTE(v27) = *(a1 + 28);
  *(v32 + 92) |= 0x1000u;
  *(v29 + 89) = v27;
  sub_245F21790(v31, v30);
  sub_245E5ADCC(v31);
}

void sub_245F2254C()
{
  sub_245E55178(v5);
  sub_245E7A9F8(v5);
  Current = CFAbsoluteTimeGetCurrent();
  v7 |= 1u;
  *&v5[87] = Current;
  v1 = v6;
  v2 = sub_245EBEFE4();
  *(v1 + 20) |= 1u;
  *(v1 + 8) = v2;
  v3 = v6;
  *(v6 + 20) |= 2u;
  *(v3 + 16) = 1;
  sub_245F21790(v5, v4);
  sub_245E5ADCC(v5);
}

void sub_245F225E8(double *a1)
{
  sub_245F24680(0x2B7304A4u, 1, 1, 0, 0, 0);
  sub_245E55178(v20);
  sub_245E7A608(v20);
  Current = CFAbsoluteTimeGetCurrent();
  v22 |= 1u;
  *&v20[87] = Current;
  v3 = v21;
  v4 = *a1;
  *(v21 + 124) |= 0x10u;
  *(v3 + 40) = v4;
  v5 = v21;
  v6 = *(a1 + 1);
  *(v21 + 124) |= 2u;
  *(v5 + 16) = v6;
  v7 = v21;
  v8 = *(a1 + 2);
  *(v21 + 124) |= 4u;
  *(v7 + 24) = v8;
  v9 = v21;
  v10 = *(a1 + 3);
  *(v21 + 124) |= 8u;
  *(v9 + 32) = v10;
  v11 = v21;
  v12 = *(a1 + 4);
  *(v21 + 124) |= 1u;
  *(v11 + 8) = v12;
  v13 = v21;
  *&v12 = a1[8];
  *(v21 + 124) |= 0x40000u;
  *(v13 + 100) = v12;
  v14 = v21;
  *&v12 = a1[9];
  *(v21 + 124) |= 0x80000u;
  *(v14 + 104) = v12;
  v15 = v21;
  *&v12 = a1[10];
  *(v21 + 124) |= 0x100000u;
  *(v15 + 108) = v12;
  v16 = v21;
  *&v12 = a1[5];
  *(v21 + 124) |= 0x2000u;
  *(v16 + 80) = v12;
  v17 = v21;
  *&v12 = a1[6];
  *(v21 + 124) |= 0x4000u;
  *(v17 + 84) = v12;
  v18 = v21;
  *&v12 = a1[7];
  *(v21 + 124) |= 0x8000u;
  *(v18 + 88) = v12;
  sub_245F21790(v20, v19);
  sub_245F24680(0x2B7304A4u, 2, 1, 0, 0, 0);
  sub_245E5ADCC(v20);
}

void sub_245F227B8(uint64_t *a1)
{
  sub_245E55178(v8);
  sub_245E7A968(v8);
  Current = CFAbsoluteTimeGetCurrent();
  v10 |= 1u;
  *&v8[87] = Current;
  v3 = v9;
  v4 = *a1;
  *(v9 + 20) |= 1u;
  *(v3 + 8) = v4;
  v5 = v9;
  v6 = *(a1 + 2);
  *(v9 + 20) |= 2u;
  *(v5 + 16) = v6;
  sub_245F21790(v8, v7);
  sub_245E5ADCC(v8);
}

void sub_245F22858(double *a1)
{
  sub_245F24680(0x2B7304A8u, 1, 1, 0, 0, 0);
  sub_245E55178(v14);
  sub_245E7A728(v14);
  Current = CFAbsoluteTimeGetCurrent();
  v16 |= 1u;
  *&v14[87] = Current;
  v3 = v15;
  v4 = *a1;
  *(v15 + 56) |= 8u;
  *(v3 + 32) = v4;
  v5 = v15;
  v6 = *(a1 + 1);
  *(v15 + 56) |= 0x10u;
  *(v5 + 40) = v6;
  v7 = v15;
  v8 = a1[2];
  *(v15 + 56) |= 2u;
  *(v7 + 16) = v8;
  v9 = v15;
  v10 = *(a1 + 3);
  *(v15 + 56) |= 0x20u;
  *(v9 + 48) = v10;
  v11 = v15;
  v12 = *(a1 + 16);
  *(v15 + 56) |= 1u;
  *(v11 + 8) = v12;
  sub_245F21790(v14, v13);
  sub_245F24680(0x2B7304A8u, 2, 1, 0, 0, 0);
  sub_245E5ADCC(v14);
}

void sub_245F22984(uint64_t a1)
{
  sub_245E55178(v8);
  sub_245E7A698(v8);
  Current = CFAbsoluteTimeGetCurrent();
  v10 |= 1u;
  *&v8[87] = Current;
  v3 = *(a1 + 8) != 1;
  v4 = v9;
  *(v9 + 16) |= 2u;
  *(v4 + 12) = v3;
  v5 = *(a1 + 12) != 1;
  v6 = v9;
  *(v9 + 16) |= 1u;
  *(v6 + 8) = v5;
  sub_245F21790(v8, v7);
  sub_245E5ADCC(v8);
}

void sub_245F22A34(uint64_t *a1)
{
  sub_245E55178(v11);
  sub_245E7A848(v11);
  Current = CFAbsoluteTimeGetCurrent();
  v13 |= 1u;
  *&v11[87] = Current;
  v3 = v12;
  v4 = *a1;
  *(v12 + 44) |= 1u;
  *(v3 + 8) = v4;
  v5 = v12;
  LODWORD(v4) = *(a1 + 2);
  *(v12 + 44) |= 2u;
  *(v5 + 16) = v4;
  v6 = v12;
  LODWORD(v4) = *(a1 + 3);
  *(v12 + 44) |= 0x10u;
  *(v6 + 28) = v4;
  v7 = v12;
  LODWORD(v4) = *(a1 + 4);
  *(v12 + 44) |= 0x20u;
  *(v7 + 32) = v4;
  v8 = v12;
  LODWORD(v4) = *(a1 + 5);
  *(v12 + 44) |= 0x40u;
  *(v8 + 36) = v4;
  v9 = v12;
  LODWORD(v4) = *(a1 + 6);
  *(v12 + 44) |= 0x80u;
  *(v9 + 40) = v4;
  sub_245F21790(v11, v10);
  sub_245E5ADCC(v11);
}

void sub_245F22B34(void *a1)
{
  sub_245E55178(v10);
  sub_245E7AB18(v10);
  Current = CFAbsoluteTimeGetCurrent();
  v13 |= 1u;
  v12 = Current;
  v3 = v11;
  v4 = a1[2];
  *(v11 + 40) |= 4u;
  *(v3 + 24) = v4;
  v5 = v11;
  v6 = a1[3];
  *(v11 + 40) |= 2u;
  *(v5 + 16) = v6;
  v7 = v11;
  v8 = a1[1];
  *(v11 + 40) |= 1u;
  *(v7 + 8) = v8;
  sub_245F21790(v10, v9);
  sub_245E5ADCC(v10);
}

void sub_245F22BEC(float *a1)
{
  sub_245E55178(v22);
  sub_245E7AA88(v22);
  Current = CFAbsoluteTimeGetCurrent();
  v24 |= 1u;
  *&v22[87] = Current;
  v3 = v23;
  v4 = *a1;
  *(v23 + 60) |= 0x10u;
  *(v3 + 40) = v4;
  v5 = v23;
  v6 = a1[2];
  *(v23 + 60) |= 2u;
  *(v5 + 16) = v6;
  v7 = v23;
  v8 = a1[3];
  *(v23 + 60) |= 0x20u;
  *(v7 + 48) = v8;
  v9 = v23;
  v10 = a1[4];
  *(v23 + 60) |= 8u;
  *(v9 + 32) = v10;
  v11 = v23;
  v12 = a1[5];
  *(v23 + 60) |= 1u;
  *(v11 + 8) = v12;
  v13 = v23;
  v14 = a1[6];
  *(v23 + 60) |= 4u;
  *(v13 + 24) = v14;
  v15 = v23;
  v16 = *(a1 + 28);
  *(v23 + 60) |= 0x100u;
  *(v15 + 58) = v16;
  v17 = v23;
  v18 = *(a1 + 29);
  *(v23 + 60) |= 0x40u;
  *(v17 + 56) = v18;
  v19 = v23;
  v20 = *(a1 + 30);
  *(v23 + 60) |= 0x80u;
  *(v19 + 57) = v20;
  sub_245F21790(v22, v21);
  sub_245E5ADCC(v22);
}

void sub_245F22D48(double *a1, long double *a2, double *a3, long double a4, long double a5, long double a6)
{
  v9 = sqrt(a5 * a5 + a4 * a4);
  *a2 = atan2(a5, a4) / 0.0174532925;
  v10 = v9 * 0.99330562;
  v11 = 0.0;
  v12 = 1.57079633;
  if (v9 * 0.99330562 != 0.0)
  {
    __y = a6;
    v13 = 0;
    v14 = 0.0;
    v12 = 0.0;
    do
    {
      v15 = v12;
      v12 = atan2(__y, v10);
      v16 = __sincos_stret(v12);
      v17 = 6378137.0 / sqrt(v16.__sinval * -0.00669437999 * v16.__sinval + 1.0);
      v11 = v9 / v16.__cosval - v17;
      if (vabdd_f64(v15, v12) >= 0.000001)
      {
        if (v13 > 8)
        {
          goto LABEL_13;
        }
      }

      else if (vabdd_f64(v14, v11) < 0.001 || v13 >= 9)
      {
        goto LABEL_13;
      }

      ++v13;
      v10 = v9 * (v17 / (v11 + v17) * -0.00669437999 + 1.0);
      v14 = v9 / v16.__cosval - v17;
    }

    while (v10 != 0.0);
    v12 = 1.57079633;
  }

LABEL_13:
  *a1 = v12 / 0.0174532925;
  *a3 = v11;
}

uint64_t sub_245F22EB8(uint64_t a1)
{
  *a1 = 0xBFF0000000000000;
  v2 = a1 + 20480;
  *(a1 + 8) = 3212836864;
  *(a1 + 16) = 1127481344;
  *(a1 + 20) = 0;
  *(a1 + 24) = 2;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0xBFF0000000000000;
  *(a1 + 40) = 1127481344;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0xBFF0000000000000;
  *(a1 + 72) = xmmword_245F33780;
  *(a1 + 88) = 0;
  *(a1 + 91) = 0;
  *(a1 + 96) = &unk_2858D7220;
  *(a1 + 104) = 0x3F8374BC6A7EF9DBLL;
  *(a1 + 112) = 0;
  v3.i64[0] = 0x3F0000003FLL;
  v3.i64[1] = 0x3F0000003FLL;
  *(a1 + 120) = vnegq_f32(v3);
  sub_245F0A0B4(a1 + 136);
  *(a1 + 21024) = xmmword_245F33790;
  *(v2 + 560) = 0;
  *(v2 + 564) = 0;
  *(a1 + 21048) = 0xBFF0000000000000;
  *(a1 + 21056) = 0;
  *(a1 + 21064) = 0;
  sub_245F181B8(a1 + 21072);
  sub_245F1EE50(a1 + 21288);
  *(v2 + 1024) = 0;
  *(v2 + 1028) = 0;
  *(v2 + 1032) = 1;
  *(v2 + 1052) = 20;
  *(a1 + 21524) = 0;
  *(v2 + 1136) = 1;
  *(a1 + 21648) = 0x1400000000;
  *(a1 + 21640) = 0x3FB0000000000000;
  *(a1 + 21816) = 0xBFF0000000000000;
  *(a1 + 21824) = 0;
  *(a1 + 21831) = 0;
  *(a1 + 21840) = 10000;
  *(v2 + 1368) = 0;
  *(a1 + 21856) = 0xC12E848000000000;
  *(v2 + 1384) = -1082130432;
  *(a1 + 21872) = 0xC12E848000000000;
  *(v2 + 1400) = 0;
  *(v2 + 1440) = 0;
  *(a1 + 21928) = 0;
  *(a1 + 21944) = 0;
  *(a1 + 21936) = 0;
  *(a1 + 21952) = 0;
  *(a1 + 21960) = 0xBFF0000000000000;
  *(a1 + 21968) = 0xBFF0000000000000;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 21976) = _D0;
  *(v2 + 1504) = 0;
  *(v2 + 1506) = 0;
  *(a1 + 21992) = 0xC12E848000000000;
  *(a1 + 22000) = 0xC12E848000000000;
  *(v2 + 1528) = 0;
  *(a1 + 22012) = 0x42C80000BF800000;
  *(v2 + 1540) = 0;
  *(v2 + 1544) = 0;
  *(a1 + 22032) = &unk_2858D7220;
  *(a1 + 22048) = 0;
  *(a1 + 22040) = 0x3FDFF7CED916872BLL;
  sub_245F230F0(a1);
  return a1;
}

double sub_245F230F0(uint64_t a1)
{
  v2 = a1 + 20480;
  sub_245F18784(a1 + 21072);
  *(a1 + 21880) = 0xC12E848000000000;
  *(a1 + 21888) = 0;
  *(v2 + 1354) = 0;
  *(a1 + 8) = 3212836864;
  *(a1 + 16) = 1127481344;
  sub_245F1EE54(a1 + 21288, *(a1 + 21840));
  *(a1 + 20) = 0;
  *(a1 + 24) = 2;
  sub_245F212A8(a1 + 21928);
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 21976) = _D0;
  *(v2 + 1504) = 0;
  *(v2 + 1506) = 0;
  *(a1 + 21992) = 0xC12E848000000000;
  *(a1 + 22000) = 0xC12E848000000000;
  *(v2 + 1528) = 0;
  result = 5.27765832e13;
  *(a1 + 22012) = 0x42C80000BF800000;
  *(v2 + 1540) = 0;
  return result;
}

void sub_245F231F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 20480;
  sub_245F24680(0x2B7304ACu, 1, 1, 0, 0, 0);
  *a1 = *a2;
  if (*(v4 + 1353) == 1 && (*(v4 + 1354) & 1) != 0)
  {
    v5 = *(a2 + 24);
    v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a2 + 8)), v5);
    sub_245F24EC0(&v12, v5);
    v6 = *(a2 + 80);
    v10 = vmul_f32(vcvt_f32_f64(*(a2 + 64)), vdup_n_s32(0xC11CE80A));
    v11 = v6 * -9.8067;
    sub_245F24D6C(v12.f32, &v10);
    sub_245F1EFDC(a1 + 21288, &v10, *a2);
    if (sub_245F135D4(a1 + 96, a2))
    {
      sub_245F233C0(a1, *a2);
    }

    *(a1 + 32) = *a2;
    *(a1 + 44) = *(a1 + 21404);
    *(a1 + 60) = *(a1 + 21420);
    *(a1 + 8) = *(v4 + 1008);
    v7 = sub_245F2356C(a1, v12.f32);
    v8 = (*(v4 + 944) + *(v4 + 944)) * 57.296;
    *(a1 + 12) = v7;
    *(a1 + 16) = v8;
    *(a1 + 40) = v8;
    sub_245F23624(a1, *a2);
    sub_245F237B0(a1, *a2);
    sub_245F24680(0x2B7304ACu, 2, 1, 0, 0, 0);
  }

  else
  {
    sub_245F135D4(a1 + 96, a2);
    if (*(v4 + 1472) == 1)
    {
      v9 = *(a1 + 21928);
      *(a1 + 8) = v9;
      *(a1 + 28) = 1;
      if (*a1 - *(a1 + 21944) > 2.0)
      {
        *(a1 + 28) = 0;
      }
    }
  }
}

void sub_245F233C0(uint64_t a1, double a2)
{
  v4 = a1 + 20480;
  v5 = *(a1 + 8);
  v7 = v5 >= 3.0 && v5 < 5.0;
  v8 = *(a1 + 21024) + 0.04;
  if (v7 && v8 > 1.3)
  {
    v8 = 1.3;
  }

  if (v8 > 0.6 && v5 < 3.0)
  {
    v10 = 0.6;
  }

  else
  {
    v10 = v8;
  }

  v14 = v10;
  if (*(a1 + 21064) == 1)
  {
    v11 = atan2f(*(a1 + 124), *(a1 + 120));
    v12 = __sincosf_stret(v11);
    v13 = *(a1 + 128);
    sub_245F24680(0x2B73048Cu, 1, 1, 0, 0, 0);
    *(a1 + 21296) = vmul_n_f32(__PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)), v14);
    *(a1 + 21304) = v13;
    sub_245F1F4A4(a1 + 21288, 2, a2);
    sub_245F24680(0x2B73048Cu, 2, 1, 0, 0, 0);
    *(a1 + 21872) = a2;
  }

  else
  {
    sub_245F24680(0x2B730490u, 1, 1, 0, 0, 0);
    *(v4 + 832) = v14;
    sub_245F1F4A4(a1 + 21288, 1, a2);

    sub_245F24680(0x2B730490u, 2, 1, 0, 0, 0);
  }
}

float sub_245F2356C(uint64_t a1, float *a2)
{
  v3 = 0;
  v10 = 0.0;
  v4 = vneg_f32(*(a1 + 44));
  v9 = v4;
  v5 = 0;
  do
  {
    *v5.i32 = *v5.i32 + (v9.f32[v3] * v9.f32[v3]);
    ++v3;
  }

  while (v3 != 3);
  *v5.i32 = sqrtf(*v5.i32);
  v9 = vdiv_f32(v4, vdup_lane_s32(v5, 0));
  v10 = 0.0 / *v5.i32;
  sub_245F24CD0(a2, &v9);
  v7 = v9.f32[1];
  v6 = v9.f32[0];
  if (*(a1 + 21828) == 1)
  {
    v7 = -v9.f32[1];
    v6 = -v9.f32[0];
  }

  return atan2f(v6, v7) * 57.296;
}

void sub_245F23624(uint64_t a1, double a2)
{
  v3 = a1 + 20480;
  v4 = a2 - *(a1 + 21880);
  v5 = v4 > 3.0;
  if (a2 - *(a1 + 21872) <= 3.0)
  {
    v5 = 0;
  }

  v7 = v4 > 5.0 && *(a1 + 8) > 15.0;
  if (v7 || (v4 <= 10.0 ? (v8 = !v5) : (v8 = 0), !v8))
  {
    if (*(a1 + 21952) == 1)
    {
      v9 = *(a1 + 21928);
      *(a1 + 8) = v9;
      *(a1 + 28) = 1;
      if (*a1 - *(a1 + 21944) > 2.0)
      {
        *(a1 + 28) = 0;
      }
    }
  }

  v10 = *(a1 + 20);
  v11 = *(a1 + 16);
  if ((sub_245F2404C(a1) & 1) == 0)
  {
    if (v10)
    {

      sub_245F240BC(a1, v4 > 10.0, v11 > 120.0, v11 < 90.0);
    }

    else
    {
      v12 = *(a1 + 8);
      v13 = v12 - *(v3 + 1384);
      if (v13 <= 0.0)
      {
        v13 = -v13;
      }

      if (v4 >= 0.5 || v11 >= 90.0 || v12 < 2.0 || v13 <= 0.5)
      {
        v17 = *(a1 + 24);
      }

      else
      {
        v17 = 0;
        *(v3 + 1024) = 1;
      }

      *(a1 + 24) = v17;
      *(a1 + 20) = v17 == 0;
    }
  }
}

void sub_245F237B0(uint64_t a1, double a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 20480);
  if (*(a1 + 21984) != 1)
  {
    return;
  }

  v4 = *(a1 + 21985);
  if ((v4 & 1) == 0 && *(a1 + 28) == 1 && *(a1 + 8) < 8.0)
  {
    v4 = 1;
  }

  *(a1 + 21985) = v4;
  v5 = (a1 + 80);
  v6 = *(a1 + 80);
  v7 = *(a1 + 21986) | (vabds_f32(v6, *(a1 + 21976)) > 1.7);
  *(a1 + 21986) = v7;
  v8 = *(a1 + 21492);
  *(a1 + 22024) = v8 > 0.9;
  if (v8 <= 0.9)
  {
    v10 = 0;
    *(a1 + 21992) = a2;
    v9 = a2 - a2;
    *(a1 + 22012) = 0x42C80000BF800000;
    v12 = -1.0;
    v11 = 100.0;
  }

  else
  {
    v9 = a2 - *(a1 + 21992);
    v10 = v9 > 4.5;
    if (*(a1 + 28))
    {
      v11 = *(a1 + 8);
      v12 = *(a1 + 22012);
      if (v11 > v12)
      {
        v12 = *(a1 + 8);
      }

      *(a1 + 22012) = v12;
      if (v11 >= *(a1 + 22016))
      {
        v11 = *(a1 + 22016);
      }

      *(a1 + 22016) = v11;
    }

    else
    {
      v12 = *(a1 + 22012);
      v11 = *(a1 + 22016);
    }
  }

  v13 = v12 - v11;
  if (v4 & *(a1 + 21504)) != 1 || v7 & 1 | !v10 || v13 <= 0.5 || (*(a1 + 22009))
  {
    v14 = *(a1 + 22008);
    v15 = a2;
    if (v14 != 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    LOBYTE(v14) = 1;
    *(a1 + 22008) = 1;
  }

  v15 = *(a1 + 22000);
LABEL_23:
  v16 = (a1 + 64);
  *(a1 + 22000) = v15;
  v17 = a2 - v15;
  if (v8 > 0.9)
  {
    v5 = (a1 + 22020);
  }

  v18 = *v5;
  *(a1 + 22020) = *v5;
  v19 = vabds_f32(v18, v6);
  if (v17 > 10.0 || v19 > 1.0)
  {
    LOBYTE(v14) = 0;
    *(a1 + 22008) = 256;
  }

  v20 = vrev64_s32(*(a1 + 21480));
  *(a1 + 64) = *(a1 + 32);
  *(a1 + 72) = v20;
  *(a1 + 80) = *(a1 + 21980);
  *(a1 + 84) = v8;
  *(a1 + 88) = *(a1 + 21496);
  *(a1 + 92) = *(a1 + 20);
  *(a1 + 93) = v8 > 0.9;
  *(a1 + 94) = v14;
  v21 = *(a1 + 22040);
  if (v21 <= 0.0 || v21 + *(a1 + 22048) <= a2)
  {
    *(a1 + 22048) = a2;
    if (qword_27EE374E0 != -1)
    {
      sub_245F2CF04();
    }

    v22 = off_27EE374E8;
    if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      v25 = *(a1 + 76);
      v26 = *(a1 + 80);
      v27 = *(a1 + 92);
      v28 = *(a1 + 84);
      v29 = *(a1 + 88);
      v30 = *(a1 + 93);
      v31 = *(a1 + 94);
      v32 = v2[1505];
      v33 = v2[1506];
      v34 = v2[1529];
      v35 = 134353920;
      v36 = v23;
      v37 = 2050;
      v38 = v24;
      v39 = 2050;
      v40 = v25;
      v41 = 2050;
      v42 = v26;
      v43 = 2050;
      v44 = v28;
      v45 = 2050;
      v46 = v29;
      v47 = 1026;
      v48 = v27;
      v49 = 1026;
      v50 = v30;
      v51 = 1026;
      v52 = v31;
      v53 = 1026;
      v54 = v32;
      v55 = 1026;
      v56 = v33;
      v57 = 2050;
      v58 = v9;
      v59 = 1026;
      v60 = v10;
      v61 = 2050;
      v62 = v13;
      v63 = 1026;
      v64 = v13 > 0.5;
      v65 = 2050;
      v66 = v17;
      v67 = 1026;
      v68 = v17 > 10.0;
      v69 = 2050;
      v70 = v19;
      v71 = 1026;
      v72 = v19 > 1.0;
      v73 = 1026;
      v74 = v34;
      _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_DEFAULT, "CMPrecisionFindingPositionEstimator::fVerticalState,timestamp,%{public}f,horizontalDistance,%{public}f,verticalDistance,%{public}f,relativeAltitude,%{public}f,fractionAboveThreshold,%{public}f,likelihoodAboveThreshold,%{public}f,isConverged,%{public}d,isAboveBelow,%{public}d,isAboveBelowMessageShowing,%{public}d,wasInMediumRange,%{public}d,wasLevelChanged,%{public}d,timeElapsedSinceAboveBelowFractionHigh,%{public}f,isAboveBelowFractionConsistentlyHigh,%{public}d,distanceChangeSinceAboveBelowFractionHigh,%{public}f,isDistanceChangedEnoughForAboveBelowMessage,%{public}d,timeElapsedSinceAboveBelowMessageShown,%{public}f,aboveBelowMessageShownLongerThanThreshold,%{public}d,elevationChangeSinceAboveBelowMessageShown,%{public}f,isChangingLevelWhileAboveBelowMessageShowing,%{public}d,wasAboveBelowMessageShown,%{public}d", &v35, 0xA2u);
    }
  }

  sub_245F22BEC(v16);
}

int8x16_t sub_245F23B80(uint64_t a1, uint64_t a2)
{
  result.i64[0] = *(a2 + 8);
  if (*result.i64 > 0.00999999978)
  {
    v22 = v2;
    v23 = v3;
    v7 = a1 + 20480;
    v20 = 0u;
    v21 = 0u;
    sub_245F18214(a2, &v20);
    sub_245F24680(0x2B7304B0u, 1, 1, 0, 0, 0);
    if (*(v7 + 1353) == 1 && (v8 = *(a2 + 8), (sub_245F18688(a1 + 21072, *(v7 + 1024), v8) & 1) != 0))
    {
      sub_245F18240(a1 + 21072, a2, &v20, *(a1 + 32));
      if (BYTE9(v21) == 1)
      {
        if (*(v7 + 1354) == 1)
        {
          v9 = *(a2 + 8);
        }

        else
        {
          if (qword_27EE374E0 != -1)
          {
            sub_245F2CF18();
          }

          v10 = off_27EE374E8;
          if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
          {
            *v19 = 0;
            _os_log_impl(&dword_245D80000, v10, OS_LOG_TYPE_DEFAULT, "Particle filter successfully initialized.", v19, 2u);
          }

          *(v7 + 1354) = 1;
          v9 = *(a2 + 8);
          v11 = v9;
          *(v7 + 1384) = v11;
        }

        LODWORD(v21) = sub_245F186F4(a1 + 21072, v9);
        v12 = *(a2 + 8) - *(a1 + 21888);
        v13 = sub_245F18748(*a2 - *(a1 + 21880), v12, a1 + 21072, *(v7 + 1024));
        v14.n128_u64[0] = *(a2 + 8);
        v14.n128_f32[0] = v14.n128_f64[0];
        sub_245F1F41C(a1 + 21288, v13, v14, *a2, *&v21);
        v15 = *(v7 + 1008);
        *(a1 + 8) = v15;
        *(a1 + 28) = 1;
        sub_245F212B0(a1 + 21928, v15, *a2, 0.0001);
        *a1 = *a2;
        v16 = *(v7 + 1440);
        v17 = *(a2 + 32);
        v18 = *(a2 + 16);
        *(a1 + 21880) = *a2;
        *(a1 + 21896) = v18;
        *(a1 + 21912) = v17;
        if ((v16 & 1) == 0)
        {
          *(v7 + 1440) = 1;
        }
      }

      else
      {
        sub_245F23DD8(a1, a2);
      }

      sub_245F22254(&v20);
      sub_245F24680(0x2B7304B0u, 2, 1, 0, 0, 0);
    }

    else
    {
      sub_245F22254(&v20);
      sub_245F23DD8(a1, a2);
    }

    result = vextq_s8(*a2, *a2, 8uLL);
    *(v7 + 1480) = result;
  }

  return result;
}

double sub_245F23DD8(uint64_t a1, double *a2)
{
  result = a2[1];
  if (result <= 65.0)
  {
    v6 = *(a1 + 21960);
    if (v6 >= 0.0)
    {
      v7 = *(a1 + 21968);
      if (v7 >= 0.0)
      {
        v3 = *a2;
        if (*(a1 + 21952))
        {
          v8 = v3 - *(a1 + 21944);
          if (v8 <= 0.0)
          {
            v9 = 1000000.0;
          }

          else
          {
            v9 = (result - *(a1 + 21928)) / v8;
          }

          if (v9 * v9 <= 0.5 || v9 <= 0.0)
          {
            v4 = 0.5;
          }

          else
          {
            v4 = v9 * v9;
          }

          goto LABEL_4;
        }

        v10 = v3 - v7;
        if (result < v6)
        {
          v6 = a2[1];
        }

        if (v10 < 1.5)
        {
          result = v6;
        }

        if (result <= 65.0)
        {
          v5 = a1 + 21928;
          v4 = 1.0;
          goto LABEL_5;
        }
      }
    }
  }

  else if (*(a1 + 21952) == 1)
  {
    result = *(a1 + 21928);
    v3 = *a2;
    v4 = 1000000.0;
LABEL_4:
    v5 = a1 + 21928;
LABEL_5:
    sub_245F212B0(v5, result, v3, v4);
  }

  return result;
}

unsigned __int16 *sub_245F23EB8(uint64_t a1, void *a2)
{
  v4 = a1 + 20480;
  sub_245F24290((a1 + 21528), a2 + 2);
  *(v4 + 1032) = 1;
  result = sub_245F187A0((a1 + 21648), a2);
  *(v4 + 1136) = 1;
  return result;
}

double sub_245F23F14(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 20480;
  if (*(a1 + 21833) != 1 || *(a1 + 21824) != *(a2 + 8) || *(a1 + 21828) != *(a2 + 12))
  {
    if (qword_27EE374E0 != -1)
    {
      sub_245F2CF04();
    }

    v5 = off_27EE374E8;
    if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_245D80000, v5, OS_LOG_TYPE_DEFAULT, "Wrist and crown successfully initialized.", v7, 2u);
    }

    *(a1 + 21816) = *a2;
    *(v4 + 1353) = 1;
    return sub_245F18070(a1 + 21032, a2);
  }

  return result;
}

float sub_245F23FF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 20480;
  v4 = *(a2 + 16);
  if ((*(a1 + 21984) & 1) == 0)
  {
    *(a1 + 21976) = v4;
    *(a1 + 21984) = 1;
  }

  sub_245F1F400(a1 + 21288, v4);
  result = *(a2 + 16);
  *(v3 + 1500) = result;
  return result;
}

uint64_t sub_245F2404C(uint64_t a1)
{
  v2 = sub_245F2415C(a1);
  if (v2)
  {
    *(a1 + 20) = 0;
    *(a1 + 24) = 4;
    *(a1 + 21832) = 1;
  }

  else if (*(a1 + 21832) == 1)
  {
    sub_245F230F0(a1);
    *(a1 + 21832) = 0;
  }

  return v2;
}

float sub_245F240BC(uint64_t a1, int a2, int a3, int a4)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 21848);
  }

  v8 = (a4 ^ 1) & v6;
  v7 = v8 == 0;
  *(a1 + 21848) = v8;
  v9 = 32;
  if (!v7)
  {
    v9 = 21856;
  }

  v10 = *(a1 + v9);
  *(a1 + 21856) = v10;
  if (a3 && *(a1 + 32) - v10 > 1.5)
  {
    v11 = 2;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (v5 < 1.75)
  {
    v11 = 1;
  }

  if (a2)
  {
    v11 = 3;
  }

  *(a1 + 24) = v11;
  *(a1 + 20) = v11 == 0;
  if (!v11)
  {
    v4 = (a1 + 21864);
  }

  result = *v4;
  *(a1 + 21864) = *v4;
  return result;
}

uint64_t sub_245F2415C(_WORD *a1)
{
  v1 = a1 + 10240;
  if (a1[10765] && a1[10825])
  {
    v3 = *sub_245F187F4(a1 + 10824, a1[10825] - 1);
    v4 = v1[525] - 1;
    while (v4 != -1 && v3 - *sub_245F187F4(a1 + 10824, v4) <= 2.0)
    {
      v5 = sub_245F242E8(a1 + 10764, v4--);
      if (CLMotionActivity::indexToActivityType((*v5 - 1)) - 1 >= 2)
      {
        return 1;
      }
    }
  }

  return 0;
}

os_log_t sub_245F2421C()
{
  result = os_log_create("com.apple.locationd.Motion", "PrecisionFinding");
  off_27EE374E8 = result;
  return result;
}

os_log_t sub_245F2424C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

unsigned __int16 *sub_245F24290(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 < v3)
  {
    v3 = 0;
  }

  *&result[2 * (v4 + v2 - v3) + 4] = *a2;
  v5 = *(result + 1);
  if (v5 <= v2)
  {
    v6 = v4 + 1;
    if (v4 + 1 >= v5)
    {
      v7 = *(result + 1);
    }

    else
    {
      v7 = 0;
    }

    *result = v6 - v7;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

unsigned __int16 *sub_245F242E8(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D71F0);
    }

    v7 = qword_27EE37528;
    v8 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v8)
    {
      v9 = 134218240;
      v10 = a2;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v9, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return &a1[2 * (v5 - v4) + 4];
}

void sub_245F24680(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27EE38A08 != -1)
  {
    dispatch_once(&qword_27EE38A08, &unk_2858D7240);
  }

  if (byte_27EE38A00 == 1)
  {
    v12 = a1 | 1;
    if (a2 != 1)
    {
      v12 = a1;
    }

    if (a2 == 2)
    {
      v13 = a1 | 2;
    }

    else
    {
      v13 = v12;
    }

    MEMORY[0x2822039B8](v13, a3, a4, a5, a6);
  }
}

void *sub_245F24748(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  result = objc_msgSend_BOOLForKey_(v3, v4, @"LogAriadneSignposts");
  byte_27EE38A00 = result;
  return result;
}

uint64_t *sub_245F24864(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 2) = 0;
  *(a1 + 12) = 0x500000000;
  a1[5] = 0x400000000;
  if (!a2 || *(a2 + 16) >= 5u)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D7260);
    }

    v4 = qword_27EE37528;
    if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
    {
      v5 = *a1;
      v6 = *(*a1 + 16);
      v7 = 134218496;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      v11 = 1024;
      v12 = 4;
      _os_log_impl(&dword_245D80000, v4, OS_LOG_TYPE_FAULT, "Assertion failed: (fIirFilterParams != __null) && (fIirFilterParams->filterOrder <= kMaxFilterOrder), file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMIirFilter.cpp, line 17,IirFilterParams,%p,filterOrder,%d,maxFilterOrder,%d.", &v7, 0x18u);
    }
  }

  *(a1 + 3) = 0;
  *(a1 + 10) = 0;
  return a1;
}

os_log_t sub_245F2498C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

float32_t sub_245F249DC(float *a1, float *a2, float32x4_t a3)
{
  v3 = a1[2];
  a3.f32[0] = a1[3];
  v4 = a2[1];
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  *&v8 = (((v3 * v4) + (a3.f32[0] * *a2)) - (v5 * v6)) + (*a1 * v7);
  *&v9 = (((a3.f32[0] * v4) - (v3 * *a2)) + (*a1 * v6)) + (v5 * v7);
  *&v10 = (((v5 * *a2) - (*a1 * v4)) + (a3.f32[0] * v6)) + (v3 * v7);
  v11 = (-(v5 * v4) - (*a1 * *a2)) - (v3 * v6);
  v13.i64[0] = __PAIR64__(v9, v8);
  a3.f32[0] = v11 + (a3.f32[0] * v7);
  v13.i64[1] = __PAIR64__(a3.u32[0], v10);
  sub_245F24EC0(&v13, a3);
  return v13.f32[0];
}

float32_t sub_245F24A60(float32x2_t *a1, uint64_t a2, float32x4_t a3)
{
  v3 = a1[1].i32[1];
  a3.f32[0] = -a1[1].f32[0];
  *v5.f32 = vneg_f32(*a1);
  v5.i64[1] = __PAIR64__(v3, a3.u32[0]);
  sub_245F24EC0(&v5, a3);
  return v5.f32[0];
}

float sub_245F24AA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  if (v4 >= 0.0)
  {
    return *a1;
  }

  v8 = v2;
  v9 = v3;
  v5.i64[0] = *a1;
  v5.i32[2] = *(a1 + 8);
  v5.f32[3] = v4;
  v7 = vnegq_f32(v5);
  sub_245F24EC0(&v7, v7);
  return v7.f32[0];
}

float sub_245F24B04(float32x2_t *a1, float *a2, float32x4_t a3)
{
  v4.f32[0] = sub_245F24A60(a1, a2, a3);
  v13[0] = v4.f32[0];
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v14[0] = sub_245F249DC(a2, v13, v4);
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  return sub_245F24AA4(v14, v11);
}

float sub_245F24B54(float *a1)
{
  v1 = a1[1];
  v2 = (*a1 * a1[2]) - (a1[3] * v1);
  return -atan2f(v2 + v2, (((v1 * v1) + (*a1 * *a1)) * -2.0) + 1.0);
}

float sub_245F24B98(float *a1)
{
  v1 = (*a1 * a1[3]) + (a1[1] * a1[2]);
  v2 = v1 + v1;
  v3 = -1.0;
  v4 = v2 <= -1.0;
  v5 = v2 < 1.0 || v2 <= -1.0;
  if (v2 >= 1.0)
  {
    v4 = 1;
  }

  if (!v5)
  {
    v3 = 1.0;
  }

  if (v4)
  {
    return asinf(v3);
  }

  else
  {
    return asinf(v2);
  }
}

float sub_245F24BDC(float *a1)
{
  v1 = a1[2];
  v2 = (*a1 * a1[1]) - (a1[3] * v1);
  return -atan2f(v2 + v2, (((v1 * v1) + (*a1 * *a1)) * -2.0) + 1.0);
}

float sub_245F24C20(float *a1)
{
  v1 = 0;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  result = ((v3 * v4) - (*a1 * v2)) + ((v3 * v4) - (*a1 * v2));
  v6 = -(v3 * *a1) - (v4 * v2);
  v7 = (((v4 * v4) + (*a1 * *a1)) * 2.0) + -1.0;
  *v11 = result;
  *&v11[1] = v6 + v6;
  *&v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (*&v11[v1] * *&v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*&v11[v9] * *&v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

void sub_245F24CD0(float *a1, uint64_t a2)
{
  sub_245F24FD4(v5, a1, 1.0);
  *a2 = sub_245F17C3C(v5, a2);
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

float sub_245F24D2C(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  sub_245F24FD4(v6, a1, 1.0);
  return sub_245F17C3C(v6, v5);
}

void sub_245F24D6C(float *a1, uint64_t a2)
{
  sub_245F24FD4(v5, a1, -1.0);
  *a2 = sub_245F17C3C(v5, a2);
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

float sub_245F24DC8(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  sub_245F24FD4(v6, a1, -1.0);
  return sub_245F17C3C(v6, v5);
}

double sub_245F24E08(float32x4_t *a1, float *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  v6 = sqrtf(v5);
  v7 = 0.5;
  v8 = v6 * 0.5;
  if ((v6 * 0.5) > 0.0)
  {
    v7 = (sinf(v6 * 0.5) / v8) * 0.5;
  }

  a1->f32[0] = v7 * *a2;
  a1->f32[1] = v7 * a2[1];
  a1->f32[2] = v7 * a2[2];
  v9.f32[0] = cosf(v8);
  a1->i32[3] = v9.i32[0];

  *&result = sub_245F24EC0(a1, v9).u64[0];
  return result;
}

float32x4_t sub_245F24EC0(float32x4_t *a1, float32x4_t result)
{
  result.f32[0] = sqrtf((((a1->f32[1] * a1->f32[1]) + (a1->f32[0] * a1->f32[0])) + (a1->f32[2] * a1->f32[2])) + (a1->f32[3] * a1->f32[3]));
  v2 = result.f32[0] + -1.0;
  if ((result.f32[0] + -1.0) <= 0.0)
  {
    v2 = -(result.f32[0] + -1.0);
  }

  if (v2 >= 0.00000011921)
  {
    if (result.f32[0] == 0.0)
    {
      a1->i64[0] = 0;
      a1->i64[1] = 0x3F80000000000000;
    }

    else
    {
      result = vdivq_f32(*a1, vdupq_lane_s32(*result.f32, 0));
      *a1 = result;
    }
  }

  return result;
}

float sub_245F24F24(__int128 *a1, uint64_t a2)
{
  v12 = *a1;
  v3 = sub_245F24AA4(&v12, a2);
  v4 = 0;
  *v11 = v3;
  v11[1] = v5;
  v11[2] = v6;
  v7 = 0.0;
  do
  {
    v7 = v7 + (*&v11[v4] * *&v11[v4]);
    ++v4;
  }

  while (v4 != 3);
  v8 = sqrtf(v7);
  if (v8 >= 0.00000011921)
  {
    v9 = atan2f(v8, v2);
    return v3 * ((v9 + v9) / v8);
  }

  return v3;
}

float sub_245F24FD4(float *a1, float *a2, float a3)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = v3 + v3;
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 + v7;
  v9 = v3 * (v3 + v3);
  v10 = ((v7 + v7) * v7) + -1.0;
  v11 = ((v4 + v4) * v4) + -1.0;
  v12 = (v6 + v6) * v7;
  v13 = (v6 + v6) * v4;
  v14 = v3 * (v6 + v6);
  v15 = v8 * v4;
  v16 = v3 * v8;
  v17 = v5 * v4;
  v18 = v9 + (((v6 + v6) * v6) + -1.0);
  v19 = v12 - (v17 * a3);
  v20 = v13 + (v16 * a3);
  v21 = v12 + (v17 * a3);
  v22 = v9 + v10;
  v23 = v15 - (v14 * a3);
  v24 = v13 - (v16 * a3);
  result = v15 + (v14 * a3);
  *a1 = v18;
  a1[1] = v19;
  a1[2] = v20;
  a1[3] = v21;
  a1[4] = v22;
  a1[5] = v23;
  a1[6] = v24;
  a1[7] = result;
  a1[8] = v9 + v11;
  return result;
}

void sub_245F25054(float *a1)
{
  if ((atomic_load_explicit(&qword_27EE38A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE38A18))
  {
    dword_27EE38A10 = 1043452116;
    __cxa_guard_release(&qword_27EE38A18);
  }

  v4 = sub_245F24C20(a1);
  v5 = 0;
  v6 = sqrtf((v2 * v2) + (v4 * v4));
  v7 = -1.0;
  if (v3 > v6)
  {
    v7 = 1.0;
  }

  v22 = 0x3F80000000000000;
  v23 = 0;
  v8 = (v3 * -0.0) + (v2 * v7);
  v9 = 0.0;
  v10 = (v3 * 0.0) - (v4 * v7);
  v11 = (v2 * -0.0) + (v4 * 0.0);
  v21[0] = v8;
  v21[1] = v10;
  v21[2] = v11;
  do
  {
    v9 = v9 + (v21[v5] * v21[v5]);
    ++v5;
  }

  while (v5 != 3);
  v12 = sqrtf(v9);
  if (v12 <= *&dword_27EE38A10)
  {
    v15 = 1.0;
    v16 = 0.0;
    v14 = 0.0;
  }

  else
  {
    v13 = -atan2f(v6, v3 * v7) / v12;
    v24[0] = v8 * v13;
    v24[1] = v10 * v13;
    v24[2] = v11 * v13;
    sub_245F24E08(&v20, v24);
    sub_245F24FD4(v24, v20.f32, -1.0);
    v14 = sub_245F17C3C(v24, &v22);
  }

  v17 = sub_245F24DC8(a1, v14, v15, v16);
    ;
  }

    ;
  }
}

os_log_t sub_245F25F28()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  qword_27EE37508 = result;
  return result;
}

void sub_245F26298(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isRunning(*(a1 + 32), a2, a3))
  {
    objc_msgSend_stopPencilFusionUpdatesPrivate(*(a1 + 32), v4, v5);
  }

  objc_msgSend_setHandlerQueue_(*(a1 + 32), v4, *(a1 + 40));
  v8 = objc_msgSend_copy(*(a1 + 48), v6, v7);
  objc_msgSend_setHandler_(*(a1 + 32), v9, v8);
  objc_msgSend_setRunning_(*(a1 + 32), v10, 1);
  objc_msgSend_setCurrentEstimationUpdateIndex_(*(a1 + 32), v11, 0);
  v12 = *(*(a1 + 32) + 8);

  sub_245F12268(v12);
}

void sub_245F26634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_245F26668(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_estimations(*(a1 + 32), a2, a3);
  result = objc_msgSend_lastObject(v4, v5, v6);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void *sub_245F268C4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_isRunning(*(a1 + 48), a2, a3);
  if (result)
  {
    if (objc_msgSend_mslEnabled(*(a1 + 48), v5, v6))
    {
      LODWORD(v9) = *(a1 + 64);
      LODWORD(v10) = *(a1 + 68);
      LODWORD(v11) = *(a1 + 72);
      LODWORD(v12) = *(a1 + 76);
      LODWORD(v13) = *(a1 + 80);
      objc_msgSend_logTouchAltitudeAngle_altitudeAngleConfidence_azimuthAngle_azimuthAngleConfidence_position_positionConfidence_timestamp_(*(a1 + 48), v7, v8, v9, v10, v11, v12, *(a1 + 32), v13, *(a1 + 56));
    }

    sub_245F106BC(*(*(a1 + 48) + 8), (*(a1 + 56) * 1000000.0), fabsf(*(a1 + 40)) < 0.000001, *(a1 + 68) > 0.5, *(a1 + 64), *(a1 + 72));
    *v15.i64 = sub_245F1D50C(*(*(a1 + 48) + 8) + 8, v14);
    v78 = __PAIR64__(v16, v15.u32[0]);
    v79 = v17;
    v80 = v18;
    v77[0] = sub_245F24A60(&v78, v19, v15);
    v77[1] = v20;
    v77[2] = v21;
    v77[3] = v22;
    v23 = sub_245F0F554(v77);
    v25 = v24;
    v27 = v26;
    v28 = objc_opt_new();
    *&v29 = v23;
    objc_msgSend_setAltitudeAngle_(v28, v30, v31, v29);
    LODWORD(v32) = v25;
    objc_msgSend_setAzimuthAngle_(v28, v33, v34, v32);
    LODWORD(v35) = v27;
    objc_msgSend_setRollAngle_(v28, v36, v37, v35);
    objc_msgSend_setPosition_(v28, v38, v39, *(a1 + 32));
    v40 = MEMORY[0x277CCABB0];
    v41 = *(a1 + 48);
    v42 = *(v41 + 32);
    *(v41 + 32) = v42 + 1;
    v44 = objc_msgSend_numberWithUnsignedLongLong_(v40, v43, v42);
    objc_msgSend_setEstimationUpdateIndex_(v28, v45, v44);
    objc_msgSend_setEstimated_(v28, v46, 1);
    objc_msgSend_setTimestamp_(v28, v47, v48, *(a1 + 56));
    v51 = objc_msgSend_estimations(*(a1 + 48), v49, v50);
    objc_msgSend_addObject_(v51, v52, v28);
    v55 = objc_msgSend_estimations(*(a1 + 48), v53, v54);
    if (objc_msgSend_count(v55, v56, v57) >= 0x19)
    {
      do
      {
        v60 = objc_msgSend_estimations(*(a1 + 48), v58, v59);
        objc_msgSend_removeObjectAtIndex_(v60, v61, 0);
        v64 = objc_msgSend_estimations(*(a1 + 48), v62, v63);
      }

      while (objc_msgSend_count(v64, v65, v66) > 0x18);
    }

    result = objc_msgSend_mslEnabled(*(a1 + 48), v67, v68);
    if (result)
    {
      v71 = *(a1 + 48);
      v72 = objc_msgSend_estimations(v71, v69, v70);
      Object = objc_msgSend_lastObject(v72, v73, v74);
      return objc_msgSend_logPencilFusionResult_(v71, v76, Object);
    }
  }

  return result;
}

void *sub_245F27010(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_isRunning(*(a1 + 96), a2, a3);
  if (result)
  {
    v5 = fabsf(COERCE_FLOAT(*(a1 + 32)));
    v6 = *(*(a1 + 96) + 8);
    v7 = *(a1 + 135);
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    sub_245F24EC0(&v14, v14);
    v8 = vmulq_f32(v13, v13);
    v8.f32[0] = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
    v9 = vmulq_f32(*(a1 + 64), *(a1 + 64));
    sub_245F1117C(v6, v7, v14.f32, v8, sqrtf(v9.f32[2] + vaddv_f32(*v9.f32)), v5);
    sub_245F1256C(*(*(a1 + 96) + 8), *(a1 + 135), *(a1 + 80), COERCE_FLOAT32_T(HIDWORD(*(a1 + 80))), COERCE_FLOAT(*(a1 + 88)), *(a1 + 120), *(a1 + 124));
    result = objc_msgSend_mslEnabled(*(a1 + 96), v10, v11);
    if (result)
    {
      return objc_msgSend_logPencilDeviceMotionQuaternion_rotationRate_acceleration_gyroBias_temperatureGyroBias_temperatureGyro_status_sensorTime_timestamp_(*(a1 + 96), v12, *(a1 + 120), *(a1 + 124), *(a1 + 128), *(a1 + 104), *(a1 + 48), *(a1 + 32), *(a1 + 64), *(a1 + 80), *(a1 + 112));
    }
  }

  return result;
}

void *sub_245F27308(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_isRunning(*(a1 + 80), a2, a3);
  if (result)
  {
    v5 = *(*(a1 + 80) + 8);
    v6 = (*(a1 + 88) * 1000000.0);
    v13 = *(a1 + 32);
    sub_245F24EC0(&v13, v13);
    v7 = vmulq_f32(*(a1 + 48), *(a1 + 48));
    v8 = vmulq_f32(*(a1 + 64), *(a1 + 64));
    sub_245F11700(v5, v6, v13.f32, sqrtf(v7.f32[2] + vaddv_f32(*v7.f32)), sqrtf(v8.f32[2] + vaddv_f32(*v8.f32)));
    result = objc_msgSend_mslEnabled(*(a1 + 80), v9, v10);
    if (result)
    {
      return objc_msgSend_logHostDeviceMotionQuaternion_rotationRate_acceleration_timestamp_(*(a1 + 80), v11, v12, *(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 88));
    }
  }

  return result;
}

uint64_t sub_245F27870(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(objc_msgSend_handler(*(a1 + 32), a2, a3) + 16);

  return v3();
}

void sub_245F27FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_245E5ADCC(va);
  _Unwind_Resume(a1);
}

void sub_245F2824C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_245E5ADCC(va);
  _Unwind_Resume(a1);
}

void sub_245F28404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_245E5ADCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_245F28838(uint64_t a1, const char *a2)
{
  v49[16] = *MEMORY[0x277D85DE8];
  v48[0] = @"Axis";
  v49[0] = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *(a1 + 104));
  v48[1] = @"MinDeltaGyroBias";
  LODWORD(v3) = *(a1 + 32);
  v49[1] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v4, v5, v3);
  v48[2] = @"MeanDeltaGyroBias";
  LODWORD(v6) = *(a1 + 36);
  v49[2] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v7, v8, v6);
  v48[3] = @"MaxDeltaGyroBias";
  LODWORD(v9) = *(a1 + 40);
  v49[3] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v10, v11, v9);
  v48[4] = @"MinGyroBias";
  LODWORD(v12) = *(a1 + 44);
  v49[4] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v13, v14, v12);
  v48[5] = @"MeanGyroBias";
  LODWORD(v15) = *(a1 + 48);
  v49[5] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v16, v17, v15);
  v48[6] = @"MaxGyroBias";
  LODWORD(v18) = *(a1 + 52);
  v49[6] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v19, v20, v18);
  v48[7] = @"MinGyroBiasTemperature";
  LODWORD(v21) = *(a1 + 56);
  v49[7] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v22, v23, v21);
  v48[8] = @"MeanGyroBiasTemperature";
  LODWORD(v24) = *(a1 + 60);
  v49[8] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v25, v26, v24);
  v48[9] = @"MaxGyroBiasTemperature";
  LODWORD(v27) = *(a1 + 64);
  v49[9] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v28, v29, v27);
  v48[10] = @"MinGyroTemperature";
  LODWORD(v30) = *(a1 + 68);
  v49[10] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v31, v32, v30);
  v48[11] = @"MeanGyroTemperature";
  LODWORD(v33) = *(a1 + 72);
  v49[11] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v34, v35, v33);
  v48[12] = @"MaxGyroTemperature";
  LODWORD(v36) = *(a1 + 76);
  v49[12] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v37, v38, v36);
  v48[13] = @"MinTimeBetweenGyroBiasUpdates";
  v49[13] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v39, *(a1 + 80));
  v48[14] = @"MeanTimeBetweenGyroBiasUpdates";
  v49[14] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v40, *(a1 + 88));
  v48[15] = @"MaxTimeBetweenGyroBiasUpdates";
  v49[15] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v41, *(a1 + 96));
  v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v49, v48, 16);
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v44 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
  {
    v46 = 138477827;
    v47 = v43;
    _os_log_impl(&dword_245D80000, v44, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilFusion]:[sendPencilGyroBiasAxisStatistics]: \n%{private}@", &v46, 0xCu);
  }

  return v43;
}

uint64_t sub_245F28B7C(unsigned int *a1, const char *a2)
{
  v55[16] = *MEMORY[0x277D85DE8];
  v54[0] = @"ContactCondition";
  v55[0] = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, a1[8]);
  v54[1] = @"MinAzimuth";
  LODWORD(v3) = a1[9];
  v55[1] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v4, v5, v3);
  v54[2] = @"MeanAzimuth";
  LODWORD(v6) = a1[10];
  v55[2] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v7, v8, v6);
  v54[3] = @"MaxAzimuth";
  LODWORD(v9) = a1[11];
  v55[3] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v10, v11, v9);
  v54[4] = @"MinTilt";
  LODWORD(v12) = a1[12];
  v55[4] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v13, v14, v12);
  v54[5] = @"MeanTilt";
  LODWORD(v15) = a1[13];
  v55[5] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v16, v17, v15);
  v54[6] = @"MaxTilt";
  LODWORD(v18) = a1[14];
  v55[6] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v19, v20, v18);
  v54[7] = @"MinGyroNorm";
  LODWORD(v21) = a1[15];
  v55[7] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v22, v23, v21);
  v54[8] = @"MeanGyroNorm";
  LODWORD(v24) = a1[16];
  v55[8] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v25, v26, v24);
  v54[9] = @"MaxGyroNorm";
  LODWORD(v27) = a1[17];
  v55[9] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v28, v29, v27);
  v54[10] = @"MinGyroShaftAxisNorm";
  LODWORD(v30) = a1[18];
  v55[10] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v31, v32, v30);
  v54[11] = @"MeanGyroShaftAxisNorm";
  LODWORD(v33) = a1[19];
  v55[11] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v34, v35, v33);
  v54[12] = @"MaxGyroShaftAxisNorm";
  LODWORD(v36) = a1[20];
  v55[12] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v37, v38, v36);
  v54[13] = @"MinUserAccelNorm";
  LODWORD(v39) = a1[21];
  v55[13] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v40, v41, v39);
  v54[14] = @"MeanUserAccelNorm";
  LODWORD(v42) = a1[22];
  v55[14] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v43, v44, v42);
  v54[15] = @"MaxUserAccelNorm";
  LODWORD(v45) = a1[23];
  v55[15] = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v46, v47, v45);
  v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v48, v55, v54, 16);
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v50 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
  {
    v52 = 138477827;
    v53 = v49;
    _os_log_impl(&dword_245D80000, v50, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilFusion]:[sendPencilSensorContactTypeStatistics]: \n%{private}@", &v52, 0xCu);
  }

  return v49;
}

uint64_t sub_245F28EB8(void *a1, const char *a2)
{
  v21[12] = *MEMORY[0x277D85DE8];
  v20[0] = @"MinAuxToRingSensorLatency";
  v21[0] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], a2, a1[4]);
  v20[1] = @"MeanAuxToRingSensorLatency";
  v21[1] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v3, a1[5]);
  v20[2] = @"MaxAuxToRingSensorLatency";
  v21[2] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v4, a1[6]);
  v20[3] = @"MinPencilIMUSamplePeriod";
  v21[3] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v5, a1[7]);
  v20[4] = @"MeanPencilIMUSamplePeriod";
  v21[4] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v6, a1[8]);
  v20[5] = @"MaxPencilIMUSamplePeriod";
  v21[5] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v7, a1[9]);
  v20[6] = @"MinSourceIMUSamplePeriod";
  v21[6] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v8, a1[10]);
  v20[7] = @"MeanSourceIMUSamplePeriod";
  v21[7] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v9, a1[11]);
  v20[8] = @"MaxSourceIMUSamplePeriod";
  v21[8] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v10, a1[12]);
  v20[9] = @"MinRingSensorSamplePeriod";
  v21[9] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v11, a1[13]);
  v20[10] = @"MeanRingSensorSamplePeriod";
  v21[10] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v12, a1[14]);
  v20[11] = @"MaxRingSensorSamplePeriod";
  v21[11] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v13, a1[15]);
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v21, v20, 12);
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v16 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138477827;
    v19 = v15;
    _os_log_impl(&dword_245D80000, v16, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilFusion]:[sendPencilTimingStatistics]: \n%{private}@", &v18, 0xCu);
  }

  return v15;
}

void *sub_245F291A0(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_245F12848((v2 + 835));
    sub_245F128C8(v2 + 773);
    sub_245F12B1C(v2 + 702);
    sub_245F12B1C(v2 + 696);
    sub_245F12B1C(v2 + 538);
    sub_245F12B1C(v2 + 532);

    JUMPOUT(0x24C194490);
  }

  return result;
}

os_log_t sub_245F29240()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

void sub_245F2929C(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x24C194490);
}

void sub_245F29380(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_245F293BC(uint64_t a1, unint64_t *a2, int *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = *a2;
  v9 = objc_autoreleasePoolPush();
  Weak = objc_loadWeak((a1 + 8));
  v11 = v8;
  LODWORD(v11) = v4;
  LODWORD(v12) = v6;
  LODWORD(v13) = v7;
  objc_msgSend_updateEstimationsWithRealValuesWithQuaternion_timestamp_(Weak, v14, v15, v11, COERCE_DOUBLE(v5 | 0x3EB0C6F700000000), v12, v13, v8 * 0.000001);

  objc_autoreleasePoolPop(v9);
}

uint64_t sub_245F29448(uint64_t a1, uint64_t a2)
{
  if (sub_245E4E264(a2, &unk_2858D7340))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_245F29B80(unsigned int *a1)
{
  v1 = a1;
  v97 = *MEMORY[0x277D85DE8];
  v2 = a1[18];
  if (v2 > 1)
  {
    switch(v2)
    {
      case 4:
        v3 = 2;
        break;
      case 3:
        v3 = 6;
        break;
      case 2:
        v3 = 5;
        break;
      default:
LABEL_45:
        if ((a1[17] & 1) == 0)
        {
          if (qword_27EE374E0 != -1)
          {
            dispatch_once(&qword_27EE374E0, &unk_2858D7350);
          }

          v77 = off_27EE374E8;
          if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = &unk_245F3EE63;
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *&buf[28] = 2081;
            *&buf[30] = "!estimatorPosition.isConverged && revokeReason != CMAPositionRevokeReasonUnknown";
            _os_log_impl(&dword_245D80000, v77, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:If not converged, there must be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
            if (qword_27EE374E0 != -1)
            {
              dispatch_once(&qword_27EE374E0, &unk_2858D7350);
            }
          }

          v78 = off_27EE374E8;
          if (os_signpost_enabled(off_27EE374E8))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = &unk_245F3EE63;
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *&buf[28] = 2081;
            *&buf[30] = "!estimatorPosition.isConverged && revokeReason != CMAPositionRevokeReasonUnknown";
            _os_signpost_emit_with_name_impl(&dword_245D80000, v78, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "If not converged, there must be a revoke reason", "{msg%{public}.0s:If not converged, there must be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
            if (qword_27EE374E0 != -1)
            {
              dispatch_once(&qword_27EE374E0, &unk_2858D7350);
            }
          }

          v1 = off_27EE374E8;
          if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = &unk_245F3EE63;
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *&buf[28] = 2081;
            *&buf[30] = "!estimatorPosition.isConverged && revokeReason != CMAPositionRevokeReasonUnknown";
            _os_log_impl(&dword_245D80000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:If not converged, there must be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Framework/CoreMotionAlgorithms/PrecisionFinding/CMAPrecisionFindingManager.mm", 156, "[CMAPrecisionFindingManager updateDeviceMotion:]_block_invoke");
          goto LABEL_23;
        }

        goto LABEL_12;
    }

LABEL_11:
    if ((a1[17] & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_12:
    if (qword_27EE374E0 != -1)
    {
      dispatch_once(&qword_27EE374E0, &unk_2858D7350);
    }

    v4 = off_27EE374E8;
    if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = &unk_245F3EE63;
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "revokeReason == CMAPositionRevokeReasonNotRevoked";
      _os_log_impl(&dword_245D80000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:If converged, there must not be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_27EE374E0 != -1)
      {
        dispatch_once(&qword_27EE374E0, &unk_2858D7350);
      }
    }

    v5 = off_27EE374E8;
    if (os_signpost_enabled(off_27EE374E8))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = &unk_245F3EE63;
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "revokeReason == CMAPositionRevokeReasonNotRevoked";
      _os_signpost_emit_with_name_impl(&dword_245D80000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "If converged, there must not be a revoke reason", "{msg%{public}.0s:If converged, there must not be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_27EE374E0 != -1)
      {
        dispatch_once(&qword_27EE374E0, &unk_2858D7350);
      }
    }

    v1 = off_27EE374E8;
    if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = &unk_245F3EE63;
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "revokeReason == CMAPositionRevokeReasonNotRevoked";
      _os_log_impl(&dword_245D80000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:If converged, there must not be a revoke reason, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Framework/CoreMotionAlgorithms/PrecisionFinding/CMAPrecisionFindingManager.mm", 154, "[CMAPrecisionFindingManager updateDeviceMotion:]_block_invoke");
    goto LABEL_23;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_45;
    }

    v3 = 4;
    goto LABEL_11;
  }

LABEL_23:
  v3 = 1;
LABEL_24:
  v6 = objc_opt_new();
  v8 = v6;
  if (*(v1 + 68))
  {
    objc_msgSend_setConvergenceStatus_(v6, v7, 2);
  }

  else
  {
    objc_msgSend_setConvergenceStatus_(v6, v7, 1);
  }

  objc_msgSend_setRevokeReason_(v8, v9, v3);
  objc_msgSend_setDistance_(v8, v10, v11, *(v1 + 14));
  objc_msgSend_setHorizontalAngle_(v8, v12, v13, *(v1 + 15));
  objc_msgSend_setHorizontalAngleAccuracy_(v8, v14, v15, *(v1 + 16));
  if (*(v1 + 76) == 1)
  {
    v18 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v16, v17, *(v1 + 14));
    objc_msgSend_setHorizontalDistanceNumber_(v8, v19, v18);
  }

  else
  {
    objc_msgSend_setHorizontalDistanceNumber_(v8, v16, 0);
  }

  v22 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v20, v21, *(v1 + 15));
  objc_msgSend_setHorizontalAngleNumber_(v8, v23, v22);
  v26 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, v25, *(v1 + 16));
  objc_msgSend_setHorizontalAngleAccuracyNumber_(v8, v27, v26);
  v30 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v28, v29, *(v1 + 16));
  objc_msgSend_setHorizontalAngleUncertaintyNumber_(v8, v31, v30);
  v33 = *(v1 + 4);
  v34 = *(v33 + 92);
  v35 = *(v33 + 102);
  if (v35)
  {
    objc_msgSend_setVerticalState_(v8, v32, 2);
  }

  else
  {
    objc_msgSend_setVerticalState_(v8, v32, 1);
  }

  v38 = objc_msgSend_delegate(*(v1 + 4), v36, v37);
  objc_msgSend_didUpdatePreciseDevicePosition_withError_(v38, v39, v8, 0);
  v42 = objc_msgSend_analyticsManager(*(v1 + 4), v40, v41);
  objc_msgSend_feedRevokeReason_(v42, v43, v1[18]);
  v79 = *(v1 + 23);
  v44 = *(v1 + 25);
  v80 = *(v1 + 13);
  v47 = objc_msgSend_analyticsManager(*(v1 + 4), v45, v46);
  v48 = v44;
  objc_msgSend_feedEstimatedHeight_(v47, v49, v50, v48);
  v53 = objc_msgSend_analyticsManager(*(v1 + 4), v51, v52);
  objc_msgSend_feedFractionAboveThreshold_(v53, v54, v55, v34);
  v56 = *(v1 + 4);
  *buf = *(v1 + 3);
  *&buf[16] = v56;
  v57 = *(v1 + 6);
  v81[0] = *(v1 + 5);
  v81[1] = v57;
  objc_msgSend_timestamp(*(v1 + 5), v58, v59);
  sub_245F22370(buf, v81, v60);
  if (*(v1 + 15) > 0.0 || *(v1 + 16) > 0.0 || (v76.i64[0] = v79, v76.i64[1] = v80, (vaddvq_s32(vandq_s8(vcgtzq_f32(v76), xmmword_245F33920)) & 0xF) != 0))
  {
    v63 = *(v1 + 4);
    objc_msgSend_timestamp(*(v1 + 5), v61, v62);
    v65 = (v64 * 1000000.0);
    v66 = *(v63 + 22096);
    if (v66 && *(v63 + 22104) + v66 > v65)
    {
      v67 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v67 = OS_LOG_TYPE_DEFAULT;
      *(v63 + 22104) = v65;
    }

    if (qword_27EE374E0 != -1)
    {
      dispatch_once(&qword_27EE374E0, &unk_2858D7350);
    }

    v68 = off_27EE374E8;
    if (os_log_type_enabled(off_27EE374E8, v67))
    {
      objc_msgSend_timestamp(*(v1 + 5), v69, v70);
      v71 = *(v1 + 15);
      v72 = *(v1 + 16);
      v73 = *(v1 + 68);
      v74 = v1[18];
      *buf = 134351616;
      *&buf[4] = v75;
      *&buf[12] = 2050;
      *&buf[14] = v71;
      *&buf[22] = 2050;
      *&buf[24] = v72;
      *&buf[32] = 2050;
      *&buf[34] = *&v79;
      v83 = 2050;
      v84 = *(&v79 + 1);
      v85 = 2050;
      v86 = v48;
      v87 = 2050;
      v88 = *&v80;
      v89 = 2050;
      v90 = *(&v80 + 1);
      v91 = 1026;
      v92 = v73;
      v93 = 1026;
      v94 = v74;
      v95 = 1026;
      v96 = v35 & 1;
      _os_log_impl(&dword_245D80000, v68, v67, "CMAPrecisionFindingManager,timestamp,%{public}f,horizontalAngle,%{public}f,horizontalAngleUncertainty,%{public}f,positionX,%{public}f,positionY,%{public}f,positionZ,%{public}f,velocityX,%{public}f,velocityY,%{public}f,isConverged,%{public}d,revokeReason,%{public}d,verticalState,%{public}d", buf, 0x64u);
    }
  }
}

void sub_245F2A95C(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v5 = objc_msgSend_analyticsManager(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_analyticsDictionary(v5, v6, v7);
  v14 = objc_msgSend_initWithDictionary_(v2, v9, v8);
  v12 = objc_msgSend_delegate(*(a1 + 32), v10, v11);
  objc_msgSend_didUpdateAnalytics_withError_(v12, v13, v14, 0);
}

os_log_t sub_245F2AB64()
{
  result = os_log_create("com.apple.locationd.Motion", "PrecisionFinding");
  off_27EE374E8 = result;
  return result;
}

void sub_245F2AB94()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void sub_245F2AC30(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_245D80000, a2, OS_LOG_TYPE_DEBUG, "MSL config updated from user defaults %@", &v3, 0xCu);
}

void sub_245F2ACC0(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_245D80000, a2, OS_LOG_TYPE_FAULT, "fUserDefaults returned nil for domain: %@", &v3, 0xCu);
}

void sub_245F2AE40(uint64_t a1, void *a2, os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a1 + 39) < 0)
  {
    a2 = *a2;
  }

  v3 = 136446210;
  v4 = a2;
  _os_log_error_impl(&dword_245D80000, log, OS_LOG_TYPE_ERROR, "Unable to create directory at path: %{public}s", &v3, 0xCu);
}

void sub_245F2AEF0()
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE37600 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v0 = qword_27EE375F8;
    if (os_log_type_enabled(qword_27EE375F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v3 = "assert";
      v4 = 2080;
      v5 = "fValid";
      v6 = 2080;
      v7 = "On call to writeItem client should check if the logger was opened";
      _os_log_fault_impl(&dword_245D80000, v0, OS_LOG_TYPE_FAULT, "Event: %s\n Condition: %s\n Message: %s", buf, 0x20u);
      if (qword_27EE37600 != -1)
      {
        dispatch_once(&qword_27EE37600, &unk_2858D1908);
      }
    }

    v1 = qword_27EE375F8;
    if (os_log_type_enabled(qword_27EE375F8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v3 = "assert";
      v4 = 2080;
      v5 = "fValid";
      v6 = 2080;
      v7 = "On call to writeItem client should check if the logger was opened";
      _os_log_impl(&dword_245D80000, v1, OS_LOG_TYPE_INFO, "Event: %s\n Condition: %s\n Message: %s", buf, 0x20u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Framework/MotionSensorLogging/MSLWriterManager.cpp", 69, "writeItem");
LABEL_8:
    dispatch_once(&qword_27EE37600, &unk_2858D1908);
  }
}

void sub_245F2B0C4(unsigned int *a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6EF0);
  }

  v4 = qword_27EE37528;
  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
  {
    v5 = *a1;
    v6 = *a2;
    v7 = 134218240;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_245D80000, v4, OS_LOG_TYPE_FAULT, "Assertion failed: rhs.capacity() == capacity(), file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 70,capacity,%zu,%zu.", &v7, 0x16u);
  }
}

void sub_245F2B1E8()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2B294()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2B340()
{
  if (__cxa_guard_acquire(byte_27EE376A0))
  {
    qword_27EE376A8 = 0x3F80000000000000;
    dword_27EE376B0 = 0;

    __cxa_guard_release(byte_27EE376A0);
  }
}

void sub_245F2B3F0()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2B49C()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2B548()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2B5F4()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2B6A0()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
  {
    sub_245F0F4F8();
    sub_245F0F510(&dword_245D80000, v0, v1, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2B760()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2B80C()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 231,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2B8B8()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
  {
    sub_245F0F4F8();
    sub_245F0F510(&dword_245D80000, v0, v1, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 232,invalid element %zu <= %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2B978()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 186,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2BA24()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  v0 = qword_27EE37528;
  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_245D80000, v0, OS_LOG_TYPE_FAULT, "Assertion failed: i0 < N-Ni+1 && j0 < N-Nj+1, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 302,indices exceed factored matrix size.", v1, 2u);
  }
}

void sub_245F2BAB0()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2BB64()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2BC14()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2BCC4()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2BD74()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2BE24()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2BED4()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F484();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2BF80()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C034()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C0E8()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6F30);
  }

  if (sub_245F0F4E0())
  {
    sub_245F0F4A0();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C1B0()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C25C()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C308()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C3B4()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C460()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104D4();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C50C()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104B8();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C5B8()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104B8();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C664()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104B8();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C710()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104B8();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C7BC()
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    sub_245F104B8();
    sub_245F0F4B4(&dword_245D80000, v0, v1, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", v2, v3, v4, v5);
  }
}

void sub_245F2C868(uint64_t a1)
{
  if (qword_27EE37520 != -1)
  {
    dispatch_once(&qword_27EE37520, &unk_2858D6FA8);
  }

  if (sub_245F0F4E0())
  {
    *v8 = 134218240;
    *&v8[4] = a1;
    *&v8[12] = 2048;
    *&v8[14] = 4;
    sub_245F0F4B4(&dword_245D80000, v2, v3, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
  }
}

void sub_245F2C964()
{
  if (__cxa_guard_acquire(byte_27EE376D0))
  {
    qword_27EE376E0 = 0x3FC90FDB00000000;
    dword_27EE376E8 = 0;

    __cxa_guard_release(byte_27EE376D0);
  }
}

void sub_245F2C9C4()
{
  if (__cxa_guard_acquire(byte_27EE376D8))
  {
    qword_27EE376F0 = 0;
    dword_27EE376EC = -1077342245;

    __cxa_guard_release(byte_27EE376D8);
  }
}

void sub_245F2CA9C()
{
  if (__cxa_guard_acquire(byte_27EE388B8))
  {
    qword_27EE388C0 = 0x3F80000000000000;
    dword_27EE388C8 = 0;
    __cxa_guard_release(byte_27EE388B8);
  }
}

void sub_245F2CB70()
{
  if (__cxa_guard_acquire(byte_27EE388D0))
  {
    qword_27EE388E0 = 0x3F80000000000000;
    dword_27EE388E8 = 0;

    __cxa_guard_release(byte_27EE388D0);
  }
}

void sub_245F2CBD0()
{
  if (__cxa_guard_acquire(byte_27EE388D8))
  {
    qword_27EE388F0 = 0;
    dword_27EE388F8 = 1065353216;

    __cxa_guard_release(byte_27EE388D8);
  }
}

void sub_245F2CC2C(unint64_t a1)
{
  if (__cxa_guard_acquire(byte_27EE38908))
  {
    *&v2 = 6.28318531 / a1;
    dword_27EE38900 = v2;

    __cxa_guard_release(byte_27EE38908);
  }
}

void sub_245F2CCAC()
{
  if (__cxa_guard_acquire(byte_27EE38910))
  {
    dword_27EE38904 = 1032971806;

    __cxa_guard_release(byte_27EE38910);
  }
}

void sub_245F2CCFC()
{
  if (__cxa_guard_acquire(byte_27EE37540))
  {
    __cxa_atexit(nullsub_7, &off_281B31D00, &dword_245D80000);

    __cxa_guard_release(byte_27EE37540);
  }
}

void sub_245F2CD64(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void sub_245F2CD7C(uint64_t a1)
{
  if (__cxa_guard_acquire(byte_27EE37550))
  {
    *&qword_27EE37548 = (1.0 / *(a1 + 48));

    __cxa_guard_release(byte_27EE37550);
  }
}

__n128 sub_245F2CE3C()
{
  if (__cxa_guard_acquire(byte_27EE38920))
  {
    xmmword_27EE38940 = xmmword_245F336F0;
    unk_27EE38950 = 0u;
    xmmword_27EE38960 = xmmword_245F33700;
    unk_27EE38970 = 0u;
    xmmword_27EE38980 = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    xmmword_27EE38990 = _Q0;
    __cxa_guard_release(byte_27EE38920);
  }

  return result;
}

__n128 sub_245F2CE9C()
{
  if (__cxa_guard_acquire(byte_27EE38928))
  {
    xmmword_27EE389A0 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    *algn_27EE389B0 = _Q0;
    unk_27EE389D0 = 0u;
    xmmword_27EE389C0 = xmmword_245F336F0;
    unk_27EE389F0 = 0u;
    xmmword_27EE389E0 = xmmword_245F33710;
    __cxa_guard_release(byte_27EE38928);
  }

  return result;
}

uint64_t PB::TextFormatter::format()
{
  return MEMORY[0x2821A4518]();
}

{
  return MEMORY[0x2821A4520]();
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x2821A4528](this, a2);
}

{
  return MEMORY[0x2821A4540](this, a2);
}

{
  return MEMORY[0x2821A4548](this, a2);
}

{
  return MEMORY[0x2821A4550](this, a2);
}

{
  return MEMORY[0x2821A4558](this, a2);
}

uint64_t PB::Reader::read()
{
  return MEMORY[0x2821A4580]();
}

{
  return MEMORY[0x2821A4588]();
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x2821A45A8](this);
}

{
  return MEMORY[0x2821A45B0](this);
}

{
  return MEMORY[0x2821A45B8](this);
}

{
  return MEMORY[0x2821A45C0](this);
}

uint64_t PB::Writer::write()
{
  return MEMORY[0x2821A45D0]();
}

{
  return MEMORY[0x2821A45D8]();
}

uint64_t PB::Writer::writeSInt(PB::Writer *this)
{
  return MEMORY[0x2821A45F8](this);
}

{
  return MEMORY[0x2821A4600](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7938]();
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