void *sub_2394EC31C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 > 26)
  {
    switch(a3)
    {
      case 34:
        v9 = a1[1875];
        if (v9 <= a1[1879])
        {
          v9 = a1[1879];
        }

        goto LABEL_16;
      case 28:
        v9 = a1[1878];
LABEL_16:
        v10 = 1000 * v9;
        goto LABEL_17;
      case 27:
        v7 = sub_2393D9044(9u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = a1[1874];
          LODWORD(buf) = 67109120;
          HIDWORD(buf) = v8;
          _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Setting wifi connection time min = %u", &buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(9, 2, "Setting wifi connection time min = %u", a1[1874]);
        }

        v9 = a1[1874];
        goto LABEL_16;
    }

LABEL_12:
    v10 = 2000;
    goto LABEL_17;
  }

  v10 = 7000;
  if (a3 != 15 && a3 != 19)
  {
    goto LABEL_12;
  }

LABEL_17:
  result = (*(*a2 + 48))(&buf, a2);
  if (buf == 1)
  {
    v13 = sub_238EA9094(&buf, v12);
    result = sub_239495550(*v13, v10, 1);
    v14 = buf;
    if (result <= 0x7530)
    {
      v15 = 30000;
    }

    else
    {
      v15 = result;
    }

    *a4 = 1;
    *(a4 + 4) = v15;
    if (v14)
    {
      return (*(*v18 + 32))(v18);
    }
  }

  else
  {
    if (v10 <= 0x7530)
    {
      v16 = 30000;
    }

    else
    {
      v16 = v10;
    }

    *a4 = 1;
    *(a4 + 4) = v16;
  }

  return result;
}

void sub_2394EC510(uint64_t a1, unsigned __int8 *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(9u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    *buf = 67109120;
    v6 = v4;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "ExtendFailsafe received ArmFailSafe response errorCode=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "ExtendFailsafe received ArmFailSafe response errorCode=%u", *a2);
  }
}

void sub_2394EC5DC()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(9u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v3 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "ExtendFailsafe received failure response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v1 = sub_2393C9138();
    sub_2393D5320(9, 2, "ExtendFailsafe received failure response: %s", v1);
  }
}

uint64_t sub_2394EC6CC(uint64_t a1, unsigned __int8 *a2)
{
  result = 0;
  v4 = *a2;
  if (v4 <= 0x1A)
  {
    if (v4 != 23)
    {
      if (v4 != 24)
      {
        return result;
      }

      return *(a1 + 1876);
    }

    return *(a1 + 1872);
  }

  if (v4 == 28)
  {
    return *(a1 + 1876);
  }

  if (v4 == 27)
  {
    return *(a1 + 1872);
  }

  return result;
}

uint64_t sub_2394EC714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Invalid DeviceCommissioner", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Invalid DeviceCommissioner");
    }

    v7 = 0x25800000000;
    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_14:
    v11 = sub_2393D9044(9u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Device proxy secure session error", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Device proxy secure session error");
    }

    v7 = 0x26500000000;
LABEL_19:
    v12 = 47;
    return v12 | v7;
  }

  (*(*a3 + 48))(buf, a3);
  if (buf[0] != 1)
  {
    if (*(a2 + 4368) == 29)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  (*(*v19 + 32))(v19);
LABEL_11:
  *(a1 + 705) = 0;
  *(a1 + 712) = a2;
  *(a1 + 720) = a3;
  (*(*a3 + 48))(buf, a3);
  if (buf[0])
  {
    (*(*v19 + 32))(v19);
    (*(**(a1 + 720) + 48))(buf);
    v9 = sub_238DE36B8(buf, v8);
    v10 = *(sub_239495304(*v9) + 112);
    if (buf[0] == 1)
    {
      (*(*v19 + 32))(v19);
    }
  }

  else
  {
    v10 = 1;
  }

  v14 = v10 == 2 || v10 == 5;
  *(a1 + 1856) = v14;
  *buf = 0;
  v19 = 0;
  v15 = sub_2394EB7EC(a1, *(a2 + 4368), buf);
  sub_2394EC31C(a1, *(a1 + 720), v15, v17);
  sub_239508128();
  v7 = 0;
  v12 = 0;
  return v12 | v7;
}

unint64_t sub_2394ECA4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, __int128 *a8, uint64_t a9)
{
  v15 = a1 + 2472;
  v24 = a1 + 2472;
  v25 = 400;
  v16 = sub_2394A1510(a6, a7, &v24);
  v17 = v16;
  if (!v16)
  {
    sub_238DB6950(&v23, v24, v25);
    *(a1 + 320) = 1;
    *(a1 + 328) = v23;
    *&v23 = a1 + 2072;
    *(&v23 + 1) = 400;
    v19 = sub_2394A1510(a2, a3, &v23);
    if (v19)
    {
LABEL_4:
      v18 = v19 & 0xFFFFFFFF00000000;
LABEL_10:
      v17 = v19;
      return v17 | v18;
    }

    sub_238DB6950(&v22, v23, *(&v23 + 1));
    *(a1 + 344) = 1;
    *(a1 + 352) = v22;
    sub_2394EC31C(a1, *(a1 + 720), 18, &v22);
    sub_239508128();
    if (a5)
    {
      *&v22 = v15;
      *(&v22 + 1) = 400;
      v19 = sub_2394A1510(a4, a5, &v22);
      if (v19)
      {
        goto LABEL_4;
      }

      sub_238DB6950(&v21, v22, *(&v22 + 1));
      *(a1 + 368) = 1;
      *(a1 + 376) = v21;
    }

    else
    {
      *(a1 + 368) = 1;
      *(a1 + 376) = 0;
      *(a1 + 384) = 0;
    }

    sub_2394ECBE8(a1 + 8, a8);
    v18 = 0;
    LODWORD(v19) = 0;
    *(a1 + 416) = 1;
    *(a1 + 424) = a9;
    goto LABEL_10;
  }

  v18 = v16 & 0xFFFFFFFF00000000;
  return v17 | v18;
}

uint64_t sub_2394ECBE8(uint64_t a1, __int128 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a1 + 384) == 1)
  {
    sub_2393F9144(a1 + 385, 16);
  }

  *(a1 + 384) = 1;
  *(a1 + 385) = v4;
  sub_2393F9144(&v4, 16);
  return a1;
}

double sub_2394ECC80(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (sub_2394EC11C(a1, a2) && *(a1 + 704) == 1)
  {
    *(a1 + 704) = 0;
  }

  *(a1 + 2000) = 0;
  v3 = *(a1 + 1992);
  if (v3)
  {
    j__free(v3);
    *(a1 + 1992) = 0;
  }

  *(a1 + 1984) = 0;
  v4 = *(a1 + 1976);
  if (v4)
  {
    j__free(v4);
    *(a1 + 1976) = 0;
  }

  *(a1 + 720) = 0;
  v7 = 0u;
  v6 = &unk_284BBBF18;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  *(a1 + 744) = 0u;
  sub_239495B38(a1 + 760, &v6);
  *(a1 + 800) = v9;
  *(a1 + 808) = v10;
  sub_239495880(&v6);
  *(a1 + 1864) = 0;
  *(a1 + 1872) = 0xFFFF0000FFFFLL;
  *(a1 + 1880) = -1;
  *(a1 + 1882) = 0u;
  *(a1 + 1898) = 514;
  *(a1 + 1900) = 0;
  *(a1 + 1908) = 257;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = 1;
  *(a1 + 1937) = 0;
  *(a1 + 1921) = 0u;
  *(a1 + 1944) = 0;
  result = 0.0;
  *(a1 + 1952) = 0u;
  *(a1 + 1968) = 0;
  return result;
}

unint64_t sub_2394ECE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v91 = *MEMORY[0x277D85DE8];
  *&v88 = a2;
  *(&v88 + 1) = a3;
  v82 = 0;
  v84 = 0;
  v86 = 0;
  v80 = 0;
  v79 = v88;
  v7 = sub_2393D9044(9u);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2394F2C88(*(a4 + 112));
      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Error on commissioning step '%s': '%s'", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v11 = sub_2394F2C88(*(a4 + 112));
      v12 = sub_2393C9138();
      sub_2393D5320(9, 1, "Error on commissioning step '%s': '%s'", v11, v12);
    }

    v13 = *(a4 + 112);
    v80 = 1;
    v81 = v13;
    v14 = *a4;
    if (*a4 == 8)
    {
      v30 = *sub_2394ED958(a4, v10);
      v86 = 1;
      v87 = v30;
      if (sub_2394EC1A4(a1, v31))
      {
        if (!v88)
        {
          v79 = v88;
        }

        v88 = 0uLL;
        v32 = 34;
LABEL_49:
        *(a4 + 112) = v32;
        goto LABEL_74;
      }
    }

    else if (v14 == 7)
    {
      v29 = *sub_2394ED934(a4, v10);
      v84 = 1;
      v85 = v29;
    }

    else if (v14 == 6)
    {
      v15 = *sub_2394ED910(a4, v10);
      v82 = 1;
      v83 = v15;
      if (*sub_2394ED910(a4, v16) == 306 || *sub_2394ED910(a4, v17) == 305)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed device attestation. Device vendor and/or product ID do not match the IDs expected. Verify DAC certificate chain and certification declaration to ensure spec rules followed.", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "Failed device attestation. Device vendor and/or product ID do not match the IDs expected. Verify DAC certificate chain and certification declaration to ensure spec rules followed.");
        }
      }

      if (*(a4 + 112) == 12)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed verifying attestation information. Now checking DAC chain revoked status.", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "Failed verifying attestation information. Now checking DAC chain revoked status.");
        }

        v88 = 0uLL;
        goto LABEL_74;
      }
    }

    if (!sub_2394EC11C(a1, v10) || (*(a1 + 704) & 1) != 0 || *sub_2393ECAEC(&v80, v33) < 0x17u || *sub_2393ECAEC(&v80, v34) > 0x21u)
    {
      goto LABEL_74;
    }

    *(a1 + 704) = 1;
    v88 = 0uLL;
    v32 = 36;
    goto LABEL_49;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_2394F2C88(*(a4 + 112));
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Successfully finished commissioning step '%s'", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v20 = sub_2394F2C88(*(a4 + 112));
    sub_2393D5320(9, 2, "Successfully finished commissioning step '%s'", v20);
  }

  v21 = *(a4 + 112);
  if (v21 <= 0xE)
  {
    if (*(a4 + 112) <= 8u)
    {
      if (v21 == 2)
      {
        v51 = sub_2394ED97C(a4, v19);
        v53 = *(v51 + 1);
        v52 = *(v51 + 2);
        *(a1 + 1864) = *v51;
        *(a1 + 1880) = v53;
        *(a1 + 1896) = v52;
        v55 = *(v51 + 4);
        v54 = *(v51 + 5);
        v56 = *(v51 + 3);
        *(a1 + 1960) = v51[12];
        *(a1 + 1928) = v55;
        *(a1 + 1944) = v54;
        *(a1 + 1912) = v56;
        if ((*(a1 + 8) & 1) == 0)
        {
          v57 = *(a1 + 1896);
          if (v57)
          {
            *(a1 + 8) = 1;
            *(a1 + 10) = v57;
          }
        }

        v58 = *(a1 + 1884);
        *(a1 + 544) = 1;
        *(a1 + 546) = v58;
        v59 = *(a1 + 1886);
        *(a1 + 548) = 1;
        *(a1 + 550) = v59;
        LOBYTE(v59) = *(a1 + 1898);
        *(a1 + 552) = 1;
        *(a1 + 553) = v59;
        LOBYTE(v59) = *(a1 + 1899);
        *(a1 + 554) = 1;
        *(a1 + 555) = v59;
        *(a1 + 1968) = 0;
        LOBYTE(v59) = *(a1 + 1920);
        *(a1 + 556) = 1;
        *(a1 + 557) = v59;
        if (*(a1 + 677) == 1)
        {
          v60 = *(a1 + 1912);
          if (v60)
          {
            *(a1 + 528) = 1;
            *(a1 + 536) = v60;
          }
        }

        *(a1 + 1969) = 0;
        if (*(a1 + 676))
        {
          if (*(a1 + 1928) == 1 && *(a1 + 1929) == 1)
          {
            *(a1 + 1969) = 1;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "AutoCommissioner: ICD supports the check-in protocol.", buf, 2u);
            }

            if (sub_2393D5398(3u))
            {
              sub_2393D5320(9, 3, "AutoCommissioner: ICD supports the check-in protocol.");
            }
          }

          else if (*(a1 + 668) == 1)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "AutoCommissioner: Clear ICD StayActiveDurationMsec", buf, 2u);
            }

            if (sub_2393D5398(3u))
            {
              sub_2393D5320(9, 3, "AutoCommissioner: Clear ICD StayActiveDurationMsec");
            }

            *(a1 + 668) = 0;
          }
        }
      }

      else if (v21 == 6)
      {
        *(a1 + 1968) = *sub_2394ED9A0(a4, v19);
      }

      goto LABEL_74;
    }

    switch(v21)
    {
      case 9u:
        *v90 = *sub_23949EAFC(a4, v19);
        sub_2394ED9C4(a1 + 1992, v90);
        sub_238DB9BD8(buf, *(a1 + 1992), *(a1 + 2000));
        sub_238DB6950(buf, *buf, *&buf[8]);
        *(a1 + 480) = 1;
        *(a1 + 488) = *buf;
        goto LABEL_74;
      case 0xAu:
        *v90 = *sub_23949EAFC(a4, v19);
        sub_2394ED9C4(a1 + 1976, v90);
        sub_238DB9BD8(buf, *(a1 + 1976), *(a1 + 1984));
        sub_238DB6950(buf, *buf, *&buf[8]);
        *(a1 + 504) = 1;
        *(a1 + 512) = *buf;
        goto LABEL_74;
      case 0xBu:
        v22 = sub_23949EB1C(a4, v19);
        v24 = sub_23949EB1C(a4, v23);
        v25 = v22[1];
        if (v25 >= 0x385)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = v25;
            *&buf[8] = 1024;
            *&buf[10] = 900;
            _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "AutoCommissioner attestationElements buffer size %u larger than cache size %u", buf, 0xEu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(9, 1, "AutoCommissioner attestationElements buffer size %u larger than cache size %u", v22[1], 900);
          }

          v26 = 0x37000000000;
LABEL_101:
          LODWORD(v50) = 4;
          return v50 | v26;
        }

        v69 = v24;
        memcpy((a1 + 2874), *v22, v22[1]);
        *(a1 + 2872) = v22[1];
        sub_238DB6950(buf, a1 + 2874, v22[1]);
        *(a1 + 432) = 1;
        v70 = (a1 + 440);
        *(a1 + 440) = *buf;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v72 = v22[1];
          buf[0] = 1;
          *&buf[8] = *v70;
          v73 = *(sub_238DE36B8(buf, v71) + 1);
          *v90 = 67109376;
          *&v90[4] = v72;
          *&v90[8] = 1024;
          *&v90[10] = v73;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "AutoCommissioner setting attestationElements buffer size %u/%u", v90, 0xEu);
        }

        if (sub_2393D5398(3u))
        {
          v75 = *(v22 + 2);
          buf[0] = *(a1 + 432);
          if (buf[0] == 1)
          {
            *&buf[8] = *v70;
          }

          v76 = sub_238DE36B8(buf, v74);
          sub_2393D5320(9, 3, "AutoCommissioner setting attestationElements buffer size %u/%u", v75, *(v76 + 1));
        }

        v77 = v69[3];
        if (v77 >= 0x41)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = v77;
            *&buf[8] = 1024;
            *&buf[10] = 64;
            _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "AutoCommissioner attestationSignature buffer size %u larger than cache size %u", buf, 0xEu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(9, 1, "AutoCommissioner attestationSignature buffer size %u larger than cache size %u", v69[3], 64);
          }

          v26 = 0x37F00000000;
          goto LABEL_101;
        }

        memcpy((a1 + 3776), v69[2], v69[3]);
        *(a1 + 3774) = v69[3];
        sub_238DB6950(buf, a1 + 3776, v69[3]);
        *(a1 + 456) = 1;
        *(a1 + 464) = *buf;
        v78 = *(a1 + 728);
        if (!v78)
        {
          goto LABEL_74;
        }

        *buf = a1 + 2040;
        *&buf[8] = 32;
        v50 = (*(*v78 + 40))(v78, buf);
        if (!v50)
        {
          sub_238DB6950(v90, a1 + 2040, 32);
          *(a1 + 136) = 1;
          *(a1 + 144) = *v90;
          goto LABEL_74;
        }

LABEL_86:
        v26 = v50 & 0xFFFFFFFF00000000;
        return v50 | v26;
    }

    goto LABEL_74;
  }

  if (*(a4 + 112) <= 0x1Du)
  {
    if (v21 == 15)
    {
      *buf = *sub_2394EDA44(a4, v19);
      v62 = *(sub_2394EDA44(a4, v61) + 1);
      *(a1 + 280) = 1;
      *(a1 + 288) = *buf;
      *(a1 + 304) = v62;
      goto LABEL_74;
    }

    if (v21 == 17)
    {
      v35 = sub_2394EDA68(a4, v19);
      v36 = *v35;
      v37 = v35[1];
      v39 = sub_2394EDA68(a4, v38);
      v40 = v39[2];
      v41 = v39[3];
      v43 = sub_2394EDA68(a4, v42);
      v44 = v43[4];
      v45 = v43[5];
      v47 = sub_2394EDA68(a4, v46)[6];
      v49 = sub_2394EDA68(a4, v48);
      v50 = sub_2394ECA4C(a1, v36, v37, v40, v41, v44, v45, v47, v49[7]);
      goto LABEL_86;
    }

LABEL_74:
    v63 = sub_2394EB7EC(a1, *(a4 + 112), &v88);
    if (!v63)
    {
      v26 = 0x3B000000000;
      LODWORD(v50) = 3;
      return v50 | v26;
    }

    if (!v79)
    {
      v79 = v88;
    }

    *(a1 + 560) = v79;
    v64 = v80;
    *(a1 + 576) = v80;
    if (v64 == 1)
    {
      *(a1 + 577) = v81;
    }

    v65 = v82;
    *(a1 + 578) = v82;
    if (v65 == 1)
    {
      *(a1 + 580) = v83;
    }

    v66 = v84;
    *(a1 + 582) = v84;
    if (v66 == 1)
    {
      *(a1 + 583) = v85;
    }

    v67 = v86;
    *(a1 + 584) = v86;
    if (v67 == 1)
    {
      *(a1 + 585) = v87;
    }

    v50 = sub_2394EDAB0(a1, v63);
    goto LABEL_86;
  }

  if (v21 - 30 < 2)
  {
    v27 = sub_2394EDA8C(a4, v19);
    *(a1 + 744) = v27[1];
    *(a1 + 752) = v27[2];
    sub_239495AE0(a1 + 760, (v27 + 3));
    v28 = *(v27 + 72);
    *(a1 + 800) = v27[8];
    *(a1 + 808) = v28;
    goto LABEL_74;
  }

  if (v21 != 40)
  {
    goto LABEL_74;
  }

  (*(*a1 + 56))(a1);
  v26 = 0;
  LODWORD(v50) = 0;
  return v50 | v26;
}

void *sub_2394ED910(void *a1, uint64_t a2)
{
  if (*a1 != 6)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394ED934(void *a1, uint64_t a2)
{
  if (*a1 != 7)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394ED958(void *a1, uint64_t a2)
{
  if (*a1 != 8)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394ED97C(void *a1, uint64_t a2)
{
  if (*a1 != 5)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394ED9A0(void *a1, uint64_t a2)
{
  if (*a1 != 9)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

uint64_t sub_2394ED9C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_2393C56C0(a1, *(a2 + 8));
    v5 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v3;
LABEL_7:
      memcpy(v5, *a2, v3);
      return a1;
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    v6 = *a1;
    if (*a1)
    {
      j__free(v6);
      *a1 = 0;
    }
  }

  return a1;
}

void *sub_2394EDA44(void *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394EDA68(void *a1, uint64_t a2)
{
  if (*a1 != 3)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394EDA8C(void *a1, uint64_t a2)
{
  if (*a1 != 4)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

uint64_t sub_2394EDAB0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xFE) == 0x20 || a2 == 40 && *(a1 + 800))
  {
    v4 = a1 + 736;
LABEL_6:
    if (a2 == 7)
    {
      v17[0] = *(a1 + 48);
      if (v17[0] == 1)
      {
        v18 = *(a1 + 56);
      }

      if (*(sub_2394EB70C(v17, a2) + 1) > *(a1 + 1909))
      {
        v17[0] = *(a1 + 48);
        if (v17[0] == 1)
        {
          v18 = *(a1 + 56);
        }

        v10 = sub_2394EB70C(v17, v9);
        v11 = sub_2394EDD7C(v10, 0, *(a1 + 1909));
        *(a1 + 48) = 1;
        *(a1 + 56) = v11;
        *(a1 + 64) = v12;
      }
    }

    else if (a2 == 6)
    {
      v17[0] = *(a1 + 24);
      if (v17[0] == 1)
      {
        v18 = *(a1 + 32);
      }

      if (*(sub_2394EB70C(v17, a2) + 1) > *(a1 + 1908))
      {
        v17[0] = *(a1 + 24);
        if (v17[0] == 1)
        {
          v18 = *(a1 + 32);
        }

        v6 = sub_2394EB70C(v17, v5);
        v7 = sub_2394EDD2C(v6, 0, *(a1 + 1908));
        *(a1 + 24) = 1;
        *(a1 + 32) = v7;
        *(a1 + 40) = v8;
      }
    }

    sub_2394EC31C(a1, v4, v2, v17);
    sub_239508128();
    v13 = 0;
    v14 = 0;
    return v14 | v13;
  }

  v4 = *(a1 + 720);
  if (v4)
  {
    goto LABEL_6;
  }

  v16 = sub_2393D9044(9u);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Invalid device for commissioning", v17, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(9, 1, "Invalid device for commissioning");
  }

  v14 = 0x3CF00000000;
  v13 = 3;
  return v14 | v13;
}

uint64_t sub_2394EDD00(uint64_t a1, int a2)
{
  if ((a2 & 0xFE) == 0x20 || a2 == 40 && *(a1 + 800))
  {
    return a1 + 736;
  }

  else
  {
    return *(a1 + 720);
  }
}

uint64_t sub_2394EDD2C(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    sub_239531374();
  }

  if (v5 < a3)
  {
    sub_2395312DC();
  }

  sub_2394DB5F0(&v7, *a1 + 40 * a2, a3);
  return v7;
}

uint64_t sub_2394EDD7C(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    sub_239531374();
  }

  if (v5 < a3)
  {
    sub_2395312DC();
  }

  sub_2394DB5F0(&v7, *a1 + 32 * a2, a3);
  return v7;
}

void sub_2394EDDC8(void *a1)
{
  *a1 = &unk_284BBE888;
  sub_239495880((a1 + 3));

  JUMPOUT(0x23EE77B60);
}

void **sub_2394EDE2C(uint64_t a1)
{
  if ((*(*a1 + 72))(a1))
  {
    (*(*a1 + 48))(&v7, a1);
    v4 = sub_238DE36B8(&v7, v3);
    v5 = sub_239495304(*v4);
    sub_239493108(v5);
    if (v7 == 1)
    {
      (*(*v8 + 32))(v8);
    }
  }

  result = sub_239495804((a1 + 24), v2);
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

unint64_t sub_2394EDF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    v8 = sub_2393D9044(9u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Device Controller Factory already initialized...", v16, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Device Controller Factory already initialized...");
    }

    v9 = 0;
    v10 = 0;
  }

  else
  {
    *a1 = *(a2 + 106);
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 72);
    *(a1 + 32) = *(a2 + 80);
    *(a1 + 40) = *(a2 + 16);
    *(a1 + 48) = *(a2 + 88);
    *(a1 + 56) = *(a2 + 104);
    v11 = *(a2 + 80);
    v16[4] = *(a2 + 64);
    v16[5] = v11;
    v16[6] = *(a2 + 96);
    v17 = *(a2 + 112);
    v12 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v12;
    v13 = *(a2 + 48);
    v16[2] = *(a2 + 32);
    v16[3] = v13;
    v14 = sub_2394EE03C(a1, v16);
    v10 = v14 & 0xFFFFFFFF00000000;
    v9 = v14;
  }

  return v10 | v9;
}

