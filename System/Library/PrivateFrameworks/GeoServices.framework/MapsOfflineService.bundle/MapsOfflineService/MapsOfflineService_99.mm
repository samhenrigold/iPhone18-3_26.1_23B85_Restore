void sub_644E44(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v38 = *a1;
    v39[0] = 0;
    v40 = -1;
    v9 = *(a1 + 12);
    if (v9 != -1)
    {
      v94[0] = v39;
      (off_266BE50[v9])(v94, a1 + 1);
      v40 = v9;
    }

    v10 = 0;
    v41 = *(a1 + 7);
    *v42 = a1[4];
    v43 = *(a1 + 10);
    *(a1 + 72) = 0u;
    *(a1 + 8) = 0;
    v44 = *(a1 + 88);
    *__p = a1[6];
    v46 = *(a1 + 14);
    *(a1 + 14) = 0;
    a1[6] = 0u;
    v47 = *(a1 + 120);
    v48 = *(a1 + 32);
    v49 = *(a1 + 136);
    v50 = *(a1 + 19);
    *(a1 + 136) = 0u;
    *(a1 + 19) = 0;
    v51 = a1[10];
    v11 = *(a1 + 22);
    a1[10] = 0u;
    *(a1 + 22) = 0;
    v53 = *(a1 + 184);
    v12 = *(a1 + 25);
    v52 = v11;
    v54 = v12;
    *(a1 + 184) = 0u;
    *(a1 + 25) = 0;
    v55 = a1[13];
    a1[13] = 0u;
    v13 = *(a1 + 28);
    v14 = *(a1 + 29);
    *(a1 + 28) = 0;
    *(a1 + 29) = 0;
    v56 = v13;
    v57 = v14;
    v59 = *(a1 + 122);
    v58 = *(a1 + 60);
    v15 = *(a1 + 248);
    v61 = *(a1 + 33);
    v60 = v15;
    *(a1 + 33) = 0;
    *(a1 + 248) = 0u;
    v62 = a1[17];
    a1[17] = 0u;
    v16 = *(a1 + 37);
    v63 = *(a1 + 36);
    v64 = v16;
    *(a1 + 36) = 0;
    *(a1 + 37) = 0;
    v17 = a1[20];
    v65 = a1[19];
    v66 = v17;
    a1[19] = 0u;
    a1[20] = 0u;
    v18 = *(a1 + 43);
    v67 = *(a1 + 42);
    v68 = v18;
    *(a1 + 42) = 0;
    *(a1 + 43) = 0;
    v19 = a1[23];
    v69 = a1[22];
    v70 = v19;
    a1[22] = 0u;
    a1[23] = 0u;
    v20 = *(a1 + 48);
    v21 = *(a1 + 49);
    *(a1 + 48) = 0;
    *(a1 + 49) = 0;
    v71 = v20;
    v72 = v21;
    LODWORD(v20) = *(a1 + 100);
    v74 = *(a1 + 202);
    v73 = v20;
    v75 = *(a1 + 408);
    v76 = *(a1 + 53);
    *(a1 + 53) = 0;
    *(a1 + 408) = 0u;
    v77 = a1[27];
    a1[27] = 0u;
    v22 = *(a1 + 57);
    v78 = *(a1 + 56);
    v79 = v22;
    *(a1 + 56) = 0;
    *(a1 + 57) = 0;
    v23 = a1[30];
    v80 = a1[29];
    v81 = v23;
    a1[29] = 0u;
    a1[30] = 0u;
    v24 = *(a1 + 63);
    v82 = *(a1 + 62);
    v83 = v24;
    *(a1 + 62) = 0;
    *(a1 + 63) = 0;
    v25 = a1[33];
    v84 = a1[32];
    v85 = v25;
    v86 = *(a1 + 68);
    a1[32] = 0u;
    a1[33] = 0u;
    *(a1 + 68) = 0;
    v26 = *(a1 + 69);
    *(a1 + 69) = 0;
    v87 = v26;
    LODWORD(v26) = *(a1 + 140);
    v89 = *(a1 + 282);
    v88 = v26;
    v90 = *(a1 + 568);
    v91 = *(a1 + 73);
    *(a1 + 73) = 0;
    *(a1 + 568) = 0u;
    v27 = a1[37];
    v93 = *(a1 + 76);
    v92 = v27;
    *(a1 + 76) = 0;
    v28 = v4 >> 1;
    v29 = a1;
    a1[37] = 0u;
    do
    {
      while (1)
      {
        v36 = v29 + 616 * v10;
        v35 = v36 + 616;
        if (2 * v10 + 2 < a4)
        {
          break;
        }

        v10 = (2 * v10) | 1;
        sub_63A54C(v29, v36 + 616);
        v29 = v35;
        if (v10 > v28)
        {
          goto LABEL_13;
        }
      }

      v30 = *(v36 + 624);
      v31 = *(v36 + 1240);
      v32 = v30 == v31;
      v33 = v30 < v31;
      if (v32)
      {
        v33 = *(v36 + 744) > *(v36 + 1360);
      }

      v34 = v36 + 1232;
      if (v33)
      {
        v35 = v34;
        v10 = 2 * v10 + 2;
      }

      else
      {
        v10 = (2 * v10) | 1;
      }

      sub_63A54C(v29, v35);
      v29 = v35;
    }

    while (v10 <= v28);
LABEL_13:
    if (v35 == a2 - 616)
    {
      sub_63A54C(v35, &v38);
    }

    else
    {
      sub_63A54C(v35, a2 - 616);
      sub_63A54C(a2 - 616, &v38);
      sub_645264(a1, v35 + 616, a3, 0x4FCACE213F2B3885 * ((v35 + 616 - a1) >> 3));
    }

    sub_53A868(&v79);
    sub_53A868(&v64);
    sub_53A868(&v49);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
LABEL_18:
        v37 = v40;
        if (v40 == -1)
        {
          return;
        }

LABEL_22:
        (off_266BE00[v37])(v94, v39);
        return;
      }
    }

    else if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v42[0]);
    v37 = v40;
    if (v40 == -1)
    {
      return;
    }

    goto LABEL_22;
  }
}

void sub_645264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 616 * (v4 >> 1);
    v8 = *(v7 + 8);
    v9 = *(a2 - 608);
    v10 = (a2 - 488);
    v11 = *(a2 - 488);
    v12 = v8 == v9;
    v13 = v8 < v9;
    if (v12)
    {
      v13 = *(v7 + 128) > v11;
    }

    if (v13)
    {
      v14 = a2 - 616;
      v51 = *(a2 - 616);
      v52[0] = 0;
      v53 = -1;
      v15 = *(a2 - 568);
      if (v15 != -1)
      {
        v16 = a2 - 616;
        v17 = a2;
        v107 = v52;
        (off_266BE50[v15])(&v107, a2 - 600, a3);
        v53 = v15;
        v11 = *v10;
        a2 = v17;
        v14 = v16;
      }

      v54 = *(a2 - 560);
      v18 = a2 - 552;
      *v55 = *(a2 - 552);
      v56 = *(a2 - 536);
      *(v18 + 8) = 0u;
      *v18 = 0;
      v57 = *(a2 - 528);
      v19 = a2 - 520;
      *__p = *(a2 - 520);
      v59 = *(a2 - 504);
      *(v19 + 16) = 0;
      *v19 = 0u;
      v60 = *(a2 - 496);
      v61 = v11;
      v20 = (a2 - 480);
      v62 = *(a2 - 480);
      v63 = *(a2 - 464);
      *(a2 - 472) = 0;
      *v20 = 0;
      v20[2] = 0;
      v21 = (a2 - 456);
      v64 = *(a2 - 456);
      v22 = *(a2 - 440);
      *(a2 - 448) = 0;
      *v21 = 0;
      v21[2] = 0;
      v23 = (a2 - 432);
      v66 = *(a2 - 432);
      v24 = *(a2 - 416);
      v65 = v22;
      v67 = v24;
      *(a2 - 424) = 0;
      *v23 = 0;
      v23[2] = 0;
      v25 = (a2 - 408);
      v68 = *(a2 - 408);
      v26 = *(a2 - 392);
      *(a2 - 400) = 0;
      *v25 = 0;
      v25[2] = 0;
      v27 = *(a2 - 384);
      *(a2 - 384) = 0;
      v69 = v26;
      v70 = v27;
      LODWORD(v26) = *(a2 - 376);
      v72 = *(a2 - 372);
      v71 = v26;
      v28 = (a2 - 368);
      v29 = *(a2 - 368);
      v74 = *(a2 - 352);
      v73 = v29;
      *(a2 - 360) = 0;
      *v28 = 0;
      v28[2] = 0;
      v30 = (a2 - 344);
      v31 = *(a2 - 328);
      v75 = *(a2 - 344);
      *(a2 - 336) = 0;
      *v30 = 0;
      v30[2] = 0;
      v32 = (a2 - 320);
      v77 = *(a2 - 320);
      v33 = *(a2 - 304);
      v76 = v31;
      v78 = v33;
      *(a2 - 312) = 0;
      *v32 = 0;
      v32[2] = 0;
      v34 = (a2 - 296);
      v79 = *(a2 - 296);
      v35 = *(a2 - 280);
      *(a2 - 288) = 0;
      *v34 = 0;
      v34[2] = 0;
      v81 = *(a2 - 272);
      v36 = *(a2 - 256);
      v80 = v35;
      v82 = v36;
      *(a2 - 264) = 0;
      *(a2 - 272) = 0;
      v83 = *(a2 - 248);
      *(a2 - 256) = 0;
      *(a2 - 248) = 0;
      v37 = *(a2 - 232);
      v38 = *(a2 - 224);
      *(a2 - 240) = 0;
      *(a2 - 232) = 0;
      *(a2 - 224) = 0;
      v84 = v37;
      v85 = v38;
      LODWORD(v37) = *(a2 - 216);
      v87 = *(a2 - 212);
      v86 = v37;
      v39 = *(a2 - 192);
      v88 = *(a2 - 208);
      v89 = v39;
      *(a2 - 208) = 0;
      *(a2 - 200) = 0;
      v40 = *(a2 - 168);
      v90 = *(a2 - 184);
      *(a2 - 192) = 0;
      *(a2 - 184) = 0;
      *(a2 - 176) = 0;
      *(a2 - 168) = 0;
      v92 = *(a2 - 160);
      v41 = *(a2 - 144);
      v91 = v40;
      v93 = v41;
      *(a2 - 160) = 0;
      *(a2 - 152) = 0;
      v94 = *(a2 - 136);
      v42 = *(a2 - 120);
      *(a2 - 144) = 0;
      *(a2 - 136) = 0;
      *(a2 - 128) = 0;
      *(a2 - 120) = 0;
      v96 = *(a2 - 112);
      v43 = *(a2 - 96);
      v95 = v42;
      v97 = v43;
      *(a2 - 112) = 0;
      *(a2 - 104) = 0;
      v98 = *(a2 - 88);
      v44 = *(a2 - 64);
      v99 = *(a2 - 72);
      *(a2 - 96) = 0;
      *(a2 - 88) = 0;
      *(a2 - 80) = 0;
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      v100 = v44;
      LODWORD(v42) = *(a2 - 56);
      v102 = *(a2 - 52);
      v101 = v42;
      v45 = *(a2 - 32);
      v103 = *(a2 - 48);
      v104 = v45;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      v46 = *(a2 - 24);
      v106 = *(a2 - 8);
      v105 = v46;
      *(a2 - 32) = 0;
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v47 = v7;
        sub_63A54C(v14, v7);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 616 * v6;
        v48 = *(v7 + 8);
        v12 = v48 == *(&v51 + 1);
        v49 = v48 < *(&v51 + 1);
        if (v12)
        {
          v49 = *(v7 + 128) > v61;
        }

        v14 = v47;
      }

      while (v49);
      sub_63A54C(v47, &v51);
      sub_53A868(&v92);
      sub_53A868(&v77);
      sub_53A868(&v62);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v56) & 0x80000000) == 0)
        {
LABEL_14:
          v50 = v53;
          if (v53 == -1)
          {
            return;
          }

LABEL_18:
          (off_266BE00[v50])(&v107, v52);
          return;
        }
      }

      else if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      operator delete(v55[0]);
      v50 = v53;
      if (v53 == -1)
      {
        return;
      }

      goto LABEL_18;
    }
  }
}

void sub_645710(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X4>)
{
  v14 = sub_4D1F50(a3, a4);
  sub_637E90((((*(v14 + 36) & 0x20000000) << 19) | (*(v14 + 36) << 32) | *(v14 + 32)) ^ 0x1000000000000, *(a1 + 16), v54);
  if (a2 == 15)
  {
    sub_734CE0(v44);
  }

  else
  {
    sub_63805C(v14, v44, a1, a7);
  }

  v15 = sub_734C10(v54);
  v16 = sub_734C10(v44);
  sub_63977C(a2, a3, a4, v15, v16, &__p);
  sub_63E914(a5, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    sub_64B998(a6);
    goto LABEL_57;
  }

  v18 = sub_9274F4(*(a1 + 17), &__p);
  if (*(v18 + 23) < 0)
  {
    sub_325C(&v42, *v18, v18[1]);
  }

  else
  {
    v19 = *v18;
    v42.__r_.__value_.__r.__words[2] = v18[2];
    *&v42.__r_.__value_.__l.__data_ = v19;
  }

  if (sub_734C10(v54))
  {
    switch(a2)
    {
      case 0xF:
        v41 = 0x700000000000000;
        v21 = "{Ferry}";
        break;
      case 0x15:
        v41 = 0x600000000000000;
        *__c = *"{Road}";
        v20 = 6;
        goto LABEL_20;
      case 0x14:
        *__c = *"{Elevator}";
        v41 = 0xA00000000000000;
        v20 = 10;
        goto LABEL_20;
      default:
        v41 = 0x700000000000000;
        v21 = "{Road1}";
        break;
    }

    *__c = *v21;
    v20 = 7;
LABEL_20:
    v22 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v42;
    }

    else
    {
      v23 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v42.__r_.__value_.__l.__size_;
    }

    if (v22 >= v20)
    {
      v30 = v23 + v22;
      v31 = SLOBYTE(__c[0]);
      v32 = v23;
      do
      {
        v33 = v22 - v20;
        if (v33 == -1)
        {
          break;
        }

        v34 = memchr(v32, v31, v33 + 1);
        if (!v34)
        {
          break;
        }

        v35 = v34;
        if (!memcmp(v34, __c, v20))
        {
          if (v35 != v30 && v35 - v23 != -1)
          {
            v38 = (v55 & 0x80u) == 0 ? v54 : v54[0];
            v39 = (v55 & 0x80u) == 0 ? v55 : v54[1];
            std::string::replace(&v42, v35 - v23, v20, v38, v39);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(*__c);
            }
          }

          break;
        }

        v32 = (v35 + 1);
        v22 = v30 - (v35 + 1);
      }

      while (v22 >= v20);
    }
  }

  if (sub_734C10(v44))
  {
    v24 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v42;
    }

    else
    {
      v25 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v42.__r_.__value_.__l.__size_;
    }

    if (v24 >= 7)
    {
      v26 = v25 + v24;
      v27 = v25;
      do
      {
        v28 = memchr(v27, 123, v24 - 6);
        if (!v28)
        {
          break;
        }

        if (*v28 == 1634685563 && *(v28 + 3) == 2100454497)
        {
          if (v28 != v26 && v28 - v25 != -1)
          {
            if ((v45 & 0x80u) == 0)
            {
              v36 = v44;
            }

            else
            {
              v36 = v44[0];
            }

            if ((v45 & 0x80u) == 0)
            {
              v37 = v45;
            }

            else
            {
              v37 = v44[1];
            }

            std::string::replace(&v42, v28 - v25, 7uLL, v36, v37);
          }

          break;
        }

        v27 = (v28 + 1);
        v24 = v26 - v27;
      }

      while (v26 - v27 >= 7);
    }
  }

  sub_64BC50(a6, &v42, (*(a1 + 15) + 1177));
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_57:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_70;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_71;
  }

LABEL_70:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v53 & 0x80000000) == 0)
  {
LABEL_59:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_72;
  }

LABEL_71:
  operator delete(v52);
  if ((v51 & 0x80000000) == 0)
  {
LABEL_60:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v50);
  if ((v49 & 0x80000000) == 0)
  {
LABEL_61:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v48);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v46);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_63:
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v44[0]);
  if ((v63 & 0x80000000) == 0)
  {
LABEL_64:
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v62);
  if ((v61 & 0x80000000) == 0)
  {
LABEL_65:
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_78;
  }

LABEL_77:
  operator delete(v60);
  if ((v59 & 0x80000000) == 0)
  {
LABEL_66:
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_79;
  }

LABEL_78:
  operator delete(v58);
  if ((v57 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v55 & 0x80000000) == 0)
    {
      return;
    }

LABEL_80:
    operator delete(v54[0]);
    return;
  }

