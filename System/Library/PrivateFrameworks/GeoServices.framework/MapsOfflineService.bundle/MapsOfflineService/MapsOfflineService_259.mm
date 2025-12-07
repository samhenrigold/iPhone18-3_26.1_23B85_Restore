void sub_FC5538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_FC5618(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 920) != *(a2 + 920) || *(a1 + 924) != *(a2 + 924) || *(a1 + 928) != *(a2 + 928))
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 384);
  v5 = *(a2 + 384);
  if (v4 != v5)
  {
    v6 = v4 - v5;
    if (v6 <= 0.0)
    {
      v6 = -v6;
    }

    if (v6 >= 2.22044605e-16)
    {
      goto LABEL_16;
    }
  }

  v7 = *(a1 + 392);
  v8 = *(a2 + 392);
  if (v7 != v8)
  {
    v9 = v7 - v8;
    if (v9 <= 0.0)
    {
      v9 = -v9;
    }

    if (v9 >= 2.22044605e-16)
    {
      goto LABEL_16;
    }
  }

  v10 = *(a1 + 400);
  v11 = *(a2 + 400);
  if (v10 == v11)
  {
    goto LABEL_21;
  }

  v12 = v10 - v11;
  if (v12 <= 0.0)
  {
    v12 = -v12;
  }

  if (v12 < 2.22044605e-16)
  {
LABEL_21:
    v13 = 0;
    if (*(a1 + 936) != *(a2 + 936))
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_16:
    v13 = 4;
    if (*(a1 + 936) != *(a2 + 936))
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 940) == *(a2 + 940) && *(a1 + 944) == *(a2 + 944))
  {
    if (*(a1 + 824) == *(a2 + 824))
    {
      goto LABEL_23;
    }

LABEL_37:
    v13 |= 1uLL;
    goto LABEL_38;
  }

LABEL_22:
  v13 |= 0x400000uLL;
  if (*(a1 + 824) != *(a2 + 824))
  {
    goto LABEL_37;
  }