unint64_t sub_2394EE03C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    sub_2394EF368(*(a1 + 8));
    sub_2394EF8B8(v4 + 21, 0);
    j__free(v4);
    *(a1 + 8) = 0;
  }

  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  if (qword_27DF7BD08 != -1)
  {
    sub_2395312BC(a1);
  }

  if ((byte_27DF7BCA8 & 1) == 0)
  {
    v5 = sub_239479BC4(&byte_27DF7BCA8);
    byte_27DF7BCA8 = v5 == 0;
    if (v5)
    {
      v6 = HIDWORD(v5);
      v7 = v5;
      return v7 | (v6 << 32);
    }
  }

  v87 = sub_239476328();
  v89 = sub_239477E68(v87, v8);
  v88 = sub_239477EA0(v89, v9);
  v10 = *(a2 + 106);
  v82 = v88;
  v83 = 2;
  v84 = v10;
  v85 = 0;
  v86 = 0;
  if (!*(a2 + 112))
  {
    v14 = sub_2393D9044(0x21u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v66) = 0;
    }

    if (sub_2393D5398(1u))
    {
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v66) = 0;
    }

    if (sub_2393D5398(1u))
    {
    }

    if (!*(a2 + 112))
    {
      v7 = 47;
      v6 = 148;
      goto LABEL_36;
    }

    if (!v87)
    {
      v7 = 47;
      v6 = 149;
      goto LABEL_36;
    }
  }

  if (!v89)
  {
    v7 = 47;
    v6 = 150;
    goto LABEL_36;
  }

  if (!*(a2 + 64) && !*(a2 + 80))
  {
    v7 = 47;
    v6 = 154;
    goto LABEL_36;
  }

  if (!*(a2 + 40))
  {
    v7 = 47;
    v6 = 155;
    goto LABEL_36;
  }

  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    xmmword_27DF7BC40 = 0u;
    *algn_27DF7BC50 = 0u;
    xmmword_27DF7BC60 = 0u;
    unk_27DF7BC70 = 0u;
    xmmword_27DF7BC90 = 0u;
    xmmword_27DF7BC80 = 0u;
    sub_2393CC8A4(&xmmword_27DF7BC40 + 8);
    *&xmmword_27DF7BC40 = &unk_284BBB510;
    *&xmmword_27DF7BC80 = &unk_284BBB540;
    *(&xmmword_27DF7BC90 + 1) = &unk_284BBB580;
  }

  *(&v90 + 1) = sub_2393F8DE0(&xmmword_27DF7BC40);
  if (!*(&v90 + 1))
  {
    v7 = 47;
    v6 = 166;
    goto LABEL_36;
  }

  v11 = sub_2393D52C4(0x3A8uLL);
  v12 = v11;
  if (v11)
  {
    bzero(v11 + 1, 0x3A0uLL);
    *v12 = &unk_284BBE900;
    v12[3] = &unk_284BBE958;
    sub_2394EFC9C((v12 + 5));
  }

  *(&v92 + 1) = v12;
  LOBYTE(v67) = 2;
  v66 = v89;
  DWORD1(v67) = 0;
  *(&v67 + 1) = 0;
  *buf = v89;
  WORD1(v67) = *(a2 + 106);
  v80 = 0;
  v81 = 0;
  v79 = WORD1(v67);
  v78 = 1;
  v75 = *(&v90 + 1);
  v76 = 1;
  v13 = sub_2394EEB94(v12, &v66, buf, &v75, &v82, &v74);
  v7 = v13;
  if (v13)
  {
    v6 = HIDWORD(v13);
    goto LABEL_36;
  }

  v17 = sub_2393D52C4(0x118uLL);
  if (v17)
  {
    sub_239495F50(v17);
  }

  *(&v93 + 1) = *(a2 + 16);
  *&v94 = v17;
  v18 = sub_2393D52C4(0x10uLL);
  if (v18)
  {
    *v18 = &unk_284BB8C20;
    v18[1] = &unk_284BB8C78;
  }

  *(&v94 + 1) = v18;
  v19 = sub_2393D52C4(0x138uLL);
  if (v19)
  {
    v19 = sub_239471D5C(v19);
  }

  *&v95 = v19;
  v20 = sub_2393D52C4(0x1740uLL);
  if (v20)
  {
    *v20 = &unk_284BBE148;
    v20[1] = &unk_284BBE1A0;
    v20[2] = &unk_284BBE1F0;
    v20[3] = 0;
    v21 = v20 + 52;
    v22 = 5920;
    do
    {
      *(v21 - 12) = 0;
      *(v21 - 20) = 0;
      *(v21 - 4) = 0;
      *(v21 - 1) = 5540;
      *v21 = 0;
      *(v21 + 1) = 0;
      *(v21 + 4) = 0;
      v21 += 40;
      v22 -= 40;
    }

    while (v22);
  }

  v23 = *(a2 + 24);
  *(&v95 + 1) = v20;
  *&v91 = v23;
  v24 = sub_2393D52C4(8uLL);
  if (v24)
  {
    *v24 = &unk_284BB7C68;
  }

  *&v99 = v24;
  v25 = sub_2393D52C4(0x50uLL);
  if (v25)
  {
    v25 = sub_2394D67EC(v25, v99);
  }

  v26 = *(a2 + 40);
  *(&v99 + 1) = v25;
  *(&v91 + 1) = v26;
  v27 = sub_2393D52C4(0x60uLL);
  if (v27)
  {
    *v27 = &unk_284BBE650;
    *(v27 + 4) = &unk_284BBE6A0;
    *(v27 + 72) = 0u;
    *(v27 + 40) = 0u;
    v27[88] = 0;
    *(v27 + 56) = 0u;
    *(v27 + 8) = v27 + 56;
    *(v27 + 9) = v27 + 56;
  }

  v28 = *(a2 + 64);
  *&v96 = v27;
  *&v90 = v28;
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v37 = sub_2394F164C();
    if (!v37)
    {
      v7 = 11;
      v6 = 226;
      goto LABEL_36;
    }

    v29 = v37;
    v66 = *(a2 + 8);
    v67 = *(a2 + 72);
    v38 = sub_2394AA264(v37, &v66);
    v39 = v38;
    if (v38)
    {
      v6 = HIDWORD(v38);
      sub_2394EF85C(v29);
      v7 = v39;
      goto LABEL_36;
    }

    *&v90 = v29;
  }

  v30 = *(a2 + 88);
  if (!v30)
  {
    v40 = sub_2393D52C4(0x10uLL);
    v32 = v40;
    if (v40)
    {
      *v40 = &off_284BB8B88;
      v40[1] = 0;
      v41 = *(a2 + 8);
      if (!v41)
      {
        off_284BB8B88();
        j__free(v32);
LABEL_80:
        v7 = 47;
        v6 = 41;
        goto LABEL_36;
      }
    }

    else
    {
      v41 = *(a2 + 8);
      if (!v41)
      {
        goto LABEL_80;
      }
    }

    v40[1] = v41;
    v42 = v93;
    *&v93 = v40;
    if (v42)
    {
      (**v42)(v42);
      j__free(v42);
      v30 = 0;
      v32 = v93;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_60;
  }

  v31 = v93;
  *&v93 = 0;
  if (v31)
  {
    (**v31)(v31);
    j__free(v31);
    v30 = *(a2 + 88);
  }

  v32 = v30;
LABEL_60:
  *&v92 = v30;
  v33 = sub_2393D52C4(0x20uLL);
  v34 = v33;
  if (v33)
  {
    *v33 = &unk_284BBED18;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = 0;
  }

  if (!v32)
  {
    v6 = 245;
    goto LABEL_74;
  }

  if (!v91)
  {
    v6 = 246;
LABEL_74:
    v36 = 47;
    v7 = 47;
    if (!v33)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

  v33[2] = v91;
  v33[3] = v32;
  *(&v98 + 1) = v33;
  v35 = sub_2394AAB28(v90, v33);
  v36 = v35;
  if (v35)
  {
    v6 = HIDWORD(v35);
LABEL_75:
    j__free(v34);
    v7 = v36;
    goto LABEL_36;
  }

  if (*(&v95 + 1))
  {
    v43 = *(&v95 + 1) + 16;
  }

  else
  {
    v43 = 0;
  }

  v44 = sub_239496184(v94, v87, *(&v92 + 1), v43, *(a2 + 8), v90, *(&v91 + 1));
  if (v44)
  {
    goto LABEL_94;
  }

  v44 = sub_239471D60(v95, v94);
  if (v44)
  {
    goto LABEL_94;
  }

  v44 = sub_2394E108C(*(&v95 + 1), v95);
  if (v44)
  {
    goto LABEL_94;
  }

  v44 = sub_2393F121C(*(&v94 + 1), v95);
  if (v44)
  {
    goto LABEL_94;
  }

  v44 = sub_2394E5D84(v96, v87, v95);
  if (v44)
  {
    goto LABEL_94;
  }

  v45 = sub_2394C7C20();
  sub_2394CC15C(v45, *(a2 + 112));
  v46 = sub_2394BA124();
  v44 = (*(*v46 + 16))(v46, v89);
  if (v44)
  {
    goto LABEL_94;
  }

  if (*(a2 + 104) == 1)
  {
    *(&v96 + 1) = sub_2394EEBFC();
    v44 = sub_2393DE11C(*(&v96 + 1), v95, v94, v90, v32, *(&v93 + 1), v91);
    if (v44)
    {
      goto LABEL_94;
    }

    v48 = sub_238DCAF30(v44, v47);
    v50 = sub_2394BF940(*(&v92 + 1) + 40, v49);
    *(v48 + 17) = v50;
    v52 = sub_238DCAF30(v50, v51);
    v54 = sub_2394BF940(*(&v92 + 1) + 72, v53);
    *(v52 + 18) = v54;
    v56 = sub_238DCAF30(v54, v55);
    v57 = sub_2394EEC20(v56, v90);
    v59 = sub_238DCAF30(v57, v58);
    *(v59 + 32) = v86;
  }

  sub_2394EEC3C();
  *(&v97 + 1) = v60;
  sub_2394EEC98();
  *&v98 = v61;
  v66 = v94;
  *&v67 = v32;
  *(&v67 + 1) = *(&v93 + 1);
  v68 = v95;
  v69 = v90;
  v70 = v91;
  v71 = 0;
  v72 = v61;
  v73 = *(&v97 + 1);
  sub_2394EECF4();
  *&v97 = v62;
  v44 = sub_2394C4894(v62, v87, &v66);
  if (!v44)
  {
    v44 = sub_2394C7C60(v45, v95, v90, *(&v99 + 1), v97, 0, 0);
    if (v44)
    {
      v6 = HIDWORD(v44);
    }

    else
    {
      v63 = sub_2394EED68(&v87);
      *(a1 + 8) = v63;
      v64 = *(a2 + 104);
      v63[22] = v29;
      *(v63 + 189) = v64;
      v65 = sub_2393D9044(9u);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v65, OS_LOG_TYPE_INFO, "System State Initialized...", buf, 2u);
      }

      LODWORD(v44) = sub_2393D5398(3u);
      if (v44)
      {
        sub_2393D5320(9, 3, "System State Initialized...");
        v6 = 0;
        LODWORD(v44) = 0;
      }

      else
      {
        v6 = 0;
      }
    }

    goto LABEL_95;
  }

LABEL_94:
  v6 = HIDWORD(v44);
LABEL_95:
  v7 = v44;
LABEL_36:
  v15 = v93;
  *&v93 = 0;
  if (v15)
  {
    (**v15)(v15);
    j__free(v15);
  }

  return v7 | (v6 << 32);
}

unint64_t sub_2394EEA8C(__int16 *a1)
{
  v3 = *(a1 + 1);
  if (v3)
  {
    if (*(v3 + 188) == 1)
    {
      v31 = v1;
      v32 = v2;
      v5 = *v3;
      v6 = v3[3];
      v21 = *a1;
      v7 = *(a1 + 2);
      v8 = *(a1 + 56);
      v9 = v3[15];
      v10 = v3[18];
      v11 = v3[9];
      v13 = *(a1 + 5);
      v12 = *(a1 + 6);
      v19 = *(v3 + 1);
      v20 = *(a1 + 12);
      v14 = sub_2394C7C20();
      v22[0] = v5;
      v22[1] = v7;
      v22[2] = v13;
      v22[3] = v9;
      v22[4] = 0;
      v22[5] = v10;
      v23 = v19;
      v24 = v11;
      v25 = v20;
      v26 = v12;
      v27 = v6;
      v28 = v8;
      v29 = v21;
      v30 = sub_2394C9128(v14);
      v15 = sub_2394EE03C(a1, v22);
      v16 = v15 & 0xFFFFFFFF00000000;
      v17 = v15;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }
  }

  else
  {
    v16 = 0x5100000000;
    v17 = 3;
  }

  return v16 | v17;
}

unint64_t sub_2394EEB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  result = sub_2394F14B0(a1 + 24, a1, a2, a3, a4, a5, a6);
  if (!result)
  {

    return sub_23949BF9C(a1, a1 + 24);
  }

  return result;
}

void *sub_2394EEBFC()
{
  result = sub_2393D52C4(0x318uLL);
  if (result)
  {
    return sub_2394F1848(result);
  }

  return result;
}

uint64_t sub_2394EEC20(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    sub_2395384D0();
  }

  *(result + 16) = a2;
  return result;
}

double sub_2394EEC3C()
{
  v0 = sub_2393D52C4(0x40uLL);
  if (v0)
  {
    *(v0 + 7) = 0;
    *v0 = &unk_284BBEDE8;
    result = 0.0;
    *(v0 + 40) = 0u;
    *(v0 + 8) = 0u;
    v0[56] = 0;
    *(v0 + 24) = 0u;
    *(v0 + 4) = v0 + 24;
    *(v0 + 5) = v0 + 24;
  }

  return result;
}

double sub_2394EEC98()
{
  v0 = sub_2393D52C4(0x40uLL);
  if (v0)
  {
    *(v0 + 7) = 0;
    *v0 = &unk_284BBEEB8;
    result = 0.0;
    *(v0 + 40) = 0u;
    *(v0 + 8) = 0u;
    v0[56] = 0;
    *(v0 + 24) = 0u;
    *(v0 + 4) = v0 + 24;
    *(v0 + 5) = v0 + 24;
  }

  return result;
}

double sub_2394EECF4()
{
  v0 = sub_2393D52C4(0x60uLL);
  if (v0)
  {
    v0[8] = 0;
    v0[9] = 0;
    *v0 = &unk_284BBD420;
    v0[1] = &unk_284BBD450;
    result = 0.0;
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 64) = 0;
    v0[10] = 0;
    v0[11] = 0;
  }

  return result;
}

void *sub_2394EED68(uint64_t a1)
{
  v2 = sub_2393D52C4(0xC0uLL);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 48);
    v13[2] = *(a1 + 32);
    v13[3] = v4;
    v5 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v5;
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    *(a1 + 72) = 0;
    v14 = v6;
    v15 = v7;
    v8 = *(a1 + 160);
    v20 = *(a1 + 144);
    v21 = v8;
    v22 = *(a1 + 176);
    v9 = *(a1 + 96);
    v16 = *(a1 + 80);
    v17 = v9;
    v10 = *(a1 + 128);
    v18 = *(a1 + 112);
    v19 = v10;
    sub_2394F2540(v2, v13);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (**v11)(v11);
      j__free(v11);
    }
  }

  return v3;
}

MTROTASoftwareUpdateProviderClusterApplyUpdateRequestParams *sub_2394EEE28(MTROTASoftwareUpdateProviderClusterApplyUpdateRequestParams *result, uint64_t a2, uint64_t a3)
{
  *(a2 + 16) = *a3;
  *(a2 + 24) = *(a3 + 8);
  *(a2 + 32) = *(a3 + 16);
  *(a2 + 40) = *(a3 + 24);
  *(a2 + 56) = *(a3 + 40);
  *(a2 + 72) = *(a3 + 56);
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 90) = *(a3 + 90);
  *(a2 + 91) = *(a3 + 91);
  *a2 = result->_updateToken;
  *(a2 + 94) = *(a3 + 72);
  *(a2 + 89) = *(a3 + 89);
  v4 = *(a3 + 92);
  v3 = (a3 + 92);
  if (v4 == 1)
  {
    result = sub_238DE36D8(v3, a2);
    *(a2 + 92) = 1;
    *(a2 + 93) = result->super.isa;
  }

  return result;
}

void sub_2394EEED0(uint64_t result, uint64_t a2)
{
  if (*(result + 56) == 1 && *(a2 + 36) != 0)
  {
    v4 = sub_238DCAF30(result, a2);

    sub_239528058(v4);
  }
}

unint64_t sub_2394EEF10(MTROTASoftwareUpdateProviderClusterApplyUpdateRequestParams *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 72))
  {
    v6 = sub_2394EEA8C(a1);
    v7 = v6;
    if (v6)
    {
      v8 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      v18[0] = 0;
      v16 = 0u;
      v17 = 0u;
      memset(&v18[8], 0, 48);
      *&v18[56] = 0x10000;
      v19 = 0;
      sub_2394EEE28(a1, &v16, a2);
      v11[2] = *v18;
      v11[3] = *&v18[16];
      *v12 = *&v18[32];
      *&v12[12] = *&v18[44];
      v11[0] = v16;
      v11[1] = v17;
      v13 = v19;
      if (v19 == 1)
      {
        v14 = v20;
      }

      v15 = v21;
      v9 = (*(*a3 + 32))(a3, v11);
      v7 = v9;
      v8 = v9 & 0xFFFFFFFF00000000;
      if (!v9)
      {
        sub_2394EEED0(a1, a3);
      }
    }
  }

  else
  {
    v8 = 0x17D00000000;
    v7 = 47;
  }

  return v7 | v8;
}

unint64_t sub_2394EF050(MTROTASoftwareUpdateProviderClusterApplyUpdateRequestParams *a1, int8x16_t *a2, void *a3)
{
  if (a2[4].i16[4])
  {
    v6 = sub_2394EEA8C(a1);
    v7 = v6;
    if (v6)
    {
      v8 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      v20[0] = 0;
      v18 = 0u;
      v19 = 0u;
      memset(&v20[8], 0, 48);
      *&v20[56] = 0x10000;
      v21 = 0;
      sub_2394EEE28(a1, &v18, a2);
      *&v24[0] = a2[5].i64[0];
      *(v24 + 8) = vextq_s8(a2[6], a2[6], 8uLL);
      v11[2] = *v20;
      v11[3] = *&v20[16];
      *v12 = *&v20[32];
      *&v12[12] = *&v20[44];
      v11[0] = v18;
      v11[1] = v19;
      v13 = v21;
      if (v21 == 1)
      {
        v14 = v22;
      }

      v15 = v23;
      v16 = v24[0];
      v17 = *&v24[1];
      v9 = sub_2394FAB20(a3, v11);
      v7 = v9;
      v8 = v9 & 0xFFFFFFFF00000000;
      if (!v9)
      {
        sub_2394EEED0(a1, a3);
      }
    }
  }

  else
  {
    v8 = 0x18F00000000;
    v7 = 47;
  }

  return v7 | v8;
}

unint64_t sub_2394EF198(uint64_t a1)
{
  if (*(a1 + 8))
  {
    if (qword_27DF7BD08 != -1)
    {
      sub_2395312BC(a1);
    }

    v1 = sub_239479C70(&byte_27DF7BCA8);
    v2 = v1 & 0xFFFFFFFF00000000;
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    if (!v1)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0x1A800000000;
    v3 = 3;
  }

  return v2 | v3;
}

uint64_t sub_2394EF218(uint64_t result)
{
  if (atomic_fetch_add((result + 184), 1u) == -1)
  {
    sub_239538600();
  }

  if (*(result + 188) == 1)
  {
    sub_239538568();
  }

  return result;
}

BOOL sub_2394EF25C(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 184), 0xFFFFFFFF);
  if (!add)
  {
    sub_239538698();
  }

  if (add == 1)
  {
    sub_2394EF368(a1);
  }

  return add == 1;
}

unint64_t sub_2394EF2A0(uint64_t a1)
{
  v2 = sub_2394EEA8C(a1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2394EF218(*(a1 + 8));
    LODWORD(v2) = 0;
    v3 = 0;
  }

  return v3 | v2;
}

double sub_2394EF314(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2394EF368(*(a1 + 8));
    sub_2394EF8B8(v2 + 21, 0);
    j__free(v2);
    *(a1 + 8) = 0;
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_2394EF368(uint64_t result)
{
  if (atomic_load((result + 184)))
  {
    sub_239538730();
  }

  v2 = result;
  if ((*(result + 188) & 1) == 0)
  {
    *(result + 188) = 1;
    v3 = sub_2393D9044(9u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v33 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "Shutting down the System State, this will teardown the CHIP Stack", v33, 2u);
    }

    v4 = sub_2393D5398(3u);
    if (v4)
    {
      sub_2393D5320(9, 3, "Shutting down the System State, this will teardown the CHIP Stack");
    }

    if (*(v2 + 176) && *(v2 + 189) == 1)
    {
      v6 = sub_238DCAF30(v4, v5);
      sub_23952855C(v6);
    }

    v7 = *(v2 + 152);
    if (v7)
    {
      v8 = *(v2 + 72);
      if (!v8 || (sub_2394AAB8C(v8, *(v2 + 152)), (v7 = *(v2 + 152)) != 0))
      {
        (**v7)(v7);
        j__free(v7);
      }

      *(v2 + 152) = 0;
    }

    v9 = *(v2 + 80);
    if (v9)
    {
      sub_2394E5EA8(v9);
      v10 = *(v2 + 80);
      if (v10)
      {
        (**v10)(*(v2 + 80));
        j__free(v10);
      }

      *(v2 + 80) = 0;
    }

    v11 = *(v2 + 88);
    if (v11)
    {
      sub_2393DF53C(v11);
      v12 = *(v2 + 88);
      if (v12)
      {
        (*(*v12 + 40))(*(v2 + 88));
        j__free(v12);
      }

      *(v2 + 88) = 0;
    }

    v13 = *(v2 + 96);
    if (v13)
    {
      sub_2394C4990(v13);
      v14 = *(v2 + 96);
      if (v14)
      {
        (**v14)(*(v2 + 96));
        j__free(v14);
      }

      *(v2 + 96) = 0;
    }

    v15 = *(v2 + 40);
    if (v15)
    {
      sub_2394962A4(v15);
    }

    v16 = *(v2 + 104);
    if (v16)
    {
      (*(*v16 + 40))(*(v2 + 104));
      j__free(v16);
      *(v2 + 104) = 0;
    }

    v17 = *(v2 + 112);
    if (v17)
    {
      (*(*v17 + 16))(*(v2 + 112));
      j__free(v17);
      *(v2 + 112) = 0;
    }

    v18 = sub_2394BA124();
    (*(*v18 + 32))(v18);
    v19 = sub_2394C7C20();
    sub_2394C7D48(v19);
    v20 = *(v2 + 32);
    if (v20)
    {
      sub_23949C058(*(v2 + 32));
      sub_2394F13C0((v20 + 24));
      v21 = *(v2 + 32);
      if (v21)
      {
        (**v21)(*(v2 + 32));
        j__free(v21);
      }

      *(v2 + 32) = 0;
    }

    v22 = *(v2 + 56);
    if (v22)
    {
      sub_239471DEC(v22);
    }

    v23 = *(v2 + 40);
    if (v23)
    {
      sub_23949609C(v23);
    }

    *v2 = 0u;
    *(v2 + 16) = 0u;
    v24 = *(v2 + 64);
    if (v24)
    {
      (**v24)(*(v2 + 64));
      j__free(v24);
      *(v2 + 64) = 0;
    }

    v25 = *(v2 + 56);
    if (v25)
    {
      (**v25)(*(v2 + 56));
      j__free(v25);
      *(v2 + 56) = 0;
    }

    v26 = *(v2 + 48);
    if (v26)
    {
      (**v26)(*(v2 + 48));
      j__free(v26);
      *(v2 + 48) = 0;
    }

    v27 = *(v2 + 40);
    if (v27)
    {
      (**v27)(*(v2 + 40));
      j__free(v27);
      *(v2 + 40) = 0;
    }

    v28 = *(v2 + 136);
    if (v28)
    {
      (**v28)(*(v2 + 136));
      j__free(v28);
      *(v2 + 136) = 0;
    }

    v29 = *(v2 + 128);
    if (v29)
    {
      (**v29)(*(v2 + 128));
      j__free(v29);
      *(v2 + 128) = 0;
    }

    v30 = *(v2 + 176);
    if (v30)
    {
      sub_2394AAA3C(v30);
      v31 = *(v2 + 176);
      if (v31)
      {
        sub_238DCCC50(v31 + 2432);
        for (i = 2280; i != -152; i -= 152)
        {
          sub_238DCCC50(v31 + i);
        }

        j__free(v31);
      }

      *(v2 + 176) = 0;
      *(v2 + 72) = 0;
    }

    if (qword_27DF7BD08 != -1)
    {
      sub_239531934(v30);
    }

    result = sub_239479268();
    byte_27DF7BCA8 = 0;
  }

  return result;
}