LABEL_79:
  operator delete(v56);
  if (v55 < 0)
  {
    goto LABEL_80;
  }
}

void sub_645BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
LABEL_8:
        sub_3E5388(&a28);
        sub_3E5388(&a47);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a22);
      sub_3E5388(&a28);
      sub_3E5388(&a47);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_645C60(uint64_t result, uint64_t a2)
{
  if (*(*result + 1) == 1 && **result == 21)
  {
    operator new();
  }

  return result;
}

void sub_645D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_645D6C(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_4D1F50(a4, a5);
  sub_637E90((((*(v12 + 36) & 0x20000000) << 19) | (*(v12 + 36) << 32) | *(v12 + 32)) ^ 0x1000000000000, *(a2 + 16), v52);
  if (a3 == 15)
  {
    sub_734CE0(v42);
  }

  else
  {
    sub_63805C(v12, v42, a2, a6);
  }

  v13 = sub_734C10(v52);
  v14 = sub_734C10(v42);
  sub_63977C(a3, a4, a5, v13, v14, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    sub_64B998(a1);
    goto LABEL_57;
  }

  v16 = sub_9274F4(*(a2 + 17), &__p);
  if (*(v16 + 23) < 0)
  {
    sub_325C(&v40, *v16, v16[1]);
  }

  else
  {
    v17 = *v16;
    v40.__r_.__value_.__r.__words[2] = v16[2];
    *&v40.__r_.__value_.__l.__data_ = v17;
  }

  if (sub_734C10(v52))
  {
    switch(a3)
    {
      case 0xF:
        v39 = 0x700000000000000;
        v19 = "{Ferry}";
        break;
      case 0x15:
        v39 = 0x600000000000000;
        *__c = *"{Road}";
        v18 = 6;
        goto LABEL_20;
      case 0x14:
        *__c = *"{Elevator}";
        v39 = 0xA00000000000000;
        v18 = 10;
        goto LABEL_20;
      default:
        v39 = 0x700000000000000;
        v19 = "{Road1}";
        break;
    }

    *__c = *v19;
    v18 = 7;
LABEL_20:
    v20 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v40;
    }

    else
    {
      v21 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v40.__r_.__value_.__l.__size_;
    }

    if (v20 >= v18)
    {
      v28 = v21 + v20;
      v29 = SLOBYTE(__c[0]);
      v30 = v21;
      do
      {
        v31 = v20 - v18;
        if (v31 == -1)
        {
          break;
        }

        v32 = memchr(v30, v29, v31 + 1);
        if (!v32)
        {
          break;
        }

        v33 = v32;
        if (!memcmp(v32, __c, v18))
        {
          if (v33 != v28 && v33 - v21 != -1)
          {
            v36 = (v53 & 0x80u) == 0 ? v52 : v52[0];
            v37 = (v53 & 0x80u) == 0 ? v53 : v52[1];
            std::string::replace(&v40, v33 - v21, v18, v36, v37);
            if (SHIBYTE(v39) < 0)
            {
              operator delete(*__c);
            }
          }

          break;
        }

        v30 = (v33 + 1);
        v20 = v28 - (v33 + 1);
      }

      while (v20 >= v18);
    }
  }

  if (sub_734C10(v42))
  {
    v22 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v40;
    }

    else
    {
      v23 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v40.__r_.__value_.__l.__size_;
    }

    if (v22 >= 7)
    {
      v24 = v23 + v22;
      v25 = v23;
      do
      {
        v26 = memchr(v25, 123, v22 - 6);
        if (!v26)
        {
          break;
        }

        if (*v26 == 1634685563 && *(v26 + 3) == 2100454497)
        {
          if (v26 != v24 && v26 - v23 != -1)
          {
            if ((v43 & 0x80u) == 0)
            {
              v34 = v42;
            }

            else
            {
              v34 = v42[0];
            }

            if ((v43 & 0x80u) == 0)
            {
              v35 = v43;
            }

            else
            {
              v35 = v42[1];
            }

            std::string::replace(&v40, v26 - v23, 7uLL, v34, v35);
          }

          break;
        }

        v25 = (v26 + 1);
        v22 = v24 - v25;
      }

      while (v24 - v25 >= 7);
    }
  }

  sub_64BC50(a1, &v40, (*(a2 + 15) + 1177));
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_57:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_70;
  }

  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_71;
  }

LABEL_70:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v51 & 0x80000000) == 0)
  {
LABEL_59:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_72;
  }

LABEL_71:
  operator delete(v50);
  if ((v49 & 0x80000000) == 0)
  {
LABEL_60:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v48);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_61:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v46);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v44);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_63:
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v42[0]);
  if ((v61 & 0x80000000) == 0)
  {
LABEL_64:
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v60);
  if ((v59 & 0x80000000) == 0)
  {
LABEL_65:
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_78;
  }

LABEL_77:
  operator delete(v58);
  if ((v57 & 0x80000000) == 0)
  {
LABEL_66:
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_79;
  }

LABEL_78:
  operator delete(v56);
  if ((v55 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v53 & 0x80000000) == 0)
    {
      return;
    }

LABEL_80:
    operator delete(v52[0]);
    return;
  }

LABEL_79:
  operator delete(v54);
  if (v53 < 0)
  {
    goto LABEL_80;
  }
}

void sub_6461F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
LABEL_8:
        sub_3E5388(&a28);
        sub_3E5388(v28 - 216);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a22);
      sub_3E5388(&a28);
      sub_3E5388(v28 - 216);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_6462A4(double **a1, uint64_t a2)
{
  if (*(*a1 + 7) == 1)
  {
    sub_64B9C4(__p, (*(*a1 + 15) + 1177));
    sub_53D784(a2 + 320, __p);
    sub_53A868(__p);
    operator new();
  }
}

void sub_64650C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_649604(_Unwind_Exception *a1)
{
  if (qword_279C650)
  {
    qword_279C658 = qword_279C650;
    operator delete(qword_279C650);
  }

  _Unwind_Resume(a1);
}

void sub_64989C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_279C690 = 0u;
  unk_279C6A0 = 0u;
  dword_279C6B0 = 1065353216;
  sub_3A9A34(&xmmword_279C690, v0, v0);
  sub_3A9A34(&xmmword_279C690, v3, v3);
  sub_3A9A34(&xmmword_279C690, __p, __p);
  sub_3A9A34(&xmmword_279C690, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_649A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_279C690);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_649AE4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 80));
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = *(v1 + 32);
        if (v2 == -1)
        {
LABEL_9:
          *(v1 + 32) = -1;
          operator delete();
        }

LABEL_8:
        (off_266BEA0[v2])(&v3, v1);
        goto LABEL_9;
      }
    }

    else if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v1 + 48));
    v2 = *(v1 + 32);
    if (v2 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return a1;
}

double sub_649B9C(uint64_t a1, __int128 *a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    v5 = a1;
    sub_325C(a1, *a2, *(a2 + 1));
    a1 = v5;
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = -1;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x7FFFFFFF;
  return result;
}

void sub_649C24(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 9;
  *(a1 + 28) = -1;
  operator new();
}

uint64_t sub_649CFC(uint64_t a1, __int128 *a2, char a3, _DWORD *a4, uint64_t a5, char a6)
{
  v12 = a6;
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v10;
  }

  *(a1 + 40) = 0u;
  *(a1 + 24) = a3;
  *(a1 + 28) = -1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x7FFFFFFF;
  *(a1 + 72) = sub_6504E4((a1 + 64), a4, a5, &v12);
  return a1;
}

void sub_649DD0(_Unwind_Exception *a1)
{
  sub_649E40((v1 + 128));
  sub_55CCC0((v1 + 120));
  sub_55CD38((v1 + 112));
  sub_55CD90(v4);
  v6 = *(v1 + 88);
  *(v1 + 88) = 0;
  if (v6)
  {
    sub_55CE04(v2 + 48, v6);
  }

  sub_3108E8((v2 + 24));
  sub_649AE4(v3);
  sub_55CFB4((v2 + 8));
  sub_55D00C(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void ***sub_649E40(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      v3 = v1[1];
      v4 = *v1;
      if (v3 != v2)
      {
        do
        {
          v3 = sub_6081F0(v3 - 168);
        }

        while (v3 != v2);
        v4 = *v1;
      }

      v1[1] = v2;
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_649EC8(uint64_t a1, __int128 *a2, char a3, void *a4, __int128 *a5, char a6)
{
  v18 = a6;
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v10;
  }

  *(a1 + 40) = 0u;
  *(a1 + 24) = a3;
  *(a1 + 28) = -1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x7FFFFFFF;
  sub_311270((a1 + 64), (a4[1] - *a4) >> 2);
  v11 = *a4;
  v12 = a4[1];
  if (*a4 != v12)
  {
    v13 = *(a1 + 72);
    do
    {
      while (v13 >= *(a1 + 80))
      {
        v13 = sub_6504E4((a1 + 64), v11, a5, &v18);
        *(a1 + 72) = v13;
        if (++v11 == v12)
        {
          return a1;
        }
      }

      v14 = v18;
      *v13 = *v11;
      v15 = (v13 + 8);
      if (*(a5 + 23) < 0)
      {
        sub_325C(v15, *a5, *(a5 + 1));
      }

      else
      {
        v16 = *a5;
        *(v13 + 24) = *(a5 + 2);
        *v15 = v16;
      }

      *(v13 + 32) = v14;
      v13 += 40;
      *(a1 + 72) = v13;
      *(a1 + 72) = v13;
      ++v11;
    }

    while (v11 != v12);
  }

  return a1;
}

void sub_64A048(_Unwind_Exception *a1)
{
  sub_649E40((v2 + 88));
  sub_55CCC0(v5);
  sub_55CD38((v2 + 72));
  sub_55CD90(v4);
  v7 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v7)
  {
    sub_55CE04(v2 + 48, v7);
  }

  sub_3108E8((v2 + 24));
  sub_649AE4(v3);
  sub_55CFB4((v2 + 8));
  sub_55D00C(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_64A0C8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 40) = 0u;
  *(a1 + 24) = 10;
  *(a1 + 28) = -1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 100) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x7FFFFFFF;
  operator new();
}

double sub_64A2CC(uint64_t a1, __int128 *a2, char a3, _DWORD *a4)
{
  if (*(a2 + 23) < 0)
  {
    v7 = a1;
    sub_325C(a1, *a2, *(a2 + 1));
    a1 = v7;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = -1;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a4;
  *(a1 + 100) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 0x7FFFFFFF;
  return result;
}

void sub_64A368(uint64_t a1, __int128 *a2, unsigned int a3, __int128 *a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
  }

  *(a1 + 40) = 0u;
  *(a1 + 24) = 10;
  *(a1 + 56) = 0u;
  *(a1 + 28) = -1;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x7FFFFFFF;
  if (*(a4 + 23) < 0)
  {
    sub_325C(&v9, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    v10 = *(a4 + 2);
  }

  v11 = a3 | 0xFFFFFF00000000;
  if (SHIBYTE(v10) < 0)
  {
    sub_325C(&v12, v9, *(&v9 + 1));
  }

  else
  {
    v12 = v9;
    v13 = v10;
  }

  v14 = 1;
  memset(v15, 255, sizeof(v15));
  v21 = 0;
  v22 = 0;
  __p = 0;
  v23 = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  v19 = 0;
  sub_64A67C((a1 + 56), &v11);
}

void sub_64A7E4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 7;
  *(a1 + 28) = -1;
  *(a1 + 40) = 0;
  operator new();
}

void sub_64A8E0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 13;
  *(a1 + 28) = -1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 1;
  operator new();
}

void sub_64A9E4(void *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_64AA10(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 14;
  *(a1 + 28) = -1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 1;
  *(a1 + 104) = 0;
  operator new();
}

uint64_t sub_64AB44(uint64_t a1, void *a2, __int128 **a3, __int128 *a4, __int128 *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (((v8 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_55C8F0((a1 + 24), a3);
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v9;
  }

  if (*(a5 + 23) < 0)
  {
    sub_325C((a1 + 72), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 88) = *(a5 + 2);
    *(a1 + 72) = v10;
  }

  return a1;
}

void sub_64AC48(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  sub_4B98C4((v1 + 24));
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_64AC90(uint64_t result, __int128 *a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    v5 = result;
    sub_325C(result, *a2, *(a2 + 1));
    result = v5;
    *(v5 + 24) = a3;
  }

  else
  {
    v4 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v4;
    *(result + 24) = a3;
  }

  return result;
}

BOOL sub_64ACF0(uint64_t a1, uint64_t a2)
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
    while (*v3 == *v4)
    {
      ++v3;
      ++v4;
      if (v3 == v2)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  v5 = *(a1 + 71);
  if (v5 >= 0)
  {
    v6 = *(a1 + 71);
  }

  else
  {
    v6 = *(a1 + 56);
  }

  v7 = *(a2 + 71);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 56);
  }

  if (v6 != v7)
  {
    return 0;
  }

  v10 = v5 >= 0 ? (a1 + 48) : *(a1 + 48);
  v12 = v8 >= 0 ? (a2 + 48) : *(a2 + 48);
  if (memcmp(v10, v12, v6))
  {
    return 0;
  }

  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  v15 = *(a2 + 24);
  if (v13 - v14 != *(a2 + 32) - v15)
  {
    return 0;
  }

  v16 = a1;
  v17 = a2;
  if (v14 != v13)
  {
    v18 = 0;
    do
    {
      v19 = v15 + v18;
      v20 = v14 + v18;
      if (*(v14 + v18 + 24) != *(v15 + v18 + 24))
      {
        return 0;
      }

      v21 = *(v20 + 23);
      if (v21 >= 0)
      {
        v22 = *(v20 + 23);
      }

      else
      {
        v22 = *(v20 + 8);
      }

      v23 = *(v19 + 23);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(v19 + 8);
      }

      if (v22 != v23)
      {
        return 0;
      }

      v25 = v21 >= 0 ? (v14 + v18) : *v20;
      v26 = v24 >= 0 ? (v15 + v18) : *v19;
      if (memcmp(v25, v26, v22))
      {
        return 0;
      }

      v18 += 32;
      v17 = a2;
      v16 = a1;
    }

    while (v14 + v18 != v13);
  }

  v27 = *(v16 + 95);
  if (v27 >= 0)
  {
    v28 = *(v16 + 95);
  }

  else
  {
    v28 = *(v16 + 80);
  }

  v29 = *(v17 + 95);
  v30 = v29;
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(v17 + 80);
  }

  if (v28 != v29)
  {
    return 0;
  }

  v33 = *(v16 + 72);
  v31 = (v16 + 72);
  v32 = v33;
  if (v27 >= 0)
  {
    v34 = v31;
  }

  else
  {
    v34 = v32;
  }

  v37 = *(v17 + 72);
  v35 = (v17 + 72);
  v36 = v37;
  if (v30 >= 0)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  return memcmp(v34, v38, v28) == 0;
}

