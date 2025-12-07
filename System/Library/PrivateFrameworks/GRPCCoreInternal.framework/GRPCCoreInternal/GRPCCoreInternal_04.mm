unint64_t sub_24DC8022C()
{
  result = qword_27F19F118;
  if (!qword_27F19F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F118);
  }

  return result;
}

unint64_t sub_24DC80280()
{
  result = qword_27F19F120;
  if (!qword_27F19F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F120);
  }

  return result;
}

unint64_t sub_24DC802D4(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_73:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24DCB5504();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_72;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v6 = sub_24DC7FCA0(result, a2, 10);
  v24 = v25;
LABEL_63:

  result = 0;
  if ((v24 & 1) == 0 && (v6 & 0x8000000000000000) == 0)
  {
    return sub_24DCB5964();
  }

  return result;
}

unint64_t sub_24DC8061C()
{
  result = qword_27F19F128;
  if (!qword_27F19F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F128);
  }

  return result;
}

unint64_t sub_24DC80670(uint64_t a1, uint64_t a2)
{
  v2 = sub_24DCB5634();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24DC806C0()
{
  result = qword_27F19F130;
  if (!qword_27F19F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F130);
  }

  return result;
}

unint64_t sub_24DC80718()
{
  result = qword_27F19F138;
  if (!qword_27F19F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F138);
  }

  return result;
}

uint64_t _s13RetryPushbackOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13RetryPushbackOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_24DC807CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC807E8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_24DC80818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1216) = v31;
  *(v8 + 1208) = v30;
  *(v8 + 1200) = v29;
  *(v8 + 1192) = v28;
  *(v8 + 1184) = v27;
  *(v8 + 1176) = v26;
  *(v8 + 1168) = v25;
  *(v8 + 1160) = v24;
  *(v8 + 1152) = v23;
  *(v8 + 1144) = v22;
  *(v8 + 1136) = v21;
  *(v8 + 1128) = a8;
  *(v8 + 1120) = a7;
  *(v8 + 1112) = a6;
  *(v8 + 1104) = a5;
  *(v8 + 1096) = a1;
  *(v8 + 736) = v28;
  *(v8 + 744) = v23;
  *(v8 + 752) = v24;
  *(v8 + 760) = v26;
  *(v8 + 768) = v27;
  *(v8 + 776) = v31;
  *(v8 + 784) = v29;
  *(v8 + 792) = v30;
  v10 = _s15HedgingExecutorVMa(0, v8 + 736);
  *(v8 + 1224) = v10;
  *(v8 + 1232) = *(v10 - 8);
  *(v8 + 1240) = swift_task_alloc();
  *(v8 + 800) = v28;
  *(v8 + 808) = v23;
  *(v8 + 816) = v24;
  *(v8 + 824) = v26;
  *(v8 + 832) = v27;
  *(v8 + 840) = v31;
  *(v8 + 848) = v29;
  *(v8 + 856) = v30;
  v11 = _s13RetryExecutorVMa(0, v8 + 800);
  *(v8 + 1248) = v11;
  *(v8 + 1256) = *(v11 - 8);
  *(v8 + 1264) = swift_task_alloc();
  *(v8 + 1272) = *(v27 - 8);
  *(v8 + 1280) = swift_task_alloc();
  *(v8 + 1288) = *(v26 - 8);
  *(v8 + 1296) = swift_task_alloc();
  *(v8 + 1304) = *(v28 - 8);
  *(v8 + 1312) = swift_task_alloc();
  *(v8 + 864) = v28;
  *(v8 + 872) = v23;
  *(v8 + 880) = v24;
  *(v8 + 888) = v26;
  *(v8 + 896) = v27;
  *(v8 + 904) = v31;
  *(v8 + 912) = v29;
  *(v8 + 920) = v30;
  v12 = _s15OneShotExecutorVMa(0, v8 + 864);
  *(v8 + 1320) = v12;
  *(v8 + 1328) = *(v12 - 8);
  *(v8 + 1336) = swift_task_alloc();
  v13 = sub_24DCB55B4();
  *(v8 + 1344) = v13;
  *(v8 + 1352) = *(v13 - 8);
  *(v8 + 1360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = *a2;
  *(v8 + 1400) = *(a2 + 16);
  *(v8 + 1408) = *a3;
  *(v8 + 1416) = *(a3 + 8);
  *(v8 + 1432) = *(a3 + 24);
  v14 = *(a4 + 80);
  *(v8 + 80) = *(a4 + 64);
  *(v8 + 96) = v14;
  *(v8 + 112) = *(a4 + 96);
  *(v8 + 128) = *(a4 + 112);
  v15 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v15;
  v16 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v16;

  return MEMORY[0x2822009F8](sub_24DC80C74, 0, 0);
}