void sub_2394EF85C(void *a1)
{
  if (a1)
  {
    sub_238DCCC50(a1 + 2432);
    for (i = 2280; i != -152; i -= 152)
    {
      sub_238DCCC50(a1 + i);
    }

    j__free(a1);
  }
}

void sub_2394EF8B8(void (****a1)(void), void (***a2)(void))
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);

    j__free(v2);
  }
}

void *sub_2394EF928(void *a1)
{
  *a1 = &unk_284BBE900;
  a1[3] = &unk_284BBE958;
  sub_2394C33DC((a1 + 114));
  sub_2394F0660(a1 + 22);
  a1[13] = &unk_284BBE9C0;
  a1[15] = &unk_284BBEA40;
  v2 = a1[21];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[21] = 0;
  sub_2394C2690(a1 + 13);
  sub_2394BF248(a1 + 9);
  sub_2394BF248(a1 + 5);
  return a1;
}

void sub_2394EFA00(void *a1)
{
  *a1 = &unk_284BBE900;
  a1[3] = &unk_284BBE958;
  sub_2394C33DC((a1 + 114));
  sub_2394F0660(a1 + 22);
  a1[13] = &unk_284BBE9C0;
  a1[15] = &unk_284BBEA40;
  v2 = a1[21];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[21] = 0;
  sub_2394C2690(a1 + 13);
  sub_2394BF248(a1 + 9);
  sub_2394BF248(a1 + 5);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394EFAF8(void *a1)
{
  *a1 = &unk_284BBE958;
  sub_2394C33DC((a1 + 111));
  sub_2394F0660(a1 + 19);
  a1[10] = &unk_284BBE9C0;
  a1[12] = &unk_284BBEA40;
  v2 = a1[18];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[18] = 0;
  sub_2394C2690(a1 + 10);
  sub_2394BF248(a1 + 6);
  sub_2394BF248(a1 + 2);
  return a1;
}

void sub_2394EFBB0(void *a1)
{
  *a1 = &unk_284BBE958;
  sub_2394C33DC((a1 + 111));
  sub_2394F0660(a1 + 19);
  a1[10] = &unk_284BBE9C0;
  a1[12] = &unk_284BBEA40;
  v2 = a1[18];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[18] = 0;
  sub_2394C2690(a1 + 10);
  sub_2394BF248(a1 + 6);
  sub_2394BF248(a1 + 2);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394EFC9C(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_284BBD0A0;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = &unk_284BBD0A0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 1;
  *(a1 + 64) = &unk_284BBE9C0;
  *(a1 + 72) = 0;
  *(a1 + 80) = &unk_284BBEA40;
  *(a1 + 88) = 0;
  sub_2394EFFB8(a1 + 136);
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 872) = &unk_284BBEC28;
  return a1;
}

void *sub_2394EFD90(void *a1)
{
  *a1 = &unk_284BBE9C0;
  a1[2] = &unk_284BBEA40;
  v2 = a1[8];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[8] = 0;

  return sub_2394C2690(a1);
}

void sub_2394EFE10(void *a1)
{
  *a1 = &unk_284BBE9C0;
  a1[2] = &unk_284BBEA40;
  v2 = a1[8];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[8] = 0;
  sub_2394C2690(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394EFEA4(void *a1)
{
  v2 = a1 - 2;
  *(a1 - 2) = &unk_284BBE9C0;
  *a1 = &unk_284BBEA40;
  v3 = a1[6];
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  a1[6] = 0;

  return sub_2394C2690(v2);
}

void sub_2394EFF24(void *a1)
{
  v2 = a1 - 2;
  *(a1 - 2) = &unk_284BBE9C0;
  *a1 = &unk_284BBEA40;
  v3 = a1[6];
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  a1[6] = 0;
  sub_2394C2690(v2);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394EFFB8(uint64_t a1)
{
  v2 = 0;
  v11[4] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 28) = 10000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1 + 64;
  *(a1 + 48) = 4;
  *(a1 + 56) = a1 + 512;
  *a1 = &unk_284BBEAA8;
  do
  {
    v3 = a1 + v2;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 90) = 5540;
    *(v3 + 120) = 0;
    *(v3 + 100) = 0;
    *(v3 + 92) = 0;
    *(v3 + 108) = 0;
    *(v3 + 128) = 327705;
    v2 += 112;
    *(v3 + 168) = 0;
  }

  while (v2 != 448);
  *(a1 + 512) = &unk_284BBEB10;
  sub_2393D664C((a1 + 520), a1 + 576, a1 + 568, 4, 40);
  for (i = 64; i != 512; i += 112)
  {
    v6 = 0uLL;
    v7 = 0;
    v8 = 5540;
    v9 = 0;
    v10 = 0;
    v11[0] = &unk_284BBEBA8;
    v11[3] = v11;
    sub_2394C07E8(a1 + i, 0, &v6, v11);
    sub_2394C24D8(v11);
  }

  return a1;
}

void sub_2394F0148(void *a1)
{
  sub_2394F0660(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394F0180(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBEB10;
  sub_2394F0428(a1 + 1, a2);
  return a1;
}

void sub_2394F01C4(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBEB10;
  sub_2394F0428(a1 + 1, a2);

  JUMPOUT(0x23EE77B60);
}

__n128 sub_2394F0228(uint64_t a1, __n128 *a2, unint64_t *a3)
{
  v5 = (*(*a1 + 56))(a1);
  v6 = sub_2393D66C4(v5);
  if (v6)
  {
    result = *a2;
    v6[1].n128_u32[0] = a2[1].n128_u32[0];
    *v6 = result;
    v6[1].n128_u32[1] = a2[1].n128_u32[1];
    v6[1].n128_u64[1] = a2[1].n128_u64[1];
    v6[2].n128_u64[0] = *a3;
    *a3 = 0;
  }

  return result;
}

void *sub_2394F02A4(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 56))(a1);

  return sub_2394F0510(v3, a2);
}

uint64_t sub_2394F02FC(uint64_t a1)
{
  v1 = (*(*a1 + 56))(a1);

  return sub_2393D681C(v1, v1, sub_2394F0564);
}

uint64_t sub_2394F0358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = (*(*a1 + 56))(a1);
  v7[0] = &v5;
  v7[1] = &v6;
  return sub_2393D681C(v3, v7, sub_2394F0580);
}

uint64_t sub_2394F03C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = (*(*a1 + 64))(a1);
  v7[0] = &v5;
  v7[1] = &v6;
  return sub_2393D681C(v3, v7, sub_2394F0590);
}

void *sub_2394F0428(void *result, uint64_t a2)
{
  if (*result)
  {
    sub_2395387C8(result);
  }

  return result;
}

void sub_2394F0444(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x1Bu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *a1;
    *buf = 134217984;
    v5 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "BitMapObjectPool: %lu allocated", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(27, 1, "BitMapObjectPool: %lu allocated", *a1);
  }
}

void *sub_2394F0510(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 32);
    if (v4)
    {
      sub_2393D96C8(v4);
    }

    *(a2 + 32) = 0;

    return sub_2393D676C(v3, a2);
  }

  return result;
}

uint64_t sub_2394F0614(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BBEC08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_2394F0660(void *a1)
{
  *a1 = &unk_284BBEAA8;
  v2 = (*(a1[64] + 56))(a1 + 64);
  sub_2393D681C(v2, v2, sub_2394F0564);
  a1[64] = &unk_284BBEB10;
  sub_2394F0428(a1 + 65, v3);
  for (i = 0; i != -56; i -= 14)
  {
    sub_2394C24D8(&a1[i + 60]);
    v5 = a1[i + 55];
    if (v5)
    {
      sub_2393D96C8(v5);
    }

    a1[i + 55] = 0;
  }

  return sub_2394BFD08(a1);
}

void sub_2394F0750(uint64_t a1)
{
  sub_2394C33DC(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394F0788(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v6 = a1 + 16;
  if ((*(*(a1 + 16) + 24))(a1 + 16))
  {
    v7 = *(*v6 + 16);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F0850(a1, a2, a3);
  }
}

uint64_t sub_2394F0850(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v6 = a1 + 48;
  if ((*(*(a1 + 48) + 24))(a1 + 48))
  {
    v7 = *(*v6 + 16);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F0918(a1, a2, a3);
  }
}

uint64_t sub_2394F0918(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v6 = a1 + 80;
  if ((*(*(a1 + 80) + 24))(a1 + 80))
  {
    v7 = *(*v6 + 16);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F09E0(a1, a2, a3);
  }
}

uint64_t sub_2394F09E0(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v6 = a1 + 152;
  if ((*(*(a1 + 152) + 24))(a1 + 152))
  {
    v7 = *(*v6 + 16);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F0AA8(a1, a2, a3);
  }
}

uint64_t sub_2394F0AA8(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v5 = a1 + 888;
  if ((*(*(a1 + 888) + 24))(a1 + 888))
  {
    v6 = *(*v5 + 16);

    return v6(v5, a2, a3);
  }

  else
  {
    v8 = *a3;
    *a3 = 0;
    if (v8)
    {
      sub_2393D96C8(v8);
    }

    return 0x10B0000000CLL;
  }
}

uint64_t sub_2394F0B70(void *a1, uint64_t a2)
{
  if ((*(a1[2] + 24))() & 1) != 0 || ((*(a1[6] + 24))(a1 + 6, a2))
  {
    return 1;
  }

  return sub_2394F0C14(a1, a2);
}

uint64_t sub_2394F0C14(void *a1, uint64_t a2)
{
  if ((*(a1[10] + 24))() & 1) != 0 || ((*(a1[19] + 24))(a1 + 19, a2))
  {
    return 1;
  }

  v5 = *(a1[111] + 24);

  return v5();
}

uint64_t sub_2394F0CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 16;
  if ((*(*(a1 + 16) + 24))(a1 + 16))
  {
    v9 = *(*v8 + 40);

    return v9(v8, a2, a3, a4);
  }

  else
  {

    return sub_2394F0DB8(a1, a2, a3, a4);
  }
}

uint64_t sub_2394F0DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 48;
  if ((*(*(a1 + 48) + 24))(a1 + 48))
  {
    v9 = *(*v8 + 40);

    return v9(v8, a2, a3, a4);
  }

  else
  {

    return sub_2394F0E98(a1, a2, a3, a4);
  }
}

uint64_t sub_2394F0E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 80;
  if ((*(*(a1 + 80) + 24))(a1 + 80))
  {
    v9 = *(*v8 + 40);

    return v9(v8, a2, a3, a4);
  }

  else
  {

    return sub_2394F0F78(a1, a2, a3, a4);
  }
}

uint64_t sub_2394F0F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 152;
  if (((*(*(a1 + 152) + 24))(a1 + 152) & 1) == 0)
  {
    v8 = a1 + 888;
    if (!(*(*(a1 + 888) + 24))(a1 + 888, a2))
    {
      return 0xAF0000000CLL;
    }
  }

  v9 = *(*v8 + 40);

  return v9(v8, a2, a3, a4);
}

uint64_t sub_2394F107C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 16;
  if ((*(*(a1 + 16) + 32))(a1 + 16))
  {
    v7 = *(*v6 + 48);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F1144(a1, a2, a3);
  }
}

uint64_t sub_2394F1144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 48;
  if ((*(*(a1 + 48) + 32))(a1 + 48))
  {
    v7 = *(*v6 + 48);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F120C(a1, a2, a3);
  }
}

uint64_t sub_2394F120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 80;
  if ((*(*(a1 + 80) + 32))(a1 + 80))
  {
    v7 = *(*v6 + 48);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F12D4(a1, a2, a3);
  }
}

uint64_t sub_2394F12D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 152;
  if (((*(*(a1 + 152) + 32))(a1 + 152) & 1) == 0)
  {
    v6 = a1 + 888;
    if (!(*(*(a1 + 888) + 32))(a1 + 888))
    {
      return 0x1290000000CLL;
    }
  }

  v7 = *(*v6 + 48);

  return v7(v6, a2, a3);
}

uint64_t sub_2394F13C0(void *a1)
{
  v1 = a1;
  (*(a1[2] + 56))();
  (*(v1[6] + 56))();
  (*(v1[10] + 56))();
  v2 = v1[19];
  v1 += 19;
  (*(v2 + 56))(v1);
  v3 = *(v1[92] + 56);

  return v3();
}

unint64_t sub_2394F14B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  result = sub_2394BF2F0(a1 + 16, a3);
  if (!result)
  {
    *(a1 + 24) = a2;
    return sub_2394F1524(a1, a2, a4, a5, a6, a7);
  }

  return result;
}

unint64_t sub_2394F1524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  result = sub_2394BF2F0(a1 + 48, a3);
  if (!result)
  {
    *(a1 + 56) = a2;
    return sub_2394F1590(a1, a2, a4, a5, a6);
  }

  return result;
}

unint64_t sub_2394F1590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  result = sub_2394C28F0(a1 + 80, a3);
  if (!result)
  {
    *(a1 + 88) = a2;
    return sub_2394F15EC(a1, a2, a4);
  }

  return result;
}

unint64_t sub_2394F15EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2394C0048(a1 + 152, a3);
  if (!result)
  {
    *(a1 + 160) = a2;
    result = sub_2394C3460(a1 + 888);
    if (!result)
    {
      result = 0;
      *(a1 + 896) = a2;
    }
  }

  return result;
}

uint64_t sub_2394F164C()
{
  v0 = sub_2393D52C4(0xA58uLL);
  v1 = v0;
  if (v0)
  {
    bzero(v0, 0xA58uLL);
    sub_238DCCAEC(v1);
  }

  return v1;
}

void sub_2394F16A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    (*(*v5 + 208))(v5, a3);
  }

  sub_2394F1718(a1, v3);
}

void sub_2394F1718(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2 && (*(*v2 + 40))(v2))
  {
    v4 = sub_2393D9044(9u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v7 = a2;
      v8 = 2080;
      v9 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Warning, failed to delete session resumption state for fabric index 0x%x: %s", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      v5 = sub_2393C9138();
      sub_2393D5320(9, 1, "Warning, failed to delete session resumption state for fabric index 0x%x: %s", a2, v5);
    }
  }
}

uint64_t sub_2394F1848(uint64_t a1)
{
  *a1 = &unk_284BB8410;
  *(a1 + 8) = &unk_284BB8478;
  *(a1 + 16) = &unk_284BB84B0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 64) = &unk_284BBECE0;
  *(a1 + 72) = &unk_284BBEC90;
  *(a1 + 80) = &unk_284BBED70;
  *(a1 + 88) = 0;
  sub_2394F1A2C(a1 + 96);
  *(a1 + 64) = &unk_284BB8558;
  *(a1 + 72) = &unk_284BB8608;
  *(a1 + 80) = &unk_284BB8658;
  *(a1 + 96) = &unk_284BB8698;
  *(a1 + 248) = 0;
  sub_2393F7EB0((a1 + 256));
  *(a1 + 376) = &unk_284BB9138;
  *(a1 + 456) = 0;
  *(a1 + 496) = xmmword_2395D82B0;
  *(a1 + 528) = 0;
  *(a1 + 530) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 768) = 0u;
  return a1;
}

uint64_t sub_2394F1A2C(uint64_t a1)
{
  *a1 = &unk_284BB8A80;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = &unk_284BBEDB0;
  *(a1 + 56) = a1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = sub_239476060();
  *(a1 + 120) = v2;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  return a1;
}

void *sub_2394F1AD0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a4;
  v9[1] = a5;
  v7 = a6;
  v8 = a3;
  return sub_2394F1CCC((a1 + 8), a2, &v8, v9, &v7);
}

uint64_t sub_2394F1B10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v5 = 0;
  v8[0] = v7;
  v8[1] = &v6;
  v8[2] = &v5;
  sub_2393D6A10((a1 + 24), v8, sub_2394F20C0);
  return v5;
}

uint64_t sub_2394F1B6C(uint64_t a1, char a2)
{
  v3 = a2;
  v4[0] = &v3;
  v4[1] = a1;
  return sub_2393D6A10((a1 + 24), v4, sub_2394F2110);
}

void *sub_2394F1BEC(void *a1)
{
  *a1 = &unk_284BBEDE8;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394F21A8);
  sub_2394786E4(a1 + 1, v2);
  return a1;
}

void sub_2394F1C4C(void *a1)
{
  *a1 = &unk_284BBEDE8;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394F21A8);
  sub_2394786E4(a1 + 1, v2);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394F1CCC(unint64_t *a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_2393D52C4(0x238uLL);
  v11 = v10;
  if (v10)
  {
    sub_2394F1D80(v10, a2, *a3, *a4, a4[1], *a5);
    v12 = sub_2393D52C4(0x18uLL);
    if (v12)
    {
      *v12 = v11;
      v12[1] = a1 + 2;
      v12[2] = 0;
      v13 = a1[4];
      v12[2] = v13;
      *(v13 + 8) = v12;
      a1[4] = v12;
      v14 = a1[1];
      v15 = *a1 + 1;
      *a1 = v15;
      if (v15 > v14)
      {
        a1[1] = v15;
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_2394F1D80(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = 0;
  v11 = a1 + 8;
  *a1 = &unk_284BBD970;
  *(a1 + 16) = 0u;
  v12 = (a1 + 16);
  *(a1 + 8) = &unk_284BBD9C8;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = xmmword_27DF7BD44;
  *(a1 + 128) = 1;
  *(a1 + 130) = 5540;
  *(a1 + 132) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_284BBBF18;
  *(a1 + 168) = 0;
  *(a1 + 184) = a1 + 184;
  *(a1 + 192) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = &unk_284BBEE58;
  *(a1 + 224) = 0;
  do
  {
    v13 = a1 + v10;
    *(v13 + 248) = 0;
    *(v13 + 256) = 0;
    *(v13 + 264) = 1;
    *(v13 + 266) = 5540;
    *(v13 + 268) = 0;
    *(v13 + 272) = 0;
    *(v13 + 280) = sub_239476060();
    *(v13 + 288) = v14;
    *(v13 + 292) = 0;
    *(v13 + 294) = 0;
    v10 += 48;
  }

  while (v10 != 240);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0xAFC8000000C8;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  *(a1 + 552) = a1 + 544;
  *(a1 + 544) = a1 + 544;
  *(a1 + 560) = 0;
  v15 = *a2;
  v16 = a2[2];
  v12[1] = a2[1];
  v12[2] = v16;
  *v12 = v15;
  v17 = *(a2 + 48);
  *(a1 + 64) = v17;
  if (v17 == 1)
  {
    v18 = *(a2 + 52);
    *(a1 + 76) = *(a2 + 15);
    *(a1 + 68) = v18;
  }

  v19 = 0;
  if (a6 && a3 && *a2 && *(a2 + 3) && *(a2 + 4) && *(a2 + 5))
  {
    *(a1 + 80) = a3;
    *(a1 + 96) = a4;
    *(a1 + 104) = a5;
    *(a1 + 208) = a6;
    v19 = 1;
    *(a1 + 240) = v11;
  }

  *(a1 + 528) = v19;
  return a1;
}

void sub_2394F1FC4(uint64_t a1)
{
  sub_238EA9350((a1 + 8));

  JUMPOUT(0x23EE77B60);
}

void sub_2394F2010(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (*(*a2 + 40))(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394F20C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96) != **a1 || *(*a1 + 8) != *(a2 + 104) || **(a1 + 8) != *(a2 + 529))
  {
    return 0;
  }

  **(a1 + 16) = a2;
  return 1;
}

uint64_t sub_2394F2110(unsigned __int8 **a1, uint64_t a2)
{
  if (*(a2 + 104) == **a1)
  {
    (*(*a1[1] + 8))(a1[1]);
  }

  return 0;
}

void *sub_2394F21D4(void *a1)
{
  *a1 = &unk_284BBEEB8;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394F2524);
  sub_2394786E4(a1 + 1, v2);
  return a1;
}

void sub_2394F2234(void *a1)
{
  *a1 = &unk_284BBEEB8;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394F2524);
  sub_2394786E4(a1 + 1, v2);

  JUMPOUT(0x23EE77B60);
}

char *sub_2394F22B4(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x2C0uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2 + 32, 0x2A0uLL);
    *v3 = &unk_284BBECE0;
    *(v3 + 1) = &unk_284BBEC90;
    *(v3 + 2) = &unk_284BBED70;
    *(v3 + 3) = 0;
    sub_2394F1A2C((v3 + 32));
    *v3 = &unk_284BB8558;
    *(v3 + 1) = &unk_284BB8608;
    *(v3 + 2) = &unk_284BB8658;
    *(v3 + 4) = &unk_284BB8698;
    *(v3 + 23) = 0;
    sub_2393F7EB0(v3 + 24);
    *(v3 + 39) = &unk_284BB9138;
    *(v3 + 49) = 0;
    *(v3 + 27) = xmmword_2395D82B0;
    *(v3 + 232) = 0;
    v3[466] = 0;
    *(v3 + 59) = 0;
    *(v3 + 60) = 0;
    *(v3 + 67) = 0;
    *(v3 + 69) = 0;
    *(v3 + 68) = 0;
    v3[560] = 0;
    *(v3 + 71) = 0;
    *(v3 + 73) = 0;
    *(v3 + 72) = 0;
    *(v3 + 148) = 0;
    *(v3 + 664) = 0u;
    *(v3 + 680) = 0u;
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_2394F2498(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    v6 = sub_2393DF8F0(a2);
    j__free(v6);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v7 = v5[2];
      *(v5[1] + 16) = v7;
      *(v7 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void *sub_2394F2540(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = 0;
  a1[4] = a2[8];
  a1[5] = a2[11];
  a1[6] = a2[12];
  a1[7] = a2[13];
  a1[8] = a2[14];
  a1[9] = a2[3];
  a1[10] = a2[15];
  a1[11] = a2[16];
  a1[12] = a2[17];
  a1[13] = a2[18];
  a1[14] = a2[19];
  a1[15] = a2[5];
  a1[16] = a2[21];
  a1[17] = a2[22];
  a1[18] = a2[6];
  a1[19] = a2[20];
  a1[20] = 0;
  v3 = a2[9];
  a2[9] = 0;
  a1[21] = v3;
  a1[22] = 0;
  *(a1 + 182) = 0;
  if (!v3)
  {
    v3 = a2[7];
  }

  a1[20] = v3;
  a1[3] = a2[4];
  if (!sub_2394F2630(a1))
  {
    sub_239538864();
  }

  return a1;
}

unint64_t sub_2394F26C8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a1 + 2008) == 1)
  {
    if (a2)
    {
      v15 = *sub_238DE36B8((a1 + 2008), a2);
      (*(*v15 + 24))(v15);
      v14[0] = 1;
      v6 = sub_238DE36B8(v14, v5);
      v12[0] = *a3;
      if (v12[0] == 1)
      {
        v13 = *(a3 + 4);
      }

      v7 = sub_2394C5B48(a2, v6, v12);
      v8 = v7;
      v9 = v7 & 0xFFFFFFFF00000000;
      if (v14[0] == 1)
      {
        (*(*v15 + 32))(v15);
      }

      v10 = v8;
    }

    else
    {
      v9 = 0x2F00000000;
      v10 = 47;
    }
  }

  else
  {
    v9 = 0x2E00000000;
    v10 = 3;
  }

  return v10 | v9;
}

void sub_2394F27FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 2)
  {
    if (*(a1 + 2008) == 1)
    {
      v4 = sub_238DE36B8((a1 + 2008), a2);
      v5 = sub_239495304(*v4);
      sub_239493268(v5);
    }

    *(a1 + 80) = 0;

    sub_2393EB49C(a1 + 88);
  }
}

void sub_2394F2864(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_238EA903C(a1 + 1984, a2, a3);
  sub_239495804((a1 + 1984), v4);
  *(a1 + 80) = 0;

  sub_2393EB49C(a1 + 88);
}

uint64_t sub_2394F28AC(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a2;
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 48) = v5;
  *(a1 + 68) = *(a2 + 5);
  *(a1 + 72) = *(a2 + 3);
  v6 = *a3;
  *(a1 + 224) = *(a3 + 4);
  *(a1 + 216) = v6;
  if (*(a1 + 2008) == 1)
  {
    v15 = v3;
    v16 = v4;
    v14 = *sub_238DE36B8((a1 + 2008), a2);
    (*(*v14 + 24))(v14);
    v13[0] = 1;
    v9 = sub_238DE36B8(v13, v8);
    v10 = sub_239495304(*v9);
    if (v13[0] == 1)
    {
      (*(*v14 + 32))(v14);
    }

    v11 = *a2;
    *(v10 + 112) = *(a2 + 4);
    *(v10 + 96) = v11;
    *(v10 + 116) = *(a2 + 5);
    *(v10 + 120) = *(a2 + 3);
  }

  return 0;
}