uint64_t sub_64AEF4(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *(a3 + 8);
  if (v3 != *a3)
  {
    if (((v3 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = *(a3 + 32);
  return a1;
}

void sub_64AF98(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_64AFB4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  for (; v3 != v2; v4 += 24)
  {
    v7 = *(v3 + 23);
    if (v7 >= 0)
    {
      v8 = *(v3 + 23);
    }

    else
    {
      v8 = *(v3 + 8);
    }

    v9 = *(v4 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v4 + 8);
    }

    if (v8 != v9)
    {
      return 0;
    }

    v11 = v7 >= 0 ? v3 : *v3;
    v12 = v10 >= 0 ? v4 : *v4;
    if (memcmp(v11, v12, v8))
    {
      return 0;
    }

    v3 += 24;
  }

  v14 = a1[6];
  v13 = a1[7];
  v15 = a2[6];
  if (v13 - v14 != a2[7] - v15)
  {
    return 0;
  }

  for (; v14 != v13; v15 += 24)
  {
    v16 = *(v14 + 23);
    if (v16 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v18 = *(v15 + 23);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(v15 + 8);
    }

    if (v17 != v18)
    {
      return 0;
    }

    v20 = v16 >= 0 ? v14 : *v14;
    v21 = v19 >= 0 ? v15 : *v15;
    if (memcmp(v20, v21, v17))
    {
      return 0;
    }

    v14 += 24;
  }

  v22 = a1[3];
  v23 = a1[4];
  v24 = a2[3];
  if (v23 - v22 != a2[4] - v24)
  {
    return 0;
  }

  if (v22 == v23)
  {
LABEL_37:
    v26 = a1[12];
    v27 = a2[12];
    if ((v26 != 0) == (v27 != 0))
    {
      if (!v26)
      {
        goto LABEL_45;
      }

      result = sub_64AFB4(a1[12], a2[12]);
      if (!result)
      {
        return result;
      }

      if (*(v26 + 160) == *(v27 + 160) && *(v26 + 164) == *(v27 + 164))
      {
LABEL_45:
        v30 = a1 + 9;
        v28 = a1[9];
        v29 = v30[1];
        v32 = a2 + 9;
        v31 = a2[9];
        if (v29 - v28 == v32[1] - v31)
        {
          if (v28 == v29)
          {
            return 1;
          }

          v33 = 0;
          while (1)
          {
            v34 = v31 + v33;
            v35 = *(v28 + v33 + 23);
            if (v35 >= 0)
            {
              v36 = *(v28 + v33 + 23);
            }

            else
            {
              v36 = *(v28 + v33 + 8);
            }

            v37 = *(v34 + 23);
            v38 = v37;
            if ((v37 & 0x80u) != 0)
            {
              v37 = *(v34 + 8);
            }

            if (v36 != v37)
            {
              break;
            }

            v39 = v35 >= 0 ? (v28 + v33) : *(v28 + v33);
            v40 = v38 >= 0 ? (v31 + v33) : *v34;
            if (memcmp(v39, v40, v36) || *(v28 + v33 + 24) != *(v31 + v33 + 24))
            {
              break;
            }

            v33 += 32;
            result = 1;
            if (v28 + v33 == v29)
            {
              return result;
            }
          }
        }
      }
    }

    return 0;
  }

  while (1)
  {
    result = sub_64B25C(v22, v24);
    if (!result)
    {
      return result;
    }

    v22 += 18;
    v24 += 18;
    if (v22 == v23)
    {
      goto LABEL_37;
    }
  }
}

uint64_t sub_64B25C(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v7 = a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  if (*(v6 + 24) != *(v7 + 24))
  {
    return 0;
  }

  v9 = v6;
  v10 = v7;
  if (*(v6 + 7) != *(v7 + 7) || *(v6 + 8) != *(v7 + 8))
  {
    return 0;
  }

  v11 = v6[5];
  v12 = v7[5];
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *(v11 + 23);
    if (v13 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = *(v11 + 8);
    }

    v15 = *(v12 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v12 + 8);
    }

    if (v14 != v15)
    {
      return 0;
    }

    v17 = v13 >= 0 ? v6[5] : *v11;
    v18 = v16 >= 0 ? v7[5] : *v12;
    v19 = memcmp(v17, v18, v14);
    v10 = v7;
    v9 = v6;
    if (v19)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v20 = v9[6];
  v21 = v10[6];
  if (v20)
  {
    if (!v21 || *v20 != *v21)
    {
      return 0;
    }

    v22 = *(v20 + 31);
    if (v22 >= 0)
    {
      v23 = *(v20 + 31);
    }

    else
    {
      v23 = *(v20 + 16);
    }

    v24 = *(v21 + 31);
    v25 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v21 + 16);
    }

    if (v23 != v24)
    {
      return 0;
    }

    v26 = v22 >= 0 ? (v20 + 8) : *(v20 + 8);
    v27 = v25 >= 0 ? (v21 + 8) : *(v21 + 8);
    if (memcmp(v26, v27, v23))
    {
      return 0;
    }

    v10 = v7;
    v9 = v6;
    if (*(v20 + 32) != *(v21 + 32))
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  result = sub_64B514(v9 + 8, v10 + 8);
  if (!result)
  {
    return result;
  }

  v28 = v6[11];
  v29 = v7[11];
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    v30 = sub_64ACF0(v28, v29);
    v31 = v7;
    v32 = v6;
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    v32 = v6;
    v31 = v7;
    if (v29)
    {
      return 0;
    }
  }

  result = sub_64B5F0(v32 + 7, v31 + 7);
  if (!result)
  {
    return result;
  }

  if (*(v6 + 24) != *(v7 + 24) || *(v6 + 100) != *(v7 + 100))
  {
    return 0;
  }

  result = sub_64B664(v6 + 13, v7 + 13);
  if (result)
  {
    result = sub_64B74C(v6 + 14, v7 + 14);
    if (result)
    {
      result = sub_64B7F0(v6 + 15, v7 + 15);
      if (result)
      {
        result = sub_64B8BC(v6 + 16, v7 + 16);
        if (result)
        {
          return *(v6 + 34) == *(v7 + 34);
        }
      }
    }
  }

  return result;
}

uint64_t sub_64B514(uint64_t *a1, uint64_t *a2)
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

    while (*v3 == *v4)
    {
      v5 = *(v3 + 31);
      if (v5 >= 0)
      {
        v6 = *(v3 + 31);
      }

      else
      {
        v6 = *(v3 + 16);
      }

      v7 = *(v4 + 31);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v4 + 16);
      }

      if (v6 != v7)
      {
        break;
      }

      v11 = *(v4 + 8);
      v10 = v4 + 8;
      v9 = v11;
      v14 = *(v3 + 8);
      v13 = v3 + 8;
      v12 = v14;
      v15 = (v5 >= 0 ? v13 : v12);
      v16 = (v8 >= 0 ? v10 : v9);
      if (memcmp(v15, v16, v6) || *(v13 + 24) != *(v10 + 24))
      {
        break;
      }

      v3 = v13 + 32;
      v4 = v10 + 32;
      if (v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_64B5F0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (!v4)
  {
    return *a2 == 0;
  }

  v5 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (sub_55DD5C(v4, v5))
  {
    return 1;
  }

  return !*a1 && *a2 == 0;
}

BOOL sub_64B664(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = *a2 == 0;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = *(v2 + 23);
    }

    else
    {
      v6 = *(v2 + 8);
    }

    v7 = *(v3 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v3 + 8);
    }

    if (v6 != v7)
    {
      return 0;
    }

    v9 = v5 >= 0 ? v2 : *v2;
    v10 = v8 >= 0 ? *a2 : *v3;
    if (memcmp(v9, v10, v6))
    {
      return 0;
    }

    v11 = *(v2 + 47);
    if (v11 >= 0)
    {
      v12 = *(v2 + 47);
    }

    else
    {
      v12 = *(v2 + 32);
    }

    v13 = *(v3 + 47);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v3 + 32);
    }

    if (v12 == v13 && ((v17 = *(v2 + 24), v16 = (v2 + 24), v15 = v17, v11 >= 0) ? (v18 = v16) : (v18 = v15), (v21 = *(v3 + 24), v20 = (v3 + 24), v19 = v21, v14 >= 0) ? (v22 = v20) : (v22 = v19), !memcmp(v18, v22, v12)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_64B74C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = *a2 == 0;
  if (v2)
  {
    if (v3)
    {
      if (*v2 == *v3 && *(v2 + 32) == *(v3 + 32))
      {
        v6 = *(v2 + 8);
        v5 = *(v2 + 16);
        v7 = *(v3 + 8);
        if (v5 - v6 == *(v3 + 16) - v7)
        {
          if (v6 == v5)
          {
LABEL_13:
            if (*(v2 + 40) == *(v3 + 40))
            {
              return 1;
            }
          }

          else
          {
            while (*v6 == *v7 && *(v6 + 2) == *(v7 + 2))
            {
              v6 += 2;
              v7 += 2;
              if (v6 == v5)
              {
                goto LABEL_13;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_64B7F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = *a2 == 0;
  if (v2)
  {
    if (v3 && *(v2 + 33) == *(v3 + 33) && *(v2 + 32) == *(v3 + 32))
    {
      v5 = *(v2 + 24);
      v6 = *(v3 + 24);
      if (v5 == v6 && v5 != 0)
      {
        v8 = *(v2 + 23);
        if (v8 >= 0)
        {
          v9 = *(v2 + 23);
        }

        else
        {
          v9 = *(v2 + 8);
        }

        v10 = *(v3 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v3 + 8);
        }

        if (v9 != v10)
        {
          return 0;
        }

        v12 = v8 >= 0 ? v2 : *v2;
        v13 = v11 >= 0 ? *a2 : *v3;
        return !memcmp(v12, v13, v9);
      }

      if (v5 == v6)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_64B8BC(uint64_t **a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = *v2;
    v5 = v2[1];
    v6 = *v3;
    if (v5 - *v2 != v3[1] - *v3)
    {
      return 0;
    }

    if (v4 == v5)
    {
      return 1;
    }

    while (sub_64AFB4(v4, v6) && *(v4 + 160) == *(v6 + 160))
    {
      v4 += 168;
      v6 += 168;
      if (v4 == v5)
      {
        return 1;
      }
    }

    if (*a1)
    {
      return 0;
    }

    v3 = *a2;
  }

  return v3 == 0;
}

double sub_64B998(uint64_t a1)
{
  result = 0.0;
  *(a1 + 90) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 106) = -16711169;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

double sub_64B9C4(uint64_t a1, _DWORD *a2)
{
  result = 0.0;
  *(a1 + 90) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 106) = *a2;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

void *sub_64B9EC(void *result, _DWORD *a2, __int128 *a3)
{
  v3 = result;
  *(result + 90) = 0u;
  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *result = 0u;
  *(result + 1) = 0u;
  *(result + 106) = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C(result + 112, *a3, *(a3 + 1));
    v3[17] = 0;
    v3[18] = 0;
    v3[19] = 0;
    return v3;
  }

  else
  {
    v4 = *a3;
    result[16] = *(a3 + 2);
    *(result + 7) = v4;
    result[17] = 0;
    result[18] = 0;
    result[19] = 0;
  }

  return result;
}

void sub_64BA70(_Unwind_Exception *a1)
{
  sub_64BAA4((v1 + 96));
  sub_4B98C4((v1 + 72));
  sub_1A104((v1 + 48));
  sub_64BAF8((v1 + 24));
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_64BAA4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_6081F0(v2);
    operator delete();
  }

  return a1;
}

void **sub_64BAF8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53F320(v3 - 144);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_64BB54(uint64_t result, uint64_t a2, int *a3)
{
  *(result + 90) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  v3 = *a3;
  *(result + 112) = 0u;
  *(result + 106) = v3;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = result;
    v6 = sub_1CEE8(result, a2);
    result = v5;
    *(v5 + 8) = v6;
  }

  return result;
}

void sub_64BBCC(_Unwind_Exception *a1)
{
  if (*(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  if (*(v2 + 135) < 0)
  {
    operator delete(*v1);
  }

  sub_64BAA4((v2 + 96));
  sub_4B98C4((v2 + 72));
  sub_1A104((v2 + 48));
  sub_64BAF8((v2 + 24));
  sub_1A104(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_64BC54(uint64_t *a1, __int128 *a2, int *a3, int *a4)
{
  v16 = 6;
  v6 = *a3 % 10;
  if (*a3 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  v5 = *a3 / 10;
  v8 = v5 + (((103 * (v7 + v6)) >> 15) & 1) + ((103 * (v7 + v6)) >> 10);
  if (*a4 < 0)
  {
    v9 = -5;
  }

  else
  {
    v9 = 5;
  }

  v10 = *a4 / 10 + (((103 * (v9 + *a4 % 10)) >> 15) & 1) + ((103 * (v9 + *a4 % 10)) >> 10);
  v14 = v10;
  v15 = v5 + (((103 * (v7 + v6)) >> 15) & 1) + ((103 * (v7 + v6)) >> 10);
  v11 = a1[4];
  if (v11 >= a1[5])
  {
    result = sub_650938(a1 + 3, a2, &v16, &v15, &v14);
    a1[4] = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[4], *a2, *(a2 + 1));
    }

    else
    {
      v12 = *a2;
      *(v11 + 16) = *(a2 + 2);
      *v11 = v12;
    }

    *(v11 + 24) = 6;
    *(v11 + 28) = v8;
    *(v11 + 32) = v10;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 84) = 0u;
    *(v11 + 100) = 1;
    *(v11 + 104) = 0u;
    *(v11 + 120) = 0u;
    *(v11 + 136) = 0x7FFFFFFF;
    result = v11 + 144;
    a1[4] = v11 + 144;
    a1[4] = v11 + 144;
  }

  return result;
}

unint64_t sub_64BDC8(uint64_t *a1, __int128 *a2, int *a3, int *a4)
{
  v4 = *a3;
  if (*a3 == *a4)
  {
    v15 = 5;
    v5 = v4 / 10;
    v6 = v4 % 10;
    if (v4 < 0)
    {
      v7 = -5;
    }

    else
    {
      v7 = 5;
    }

    v8 = v5 + (((103 * (v7 + v6)) >> 15) & 1) + ((103 * (v7 + v6)) >> 10);
    v14 = v8;
    v9 = a1[4];
    if (v9 >= a1[5])
    {
      result = sub_650710(a1 + 3, a2, &v15, &v14);
      a1[4] = result;
    }

    else
    {
      if (*(a2 + 23) < 0)
      {
        sub_325C(a1[4], *a2, *(a2 + 1));
      }

      else
      {
        v11 = *a2;
        *(v9 + 16) = *(a2 + 2);
        *v9 = v11;
      }

      *(v9 + 24) = 5;
      *(v9 + 28) = v8;
      *(v9 + 32) = -1;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 84) = 0u;
      *(v9 + 100) = 1;
      *(v9 + 104) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0x7FFFFFFF;
      result = v9 + 144;
      a1[4] = v9 + 144;
      a1[4] = v9 + 144;
    }
  }

  else
  {

    return sub_64BC54(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_64BF34(uint64_t *a1, __int128 *a2)
{
  v3 = a1[4];
  if (v3 >= a1[5])
  {
    result = sub_650B18(a1 + 3, a2);
    a1[4] = result;
  }

  else
  {
    sub_55C01C(a1[4], a2);
    result = v3 + 144;
    a1[4] = v3 + 144;
    a1[4] = v3 + 144;
  }

  return result;
}

void sub_64BF94(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  if (a1[4] < a1[5])
  {
    sub_64A0C8(a1[4], a2, a3);
  }

  sub_650C7C(a1 + 3, a2, a3);
}

void sub_64BFF4(uint64_t *a1, __int128 *a2, unsigned int a3, __int128 *a4, uint64_t a5)
{
  v5 = a3;
  if (a1[4] < a1[5])
  {
    sub_64A368(a1[4], a2, a3, a4, a5);
  }

  sub_650DF0(a1 + 3, a2, &v5, a4, a5);
}

void sub_64C06C(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v3 = a1[4];
  if (v3 < a1[5])
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[4], *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v4;
    }

    *(v3 + 24) = 9;
    *(v3 + 28) = -1;
    operator new();
  }

  sub_650F7C(a1 + 3, a2, a3);
}

void sub_64C184(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    *(a1 + 8) = sub_1CEE8(a1, a2);
    v5 = a1;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v4;
    }

    *(a1 + 8) = v3 + 24;
    *(a1 + 8) = v3 + 24;
    v5 = a1;
  }

  sub_64C230(v5);
}

void sub_64C230(uint64_t a1)
{
  v2 = *(a1 + 135);
  if (v2 < 0)
  {
    if (!*(a1 + 120))
    {
      return;
    }
  }

  else if (!*(a1 + 135))
  {
    return;
  }

  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  if (v3 >= 2 && v3 - 1 > 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3))
  {
    v4 = (a1 + 112);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    if (v5 == v6)
    {
LABEL_33:
      if ((v2 & 0x80000000) != 0)
      {
        sub_325C(&v43, *(a1 + 112), *(a1 + 120));
      }

      else
      {
        v43 = *v4;
        v44 = *(a1 + 128);
      }

      goto LABEL_58;
    }

    if (*(a1 + 159) >= 0)
    {
      v7 = *(a1 + 159);
    }

    else
    {
      v7 = *(a1 + 144);
    }

    if ((*(a1 + 159) & 0x80) != 0)
    {
      v8 = *(a1 + 136);
      while (1)
      {
        v12 = *(v5 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v5 + 8);
        }

        if (v12 == v7)
        {
          v14 = v13 >= 0 ? v5 : *v5;
          if (!memcmp(v14, v8, v7))
          {
            break;
          }
        }

        v5 += 32;
        if (v5 == v6)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      while (1)
      {
        v9 = *(v5 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v5 + 8);
        }

        if (v9 == v7)
        {
          v11 = v10 >= 0 ? v5 : *v5;
          if (!memcmp(v11, (a1 + 136), v7))
          {
            break;
          }
        }

        v5 += 32;
        if (v5 == v6)
        {
          goto LABEL_33;
        }
      }
    }

    if (v7 + 3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v7 + 3 >= 0x17)
    {
      operator new();
    }

    v38.__r_.__value_.__r.__words[2] = 0;
    *&v38.__r_.__value_.__l.__data_ = 0x3A737BuLL;
    *(&v38.__r_.__value_.__s + 23) = v7 + 3;
    if (v7)
    {
      if (*(a1 + 159) >= 0)
      {
        v15 = (a1 + 136);
      }

      else
      {
        v15 = *(a1 + 136);
      }

      memmove(v38.__r_.__value_.__r.__words + 3, v15, v7);
    }

    *(v38.__r_.__value_.__r.__words + v7 + 3) = 0;
    v16 = std::string::append(&v38, "}", 1uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = *(a1 + 135);
    if (v18 >= 0)
    {
      v19 = (a1 + 112);
    }

    else
    {
      v19 = *(a1 + 112);
    }

    if (v18 >= 0)
    {
      v20 = *(a1 + 135);
    }

    else
    {
      v20 = *(a1 + 120);
    }

    v21 = std::string::append(&v39, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v40, "{/s:", 4uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = *(a1 + 159);
    if (v25 >= 0)
    {
      v26 = (a1 + 136);
    }

    else
    {
      v26 = *(a1 + 136);
    }

    if (v25 >= 0)
    {
      v27 = *(a1 + 159);
    }

    else
    {
      v27 = *(a1 + 144);
    }

    v28 = std::string::append(&v41, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v42, "}", 1uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v44 = v30->__r_.__value_.__r.__words[2];
    v43 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_55:
        if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_74;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_56:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_75;
    }

LABEL_74:
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_58:
        v32 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
        v33 = *(a1 + 56);
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *(a1 + 48)) >> 3);
        if (v32 + ~v34)
        {
          v35 = v34 - v32 + 1;
          do
          {
            while (v33 >= *(a1 + 64))
            {
              v33 = sub_1CEE8(a1 + 48, &v43);
              *(a1 + 56) = v33;
              v37 = __CFADD__(v35++, 1);
              if (v37)
              {
                goto LABEL_69;
              }
            }

            if (SHIBYTE(v44) < 0)
            {
              sub_325C(v33, v43, *(&v43 + 1));
            }

            else
            {
              v36 = v43;
              *(v33 + 16) = v44;
              *v33 = v36;
            }

            v33 += 24;
            *(a1 + 56) = v33;
            *(a1 + 56) = v33;
            v37 = __CFADD__(v35++, 1);
          }

          while (!v37);
        }

LABEL_69:
        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43);
        }

        return;
      }

LABEL_76:
      operator delete(v38.__r_.__value_.__l.__data_);
      goto LABEL_58;
    }

LABEL_75:
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_76;
  }
}