LABEL_23:
  if (*(a1 + 828) != *(a2 + 828) || *(a1 + 832) != *(a2 + 832))
  {
    goto LABEL_37;
  }

  v14 = *(a1 + 312);
  v15 = *(a2 + 312);
  if (v14 != v15)
  {
    v16 = v14 - v15;
    if (v16 <= 0.0)
    {
      v16 = -v16;
    }

    if (v16 >= 2.22044605e-16)
    {
      goto LABEL_37;
    }
  }

  v17 = *(a1 + 320);
  v18 = *(a2 + 320);
  if (v17 != v18)
  {
    v19 = v17 - v18;
    if (v19 <= 0.0)
    {
      v19 = -v19;
    }

    if (v19 >= 2.22044605e-16)
    {
      goto LABEL_37;
    }
  }

  v20 = *(a1 + 328);
  v21 = *(a2 + 328);
  if (v20 != v21)
  {
    v22 = v20 - v21;
    if (v22 <= 0.0)
    {
      v22 = -v22;
    }

    if (v22 >= 2.22044605e-16)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  if (*(a1 + 856) != *(a2 + 856) || *(a1 + 860) != *(a2 + 860) || *(a1 + 864) != *(a2 + 864))
  {
    goto LABEL_53;
  }

  v23 = *(a1 + 336);
  v24 = *(a2 + 336);
  if (v23 != v24)
  {
    v25 = v23 - v24;
    if (v25 <= 0.0)
    {
      v25 = -v25;
    }

    if (v25 >= 2.22044605e-16)
    {
      goto LABEL_53;
    }
  }

  v26 = *(a1 + 344);
  v27 = *(a2 + 344);
  if (v26 != v27)
  {
    v28 = v26 - v27;
    if (v28 <= 0.0)
    {
      v28 = -v28;
    }

    if (v28 >= 2.22044605e-16)
    {
      goto LABEL_53;
    }
  }

  v29 = *(a1 + 352);
  v30 = *(a2 + 352);
  if (v29 != v30)
  {
    v31 = v29 - v30;
    if (v31 <= 0.0)
    {
      v31 = -v31;
    }

    if (v31 >= 2.22044605e-16)
    {
LABEL_53:
      v13 |= 2uLL;
    }
  }

  if (*(a1 + 776) != *(a2 + 776) || *(a1 + 780) != *(a2 + 780) || *(a1 + 784) != *(a2 + 784) || *(a1 + 792) != *(a2 + 792) || *(a1 + 796) != *(a2 + 796) || *(a1 + 800) != *(a2 + 800))
  {
    v13 |= 8uLL;
  }

  v32 = *(a1 + 40);
  v33 = *(a2 + 40);
  if (v32 == v33)
  {
    goto LABEL_315;
  }

  v34 = v32 - v33;
  if (v34 <= 0.0)
  {
    v34 = -v34;
  }

  if (v34 < 2.22044605e-16)
  {
LABEL_315:
    v35 = *(a1 + 48);
    v36 = *(a2 + 48);
    if (v35 == v36)
    {
      goto LABEL_316;
    }

    v37 = v35 - v36;
    if (v37 <= 0.0)
    {
      v37 = -v37;
    }

    if (v37 < 2.22044605e-16)
    {
LABEL_316:
      v39 = *(a1 + 216);
      v38 = *(a1 + 224);
      v40 = *(a2 + 216);
      if (v38 - v39 == *(a2 + 224) - v40)
      {
        if (v39 == v38)
        {
          goto LABEL_86;
        }

        while (1)
        {
          if (*v39 != *v40)
          {
            v41 = *v39 - *v40;
            if (v41 <= 0.0)
            {
              v41 = -v41;
            }

            if (v41 >= 2.22044605e-16)
            {
              break;
            }
          }

          v42 = v39[1];
          v43 = v40[1];
          if (v42 != v43)
          {
            v44 = v42 - v43;
            if (v44 <= 0.0)
            {
              v44 = -v44;
            }

            if (v44 >= 2.22044605e-16)
            {
              break;
            }
          }

          v45 = v39[2];
          v46 = v40[2];
          if (v45 != v46)
          {
            v47 = v45 - v46;
            if (v47 <= 0.0)
            {
              v47 = -v47;
            }

            if (v47 >= 2.22044605e-16)
            {
              break;
            }
          }

          v39 += 3;
          v40 += 3;
          if (v39 == v38)
          {
            goto LABEL_86;
          }
        }
      }
    }
  }

  v13 |= 0x10uLL;
LABEL_86:
  if (*(a1 + 206) == *(a2 + 206))
  {
    v48 = v13;
  }

  else
  {
    v48 = v13 | 0x20;
  }

  if (*(a1 + 576) == *(a2 + 576))
  {
    v50 = *(a1 + 480);
    v49 = *(a1 + 488);
    v51 = *(a2 + 480);
    if (v49 - v50 == *(a2 + 488) - v51)
    {
      if (v50 == v49)
      {
LABEL_96:
        v52 = *(a1 + 560);
        v53 = *(a1 + 552);
        v54 = *(a2 + 552);
        if (v52 - v53 == *(a2 + 560) - v54)
        {
          if (v53 == v52)
          {
LABEL_102:
            v56 = *(a1 + 504);
            v55 = *(a1 + 512);
            v57 = *(a2 + 504);
            if (v55 - v56 == *(a2 + 512) - v57)
            {
              if (v56 == v55)
              {
LABEL_108:
                if (*(a1 + 808) == *(a2 + 808) && *(a1 + 812) == *(a2 + 812) && *(a1 + 816) == *(a2 + 816) && *(a1 + 578) == *(a2 + 578) && *(a1 + 616) == *(a2 + 616) && !sub_FCA834((a1 + 624), (a1 + 624)) && sub_FCA8D8((a1 + 648), (a2 + 648)) && (sub_FCA7B4((a1 + 592), (a2 + 592)) & 1) != 0)
                {
                  goto LABEL_117;
                }
              }

              else
              {
                while (*v56 == *v57 && *(v56 + 4) == *(v57 + 4) && *(v56 + 8) == *(v57 + 8))
                {
                  v56 += 16;
                  v57 += 16;
                  if (v56 == v55)
                  {
                    goto LABEL_108;
                  }
                }
              }
            }
          }

          else
          {
            while (*v53 == *v54 && *(v53 + 4) == *(v54 + 4) && *(v53 + 8) == *(v54 + 8))
            {
              v53 += 16;
              v54 += 16;
              if (v53 == v52)
              {
                goto LABEL_102;
              }
            }
          }
        }
      }

      else
      {
        while (*v50 == *v51 && *(v50 + 4) == *(v51 + 4) && *(v50 + 8) == *(v51 + 8))
        {
          v50 += 16;
          v51 += 16;
          if (v50 == v49)
          {
            goto LABEL_96;
          }
        }
      }
    }
  }

  v48 |= 0x40uLL;
LABEL_117:
  v58 = *(a1 + 536);
  v59 = *(a1 + 528);
  v60 = *(a2 + 528);
  if (v58 - v59 != *(a2 + 536) - v60)
  {
    goto LABEL_128;
  }

  if (v59 != v58)
  {
    while (*v59 == *v60 && *(v59 + 4) == *(v60 + 4) && *(v59 + 8) == *(v60 + 8))
    {
      v59 += 16;
      v60 += 16;
      if (v59 == v58)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_128;
  }

LABEL_123:
  if (*(a1 + 152) != *(a2 + 152))
  {
    goto LABEL_128;
  }

  v61 = *(a1 + 160);
  v62 = *(a2 + 160);
  if (v61 != v62)
  {
    v63 = v61 - v62;
    if (v63 <= 0.0)
    {
      v63 = -v63;
    }

    if (v63 >= 2.22044605e-16)
    {
LABEL_128:
      v48 |= 0x1000uLL;
    }
  }

  if (*(a1 + 448) != *(a2 + 448))
  {
    goto LABEL_134;
  }

  v64 = *(a1 + 456);
  v65 = *(a2 + 456);
  if (v64 != v65)
  {
    v66 = v64 - v65;
    if (v66 <= 0.0)
    {
      v66 = -v66;
    }

    if (v66 >= 2.22044605e-16)
    {
LABEL_134:
      v48 |= 0x80uLL;
    }
  }

  if (*(a1 + 437) != *(a2 + 437))
  {
    goto LABEL_140;
  }

  v67 = *(a1 + 440);
  v68 = *(a2 + 440);
  if (v67 != v68)
  {
    v69 = v67 - v68;
    if (v69 <= 0.0)
    {
      v69 = -v69;
    }

    if (v69 >= 2.22044605e-16)
    {
LABEL_140:
      v48 |= 0x100uLL;
    }
  }

  if (*(a2 + 432) != *(a1 + 432))
  {
    v48 |= 0x100uLL;
  }

  if (*(a1 + 968) != *(a2 + 968) || *(a1 + 972) != *(a2 + 972) || *(a1 + 976) != *(a2 + 976) || *(a1 + 984) != *(a2 + 984) || *(a1 + 988) != *(a2 + 988) || *(a1 + 992) != *(a2 + 992))
  {
    v48 |= 0x800uLL;
  }

  v71 = *(a1 + 264);
  v70 = *(a1 + 272);
  v72 = *(a2 + 264);
  if (v70 - v71 != *(a2 + 272) - v72)
  {
LABEL_166:
    v48 |= 0x80000uLL;
    goto LABEL_167;
  }

  for (; v71 != v70; v72 += 3)
  {
    if (*v71 != *v72)
    {
      v73 = *v71 - *v72;
      if (v73 <= 0.0)
      {
        v73 = -v73;
      }

      if (v73 >= 2.22044605e-16)
      {
        goto LABEL_166;
      }
    }

    v74 = v71[1];
    v75 = v72[1];
    if (v74 != v75)
    {
      v76 = v74 - v75;
      if (v76 <= 0.0)
      {
        v76 = -v76;
      }

      if (v76 >= 2.22044605e-16)
      {
        goto LABEL_166;
      }
    }

    v77 = v71[2];
    v78 = v72[2];
    if (v77 != v78)
    {
      v79 = v77 - v78;
      if (v79 <= 0.0)
      {
        v79 = -v79;
      }

      if (v79 >= 2.22044605e-16)
      {
        goto LABEL_166;
      }
    }

    v71 += 3;
  }

LABEL_167:
  if (*(a1 + 672) != *(a2 + 672) || *(a1 + 676) != *(a2 + 676) || *(a1 + 680) != *(a2 + 680))
  {
    v48 |= 0x100000uLL;
  }

  if (*(a1 + 577) != *(a2 + 577))
  {
    goto LABEL_254;
  }

  v80 = *(a1 + 744);
  v81 = *(a1 + 736);
  v82 = *(a2 + 736);
  if (v80 - v81 != *(a2 + 744) - v82)
  {
    goto LABEL_254;
  }

  for (; v81 != v80; v82 += 3)
  {
    if (*v81 != *v82)
    {
      v83 = *v81 - *v82;
      if (v83 <= 0.0)
      {
        v83 = -v83;
      }

      if (v83 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v84 = v81[1];
    v85 = v82[1];
    if (v84 != v85)
    {
      v86 = v84 - v85;
      if (v86 <= 0.0)
      {
        v86 = -v86;
      }

      if (v86 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v87 = v81[2];
    v88 = v82[2];
    if (v87 != v88)
    {
      v89 = v87 - v88;
      if (v89 <= 0.0)
      {
        v89 = -v89;
      }

      if (v89 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v81 += 3;
  }

  v90 = *(a1 + 56);
  v91 = *(a2 + 56);
  if (v90 != v91)
  {
    v92 = v90 - v91;
    if (v92 <= 0.0)
    {
      v92 = -v92;
    }

    if (v92 >= 2.22044605e-16)
    {
      goto LABEL_254;
    }
  }

  v93 = *(a1 + 64);
  v94 = *(a2 + 64);
  if (v93 != v94)
  {
    v95 = v93 - v94;
    if (v95 <= 0.0)
    {
      v95 = -v95;
    }

    if (v95 >= 2.22044605e-16)
    {
      goto LABEL_254;
    }
  }

  if (!sub_FCBAA0((a1 + 72), (a2 + 72)))
  {
    goto LABEL_254;
  }

  v97 = *(a1 + 240);
  v96 = *(a1 + 248);
  v98 = *(a2 + 240);
  if (v96 - v97 != *(a2 + 248) - v98)
  {
    goto LABEL_254;
  }

  for (; v97 != v96; v98 += 3)
  {
    if (*v97 != *v98)
    {
      v99 = *v97 - *v98;
      if (v99 <= 0.0)
      {
        v99 = -v99;
      }

      if (v99 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v100 = v97[1];
    v101 = v98[1];
    if (v100 != v101)
    {
      v102 = v100 - v101;
      if (v102 <= 0.0)
      {
        v102 = -v102;
      }

      if (v102 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v103 = v97[2];
    v104 = v98[2];
    if (v103 != v104)
    {
      v105 = v103 - v104;
      if (v105 <= 0.0)
      {
        v105 = -v105;
      }

      if (v105 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v97 += 3;
  }

  if (sub_FCA834((a1 + 288), (a2 + 288)) || sub_FCA834((a1 + 360), (a2 + 360)) || sub_FCA834((a1 + 408), (a2 + 408)) || *(a2 + 432) != *(a1 + 432) || *(a1 + 435) != *(a2 + 435) || *(a1 + 436) != *(a2 + 436) || !sub_FCA8D8((a1 + 688), (a2 + 688)) || !sub_FCA8D8((a1 + 712), (a2 + 712)) || *(a1 + 1096) != *(a2 + 1096) || *(a1 + 1100) != *(a2 + 1100) || *(a1 + 1104) != *(a2 + 1104) || *(a1 + 872) != *(a2 + 872) || *(a1 + 876) != *(a2 + 876) || *(a1 + 880) != *(a2 + 880) || *(a1 + 888) != *(a2 + 888) || *(a1 + 892) != *(a2 + 892) || *(a1 + 896) != *(a2 + 896) || *(a1 + 904) != *(a2 + 904) || *(a1 + 908) != *(a2 + 908) || *(a1 + 912) != *(a2 + 912) || *(a1 + 1000) != *(a2 + 1000) || *(a1 + 1004) != *(a2 + 1004) || *(a1 + 1008) != *(a2 + 1008) || *(a1 + 1016) != *(a2 + 1016) || *(a1 + 1020) != *(a2 + 1020) || *(a1 + 1024) != *(a2 + 1024) || *(a1 + 205) != *(a2 + 205) || *(a1 + 208) != *(a2 + 208) || *(a1 + 464) != *(a2 + 464))
  {
    goto LABEL_254;
  }

  v106 = *(a1 + 472);
  v107 = *(a2 + 472);
  if (v106 != v107)
  {
    v108 = v106 - v107;
    if (v108 <= 0.0)
    {
      v108 = -v108;
    }

    if (v108 >= 2.22044605e-16)
    {
      goto LABEL_254;
    }
  }

  if (*(a1 + 1112) != *(a2 + 1112) || *(a1 + 1116) != *(a2 + 1116) || *(a1 + 1120) != *(a2 + 1120) || *(a1 + 1128) != *(a2 + 1128) || *(a1 + 1132) != *(a2 + 1132) || *(a1 + 1136) != *(a2 + 1136))
  {
LABEL_254:
    v48 |= 0x200uLL;
  }

  if (!sub_FCA948(a1 + 1312, a2 + 1312))
  {
    goto LABEL_264;
  }

  v109 = *(a1 + 696);
  v110 = *(a1 + 688);
  v111 = *(a2 + 688);
  if (v109 - v110 != *(a2 + 696) - v111)
  {
    goto LABEL_264;
  }

  if (v110 != v109)
  {
    while (*v110 == *v111 && *(v110 + 4) == *(v111 + 4) && *(v110 + 8) == *(v111 + 8))
    {
      v110 += 16;
      v111 += 16;
      if (v110 == v109)
      {
        goto LABEL_262;
      }
    }

LABEL_264:
    v48 |= 0x400uLL;
    if (*(a1 + 952) == *(a2 + 952))
    {
      goto LABEL_265;
    }

LABEL_267:
    v48 |= 0x10000uLL;
    goto LABEL_268;
  }

LABEL_262:
  if (*(a1 + 952) != *(a2 + 952))
  {
    goto LABEL_267;
  }

LABEL_265:
  if (*(a1 + 956) != *(a2 + 956) || *(a1 + 960) != *(a2 + 960))
  {
    goto LABEL_267;
  }

LABEL_268:
  if (*(a1 + 840) != *(a2 + 840) || *(a1 + 844) != *(a2 + 844) || *(a1 + 848) != *(a2 + 848))
  {
    v48 |= 0x20000uLL;
  }

  if (*(a1 + 1032) != *(a2 + 1032) || *(a1 + 1036) != *(a2 + 1036) || *(a1 + 1040) != *(a2 + 1040) || *(a1 + 1048) != *(a2 + 1048) || *(a1 + 1052) != *(a2 + 1052) || *(a1 + 1056) != *(a2 + 1056))
  {
    v48 |= 0x40000uLL;
  }

  v112 = *(a1 + 176);
  if ((v112 ^ *(a2 + 176)))
  {
    v113 = v48 | 0x2000;
  }

  else
  {
    v113 = v48;
  }

  if (v112 == 1 && (*(a2 + 176) & 1) != 0 && *(a1 + 184) != *(a2 + 184))
  {
    v113 = v48 | 0x2000;
  }

  v114 = *(a1 + 177);
  v115 = v113 | 0x4000;
  if ((v114 ^ *(a2 + 177)))
  {
    v113 |= 0x4000uLL;
  }

  if (v114 == 1 && (*(a2 + 177) & 1) != 0 && (*(a1 + 179) != *(a2 + 179) || *(a1 + 178) != *(a2 + 178)))
  {
    v113 = v115;
  }

  v116 = *(a1 + 1144);
  if (v116 || *(a1 + 1148))
  {
    v117 = 1;
    v118 = *(a2 + 1144);
    v119 = *(a2 + 1148);
    if (!*(a2 + 1144))
    {
      goto LABEL_296;
    }
  }

  else
  {
    v117 = *(a1 + 1152) != 0;
    v118 = *(a2 + 1144);
    v119 = *(a2 + 1148);
    if (!*(a2 + 1144))
    {
LABEL_296:
      if ((v117 ^ (*(a2 + 1152) != 0)))
      {
        goto LABEL_309;
      }

      goto LABEL_300;
    }
  }

  if (!v117)
  {
LABEL_309:
    v113 |= 0x200000uLL;
    goto LABEL_310;
  }

LABEL_300:
  if (v116 || *(a1 + 1148) || *(a1 + 1152))
  {
    v120 = *(a2 + 1152);
    if ((v118 || v119 || v120) && (v116 != v118 || *(a1 + 1148) != v119 || *(a1 + 1152) != v120))
    {
      goto LABEL_309;
    }
  }

LABEL_310:
  if (*(a1 + 34) == *(a2 + 34))
  {
    return v113;
  }

  else
  {
    return v113 | 0x800000;
  }
}

unint64_t sub_FC65DC(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 8 * a2;
}

void sub_FC66F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void *sub_FC67D8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (!sub_5FC6C(a3))
  {
    sub_FC7A84(v6, a3, a4, &v23);
    v6[11] = 0xDAB7EC1DD3431B57 * ((v6[6] - v6[5]) >> 3);
    operator new();
  }

  sub_FC7A84(v6, a2, a4, &v34);
  v7 = v34;
  if (v34)
  {
    v8 = v35;
    v9 = v34;
    if (v35 != v34)
    {
      do
      {
        v10 = *(v8 - 3);
        if (v10)
        {
          do
          {
            v12 = *v10;
            v13 = *(v10 + 12);
            if (v13 != -1)
            {
              (off_2674CE0[v13])(v24, v10 + 5);
            }

            *(v10 + 12) = -1;
            if (*(v10 + 39) < 0)
            {
              operator delete(v10[2]);
            }

            operator delete(v10);
            v10 = v12;
          }

          while (v12);
        }

        v11 = *(v8 - 5);
        *(v8 - 5) = 0;
        if (v11)
        {
          operator delete(v11);
        }

        v8 -= 48;
      }

      while (v8 != v7);
      v9 = v34;
      v6 = a1;
    }

    v35 = v7;
    operator delete(v9);
  }

  v6[11] = 0;
  sub_FC82C0(v6);
  if (sub_7E7E4(1u))
  {
    sub_19594F8(v24);
    sub_4A5C(v24, "No preprocessed cost functions in the data. Registered ", 55);
    v14 = std::ostream::operator<<();
    sub_4A5C(v14, " cost functions from the current cost function JSON config.", 59);
    if ((v33 & 0x10) != 0)
    {
      v16 = v32;
      if (v32 < v29)
      {
        v32 = v29;
        v16 = v29;
      }

      v17 = v28;
      v15 = v16 - v28;
      if (v16 - v28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v33 & 8) == 0)
      {
        v15 = 0;
        BYTE7(v22) = 0;
LABEL_29:
        *(v21 + v15) = 0;
        sub_7E854(v21, 1u);
        v6 = a1;
        if (SBYTE7(v22) < 0)
        {
          operator delete(v21[0]);
        }

        if (v31 < 0)
        {
          operator delete(v30);
        }

        std::locale::~locale(&v25);
        std::ostream::~ostream();
        std::ios::~ios();
        return v6;
      }

      v17 = v26;
      v15 = v27 - v26;
      if ((v27 - v26) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    BYTE7(v22) = v15;
    if (v15)
    {
      memmove(v21, v17, v15);
    }

    goto LABEL_29;
  }

  return v6;
}

void sub_FC7880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, char **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a41);
  v47 = *a9;
  if (*a9)
  {
    a17[19] = v47;
    operator delete(v47);
    sub_23D9C(a12);
    v48 = a17[8];
    if (!v48)
    {
LABEL_5:
      sub_FCC220(a10);
      sub_11BD8(a17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_23D9C(a12);
    v48 = a17[8];
    if (!v48)
    {
      goto LABEL_5;
    }
  }

  a17[9] = v48;
  operator delete(v48);
  sub_FCC220(a10);
  sub_11BD8(a17);
  _Unwind_Resume(a1);
}

void sub_FC7A84(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  HIBYTE(v86) = 14;
  strcpy(&v85, "cost_functions");
  v5 = sub_5FAAC(a2, &v85, a2);
  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  v6 = *(a1 + 40);
  v71 = (a1 + 40);
  v7 = *(a1 + 48);
  if (v7 != v6)
  {
    v8 = v7 - 816;
    do
    {
      sub_3BEF14((v8 + 24));
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v9 = v8 - 8;
      v8 -= 824;
    }

    while (v9 != v6);
  }

  v70 = a1;
  *(a1 + 48) = v6;
  *v82 = 0u;
  v83 = 0u;
  v84 = 1065353216;
  __p = 0;
  v80 = 0;
  v81 = 0;
  v80 = sub_1CEE8(&__p, "standard");
LABEL_10:
  v10 = *(&v83 + 1);
  if (v10 < sub_5FC64(v5))
  {
    v11 = sub_588E0(v5);
    v12 = sub_5FC5C();
    if (v11 == v12)
    {
      goto LABEL_100;
    }

    v13 = 0;
    while (1)
    {
      v14 = (v11 + 16);
      sub_FC142C(v11 + 16, v5, v82, &v74);
      if (!sub_5FC6C(&v74))
      {
        break;
      }

      v15 = v76;
      if (v76)
      {
        goto LABEL_65;
      }

LABEL_62:
      v42 = v74;
      v74 = 0;
      if (v42)
      {
        operator delete(v42);
      }

      v11 = *v11;
      if (v11 == v12)
      {
        if (v13)
        {
          goto LABEL_10;
        }

LABEL_100:
        exception = __cxa_allocate_exception(0x40uLL);
        v69 = sub_2D390(exception, "initial processing of cost functions json failed, parents inconsistent", 0x46uLL);
      }
    }

    *&v85 = v11 + 16;
    v16 = sub_8E484(v82, (v11 + 16), &unk_229EB70, &v85);
    v17 = v16;
    if (v16[8])
    {
      v18 = v16[7];
      if (v18)
      {
        do
        {
          v26 = *v18;
          v27 = *(v18 + 12);
          if (v27 != -1)
          {
            (off_2674CE0[v27])(&v85, v18 + 5);
          }

          *(v18 + 12) = -1;
          if (*(v18 + 39) < 0)
          {
            operator delete(v18[2]);
          }

          operator delete(v18);
          v18 = v26;
        }

        while (v26);
      }

      v17[7] = 0;
      v19 = v17[6];
      if (v19)
      {
        bzero(v17[5], 8 * v19);
      }

      v17[8] = 0;
    }

    v20 = v74;
    v74 = 0;
    v21 = v17[5];
    v17[5] = v20;
    if (v21)
    {
      operator delete(v21);
    }

    v22 = v75;
    v23 = v76;
    v17[7] = v76;
    v17[6] = v22;
    v75 = 0;
    v24 = v77;
    v17[8] = v77;
    *(v17 + 18) = v78;
    if (v24)
    {
      v25 = v23[1];
      if ((v22 & (v22 - 1)) != 0)
      {
        if (v25 >= v22)
        {
          v25 %= v22;
        }
      }

      else
      {
        v25 &= v22 - 1;
      }

      v17[5][v25] = (v17 + 7);
      v76 = 0;
      v77 = 0;
    }

    v28 = *(v11 + 39);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(v11 + 24);
    }

    if (v28 != 8)
    {
      goto LABEL_41;
    }

    v30 = *v14;
    if (v29 >= 0)
    {
      v30 = (v11 + 16);
    }

    if (*v30 != 0x647261646E617473)
    {
LABEL_41:
      v31 = v80;
      if (v80 >= v81)
      {
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v80 - __p) >> 3) + 1;
        if (v34 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        if (0x5555555555555556 * ((v81 - __p) >> 3) > v34)
        {
          v34 = 0x5555555555555556 * ((v81 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v81 - __p) >> 3) >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v34;
        }

        p_p = &__p;
        if (v35)
        {
          if (v35 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v38 = (8 * ((v80 - __p) >> 3));
        *&v85 = 0;
        *(&v85 + 1) = v38;
        v39 = 0;
        v86 = v38;
        v87 = 0;
        if ((v29 & 0x80) != 0)
        {
          sub_325C(v38, *(v11 + 16), *(v11 + 24));
          v38 = *(&v85 + 1);
          v37 = v86;
          v39 = v87;
        }

        else
        {
          v36 = *v14;
          *&dword_10[2 * ((v80 - __p) >> 3)] = *(v11 + 32);
          *v38 = v36;
          v37 = v38;
        }

        v33 = v37 + 24;
        v40 = &v38[-(v80 - __p)];
        memcpy(v40, __p, v80 - __p);
        v41 = __p;
        __p = v40;
        v80 = v33;
        v81 = v39;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        if (v29 < 0)
        {
          sub_325C(v80, *v14, *(v11 + 24));
        }

        else
        {
          v32 = *v14;
          *(v80 + 2) = *(v11 + 32);
          *v31 = v32;
        }

        v33 = v31 + 24;
      }

      v80 = v33;
    }

    ++v13;
    v15 = v76;
    if (!v76)
    {
      goto LABEL_62;
    }

    do
    {
LABEL_65:
      v43 = *v15;
      v44 = *(v15 + 12);
      if (v44 != -1)
      {
        (off_2674CE0[v44])(&v85, v15 + 5);
      }

      *(v15 + 12) = -1;
      if (*(v15 + 39) < 0)
      {
        operator delete(v15[2]);
      }

      operator delete(v15);
      v15 = v43;
    }

    while (v43);
    goto LABEL_62;
  }

  v45 = v80;
  v46 = (__p + 24);
  v47 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v80 - (__p + 24)) >> 3));
  v48 = v80 == __p + 24;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  sub_79630(v46, v45, &v85, v49, 1);
  v50 = __p;
  if (__p != v80)
  {
    v51 = sub_8DE74(v82, __p);
    v52 = sub_FC1660(a3, (v51 + 5));
    LODWORD(v74) = v52;
    v53 = *(v70 + 96);
    if (v53 <= v52)
    {
      v53 = v52;
    }

    *(v70 + 96) = v53;
    v54 = a4[1];
    if (v54 >= a4[2])
    {
      v55 = sub_FC9FE8(a4, &v74, (v51 + 5));
    }

    else
    {
      *v54 = v52;
      sub_5ADDC((v54 + 2), (v51 + 5));
      v55 = v54 + 12;
    }

    a4[1] = v55;
    v57 = *(v70 + 40);
    v56 = *(v70 + 48);
    *&v85 = v50;
    sub_EDE7E0((v70 + 104), v50, &unk_229EB70, &v85)[5] = (0xDAB7EC1DD3431B57 * ((v56 - v57) >> 3));
    v59 = *(v70 + 40);
    v58 = *(v70 + 48);
    *&v85 = &v74;
    sub_FCC494(v70, &v74, &unk_229EB70, &v85)[3] = 0xDAB7EC1DD3431B57 * ((v58 - v59) >> 3);
    v60 = *(v70 + 48);
    if (v60 < *(v70 + 56))
    {
      if (*(v50 + 23) < 0)
      {
        sub_325C(&v85, *v50, v50[1]);
      }

      else
      {
        v61 = *v50;
        v86 = v50[2];
        v85 = v61;
      }

      sub_102B900(v60, (v51 + 5), &v85, v74);
    }

    sub_FCC2A4(v71, (v51 + 5), v50, &v74);
  }

  if (__p)
  {
    v62 = v80;
    v63 = __p;
    if (v80 != __p)
    {
      do
      {
        v64 = *(v62 - 1);
        v62 -= 3;
        if (v64 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v50);
      v63 = __p;
    }

    v80 = v50;
    operator delete(v63);
  }

  v65 = v83;
  if (v83)
  {
    do
    {
      v66 = *v65;
      sub_8DBE8((v65 + 2));
      operator delete(v65);
      v65 = v66;
    }

    while (v66);
  }

  v67 = v82[0];
  v82[0] = 0;
  if (v67)
  {
    operator delete(v67);
  }
}

void sub_FC81D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void **);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_FC113C(a12);
  sub_1A104(va);
  sub_8E8D8(va1);
  _Unwind_Resume(a1);
}

void sub_FC82C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 72);
    do
    {
      v4 = *(a1 + 80);
      if (v3 < v4)
      {
        *v3++ = *(v2 + 4);
      }

      else
      {
        v5 = *(a1 + 64);
        v6 = v3 - v5;
        v7 = (v3 - v5) >> 2;
        v8 = v7 + 1;
        if ((v7 + 1) >> 62)
        {
          sub_1794();
        }

        v9 = v4 - v5;
        if (v9 >> 1 > v8)
        {
          v8 = v9 >> 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v8;
        }

        if (v10)
        {
          if (!(v10 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v11 = v7;
        v12 = (4 * v7);
        v13 = &v12[-v11];
        *v12 = *(v2 + 4);
        v3 = v12 + 1;
        memcpy(v13, v5, v6);
        *(a1 + 64) = v13;
        *(a1 + 72) = v3;
        *(a1 + 80) = 0;
        if (v5)
        {
          operator delete(v5);
        }
      }

      *(a1 + 72) = v3;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v3 = *(a1 + 72);
  }

  v14 = *(a1 + 64);
  v15 = 126 - 2 * __clz((v3 - v14) >> 2);
  if (v3 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  sub_1C4C(v14, v3, &v25, v16, 1);
  v17 = *(a1 + 144);
  v18 = ((*(a1 + 96) + 1) * (*(a1 + 96) + 1));
  v19 = (*(a1 + 152) - v17) >> 3;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(a1 + 152) = v17 + 8 * v18;
    }
  }

  else
  {
    sub_30B70(a1 + 144, v18 - v19);
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  while (v20 != v21)
  {
    v22 = *(a1 + 40);
    for (i = *(a1 + 48); v22 != i; v22 += 206)
    {
      v24 = sub_FC8AE0(v20, v22);
      *sub_FC94A0((a1 + 144), (*v20 + *v20 * *(a1 + 96) + *v22)) = v24;
    }

    v20 += 206;
  }
}

unint64_t sub_FC84C8(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_24;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_24:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = *&v2 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == v3)
      {
        if (*(v7 + 4) == v3)
        {
          goto LABEL_14;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_24;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v13 = v7[1];
    if (v13 == v3)
    {
      break;
    }

    if (v13 >= *&v2)
    {
      v13 %= *&v2;
    }

    if (v13 != v5)
    {
      goto LABEL_24;
    }

LABEL_18:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  if (*(v7 + 4) != v3)
  {
    goto LABEL_18;
  }

LABEL_14:
  v10 = v7[3];
  v11 = a1 + 5;

  return sub_FC85D4(v11, v10);
}

unint64_t sub_FC85D4(void *a1, unint64_t a2)
{
  if (0xDAB7EC1DD3431B57 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xDAB7EC1DD3431B57 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 824 * a2;
}

void sub_FC8710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

unint64_t sub_FC87F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_EDE628((a1 + 104), a2);
  if (!v3)
  {
    return *(a1 + 40);
  }

  v4 = v3[5];

  return sub_FC85D4((a1 + 40), v4);
}

uint64_t sub_FC8844(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v4 != v5)
  {
    while (*v4 != a2)
    {
      if ((*a3 & *sub_FC88E4((a1 + 144), a2 + a2 * *(a1 + 96) + *v4)) == 0)
      {
        return *v4;
      }

      if (++v4 == v5)
      {
        return a2;
      }
    }
  }

  return a2;
}

unint64_t sub_FC88E4(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 8 * a2;
}

void sub_FC8A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_FC8AE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v5 = *(a2 + 128);
  if (v4 != v5)
  {
    v6 = v4 - v5;
    if (v6 <= 0.0)
    {
      v6 = -v6;
    }

    if (v6 >= 2.22044605e-16)
    {
      goto LABEL_22;
    }
  }

  v7 = *(a1 + 136);
  v8 = *(a2 + 136);
  if (v7 != v8)
  {
    v9 = v7 - v8;
    if (v9 <= 0.0)
    {
      v9 = -v9;
    }

    if (v9 >= 2.22044605e-16)
    {
      goto LABEL_22;
    }
  }

  v10 = *(a1 + 144);
  v11 = *(a2 + 144);
  if (v10 != v11)
  {
    v12 = v10 - v11;
    if (v12 <= 0.0)
    {
      v12 = -v12;
    }

    if (v12 >= 2.22044605e-16)
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 448) != *(a2 + 448) || *(a1 + 452) != *(a2 + 452) || *(a1 + 456) != *(a2 + 456) || *(a1 + 619) != *(a2 + 619))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 619))
  {
    goto LABEL_31;
  }

  v13 = *(a1 + 624);
  v14 = *(a2 + 624);
  if (v13 == v14)
  {
    goto LABEL_31;
  }

  v15 = v13 - v14;
  if (v15 <= 0.0)
  {
    v15 = -v15;
  }

  if (v15 < 2.22044605e-16)
  {
LABEL_31:
    v16 = 0;
    if (!sub_FCA948(a1 + 480, a2 + 480))
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_22:
    v16 = 1;
    if (!sub_FCA948(a1 + 480, a2 + 480))
    {
      goto LABEL_32;
    }
  }

  v17 = *(a1 + 560);
  v18 = *(a1 + 552);
  v19 = *(a2 + 552);
  if (v17 - v18 == *(a2 + 560) - v19)
  {
    if (v18 == v17)
    {
LABEL_29:
      v20 = *(a1 + 224);
      v21 = *(a2 + 224);
      if (v20 == v21)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    while (*v18 == *v19 && *(v18 + 4) == *(v19 + 4) && *(v18 + 8) == *(v19 + 8))
    {
      v18 += 16;
      v19 += 16;
      if (v18 == v17)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_32:
  v16 |= 2uLL;
  v20 = *(a1 + 224);
  v21 = *(a2 + 224);
  if (v20 == v21)
  {
    goto LABEL_36;
  }

LABEL_33:
  v22 = v20 - v21;
  if (v22 <= 0.0)
  {
    v22 = -v22;
  }

  if (v22 < 2.22044605e-16)
  {
LABEL_36:
    v23 = *(a1 + 232);
    v24 = *(a2 + 232);
    if (v23 == v24)
    {
      goto LABEL_44;
    }

    v25 = v23 - v24;
    if (v25 <= 0.0)
    {
      v25 = -v25;
    }

    if (v25 < 2.22044605e-16)
    {
LABEL_44:
      v26 = *(a1 + 240);
      v27 = *(a2 + 240);
      if (v26 == v27)
      {
        goto LABEL_190;
      }

      v28 = v26 - v27;
      if (v28 <= 0.0)
      {
        v28 = -v28;
      }

      if (v28 < 2.22044605e-16)
      {
LABEL_190:
        if (*(a1 + 416) == *(a2 + 416))
        {
          goto LABEL_46;
        }
      }
    }
  }

  v16 |= 0x20uLL;
LABEL_46:
  if (!sub_FCA948(a1 + 480, a2 + 480))
  {
    goto LABEL_65;
  }

  v29 = *(a1 + 560);
  v30 = *(a1 + 552);
  v31 = *(a2 + 552);
  if (v29 - v30 != *(a2 + 560) - v31)
  {
    goto LABEL_65;
  }

  if (v30 != v29)
  {
    while (*v30 == *v31 && *(v30 + 4) == *(v31 + 4) && *(v30 + 8) == *(v31 + 8))
    {
      v30 += 16;
      v31 += 16;
      if (v30 == v29)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_65;
  }

LABEL_53:
  v32 = *(a1 + 200);
  v33 = *(a2 + 200);
  if (v32 != v33)
  {
    v34 = v32 - v33;
    if (v34 <= 0.0)
    {
      v34 = -v34;
    }

    if (v34 >= 2.22044605e-16)
    {
      goto LABEL_65;
    }
  }

  v35 = *(a1 + 208);
  v36 = *(a2 + 208);
  if (v35 != v36)
  {
    v37 = v35 - v36;
    if (v37 <= 0.0)
    {
      v37 = -v37;
    }

    if (v37 >= 2.22044605e-16)
    {
      goto LABEL_65;
    }
  }

  v38 = *(a1 + 216);
  v39 = *(a2 + 216);
  if (v38 != v39)
  {
    v40 = v38 - v39;
    if (v40 <= 0.0)
    {
      v40 = -v40;
    }

    if (v40 >= 2.22044605e-16)
    {
LABEL_65:
      v16 |= 4uLL;
    }
  }

  if (*(a1 + 800) != *(a2 + 800) || *(a1 + 801) != *(a2 + 801) || *(a1 + 808) != *(a2 + 808) || *(a1 + 812) != *(a2 + 812) || *(a1 + 816) != *(a2 + 816))
  {
    v16 |= 8uLL;
  }

  v41 = *(a1 + 40);
  v42 = *(a2 + 40);
  if (v41 != v42)
  {
    v43 = v41 - v42;
    if (v43 <= 0.0)
    {
      v43 = -v43;
    }

    if (v43 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  v44 = *(a1 + 48);
  v45 = *(a2 + 48);
  if (v44 != v45)
  {
    v46 = v44 - v45;
    if (v46 <= 0.0)
    {
      v46 = -v46;
    }

    if (v46 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  v47 = *(a1 + 56);
  v48 = *(a2 + 56);
  if (v47 != v48)
  {
    v49 = v47 - v48;
    if (v49 <= 0.0)
    {
      v49 = -v49;
    }

    if (v49 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  v50 = *(a1 + 64);
  v51 = *(a2 + 64);
  if (v50 != v51)
  {
    v52 = v50 - v51;
    if (v52 <= 0.0)
    {
      v52 = -v52;
    }

    if (v52 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  v53 = *(a1 + 72);
  v54 = *(a2 + 72);
  if (v53 != v54)
  {
    v55 = v53 - v54;
    if (v55 <= 0.0)
    {
      v55 = -v55;
    }

    if (v55 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  v56 = *(a1 + 80);
  v57 = *(a2 + 80);
  if (v56 != v57)
  {
    v58 = v56 - v57;
    if (v58 <= 0.0)
    {
      v58 = -v58;
    }

    if (v58 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  if (*(a1 + 112) != *(a2 + 112) || *(a1 + 116) != *(a2 + 116) || *(a1 + 120) != *(a2 + 120) || (v60 = *(a1 + 88), v59 = *(a1 + 96), v61 = *(a2 + 88), v59 - v60 != *(a2 + 96) - v61))
  {
LABEL_116:
    v16 |= 0x40uLL;
    goto LABEL_117;
  }

  if (v60 != v59)
  {
    while (*v60 == *v61)
    {
      v62 = v60[1];
      v63 = v61[1];
      if (v62 != v63)
      {
        v64 = v62 - v63;
        if (v64 <= 0.0)
        {
          v64 = -v64;
        }

        if (v64 >= 2.22044605e-16)
        {
          break;
        }
      }

      v65 = v60[2];
      v66 = v61[2];
      if (v65 != v66)
      {
        v67 = v65 - v66;
        if (v67 <= 0.0)
        {
          v67 = -v67;
        }

        if (v67 >= 2.22044605e-16)
        {
          break;
        }
      }

      v68 = v60[3];
      v69 = v61[3];
      if (v68 != v69)
      {
        v70 = v68 - v69;
        if (v70 <= 0.0)
        {
          v70 = -v70;
        }

        if (v70 >= 2.22044605e-16)
        {
          break;
        }
      }

      v60 += 4;
      v61 += 4;
      if (v60 == v59)
      {
        goto LABEL_117;
      }
    }

    goto LABEL_116;
  }

LABEL_117:
  v71 = *(a1 + 296);
  v72 = *(a2 + 296);
  if (v71 != v72)
  {
    v73 = v71 - v72;
    if (v73 <= 0.0)
    {
      v73 = -v73;
    }

    if (v73 >= 2.22044605e-16)
    {
      goto LABEL_132;
    }
  }

  v74 = *(a1 + 304);
  v75 = *(a2 + 304);
  if (v74 != v75)
  {
    v76 = v74 - v75;
    if (v76 <= 0.0)
    {
      v76 = -v76;
    }

    if (v76 >= 2.22044605e-16)
    {
      goto LABEL_132;
    }
  }

  v77 = *(a1 + 312);
  v78 = *(a2 + 312);
  if (v77 != v78)
  {
    v79 = v77 - v78;
    if (v79 <= 0.0)
    {
      v79 = -v79;
    }

    if (v79 >= 2.22044605e-16)
    {
      goto LABEL_132;
    }
  }

  if (*(a1 + 464) != *(a2 + 464) || *(a1 + 468) != *(a2 + 468) || *(a1 + 472) != *(a2 + 472))
  {
LABEL_132:
    v16 |= 0x100uLL;
  }

  v80 = *(a1 + 32);
  v81 = *(a2 + 32);
  if (v80 != v81)
  {
    v82 = v80 - v81;
    if (v82 <= 0.0)
    {
      v82 = -v82;
    }

    if (v82 >= 2.22044605e-16)
    {
      return v16 | 0x10;
    }
  }

  v84 = *(a1 + 424);
  v83 = *(a1 + 432);
  v85 = *(a2 + 424);
  if (v83 - v84 != *(a2 + 432) - v85)
  {
    return v16 | 0x10;
  }

  if (v84 != v83)
  {
    while (*v84 == *v85 && *(v84 + 8) == *(v85 + 8) && *(v84 + 12) == *(v85 + 12) && *(v84 + 16) == *(v85 + 16))
    {
      v84 += 24;
      v85 += 24;
      if (v84 == v83)
      {
        goto LABEL_144;
      }
    }

    return v16 | 0x10;
  }

LABEL_144:
  v87 = *(a1 + 272);
  v86 = *(a1 + 280);
  v88 = *(a2 + 272);
  if (v86 - v87 != *(a2 + 280) - v88)
  {
    return v16 | 0x10;
  }

  if (v87 != v86)
  {
    while (1)
    {
      if (*v87 != *v88)
      {
        v89 = *v87 - *v88;
        if (v89 <= 0.0)
        {
          v89 = -v89;
        }

        if (v89 >= 2.22044605e-16)
        {
          break;
        }
      }

      v90 = v87[1];
      v91 = v88[1];
      if (v90 != v91)
      {
        v92 = v90 - v91;
        if (v92 <= 0.0)
        {
          v92 = -v92;
        }

        if (v92 >= 2.22044605e-16)
        {
          break;
        }
      }

      v93 = v87[2];
      v94 = v88[2];
      if (v93 != v94)
      {
        v95 = v93 - v94;
        if (v95 <= 0.0)
        {
          v95 = -v95;
        }

        if (v95 >= 2.22044605e-16)
        {
          break;
        }
      }

      v87 += 3;
      v88 += 3;
      if (v87 == v86)
      {
        goto LABEL_161;
      }
    }

    return v16 | 0x10;
  }

LABEL_161:
  v96 = *(a1 + 536);
  v97 = *(a1 + 528);
  v98 = *(a2 + 528);
  if (v96 - v97 != *(a2 + 536) - v98)
  {
    return v16 | 0x10;
  }

  if (v97 != v96)
  {
    while (*v97 == *v98 && *(v97 + 4) == *(v98 + 4) && *(v97 + 8) == *(v98 + 8))
    {
      v97 += 16;
      v98 += 16;
      if (v97 == v96)
      {
        goto LABEL_167;
      }
    }

    return v16 | 0x10;
  }

LABEL_167:
  if (*(a1 + 616) != *(a2 + 616) || *(a1 + 617) != *(a2 + 617) || *(a1 + 618) != *(a2 + 618) || !sub_FCA6D8((a1 + 320), a2 + 320) || !sub_FCA6D8((a1 + 344), a2 + 344) || !sub_FCA6D8((a1 + 368), a2 + 368) || !sub_FCA7B4((a1 + 576), (a2 + 576)) || sub_FCA834((a1 + 712), (a2 + 712)) || *(a1 + 784) != *(a2 + 784) || *(a1 + 788) != *(a2 + 788) || *(a1 + 792) != *(a2 + 792) || sub_FCA834((a1 + 392), (a2 + 392)) || *(a1 + 600) != *(a2 + 600) || *(a1 + 604) != *(a2 + 604) || *(a1 + 608) != *(a2 + 608) || *(a1 + 176) != *(a2 + 176) || *(a1 + 180) != *(a2 + 180) || *(a1 + 184) != *(a2 + 184) || *(a1 + 192) != *(a2 + 192))
  {
    return v16 | 0x10;
  }

  return v16;
}

unint64_t sub_FC94A0(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 8 * a2;
}

void sub_FC95BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_FC969C(uint64_t *a1)
{
  v6 = 6;
  strcpy(v5, "parent");
  v2 = sub_62C28(a1, v5);
  if (v2)
  {
    sub_24C14(a1, v2, &__p);
    v3 = __p;
    __p = 0;
    if (v3)
    {
      if (v8 == 1)
      {
        v4 = *(v3 + 12);
        if (v4 != -1)
        {
          (off_2674CE0[v4])(&v9, v3 + 5);
        }

        *(v3 + 12) = -1;
        if (*(v3 + 39) < 0)
        {
          operator delete(v3[2]);
        }
      }

      operator delete(v3);
    }
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_FC9780(char **a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0xD4BFB52FED4BFB53 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 <= 0x2568095A025680)
  {
    if (0xA97F6A5FDA97F6A6 * ((a1[2] - *a1) >> 3) > v4)
    {
      v4 = 0xA97F6A5FDA97F6A6 * ((a1[2] - *a1) >> 3);
    }

    if (0xD4BFB52FED4BFB53 * ((a1[2] - *a1) >> 3) >= 0x12B404AD012B40)
    {
      v7 = 0x2568095A025680;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x2568095A025680)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 8 * ((a1[1] - *a1) >> 3);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_FD0348(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FC99AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_FC99E4(va);
  _Unwind_Resume(a1);
}

void sub_FC99C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_FC99E4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_FC99E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1752;
    sub_3BE944((i - 1720));
    if (*(i - 1721) < 0)
    {
      operator delete(*(i - 1744));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_FC9A5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  v13 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v13;
  *(a1 + 160) = v11;
  *(a1 + 176) = v12;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a2 + 224) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 264) = 0;
  *(a2 + 248) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = 0;
  *(a2 + 272) = 0u;
  v14 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v14;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 344) = 0;
  *(a2 + 328) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 368) = 0;
  *(a2 + 352) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 392) = 0;
  *(a2 + 376) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 416) = 0;
  *(a2 + 400) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 440) = 0;
  *(a2 + 424) = 0u;
  memcpy((a1 + 448), (a2 + 448), 0x180uLL);
  *(a1 + 832) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 848) = *(a2 + 848);
  *(a2 + 832) = 0u;
  *(a2 + 848) = 0;
  *(a1 + 872) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 864) = *(a2 + 864);
  *(a2 + 856) = 0u;
  *(a2 + 872) = 0;
  *(a1 + 896) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 880) = 0u;
  *(a2 + 896) = 0;
  v16 = *(a2 + 920);
  v15 = *(a2 + 936);
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 920) = v16;
  *(a1 + 936) = v15;
  *(a1 + 960) = 0u;
  *(a1 + 952) = 0;
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 968) = 0;
  *(a2 + 952) = 0u;
  *(a1 + 976) = *(a2 + 976);
  v18 = *(a2 + 992);
  v17 = *(a2 + 1008);
  v19 = *(a2 + 1024);
  *(a1 + 1033) = *(a2 + 1033);
  *(a1 + 1008) = v17;
  *(a1 + 1024) = v19;
  *(a1 + 992) = v18;
  v20 = *(a2 + 1072);
  v21 = *(a2 + 1088);
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1088) = v21;
  *(a1 + 1072) = v20;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1104) = 0u;
  *(a2 + 1120) = 0;
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1152) = 0u;
  *(a1 + 1144) = 0;
  *(a1 + 1144) = *(a2 + 1144);
  *(a1 + 1152) = *(a2 + 1152);
  *(a2 + 1160) = 0;
  *(a2 + 1144) = 0u;
  *(a1 + 1168) = *(a2 + 1168);
  v22 = *(a2 + 1200);
  v23 = *(a2 + 1216);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1216) = v23;
  *(a1 + 1200) = v22;
  v24 = *(a2 + 1232);
  v25 = *(a2 + 1248);
  v26 = *(a2 + 1264);
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1264) = v26;
  *(a1 + 1248) = v25;
  *(a1 + 1232) = v24;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1296) = *(a2 + 1296);
  *(a1 + 1312) = *(a2 + 1312);
  *(a2 + 1312) = 0;
  *(a2 + 1296) = 0u;
  *(a1 + 1336) = 0;
  *(a1 + 1320) = 0u;
  *(a1 + 1320) = *(a2 + 1320);
  *(a1 + 1328) = *(a2 + 1328);
  *(a2 + 1336) = 0;
  *(a2 + 1320) = 0u;
  *(a1 + 1344) = *(a2 + 1344);
  v27 = *(a2 + 1352);
  *(a1 + 1357) = *(a2 + 1357);
  *(a1 + 1352) = v27;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = 0u;
  *(a1 + 1368) = *(a2 + 1368);
  *(a1 + 1376) = *(a2 + 1376);
  *(a2 + 1384) = 0;
  *(a2 + 1368) = 0u;
  *(a1 + 1408) = 0;
  *(a1 + 1392) = 0u;
  *(a1 + 1392) = *(a2 + 1392);
  *(a1 + 1408) = *(a2 + 1408);
  *(a2 + 1408) = 0;
  *(a2 + 1392) = 0u;
  *(a1 + 1432) = 0;
  *(a1 + 1416) = 0u;
  *(a1 + 1416) = *(a2 + 1416);
  *(a1 + 1424) = *(a2 + 1424);
  *(a2 + 1432) = 0;
  *(a2 + 1416) = 0u;
  *(a1 + 1456) = 0;
  *(a1 + 1440) = 0u;
  *(a1 + 1440) = *(a2 + 1440);
  *(a1 + 1456) = *(a2 + 1456);
  *(a2 + 1456) = 0;
  *(a2 + 1440) = 0u;
  v28 = *(a2 + 1464);
  *(a1 + 1466) = *(a2 + 1466);
  *(a1 + 1464) = v28;
  *(a1 + 1472) = 0;
  *(a1 + 1480) = 0u;
  *(a1 + 1472) = *(a2 + 1472);
  *(a1 + 1488) = *(a2 + 1488);
  *(a2 + 1488) = 0;
  *(a2 + 1472) = 0u;
  *(a1 + 1512) = 0;
  *(a1 + 1496) = 0u;
  *(a1 + 1496) = *(a2 + 1496);
  *(a1 + 1504) = *(a2 + 1504);
  *(a2 + 1512) = 0;
  *(a2 + 1496) = 0u;
  *(a1 + 1536) = 0;
  *(a1 + 1520) = 0u;
  *(a1 + 1520) = *(a2 + 1520);
  *(a1 + 1536) = *(a2 + 1536);
  *(a2 + 1536) = 0;
  *(a2 + 1520) = 0u;
  *(a1 + 1560) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1544) = *(a2 + 1544);
  *(a1 + 1552) = *(a2 + 1552);
  *(a2 + 1560) = 0;
  *(a2 + 1544) = 0u;
  *(a1 + 1584) = 0;
  *(a1 + 1568) = 0u;
  *(a1 + 1568) = *(a2 + 1568);
  *(a1 + 1584) = *(a2 + 1584);
  *(a2 + 1584) = 0;
  *(a2 + 1568) = 0u;
  v29 = *(a2 + 1704);
  v31 = *(a2 + 1656);
  v30 = *(a2 + 1672);
  *(a1 + 1688) = *(a2 + 1688);
  *(a1 + 1704) = v29;
  *(a1 + 1656) = v31;
  *(a1 + 1672) = v30;
  v32 = *(a2 + 1592);
  v33 = *(a2 + 1608);
  v34 = *(a2 + 1640);
  *(a1 + 1624) = *(a2 + 1624);
  *(a1 + 1640) = v34;
  *(a1 + 1592) = v32;
  *(a1 + 1608) = v33;
  return a1;
}

char **sub_FC9F64(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 1744;
      do
      {
        sub_3BE944(v5 + 3);
        if (v5[23] < 0)
        {
          operator delete(*v5);
        }

        v6 = v5 - 8;
        v5 -= 1752;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

_DWORD *sub_FC9FE8(void **a1, _DWORD *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  *(16 * ((a1[1] - *a1) >> 4)) = *a2;
  sub_5ADDC(48 * v3 + 8, a3);
  v7 = a1[1];
  v8 = (48 * v3 + *a1 - v7);
  sub_FCA138(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = (48 * v3 + 48);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return (48 * v3 + 48);
}

void sub_FCA124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_FCA294(va);
  _Unwind_Resume(a1);
}

void sub_FCA138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v8 = a2 + v6;
      v9 = a4 + v6;
      v10 = *(a2 + v6);
      v11 = *(a2 + v6 + 8);
      v12 = *(a2 + v6 + 16);
      *(v8 + 8) = 0;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v8 + 16) = 0;
      v13 = *(a2 + v6 + 32);
      v14 = *(a2 + v6 + 40);
      v15 = *(a2 + v6 + 24);
      *v9 = v10;
      *(a4 + v6 + 24) = v15;
      *(v9 + 32) = v13;
      *(v9 + 40) = v14;
      if (v13)
      {
        v7 = *(v15 + 8);
        v16 = *(v9 + 16);
        if ((v16 & (v16 - 1)) != 0)
        {
          if (v7 >= v16)
          {
            v7 %= v16;
          }
        }

        else
        {
          v7 &= v16 - 1;
        }

        *(v11 + 8 * v7) = a4 + v6 + 24;
        *(a2 + v6 + 24) = 0;
        *(a2 + v6 + 32) = 0;
      }

      v6 += 48;
    }

    while (a2 + v6 != a3);
    if (a2 != a3)
    {
      do
      {
        v17 = *(v5 + 24);
        if (v17)
        {
          do
          {
            v19 = *v17;
            v20 = *(v17 + 12);
            if (v20 != -1)
            {
              (off_2674CE0[v20])(&v21, v17 + 5);
            }

            *(v17 + 12) = -1;
            if (*(v17 + 39) < 0)
            {
              operator delete(v17[2]);
            }

            operator delete(v17);
            v17 = v19;
          }

          while (v19);
        }

        v18 = *(v5 + 8);
        *(v5 + 8) = 0;
        if (v18)
        {
          operator delete(v18);
        }

        v5 += 48;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_FCA294(uint64_t a1)
{
  sub_FCA2CC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_FCA2CC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v5 = *(i - 24);
    if (v5)
    {
      do
      {
        v7 = *v5;
        v8 = *(v5 + 12);
        if (v8 != -1)
        {
          (off_2674CE0[v8])(&v9, v5 + 5);
        }

        *(v5 + 12) = -1;
        if (*(v5 + 39) < 0)
        {
          operator delete(v5[2]);
        }

        operator delete(v5);
        v5 = v7;
      }

      while (v7);
    }

    v6 = *(i - 40);
    *(i - 40) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }
}

void sub_FCA3A8(unint64_t *a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0xD4BFB52FED4BFB53 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 <= 0x2568095A025680)
  {
    if (0xA97F6A5FDA97F6A6 * ((a1[2] - *a1) >> 3) > v4)
    {
      v4 = 0xA97F6A5FDA97F6A6 * ((a1[2] - *a1) >> 3);
    }

    if (0xD4BFB52FED4BFB53 * ((a1[2] - *a1) >> 3) >= 0x12B404AD012B40)
    {
      v7 = 0x2568095A025680;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x2568095A025680)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 8 * ((a1[1] - *a1) >> 3);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_FD0348(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FCA5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_FC99E4(va);
  _Unwind_Resume(a1);
}

void sub_FCA5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_FC99E4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_FCA60C(double **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    while (1)
    {
      if (*v3 != *v4)
      {
        v5 = *v3 - *v4;
        if (v5 <= 0.0)
        {
          v5 = -v5;
        }

        if (v5 >= 2.22044605e-16)
        {
          break;
        }
      }

      v6 = v3[1];
      v7 = v4[1];
      if (v6 != v7)
      {
        v8 = v6 - v7;
        if (v8 <= 0.0)
        {
          v8 = -v8;
        }

        if (v8 >= 2.22044605e-16)
        {
          break;
        }
      }

      v9 = v3[2];
      v10 = v4[2];
      if (v9 != v10)
      {
        v11 = v9 - v10;
        if (v11 <= 0.0)
        {
          v11 = -v11;
        }

        if (v11 >= 2.22044605e-16)
        {
          break;
        }
      }

      v3 += 3;
      v4 += 3;
      if (v3 == v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_FCA6D8(double **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    while (*v3 == *v4)
    {
      v5 = v3[1];
      v6 = v4[1];
      if (v5 != v6)
      {
        v7 = v5 - v6;
        if (v7 <= 0.0)
        {
          v7 = -v7;
        }

        if (v7 >= 2.22044605e-16)
        {
          break;
        }
      }

      v8 = v3[2];
      v9 = v4[2];
      if (v8 != v9)
      {
        v10 = v8 - v9;
        if (v10 <= 0.0)
        {
          v10 = -v10;
        }

        if (v10 >= 2.22044605e-16)
        {
          break;
        }
      }

      v11 = v3[3];
      v12 = v4[3];
      if (v11 != v12)
      {
        v13 = v11 - v12;
        if (v13 <= 0.0)
        {
          v13 = -v13;
        }

        if (v13 >= 2.22044605e-16)
        {
          break;
        }
      }

      v3 += 4;
      v4 += 4;
      if (v3 == v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_FCA7B4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 == a2[1] - *a2)
  {
    if (v3 == v2)
    {
      return 1;
    }

    while (*v3 == *v4 && *(v3 + 8) == *(v4 + 8) && *(v3 + 12) == *(v4 + 12) && *(v3 + 16) == *(v4 + 16))
    {
      v3 += 24;
      v4 += 24;
      if (v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_FCA834(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    v2 = *a1 - *a2;
    if (v2 <= 0.0)
    {
      v2 = -v2;
    }

    if (v2 >= 2.22044605e-16)
    {
      return 1;
    }
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 != v4)
  {
    v5 = v3 - v4;
    if (v5 <= 0.0)
    {
      v5 = -v5;
    }

    if (v5 >= 2.22044605e-16)
    {
      return 1;
    }
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6 == v7)
  {
    return 0;
  }

  v9 = v6 - v7;
  if (v9 <= 0.0)
  {
    v9 = -v9;
  }

  return v9 >= 2.22044605e-16;
}

uint64_t sub_FCA8D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 == a2[1] - *a2)
  {
    if (v3 == v2)
    {
      return 1;
    }

    while (*v3 == *v4 && *(v3 + 4) == *(v4 + 4) && *(v3 + 8) == *(v4 + 8))
    {
      v3 += 16;
      v4 += 16;
      if (v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_FCA948(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *a2;
  if ((v2 - *a1) != (*(a2 + 8) - *a2))
  {
    return 0;
  }

  if (v3 != v2)
  {
    while (*v3 == *v4 && v3[1] == v4[1] && v3[2] == v4[2] && v3[3] == v4[3])
    {
      v3 += 4;
      v4 += 4;
      if (v3 == v2)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a2 + 24);
  if (v5 - v6 != *(a2 + 32) - v7)
  {
    return 0;
  }

  result = 1;
  if (v6 != v5)
  {
    while (*v6 == *v7 && *(v6 + 8) == *(v7 + 8) && *(v6 + 16) == *(v7 + 16) && *(v6 + 24) == *(v7 + 24) && *(v6 + 32) == *(v7 + 32))
    {
      v6 += 40;
      v7 += 40;
      if (v6 == v5)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_FCAA48(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v18[0] = a1;
  v18[1] = a1 + 1;
  v18[2] = a1 + 2;
  v18[3] = a1 + 3;
  v18[4] = a1 + 4;
  v18[5] = a1 + 5;
  v18[6] = a1 + 6;
  v18[7] = a1 + 7;
  v18[8] = a1 + 8;
  v18[9] = a1 + 9;
  v18[10] = a1 + 10;
  v18[11] = a1 + 11;
  v18[12] = a1 + 12;
  v18[13] = a1 + 16;
  v19 = (a1 + 40);
  v20 = a1 + 64;
  v21 = (a1 + 88);
  v14[0] = a2;
  v14[1] = a2 + 1;
  v14[2] = a2 + 2;
  v14[3] = a2 + 3;
  v14[4] = a2 + 4;
  v14[5] = a2 + 5;
  v14[6] = a2 + 6;
  v14[7] = a2 + 7;
  v14[8] = a2 + 8;
  v14[9] = a2 + 9;
  v14[10] = a2 + 10;
  v14[11] = a2 + 11;
  v14[12] = a2 + 12;
  v14[13] = a2 + 16;
  v15 = (a2 + 40);
  v16 = a2 + 64;
  v17 = (a2 + 88);
  if (sub_FCAC6C(&v22, v18, v14))
  {
    v3 = *v19;
    v2 = v19[1];
    v4 = *v15;
    if (v2 - *v19 == v15[1] - *v15)
    {
      if (v3 == v2)
      {
LABEL_10:
        v7 = *v20;
        v6 = *(v20 + 1);
        v8 = *v16;
        if ((v6 - *v20) == (*(v16 + 1) - *v16))
        {
          if (v7 == v6)
          {
LABEL_18:
            v11 = *v21;
            v10 = v21[1];
            v12 = *v17;
            if (v10 - *v21 == v17[1] - *v17)
            {
              result = 1;
              if (v11 == v10)
              {
                return result;
              }

              while (*v11 == *v12 && *(v11 + 8) == *(v12 + 8) && *(v11 + 12) == *(v12 + 12) && *(v11 + 16) == *(v12 + 16))
              {
                v11 += 24;
                v12 += 24;
                if (v11 == v10)
                {
                  return result;
                }
              }
            }
          }

          else
          {
            while (*v7 == *v8 && v7[1] == v8[1])
            {
              v7 += 2;
              v8 += 2;
              if (v7 == v6)
              {
                goto LABEL_18;
              }
            }
          }
        }
      }

      else
      {
        while (*v3 == *v4 && *(v3 + 8) == *(v4 + 8))
        {
          v3 += 16;
          v4 += 16;
          if (v3 == v2)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  return 0;
}

BOOL sub_FCAC6C(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (**a2 != **a3)
  {
    return 0;
  }

  if (*a2[1] != *a3[1])
  {
    return 0;
  }

  if (*a2[2] != *a3[2])
  {
    return 0;
  }

  if (*a2[3] != *a3[3])
  {
    return 0;
  }

  if (*a2[4] != *a3[4])
  {
    return 0;
  }

  if (*a2[5] != *a3[5])
  {
    return 0;
  }

  if (*a2[6] != *a3[6])
  {
    return 0;
  }

  if (*a2[7] != *a3[7])
  {
    return 0;
  }

  if (*a2[8] != *a3[8])
  {
    return 0;
  }

  if (*a2[9] != *a3[9])
  {
    return 0;
  }

  if (*a2[10] != *a3[10])
  {
    return 0;
  }

  if (*a2[11] != *a3[11])
  {
    return 0;
  }

  if (*a2[12] != *a3[12])
  {
    return 0;
  }

  v4 = *a2[13];
  v3 = *(a2[13] + 1);
  v5 = *a3[13];
  if (v3 - v4 != *(a3[13] + 1) - v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    result = v7 == v9 && v6 == v8;
  }

  while (result && v4 != v3);
  return result;
}

uint64_t sub_FCAE04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5[0] = a1;
  v5[1] = a1 + 1;
  v5[2] = a1 + 2;
  v5[3] = a1 + 3;
  v5[4] = a1 + 4;
  v5[5] = a1 + 5;
  v5[6] = a1 + 8;
  v5[7] = a1 + 16;
  v5[8] = a1 + 24;
  v5[9] = a1 + 32;
  v5[10] = a1 + 40;
  v5[11] = a1 + 48;
  v5[12] = a1 + 72;
  v5[13] = a1 + 88;
  v6 = a1 + 112;
  v3[0] = a2;
  v3[1] = a2 + 1;
  v3[2] = a2 + 2;
  v3[3] = a2 + 3;
  v3[4] = a2 + 4;
  v3[5] = a2 + 5;
  v3[6] = a2 + 8;
  v3[7] = a2 + 16;
  v3[8] = a2 + 24;
  v3[9] = a2 + 32;
  v3[10] = a2 + 40;
  v3[11] = a2 + 48;
  v3[12] = a2 + 72;
  v3[13] = a2 + 88;
  v4 = a2 + 112;
  result = sub_FCAF38(&v7, v5, v3);
  if (result)
  {
    return *v6 == *v4 && *(v6 + 1) == *(v4 + 1) && *(v6 + 1) == *(v4 + 1);
  }

  return result;
}

uint64_t sub_FCAF38(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (**a2 == **a3 && *a2[1] == *a3[1] && *a2[2] == *a3[2] && *a2[3] == *a3[3] && *a2[4] == *a3[4] && *a2[5] == *a3[5] && *a2[6] == *a3[6] && *a2[7] == *a3[7] && *a2[8] == *a3[8] && *a2[9] == *a3[9] && *a2[10] == *a3[10])
  {
    v4 = *a2[11];
    v3 = *(a2[11] + 1);
    v5 = *a3[11];
    if (v3 - v4 == *(a3[11] + 1) - v5)
    {
      if (v4 == v3)
      {
LABEL_18:
        if (*a2[12] == *a3[12])
        {
          v7 = *a2[13];
          v6 = *(a2[13] + 1);
          v8 = *a3[13];
          if (v6 - v7 == *(a3[13] + 1) - v8)
          {
            result = 1;
            if (v7 == v6)
            {
              return result;
            }

            while (*v7 == *v8 && *(v7 + 4) == *(v8 + 4) && *(v7 + 8) == *(v8 + 8))
            {
              v7 += 16;
              v8 += 16;
              if (v7 == v6)
              {
                return result;
              }
            }
          }
        }
      }

      else
      {
        while (*v4 == *v5 && *(v4 + 4) == *(v5 + 4) && *(v4 + 8) == *(v5 + 8))
        {
          v4 += 16;
          v5 += 16;
          if (v4 == v3)
          {
            goto LABEL_18;
          }
        }
      }
    }
  }

  return 0;
}

BOOL sub_FCB158(double *a1, double *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 != v3)
  {
    v4 = v2 - v3;
    if (v4 <= 0.0)
    {
      v4 = -v4;
    }

    if (v4 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 != v6)
  {
    v7 = v5 - v6;
    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v7 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8 != v9)
  {
    v10 = v8 - v9;
    if (v10 <= 0.0)
    {
      v10 = -v10;
    }

    if (v10 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v11 = a1[4];
  v12 = a2[4];
  if (v11 != v12)
  {
    v13 = v11 - v12;
    if (v13 <= 0.0)
    {
      v13 = -v13;
    }

    if (v13 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v14 = a1[5];
  v15 = a2[5];
  if (v14 != v15)
  {
    v16 = v14 - v15;
    if (v16 <= 0.0)
    {
      v16 = -v16;
    }

    if (v16 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v17 = a1[6];
  v18 = a2[6];
  if (v17 == v18)
  {
    return 1;
  }

  v20 = v17 - v18;
  if (v20 <= 0.0)
  {
    v20 = -v20;
  }

  return v20 < 2.22044605e-16;
}

void sub_FCB2AC(void **a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0xFCFCFCFCFCFCFCFDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 <= 0x30303030303030)
  {
    if (0xF9F9F9F9F9F9F9FALL * ((a1[2] - *a1) >> 4) > v4)
    {
      v4 = 0xF9F9F9F9F9F9F9FALL * ((a1[2] - *a1) >> 4);
    }

    if (0xFCFCFCFCFCFCFCFDLL * ((a1[2] - *a1) >> 4) >= 0x18181818181818)
    {
      v7 = 0x30303030303030;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x30303030303030)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 16 * ((a1[1] - *a1) >> 4);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_FDDF9C(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FCB424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_FCB45C(&a10);
    _Unwind_Resume(a1);
  }

  sub_FCB45C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_FCB45C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1360;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    sub_3BECA4((i - 1328));
    if (*(i - 1329) < 0)
    {
      operator delete(*(i - 1352));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_FCB4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0u;
      *(v7 + 8) = 0;
      v9 = *(v7 + 160);
      v10 = *(v7 + 176);
      v11 = *(v7 + 208);
      *(a4 + 192) = *(v7 + 192);
      v12 = *(v7 + 32);
      v13 = *(v7 + 48);
      v14 = *(v7 + 80);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 80) = v14;
      *(a4 + 32) = v12;
      *(a4 + 48) = v13;
      v15 = *(v7 + 96);
      v16 = *(v7 + 112);
      v17 = *(v7 + 144);
      *(a4 + 128) = *(v7 + 128);
      *(a4 + 144) = v17;
      *(a4 + 96) = v15;
      *(a4 + 112) = v16;
      *(a4 + 208) = v11;
      *(a4 + 160) = v9;
      *(a4 + 176) = v10;
      *(a4 + 232) = 0;
      *(a4 + 216) = 0u;
      *(a4 + 216) = *(v7 + 216);
      *(a4 + 232) = *(v7 + 232);
      *(v7 + 232) = 0;
      *(v7 + 216) = 0u;
      *(a4 + 256) = 0;
      *(a4 + 240) = 0u;
      *(a4 + 240) = *(v7 + 240);
      *(a4 + 256) = *(v7 + 256);
      *(v7 + 256) = 0;
      *(v7 + 240) = 0u;
      *(a4 + 280) = 0;
      *(a4 + 264) = 0u;
      *(a4 + 264) = *(v7 + 264);
      *(a4 + 272) = *(v7 + 272);
      *(v7 + 280) = 0;
      *(v7 + 264) = 0u;
      v18 = *(v7 + 288);
      v19 = *(v7 + 304);
      v20 = *(v7 + 336);
      *(a4 + 320) = *(v7 + 320);
      *(a4 + 336) = v20;
      *(a4 + 288) = v18;
      *(a4 + 304) = v19;
      v21 = *(v7 + 352);
      v22 = *(v7 + 368);
      v23 = *(v7 + 400);
      *(a4 + 384) = *(v7 + 384);
      *(a4 + 400) = v23;
      *(a4 + 352) = v21;
      *(a4 + 368) = v22;
      v24 = *(v7 + 416);
      v25 = *(v7 + 432);
      v26 = *(v7 + 464);
      *(a4 + 448) = *(v7 + 448);
      *(a4 + 464) = v26;
      *(a4 + 416) = v24;
      *(a4 + 432) = v25;
      *(a4 + 496) = 0;
      *(a4 + 480) = 0u;
      *(a4 + 480) = *(v7 + 480);
      *(a4 + 496) = *(v7 + 496);
      *(v7 + 496) = 0;
      *(v7 + 480) = 0u;
      *(a4 + 520) = 0;
      *(a4 + 504) = 0u;
      *(a4 + 504) = *(v7 + 504);
      *(a4 + 512) = *(v7 + 512);
      *(v7 + 520) = 0;
      *(v7 + 504) = 0u;
      *(a4 + 544) = 0;
      *(a4 + 528) = 0u;
      *(a4 + 528) = *(v7 + 528);
      *(a4 + 544) = *(v7 + 544);
      *(v7 + 544) = 0;
      *(v7 + 528) = 0u;
      *(a4 + 568) = 0;
      *(a4 + 552) = 0u;
      *(a4 + 552) = *(v7 + 552);
      *(a4 + 560) = *(v7 + 560);
      *(v7 + 568) = 0;
      *(v7 + 552) = 0u;
      *(a4 + 576) = *(v7 + 576);
      *(a4 + 600) = 0u;
      *(a4 + 592) = 0;
      *(a4 + 592) = *(v7 + 592);
      *(a4 + 608) = *(v7 + 608);
      *(v7 + 608) = 0;
      *(v7 + 592) = 0u;
      v27 = *(v7 + 632);
      *(a4 + 616) = *(v7 + 616);
      *(a4 + 632) = v27;
      *(a4 + 648) = 0;
      *(a4 + 656) = 0u;
      *(a4 + 648) = *(v7 + 648);
      *(a4 + 656) = *(v7 + 656);
      *(v7 + 664) = 0;
      *(v7 + 648) = 0u;
      *(a4 + 672) = *(v7 + 672);
      *(a4 + 696) = 0u;
      *(a4 + 688) = 0;
      *(a4 + 688) = *(v7 + 688);
      *(a4 + 704) = *(v7 + 704);
      *(v7 + 704) = 0;
      *(v7 + 688) = 0u;
      *(a4 + 728) = 0;
      *(a4 + 712) = 0u;
      *(a4 + 712) = *(v7 + 712);
      *(a4 + 720) = *(v7 + 720);
      *(v7 + 728) = 0;
      *(v7 + 712) = 0u;
      *(a4 + 752) = 0;
      *(a4 + 736) = 0u;
      *(a4 + 736) = *(v7 + 736);
      *(a4 + 752) = *(v7 + 752);
      *(v7 + 752) = 0;
      *(v7 + 736) = 0u;
      memcpy((a4 + 760), (v7 + 760), 0x228uLL);
      *(a4 + 1312) = 0;
      *(a4 + 1320) = 0u;
      *(a4 + 1312) = *(v7 + 1312);
      *(a4 + 1328) = *(v7 + 1328);
      *(v7 + 1312) = 0u;
      *(v7 + 1328) = 0;
      *(a4 + 1352) = 0;
      *(a4 + 1336) = 0u;
      *(a4 + 1336) = *(v7 + 1336);
      *(a4 + 1344) = *(v7 + 1344);
      *(v7 + 1336) = 0u;
      *(v7 + 1352) = 0;
      v7 += 1360;
      a4 += 1360;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      v28 = *(v6 + 1336);
      if (v28)
      {
        *(v6 + 1344) = v28;
        operator delete(v28);
      }

      v29 = *(v6 + 1312);
      if (v29)
      {
        *(v6 + 1320) = v29;
        operator delete(v29);
      }

      sub_3BECA4((v6 + 32));
      if (*(v6 + 31) < 0)
      {
        operator delete(*(v6 + 8));
      }

      v6 += 1360;
    }
  }
}

char **sub_FCB84C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 1352;
      do
      {
        v7 = *(v5 + 166);
        if (v7)
        {
          *(v5 + 167) = v7;
          operator delete(v7);
        }

        v8 = *(v5 + 163);
        if (v8)
        {
          *(v5 + 164) = v8;
          operator delete(v8);
        }

        sub_3BECA4(v5 + 3);
        if (v5[23] < 0)
        {
          operator delete(*v5);
        }

        v6 = v5 - 8;
        v5 -= 1360;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_FCB8F0(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0xFCFCFCFCFCFCFCFDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 <= 0x30303030303030)
  {
    if (0xF9F9F9F9F9F9F9FALL * ((a1[2] - *a1) >> 4) > v4)
    {
      v4 = 0xF9F9F9F9F9F9F9FALL * ((a1[2] - *a1) >> 4);
    }

    if (0xFCFCFCFCFCFCFCFDLL * ((a1[2] - *a1) >> 4) >= 0x18181818181818)
    {
      v7 = 0x30303030303030;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x30303030303030)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 16 * ((a1[1] - *a1) >> 4);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_FDDF9C(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FCBA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_FCB45C(&a10);
    _Unwind_Resume(a1);
  }

  sub_FCB45C(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_FCBAA0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    v2 = *a1 - *a2;
    if (v2 <= 0.0)
    {
      v2 = -v2;
    }

    if (v2 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 != v4)
  {
    v5 = v3 - v4;
    if (v5 <= 0.0)
    {
      v5 = -v5;
    }

    if (v5 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6 != v7)
  {
    v8 = v6 - v7;
    if (v8 <= 0.0)
    {
      v8 = -v8;
    }

    if (v8 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9 != v10)
  {
    v11 = v9 - v10;
    if (v11 <= 0.0)
    {
      v11 = -v11;
    }

    if (v11 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v12 = a1[4];
  v13 = a2[4];
  if (v12 != v13)
  {
    v14 = v12 - v13;
    if (v14 <= 0.0)
    {
      v14 = -v14;
    }

    if (v14 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15 != v16)
  {
    v17 = v15 - v16;
    if (v17 <= 0.0)
    {
      v17 = -v17;
    }

    if (v17 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v18 = a1[6];
  v19 = a2[6];
  if (v18 != v19)
  {
    v20 = v18 - v19;
    if (v20 <= 0.0)
    {
      v20 = -v20;
    }

    if (v20 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21 != v22)
  {
    v23 = v21 - v22;
    if (v23 <= 0.0)
    {
      v23 = -v23;
    }

    if (v23 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v24 = a1[8];
  v25 = a2[8];
  if (v24 != v25)
  {
    v26 = v24 - v25;
    if (v26 <= 0.0)
    {
      v26 = -v26;
    }

    if (v26 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27 == v28)
  {
    return 1;
  }

  v29 = v27 - v28;
  if (v29 <= 0.0)
  {
    v29 = -v29;
  }

  return v29 < 2.22044605e-16;
}

void sub_FCBC90(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0xDAB7EC1DD3431B57 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 <= 0x4F88B2F392A409)
  {
    if (0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 3) > v4)
    {
      v4 = 0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 3);
    }

    if (0xDAB7EC1DD3431B57 * ((a1[2] - *a1) >> 3) >= 0x27C45979C95204)
    {
      v7 = 0x4F88B2F392A409;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x4F88B2F392A409)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 8 * ((a1[1] - *a1) >> 3);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_102B900(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FCBE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_FCC1A8(&a10);
    _Unwind_Resume(a1);
  }

  sub_FCC1A8(&a10);
  _Unwind_Resume(a1);
}

void sub_FCBE80(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = a2[1] + *a1 - v5;
    v8 = *a1;
    do
    {
      *v7 = *v8;
      v9 = *(v8 + 8);
      *(v7 + 24) = *(v8 + 24);
      *(v7 + 8) = v9;
      *(v8 + 16) = 0uLL;
      *(v8 + 8) = 0;
      v10 = *(v8 + 32);
      v11 = *(v8 + 64);
      v12 = *(v8 + 80);
      *(v7 + 48) = *(v8 + 48);
      *(v7 + 64) = v11;
      *(v7 + 32) = v10;
      *(v7 + 80) = v12;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0uLL;
      *(v7 + 88) = *(v8 + 88);
      *(v7 + 104) = *(v8 + 104);
      *(v8 + 104) = 0;
      v13 = *(v8 + 112);
      v14 = *(v8 + 128);
      *(v8 + 88) = 0uLL;
      *(v7 + 112) = v13;
      *(v7 + 128) = v14;
      v15 = *(v8 + 144);
      v16 = *(v8 + 160);
      v17 = *(v8 + 192);
      *(v7 + 176) = *(v8 + 176);
      *(v7 + 192) = v17;
      *(v7 + 144) = v15;
      *(v7 + 160) = v16;
      v18 = *(v8 + 208);
      v19 = *(v8 + 224);
      v20 = *(v8 + 256);
      *(v7 + 240) = *(v8 + 240);
      *(v7 + 256) = v20;
      *(v7 + 208) = v18;
      *(v7 + 224) = v19;
      *(v7 + 288) = 0;
      *(v7 + 272) = 0uLL;
      *(v7 + 272) = *(v8 + 272);
      *(v7 + 288) = *(v8 + 288);
      *(v8 + 288) = 0;
      v21 = *(v8 + 296);
      v22 = *(v8 + 312);
      *(v8 + 272) = 0uLL;
      *(v7 + 296) = v21;
      *(v7 + 312) = v22;
      *(v7 + 320) = 0;
      *(v7 + 328) = 0uLL;
      *(v7 + 320) = *(v8 + 320);
      *(v7 + 336) = *(v8 + 336);
      *(v8 + 336) = 0;
      *(v8 + 320) = 0uLL;
      *(v7 + 360) = 0;
      *(v7 + 344) = 0uLL;
      *(v7 + 344) = *(v8 + 344);
      *(v7 + 352) = *(v8 + 352);
      *(v8 + 360) = 0;
      *(v8 + 344) = 0uLL;
      *(v7 + 384) = 0;
      *(v7 + 368) = 0uLL;
      *(v7 + 368) = *(v8 + 368);
      *(v7 + 384) = *(v8 + 384);
      *(v8 + 384) = 0;
      *(v8 + 368) = 0uLL;
      v23 = *(v8 + 392);
      *(v7 + 401) = *(v8 + 401);
      *(v7 + 424) = 0;
      *(v7 + 392) = v23;
      *(v7 + 432) = 0uLL;
      *(v7 + 424) = *(v8 + 424);
      *(v7 + 432) = *(v8 + 432);
      *(v8 + 440) = 0;
      *(v8 + 424) = 0uLL;
      v24 = *(v8 + 464);
      *(v7 + 448) = *(v8 + 448);
      *(v7 + 464) = v24;
      *(v7 + 480) = 0;
      *(v7 + 488) = 0uLL;
      *(v7 + 480) = *(v8 + 480);
      *(v7 + 496) = *(v8 + 496);
      *(v8 + 496) = 0;
      *(v8 + 480) = 0uLL;
      *(v7 + 520) = 0;
      *(v7 + 504) = 0uLL;
      *(v7 + 504) = *(v8 + 504);
      *(v7 + 512) = *(v8 + 512);
      *(v8 + 520) = 0;
      *(v8 + 504) = 0uLL;
      *(v7 + 544) = 0;
      *(v7 + 528) = 0uLL;
      *(v7 + 528) = *(v8 + 528);
      *(v7 + 544) = *(v8 + 544);
      *(v8 + 544) = 0;
      *(v8 + 528) = 0uLL;
      *(v7 + 568) = 0;
      *(v7 + 552) = 0uLL;
      *(v7 + 552) = *(v8 + 552);
      *(v7 + 560) = *(v8 + 560);
      *(v8 + 568) = 0;
      *(v8 + 552) = 0uLL;
      *(v7 + 592) = 0;
      *(v7 + 576) = 0uLL;
      *(v7 + 576) = *(v8 + 576);
      *(v7 + 592) = *(v8 + 592);
      *(v8 + 592) = 0;
      *(v8 + 576) = 0uLL;
      v25 = *(v8 + 680);
      v27 = *(v8 + 632);
      v26 = *(v8 + 648);
      *(v7 + 664) = *(v8 + 664);
      *(v7 + 680) = v25;
      *(v7 + 632) = v27;
      *(v7 + 648) = v26;
      v28 = *(v8 + 744);
      v30 = *(v8 + 696);
      v29 = *(v8 + 712);
      *(v7 + 728) = *(v8 + 728);
      *(v7 + 744) = v28;
      *(v7 + 696) = v30;
      *(v7 + 712) = v29;
      v31 = *(v8 + 808);
      v33 = *(v8 + 760);
      v32 = *(v8 + 776);
      *(v7 + 792) = *(v8 + 792);
      *(v7 + 808) = v31;
      *(v7 + 760) = v33;
      *(v7 + 776) = v32;
      v34 = *(v8 + 616);
      *(v7 + 600) = *(v8 + 600);
      *(v7 + 616) = v34;
      v8 += 824;
      v7 += 824;
    }

    while (v8 != v5);
    v35 = (v4 + 32);
    do
    {
      sub_3BEF14(v35);
      if (*(v35 - 1) < 0)
      {
        operator delete(*(v35 - 3));
      }

      v36 = v35 + 99;
      v35 += 103;
    }

    while (v36 != v5);
  }

  a2[1] = v6;
  v37 = *a1;
  *a1 = v6;
  a1[1] = v37;
  a2[1] = v37;
  v38 = a1[1];
  a1[1] = a2[2];
  a2[2] = v38;
  v39 = a1[2];
  a1[2] = a2[3];
  a2[3] = v39;
  *a2 = a2[1];
}

uint64_t sub_FCC1A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 824;
    sub_3BEF14((i - 792));
    if (*(i - 793) < 0)
    {
      operator delete(*(i - 816));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char **sub_FCC220(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 816;
      do
      {
        sub_3BEF14(v5 + 3);
        if (v5[23] < 0)
        {
          operator delete(*v5);
        }

        v6 = v5 - 8;
        v5 -= 824;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_FCC2A4(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0xDAB7EC1DD3431B57 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 <= 0x4F88B2F392A409)
  {
    if (0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 3) > v4)
    {
      v4 = 0xB56FD83BA68636AELL * ((a1[2] - *a1) >> 3);
    }

    if (0xDAB7EC1DD3431B57 * ((a1[2] - *a1) >> 3) >= 0x27C45979C95204)
    {
      v7 = 0x4F88B2F392A409;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x4F88B2F392A409)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 8 * ((a1[1] - *a1) >> 3);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_102B900(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FCC45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_FCC1A8(&a10);
    _Unwind_Resume(a1);
  }

  sub_FCC1A8(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_FCC494(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (*(v9 + 4) == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_FCC940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FCC968(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = sub_3AF6B4(a3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 54) = 0;
  *(a1 + 62) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = &unk_2290750;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = &unk_2290750;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = &unk_2290750;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = &unk_2290750;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = &unk_2290750;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = &unk_2290750;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 496) = &unk_2290750;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 544) = &unk_2290750;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 592) = &unk_2290750;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 640) = &unk_2290750;
  *(a1 + 680) = 0;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 688) = &unk_2290750;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 736) = &unk_2290750;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 784) = &unk_2290750;
  *(a1 + 824) = 0;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 832) = &unk_2290750;
  *(a1 + 872) = 0;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 880) = &unk_2290750;
  *(a1 + 920) = 0;
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 928) = &unk_2290750;
  *(a1 + 968) = 0;
  *(a1 + 952) = 0;
  *(a1 + 936) = 0u;
  return a1;
}

void sub_FCCAFC(void *a1)
{
  v3 = 15;
  strcpy(__p, "forbidden_turns");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 13;
  strcpy(__p, "traffic_signs");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 18;
  strcpy(__p, "less_important_frc");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 16;
  strcpy(__p, "oncoming_traffic");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 17;
  strcpy(__p, "same_road_traffic");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_FCCD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_FCCD60(uint64_t *a1, void **a2, unint64_t a3)
{
  v32 = a3;
  v6 = *(sub_4D1F50(*a2, a2[1]) + 32);
  v7 = *(sub_4D1F50(a2[2], a2[3]) + 32) & 0xFFFFFFFFFFFFFFLL;
  v31[0] = v6 & 0xFFFFFFFFFFFFFFLL;
  v31[1] = v7;
  v31[2] = a3;
  sub_FCCF08((a1 + 26), v31, v30);
  if (!v30[0])
  {
    v29[1] = 0;
    v9 = sub_4D1F50(*a2, a2[1]);
    v10 = 0;
    if ((a3 & 2) != 0)
    {
      v10 = sub_4BF020(a1[3], *(v9 + 32) & 0xFFFFFFFFFFFFFFLL, *a1, 1);
    }

    v29[0] = v10;
    v11 = *(sub_4D1F50(*a2, a2[1]) + 32);
    v26 = v11;
    v28 = BYTE6(v11);
    v27 = WORD2(v11);
    v12 = a1[3];
    v13 = sub_2B51D8(v12, v11 & 0xFFFFFFFFFFFFLL);
    v14 = (v13 - *v13);
    if (*v14 >= 0x1Fu)
    {
      v15 = v14[15];
      if (!v15)
      {
LABEL_10:
        v18 = 0xFFFFFFFF00000000;
        goto LABEL_11;
      }

      v16 = *(v13 + v15);
      if (v16 != -1)
      {
        v17 = sub_31DF78(v12, v11);
        v18 = v16 << 32;
        v15 = v17;
LABEL_11:
        v24[2] = a1;
        v25 = v18 | v15;
        v24[0] = &v26;
        v24[1] = &v25;
        sub_FCE570((a1 + 26), v31, v33);
        v19 = *a2;
        v20 = a2[1];
        v21 = a2[2];
        v22 = a2[3];
        v33[0] = a1;
        v33[1] = v29;
        v33[2] = v24;
        v34 += 3;
        v8 = v34;
        v35 = a2;
        v36 = &v32;
        sub_FCD09C(v19, v20, v21, v22 + 1, v33);
        v33[0] = v8;
        sub_FCD2BC(v8, v33);
        return v8;
      }
    }

    v15 = 0;
    goto LABEL_10;
  }

  return v30[3] + 3;
}

uint64_t sub_FCCF08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = a2[1];
  v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v7 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = (((0x2127599BF4325C37 * (v7 ^ (v6 >> 23))) ^ ((0x2127599BF4325C37 * (v7 ^ (v6 >> 23))) >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
  v9 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
  if ((v5 & 0xFF000000000000) != 0)
  {
    v10 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = (((0x2127599BF4325C37 * (v10 ^ (v9 >> 23))) ^ ((0x2127599BF4325C37 * (v10 ^ (v9 >> 23))) >> 47)) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v12 = a2[2] + (v11 << 6) + (v11 >> 2) + 2654435769u;
  v13 = (v12 ^ ~v11) + ((v12 ^ v11) << 21);
  v14 = 21 * ((265 * (v13 ^ (v13 >> 24))) ^ ((265 * (v13 ^ (v13 >> 24))) >> 14));
  v15 = (a1 + 48 * (((((v14 ^ (v14 >> 28)) >> 8) ^ ((-2147483647 * (v14 ^ (v14 >> 28))) >> 16)) ^ ((-2147483647 * (v14 ^ (v14 >> 28))) >> 24)) & 0xF));
  v20 = 0;
  result = sub_FCE460(v15, a2, 2147483649u * (v14 ^ (v14 >> 28)), &v20);
  if (!result || (v17 = (*v15 + v20), v18 = v15[1] + 48 * v20, v19 = *v15 + v15[3], v19 == v17))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
  }

  else
  {
    *a3 = v15;
    a3[1] = (a1 + 768);
    a3[2] = v17;
    a3[3] = v18;
    a3[4] = v19;
  }

  return result;
}

void *sub_FCD09C(void *result, unint64_t a2, void *a3, unint64_t a4, uint64_t *a5)
{
  v9 = result;
  if (result)
  {
    result = sub_4D1DC0(result);
    v10 = result;
    if (a3)
    {
      result = sub_4D1DC0(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 != a4 < result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = sub_4D1F50(v9, a2);
        result = sub_4D1F50(a3, a4);
        if (v11 != result)
        {
          while (1)
          {
LABEL_20:
            v20 = a2 + 1;
            v21 = sub_4D1DC0(v9);
            result = sub_4D1DC0(a3);
            if (a2 + 1 >= v21 || a4 >= result)
            {
              if (v20 < v21 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v22 = sub_4D1F50(v9, a2 + 1);
              result = sub_4D1F50(a3, a4);
              if (v22 == result)
              {
                return result;
              }
            }

            v18 = sub_4D1F50(v9, a2);
            v19 = sub_4D1F50(v9, v20);
            sub_FCEF90(a5, v18, v19);
            a2 = v20;
          }
        }
      }
    }

    else if (a2 < result)
    {
      result = sub_4D1DC0(v9);
      if (a2 + 1 < result)
      {
        do
        {
          v15 = sub_4D1F50(v9, a2);
          v16 = sub_4D1F50(v9, a2 + 1);
          sub_FCEF90(a5, v15, v16);
          result = sub_4D1DC0(v9);
          v17 = a2 + 2;
          ++a2;
        }

        while (v17 < result);
      }
    }
  }

  else if (a3)
  {
    result = sub_4D1DC0(a3);
    if (a4 < result)
    {
      for (result = sub_4D1DC0(a3); a4 < result; a2 = v12)
      {
        v12 = a2 + 1;
        v13 = sub_4D1F50(0, a2);
        v14 = sub_4D1F50(0, v12);
        sub_FCEF90(a5, v13, v14);
        result = sub_4D1DC0(a3);
      }
    }
  }

  return result;
}

void sub_FCD2BC(char **a1, uint64_t **a2)
{
  v3 = sub_FCF954(*a1, a1[1], *a2);
  v4 = a1[1];
  if (v3 != v4)
  {
    v5 = v3;
    while (v4 != v5)
    {
      v6 = *(v4 - 3);
      if (v6)
      {
        *(v4 - 2) = v6;
        operator delete(v6);
      }

      v4 -= 32;
    }

    a1[1] = v5;
  }
}

void sub_FCD3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, void *a5)
{
  v5 = a1;
  v7 = *a4;
  v6 = a4[1];
  v8 = *a4;
  if (*a4 == v6)
  {
    v9 = *a4;
  }

  else
  {
    v9 = *a4;
    while (__PAIR64__(*(v9 + 2), *v9) != __PAIR64__(WORD2(a2), a2) || *(v9 + 6) != BYTE6(a2))
    {
      if (++v9 == v6)
      {
        v9 = a4[1];
        break;
      }
    }

    while (__PAIR64__(*(v8 + 2), *v8) != __PAIR64__(WORD2(a3), a3) || *(v8 + 6) != BYTE6(a3))
    {
      if (++v8 == v6)
      {
        v8 = a4[1];
        break;
      }
    }
  }

  a5[1] = *a5;
  a5[4] = a5[3];
  v10 = v6 - 1;
  if (v9 == v6 - 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 != v9)
  {
    v12 = v8 + 1;
    if (v8 == v10)
    {
      v12 = v7;
    }

    v30 = v12;
    v13 = 1;
    do
    {
      v14 = &a5[3 * v13];
      while (v11 != v8)
      {
        v16 = *v11;
        v17 = sub_2B51D8(*(v5 + 24), *v11 & 0xFFFFFFFFFFFFLL);
        v18 = (v17 - *v17);
        v19 = *v18;
        if ((v16 & 0xFF000000000000) != 0)
        {
          if (v19 >= 0x9B)
          {
            v20 = v18[77];
            if (v20)
            {
              if ((*(v17 + v20) & 2) != 0)
              {
                goto LABEL_37;
              }
            }
          }
        }

        else if (v19 >= 0x9B)
        {
          v21 = v18[77];
          if (v21)
          {
            if (*(v17 + v21))
            {
LABEL_37:
              v23 = v14[1];
              v22 = v14[2];
              if (v23 < v22)
              {
                *v23 = *v11;
                v15 = (v23 + 1);
              }

              else
              {
                v24 = *v14;
                v25 = v23 - *v14;
                v26 = v25 >> 3;
                v27 = (v25 >> 3) + 1;
                if (v27 >> 61)
                {
                  sub_1794();
                }

                v28 = v22 - v24;
                if (v28 >> 2 > v27)
                {
                  v27 = v28 >> 2;
                }

                if (v28 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v29 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v29 = v27;
                }

                if (v29)
                {
                  if (!(v29 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v26) = *v11;
                v15 = 8 * v26 + 8;
                memcpy(0, v24, v25);
                *v14 = 0;
                v14[1] = v15;
                v14[2] = 0;
                if (v24)
                {
                  operator delete(v24);
                }

                v5 = a1;
              }

              v14[1] = v15;
            }
          }
        }

        if (v11 == v10)
        {
          v11 = v7;
        }

        else
        {
          ++v11;
        }

        if (v11 == v9)
        {
          return;
        }
      }

      v13 = 0;
      v11 = v30;
    }

    while (v30 != v9);
  }
}

void sub_FCD648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, int a5, void **a6)
{
  v59 = a3;
  v60 = a2;
  v12 = sub_2B51D8(*(a1 + 24), a2 & 0xFFFFFFFFFFFFLL);
  v13 = (v12 - *v12);
  if (*v13 >= 0x9Bu && (v14 = v13[77]) != 0)
  {
    v15 = (*(v12 + v14) >> 15) & 1;
  }

  else
  {
    LODWORD(v15) = 0;
  }

  sub_FCD3A4(a1, a2, a3, a4, a6);
  if (a5)
  {
    v16 = &v59;
    if ((a2 & 0xFFFFFFFFFFFFLL) == (a3 & 0xFFFFFFFFFFFFLL))
    {
      return;
    }

    goto LABEL_44;
  }

  v17 = sub_2B51D8(*(a1 + 24), a3 & 0xFFFFFFFFFFFFLL);
  v18 = (v17 - *v17);
  v19 = *v18;
  if ((a3 & 0xFF000000000000) != 0)
  {
    if (v19 < 0x9B)
    {
      goto LABEL_43;
    }

    v20 = v18[77];
    if (!v20 || (*(v17 + v20) & 2) == 0)
    {
      goto LABEL_43;
    }

LABEL_16:
    v23 = a6[1];
    v22 = a6[2];
    if (v23 >= v22)
    {
      v25 = *a6;
      v26 = v23 - *a6;
      v27 = v26 >> 3;
      v28 = (v26 >> 3) + 1;
      if (v28 >> 61)
      {
        goto LABEL_67;
      }

      v29 = v22 - v25;
      if (v29 >> 2 > v28)
      {
        v28 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (!(v30 >> 61))
        {
          operator new();
        }

        goto LABEL_68;
      }

      *(8 * v27) = a3;
      v24 = (8 * v27 + 8);
      memcpy(0, v25, v26);
      *a6 = 0;
      a6[1] = v24;
      a6[2] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v23 = a3;
      v24 = v23 + 8;
    }

    a6[1] = v24;
    v32 = a6[4];
    v31 = a6[5];
    if (v32 >= v31)
    {
      v34 = a6[3];
      v35 = v32 - v34;
      v36 = (v32 - v34) >> 3;
      v37 = v36 + 1;
      if ((v36 + 1) >> 61)
      {
        goto LABEL_67;
      }

      v38 = v31 - v34;
      if (v38 >> 2 > v37)
      {
        v37 = v38 >> 2;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v37;
      }

      if (v39)
      {
        if (!(v39 >> 61))
        {
          operator new();
        }

        goto LABEL_68;
      }

      v40 = (v32 - v34) >> 3;
      v41 = (8 * v36);
      v42 = (8 * v36 - 8 * v40);
      *v41 = a3;
      v33 = v41 + 1;
      memcpy(v42, v34, v35);
      a6[3] = v42;
      a6[4] = v33;
      a6[5] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v32 = a3;
      v33 = v32 + 8;
    }

    a6[4] = v33;
    goto LABEL_43;
  }

  if (v19 >= 0x9B)
  {
    v21 = v18[77];
    if (v21)
    {
      if (*(v17 + v21))
      {
        goto LABEL_16;
      }
    }
  }

LABEL_43:
  v16 = &v60;
  if ((a2 & 0xFFFFFFFFFFFFLL) == (a3 & 0xFFFFFFFFFFFFLL))
  {
    return;
  }

LABEL_44:
  v43 = *v16;
  v44 = sub_2B51D8(*(a1 + 24), *v16 & 0xFFFFFFFFFFFFLL);
  v45 = (v44 - *v44);
  v46 = *v45;
  if ((v43 & 0xFF000000000000) != 0)
  {
    if (v46 < 0x9B)
    {
      return;
    }

    v47 = v45[77];
    if (!v47 || (*(v44 + v47) & 2) == 0)
    {
      return;
    }

LABEL_52:
    v49 = &a6[3 * v15];
    v51 = v49[1];
    v50 = v49[2];
    if (v51 < v50)
    {
      *v51 = v43;
      v52 = (v51 + 8);
LABEL_65:
      v49[1] = v52;
      return;
    }

    v53 = *v49;
    v54 = v51 - *v49;
    v55 = v54 >> 3;
    v56 = (v54 >> 3) + 1;
    if (!(v56 >> 61))
    {
      v57 = v50 - v53;
      if (v57 >> 2 > v56)
      {
        v56 = v57 >> 2;
      }

      if (v57 >= 0x7FFFFFFFFFFFFFF8)
      {
        v58 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v58 = v56;
      }

      if (!v58)
      {
        *(8 * v55) = v43;
        v52 = 8 * v55 + 8;
        memcpy(0, v53, v54);
        *v49 = 0;
        v49[1] = v52;
        v49[2] = 0;
        if (v53)
        {
          operator delete(v53);
        }

        goto LABEL_65;
      }

      if (!(v58 >> 61))
      {
        operator new();
      }

LABEL_68:
      sub_1808();
    }

LABEL_67:
    sub_1794();
  }

  if (v46 >= 0x9B)
  {
    v48 = v45[77];
    if (v48)
    {
      if (*(v44 + v48))
      {
        goto LABEL_52;
      }
    }
  }
}

BOOL sub_FCDA30(uint64_t a1, int **a2, __int16 a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if ((a7 & 0x20) != 0 && a4 == a5 && ((a5 ^ a4) & 0xFFFF00000000) == 0 || (a7 & 1) != 0 && sub_31F6E0(a4, a5, 0, *(a1 + 24), a1 + 56) || (a7 & 0x10) != 0 && (a6 & 1) == 0 && (a6 & 0x100) != 0)
  {
    return 0;
  }

  v13 = a2[4];
  v14 = sub_F31D60(*(a1 + 24), v13 & 0xFFFFFFFFFFFFLL);
  v15 = (v14 - *v14);
  v16 = *v15;
  if ((v13 & 0xFF000000000000) == 0)
  {
    if (v16 < 9)
    {
      goto LABEL_17;
    }

    v17 = v15[4];
    if (!v17)
    {
      goto LABEL_17;
    }

LABEL_16:
    v18 = *(v14 + v17);
    goto LABEL_18;
  }

  if (v16 >= 5)
  {
    v17 = v15[2];
    if (v17)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  v18 = 0;
LABEL_18:
  v19 = sub_F31D60(*(a1 + 24), a4 & 0xFFFFFFFFFFFFLL);
  v20 = (v19 - *v19);
  v21 = *v20;
  if ((a4 & 0xFF000000000000) == 0)
  {
    if (v21 >= 9)
    {
      v22 = v20[4];
      if (!v22)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

LABEL_25:
    v22 = 0;
    goto LABEL_26;
  }

  if (v21 < 5)
  {
    goto LABEL_25;
  }

  v22 = v20[2];
  if (v22)
  {
LABEL_24:
    v22 = *(v19 + v22);
  }

LABEL_26:
  v23 = v18 + 18000;
  if (((v18 + 18000) >> 5) >= 0x465u)
  {
    v23 = v18 - 18000;
  }

  v24 = v22 - v23;
  if (v24 > 18000)
  {
    v24 -= 36000;
  }

  if (v24 < -17999)
  {
    v24 += 36000;
  }

  if (a7 & 8) != 0 && ((a3 & 0x100) == 0 || ((a6 >> 8)) && (a6 & 1) == 0 && fabs(v24 / 100.0) < *(a1 + 16))
  {
    return 0;
  }

  if ((a7 & 2) != 0)
  {
    if (a3)
    {
      return 1;
    }

    if (sub_4BF020(*(a1 + 24), a4, *a1, 1))
    {
      return 0;
    }
  }

  v25 = (*a2 - **a2);
  if (*v25 >= 0x1Bu && (v26 = v25[13]) != 0)
  {
    v27 = *(*a2 + v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_2B51D8(*(a1 + 24), a4 & 0xFFFFFFFFFFFFLL);
  v29 = (v28 - *v28);
  if (*v29 < 0x1Bu)
  {
    LODWORD(v30) = 0;
    if ((a7 & 4) == 0)
    {
      return 1;
    }
  }

  else
  {
    v30 = v29[13];
    if (v30)
    {
      LODWORD(v30) = *(v28 + v30);
    }

    if ((a7 & 4) == 0)
    {
      return 1;
    }
  }

  return *(a1 + 8) + v27 >= v30;
}

void sub_FCDE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FCDE34(void *a1)
{
  v3 = 15;
  strcpy(__p, "forbidden_turns");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 13;
  strcpy(__p, "traffic_signs");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 18;
  strcpy(__p, "less_important_frc");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 16;
  strcpy(__p, "oncoming_traffic");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  v3 = 17;
  strcpy(__p, "same_road_traffic");
  sub_5F9D0(a1, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_FCE068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_FCE098(uint64_t *a1, void **a2, unint64_t a3)
{
  v32 = a3;
  v6 = sub_F6D17C(*a2, a2[1])[4];
  v7 = sub_F6D17C(a2[2], a2[3])[4] & 0xFFFFFFFFFFFFFFLL;
  v31[0] = v6 & 0xFFFFFFFFFFFFFFLL;
  v31[1] = v7;
  v31[2] = a3;
  sub_FCCF08((a1 + 26), v31, v30);
  if (!v30[0])
  {
    v29[1] = 0;
    v9 = sub_F6D17C(*a2, a2[1]);
    v10 = 0;
    if ((a3 & 2) != 0)
    {
      v10 = sub_4BF020(a1[3], v9[4] & 0xFFFFFFFFFFFFFFLL, *a1, 1);
    }

    v29[0] = v10;
    v11 = sub_F6D17C(*a2, a2[1])[4];
    v26 = v11;
    v28 = BYTE6(v11);
    v27 = WORD2(v11);
    v12 = a1[3];
    v13 = sub_2B51D8(v12, v11 & 0xFFFFFFFFFFFFLL);
    v14 = (v13 - *v13);
    if (*v14 >= 0x1Fu)
    {
      v15 = v14[15];
      if (!v15)
      {
LABEL_10:
        v18 = 0xFFFFFFFF00000000;
        goto LABEL_11;
      }

      v16 = *(v13 + v15);
      if (v16 != -1)
      {
        v17 = sub_31DF78(v12, v11);
        v18 = v16 << 32;
        v15 = v17;
LABEL_11:
        v24[2] = a1;
        v25 = v18 | v15;
        v24[0] = &v26;
        v24[1] = &v25;
        sub_FCE570((a1 + 26), v31, v33);
        v19 = *a2;
        v20 = a2[1];
        v21 = a2[2];
        v22 = a2[3];
        v33[0] = a1;
        v33[1] = v29;
        v33[2] = v24;
        v34 += 3;
        v8 = v34;
        v35 = a2;
        v36 = &v32;
        sub_FCE240(v19, v20, v21, v22 + 1, v33);
        v33[0] = v8;
        sub_FCD2BC(v8, v33);
        return v8;
      }
    }

    v15 = 0;
    goto LABEL_10;
  }

  return v30[3] + 3;
}

void *sub_FCE240(void *result, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = result;
  if (result)
  {
    result = sub_F6D024(result);
    v10 = result;
    if (a3)
    {
      result = sub_F6D024(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 != a4 < result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = sub_F6D17C(v9, a2);
        result = sub_F6D17C(a3, a4);
        if (v11 != result)
        {
          while (1)
          {
LABEL_20:
            v20 = a2 + 1;
            v21 = sub_F6D024(v9);
            result = sub_F6D024(a3);
            if (a2 + 1 >= v21 || a4 >= result)
            {
              if (v20 < v21 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v22 = sub_F6D17C(v9, a2 + 1);
              result = sub_F6D17C(a3, a4);
              if (v22 == result)
              {
                return result;
              }
            }

            v18 = sub_F6D17C(v9, a2);
            v19 = sub_F6D17C(v9, v20);
            sub_FCFB04(a5, v18, v19);
            a2 = v20;
          }
        }
      }
    }

    else if (a2 < result)
    {
      result = sub_F6D024(v9);
      if (a2 + 1 < result)
      {
        do
        {
          v15 = sub_F6D17C(v9, a2);
          v16 = sub_F6D17C(v9, a2 + 1);
          sub_FCFB04(a5, v15, v16);
          result = sub_F6D024(v9);
          v17 = a2 + 2;
          ++a2;
        }

        while (v17 < result);
      }
    }
  }

  else if (a3)
  {
    result = sub_F6D024(a3);
    if (a4 < result)
    {
      for (result = sub_F6D024(a3); a4 < result; a2 = v12)
      {
        v12 = a2 + 1;
        v13 = sub_F6D17C(0, a2);
        v14 = sub_F6D17C(0, v12);
        sub_FCFB04(a5, v13, v14);
        result = sub_F6D024(a3);
      }
    }
  }

  return result;
}

uint64_t sub_FCE460(uint64_t *a1, void *a2, unint64_t a3, unint64_t *a4)
{
  v4 = 0;
  v5 = a3 >> 7;
  v6 = a1[3];
  v7 = *a1;
  v8 = 0x101010101010101 * (a3 & 0x7F);
  while (1)
  {
    v9 = v5 & v6;
    v10 = *(v7 + v9);
    v11 = ((v10 ^ v8) - 0x101010101010101) & ~(v10 ^ v8) & 0x8080808080808080;
    if (v11)
    {
      break;
    }

LABEL_11:
    if ((v10 & (~v10 << 6) & 0x8080808080808080) != 0)
    {
      return 0;
    }

    v4 += 8;
    v5 = v4 + v9;
  }

  v12 = a1[1];
  v13 = a2[2];
  while (1)
  {
    v14 = (v9 + (__clz(__rbit64(v11)) >> 3)) & v6;
    *a4 = v14;
    v15 = v12 + 48 * v14;
    if (__PAIR64__(*(v15 + 4), *v15) == __PAIR64__(WORD2(*a2), *a2) && *(v15 + 6) == BYTE6(*a2))
    {
      v16 = a2[1];
      if (__PAIR64__(*(v15 + 12), *(v15 + 8)) == __PAIR64__(WORD2(v16), v16) && *(v15 + 14) == BYTE6(v16) && *(v15 + 16) == v13)
      {
        return 1;
      }
    }

    v11 &= v11 - 1;
    if (!v11)
    {
      goto LABEL_11;
    }
  }
}

unint64_t sub_FCE570@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[1];
  v7 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v8 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = (((0x2127599BF4325C37 * (v8 ^ (v7 >> 23))) ^ ((0x2127599BF4325C37 * (v8 ^ (v7 >> 23))) >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
  v10 = (v6 >> 16) & 0xFFFF0000 | (v6 << 32);
  if ((v6 & 0xFF000000000000) != 0)
  {
    v11 = (v6 >> 16) & 0xFFFF0000 | (v6 << 32);
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = (((0x2127599BF4325C37 * (v11 ^ (v10 >> 23))) ^ ((0x2127599BF4325C37 * (v11 ^ (v10 >> 23))) >> 47)) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v13 = a2[2] + (v12 << 6) + (v12 >> 2) + 2654435769u;
  v14 = (v13 ^ ~v12) + ((v13 ^ v12) << 21);
  v15 = 21 * ((265 * (v14 ^ (v14 >> 24))) ^ ((265 * (v14 ^ (v14 >> 24))) >> 14));
  v16 = (a1 + 48 * (((((v15 ^ (v15 >> 28)) >> 8) ^ ((-2147483647 * (v15 ^ (v15 >> 28))) >> 16)) ^ ((-2147483647 * (v15 ^ (v15 >> 28))) >> 24)) & 0xF));
  result = sub_FCE6D4(v16, a2, 2147483649u * (v15 ^ (v15 >> 28)));
  if (v18)
  {
    v19 = v16[1] + 48 * result;
    v20 = a2[2];
    *v19 = *a2;
    *(v19 + 16) = v20;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0;
  }

  v21 = *v16 + result;
  v22 = v16[1] + 48 * result;
  v23 = *v16 + v16[3];
  *a3 = v16;
  *(a3 + 8) = a1 + 768;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 32) = v23;
  *(a3 + 48) = v18;
  return result;
}

unint64_t sub_FCE6D4(void *a1, unint64_t *a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 7;
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = BYTE6(*a2);
  v9 = WORD2(*a2);
  v10 = a2[2];
  while (1)
  {
    v11 = v4 & v5;
    v12 = *(*a1 + (v4 & v5));
    v13 = ((v12 ^ (0x101010101010101 * (a3 & 0x7F))) - 0x101010101010101) & ~(v12 ^ (0x101010101010101 * (a3 & 0x7F))) & 0x8080808080808080;
    if (v13)
    {
      break;
    }

LABEL_17:
    if ((v12 & (~v12 << 6) & 0x8080808080808080) != 0)
    {
      return sub_FCE810(a1, a3);
    }

    v3 += 8;
    v4 = v3 + v11;
  }

  while (1)
  {
    v14 = (v11 + (__clz(__rbit64(v13)) >> 3)) & v5;
    v15 = a1[1] + 48 * v14;
    if (*v15 == v6)
    {
      v16 = *(v15 + 4) == v9 && *(v15 + 6) == v8;
      if (v16 && *(v15 + 8) == v7)
      {
        v17 = *(v15 + 12) == WORD2(v7) && *(v15 + 14) == BYTE6(v7);
        if (v17 && *(v15 + 16) == v10)
        {
          return v14;
        }
      }
    }

    v13 &= v13 - 1;
    if (!v13)
    {
      goto LABEL_17;
    }
  }
}

unint64_t sub_FCE810(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_FCE908(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_FCE908(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_FCE938(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_FCEBA8(a1);
}

uint64_t sub_FCEBA8(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_34;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = (*(result + 8) + 48 * i);
        v19 = v18[1];
        v20 = (*v18 >> 16) & 0xFFFF0000 | (*v18 << 32);
        if ((*v18 & 0xFF000000000000) != 0)
        {
          v21 = (*v18 >> 16) & 0xFFFF0000 | (*v18 << 32);
        }

        else
        {
          v21 = v20 + 1;
        }

        v22 = (((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) ^ ((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
        v23 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
        if ((v19 & 0xFF000000000000) != 0)
        {
          v24 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
        }

        else
        {
          v24 = v23 + 1;
        }

        v25 = (((0x2127599BF4325C37 * (v24 ^ (v23 >> 23))) ^ ((0x2127599BF4325C37 * (v24 ^ (v23 >> 23))) >> 47)) + 2654435769u + (v22 << 6) + (v22 >> 2)) ^ v22;
        v26 = v18[2] + 2654435769 + (v25 << 6) + (v25 >> 2);
        v27 = (v26 ^ ~v25) + ((v26 ^ v25) << 21);
        v28 = 21 * ((265 * (v27 ^ (v27 >> 24))) ^ ((265 * (v27 ^ (v27 >> 24))) >> 14));
        v29 = 2147483649u * (v28 ^ (v28 >> 28));
        v30 = v13 & (v29 >> 7);
        v31 = *(v17->i64 + v30) & (~*(v17->i64 + v30) << 7) & 0x8080808080808080;
        if (v31)
        {
          v15 = v13 & (v29 >> 7);
        }

        else
        {
          v32 = 8;
          v15 = v13 & (v29 >> 7);
          do
          {
            v15 = (v15 + v32) & v13;
            v32 += 8;
            v31 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v31);
        }

        v16 = (v15 + (__clz(__rbit64(v31)) >> 3)) & v13;
        if ((((v16 - v30) ^ (i - v30)) & v13) > 7)
        {
          v33 = v17->u8[v16];
          v17->i8[v16] = v29 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v29 & 0x7F;
          v34 = *(result + 8);
          if (v33 == 128)
          {
            v35 = v34 + 48 * v16;
            v36 = v34 + 48 * i;
            v37 = *(v36 + 16);
            *v35 = *v36;
            *(v35 + 16) = v37;
            *(v35 + 24) = 0;
            *(v35 + 32) = 0;
            *(v35 + 40) = 0;
            *(v35 + 24) = *(v36 + 24);
            *(v35 + 40) = *(v36 + 40);
            *(v36 + 32) = 0;
            *(v36 + 40) = 0;
            *(v36 + 24) = 0;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v38 = (v34 + 48 * i);
            v50 = *v38;
            v51 = *(v38 + 2);
            v39 = *(v38 + 5);
            v40 = *(v38 + 24);
            *(v38 + 4) = 0;
            *(v38 + 5) = 0;
            *(v38 + 3) = 0;
            v41 = *(result + 8);
            v42 = v41 + 48 * i;
            v43 = 48 * v16;
            v44 = v41 + 48 * v16;
            v45 = *(v44 + 16);
            *v42 = *v44;
            *(v42 + 16) = v45;
            *(v42 + 24) = 0;
            *(v42 + 32) = 0;
            *(v42 + 40) = 0;
            *(v42 + 24) = *(v44 + 24);
            *(v42 + 40) = *(v44 + 40);
            *(v44 + 32) = 0;
            *(v44 + 40) = 0;
            *(v44 + 24) = 0;
            v46 = *(result + 8) + v43;
            *(v46 + 16) = v51;
            *v46 = v50;
            *(v46 + 24) = v40;
            *(v46 + 40) = v39;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v29 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v29 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v47 = i - (i >> 3);
    v48 = i == 7;
    v49 = 6;
    if (!v48)
    {
      v49 = v47;
    }
  }

  else
  {
    v49 = 0;
  }

  *(result + 40) = v49 - *(result + 16);
  return result;
}

void sub_FCEF90(uint64_t *a1, int **a2, uint64_t a3)
{
  v6 = *a1;
  v7 = sub_3116D0(a2);
  v8 = a2[4];
  v9 = *(a3 + 32);
  v10 = (*a2 - **a2);
  if (*v10 >= 0x9Bu && (v11 = v10[77]) != 0)
  {
    v12 = v7;
    v13 = *(*a2 + v11 + 1) >> 7;
  }

  else
  {
    v12 = v7;
    v13 = 0;
  }

  v14 = sub_2B51D8(*(v6 + 24), v8 & 0xFFFFFFFFFFFFLL);
  v15 = (v14 - *v14);
  v16 = *v15;
  if ((v8 & 0xFF000000000000) != 0)
  {
    if (v16 < 0x9B)
    {
      return;
    }

    v17 = v15[77];
    if (!v17 || (*(v14 + v17) & 2) == 0)
    {
      return;
    }
  }

  else
  {
    if (v16 < 0x9B)
    {
      return;
    }

    v18 = v15[77];
    if (!v18 || (*(v14 + v18) & 1) == 0)
    {
      return;
    }
  }

  sub_2B365C(*(v6 + 24), v12, 0, (v6 + 32));
  sub_FCD648(v6, v8 & 0xFFFFFFFFFFFFLL | (((v8 & 0xFF000000000000) == 0) << 48), v9 & 0xFFFFFFFFFFFFFFLL, (v6 + 32), 0, (v6 + 160));
  v20 = *(v6 + 32);
  v19 = *(v6 + 40);
  if (v20 != v19)
  {
    v21 = v19 - v20 - 8;
    v22 = *(v6 + 32);
    if (v21 < 8)
    {
      goto LABEL_29;
    }

    v23 = (v21 >> 3) + 1;
    v22 = v20 + 8 * (v23 & 0x3FFFFFFFFFFFFFFELL);
    v24 = (v20 + 14);
    v25 = v23 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v26 = !*v24;
      *(v24 - 8) = !*(v24 - 8);
      *v24 = v26;
      v24 += 16;
      v25 -= 2;
    }

    while (v25);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_29:
      do
      {
        *(v22 + 6) = *(v22 + 6) == 0;
        v22 += 8;
      }

      while (v22 != v19);
    }
  }

  v27 = 1;
  sub_FCD648(v6, v8 & 0xFFFFFFFFFFFFFFLL, v9 & 0xFFFFFFFFFFFFLL | (((v9 & 0xFF000000000000) == 0) << 48), (v6 + 32), 1, (v6 + 112));
  if ((sub_FCF25C((v6 + 112), a1[2]) & 1) == 0)
  {
    v27 = sub_FCF25C((v6 + 136), a1[2]);
  }

  v28 = a1[1];
  *(v28 + 1) |= v27;
  v39 = v6;
  v40 = *(a1 + 1);
  v29 = a1[5];
  v41 = a1[4];
  v42 = v28;
  v43 = v29;
  sub_FCF390(&v39, v13 ^ 1, v13, 1u);
  sub_FCF390(&v39, v13, v13 ^ 1, 0);
  if (v8 == v9 && ((v9 ^ v8) & 0xFFFF00000000) == 0)
  {
    v30 = a1[3];
    v31 = *v30;
    v32 = v30[1];
    if (v31 != v32)
    {
      v38 = 1;
      v33 = v32 - 32;
      if (!v13)
      {
        v31 = v33;
      }

      v34 = a1[4];
      v35 = a1[5];
      v36[0] = v6;
      v36[1] = v34;
      v36[2] = a1[1];
      v36[3] = v31;
      v36[4] = &v38;
      v36[5] = v35;
      sub_FCF814(*(v6 + 136), *(v6 + 144), v31 + 8, &v37, v36);
    }
  }
}

uint64_t sub_FCF25C(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  while (1)
  {
    v7 = *v2;
    v8 = *(v4 + 4) == WORD2(*v2) && *v4 == v7;
    if (v8 || !*v5 || v5[1] == -1)
    {
      goto LABEL_4;
    }

    v9 = *(v6 + 24);
    v10 = sub_2B51D8(v9, v7 & 0xFFFFFFFFFFFFLL);
    v11 = (v10 - *v10);
    if (*v11 >= 0x1Fu && (v12 = v11[15]) != 0)
    {
      v13 = *(v10 + v12);
      if (v13 == -1)
      {
        if (*v5)
        {
          goto LABEL_4;
        }
      }

      else if (sub_31DF78(v9, v7) != *v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = -1;
      if (*v5)
      {
        goto LABEL_4;
      }
    }

    if (v13 == v5[1])
    {
      return 1;
    }

LABEL_4:
    if (++v2 == v3)
    {
      return 0;
    }
  }
}

void sub_FCF390(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *a1;
  v5 = *a1 + 24 * a2;
  v6 = *(v5 + 112);
  v51 = *(v5 + 120);
  if (v6 != v51)
  {
    v7 = a1;
    v50 = v4 + 24 * a3;
    v8 = a4;
    while (1)
    {
      v52 = v6;
      v9 = *v6;
      v56 = v9;
      v10 = v7[1];
      if (*(*v10 + 4) == WORD2(v9) && **v10 == v9)
      {
        break;
      }

      v12 = v10[1];
      if (!*v12 || v12[1] == -1)
      {
        break;
      }

      v13 = *(v10[2] + 24);
      v14 = sub_2B51D8(v13, v9 & 0xFFFFFFFFFFFFLL);
      v15 = (v14 - *v14);
      if (*v15 >= 0x1Fu && (v16 = v15[15]) != 0)
      {
        v17 = *(v14 + v16);
        if (v17 == -1)
        {
          v19 = v10[1];
          if (*v19)
          {
            break;
          }
        }

        else
        {
          v18 = sub_31DF78(v13, v9);
          v19 = v10[1];
          if (v18 != *v19)
          {
            break;
          }
        }
      }

      else
      {
        v17 = -1;
        v19 = v10[1];
        if (*v19)
        {
          break;
        }
      }

      v20 = (v17 == v19[1]) << 8;
      v21 = v7[2];
      v22 = *(v21 + 8);
      if (v22 >= *(v21 + 16))
      {
LABEL_19:
        v23 = sub_FCF6C0(v21, &v56);
        goto LABEL_20;
      }

LABEL_16:
      *v22 = v56;
      v22[1] = 0;
      v22[2] = 0;
      v22[3] = 0;
      v23 = v22 + 4;
LABEL_20:
      *(v21 + 8) = v23;
      v24 = v7[2];
      v25 = *(v24 + 8);
      v26 = *(v50 + 160);
      v27 = *(v50 + 168);
      if (v26 != v27)
      {
        v28 = v7[3];
        v29 = v7[5];
        v30 = v7[4];
        v53 = v30;
        v54 = *(v50 + 168);
        v55 = v29;
        do
        {
          v32 = *v26;
          v33 = sub_4D1F50(*v28, *(v28 + 8));
          if (sub_FCDA30(v4, v33, *v30, v56, v32, v20 | v8, *v29))
          {
            v35 = *(v25 - 16);
            v34 = *(v25 - 8);
            if (v35 < v34)
            {
              *v35 = *v26;
              v31 = v35 + 1;
            }

            else
            {
              v36 = *(v25 - 24);
              v37 = v35 - v36;
              v38 = (v35 - v36) >> 3;
              v39 = v38 + 1;
              if ((v38 + 1) >> 61)
              {
                sub_1794();
              }

              v40 = v20;
              v41 = v8;
              v42 = v4;
              v43 = v34 - v36;
              if (v43 >> 2 > v39)
              {
                v39 = v43 >> 2;
              }

              if (v43 >= 0x7FFFFFFFFFFFFFF8)
              {
                v44 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v39;
              }

              if (v44)
              {
                if (!(v44 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v45 = (v35 - v36) >> 3;
              v46 = (8 * v38);
              v47 = (8 * v38 - 8 * v45);
              *v46 = *v26;
              v31 = v46 + 1;
              memcpy(v47, v36, v37);
              *(v25 - 24) = v47;
              *(v25 - 16) = v31;
              *(v25 - 8) = 0;
              if (v36)
              {
                operator delete(v36);
              }

              v4 = v42;
              v8 = v41;
              v20 = v40;
              v30 = v53;
              v27 = v54;
            }

            *(v25 - 16) = v31;
            v29 = v55;
          }

          ++v26;
        }

        while (v26 != v27);
        v7 = a1;
        v24 = a1[2];
        v25 = *(v24 + 8);
      }

      v48 = *(v25 - 24);
      if (v48 == *(v25 - 16))
      {
        if (v48)
        {
          *(v25 - 16) = v48;
          operator delete(v48);
        }

        *(v24 + 8) = v25 - 32;
      }

      v6 = v52 + 1;
      if (v52 + 1 == v51)
      {
        return;
      }
    }

    v20 = 0;
    v21 = v7[2];
    v22 = *(v21 + 8);
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }
}

void *sub_FCF6C0(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    sub_1794();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = (v3 - *a1) >> 5;
  v10 = (32 * v4);
  *v10 = *a2;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  v11 = 32 * v4 - 32 * v9;
  if (v2 != v3)
  {
    v12 = &v10[-4 * v9];
    v13 = v2;
    do
    {
      *v12 = *v13;
      v12[2] = 0;
      v12[3] = 0;
      *(v12 + 1) = *(v13 + 1);
      v12[3] = v13[3];
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = 0;
      v13 += 4;
      v12 += 4;
    }

    while (v13 != v3);
    do
    {
      v14 = v2[1];
      if (v14)
      {
        v2[2] = v14;
        operator delete(v14);
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = 32 * v4 + 32;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return (32 * v4 + 32);
}

uint64_t sub_FCF814(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; ++i)
    {
      v10 = *a5;
      v11 = *i & 0xFF000000000000;
      v12 = *i & 0xFFFFFFFFFFFFLL;
      v13 = sub_2B51D8(*(*a5 + 24), v12);
      v14 = (v13 - *v13);
      v15 = *v14;
      if (v11)
      {
        if (v15 >= 0x9B)
        {
          v16 = v14[77];
          if (v16)
          {
            if (*(v13 + v16))
            {
              goto LABEL_13;
            }
          }
        }
      }

      else if (v15 >= 0x9B)
      {
        v17 = v14[77];
        if (v17)
        {
          if ((*(v13 + v17) & 2) != 0)
          {
LABEL_13:
            v18 = sub_4D1F50(**(a5 + 8), *(*(a5 + 8) + 8));
            if (sub_FCDA30(v10, v18, **(a5 + 16), **(a5 + 24), v12 | ((v11 == 0) << 48), **(a5 + 32), **(a5 + 40)))
            {
              v19 = *i;
              v20 = (*i & 0xFF000000000000) == 0;
              LODWORD(v21) = *i;
              WORD2(v21) = WORD2(v19);
              BYTE6(v21) = v20;
              sub_2B5AD0(a3, &v21);
            }
          }
        }
      }
    }
  }

  return a3;
}

char *sub_FCF954(char *a1, char *a2, uint64_t *a3)
{
  v5 = a1;
  if (a2 != a1)
  {
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      while (2)
      {
        v8 = *a3;
        v9 = *(v6 + 8);
        v10 = *(v6 + 16);
        if (v9 != v10)
        {
          goto LABEL_6;
        }

LABEL_4:
        while (1)
        {
          v8 += 32;
          if (v8 == v7)
          {
            break;
          }

          v9 = *(v8 + 8);
          v10 = *(v8 + 16);
          if (v9 != v10)
          {
LABEL_6:
            while ((*v9 & 0xFFFFFFFFFFFFFFLL) != (*v5 & 0xFFFFFFFFFFFFFFLL))
            {
              if (++v9 == v10)
              {
                goto LABEL_4;
              }
            }

            goto LABEL_12;
          }
        }

        v5 += 32;
        v11 = a2;
        if (v5 != a2)
        {
          continue;
        }

        return v11;
      }
    }

    v5 = &a1[(a2 - a1) & 0xFFFFFFFFFFFFFFE0];
  }

LABEL_12:
  if (v5 == a2)
  {
    return a2;
  }

  v12 = v5 + 32;
  if (v5 + 32 != a2)
  {
    v11 = v5;
    do
    {
      v13 = v12;
      v14 = *a3;
      v15 = a3[1];
      if (*a3 != v15)
      {
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        if (v16 != v17)
        {
          goto LABEL_21;
        }

LABEL_19:
        while (1)
        {
          v14 += 32;
          if (v14 == v15)
          {
            break;
          }

          v16 = *(v14 + 8);
          v17 = *(v14 + 16);
          if (v16 != v17)
          {
LABEL_21:
            while ((*v16 & 0xFFFFFFFFFFFFFFLL) != (*v13 & 0xFFFFFFFFFFFFFFLL))
            {
              if (++v16 == v17)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_16;
          }
        }
      }

      v18 = *v13;
      *(v11 + 3) = *(v13 + 3);
      *v11 = v18;
      v19 = *(v11 + 1);
      if (v19)
      {
        *(v11 + 2) = v19;
        operator delete(v19);
        *(v11 + 1) = 0;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
      }

      *(v11 + 2) = *(v5 + 40);
      *(v11 + 3) = *(v5 + 7);
      *(v5 + 5) = 0;
      *(v5 + 6) = 0;
      *(v5 + 7) = 0;
      v11 += 8;
LABEL_16:
      v12 = v13 + 32;
      v5 = v13;
    }

    while (v13 + 32 != a2);
    return v11;
  }

  return v5;
}

void sub_FCFB04(uint64_t a1, int **a2, uint64_t a3)
{
  v6 = *a1;
  v7 = sub_3116D0(a2);
  v8 = a2[4];
  v9 = *(a3 + 32);
  v10 = (*a2 - **a2);
  if (*v10 >= 0x9Bu && (v11 = v10[77]) != 0)
  {
    v12 = v7;
    v13 = *(*a2 + v11 + 1) >> 7;
  }

  else
  {
    v12 = v7;
    v13 = 0;
  }

  v14 = sub_2B51D8(*(v6 + 24), v8 & 0xFFFFFFFFFFFFLL);
  v15 = (v14 - *v14);
  v16 = *v15;
  if ((v8 & 0xFF000000000000) != 0)
  {
    if (v16 < 0x9B)
    {
      return;
    }

    v17 = v15[77];
    if (!v17 || (*(v14 + v17) & 2) == 0)
    {
      return;
    }
  }

  else
  {
    if (v16 < 0x9B)
    {
      return;
    }

    v18 = v15[77];
    if (!v18 || (*(v14 + v18) & 1) == 0)
    {
      return;
    }
  }

  sub_2B365C(*(v6 + 24), v12, 0, (v6 + 32));
  sub_FCD648(v6, v8 & 0xFFFFFFFFFFFFLL | (((v8 & 0xFF000000000000) == 0) << 48), v9 & 0xFFFFFFFFFFFFFFLL, (v6 + 32), 0, (v6 + 160));
  v20 = *(v6 + 32);
  v19 = *(v6 + 40);
  if (v20 != v19)
  {
    v21 = v19 - v20 - 8;
    v22 = *(v6 + 32);
    if (v21 < 8)
    {
      goto LABEL_29;
    }

    v23 = (v21 >> 3) + 1;
    v22 = v20 + 8 * (v23 & 0x3FFFFFFFFFFFFFFELL);
    v24 = (v20 + 14);
    v25 = v23 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v26 = !*v24;
      *(v24 - 8) = !*(v24 - 8);
      *v24 = v26;
      v24 += 16;
      v25 -= 2;
    }

    while (v25);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_29:
      do
      {
        *(v22 + 6) = *(v22 + 6) == 0;
        v22 += 8;
      }

      while (v22 != v19);
    }
  }

  v27 = 1;
  sub_FCD648(v6, v8 & 0xFFFFFFFFFFFFFFLL, v9 & 0xFFFFFFFFFFFFLL | (((v9 & 0xFF000000000000) == 0) << 48), (v6 + 32), 1, (v6 + 112));
  if ((sub_FCF25C((v6 + 112), *(a1 + 16)) & 1) == 0)
  {
    v27 = sub_FCF25C((v6 + 136), *(a1 + 16));
  }

  v28 = *(a1 + 8);
  *(v28 + 1) |= v27;
  v39 = v6;
  v40 = *(a1 + 16);
  v29 = *(a1 + 40);
  v41 = *(a1 + 32);
  v42 = v28;
  v43 = v29;
  sub_FCFDD0(&v39, v13 ^ 1, v13, 1u);
  sub_FCFDD0(&v39, v13, v13 ^ 1, 0);
  if (v8 == v9 && ((v9 ^ v8) & 0xFFFF00000000) == 0)
  {
    v30 = *(a1 + 24);
    v31 = *v30;
    v32 = v30[1];
    if (v31 != v32)
    {
      v38 = 1;
      v33 = v32 - 32;
      if (!v13)
      {
        v31 = v33;
      }

      v34 = *(a1 + 32);
      v35 = *(a1 + 40);
      v36[0] = v6;
      v36[1] = v34;
      v36[2] = *(a1 + 8);
      v36[3] = v31;
      v36[4] = &v38;
      v36[5] = v35;
      sub_FD0100(*(v6 + 136), *(v6 + 144), v31 + 8, &v37, v36);
    }
  }
}

void sub_FCFDD0(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *a1;
  v5 = *a1 + 24 * a2;
  v6 = *(v5 + 112);
  v51 = *(v5 + 120);
  if (v6 != v51)
  {
    v7 = a1;
    v50 = v4 + 24 * a3;
    v8 = a4;
    while (1)
    {
      v52 = v6;
      v9 = *v6;
      v56 = v9;
      v10 = v7[1];
      if (*(*v10 + 4) == WORD2(v9) && **v10 == v9)
      {
        break;
      }

      v12 = v10[1];
      if (!*v12 || v12[1] == -1)
      {
        break;
      }

      v13 = *(v10[2] + 24);
      v14 = sub_2B51D8(v13, v9 & 0xFFFFFFFFFFFFLL);
      v15 = (v14 - *v14);
      if (*v15 >= 0x1Fu && (v16 = v15[15]) != 0)
      {
        v17 = *(v14 + v16);
        if (v17 == -1)
        {
          v19 = v10[1];
          if (*v19)
          {
            break;
          }
        }

        else
        {
          v18 = sub_31DF78(v13, v9);
          v19 = v10[1];
          if (v18 != *v19)
          {
            break;
          }
        }
      }

      else
      {
        v17 = -1;
        v19 = v10[1];
        if (*v19)
        {
          break;
        }
      }

      v20 = (v17 == v19[1]) << 8;
      v21 = v7[2];
      v22 = *(v21 + 8);
      if (v22 >= *(v21 + 16))
      {
LABEL_19:
        v23 = sub_FCF6C0(v21, &v56);
        goto LABEL_20;
      }

LABEL_16:
      *v22 = v56;
      v22[1] = 0;
      v22[2] = 0;
      v22[3] = 0;
      v23 = v22 + 4;
LABEL_20:
      *(v21 + 8) = v23;
      v24 = v7[2];
      v25 = *(v24 + 8);
      v26 = *(v50 + 160);
      v27 = *(v50 + 168);
      if (v26 != v27)
      {
        v28 = v7[3];
        v29 = v7[5];
        v30 = v7[4];
        v53 = v30;
        v54 = *(v50 + 168);
        v55 = v29;
        do
        {
          v32 = *v26;
          v33 = sub_F6D17C(*v28, *(v28 + 8));
          if (sub_FCDA30(v4, v33, *v30, v56, v32, v20 | v8, *v29))
          {
            v35 = *(v25 - 16);
            v34 = *(v25 - 8);
            if (v35 < v34)
            {
              *v35 = *v26;
              v31 = v35 + 1;
            }

            else
            {
              v36 = *(v25 - 24);
              v37 = v35 - v36;
              v38 = (v35 - v36) >> 3;
              v39 = v38 + 1;
              if ((v38 + 1) >> 61)
              {
                sub_1794();
              }

              v40 = v20;
              v41 = v8;
              v42 = v4;
              v43 = v34 - v36;
              if (v43 >> 2 > v39)
              {
                v39 = v43 >> 2;
              }

              if (v43 >= 0x7FFFFFFFFFFFFFF8)
              {
                v44 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v39;
              }

              if (v44)
              {
                if (!(v44 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v45 = (v35 - v36) >> 3;
              v46 = (8 * v38);
              v47 = (8 * v38 - 8 * v45);
              *v46 = *v26;
              v31 = v46 + 1;
              memcpy(v47, v36, v37);
              *(v25 - 24) = v47;
              *(v25 - 16) = v31;
              *(v25 - 8) = 0;
              if (v36)
              {
                operator delete(v36);
              }

              v4 = v42;
              v8 = v41;
              v20 = v40;
              v30 = v53;
              v27 = v54;
            }

            *(v25 - 16) = v31;
            v29 = v55;
          }

          ++v26;
        }

        while (v26 != v27);
        v7 = a1;
        v24 = a1[2];
        v25 = *(v24 + 8);
      }

      v48 = *(v25 - 24);
      if (v48 == *(v25 - 16))
      {
        if (v48)
        {
          *(v25 - 16) = v48;
          operator delete(v48);
        }

        *(v24 + 8) = v25 - 32;
      }

      v6 = v52 + 1;
      if (v52 + 1 == v51)
      {
        return;
      }
    }

    v20 = 0;
    v21 = v7[2];
    v22 = *(v21 + 8);
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }
}

uint64_t sub_FD0100(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; ++i)
    {
      v10 = *a5;
      v11 = *i & 0xFF000000000000;
      v12 = *i & 0xFFFFFFFFFFFFLL;
      v13 = sub_2B51D8(*(*a5 + 24), v12);
      v14 = (v13 - *v13);
      v15 = *v14;
      if (v11)
      {
        if (v15 >= 0x9B)
        {
          v16 = v14[77];
          if (v16)
          {
            if (*(v13 + v16))
            {
              goto LABEL_13;
            }
          }
        }
      }

      else if (v15 >= 0x9B)
      {
        v17 = v14[77];
        if (v17)
        {
          if ((*(v13 + v17) & 2) != 0)
          {
LABEL_13:
            v18 = sub_F6D17C(**(a5 + 8), *(*(a5 + 8) + 8));
            if (sub_FCDA30(v10, v18, **(a5 + 16), **(a5 + 24), v12 | ((v11 == 0) << 48), **(a5 + 32), **(a5 + 40)))
            {
              v19 = *i;
              v20 = (*i & 0xFF000000000000) == 0;
              LODWORD(v21) = *i;
              WORD2(v21) = WORD2(v19);
              BYTE6(v21) = v20;
              sub_2B5AD0(a3, &v21);
            }
          }
        }
      }
    }
  }

  return a3;
}

void sub_FD0240(uint64_t a1, void *a2, uint64_t *a3, int a4)
{
  v4 = *a3;
  *&v6 = a3[1];
  *(&v6 + 7) = *(a3 + 15);
  v5 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *a1 = a4;
  *(a1 + 23) = *(&v6 + 7);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 31) = v5;
  sub_FD068C(a1 + 32, a2);
}

void sub_FD031C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_FD0350(_BYTE *a1, const void **a2)
{
  if ((atomic_load_explicit(&qword_27C0388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C0388))
  {
    sub_3608D0(&qword_27C03A8, "penalize_sidewalks_by_car_traffic");
    __cxa_guard_release(&qword_27C0388);
  }

  if ((atomic_load_explicit(&qword_27C0390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C0390))
  {
    sub_3608D0(&qword_27C03C0, "penalize_sidewalk_name_changes");
    __cxa_guard_release(&qword_27C0390);
  }

  if ((atomic_load_explicit(&qword_27C0398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C0398))
  {
    sub_3608D0(&qword_27C03D8, "check_sidewalk_cyclability_first");
    __cxa_guard_release(&qword_27C0398);
  }

  if ((atomic_load_explicit(&qword_27C03A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C03A0))
  {
    sub_3608D0(&qword_27C03F0, "detect_calm_road_crosswalk_transitions");
    __cxa_guard_release(&qword_27C03A0);
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = qword_27C03B0;
  if (byte_27C03BF >= 0)
  {
    v6 = byte_27C03BF;
  }

  if (v5 == v6)
  {
    v7 = v4 >= 0 ? a2 : *a2;
    v8 = byte_27C03BF >= 0 ? &qword_27C03A8 : qword_27C03A8;
    if (!memcmp(v7, v8, v5))
    {
      goto LABEL_50;
    }
  }

  v9 = qword_27C03C8;
  if (byte_27C03D7 >= 0)
  {
    v9 = byte_27C03D7;
  }

  if (v5 == v9)
  {
    v10 = v4 >= 0 ? a2 : *a2;
    v11 = byte_27C03D7 >= 0 ? &qword_27C03C0 : qword_27C03C0;
    if (!memcmp(v10, v11, v5))
    {
      ++a1;
LABEL_50:
      *a1 = 1;
      return;
    }
  }

  v12 = qword_27C03E0;
  if (byte_27C03EF >= 0)
  {
    v12 = byte_27C03EF;
  }

  if (v5 == v12 && (v4 >= 0 ? (v13 = a2) : (v13 = *a2), byte_27C03EF >= 0 ? (v14 = &qword_27C03D8) : (v14 = qword_27C03D8), !memcmp(v13, v14, v5)))
  {
    a1[2] = 1;
  }

  else
  {
    v15 = qword_27C03F8;
    if (byte_27C0407 >= 0)
    {
      v15 = byte_27C0407;
    }

    if (v5 == v15)
    {
      if (v4 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      if (byte_27C0407 >= 0)
      {
        v17 = &qword_27C03F0;
      }

      else
      {
        v17 = qword_27C03F0;
      }

      if (!memcmp(v16, v17, v5))
      {
        a1[3] = 1;
      }
    }
  }
}

void sub_FD068C(uint64_t a1, void *a2)
{
  *a1 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = xmmword_22AEA60;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 40) = _Q0;
  *(a1 + 56) = _Q0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 224) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  operator new();
}

void sub_FD40E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void **a15, void **a16, void **a17, void **a18, void **a19, void **a20)
{
  v25 = *(v23 - 128);
  if (v25)
  {
    *(v23 - 120) = v25;
    operator delete(v25);
  }

  v26 = *a16;
  if (*a16)
  {
    v20[197] = v26;
    operator delete(v26);
  }

  v27 = *a17;
  if (*a17)
  {
    v20[194] = v27;
    operator delete(v27);
  }

  sub_21DB4B4(v22);
  v28 = *a14;
  if (*a14)
  {
    v20[185] = v28;
    operator delete(v28);
  }

  sub_FD5AC4(v20 + 169);
  v29 = *(v21 + 464);
  if (v29)
  {
    v20[166] = v29;
    operator delete(v29);
  }

  v30 = *a15;
  if (*a15)
  {
    v20[163] = v30;
    operator delete(v30);
  }

  sub_FD5B28(v20 + 132);
  v31 = *a19;
  if (*a19)
  {
    v20[120] = v31;
    operator delete(v31);
    v32 = *a20;
    if (!*a20)
    {
LABEL_15:
      v33 = *v21;
      if (!*v21)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v32 = *a20;
    if (!*a20)
    {
      goto LABEL_15;
    }
  }

  v20[111] = v32;
  operator delete(v32);
  v33 = *v21;
  if (!*v21)
  {
LABEL_16:
    v34 = *a18;
    if (!*a18)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v20[108] = v33;
  operator delete(v33);
  v34 = *a18;
  if (!*a18)
  {
LABEL_17:
    v35 = v20[53];
    if (!v35)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  v20[105] = v34;
  operator delete(v34);
  v35 = v20[53];
  if (!v35)
  {
LABEL_18:
    v36 = v20[50];
    if (!v36)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20[54] = v35;
  operator delete(v35);
  v36 = v20[50];
  if (!v36)
  {
LABEL_19:
    v37 = v20[47];
    if (!v37)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  v20[51] = v36;
  operator delete(v36);
  v37 = v20[47];
  if (!v37)
  {
LABEL_20:
    v38 = v20[44];
    if (!v38)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  v20[48] = v37;
  operator delete(v37);
  v38 = v20[44];
  if (!v38)
  {
LABEL_21:
    v39 = v20[41];
    if (!v39)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_33:
  v20[45] = v38;
  operator delete(v38);
  v39 = v20[41];
  if (!v39)
  {
LABEL_22:
    v40 = v20[34];
    if (!v40)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20[42] = v39;
  operator delete(v39);
  v40 = v20[34];
  if (!v40)
  {
LABEL_23:
    v41 = v20[31];
    if (!v41)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20[35] = v40;
  operator delete(v40);
  v41 = v20[31];
  if (!v41)
  {
LABEL_24:
    v42 = *a10;
    if (!*a10)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  v20[32] = v41;
  operator delete(v41);
  v42 = *a10;
  if (!*a10)
  {
LABEL_25:
    _Unwind_Resume(a1);
  }

LABEL_37:
  v20[29] = v42;
  operator delete(v42);
  _Unwind_Resume(a1);
}

void sub_FD4D64(void *a1, uint64_t *a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v13 = *v7;
        v19 = 5;
        strcpy(__p, "index");
        v14 = sub_63FDC(v13, __p);
        v15 = v14;
        if (v19 < 0)
        {
          operator delete(__p[0]);
          v16 = *a3;
          v17 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
          if (v15 >= v17)
          {
LABEL_11:
            if (v15 + 1 > v17)
            {
              sub_FD5EAC(a3, v15 + 1 - v17);
            }

            else if (v15 + 1 < v17)
            {
              a3[1] = v16 + 24 * (v15 + 1);
            }
          }
        }

        else
        {
          v16 = *a3;
          v17 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
          if (v14 >= v17)
          {
            goto LABEL_11;
          }
        }

        v9 = sub_FD5B6C(v13);
        v10 = *a3 + 24 * v15;
        *v10 = v9;
        *(v10 + 8) = v11;
        *(v10 + 16) = v12;
        v7 += 16;
      }

      while (v7 != v8);
    }
  }
}

void sub_FD4EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD52D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_FD5304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a19);
  _Unwind_Resume(a1);
}

void sub_FD5328(uint64_t *result@<X0>, char a2@<W1>, unint64_t a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  *&v41 = a3;
  *(&v41 + 1) = a4;
  v5 = *result;
  v6 = result[1];
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if (v5 != v6)
  {
    v8 = *(v6 - 24);
    if (v8 == -1)
    {
      v9 = HIDWORD(a3);
      if (v5 == v6)
      {
        return;
      }
    }

    else
    {
      v11 = a5;
      sub_FD6874(a5, (v8 + 1), &v41);
      LODWORD(a3) = v41;
      LODWORD(v9) = DWORD1(v41);
      a4 = *(&v41 + 1);
      v5 = *result;
      v6 = result[1];
      a5 = v11;
      if (*result == v6)
      {
        return;
      }
    }

    v13 = *a5;
    v12 = a5[1];
    if (a2)
    {
      LODWORD(v14) = 0;
      while (1)
      {
        v15 = v14 ? v14 - 1 : 0;
        v16 = *v5;
        v17 = *(v5 + 8);
        v18 = *(v5 + 12);
        v19 = *(v5 + 16);
        v20 = v14;
        if (v14 < ((v12 - v13) >> 4) && v14 <= v16)
        {
          break;
        }

LABEL_8:
        v5 += 24;
        a4 = v19;
        LODWORD(v9) = v18;
        LODWORD(a3) = v17;
        if (v5 == v6)
        {
          return;
        }
      }

      v22 = (v17 - a3);
      v23 = (v18 - v9);
      v24 = v14 != 0;
      while (1)
      {
        v25 = 1.0;
        if (v16 > v15)
        {
          v25 = v24 / (v16 - v15);
        }

        v26 = v25 * v22;
        if (v25 * v22 >= 0.0)
        {
          if (v26 >= 4.50359963e15)
          {
            goto LABEL_25;
          }

          v27 = (v26 + v26) + 1;
        }

        else
        {
          if (v26 <= -4.50359963e15)
          {
            goto LABEL_25;
          }

          v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
        }

        v26 = (v27 >> 1);
LABEL_25:
        v28 = v25 * v23;
        if (v25 * v23 >= 0.0)
        {
          if (v28 >= 4.50359963e15)
          {
            goto LABEL_31;
          }

          v29 = (v28 + v28) + 1;
        }

        else
        {
          if (v28 <= -4.50359963e15)
          {
            goto LABEL_31;
          }

          v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
        }

        v28 = (v29 >> 1);
LABEL_31:
        v30 = v25 * (v19 - a4);
        if (v30 >= 0.0)
        {
          if (v30 >= 4.50359963e15)
          {
            goto LABEL_37;
          }

          v31 = (v30 + v30) + 1;
        }

        else
        {
          if (v30 <= -4.50359963e15)
          {
            goto LABEL_37;
          }

          v31 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
        }

        v30 = (v31 >> 1);
LABEL_37:
        v14 = (v14 + 1);
        v32 = (v13 + 16 * v20);
        *v32 = (a3 + v26) | ((v9 + v28) << 32);
        v32[1] = &a4[v30];
        v13 = *a5;
        v12 = a5[1];
        if (v14 < (v12 - *a5) >> 4)
        {
          ++v24;
          v20 = v14;
          if (v14 <= v16)
          {
            continue;
          }
        }

        goto LABEL_8;
      }
    }

    LODWORD(v33) = 0;
    do
    {
      v34 = *v5;
      v35 = v33;
      if (v33 < ((v12 - v13) >> 4) && v33 <= v34)
      {
        v37 = *(v5 + 8);
        v38 = *(v5 + 16);
        do
        {
          v33 = (v33 + 1);
          v39 = (v13 + 16 * v35);
          *v39 = v37;
          v39[1] = v38;
          v13 = *a5;
          v12 = a5[1];
          v40 = v33 >= (v12 - *a5) >> 4 || v33 > v34;
          v35 = v33;
        }

        while (!v40);
      }

      v5 += 24;
    }

    while (v5 != v6);
  }
}

void sub_FD55DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FD55F8(void *a1, uint64_t *a2, void *a3)
{
  result = sub_5FC3C(a1, a2);
  if (result)
  {
    a3[1] = *a3;
    result = sub_5F680(a1, a2);
    v7 = *result;
    v8 = *(result + 8);
    if (*result != v8)
    {
      do
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v11 = *v7;
        v17 = 5;
        strcpy(__p, "index");
        v12 = sub_63FDC(v11, __p);
        v13 = v12;
        if (v17 < 0)
        {
          operator delete(__p[0]);
          v14 = *a3;
          v15 = (a3[1] - *a3) >> 4;
          if (v13 >= v15)
          {
LABEL_11:
            if (v13 + 1 > v15)
            {
              sub_FD6BFC(a3, v13 + 1 - v15);
            }

            else if (v13 + 1 < v15)
            {
              a3[1] = v14 + 16 * (v13 + 1);
            }
          }
        }

        else
        {
          v14 = *a3;
          v15 = (a3[1] - *a3) >> 4;
          if (v12 >= v15)
          {
            goto LABEL_11;
          }
        }

        result = sub_F8DD60(v11);
        v9 = (*a3 + 16 * v13);
        *v9 = result;
        v9[1] = v10;
        v7 += 16;
      }

      while (v7 != v8);
    }
  }

  return result;
}

void sub_FD572C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_FD5748(uint64_t *a1, _BYTE *a2, void *a3)
{
  if (*a2 == 1)
  {
    if (a2[1])
    {
      operator new();
    }

    v9 = 19;
    strcpy(__p, "avoid_busy_roads_cf");
    v6 = sub_5F8FC(a3, __p);
    result = sub_3AF23C(a1, v6);
  }

  else
  {
    if (a2[1])
    {
      v9 = 14;
      strcpy(__p, "avoid_hills_cf");
    }

    else
    {
      v9 = 13;
      strcpy(__p, "cost_function");
    }

    v4 = sub_5F8FC(a3, __p);
    result = sub_3AF23C(a1, v4);
  }

  if (v9 < 0)
  {
    v7 = result;
    operator delete(*__p);
    return v7;
  }

  return result;
}

void sub_FD58D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD5900(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *a1 = 0;
  *(a1 + 5) = 0;
  operator new();
}

void sub_FD5A28(_Unwind_Exception *exception_object)
{
  v6 = v2;
  v8 = *v6;
  if (*v6)
  {
    v1[12] = v8;
    operator delete(v8);
    v9 = *v5;
    if (!*v5)
    {
LABEL_3:
      v10 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v9 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  v1[9] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_4:
    v11 = *v3;
    if (!*v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  v1[6] = v10;
  operator delete(v10);
  v11 = *v3;
  if (!*v3)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  v1[3] = v11;
  operator delete(v11);
  goto LABEL_6;
}

void sub_FD5AB4()
{
  if (!*v0)
  {
    JUMPOUT(0xFD5A58);
  }

  JUMPOUT(0xFD5A50);
}

void *sub_FD5AC4(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

void *sub_FD5B28(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

double sub_FD5B6C(void *a1)
{
  v9 = 4;
  strcpy(__p, "cost");
  v2 = sub_63D34(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 4;
  strcpy(__p, "time");
  v3 = sub_63D34(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 6;
  strcpy(__p, "length");
  v4 = sub_63D34(a1, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  if (fmin(fmin(v2, v3), v4) >= 0.0)
  {
    return v2;
  }

  else
  {
    return 1.0;
  }
}

void sub_FD5C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD5C98(void *a1, uint64_t *a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v10 = *v7;
        v25 = 9;
        strcpy(__p, "threshold");
        v11 = sub_63D34(v10, __p);
        if (v25 < 0)
        {
          operator delete(__p[0]);
          v12 = sub_FD5B6C(v10);
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
LABEL_11:
            v17 = *a3;
            v18 = v15 - *a3;
            v19 = v18 >> 5;
            v20 = (v18 >> 5) + 1;
            if (v20 >> 59)
            {
              sub_1794();
            }

            v21 = v16 - v17;
            if (v21 >> 4 > v20)
            {
              v20 = v21 >> 4;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFE0)
            {
              v22 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              if (!(v22 >> 59))
              {
                operator new();
              }

              sub_1808();
            }

            v23 = 32 * v19;
            *v23 = v11;
            *(v23 + 8) = v12;
            *(v23 + 16) = v13;
            *(v23 + 24) = v14;
            v9 = 32 * v19 + 32;
            memcpy(0, v17, v18);
            *a3 = 0;
            a3[1] = v9;
            a3[2] = 0;
            if (v17)
            {
              operator delete(v17);
            }

            goto LABEL_5;
          }
        }

        else
        {
          v12 = sub_FD5B6C(v10);
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
            goto LABEL_11;
          }
        }

        *v15 = v11;
        *(v15 + 8) = v12;
        v9 = v15 + 32;
        *(v15 + 16) = v13;
        *(v15 + 24) = v14;
LABEL_5:
        a3[1] = v9;
        v7 += 16;
      }

      while (v7 != v8);
    }
  }
}

void sub_FD5E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD5EAC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      memset_pattern16(*(a1 + 8), &unk_22AEAE0, v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + a2;
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = (8 * ((v4 - *a1) >> 3));
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    memset_pattern16(v10, &unk_22AEAE0, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_FD6064(void *a1, uint64_t *a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v10 = *v7;
        v26 = 9;
        strcpy(__p, "threshold");
        v11 = sub_353010(v10, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
          v12 = sub_FD5B6C(v10);
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
LABEL_11:
            v17 = *a3;
            v18 = v15 - *a3;
            v19 = v18 >> 5;
            v20 = (v18 >> 5) + 1;
            if (v20 >> 59)
            {
              sub_1794();
            }

            v21 = v16 - v17;
            if (v21 >> 4 > v20)
            {
              v20 = v21 >> 4;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFE0)
            {
              v22 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              if (!(v22 >> 59))
              {
                operator new();
              }

              sub_1808();
            }

            v23 = 32 * v19;
            *v23 = v11;
            *(v23 + 8) = v12;
            *(v23 + 16) = v13;
            *(v23 + 24) = v14;
            v9 = 32 * v19 + 32;
            v24 = (v23 - 32 * (v18 >> 5));
            memcpy(v24, v17, v18);
            *a3 = v24;
            a3[1] = v9;
            a3[2] = 0;
            if (v17)
            {
              operator delete(v17);
            }

            goto LABEL_5;
          }
        }

        else
        {
          v12 = sub_FD5B6C(v10);
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
            goto LABEL_11;
          }
        }

        *v15 = v11;
        *(v15 + 8) = v12;
        *(v15 + 16) = v13;
        v9 = v15 + 32;
        *(v15 + 24) = v14;
LABEL_5:
        a3[1] = v9;
        v7 += 16;
      }

      while (v7 != v8);
    }
  }
}

void sub_FD6264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD6280(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v24 = 9;
        strcpy(__p, "threshold");
        v10 = sub_63D34(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          v11 = sub_F8DD60(v9);
          v14 = a3[1];
          v13 = a3[2];
          if (v14 < v13)
          {
            goto LABEL_4;
          }

LABEL_10:
          v15 = *a3;
          v16 = 0xAAAAAAAAAAAAAAABLL * (&v14[-*a3] >> 3);
          v17 = v16 + 1;
          if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v15) >> 3);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x555555555555555)
          {
            v19 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (v19 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v20 = (8 * (&v14[-*a3] >> 3));
          *v20 = v10;
          *(v20 + 1) = v11;
          *(v20 + 2) = v12;
          v21 = 24 * v16 + 24;
          v22 = 24 * v16 - (v14 - v15);
          memcpy(v20 - (v14 - v15), v15, v14 - v15);
          *a3 = v22;
          a3[1] = v21;
          a3[2] = 0;
          if (v15)
          {
            operator delete(v15);
          }

          a3[1] = v21;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v11 = sub_F8DD60(v9);
          v14 = a3[1];
          v13 = a3[2];
          if (v14 >= v13)
          {
            goto LABEL_10;
          }

LABEL_4:
          *v14 = v10;
          *(v14 + 1) = v11;
          *(v14 + 2) = v12;
          a3[1] = (v14 + 24);
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_FD649C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD64B8(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a5@<X8>)
{
  v10 = *a3;
  v9 = a3[1];
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if (v9 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_5FC3C(a1, a2))
  {
    v11 = sub_5F5AC(a1, a2);
    v12 = a3[1] - *a3;
    if (v12)
    {
      v13 = v11;
      v14 = 0;
      v15 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
      do
      {
        v16 = *a3;
        if (sub_5FC3C(v13, (*a3 + v14)))
        {
          v17 = sub_5F5AC(v13, (v16 + v14));
          *v14 = sub_FD5B6C(v17);
          *(v14 + 8) = v18;
          *(v14 + 16) = v19;
        }

        v14 += 24;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_FD6618(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD663C(void *a1, uint64_t *a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v24 = 9;
        strcpy(__p, "threshold");
        v10 = sub_353010(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          v11 = sub_F8DD60(v9);
          v14 = a3[1];
          v13 = a3[2];
          if (v14 < v13)
          {
            goto LABEL_4;
          }

LABEL_10:
          v15 = *a3;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
          v17 = v16 + 1;
          if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v15) >> 3);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x555555555555555)
          {
            v19 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (v19 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v20 = 8 * ((v14 - *a3) >> 3);
          *v20 = v10;
          *(v20 + 8) = v11;
          *(v20 + 16) = v12;
          v21 = 24 * v16 + 24;
          v22 = (v20 - (v14 - v15));
          memcpy(v22, v15, v14 - v15);
          *a3 = v22;
          a3[1] = v21;
          a3[2] = 0;
          if (v15)
          {
            operator delete(v15);
          }

          a3[1] = v21;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v11 = sub_F8DD60(v9);
          v14 = a3[1];
          v13 = a3[2];
          if (v14 >= v13)
          {
            goto LABEL_10;
          }

LABEL_4:
          *v14 = v10;
          *(v14 + 8) = v11;
          *(v14 + 16) = v12;
          a3[1] = v14 + 24;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}