uint64_t sub_2394F29C0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 80) == 1)
  {
    if (*(sub_239495304(*a2) + 57) == 1)
    {
      v4 = sub_239495C6C((a1 + 1984), a2);
      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v6 = 0x6E00000000;
      if (v4)
      {
        v6 = 0;
      }

      v7 = 172;
      if (v4)
      {
        v7 = 0;
      }

      *(a1 + 80) = v5;
    }

    else
    {
      v6 = 0x6900000000;
      v7 = 47;
    }
  }

  else
  {
    v6 = 0x6800000000;
    v7 = 3;
  }

  return v7 | v6;
}

uint64_t sub_2394F2A6C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284BBEF10;
  *(a1 + 16) = &unk_284BBEF78;
  if (*(a1 + 2008) == 1)
  {
    v8 = *sub_238DE36B8((a1 + 2008), a2);
    (*(*v8 + 24))(v8);
    v7[0] = 1;
    v4 = sub_238EA9094(v7, v3);
    v5 = sub_239495304(*v4);
    sub_239493268(v5);
    if (v7[0])
    {
      (*(*v8 + 32))(v8);
    }
  }

  sub_239495784(a1 + 1984, a2);
  sub_2393EB628((a1 + 88));
  return a1;
}

void sub_2394F2B7C(uint64_t a1, uint64_t a2)
{
  sub_2394F2A6C(a1, a2);

  JUMPOUT(0x23EE77B60);
}

void sub_2394F2BB4(uint64_t a1, uint64_t a2)
{
  sub_2394F2A6C(a1 - 16, a2);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2394F2BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  v6 = sub_2394A0484(a2, a3, a4, a5, &v11, &v10);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 0;
    v8 = v11;
    *(a1 + 24) = v10;
    *(a1 + 32) = v8;
  }

  return v7 | v6;
}

const char *sub_2394F2C88(unsigned int a1)
{
  if (a1 > 0x29)
  {
    return "???";
  }

  else
  {
    return off_278A83498[a1];
  }
}

const char *sub_2394F2CAC(unsigned int a1)
{
  if (a1 > 0x29)
  {
    return "core_commissioning_stage_unknown";
  }

  else
  {
    return off_278A835E8[a1];
  }
}

unint64_t sub_2394F2CD0(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 16844773;
  v4 = sub_23949FA9C(&v20, (a1 + 1236));
  v5 = v4;
  if (!v4)
  {
    v26 = 0;
    v19 = 97;
    snprintf(__str, 0x25uLL, "%s%llx", "ExampleOpCredsCAKey", *(a1 + 1304));
    v7 = (*(*a2 + 16))(a2, __str, v25, &v19);
    if (v19 <= 0x61uLL)
    {
      v26 = v19;
    }

    if (v7)
    {
      v8 = sub_2393D9044(9u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = sub_2393C9138();
        *__str = 136315394;
        v22 = "ExampleOpCredsCAKey";
        v23 = 2080;
        v24 = v9;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Couldn't get %s from storage: %s", __str, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        v10 = sub_2393C9138();
        sub_2393D5320(9, 2, "Couldn't get %s from storage: %s", "ExampleOpCredsCAKey", v10);
      }

      v11 = sub_2393F9168(a1 + 8);
      if (v11)
      {
        goto LABEL_15;
      }

      v11 = sub_2393F935C(a1 + 8, v25);
      if (v11)
      {
        goto LABEL_15;
      }

      snprintf(__str, 0x25uLL, "%s%llx", "ExampleOpCredsCAKey", *(a1 + 1304));
      v12 = (*(*a2 + 24))(a2, __str, v25, v26);
    }

    else
    {
      v12 = sub_2393F9498(a1 + 8, v25);
    }

    v11 = v12;
    if (!v12)
    {
      v19 = 97;
      snprintf(__str, 0x26uLL, "%s%llx", "ExampleOpCredsICAKey", *(a1 + 1304));
      v14 = (*(*a2 + 16))(a2, __str, v25, &v19);
      if (v19 <= 0x61uLL)
      {
        v26 = v19;
      }

      if (v14)
      {
        v15 = sub_2393D9044(9u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = sub_2393C9138();
          *__str = 136315394;
          v22 = "ExampleOpCredsICAKey";
          v23 = 2080;
          v24 = v16;
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Couldn't get %s from storage: %s", __str, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          v17 = sub_2393C9138();
          sub_2393D5320(9, 2, "Couldn't get %s from storage: %s", "ExampleOpCredsICAKey", v17);
        }

        v11 = sub_2393F9168(a1 + 616);
        if (v11)
        {
          goto LABEL_15;
        }

        v11 = sub_2393F935C(a1 + 616, v25);
        if (v11)
        {
          goto LABEL_15;
        }

        snprintf(__str, 0x26uLL, "%s%llx", "ExampleOpCredsICAKey", *(a1 + 1304));
        v18 = (*(*a2 + 24))(a2, __str, v25, v26);
      }

      else
      {
        v18 = sub_2393F9498(a1 + 616, v25);
      }

      v11 = v18;
      if (!v18)
      {
        v6 = 0;
        LODWORD(v11) = 0;
        *(a1 + 1256) = a2;
        *(a1 + 1224) = 1;
        goto LABEL_16;
      }
    }

LABEL_15:
    v6 = v11 & 0xFFFFFFFF00000000;
LABEL_16:
    sub_2393F9144(v25, 97);
    v5 = v11;
    return v5 | v6;
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  return v5 | v6;
}

unint64_t sub_2394F3100(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v64 = a5;
  v107 = *MEMORY[0x277D85DE8];
  sub_23949ECF0(&v76);
  v15 = a6[1];
  if (v15 >= 0xFFFF)
  {
    LOWORD(v15) = -1;
  }

  v75 = v15;
  snprintf(__str, 0x23uLL, "%s%llx", "ExampleCARootCert", *(a1 + 1304));
  v16 = (*(**(a1 + 1256) + 16))(*(a1 + 1256), __str, *a6, &v75);
  if ((*(a1 + 1264) & 1) != 0 || v16)
  {
    v24 = sub_23949EE3C(&v76, 788, *(a1 + 1228));
    if (!v24)
    {
      v35 = sub_2393D9044(9u);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 0;
        _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_DEFAULT, "Generating RCAC", __str, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Generating RCAC");
      }

      v74[6] = v82;
      v74[7] = v83;
      v74[8] = v84;
      v74[9] = v85;
      v74[2] = v78;
      v74[3] = v79;
      v74[4] = v80;
      v74[5] = v81;
      v74[0] = v76;
      v74[1] = v77;
      v73[6] = v82;
      v73[7] = v83;
      v73[8] = v84;
      v73[9] = v85;
      v73[2] = v78;
      v73[3] = v79;
      v73[4] = v80;
      v73[5] = v81;
      v36 = *(a1 + 1236);
      v37 = *(a1 + 1240);
      v73[0] = v76;
      v73[1] = v77;
      v24 = sub_2394F3A6C(v36, v37, v74, v73, 0, *(a1 + 1264), a1 + 16, a1 + 8, a6);
      nullsub_56();
      nullsub_56();
      if (!v24)
      {
        if (a6[1] >> 16)
        {
          v24 = 0x10900000000;
LABEL_33:
          v33 = 172;
          goto LABEL_21;
        }

        sub_23949ECF0(__str);
        v82 = v103;
        v83 = v104;
        v84 = v105;
        v85 = v106;
        v78 = v99;
        v79 = v100;
        v80 = v101;
        v81 = v102;
        v76 = *__str;
        v77 = v98;
        nullsub_56();
        v39 = sub_238DB6950(v38, *a6, a6[1]);
        v24 = sub_2394A09DC(v39, &v76);
        if (!v24)
        {
          snprintf(__str, 0x23uLL, "%s%llx", "ExampleCARootCert", *(a1 + 1304));
          v24 = (*(**(a1 + 1256) + 24))(*(a1 + 1256), __str, *a6, *(a6 + 4));
          if (!v24)
          {
LABEL_8:
            sub_23949ECF0(__str);
            v25 = a7[1];
            if (v25 >= 0xFFFF)
            {
              LOWORD(v25) = -1;
            }

            v72 = v25;
            snprintf(buf, 0x2BuLL, "%s%llx", "ExampleCAIntermediateCert", *(a1 + 1304));
            v26 = (*(**(a1 + 1256) + 16))(*(a1 + 1256), buf, *a7, &v72);
            if ((*(a1 + 1264) & 1) != 0 || v26)
            {
              v24 = sub_23949EE3C(__str, 787, *(a1 + 1232));
              if (v24)
              {
                goto LABEL_35;
              }

              v40 = sub_2393D9044(9u);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_238DAE000, v40, OS_LOG_TYPE_DEFAULT, "Generating ICAC", buf, 2u);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(9, 2, "Generating ICAC");
              }

              v41 = *(a1 + 1236);
              v42 = *(a1 + 1240);
              v71[6] = v82;
              v71[7] = v83;
              v71[8] = v84;
              v71[9] = v85;
              v71[2] = v78;
              v71[3] = v79;
              v71[4] = v80;
              v71[5] = v81;
              v71[0] = v76;
              v71[1] = v77;
              v70[6] = v103;
              v70[7] = v104;
              v70[8] = v105;
              v70[9] = v106;
              v70[2] = v99;
              v70[3] = v100;
              v70[4] = v101;
              v70[5] = v102;
              v70[0] = *__str;
              v70[1] = v98;
              v24 = sub_2394F3A6C(v41, v42, v71, v70, 1, *(a1 + 1264), a1 + 624, a1 + 8, a7);
              nullsub_56();
              nullsub_56();
              if (v24)
              {
                goto LABEL_35;
              }

              if (a7[1] >> 16)
              {
                v24 = 0x12D00000000;
                goto LABEL_48;
              }

              sub_23949ECF0(buf);
              v103 = v93;
              v104 = v94;
              v105 = v95;
              v106 = v96;
              v99 = v89;
              v100 = v90;
              v101 = v91;
              v102 = v92;
              *__str = *buf;
              v98 = v88;
              nullsub_56();
              sub_238DB6950(buf, *a7, a7[1]);
              v24 = sub_2394A09DC(buf, __str);
              if (!v24)
              {
                snprintf(buf, 0x2BuLL, "%s%llx", "ExampleCAIntermediateCert", *(a1 + 1304));
                v24 = (*(**(a1 + 1256) + 24))(*(a1 + 1256), buf, *a7, *(a7 + 4));
                if (!v24)
                {
                  goto LABEL_15;
                }
              }
            }

            else
            {
              *v86 = 0;
              sub_238DB8498(a7, v72, v27, v28, v29, v30, v31, v32, v58, v61, v63, v64, v66[0]);
              sub_238DB6950(buf, *a7, a7[1]);
              v24 = sub_2394A09DC(buf, __str);
              if (!v24)
              {
                v24 = sub_23949F054(__str, v86);
                if (!v24)
                {
                  if (*v86 == *(a1 + 1232))
                  {
LABEL_15:
                    sub_23949ECF0(buf);
                    v24 = sub_23949EE3C(buf, 789, a3);
                    if (!v24)
                    {
                      v24 = sub_23949EE3C(buf, 785, a2);
                      if (!v24)
                      {
                        v24 = sub_23949EEE8(buf, a4);
                        if (!v24)
                        {
                          v43 = sub_2393D9044(9u);
                          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                          {
                            *v86 = 0;
                            _os_log_impl(&dword_238DAE000, v43, OS_LOG_TYPE_DEFAULT, "Generating NOC", v86, 2u);
                          }

                          if (sub_2393D5398(2u))
                          {
                            sub_2393D5320(9, 2, "Generating NOC");
                          }

                          if (*(a1 + 1265) == 1)
                          {
                            sub_238DB8498(a7, 0, v44, v45, v46, v47, v48, v49, v59, v62, v63, v64, v66[0]);
                            v50 = *(a1 + 1236);
                            v51 = *(a1 + 1240);
                            v69[6] = v82;
                            v69[7] = v83;
                            v69[8] = v84;
                            v69[9] = v85;
                            v69[2] = v78;
                            v69[3] = v79;
                            v69[4] = v80;
                            v69[5] = v81;
                            v69[0] = v76;
                            v69[1] = v77;
                            v68[6] = v93;
                            v68[7] = v94;
                            v68[8] = v95;
                            v68[9] = v96;
                            v68[2] = v89;
                            v68[3] = v90;
                            v68[4] = v91;
                            v68[5] = v92;
                            v68[0] = *buf;
                            v68[1] = v88;
                            v52 = sub_2394F3A6C(v50, v51, v69, v68, 2, *(a1 + 1264), v65, a1 + 8, a8);
                          }

                          else
                          {
                            v53 = *(a1 + 1236);
                            v54 = *(a1 + 1240);
                            v67[6] = v103;
                            v67[7] = v104;
                            v67[8] = v105;
                            v67[9] = v106;
                            v67[2] = v99;
                            v67[3] = v100;
                            v67[4] = v101;
                            v67[5] = v102;
                            v67[0] = *__str;
                            v67[1] = v98;
                            v66[6] = v93;
                            v66[7] = v94;
                            v66[8] = v95;
                            v66[9] = v96;
                            v66[2] = v89;
                            v66[3] = v90;
                            v66[4] = v91;
                            v66[5] = v92;
                            v66[0] = *buf;
                            v66[1] = v88;
                            v52 = sub_2394F3A6C(v53, v54, v67, v66, 2, *(a1 + 1264), v64, a1 + 616, a8);
                          }

                          v24 = v52;
                          nullsub_56();
                          nullsub_56();
                          if (v24)
                          {
                            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                            {
                              v55 = sub_2393C9138();
                              *v86 = 136315138;
                              *&v86[4] = v55;
                              _os_log_impl(&dword_238DAE000, v43, OS_LOG_TYPE_ERROR, "Failed to Generate NOC: %s", v86, 0xCu);
                            }

                            if (sub_2393D5398(1u))
                            {
                              v56 = sub_2393C9138();
                              sub_2393D5320(9, 1, "Failed to Generate NOC: %s", v56);
                            }
                          }
                        }
                      }
                    }

                    nullsub_56();
                    goto LABEL_35;
                  }

                  v24 = 0x12300000000;
LABEL_48:
                  v33 = 172;
                  goto LABEL_36;
                }
              }
            }

LABEL_35:
            v33 = v24;
LABEL_36:
            nullsub_56();
            goto LABEL_21;
          }
        }
      }
    }
  }

  else
  {
    *buf = 0;
    sub_238DB8498(a6, v75, v17, v18, v19, v20, v21, v22, v57, v60, v63, v64, v66[0]);
    v23 = sub_238DB6950(__str, *a6, a6[1]);
    v24 = sub_2394A09DC(v23, &v76);
    if (!v24)
    {
      v24 = sub_23949F054(&v76, buf);
      if (!v24)
      {
        if (*buf == *(a1 + 1228))
        {
          goto LABEL_8;
        }

        v24 = 0xFF00000000;
        goto LABEL_33;
      }
    }
  }

  v33 = v24;
LABEL_21:
  nullsub_56();
  return v24 & 0xFFFFFFFF00000000 | v33;
}

unint64_t sub_2394F3A6C(int a1, int a2, __int128 *a3, __int128 *a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v156 = *MEMORY[0x277D85DE8];
  v131 = 17;
  v130 = 7509;
  v17 = sub_2393D52C4(0x258uLL);
  if (v17)
  {
    v18 = v17;
    sub_238DB9BD8(&v128, v17, 600);
    v123 = a7;
    v122 = a5;
    if (a5 == 2)
    {
      __len[0] = 1;
      LODWORD(__len[1]) = a1;
      HIDWORD(__len[1]) = a2 + a1;
      v31 = a4[7];
      v139 = a4[6];
      v140 = v31;
      v32 = a4[9];
      v141 = a4[8];
      v142 = v32;
      v33 = a4[3];
      v135 = a4[2];
      v136 = v33;
      v34 = a4[5];
      v137 = a4[4];
      v138 = v34;
      v35 = a4[1];
      v133 = *a4;
      v134 = v35;
      v36 = a3[7];
      v149 = a3[6];
      v150 = v36;
      v37 = a3[9];
      v151 = a3[8];
      v152 = v37;
      v38 = a3[3];
      v145 = a3[2];
      v146 = v38;
      v39 = a3[5];
      v147 = a3[4];
      v148 = v39;
      v40 = a3[1];
      v143 = *a3;
      v144 = v40;
      v153 = 0;
      v29 = sub_2394AE594(__len, a7, a8, &v128);
    }

    else if (a5 == 1)
    {
      __len[0] = 1;
      LODWORD(__len[1]) = a1;
      HIDWORD(__len[1]) = a2 + a1;
      v19 = a4[7];
      v139 = a4[6];
      v140 = v19;
      v20 = a4[9];
      v141 = a4[8];
      v142 = v20;
      v21 = a4[3];
      v135 = a4[2];
      v136 = v21;
      v22 = a4[5];
      v137 = a4[4];
      v138 = v22;
      v23 = a4[1];
      v133 = *a4;
      v134 = v23;
      v24 = a3[7];
      v149 = a3[6];
      v150 = v24;
      v25 = a3[9];
      v151 = a3[8];
      v152 = v25;
      v26 = a3[3];
      v145 = a3[2];
      v146 = v26;
      v27 = a3[5];
      v147 = a3[4];
      v148 = v27;
      v28 = a3[1];
      v143 = *a3;
      v144 = v28;
      v153 = 0;
      v29 = sub_2394AE410(__len, a7, a8, &v128);
    }

    else
    {
      v41 = a4[7];
      v42 = a4[5];
      v139 = a4[6];
      v140 = v41;
      v43 = a4[7];
      v44 = a4[9];
      v141 = a4[8];
      v142 = v44;
      v45 = a4[3];
      v46 = a4[1];
      v135 = a4[2];
      v136 = v45;
      v47 = a4[3];
      v48 = a4[5];
      v137 = a4[4];
      v138 = v48;
      v49 = a4[1];
      v133 = *a4;
      v134 = v49;
      v149 = v139;
      v150 = v43;
      v50 = a4[9];
      v151 = v141;
      v152 = v50;
      v145 = v135;
      v146 = v47;
      v147 = v137;
      v148 = v42;
      __len[0] = 1;
      LODWORD(__len[1]) = a1;
      HIDWORD(__len[1]) = a2 + a1;
      v143 = v133;
      v144 = v46;
      v153 = 0;
      v29 = sub_2394AE338(__len, a8, &v128);
    }

    v51 = v29;
    nullsub_56();
    nullsub_56();
    if (v51)
    {
      v52 = v51;
LABEL_10:
      j__free(v18);
      return v51 & 0xFFFFFFFF00000000 | v52;
    }

    v54 = a8;
    v55 = a9;
    if (!a6)
    {
      goto LABEL_40;
    }

    v56 = sub_2393D52C4(0x258uLL);
    if (!v56)
    {
      v51 = 0x5B00000000;
      v52 = 11;
      goto LABEL_10;
    }

    v57 = v56;
    sub_238DB9BD8(&v127, v56, 600);
    sub_238DB6950(__len, v128, v129);
    v58 = sub_2394A1510(__len[0], __len[1], &v127);
    v51 = v58;
    if (v58)
    {
      v52 = v58;
LABEL_46:
      j__free(v57);
      goto LABEL_10;
    }

    v59 = sub_2393D52C4(0x320uLL);
    if (v59)
    {
      v60 = v59;
      sub_238DB9BD8(&v126, v59, 800);
      v61 = sub_2393D52C4(0xC8uLL);
      if (v61)
      {
        v62 = v61;
        *&v63 = 0x4141414141414141;
        *(&v63 + 1) = 0x4141414141414141;
        *(v61 + 24) = 0x4141414141414141;
        v61[10] = v63;
        v61[11] = v63;
        v61[8] = v63;
        v61[9] = v63;
        v61[6] = v63;
        v61[7] = v63;
        v61[4] = v63;
        v61[5] = v63;
        v61[2] = v63;
        v61[3] = v63;
        *v61 = v63;
        v61[1] = v63;
        if (383 - DWORD2(v127) >= (588 - v129))
        {
          v64 = 588 - v129;
        }

        else
        {
          v64 = 383 - DWORD2(v127);
        }

        if (588 - v129 >= 1 && 383 - DWORD2(v127) >= 1 && v64)
        {
          if (v64 >= 0xC8)
          {
            v65 = 200;
          }

          else
          {
            v65 = v64;
          }

          v118 = &v154;
          v120 = v61;
          v121 = v60;
          while (1)
          {
            sub_238DB9BD8(__len, v60, 800);
            v126 = *__len;
            sub_238DB9BD8(__len, v57, 600);
            v127 = *__len;
            *&v124 = &v130;
            *(&v124 + 1) = 3;
            sub_238DB6950(&v125, v62, v65);
            if (v122 == 2)
            {
              __len[0] = 1;
              LODWORD(__len[1]) = a1;
              HIDWORD(__len[1]) = a2 + a1;
              v76 = a4[7];
              v139 = a4[6];
              v140 = v76;
              v77 = a4[9];
              v141 = a4[8];
              v142 = v77;
              v78 = a4[3];
              v135 = a4[2];
              v136 = v78;
              v79 = a4[5];
              v137 = a4[4];
              v138 = v79;
              v80 = a4[1];
              v133 = *a4;
              v134 = v80;
              v81 = a3[7];
              v149 = a3[6];
              v150 = v81;
              v82 = a3[9];
              v151 = a3[8];
              v152 = v82;
              v83 = a3[3];
              v145 = a3[2];
              v146 = v83;
              v84 = a3[5];
              v147 = a3[4];
              v148 = v84;
              v85 = a3[1];
              v143 = *a3;
              v144 = v85;
              v153 = 1;
              v154 = v124;
              v155 = v125;
              v96 = sub_2394AE594(__len, v123, v54, &v126);
            }

            else if (v122 == 1)
            {
              __len[0] = 1;
              LODWORD(__len[1]) = a1;
              HIDWORD(__len[1]) = a2 + a1;
              v66 = a4[7];
              v139 = a4[6];
              v140 = v66;
              v67 = a4[9];
              v141 = a4[8];
              v142 = v67;
              v68 = a4[3];
              v135 = a4[2];
              v136 = v68;
              v69 = a4[5];
              v137 = a4[4];
              v138 = v69;
              v70 = a4[1];
              v133 = *a4;
              v134 = v70;
              v71 = a3[7];
              v149 = a3[6];
              v150 = v71;
              v72 = a3[9];
              v151 = a3[8];
              v152 = v72;
              v73 = a3[3];
              v145 = a3[2];
              v146 = v73;
              v74 = a3[5];
              v147 = a3[4];
              v148 = v74;
              v75 = a3[1];
              v143 = *a3;
              v144 = v75;
              v153 = 1;
              v154 = v124;
              v155 = v125;
              v96 = sub_2394AE410(__len, v123, v54, &v126);
            }

            else
            {
              v86 = a4[7];
              v87 = a4[5];
              v139 = a4[6];
              v140 = v86;
              v88 = a4[7];
              v89 = a4[9];
              v141 = a4[8];
              v142 = v89;
              v90 = a4[3];
              v91 = a4[1];
              v135 = a4[2];
              v136 = v90;
              v92 = a4[3];
              v93 = a4[5];
              v137 = a4[4];
              v138 = v93;
              v94 = a4[1];
              v133 = *a4;
              v134 = v94;
              v149 = v139;
              v150 = v88;
              v95 = a4[9];
              v151 = v141;
              v152 = v95;
              v145 = v135;
              v146 = v92;
              v147 = v137;
              v148 = v87;
              __len[0] = 1;
              LODWORD(__len[1]) = a1;
              HIDWORD(__len[1]) = a2 + a1;
              v143 = v133;
              v144 = v91;
              v153 = 1;
              v154 = v124;
              v155 = v125;
              v96 = sub_2394AE338(__len, v54, &v126);
            }

            v51 = v96;
            nullsub_56();
            nullsub_56();
            if (v51 || (sub_238DB6950(__len, v126, *(&v126 + 1)), v51 = sub_2394A1510(__len[0], __len[1], &v127), v51))
            {
              v52 = v51;
              goto LABEL_48;
            }

            v97 = v57;
            v98 = DWORD2(v126);
            if (*(&v126 + 1) <= 0x258uLL)
            {
              v99 = DWORD2(v127);
              if (*(&v127 + 1) <= 0x190uLL)
              {
                break;
              }
            }

            --v65;
            v57 = v97;
            v62 = v120;
            v60 = v121;
            if (!v65)
            {
              goto LABEL_39;
            }
          }

          v107 = sub_2393D9044(9u);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__len[0]) = 67109376;
            HIDWORD(__len[0]) = v98;
            LOWORD(__len[1]) = 1024;
            *(&__len[1] + 2) = v99;
            _os_log_impl(&dword_238DAE000, v107, OS_LOG_TYPE_DEFAULT, "Generated maximized certificate with %u DER bytes, %u TLV bytes", __len, 0xEu);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(9, 2, "Generated maximized certificate with %u DER bytes, %u TLV bytes", DWORD2(v126), DWORD2(v127));
          }

          sub_238DB6950(__len, v126, *(&v126 + 1));
          v108 = __len[1];
          v57 = v97;
          if (*(a9 + 8) >= __len[1])
          {
            memmove(*a9, __len[0], __len[1]);
            sub_238DB8498(a9, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, &v154, v119);
            v52 = 0;
            v51 = 0;
          }

          else
          {
            v51 = 0x18300000000;
            v52 = 25;
          }

LABEL_48:
          j__free(v120);
          j__free(v121);
          goto LABEL_46;
        }

LABEL_39:
        j__free(v62);
        j__free(v60);
        j__free(v57);
        v55 = a9;
LABEL_40:
        sub_238DB6950(__len, v128, v129);
        v100 = __len[1];
        if (*(v55 + 8) >= __len[1])
        {
          memmove(*v55, __len[0], __len[1]);
          sub_238DB8498(v55, v100, v101, v102, v103, v104, v105, v106, v115, v116, v117, v118, v119);
          v52 = 0;
          v51 = 0;
        }

        else
        {
          v51 = 0x18300000000;
          v52 = 25;
        }

        goto LABEL_10;
      }

      j__free(v60);
      v51 = 0x6400000000;
    }

    else
    {
      v51 = 0x6000000000;
    }

    v52 = 11;
    goto LABEL_46;
  }

  return 0x3E0000000BLL;
}