void sub_64C690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if ((a35 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a23);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a15 & 0x80000000) == 0)
    {
LABEL_12:
      _Unwind_Resume(exception_object);
    }

LABEL_11:
    operator delete(a10);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_64C770(void **a1, __int128 *a2, const void ***a3, uint64_t a4, _BYTE *a5)
{
  v8 = a1[1];
  v7 = a1[2];
  if (a4)
  {
    if (v8 >= v7)
    {
      v12 = *a1;
      v13 = v8 - *a1;
      v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
      if (v14 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v12) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v17 = a4;
      v18 = a5;
      v19 = (8 * (v13 >> 3));
      *v19 = 0;
      v19[1] = 0;
      v19[2] = 0;
      v10 = v19 + 3;
      v20 = v19 - v13;
      memcpy(v19 - v13, v12, v13);
      *a1 = v20;
      a1[1] = v10;
      a1[2] = 0;
      if (v12)
      {
        operator delete(v12);
      }

      a5 = v18;
      LOBYTE(a4) = v17;
    }

    else
    {
      *v8 = 0;
      *(v8 + 1) = 0;
      v10 = v8 + 24;
      *(v8 + 2) = 0;
    }

    a1[1] = v10;
    sub_64C978(a1, a3, a4, a5);
    v21 = *(a2 + 23);
    if (v21 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= 0)
    {
      v23 = *(a2 + 23);
    }

    else
    {
      v23 = *(a2 + 1);
    }

    std::string::append(a1[1] - 1, v22, v23);
    sub_64CC18(a1, a3);
  }

  else if (v8 >= v7)
  {
    a1[1] = sub_1CEE8(a1, a2);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[1], *a2, *(a2 + 1));
    }

    else
    {
      v11 = *a2;
      *(v8 + 2) = *(a2 + 2);
      *v8 = v11;
    }

    a1[1] = v8 + 24;
    a1[1] = v8 + 24;
  }

  sub_64C230(a1);
}

void sub_64C978(uint64_t a1, const void ***a2, char a3, _BYTE *a4)
{
  if (*(a1 + 108) != 1)
  {
    return;
  }

  v4 = a2;
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5 + 3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v5 + 3 >= 0x17)
  {
    operator new();
  }

  v19.__r_.__value_.__r.__words[2] = 0;
  *&v19.__r_.__value_.__l.__data_ = 0x3A737BuLL;
  *(&v19.__r_.__value_.__s + 23) = v5 + 3;
  if (v5)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(v19.__r_.__value_.__r.__words + 3, a2, v5);
  }

  *(v19.__r_.__value_.__r.__words + v5 + 3) = 0;
  v9 = std::string::append(&v19, "}", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v17 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17) >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (SHIBYTE(v17) >= 0)
  {
    v12 = HIBYTE(v17);
  }

  else
  {
    v12 = __p[1];
  }

  std::string::append((*(a1 + 8) - 24), v11, v12);
  if ((SHIBYTE(v17) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    operator delete(v19.__r_.__value_.__l.__data_);
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    sub_325C(__p, *v4, v4[1]);
    goto LABEL_25;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (*(v4 + 23) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  *__p = *v4;
  v17 = v4[2];
LABEL_25:
  LOBYTE(v18) = a3;
  HIBYTE(v18) = *a4;
  if ((sub_64F8CC(a1, __p) & 1) == 0)
  {
    v13 = *(a1 + 80);
    if (v13 >= *(a1 + 88))
    {
      v15 = sub_65211C((a1 + 72), __p);
    }

    else
    {
      if (SHIBYTE(v17) < 0)
      {
        sub_325C(*(a1 + 80), __p[0], __p[1]);
      }

      else
      {
        v14 = *__p;
        *(v13 + 16) = v17;
        *v13 = v14;
      }

      *(v13 + 24) = v18;
      v15 = v13 + 32;
      *(a1 + 80) = v13 + 32;
    }

    *(a1 + 80) = v15;
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_64CBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v22 + 80) = v23;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_64CC18(uint64_t a1, void *a2)
{
  if (*(a1 + 108) == 1)
  {
    if (*(a2 + 23) >= 0)
    {
      v2 = *(a2 + 23);
    }

    else
    {
      v2 = a2[1];
    }

    if (v2 + 4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v2 + 4 >= 0x17)
    {
      operator new();
    }

    *&v8.__r_.__value_.__r.__words[1] = 0uLL;
    *(&v8.__r_.__value_.__s + 23) = v2 + 4;
    v8.__r_.__value_.__r.__words[0] = 980627323;
    if (v2)
    {
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      memmove(v8.__r_.__value_.__r.__words + 4, a2, v2);
    }

    *(v8.__r_.__value_.__r.__words + v2 + 4) = 0;
    v4 = std::string::append(&v8, "}", 1uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v10 = v4->__r_.__value_.__r.__words[2];
    *__p = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (v10 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if (v10 >= 0)
    {
      v7 = HIBYTE(v10);
    }

    else
    {
      v7 = __p[1];
    }

    std::string::append((*(a1 + 8) - 24), v6, v7);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_22:
      operator delete(v8.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p[0]);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }
  }
}

void sub_64CDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

double sub_64CDFC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 != v5)
  {
    v6 = (a2 + 24);
    v7 = *(a2 + 24);
    do
    {
      while (1)
      {
        v8 = *v4 - 978307200;
        if (v7 == *(a2 + 28))
        {
          break;
        }

        *(*(a2 + 32) + 4 * v7++) = v8;
        *v6 = v7;
        if (++v4 == v5)
        {
          goto LABEL_6;
        }
      }

      sub_1958E5C((a2 + 24), v7 + 1);
      *(*(a2 + 32) + 4 * v7++) = v8;
      *v6 = v7;
      ++v4;
    }

    while (v4 != v5);
  }

LABEL_6:
  v10 = *(a1 + 71);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 56);
  }

  if (v10)
  {
    *(a2 + 16) |= 1u;
    v11 = *(a2 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a2 + 80), (a1 + 48), v12);
  }

  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  while (v13 != v14)
  {
    sub_64CFD8(a2, v13);
    if (*(v13 + 24) - 1 < 3)
    {
      v16 = (*(v13 + 24) - 1) + 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 64);
    if (v17 == *(a2 + 68))
    {
      v15 = v17 + 1;
      sub_1958E5C((a2 + 64), v17 + 1);
      *(*(a2 + 72) + 4 * v17) = v16;
    }

    else
    {
      *(*(a2 + 72) + 4 * v17) = v16;
      v15 = v17 + 1;
    }

    *(a2 + 64) = v15;
    v13 += 32;
  }

  v18 = *(a1 + 95);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a1 + 80);
  }

  if (v18)
  {
    *(a2 + 16) |= 2u;
    v19 = *(a2 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a2 + 88), (a1 + 72), v20);
  }

  return result;
}

void **sub_64CFD8(uint64_t a1, void **a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 48);
    if (v5 < *v4)
    {
      *(a1 + 48) = v5 + 1;
      result = *&v4[2 * v5 + 2];
      if (result == a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    operator new();
  }

  *v9 = v8;
  v9[1] = sub_195A650;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_19593CC(a1 + 40, v8);
  if (result != a2)
  {
LABEL_9:
    v10 = *(a2 + 23);
    if (*(result + 23) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = a2[1];
      }

      return sub_13B38(result, v12, v13);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v14 = *a2;
      v15 = a2[1];

      return sub_13A68(result, v14, v15);
    }

    else
    {
      v11 = *a2;
      result[2] = a2[2];
      *result = v11;
    }
  }

  return result;
}

void sub_64D110(void ***a1, uint64_t a2)
{
  sub_1959254((a2 + 24), -1431655765 * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      sub_64E090(a2, v4);
      v4 += 3;
    }

    while (v4 != v5);
  }

  sub_1959254((a2 + 72), -1431655765 * ((a1[7] - a1[6]) >> 3));
  v7 = a1[6];
  for (i = a1[7]; v7 != i; v7 += 3)
  {
    sub_3EB818(a2, v7);
  }

  sub_1959254((a2 + 48), 954437177 * ((a1[4] - a1[3]) >> 4));
  v8 = a1[3];
  v158 = a1;
  v159 = a1[4];
  if (v8 != v159)
  {
    while (1)
    {
      v9 = *(a2 + 64);
      if (v9 && (v10 = *(a2 + 56), v10 < *v9))
      {
        *(a2 + 56) = v10 + 1;
        v11 = *&v9[2 * v10 + 2];
      }

      else
      {
        sub_14BAC9C(*(a2 + 48));
        v11 = sub_19593CC(a2 + 48, v12);
      }

      *(v11 + 16) |= 1u;
      v13 = *(v11 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v13 & 1) == 0)
      {
        break;
      }

      sub_194EA1C((v11 + 64), v8, *v14);
      v15 = *(v8 + 24);
      if (v15 <= 0x11)
      {
        goto LABEL_14;
      }

LABEL_33:
      v16 = 0;
LABEL_34:
      *(v11 + 16) |= 0x800u;
      *(v11 + 152) = v16;
LABEL_35:
      v17 = *(v8 + 7);
      if (v17 != -1)
      {
        *(v11 + 16) |= 0x1000u;
        *(v11 + 156) = v17;
      }

      v18 = *(v8 + 8);
      if (v18 != -1)
      {
        *(v11 + 16) |= 0x2000u;
        *(v11 + 160) = v18;
      }

      v19 = v8[5];
      if (!v19)
      {
        goto LABEL_47;
      }

      if ((*(v19 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v19 + 1))
        {
LABEL_44:
          *(v11 + 16) |= 2u;
          v20 = *(v11 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          sub_194EA1C((v11 + 72), v19, v21);
        }
      }

      else if (*(v19 + 23))
      {
        goto LABEL_44;
      }

LABEL_47:
      sub_1959254((v11 + 40), -858993459 * ((v8[9] - v8[8]) >> 3));
      v24 = v8[8];
      v25 = v8[9];
      while (v24 != v25)
      {
        v27 = *(v11 + 56);
        if (v27 && (v28 = *(v11 + 48), v28 < *v27))
        {
          *(v11 + 48) = v28 + 1;
          v29 = *&v27[2 * v28 + 2];
        }

        else
        {
          v30 = sub_14BA844(*(v11 + 40));
          v29 = sub_19593CC(v11 + 40, v30);
        }

        v31 = v24[32];
        v32 = *v24 - 978307200;
        v33 = *(v29 + 16);
        *(v29 + 40) = v32;
        *(v29 + 16) = v33 | 5;
        v34 = *(v29 + 8);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          sub_194EA1C((v29 + 24), (v24 + 8), *v35);
          if (v31 > 4)
          {
LABEL_70:
            if (v31 <= 6)
            {
              if (v31 == 5)
              {
                HIBYTE(v161) = 6;
                LODWORD(__p) = 1835887210;
                v40 = 31264;
                goto LABEL_83;
              }

              HIBYTE(v161) = 9;
              strcpy(&__p, "MMdd jjmm");
              *(v29 + 16) |= 2u;
              v42 = *(v29 + 8);
              v37 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
              if ((v42 & 1) == 0)
              {
                goto LABEL_84;
              }
            }

            else
            {
              switch(v31)
              {
                case 7:
                  HIBYTE(v161) = 11;
                  strcpy(&__p, "MMdd jjmm z");
                  *(v29 + 16) |= 2u;
                  v43 = *(v29 + 8);
                  v37 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
                  if ((v43 & 1) == 0)
                  {
                    goto LABEL_84;
                  }

                  break;
                case 8:
                  HIBYTE(v161) = 6;
                  LODWORD(__p) = 1835887210;
                  v40 = 29555;
LABEL_83:
                  WORD2(__p) = v40;
                  BYTE6(__p) = 0;
                  *(v29 + 16) |= 2u;
                  v44 = *(v29 + 8);
                  v37 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
                  if ((v44 & 1) == 0)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_89;
                case 9:
                  HIBYTE(v161) = 1;
                  LOWORD(__p) = 122;
                  *(v29 + 16) |= 2u;
                  v41 = *(v29 + 8);
                  v37 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
                  if ((v41 & 1) == 0)
                  {
                    goto LABEL_84;
                  }

                  break;
                default:
                  __p = 0uLL;
                  v161 = 0;
                  *(v29 + 16) |= 2u;
                  v46 = *(v29 + 8);
                  v37 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
                  if ((v46 & 1) == 0)
                  {
                    goto LABEL_84;
                  }

                  break;
              }
            }

            goto LABEL_89;
          }
        }

        else
        {
          sub_194EA1C((v29 + 24), (v24 + 8), v35);
          if (v31 > 4)
          {
            goto LABEL_70;
          }
        }

        if (v31 <= 1)
        {
          HIBYTE(v161) = 4;
          if (v31)
          {
            v38 = 1162167621;
          }

          else
          {
            v38 = 1835887210;
          }

LABEL_66:
          LODWORD(__p) = v38;
          BYTE4(__p) = 0;
          *(v29 + 16) |= 2u;
          v39 = *(v29 + 8);
          v37 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v39 & 1) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_89;
        }

        if (v31 == 2)
        {
          HIBYTE(v161) = 4;
          v38 = 1684294989;
          goto LABEL_66;
        }

        if (v31 == 3)
        {
          HIBYTE(v161) = 6;
          LODWORD(__p) = 1296911693;
          v40 = 25632;
          goto LABEL_83;
        }

        HIBYTE(v161) = 12;
        strcpy(&__p, "MMMM d, yyyy");
        *(v29 + 16) |= 2u;
        v36 = *(v29 + 8);
        v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v36 & 1) == 0)
        {
          goto LABEL_84;
        }

LABEL_89:
        v37 = *v37;
LABEL_84:
        sub_194EA54((v29 + 32), &__p, v37);
        if (SHIBYTE(v161) < 0)
        {
          operator delete(__p);
        }

        *(v29 + 16) |= 8u;
        *(v29 + 44) = (v31 & 0xFFFFFFFD) == 5;
        v45 = *(v11 + 24);
        if (v45 == *(v11 + 28))
        {
          v26 = v45 + 1;
          sub_1958E5C((v11 + 24), v45 + 1);
          *(*(v11 + 32) + 4 * v45) = v32;
        }

        else
        {
          *(*(v11 + 32) + 4 * v45) = v32;
          v26 = v45 + 1;
        }

        *(v11 + 24) = v26;
        v24 += 40;
      }

      if (*(v8 + 24) == 2 && *(v11 + 48) == 1)
      {
        v47 = *(*(*(v11 + 56) + 8) + 40);
        *(v11 + 16) |= 0x1000u;
        *(v11 + 156) = v47;
      }

      v48 = v8[6];
      if (v48)
      {
        *(v11 + 16) |= 4u;
        v49 = *(v11 + 80);
        if (v49)
        {
          goto LABEL_97;
        }

        v50 = *(v11 + 8);
        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v50 & 1) == 0)
        {
          v49 = sub_14BA7BC(v51);
          *(v11 + 80) = v49;
          v48 = v8[6];
          if (v48)
          {
            goto LABEL_97;
          }

LABEL_265:
          sub_21E2948();
        }

        v49 = sub_14BA7BC(*v51);
        *(v11 + 80) = v49;
        v48 = v8[6];
        if (!v48)
        {
          goto LABEL_265;
        }