uint64_t sub_24DC80C74(uint64_t a1)
{
  v102 = v1;
  if (*(v1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v3 = *(v1 + 1360);
    v4 = *(v1 + 1352);
    v5 = *(v1 + 1344);
    sub_24DCB5574();
    sub_24DCB5594();
    (*(v4 + 8))(v3, v5);
    v2 = 0;
  }

  (*(*(v1 + 1352) + 56))(*(v1 + 1376), v2, 1, *(v1 + 1344));
  v6 = *(v1 + 128);
  if (v6 == 255)
  {
    v94 = *(v1 + 1424);
    v96 = *(v1 + 1432);
    v92 = *(v1 + 1408);
    v90 = *(v1 + 1400);
    v29 = *(v1 + 1368);
    v67 = *(v1 + 1376);
    v88 = *(v1 + 1336);
    v70 = *(v1 + 1296);
    v72 = *(v1 + 1312);
    v30 = *(v1 + 1288);
    v31 = *(v1 + 1272);
    v82 = *(v1 + 1216);
    v78 = *(v1 + 1208);
    v74 = *(v1 + 1280);
    v76 = *(v1 + 1200);
    v32 = *(v1 + 1192);
    v33 = *(v1 + 1184);
    v34 = *(v1 + 1176);
    v86 = *(v1 + 1160);
    v84 = *(v1 + 1152);
    v35 = *(v1 + 1128);
    v36 = *(v1 + 1112);
    v37 = *(v1 + 1104);
    v80 = *(v1 + 1384);
    (*(*(v1 + 1304) + 16))();
    sub_24DC81D3C(v67, v29);
    (*(v30 + 16))(v70, v37, v34);
    (*(v31 + 16))(v74, v36, v33);

    *(&v57 + 1) = v76;
    *&v57 = v82;
    sub_24DC882B8(v72, v29, v35, v70, v74, v32, v84, v86, v88, v34, v33, v57, v78);
    *(v1 + 1024) = v80;
    *(v1 + 1040) = v90;
    *(v1 + 928) = v92;
    *(v1 + 944) = v94;
    *(v1 + 952) = v96;
    v38 = *(v1 + 96);
    *(v1 + 200) = *(v1 + 80);
    *(v1 + 216) = v38;
    *(v1 + 232) = *(v1 + 112);
    *(v1 + 248) = *(v1 + 128);
    v39 = *(v1 + 32);
    *(v1 + 136) = *(v1 + 16);
    *(v1 + 152) = v39;
    v40 = *(v1 + 64);
    *(v1 + 168) = *(v1 + 48);
    *(v1 + 184) = v40;
    v41 = swift_task_alloc();
    *(v1 + 1472) = v41;
    *v41 = v1;
    v41[1] = sub_24DC815E0;
    v42 = *(v1 + 1320);
    v43 = *(v1 + 1168);
    v44 = *(v1 + 1144);
    v45 = *(v1 + 1136);
    v46 = *(v1 + 1096);

    return sub_24DC88428(v46, v1 + 1024, v1 + 928, v1 + 136, v45, v44, v42, v43);
  }

  else
  {
    v7 = *(v1 + 72);
    v63 = *(v1 + 80);
    v64 = *(v1 + 88);
    v65 = *(v1 + 96);
    v8 = *(v1 + 112);
    v61 = *(v1 + 120);
    (*(*(v1 + 1304) + 16))(*(v1 + 1312), *(v1 + 1120), *(v1 + 1192));
    v93 = *(v1 + 1424);
    v95 = *(v1 + 1432);
    v89 = *(v1 + 1408);
    v91 = *(v1 + 1416);
    v85 = *(v1 + 1392);
    v87 = *(v1 + 1400);
    v9 = *(v1 + 1376);
    v10 = *(v1 + 1368);
    v11 = *(v1 + 1296);
    v12 = *(v1 + 1288);
    v81 = *(v1 + 1280);
    v83 = *(v1 + 1384);
    v13 = *(v1 + 1272);
    v66 = *(v1 + 1208);
    v68 = *(v1 + 1200);
    v77 = *(v1 + 1192);
    v79 = *(v1 + 1312);
    v14 = *(v1 + 1184);
    v15 = *(v1 + 1176);
    v69 = *(v1 + 1160);
    v71 = *(v1 + 1152);
    v73 = *(v1 + 1216);
    v75 = *(v1 + 1128);
    v16 = *(v1 + 1112);
    v17 = *(v1 + 1104);
    if (v6)
    {
      v62 = *(v1 + 1240);
      *&v97 = v7;
      *(&v97 + 1) = v63;
      v98 = v64;
      *&v99 = v65;
      v18 = v10;
      sub_24DC81D3C(v9, v10);
      (*(v12 + 16))(v11, v17, v15);
      (*(v13 + 16))(v81, v16, v14);

      sub_24DC568C0(v1 + 16, v1 + 256);
      *(&v58 + 1) = v68;
      *&v58 = v73;
      sub_24DC499FC(v79, &v97, v18, v75, v11, v81, 64, v77, v62, v71, v69, v15, v14, v58, v66);
      *(v1 + 1048) = v83;
      *(v1 + 1056) = v85;
      *(v1 + 1064) = v87;
      *(v1 + 960) = v89;
      *(v1 + 968) = v91;
      *(v1 + 976) = v93;
      *(v1 + 984) = v95;
      v19 = *(v1 + 96);
      *(v1 + 440) = *(v1 + 80);
      *(v1 + 456) = v19;
      *(v1 + 472) = *(v1 + 112);
      *(v1 + 488) = *(v1 + 128);
      v20 = *(v1 + 32);
      *(v1 + 376) = *(v1 + 16);
      *(v1 + 392) = v20;
      v21 = *(v1 + 64);
      *(v1 + 408) = *(v1 + 48);
      *(v1 + 424) = v21;
      v22 = swift_task_alloc();
      *(v1 + 1456) = v22;
      *v22 = v1;
      v22[1] = sub_24DC814CC;
      v23 = *(v1 + 1224);
      v24 = *(v1 + 1168);
      v25 = *(v1 + 1144);
      v26 = *(v1 + 1136);
      v27 = *(v1 + 1096);

      return sub_24DC49C04(v27, v1 + 1048, (v1 + 960), v1 + 376, v26, v25, v23, v24);
    }

    else
    {
      v60 = *(v1 + 1264);
      *&v97 = v7;
      *(&v97 + 1) = v63;
      v98 = v64;
      v99 = v65;
      v100 = v8;
      v101 = v61;
      v47 = v10;
      sub_24DC81D3C(v9, v10);
      (*(v12 + 16))(v11, v17, v15);
      (*(v13 + 16))(v81, v16, v14);

      sub_24DC568C0(v1 + 16, v1 + 496);
      *(&v59 + 1) = v68;
      *&v59 = v73;
      sub_24DCAE904(v79, &v97, v47, v75, v11, v81, 64, v77, v60, v71, v69, v15, v14, v59, v66);
      *(v1 + 1072) = v83;
      *(v1 + 1080) = v85;
      *(v1 + 1088) = v87;
      *(v1 + 992) = v89;
      *(v1 + 1000) = v91;
      *(v1 + 1008) = v93;
      *(v1 + 1016) = v95;
      v48 = *(v1 + 96);
      *(v1 + 680) = *(v1 + 80);
      *(v1 + 696) = v48;
      *(v1 + 712) = *(v1 + 112);
      *(v1 + 728) = *(v1 + 128);
      v49 = *(v1 + 32);
      *(v1 + 616) = *(v1 + 16);
      *(v1 + 632) = v49;
      v50 = *(v1 + 64);
      *(v1 + 648) = *(v1 + 48);
      *(v1 + 664) = v50;
      v51 = swift_task_alloc();
      *(v1 + 1440) = v51;
      *v51 = v1;
      v51[1] = sub_24DC813B8;
      v52 = *(v1 + 1248);
      v53 = *(v1 + 1168);
      v54 = *(v1 + 1144);
      v55 = *(v1 + 1136);
      v56 = *(v1 + 1096);

      return sub_24DCAEAAC(v56, v1 + 1072, (v1 + 992), v1 + 616, v55, v54, v52, v53);
    }
  }
}

uint64_t sub_24DC813B8()
{
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v2 = sub_24DC81B24;
  }

  else
  {
    v2 = sub_24DC81800;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC814CC()
{
  *(*v1 + 1464) = v0;

  if (v0)
  {
    v2 = sub_24DC81C30;
  }

  else
  {
    v2 = sub_24DC8190C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC815E0()
{
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v2 = sub_24DC81A18;
  }

  else
  {
    v2 = sub_24DC816F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC816F4()
{
  v1 = v0[172];
  (*(v0[166] + 8))(v0[167], v0[165]);
  sub_24DC81DAC(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24DC81800()
{
  v1 = v0[172];
  (*(v0[157] + 8))(v0[158], v0[156]);
  sub_24DC81DAC(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24DC8190C()
{
  v1 = v0[172];
  (*(v0[154] + 8))(v0[155], v0[153]);
  sub_24DC81DAC(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24DC81A18()
{
  v1 = v0[172];
  (*(v0[166] + 8))(v0[167], v0[165]);
  sub_24DC81DAC(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24DC81B24()
{
  v1 = v0[172];
  (*(v0[157] + 8))(v0[158], v0[156]);
  sub_24DC81DAC(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24DC81C30()
{
  v1 = v0[172];
  (*(v0[154] + 8))(v0[155], v0[153]);
  sub_24DC81DAC(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24DC81D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DC81DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DC81E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v14;
  *(v8 + 296) = v13;
  *(v8 + 280) = v12;
  *(v8 + 264) = v11;
  *(v8 + 248) = v10;
  *(v8 + 232) = a7;
  *(v8 + 240) = a8;
  *(v8 + 216) = a5;
  *(v8 + 224) = a6;
  *(v8 + 200) = a2;
  *(v8 + 208) = a3;
  *(v8 + 192) = a1;
  *(v8 + 320) = *a4;
  *(v8 + 336) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_24DC81E80, 0, 0);
}

uint64_t sub_24DC81E80()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  if (*(*(v0 + 240) + 16))
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    *(v0 + 144) = v3;
    *(v0 + 152) = v2;
    *(v0 + 160) = v1;
    v29 = *(v0 + 272);
    v30 = *(v0 + 256);
    v27 = *(v0 + 304);
    v28 = *(v0 + 288);
    v31 = *(v0 + 224);
    v8 = *v5;
    v7 = v5[1];
    v9 = v5[3];
    *(v0 + 48) = v5[2];
    *(v0 + 64) = v9;
    *(v0 + 16) = v8;
    *(v0 + 32) = v7;
    v10 = swift_task_alloc();
    *(v0 + 352) = v10;
    *(v10 + 16) = v30;
    *(v10 + 32) = v29;
    *(v10 + 48) = v28;
    *(v10 + 64) = v27;
    *(v10 + 80) = v6;
    *(v10 + 88) = v31;
    *(v10 + 104) = v4;
    v11 = swift_task_alloc();
    *(v0 + 360) = v11;
    *v11 = v0;
    v11[1] = sub_24DC82194;
    v12 = *(v0 + 240);
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);

    return sub_24DC825D4(v13, v14, v0 + 144, v0 + 16, v12, 0, &unk_24DCBBBC0, v10);
  }

  else
  {
    v16 = *(v0 + 208);
    *(v0 + 168) = v3;
    *(v0 + 176) = v2;
    *(v0 + 184) = v1;
    v17 = v16[3];
    v19 = *v16;
    v18 = v16[1];
    *(v0 + 112) = v16[2];
    *(v0 + 128) = v17;
    *(v0 + 80) = v19;
    *(v0 + 96) = v18;
    v20 = swift_task_alloc();
    *(v0 + 344) = v20;
    *v20 = v0;
    v20[1] = sub_24DC820A0;
    v21 = *(v0 + 248);
    v22 = *(v0 + 224);
    v23 = *(v0 + 232);
    v24 = *(v0 + 216);
    v25 = *(v0 + 192);
    v26 = *(v0 + 200);

    return sub_24DC9335C(v25, v26, v0 + 168, v0 + 80, v24, v22, v23, v21);
  }
}

uint64_t sub_24DC820A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC82194()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC822A4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 16);
  v10 = a4[1];
  *(v8 + 16) = *a4;
  *(v8 + 32) = v10;
  v11 = a4[3];
  *(v8 + 48) = a4[2];
  *(v8 + 64) = v11;
  *(v8 + 80) = *a3;
  *(v8 + 96) = v9;
  v12 = swift_task_alloc();
  *(v8 + 104) = v12;
  *v12 = v8;
  v12[1] = sub_24DC823C4;

  return sub_24DC9335C(a1, a2, v8 + 80, v8 + 16, a5, a6, a7, a8);
}

uint64_t sub_24DC823C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC824B8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v9 = v4[10];
  v10 = v4[11];
  v12 = v4[12];
  v11 = v4[13];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_24DC2FD00;

  return sub_24DC822A4(a1, a2, a3, a4, v9, v10, v12, v11);
}

uint64_t sub_24DC825D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 424) = v10;
  *(v8 + 432) = v11;
  *(v8 + 408) = a7;
  *(v8 + 416) = a8;
  *(v8 + 392) = a5;
  *(v8 + 400) = a6;
  *(v8 + 376) = a2;
  *(v8 + 384) = a4;
  *(v8 + 368) = a1;
  *(v8 + 440) = *a3;
  *(v8 + 456) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_24DC82620, 0, 0);
}

void sub_24DC82620()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v2 + 16);
  if (v3 == v1)
  {
    v4 = *(v0 + 408);
    v5 = *(v0 + 384);
    *(v0 + 328) = *(v0 + 440);
    *(v0 + 336) = *(v0 + 448);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[3];
    *(v0 + 112) = v5[2];
    *(v0 + 128) = v8;
    *(v0 + 80) = v6;
    *(v0 + 96) = v7;
    v24 = (v4 + *v4);
    v9 = swift_task_alloc();
    *(v0 + 488) = v9;
    *v9 = v0;
    v9[1] = sub_24DC82AA0;
    v10 = *(v0 + 368);
    v11 = *(v0 + 376);

    v24(v10, v11, v0 + 328, v0 + 80);
  }

  else
  {
    if (v3 > v1)
    {
      v12 = *(v0 + 456);
      v14 = *(v0 + 376);
      v13 = *(v0 + 384);
      v15 = v1 + 1;
      v22 = *(v0 + 440);
      v23 = *(v0 + 424);
      v25 = *(v0 + 408);
      sub_24DC5B208(v2 + 40 * v1 + 32, v0 + 144);
      v16 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      *(v0 + 304) = v22;
      *(v0 + 320) = v12;
      v17 = v13[3];
      v19 = *v13;
      v18 = v13[1];
      *(v0 + 48) = v13[2];
      *(v0 + 64) = v17;
      *(v0 + 16) = v19;
      *(v0 + 32) = v18;
      v20 = swift_task_alloc();
      *(v0 + 464) = v20;
      *(v20 + 16) = v23;
      *(v20 + 32) = v14;
      *(v20 + 40) = v2;
      *(v20 + 48) = v15;
      *(v20 + 56) = v25;
      v26 = *(v16 + 8) + **(v16 + 8);
      v21 = swift_task_alloc();
      *(v0 + 472) = v21;
      *v21 = v0;
      v21[1] = sub_24DC82924;

      __asm { BRAA            X8, X16 }
    }

    __break(1u);
  }
}

uint64_t sub_24DC82924()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_24DC82B94;
  }

  else
  {

    v2 = sub_24DC82A40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC82A40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC82AA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC82B94()
{
  v29 = v0;
  v1 = *(v0 + 480);

  *(v0 + 352) = v1;
  MEMORY[0x2530363C0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 480);
  if (v2)
  {
    v4 = *(v0 + 368);
    MEMORY[0x2530363B0](*(v0 + 480));
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    v26.n128_u8[0] = *(v0 + 184);
    v26.n128_u64[1] = v5;
    *&v27 = v6;
    *(&v27 + 1) = v7;
    v28 = v8;

    MEMORY[0x2530363C0](v8);
    nullsub_1();
    StreamingClientResponse.init(of:error:)(&v26, v4);

    MEMORY[0x2530363B0](v8);
    v9 = *(v0 + 352);
  }

  else
  {
    MEMORY[0x2530363B0](*(v0 + 352));
    *(v0 + 360) = v3;
    MEMORY[0x2530363C0](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F108, qword_24DCBB788);
    v10 = swift_dynamicCast();
    v11 = *(v0 + 480);
    v12 = *(v0 + 368);
    if (v10)
    {
      MEMORY[0x2530363B0](*(v0 + 480));
      sub_24DC5B2AC((v0 + 224), v0 + 264);
      v13 = *(v0 + 288);
      v14 = *(v0 + 296);
      v15 = __swift_project_boxed_opaque_existential_1((v0 + 264), v13);
      v16 = *(v13 - 8);
      v17 = swift_task_alloc();
      (*(v16 + 16))(v17, v15, v13);
      RPCError.init<A>(_:)(v17, v13, v14, v23);

      v26.n128_u8[0] = v23[0];
      v26.n128_u64[1] = v23[1];
      v27 = v24;
      v28 = v25;
      nullsub_1();
      StreamingClientResponse.init(of:error:)(&v26, v12);
      __swift_destroy_boxed_opaque_existential_1((v0 + 264));
      v9 = *(v0 + 360);
    }

    else
    {
      MEMORY[0x2530363B0](*(v0 + 360));
      v22 = *sub_24DC412F4();
      MEMORY[0x2530363C0](v11);
      sub_24DC31044();
      RPCError.init(code:message:metadata:cause:)(&v22, 0, 0xE000000000000000, v23, v11, &v26);
      v18 = v28;

      MEMORY[0x2530363C0](v18);
      nullsub_1();
      v19 = StreamingClientResponse.init(of:error:)(&v26, v12);
      MEMORY[0x2530363B0](v11, v19);

      v9 = v18;
    }
  }

  MEMORY[0x2530363B0](v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24DC82EC8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a2 + 16);
  v16 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v16;
  v17 = a3[3];
  *(v8 + 48) = a3[2];
  *(v8 + 64) = v17;
  *(v8 + 80) = *a2;
  *(v8 + 96) = v15;
  v18 = swift_task_alloc();
  *(v8 + 104) = v18;
  *v18 = v8;
  v18[1] = sub_24DC82FDC;

  return sub_24DC825D4(a1, a4, v8 + 80, v8 + 16, a5, a6, a7, a8);
}

uint64_t sub_24DC82FDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC830D4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[8];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_24DC2FD00;

  return sub_24DC82EC8(a1, a2, a3, v7, v8, v9, v10, v11);
}

Swift::String __swiftcall Metadata.Value.encoded()()
{
  if (v2)
  {
    v10 = v0;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F070, &qword_24DCBBC70);
    v4 = sub_24DC87594(&qword_27F19F140, &qword_27F19F070, &qword_24DCBBC70, MEMORY[0x277D83988]);
    v5 = sub_24DC31E38(&v10, v3, v4);
  }

  else
  {
    v7 = v0;
    v8 = v1;

    v6 = v8;
    v5 = v7;
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_24DC832A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v9 = a1;
    v10 = a2;
    v11 = sub_24DCB57A4();
    a2 = v10;
    v12 = v11;
    a1 = v9;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = a1 + 32;
  v13 = a2 + 32;
  v14 = 1;
  while (1)
  {
    if ((v5 & 1) == 0)
    {
      if ((v8 & 1) != 0 || (v3 != v6 || v4 != v7) && (sub_24DCB57A4() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v15 = *(v3 + 16);
    if (v15 != *(v6 + 16))
    {
      return 0;
    }

    if (v15 && v3 != v6)
    {
      break;
    }

LABEL_21:
    if (v14 == v2)
    {
      return 1;
    }

    v18 = v14 + 1;
    v19 = v24 + 40 * v14;
    v3 = *(v19 + 16);
    v4 = *(v19 + 24);
    v5 = *(v19 + 32);
    v20 = v13 + 40 * v14;
    v6 = *(v20 + 16);
    v7 = *(v20 + 24);
    v8 = *(v20 + 32);
    v21 = *v19 == *v20 && *(v19 + 8) == *(v20 + 8);
    ++v14;
    if (!v21)
    {
      v22 = sub_24DCB57A4();
      result = 0;
      v14 = v18;
      if ((v22 & 1) == 0)
      {
        return result;
      }
    }
  }

  v16 = (v3 + 32);
  v17 = (v6 + 32);
  while (*v16 == *v17)
  {
    ++v16;
    ++v17;
    if (!--v15)
    {
      goto LABEL_21;
    }
  }

  return 0;
}

uint64_t sub_24DC83458(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Metadata.Value.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x253035FF0](1, a2, a3);
    v5 = *(a2 + 16);
    result = MEMORY[0x253035FF0](v5);
    if (v5)
    {
      v7 = a2 + 32;
      do
      {
        ++v7;
        result = sub_24DCB58C4();
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    MEMORY[0x253035FF0](0);

    return sub_24DCB4D44();
  }

  return result;
}

uint64_t Metadata.Value.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_24DCB58A4();
  if (a3)
  {
    MEMORY[0x253035FF0](1);
    v5 = *(a1 + 16);
    MEMORY[0x253035FF0](v5);
    if (v5)
    {
      v6 = a1 + 32;
      do
      {
        ++v6;
        sub_24DCB58C4();
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB4D44();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC83608(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_24DCB58A4();
  Metadata.Value.hash(into:)(v6, v2, v3, v4);
  return sub_24DCB58F4();
}

uint64_t sub_24DC8367C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24DC836AC()
{
  v1 = *(v0 + 16);
  sub_24DC86AA0();
  return v1;
}

uint64_t sub_24DC836F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_24DC83708(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_24DCB57A4(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[2];
    v8 = *(a2 + 16);
    if (a1[4])
    {
      if (*(a2 + 32))
      {
        v9 = *(v7 + 16);
        if (v9 == *(v8 + 16))
        {
          if (v9 && v7 != v8)
          {
            v10 = (v7 + 32);
            v11 = (v8 + 32);
            result = 1;
            while (*v10 == *v11)
            {
              ++v10;
              ++v11;
              if (!--v9)
              {
                return result;
              }
            }

            return 0;
          }

          return 1;
        }
      }
    }

    else if ((*(a2 + 32) & 1) == 0)
    {
      v12 = v7 == v8 && a1[3] == *(a2 + 24);
      if (v12 || (sub_24DCB57A4() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_24DC837F4(uint64_t a1)
{
  sub_24DCB4D44();
  v2 = *(v1 + 16);
  if (*(v1 + 32))
  {
    MEMORY[0x253035FF0](1);
    v3 = *(v2 + 16);
    result = MEMORY[0x253035FF0](v3);
    if (v3)
    {
      v5 = v2 + 32;
      do
      {
        ++v5;
        result = sub_24DCB58C4();
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    MEMORY[0x253035FF0](0);

    return sub_24DCB4D44();
  }

  return result;
}

uint64_t sub_24DC83898()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_24DCB58A4();
  sub_24DCB4D44();
  if (v2)
  {
    MEMORY[0x253035FF0](1);
    v3 = *(v1 + 16);
    MEMORY[0x253035FF0](v3);
    if (v3)
    {
      v4 = v1 + 32;
      do
      {
        ++v4;
        sub_24DCB58C4();
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB4D44();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC83960(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  sub_24DCB58A4();
  sub_24DCB4D44();
  if (v3)
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](*(v2 + 16));
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = v2 + 32;
      do
      {
        ++v5;
        sub_24DCB58C4();
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB4D44();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC83A1C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (v9 = sub_24DCB57A4(), result = 0, (v9 & 1) != 0))
  {
    if (v4)
    {
      if (v7 & 1) != 0 && (sub_24DC83458(v2, v5))
      {
        return 1;
      }
    }

    else if ((v7 & 1) == 0)
    {
      v11 = v2 == v5 && v3 == v6;
      if (v11 || (sub_24DCB57A4() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t Metadata.init<A>(_:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v8 = sub_24DC59F28(sub_24DC87B64, 0, a2, &type metadata for Metadata.KeyValuePair, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a4);
  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a5 = v8;
  return result;
}

Swift::Void __swiftcall Metadata.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 3) >> 1)
  {
    if (*(v3 + 2) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 2);
    }

    v3 = sub_24DC8588C(isUniquelyReferenced_nonNull_native, v5, 0, v3);
  }

  *v1 = v3;
}

Swift::Void __swiftcall Metadata.addString(_:forKey:)(Swift::String _, Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v5 = _._object;
  v6 = _._countAndFlagsBits;
  v7 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24DC8588C(0, *(v7 + 2) + 1, 1, v7);
    *v2 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24DC8588C((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[40 * v10];
  *(v11 + 4) = countAndFlagsBits;
  *(v11 + 5) = object;
  *(v11 + 6) = v6;
  *(v11 + 7) = v5;
  v11[64] = 0;
  *v2 = v7;
}

uint64_t sub_24DC83CF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;

  sub_24DC86AA0();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v11;
  if ((result & 1) == 0)
  {
    result = sub_24DC8588C(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
    *v5 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_24DC8588C((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  v15 = v11 + 40 * v14;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 48) = a1;
  *(v15 + 56) = a2;
  *(v15 + 64) = a3 & 1;
  *v5 = v11;
  return result;
}

Swift::Void __swiftcall Metadata.addBinary(_:forKey:)(Swift::OpaquePointer _, Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v6 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24DC8588C(0, *(v6 + 2) + 1, 1, v6);
    *v2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_24DC8588C((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[40 * v9];
  *(v10 + 4) = countAndFlagsBits;
  *(v10 + 5) = object;
  *(v10 + 6) = _;
  *(v10 + 7) = 0;
  v10[64] = 1;
  *v2 = v6;
}

uint64_t Metadata.add<A>(contentsOf:)(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_24DC59F28(sub_24DC87B64, 0, a2, &type metadata for Metadata.KeyValuePair, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a8);

  return sub_24DC83FB0(v8);
}

uint64_t sub_24DC83F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;

  return sub_24DC86AA0();
}

uint64_t sub_24DC83FB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24DC8588C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Metadata.add(contentsOf:)(GRPCCoreInternal::Metadata contentsOf)
{

  sub_24DC83FB0(v1);
}

Swift::Void __swiftcall Metadata.removeAllValues(forKey:)(Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;

  v4 = sub_24DC86B94(v1, countAndFlagsBits, object);

  v5 = *(*v1 + 16);
  if (v5 < v4)
  {
    __break(1u);
  }

  else
  {

    sub_24DC86F14(v4, v5);
  }
}

Swift::Void __swiftcall Metadata.replaceOrAddString(_:forKey:)(Swift::String _, Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v5 = _._object;
  v6 = _._countAndFlagsBits;

  v7 = sub_24DC86B94(v2, countAndFlagsBits, object);

  v8 = *(*v2 + 16);
  if (v8 < v7)
  {
    __break(1u);
  }

  else
  {
    sub_24DC86F14(v7, v8);
    v7 = *v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v7 = sub_24DC8588C(0, *(v7 + 16) + 1, 1, v7);
  *v2 = v7;
LABEL_3:
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    v7 = sub_24DC8588C((v10 > 1), v11 + 1, 1, v7);
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 40 * v11;
  *(v12 + 32) = countAndFlagsBits;
  *(v12 + 40) = object;
  *(v12 + 48) = v6;
  *(v12 + 56) = v5;
  *(v12 + 64) = 0;
  *v2 = v7;
}

uint64_t sub_24DC8427C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{

  v11 = sub_24DC86B94(v5, a4, a5);

  v12 = *(*v5 + 16);
  if (v12 < v11)
  {
    __break(1u);
  }

  else
  {
    sub_24DC86F14(v11, v12);
    v11 = *v5;

    sub_24DC86AA0();
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v11;
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = sub_24DC8588C(0, *(v11 + 16) + 1, 1, v11);
  v11 = result;
  *v5 = result;
LABEL_3:
  v15 = *(v11 + 16);
  v14 = *(v11 + 24);
  if (v15 >= v14 >> 1)
  {
    result = sub_24DC8588C((v14 > 1), v15 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v15 + 1;
  v16 = v11 + 40 * v15;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3 & 1;
  *v5 = v11;
  return result;
}

Swift::Void __swiftcall Metadata.replaceOrAddBinary(_:forKey:)(Swift::OpaquePointer _, Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;

  v6 = sub_24DC86B94(v2, countAndFlagsBits, object);

  v7 = *(*v2 + 16);
  if (v7 < v6)
  {
    __break(1u);
  }

  else
  {
    sub_24DC86F14(v6, v7);
    v6 = *v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v6 = sub_24DC8588C(0, *(v6 + 16) + 1, 1, v6);
  *v2 = v6;
LABEL_3:
  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_24DC8588C((v9 > 1), v10 + 1, 1, v6);
  }

  *(v6 + 16) = v10 + 1;
  v11 = v6 + 40 * v10;
  *(v11 + 32) = countAndFlagsBits;
  *(v11 + 40) = object;
  *(v11 + 48) = _;
  *(v11 + 56) = 0;
  *(v11 + 64) = 1;
  *v2 = v6;
}

Swift::Void __swiftcall Metadata.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  if (keepingCapacity)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v4 = *(v3 + 16);

      sub_24DC86F14(0, v4);
    }

    else
    {
      if (*(v3 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F148, &qword_24DCBBC78);
        v5 = swift_allocObject();
        v6 = _swift_stdlib_malloc_size(v5);
        v5[2] = 0;
        v5[3] = 2 * ((v6 - 32) / 40);
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
      }

      *v1 = v5;
    }
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }
}

uint64_t Metadata.removeAll(where:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  result = sub_24DC85A38(v2, a1);
  if (!v3)
  {
    v5 = *(*v2 + 16);
    if (v5 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_24DC86F14(result, v5);
    }
  }

  return result;
}

uint64_t Metadata.hashValue.getter()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DC868F8(v3, v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC84670()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DC868F8(v3, v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC846C0(uint64_t a1)
{
  v2 = *v1;
  sub_24DCB58A4();
  sub_24DC868F8(v4, v2);
  return sub_24DCB58F4();
}

GRPCCoreInternal::Metadata::Index __swiftcall Metadata.index(before:)(GRPCCoreInternal::Metadata::Index before)
{
  if (__OFSUB__(*before._base, 1))
  {
    __break(1u);
  }

  else
  {
    *v1 = *before._base - 1;
  }

  return before;
}

GRPCCoreInternal::Metadata::Index __swiftcall Metadata.index(after:)(GRPCCoreInternal::Metadata::Index after)
{
  if (__OFADD__(*after._base, 1))
  {
    __break(1u);
  }

  else
  {
    *v1 = *after._base + 1;
  }

  return after;
}

unint64_t *Metadata.subscript.getter@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(*v2 + 16))
  {
    v5 = *v2 + 40 * v4;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v8 = *(v5 + 48);
    v9 = *(v5 + 56);
    v10 = *(v5 + 64);

    result = sub_24DC86AA0();
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC84860@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
LABEL_7:
      *a3 = result;
      return result;
    }

    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
LABEL_6:
      result += a2;
      goto LABEL_7;
    }

    __break(1u);
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC84898@<X0>(uint64_t result@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (result < a3)
  {
    if ((result - a3) >= 0x8000000000000001)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (a3 < result)
  {
    v4 = ~a3 + result;
    if (v4 >= (result ^ 0x8000000000000000))
    {
      v5 = result ^ 0x8000000000000000;
    }

    else
    {
      v5 = ~a3 + result;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if ((result ^ 0x8000000000000000) > v4)
    {
LABEL_10:
      v6 = a3 - result;
      if (a2 <= 0)
      {
        if (v6 >= 1)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      if (v6 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_28;
  }

  v6 = 0;
  if (a2 > 0)
  {
LABEL_16:
    if (v6 < a2)
    {
LABEL_20:
      result = 0;
      v7 = 1;
LABEL_25:
      *a4 = result;
      *(a4 + 8) = v7;
      return result;
    }

LABEL_17:
    v6 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

LABEL_19:
  if (v6 > a2)
  {
    goto LABEL_20;
  }

LABEL_21:
  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    goto LABEL_25;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
  {
LABEL_24:
    v7 = 0;
    result += a2;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24DC8496C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_24DC84984(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t (*sub_24DC849D4(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x21uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = *v2 + 40 * v7;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);
    v11 = *(v8 + 56);
    v12 = *(v8 + 64);
    *v6 = *(v8 + 32);
    *(v6 + 1) = v9;
    *(v6 + 2) = v10;
    *(v6 + 3) = v11;
    *(v6 + 32) = v12;

    sub_24DC86AA0();
    return sub_24DC84AA0;
  }

  __break(1u);
  return result;
}

void sub_24DC84AA0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);

  sub_24DC86FD4(v2, v3, v4);

  free(v1);
}

uint64_t *sub_24DC84AFC@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v4;
    a2[2] = result;
    *a2 = v3;
  }

  return result;
}

uint64_t sub_24DC84B28@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = *(v2 + 16);
}

uint64_t *sub_24DC84B60(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_24DC84B7C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_24DC84B98(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_24DC84BB4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_24DC84BCC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_24DC84BF0()
{
  v1 = sub_24DC85D0C(*v0);

  return v1;
}

uint64_t sub_24DC84C30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = *a3;
  a4[1] = 0;
  a4[2] = result;
  a4[3] = a2;
  return result;
}

void Metadata.Values.Iterator.next()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  if (v1 != v3)
  {
    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v1 >= *(v2 + 16))
      {
        goto LABEL_8;
      }

      v4 = v2 + 32 + 40 * v1;
      v5 = *(v4 + 16);
      v6 = *(v4 + 24);
      v7 = *(v4 + 32);
      v9 = *v4;
      v8 = *(v4 + 8);
      v0[1] = v1 + 1;
      v10 = v0[2];
      v11 = v0[3];

      sub_24DC86AA0();
      LOBYTE(v9) = sub_24DC9D454(v10, v11, v9, v8);

      if ((v9 & 1) == 0)
      {
        sub_24DC86FD4(v5, v6, v7);
        v1 = v0[1];
        if (v1 != v3)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }
}

void sub_24DC84D48(uint64_t a1@<X8>)
{
  Metadata.Values.Iterator.next()();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
}

uint64_t Metadata.Values.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1[2];
  a1[1] = 0;
  a1[2] = v3;
  a1[3] = v2;
}

void sub_24DC84DB8(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v1[2];
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = v3;
}

Swift::String_optional __swiftcall Metadata.StringValues.Iterator.next()()
{
  Metadata.Values.Iterator.next()();
  if (v2 == -1)
  {
LABEL_4:
    v0 = 0;
    v1 = 0;
  }

  else
  {
    while ((v2 & 1) != 0)
    {
      sub_24DC86FE0(v0, v1, v2);
      Metadata.Values.Iterator.next()();
      if (v2 == -1)
      {
        goto LABEL_4;
      }
    }
  }

  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

void sub_24DC84E38(uint64_t *a1@<X8>)
{
  Metadata.Values.Iterator.next()();
  if (v4 == -1)
  {
LABEL_4:
    v2 = 0;
    v3 = 0;
  }

  else
  {
    while ((v4 & 1) != 0)
    {
      sub_24DC86FE0(v2, v3, v4);
      Metadata.Values.Iterator.next()();
      if (v4 == -1)
      {
        goto LABEL_4;
      }
    }
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t *sub_24DC84ECC@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  *a2 = result[2];
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  return result;
}

Swift::OpaquePointer_optional __swiftcall Metadata.BinaryValues.Iterator.next()()
{
  Metadata.Values.Iterator.next()();
  if (v2 == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    v5 = v2;
    if ((v2 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F150, &qword_24DCBBC80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24DCBBC60;
      *(v6 + 32) = *sub_24DC31B40();
      sub_24DC32A98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F158, &qword_24DCBBC88);
      sub_24DC87594(&qword_27F19F160, &qword_27F19F158, &qword_24DCBBC88, MEMORY[0x277D83970]);
      sub_24DCB5484();
      v7 = sub_24DC32250(v3, v4, v9);
      sub_24DC86FE0(v3, v4, v5);
      v3 = v7;
    }
  }

  v8 = v3;
  result.is_nil = v1;
  result.value._rawValue = v8;
  return result;
}

unint64_t sub_24DC85080@<X0>(unint64_t *a1@<X8>)
{
  result = Metadata.BinaryValues.Iterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_24DC850A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

uint64_t sub_24DC850BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1[2];
  a1[1] = 0;
  a1[2] = v3;
  a1[3] = v2;
}

uint64_t sub_24DC85118(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
}

uint64_t sub_24DC85170(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = a3(*v3, v3[1], v3[2]);

  return v4;
}

uint64_t sub_24DC851D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v4;
}

uint64_t sub_24DC85224@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    sub_24DC85750(0, v3, 0);
    result = a1;
    v6 = 0;
    v7 = v20;
    v8 = (a1 + 64);
    v18 = v3;
    v19 = result;
    while (v6 < *(result + 16))
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *v8;

      sub_24DC86AA0();
      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_24DC85750((v14 > 1), v15 + 1, 1);
      }

      ++v6;
      *(v20 + 16) = v15 + 1;
      v16 = v20 + 40 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v10;
      *(v16 + 48) = v11;
      *(v16 + 56) = v12;
      *(v16 + 64) = v13;
      v8 += 40;
      result = v19;
      if (v18 == v6)
      {

        v2 = a2;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_9:
    *v2 = v7;
  }

  return result;
}

void *sub_24DC85370@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_24DC8538C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t Metadata.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return 6109787;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_24DC3B6D8(0, v2, 0);
  v4 = 0;
  v5 = (v1 + 64);
  v17 = v2;
  while (v4 < *(v1 + 16))
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    swift_bridgeObjectRetain_n();
    sub_24DC86AA0();
    v18 = sub_24DCB4DD4();
    v19 = v9;
    MEMORY[0x253035590](8250, 0xE200000000000000);
    sub_24DC86AA0();
    v10 = sub_24DCB4DD4();
    MEMORY[0x253035590](v10);

    result = sub_24DC86FD4(v6, v7, v8);
    v12 = *(v20 + 16);
    v11 = *(v20 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_24DC3B6D8((v11 > 1), v12 + 1, 1);
    }

    ++v4;
    *(v20 + 16) = v12 + 1;
    v13 = v20 + 16 * v12;
    *(v13 + 32) = v18;
    *(v13 + 40) = v19;
    v5 += 40;
    if (v17 == v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE60, &qword_24DCBBC90);
      sub_24DC87594(&qword_27F19F168, &qword_27F19EE60, &qword_24DCBBC90, MEMORY[0x277D83958]);
      v14 = sub_24DCB4D64();
      v16 = v15;

      MEMORY[0x253035590](v14, v16);

      MEMORY[0x253035590](93, 0xE100000000000000);
      return 91;
    }
  }

  __break(1u);
  return result;
}

uint64_t Metadata.Value.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2530356D0](a1, MEMORY[0x277D84B78]);
  }

  return a1;
}

uint64_t sub_24DC85634()
{
  if (v0[2])
  {
    return MEMORY[0x2530356D0](*v0, MEMORY[0x277D84B78]);
  }

  v2 = *v0;

  return v2;
}

uint64_t Metadata.Value.debugDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F070, &qword_24DCBBC70);
  }

  else
  {
  }

  return sub_24DCB4DD4();
}

uint64_t sub_24DC856E4()
{
  if (*(v0 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F070, &qword_24DCBBC70);
  }

  else
  {
  }

  return sub_24DCB4DD4();
}

char *sub_24DC85750(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24DC85770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24DC85770(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F148, &qword_24DCBBC78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24DC8588C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F148, &qword_24DCBBC78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24DC859A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F238, &unk_24DCBC650);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_24DC85A38(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  result = sub_24DC879BC(*a1, a2);
  if (!v2)
  {
    if (v7)
    {
      return *(v5 + 16);
    }

    v46 = a2;
    v8 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v10 = (v5 + 16);
      v9 = *(v5 + 16);
      if (v8 == v9)
      {
        return result;
      }

      v11 = 40 * result + 104;
      v40 = a1;
      while (v8 < v9)
      {
        v49 = v8;
        v48 = result;
        v14 = v5;
        v47 = v11;
        v15 = (v5 + v11);
        v16 = *(v5 + v11 - 32);
        v17 = *(v5 + v11 - 24);
        v18 = *(v5 + v11 - 16);
        v19 = *(v5 + v11 - 8);
        v20 = *v15;

        sub_24DC86AA0();
        LOBYTE(v16) = v46(v16, v17, v18, v19, v20);

        sub_24DC86FD4(v18, v19, v20);
        if (v16)
        {
          result = v48;
          v5 = v14;
          v12 = v49;
          v13 = v47;
        }

        else
        {
          result = v48;
          v12 = v49;
          v5 = v14;
          v13 = v47;
          if (v49 != v48)
          {
            if ((v48 & 0x8000000000000000) != 0)
            {
              goto LABEL_22;
            }

            if (v48 >= *v10)
            {
              goto LABEL_23;
            }

            if (v49 >= *v10)
            {
              goto LABEL_24;
            }

            v21 = 40 * v48;
            v22 = v14 + 32 + 40 * v48;
            v43 = *(v22 + 8);
            v44 = *v22;
            v23 = *(v22 + 16);
            v24 = *(v22 + 24);
            v25 = *(v22 + 32);
            v26 = *(v15 - 3);
            v45 = *(v15 - 4);
            v27 = *(v15 - 2);
            v28 = *(v15 - 1);
            v29 = *(v5 + v47);

            v42 = v24;
            v41 = v25;
            sub_24DC86AA0();

            sub_24DC86AA0();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_24DC86A04(v5);
            }

            v30 = v5 + v21;
            v31 = v5;
            v32 = *(v5 + v21 + 48);
            v33 = *(v30 + 56);
            v34 = *(v30 + 64);
            *(v30 + 32) = v45;
            *(v30 + 40) = v26;
            *(v30 + 48) = v27;
            *(v30 + 56) = v28;
            *(v30 + 64) = v29;

            result = sub_24DC86FD4(v32, v33, v34);
            v12 = v49;
            if (v49 >= *(v31 + 16))
            {
              goto LABEL_25;
            }

            v13 = v47;
            v35 = (v31 + v47);
            v36 = *(v31 + v47 - 16);
            v37 = *(v31 + v47 - 8);
            v38 = *(v31 + v47);
            *(v35 - 4) = v44;
            *(v35 - 3) = v43;
            *(v35 - 2) = v23;
            *(v35 - 1) = v42;
            *v35 = v41;

            v39 = v37;
            v5 = v31;
            sub_24DC86FD4(v36, v39, v38);
            *v40 = v31;
            result = v48;
          }

          ++result;
        }

        v8 = v12 + 1;
        v10 = (v5 + 16);
        v9 = *(v5 + 16);
        v11 = v13 + 40;
        if (v8 == v9)
        {
          return result;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_24DC85D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_24DC859A8(*(a1 + 16), 0);
  v4 = sub_24DC86170(&v6, (v3 + 4), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_24DC85DA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result;
  v13 = a6;
  *&v14 = 0;
  *(&v14 + 1) = a4;
  v15 = a5;
  *&v7 = 0;
  *(&v7 + 1) = a4;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v6 = a6;
    *(v6 + 8) = v7;
    *(v6 + 24) = a5;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a3;
    v11 = a3 - 1;
    while (1)
    {
      v12 = Metadata.BinaryValues.Iterator.next()();
      if (!v12)
      {
        a6 = v13;
        v7 = v14;
        a3 = v9;
        a5 = v15;
        goto LABEL_13;
      }

      *(a2 + 8 * v9) = v12;
      if (v11 == v9)
      {
        break;
      }

      if (__OFADD__(++v9, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a6 = v13;
    v7 = v14;
    a5 = v15;
    a3 = v10;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_24DC85E70(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_15:
    v10 = 0;
    a3 = 0;
LABEL_19:
    *result = a6;
    result[1] = v10;
    result[2] = a4;
    result[3] = a5;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v21 = a3;
    v22 = result;
    v8 = 0;
    v9 = 0;
    v10 = *(a6 + 16);
    v11 = a6 + 64;
    v12 = 1;
    v20 = a6 + 64;
    while (2)
    {
      if (v9 == v10)
      {
        a3 = v8;
LABEL_17:
        result = v22;
        goto LABEL_19;
      }

      v23 = v8;
      v24 = v12;
      v25 = a2;
      v13 = (v11 + 40 * v9);
      while (1)
      {
        if (v9 >= *(a6 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v14 = *(v13 - 2);
        v15 = *(v13 - 1);
        v16 = *v13;
        v18 = *(v13 - 4);
        v17 = *(v13 - 3);

        sub_24DC86AA0();
        v19 = sub_24DC9D454(a4, a5, v18, v17);

        if ((v19 & 1) != 0 && !v16)
        {
          break;
        }

        ++v9;
        result = sub_24DC86FD4(v14, v15, (v19 | v16) & 1);
        v13 += 40;
        if (v10 == v9)
        {
          a3 = v23;
          goto LABEL_17;
        }
      }

      *v25 = v14;
      v25[1] = v15;
      ++v9;
      a3 = v21;
      if (v24 == v21)
      {
        v10 = v9;
        goto LABEL_17;
      }

      a2 = v25 + 2;
      v8 = v24;
      v12 = v24 + 1;
      v11 = v20;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_24DC85FF4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_15:
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a6;
    result[1] = v9;
    result[2] = a4;
    result[3] = a5;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a3;
    v21 = result;
    v7 = 0;
    v8 = 0;
    v9 = *(a6 + 16);
    v10 = a6 + 64;
    v11 = 1;
    v19 = a6 + 64;
    while (2)
    {
      if (v8 == v9)
      {
        a3 = v7;
LABEL_16:
        result = v21;
        goto LABEL_18;
      }

      v22 = v7;
      v23 = v11;
      v24 = a2;
      v12 = (v10 + 40 * v8);
      while (1)
      {
        if (v8 >= *(a6 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v13 = *(v12 - 2);
        v14 = *(v12 - 1);
        v15 = *v12;
        v16 = v8 + 1;
        v17 = *(v12 - 4);
        v18 = *(v12 - 3);

        sub_24DC86AA0();
        LOBYTE(v17) = sub_24DC9D454(a4, a5, v17, v18);

        if (v17)
        {
          break;
        }

        result = sub_24DC86FD4(v13, v14, v15);
        v12 += 40;
        ++v8;
        if (v9 == v16)
        {
          a3 = v22;
          goto LABEL_16;
        }
      }

      *v24 = v13;
      *(v24 + 8) = v14;
      *(v24 + 16) = v15;
      a3 = v20;
      if (v23 == v20)
      {
        v9 = v8 + 1;
        goto LABEL_16;
      }

      a2 = v24 + 24;
      v7 = v23;
      ++v8;
      v11 = v23 + 1;
      v10 = v19;
      if (!__OFADD__(v23, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *sub_24DC86170(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_14:
    *result = a4;
    result[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a4 + 16);
    if (v6)
    {
      v16 = result;
      v8 = 0;
      v9 = 0;
      v10 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        v11 = a2 + v8;
        v12 = *(a4 + v8 + 40);
        v13 = *(a4 + v8 + 48);
        v14 = *(a4 + v8 + 56);
        v15 = *(a4 + v8 + 64);
        *v11 = *(a4 + v8 + 32);
        *(v11 + 8) = v12;
        *(v11 + 16) = v13;
        *(v11 + 24) = v14;
        *(v11 + 32) = v15;
        if (v10 == v9)
        {

          sub_24DC86AA0();
          goto LABEL_13;
        }

        result = sub_24DC86AA0();
        ++v9;
        v8 += 40;
        if (v6 == v9)
        {
          v5 = v6;
LABEL_13:
          result = v16;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

    v5 = 0;
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_24DC8627C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);

  v37 = a2;

  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3 + 64;
    v32 = MEMORY[0x277D84F90] + 32;
    while (1)
    {
      v33 = v9;
      v35 = v7;
      v11 = (v10 + 40 * v8);
      while (1)
      {
        if (v8 >= *(a3 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v12 = *(v11 - 2);
        v13 = *(v11 - 1);
        v14 = *v11;
        v15 = v8 + 1;
        v17 = *(v11 - 4);
        v16 = *(v11 - 3);

        sub_24DC86AA0();
        LOBYTE(v17) = sub_24DC9D454(a1, v37, v17, v16);

        if (v17)
        {
          break;
        }

        result = sub_24DC86FD4(v12, v13, v14);
        v11 += 40;
        ++v8;
        if (v5 == v15)
        {
          v9 = v33;
          v7 = v35;
          goto LABEL_28;
        }
      }

      v18 = v33;
      if (v33)
      {
        v7 = v35;
      }

      else
      {
        v19 = v35[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F230, &qword_24DCBC648);
        v7 = swift_allocObject();
        v22 = (_swift_stdlib_malloc_size(v7) - 32) / 24;
        v7[2] = v21;
        v7[3] = 2 * v22;
        v23 = (v7 + 4);
        v24 = v35[3] >> 1;
        v25 = 3 * v24;
        if (v35[2])
        {
          if (v7 != v35 || v23 >= &v35[v25 + 4])
          {
            v34 = v22;
            memmove(v7 + 4, v35 + 4, 24 * v24);
            v23 = (v7 + 4);
            v22 = v34;
          }

          v35[2] = 0;
        }

        v32 = v23 + v25 * 8;
        v18 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
      }

      v27 = __OFSUB__(v18, 1);
      v9 = v18 - 1;
      v10 = a3 + 64;
      if (v27)
      {
        break;
      }

      *v32 = v12;
      *(v32 + 8) = v13;
      *(v32 + 16) = v14;
      v32 += 24;
      if (v5 - 1 == v8++)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = 0;
LABEL_28:

  v29 = v7[3];
  if (v29 < 2)
  {
    return v7;
  }

  v30 = v29 >> 1;
  v27 = __OFSUB__(v30, v9);
  v31 = v30 - v9;
  if (!v27)
  {
    v7[2] = v31;
    return v7;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *sub_24DC864F4(uint64_t a1, unint64_t a2, uint64_t a3)
{

  v6 = *(a3 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3 + 64;
    v11 = MEMORY[0x277D84F90] + 32;
    while (1)
    {
      v35 = v11;
      v36 = v9;
      v37 = v7;
      v12 = (v10 + 40 * v8);
      while (1)
      {
        if (v8 >= *(a3 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v13 = *(v12 - 2);
        v14 = *(v12 - 1);
        v15 = *v12;
        v17 = *(v12 - 4);
        v16 = *(v12 - 3);

        sub_24DC86AA0();
        v18 = sub_24DC9D454(a1, a2, v17, v16);

        if ((v18 & 1) != 0 && !v15)
        {
          break;
        }

        ++v8;
        result = sub_24DC86FD4(v13, v14, (v18 | v15) & 1);
        v12 += 40;
        if (v6 == v8)
        {
          v9 = v36;
          v7 = v37;
          goto LABEL_29;
        }
      }

      if (v36)
      {
        v7 = v37;
        v9 = v36 - 1;
        if (__OFSUB__(v36, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v19 = v37[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EEB0, &qword_24DCB8D40);
        v7 = swift_allocObject();
        v22 = _swift_stdlib_malloc_size(v7);
        v23 = v22 - 32;
        if (v22 < 32)
        {
          v23 = v22 - 17;
        }

        v24 = v23 >> 4;
        v7[2] = v21;
        v7[3] = 2 * (v23 >> 4);
        v25 = (v7 + 4);
        v26 = v37[3] >> 1;
        if (v37[2])
        {
          v27 = v37 + 4;
          if (v7 != v37 || v25 >= v27 + 16 * v26)
          {
            v28 = v23 >> 4;
            memmove(v7 + 4, v27, 16 * v26);
            v24 = v28;
          }

          v37[2] = 0;
        }

        v35 = (v25 + 16 * v26);
        v29 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;

        v30 = __OFSUB__(v29, 1);
        v9 = v29 - 1;
        if (v30)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      *v35 = v13;
      v35[1] = v14;
      v11 = (v35 + 2);
      v31 = v6 - 1 == v8++;
      v10 = a3 + 64;
      if (v31)
      {
        goto LABEL_29;
      }
    }
  }

  v9 = 0;
LABEL_29:

  v32 = v7[3];
  if (v32 < 2)
  {
    return v7;
  }

  v33 = v32 >> 1;
  v30 = __OFSUB__(v33, v9);
  v34 = v33 - v9;
  if (!v30)
  {
    v7[2] = v34;
    return v7;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_24DC8675C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  result = Metadata.BinaryValues.Iterator.next()();
  v4 = MEMORY[0x277D84F90];
  v5 = 0;
  if (result)
  {
    v6 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v5)
      {
        v7 = v4[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = result;
        v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F228, &unk_24DCBC638);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          if (v11 != v4 || v15 >= &v4[v16 + 4])
          {
            memmove(v11 + 4, v4 + 4, 8 * v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + 8 * v16);
        v5 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v4 = v11;
        result = v8;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = result;
      result = Metadata.BinaryValues.Iterator.next()();
      if (!result)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v19 = v4[3];
  if (v19 < 2)
  {
    return v4;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v4[2] = v21;
    return v4;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24DC868F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253035FF0](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = v6 + 40 * v5;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = *(v7 + 32);

      sub_24DC86AA0();
      sub_24DCB4D44();
      if (v10)
      {
        MEMORY[0x253035FF0](1);
        MEMORY[0x253035FF0](*(v8 + 16));
        v11 = *(v8 + 16);
        if (v11)
        {
          v12 = v8 + 32;
          do
          {
            ++v12;
            sub_24DCB58C4();
            --v11;
          }

          while (v11);
        }
      }

      else
      {
        MEMORY[0x253035FF0](0);
        sub_24DCB4D44();
      }

      result = sub_24DC86FD4(v8, v9, v10);
      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_24DC86A18(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (result != a4 || a2 != a5)
      {
        return sub_24DCB57A4();
      }

      return 1;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (!v6 || result == a4)
  {
    return 1;
  }

  v7 = (result + 32);
  v8 = (a4 + 32);
  while (v6)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = *v8++;
    result = v9 == v11;
    if (v9 != v11 || v6-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC86AAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 64); ; i += 40)
  {
    v6 = *(i - 4);
    v7 = *(i - 3);
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;

    sub_24DC86AA0();
    LOBYTE(v6) = sub_24DC9D454(a2, a3, v6, v7);

    sub_24DC86FD4(v8, v9, v10);
    if (v6)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_24DC86B94(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = *a1;
  result = sub_24DC86AAC(*a1, a2, a3);
  v45 = result;
  if (v3)
  {
    return v45;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = (v4 + 16);
    v8 = *(v4 + 16);
    if (v7 == v8)
    {
      return v45;
    }

    v10 = 40 * result + 104;
    while (v7 < v8)
    {
      v44 = v4;
      v11 = (v4 + v10);
      v12 = *(v11 - 4);
      v13 = *(v11 - 3);
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;

      sub_24DC86AA0();
      LOBYTE(v12) = sub_24DC9D454(a2, a3, v12, v13);

      result = sub_24DC86FD4(v14, v15, v16);
      if (v12)
      {
        v4 = v44;
      }

      else
      {
        v17 = v45;
        if (v7 == v45)
        {
          v4 = v44;
        }

        else
        {
          if ((v45 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v45 >= *v9)
          {
            goto LABEL_24;
          }

          if (v7 >= *v9)
          {
            goto LABEL_25;
          }

          v40 = 40 * v45;
          v18 = v44 + 32 + 40 * v45;
          v19 = *(v18 + 8);
          v20 = *(v18 + 16);
          v21 = *(v18 + 24);
          v22 = *(v18 + 32);
          v23 = *(v11 - 3);
          v39 = *(v11 - 4);
          v24 = *(v11 - 2);
          v37 = *v18;
          v38 = *(v11 - 1);
          v4 = v44;
          v25 = *(v44 + v10);

          v35 = v21;
          v34 = v22;
          sub_24DC86AA0();

          sub_24DC86AA0();
          v36 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_24DC86A04(v44);
          }

          v26 = v4 + v40;
          v27 = *(v4 + v40 + 48);
          v28 = *(v4 + v40 + 56);
          v29 = *(v4 + v40 + 64);
          *(v26 + 32) = v39;
          *(v26 + 40) = v23;
          *(v26 + 48) = v24;
          *(v26 + 56) = v38;
          *(v26 + 64) = v25;

          result = sub_24DC86FD4(v27, v28, v29);
          if (v7 >= *(v4 + 16))
          {
            goto LABEL_26;
          }

          v30 = (v4 + v10);
          v31 = *(v4 + v10 - 16);
          v32 = *(v4 + v10 - 8);
          v33 = *(v4 + v10);
          *(v30 - 4) = v37;
          *(v30 - 3) = v36;
          *(v30 - 2) = v20;
          *(v30 - 1) = v35;
          *v30 = v34;

          result = sub_24DC86FD4(v31, v32, v33);
          *a1 = v4;
          v17 = v45;
        }

        v45 = v17 + 1;
      }

      ++v7;
      v9 = (v4 + 16);
      v8 = *(v4 + 16);
      v10 += 40;
      if (v7 == v8)
      {
        return v45;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24DC86E40(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = v13 + 40 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_24DC86F14(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_24DC8588C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_24DC86E40(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_24DC86FE0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24DC86FD4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_24DC86FFC()
{
  result = qword_27F19F170;
  if (!qword_27F19F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F170);
  }

  return result;
}

unint64_t sub_24DC87054()
{
  result = qword_27F19F178;
  if (!qword_27F19F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F178);
  }

  return result;
}

unint64_t sub_24DC870B0()
{
  result = qword_27F19F180;
  if (!qword_27F19F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F180);
  }

  return result;
}

unint64_t sub_24DC87108()
{
  result = qword_27F19F188;
  if (!qword_27F19F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F188);
  }

  return result;
}

unint64_t sub_24DC871A4()
{
  result = qword_27F19F1A0;
  if (!qword_27F19F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F1A0);
  }

  return result;
}

uint64_t sub_24DC87240(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F1B0, &qword_24DCBBE48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DC872BC()
{
  result = qword_27F19F1B8;
  if (!qword_27F19F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F1B8);
  }

  return result;
}

uint64_t sub_24DC87358(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F198, &qword_24DCBBE40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DC8741C()
{
  result = qword_27F19F1D0;
  if (!qword_27F19F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F1D0);
  }

  return result;
}

unint64_t sub_24DC87474()
{
  result = qword_27F19F1D8;
  if (!qword_27F19F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F1D8);
  }

  return result;
}

uint64_t sub_24DC87594(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DC875E0()
{
  result = qword_27F19F200;
  if (!qword_27F19F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F200);
  }

  return result;
}

unint64_t sub_24DC8763C()
{
  result = qword_27F19F208;
  if (!qword_27F19F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F208);
  }

  return result;
}

unint64_t sub_24DC87694()
{
  result = qword_27F19F210;
  if (!qword_27F19F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F210);
  }

  return result;
}

unint64_t sub_24DC876F8()
{
  result = qword_27F19F218;
  if (!qword_27F19F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F218);
  }

  return result;
}

unint64_t sub_24DC87768()
{
  result = qword_27F19F220;
  if (!qword_27F19F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F220);
  }

  return result;
}

uint64_t sub_24DC877E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24DC8782C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24DC878A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DC878E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DC879BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 64); ; i += 40)
  {
    v13 = v2;
    v4 = *(i - 4);
    v5 = *(i - 3);
    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;

    sub_24DC86AA0();
    v9 = a2(v4, v5, v6, v7, v8);

    result = sub_24DC86FD4(v6, v7, v8);
    if (v14)
    {
      break;
    }

    if (v9)
    {
      return v13;
    }

    v2 = v13 + 1;
    if (v11 == v13 + 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC87AE0(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t MethodDescriptor.service.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MethodDescriptor.service.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t MethodDescriptor.method.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MethodDescriptor.method.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_24DC87C9C()
{
  result = qword_27F19F240;
  if (!qword_27F19F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F240);
  }

  return result;
}

GRPCCoreInternal::MethodDescriptor __swiftcall MethodDescriptor.init(service:method:)(GRPCCoreInternal::ServiceDescriptor service, Swift::String method)
{
  v3 = *(service.fullyQualifiedService._countAndFlagsBits + 8);
  *v2 = *service.fullyQualifiedService._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = service.fullyQualifiedService._object;
  v2[3] = method._countAndFlagsBits;
  result.method = method;
  result.service = service;
  return result;
}

GRPCCoreInternal::MethodDescriptor __swiftcall MethodDescriptor.init(fullyQualifiedService:method:)(Swift::String fullyQualifiedService, Swift::String method)
{
  object = method._object;
  countAndFlagsBits = method._countAndFlagsBits;
  v5 = v2;
  v10 = ServiceDescriptor.init(fullyQualifiedService:)(fullyQualifiedService);
  v7 = v10.fullyQualifiedService._object;
  v6 = v10.fullyQualifiedService._countAndFlagsBits;
  *v5 = v11;
  v5[1] = v12;
  v5[2] = countAndFlagsBits;
  v5[3] = object;
  result.method._object = v9;
  result.method._countAndFlagsBits = v8;
  result.service.fullyQualifiedService._object = v7;
  result.service.fullyQualifiedService._countAndFlagsBits = v6;
  return result;
}

uint64_t MethodDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_24DC880F4();
  sub_24DCB4D34();
  return sub_24DCB4D44();
}

uint64_t MethodDescriptor.hashValue.getter()
{
  sub_24DCB58A4();
  sub_24DC880F4();
  sub_24DCB4D34();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC87E38()
{
  sub_24DCB58A4();
  sub_24DC880F4();
  sub_24DCB4D34();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC87EB8(uint64_t a1, uint64_t a2)
{
  sub_24DC880F4();
  sub_24DCB4D34();
  return sub_24DCB4D44();
}

uint64_t sub_24DC87F20(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DC880F4();
  sub_24DCB4D34();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t _s16GRPCCoreInternal16MethodDescriptorV014fullyQualifiedC0SSvg_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24DC87C9C();
  v4 = sub_24DCB5744();
  MEMORY[0x253035590](47, 0xE100000000000000);
  MEMORY[0x253035590](v1, v2);
  return v4;
}

uint64_t _s16GRPCCoreInternal16MethodDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  sub_24DC881B0();

  v6 = sub_24DCB4DA4();

  if (v6)
  {
    if (v2 == v4 && v3 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_24DCB57A4();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_24DC880F4()
{
  result = qword_27F19F248;
  if (!qword_27F19F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F248);
  }

  return result;
}

unint64_t sub_24DC8814C()
{
  result = qword_27F19F250;
  if (!qword_27F19F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F250);
  }

  return result;
}

unint64_t sub_24DC881B0()
{
  result = qword_27F19F258;
  if (!qword_27F19F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F258);
  }

  return result;
}

uint64_t sub_24DC882B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v23[0] = a6;
  v23[1] = a7;
  v23[2] = a8;
  v23[3] = a10;
  v23[4] = a11;
  v24 = a12;
  v25 = a13;
  v20 = _s15OneShotExecutorVMa(0, v23);
  sub_24DC49B94(a2, a9 + v20[21]);
  *(a9 + v20[22]) = a3;
  (*(*(a10 - 8) + 32))(a9 + v20[23], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v20[24], a5, a11);
}

uint64_t sub_24DC88428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 504) = a8;
  *(v9 + 512) = v8;
  *(v9 + 488) = a6;
  *(v9 + 496) = a7;
  *(v9 + 472) = a4;
  *(v9 + 480) = a5;
  *(v9 + 464) = a1;
  v13 = *(a7 - 8);
  *(v9 + 520) = v13;
  *(v9 + 528) = *(v13 + 64);
  *(v9 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  *(v9 + 544) = swift_task_alloc();
  v14 = sub_24DCB55B4();
  *(v9 + 552) = v14;
  *(v9 + 560) = *(v14 - 8);
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v15 = sub_24DCB5904();
  *(v9 + 584) = v15;
  *(v9 + 592) = *(v15 - 8);
  *(v9 + 600) = swift_task_alloc();
  *(v9 + 608) = swift_task_alloc();
  *(v9 + 616) = *a2;
  *(v9 + 632) = *(a2 + 16);
  *(v9 + 640) = *a3;
  *(v9 + 648) = *(a3 + 8);
  *(v9 + 664) = *(a3 + 24);
  v16 = *(a4 + 80);
  *(v9 + 80) = *(a4 + 64);
  *(v9 + 96) = v16;
  *(v9 + 112) = *(a4 + 96);
  *(v9 + 128) = *(a4 + 112);
  v17 = *(a4 + 16);
  *(v9 + 16) = *a4;
  *(v9 + 32) = v17;
  v18 = *(a4 + 48);
  *(v9 + 48) = *(a4 + 32);
  *(v9 + 64) = v18;

  return MEMORY[0x2822009F8](sub_24DC88690, 0, 0);
}

uint64_t sub_24DC88690()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  sub_24DC4982C(*(v0 + 512) + *(*(v0 + 496) + 84), v3, &qword_27F19F000, &qword_24DCB9BC0);
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 664);
  v6 = *(v0 + 656);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);
  v9 = *(v0 + 632);
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  if (v4 == 1)
  {
    v12 = *(v0 + 472);
    sub_24DC3DFD4(*(v0 + 544), &qword_27F19F000, &qword_24DCB9BC0);
    *(v0 + 408) = v11;
    *(v0 + 416) = v10;
    *(v0 + 424) = v9;
    *(v0 + 376) = v8;
    *(v0 + 384) = v7;
    *(v0 + 392) = v6;
    *(v0 + 400) = v5;
    v13 = v12[4];
    v14 = v12[5];
    v15 = v12[6];
    *(v0 + 248) = *(v12 + 56);
    *(v0 + 232) = v15;
    *(v0 + 216) = v14;
    *(v0 + 200) = v13;
    v16 = *v12;
    v17 = v12[1];
    v18 = v12[2];
    *(v0 + 184) = v12[3];
    *(v0 + 168) = v18;
    *(v0 + 152) = v17;
    *(v0 + 136) = v16;
    v19 = swift_task_alloc();
    *(v0 + 704) = v19;
    *v19 = v0;
    v19[1] = sub_24DC88DB0;
    v20 = *(v0 + 608);
    v21 = *(v0 + 504);
    v22 = *(v0 + 488);
    v23 = *(v0 + 496);
    v24 = *(v0 + 480);

    return sub_24DC89278(v20, v0 + 408, (v0 + 376), (v0 + 136), v24, v22, v23, v21);
  }

  else
  {
    v59 = *(v0 + 648);
    v60 = *(v0 + 664);
    v26 = *(v0 + 568);
    v27 = *(v0 + 560);
    v57 = *(v0 + 640);
    v58 = *(v0 + 656);
    v28 = *(v0 + 552);
    v54 = *(v0 + 536);
    v55 = *(v0 + 528);
    v29 = *(v0 + 520);
    v53 = *(v0 + 512);
    v56 = *(v0 + 504);
    v30 = *(v0 + 496);
    v62 = *(v0 + 488);
    v61 = *(v0 + 480);
    (*(v27 + 32))(*(v0 + 576), *(v0 + 544), v28);
    *(v0 + 432) = v11;
    *(v0 + 440) = v10;
    *(v0 + 448) = v9;

    sub_24DCB5574();
    v31 = sub_24DCB55A4();
    v33 = v32;
    v34 = *(v27 + 8);
    *(v0 + 672) = v34;
    *(v0 + 680) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v26, v28);
    sub_24DC7F3A0(v31, v33, 0);
    v52 = *(v0 + 448);
    v51 = *(v0 + 432);
    (*(v29 + 16))(v54, v53, v30);
    v35 = (*(v29 + 80) + 88) & ~*(v29 + 80);
    v36 = (v55 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 31) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 39) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v0 + 688) = v39;
    *(v39 + 16) = *(v30 + 16);
    *(v39 + 24) = *(v30 + 24);
    *(v39 + 32) = *(v30 + 32);
    *(v39 + 48) = *(v30 + 48);
    *(v39 + 56) = v56;
    *(v39 + 64) = *(v30 + 56);
    *(v39 + 80) = *(v30 + 72);
    (*(v29 + 32))(v39 + v35, v54, v30);
    v40 = v39 + v36;
    *v40 = v51;
    *(v40 + 16) = v52;
    v41 = (v39 + v37);
    *v41 = v57;
    v41[1] = v59;
    v41[2] = v58;
    v41[3] = v60;
    v42 = v39 + v38;
    v43 = *(v0 + 64);
    *(v42 + 32) = *(v0 + 48);
    *(v42 + 48) = v43;
    v44 = *(v0 + 32);
    *v42 = *(v0 + 16);
    *(v42 + 16) = v44;
    *(v42 + 112) = *(v0 + 128);
    v45 = *(v0 + 112);
    *(v42 + 80) = *(v0 + 96);
    *(v42 + 96) = v45;
    *(v42 + 64) = *(v0 + 80);
    v46 = (v39 + ((v38 + 121) & 0xFFFFFFFFFFFFFFF8));
    *v46 = v61;
    v46[1] = v62;

    sub_24DC568C0(v0 + 16, v0 + 256);

    v47 = swift_task_alloc();
    *(v0 + 696) = v47;
    *v47 = v0;
    v47[1] = sub_24DC88B0C;
    v48 = *(v0 + 608);
    v49 = *(v0 + 584);
    v50 = *(v0 + 576);

    return sub_24DC89498(v48, v50, &unk_24DCBC788, v39, v49);
  }
}

uint64_t sub_24DC88B0C()
{

  return MEMORY[0x2822009F8](sub_24DC88C24, 0, 0);
}

uint64_t sub_24DC88C24()
{
  (*(v0 + 672))(*(v0 + 576), *(v0 + 552));

  v1 = *(v0 + 584);
  v2 = *(v0 + 464);
  (*(*(v0 + 592) + 16))(*(v0 + 600), *(v0 + 608), v1);
  sub_24DC2F270(v1, v0 + 456, v2);
  (*(*(v0 + 592) + 8))(*(v0 + 608), *(v0 + 584));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24DC88DB0()
{

  return MEMORY[0x2822009F8](sub_24DC88EAC, 0, 0);
}

uint64_t sub_24DC88EAC()
{
  v1 = v0[73];
  v2 = v0[58];
  (*(v0[74] + 16))(v0[75], v0[76], v1);
  sub_24DC2F270(v1, (v0 + 57), v2);
  (*(v0[74] + 8))(v0[76], v0[73]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC89010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  *(v9 + 232) = a3;
  *(v9 + 240) = a4;
  *(v9 + 248) = a5;
  *(v9 + 200) = a6;
  *(v9 + 208) = a7;
  *(v9 + 216) = a8;
  *(v9 + 224) = v18;
  v11 = *(v19 + 80);
  *(v9 + 80) = *(v19 + 64);
  *(v9 + 96) = v11;
  *(v9 + 112) = *(v19 + 96);
  *(v9 + 128) = *(v19 + 112);
  v12 = *(v19 + 16);
  *(v9 + 16) = *v19;
  *(v9 + 32) = v12;
  v13 = *(v19 + 48);
  *(v9 + 48) = *(v19 + 32);
  *(v9 + 64) = v13;
  v14 = swift_task_alloc();
  *(v9 + 136) = v22;
  *(v9 + 256) = v14;
  *(v9 + 152) = v23;
  *(v9 + 168) = v24;
  *(v9 + 176) = v26;
  *(v9 + 184) = v27;
  *(v9 + 192) = v28;
  v15 = _s15OneShotExecutorVMa(0, v9 + 136);
  *v14 = v9;
  v14[1] = sub_24DC89184;

  return sub_24DC89278(a1, v9 + 232, (v9 + 200), (v9 + 16), v20, v21, v15, v25);
}

uint64_t sub_24DC89184()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC89278(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 168) = a8;
  *(v9 + 176) = v8;
  *(v9 + 152) = a6;
  *(v9 + 160) = a7;
  *(v9 + 136) = a1;
  *(v9 + 144) = a5;
  *(v9 + 184) = *a2;
  v10 = *a3;
  *(v9 + 200) = *(a2 + 16);
  *(v9 + 208) = v10;
  *(v9 + 216) = *(a3 + 1);
  *(v9 + 232) = a3[3];
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[3];
  *(v9 + 48) = a4[2];
  *(v9 + 64) = v13;
  *(v9 + 16) = v11;
  *(v9 + 32) = v12;
  v14 = a4[4];
  v15 = a4[5];
  v16 = a4[6];
  *(v9 + 128) = *(a4 + 56);
  *(v9 + 96) = v15;
  *(v9 + 112) = v16;
  *(v9 + 80) = v14;
  return MEMORY[0x2822009F8](sub_24DC892EC, 0, 0);
}

uint64_t sub_24DC892EC()
{
  v1 = *(v0 + 224);
  v15 = *(v0 + 232);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5904();
  v8 = swift_task_alloc();
  *(v0 + 240) = v8;
  v9 = *(v0 + 184);
  v10 = *(v0 + 144);
  *(v8 + 16) = *(v7 + 16);
  *(v8 + 24) = *(v7 + 24);
  *(v8 + 32) = *(v7 + 32);
  *(v8 + 48) = *(v7 + 48);
  *(v8 + 56) = v5;
  *(v8 + 64) = *(v7 + 56);
  *(v8 + 80) = *(v7 + 72);
  *(v8 + 88) = v6;
  *(v8 + 96) = v3;
  *(v8 + 104) = v2;
  *(v8 + 112) = v1;
  *(v8 + 120) = v15;
  *(v8 + 128) = v0 + 16;
  *(v8 + 136) = v9;
  *(v8 + 152) = v4;
  *(v8 + 160) = v10;
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_24DC4C7A8;
  v12 = *(v0 + 136);
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v12, v13);
}

uint64_t sub_24DC89498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24DC894C0, 0, 0);
}

uint64_t sub_24DC894C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  v7 = type metadata accessor for _DeadlineChildTaskResult(0, v5, a3, a4);
  v8 = swift_task_alloc();
  *(v4 + 56) = v8;
  v9 = *(v4 + 24);
  *(v8 + 16) = v5;
  *(v8 + 24) = v9;
  *(v8 + 40) = v6;
  v10 = swift_task_alloc();
  *(v4 + 64) = v10;
  *v10 = v4;
  v10[1] = sub_24DC895C8;
  v11 = *(v4 + 16);

  return MEMORY[0x282200600](v11, v7);
}

uint64_t sub_24DC895C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC896D8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 80);
  v16 = *(v0 + 16);
  v14 = v16;
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v20 = *(v0 + 64);
  v21 = v4;
  v5 = _s15OneShotExecutorVMa(0, &v16);
  v6 = (*(*(v5 - 1) + 80) + 88) & ~*(*(v5 - 1) + 80);
  v15 = (((((*(*(v5 - 1) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v6;
  (*(*(v14 - 8) + 8))(v0 + v6);
  v8 = v5[21];
  v9 = sub_24DCB55B4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  (*(*(v2 - 8) + 8))(v7 + v5[23], v2);
  (*(*(v3 - 8) + 8))(v7 + v5[24], v3);

  v12 = *(v0 + v15 + 112);
  if (v12 != 255)
  {
    v11 = (v0 + v15);
    sub_24DC566BC(v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v12 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_24DC89964(uint64_t a1)
{
  v3 = v1[4];
  v22 = v1[3];
  v21 = v1[5];
  v4 = v1[6];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v2[2] = v1[2];
  v2[3] = v22;
  v2[4] = v3;
  v2[5] = v21;
  v2[6] = v4;
  v2[7] = v5;
  v2[8] = v6;
  v2[9] = v7;
  v8 = *(_s15OneShotExecutorVMa(0, (v2 + 2)) - 8);
  v9 = (*(v8 + 80) + 88) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v1 + v10);
  v19 = v12[1];
  v20 = *v12;
  v18 = v12[2];
  v17 = *(v1 + v11);
  v16 = *(v1 + v11 + 8);
  v15 = *(v1 + v11 + 16);
  v13 = swift_task_alloc();
  v2[10] = v13;
  *v13 = v2;
  v13[1] = sub_24DC56054;

  return sub_24DC89010(a1, v1 + v9, v20, v19, v18, v17, v16, v15);
}

uint64_t sub_24DC89B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = v16;
  *(v8 + 336) = v17;
  *(v8 + 312) = v15;
  *(v8 + 296) = v14;
  *(v8 + 280) = v13;
  *(v8 + 264) = v12;
  *(v8 + 248) = v11;
  *(v8 + 232) = v10;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 184) = a3;
  *(v8 + 192) = a4;
  *(v8 + 168) = a1;
  *(v8 + 176) = a2;
  return MEMORY[0x2822009F8](sub_24DC89BCC, 0, 0);
}

uint64_t sub_24DC89BCC()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 248);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);
  *(v0 + 136) = *(v0 + 192);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;
  v24 = *(v0 + 288);
  v25 = *(v0 + 320);
  v23 = *(v0 + 272);
  v26 = *(v0 + 232);
  v27 = *(v0 + 256);
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[3];
  *(v0 + 48) = v5[2];
  *(v0 + 64) = v12;
  *(v0 + 16) = v10;
  *(v0 + 32) = v11;
  v13 = v5[4];
  v14 = v5[5];
  v15 = v5[6];
  *(v0 + 128) = *(v5 + 56);
  *(v0 + 96) = v14;
  *(v0 + 112) = v15;
  *(v0 + 80) = v13;
  v16 = swift_task_alloc();
  *(v0 + 344) = v16;
  *(v16 + 16) = v23;
  *(v16 + 32) = v24;
  *(v16 + 48) = v3;
  *(v16 + 56) = v2;
  *(v16 + 64) = v25;
  *(v16 + 80) = v1;
  *(v16 + 88) = v9;
  *(v16 + 96) = v26;
  *(v16 + 112) = v4;
  *(v16 + 120) = v8;
  *(v16 + 128) = v27;
  v28 = (*(v25 + 48) + **(v25 + 48));
  v17 = swift_task_alloc();
  *(v0 + 352) = v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v18 = sub_24DCB5904();
  *(v0 + 360) = v18;
  *v17 = v0;
  v17[1] = sub_24DC89DFC;
  v19 = *(v0 + 320);
  v20 = *(v0 + 272);
  v21 = *(v0 + 168);

  return v28(v21, v0 + 136, v0 + 16, &unk_24DCBC870, v16, v18, v20, v19);
}

uint64_t sub_24DC89DFC()
{
  v2 = *v1;
  *(v2 + 368) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC89F38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC89F38()
{
  v1 = v0[46];
  v2 = v0[21];

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC89FBC(uint64_t a1, uint64_t a2)
{
  v10 = v2[12];
  v11 = v2[11];
  v8 = v2[14];
  v9 = v2[13];
  v7 = v2[15];
  v4 = v2[16];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24DC334F4;

  return sub_24DC89B60(a1, a2, v11, v10, v9, v8, v7, v4);
}

uint64_t sub_24DC8A110(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 360) = v18;
  *(v8 + 344) = v17;
  *(v8 + 328) = v16;
  *(v8 + 312) = v15;
  *(v8 + 296) = v14;
  *(v8 + 280) = v13;
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 232) = a2;
  *(v8 + 240) = a4;
  *(v8 + 224) = a1;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[3];
  *(v8 + 48) = a3[2];
  *(v8 + 64) = v11;
  *(v8 + 16) = v9;
  *(v8 + 32) = v10;
  return MEMORY[0x2822009F8](sub_24DC8A18C, 0, 0);
}

uint64_t sub_24DC8A18C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  *(v0 + 200) = *(v0 + 248);
  *(v0 + 216) = v2;
  v4 = *(v0 + 312);
  *(v0 + 80) = *(v0 + 296);
  v5 = *(v0 + 328);
  *(v0 + 96) = v4;
  *(v0 + 112) = v5;
  *(v0 + 120) = *(v0 + 344);
  *(v0 + 136) = v1;
  v6 = _s15OneShotExecutorVMa(0, v0 + 80);
  v7 = v6[23];
  v11 = v6[24];
  v13 = *(v3 + v6[22]);
  v8 = swift_task_alloc();
  *(v0 + 368) = v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *v8 = v0;
  v8[1] = sub_24DC8A340;
  v9 = *(v0 + 240);

  return sub_24DC81E14(v0 + 144, v9, v0 + 16, v0 + 200, 1, v3 + v7, v3 + v11, v13);
}

uint64_t sub_24DC8A340()
{

  return MEMORY[0x2822009F8](sub_24DC8A43C, 0, 0);
}

uint64_t sub_24DC8A43C()
{
  v1 = *(v0 + 360);
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  v3 = *(v0 + 312);
  v4 = *(v0 + 328);
  v5 = *(v0 + 344);
  v6 = *(v0 + 280);
  *(v2 + 16) = *(v0 + 296);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  *(v2 + 80) = v1;
  *(v2 + 88) = v6;
  *(v2 + 104) = v0 + 144;
  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  *v7 = v0;
  v7[1] = sub_24DC8A554;
  v9 = *(v0 + 336);
  v10 = *(v0 + 224);
  v11 = MEMORY[0x277D84950];

  return sub_24DC8C5F4(v10, &unk_24DCBC880, v2, v9, v8, v11);
}

uint64_t sub_24DC8A554()
{

  return MEMORY[0x2822009F8](sub_24DC8A66C, 0, 0);
}

uint64_t sub_24DC8A66C()
{
  v1 = *(v0 + 312);
  sub_24DCB5164();
  v4 = type metadata accessor for StreamingClientResponse(0, v1, v2, v3);
  (*(*(v4 - 8) + 8))(v0 + 144, v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24DC8A720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for _DeadlineChildTaskResult(255, a6, a3, a4);
  v6[8] = v7;
  v8 = sub_24DCB5414();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v9 = sub_24DCB55B4();
  v6[15] = v9;
  v10 = *(v9 - 8);
  v6[16] = v10;
  v6[17] = *(v10 + 64);
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC8A8F8, 0, 0);
}

uint64_t sub_24DC8A8F8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[15];
  v5 = v0[7];
  v17 = v0[5];
  v18 = v0[6];
  v6 = v0[4];
  v7 = sub_24DCB51C4();
  v16 = *(*(v7 - 8) + 56);
  v16(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v6, v4);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v5;
  (*(v3 + 32))(&v9[v8], v2, v4);
  v10 = sub_24DCB5174();
  v0[20] = v10;
  sub_24DC4B67C(v1, &unk_24DCBC840, v9, v10);
  sub_24DC3DFD4(v1, &qword_27F19F050, &qword_24DCB9EB0);
  v16(v1, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v5;
  v11[5] = v17;
  v11[6] = v18;

  sub_24DC4B67C(v1, &unk_24DCBC850, v11, v10);
  sub_24DC3DFD4(v1, &qword_27F19F050, &qword_24DCB9EB0);
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_24DC8AB78;
  v13 = v0[20];
  v14 = v0[11];

  return MEMORY[0x2822002D0](v14, 0, 0, v13);
}

uint64_t sub_24DC8AB78()
{

  return MEMORY[0x2822009F8](sub_24DC8AC74, 0, 0);
}

uint64_t sub_24DC8AC74()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
    return sub_24DCB55E4();
  }

  else
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[7];
    (*(v2 + 32))(v5, v1, v3);
    (*(v2 + 16))(v6, v5, v3);
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v6, 2, v7);
    if (v9)
    {
      if (v9 == 1)
      {
        sub_24DCB5164();
      }

      (*(v0[12] + 8))(v0[14], v0[8]);
      v10 = swift_task_alloc();
      v0[21] = v10;
      *v10 = v0;
      v10[1] = sub_24DC8AB78;
      v11 = v0[20];
      v12 = v0[11];

      return MEMORY[0x2822002D0](v12, 0, 0, v11);
    }

    else
    {
      v13 = v0[14];
      v14 = v0[12];
      v15 = v0[8];
      (*(v8 + 32))(v0[2], v0[13], v0[7]);
      sub_24DCB5164();
      (*(v14 + 8))(v13, v15);

      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_24DC8AF64(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24DC334F4;

  return sub_24DC8A720(a1, a2, v7, v9, v8, v6);
}

uint64_t sub_24DC8B02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_24DCB55C4();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC8B0F0, 0, 0);
}

uint64_t sub_24DC8B0F0(uint64_t a1)
{
  *(v1 + 16) = sub_24DCB59A4();
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  sub_24DCB5854();
  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  v4 = sub_24DC8C3A4();
  *v3 = v1;
  v3[1] = sub_24DC8B1BC;
  v5 = *(v1 + 80);
  v6 = *(v1 + 64);
  v7 = *(v1 + 48);

  return MEMORY[0x282200488](v7, v1 + 16, v5, v6, v4);
}

uint64_t sub_24DC8B1BC()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24DC8B3C8;
  }

  else
  {
    v5 = sub_24DC8B32C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24DC8B32C()
{
  (*(*(v0[7] - 8) + 56))(v0[5], 1, 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC8B3C8()
{
  MEMORY[0x2530363B0](v0[12]);
  (*(*(v0[7] - 8) + 56))(v0[5], 2, 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC8B46C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_24DC8B568;

  return v10(a1);
}

uint64_t sub_24DC8B568()
{

  return MEMORY[0x2822009F8](sub_24DC8B664, 0, 0);
}

uint64_t sub_24DC8B664()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 0, 2);
  v1 = v0[1];

  return v1();
}

void sub_24DC8B6F8(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_24DC8C078(319);
    if (v2 <= 0x3F)
    {
      sub_24DC547E8(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24DC8B7D0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v7 = *(v6 - 8);
  v54 = v7;
  v8 = *(v7 + 84);
  v9 = *(sub_24DCB55B4() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = a3[6];
  v15 = *(a3[5] - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  v18 = *(v14 - 8);
  if (v13 <= v17)
  {
    v19 = *(v15 + 84);
  }

  else
  {
    v19 = v13;
  }

  v20 = *(v18 + 84);
  v21 = *(v7 + 64);
  v22 = *(v9 + 80);
  v23 = *(v9 + 64);
  v24 = *(v15 + 80);
  v25 = *(v15 + 64);
  v26 = *(v18 + 80);
  v27 = *(v18 + 64);
  if (v19 <= v20)
  {
    v28 = *(v18 + 84);
  }

  else
  {
    v28 = v19;
  }

  if (v28 <= 0x7FFFFFFF)
  {
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v29 = v28;
  }

  if (v11)
  {
    v30 = v23;
  }

  else
  {
    v30 = v23 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = v21 + v22;
  v32 = v30 + 7;
  v33 = v24 + 8;
  v34 = v25 + v26;
  v35 = a2 - v29;
  if (a2 > v29)
  {
    v36 = ((v34 + ((v33 + ((v32 + (v31 & ~v22)) & 0xFFFFFFFFFFFFFFF8)) & ~v24)) & ~v26) + v27;
    v37 = 8 * v36;
    if (v36 > 3)
    {
      goto LABEL_22;
    }

    v39 = ((v35 + ~(-1 << v37)) >> v37) + 1;
    if (HIWORD(v39))
    {
      v38 = *(a1 + v36);
      if (v38)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v39 <= 0xFF)
      {
        if (v39 < 2)
        {
          goto LABEL_42;
        }

LABEL_22:
        v38 = *(a1 + v36);
        if (!*(a1 + v36))
        {
          goto LABEL_42;
        }

LABEL_29:
        v40 = (v38 - 1) << v37;
        if (v36 > 3)
        {
          v40 = 0;
        }

        if (v36)
        {
          if (v36 <= 3)
          {
            v41 = v36;
          }

          else
          {
            v41 = 4;
          }

          if (v41 > 2)
          {
            if (v41 == 3)
            {
              v42 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v42 = *a1;
            }
          }

          else if (v41 == 1)
          {
            v42 = *a1;
          }

          else
          {
            v42 = *a1;
          }
        }

        else
        {
          v42 = 0;
        }

        return v29 + (v42 | v40) + 1;
      }

      v38 = *(a1 + v36);
      if (*(a1 + v36))
      {
        goto LABEL_29;
      }
    }
  }

LABEL_42:
  if (v8 == v29)
  {
    v43 = *(v54 + 48);
    v44 = a1;
    v45 = v8;
    v46 = v6;
LABEL_44:

    return v43(v44, v45, v46);
  }

  v48 = (a1 + v31) & ~v22;
  if (v12 == v29)
  {
    if (v11 >= 2)
    {
      v51 = (*(v10 + 48))(v48);
      if (v51 >= 2)
      {
        return v51 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v49 = ((v32 + v48) & 0xFFFFFFFFFFFFFFF8);
  if ((v28 & 0x80000000) != 0)
  {
    v52 = (v49 + v33) & ~v24;
    if (v17 != v29)
    {
      v43 = *(*(v14 - 8) + 48);
      v44 = ((v34 + v52) & ~v26);
      v45 = v20;
      v46 = v14;
      goto LABEL_44;
    }

    v53 = *(v16 + 48);

    return v53(v52, v17);
  }

  else
  {
    v50 = *v49;
    if (*v49 >= 0xFFFFFFFF)
    {
      LODWORD(v50) = -1;
    }

    return (v50 + 1);
  }
}

void sub_24DC8BBCC(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v49 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_24DCB55B4() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = a4[5];
  v16 = *(v15 - 8);
  if (v14 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v14;
  }

  v18 = *(a4[5] - 8);
  v19 = *(v16 + 84);
  if (v17 <= v19)
  {
    v20 = *(v16 + 84);
  }

  else
  {
    v20 = v17;
  }

  v21 = a4[6];
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  v24 = *(v8 + 64);
  v25 = *(v11 + 80);
  v26 = *(v16 + 80);
  v27 = *(v16 + 64);
  v28 = *(v22 + 80);
  if (v20 <= v23)
  {
    v29 = *(v22 + 84);
  }

  else
  {
    v29 = v20;
  }

  if (v29 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = v29;
  }

  if (v13)
  {
    v31 = *(v11 + 64);
  }

  else
  {
    v31 = *(v11 + 64) + 1;
  }

  v32 = v27 + v28;
  v33 = ((v27 + v28 + ((v26 + 8 + ((v31 + 7 + ((v24 + v25) & ~v25)) & 0xFFFFFFFFFFFFFFF8)) & ~v26)) & ~v28) + *(v22 + 64);
  v34 = a3 >= v30;
  v35 = a3 - v30;
  if (v35 == 0 || !v34)
  {
    goto LABEL_31;
  }

  if (v33 > 3)
  {
    v10 = 1;
    if (v30 < a2)
    {
      goto LABEL_32;
    }

    goto LABEL_41;
  }

  v36 = ((v35 + ~(-1 << (8 * v33))) >> (8 * v33)) + 1;
  if (!HIWORD(v36))
  {
    if (v36 < 0x100)
    {
      v37 = 1;
    }

    else
    {
      v37 = 2;
    }

    if (v36 >= 2)
    {
      v10 = v37;
    }

    else
    {
      v10 = 0;
    }

LABEL_31:
    if (v30 < a2)
    {
      goto LABEL_32;
    }

    goto LABEL_41;
  }

  v10 = 4;
  if (v30 < a2)
  {
LABEL_32:
    v38 = ~v30 + a2;
    if (v33 < 4)
    {
      v39 = (v38 >> (8 * v33)) + 1;
      if (v33)
      {
        v40 = v38 & ~(-1 << (8 * v33));
        bzero(a1, v33);
        if (v33 != 3)
        {
          if (v33 == 2)
          {
            *a1 = v40;
            if (v10 > 1)
            {
LABEL_68:
              if (v10 == 2)
              {
                *&a1[v33] = v39;
              }

              else
              {
                *&a1[v33] = v39;
              }

              return;
            }
          }

          else
          {
            *a1 = v38;
            if (v10 > 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_65;
        }

        *a1 = v40;
        a1[2] = BYTE2(v40);
      }

      if (v10 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      bzero(a1, v33);
      *a1 = v38;
      v39 = 1;
      if (v10 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    if (v10)
    {
      a1[v33] = v39;
    }

    return;
  }

LABEL_41:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v33] = 0;
  }

  else if (v10)
  {
    a1[v33] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v9 == v30)
  {
    v41 = *(v49 + 56);
    v42 = a1;
    v43 = a2;
    v44 = v9;
    v15 = v7;
    goto LABEL_50;
  }

  v45 = &a1[v24 + v25] & ~v25;
  if (v14 == v30)
  {
    v46 = *(v12 + 56);

    v46(v45, (a2 + 1));
  }

  else
  {
    v47 = ((v31 + 7 + v45) & 0xFFFFFFFFFFFFFFF8);
    if ((v29 & 0x80000000) != 0)
    {
      v42 = ((v47 + v26 + 8) & ~v26);
      if (v19 != v30)
      {
        v41 = *(v22 + 56);
        v42 = (&v42[v32] & ~v28);
        v43 = a2;
        v44 = v23;
        v15 = v21;

        goto LABEL_77;
      }

      v41 = *(v18 + 56);
      v43 = a2;
      v44 = v19;
LABEL_50:

LABEL_77:
      v41(v42, v43, v44, v15);
      return;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v48 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v48 = (a2 - 1);
    }

    *v47 = v48;
  }
}

void sub_24DC8C078(uint64_t a1)
{
  if (!qword_27F19F010)
  {
    sub_24DCB55B4();
    v1 = sub_24DCB5414();
    if (!v2)
    {
      atomic_store(v1, &qword_27F19F010);
    }
  }
}

uint64_t sub_24DC8C0D0()
{
  v1 = sub_24DCB55B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24DC8C194(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(sub_24DCB55B4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DC8B02C(a1, v7, v8, v1 + v6, v4);
}

uint64_t sub_24DC8C278()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24DC8C2B8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC2FD00;

  return sub_24DC8B46C(a1, v7, v8, v5, v6, v4);
}

uint64_t sub_24DC8C36C()
{

  return swift_deallocObject();
}

unint64_t sub_24DC8C3A4()
{
  result = qword_27F19F040;
  if (!qword_27F19F040)
  {
    sub_24DCB55C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F040);
  }

  return result;
}

uint64_t sub_24DC8C3FC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = v3[11];
  v8 = v3[12];
  v9 = v3[13];
  v10 = v3[14];
  v11 = v3[15];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_24DC2FD00;

  return sub_24DC8A110(a1, a2, a3, v7, v8, v9, v10, v11);
}

uint64_t sub_24DC8C52C(uint64_t a1)
{
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC334F4;

  return sub_24DC52760(a1, v4, v5, v6);
}

uint64_t sub_24DC8C5F4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a5;
  v9 = sub_24DCB5904();
  v6[4] = v9;
  v6[5] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[6] = v10;
  v6[7] = *(a5 - 8);
  v11 = swift_task_alloc();
  v6[8] = v11;
  v6[9] = swift_task_alloc();
  v14 = (a2 + *a2);
  v12 = swift_task_alloc();
  v6[10] = v12;
  *v12 = v6;
  v12[1] = sub_24DC8C7D0;

  return v14(v10, v11);
}

uint64_t sub_24DC8C7D0()
{

  if (v0)
  {
    v1 = sub_24DC8C994;
  }

  else
  {
    v1 = sub_24DC8C8E0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24DC8C8E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24DC8C994()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[2];
  v4 = *(v0[7] + 32);
  v4(v1, v0[8], v2);
  v4(v3, v1, v2);
  swift_storeEnumTagMultiPayload();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24DC8CA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v15 + 16))(&v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v7, v16);
  v20 = *(a4 + 16);
  v17 = *(a4 + 32);
  v21 = a5;
  v22 = v17;
  v23 = a6;
  v24 = a2;
  v25 = a3;
  return sub_24DC8CE30(sub_24DC8CE20, a4, a7);
}

uint64_t sub_24DC8CB94@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v26 = a3;
  v27 = a2;
  v11 = sub_24DCB5414();
  v25 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = *(v15 + 16);
  v17(&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v18 = swift_dynamicCast();
  v19 = *(a5 - 8);
  v20 = *(v19 + 56);
  if (v18)
  {
    v20(v14, 0, 1, a5);
    return (*(v19 + 32))(a7, v14, a5);
  }

  else
  {
    v20(v14, 1, 1, a5);
    v22 = swift_allocError();
    v17(v23, a1, a4);
    v27(v22);
    MEMORY[0x2530363B0](v22);
    result = (*(v19 + 48))(v14, 1, a5);
    if (result != 1)
    {
      return (*(v25 + 8))(v14, v11);
    }
  }

  return result;
}

uint64_t sub_24DC8CE30@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v5, v9);
    a1(v12);
    (*(v10 + 8))(v12, v9);
    sub_24DCB5904();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a5, v5, *(a2 + 16));
    sub_24DCB5904();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t RPCStream.descriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 RPCStream.descriptor.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t RPCStream.init(descriptor:inbound:outbound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  *a8 = *a1;
  *(a8 + 16) = v13;
  *(a8 + 24) = v14;
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v15 = type metadata accessor for RPCStream(0, v17);
  (*(*(a4 - 8) + 32))(a8 + *(v15 + 52), a2, a4);
  return (*(*(a5 - 8) + 32))(a8 + *(v15 + 56), a3, a5);
}

uint64_t sub_24DC8D2F0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC8D38C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 32) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v24 = (a1 + v9 + 32) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_24DC8D5B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 32) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v13 & 0x80000000) != 0)
  {
    v24 = &a1[v10 + 32] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t ServiceDescriptor.package.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v8 = 46;
  v7[2] = &v8;
  sub_24DC8DD68(sub_24DC8DF40, v7, v1, v2);
  if (v3)
  {
    return 0;
  }

  v5 = sub_24DCB4EF4();
  v6 = MEMORY[0x253035520](v5);

  return v6;
}

unint64_t sub_24DC8D96C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_24DCB4EF4();
  }

  __break(1u);
  return result;
}

unint64_t ServiceDescriptor.service.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v10 = 46;
  v9[2] = &v10;
  result = sub_24DC8DD68(sub_24DC8DFF4, v9, v1, v2);
  if (v4)
  {

    return v1;
  }

  v5 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_24DC3312C(result, v1, v2);
    if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v2 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v6 = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_8:
    v7 = sub_24DC8D96C(v6, v1, v2);
    v1 = MEMORY[0x253035520](v7);

    return v1;
  }

  v8 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 > result >> 16)
  {
    v6 = sub_24DCB4E74();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ServiceDescriptor.fullyQualifiedService.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServiceDescriptor.fullyQualifiedService.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

GRPCCoreInternal::ServiceDescriptor __swiftcall ServiceDescriptor.init(package:service:)(Swift::String package, Swift::String service)
{
  object = service._object;
  countAndFlagsBits = service._countAndFlagsBits;
  v5 = v2;
  v6 = HIBYTE(package._object) & 0xF;
  if ((package._object & 0x2000000000000000) == 0)
  {
    v6 = package._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {

    MEMORY[0x253035590](46, 0xE100000000000000);

    MEMORY[0x253035590](countAndFlagsBits, object);

    object = package._object;
    countAndFlagsBits = package._countAndFlagsBits;
  }

  else
  {
  }

  *v5 = countAndFlagsBits;
  v5[1] = object;
  result.fullyQualifiedService._object = v8;
  result.fullyQualifiedService._countAndFlagsBits = v7;
  return result;
}

uint64_t static ServiceDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24DCB57A4();
  }
}

uint64_t ServiceDescriptor.hashValue.getter()
{
  sub_24DCB58A4();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC8DC9C()
{
  sub_24DCB58A4();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC8DCF0(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC8DD38(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24DCB57A4();
  }
}

unint64_t sub_24DC8DD68(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v8 = result;
  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LODWORD(v9) = 1;
  }

  v10 = 11;
  if (v9)
  {
    v10 = 7;
  }

  v11 = v10 | (v5 << 16);
  v12 = 4 << v9;
  v18 = a4 & 0xFFFFFFFFFFFFFFLL;
  v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((v11 & 0xC) != v12)
    {
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    result = sub_24DC3312C(v11, a3, a4);
    if (result < 0x4000)
    {
      break;
    }

    v11 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_12:
      v11 = (v11 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_17;
    }

LABEL_15:
    if (v5 < v11 >> 16)
    {
      goto LABEL_35;
    }

    v11 = sub_24DCB4E84();
LABEL_17:
    result = v11;
    if ((v11 & 0xC) == v12)
    {
      result = sub_24DC3312C(v11, a3, a4);
    }

    v13 = result >> 16;
    if (result >> 16 >= v5)
    {
      goto LABEL_34;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v15 = sub_24DCB4EB4();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v17[0] = a3;
      v17[1] = v18;
      v15 = *(v17 + v13);
    }

    else
    {
      v14 = v16;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v14 = sub_24DCB5504();
      }

      v15 = *(v14 + v13);
    }

    LOBYTE(v17[0]) = v15;
    result = v8(v17);
    if (v4 || (result & 1) != 0)
    {
      return v11;
    }

    if (v11 < 0x4000)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24DC8DF5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DC8DFA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DC8E010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a2;
  v4[33] = a3;
  v4[31] = a1;
  v6 = type metadata accessor for ClientResponse.Contents(0, a3, a3, a4);
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = *(a3 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = type metadata accessor for StreamingClientResponse.Contents.BodyPart(255, a3, v7, v8);
  v9 = sub_24DCB5414();
  v4[41] = v9;
  v4[42] = swift_getTupleTypeMetadata3();
  v4[43] = swift_task_alloc();
  v4[44] = *(v9 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC8E224, 0, 0);
}

uint64_t sub_24DC8E224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 256);
  *(v4 + 400) = type metadata accessor for StreamingClientResponse.Contents(255, *(v4 + 264), a3, a4);
  *(v4 + 408) = sub_24DC2E0D8();
  v6 = sub_24DCB5904();
  (*(*(v6 - 8) + 16))(v4 + 16, v5, v6);
  if (*(v4 + 64))
  {
    v10 = *(v4 + 248);
    v9 = *(v4 + 256);
    v11 = type metadata accessor for StreamingClientResponse(0, *(v4 + 264), v7, v8);
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = *(v4 + 24);
    v13 = *(v4 + 48);
    v14 = *(v4 + 32);
    *v10 = *(v4 + 16);
    *(v10 + 8) = v12;
    *(v10 + 16) = v14;
    *(v10 + 32) = v13;
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();

    v15 = *(v4 + 8);

    return v15();
  }

  else
  {
    v17 = *(v4 + 320);
    v18 = *(v4 + 32);
    *(v4 + 72) = *(v4 + 16);
    *(v4 + 88) = v18;
    *(v4 + 104) = *(v4 + 48);
    *(v4 + 416) = *(v4 + 72);

    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    *(v4 + 424) = v19;
    v20 = MEMORY[0x277D84950];
    type metadata accessor for RPCAsyncSequence(0, v17, v19, MEMORY[0x277D84950]);
    RPCAsyncSequence.makeAsyncIterator()((v4 + 120));
    v21 = swift_task_alloc();
    *(v4 + 432) = v21;
    v22 = type metadata accessor for RPCAsyncSequence.AsyncIterator(0, v17, v19, v20);
    *(v4 + 440) = v22;
    *v21 = v4;
    v21[1] = sub_24DC8E4F0;
    v23 = *(v4 + 392);

    return RPCAsyncSequence.AsyncIterator.next()(v23, v22);
  }
}

uint64_t sub_24DC8E4F0()
{
  v2 = *v1;
  v2[56] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC8F4B0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[57] = v3;
    *v3 = v2;
    v3[1] = sub_24DC8E674;
    v4 = v2[55];
    v5 = v2[48];

    return RPCAsyncSequence.AsyncIterator.next()(v5, v4);
  }
}

uint64_t sub_24DC8E674()
{
  v2 = *v1;
  v2[58] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC8F884, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[59] = v3;
    *v3 = v2;
    v3[1] = sub_24DC8E7F8;
    v4 = v2[55];
    v5 = v2[47];

    return RPCAsyncSequence.AsyncIterator.next()(v5, v4);
  }
}

uint64_t sub_24DC8E7F8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {

    v2 = sub_24DC8FC78;
  }

  else
  {
    v2 = sub_24DC8E914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC8E914()
{
  v109 = v0;
  v1 = v0[48];
  v2 = v0[47];
  v3 = v0[43];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v0[44] + 16);
  v9(v3, v0[49], v5);
  v101 = v7;
  v9(v3 + v7, v1, v5);
  v100 = v8;
  v9(v3 + v8, v2, v5);
  v10 = *(v6 - 8);
  v11 = *(v10 + 48);
  v102 = v3;
  if (v11(v3, 1, v6) == 1)
  {

LABEL_10:
    v89 = v0[55];
    v92 = v0[50];
    v31 = v0[49];
    v74 = v0[48];
    v76 = v0[47];
    v32 = v0[44];
    v33 = v0[41];
    v81 = v0[33];
    v83 = v0[32];
    v86 = v0[31];
    v107 = *sub_24DC41378();
    v103 = 0;
    v104 = 0xE000000000000000;
    sub_24DCB54D4();
    MEMORY[0x253035590](0xD00000000000007CLL, 0x800000024DCC5AE0);
    sub_24DCB5754();
    v34 = *(v32 + 72);
    swift_allocObject();
    v35 = sub_24DCB4FA4();
    v37 = v36;
    v9(v36, v31, v33);
    v9(v37 + v34, v74, v33);
    v9(v37 + 2 * v34, v76, v33);
    sub_24DCB50A4();
    v0[30] = v35;
    swift_getWitnessTable();
    sub_24DCB5794();

    MEMORY[0x253035590](8750, 0xE200000000000000);
    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v107, v103, v104, &v108, 0, &v103);
    v40 = type metadata accessor for StreamingClientResponse(0, v81, v38, v39);
    (*(*(v40 - 8) + 8))(v83, v40);
    v24 = *(v32 + 8);
    v24(v76, v33);
    v24(v74, v33);
    v24(v31, v33);
    (*(*(v89 - 8) + 8))(v0 + 15);
    (*(*(v92 - 8) + 8))(v0 + 9);
    v41 = v104;
    v42 = v106;
    v43 = v105;
    *v86 = v103;
    *(v86 + 8) = v41;
    *(v86 + 16) = v43;
    *(v86 + 32) = v42;
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
    v44 = v102;
    v24(v102 + v100, v33);
    goto LABEL_11;
  }

  v9(v0[46], v0[43], v0[41]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v0[46];
    v13 = v0[40];

    (*(v10 + 8))(v12, v13);
    if (v11(v3 + v101, 1, v13) != 1 || v11(v3 + v100, 1, v0[40]) != 1)
    {
      goto LABEL_10;
    }

    v14 = v0[55];
    v15 = v0[50];
    v91 = v0[48];
    v95 = v0[49];
    v88 = v0[47];
    v16 = v0[44];
    v17 = v0[41];
    v18 = v0[33];
    v19 = v0[31];
    v20 = v0[32];
    v107 = *sub_24DC4136C();
    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v107, 0xD00000000000002FLL, 0x800000024DCC5B60, &v108, 0, &v103);
    v23 = type metadata accessor for StreamingClientResponse(0, v18, v21, v22);
    (*(*(v23 - 8) + 8))(v20, v23);
    v24 = *(v16 + 8);
    v24(v88, v17);
    v24(v91, v17);
    v24(v95, v17);
    (*(*(v14 - 8) + 8))(v0 + 15, v14);
    (*(*(v15 - 8) + 8))(v0 + 9, v15);
    v25 = v104;
    v26 = v106;
    v27 = v105;
    *v19 = v103;
    *(v19 + 8) = v25;
    *(v19 + 16) = v27;
    *(v19 + 32) = v26;
    sub_24DCB5904();
    goto LABEL_17;
  }

  if (v11(v3 + v101, 1, v0[40]) == 1)
  {
    v28 = v0[46];
    v29 = v0[37];
    v30 = v0[33];
    goto LABEL_9;
  }

  v9(v0[45], v3 + v101, v0[41]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = *v0[45];
    if (v11(v102 + v100, 1, v0[40]) == 1)
    {
      v50 = v0[52];
      v84 = v0[49];
      v87 = v0[55];
      v79 = v0[47];
      v82 = v0[48];
      v51 = v0[44];
      v52 = v0[41];
      v53 = v0[38];
      v54 = v0[39];
      v55 = v0[36];
      v56 = v0[37];
      v93 = v0[50];
      v96 = v0[35];
      v98 = v0[34];
      v57 = v0[33];
      v77 = v0[32];
      v90 = v0[31];
      (*(v56 + 32))(v54, v0[46], v57);
      v108 = v50;
      (*(v56 + 16))(v53, v54, v57);
      v103 = v49;
      ClientResponse.Contents.init(metadata:message:trailingMetadata:)(&v108, v53, &v103, v57, v55);
      v60 = type metadata accessor for StreamingClientResponse(0, v57, v58, v59);
      (*(*(v60 - 8) + 8))(v77, v60);
      (*(v56 + 8))(v54, v57);
      v24 = *(v51 + 8);
      v24(v79, v52);
      v24(v82, v52);
      v24(v84, v52);
      (*(*(v87 - 8) + 8))(v0 + 15);
      (*(*(v93 - 8) + 8))(v0 + 9);
      (*(v96 + 32))(v90, v55, v98);
      sub_24DCB5904();
LABEL_17:
      swift_storeEnumTagMultiPayload();
      v44 = v102;
      goto LABEL_11;
    }

    v28 = v0[46];
    v29 = v0[37];
    v30 = v0[33];

LABEL_9:

    (*(v29 + 8))(v28, v30);
    goto LABEL_10;
  }

  v61 = v0[55];
  v78 = v0[48];
  v80 = v0[49];
  v75 = v0[47];
  v99 = v0[46];
  v62 = v0[44];
  v97 = v0[45];
  v63 = v0[41];
  v94 = v0[40];
  v64 = v0[37];
  v65 = v0[33];
  v85 = v0[50];
  v66 = v0[31];
  v67 = v0[32];

  v107 = *sub_24DC4136C();
  sub_24DC31044();
  RPCError.init(code:message:metadata:cause:)(&v107, 0xD0000000000000C6, 0x800000024DCC5B90, &v108, 0, &v103);
  v70 = type metadata accessor for StreamingClientResponse(0, v65, v68, v69);
  (*(*(v70 - 8) + 8))(v67, v70);
  v24 = *(v62 + 8);
  v24(v75, v63);
  v24(v78, v63);
  v24(v80, v63);
  (*(*(v61 - 8) + 8))(v0 + 15, v61);
  (*(*(v85 - 8) + 8))(v0 + 9);
  v71 = v104;
  v72 = v106;
  v73 = v105;
  *v66 = v103;
  *(v66 + 8) = v71;
  *(v66 + 16) = v73;
  *(v66 + 32) = v72;
  sub_24DCB5904();
  v44 = v102;
  swift_storeEnumTagMultiPayload();
  (*(v10 + 8))(v97, v94);
  (*(v64 + 8))(v99, v65);
  v24(v102 + v100, v63);
LABEL_11:
  v45 = v0[43];
  v46 = v0[41];
  v24(v44 + v101, v46);
  v24(v45, v46);

  v47 = v0[1];

  return v47();
}

uint64_t sub_24DC8F4B0()
{
  v34 = v0;
  v1 = *(v0 + 448);
  (*(*(*(v0 + 440) - 8) + 8))(v0 + 120);
  *(v0 + 224) = v1;
  MEMORY[0x2530363C0](v1);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 400);
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    MEMORY[0x2530363B0](v1);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 192);
    v29 = *(v0 + 72);
    v30[0] = v6;
    v31 = v7;
    v32 = *(v0 + 176);
    v33 = v8;

    ClientResponse.Contents.init(metadata:error:)(&v29, v30, v3, v9, v4);
    v12 = type metadata accessor for StreamingClientResponse(0, v3, v10, v11);
    (*(*(v12 - 8) + 8))(v5, v12);
    (*(*(v2 - 8) + 8))(v0 + 72, v2);
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
    MEMORY[0x2530363B0](*(v0 + 224));
  }

  else
  {
    v13 = *(v0 + 400);
    v14 = *(v0 + 264);
    v15 = *(v0 + 248);
    v27 = *(v0 + 256);
    MEMORY[0x2530363B0](*(v0 + 224));
    v28 = *sub_24DC412F4();
    swift_getErrorValue();
    v16 = *(*(v0 + 208) - 8);
    swift_task_alloc();
    (*(v16 + 16))();
    v17 = sub_24DCB4DC4();
    v19 = v18;

    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v28, v17, v19, &v29, 0, v30);
    MEMORY[0x2530363B0](v1);
    v22 = type metadata accessor for StreamingClientResponse(0, v14, v20, v21);
    (*(*(v22 - 8) + 8))(v27, v22);
    (*(*(v13 - 8) + 8))(v0 + 72, v13);
    v23 = v31;
    v24 = v33;
    *v15 = v30[0];
    *(v15 + 8) = v23;
    *(v15 + 16) = v32;
    *(v15 + 32) = v24;
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_24DC8F884()
{
  v34 = v0;
  (*(*(v0 + 352) + 8))(*(v0 + 392), *(v0 + 328));
  v1 = *(v0 + 464);
  (*(*(*(v0 + 440) - 8) + 8))(v0 + 120);
  *(v0 + 224) = v1;
  MEMORY[0x2530363C0](v1);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 400);
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    MEMORY[0x2530363B0](v1);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 192);
    v29 = *(v0 + 72);
    v30[0] = v6;
    v31 = v7;
    v32 = *(v0 + 176);
    v33 = v8;

    ClientResponse.Contents.init(metadata:error:)(&v29, v30, v3, v9, v4);
    v12 = type metadata accessor for StreamingClientResponse(0, v3, v10, v11);
    (*(*(v12 - 8) + 8))(v5, v12);
    (*(*(v2 - 8) + 8))(v0 + 72, v2);
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
    MEMORY[0x2530363B0](*(v0 + 224));
  }

  else
  {
    v13 = *(v0 + 400);
    v14 = *(v0 + 264);
    v15 = *(v0 + 248);
    v27 = *(v0 + 256);
    MEMORY[0x2530363B0](*(v0 + 224));
    v28 = *sub_24DC412F4();
    swift_getErrorValue();
    v16 = *(*(v0 + 208) - 8);
    swift_task_alloc();
    (*(v16 + 16))();
    v17 = sub_24DCB4DC4();
    v19 = v18;

    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v28, v17, v19, &v29, 0, v30);
    MEMORY[0x2530363B0](v1);
    v22 = type metadata accessor for StreamingClientResponse(0, v14, v20, v21);
    (*(*(v22 - 8) + 8))(v27, v22);
    (*(*(v13 - 8) + 8))(v0 + 72, v13);
    v23 = v31;
    v24 = v33;
    *v15 = v30[0];
    *(v15 + 8) = v23;
    *(v15 + 16) = v32;
    *(v15 + 32) = v24;
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_24DC8FC78()
{
  v37 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 328);
  v3 = *(*(v0 + 352) + 8);
  v3(*(v0 + 384), v2);
  v3(v1, v2);
  v4 = *(v0 + 480);
  (*(*(*(v0 + 440) - 8) + 8))(v0 + 120);
  *(v0 + 224) = v4;
  MEMORY[0x2530363C0](v4);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 400);
    v6 = *(v0 + 264);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    MEMORY[0x2530363B0](v4);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v11 = *(v0 + 192);
    v32 = *(v0 + 72);
    v33[0] = v9;
    v34 = v10;
    v35 = *(v0 + 176);
    v36 = v11;

    ClientResponse.Contents.init(metadata:error:)(&v32, v33, v6, v12, v7);
    v15 = type metadata accessor for StreamingClientResponse(0, v6, v13, v14);
    (*(*(v15 - 8) + 8))(v8, v15);
    (*(*(v5 - 8) + 8))(v0 + 72, v5);
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
    MEMORY[0x2530363B0](*(v0 + 224));
  }

  else
  {
    v16 = *(v0 + 400);
    v17 = *(v0 + 264);
    v18 = *(v0 + 248);
    v30 = *(v0 + 256);
    MEMORY[0x2530363B0](*(v0 + 224));
    v31 = *sub_24DC412F4();
    swift_getErrorValue();
    v19 = *(*(v0 + 208) - 8);
    swift_task_alloc();
    (*(v19 + 16))();
    v20 = sub_24DCB4DC4();
    v22 = v21;

    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v31, v20, v22, &v32, 0, v33);
    MEMORY[0x2530363B0](v4);
    v25 = type metadata accessor for StreamingClientResponse(0, v17, v23, v24);
    (*(*(v25 - 8) + 8))(v30, v25);
    (*(*(v16 - 8) + 8))(v0 + 72, v16);
    v26 = v34;
    v27 = v36;
    *v18 = v33[0];
    *(v18 + 8) = v26;
    *(v18 + 16) = v35;
    *(v18 + 32) = v27;
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
  }

  v28 = *(v0 + 8);

  return v28();
}

void sub_24DC90084(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, a3, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - v10);
  v12 = *a1;
  v13 = *a2;
  v21 = v13;
  v22 = v12;

  RPCError.init(status:metadata:)(&v22, &v21, v23);
  v14 = v24;
  if (v24)
  {
    v16 = v25;
    v15 = v26;
    v18 = v23[0];
    v17 = v23[1];

    *a5 = v18;
    *(a5 + 8) = v17;
    *(a5 + 16) = v14;
    *(a5 + 24) = v16;
    *(a5 + 32) = v15;
  }

  else
  {
    Metadata.init(dictionaryLiteral:)();
    *v11 = v13;
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
    sub_24DC3ED1C(v11, v8, v19, MEMORY[0x277D84950], v23);
    (*(v9 + 8))(v11, v8);
    StreamingClientResponse.Contents.init(metadata:bodyParts:)(&v22, v23, a5);
  }

  *(a5 + 48) = v14 != 0;
}

void sub_24DC90220(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 16);
  v9 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(255, v8, a3, a4);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v10 = type metadata accessor for RPCAsyncSequence(255, v9, v24, MEMORY[0x277D84950]);
  type metadata accessor for StreamingClientResponse.Contents.BodyPart(255, a4, v11, v12);
  swift_getWitnessTable();
  v13 = sub_24DCB5774();
  MEMORY[0x28223BE20](v13);
  v16 = type metadata accessor for StreamingClientResponse.Contents(255, v8, v14, v15);
  sub_24DC2E0D8();
  v17 = sub_24DCB5904();
  (*(*(v17 - 8) + 16))(&v32, v5, v17);
  if (v35)
  {
    LOBYTE(v28) = v32;
    *(&v28 + 1) = *(&v32 + 1);
    v29 = v33;
    *&v30 = v34;
    v31 = 1;
    StreamingClientResponse.init(accepted:)(&v28, a5);
  }

  else
  {
    v28 = v32;
    v29 = v33;
    v30 = v34;
    StreamingClientResponse.metadata.getter(a3, v18, v19, &v27);
    (*(*(v10 - 8) + 16))(v26, &v28 + 8, v10);
    v20 = swift_allocObject();
    v20[2] = v8;
    v20[3] = a4;
    v20[4] = a1;
    v20[5] = a2;

    sub_24DCB5274();

    swift_getWitnessTable();
    RPCAsyncSequence.init<A>(wrapping:)();
    nullsub_1();
    v21 = StreamingClientResponse.init(of:metadata:bodyParts:)(&v27, v26, a5);
    (*(*(v16 - 8) + 8))(&v28, v16, v21);
  }
}

uint64_t sub_24DC9054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a5 - 8);
  v6[9] = swift_task_alloc();
  v10 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, a5, v8, v9);
  v6[10] = v10;
  v6[11] = *(v10 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC90670, 0, 0);
}

uint64_t sub_24DC90670()
{
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 24), *(v0 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 96);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 56);
    **(v0 + 16) = *v4;
    type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, v5, v2, v3);
  }

  else
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 48);
    v9 = *(v0 + 32);
    (*(v7 + 32))(v6, v4, v8);
    v9(v6);
    (*(v7 + 8))(v6, v8);
    type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, *(v0 + 56), v10, v11);
  }

  swift_storeEnumTagMultiPayload();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24DC90800()
{

  return swift_deallocObject();
}

uint64_t sub_24DC90838(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24DC2FD00;

  return sub_24DC9054C(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_24DC909E4(unsigned __int8 a1)
{
  sub_24DCB58A4();
  MEMORY[0x253035FF0](a1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC90A48(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DC909BC(v3, *v1);
  return sub_24DCB58F4();
}

uint64_t GRPCServer.__allocating_init(transport:services:interceptors:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(v3 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v6, v7);
  v11 = *(a3 + 16);
  if (v11)
  {
    v25 = v10;
    v26 = a2;
    v27 = v6;
    v28 = v7;
    v29 = v3;
    v37 = MEMORY[0x277D84F90];
    sub_24DC92774(0, v11, 0);
    v12 = v37;
    v24 = a3;
    v13 = a3 + 32;
    do
    {
      sub_24DC5B208(v13, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F260, &qword_24DCBCA50);
      static ConditionalInterceptor.Subject.all.getter(&v32);
      v30 = v32;
      v31 = v33;
      static ConditionalInterceptor<>.apply(_:to:)(v35, v34, &v30);

      __swift_destroy_boxed_opaque_existential_1(v34);
      v37 = v12;
      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        sub_24DC92774((v14 > 1), v15 + 1, 1);
        v12 = v37;
      }

      v12[2] = v15 + 1;
      v16 = &v12[7 * v15];
      v17 = v35[0];
      v18 = v35[1];
      v19 = v35[2];
      *(v16 + 80) = v36;
      *(v16 + 3) = v18;
      *(v16 + 4) = v19;
      *(v16 + 2) = v17;
      v13 += 40;
      --v11;
    }

    while (v11);

    v7 = v28;
    a2 = v26;
    v6 = v27;
    v10 = v25;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v20._rawValue = v12;
  v21 = sub_24DC928E0(v10, a2, v20);
  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v6, v7);
  return v21;
}

uint64_t GRPCServer.__allocating_init(transport:services:interceptorPipeline:)(uint64_t a1, uint64_t a2, Swift::OpaquePointer a3)
{
  v5 = sub_24DC928E0(a1, a2, a3);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t GRPCServer.__allocating_init(transport:router:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  GRPCServer.init(transport:router:)(a1, a2, v5, v6);
  return v4;
}

uint64_t *GRPCServer.init(transport:router:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *a2;
  v12 = 0;
  v13 = 0;
  v14[0] = 0;
  v8 = *(v6 + 80);
  v9 = type metadata accessor for GRPCServer.State(0, v8, *(v6 + 88), a4);
  (*(*(v9 - 8) + 32))(v14, &v12, v9);
  v10 = v4 + *(*v4 + 112);
  *v10 = v13;
  *(v10 + 4) = v14[0];
  (*(*(v8 - 8) + 32))(v4 + *(*v4 + 96), a1, v8);
  *(v4 + *(*v4 + 104)) = v7;
  return v4;
}

uint64_t GRPCServer.serve()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24DC90F30, 0, 0);
}

uint64_t sub_24DC90F30()
{
  v20 = v0;
  v1 = v0[3];
  v2 = v0[2] + *(*v0[2] + 112);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  if (*(v2 + 4) - 2 >= 2)
  {
    if (!*(v2 + 4))
    {
      *(v2 + 4) = 1;
      goto LABEL_10;
    }

    static RuntimeError.Code.serverIsAlreadyRunning.getter(v19);
    sub_24DC3C254();
    v5 = swift_allocError();
    v9 = v11;
    v6 = v19;
    v10 = 0xD00000000000003BLL;
    v7 = 0x800000024DCC5CE0;
  }

  else
  {
    static RuntimeError.Code.serverIsStopped.getter(&v18);
    sub_24DC3C254();
    v5 = swift_allocError();
    v6 = &v18;
    v7 = 0x800000024DCC5CA0;
    v9 = v8;
    v10 = 0xD000000000000034;
  }

  RuntimeError.init(code:message:cause:)(v6, v10, v7, 0, v9);
  swift_willThrow();
  if (v5)
  {
    os_unfair_lock_unlock(v2);
    v12 = v0[1];

    return v12();
  }

LABEL_10:
  os_unfair_lock_unlock(v2);
  v14 = *(v4 + 24);

  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[4] = v15;
  *v15 = v0;
  v15[1] = sub_24DC911C8;
  v16 = v0[2];

  return v17(&unk_24DCBCA68, v16, v3, v4);
}

uint64_t sub_24DC911C8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24DC91374;
  }

  else
  {

    v2 = sub_24DC912E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC912E4()
{
  v1 = *(v0 + 16) + *(**(v0 + 16) + 112);
  os_unfair_lock_lock(v1);
  *(v1 + 4) = 3;
  os_unfair_lock_unlock(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24DC91374()
{
  v9 = v0;
  v1 = v0[5];
  v2 = v0[2];

  static RuntimeError.Code.transportError.getter(v8);
  sub_24DC3C254();
  swift_allocError();
  v4 = v3;
  MEMORY[0x2530363C0](v1);
  RuntimeError.init(code:message:cause:)(v8, 0xD000000000000020, 0x800000024DCC5C60, v1, v4);
  swift_willThrow();
  MEMORY[0x2530363B0](v1);
  v5 = v2 + *(*v2 + 112);
  os_unfair_lock_lock(v5);
  *(v5 + 4) = 3;
  os_unfair_lock_unlock(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_24DC9148C(uint64_t a1, uint64_t a2, void *a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = *a3;
  return MEMORY[0x2822009F8](sub_24DC914D8, 0, 0);
}

uint64_t sub_24DC914D8()
{
  v1 = v0[6];
  v0[2] = *(v0[5] + *(*v0[5] + 104));

  v2 = swift_task_alloc();
  v0[7] = v2;
  v4 = type metadata accessor for RPCRouter(0, *(v1 + 80), *(v1 + 88), v3);
  *v2 = v0;
  v2[1] = sub_24DC915B4;
  v5 = v0[3];
  v6 = v0[4];

  return sub_24DCA5CB0(v5, v6, v4);
}

uint64_t sub_24DC915B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall GRPCServer.beginGracefulShutdown()()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 112);
  os_unfair_lock_lock(v2);
  if (*(v2 + 4) - 2 >= 2)
  {
    if (*(v2 + 4))
    {
      v5 = v1 + 80;
      v3 = *(v1 + 80);
      v4 = *(v5 + 8);
      *(v2 + 4) = 2;
      os_unfair_lock_unlock(v2);
      (*(v4 + 32))(v3, v4);
      return;
    }

    *(v2 + 4) = 3;
  }

  os_unfair_lock_unlock(v2);
}

uint64_t *GRPCServer.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);

  type metadata accessor for GRPCServer.State(255, v2, *(v1 + 88), v3);
  sub_24DCB4C14();
  sub_24DCB5404();
  return v0;
}

uint64_t GRPCServer.__deallocating_deinit()
{
  GRPCServer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t withGRPCServer<A, B>(transport:services:interceptors:isolation:handleServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  if (a5)
  {
    swift_getObjectType();
    v9 = sub_24DCB50D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v8 + 144) = v9;
  *(v8 + 152) = v11;

  return MEMORY[0x2822009F8](sub_24DC919BC, v9, v11);
}

uint64_t sub_24DC919BC()
{
  v28 = v0;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_24DC92774(0, v2, 0);
    v3 = v21;
    v4 = v1 + 32;
    do
    {
      sub_24DC5B208(v4, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F260, &qword_24DCBCA50);
      static ConditionalInterceptor.Subject.all.getter(&v24);
      v26 = v24;
      v27 = v25;
      static ConditionalInterceptor<>.apply(_:to:)(v22, v0 + 16, &v26);

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v6 = *(v21 + 16);
      v5 = *(v21 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24DC92774((v5 > 1), v6 + 1, 1);
      }

      *(v21 + 16) = v6 + 1;
      v7 = v21 + 56 * v6;
      v8 = v22[0];
      v9 = v22[1];
      v10 = v22[2];
      *(v7 + 80) = v23;
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  *(v0 + 160) = v3;
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_24DC91B98;
  v12 = *(v0 + 120);
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v19 = *(v0 + 56);
  v31 = *(v0 + 136);
  v30 = v12;

  return withGRPCServer<A, B>(transport:services:interceptorPipeline:isolation:handleServer:)(v19, v17, v18, v3, v15, v16, v13, v14);
}

uint64_t sub_24DC91B98()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[19];

    return MEMORY[0x2822009F8](sub_24DC91CD0, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24DC91CD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t withGRPCServer<A, B>(transport:services:interceptorPipeline:isolation:handleServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v15;
  *(v8 + 80) = v14;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  if (a5)
  {
    swift_getObjectType();
    v9 = sub_24DCB50D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v8 + 104) = v9;
  *(v8 + 112) = v11;

  return MEMORY[0x2822009F8](sub_24DC91DE8, v9, v11);
}

uint64_t sub_24DC91DE8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 64);
  *(v3 + 16) = *(v0 + 80);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  *(v3 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_24DC91EE0;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A8](v7);
}

uint64_t sub_24DC91EE0()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[13];
    v4 = v2[14];

    return MEMORY[0x2822009F8](sub_24DC92018, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24DC92018()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC9207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v11;
  v8[11] = v12;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC92130, 0, 0);
}

uint64_t sub_24DC92130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[12];
  v6 = v4[10];
  v7 = v4[6];
  v8 = v4[7];
  v10 = v4[4];
  v9 = v4[5];
  type metadata accessor for GRPCServer(0, v4[9], v4[11], a4);

  v11._rawValue = v7;
  v12 = sub_24DC928E0(v10, v9, v11);
  v4[13] = v12;
  v13 = sub_24DCB51C4();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v6;
  v14[5] = v12;

  sub_24DC925A4(v5, &unk_24DCBCB78, v14);
  sub_24DC92FCC(v5);
  v18 = (v8 + *v8);
  v15 = swift_task_alloc();
  v4[14] = v15;
  *v15 = v4;
  v15[1] = sub_24DC92320;
  v16 = v4[2];

  return v18(v16, v12);
}

uint64_t sub_24DC92320()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24DC924A8;
  }

  else
  {
    v2 = sub_24DC92434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC92434()
{
  GRPCServer.beginGracefulShutdown()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC924A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC92514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DC2FD00;

  return GRPCServer.serve()();
}

uint64_t sub_24DC925A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_24DC7CF18(a1, v18 - v8);
  v10 = sub_24DCB51C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24DC92FCC(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_24DCB50D4();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DCB51B4();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

void *sub_24DC92774(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24DC92794(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DC92794(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F268, &unk_24DCBCB80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F270, &qword_24DCBD880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24DC928E0(uint64_t a1, uint64_t a2, Swift::OpaquePointer a3)
{
  v6 = a1;
  v7 = *(v3 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 88);
  RPCRouter.init()(v7, v11, &v29, v12);
  v13 = *(a2 + 16);
  if (v13)
  {
    rawValue = a3._rawValue;
    v24 = v10;
    v25 = v6;
    v14 = a2 + 32;
    do
    {
      sub_24DC5B208(v14, v26);
      v16 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v15 + 8))(&v29, v7, v11, v16, v15);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v14 += 40;
      --v13;
    }

    while (v13);

    v10 = v24;
    v6 = v25;
    a3._rawValue = rawValue;
  }

  else
  {
  }

  type metadata accessor for RPCRouter(0, v7, v11, v17);
  RPCRouter.registerInterceptors(pipeline:)(a3);

  (*(v8 + 16))(v10, v6, v7);
  v18 = swift_allocObject();
  GRPCServer.init(transport:router:)(v10, &v29, v19, v20);
  return v18;
}

uint64_t sub_24DC92AC4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24DC2FD00;

  return sub_24DC9148C(a1, a2, v2);
}

uint64_t sub_24DC92B6C(uint64_t a1, uint64_t a2)
{
  v13 = v2[2];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v10 = v2[8];
  v9 = v2[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24DC2FD00;

  return sub_24DC9207C(a1, a2, v6, v7, v8, v10, v9, v13);
}

uint64_t sub_24DC92C60(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC92D50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for GRPCServer.State(255, *a1, a1[1], a4);
  return sub_24DCB4C04();
}

uint64_t sub_24DC92D9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceConfig.LoadBalancingConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24DC92EF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24DC92F38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DC334F4;

  return sub_24DC92514();
}

uint64_t sub_24DC92FCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double RetryThrottle.tokens.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24) / 1000.0;
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

BOOL RetryThrottle.isRetryPermitted.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 48) < *(v0 + 24);
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t RetryThrottle.__allocating_init(maxTokens:tokenRatio:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  RetryThrottle.init(maxTokens:tokenRatio:)(a1, a2);
  return v4;
}

uint64_t RetryThrottle.init(maxTokens:tokenRatio:)(uint64_t result, double a2)
{
  v3 = a2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((result - 1001) >= 0xFFFFFFFFFFFFFC18 && v3 >= 1)
  {
    *(v2 + 40) = 1000 * result;
    *(v2 + 48) = 500 * result;
    *(v2 + 16) = 0;
    *(v2 + 24) = 1000 * result;
    *(v2 + 32) = v3;
    return v2;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t RetryThrottle.__allocating_init(policy:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = swift_allocObject();
  RetryThrottle.init(maxTokens:tokenRatio:)(v1, v2);
  return v3;
}

void sub_24DC93230()
{
  os_unfair_lock_lock((v0 + 16));
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  if (v2 + *(v0 + 24) < v1)
  {
    v1 = v2 + *(v0 + 24);
  }

  *(v0 + 24) = v1;

  os_unfair_lock_unlock((v0 + 16));
}

BOOL sub_24DC93278()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = (*(v0 + 24) - 1000) & ~((*(v0 + 24) - 1000) >> 63);
  *(v0 + 24) = v1;
  v2 = *(v0 + 48) >= v1;
  os_unfair_lock_unlock((v0 + 16));
  return v2;
}

uint64_t sub_24DC9332C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F278, &unk_24DCBCBF0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DC9335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v29;
  *(v8 + 528) = v28;
  *(v8 + 520) = v27;
  *(v8 + 504) = v25;
  *(v8 + 512) = v26;
  *(v8 + 488) = v23;
  *(v8 + 496) = v24;
  *(v8 + 472) = a8;
  *(v8 + 480) = v22;
  *(v8 + 456) = a6;
  *(v8 + 464) = a7;
  *(v8 + 440) = a2;
  *(v8 + 448) = a5;
  *(v8 + 432) = a1;
  *(v8 + 544) = *(v26 - 8);
  *(v8 + 552) = swift_task_alloc();
  v11 = type metadata accessor for RPCResponsePart(255, v24, v27, v10);
  *(v8 + 560) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  *(v8 + 568) = v12;
  v13 = type metadata accessor for RPCAsyncSequence.AsyncIterator(255, v11, v12, MEMORY[0x277D84950]);
  *(v8 + 576) = v13;
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for UncheckedAsyncIteratorSequence(255, v13, WitnessTable, v15);
  *(v8 + 584) = v16;
  v17 = swift_getWitnessTable();
  *(v8 + 592) = v17;
  *(v8 + 128) = v16;
  *(v8 + 136) = v24;
  *(v8 + 144) = v23;
  *(v8 + 152) = v26;
  *(v8 + 160) = v12;
  *(v8 + 168) = v17;
  *(v8 + 176) = v27;
  *(v8 + 184) = v29;
  v18 = type metadata accessor for ClientStreamExecutor.RawBodyPartToMessageSequence(0, v8 + 128);
  *(v8 + 600) = v18;
  *(v8 + 608) = *(v18 - 8);
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  v19 = *(v25 - 8);
  *(v8 + 632) = v19;
  *(v8 + 640) = *(v19 + 64);
  *(v8 + 648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = *a3;
  *(v8 + 680) = *(a3 + 16);

  return MEMORY[0x2822009F8](sub_24DC93638, 0, 0);
}

uint64_t sub_24DC93638()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 448);
  *(v0 + 416) = v1;
  if (v2 < 2)
  {
  }

  else
  {
    v3 = v2 - 1;

    sub_24DC7EF6C(v3, 0);
    v1 = *(v0 + 664);
  }

  v36 = *(v0 + 672);
  v37 = *(v0 + 680);
  v4 = *(v0 + 656);
  v5 = *(v0 + 632);
  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v34 = *(v0 + 536);
  v35 = v4;
  v8 = *(v0 + 496);
  v9 = *(v0 + 472);
  v30 = *(v0 + 456);
  v31 = *(v0 + 648);
  v33 = *(v0 + 504);
  v38 = *(v0 + 520);
  v10 = *(v0 + 504);
  v32 = *(v0 + 480);

  v11 = sub_24DCB51C4();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = type metadata accessor for RPCAsyncSequence(255, v7, v6, MEMORY[0x277D84950]);
  v14 = type metadata accessor for RPCRequestPart(255, v8, v38, v13);
  v17 = type metadata accessor for RPCWriter.Closable(255, v14, v15, v16);
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  *(v0 + 384) = v12;
  *(v0 + 392) = v17;
  *(v0 + 400) = WitnessTable;
  *(v0 + 408) = v19;
  v20 = type metadata accessor for RPCStream(0, v0 + 384);
  (*(*(v20 - 8) + 16))(v0 + 16, v9, v20);
  (*(v5 + 16))(v31, v30, v10);
  v21 = (*(v5 + 80) + 232) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v32;
  *(v22 + 48) = v8;
  *(v22 + 56) = v33;
  *(v22 + 72) = v38;
  *(v22 + 88) = v34;
  v23 = *(v0 + 96);
  *(v22 + 160) = *(v0 + 80);
  *(v22 + 176) = v23;
  *(v22 + 192) = *(v0 + 112);
  v24 = *(v0 + 32);
  *(v22 + 96) = *(v0 + 16);
  *(v22 + 112) = v24;
  v25 = *(v0 + 64);
  *(v22 + 128) = *(v0 + 48);
  *(v22 + 144) = v25;
  *(v22 + 208) = v1;
  *(v22 + 216) = v36;
  *(v22 + 224) = v37;
  (*(v5 + 32))(v22 + v21, v31, v10);

  sub_24DC7A1A0(v35, &unk_24DCBCC10, v22);
  sub_24DC92FCC(v35);
  v26 = swift_task_alloc();
  *(v0 + 688) = v26;
  *v26 = v0;
  v26[1] = sub_24DC939A0;
  v27 = *(v0 + 520);
  v28 = *(v0 + 496);

  return sub_24DC94B28(v0 + 192, v9 + 32, v28, v27);
}

uint64_t sub_24DC939A0()
{

  return MEMORY[0x2822009F8](sub_24DC93A9C, 0, 0);
}

uint64_t sub_24DC93A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = v4;
  ResponsePart = type metadata accessor for ClientStreamExecutor.OnFirstResponsePart(0, *(v4 + 496), *(v4 + 520), a4);
  v6 = *(ResponsePart - 8);
  (*(v6 + 16))(v4 + 248, v4 + 192, ResponsePart);
  if (*(v4 + 296))
  {
    if (*(v4 + 296) == 1)
    {
      v8 = *(v4 + 448);
      v10 = *(v4 + 248);
      v9 = *(v4 + 256);
      v45 = v9;
      if (v8 >= 2)
      {
        sub_24DC7EF6C(v8 - 1, 0);
        v9 = v45;
      }

      v11 = *(v4 + 488);
      v12 = *(v4 + 432);
      v46 = v10;
      v48.n128_u64[0] = v9;
      sub_24DC90084(&v46, &v48, v11, v7, v12);
    }

    else
    {
      v28 = *(v4 + 432);
      v29 = *(v4 + 256);
      v30 = *(v4 + 264);
      v31 = *(v4 + 272);
      v32 = *(v4 + 280);
      v48.n128_u8[0] = *(v4 + 248);
      v48.n128_u64[1] = v29;
      v49 = v30;
      v50 = v31;
      v51 = v32;

      MEMORY[0x2530363C0](v32);
      nullsub_1();
      StreamingClientResponse.init(of:error:)(&v48, v28);

      MEMORY[0x2530363B0](v32);
    }
  }

  else
  {
    v13 = *(v4 + 448);
    v47 = *(v4 + 248);
    v14 = *(v4 + 272);
    *(v4 + 304) = *(v4 + 256);
    *(v4 + 320) = v14;
    *(v4 + 336) = *(v4 + 288);
    if (v13 >= 2)
    {
      sub_24DC7EF6C(v13 - 1, 0);
    }

    v41 = *(v4 + 608);
    v42 = *(v4 + 616);
    v15 = *(v4 + 600);
    v39 = *(v4 + 624);
    v40 = *(v4 + 592);
    v16 = *(v4 + 584);
    v17 = *(v4 + 552);
    v18 = *(v4 + 544);
    v35 = *(v4 + 520);
    v36 = *(v4 + 536);
    v19 = *(v4 + 512);
    v20 = *(v4 + 488);
    v37 = *(v4 + 496);
    v38 = *(v4 + 568);
    v21 = *(v4 + 464);
    v43 = *(v4 + 432);
    v44 = *(v4 + 576);
    (*(*(v44 - 8) + 16))(v4 + 344, v4 + 304);
    *(v4 + 424) = sub_24DC72984(v4 + 344);
    (*(v18 + 16))(v17, v21, v19);
    sub_24DC94F60(v4 + 424, v17, v16, v37, v20, v19, v38, v40, v39, v35, v36);
    (*(v41 + 16))(v42, v39, v15);
    type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, v20, v22, v23);
    swift_getWitnessTable();
    RPCAsyncSequence.init<A>(wrapping:)();
    nullsub_1();
    v24 = StreamingClientResponse.init(of:metadata:bodyParts:)(&v47, &v48, v43);
    (*(v41 + 8))(v39, v15, v24);
    v27 = type metadata accessor for UnsafeTransfer(0, v44, v25, v26);
    (*(*(v27 - 8) + 8))(v4 + 304, v27);
  }

  (*(v6 + 8))(v4 + 192, ResponsePart);

  v33 = *(v4 + 8);

  return v33();
}