unint64_t sub_2394F4238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1224) != 1)
  {
    return 0x1550000001CLL;
  }

  if (*(a1 + 1300) == 1)
  {
    v11 = *(a1 + 1272);
    *(a1 + 1300) = 0;
  }

  else
  {
    v11 = *(a1 + 1248);
    *(a1 + 1248) = v11 + 1;
  }

  v13 = sub_2393D9044(9u);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Verifying Certificate Signing Request", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Verifying Certificate Signing Request");
  }

  sub_2393C5AAC(v42);
  sub_2393C5ADC(v42, *a2, *(a2 + 8));
  if (sub_2393C5C40(v42) == -1 && (v14 = sub_2393C6B34(v42), v15 = v14, v14) || (v14 = sub_2393C7078(v42, 21, 256), v15 = v14, v14) || (v41 = 0, v14 = sub_2393C6A2C(v42, &v41), v15 = v14, v14) || (v14 = sub_2393C7114(v42, 16, 1), v15 = v14, v14))
  {
    v20 = v14 & 0xFFFFFFFF00000000;
  }

  else
  {
    v16 = v43;
    v17 = sub_2393C5CB8(v42);
    sub_238DB6950(v40, v16, v17);
    sub_2393C6A98(v42, v41);
    *buf = &unk_284BB9138;
    v18 = sub_2393F9A14(v40[0], v40[1], buf);
    v19 = v18;
    if (v18)
    {
      v20 = v18 & 0xFFFFFFFF00000000;
    }

    else
    {
      v21 = sub_2393D52C4(0x258uLL);
      if (v21)
      {
        v22 = v21;
        sub_238DB9BD8(v39, v21, 600);
        v23 = sub_2393D52C4(0x258uLL);
        if (v23)
        {
          v24 = v23;
          sub_238DB9BD8(v38, v23, 600);
          v25 = sub_2393D52C4(0x258uLL);
          if (v25)
          {
            v26 = v25;
            sub_238DB9BD8(v37, v25, 600);
            v27 = sub_2394F3100(a1, v11, *(a1 + 1280), a1 + 1288, buf, v37, v38, v39);
            v19 = v27;
            if (v27)
            {
              v20 = v27 & 0xFFFFFFFF00000000;
            }

            else
            {
              v44 = *"temporary ipk 01";
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *v36 = 0;
                _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Providing certificate chain to the commissioner", v36, 2u);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(9, 2, "Providing certificate chain to the commissioner");
              }

              v30 = a8 + 24;
              v28 = *(a8 + 24);
              v29 = *(v30 + 8);
              sub_238DB6950(v36, v39[0], v39[1]);
              sub_238DB6950(v35, v38[0], v38[1]);
              sub_238DB6950(v34, v37[0], v37[1]);
              v32[0] = 1;
              v33 = &v44;
              v31[0] = 0;
              v29(v28, 0, 0, v36, v35, v34, v32, v31);
              v20 = 0;
              v19 = 0;
            }

            j__free(v26);
          }

          else
          {
            v20 = 0x18300000000;
            v19 = 11;
          }

          j__free(v24);
        }

        else
        {
          v20 = 0x17F00000000;
          v19 = 11;
        }

        j__free(v22);
      }

      else
      {
        v20 = 0x17B00000000;
        v19 = 11;
      }
    }

    v15 = v19;
  }

  return v15 | v20;
}

unint64_t sub_2394F4614(char *a1)
{
  v2 = 10;
  while (1)
  {
    v3 = sub_2393F888C(a1, 8uLL);
    v4 = v3;
    if (v3)
    {
      v5 = v3 & 0xFFFFFFFF00000000;
      return v5 | v4;
    }

    if ((*a1 - 1) <= 0xFFFFFFEFFFFFFFFELL)
    {
      break;
    }

    if (!--v2)
    {
      v5 = 0x1B100000000;
      v4 = 172;
      return v5 | v4;
    }
  }

  v4 = 0;
  v5 = 0;
  return v5 | v4;
}

void *sub_2394F46A8(void *a1)
{
  *a1 = &unk_284BBEFF8;
  v2 = a1 + 1;
  sub_2393F970C((a1 + 77));
  sub_2393F970C(v2);
  return a1;
}

void sub_2394F46FC(void *a1)
{
  *a1 = &unk_284BBEFF8;
  v1 = a1 + 1;
  sub_2393F970C((a1 + 77));
  sub_2393F970C(v1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394F4770(uint64_t result, uint64_t a2)
{
  *(result + 1272) = a2;
  *(result + 1300) = 1;
  return result;
}

uint64_t sub_2394F4788(uint64_t a1, uint64_t a2, char *__s, int a4, int a5, _BYTE *a6)
{
  if (*(a1 + 32))
  {
    if (a2)
    {
      v33 = 0;
      v34 = 0uLL;
      v12 = strlen(__s);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_238EAEDBC();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v32 = v12;
      if (v12)
      {
        memcpy(&__dst, __s, v12);
      }

      *(&__dst + v13) = 0;
      v16 = sub_239490924(&__dst, &v33);
      v18 = v16;
      if (v32 < 0)
      {
        operator delete(__dst);
        if (v18)
        {
          goto LABEL_13;
        }
      }

      else if (v16)
      {
LABEL_13:
        v19 = HIDWORD(v18);
LABEL_31:
        v27 = &v33;
        sub_2394F7C48(&v27);
        v15 = v19 << 32;
        v14 = v18;
        return v14 | v15;
      }

      if (*a6 == 1 && v34 - v33 == 72)
      {
        v20 = *(a1 + 56);
        if (*(a1 + 64) - v20 == 72)
        {
          if (a5 == 2)
          {
            LODWORD(v27) = 2;
            v28 = "core_setup_code_pairer_pair_dev";
            LODWORD(v18) = 47;
            v29 = 47;
            v30 = 3;
            sub_23948BD20(&v27);
            v19 = 66;
            goto LABEL_31;
          }

          if (*(a1 + 40) == a2 && *(v20 + 16) == *(v33 + 16) && *(a1 + 48) == a4 && *(a1 + 49) == a5)
          {
            goto LABEL_26;
          }
        }
      }

      sub_2394F4BA8(a1);
      *(a1 + 48) = a4;
      *(a1 + 49) = a5;
      *(a1 + 40) = a2;
      sub_2394F7C9C((a1 + 56));
      v21 = v33;
      *(a1 + 56) = v33;
      v22 = v34;
      *(a1 + 64) = v34;
      v34 = 0uLL;
      v33 = 0;
      if (*a6 == 1 && v22 - v21 == 72)
      {
LABEL_26:
        v23 = sub_2393E088C(a6, v17);
        sub_2394F4B08(a1, v23, 0);
        v19 = 0;
      }

      else
      {
        v24 = sub_2394F4C80(a1);
        LODWORD(v18) = v24;
        if (v24)
        {
          v19 = HIDWORD(v24);
          LODWORD(v27) = 2;
          v28 = "core_setup_code_pairer_pair_dev";
          v29 = v24;
          v30 = 3;
          sub_23948BD20(&v27);
          goto LABEL_31;
        }

        v25 = (*(**(a1 + 32) + 40))(*(a1 + 32), 30000, sub_2394F504C, a1);
        LODWORD(v18) = v25;
        v19 = HIDWORD(v25);
        if (v25)
        {
          goto LABEL_31;
        }

        LODWORD(v27) = 0;
        v28 = "core_setup_code_pairer_pair_dev";
        v30 = 0;
        sub_23948BD20(&v27);
      }

      LODWORD(v18) = 0;
      goto LABEL_31;
    }

    LODWORD(v33) = 2;
    *&v34 = "core_setup_code_pairer_pair_dev";
    v14 = 47;
    DWORD2(v34) = 47;
    BYTE12(v34) = 3;
    sub_23948BD20(&v33);
    v15 = 0x3100000000;
  }

  else
  {
    LODWORD(v33) = 2;
    *&v34 = "core_setup_code_pairer_pair_dev";
    v14 = 3;
    DWORD2(v34) = 3;
    BYTE12(v34) = 3;
    sub_23948BD20(&v33);
    v15 = 0x3000000000;
  }

  return v14 | v15;
}

uint64_t sub_2394F4B08(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a3;
  if (*(a1 + 49) == 1)
  {
    sub_2394F5A70(a1);
    LODWORD(i) = 0;
    sub_2394F6D64((a1 + 96), a2, &v7, &i);
  }

  else
  {
    for (i = 0; i < *(a2 + 8); ++i)
    {
      sub_2394F6E7C((a1 + 96), a2, &v7, &i);
    }
  }

  return sub_2394F5C54(a1);
}

uint64_t sub_2394F4BA8(uint64_t a1)
{
  sub_2394F713C(a1);
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
    v6 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 17;
  }

  *(a1 + 128) = v6;
LABEL_8:
  *(a1 + 144) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  sub_23948F6F8((a1 + 56));
  v7 = *(**(a1 + 32) + 72);

  return v7();
}

uint64_t sub_2394F4C80(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 49) == 2)
  {
    if (sub_2394F5174(a1, 2))
    {
      v2 = sub_2394F51E8(a1);
      if (v2)
      {
        if (v2 == 108 || v2 == 45)
        {
          v3 = sub_2393D9044(9u);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Skipping commissionable node discovery over BLE since not supported by the controller!", buf, 2u);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(9, 2, "Skipping commissionable node discovery over BLE since not supported by the controller!");
          }
        }

        else
        {
          v4 = sub_2393D9044(9u);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v16 = sub_2393C9138();
            _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Failed to start commissionable node discovery over BLE: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to start commissionable node discovery over BLE: %s");
          }
        }
      }
    }

    if (sub_2394F5174(a1, 8))
    {
      v5 = sub_2393D9044(9u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Skipping commissionable node discovery over Wi-Fi PAF since not supported by the controller!", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Skipping commissionable node discovery over Wi-Fi PAF since not supported by the controller!");
      }
    }

    if (sub_2394F5174(a1, 16))
    {
      v6 = sub_2394F5484(a1);
      if (v6)
      {
        if (v6 == 108 || v6 == 45)
        {
          v7 = sub_2393D9044(9u);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Skipping commissionable node discovery over NFC since not supported by the controller!", buf, 2u);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(9, 2, "Skipping commissionable node discovery over NFC since not supported by the controller!");
          }
        }

        else
        {
          v8 = sub_2393D9044(9u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = sub_2393C9138();
            *buf = 136315138;
            v16 = v9;
            _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to start commissionable node discovery over NFC: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to start commissionable node discovery over NFC: %s");
          }
        }
      }
    }
  }

  v10 = sub_2394F57E4(a1);
  if (v10)
  {
    v11 = sub_2393D9044(9u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_2393C9138();
      *buf = 136315138;
      v16 = v12;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to start commissionable node discovery over DNS-SD: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v13 = sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to start commissionable node discovery over DNS-SD: %s", v13);
    }
  }

  return v10;
}

void sub_2394F504C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2393D9044(9u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Discovery timed out", &v9, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(9, 1, "Discovery timed out");
  }

  sub_2394F713C(a2);
  if ((*(a2 + 392) & 1) == 0 && !*(a2 + 136))
  {
    v4 = *(a2 + 400);
    v5 = *(a2 + 408);
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = 50;
    }

    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = 0x36500000000;
    }

    v9 = 1;
    v10 = "core_setup_code_pairer_pair_dev";
    v11 = v6;
    v12 = 3;
    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = "src/controller/SetUpCodePairer.cpp";
    }

    sub_23948BD20(&v9);
    (*(**(a2 + 24) + 64))(*(a2 + 24), v7 | v6, v8);
  }
}

uint64_t sub_2394F5174(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = a2;
  for (i = v2 + 7; *i == 1 && (*sub_23948DF8C(i, a2) & v4) == 0; i += 72)
  {
    v6 = i + 65;
    if (v6 == v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2394F51E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Starting commissionable node discovery over BLE", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Starting commissionable node discovery over BLE");
    }

    *(a1 + 88) = 1;
    v3 = *(a1 + 56);
    v4 = *(a1 + 64) - v3;
    if (v4 == 72)
    {
      v5 = sub_2393CCB68(*(a1 + 16), v3 + 10, a1, sub_2394F58D4, sub_2394F58DC);
    }

    else
    {
      *buf = 0;
      v21 = 0;
      v22 = 0;
      sub_2394F58E0(buf, 0x8E38E38E38E38E39 * (v4 >> 3));
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      if (v8 == v9)
      {
        v10 = v21;
      }

      else
      {
        v10 = v21;
        do
        {
          if (v10 >= v22)
          {
            v11 = (v10 - *buf) >> 2;
            if ((v11 + 1) >> 62)
            {
              sub_238EAEDBC();
            }

            v12 = (v22 - *buf) >> 1;
            if (v12 <= v11 + 1)
            {
              v12 = v11 + 1;
            }

            if (v22 - *buf >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v13 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v12;
            }

            if (v13)
            {
              sub_239489F80(buf, v13);
            }

            *(4 * v11) = *(v8 + 10);
            v10 = (4 * v11 + 4);
            v14 = (4 * v11 - (v21 - *buf));
            memcpy(v14, *buf, v21 - *buf);
            v15 = *buf;
            *buf = v14;
            v21 = v10;
            v22 = 0;
            if (v15)
            {
              operator delete(v15);
            }
          }

          else
          {
            *v10++ = *(v8 + 10);
          }

          v21 = v10;
          v8 += 72;
        }

        while (v8 != v9);
      }

      v16 = *(a1 + 16);
      sub_2394F7CDC(v18, *buf, (v10 - *buf) >> 2);
      sub_239489EBC(&v19, v18[0], v18[1]);
      v5 = sub_2393CCDEC(v16);
      if (*buf)
      {
        v21 = *buf;
        operator delete(*buf);
      }
    }

    v6 = HIDWORD(v5);
    v7 = v5;
    if (v5)
    {
      *(a1 + 88) = 0;
    }
  }

  else
  {
    v6 = 166;
    v7 = 108;
  }

  return v7 | (v6 << 32);
}

uint64_t sub_2394F5484(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64) - v2;
  v4 = sub_2393D9044(9u);
  v5 = v4;
  if (v3 == 72)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Starting commissionable node discovery over NFC", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Starting commissionable node discovery over NFC");
    }

    if (*(a1 + 24))
    {
      if (*(v2 + 12))
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Error, Long discriminator is required", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "Error, Long discriminator is required");
        }

        v14 = 0x14D00000000;
        v15 = 47;
      }

      else
      {
        v17 = sub_2392E10A8((v2 + 10), v6);
        v7 = sub_23948A9E8();
        v8 = v7[2];
        if (v8)
        {
          (*(*v8 + 16))(v7[2], a1 + 8);
          v9 = (*(*v8 + 24))(v8, &v17);
          v10 = v9;
          v11 = HIDWORD(v9);
          if (v9)
          {
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              v12 = sub_2393C9138();
              *buf = 136315138;
              v19 = v12;
              _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Commissionable node discovery over NFC failed, err = %s", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              v13 = sub_2393C9138();
              sub_2393D5320(9, 1, "Commissionable node discovery over NFC failed, err = %s", v13);
            }
          }

          else
          {
            v10 = 0;
            *(a1 + 91) = 1;
          }
        }

        else
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Commissionable node discovery over NFC since there is no valid NFC reader transport", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(9, 1, "Commissionable node discovery over NFC since there is no valid NFC reader transport");
          }

          v10 = 108;
          v11 = 340;
        }

        v14 = v11 << 32;
        v15 = v10;
      }
    }

    else
    {
      v14 = 0x14A00000000;
      v15 = 3;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "NFC commissioning does not support concatenated QR codes yet.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "NFC commissioning does not support concatenated QR codes yet.");
    }

    v14 = 0x14400000000;
    v15 = 108;
  }

  return v15 | v14;
}

uint64_t sub_2394F57E4(uint64_t a1)
{
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Starting commissionable node discovery over DNS-SD", v9, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Starting commissionable node discovery over DNS-SD");
  }

  v4 = *(a1 + 56);
  if (*(a1 + 64) - v4 == 72)
  {
    v5 = *(v4 + 12);
    if (v5 == 1)
    {
      v6 = *(v4 + 10);
    }

    else
    {
      v6 = sub_2392E10A8((v4 + 10), v3);
      LOBYTE(v5) = 2;
    }
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  *(a1 + 89) = 1;
  v7 = *(a1 + 24);
  v9[0] = v5;
  v10 = v6;
  v11 = 0;
  result = sub_239503574(v7, v9);
  if (result)
  {
    *(a1 + 89) = 0;
  }

  return result;
}

void sub_2394F58E0(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_239489F80(a1, a2);
    }

    sub_238EAEDBC();
  }
}

unint64_t sub_2394F5994(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v10 = v1;
    v11 = v2;
    *(a1 + 88) = 0;
    if (*(a1 + 16))
    {
      v4 = sub_2393D9044(9u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Stopping commissionable node discovery over BLE", v9, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Stopping commissionable node discovery over BLE");
      }

      v5 = sub_2393CCA60(*(a1 + 16));
      v6 = v5 & 0xFFFFFFFF00000000;
      v7 = v5;
    }

    else
    {
      v6 = 0xDB00000000;
      v7 = 108;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

uint64_t sub_2394F5A70(uint64_t a1)
{
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Stopping commissionable node discovery over DNS-SD", v4, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Stopping commissionable node discovery over DNS-SD");
  }

  *(a1 + 89) = 0;
  sub_2395035C4(*(a1 + 24));
  return 0;
}

uint64_t sub_2394F5B1C(uint64_t a1)
{
  *(a1 + 91) = 0;
  v1 = sub_23948A9E8()[2];
  v2 = sub_2393D9044(9u);
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Stopping commissionable node discovery over NFC by removing delegate", v7, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Stopping commissionable node discovery over NFC by removing delegate");
    }

    (*(*v1 + 16))(v1, 0);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Failed to stop commissionable node discovery over NFC since there is no valid NFC reader transport", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Failed to stop commissionable node discovery over NFC since there is no valid NFC reader transport");
    }

    v4 = 0x17100000000;
    v5 = 108;
  }

  return v5 | v4;
}

uint64_t sub_2394F5C54(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(a1 + 392))
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 184);
  v40 = a1 + 296;
  v4 = (a1 + 312);
  v5 = (a1 + 336);
  v41 = (a1 + 380);
  while (1)
  {
    v6 = *(a1 + 128);
    v7 = *(*(a1 + 104) + 8 * (v6 / 0x11)) + 240 * (v6 % 0x11);
    v8 = *(v7 + 16);
    v46 = *v7;
    v47 = v8;
    v48 = *(v7 + 20);
    v49 = *(v7 + 24);
    v9 = *(v7 + 124);
    v11 = *(v7 + 96);
    v10 = *(v7 + 112);
    v53 = *(v7 + 80);
    v54 = v11;
    *v55 = v10;
    *&v55[12] = v9;
    v13 = *(v7 + 48);
    v12 = *(v7 + 64);
    v50 = *(v7 + 32);
    v51 = v13;
    v52 = v12;
    v56 = 0;
    v56 = *(v7 + 140);
    if (v56 == 1)
    {
      v14 = *(v7 + 144);
      v58 = *(v7 + 152);
      v57 = v14;
    }

    v15 = *(v7 + 160);
    v60 = *(v7 + 176);
    v59 = v15;
    v16 = *(v7 + 184);
    v17 = *(v7 + 200);
    *&v62[9] = *(v7 + 209);
    *v62 = v17;
    v61 = v16;
    v63 = *(v7 + 228);
    *(a1 + 128) = v6 + 1;
    *(a1 + 136) = v2 - 1;
    sub_2394F7CFC(a1 + 96, 1);
    v18 = *(a1 + 56);
    if (BYTE6(v63) != 1)
    {
      break;
    }

    v19 = WORD2(v63);
    for (i = *(a1 + 64); v18 != i; v18 += 72)
    {
      v21 = *(v18 + 12) ? HIBYTE(WORD2(v63)) : WORD2(v63);
      if (*(v18 + 10) == v21)
      {
        goto LABEL_18;
      }
    }

    v22 = sub_2393D9044(9u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v45 = v19;
      _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "SetUpCodePairer: Discovered discriminator %u does not match any of our setup payloads", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "SetUpCodePairer: Discovered discriminator %u does not match any of our setup payloads");
    }

LABEL_39:
    v2 = *(a1 + 136);
    if (!v2)
    {
      return 0;
    }
  }

  v23 = *(a1 + 64) - v18;
  if (v23 != 72)
  {
    v34 = sub_2393D9044(9u);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v45 = 954437177 * (v23 >> 3);
      _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "SetUpCodePairer: Unable to handle discovered parameters with no discriminator, because it has %u possible payloads", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "SetUpCodePairer: Unable to handle discovered parameters with no discriminator, because it has %u possible payloads");
    }

    goto LABEL_39;
  }

LABEL_18:
  LODWORD(v50) = *(v18 + 16);
  *v42 = v46;
  *&v42[16] = v47;
  *&v42[20] = v48;
  v43 = v49;
  sub_2393E97D4(v42, buf, 0x4CuLL);
  v24 = sub_2393D9044(9u);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v42 = 136315138;
    *&v42[4] = buf;
    _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "Attempting PASE connection to %s", v42, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Attempting PASE connection to %s", buf);
  }

  sub_2394F61C8(a1);
  if (v47 == 1)
  {
    *(a1 + 144) = v47;
    *(a1 + 152) = v46;
    v25 = v48;
    *(a1 + 168) = v47;
    *(a1 + 172) = v25;
    *(a1 + 176) = v49;
    v26 = *v55;
    *(a1 + 248) = v54;
    *(a1 + 264) = v26;
    *(a1 + 276) = *&v55[12];
    v27 = v51;
    *v3 = v50;
    *(a1 + 200) = v27;
    v28 = v53;
    *(a1 + 216) = v52;
    *(a1 + 232) = v28;
    v29 = v56;
    *(a1 + 292) = v56;
    if (v29 == 1)
    {
      *v40 = v57;
      *(v40 + 8) = v58;
    }

    *v4 = v59;
    *(a1 + 328) = v60;
    v30 = *v62;
    *v5 = v61;
    *(a1 + 352) = v30;
    *(a1 + 361) = *&v62[9];
    *v41 = v63;
  }

  v31 = *(a1 + 24);
  v32 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v33 = sub_2394FBC2C(v31, v32, &v46);
  }

  else
  {
    v33 = sub_2394FBA70(v31, v32, &v46);
  }

  if (v33)
  {
    v35 = sub_2393D9044(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = sub_2393C9138();
      *v42 = 136315650;
      *&v42[4] = v36;
      *&v42[12] = 2080;
      *&v42[14] = "src/controller/SetUpCodePairer.cpp";
      *&v42[22] = 1024;
      LODWORD(v43) = 460;
      _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_ERROR, "%s at %s:%d", v42, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      v38 = sub_2393C9138();
      sub_2393D5320(0, 1, "%s at %s:%d", v38, "src/controller/SetUpCodePairer.cpp", 460);
    }

    sub_2394F6210(a1, v37);
    goto LABEL_39;
  }

  return 1;
}