LABEL_97:
        LODWORD(v23) = v48[8];
        v52 = *v48 / v23;
        v53 = *(v49 + 16);
        *(v49 + 32) = v52;
        *(v49 + 16) = v53 | 3;
        v54 = *(v49 + 8);
        v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
        if (v54)
        {
          v55 = *v55;
        }

        sub_194EA1C((v49 + 24), (v48 + 2), v55);
      }

      v56 = v8[7];
      if (v56)
      {
        *(v11 + 16) |= 8u;
        v57 = *(v11 + 88);
        if (!v57)
        {
          v58 = *(v11 + 8);
          v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
          if (v58)
          {
            v59 = *v59;
          }

          v57 = sub_14BF484(v59);
          *(v11 + 88) = v57;
        }

        sub_586C94(v56, v57, v22);
      }

      v60 = v8[11];
      if (v60)
      {
        *(v11 + 16) |= 0x10u;
        v61 = *(v11 + 96);
        if (!v61)
        {
          v62 = *(v11 + 8);
          v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
          if (v62)
          {
            v63 = *v63;
          }

          v61 = sub_14BA8CC(v63);
          *(v11 + 96) = v61;
        }

        sub_64CDFC(v60, v61);
      }

      v64 = *(v8 + 24);
      if (v64 == 15 || v64 == 12)
      {
        v65 = (v8 + 12);
        goto LABEL_116;
      }

      v65 = (v8 + 12);
      if (*(v8 + 24) != 0.0)
      {
LABEL_116:
        *(v11 + 16) |= 0x20u;
        v66 = *(v11 + 104);
        if (!v66)
        {
          v67 = *(v11 + 8);
          v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
          if (v67)
          {
            v68 = *v68;
          }

          v66 = sub_14BA97C(v68);
          *(v11 + 104) = v66;
        }

        v69 = *v65;
        *(v66 + 16) |= 1u;
        *(v66 + 24) = v69;
      }

      v70 = *(v8 + 100);
      if (v70 != byte_2771590)
      {
        *(v11 + 16) |= 0x40u;
        v71 = *(v11 + 112);
        if (!v71)
        {
          v72 = *(v11 + 8);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          if (v72)
          {
            v73 = *v73;
          }

          v71 = sub_14BA9F8(v73);
          *(v11 + 112) = v71;
          LOBYTE(v70) = *(v8 + 100);
        }

        *(v71 + 16) |= 1u;
        *(v71 + 24) = v70;
      }

      v74 = v8[13];
      if (v74)
      {
        *(v11 + 16) |= 0x80u;
        v75 = *(v11 + 120);
        if (!v75)
        {
          v76 = *(v11 + 8);
          v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v76 & 1) == 0)
          {
            v78 = sub_14BA738(v77);
            *(v11 + 120) = v78;
            v74 = v8[13];
            if (v74)
            {
              goto LABEL_131;
            }

LABEL_266:
            sub_21E2948();
          }

          v78 = sub_14BA738(*v77);
          *(v11 + 120) = v78;
          v74 = v8[13];
          if (!v74)
          {
            goto LABEL_266;
          }

LABEL_131:
          v75 = v78;
        }

        *(v75 + 4) |= 1u;
        v79 = v75[1];
        v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v79 & 1) == 0)
        {
          sub_194EA1C(v75 + 3, (v74 + 24), v80);
          v81 = v8[13];
          if (v81)
          {
            goto LABEL_134;
          }

LABEL_267:
          sub_21E2948();
        }

        sub_194EA1C(v75 + 3, (v74 + 24), *v80);
        v81 = v8[13];
        if (!v81)
        {
          goto LABEL_267;
        }

LABEL_134:
        *(v75 + 4) |= 2u;
        v82 = v75[1];
        v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
        if (v82)
        {
          v83 = *v83;
        }

        sub_194EA1C(v75 + 4, v81, v83);
      }

      v84 = v8[14];
      if (v84)
      {
        *(v11 + 16) |= 0x100u;
        v85 = *(v11 + 128);
        if (!v85)
        {
          v86 = *(v11 + 8);
          v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
          if (v86)
          {
            v87 = *v87;
          }

          v85 = sub_14BAA78(v87);
          *(v11 + 128) = v85;
        }

        v88 = sub_EC7E24(*v84);
        v89 = *(v85 + 16);
        *(v85 + 16) = v89 | 2;
        *(v85 + 32) = v88;
        v90 = *(v84 + 1);
        v91 = *(v84 + 2);
        v92 = v84 + 2;
        if (v90 != v91 && *(v92 + 32) != 2)
        {
          *(v85 + 16) = v89 | 3;
          v93 = *(v85 + 24);
          if (!v93)
          {
            v94 = *(v85 + 8);
            v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
            if (v94)
            {
              v95 = *v95;
            }

            sub_14BB658(v95);
            v93 = v96;
            *(v85 + 24) = v96;
          }

          sub_ECB694(v92, v93);
        }
      }

      v97 = v8[15];
      if (v97)
      {
        *(v11 + 16) |= 0x200u;
        v98 = *(v11 + 136);
        if (v98)
        {
          goto LABEL_153;
        }

        v99 = *(v11 + 8);
        v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v99 & 1) == 0)
        {
          sub_14BAAF4(v100);
          *(v11 + 136) = v98;
          v97 = v8[15];
          if (v97)
          {
            goto LABEL_153;
          }

LABEL_268:
          sub_21E2948();
        }

        sub_14BAAF4(*v100);
        *(v11 + 136) = v98;
        v97 = v8[15];
        if (!v97)
        {
          goto LABEL_268;
        }

LABEL_153:
        if (*(v97 + 33) - 1 < 3)
        {
          v101 = (*(v97 + 33) - 1) + 1;
        }

        else
        {
          v101 = 0;
        }

        v102 = *(v98 + 16);
        *(v98 + 16) = v102 | 6;
        v103 = *(v97 + 32);
        if (v103 >= 6)
        {
          v103 = 0;
        }

        *(v98 + 32) = v103;
        *(v98 + 36) = v101;
        if (*(v97 + 24) == 1)
        {
          *(v98 + 16) = v102 | 7;
          v104 = *(v98 + 8);
          v105 = (v104 & 0xFFFFFFFFFFFFFFFCLL);
          if (v104)
          {
            v105 = *v105;
          }

          sub_194EA1C((v98 + 24), v97, v105);
        }
      }

      v106 = *(v8 + 34);
      if (v106 != 0x7FFFFFFF)
      {
        *(v11 + 16) |= 0x4000u;
        *(v11 + 164) = v106;
      }

      v107 = *(v8 + 23);
      v108 = v107;
      if (v107 < 0)
      {
        v107 = v8[1];
      }

      if (v107 == (&dword_C + 1))
      {
        if (v108 >= 0)
        {
          v114 = v8;
        }

        else
        {
          v114 = *v8;
        }

        v110 = *v114;
        v111 = *(v114 + 5);
        v112 = 0x616E69747365447BLL;
LABEL_181:
        if (v110 != v112 || v111 != 0x7D6E6F6974616E69)
        {
          goto LABEL_7;
        }

        v116 = v8[16];
        if (!v116)
        {
          goto LABEL_7;
        }

        *(v11 + 16) |= 0x400u;
        v117 = *(v11 + 144);
        if (!v117)
        {
          v118 = *(v11 + 8);
          v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v118 & 1) == 0)
          {
            v120 = sub_14BABFC(v119);
            *(v11 + 144) = v120;
            v116 = v8[16];
            if (v116)
            {
              goto LABEL_190;
            }

LABEL_211:
            sub_21E2948();
          }

          v120 = sub_14BABFC(*v119);
          *(v11 + 144) = v120;
          v116 = v8[16];
          if (!v116)
          {
            goto LABEL_211;
          }

LABEL_190:
          v117 = v120;
        }

        v122 = *v116;
        v121 = v116[1];
        while (v122 != v121)
        {
          v125 = *(v117 + 32);
          if (v125 && (v126 = *(v117 + 24), v126 < *v125))
          {
            *(v117 + 24) = v126 + 1;
            v127 = *&v125[2 * v126 + 2];
          }

          else
          {
            v128 = sub_14BAB80(*(v117 + 16));
            v127 = sub_19593CC(v117 + 16, v128);
          }

          v129 = sub_EC7E48((v122 + 160));
          v130 = *(v127 + 16);
          *(v127 + 32) = v129;
          *(v127 + 16) = v130 | 3;
          v124 = *(v127 + 24);
          if (!v124)
          {
            v131 = *(v127 + 8);
            v132 = (v131 & 0xFFFFFFFFFFFFFFFCLL);
            if (v131)
            {
              v132 = *v132;
            }

            sub_14BAE64(v132);
            v124 = v123;
            *(v127 + 24) = v123;
          }

          sub_64D110(v122, v124);
          v122 += 168;
        }

        goto LABEL_7;
      }

      if (v107 == dword_10)
      {
        if (v108 >= 0)
        {
          v113 = v8;
        }

        else
        {
          v113 = *v8;
        }

        v110 = *v113;
        v111 = v113[1];
        v112 = 0x74736544726F667BLL;
        goto LABEL_181;
      }

      if (v107 == (&dword_C + 3))
      {
        if (v108 >= 0)
        {
          v109 = v8;
        }

        else
        {
          v109 = *v8;
        }

        v110 = *v109;
        v111 = *(v109 + 7);
        v112 = 0x69747365446F747BLL;
        goto LABEL_181;
      }

LABEL_7:
      v8 += 18;
      if (v8 == v159)
      {
        goto LABEL_212;
      }
    }

    sub_194EA1C((v11 + 64), v8, v14);
    v15 = *(v8 + 24);
LABEL_14:
    switch(v15)
    {
      case 0u:
        goto LABEL_35;
      case 1u:
        v16 = 1;
        goto LABEL_34;
      case 2u:
        v16 = 2;
        goto LABEL_34;
      case 3u:
        v16 = 3;
        goto LABEL_34;
      case 4u:
        v16 = 4;
        goto LABEL_34;
      case 5u:
        v16 = 5;
        goto LABEL_34;
      case 6u:
        v16 = 6;
        goto LABEL_34;
      case 7u:
        v16 = 8;
        goto LABEL_34;
      case 8u:
        v16 = 9;
        goto LABEL_34;
      case 9u:
        v16 = 10;
        goto LABEL_34;
      case 0xAu:
        v16 = 11;
        goto LABEL_34;
      case 0xBu:
        v16 = 12;
        goto LABEL_34;
      case 0xCu:
        v16 = 13;
        goto LABEL_34;
      case 0xDu:
        v16 = 14;
        goto LABEL_34;
      case 0xEu:
        v16 = 15;
        goto LABEL_34;
      case 0xFu:
        v16 = 16;
        goto LABEL_34;
      case 0x10u:
        v16 = 17;
        goto LABEL_34;
      case 0x11u:
        v16 = 18;
        goto LABEL_34;
      default:
        goto LABEL_33;
    }

    goto LABEL_35;
  }

LABEL_212:
  v134 = v158[9];
  for (j = v158[10]; v134 != j; v134 += 4)
  {
    v137 = *(a2 + 112);
    if (v137 && (v138 = *(a2 + 104), v138 < *v137))
    {
      *(a2 + 104) = v138 + 1;
      v139 = *&v137[2 * v138 + 2];
    }

    else
    {
      v140 = sub_14BADDC(*(a2 + 96));
      v139 = sub_19593CC(a2 + 96, v140);
    }

    *(v139 + 16) |= 1u;
    v141 = *(v139 + 8);
    v142 = (v141 & 0xFFFFFFFFFFFFFFFCLL);
    if (v141)
    {
      v142 = *v142;
    }

    sub_194EA1C((v139 + 24), v134, v142);
    if (*(v134 + 24) - 1 > 2)
    {
      v144 = *(v139 + 16);
      *(v139 + 16) = v144 | 4;
      *(v139 + 40) = 0;
      if (*(v134 + 25))
      {
LABEL_227:
        *(v139 + 16) = v144 | 6;
        v135 = *(v139 + 32);
        if (!v135)
        {
          v145 = *(v139 + 8);
          v146 = (v145 & 0xFFFFFFFFFFFFFFFCLL);
          if (v145)
          {
            v146 = *v146;
          }

          v135 = sub_14BAD60(v146);
          *(v139 + 32) = v135;
        }

        v136 = *(v134 + 25) == 1;
        *(v135 + 16) |= 1u;
        *(v135 + 24) = v136;
      }
    }

    else
    {
      v143 = dword_229C7A4[(*(v134 + 24) - 1)];
      v144 = *(v139 + 16);
      *(v139 + 16) = v144 | 4;
      *(v139 + 40) = v143;
      if (*(v134 + 25))
      {
        goto LABEL_227;
      }
    }
  }

  v147 = v158[12];
  if (v147)
  {
    *(a2 + 16) |= 1u;
    v148 = *(a2 + 120);
    if (!v148)
    {
      v149 = *(a2 + 8);
      v150 = (v149 & 0xFFFFFFFFFFFFFFFCLL);
      if (v149)
      {
        v150 = *v150;
      }

      v148 = sub_14BAFC4(v150);
      *(a2 + 120) = v148;
    }

    sub_64E1C8(v147, v148);
  }

  if (!*(v158 + 104) && !*(v158 + 105))
  {
    return;
  }

  *(a2 + 16) |= 2u;
  v151 = *(a2 + 128);
  if (v151)
  {
    v152 = 0;
    v153 = *(v158 + 104);
    if (v153 > 2)
    {
LABEL_240:
      if (v153 > 4)
      {
        if (v153 == 5)
        {
          v152 = 5;
        }

        else if (v153 == 6)
        {
          v152 = 6;
        }
      }

      else if (v153 == 3)
      {
        v152 = 3;
      }

      else
      {
        v152 = 4;
      }

      goto LABEL_255;
    }
  }

  else
  {
    v154 = *(a2 + 8);
    v155 = (v154 & 0xFFFFFFFFFFFFFFFCLL);
    if (v154)
    {
      v155 = *v155;
    }

    v151 = sub_14BF234(v155);
    *(a2 + 128) = v151;
    v152 = 0;
    v153 = *(v158 + 104);
    if (v153 > 2)
    {
      goto LABEL_240;
    }
  }

  if (v153)
  {
    if (v153 == 1)
    {
      v152 = 1;
    }

    else
    {
      v152 = 2;
    }

LABEL_255:
    v151[4] |= 1u;
    v151[6] = v152;
  }

  v156 = 0;
  v157 = *(v158 + 105);
  if (v157 > 1)
  {
    if (v157 == 2)
    {
      v156 = 2;
    }

    else if (v157 == 3)
    {
      v156 = 3;
    }
  }

  else
  {
    if (!*(v158 + 105))
    {
      return;
    }

    v156 = v157 == 1;
  }

  v151[4] |= 2u;
  v151[7] = v156;
}

void sub_64E028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    v17 = a1;
    operator delete(__p);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

void **sub_64E090(uint64_t a1, void **a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5 < *v4)
    {
      *(a1 + 32) = v5 + 1;
      result = *&v4[2 * v5 + 2];
      if (result == a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    operator new();
  }

  *v9 = v8;
  v9[1] = sub_195A650;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_19593CC(a1 + 24, v8);
  if (result != a2)
  {
LABEL_9:
    v10 = *(a2 + 23);
    if (*(result + 23) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = a2[1];
      }

      return sub_13B38(result, v12, v13);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v14 = *a2;
      v15 = a2[1];

      return sub_13A68(result, v14, v15);
    }

    else
    {
      v11 = *a2;
      result[2] = a2[2];
      *result = v11;
    }
  }

  return result;
}

void sub_64E1C8(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) |= 2u;
  v4 = *(a2 + 32);
  if (!v4)
  {
    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v4 = sub_14BAF28(*v8);
      *(a2 + 32) = v4;
      v5 = *(a1 + 160);
      if (v5)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v4 = sub_14BAF28(v8);
      *(a2 + 32) = v4;
      v5 = *(a1 + 160);
      if (v5)
      {
        goto LABEL_3;
      }
    }

LABEL_7:
    v6 = 4;
    goto LABEL_8;
  }

  v5 = *(a1 + 160);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = 5;
LABEL_8:
  v4[4] |= 1u;
  v4[12] = v6;
LABEL_9:
  v9 = *(a1 + 164);
  if (v9 == 0x7FFFFFFF)
  {
    *(a2 + 16) |= 1u;
    v10 = *(a2 + 24);
    if (v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4[4] |= 2u;
    v4[13] = v9 - 978307200;
    *(a2 + 16) |= 1u;
    v10 = *(a2 + 24);
    if (v10)
    {
LABEL_11:
      v11 = a1;

      goto LABEL_13;
    }
  }

  v12 = *(a2 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_14BAE64(v13);
  v10 = v14;
  *(a2 + 24) = v14;
  v11 = a1;

LABEL_13:
  sub_64D110(v11, v10);
}

uint64_t sub_64E308(uint64_t *a1, __int128 *a2, _DWORD *a3, uint64_t a4, char a5)
{
  v9 = a5;
  v8 = 2;
  v6 = a1[4];
  if (v6 >= a1[5])
  {
    result = sub_65118C(a1 + 3, a2, &v8, a3, a4, &v9);
    a1[4] = result;
  }

  else
  {
    sub_649CFC(a1[4], a2, 2, a3, a4, a5);
    result = v6 + 144;
    a1[4] = v6 + 144;
    a1[4] = v6 + 144;
  }

  return result;
}

uint64_t sub_64E398(uint64_t *a1, __int128 *a2, void *a3, __int128 *a4, char a5)
{
  v9 = a5;
  v8 = 8;
  v6 = a1[4];
  if (v6 >= a1[5])
  {
    result = sub_651320(a1 + 3, a2, &v8, a3, a4, &v9);
    a1[4] = result;
  }

  else
  {
    sub_649EC8(a1[4], a2, 8, a3, a4, a5);
    result = v6 + 144;
    a1[4] = v6 + 144;
    a1[4] = v6 + 144;
  }

  return result;
}

uint64_t sub_64E428(uint64_t *a1, __int128 *a2, uint64_t *a3, char *a4)
{
  v5 = a1[4];
  if (v5 >= a1[5])
  {
    result = sub_6514B4(a1 + 3, a2, a3, a4);
    a1[4] = result;
  }

  else
  {
    v6 = *a3;
    if (*(a2 + 23) < 0)
    {
      v9 = a4;
      sub_325C(a1[4], *a2, *(a2 + 1));
      a4 = v9;
    }

    else
    {
      v7 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v7;
    }

    *(v5 + 24) = 1;
    if (v6 < 0)
    {
      v10 = -50;
    }

    else
    {
      v10 = 50;
    }

    *(v5 + 28) = v6 / 100 + ((5243 * (v10 + v6 % 100)) >> 19) + ((5243 * (v10 + v6 % 100)) >> 31);
    *(v5 + 32) = -1;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 84) = 0u;
    *(v5 + 100) = *a4;
    *(v5 + 120) = 0u;
    *(v5 + 104) = 0u;
    *(v5 + 136) = 0x7FFFFFFF;
    result = v5 + 144;
    a1[4] = v5 + 144;
    a1[4] = v5 + 144;
  }

  return result;
}

uint64_t sub_64E558(uint64_t result, char *a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    v6 = result;
    v7 = a2[23];
    v22 = v7;
    v20 = *(a2 + 1);
    v21 = *a2;
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = a2[23];
    }

    else
    {
      v9 = *(a2 + 1);
    }

    if (v9)
    {
      do
      {
        v13 = *(v3 + 23);
        if ((v13 & 0x80u) == 0)
        {
          v14 = v3;
        }

        else
        {
          v14 = *v3;
        }

        if ((v13 & 0x80u) != 0)
        {
          v13 = *(v3 + 8);
        }

        if (v13 >= v9)
        {
          v15 = v14 + v13;
          v16 = *v8;
          result = v14;
          do
          {
            v17 = v13 - v9;
            if (v17 == -1)
            {
              break;
            }

            result = memchr(result, v16, v17 + 1);
            if (!result)
            {
              break;
            }

            v18 = result;
            result = memcmp(result, v8, v9);
            if (!result)
            {
              if (v18 == v15 || v18 - v14 == -1)
              {
                break;
              }

              goto LABEL_9;
            }

            result = v18 + 1;
            v13 = v15 - (v18 + 1);
          }

          while (v13 >= v9);
        }

        v3 += 24;
      }

      while (v3 != v4);
    }

    else
    {
LABEL_9:
      v24 = 1;
      v10 = v6[4];
      if (v10 >= v6[5])
      {
        result = sub_6514B4(v6 + 3, a2, a3, &v24);
      }

      else
      {
        v11 = *a3;
        if (v22 < 0)
        {
          sub_325C(v6[4], v21, v20);
        }

        else
        {
          v12 = *a2;
          *(v10 + 16) = *(a2 + 2);
          *v10 = v12;
        }

        *(v10 + 24) = 1;
        if (v11 < 0)
        {
          v19 = -50;
        }

        else
        {
          v19 = 50;
        }

        *(v10 + 28) = v11 / 100 + ((5243 * (v19 + v11 % 100)) >> 19) + ((5243 * (v19 + v11 % 100)) >> 31);
        *(v10 + 32) = -1;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 84) = 0u;
        *(v10 + 100) = 1;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0x7FFFFFFF;
        result = v10 + 144;
        v6[4] = v10 + 144;
      }

      v6[4] = result;
    }
  }

  return result;
}

uint64_t sub_64E768(uint64_t result, char *a2, int a3)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    v6 = result;
    v7 = a2[23];
    v20 = v7;
    v18 = *(a2 + 1);
    v19 = *a2;
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = a2[23];
    }

    else
    {
      v9 = *(a2 + 1);
    }

    if (v9)
    {
      do
      {
        v12 = *(v3 + 23);
        if ((v12 & 0x80u) == 0)
        {
          v13 = v3;
        }

        else
        {
          v13 = *v3;
        }

        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v3 + 8);
        }

        if (v12 >= v9)
        {
          v14 = v13 + v12;
          v15 = *v8;
          result = v13;
          do
          {
            v16 = v12 - v9;
            if (v16 == -1)
            {
              break;
            }

            result = memchr(result, v15, v16 + 1);
            if (!result)
            {
              break;
            }

            v17 = result;
            result = memcmp(result, v8, v9);
            if (!result)
            {
              if (v17 == v14 || v17 - v13 == -1)
              {
                break;
              }

              goto LABEL_9;
            }

            result = v17 + 1;
            v12 = v14 - (v17 + 1);
          }

          while (v12 >= v9);
        }

        v3 += 24;
      }

      while (v3 != v4);
    }

    else
    {
LABEL_9:
      v22 = a3;
      v10 = v6[4];
      if (v10 >= v6[5])
      {
        result = sub_6516E0(v6 + 3, a2, &v22);
      }

      else
      {
        if (v20 < 0)
        {
          sub_325C(v6[4], v19, v18);
        }

        else
        {
          v11 = *a2;
          *(v10 + 16) = *(a2 + 2);
          *v10 = v11;
        }

        *(v10 + 24) = 0;
        *(v10 + 28) = a3;
        *(v10 + 32) = -1;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 84) = 0u;
        *(v10 + 100) = 1;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0x7FFFFFFF;
        result = v10 + 144;
        v6[4] = v10 + 144;
      }

      v6[4] = result;
    }
  }

  return result;
}

uint64_t sub_64E914(uint64_t *a1, __int128 *a2, int a3)
{
  v10 = a3;
  v9 = 3;
  v4 = a1[4];
  if (v4 >= a1[5])
  {
    result = sub_6518AC(a1 + 3, a2, &v9, &v10);
    a1[4] = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v7 = a3;
      sub_325C(a1[4], *a2, *(a2 + 1));
      a3 = v7;
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    *(v4 + 24) = 3;
    if (a3 < 0)
    {
      v8 = -5;
    }

    else
    {
      v8 = 5;
    }

    *(v4 + 28) = a3 / 10 + (((103 * (v8 + a3 % 10)) >> 15) & 1) + ((103 * (v8 + a3 % 10)) >> 10);
    *(v4 + 32) = -1;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 84) = 0u;
    *(v4 + 100) = 1;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0x7FFFFFFF;
    result = v4 + 144;
    a1[4] = v4 + 144;
    a1[4] = v4 + 144;
  }

  return result;
}

uint64_t sub_64EA58(uint64_t *a1, __int128 *a2, int a3)
{
  v10 = a3;
  v9 = 4;
  v4 = a1[4];
  if (v4 >= a1[5])
  {
    result = sub_6518AC(a1 + 3, a2, &v9, &v10);
    a1[4] = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v7 = a3;
      sub_325C(a1[4], *a2, *(a2 + 1));
      a3 = v7;
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    *(v4 + 24) = 4;
    if (a3 < 0)
    {
      v8 = -5;
    }

    else
    {
      v8 = 5;
    }

    *(v4 + 28) = a3 / 10 + (((103 * (v8 + a3 % 10)) >> 15) & 1) + ((103 * (v8 + a3 % 10)) >> 10);
    *(v4 + 32) = -1;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 84) = 0u;
    *(v4 + 100) = 1;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0x7FFFFFFF;
    result = v4 + 144;
    a1[4] = v4 + 144;
    a1[4] = v4 + 144;
  }

  return result;
}

uint64_t sub_64EB9C(uint64_t result, char *a2, int a3)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    v6 = result;
    v7 = a2[23];
    v21 = v7;
    v19 = *(a2 + 1);
    v20 = *a2;
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = a2[23];
    }

    else
    {
      v9 = *(a2 + 1);
    }

    if (v9)
    {
      do
      {
        v12 = *(v3 + 23);
        if ((v12 & 0x80u) == 0)
        {
          v13 = v3;
        }

        else
        {
          v13 = *v3;
        }

        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v3 + 8);
        }

        if (v12 >= v9)
        {
          v14 = v13 + v12;
          v15 = *v8;
          result = v13;
          do
          {
            v16 = v12 - v9;
            if (v16 == -1)
            {
              break;
            }

            result = memchr(result, v15, v16 + 1);
            if (!result)
            {
              break;
            }

            v17 = result;
            result = memcmp(result, v8, v9);
            if (!result)
            {
              if (v17 == v14 || v17 - v13 == -1)
              {
                break;
              }

              goto LABEL_9;
            }

            result = v17 + 1;
            v12 = v14 - (v17 + 1);
          }

          while (v12 >= v9);
        }

        v3 += 24;
      }

      while (v3 != v4);
    }

    else
    {
LABEL_9:
      v24 = a3;
      v23 = 3;
      v10 = v6[4];
      if (v10 >= v6[5])
      {
        result = sub_6518AC(v6 + 3, a2, &v23, &v24);
      }

      else
      {
        if (v21 < 0)
        {
          sub_325C(v6[4], v20, v19);
        }

        else
        {
          v11 = *a2;
          *(v10 + 16) = *(a2 + 2);
          *v10 = v11;
        }

        *(v10 + 24) = 3;
        if (a3 < 0)
        {
          v18 = -5;
        }

        else
        {
          v18 = 5;
        }

        *(v10 + 28) = a3 / 10 + (((103 * (v18 + a3 % 10)) >> 15) & 1) + ((103 * (v18 + a3 % 10)) >> 10);
        *(v10 + 32) = -1;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 84) = 0u;
        *(v10 + 100) = 1;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0x7FFFFFFF;
        result = v10 + 144;
        v6[4] = v10 + 144;
      }

      v6[4] = result;
    }
  }

  return result;
}

uint64_t sub_64EDA4(uint64_t result, char *a2, int a3)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    v6 = result;
    v7 = a2[23];
    v21 = v7;
    v19 = *(a2 + 1);
    v20 = *a2;
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = a2[23];
    }

    else
    {
      v9 = *(a2 + 1);
    }

    if (v9)
    {
      do
      {
        v12 = *(v3 + 23);
        if ((v12 & 0x80u) == 0)
        {
          v13 = v3;
        }

        else
        {
          v13 = *v3;
        }

        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v3 + 8);
        }

        if (v12 >= v9)
        {
          v14 = v13 + v12;
          v15 = *v8;
          result = v13;
          do
          {
            v16 = v12 - v9;
            if (v16 == -1)
            {
              break;
            }

            result = memchr(result, v15, v16 + 1);
            if (!result)
            {
              break;
            }

            v17 = result;
            result = memcmp(result, v8, v9);
            if (!result)
            {
              if (v17 == v14 || v17 - v13 == -1)
              {
                break;
              }

              goto LABEL_9;
            }

            result = v17 + 1;
            v12 = v14 - (v17 + 1);
          }

          while (v12 >= v9);
        }

        v3 += 24;
      }

      while (v3 != v4);
    }

    else
    {
LABEL_9:
      v24 = a3;
      v23 = 4;
      v10 = v6[4];
      if (v10 >= v6[5])
      {
        result = sub_6518AC(v6 + 3, a2, &v23, &v24);
      }

      else
      {
        if (v21 < 0)
        {
          sub_325C(v6[4], v20, v19);
        }

        else
        {
          v11 = *a2;
          *(v10 + 16) = *(a2 + 2);
          *v10 = v11;
        }

        *(v10 + 24) = 4;
        if (a3 < 0)
        {
          v18 = -5;
        }

        else
        {
          v18 = 5;
        }

        *(v10 + 28) = a3 / 10 + (((103 * (v18 + a3 % 10)) >> 15) & 1) + ((103 * (v18 + a3 % 10)) >> 10);
        *(v10 + 32) = -1;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 84) = 0u;
        *(v10 + 100) = 1;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0x7FFFFFFF;
        result = v10 + 144;
        v6[4] = v10 + 144;
      }

      v6[4] = result;
    }
  }

  return result;
}

void sub_64EFAC(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  if (a1[4] < a1[5])
  {
    sub_64A7E4(a1[4], a2, a3);
  }

  sub_651ACC(a1 + 3, a2, a3);
}

uint64_t sub_64F00C(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 24);
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_4:
    v3 = *a1;
    if (*a1)
    {
      goto LABEL_5;
    }

    return a1;
  }

LABEL_9:
  v5 = *(a1 + 32);
  if (v5 == v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
    v3 = *a1;
    if (!*a1)
    {
      return a1;
    }

    goto LABEL_5;
  }

  do
  {
    v6 = *(v5 - 9);
    v5 -= 4;
    if (v6 < 0)
    {
      operator delete(*v5);
    }
  }

  while (v5 != v2);
  v7 = *(a1 + 24);
  *(a1 + 32) = v2;
  operator delete(v7);
  v3 = *a1;
  if (*a1)
  {
LABEL_5:
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_64F0DC(uint64_t a1, uint64_t a2, void *a3, __int128 **a4, __int128 *a5, __int128 *a6, uint64_t a7, const void ***a8)
{
  LOBYTE(__p) = 0;
  sub_64C770(a1, a2, a8, a7, &__p);
  sub_64AB44(&__p, a3, a4, a5, a6);
  v14 = *(a1 + 32);
  if (v14 < *(a1 + 40))
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 32), *a2, *(a2 + 8));
    }

    else
    {
      v15 = *a2;
      *(v14 + 16) = *(a2 + 16);
      *v14 = v15;
    }

    *(v14 + 24) = 11;
    *(v14 + 28) = -1;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    operator new();
  }

  sub_651C40((a1 + 24), a2, &__p);
}

void sub_64F2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 32) = v10;
  sub_64F00C(&a9);
  _Unwind_Resume(a1);
}

void sub_64F2E8(uint64_t a1, uint64_t a2, int a3)
{
  sub_55BD50(v5, a2);
  v6 = 0;
  v7 = a3;
  sub_64F334((a1 + 96), v5);
}

void sub_64F438(uint64_t a1, uint64_t a2)
{
  sub_55BD50(v3, a2);
  v4 = 0x7FFFFFFF00000001;
  sub_64F334((a1 + 96), v3);
}

void sub_64F488(uint64_t a1, uint64_t a2)
{
  v6 = -16711169;
  sub_64BB54(v3, a2, &v6);
  sub_55BD50(v4, v3);
  v5 = 0x7FFFFFFF00000001;
  sub_64F334((a1 + 96), v4);
}

uint64_t sub_64F510(void *a1, uint64_t a2, float a3)
{
  v9 = 12;
  v8 = a3;
  v4 = a1[4];
  if (v4 >= a1[5])
  {
    result = sub_5C3E64(a1 + 3, a2, &v9, &v8);
    a1[4] = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v7 = a3;
      sub_325C(a1[4], *a2, *(a2 + 8));
      a3 = v7;
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 16);
      *v4 = v5;
    }

    *(v4 + 24) = 12;
    *(v4 + 28) = -1;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0;
    *(v4 + 96) = a3;
    *(v4 + 100) = 1;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0x7FFFFFFF;
    result = v4 + 144;
    a1[4] = v4 + 144;
    a1[4] = v4 + 144;
  }

  return result;
}

uint64_t sub_64F608(void *a1, uint64_t a2, float a3)
{
  v9 = 15;
  v8 = a3;
  v4 = a1[4];
  if (v4 >= a1[5])
  {
    result = sub_5C3E64(a1 + 3, a2, &v9, &v8);
    a1[4] = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v7 = a3;
      sub_325C(a1[4], *a2, *(a2 + 8));
      a3 = v7;
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 16);
      *v4 = v5;
    }

    *(v4 + 24) = 15;
    *(v4 + 28) = -1;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0;
    *(v4 + 96) = a3;
    *(v4 + 100) = 1;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0x7FFFFFFF;
    result = v4 + 144;
    a1[4] = v4 + 144;
    a1[4] = v4 + 144;
  }

  return result;
}