uint64_t sub_2394F61C8(uint64_t result)
{
  if (*(result + 392) == 1)
  {
    sub_239538A2C();
  }

  *(result + 392) = 1;
  v1 = *(result + 24);
  v2 = *(v1 + 4336);
  if (v2 == result)
  {
    sub_239538994();
  }

  *(result + 80) = v2;
  *(v1 + 4336) = result;
  return result;
}

uint64_t sub_2394F6210(uint64_t result, uint64_t a2)
{
  if ((*(result + 392) & 1) == 0)
  {
    sub_239538AC4();
  }

  *(result + 392) = 0;
  *(*(result + 24) + 4336) = *(result + 80);
  *(result + 80) = 0;
  return result;
}

uint64_t sub_2394F6240(int64x2_t *a1, uint64_t a2, int a3)
{
  v8 = a3;
  v7 = a2;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Discovered device to be commissioned over BLE", v6, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Discovered device to be commissioned over BLE");
  }

  a1[5].i8[8] = 0;
  sub_2394F62EC(a1 + 6, &v7, &v8);
  return sub_2394F5C54(a1);
}

unint64_t sub_2394F62EC(int64x2_t *a1, uint64_t *a2, int *a3)
{
  v6 = a1[2].u64[0];
  if (!v6)
  {
    sub_2394F7D5C(a1);
    v6 = a1[2].u64[0];
  }

  v7 = a1->i64[1];
  v8 = (v7 + 8 * (v6 / 0x11));
  v9 = *v8 + 240 * (v6 % 0x11);
  if (a1[1].i64[0] == v7)
  {
    v9 = 0;
  }

  if (v9 == *v8)
  {
    v9 = *(v8 - 1) + 4080;
  }

  v10 = *a2;
  v11 = *a3;
  *(v9 - 200) = 0;
  *(v9 - 101) = 0;
  *(v9 - 208) = 0;
  *(v9 - 204) = 0;
  *(v9 - 80) = 0u;
  *(v9 - 64) = 0u;
  *(v9 - 48) = 0u;
  *(v9 - 32) = 0u;
  *(v9 - 16) = 0;
  *(v9 - 12) = 0;
  *(v9 - 8) = v11;
  *(v9 - 240) = 0;
  *(v9 - 232) = 0;
  *(v9 - 224) = 2;
  *(v9 - 222) = 5540;
  *(v9 - 220) = 0;
  *(v9 - 216) = 0;
  *(v9 - 72) = v10;
  v12 = vaddq_s64(a1[2], xmmword_2395D8800);
  a1[2] = v12;
  return *(a1->i64[1] + 8 * (v12.i64[0] / 0x11uLL)) + 240 * (v12.i64[0] % 0x11uLL);
}

void sub_2394F6400(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Commissionable node discovery over BLE failed: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v5 = sub_2393C9138();
    sub_2393D5320(9, 1, "Commissionable node discovery over BLE failed: %s", v5);
  }

  *(a1 + 88) = 0;
  if (a2)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "src/controller/SetUpCodePairer.cpp";
      v13 = 1024;
      v14 = 517;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      v8 = sub_2393C9138();
      sub_2393D5320(0, 1, "%s at %s:%d", v8, "src/controller/SetUpCodePairer.cpp", 517);
    }
  }
}

uint64_t sub_2394F65B8(uint64_t a1, unsigned __int16 *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Discovered device to be commissioned over NFC, Identifier: %u", &buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Discovered device to be commissioned over NFC, Identifier: %u", *a2);
  }

  *(a1 + 91) = 0;
  v21 = 0u;
  v22 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  LODWORD(v10) = 0;
  BYTE4(v10) = 0;
  BYTE8(v22) = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = *a2;
  buf = 0uLL;
  LOBYTE(v9) = 5;
  WORD1(v9) = 5540;
  DWORD1(v9) = 0;
  *(&v9 + 1) = v6;
  sub_2394F66F8((a1 + 96), &buf);
  return sub_2394F5C54(a1);
}

uint64_t sub_2394F66F8(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2 * (v4 - v5) + ((v4 - v5) >> 3) - 1;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_2394F825C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x11)) + 240 * (v7 % 0x11);
  v9 = *a2;
  *(v8 + 16) = *(a2 + 4);
  *v8 = v9;
  *(v8 + 20) = *(a2 + 5);
  *(v8 + 24) = *(a2 + 3);
  v10 = a2[2];
  v11 = a2[4];
  *(v8 + 48) = a2[3];
  *(v8 + 64) = v11;
  *(v8 + 32) = v10;
  v12 = a2[5];
  v13 = a2[6];
  v14 = a2[7];
  *(v8 + 124) = *(a2 + 124);
  *(v8 + 96) = v13;
  *(v8 + 112) = v14;
  *(v8 + 80) = v12;
  *(v8 + 140) = 0;
  v15 = *(a2 + 140);
  *(v8 + 140) = v15;
  if (v15 == 1)
  {
    v16 = *(a2 + 18);
    *(v8 + 152) = *(a2 + 38);
    *(v8 + 144) = v16;
  }

  v17 = a2[10];
  *(v8 + 176) = *(a2 + 22);
  *(v8 + 160) = v17;
  v18 = *(a2 + 184);
  v19 = *(a2 + 200);
  *(v8 + 209) = *(a2 + 209);
  *(v8 + 200) = v19;
  *(v8 + 184) = v18;
  *(v8 + 228) = *(a2 + 57);
  *(v8 + 232) = *(a2 + 58);
  v20 = a1[4];
  v21 = a1[5] + 1;
  a1[5] = v21;
  v22 = v20 + v21;
  v23 = a1[1];
  v24 = (v23 + 8 * (v22 / 0x11));
  v25 = *v24 + 240 * (v22 % 0x11);
  if (a1[2] == v23)
  {
    v25 = 0;
  }

  if (v25 == *v24)
  {
    v25 = *(v24 - 1) + 4080;
  }

  return v25 - 240;
}

void sub_2394F688C(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v5 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Commissionable node discovery over NFC failed: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v3 = sub_2393C9138();
    sub_2393D5320(9, 1, "Commissionable node discovery over NFC failed: %s", v3);
  }

  *(a1 + 91) = 0;
}

uint64_t sub_2394F6998(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    return 0;
  }

  v4 = sub_2393AB8BC(a2, a2);
  result = a1[3];
  if (!result)
  {
    return result;
  }

  result = (*(*result + 88))(result, v4);
  if (!result)
  {
    return result;
  }

  v6 = a1[7];
  v5 = a1[8];
  if (v6 == v5)
  {
    return 0;
  }

  while (1)
  {
    v7 = *(v6 + 2);
    if (!*(v6 + 2))
    {
      break;
    }

    v8 = v4[91];
    if (!v4[91] || v7 == v8)
    {
      break;
    }

    v18 = sub_2393D9044(9u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v23 = v8;
      v24 = 1024;
      v25 = v7;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Discovered device vendor ID (%u) does not match our vendor ID (%u).", buf, 0xEu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Discovered device vendor ID (%u) does not match our vendor ID (%u).");
    }

LABEL_35:
    v6 += 72;
    if (v6 == v5)
    {
      return 0;
    }
  }

  v10 = *(v6 + 4);
  if (*(v6 + 4))
  {
    v11 = v4[92];
    if (v4[92] && v10 != v11)
    {
      v20 = sub_2393D9044(9u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v23 = v11;
        v24 = 1024;
        v25 = v10;
        _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "Discovered device product ID (%u) does not match our product ID (%u).", buf, 0xEu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Discovered device product ID (%u) does not match our product ID (%u).");
      }

      goto LABEL_35;
    }
  }

  v13 = v4[90];
  v14 = *(v6 + 10);
  if (*(v6 + 12))
  {
    v15 = v13 >> 8;
  }

  else
  {
    v15 = v4[90];
  }

  v16 = sub_2393D9044(9u);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v14 != v15)
  {
    if (v17)
    {
      *buf = 67109120;
      v23 = v13;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "Discovered device discriminator (%u) does not match our discriminator.", buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Discovered device discriminator (%u) does not match our discriminator.");
    }

    goto LABEL_35;
  }

  if (v17)
  {
    *buf = 67109120;
    v23 = v13;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "Discovered device with discriminator %u matches one of our setup payloads", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Discovered device with discriminator %u matches one of our setup payloads", v4[90]);
  }

  return 1;
}

uint64_t sub_2394F6CAC(void *a1, void *a2)
{
  result = sub_2394F6998(a1, a2);
  if (result)
  {
    v5 = sub_2393D9044(9u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Discovered device to be commissioned over DNS-SD", v8, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Discovered device to be commissioned over DNS-SD");
    }

    v7 = sub_2393AB8BC(a2, v6);
    return sub_2394F4B08(a1, v7, *(v7 + 90) | 0x10000u);
  }

  return result;
}

uint64_t sub_2394F6D64(unint64_t *a1, const char *a2, unsigned int *a3, int *a4)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = 2 * (v9 - v8) + ((v9 - v8) >> 3) - 1;
  if (v9 == v8)
  {
    v10 = 0;
  }

  if (v10 == a1[5] + a1[4])
  {
    sub_2394F825C(a1);
    v8 = a1[1];
    v9 = a1[2];
  }

  if (v9 == v8)
  {
    v12 = 0;
  }

  else
  {
    v11 = a1[5] + a1[4];
    v12 = *(v8 + 8 * (v11 / 0x11)) + 240 * (v11 % 0x11);
  }

  sub_2394F7898(v12, a2, *a3, *a4);
  v13 = a1[4];
  v14 = a1[5] + 1;
  a1[5] = v14;
  v15 = v13 + v14;
  v16 = a1[1];
  v17 = (v16 + 8 * (v15 / 0x11));
  v18 = *v17 + 240 * (v15 % 0x11);
  if (a1[2] == v16)
  {
    v18 = 0;
  }

  if (v18 == *v17)
  {
    v18 = *(v17 - 1) + 4080;
  }

  return v18 - 240;
}

uint64_t sub_2394F6E7C(unint64_t *a1, const char *a2, unsigned int *a3, uint64_t *a4)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = 2 * (v9 - v8) + ((v9 - v8) >> 3) - 1;
  if (v9 == v8)
  {
    v10 = 0;
  }

  if (v10 == a1[5] + a1[4])
  {
    sub_2394F825C(a1);
    v8 = a1[1];
    v9 = a1[2];
  }

  if (v9 == v8)
  {
    v12 = 0;
  }

  else
  {
    v11 = a1[5] + a1[4];
    v12 = *(v8 + 8 * (v11 / 0x11)) + 240 * (v11 % 0x11);
  }

  sub_2394F7898(v12, a2, *a3, *a4);
  v13 = a1[4];
  v14 = a1[5] + 1;
  a1[5] = v14;
  v15 = v13 + v14;
  v16 = a1[1];
  v17 = (v16 + 8 * (v15 / 0x11));
  v18 = *v17 + 240 * (v15 % 0x11);
  if (a1[2] == v16)
  {
    v18 = 0;
  }

  if (v18 == *v17)
  {
    v18 = *(v17 - 1) + 4080;
  }

  return v18 - 240;
}

uint64_t sub_2394F6F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  if (a2 && v2 != a2)
  {
    return 0;
  }

  if (*(a1 + 392) == 1)
  {
    sub_2394F6210(a1, a2);
  }

  sub_2394F4BA8(a1);
  *(a1 + 40) = 0;
  return 1;
}

uint64_t sub_2394F7000(uint64_t a1)
{
  if (sub_2394F5C54(a1))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Trying connection to commissionee over different transport", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Trying connection to commissionee over different transport");
    }

    return 1;
  }

  v3 = 0;
  do
  {
    v4 = *(a1 + 88 + v3);
    if (v4)
    {
      break;
    }
  }

  while (v3++ != 3);
  if (v4)
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Waiting to discover commissionees that match our filters", v8, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Waiting to discover commissionees that match our filters");
    }

    return 1;
  }

  return 0;
}

uint64_t sub_2394F7118(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 88;
  do
  {
    result = *(v2 + v1);
    if (result)
    {
      break;
    }
  }

  while (v1++ != 3);
  return result;
}

void sub_2394F713C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (sub_2394F5994(a1))
  {
    v2 = sub_2393D9044(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = sub_2393C9138();
      v12 = 2080;
      v13 = "src/controller/SetUpCodePairer.cpp";
      v14 = 1024;
      v15 = 712;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      v3 = sub_2393C9138();
      sub_2393D5320(0, 1, "%s at %s:%d", v3, "src/controller/SetUpCodePairer.cpp", 712);
    }
  }

  if (sub_2394F5A70(a1))
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_2393C9138();
      *buf = 136315650;
      v11 = v5;
      v12 = 2080;
      v13 = "src/controller/SetUpCodePairer.cpp";
      v14 = 1024;
      v15 = 713;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      v6 = sub_2393C9138();
      sub_2393D5320(0, 1, "%s at %s:%d", v6, "src/controller/SetUpCodePairer.cpp", 713);
    }
  }

  *(a1 + 90) = 0;
  if (sub_2394F5B1C(a1))
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_2393C9138();
      *buf = 136315650;
      v11 = v8;
      v12 = 2080;
      v13 = "src/controller/SetUpCodePairer.cpp";
      v14 = 1024;
      v15 = 715;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      v9 = sub_2393C9138();
      sub_2393D5320(0, 1, "%s at %s:%d", v9, "src/controller/SetUpCodePairer.cpp", 715);
    }
  }

  *(a1 + 88) = 0;
}

void sub_2394F7424(uint64_t a1, int a2)
{
  if (a2 != 1)
  {
    goto LABEL_17;
  }

  if (*(a1 + 136))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Ignoring SecurePairingFailed status for now; we have more discovered devices to try", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Ignoring SecurePairingFailed status for now; we have more discovered devices to try");
    }

    return;
  }

  v3 = 0;
  do
  {
    v4 = *(a1 + 88 + v3);
    if (v4)
    {
      break;
    }
  }

  while (v3++ != 3);
  if (v4)
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring SecurePairingFailed status for now; we are waiting to see if we discover more devices", v9, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Ignoring SecurePairingFailed status for now; we are waiting to see if we discover more devices");
    }
  }

  else
  {
LABEL_17:
    v7 = *(a1 + 80);
    if (v7)
    {
      v8 = *(*v7 + 16);

      v8();
    }
  }
}

uint64_t sub_2394F7580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 80);
  sub_2394F6210(a1, a2);
  if (a2 == 50)
  {
    if (*(a1 + 144) == 1)
    {
      v10 = sub_239289A18((a1 + 144), v7);
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = sub_2394BA124();
      *buf = *(v10 + 57);
      v14 = (*(*v13 + 80))(v13, v10 + 184, v11, v12, buf);
      if (v14)
      {
        if (v14 != 45)
        {
          v15 = sub_2393D9044(9u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = sub_2393C9138();
            *buf = 136315138;
            *v19 = v16;
            _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Error when verifying the validity of an address: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v17 = sub_2393C9138();
            sub_2393D5320(9, 1, "Error when verifying the validity of an address: %s", v17);
          }
        }
      }
    }
  }

  else if (!a2)
  {
    v8 = sub_2393D9044(9u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "PASE session established with commissionee. Stopping discovery.", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "PASE session established with commissionee. Stopping discovery.");
    }

    sub_2394F4BA8(a1);
    *(a1 + 40) = 0;
    *buf = 1;
    *&v19[4] = "core_setup_code_pairer_pair_dev";
    v20 = 0;
    v21 = 3;
    result = sub_23948BD20(buf);
    if (v6)
    {
      return (*(*v6 + 24))(v6, a2 & 0xFFFFFFFF00000000, a3);
    }

    return result;
  }

  *(a1 + 144) = 0;
  result = sub_2394F7000(a1);
  if (result)
  {
    *(a1 + 400) = a2;
    *(a1 + 408) = a3;
  }

  else
  {
    *buf = 1;
    *&v19[4] = "core_setup_code_pairer_pair_dev";
    v20 = a2;
    v21 = 3;
    result = sub_23948BD20(buf);
    if (v6)
    {
      return (*(*v6 + 24))(v6, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2394F7838(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_2394F7868(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_2394F7898(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 5540;
  *(a1 + 40) = 0;
  *(a1 + 139) = 0;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = a3;
  *(a1 + 228) = *a2;
  strncpy((a1 + 184), a2 + 98, 0x29uLL);
  *(a1 + 224) = 0;
  v7 = &a2[16 * a4];
  v8 = *(a2 + 48);
  v9 = sub_2393CFBB4(v7 + 4);
  v10 = *a2;
  if (!v9)
  {
    v10 = 0;
  }

  *a1 = *(v7 + 1);
  *(a1 + 16) = 1;
  *(a1 + 18) = v8;
  *(a1 + 20) = v10;
  *(a1 + 24) = 0;
  if (a2[148] == 1)
  {
    sub_2394F7984(a1, *(a2 + 36));
  }

  if (a2[156] == 1)
  {
    sub_2394F79E0(a1, *(a2 + 38));
  }

  return a1;
}

uint64_t sub_2394F7984(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a1 + 140);
  if ((*(a1 + 140) & 1) == 0)
  {
    v5 = sub_239476060();
    *(a1 + 140) = 1;
    *(a1 + 144) = v5;
    *(a1 + 152) = a2;
  }

  *sub_2393E1D9C(v4, a2) = v2;
  return a1;
}

uint64_t sub_2394F79E0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a1 + 140);
  if ((*(a1 + 140) & 1) == 0)
  {
    v5 = sub_239476060();
    *(a1 + 140) = 1;
    *(a1 + 144) = v5;
    *(a1 + 152) = a2;
  }

  *(sub_2393E1D9C(v4, a2) + 1) = v2;
  return a1;
}

uint64_t sub_2394F7A44(uint64_t result, uint64_t a2, int a3, int a4)
{
  *(result + 40) = 0;
  *(result + 139) = 0;
  *(result + 32) = 0;
  *(result + 36) = 0;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0;
  *(result + 228) = 0;
  *(result + 232) = a3;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 2;
  *(result + 18) = 5540;
  *(result + 20) = 0;
  v4 = 176;
  if (a4)
  {
    v4 = 168;
  }

  *(result + 24) = 0;
  *(result + v4) = a2;
  return result;
}

void sub_2394F7AA0(void *a1)
{
  sub_2394F7B1C(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394F7AE0(uint64_t a1)
{
  sub_2394F7B1C((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void *sub_2394F7B1C(void *a1)
{
  *a1 = &unk_284BBF050;
  a1[1] = &unk_284BBF0F0;
  sub_2394F7B9C(a1 + 12);
  v3 = (a1 + 7);
  sub_2394F7C48(&v3);
  return a1;
}

uint64_t sub_2394F7B9C(void *a1)
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
    v5 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 17;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_2392982AC(a1);
}

void sub_2394F7C48(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_23948F6F8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2394F7C9C(uint64_t *a1)
{
  if (*a1)
  {
    sub_23948F6F8(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_2394F7CDC(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_239531804();
    }
  }

  return result;
}

uint64_t sub_2394F7CFC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x11)
  {
    a2 = 1;
  }

  if (v2 < 0x22)
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
    *(a1 + 32) -= 17;
  }

  return v4 ^ 1u;
}

void sub_2394F7D5C(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2 * (v2 - v1) + ((v2 - v1) >> 3) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x11)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    sub_2393BEFD8(a1, v9);
  }

  a1[4] = (v5 + 17);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  sub_2394F7F40(a1, v10);
}

void sub_2394F7F40(const void **a1, void *a2)
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

      sub_2393BEFD8(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_2394F804C(unint64_t *a1, void *a2)
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

      sub_2393BEFD8(a1, v11);
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

void sub_2394F8154(unint64_t *a1, void *a2)
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

      sub_2393BEFD8(a1[4], v11);
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

void sub_2394F825C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x11;
  v3 = v1 - 17;
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
    sub_2393BEFD8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_2394F804C(a1, &v9);
}

void sub_2394F83D0(const void **a1, void *a2)
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

      sub_2393BEFD8(a1[4], v9);
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

uint64_t sub_2394F84DC(uint64_t a1)
{
  *a1 = &unk_284BBE7C8;
  *(a1 + 8) = 0;
  v2 = 0;
  *(a1 + 16) = sub_2394BA124();
  *(a1 + 24) = 0;
  *a1 = &unk_284BBF168;
  *(a1 + 36) = 256;
  do
  {
    v3 = a1 + v2;
    *(a1 + v2 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 184) = 0;
    *(v3 + 188) = 0;
    *(v3 + 192) = 0;
    *(v3 + 196) = 0;
    *(v3 + 200) = 0;
    *(v3 + 202) = 0;
    *(v3 + 136) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 167) = 0u;
    sub_2394BD44C(a1 + v2 + 40);
    *(v3 + 208) = 0u;
    v4 = (a1 + v2 + 208);
    *(v4 + 235) = 0u;
    v4[13] = 0u;
    v4[14] = 0u;
    v4[11] = 0u;
    v4[12] = 0u;
    v4[9] = 0u;
    v4[10] = 0u;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v2 += 424;
    v4[1] = 0u;
    v4[2] = 0u;
  }

  while (v2 != 4240);
  *(a1 + 4280) = 0;
  *(a1 + 32) = 0;
  return a1;
}

unint64_t sub_2394F85D4(uint64_t a1, _BYTE *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/controller/CHIPDeviceController.cpp", 112);
  if (*(a1 + 32))
  {
    v4 = 0x7200000000;
    LODWORD(v5) = 3;
    return v4 | v5;
  }

  v6 = *a2;
  if (!*a2)
  {
    v4 = 0x7300000000;
    goto LABEL_21;
  }

  if (!*v6)
  {
    v4 = 0x7500000000;
    goto LABEL_21;
  }

  if (!v6[2])
  {
    v4 = 0x7600000000;
    goto LABEL_21;
  }

  if (!v6[3])
  {
    v4 = 0x7900000000;
    goto LABEL_21;
  }

  if (!v6[4])
  {
    v4 = 0x7C00000000;
    goto LABEL_21;
  }

  v5 = sub_2394BA160((a1 + 16));
  if (v5)
  {
LABEL_15:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v4 | v5;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    *(v8 + 8) = a1;
  }

  *(a1 + 8) = *(a2 + 1);
  *(a1 + 4296) = *(a2 + 47);
  if (!*(a2 + 3) && !*(a2 + 6) && !*(a2 + 10))
  {
    if (a2[92] != 1)
    {
      goto LABEL_27;
    }

    v10 = *(*a2 + 72);
    if (*(v10 + 2642))
    {
      v11 = sub_2392C86E0(a2 + 92, v7);
      if (sub_2394A7FC0(v10, *v11))
      {
        *(a1 + 36) = *sub_2392C86E0(a2 + 92, v12);
        goto LABEL_27;
      }

      v32 = sub_2393D9044(9u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_ERROR, "There is no fabric corresponding to the given fabricIndex", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9, 1, "There is no fabric corresponding to the given fabricIndex");
      }

      v4 = 0x9100000000;
    }

    else
    {
      v4 = 0x8900000000;
    }

LABEL_21:
    LODWORD(v5) = 47;
    return v4 | v5;
  }

  v5 = sub_2394F8980(a1, a2);
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_27:
  *(a1 + 4280) = sub_2394EF218(*a2);
  *(a1 + 32) = 1;
  *(a1 + 37) = a2[90];
  *(a1 + 38) = a2[91];
  v13 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v14 = sub_2393D9044(9u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_239293160(a1);
      if (v15)
      {
        v16 = *(v15 + 12);
      }

      else
      {
        v16 = 0;
      }

      v17 = sub_239293160(a1);
      if (v17)
      {
        v18 = *(v17 + 8);
      }

      else
      {
        v18 = 0;
      }

      v19 = sub_239293160(a1);
      if (v19)
      {
        v20 = *(v19 + 20);
      }

      else
      {
        v20 = 0;
      }

      v21 = sub_239293160(a1);
      if (v21)
      {
        v22 = *(v21 + 16);
      }

      else
      {
        v22 = 0;
      }

      *buf = 67110144;
      v34 = v13;
      v35 = 1024;
      v36 = v16;
      v37 = 1024;
      v38 = v18;
      v39 = 1024;
      v40 = v20;
      v41 = 1024;
      v42 = v22;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Joined the fabric at index %d. Fabric ID is 0x%08X%08X (Compressed Fabric ID: %08X%08X)", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v23 = *(a1 + 36);
      v24 = sub_239293160(a1);
      if (v24)
      {
        v25 = *(v24 + 12);
      }

      else
      {
        v25 = 0;
      }

      v26 = sub_239293160(a1);
      if (v26)
      {
        v27 = *(v26 + 8);
      }

      else
      {
        v27 = 0;
      }

      v28 = sub_239293160(a1);
      if (v28)
      {
        v29 = *(v28 + 20);
      }

      else
      {
        v29 = 0;
      }

      v30 = sub_239293160(a1);
      if (v30)
      {
        v31 = *(v30 + 16);
      }

      else
      {
        v31 = 0;
      }

      sub_2393D5320(9, 2, "Joined the fabric at index %d. Fabric ID is 0x%08X%08X (Compressed Fabric ID: %08X%08X)", v23, v25, v27, v29, v31);
    }
  }

  LODWORD(v5) = 0;
  v4 = 0;
  return v4 | v5;
}