void sub_64F700(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  if (a1[4] < a1[5])
  {
    sub_64A8E0(a1[4], a2, a3);
  }

  sub_651E34(a1 + 3, a2, a3);
}

void sub_64F760(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  if (a1[4] < a1[5])
  {
    sub_64AA10(a1[4], a2, a3);
  }

  sub_651FA8(a1 + 3, a2, a3);
}

uint64_t sub_64F7C0(uint64_t a1, const void **__s2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    return 0;
  }

  if (*(__s2 + 23) >= 0)
  {
    v5 = *(__s2 + 23);
  }

  else
  {
    v5 = __s2[1];
  }

  if ((*(__s2 + 23) & 0x80) != 0)
  {
    v6 = *__s2;
    while (1)
    {
      v11 = *(v2 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v2 + 8);
      }

      if (v11 == v5)
      {
        v13 = v12 >= 0 ? v2 : *v2;
        if (!memcmp(v13, v6, v5))
        {
          break;
        }
      }

      v2 += 144;
      if (v2 == v3)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 == v5)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(v9, __s2, v5))
        {
          break;
        }
      }

      v2 += 144;
      if (v2 == v3)
      {
        return 0;
      }
    }

    return 1;
  }
}

uint64_t sub_64F8CC(uint64_t a1, const void **__s2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v2 == v3)
  {
    return 0;
  }

  if (*(__s2 + 23) >= 0)
  {
    v5 = *(__s2 + 23);
  }

  else
  {
    v5 = __s2[1];
  }

  if ((*(__s2 + 23) & 0x80) != 0)
  {
    v11 = *__s2;
    v12 = *(__s2 + 24);
    while (1)
    {
      v13 = *(v2 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v2 + 8);
      }

      if (v13 == v5)
      {
        v15 = v14 >= 0 ? v2 : *v2;
        if (!memcmp(v15, v11, v5) && *(v2 + 24) == v12)
        {
          break;
        }
      }

      v2 += 32;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  else
  {
    v6 = *(__s2 + 24);
    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 == v5)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(v9, __s2, v5) && *(v2 + 24) == v6)
        {
          break;
        }
      }

      v2 += 32;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_64FA0C(char ***a1, char *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = a2[23];
    if (v4 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (v4 >= 0)
    {
      v6 = a2[23];
    }

    else
    {
      v6 = *(a2 + 1);
    }

    if (!v6)
    {
      return 1;
    }

    do
    {
      v8 = *(v2 + 23);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v2;
      }

      else
      {
        v9 = *v2;
      }

      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v2 + 8);
      }

      if (v8 >= v6)
      {
        v10 = &v9[v8];
        v11 = *v5;
        v12 = v9;
        do
        {
          v13 = v8 - v6;
          if (v13 == -1)
          {
            break;
          }

          v14 = memchr(v12, v11, v13 + 1);
          if (!v14)
          {
            break;
          }

          v15 = v14;
          if (!memcmp(v14, v5, v6))
          {
            if (v15 == v10 || v15 - v9 == -1)
            {
              break;
            }

            return 1;
          }

          v12 = v15 + 1;
          v8 = v10 - (v15 + 1);
        }

        while (v8 >= v6);
      }

      v2 += 24;
    }

    while (v2 != v3);
  }

  return 0;
}

void **sub_64FB18(uint64_t a1, void ***a2, const void **a3)
{
  v5 = a1 + 112;
  if (v5 == a2)
  {
    goto LABEL_10;
  }

  if (*(a1 + 135) < 0)
  {
    v8 = a2[1];
    if (*(a2 + 23) >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v9 = v8;
    }

    sub_13B38(v5, a2, v9);
LABEL_10:
    result = (a1 + 136);
    if ((a1 + 136) == a3)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    sub_13A68(v5, *a2, a2[1]);
    result = (a1 + 136);
    if ((a1 + 136) == a3)
    {
      return result;
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = a2[2];
    *v5 = v6;
    result = (a1 + 136);
    if ((a1 + 136) == a3)
    {
      return result;
    }
  }

LABEL_11:
  v10 = *(a3 + 23);
  if (*(a1 + 159) < 0)
  {
    if (v10 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (v10 >= 0)
    {
      v13 = *(a3 + 23);
    }

    else
    {
      v13 = a3[1];
    }

    return sub_13B38(result, v12, v13);
  }

  else if ((*(a3 + 23) & 0x80) != 0)
  {
    v14 = *a3;
    v15 = a3[1];

    return sub_13A68(result, v14, v15);
  }

  else
  {
    v11 = *a3;
    result[2] = a3[2];
    *result = v11;
  }

  return result;
}

void sub_64FC28(uint64_t a1, char *a2, const void **a3, char a4, _BYTE *a5)
{
  if (*(a1 + 108) != 1)
  {
    return;
  }

  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v7 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v10 = *(a1 + 8);
  if (v7 + 3 >= 0x17)
  {
    operator new();
  }

  v64.__r_.__value_.__r.__words[2] = 0;
  *&v64.__r_.__value_.__l.__data_ = 0x3A737BuLL;
  *(&v64.__r_.__value_.__s + 23) = v7 + 3;
  if (v7)
  {
    if ((v6 & 0x80u) == 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    memmove(v64.__r_.__value_.__r.__words + 3, v11, v7);
  }

  *(v64.__r_.__value_.__r.__words + v7 + 3) = 0;
  size = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v64.__r_.__value_.__l.__size_;
    v14 = (v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v14 == v64.__r_.__value_.__l.__size_)
    {
      if ((v64.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

LABEL_18:
      operator new();
    }

    v13 = v64.__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = &v64;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) == 22)
    {
      goto LABEL_18;
    }
  }

  v13->__r_.__value_.__s.__data_[size] = 125;
  v15 = size + 1;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    v64.__r_.__value_.__l.__size_ = v15;
  }

  else
  {
    *(&v64.__r_.__value_.__s + 23) = v15 & 0x7F;
  }

  v13->__r_.__value_.__s.__data_[v15] = 0;
  v65 = v64;
  memset(&v64, 0, sizeof(v64));
  v16 = a2[23];
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = a2[23];
  }

  else
  {
    v18 = *(a2 + 1);
  }

  v19 = std::string::append(&v65, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v22 = __p.__r_.__value_.__l.__size_;
    v23 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v23 - __p.__r_.__value_.__l.__size_ < 4)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 4 - v23)
      {
        sub_3244();
      }

LABEL_34:
      operator new();
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_) = 980627323;
    v25 = v22 + 4;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 19) < 4)
    {
      goto LABEL_34;
    }

    p_p = &__p;
    *(&__p.__r_.__value_.__l.__data_ + SHIBYTE(__p.__r_.__value_.__r.__words[2])) = 980627323;
    v25 = v21 + 4;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_36:
      *(&__p.__r_.__value_.__s + 23) = v25 & 0x7F;
      goto LABEL_39;
    }
  }

  __p.__r_.__value_.__l.__size_ = v25;
LABEL_39:
  p_p->__r_.__value_.__s.__data_[v25] = 0;
  v67 = __p;
  memset(&__p, 0, sizeof(__p));
  v26 = *(a3 + 23);
  if (v26 >= 0)
  {
    v27 = a3;
  }

  else
  {
    v27 = *a3;
  }

  if (v26 >= 0)
  {
    v28 = *(a3 + 23);
  }

  else
  {
    v28 = a3[1];
  }

  v29 = std::string::append(&v67, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v60 = v29->__r_.__value_.__r.__words[2];
  *__s2 = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = SHIBYTE(v60);
  if ((SHIBYTE(v60) & 0x8000000000000000) != 0)
  {
    v31 = __s2[1];
    v33 = ((v60 & 0x7FFFFFFFFFFFFFFFLL) - 1);
    if (v33 == __s2[1])
    {
      if ((v60 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

LABEL_50:
      operator new();
    }

    v32 = __s2[0];
  }

  else
  {
    v32 = __s2;
    if (SHIBYTE(v60) == 22)
    {
      goto LABEL_50;
    }
  }

  *(v31 + v32) = 125;
  v34 = v31 + 1;
  if (SHIBYTE(v60) < 0)
  {
    __s2[1] = v34;
  }

  else
  {
    HIBYTE(v60) = v34 & 0x7F;
  }

  *(v34 + v32) = 0;
  *v62 = *__s2;
  v63 = v60;
  __s2[1] = 0;
  v60 = 0;
  __s2[0] = 0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_75:
      operator delete(v65.__r_.__value_.__l.__data_);
      v35 = (v10 - 24);
      if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

LABEL_76:
      operator delete(v64.__r_.__value_.__l.__data_);
      goto LABEL_59;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_75;
  }

LABEL_58:
  v35 = (v10 - 24);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_76;
  }

LABEL_59:
  v36 = *(v10 - 1);
  v37 = *(v10 - 16);
  if ((v36 & 0x80u) == 0)
  {
    v38 = v35;
  }

  else
  {
    v38 = *(v10 - 24);
  }

  if ((v36 & 0x80u) != 0)
  {
    v36 = v37;
  }

  v39 = a2[23];
  if (v39 >= 0)
  {
    v40 = a2;
  }

  else
  {
    v40 = *a2;
  }

  if (v39 >= 0)
  {
    v41 = a2[23];
  }

  else
  {
    v41 = *(a2 + 1);
  }

  if (v41)
  {
    if (v36 >= v41)
    {
      v47 = v38 + v36;
      v48 = *v40;
      v49 = v38;
      do
      {
        v50 = v36 - v41;
        if (v50 == -1)
        {
          break;
        }

        v51 = memchr(v49, v48, v50 + 1);
        if (!v51)
        {
          break;
        }

        v52 = v51;
        if (!memcmp(v51, v40, v41))
        {
          v42 = 0;
          if (v52 == v47)
          {
            v43 = a5;
            goto LABEL_85;
          }

          v44 = v52 - v38;
          v56 = v52 - v38 == -1;
          v43 = a5;
          if (v56)
          {
            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v49 = (v52 + 1);
        v36 = v47 - (v52 + 1);
      }

      while (v36 >= v41);
    }

    v42 = 0;
    v43 = a5;
  }

  else
  {
    v44 = 0;
    v43 = a5;
LABEL_78:
    if (v63 >= 0)
    {
      v45 = v62;
    }

    else
    {
      v45 = v62[0];
    }

    if (v63 >= 0)
    {
      v46 = HIBYTE(v63);
    }

    else
    {
      v46 = v62[1];
    }

    std::string::replace(v35, v44, v41, v45, v46);
    v42 = 1;
  }

LABEL_85:
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  else if ((v42 & 1) == 0)
  {
    return;
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C(__s2, *a3, a3[1]);
  }

  else
  {
    *__s2 = *a3;
    v60 = a3[2];
  }

  LOBYTE(v61) = a4;
  HIBYTE(v61) = *v43;
  if ((sub_64F8CC(a1, __s2) & 1) == 0)
  {
    v53 = *(a1 + 80);
    if (v53 >= *(a1 + 88))
    {
      v55 = sub_65211C((a1 + 72), __s2);
    }

    else
    {
      if (SHIBYTE(v60) < 0)
      {
        sub_325C(*(a1 + 80), __s2[0], __s2[1]);
      }

      else
      {
        v54 = *__s2;
        *(v53 + 16) = v60;
        *v53 = v54;
      }

      *(v53 + 24) = v61;
      v55 = v53 + 32;
      *(a1 + 80) = v53 + 32;
    }

    *(a1 + 80) = v55;
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(__s2[0]);
  }
}

void sub_6503C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  *(v42 + 80) = v43;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6504AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    JUMPOUT(0x65043CLL);
  }

  JUMPOUT(0x650494);
}

uint64_t sub_6504BC(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_55BD50(a1, a2);
  *(result + 160) = a3;
  return result;
}

unint64_t sub_6504E4(unint64_t *a1, _DWORD *a2, uint64_t a3, char *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v4 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * ((a1[1] - *a1) >> 3);
  v19 = v7;
  v8 = *a4;
  *v7 = *a2;
  v9 = (v7 + 8);
  if (*(a3 + 23) < 0)
  {
    sub_325C(v9, *a3, *(a3 + 8));
    *(v7 + 32) = v8;
    v11 = v7 + 40;
    v12 = *a1;
    v13 = a1[1];
    v14 = v19 + *a1 - v13;
    if (*a1 == v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v9 = *a3;
    *(v7 + 24) = *(a3 + 16);
    v10 = v7;
    *(v7 + 32) = v8;
    v11 = v7 + 40;
    v12 = *a1;
    v13 = a1[1];
    v14 = v10 + *a1 - v13;
    if (*a1 == v13)
    {
      goto LABEL_21;
    }
  }

  v15 = v12;
  v16 = v14;
  do
  {
    *v16 = *v15;
    v17 = *(v15 + 8);
    *(v16 + 24) = *(v15 + 24);
    *(v16 + 8) = v17;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 8) = 0;
    *(v16 + 32) = *(v15 + 32);
    v15 += 40;
    v16 += 40;
  }

  while (v15 != v13);
  do
  {
    if (*(v12 + 31) < 0)
    {
      operator delete(*(v12 + 8));
    }

    v12 += 40;
  }

  while (v12 != v13);
  v12 = *a1;
LABEL_21:
  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_6506C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C5440(va);
  _Unwind_Resume(a1);
}

void sub_6506D8(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

uint64_t sub_650710(uint64_t *a1, uint64_t a2, char *a3, int *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v7 = 0x1C71C71C71C71C7;
  }

  else
  {
    v7 = v5;
  }

  v20 = a1;
  if (v7)
  {
    if (v7 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 144 * v4;
  __p = 0;
  v17 = v8;
  v18 = v8;
  v19 = 0;
  v9 = *a3;
  v10 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
    v11 = v18;
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
    v11 = v8;
  }

  *(v8 + 24) = v9;
  *(v8 + 28) = v10;
  *(v8 + 32) = -1;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 84) = 0u;
  *(v8 + 100) = 1;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0x7FFFFFFF;
  v18 = v11 + 144;
  sub_5C3FE0(a1, &__p);
  v12 = a1[1];
  v14 = v17;
  for (i = v18; v18 != v14; i = v18)
  {
    v18 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_6508D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6508E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_53F320(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_650938(uint64_t *a1, uint64_t a2, char *a3, int *a4, int *a5)
{
  v5 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v8 = 0x1C71C71C71C71C7;
  }

  else
  {
    v8 = v6;
  }

  v22 = a1;
  if (v8)
  {
    if (v8 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = 144 * v5;
  __p = 0;
  v19 = v9;
  v20 = v9;
  v21 = 0;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v9, *a2, *(a2 + 8));
    v13 = v20;
  }

  else
  {
    *v9 = *a2;
    *(v9 + 16) = *(a2 + 16);
    v13 = v9;
  }

  *(v9 + 24) = v10;
  *(v9 + 28) = v11;
  *(v9 + 32) = v12;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 1;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0x7FFFFFFF;
  v20 = v13 + 144;
  sub_5C3FE0(a1, &__p);
  v14 = a1[1];
  v16 = v19;
  for (i = v20; v20 != v16; i = v20)
  {
    v20 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_650B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_650B18(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 144 * v2;
  v13 = 0;
  sub_55C01C(144 * v2, a2);
  v12 = 144 * v2 + 144;
  sub_5C3FE0(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_650C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_650C7C(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v4)
    {
      v4 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v5 = 0x1C71C71C71C71C7;
    }

    else
    {
      v5 = v4;
    }

    v8 = a1;
    if (v5)
    {
      if (v5 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v6 = 144 * v3;
    v7 = 0;
    sub_64A0C8(144 * v3, a2, a3);
  }

  sub_1794();
}

void sub_650DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_650DF0(uint64_t *a1, __int128 *a2, unsigned int *a3, __int128 *a4, uint64_t a5)
{
  v5 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v5 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v5)
    {
      v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v6 = 0x1C71C71C71C71C7;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      if (v6 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    sub_64A368(16 * ((a1[1] - *a1) >> 4), a2, *a3, a4, a5);
  }

  sub_1794();
}

void sub_650F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_650F7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v3 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
    {
      v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v4 = 0x1C71C71C71C71C7;
    }

    else
    {
      v4 = v3;
    }

    if (v4)
    {
      if (v4 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v5 = 16 * ((a1[1] - *a1) >> 4);
    if (*(a2 + 23) < 0)
    {
      sub_325C(v5, *a2, *(a2 + 8));
    }

    else
    {
      *v5 = *a2;
      *(v5 + 16) = *(a2 + 16);
    }

    *(v5 + 24) = 9;
    *(v5 + 28) = -1;
    operator new();
  }

  sub_1794();
}

void sub_651174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_65118C(uint64_t *a1, __int128 *a2, char *a3, _DWORD *a4, uint64_t a5, char *a6)
{
  v6 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v7)
  {
    v7 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v9 = 0x1C71C71C71C71C7;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 144 * v6;
  v16 = 144 * v6;
  v17 = 0;
  sub_649CFC(144 * v6, a2, *a3, a4, a5, *a6);
  v16 = 144 * v6 + 144;
  sub_5C3FE0(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_65130C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_651320(uint64_t *a1, __int128 *a2, char *a3, void *a4, __int128 *a5, char *a6)
{
  v6 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v7)
  {
    v7 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v9 = 0x1C71C71C71C71C7;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 144 * v6;
  v16 = 144 * v6;
  v17 = 0;
  sub_649EC8(144 * v6, a2, *a3, a4, a5, *a6);
  v16 = 144 * v6 + 144;
  sub_5C3FE0(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_6514A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6514B4(uint64_t *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v8 = 0x1C71C71C71C71C7;
  }

  else
  {
    v8 = v5;
  }

  v21 = a1;
  if (v8)
  {
    if (v8 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = 144 * v4;
  __p = 0;
  v18 = v9;
  v19 = v9;
  v20 = 0;
  v10 = *a3;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v9, *a2, *(a2 + 8));
    v11 = v19;
  }

  else
  {
    *v9 = *a2;
    *(v9 + 16) = *(a2 + 16);
    v11 = v9;
  }

  *(v9 + 24) = 1;
  if (v10 < 0)
  {
    v12 = -50;
  }

  else
  {
    v12 = 50;
  }

  *(v9 + 28) = v10 / 100 + ((5243 * (v12 + v10 % 100)) >> 19) + ((5243 * (v12 + v10 % 100)) >> 31);
  *(v9 + 32) = -1;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = *a4;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0x7FFFFFFF;
  v19 = v11 + 144;
  sub_5C3FE0(a1, &__p);
  v13 = a1[1];
  v15 = v18;
  for (i = v19; v19 != v15; i = v19)
  {
    v19 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v13;
}

void sub_6516CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6516E0(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v4;
  }

  v18 = a1;
  if (v6)
  {
    if (v6 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 144 * v3;
  __p = 0;
  v15 = v7;
  v16 = v7;
  v17 = 0;
  v8 = *a3;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
    v9 = v16;
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
    v9 = v7;
  }

  *(v7 + 24) = 0;
  *(v7 + 28) = v8;
  *(v7 + 32) = -1;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 84) = 0u;
  *(v7 + 100) = 1;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0x7FFFFFFF;
  v16 = v9 + 144;
  sub_5C3FE0(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_651898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6518AC(uint64_t *a1, uint64_t a2, char *a3, int *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v7 = 0x1C71C71C71C71C7;
  }

  else
  {
    v7 = v5;
  }

  v21 = a1;
  if (v7)
  {
    if (v7 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 144 * v4;
  __p = 0;
  v18 = v8;
  v19 = v8;
  v20 = 0;
  v9 = *a3;
  v10 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
    v11 = v19;
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
    v11 = v8;
  }

  *(v8 + 24) = v9;
  if (v10 < 0)
  {
    v12 = -5;
  }

  else
  {
    v12 = 5;
  }

  *(v8 + 28) = v10 / 10 + (((103 * (v12 + v10 % 10)) >> 15) & 1) + ((103 * (v12 + v10 % 10)) >> 10);
  *(v8 + 32) = -1;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 84) = 0u;
  *(v8 + 100) = 1;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0x7FFFFFFF;
  v19 = v11 + 144;
  sub_5C3FE0(a1, &__p);
  v13 = a1[1];
  v15 = v18;
  for (i = v19; v19 != v15; i = v19)
  {
    v19 = i - 144;
    sub_53F320(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v13;
}

void sub_651AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_651ACC(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v4)
    {
      v4 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v5 = 0x1C71C71C71C71C7;
    }

    else
    {
      v5 = v4;
    }

    v8 = a1;
    if (v5)
    {
      if (v5 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v6 = 144 * v3;
    v7 = 0;
    sub_64A7E4(144 * v3, a2, a3);
  }

  sub_1794();
}

void sub_651C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_651C40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v3 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
    {
      v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v4 = 0x1C71C71C71C71C7;
    }

    else
    {
      v4 = v3;
    }

    if (v4)
    {
      if (v4 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v5 = 16 * ((a1[1] - *a1) >> 4);
    if (*(a2 + 23) < 0)
    {
      sub_325C(v5, *a2, *(a2 + 8));
    }

    else
    {
      *v5 = *a2;
      *(v5 + 16) = *(a2 + 16);
    }

    *(v5 + 24) = 11;
    *(v5 + 28) = -1;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    operator new();
  }

  sub_1794();
}

void sub_651E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_651E34(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v4)
    {
      v4 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v5 = 0x1C71C71C71C71C7;
    }

    else
    {
      v5 = v4;
    }

    v8 = a1;
    if (v5)
    {
      if (v5 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v6 = 144 * v3;
    v7 = 0;
    sub_64A8E0(144 * v3, a2, a3);
  }

  sub_1794();
}

void sub_651F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_651FA8(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 <= 0x1C71C71C71C71C7)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v4)
    {
      v4 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v5 = 0x1C71C71C71C71C7;
    }

    else
    {
      v5 = v4;
    }

    v8 = a1;
    if (v5)
    {
      if (v5 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v6 = 144 * v3;
    v7 = 0;
    sub_64AA10(144 * v3, a2, a3);
  }

  sub_1794();
}

void sub_652108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_65211C(__int128 **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 32 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  v9 = v8;
  *(v8 + 24) = *(a2 + 24);
  v10 = v8 + 32;
  v11 = *a1;
  v12 = a1[1];
  v13 = *a1 + v9 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      *(v15 + 24) = *(v14 + 12);
      v14 += 2;
      v15 += 32;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v11 += 2;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_6522BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4BB0B8(va);
  _Unwind_Resume(a1);
}

void sub_65533C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_36:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_37:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_38:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_39:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_40:
              operator delete(a70);
              if ((a69 & 0x80000000) == 0)
              {
LABEL_41:
                if (a67 < 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_44;
              }

LABEL_34:
              operator delete(a68);
              if (a67 < 0)
              {
LABEL_42:
                operator delete(a66);
                if ((a65 & 0x80000000) == 0)
                {
                  goto LABEL_43;
                }

                goto LABEL_45;
              }

LABEL_44:
              if ((a65 & 0x80000000) == 0)
              {
LABEL_43:
                _Unwind_Resume(a1);
              }

LABEL_45:
              operator delete(a63);
              _Unwind_Resume(a1);
            }

LABEL_33:
            if ((a69 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_36;
  }

  goto LABEL_29;
}

void sub_6555D0(uint64_t a1, uint64_t a2)
{
  nullsub_1();
  v5 = *v4;
  v6 = *(v4 + 8);
  if (*v4 != v6)
  {
    do
    {
      sub_655638(a1, a2, v5);
      v5 += 1582;
    }

    while (v5 != v6);
  }
}

void sub_655638(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[942];
  v7 = a3[943];
  while (v6 != v7)
  {
    v8 = sub_681D38(v6);
    sub_65576C(a1, a2, v8, &__p);
    sub_681CEC(v6, &__p);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    v6 += 448;
  }

  v9 = a3[138];
  v10 = a3[139];
  while (v9 != v10)
  {
    v11 = *(v9 + 1912);
    v12 = *(v9 + 1920);
    while (v11 != v12)
    {
      v13 = sub_681D38(v11);
      sub_65576C(a1, a2, v13, &__p);
      sub_681CEC(v11, &__p);
      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      v11 += 448;
    }

    v9 += 2616;
  }
}

void sub_655738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_65576C(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 < 0x4B)
  {
    goto LABEL_2;
  }

  if (a3 > 85)
  {
    if (a3 - 86 <= 3)
    {
LABEL_2:
      v7 = 0;
      sub_DD38(a4, &v7);
    }
  }

  else
  {
    if (a3 - 77 < 9)
    {
      v7 = 1;
      sub_DD38(a4, &v7);
      v7 = 0;
      sub_DD38(a4, &v7);
      return;
    }

    if (a3 == 75)
    {
      if (*(a2 + 2422) == 1)
      {
        v5 = a1;
        v6 = a2;
        v7 = 0;
        sub_DD38(a4, &v7);
        a2 = v6;
        a1 = v5;
      }

      if (*(*a1 + 1527) == 1 && *(a2 + 2421) == 1)
      {
        goto LABEL_11;
      }
    }

    else if (a3 == 76)
    {
LABEL_11:
      v7 = 1;
      sub_DD38(a4, &v7);
    }
  }
}

void sub_65588C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_6558BC()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_279D748 = 0u;
  unk_279D758 = 0u;
  dword_279D768 = 1065353216;
  sub_3A9A34(&xmmword_279D748, v0, v0);
  sub_3A9A34(&xmmword_279D748, v3, v3);
  sub_3A9A34(&xmmword_279D748, __p, __p);
  sub_3A9A34(&xmmword_279D748, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_279D720 = 0;
    qword_279D728 = 0;
    qword_279D718 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_655B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_279D730)
  {
    qword_279D738 = qword_279D730;
    operator delete(qword_279D730);
  }

  _Unwind_Resume(exception_object);
}

void sub_655BB0(uint64_t a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = (**a1 + 704 * *(a1 + 8));
  sub_737E50(v7 + 72, a3 + 968, &v41);
  sub_737E50(v7 + 65, a3 + 968, &v39);
  sub_737E50(v7 + 68, a3 + 968, &v37);
  if (SHIBYTE(v40) < 0)
  {
    sub_325C(v15, v39, *(&v39 + 1));
  }

  else
  {
    *v15 = v39;
    v16 = v40;
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v18 = v38;
  }

  sub_6585C0(a4, (v7 + 64), &v41, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v15[0]);
LABEL_9:
  v36 = a3;
  sub_655F94(&v36, a2, v15);
  v8 = a4[43];
  if (v8 >= a4[44])
  {
    sub_659C58(a4 + 42, v15);
    v13 = SHIBYTE(v35);
    a4[43] = v14;
    if (v13 < 0)
    {
      operator delete(v34[0]);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_22;
      }
    }

    else if (SHIBYTE(v33) < 0)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (SHIBYTE(v31) < 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    sub_33D5A0(v15);
    if (SHIBYTE(v38) < 0)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (SHIBYTE(v40) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *v8 = *v15;
  *(v8 + 16) = v16;
  v15[0] = 0;
  v15[1] = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = *__p;
  *(v8 + 40) = v18;
  *(v8 + 48) = 0;
  v16 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = v19;
  v19 = 0uLL;
  *(v8 + 64) = v20;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 72) = v21;
  *(v8 + 88) = v22;
  *(v8 + 96) = 0;
  v20 = 0;
  v21 = 0uLL;
  v22 = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = v23;
  *(v8 + 112) = v24;
  v23 = 0uLL;
  v9 = v26;
  *(v8 + 120) = v25;
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 144) = v27;
  *(v8 + 160) = v28;
  v24 = 0;
  v27 = 0uLL;
  v28 = 0;
  *(v8 + 168) = v29;
  v10 = *v30;
  *(v8 + 192) = v31;
  *(v8 + 176) = v10;
  v30[0] = 0;
  v30[1] = 0;
  v11 = *v32;
  *(v8 + 216) = v33;
  *(v8 + 200) = v11;
  v32[1] = 0;
  v33 = 0;
  v31 = 0;
  v32[0] = 0;
  v12 = *v34;
  *(v8 + 240) = v35;
  *(v8 + 224) = v12;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  a4[43] = v8 + 248;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  operator delete(v32[0]);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  operator delete(v30[0]);
  sub_33D5A0(v15);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
LABEL_25:
    operator delete(v39);
    if (v42 < 0)
    {
      goto LABEL_26;
    }

    return;
  }

LABEL_17:
  if (v42 < 0)
  {
LABEL_26:
    operator delete(v41);
  }
}

void sub_655EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v14 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v14 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v14 - 120));
  if ((*(v14 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v14 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v14 - 96));
  if ((*(v14 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v14 - 72));
  _Unwind_Resume(exception_object);
}

void sub_655F94(void *a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X8>)
{
  sub_737E50(a2 + 6, *a1 + 968, &v14);
  sub_737E50(a2 + 9, *a1 + 968, v12);
  sub_737E50(a2 + 12, *a1 + 968, v10);
  if (SHIBYTE(v13) < 0)
  {
    sub_325C(v6, v12[0], v12[1]);
  }

  else
  {
    *v6 = *v12;
    v7 = v13;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_325C(__p, v10[0], v10[1]);
  }

  else
  {
    *__p = *v10;
    v9 = v11;
  }

  sub_65833C(a3, a2, &v14, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v6[0]);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v10[0]);
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v14);
    return;
  }

LABEL_16:
  operator delete(v12[0]);
  if (v15 < 0)
  {
    goto LABEL_17;
  }
}

void sub_6560F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v30 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a25);
  if ((*(v30 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v30 - 56));
  _Unwind_Resume(exception_object);
}

void ***sub_6561A8(uint64_t a1)
{
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
    if ((*(a1 + 223) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 199) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 223) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 200));
  if ((*(a1 + 199) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = a1;

    return sub_33D5A0(v2);
  }

LABEL_9:
  operator delete(*(a1 + 176));
  v2 = a1;

  return sub_33D5A0(v2);
}

void sub_65623C(uint64_t a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = (**a1 + 704 * *(a1 + 8));
  sub_73B5F8(v7 + 72, a3 + 968, &v41);
  sub_73B5F8(v7 + 65, a3 + 968, &v39);
  sub_73B5F8(v7 + 68, a3 + 968, &v37);
  if (SHIBYTE(v40) < 0)
  {
    sub_325C(v15, v39, *(&v39 + 1));
  }

  else
  {
    *v15 = v39;
    v16 = v40;
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v18 = v38;
  }

  sub_6585C0(a4, (v7 + 64), &v41, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v15[0]);
LABEL_9:
  v36 = a3;
  sub_656620(&v36, a2, v15);
  v8 = a4[43];
  if (v8 >= a4[44])
  {
    sub_659C58(a4 + 42, v15);
    v13 = SHIBYTE(v35);
    a4[43] = v14;
    if (v13 < 0)
    {
      operator delete(v34[0]);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_22;
      }
    }

    else if (SHIBYTE(v33) < 0)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (SHIBYTE(v31) < 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    sub_33D5A0(v15);
    if (SHIBYTE(v38) < 0)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (SHIBYTE(v40) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *v8 = *v15;
  *(v8 + 16) = v16;
  v15[0] = 0;
  v15[1] = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = *__p;
  *(v8 + 40) = v18;
  *(v8 + 48) = 0;
  v16 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = v19;
  v19 = 0uLL;
  *(v8 + 64) = v20;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 72) = v21;
  *(v8 + 88) = v22;
  *(v8 + 96) = 0;
  v20 = 0;
  v21 = 0uLL;
  v22 = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = v23;
  *(v8 + 112) = v24;
  v23 = 0uLL;
  v9 = v26;
  *(v8 + 120) = v25;
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 144) = v27;
  *(v8 + 160) = v28;
  v24 = 0;
  v27 = 0uLL;
  v28 = 0;
  *(v8 + 168) = v29;
  v10 = *v30;
  *(v8 + 192) = v31;
  *(v8 + 176) = v10;
  v30[0] = 0;
  v30[1] = 0;
  v11 = *v32;
  *(v8 + 216) = v33;
  *(v8 + 200) = v11;
  v32[1] = 0;
  v33 = 0;
  v31 = 0;
  v32[0] = 0;
  v12 = *v34;
  *(v8 + 240) = v35;
  *(v8 + 224) = v12;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  a4[43] = v8 + 248;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  operator delete(v32[0]);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  operator delete(v30[0]);
  sub_33D5A0(v15);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
LABEL_25:
    operator delete(v39);
    if (v42 < 0)
    {
      goto LABEL_26;
    }

    return;
  }

LABEL_17:
  if (v42 < 0)
  {
LABEL_26:
    operator delete(v41);
  }
}

void sub_656544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v14 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v14 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v14 - 120));
  if ((*(v14 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v14 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v14 - 96));
  if ((*(v14 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v14 - 72));
  _Unwind_Resume(exception_object);
}

void sub_656620(void *a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X8>)
{
  sub_73B5F8(a2 + 6, *a1 + 968, &v14);
  sub_73B5F8(a2 + 9, *a1 + 968, v12);
  sub_73B5F8(a2 + 12, *a1 + 968, v10);
  if (SHIBYTE(v13) < 0)
  {
    sub_325C(v6, v12[0], v12[1]);
  }

  else
  {
    *v6 = *v12;
    v7 = v13;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_325C(__p, v10[0], v10[1]);
  }

  else
  {
    *__p = *v10;
    v9 = v11;
  }

  sub_65833C(a3, a2, &v14, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v6[0]);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v10[0]);
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v14);
    return;
  }

LABEL_16:
  operator delete(v12[0]);
  if (v15 < 0)
  {
    goto LABEL_17;
  }
}