unint64_t sub_2394F8980(uint64_t a1, _BYTE *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  memset(v53, 0, 24);
  v53[3] = &unk_284BB9138;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v57 = 16842751;
  v58 = 0;
  sub_238DCCC50(v53);
  v45 = 0;
  v46 = &unk_2395D6B90;
  v44 = 0;
  v4 = *(a2 + 47);
  v5 = *(a2 + 3);
  v6 = a2[32];
  v7 = sub_2393D52C4(0x190uLL);
  if (v7)
  {
    v8 = v7;
    v9 = sub_2393D52C4(0x190uLL);
    if (!v9)
    {
      v14 = 0xC200000000;
      v13 = 11;
LABEL_12:
      j__free(v8);
      goto LABEL_13;
    }

    v10 = v9;
    v11 = sub_2393D52C4(0x190uLL);
    if (!v11)
    {
      v14 = 0xC300000000;
      v13 = 11;
      goto LABEL_11;
    }

    v36 = v11;
    sub_238DB9BD8(&v42, v8, 400);
    v12 = sub_2394A1510(*(a2 + 9), *(a2 + 10), &v42);
    v13 = v12;
    if (v12)
    {
      goto LABEL_6;
    }

    sub_238DB6950(&v47, v42, v43);
    v12 = sub_2394A0354(&v47, &v46);
    v13 = v12;
    if (v12)
    {
      goto LABEL_6;
    }

    v47 = &unk_284BB9138;
    v48 = *v46;
    v18 = v46[2];
    v17 = v46[3];
    v19 = *(v46 + 64);
    v49 = v46[1];
    v52 = v19;
    v51 = v17;
    v50 = v18;
    v41 = 0uLL;
    if (*(a2 + 8))
    {
      sub_238DB9BD8(buf, v10, 400);
      v41 = *buf;
      v12 = sub_2394A1510(*(a2 + 7), *(a2 + 8), &v41);
      v13 = v12;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v20 = sub_2393D9044(9u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "Intermediate CA is not needed", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Intermediate CA is not needed");
      }
    }

    sub_238DB9BD8(buf, v36, 400);
    v12 = sub_2394A1510(*(a2 + 5), *(a2 + 6), buf);
    v13 = v12;
    if (!v12)
    {
      sub_238DB6950(v39, *buf, *&buf[8]);
      v12 = sub_2394A03F4(v39, &v44, &v45);
      v13 = v12;
      if (!v12)
      {
        v21 = *(*a2 + 72);
        if (a2[88] == 1)
        {
          v22 = sub_2394A7F44(*(*a2 + 72), &v47, v45, v44);
        }

        else
        {
          v22 = sub_2394A7DA0(*(*a2 + 72), &v47, v45);
        }

        if (v22)
        {
          v23 = *(v22 + 137);
        }

        else
        {
          v23 = 0;
        }

        v38 = v23;
        v24 = a2[89];
        if (a2[88] == 1)
        {
          *(v21 + 2644) |= 0x40u;
        }

        v25 = (v24 & 1) == 0;
        if (v5)
        {
          if (v22)
          {
            sub_238DB6950(v39, *buf, *&buf[8]);
            sub_238DB6950(v37, v41, *(&v41 + 1));
            v26 = v6 & 1;
            v27 = v21;
            v28 = v23;
            v29 = v5;
LABEL_37:
            v31 = sub_2394ABFF0(v27, v28, v39, v37, v29, v26, v25);
            goto LABEL_38;
          }

          sub_238DB6950(v39, v42, v43);
          v32 = sub_2394AB5D4(v21);
          if (!v32)
          {
            sub_238DB6950(v39, *buf, *&buf[8]);
            sub_238DB6950(v37, v41, *(&v41 + 1));
            v31 = sub_2394ABA3C(v21, v39, v37, v4, v5, v6 & 1, v25, &v38);
LABEL_38:
            v32 = v31;
            v33 = v25;
            if (!v31)
            {
LABEL_39:
              v32 = sub_2394AC43C(v21);
              v34 = v32 & 0xFFFFFFFF00000000;
              goto LABEL_46;
            }

            goto LABEL_44;
          }
        }

        else
        {
          if (v22)
          {
            if (!sub_2394AB290(v21, v23))
            {
              v14 = 0x12700000000;
              v35 = 16;
              v15 = v36;
LABEL_52:
              v13 = v35;
              goto LABEL_7;
            }

            v30 = v38;
            sub_238DB6950(v39, *buf, *&buf[8]);
            sub_238DB6950(v37, v41, *(&v41 + 1));
            v27 = v21;
            v28 = v30;
            v29 = 0;
            v26 = 0;
            goto LABEL_37;
          }

          sub_238DB6950(v39, v42, v43);
          v32 = sub_2394AB5D4(v21);
          if (!v32)
          {
            sub_238DB6950(v39, *buf, *&buf[8]);
            sub_238DB6950(v37, v41, *(&v41 + 1));
            v33 = v25;
            v32 = sub_2394ABA3C(v21, v39, v37, v4, 0, 0, v25, &v38);
            if (!v32)
            {
              if (sub_2394AB290(v21, v38))
              {
                goto LABEL_39;
              }

              v34 = 0x13B00000000;
              LODWORD(v32) = 16;
LABEL_45:
              sub_2394A9DC0(v21);
LABEL_46:
              v15 = v36;
              if (v32)
              {
                v35 = v32 | v34;
                v14 = v34 & 0xFFFFFFFF00000000;
              }

              else if (v38)
              {
                v14 = 0;
                v35 = 0;
                *(a1 + 36) = v38;
                *(a1 + 39) = v33;
              }

              else
              {
                v14 = 0x14D00000000;
                v35 = 172;
              }

              goto LABEL_52;
            }

LABEL_44:
            v34 = v32 & 0xFFFFFFFF00000000;
            goto LABEL_45;
          }
        }

        v33 = v25;
        goto LABEL_44;
      }
    }

LABEL_6:
    v14 = v12 & 0xFFFFFFFF00000000;
    v15 = v36;
LABEL_7:
    j__free(v15);
LABEL_11:
    j__free(v10);
    goto LABEL_12;
  }

  v14 = 0xC100000000;
  v13 = 11;
LABEL_13:
  sub_238DCCC50(v53);
  return v14 | v13;
}

unint64_t sub_2394F8F00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!*(a1 + 36))
  {
    v13 = 0x15800000000;
LABEL_10:
    v14 = 172;
    return v14 | v13;
  }

  v6 = *(a1 + 4280);
  if (!v6)
  {
    v13 = 0x15900000000;
    goto LABEL_10;
  }

  v11 = *(v6 + 72);
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v12 = sub_2394A03F4(a2, &v31, &v32);
  if (!v12)
  {
    v12 = sub_2394A87A4(v11, *(a1 + 36), &v29);
    if (!v12)
    {
      v12 = sub_2394A052C(a2, &v27);
      if (!v12)
      {
        v16 = sub_239293160(a1);
        v17 = *v16 != v31 || !sub_239220F58(&v29, &v27);
        v18 = *(a1 + 36);
        if (a4)
        {
          v19 = *(a1 + 39);
          v20 = v11;
          v21 = a2;
          v22 = a3;
          v23 = a4;
          v24 = a5;
        }

        else
        {
          if (!sub_2394AB290(v11, v18))
          {
            v13 = 0x17100000000;
            LODWORD(v12) = 16;
            goto LABEL_7;
          }

          v18 = *(a1 + 36);
          v19 = *(a1 + 39);
          v20 = v11;
          v21 = a2;
          v22 = a3;
          v23 = 0;
          v24 = 0;
        }

        v12 = sub_2394ABFF0(v20, v18, v21, v22, v23, v24, v19);
        if (v12)
        {
          sub_2394A9DC0(v11);
        }

        else
        {
          v12 = sub_2394AC43C(v11);
        }

        if (!v12)
        {
          if (v17)
          {
            sub_239497630(*(*(a1 + 4280) + 40), *(a1 + 36));
          }

          v25 = sub_2393D9044(9u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 0;
            _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_DEFAULT, "Controller NOC chain has updated", v26, 2u);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(9, 2, "Controller NOC chain has updated");
          }

          v13 = 0;
          LODWORD(v12) = 0;
          goto LABEL_7;
        }
      }
    }
  }

  v13 = v12 & 0xFFFFFFFF00000000;
LABEL_7:
  v14 = v12;
  return v14 | v13;
}

void sub_2394F9134(uint64_t a1)
{
  sub_23947632C("src/controller/CHIPDeviceController.cpp", 396);
  if (*(a1 + 32))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Shutting down the controller", v6, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(9, 3, "Shutting down the controller");
    }

    *(a1 + 32) = 0;
    if (*(a1 + 36))
    {
      v3 = sub_2394C7C20();
      sub_2394C8644(v3, *(a1 + 36));
      sub_2394C4CFC(*(*(a1 + 4280) + 96));
      v4 = *(*(a1 + 4280) + 80);
      v7 = *(a1 + 36);
      sub_2393D6A10((v4 + 56), &v7, sub_23950F110);
      sub_239497630(*(*(a1 + 4280) + 40), *(a1 + 36));
      if (*(a1 + 38) == 1)
      {
        sub_2394A9924(*(*(a1 + 4280) + 72), *(a1 + 36));
      }

      else if (*(a1 + 37) == 1)
      {
        sub_2394AA948(*(*(a1 + 4280) + 72), *(a1 + 36));
      }
    }

    sub_2394EF25C(*(a1 + 4280));
    *(a1 + 4280) = 0;
    sub_2394BA220(a1 + 16, v5);
    *(a1 + 8) = 0;
  }
}

unint64_t sub_2394F928C(uint64_t a1, uint64_t a2, _OWORD *a3, __int16 *a4)
{
  if (*(a1 + 32) != 1)
  {
    return 0x1BA00000003;
  }

  v20 = v4;
  v21 = v5;
  v15 = 0uLL;
  v16 = 0;
  v17 = 5540;
  v18 = 0;
  v19 = 0;
  v8 = *(*(a1 + 4280) + 96);
  v9 = *(a1 + 36);
  v13 = a2;
  v14 = v9;
  v10 = sub_2394C4D4C(v8, &v13, &v15, 0);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v10) = 0;
    v11 = 0;
    *a3 = v15;
    *a4 = v17;
  }

  return v11 | v10;
}

unint64_t sub_2394F934C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    v12 = v3;
    v13 = v4;
    v5 = *(*(a1 + 4280) + 96);
    v6 = *(a1 + 36);
    v10 = a2;
    v11 = v6;
    v7 = sub_2394C4D4C(v5, &v10, a3, 0);
    if (v7)
    {
      v8 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v7) = 0;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0x1C400000000;
    LODWORD(v7) = 3;
  }

  return v8 | v7;
}

unint64_t sub_2394F93D0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  v6 = a3;
  result = sub_2393EBA44(a5, a2, a4, 0, &v6);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2394F9420(uint64_t a1)
{
  v2 = (a1 + 9170);
  v3 = (a1 + 4368);
  v4 = sub_2394F84DC(a1);
  *v4 = &unk_284BBF1B0;
  *(v4 + 4304) = &unk_284BBF238;
  *(v4 + 4312) = &unk_284BBF2E0;
  *(v4 + 4320) = 0u;
  *(v4 + 4336) = 0u;
  *(v4 + 4345) = 0u;
  *(v4 + 4368) = 1;
  v3[2] = 0;
  *(v4 + 4400) = 0;
  *(v4 + 4464) = 0u;
  *(v4 + 4473) = 0u;
  *(v4 + 4432) = 0u;
  *(v4 + 4448) = 0u;
  *(v4 + 4472) = v4 + 4456;
  *(v4 + 4464) = v4 + 4456;
  *(v4 + 4496) = 0u;
  *(v4 + 4512) = 0;
  *(v4 + 4514) = 5540;
  v3[168] = 0;
  *(v4 + 4635) = 0;
  *(v4 + 4532) = 0;
  *(v4 + 4516) = 0u;
  *(v4 + 4672) = 0;
  *(v4 + 4656) = 0u;
  *(v4 + 4688) = v4 + 4680;
  *(v4 + 4680) = v4 + 4680;
  *(v4 + 4696) = 0;
  *(v4 + 4704) = v4;
  *(v4 + 4712) = sub_2394F96DC;
  *(v4 + 4728) = v4 + 4720;
  *(v4 + 4720) = v4 + 4720;
  *(v4 + 4736) = 0;
  *(v4 + 4744) = v4;
  *(v4 + 4752) = sub_2394F9A24;
  *(v4 + 4768) = v4 + 4760;
  *(v4 + 4760) = v4 + 4760;
  *(v4 + 4776) = 0;
  *(v4 + 4784) = v4;
  *(v4 + 4792) = sub_2394F9C78;
  *(v4 + 4808) = v4 + 4800;
  *(v4 + 4800) = v4 + 4800;
  *(v4 + 4816) = 0;
  *(v4 + 4824) = v4;
  *(v4 + 4832) = sub_2394F9E98;
  *(v4 + 4848) = v4 + 4840;
  *(v4 + 4840) = v4 + 4840;
  *(v4 + 4856) = 0;
  *(v4 + 4864) = v4;
  *(v4 + 4872) = sub_2394FA684;
  *(v4 + 4880) = &unk_284BBF050;
  *(v4 + 4888) = &unk_284BBF0F0;
  *(v4 + 4896) = 0;
  *(v4 + 4904) = v4;
  *(v4 + 4912) = 0u;
  *(v4 + 4928) = 512;
  v3[904] = 0;
  *(v4 + 4936) = 0u;
  *(v4 + 4952) = 0u;
  *(v4 + 4968) = 0;
  *(v4 + 5024) = 0;
  *(v4 + 5008) = 0u;
  *(v4 + 4992) = 0u;
  *(v4 + 4976) = 0u;
  *(v4 + 5280) = 0u;
  sub_2394EA000(v4 + 5296);
  *v2 = 0;
  v2[4] = 0;
  v2[6] = 0;
  *(a1 + 9136) = 0u;
  *(a1 + 9152) = 0u;
  *(a1 + 9168) = 0;
  *(a1 + 9192) = 0u;
  return a1;
}

void sub_2394F96DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  LODWORD(v21) = 1;
  *&v22 = "core_dcm_operational_setup";
  DWORD2(v22) = 0;
  BYTE12(v22) = 3;
  sub_23948BD20(&v21);
  if ((*(a1 + 4368) & 0xFE) != 0x1E)
  {
    sub_239538BF4();
  }

  v6 = (*(**(a1 + 4344) + 24))(*(a1 + 4344));
  if (v6 != (*(**a3 + 48))())
  {
    sub_239538C8C();
  }

  sub_2394FE658(a1);
  v21 = -1;
  v29 = 0;
  sub_23950F2A0(v7, a2, a3);
  v9.n128_u64[0] = &unk_284BBE888;
  v9.n128_u64[1] = v7[1];
  v10 = v7[2];
  sub_239495A4C(v11, v8);
  *&v11[40] = *&v8[40];
  sub_239504510(&v21, &v9);
  v9.n128_u64[0] = &unk_284BBE888;
  sub_239495880(v11);
  v7[0] = &unk_284BBE888;
  sub_239495880(v8);
  v12 = v21;
  if (v21 <= 2)
  {
    if (!v21)
    {
      v13 = v22;
      goto LABEL_19;
    }

    if (v21 == 1 || v21 == 2)
    {
      v13 = v22;
      v14 = v23;
      goto LABEL_19;
    }
  }

  else
  {
    if (v21 <= 4)
    {
      if (v21 == 3)
      {
        v13 = v22;
        v14 = v23;
        v15 = v24;
        v16 = v25;
      }

      else
      {
        *&v13 = &unk_284BBE888;
        *(&v13 + 1) = *(&v22 + 1);
        *&v14 = v23;
        sub_239495A4C(&v14 + 8, &v23 + 8);
        v17 = v26;
      }

      goto LABEL_19;
    }

    if (v21 == 5)
    {
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v13 = v22;
      v14 = v23;
      v15 = v24;
      v16 = v25;
      goto LABEL_19;
    }

    if (v21 == 6)
    {
      LOWORD(v13) = v22;
      goto LABEL_19;
    }
  }

  if ((v21 - 7) <= 2)
  {
    LOBYTE(v13) = v22;
  }

LABEL_19:
  v20 = v29;
  sub_2394FDB60(a1, 0, 0, &v12);
  if (v12 == 4)
  {
    *&v13 = &unk_284BBE888;
    sub_239495880(&v14 + 8);
  }

  if (v21 == 4)
  {
    *&v22 = &unk_284BBE888;
    sub_239495880(&v23 + 8);
  }
}

void sub_2394F9A24(uint64_t a1, void *a2, unint64_t a3, const char *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  *buf = 1;
  *&v16[4] = "core_dcm_operational_setup";
  v17 = a3;
  v18 = 3;
  sub_23948BD20(buf);
  if ((*(a1 + 4368) & 0xFE) != 0x1E)
  {
    sub_239538D24();
  }

  if ((*(**(a1 + 4344) + 24))(*(a1 + 4344)) != *a2)
  {
    sub_239538DBC();
  }

  sub_2394FE658(a1);
  v8 = sub_2393D9044(9u);
  v9 = v8;
  if (v5)
  {
    v10 = HIDWORD(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_2393C9138();
      *buf = 136315138;
      *v16 = v11;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Device connection failed. Error %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v12 = sub_2393C9138();
      sub_2393D5320(9, 2, "Device connection failed. Error %s", v12);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Device connection failed without a valid error code.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Device connection failed without a valid error code.");
    }

    a4 = "src/controller/CHIPDeviceController.cpp";
    LODWORD(v10) = 2203;
    LODWORD(v5) = 172;
  }

  v13[0] = -1;
  v14[80] = 0;
  sub_2394FDB60(a1, v5 | (v10 << 32), a4, v13);
  if (v13[0] == 4)
  {
    v13[1] = &unk_284BBE888;
    sub_239495880(v14);
  }
}

uint64_t sub_2394F9C78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = sub_2393D9044(9u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = *a2;
    v10 = HIDWORD(*a2);
    v11 = *(a2 + 8);
    *buf = 67110146;
    v21 = v10;
    v22 = 1024;
    v23 = v9;
    v24 = 1024;
    v25 = v11;
    v26 = 2080;
    v27 = sub_2393C9138();
    v28 = 1024;
    v29 = a5;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Session establishment failed for <%08X%08X, %d>, error: %s.  Next retry expected to get a response to Sigma1 or fail within %d seconds", buf, 0x24u);
  }

  if (sub_2393D5398(1u))
  {
    v12 = *a2;
    v13 = HIDWORD(*a2);
    v14 = *(a2 + 8);
    v15 = sub_2393C9138();
    sub_2393D5320(9, 1, "Session establishment failed for <%08X%08X, %d>, error: %s.  Next retry expected to get a response to Sigma1 or fail within %d seconds", v13, v12, v14, v15, a5);
  }

  if ((*(a1 + 4368) & 0xFE) != 0x1E)
  {
    sub_239538E54();
  }

  v16 = (*(**(a1 + 4344) + 24))(*(a1 + 4344));
  if (v16 != *a2)
  {
    sub_239538EEC();
  }

  result = sub_2394FB1BC(a1, v16);
  if (result)
  {
    v18 = a5 + 60;
    if (a5 > 0xFFC3u)
    {
      v18 = -1;
    }

    v19 = *(a1 + 4368);
    buf[0] = 1;
    v21 = 30000;
    return sub_239500688(a1, result, v19, v18, buf, sub_2395045BC, sub_239504688, 1);
  }

  return result;
}

void sub_2394F9E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v59 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "OnDeviceAttestationInformationVerification";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 4368) == 12)
  {
    if (v3)
    {
      v7 = 0x54B00000020;
    }

    else
    {
      v7 = 0;
    }

    v56 = 6;
    v8 = &v56;
    LOWORD(v57) = v3;
    v58 = 0;
    if (v3)
    {
      v9 = "src/controller/CHIPDeviceController.cpp";
    }

    else
    {
      v9 = 0;
    }

    sub_2394FDB60(a1, v7, v9, &v56);
    if (v56 == 4)
    {
      v57 = &unk_284BBE888;
LABEL_12:
      v11 = (v8 + 4);
LABEL_80:
      v10 = sub_239495880(v11);
      goto LABEL_81;
    }

    goto LABEL_81;
  }

  if (!*(a1 + 4344))
  {
    v19 = sub_2393D9044(9u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Device attestation verification result received when we're not commissioning a device", buf, 2u);
    }

    v10 = sub_2393D5398(1u);
    if (v10)
    {
      sub_2393D5320(9, 1, "Device attestation verification result received when we're not commissioning a device");
    }

    goto LABEL_81;
  }

  v12 = (*(**(a1 + 9136) + 24))(*(a1 + 9136));
  v14 = *(v12 + 584);
  if (*(v12 + 570) == 1 && (v15 = sub_2394FFDA4((v12 + 570), v13), v16 = *v15, *v15) || (v16 = v3) != 0)
  {
    v55 = 0;
    *&buf[8] = v16;
    *buf = 6;
    v17 = sub_2393D9044(9u);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v16 == 703)
    {
      if (v18)
      {
        *v35 = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed in verifying 'Attestation Information' command received from the device due to default DeviceAttestationVerifier Class not being overridden by a real implementation.", v35, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9, 1, "Failed in verifying 'Attestation Information' command received from the device due to default DeviceAttestationVerifier Class not being overridden by a real implementation.");
      }

      v39 = *buf;
      if (*buf <= 2)
      {
        if (!*buf)
        {
          v40 = *&buf[8];
          goto LABEL_65;
        }

        if (*buf == 1 || *buf == 2)
        {
          v40 = *&buf[8];
          v41 = v49;
          goto LABEL_65;
        }
      }

      else
      {
        if (*buf <= 4)
        {
          if (*buf == 3)
          {
            v40 = *&buf[8];
            v41 = v49;
            v42 = v50;
            v43 = v51;
          }

          else
          {
            *&v40 = &unk_284BBE888;
            *(&v40 + 1) = *&buf[16];
            *&v41 = v49;
            sub_239495A4C(&v41 + 8, &v49 + 8);
            v44 = v52;
          }

          goto LABEL_65;
        }

        if (*buf == 5)
        {
          v44 = v52;
          v45 = v53;
          v46 = v54;
          v40 = *&buf[8];
          v41 = v49;
          v42 = v50;
          v43 = v51;
          goto LABEL_65;
        }

        if (*buf == 6)
        {
          LOWORD(v40) = *&buf[8];
          goto LABEL_65;
        }
      }

      if ((*buf - 7) <= 2)
      {
        LOBYTE(v40) = buf[8];
      }

LABEL_65:
      v47 = v55;
      v22 = &v39;
      sub_2394FDB60(a1, 0x5690000002DLL, "src/controller/CHIPDeviceController.cpp", &v39);
      if (v39 == 4)
      {
        *&v40 = &unk_284BBE888;
LABEL_77:
        v10 = sub_239495880((v22 + 4));
        goto LABEL_78;
      }

      goto LABEL_78;
    }

    if (v18)
    {
      *v35 = 67109378;
      v36 = v16;
      v37 = 2080;
      v38 = sub_2394B9798(v16);
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed in verifying 'Attestation Information' command received from the device: err %hu (%s)", v35, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      v20 = sub_2394B9798(v16);
      sub_2393D5320(9, 1, "Failed in verifying 'Attestation Information' command received from the device: err %hu (%s)", v16, v20);
    }

    if (v14)
    {
      sub_2394FFDC4(a1, a2, v16);
      goto LABEL_78;
    }

    v26 = *buf;
    if (*buf <= 2)
    {
      if (!*buf)
      {
        v27 = *&buf[8];
        goto LABEL_75;
      }

      if (*buf == 1 || *buf == 2)
      {
        v27 = *&buf[8];
        v28 = v49;
        goto LABEL_75;
      }
    }

    else
    {
      if (*buf <= 4)
      {
        if (*buf == 3)
        {
          v27 = *&buf[8];
          v28 = v49;
          v29 = v50;
          v30 = v51;
        }

        else
        {
          *&v27 = &unk_284BBE888;
          *(&v27 + 1) = *&buf[16];
          *&v28 = v49;
          sub_239495A4C(&v28 + 8, &v49 + 8);
          v31 = v52;
        }

        goto LABEL_75;
      }

      if (*buf == 5)
      {
        v31 = v52;
        v32 = v53;
        v33 = v54;
        v27 = *&buf[8];
        v28 = v49;
        v29 = v50;
        v30 = v51;
        goto LABEL_75;
      }

      if (*buf == 6)
      {
        LOWORD(v27) = *&buf[8];
        goto LABEL_75;
      }
    }

    if ((*buf - 7) <= 2)
    {
      LOBYTE(v27) = buf[8];
    }

LABEL_75:
    v34 = v55;
    v22 = &v26;
    sub_2394FDB60(a1, 0x57A00000020, "src/controller/CHIPDeviceController.cpp", &v26);
    if (v26 == 4)
    {
      *&v27 = &unk_284BBE888;
      goto LABEL_77;
    }

LABEL_78:
    if (*buf != 4)
    {
      goto LABEL_81;
    }

    *&buf[8] = &unk_284BBE888;
    v11 = &v49 + 8;
    goto LABEL_80;
  }

  if (v14 && (*(*v14 + 32))(v14))
  {
    sub_2394FFDC4(a1, a2, 0);
    goto LABEL_81;
  }

  v21 = sub_2393D9044(9u);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "Successfully validated 'Attestation Information' command received from the device.", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Successfully validated 'Attestation Information' command received from the device.");
  }

  v24[0] = -1;
  v25 = 0;
  v8 = v24;
  sub_2394FDB60(a1, 0, 0, v24);
  if (v24[0] == 4)
  {
    v24[1] = &unk_284BBE888;
    goto LABEL_12;
  }

LABEL_81:
  v23 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v23))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "OnDeviceAttestationInformationVerification";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

void sub_2394FA684(uint64_t a1, unint64_t a2, const char *a3, __int128 *a4, __int128 *a5, __int128 *a6, _BYTE *a7, _BYTE *a8)
{
  v12 = a2;
  v41[2] = *MEMORY[0x277D85DE8];
  v14 = HIDWORD(a2);
  v15 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v15))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "OnDeviceNOCChainGeneration";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v41[0] = 0;
  v41[1] = 0;
  if (!v12)
  {
    if (*a7)
    {
      v12 = 0;
    }

    else
    {
      v16 = sub_2393D9044(9u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Did not have an IPK from the OperationalCredentialsIssuer! Cannot commission.", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9, 1, "Did not have an IPK from the OperationalCredentialsIssuer! Cannot commission.");
      }

      a3 = "src/controller/CHIPDeviceController.cpp";
      v14 = 1671;
      v12 = 47;
    }
  }

  v17 = sub_2393D9044(9u);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_2393C9138();
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Received callback from the CA for NOC Chain generation. Status: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v20 = sub_2393C9138();
    sub_2393D5320(9, 2, "Received callback from the CA for NOC Chain generation. Status: %s", v20);
  }

  if (!v12)
  {
    if (*(a1 + 32) == 1)
    {
      v12 = 0;
      goto LABEL_23;
    }

    a3 = "src/controller/CHIPDeviceController.cpp";
    v14 = 1678;
    v12 = 3;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v21 = sub_2393C9138();
    *buf = 136315138;
    *&buf[4] = v21;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed in generating device's operational credentials. Error: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v22 = sub_2393C9138();
    sub_2393D5320(9, 1, "Failed in generating device's operational credentials. Error: %s", v22);
  }

LABEL_23:
  v40 = 0;
  v28 = *a4;
  v30 = *a5;
  v32 = *a6;
  if (*a7 == 1)
  {
    v23 = *sub_2393E088C(a7, v19);
  }

  else
  {
    v23 = v41;
  }

  if (*a8 == 1)
  {
    v24 = sub_239289A18(a8, v19);
LABEL_29:
    v25 = *v24;
    goto LABEL_30;
  }

  v24 = sub_239293160(a1);
  if (v24)
  {
    goto LABEL_29;
  }

  v25 = 0;
LABEL_30:
  *&buf[8] = v28;
  v38[0] = v30;
  v38[1] = v32;
  *&v39 = v23;
  *(&v39 + 1) = v25;
  *buf = 3;
  v33 = 3;
  v34 = v28;
  v35[0] = v30;
  v35[1] = v32;
  v35[2] = v39;
  v36 = 0;
  sub_2394FDB60(a1, v12 | (v14 << 32), a3, &v33);
  if (v33 == 4)
  {
    *&v34 = &unk_284BBE888;
    v26 = sub_239495880(v35 + 8);
  }

  if (*buf == 4)
  {
    *&buf[8] = &unk_284BBE888;
    v26 = sub_239495880(v38 + 8);
  }

  v27 = sub_23948B4CC(v26);
  if (os_signpost_enabled(v27))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "OnDeviceNOCChainGeneration";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

unint64_t sub_2394FAB20(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    v8 = 0x1E900000000;
    LODWORD(v7) = 47;
    return v8 | v7;
  }

  a1[536] = v2;
  v5 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v5;
  *v17 = *(a2 + 64);
  *&v17[12] = *(a2 + 76);
  v6 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v6;
  v18 = *(a2 + 92);
  if (v18 == 1)
  {
    v19 = *(a2 + 93);
  }

  v20 = *(a2 + 94);
  v7 = sub_2394F85D4(a1, v16);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFF00000000;
    return v8 | v7;
  }

  a1[542] = *(a2 + 96);
  v9 = *(a2 + 112);
  a1[1150] = v9;
  if (v9)
  {
    goto LABEL_8;
  }

  v13 = sub_2394B9C74();
  a1[1150] = v13;
  v14 = sub_2393D9044(9u);
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "*** Missing DeviceAttestationVerifier configuration at DeviceCommissioner init: using global default, consider passing one in CommissionerInitParams.", v16, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "*** Missing DeviceAttestationVerifier configuration at DeviceCommissioner init: using global default, consider passing one in CommissionerInitParams.");
    }

LABEL_8:
    LODWORD(v7) = 0;
    v8 = 0;
    v10 = *(a2 + 104);
    if (!v10)
    {
      v10 = a1 + 662;
    }

    a1[1142] = v10;
    v11 = a1[535];
    a1[614] = *v11;
    a1[612] = v11[3];
    return v8 | v7;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Missing DeviceAttestationVerifier configuration at DeviceCommissioner init and none set with Credentials::SetDeviceAttestationVerifier()!", v16, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(9, 1, "Missing DeviceAttestationVerifier configuration at DeviceCommissioner init and none set with Credentials::SetDeviceAttestationVerifier()!");
  }

  v8 = 0x1F900000000;
  LODWORD(v7) = 47;
  return v8 | v7;
}

void sub_2394FAD00(uint64_t result)
{
  if (*(result + 32))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Shutting down the commissioner", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(9, 3, "Shutting down the commissioner");
    }

    sub_2394F6F94(result + 4880, 0);
    v3 = *(result + 4352);
    if (v3 && *(v3 + 80) == 1)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Setup in progress, stopping setup before shutting down", v4, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(9, 3, "Setup in progress, stopping setup before shutting down");
      }

      (*(*result + 64))(result, 0x23400000002, "src/controller/CHIPDeviceController.cpp");
    }

    sub_2394FAE7C(result);
    v6 = result;
    sub_2393D6A10((result + 4456), &v6, sub_23950F568);
    sub_2394F9134(result);
  }
}

void sub_2394FAE7C(uint64_t result)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(result + 4328))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = sub_2394F2C88(*(result + 4368));
      *buf = 136315138;
      v17 = v3;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Cancelling read request for step '%s'", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      v4 = sub_2394F2C88(*(result + 4368));
      sub_2393D5320(9, 3, "Cancelling read request for step '%s'", v4);
    }

    sub_2394FE578((result + 4328), 0);
    sub_2394FE5E8((result + 4320), 0);
  }

  if (*(result + 4400))
  {
    v5 = sub_2393D9044(9u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_2394F2C88(*(result + 4368));
      *buf = 136315138;
      v17 = v6;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Cancelling command invocation for step '%s'", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      v7 = sub_2394F2C88(*(result + 4368));
      sub_2393D5320(9, 3, "Cancelling command invocation for step '%s'", v7);
    }

    v8 = *(result + 4400);
    if (!v8)
    {
      goto LABEL_28;
    }

    (*(*v8 + 48))(v8);
    sub_23950F81C(result + 4376);
  }

  if (!*(result + 4432))
  {
    goto LABEL_21;
  }

  v9 = sub_2393D9044(9u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = sub_2394F2C88(*(result + 4368));
    *buf = 136315138;
    v17 = v10;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Cancelling write request for step '%s'", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    v11 = sub_2394F2C88(*(result + 4368));
    sub_2393D5320(9, 3, "Cancelling write request for step '%s'", v11);
  }

  v12 = *(result + 4432);
  if (!v12)
  {
LABEL_28:
    sub_2393E97BC();
  }

  (*(*v12 + 48))(v12);
  sub_23950F81C(result + 4408);
LABEL_21:
  if (*(result + 4696))
  {
    v13 = sub_2393D9044(9u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = sub_2394F2C88(*(result + 4368));
      *buf = 136315138;
      v17 = v14;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_INFO, "Cancelling CASE setup for step '%s'", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      v15 = sub_2394F2C88(*(result + 4368));
      sub_2393D5320(9, 3, "Cancelling CASE setup for step '%s'", v15);
    }

    sub_2394FE658(result);
  }
}

uint64_t sub_2394FB1BC(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v3 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v3))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "FindCommissioneeDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v8 = 0;
  *buf = &v9;
  *&buf[8] = &v8;
  v4 = sub_2393D6A10((a1 + 4456), buf, sub_23950F588);
  v5 = v8;
  v6 = sub_23948B4CC(v4);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "FindCommissioneeDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v5;
}

uint64_t sub_2394FB32C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4[0] = a2;
  v4[1] = &v3;
  sub_2393D6A10((a1 + 4456), v4, sub_23950F604);
  return v3;
}

void sub_2394FB378(void *a1, uint64_t a2)
{
  if (*(a1[535] + 24) && *(a2 + 64) == 2)
  {
    v4 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Closing all BLE connections", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(34, 2, "Closing all BLE connections");
    }

    sub_2393CC984();
  }

  v5 = sub_23948A9E8()[2];
  if (v5)
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Stopping discovery of all NFC tags", v7, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Stopping discovery of all NFC tags");
    }

    (*(*v5 + 32))(v5);
  }

  if (a1[544] == a2)
  {
    a1[544] = 0;
  }

  if (a1[543] == a2)
  {
    a1[543] = 0;
  }

  sub_2394FB4F4((a1 + 555), a2);
}

void sub_2394FB4F4(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239532AB8();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394FB5A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v4 = sub_2394FB1BC(a1, a2);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      *a3 = v4;
    }

    else
    {
      v5 = 0x29E00000000;
      v6 = 47;
    }
  }

  else
  {
    v5 = 0x29B00000000;
    v6 = 47;
  }

  return v6 | v5;
}

unint64_t sub_2394FB610(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v12))
  {
    v24 = 136315394;
    v25 = "DeviceCommissioner";
    v26 = 2080;
    *v27 = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v24, 0x16u);
  }

  v13 = *(a1 + 9136);
  if (v13)
  {
    v14 = (*(*v13 + 16))(v13, a4);
    v15 = v14;
    if (v14)
    {
      v16 = v14 & 0xFFFFFFFF00000000;
    }

    else
    {
      LOBYTE(v24) = *a6;
      if (v24 == 1)
      {
        HIDWORD(v25) = *(a6 + 8);
        v18 = *(a6 + 128);
        v33 = *(a6 + 112);
        v34 = v18;
        v35[0] = *(a6 + 144);
        *(v35 + 11) = *(a6 + 155);
        v19 = *(a6 + 64);
        v29 = *(a6 + 48);
        v30 = v19;
        v20 = *(a6 + 96);
        v31 = *(a6 + 80);
        v32 = v20;
        v21 = *(a6 + 32);
        *&v27[2] = *(a6 + 16);
        v28 = v21;
      }

      v14 = sub_2394F4788(a1 + 4880, a2, a3, 0, a5, &v24);
      v15 = v14;
      v16 = v14 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v17 = sub_2393D9044(9u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No default commissioner is specified", &v24, 2u);
    }

    v14 = sub_2393D5398(1u);
    if (v14)
    {
      sub_2393D5320(9, 1, "No default commissioner is specified");
    }

    v16 = 0x2AD00000000;
    v15 = 3;
  }

  v22 = sub_23948B4CC(v14);
  if (os_signpost_enabled(v22))
  {
    v24 = 136315394;
    v25 = "DeviceCommissioner";
    v26 = 2080;
    *v27 = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v24, 0x16u);
  }

  return v15 | v16;
}

uint64_t sub_2394FB8A4(uint64_t a1, uint64_t a2, char *a3, int a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v10))
  {
    v18 = 136315394;
    v19 = "DeviceCommissioner";
    v20 = 2080;
    *v21 = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v18, 0x16u);
  }

  LOBYTE(v18) = *a5;
  if (v18 == 1)
  {
    HIDWORD(v19) = *(a5 + 8);
    v11 = *(a5 + 128);
    v27 = *(a5 + 112);
    v28 = v11;
    v29[0] = *(a5 + 144);
    *(v29 + 11) = *(a5 + 155);
    v12 = *(a5 + 64);
    v23 = *(a5 + 48);
    v24 = v12;
    v13 = *(a5 + 96);
    v25 = *(a5 + 80);
    v26 = v13;
    v14 = *(a5 + 32);
    *&v21[2] = *(a5 + 16);
    v22 = v14;
  }

  v15 = sub_2394F4788(a1 + 4880, a2, a3, 0, a4, &v18);
  v16 = sub_23948B4CC(v15);
  if (os_signpost_enabled(v16))
  {
    v18 = 136315394;
    v19 = "DeviceCommissioner";
    v20 = 2080;
    *v21 = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v18, 0x16u);
  }

  return v15;
}

unint64_t sub_2394FBA70(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    v12 = 136315394;
    *v13 = "DeviceCommissioner";
    *&v13[8] = 2080;
    *&v13[10] = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  v7 = sub_2394FBC2C(a1, a2, a3);
  if (v7 || (v8 = sub_2394FC440(a1, a2), v7 = v8, v8))
  {
    v12 = 2;
    *&v13[4] = "core_dcm_commission_device";
    *&v13[12] = v7;
    v13[16] = 3;
    v8 = sub_23948BD20(&v12);
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_23948B4CC(v8);
  if (os_signpost_enabled(v10))
  {
    v12 = 136315394;
    *v13 = "DeviceCommissioner";
    *&v13[8] = 2080;
    *&v13[10] = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  return v7 & 0xFFFFFFFF00000000 | v9;
}

uint64_t sub_2394FBC2C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "EstablishPASEConnection";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = "core_dcm_pase_session";
  buf[20] = 0;
  sub_23948BD20(buf);
  *buf = xmmword_27DF7BD44;
  buf[16] = 1;
  *&buf[18] = 5540;
  *&buf[20] = 0;
  v71 = 0;
  v68[0] = 0;
  if (*(a1 + 32) != 1)
  {
    v8 = 741;
    LODWORD(v7) = 3;
    goto LABEL_7;
  }

  if (*(a1 + 4352))
  {
    LODWORD(v7) = 3;
    v8 = 742;
LABEL_7:
    *v64 = 1;
    *&v64[8] = "core_dcm_pase_session";
    v65 = v7;
    LOBYTE(v66) = 3;
    v9 = sub_23948BD20(v64);
    v10 = v7;
    goto LABEL_8;
  }

  v14 = *(a3 + 16);
  if (v14 > 1)
  {
    if (v14 == 3)
    {
      goto LABEL_22;
    }

    if (v14 != 2)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (!*(a3 + 20))
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      *(a3 + 16) = 2;
      *(a3 + 9) = 5540;
      *(a3 + 5) = 0;
      *(a3 + 3) = 0;
    }

    v15 = 0;
    *buf = 0;
    *&buf[8] = 0;
    v16 = 5540;
    v17 = 2;
    goto LABEL_23;
  }

  if (!*(a3 + 16))
  {
    goto LABEL_19;
  }

  if (v14 == 1)
  {
LABEL_22:
    v16 = *(a3 + 9);
    v15 = *(a3 + 5);
    *buf = *a3;
    v17 = 1;
LABEL_23:
    buf[16] = v17;
    *&buf[18] = v16;
    *&buf[20] = v15;
    v71 = 0;
  }

LABEL_24:
  v62 = 0;
  *v64 = buf;
  *&v64[8] = &v62;
  sub_2393D6A10((a1 + 4456), v64, sub_23950F604);
  v18 = v62;
  if (!v62)
  {
    goto LABEL_37;
  }

  if ((*(*v62 + 24))(v62) != a2)
  {
    goto LABEL_32;
  }

  v9 = (*(*v18 + 72))(v18);
  if (v9)
  {
    v19 = *(a1 + 4336);
    if (v19)
    {
      (*(*v19 + 24))(v19, 0, 0);
    }

    *v64 = 1;
    *&v64[8] = "core_dcm_pase_session";
    v65 = 0;
    LOBYTE(v66) = 3;
    v9 = sub_23948BD20(v64);
    goto LABEL_31;
  }

  if (v18[20] != 1)
  {
LABEL_32:
    v20 = sub_2393D9044(9u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v64 = 0;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Found unconnected device, removing", v64, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Found unconnected device, removing");
    }

    sub_2394FB378(a1, v18);
LABEL_37:
    v21 = sub_2394FCD48((a1 + 4440));
    if (!v21)
    {
      LODWORD(v7) = 11;
      v8 = 806;
      goto LABEL_7;
    }

    v22 = v21;
    *(a1 + 4352) = v21;
    v23 = *(a1 + 4280);
    v24 = *(v23 + 40);
    v25 = *(v23 + 56);
    v21[246] = v24;
    v21[247] = v25;
    v21[3] = a2;
    v21[4] = 0;
    v21[5] = a2;
    *(v21 + 20) = 1;
    *(v21 + 3) = *buf;
    LODWORD(v24) = *&buf[20];
    *(v21 + 16) = *&buf[16];
    *(v21 + 17) = v24;
    v21[9] = v71;
    *v64 = *a3;
    LODWORD(v24) = *(a3 + 5);
    v65 = *(a3 + 4);
    v66 = v24;
    v67 = *(a3 + 3);
    v62 = sub_2394FCDCC(a3);
    LOWORD(v63) = v26;
    sub_2394F28AC(v22, v64, &v62);
    if (*(a3 + 16) == 2)
    {
      v27 = *(a3 + 21);
      if (!v27)
      {
        if (*(a3 + 22))
        {
          v38 = *a3;
          *(a1 + 4512) = *(a3 + 4);
          *(a1 + 4496) = v38;
          *(a1 + 4516) = *(a3 + 5);
          *(a1 + 4520) = *(a3 + 3);
          v39 = a3[2];
          v40 = a3[3];
          *(a1 + 4560) = a3[4];
          *(a1 + 4544) = v40;
          *(a1 + 4528) = v39;
          v41 = a3[5];
          v42 = a3[6];
          v43 = a3[7];
          *(a1 + 4620) = *(a3 + 124);
          *(a1 + 4608) = v43;
          *(a1 + 4592) = v42;
          *(a1 + 4576) = v41;
          v44 = *(a3 + 140);
          *(a1 + 4636) = v44;
          if (v44 == 1)
          {
            v45 = *(a3 + 18);
            *(a1 + 4648) = *(a3 + 38);
            *(a1 + 4640) = v45;
          }

          v46 = a3[10];
          *(a1 + 4672) = *(a3 + 22);
          *(a1 + 4656) = v46;
          v9 = sub_2393CCC18(*(*(a1 + 4280) + 24), *(a3 + 22), a1, sub_2394FCE24, sub_2394FD078);
          goto LABEL_58;
        }

        if (*(a3 + 40) == 1)
        {
          v47 = *a3;
          *(a1 + 4512) = *(a3 + 4);
          *(a1 + 4496) = v47;
          *(a1 + 4516) = *(a3 + 5);
          *(a1 + 4520) = *(a3 + 3);
          v48 = a3[2];
          v49 = a3[3];
          *(a1 + 4560) = a3[4];
          *(a1 + 4544) = v49;
          *(a1 + 4528) = v48;
          v50 = a3[5];
          v51 = a3[6];
          v52 = a3[7];
          *(a1 + 4620) = *(a3 + 124);
          *(a1 + 4608) = v52;
          *(a1 + 4592) = v51;
          *(a1 + 4576) = v50;
          v53 = *(a3 + 140);
          *(a1 + 4636) = v53;
          if (v53 == 1)
          {
            v54 = *(a3 + 18);
            *(a1 + 4648) = *(a3 + 38);
            *(a1 + 4640) = v54;
          }

          v55 = a3[10];
          *(a1 + 4672) = *(a3 + 22);
          *(a1 + 4656) = v55;
          v56 = *(*(a1 + 4280) + 24);
          v57 = sub_2394FD1A0(a3);
          *v64 = v57;
          v64[4] = BYTE4(v57);
          if ((v57 & 0x100000000) == 0)
          {
            v58 = sub_2394EDF14();
            return sub_2394FC440(v58, v59);
          }

          v9 = sub_2393CCB68(v56, v64, a1, sub_2394FCE24, sub_2394FD078);
          goto LABEL_58;
        }

        LODWORD(v7) = 47;
        v8 = 842;
LABEL_60:
        sub_2394FB378(a1, v22);
        goto LABEL_7;
      }

      v9 = sub_2393CCCC8(*(*(a1 + 4280) + 24), v27);
      v7 = v9;
      if (v9)
      {
        goto LABEL_59;
      }
    }

    v28 = *(*(a1 + 4280) + 40);
    *v64 = *a3;
    v29 = *(a3 + 5);
    v65 = *(a3 + 4);
    v66 = v29;
    v67 = *(a3 + 3);
    v60 = sub_2394FCDCC(a3);
    v61 = v30;
    sub_2394C4774(v28, v64, &v60, &v62);
    sub_2393DECA4(v68, &v62);
    if (v62 == 1)
    {
      (*(*v63 + 32))(v63);
    }

    if (v68[0] == 1)
    {
      v32 = *(*(a1 + 4280) + 56);
      v33 = sub_238EA9094(v68, v31);
      v34 = sub_239471E34(v32, v33, v22 + 96, 1);
      if (v34)
      {
        v35 = v34;
        v36 = *(*(a1 + 4280) + 40);
        v37 = *(a3 + 8);
        sub_239476008(v64);
        v9 = sub_2393EBF78(v22 + 88, v36, v37, v64, v35, a1 + 4312);
LABEL_58:
        v7 = v9;
LABEL_59:
        v8 = HIDWORD(v7);
        if (!v7)
        {
          v10 = 0;
LABEL_8:
          v11 = v8 << 32;
          if (v68[0])
          {
            v9 = (*(*v69 + 32))(v69);
          }

          goto LABEL_10;
        }

        goto LABEL_60;
      }

      LODWORD(v7) = 172;
      v8 = 880;
    }

    else
    {
      LODWORD(v7) = 11;
      v8 = 871;
    }

    goto LABEL_60;
  }

LABEL_31:
  v11 = 0;
  v10 = 0;
LABEL_10:
  v12 = sub_23948B4CC(v9);
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "EstablishPASEConnection";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v11 | v10;
}