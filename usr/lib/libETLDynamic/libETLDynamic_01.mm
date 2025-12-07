uint64_t APPLIB_DIAG_FTM_EVDO_PILOT_ACQ(char *a1, unsigned int a2, int a3, __int16 a4, int a5, int a6)
{
  v36 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x23)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 113;
    *(a1 + 10) = a3;
    *(a1 + 7) = a4;
    v13 = crc_16_l_table[a1[6] ^ 0xACLL];
    v14 = crc_16_l_table[a1[7] ^ 0x6C ^ v13];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a3 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(BYTE1(a3) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(BYTE2(a3) ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(HIBYTE(a3) ^ v19 ^ HIBYTE(v18))];
    *(a1 + 4) = a5;
    *(a1 + 5) = a6;
    v21 = crc_16_l_table[(a4 ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(HIBYTE(a4) ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a5 ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(BYTE1(a5) ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(BYTE2(a5) ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[19] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a6 ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[21] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[22] ^ v28 ^ HIBYTE(v27))];
    *(a1 + 12) = crc_16_l_table[(a1[23] ^ v29 ^ HIBYTE(v28))] ^ ~(v29 >> 8);
    if (a2 >= 52)
    {
      bzero(__src, 0x800uLL);
      v30 = 0;
      v31 = 0;
      do
      {
        while (1)
        {
          v32 = a1[v30];
          v33 = v31;
          v34 = v31 + 1;
          if ((v32 - 125) > 1)
          {
            break;
          }

          v31 += 2;
          __src[v34] = v32 & 0x5F;
          __src[v33] = 125;
          if (++v30 == 26)
          {
            goto LABEL_9;
          }
        }

        ++v31;
        __src[v33] = v32;
        ++v30;
      }

      while (v30 != 26);
LABEL_9:
      memcpy(a1, __src, v31);
      result = (v31 + 1);
      a1[v31] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_SYS_TIME_ACQ(unsigned __int8 *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 114;
    a1[6] = 10;
    v5 = crc_16_l_table[a1[7] ^ 0x34];
    v6 = crc_16_l_table[a1[8] ^ 0x2F ^ v5];
    v7 = crc_16_l_table[(a1[9] ^ v6 ^ HIBYTE(v5))];
    *(a1 + 5) = v7 ^ ~HIBYTE(crc_16_l_table[a1[8] ^ 0x2F ^ v5]);
    if (a2 >= 24)
    {
      bzero(v24, 0x7F8uLL);
      __src = 527179;
      v21 = 114;
      v22 = 10;
      v8 = a1[7];
      if ((v8 - 125) > 1)
      {
        v9 = 8;
      }

      else
      {
        v24[0] = v8 & 0x5F;
        v9 = 9;
        LOBYTE(v8) = 125;
      }

      v23 = v8;
      v10 = a1[8];
      v11 = v9 + 1;
      if ((v10 - 125) <= 1)
      {
        *(&__src + v11) = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v11) = v9 | 2;
      }

      *(&__src + v9) = v10;
      v12 = ~(v7 ^ BYTE1(v6));
      v13 = a1[9];
      v14 = v11;
      v15 = v11 + 1;
      if ((v13 - 125) <= 1)
      {
        *(&__src + v15) = v13 & 0x5F;
        LOBYTE(v13) = 125;
        LODWORD(v15) = v14 + 2;
      }

      v16 = ((v7 ^ ~(v6 >> 8)) >> 8);
      *(&__src + v14) = v13;
      v17 = v15;
      v18 = v15 + 1;
      if ((v12 - 125) <= 1)
      {
        *(&__src + v18) = v12 & 0x5F;
        LOBYTE(v12) = 125;
        LODWORD(v18) = v17 + 2;
      }

      *(&__src + v17) = v12;
      v19 = v18 + 1;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v19) = v16 & 0x5F;
        LOBYTE(v16) = 125;
        LODWORD(v19) = v18 + 2;
      }

      *(&__src + v18) = v16;
      memcpy(a1, &__src, v19);
      result = (v19 + 1);
      a1[v19] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_DEMOD_CC_MAC_FTC(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8)
{
  v75 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1B)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 115;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    v17 = a1[6];
    v18 = crc_16_l_table[v17 ^ 0x1C];
    v19 = crc_16_l_table[a1[7] ^ 0x5F ^ v18];
    v20 = crc_16_l_table[(a1[8] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[9] ^ v20 ^ HIBYTE(v19))];
    a1[13] = a6;
    v22 = crc_16_l_table[(a3 ^ v21 ^ HIBYTE(v20))];
    a1[14] = a7;
    v23 = crc_16_l_table[(a4 ^ v22 ^ HIBYTE(v21))];
    a1[15] = a8;
    v24 = crc_16_l_table[(a5 ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a6 ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a7 ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(v26 ^ HIBYTE(v25) ^ a8)];
    v28 = v27 ^ ~(v26 >> 8);
    *(a1 + 8) = v27 ^ ~(v26 >> 8);
    if (a2 >= 36)
    {
      bzero(v74, 0x7FFuLL);
      v29 = *a1;
      if ((v29 - 125) > 1)
      {
        v30 = 1;
      }

      else
      {
        v74[0] = v29 & 0x5F;
        v30 = 2;
        LOBYTE(v29) = 125;
      }

      __src = v29;
      v31 = a1[1];
      v32 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v74[v32 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v32) = v30 + 2;
      }

      v74[v30 - 1] = v31;
      v33 = a1[2];
      v34 = v32;
      v35 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v74[v35 - 1] = v33 & 0x5F;
        LODWORD(v35) = v34 + 2;
        LOBYTE(v33) = 125;
      }

      v74[v34 - 1] = v33;
      v36 = a1[3];
      v37 = v35;
      v38 = v35 + 1;
      if ((v36 - 125) <= 1)
      {
        v74[v38 - 1] = v36 & 0x5F;
        LOBYTE(v36) = 125;
        LODWORD(v38) = v37 + 2;
      }

      v74[v37 - 1] = v36;
      v39 = a1[4];
      v40 = v38 + 1;
      if ((v39 - 125) <= 1)
      {
        v74[v40 - 1] = v39 & 0x5F;
        LOBYTE(v39) = 125;
        LODWORD(v40) = v38 + 2;
      }

      v74[v38 - 1] = v39;
      v41 = a1[5];
      v42 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v74[v42 - 1] = v41 & 0x5F;
        LOBYTE(v41) = 125;
        LODWORD(v42) = v40 + 2;
      }

      v74[v40 - 1] = v41;
      v43 = v42 + 1;
      if ((v17 - 125) <= 1)
      {
        v74[v43 - 1] = v17 & 0x5F;
        LODWORD(v43) = v42 + 2;
        LOBYTE(v17) = 125;
      }

      v74[v42 - 1] = v17;
      v44 = a1[7];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v74[v46 - 1] = v44 & 0x5F;
        LOBYTE(v44) = 125;
        LODWORD(v46) = v45 + 2;
      }

      v74[v45 - 1] = v44;
      v47 = a1[8];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v74[v49 - 1] = v47 & 0x5F;
        LODWORD(v49) = v48 + 2;
        LOBYTE(v47) = 125;
      }

      v74[v48 - 1] = v47;
      v50 = a1[9];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v74[v52 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v52) = v51 + 2;
      }

      v74[v51 - 1] = v50;
      v53 = a1[10];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v74[v55 - 1] = v53 & 0x5F;
        LODWORD(v55) = v54 + 2;
        LOBYTE(v53) = 125;
      }

      v74[v54 - 1] = v53;
      v56 = a1[11];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v74[v58 - 1] = v56 & 0x5F;
        LOBYTE(v56) = 125;
        LODWORD(v58) = v57 + 2;
      }

      v74[v57 - 1] = v56;
      v59 = a1[12];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v74[v61 - 1] = v59 & 0x5F;
        LODWORD(v61) = v60 + 2;
        LOBYTE(v59) = 125;
      }

      v74[v60 - 1] = v59;
      v62 = a1[13];
      v63 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v74[v63 - 1] = v62 & 0x5F;
        LOBYTE(v62) = 125;
        LODWORD(v63) = v61 + 2;
      }

      v74[v61 - 1] = v62;
      v64 = a1[14];
      v65 = v63 + 1;
      if ((v64 - 125) <= 1)
      {
        v74[v65 - 1] = v64 & 0x5F;
        LODWORD(v65) = v63 + 2;
        LOBYTE(v64) = 125;
      }

      v74[v63 - 1] = v64;
      v66 = ~(v27 ^ BYTE1(v26));
      v67 = a1[15];
      v68 = v65;
      v69 = v65 + 1;
      if ((v67 - 125) <= 1)
      {
        v74[v69 - 1] = v67 & 0x5F;
        LOBYTE(v67) = 125;
        LODWORD(v69) = v68 + 2;
      }

      v70 = (v27 ^ ~(v26 >> 8)) >> 8;
      v74[v68 - 1] = v67;
      v71 = v69 + 1;
      if ((v66 - 125) <= 1)
      {
        v74[v71 - 1] = v66 & 0x5F;
        LODWORD(v71) = v69 + 2;
        LOBYTE(v66) = 125;
      }

      v74[v69 - 1] = v66;
      v72 = v71 + 1;
      if (BYTE1(v28) - 125 <= 1)
      {
        v74[v72 - 1] = BYTE1(v28) & 0x5F;
        v70 = 125;
        LODWORD(v72) = v71 + 2;
      }

      v74[v71 - 1] = v70;
      memcpy(a1, &__src, v72);
      result = (v72 + 1);
      a1[v72] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_MOD_ACC(char *a1, unsigned int a2, int a3, int a4, int a5, int a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13)
{
  v57 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x2F)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 116;
    *(a1 + 10) = a3;
    *(a1 + 14) = a4;
    *(a1 + 18) = a5;
    *(a1 + 22) = a6;
    *(a1 + 26) = a7;
    v22 = crc_16_l_table[a1[6] ^ 0x14];
    v23 = crc_16_l_table[a1[7] ^ 0x12 ^ v22];
    v24 = crc_16_l_table[(a1[8] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[9] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[10] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[11] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[12] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[13] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[14] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[15] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[16] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(HIBYTE(a4) ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a5 ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(BYTE1(a5) ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(BYTE2(a5) ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(HIBYTE(a5) ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a6 ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(BYTE1(a6) ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(BYTE2(a6) ^ v39 ^ HIBYTE(v38))];
    v41 = crc_16_l_table[(HIBYTE(a6) ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a7 ^ v41 ^ HIBYTE(v40))];
    a1[30] = a8;
    v43 = crc_16_l_table[(BYTE1(a7) ^ v42 ^ HIBYTE(v41))];
    a1[31] = a9;
    v44 = crc_16_l_table[(BYTE2(a7) ^ v43 ^ HIBYTE(v42))];
    a1[32] = a10;
    v45 = crc_16_l_table[(HIBYTE(a7) ^ v44 ^ HIBYTE(v43))];
    a1[33] = a11;
    v46 = crc_16_l_table[(a8 ^ v45 ^ HIBYTE(v44))];
    a1[34] = a12;
    v47 = crc_16_l_table[(a9 ^ v46 ^ HIBYTE(v45))];
    a1[35] = a13;
    v48 = crc_16_l_table[(a10 ^ v47 ^ HIBYTE(v46))];
    v49 = crc_16_l_table[(a11 ^ v48 ^ HIBYTE(v47))];
    v50 = crc_16_l_table[(a12 ^ v49 ^ HIBYTE(v48))];
    *(a1 + 18) = crc_16_l_table[(v50 ^ HIBYTE(v49) ^ a13)] ^ ~(v50 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v51 = 0;
      v52 = 0;
      do
      {
        while (1)
        {
          v53 = a1[v51];
          v54 = v52;
          v55 = v52 + 1;
          if ((v53 - 125) > 1)
          {
            break;
          }

          v52 += 2;
          __src[v55] = v53 & 0x5F;
          __src[v54] = 125;
          if (++v51 == 38)
          {
            goto LABEL_9;
          }
        }

        ++v52;
        __src[v54] = v53;
        ++v51;
      }

      while (v51 != 38);
LABEL_9:
      memcpy(a1, __src, v52);
      result = (v52 + 1);
      a1[v52] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_CONF_MAC_FOR_FWD_CC_MAC_FTC(unsigned __int8 *a1, unsigned int a2, int a3, int a4)
{
  v37 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1B)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 124;
    a1[10] = a3;
    a1[11] = a4;
    v9 = a1[6];
    v10 = crc_16_l_table[v9 ^ 0xD4];
    v11 = crc_16_l_table[a1[7] ^ 0xDC ^ v10];
    v12 = crc_16_l_table[(a1[8] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a3 ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(v14 ^ HIBYTE(v13)) ^ a4];
    v16 = v15 ^ ~(v14 >> 8);
    *(a1 + 6) = v15 ^ ~HIBYTE(crc_16_l_table[(a3 ^ v13 ^ HIBYTE(v12))]);
    if (a2 >= 28)
    {
      bzero(v36, 0x7F9uLL);
      __src = 527179;
      v34 = 124;
      if ((v9 - 125) > 1)
      {
        v17 = 7;
      }

      else
      {
        v36[0] = v9 & 0x5F;
        v17 = 8;
        LOBYTE(v9) = 125;
      }

      v35 = v9;
      v18 = a1[7];
      v19 = v17 + 1;
      if ((v18 - 125) <= 1)
      {
        *(&__src + v19) = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v19) = v17 + 2;
      }

      *(&__src + v17) = v18;
      v20 = a1[8];
      v21 = v19;
      v22 = v19 + 1;
      if ((v20 - 125) <= 1)
      {
        *(&__src + v22) = v20 & 0x5F;
        LODWORD(v22) = v21 + 2;
        LOBYTE(v20) = 125;
      }

      *(&__src + v21) = v20;
      v23 = a1[9];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        *(&__src + v24) = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      *(&__src + v22) = v23;
      v25 = v24 + 1;
      if ((a3 - 125) <= 1)
      {
        *(&__src + v25) = a3 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(a3) = 125;
      }

      v26 = ~(v15 ^ BYTE1(v14));
      *(&__src + v24) = a3;
      v27 = v25;
      v28 = v25 + 1;
      if ((a4 - 125) <= 1)
      {
        *(&__src + v28) = a4 & 0x5F;
        LOBYTE(a4) = 125;
        LODWORD(v28) = v27 + 2;
      }

      v29 = (v15 ^ ~(v14 >> 8)) >> 8;
      *(&__src + v27) = a4;
      v30 = v28;
      v31 = v28 + 1;
      if ((v26 - 125) <= 1)
      {
        *(&__src + v31) = v26 & 0x5F;
        LODWORD(v31) = v30 + 2;
        LOBYTE(v26) = 125;
      }

      *(&__src + v30) = v26;
      v32 = v31 + 1;
      if (BYTE1(v16) - 125 <= 1)
      {
        *(&__src + v32) = BYTE1(v16) & 0x5F;
        v29 = 125;
        LODWORD(v32) = v31 + 2;
      }

      *(&__src + v31) = v29;
      memcpy(a1, &__src, v32);
      result = (v32 + 1);
      a1[v32] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_MOD_ACC(char *a1, unsigned int a2, int a3, int a4, int a5, int a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18)
{
  v73 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x35)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 125;
    *(a1 + 10) = a3;
    *(a1 + 14) = a4;
    *(a1 + 18) = a5;
    *(a1 + 22) = a6;
    *(a1 + 26) = a7;
    v27 = crc_16_l_table[~*a1];
    v28 = crc_16_l_table[(a1[1] ^ ~v27)];
    v29 = crc_16_l_table[(a1[2] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[3] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[4] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[5] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[6] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[7] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[8] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[9] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[10] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[11] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[12] ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(a1[13] ^ v39 ^ HIBYTE(v38))];
    v41 = crc_16_l_table[(a1[14] ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a1[15] ^ v41 ^ HIBYTE(v40))];
    v43 = crc_16_l_table[(a1[16] ^ v42 ^ HIBYTE(v41))];
    v44 = crc_16_l_table[(a1[17] ^ v43 ^ HIBYTE(v42))];
    v45 = crc_16_l_table[(a1[18] ^ v44 ^ HIBYTE(v43))];
    v46 = crc_16_l_table[(a1[19] ^ v45 ^ HIBYTE(v44))];
    v47 = crc_16_l_table[(a1[20] ^ v46 ^ HIBYTE(v45))];
    v48 = crc_16_l_table[(a1[21] ^ v47 ^ HIBYTE(v46))];
    v49 = crc_16_l_table[(a6 ^ v48 ^ HIBYTE(v47))];
    v50 = crc_16_l_table[(BYTE1(a6) ^ v49 ^ HIBYTE(v48))];
    v51 = crc_16_l_table[(BYTE2(a6) ^ v50 ^ HIBYTE(v49))];
    v52 = crc_16_l_table[(HIBYTE(a6) ^ v51 ^ HIBYTE(v50))];
    v53 = crc_16_l_table[(a7 ^ v52 ^ HIBYTE(v51))];
    a1[30] = a8;
    v54 = crc_16_l_table[(BYTE1(a7) ^ v53 ^ HIBYTE(v52))];
    a1[31] = a9;
    v55 = crc_16_l_table[(BYTE2(a7) ^ v54 ^ HIBYTE(v53))];
    a1[32] = a10;
    v56 = crc_16_l_table[(HIBYTE(a7) ^ v55 ^ HIBYTE(v54))];
    a1[33] = a11;
    v57 = crc_16_l_table[(a8 ^ v56 ^ HIBYTE(v55))];
    a1[34] = a12;
    v58 = crc_16_l_table[(a9 ^ v57 ^ HIBYTE(v56))];
    a1[35] = a13;
    v59 = crc_16_l_table[(a10 ^ v58 ^ HIBYTE(v57))];
    a1[36] = a14;
    v60 = crc_16_l_table[(a11 ^ v59 ^ HIBYTE(v58))];
    a1[37] = a15;
    v61 = crc_16_l_table[(a12 ^ v60 ^ HIBYTE(v59))];
    a1[38] = a16;
    v62 = crc_16_l_table[(a13 ^ v61 ^ HIBYTE(v60))];
    a1[39] = a17;
    v63 = crc_16_l_table[(a14 ^ v62 ^ HIBYTE(v61))];
    a1[40] = a18;
    v64 = crc_16_l_table[(a15 ^ v63 ^ HIBYTE(v62))];
    v65 = crc_16_l_table[(a16 ^ v64 ^ HIBYTE(v63))];
    v66 = crc_16_l_table[(a17 ^ v65 ^ HIBYTE(v64))];
    *(a1 + 41) = crc_16_l_table[(v66 ^ HIBYTE(v65) ^ a18)] ^ ~(v66 >> 8);
    if (a2 >= 86)
    {
      bzero(__src, 0x800uLL);
      v67 = 0;
      v68 = 0;
      do
      {
        while (1)
        {
          v69 = a1[v67];
          v70 = v68;
          v71 = v68 + 1;
          if ((v69 - 125) > 1)
          {
            break;
          }

          v68 += 2;
          __src[v71] = v69 & 0x5F;
          __src[v70] = 125;
          if (++v67 == 43)
          {
            goto LABEL_9;
          }
        }

        ++v68;
        __src[v70] = v69;
        ++v67;
      }

      while (v67 != 43);
LABEL_9:
      memcpy(a1, __src, v68);
      result = (v68 + 1);
      a1[v68] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_DEMOD_FWD_WITH_NO_REV(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, char a9, char a10, char a11)
{
  v94 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x35)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 127;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    v20 = crc_16_l_table[a1[6] ^ 0xBCLL];
    v21 = crc_16_l_table[a1[7] ^ 0xF6 ^ v20];
    v22 = crc_16_l_table[(a1[8] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[9] ^ v22 ^ HIBYTE(v21))];
    a1[13] = a6;
    v24 = crc_16_l_table[(a3 ^ v23 ^ HIBYTE(v22))];
    a1[14] = a7;
    v25 = crc_16_l_table[(a4 ^ v24 ^ HIBYTE(v23))];
    a1[15] = a8;
    v26 = crc_16_l_table[(a5 ^ v25 ^ HIBYTE(v24))];
    a1[16] = a9;
    v27 = crc_16_l_table[(a6 ^ v26 ^ HIBYTE(v25))];
    a1[17] = a10;
    v28 = crc_16_l_table[(a7 ^ v27 ^ HIBYTE(v26))];
    a1[18] = a11;
    v29 = crc_16_l_table[(a8 ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a9 ^ v29 ^ HIBYTE(v28))];
    v31 = (a10 ^ v30 ^ HIBYTE(v29));
    v32 = crc_16_l_table[v31];
    v33 = crc_16_l_table[(v32 ^ HIBYTE(v30) ^ a11)];
    *(a1 + 19) = v33 ^ ~HIBYTE(crc_16_l_table[v31]);
    if (a2 >= 42)
    {
      bzero(v93, 0x7FFuLL);
      v34 = *a1;
      if ((v34 - 125) > 1)
      {
        v35 = 1;
      }

      else
      {
        v93[0] = v34 & 0x5F;
        v35 = 2;
        LOBYTE(v34) = 125;
      }

      __src = v34;
      v36 = a1[1];
      v37 = v35 + 1;
      if ((v36 - 125) <= 1)
      {
        v93[v37 - 1] = v36 & 0x5F;
        LOBYTE(v36) = 125;
        LODWORD(v37) = v35 + 2;
      }

      v93[v35 - 1] = v36;
      v38 = a1[2];
      v39 = v37;
      v40 = v37 + 1;
      if ((v38 - 125) <= 1)
      {
        v93[v40 - 1] = v38 & 0x5F;
        LODWORD(v40) = v39 + 2;
        LOBYTE(v38) = 125;
      }

      v93[v39 - 1] = v38;
      v41 = a1[3];
      v42 = v40;
      v43 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v93[v43 - 1] = v41 & 0x5F;
        LOBYTE(v41) = 125;
        LODWORD(v43) = v42 + 2;
      }

      v93[v42 - 1] = v41;
      v44 = a1[4];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v93[v46 - 1] = v44 & 0x5F;
        LODWORD(v46) = v45 + 2;
        LOBYTE(v44) = 125;
      }

      v93[v45 - 1] = v44;
      v47 = a1[5];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v93[v49 - 1] = v47 & 0x5F;
        LOBYTE(v47) = 125;
        LODWORD(v49) = v48 + 2;
      }

      v93[v48 - 1] = v47;
      v50 = a1[6];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v93[v52 - 1] = v50 & 0x5F;
        LODWORD(v52) = v51 + 2;
        LOBYTE(v50) = 125;
      }

      v93[v51 - 1] = v50;
      v53 = a1[7];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v93[v55 - 1] = v53 & 0x5F;
        LOBYTE(v53) = 125;
        LODWORD(v55) = v54 + 2;
      }

      v93[v54 - 1] = v53;
      v56 = a1[8];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v93[v58 - 1] = v56 & 0x5F;
        LODWORD(v58) = v57 + 2;
        LOBYTE(v56) = 125;
      }

      v93[v57 - 1] = v56;
      v59 = a1[9];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v93[v61 - 1] = v59 & 0x5F;
        LOBYTE(v59) = 125;
        LODWORD(v61) = v60 + 2;
      }

      v93[v60 - 1] = v59;
      v62 = a1[10];
      v63 = v61;
      v64 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v93[v64 - 1] = v62 & 0x5F;
        LODWORD(v64) = v63 + 2;
        LOBYTE(v62) = 125;
      }

      v93[v63 - 1] = v62;
      v65 = a1[11];
      v66 = v64;
      v67 = v64 + 1;
      if ((v65 - 125) <= 1)
      {
        v93[v67 - 1] = v65 & 0x5F;
        LOBYTE(v65) = 125;
        LODWORD(v67) = v66 + 2;
      }

      v93[v66 - 1] = v65;
      v68 = a1[12];
      v69 = v67;
      v70 = v67 + 1;
      if ((v68 - 125) <= 1)
      {
        v93[v70 - 1] = v68 & 0x5F;
        LODWORD(v70) = v69 + 2;
        LOBYTE(v68) = 125;
      }

      v93[v69 - 1] = v68;
      v71 = a1[13];
      v72 = v70;
      v73 = v70 + 1;
      if ((v71 - 125) <= 1)
      {
        v93[v73 - 1] = v71 & 0x5F;
        LOBYTE(v71) = 125;
        LODWORD(v73) = v72 + 2;
      }

      v93[v72 - 1] = v71;
      v74 = a1[14];
      v75 = v73;
      v76 = v73 + 1;
      if ((v74 - 125) <= 1)
      {
        v93[v76 - 1] = v74 & 0x5F;
        LODWORD(v76) = v75 + 2;
        LOBYTE(v74) = 125;
      }

      v93[v75 - 1] = v74;
      v77 = a1[15];
      v78 = v76;
      v79 = v76 + 1;
      if ((v77 - 125) <= 1)
      {
        v93[v79 - 1] = v77 & 0x5F;
        LOBYTE(v77) = 125;
        LODWORD(v79) = v78 + 2;
      }

      v93[v78 - 1] = v77;
      v80 = a1[16];
      v81 = v79 + 1;
      if ((v80 - 125) <= 1)
      {
        v93[v81 - 1] = v80 & 0x5F;
        LOBYTE(v80) = 125;
        LODWORD(v81) = v79 + 2;
      }

      v93[v79 - 1] = v80;
      v82 = a1[17];
      v83 = v81 + 1;
      if ((v82 - 125) <= 1)
      {
        v93[v83 - 1] = v82 & 0x5F;
        LOBYTE(v82) = 125;
        LODWORD(v83) = v81 + 2;
      }

      v93[v81 - 1] = v82;
      v84 = ~(v33 ^ BYTE1(v32));
      v85 = a1[18];
      v86 = v83;
      v87 = v83 + 1;
      if ((v85 - 125) <= 1)
      {
        v93[v87 - 1] = v85 & 0x5F;
        LOBYTE(v85) = 125;
        LODWORD(v87) = v86 + 2;
      }

      v88 = ((v33 ^ ~(v32 >> 8)) >> 8);
      v93[v86 - 1] = v85;
      v89 = v87;
      v90 = v87 + 1;
      if ((v84 - 125) <= 1)
      {
        v93[v90 - 1] = v84 & 0x5F;
        LOBYTE(v84) = 125;
        LODWORD(v90) = v89 + 2;
      }

      v93[v89 - 1] = v84;
      v91 = v90 + 1;
      if ((v88 - 125) <= 1)
      {
        v93[v91 - 1] = v88 & 0x5F;
        LOBYTE(v88) = 125;
        LODWORD(v91) = v90 + 2;
      }

      v93[v90 - 1] = v88;
      memcpy(a1, &__src, v91);
      result = (v91 + 1);
      a1[v91] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_DEMOD_FWD_WITH_NO_REV(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, char a9, char a10)
{
  v87 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x35)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 122;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    v19 = crc_16_l_table[a1[6] ^ 4];
    v20 = crc_16_l_table[(a1[7] ^ v19) ^ 0x88];
    v21 = crc_16_l_table[(a1[8] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[9] ^ v21 ^ HIBYTE(v20))];
    a1[13] = a6;
    v23 = crc_16_l_table[(a3 ^ v22 ^ HIBYTE(v21))];
    a1[14] = a7;
    v24 = crc_16_l_table[(a4 ^ v23 ^ HIBYTE(v22))];
    a1[15] = a8;
    v25 = crc_16_l_table[(a5 ^ v24 ^ HIBYTE(v23))];
    a1[16] = a9;
    v26 = crc_16_l_table[(a6 ^ v25 ^ HIBYTE(v24))];
    a1[17] = a10;
    v27 = crc_16_l_table[(a7 ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a8 ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a9 ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(v29 ^ HIBYTE(v28) ^ a10)];
    *(a1 + 9) = v30 ^ ~HIBYTE(crc_16_l_table[(a9 ^ v28 ^ HIBYTE(v27))]);
    if (a2 >= 40)
    {
      bzero(v86, 0x7FFuLL);
      v31 = *a1;
      if ((v31 - 125) > 1)
      {
        v32 = 1;
      }

      else
      {
        v86[0] = v31 & 0x5F;
        v32 = 2;
        LOBYTE(v31) = 125;
      }

      v85 = v31;
      v33 = a1[1];
      v34 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v86[v34 - 1] = v33 & 0x5F;
        LOBYTE(v33) = 125;
        LODWORD(v34) = v32 + 2;
      }

      v86[v32 - 1] = v33;
      v35 = a1[2];
      v36 = v34;
      v37 = v34 + 1;
      if ((v35 - 125) <= 1)
      {
        v86[v37 - 1] = v35 & 0x5F;
        LODWORD(v37) = v36 + 2;
        LOBYTE(v35) = 125;
      }

      v86[v36 - 1] = v35;
      v38 = a1[3];
      v39 = v37;
      v40 = v37 + 1;
      if ((v38 - 125) <= 1)
      {
        v86[v40 - 1] = v38 & 0x5F;
        LOBYTE(v38) = 125;
        LODWORD(v40) = v39 + 2;
      }

      v86[v39 - 1] = v38;
      v41 = a1[4];
      v42 = v40;
      v43 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v86[v43 - 1] = v41 & 0x5F;
        LODWORD(v43) = v42 + 2;
        LOBYTE(v41) = 125;
      }

      v86[v42 - 1] = v41;
      v44 = a1[5];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v86[v46 - 1] = v44 & 0x5F;
        LOBYTE(v44) = 125;
        LODWORD(v46) = v45 + 2;
      }

      v86[v45 - 1] = v44;
      v47 = a1[6];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v86[v49 - 1] = v47 & 0x5F;
        LODWORD(v49) = v48 + 2;
        LOBYTE(v47) = 125;
      }

      v86[v48 - 1] = v47;
      v50 = a1[7];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v86[v52 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v52) = v51 + 2;
      }

      v86[v51 - 1] = v50;
      v53 = a1[8];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v86[v55 - 1] = v53 & 0x5F;
        LODWORD(v55) = v54 + 2;
        LOBYTE(v53) = 125;
      }

      v86[v54 - 1] = v53;
      v56 = a1[9];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v86[v58 - 1] = v56 & 0x5F;
        LOBYTE(v56) = 125;
        LODWORD(v58) = v57 + 2;
      }

      v86[v57 - 1] = v56;
      v59 = a1[10];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v86[v61 - 1] = v59 & 0x5F;
        LODWORD(v61) = v60 + 2;
        LOBYTE(v59) = 125;
      }

      v86[v60 - 1] = v59;
      v62 = a1[11];
      v63 = v61;
      v64 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v86[v64 - 1] = v62 & 0x5F;
        LOBYTE(v62) = 125;
        LODWORD(v64) = v63 + 2;
      }

      v86[v63 - 1] = v62;
      v65 = a1[12];
      v66 = v64;
      v67 = v64 + 1;
      if ((v65 - 125) <= 1)
      {
        v86[v67 - 1] = v65 & 0x5F;
        LODWORD(v67) = v66 + 2;
        LOBYTE(v65) = 125;
      }

      v86[v66 - 1] = v65;
      v68 = a1[13];
      v69 = v67;
      v70 = v67 + 1;
      if ((v68 - 125) <= 1)
      {
        v86[v70 - 1] = v68 & 0x5F;
        LOBYTE(v68) = 125;
        LODWORD(v70) = v69 + 2;
      }

      v86[v69 - 1] = v68;
      v71 = a1[14];
      v72 = v70;
      v73 = v70 + 1;
      if ((v71 - 125) <= 1)
      {
        v86[v73 - 1] = v71 & 0x5F;
        LODWORD(v73) = v72 + 2;
        LOBYTE(v71) = 125;
      }

      v86[v72 - 1] = v71;
      v74 = a1[15];
      v75 = v73 + 1;
      if ((v74 - 125) <= 1)
      {
        v86[v75 - 1] = v74 & 0x5F;
        LOBYTE(v74) = 125;
        LODWORD(v75) = v73 + 2;
      }

      v86[v73 - 1] = v74;
      v76 = a1[16];
      v77 = v75 + 1;
      if ((v76 - 125) <= 1)
      {
        v86[v77 - 1] = v76 & 0x5F;
        LODWORD(v77) = v75 + 2;
        LOBYTE(v76) = 125;
      }

      v86[v75 - 1] = v76;
      v78 = ~(v30 ^ BYTE1(v29));
      v79 = a1[17];
      v80 = v77;
      v81 = v77 + 1;
      if ((v79 - 125) <= 1)
      {
        v86[v81 - 1] = v79 & 0x5F;
        LOBYTE(v79) = 125;
        LODWORD(v81) = v80 + 2;
      }

      v82 = ((v30 ^ ~(v29 >> 8)) >> 8);
      v86[v80 - 1] = v79;
      v83 = v81 + 1;
      if ((v78 - 125) <= 1)
      {
        v86[v83 - 1] = v78 & 0x5F;
        LODWORD(v83) = v81 + 2;
        LOBYTE(v78) = 125;
      }

      v86[v81 - 1] = v78;
      v84 = v83 + 1;
      if ((v82 - 125) <= 1)
      {
        v86[v84 - 1] = v82 & 0x5F;
        LOBYTE(v82) = 125;
        LODWORD(v84) = v83 + 2;
      }

      v86[v83 - 1] = v82;
      memcpy(a1, &v85, v84);
      result = (v84 + 1);
      a1[v84] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_MOD_TRA(char *a1, unsigned int a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30)
{
  v49 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x3D)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 126;
    a1[6] = 42;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    a1[13] = a6;
    a1[14] = a7;
    a1[15] = a8;
    a1[16] = a9;
    a1[17] = a10;
    a1[18] = a11;
    a1[19] = a12;
    a1[20] = a13;
    a1[21] = a14;
    *(a1 + 22) = a15;
    *(a1 + 26) = a16;
    *(a1 + 30) = a17;
    *(a1 + 34) = a18;
    *(a1 + 38) = a19;
    a1[42] = a20;
    a1[43] = a21;
    a1[44] = a22;
    a1[45] = a23;
    a1[46] = a24;
    a1[47] = a25;
    a1[48] = a26;
    a1[49] = a27;
    a1[50] = a28;
    a1[51] = a29;
    v38 = 424;
    a1[52] = a30;
    LOWORD(v39) = -1;
    v40 = a1;
    do
    {
      v41 = *v40++;
      v39 = crc_16_l_table[(v41 ^ v39)] ^ ((v39 & 0xFF00) >> 8);
      v38 -= 8;
    }

    while (v38);
    *(a1 + 53) = ~v39;
    if (a2 >= 110)
    {
      bzero(__src, 0x800uLL);
      v42 = 0;
      v43 = 0;
      do
      {
        while (1)
        {
          v44 = a1[v42];
          v45 = v43;
          v46 = v43 + 1;
          if ((v44 - 125) > 1)
          {
            break;
          }

          v43 += 2;
          __src[v46] = v44 & 0x5F;
          __src[v45] = 125;
          if (++v42 == 55)
          {
            goto LABEL_11;
          }
        }

        ++v43;
        __src[v45] = v44;
        ++v42;
      }

      while (v42 != 55);
LABEL_11:
      memcpy(a1, __src, v43);
      result = (v43 + 1);
      a1[v43] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_MOD_REVERSE_TRA(char *a1, unsigned int a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, char a25)
{
  v44 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x3B)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 117;
    a1[6] = 47;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    a1[13] = a6;
    a1[14] = a7;
    a1[15] = a8;
    a1[16] = a9;
    a1[17] = a10;
    a1[18] = a11;
    a1[19] = a12;
    a1[20] = a13;
    a1[21] = a14;
    a1[22] = a15;
    a1[23] = a16;
    a1[24] = a17;
    a1[25] = a18;
    *(a1 + 26) = a19;
    *(a1 + 30) = a20;
    *(a1 + 34) = a21;
    *(a1 + 38) = a22;
    *(a1 + 42) = a23;
    a1[46] = a24;
    v33 = 384;
    a1[47] = a25;
    LOWORD(v34) = -1;
    v35 = a1;
    do
    {
      v36 = *v35++;
      v34 = crc_16_l_table[(v36 ^ v34)] ^ ((v34 & 0xFF00) >> 8);
      v33 -= 8;
    }

    while (v33);
    *(a1 + 24) = ~v34;
    if (a2 >= 100)
    {
      bzero(__src, 0x800uLL);
      v37 = 0;
      v38 = 0;
      do
      {
        while (1)
        {
          v39 = a1[v37];
          v40 = v38;
          v41 = v38 + 1;
          if ((v39 - 125) > 1)
          {
            break;
          }

          v38 += 2;
          __src[v41] = v39 & 0x5F;
          __src[v40] = 125;
          if (++v37 == 50)
          {
            goto LABEL_11;
          }
        }

        ++v38;
        __src[v40] = v39;
        ++v37;
      }

      while (v37 != 50);
LABEL_11:
      memcpy(a1, __src, v38);
      result = (v38 + 1);
      a1[v38] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_CMD_RELEASE(unsigned __int8 *a1, unsigned int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x33)
  {
    bzero(a1, a2);
    *a1 = 527179;
    a1[4] = 118;
    a1[6] = 10;
    v5 = a1[5];
    v6 = crc_16_l_table[crc_16_l_table[v5 ^ 0x20] ^ 0xAC];
    v7 = crc_16_l_table[(a1[7] ^ v6 ^ HIBYTE(crc_16_l_table[v5 ^ 0x20]))];
    v8 = crc_16_l_table[(a1[8] ^ v7 ^ HIBYTE(v6))];
    v9 = crc_16_l_table[(a1[9] ^ v8 ^ HIBYTE(v7))];
    *(a1 + 5) = v9 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v7 ^ HIBYTE(v6))]);
    if (a2 >= 24)
    {
      bzero(v25, 0x7FAuLL);
      __src = 527179;
      v23 = 118;
      if ((v5 - 125) > 1)
      {
        v10 = 6;
      }

      else
      {
        v25[0] = v5 & 0x5F;
        v10 = 7;
        LOBYTE(v5) = 125;
      }

      v24 = v5;
      *(&__src + v10) = 10;
      v11 = a1[7];
      v12 = v10 + 2;
      if ((v11 - 125) <= 1)
      {
        *(&__src + v12) = v11 & 0x5F;
        LOBYTE(v11) = 125;
        LODWORD(v12) = v10 + 3;
      }

      *(&__src + v10 + 1) = v11;
      v13 = a1[8];
      v14 = v12 + 1;
      if ((v13 - 125) <= 1)
      {
        *(&__src + v14) = v13 & 0x5F;
        LODWORD(v14) = v12 + 2;
        LOBYTE(v13) = 125;
      }

      *(&__src + v12) = v13;
      v15 = ~(v9 ^ BYTE1(v8));
      v16 = a1[9];
      v17 = v14;
      v18 = v14 + 1;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v18) = v16 & 0x5F;
        LOBYTE(v16) = 125;
        LODWORD(v18) = v17 + 2;
      }

      v19 = ((v9 ^ ~(v8 >> 8)) >> 8);
      *(&__src + v17) = v16;
      v20 = v18 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v20) = v15 & 0x5F;
        LODWORD(v20) = v18 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v18) = v15;
      v21 = v20 + 1;
      if ((v19 - 125) <= 1)
      {
        *(&__src + v21) = v19 & 0x5F;
        LOBYTE(v19) = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v19;
      memcpy(a1, &__src, v21);
      result = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_SetPA_DCDC_Levels(unsigned __int8 *a1, unsigned int a2, __int16 a3, __int16 a4)
{
  v42 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    *(a1 + 2) = 183;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC];
    v14 = crc_16_l_table[crc_16_l_table[v13 ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0xB7] ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC])];
    v15 = crc_16_l_table[(v14 ^ HIBYTE(crc_16_l_table[v13 ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0xB7]) ^ a3)];
    v16 = crc_16_l_table[(HIBYTE(a3) ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a4 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v16 ^ HIBYTE(v15))] ^ (v16 >> 8)];
    *(a1 + 5) = v18 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v16 ^ HIBYTE(v15))]);
    if (a2 >= 24)
    {
      v19 = v18 ^ ~(v17 >> 8);
      bzero(v41, 0x7FFuLL);
      v20 = *a1;
      if ((v20 - 125) > 1)
      {
        v21 = 1;
      }

      else
      {
        v41[0] = v20 & 0x5F;
        v21 = 2;
        LOBYTE(v20) = 125;
      }

      v40 = v20;
      v22 = a1[1];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        v41[v23 - 1] = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      v41[v21 - 1] = v22;
      v24 = v23;
      v25 = v23 + 1;
      if ((v9 - 125) <= 1)
      {
        v41[v25 - 1] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v25) = v24 + 2;
      }

      v26 = a3;
      v41[v24 - 1] = v9;
      v27 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v41[v27 - 1] = v10 & 0x5F;
        LODWORD(v27) = v25 + 2;
        LOBYTE(v10) = 125;
      }

      v41[v25 - 1] = v10;
      *&v41[v27 - 1] = 183;
      v28 = v27 + 2;
      v29 = v27 + 3;
      if (a3 - 125 <= 1)
      {
        v41[v29 - 1] = a3 & 0x5F;
        v26 = 125;
        LODWORD(v29) = v27 + 4;
      }

      v30 = a4;
      v41[v28 - 1] = v26;
      v31 = v29 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v41[v31 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v31) = v29 + 2;
      }

      v41[v29 - 1] = v11;
      v32 = v31;
      v33 = v31 + 1;
      if (a4 - 125 <= 1)
      {
        v41[v33 - 1] = a4 & 0x5F;
        LODWORD(v33) = v32 + 2;
        v30 = 125;
      }

      v34 = ~(v18 ^ BYTE1(v17));
      v41[v32 - 1] = v30;
      v35 = v33 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v41[v35 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v35) = v33 + 2;
      }

      v36 = (v18 ^ ~(v17 >> 8)) >> 8;
      v41[v33 - 1] = v12;
      v37 = v35;
      v38 = v35 + 1;
      if ((v34 - 125) <= 1)
      {
        v41[v38 - 1] = v34 & 0x5F;
        LODWORD(v38) = v37 + 2;
        LOBYTE(v34) = 125;
      }

      v41[v37 - 1] = v34;
      v39 = v38 + 1;
      if (BYTE1(v19) - 125 <= 1)
      {
        v41[v39 - 1] = BYTE1(v19) & 0x5F;
        v36 = 125;
        LODWORD(v39) = v38 + 2;
      }

      v41[v38 - 1] = v36;
      memcpy(a1, &v40, v39);
      result = (v39 + 1);
      a1[v39] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_TX_RX_FREQ_CAL_SWEEP(char *a1, unsigned int a2, char *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x5D2)
  {
    return result;
  }

  bzero(a1, a2);
  *a1 = 0xA8008200140B4BLL;
  *(a1 + 4) = 12;
  a1[10] = *a3;
  a1[11] = a3[1];
  a1[12] = a3[2];
  a1[13] = a3[3];
  a1[14] = a3[4];
  a1[15] = a3[5];
  if (a3[2])
  {
    v7 = 0;
    v8 = a1 + 17;
    v9 = 16;
    do
    {
      v10 = &a3[2 * v7 + 6];
      *(v8 - 1) = *v10;
      *v8 = v10[1];
      v8 += 2;
      ++v7;
      v9 += 2;
    }

    while (v7 < a3[2]);
    if (!a3[3])
    {
      goto LABEL_26;
    }

LABEL_9:
    v11 = 0;
    v12 = &a1[v9];
    do
    {
      v13 = &a3[2 * v11 + 38];
      *v12 = *v13;
      v12[1] = v13[1];
      ++v11;
      v9 += 2;
      v12 += 2;
    }

    while (v11 < a3[3]);
    if (a3[3])
    {
      v14 = 0;
      do
      {
        v15 = &a3[2 * v14 + 78];
        *v12 = *v15;
        v12[1] = v15[1];
        ++v14;
        v12 += 2;
        v9 += 2;
      }

      while (v14 < a3[3]);
      if (a3[3])
      {
        v16 = 0;
        do
        {
          *v12++ = a3[v16++ + 118];
          ++v9;
        }

        while (v16 < a3[3]);
        if (a3[3])
        {
          v17 = 0;
          do
          {
            *v12++ = a3[v17++ + 138];
            ++v9;
          }

          while (v17 < a3[3]);
          if (a3[3])
          {
            v18 = 0;
            do
            {
              *v12++ = a3[v18++ + 158];
              ++v9;
            }

            while (v18 < a3[3]);
            if (a3[3])
            {
              v19 = 0;
              do
              {
                *v12++ = a3[v19++ + 178];
                ++v9;
              }

              while (v19 < a3[3]);
            }
          }
        }
      }
    }

    goto LABEL_26;
  }

  v9 = 16;
  if (a3[3])
  {
    goto LABEL_9;
  }

LABEL_26:
  v20 = 8 * v9;
  if (((8 * v9) & 0xFFF8) != 0)
  {
    LOWORD(v21) = -1;
    v22 = a1;
    do
    {
      v23 = *v22++;
      v21 = crc_16_l_table[(v23 ^ v21)] ^ ((v21 & 0xFF00) >> 8);
      v20 -= 8;
    }

    while (v20);
    *&a1[v9] = ~v21;
    result = 0xFFFFFFFFLL;
    if (v9 > 1022)
    {
      return result;
    }
  }

  else
  {
    v24 = &a1[v9];
    *v24 = 0;
    v24[1] = 0;
    result = 0xFFFFFFFFLL;
    if (v9 > 1022)
    {
      return result;
    }
  }

  v25 = (v9 + 2);
  if (2 * v25 <= a2)
  {
    bzero(__src, 0x800uLL);
    if (v9 < -1)
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      v27 = a1;
      do
      {
        while (1)
        {
          v29 = *v27++;
          v28 = v29;
          v30 = v26;
          v31 = v26 + 1;
          if ((v29 - 125) > 1)
          {
            break;
          }

          v26 += 2;
          __src[v31] = v28 & 0x5F;
          __src[v30] = 125;
          if (!--v25)
          {
            goto LABEL_40;
          }
        }

        ++v26;
        __src[v30] = v28;
        --v25;
      }

      while (v25);
    }

LABEL_40:
    memcpy(a1, __src, v26);
    result = (v26 + 1);
    a1[v26] = 126;
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_TX_RX_FREQ_CAL_SWEEP_PARSE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 2);
  v4 = *(a3 + 3);
  if (*(a3 + 2))
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = a3 + 838;
  v9 = ((2 * v4 - 1) >> 1) + 1;
  v10 = (2 * v4 - 1) & 0xFFFFFFFE;
  v11 = a3 + 40 * *(a3 + 2) + v10 + 800;
  v12 = a1 + v10 + 2;
  v13 = (a3 + 854);
  v14 = v8;
  v15 = 6 * v4 + (2 * v4 + 2) * v3 + 22;
  do
  {
    if (v4 < 8 || ((v16 = 6 * v4 + (2 * v4 + 2) * v3 + 22 + 2 * v4 * v7, v17 = v12 + v16, v18 = a1 + v16, v8 < v17) ? (v19 = v18 >= v11) : (v19 = 1), !v19))
    {
      v24 = 0;
      v25 = 0;
LABEL_21:
      v26 = a1 + 1 + v24 + v15;
      do
      {
        *(v14 + 2 * v25) = *(v26 - 1);
        v26 += 2;
        ++v25;
      }

      while (v9 != v25);
      goto LABEL_7;
    }

    if (v4 >= 0x10)
    {
      v27 = (a1 + 16 + v15);
      v28 = v9 & 0xFFFFFFF0;
      v29 = v13;
      do
      {
        v30 = v27 - 16;
        v32 = vld2_s8(v30);
        v33 = vld2_s8(v27);
        v29[-1] = vorrq_s8(vshll_n_s8(v32.val[1], 8uLL), vmovl_u8(v32.val[0]));
        *v29 = vorrq_s8(vshll_n_s8(v33.val[1], 8uLL), vmovl_u8(v33.val[0]));
        v29 += 2;
        v27 += 32;
        v28 -= 16;
      }

      while (v28);
      if ((v9 & 0xFFFFFFF0) == v9)
      {
        goto LABEL_7;
      }

      v20 = v9 & 0xFFFFFFF0;
      v24 = 2 * v20;
      v25 = v20;
      if (((((2 * v4 - 1) >> 1) + 1) & 8) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = (v14 + 2 * v20);
    v22 = (a1 + 2 * v20 + v15);
    v23 = v20 - (v9 & 0xFFFFFFF8);
    do
    {
      v31 = vld2_s8(v22);
      v22 += 16;
      *v21++ = vorrq_s8(vshll_n_s8(v31.val[1], 8uLL), vmovl_u8(v31.val[0]));
      v23 += 8;
    }

    while (v23);
    v24 = 2 * (v9 & 0xFFFFFFF8);
    v25 = v9 & 0xFFFFFFF8;
    if (v25 != v9)
    {
      goto LABEL_21;
    }

LABEL_7:
    ++v7;
    v13 = (v13 + 40);
    v15 += 2 * v4;
    v14 += 40;
  }

  while (v7 != v3);
  return 0;
}

uint64_t APPLIB_DIAG_Get_TX_Power_Channel(_DWORD *a1, unsigned int a2, __int16 a3)
{
  v23 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 9)
  {
    bzero(a1, a2);
    *a1 = 589131;
    v7 = a3;
    *(a1 + 2) = a3;
    v8 = HIBYTE(a3);
    v9 = crc_16_l_table[a3 ^ 8];
    v10 = crc_16_l_table[crc_16_l_table[a3 ^ 8] ^ HIBYTE(a3) ^ 0x68];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 6) = v10 ^ ~(v9 >> 8);
    v12 = BYTE1(v11);
    *(a1 + 7) = BYTE1(v11);
    if (a2 >= 0x10)
    {
      v13 = v10 ^ (v9 >> 8);
      bzero(v22, 0x7FBuLL);
      __src = 589131;
      if ((v7 - 125) > 1)
      {
        v14 = 5;
      }

      else
      {
        v22[0] = v7 & 0x5F;
        v14 = 6;
        LOBYTE(v7) = 125;
      }

      v15 = ~v13;
      v21 = v7;
      v16 = v14 + 1;
      if ((v8 - 125) <= 1)
      {
        *(&__src + v16) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v16) = v14 + 2;
      }

      *(&__src + v14) = v8;
      v17 = v16;
      v18 = v16 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v18) = v15 & 0x5F;
        LODWORD(v18) = v17 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v17) = v15;
      v19 = v18 + 1;
      if ((v12 - 125) <= 1)
      {
        *(&__src + v19) = v12 & 0x5F;
        LOBYTE(v12) = 125;
        LODWORD(v19) = v18 + 2;
      }

      *(&__src + v18) = v12;
      memcpy(a1, &__src, v19);
      result = (v19 + 1);
      *(a1 + v19) = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetPmicTherm(_DWORD *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 64843;
    *(a1 + 2) = 22839;
    if (a2 >= 0xC)
    {
      *a1 = 64843;
      *(a1 + 2) = 22839;
      *(a1 + 6) = 126;
      return 7;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_FTM_SET_REVERSE_LINK_POWER(char *a1, unsigned int a2, int a3, int a4)
{
  v57 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 140;
    *(a1 + 11) = a4;
    a1[10] = a3;
    v9 = a1[6];
    v10 = crc_16_l_table[v9 ^ 0x25];
    v11 = crc_16_l_table[a1[7] ^ 0x12 ^ v10];
    v12 = crc_16_l_table[(a1[8] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ a3];
    v15 = crc_16_l_table[(a4 ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[12] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[13] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[14] ^ v17 ^ HIBYTE(v16))];
    v19 = v18 ^ ~(v17 >> 8);
    *(a1 + 15) = v18 ^ ~HIBYTE(crc_16_l_table[(a1[13] ^ v16 ^ HIBYTE(v15))]);
    if (a2 >= 34)
    {
      bzero(v56, 0x7FFuLL);
      v20 = *a1;
      if ((v20 - 125) > 1)
      {
        v21 = 1;
      }

      else
      {
        v56[0] = v20 & 0x5F;
        v21 = 2;
        LOBYTE(v20) = 125;
      }

      __src = v20;
      v22 = a1[1];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        v56[v23 - 1] = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      v56[v21 - 1] = v22;
      v24 = a1[2];
      v25 = v23;
      v26 = v23 + 1;
      if ((v24 - 125) <= 1)
      {
        v56[v26 - 1] = v24 & 0x5F;
        LODWORD(v26) = v25 + 2;
        LOBYTE(v24) = 125;
      }

      v56[v25 - 1] = v24;
      v27 = a1[3];
      v28 = v26;
      v29 = v26 + 1;
      if ((v27 - 125) <= 1)
      {
        v56[v29 - 1] = v27 & 0x5F;
        LOBYTE(v27) = 125;
        LODWORD(v29) = v28 + 2;
      }

      v56[v28 - 1] = v27;
      v30 = a1[4];
      v31 = v29 + 1;
      if ((v30 - 125) <= 1)
      {
        v56[v31 - 1] = v30 & 0x5F;
        LODWORD(v31) = v29 + 2;
        LOBYTE(v30) = 125;
      }

      v56[v29 - 1] = v30;
      v56[v31 - 1] = 0;
      v32 = v31 + 2;
      if ((v9 - 125) <= 1)
      {
        v56[v32 - 1] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v32) = v31 + 3;
      }

      v56[v31] = v9;
      v33 = a1[7];
      v34 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v56[v34 - 1] = v33 & 0x5F;
        LOBYTE(v33) = 125;
        LODWORD(v34) = v32 + 2;
      }

      v56[v32 - 1] = v33;
      v35 = a1[8];
      v36 = v34 + 1;
      if ((v35 - 125) <= 1)
      {
        v56[v36 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v36) = v34 + 2;
      }

      v56[v34 - 1] = v35;
      v37 = a1[9];
      v38 = v36;
      v39 = v36 + 1;
      if ((v37 - 125) <= 1)
      {
        v56[v39 - 1] = v37 & 0x5F;
        LOBYTE(v37) = 125;
        LODWORD(v39) = v36 + 2;
      }

      v40 = a4;
      v56[v38 - 1] = v37;
      v41 = v39;
      v42 = v39 + 1;
      if ((a3 - 125) <= 1)
      {
        v56[v42 - 1] = a3 & 0x5F;
        LOBYTE(a3) = 125;
        LODWORD(v42) = v41 + 2;
      }

      v43 = BYTE1(a4);
      v56[v41 - 1] = a3;
      v44 = v42 + 1;
      if (a4 - 125 <= 1)
      {
        v56[v44 - 1] = a4 & 0x5F;
        v40 = 125;
        LODWORD(v44) = v42 + 2;
      }

      v45 = BYTE2(a4);
      v56[v42 - 1] = v40;
      v46 = v44 + 1;
      if (BYTE1(a4) - 125 <= 1)
      {
        v56[v46 - 1] = BYTE1(a4) & 0x5F;
        v43 = 125;
        LODWORD(v46) = v44 + 2;
      }

      v56[v44 - 1] = v43;
      v47 = v46;
      v48 = v46 + 1;
      if (BYTE2(a4) - 125 <= 1)
      {
        v56[v48 - 1] = BYTE2(a4) & 0x5F;
        v45 = 125;
        LODWORD(v48) = v47 + 2;
      }

      v56[v47 - 1] = v45;
      v49 = ~(v18 ^ BYTE1(v17));
      v50 = a1[14];
      v51 = v48 + 1;
      if ((v50 - 125) <= 1)
      {
        v56[v51 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v51) = v48 + 2;
      }

      v52 = (v18 ^ ~(v17 >> 8)) >> 8;
      v56[v48 - 1] = v50;
      v53 = v51 + 1;
      if ((v49 - 125) <= 1)
      {
        v56[v53 - 1] = v49 & 0x5F;
        LODWORD(v53) = v51 + 2;
        LOBYTE(v49) = 125;
      }

      v56[v51 - 1] = v49;
      v54 = v53 + 1;
      if (BYTE1(v19) - 125 <= 1)
      {
        v56[v54 - 1] = BYTE1(v19) & 0x5F;
        v52 = 125;
        LODWORD(v54) = v53 + 2;
      }

      v56[v53 - 1] = v52;
      memcpy(a1, &__src, v54);
      result = (v54 + 1);
      a1[v54] = 126;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t ETLDiagCreateGUIDDB(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), unsigned __int16 *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    memset(v37, 0, sizeof(v37));
    v38 = 0;
    if (!HDLCFrameCreateUplink() || a2[2])
    {
      goto LABEL_19;
    }

    if (HDLCFrameGetFreeSpace() <= 7)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    }

    else
    {
      v8 = *a2;
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        LOWORD(v42) = 4736;
        HIWORD(v42) = v8;
        if (HDLCFrameInject())
        {
          if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !ETLSendCommand(a1, v39, a4) || !ETLSubsys2FindMatchingResponse(a1, v37, a4))
          {
            goto LABEL_19;
          }

          v42 = 0;
          v9 = malloc(0x1CuLL);
          *a3 = v9;
          *v9 = 0;
          v9[2] = 0;
          *(v9 + 6) = 0;
          v9[1] = 0;
          v10 = ETLSubsys2ParseHeader(v37, &v41, v9, v9 + 1, v9 + 4, &v42);
          v11 = a3;
          if (!v10 || (v12 = *a3, **a3 != *a2))
          {
LABEL_27:
            if (*(*v11 + 14))
            {
              _ETLDebugPrint("ETLDiagParseGetDBData", "Failed to parse the header while getting GUID\x13.\x13\n", v35, v36);
            }

            goto LABEL_19;
          }

          v13 = v42;
          v14 = DWORD2(v37[0]);
          if (DWORD2(v37[0]) - v42 <= 5)
          {
            _ETLDebugPrint("ETLDiagParseGetDBDataHeader", "The required size (%u) is less than the payload length (%u)\n");
LABEL_26:
            v11 = a3;
            goto LABEL_27;
          }

          v17 = *&v37[0];
          v18 = (*&v37[0] + v42);
          v12[5] = *v18;
          v19 = v18[1];
          v12[6] = v19;
          v20 = v18[2];
          v12[7] = v20;
          if (v19 != a2[1])
          {
            _ETLDebugPrint("ETLDiagParseGetDBDataHeader", "The request version (%u) is not matched with responded version (%u).\n");
            goto LABEL_26;
          }

          if (v20)
          {
            _ETLDebugPrint("ETLDiagParseGetDBData", "The op code (%d) is not supported!\n");
          }

          else if (v14 - (v13 + 6) > 1)
          {
            v21 = v19;
            v22 = (v17 + v13 + 6);
            if (v19 == 3)
            {
              *(v12 + 16) = *v22;
              v23 = v22[1];
              *(v12 + 17) = v23;
              v24 = 21;
            }

            else
            {
              if (v19 != 1)
              {
                _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Unknown version: %u\n");
                goto LABEL_19;
              }

              *(v12 + 16) = *v22;
              v23 = v22[1];
              *(v12 + 17) = v23;
              v24 = 20;
            }

            v25 = v23 * v24;
            v26 = malloc(v25);
            *(v12 + 9) = v26;
            if (v26)
            {
              bzero(v26, v25);
              _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Response: Version: %u\n", v21);
              _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Response: Number of Files: %u\n", v23);
              if (!v23)
              {
                v15 = 1;
                goto LABEL_20;
              }

              v27 = v22 + 2;
              if (v21 == 3)
              {
                v28 = 21;
              }

              else
              {
                v28 = 20;
              }

              if (v21 == 1)
              {
                v32 = 0;
                v33 = -8 - v13;
                v15 = 1;
                while (v33 + DWORD2(v37[0]) >= v28)
                {
                  v34 = *(v12 + 9) + v32;
                  *v34 = *&v27[v32];
                  *(v34 + 4) = *&v27[v32 + 4];
                  *(v34 + 6) = *&v27[v32 + 6];
                  *(v34 + 8) = *&v27[v32 + 8];
                  *(*(v12 + 9) + 16) = *&v27[v32 + 16];
                  v33 -= v28;
                  v32 += 20;
                  if (20 * v23 == v32)
                  {
                    goto LABEL_20;
                  }
                }
              }

              else
              {
                v29 = 0;
                v30 = -8 - v13;
                v15 = 1;
                while (v30 + DWORD2(v37[0]) >= v28)
                {
                  v31 = *(v12 + 9) + v29;
                  *v31 = *&v27[v29];
                  *(v31 + 4) = *&v27[v29 + 4];
                  *(v31 + 6) = *&v27[v29 + 6];
                  *(v31 + 8) = *&v27[v29 + 8];
                  *(*(v12 + 9) + 16) = *&v27[v29 + 16];
                  *(*(v12 + 9) + 20) = v27[v29 + 20];
                  v30 -= v28;
                  v29 += 21;
                  if (21 * v23 == v29)
                  {
                    goto LABEL_20;
                  }
                }
              }

              _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Insufficient payload length( %u). Needed %u bytes more\n");
            }

            else
            {
              _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Failed to allocate memory for file info.\n");
            }
          }

          else
          {
            _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Request size (%u) is greater than the payload size (%u).\n");
          }
        }

        else
        {
          _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
        }
      }
    }

LABEL_19:
    v15 = 0;
LABEL_20:
    HDLCFrameFree();
    HDLCFrameFree();
    return v15;
  }

  _ETLDebugPrint("ETLDiagCreateGUIDDB", "transport cannot be NULL\n", a3, a4);
  return 0;
}

uint64_t ETLDiagReleaseGUIDDB(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = v1[6];
    if (v3 == 3 || v3 == 1)
    {
      v4 = *(v1 + 9);
      if (v4)
      {
        free(v4);
      }
    }

    else
    {
      _ETLDebugPrint("ETLDiagReleaseGUIDDB", "Warning: Version (%u) is not supported to free file list!\n", v1[6]);
    }

    free(*a1);
    *a1 = 0;
  }

  return 1;
}

const char *ETLDiagGetSubsysCmdString(int a1)
{
  if (a1 <= 3599)
  {
    if (a1 == 527)
    {
      return "APPS";
    }

    if (a1 == 2070)
    {
      return "MPSS";
    }
  }

  else
  {
    switch(a1)
    {
      case 3600:
        return "ADSP";
      case 5151:
        return "WCNSS";
      case 6680:
        return "SLPI";
    }
  }

  return &unk_2977CAD33;
}

void ETLFirmwareVersion::ETLFirmwareVersion(ETLFirmwareVersion *this)
{
  *this = &unk_2A1E537A8;
  *(this + 31) = 7;
  strcpy(this + 8, "Phoenix");
  *(this + 4) = 0;
  *(this + 5) = 0xFFFFFFFF00000000;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
}

{
  *this = &unk_2A1E537A8;
  *(this + 31) = 7;
  strcpy(this + 8, "Phoenix");
  *(this + 4) = 0;
  *(this + 5) = 0xFFFFFFFF00000000;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
}

void ETLFirmwareVersion::~ETLFirmwareVersion(void **this)
{
  *this = &unk_2A1E537A8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(this[1]);
      return;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if (*(this + 31) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_2A1E537A8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(this[1]);
      return;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if (*(this + 31) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_2A1E537A8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 31) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = this;

    goto LABEL_6;
  }

LABEL_9:
  operator delete(this[1]);
  v2 = this;

LABEL_6:
  operator delete(v2);
}

BOOL ETLFirmwareVersion::initCommon(uint64_t a1, uint64_t a2, char a3)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v81 = 0;
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  v4 = __p[0];
  v5 = __p[1];
  if (0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) < 2)
  {
    if (!__p[0])
    {
      goto LABEL_90;
    }

    goto LABEL_17;
  }

  v6 = *(__p[0] + 23);
  if (v6 >= 0)
  {
    v7 = *(__p[0] + 23);
  }

  else
  {
    v7 = *(__p[0] + 1);
  }

  v8 = *(a1 + 31);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 16);
  }

  if (v7 != v8 || (v6 >= 0 ? (v10 = __p[0]) : (v10 = *__p[0]), v9 >= 0 ? (v11 = (a1 + 8)) : (v11 = *(a1 + 8)), memcmp(v10, v11, v7)))
  {
LABEL_17:
    v12 = __p[0];
    if (__p[1] == __p[0])
    {
      goto LABEL_89;
    }

    do
    {
      v13 = *(v5 - 1);
      v5 -= 3;
      if (v13 < 0)
      {
        operator delete(*v5);
      }
    }

    while (v5 != __p[0]);
LABEL_88:
    v12 = __p[0];
LABEL_89:
    __p[1] = v4;
    operator delete(v12);
    goto LABEL_90;
  }

  if (__dst == (__p[0] + 24))
  {
LABEL_25:
    v14 = __p[0];
    if (__p[1] == __p[0])
    {
      goto LABEL_34;
    }

    do
    {
LABEL_31:
      v15 = *(v5 - 1);
      v5 -= 3;
      if (v15 < 0)
      {
        operator delete(*v5);
      }
    }

    while (v5 != v4);
    v14 = __p[0];
    goto LABEL_34;
  }

  if ((*(__p[0] + 47) & 0x80000000) == 0)
  {
    *__dst = *(__p[0] + 24);
    v81 = *(__p[0] + 5);
    goto LABEL_25;
  }

  std::string::__assign_no_alias<true>(__dst, *(__p[0] + 3), *(__p[0] + 4));
  v4 = __p[0];
  if (!__p[0])
  {
    goto LABEL_35;
  }

  v5 = __p[1];
  v14 = __p[0];
  if (__p[1] != __p[0])
  {
    goto LABEL_31;
  }

LABEL_34:
  __p[1] = v4;
  operator delete(v14);
LABEL_35:
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  v4 = __p[0];
  v16 = __p[1];
  v17 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
  if (v17 != 1)
  {
    if (v17 != 2)
    {
      if (__p[0])
      {
        v12 = __p[0];
        if (__p[1] == __p[0])
        {
          goto LABEL_89;
        }

        do
        {
          v20 = *(v16 - 1);
          v16 -= 3;
          if (v20 < 0)
          {
            operator delete(*v16);
          }
        }

        while (v16 != __p[0]);
        goto LABEL_88;
      }

      goto LABEL_90;
    }

    if (__dst != __p[0])
    {
      v18 = *(__p[0] + 23);
      if (SHIBYTE(v81) < 0)
      {
        if (v18 >= 0)
        {
          v21 = __p[0];
        }

        else
        {
          v21 = *__p[0];
        }

        if (v18 >= 0)
        {
          v22 = *(__p[0] + 23);
        }

        else
        {
          v22 = *(__p[0] + 1);
        }

        std::string::__assign_no_alias<false>(__dst, v21, v22);
      }

      else if ((*(__p[0] + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(__dst, *__p[0], *(__p[0] + 1));
      }

      else
      {
        v19 = *__p[0];
        v81 = *(__p[0] + 2);
        *__dst = v19;
      }
    }

    v4 = __p[0];
    v23 = (a1 + 48);
    if ((a1 + 48) != __p[0] + 24)
    {
      v24 = *(__p[0] + 47);
      if (*(a1 + 71) < 0)
      {
        if (v24 >= 0)
        {
          v26 = __p[0] + 24;
        }

        else
        {
          v26 = *(__p[0] + 3);
        }

        if (v24 >= 0)
        {
          v27 = *(__p[0] + 47);
        }

        else
        {
          v27 = *(__p[0] + 4);
        }

        std::string::__assign_no_alias<false>(v23, v26, v27);
      }

      else if ((*(__p[0] + 47) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v23, *(__p[0] + 3), *(__p[0] + 4));
      }

      else
      {
        v25 = *(__p[0] + 24);
        *(a1 + 64) = *(__p[0] + 5);
        *v23 = v25;
      }

      v4 = __p[0];
    }
  }

  if (v4)
  {
    v28 = __p[1];
    v29 = v4;
    if (__p[1] != v4)
    {
      do
      {
        v30 = *(v28 - 1);
        v28 -= 3;
        if (v30 < 0)
        {
          operator delete(*v28);
        }
      }

      while (v28 != v4);
      v29 = __p[0];
    }

    __p[1] = v4;
    operator delete(v29);
  }

  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  v4 = __p[0];
  v31 = __p[1];
  v32 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
  if (v32 == 1)
  {
    goto LABEL_122;
  }

  if (v32 != 2)
  {
    if (__p[0])
    {
      v12 = __p[0];
      if (__p[1] == __p[0])
      {
        goto LABEL_89;
      }

      do
      {
        v35 = *(v31 - 1);
        v31 -= 3;
        if (v35 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != __p[0]);
      goto LABEL_88;
    }

LABEL_90:
    v36 = 0;
    goto LABEL_91;
  }

  if (__dst != __p[0])
  {
    v33 = *(__p[0] + 23);
    if (SHIBYTE(v81) < 0)
    {
      if (v33 >= 0)
      {
        v38 = __p[0];
      }

      else
      {
        v38 = *__p[0];
      }

      if (v33 >= 0)
      {
        v39 = *(__p[0] + 23);
      }

      else
      {
        v39 = *(__p[0] + 1);
      }

      std::string::__assign_no_alias<false>(__dst, v38, v39);
    }

    else if ((*(__p[0] + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *__p[0], *(__p[0] + 1));
    }

    else
    {
      v34 = *__p[0];
      v81 = *(__p[0] + 2);
      *__dst = v34;
    }
  }

  *(a1 + 44) = 0;
  v40 = __p[0];
  v41 = (__p[0] + 24);
  __endptr = 0;
  v42 = *(__p[0] + 47);
  if (v42 >= 0)
  {
    v43 = *(__p[0] + 47);
  }

  else
  {
    v43 = *(__p[0] + 4);
  }

  if (!v43 || (v42 >= 0 ? (v44 = __p[0] + 24) : (v44 = *v41), (v45 = memchr(v44, 45, v43)) != 0 ? (v46 = v45 - v44 == -1) : (v46 = 1), v46))
  {
    *__error() = 0;
    v47 = *(v40 + 47) >= 0 ? v41 : v40[3];
    v48 = strtoul(v47, &__endptr, 10);
    if (!*__error() && __endptr && !*__endptr)
    {
      *(a1 + 44) = v48;
    }
  }

  v4 = __p[0];
LABEL_122:
  if (v4)
  {
    v49 = __p[1];
    v50 = v4;
    if (__p[1] != v4)
    {
      do
      {
        v51 = *(v49 - 1);
        v49 -= 3;
        if (v51 < 0)
        {
          operator delete(*v49);
        }
      }

      while (v49 != v4);
      v50 = __p[0];
    }

    __p[1] = v4;
    operator delete(v50);
  }

  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  v52 = __p[0];
  v36 = (__p[1] - __p[0]) == 72;
  if ((__p[1] - __p[0]) == 72)
  {
    *(a1 + 32) = 0;
    __endptr = 0;
    v53 = *(v52 + 23);
    if (v53 >= 0)
    {
      v54 = *(v52 + 23);
    }

    else
    {
      v54 = v52[1];
    }

    if (!v54 || (v53 >= 0 ? (v55 = v52) : (v55 = *v52), (v56 = memchr(v55, 45, v54)) != 0 ? (v57 = v56 - v55 == -1) : (v57 = 1), v57))
    {
      *__error() = 0;
      v58 = *(v52 + 23) >= 0 ? v52 : *v52;
      v59 = strtoul(v58, &__endptr, 10);
      if (!*__error() && __endptr && !*__endptr)
      {
        *(a1 + 32) = v59;
      }
    }

    *(a1 + 36) = 0;
    v60 = __p[0];
    v61 = (__p[0] + 24);
    __endptr = 0;
    v62 = *(__p[0] + 47);
    if (v62 >= 0)
    {
      v63 = *(__p[0] + 47);
    }

    else
    {
      v63 = *(__p[0] + 4);
    }

    if (!v63 || (v62 >= 0 ? (v64 = __p[0] + 24) : (v64 = *v61), (v65 = memchr(v64, 45, v63)) == 0 || v65 - v64 == -1))
    {
      *__error() = 0;
      v66 = *(v60 + 47) >= 0 ? v61 : v60[3];
      v67 = strtoul(v66, &__endptr, 10);
      if (!*__error() && __endptr && !*__endptr)
      {
        *(a1 + 36) = v67;
      }
    }

    *(a1 + 40) = 0;
    v68 = __p[0];
    v69 = (__p[0] + 48);
    __endptr = 0;
    v70 = *(__p[0] + 71);
    if (v70 >= 0)
    {
      v71 = *(__p[0] + 71);
    }

    else
    {
      v71 = *(__p[0] + 7);
    }

    if (!v71 || (v70 >= 0 ? (v72 = __p[0] + 48) : (v72 = *v69), (v73 = memchr(v72, 45, v71)) == 0 || v73 - v72 == -1))
    {
      *__error() = 0;
      v74 = *(v68 + 71) >= 0 ? v69 : v68[6];
      v75 = strtoul(v74, &__endptr, 10);
      if (!*__error() && __endptr && !*__endptr)
      {
        *(a1 + 40) = v75;
      }
    }

    v52 = __p[0];
  }

  if (v52)
  {
    v76 = __p[1];
    v77 = v52;
    if (__p[1] != v52)
    {
      do
      {
        v78 = *(v76 - 1);
        v76 -= 3;
        if (v78 < 0)
        {
          operator delete(*v76);
        }
      }

      while (v76 != v52);
      v77 = __p[0];
    }

    __p[1] = v52;
    operator delete(v77);
  }

LABEL_91:
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__dst[0]);
  }

  return v36;
}

void sub_297795D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::vector<std::string>::~vector[abi:ne200100](&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

BOOL ETLFirmwareVersion::initWithVersionString(uint64_t a1, uint64_t a2)
{
  v38[2] = *MEMORY[0x29EDCA608];
  memset(__p, 0, sizeof(__p));
  v4 = *(a2 + 23);
  v5 = v4;
  v6 = *a2;
  v7 = *(a2 + 8);
  v34 = *a2;
  if (v4 >= 0)
  {
    v6 = a2;
  }

  __s = v6;
  if (v4 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = *(a1 + 31);
  if (v9 >= 0)
  {
    v10 = (a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 31);
  }

  else
  {
    v11 = *(a1 + 16);
  }

  if (v11)
  {
    if (v8 >= v11)
    {
      v15 = v6;
      v16 = &v6[v8];
      v17 = *v10;
      v18 = v8;
      do
      {
        v19 = v18 - v11;
        if (v19 == -1)
        {
          break;
        }

        v20 = memchr(v15, v17, v19 + 1);
        if (!v20)
        {
          break;
        }

        v21 = v20;
        if (!memcmp(v20, v10, v11))
        {
          if (v21 == v16 || v21 != __s)
          {
            break;
          }

          goto LABEL_33;
        }

        v15 = (v21 + 1);
        v18 = v16 - (v21 + 1);
      }

      while (v18 >= v11);
    }

    v12 = v11 + 1;
    if ((v11 + 1) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 <= 0x16)
    {
      memset(&v36, 0, sizeof(v36));
      v14 = &v36;
      *(&v36.__r_.__value_.__s + 23) = v11 + 1;
    }

    else
    {
      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      v14 = operator new(v13);
      v36.__r_.__value_.__l.__size_ = v11 + 1;
      v36.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
      v36.__r_.__value_.__r.__words[0] = v14;
    }

    memmove(v14, v10, v11);
    *&v14[v11] = 32;
    v22 = std::string::append(&v36, __s, v8);
    v23 = v22->__r_.__value_.__r.__words[0];
    v38[0] = v22->__r_.__value_.__l.__size_;
    *(v38 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = v23;
    __p[1] = v38[0];
    *(&__p[1] + 7) = *(v38 + 7);
    HIBYTE(__p[2]) = v24;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_33:
    if (__p != a2)
    {
      if (v5 < 0)
      {
        std::string::__assign_no_alias<true>(__p, v34, v7);
      }

      else
      {
        *__p = *a2;
        __p[2] = *(a2 + 16);
      }
    }
  }

  v25 = *(a2 + 23);
  if (v25 >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = *(a2 + 8);
  }

  v27 = v26 + 16;
  if (v26 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v27 < 0x17)
  {
    v30 = &v36.__r_.__value_.__s.__data_[16];
    v36.__r_.__value_.__r.__words[2] = 0;
    *(&v36.__r_.__value_.__s + 23) = v26 + 16;
    *&v36.__r_.__value_.__l.__data_ = *"Version String: ";
    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if ((v27 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v27 | 7) + 1;
    }

    v29 = operator new(v28);
    v36.__r_.__value_.__l.__size_ = v26 + 16;
    v36.__r_.__value_.__r.__words[2] = v28 | 0x8000000000000000;
    v36.__r_.__value_.__r.__words[0] = v29;
    *v29 = *"Version String: ";
    v30 = (v29 + 1);
  }

  if (v25 >= 0)
  {
    v31 = a2;
  }

  else
  {
    v31 = *a2;
  }

  memmove(v30, v31, v26);
LABEL_51:
  v30[v26] = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = v36;
  result = ETLFirmwareVersion::initCommon(a1, __p, 32);
  if (SHIBYTE(__p[2]) < 0)
  {
    v33 = result;
    operator delete(__p[0]);
    return v33;
  }

  return result;
}

void sub_297796180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

BOOL ETLFirmwareVersion::initWithFolderName(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = v3 + 8;
  if (v3 + 8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 < 0x17)
  {
    v8 = &v11 + 8;
    v12 = 0;
    HIBYTE(v12) = v3 + 8;
    v11 = 0x203A7265646C6F46uLL;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    *(&v11 + 1) = v3 + 8;
    v12 = v7 | 0x8000000000000000;
    *&v11 = operator new(v7);
    *v11 = 0x203A7265646C6F46;
    v8 = (v11 + 8);
  }

  if (v2 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  memmove(v8, v9, v3);
LABEL_15:
  v8[v3] = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = v11;
  *(a1 + 88) = v12;

  return ETLFirmwareVersion::initCommon(a1, a2, 45);
}

BOOL ETLFirmwareVersion::isNewerThan(ETLFirmwareVersion *this, const ETLFirmwareVersion *a2)
{
  v2 = *(this + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 0;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *(this + 9);
  v6 = *(a2 + 9);
  if (v5 < v6)
  {
    return 0;
  }

  if (v5 > v6)
  {
    return 1;
  }

  v7 = *(this + 10);
  v8 = *(a2 + 10);
  if (v7 < v8)
  {
    return 0;
  }

  if (v7 > v8)
  {
    return 1;
  }

  return *(this + 11) > *(a2 + 11);
}

uint64_t ETLFirmwareVersion::getAsString@<X0>(ETLFirmwareVersion *this@<X0>, std::string *a2@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v78 = 0xAAAAAAAAAAAAAAAALL;
  v74 = 0xAAAAAAAAAAAAAAAALL;
  v85 = v4;
  v84 = v4;
  v83 = v4;
  v82 = v4;
  v81 = v4;
  v80 = v4;
  v77 = v4;
  v76 = v4;
  v73 = v4;
  v71 = v4;
  *__p = v4;
  v69 = v4;
  v70 = v4;
  v68 = v4;
  v79 = 0;
  v5 = MEMORY[0x29EDC95A8] + 64;
  v75 = MEMORY[0x29EDC95A8] + 64;
  v6 = *(MEMORY[0x29EDC9538] + 16);
  v67 = *(MEMORY[0x29EDC9538] + 8);
  *(&v67 + *(v67 - 24)) = v6;
  v7 = (&v67 + *(v67 - 24));
  std::ios_base::init(v7, &v68);
  v8 = MEMORY[0x29EDC95A8] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v67 = v8;
  v75 = v5;
  v63 = MEMORY[0x29EDC9568] + 16;
  *&v68 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2752A0](&v68 + 8);
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v62 = MEMORY[0x29EDC9570] + 16;
  *&v68 = MEMORY[0x29EDC9570] + 16;
  __p[0] = 0;
  __p[1] = 0;
  *&v73 = 0;
  *(&v73 + 1) = __p;
  LODWORD(v74) = 16;
  std::string::append(__p, 0x16uLL, 0);
  v9 = BYTE7(v73);
  v10 = v67;
  if (SBYTE7(v73) < 0)
  {
    v9 = __p[1];
  }

  *(&v70 + 1) = __p;
  *&v71 = __p;
  *(&v71 + 1) = __p + v9;
  v11 = (&v67 + *(v67 - 24));
  if (v11[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v11);
    v12 = std::locale::use_facet(&v66, MEMORY[0x29EDC93D0]);
    (v12->__vftable[2].~facet_0)(v12, 32);
    std::locale::~locale(&v66);
    v10 = v67;
  }

  v13 = &v69;
  v11[1].__fmtflags_ = 48;
  *(&v69 + *(v10 - 24)) = 2;
  MEMORY[0x29C275260](&v67, *(this + 8));
  *(&v69 + *(v67 - 24)) = 1;
  v66.__r_.__value_.__s.__data_[0] = 46;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v67, &v66);
  *(&v69 + *(v67 - 24)) = 2;
  MEMORY[0x29C275260](&v67, *(this + 9));
  *(&v69 + *(v67 - 24)) = 1;
  v66.__r_.__value_.__s.__data_[0] = 46;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v67, &v66);
  *(&v69 + *(v67 - 24)) = 2;
  MEMORY[0x29C275260](&v67, *(this + 10));
  *(&v69 + *(v67 - 24)) = 1;
  if (*(this + 11) != -1)
  {
    v66.__r_.__value_.__s.__data_[0] = 45;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v67, &v66);
    MEMORY[0x29C275250](&v67, *(this + 11));
  }

  v14 = 0x7FFFFFFFFFFFFFF7;
  memset(a2, 170, sizeof(std::string));
  v15 = *(this + 31);
  if (v15 >= 0)
  {
    v16 = *(this + 31);
  }

  else
  {
    v16 = *(this + 2);
  }

  v17 = v16 + 1;
  if (v16 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v64 = a2;
  if (v17 < 0x17)
  {
    memset(&v66, 0, sizeof(v66));
    v19 = &v66;
    *(&v66.__r_.__value_.__s + 23) = v16 + 1;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v17 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v17 | 7) + 1;
    }

    v19 = operator new(v18);
    v66.__r_.__value_.__l.__size_ = v16 + 1;
    v66.__r_.__value_.__r.__words[2] = v18 | 0x8000000000000000;
    v66.__r_.__value_.__r.__words[0] = v19;
  }

  if (v15 >= 0)
  {
    v20 = this + 8;
  }

  else
  {
    v20 = *(this + 1);
  }

  memmove(v19, v20, v16);
LABEL_21:
  *(&v19->__r_.__value_.__l.__data_ + v16) = 32;
  if ((v74 & 0x10) != 0)
  {
    v13 = &v70 + 1;
    v23 = *(&v73 + 1);
    if (*(&v73 + 1) < v71)
    {
      *(&v73 + 1) = v71;
      v23 = v71;
    }
  }

  else
  {
    if ((v74 & 8) == 0)
    {
      v21 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      p_dst = &__dst;
      goto LABEL_36;
    }

    v23 = v70;
  }

  v24 = *v13;
  v21 = v23 - *v13;
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v21 | 7) + 1;
    }

    p_dst = operator new(v25);
    __dst.__r_.__value_.__l.__size_ = v21;
    __dst.__r_.__value_.__r.__words[2] = v25 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_35;
  }

  *(&__dst.__r_.__value_.__s + 23) = v23 - *v13;
  p_dst = &__dst;
  if (v21)
  {
LABEL_35:
    memmove(p_dst, v24, v21);
  }

LABEL_36:
  p_dst->__r_.__value_.__s.__data_[v21] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &__dst;
  }

  else
  {
    v26 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v28 = std::string::append(&v66, v26, size);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v30 = v64;
  v64->__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v64->__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_44:
      v31 = *(this + 71);
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_49:
      if (!*(this + 7))
      {
        goto LABEL_71;
      }

      goto LABEL_50;
    }
  }

  else if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(v66.__r_.__value_.__l.__data_);
  v31 = *(this + 71);
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

LABEL_45:
  if (!v31)
  {
    goto LABEL_71;
  }

LABEL_50:
  if ((v31 & 0x80000000) == 0)
  {
    v32 = v31;
  }

  else
  {
    v32 = *(this + 7);
  }

  v33 = v32 + 1;
  if (v32 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 < 0x17)
  {
    v66.__r_.__value_.__r.__words[2] = 0;
    *(&v66.__r_.__value_.__s + 23) = v32 + 1;
    v36 = &v66.__r_.__value_.__s.__data_[1];
    *&v66.__r_.__value_.__l.__data_ = 0x5FuLL;
    if (!v32)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((v33 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v33 | 7) + 1;
    }

    v35 = operator new(v34);
    v66.__r_.__value_.__l.__size_ = v32 + 1;
    v66.__r_.__value_.__r.__words[2] = v34 | 0x8000000000000000;
    v66.__r_.__value_.__r.__words[0] = v35;
    *v35 = 95;
    v36 = v35 + 1;
    v30 = v64;
  }

  if ((v31 & 0x80000000) == 0)
  {
    v37 = this + 48;
  }

  else
  {
    v37 = *(this + 6);
  }

  memmove(v36, v37, v32);
LABEL_64:
  v36[v32] = 0;
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v66;
  }

  else
  {
    v38 = v66.__r_.__value_.__r.__words[0];
  }

  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v66.__r_.__value_.__l.__size_;
  }

  std::string::append(v30, v38, v39);
  if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_71:
    v40 = *(this + 95);
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_75:
    if (!*(this + 10))
    {
      goto LABEL_123;
    }

    goto LABEL_76;
  }

  operator delete(v66.__r_.__value_.__l.__data_);
  v40 = *(this + 95);
  if ((v40 & 0x8000000000000000) != 0)
  {
    goto LABEL_75;
  }

LABEL_72:
  if (!v40)
  {
    goto LABEL_123;
  }

LABEL_76:
  if ((v40 & 0x80000000) == 0)
  {
    v41 = v40;
  }

  else
  {
    v41 = *(this + 10);
  }

  v42 = v41 + 7;
  if (v41 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v42 < 0x17)
  {
    *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
    *(&__dst.__r_.__value_.__s + 23) = v41 + 7;
    v45 = &__dst.__r_.__value_.__s.__data_[7];
    strcpy(&__dst, "( from ");
    if (!v41)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if ((v42 | 7) == 0x17)
    {
      v43 = 25;
    }

    else
    {
      v43 = (v42 | 7) + 1;
    }

    v44 = operator new(v43);
    __dst.__r_.__value_.__l.__size_ = v41 + 7;
    __dst.__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v44;
    *v44 = 1919295528;
    v45 = v44 + 7;
    *(v44 + 3) = 544042866;
  }

  if ((v40 & 0x80000000) == 0)
  {
    v46 = this + 72;
  }

  else
  {
    v46 = *(this + 9);
  }

  memmove(v45, v46, v41);
LABEL_90:
  v45[v41] = 0;
  v47 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v47 = __dst.__r_.__value_.__l.__size_;
    v50 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v50 - __dst.__r_.__value_.__l.__size_ < 2)
    {
      v48 = __dst.__r_.__value_.__l.__size_ + 2;
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 2 - v50)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v49 = __dst.__r_.__value_.__r.__words[0];
      if (v50 > 0x3FFFFFFFFFFFFFF2)
      {
        v53 = 0;
LABEL_105:
        v54 = operator new(v14);
        v55 = v54;
        if (v47)
        {
          memmove(v54, v49, v47);
        }

        *(v55 + v47) = 10528;
        if (!v53)
        {
          operator delete(v49);
        }

        __dst.__r_.__value_.__l.__size_ = v48;
        __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = v55;
        v56 = (v55 + v48);
        goto LABEL_115;
      }

LABEL_96:
      v51 = 2 * v50;
      if (v48 > 2 * v50)
      {
        v51 = v48;
      }

      if ((v51 | 7) == 0x17)
      {
        v52 = 25;
      }

      else
      {
        v52 = (v51 | 7) + 1;
      }

      if (v51 >= 0x17)
      {
        v14 = v52;
      }

      else
      {
        v14 = 23;
      }

      v53 = v50 == 22;
      goto LABEL_105;
    }

    v57 = __dst.__r_.__value_.__r.__words[0];
    *(__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_) = 10528;
    v58 = v47 + 2;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

LABEL_113:
    __dst.__r_.__value_.__l.__size_ = v58;
    goto LABEL_114;
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 21) < 2)
  {
    v48 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) + 2;
    v49 = &__dst;
    v50 = 22;
    goto LABEL_96;
  }

  v57 = &__dst;
  *(&__dst.__r_.__value_.__l.__data_ + SHIBYTE(__dst.__r_.__value_.__r.__words[2])) = 10528;
  v58 = v47 + 2;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_113;
  }

LABEL_111:
  *(&__dst.__r_.__value_.__s + 23) = v58 & 0x7F;
LABEL_114:
  v56 = v57 + v58;
LABEL_115:
  *v56 = 0;
  v66 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v66;
  }

  else
  {
    v59 = v66.__r_.__value_.__r.__words[0];
  }

  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v60 = v66.__r_.__value_.__l.__size_;
  }

  std::string::append(v30, v59, v60);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_123;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_123:
  v67 = *MEMORY[0x29EDC9538];
  *(&v67 + *(v67 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *&v68 = v62;
  if (SBYTE7(v73) < 0)
  {
    operator delete(__p[0]);
  }

  *&v68 = v63;
  std::locale::~locale(&v68 + 1);
  std::ostream::~ostream();
  return MEMORY[0x29C2752F0](&v75);
}

void sub_297796D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, std::locale a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(a13 + 23) < 0)
  {
    operator delete(*a13);
    std::ostringstream::~ostringstream(&a26);
    MEMORY[0x29C2752F0](a12);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a26);
  MEMORY[0x29C2752F0](a12);
  _Unwind_Resume(a1);
}

_BYTE *ETLFirmwareVersion::createWithVersionString(uint64_t a1)
{
  v2 = operator new(0x60uLL);
  *v2 = &unk_2A1E537A8;
  v2[31] = 7;
  strcpy(v2 + 8, "Phoenix");
  *(v2 + 4) = 0;
  *(v2 + 5) = 0xFFFFFFFF00000000;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  if (!ETLFirmwareVersion::initWithVersionString(v2, a1))
  {
    (*(*v2 + 8))(v2);
    return 0;
  }

  return v2;
}

_BYTE *ETLFirmwareVersion::createWithFolderName(const void **a1)
{
  v2 = operator new(0x60uLL);
  *v2 = &unk_2A1E537A8;
  v2[31] = 7;
  strcpy(v2 + 8, "Phoenix");
  *(v2 + 4) = 0;
  *(v2 + 5) = 0xFFFFFFFF00000000;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  if (!ETLFirmwareVersion::initWithFolderName(v2, a1))
  {
    (*(*v2 + 8))(v2);
    return 0;
  }

  return v2;
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_29EE6DEE8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void ***std::string::__assign_no_alias<false>(void ***a1, const void *a2, void **__len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(__len + v7) = 0;
  return a1;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2)
{
  v21[0] = 0xAAAAAAAAAAAAAAAALL;
  v21[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C275220](v21, a1);
  if (LOBYTE(v21[0]) == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 5);
    v6 = *(v4 + 2);
    v7 = *(v4 + 36);
    if (v7 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v9 = std::locale::use_facet(__b, MEMORY[0x29EDC93D0]);
      v7 = (v9->__vftable[2].~facet_0)(v9, 32);
      std::locale::~locale(__b);
      *(v4 + 36) = v7;
      if ((v6 & 0xB0) == 0x20)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2;
      }

      if (!v5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if ((*(v4 + 2) & 0xB0) == 0x20)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2;
      }

      if (!v5)
      {
        goto LABEL_35;
      }
    }

    v10 = *(v4 + 3);
    v11 = v10 <= 1;
    v12 = v10 - 1;
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    if (v8 - a2 < 1 || (*(*v5 + 96))(v5, a2, v8 - a2) == v8 - a2)
    {
      if (v13 >= 1)
      {
        memset(__b, 170, sizeof(__b));
        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v13 >= 0x17)
        {
          if ((v13 | 7) == 0x17)
          {
            v15 = 25;
          }

          else
          {
            v15 = (v13 | 7) + 1;
          }

          v14 = operator new(v15);
          __b[1].__locale_ = v13;
          __b[2].__locale_ = (v15 | 0x8000000000000000);
          __b[0].__locale_ = v14;
        }

        else
        {
          HIBYTE(__b[2].__locale_) = v13;
          v14 = __b;
        }

        memset(v14, v7, v13);
        *(v14 + v13) = 0;
        if (SHIBYTE(__b[2].__locale_) >= 0)
        {
          locale = __b;
        }

        else
        {
          locale = __b[0].__locale_;
        }

        v17 = (*(*v5 + 96))(v5, locale, v13);
        if (SHIBYTE(__b[2].__locale_) < 0)
        {
          v18 = v17;
          operator delete(__b[0].__locale_);
          if (v18 != v13)
          {
            goto LABEL_35;
          }
        }

        else if (v17 != v13)
        {
          goto LABEL_35;
        }
      }

      v19 = a2 + 1 - v8;
      if (v19 < 1 || (*(*v5 + 96))(v5, v8, v19) == v19)
      {
        *(v4 + 3) = 0;
        goto LABEL_36;
      }
    }

LABEL_35:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
  }

LABEL_36:
  MEMORY[0x29C275230](v21);
  return a1;
}

void sub_2977976E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C275230](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2977976BCLL);
}

uint64_t ETLRouterSequenceGetLast(uint64_t a1)
{
  do
  {
    v1 = a1;
    a1 = *(a1 + 8);
  }

  while (a1);
  return v1;
}

uint64_t ETLRouterCreateRouterSequenceCommand(uint64_t a1, uint64_t a2)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (*a2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    return 1;
  }

  while (1)
  {
    FreeSpace = HDLCFrameGetFreeSpace();
    if (FreeSpace <= 2)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 3, FreeSpace);
      v6 = 0;
      result = 0;
      v7 = *v4;
      if (*v4 <= 3)
      {
LABEL_25:
        if (v7 != 2)
        {
          if (v7 != 3)
          {
            return result;
          }

          if (!v6)
          {
            return 0;
          }

          result = HDLCFrameInjectUnsignedShort();
          if (!result)
          {
            return result;
          }

          if (HDLCFrameGetFreeSpace() <= 1)
          {
            goto LABEL_50;
          }

          result = HDLCFrameInjectUnsignedShort();
          v4 = *(v4 + 8);
          if (!v4)
          {
            return result;
          }

          goto LABEL_11;
        }

LABEL_32:
        if (!v6)
        {
          return 0;
        }

        result = HDLCFrameInjectUnsignedShort();
        if (!result)
        {
          return result;
        }

        if (HDLCFrameGetFreeSpace() <= 3)
        {
          goto LABEL_50;
        }

        result = HDLCFrameInjectUnsignedShort();
        if (!result)
        {
          return result;
        }

        result = HDLCFrameInjectUnsignedShort();
        v4 = *(v4 + 8);
        if (!v4)
        {
          return result;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v6 = HDLCFrameInjectUnsignedChar();
      result = 0;
      v7 = *v4;
      if (*v4 <= 3)
      {
        goto LABEL_25;
      }
    }

    if (v7 == 4)
    {
      goto LABEL_32;
    }

    if (v7 != 5)
    {
      if (v7 != 255)
      {
        return result;
      }

      if (!v6)
      {
        return 0;
      }

      result = HDLCFrameInjectUnsignedShort();
      if (!result)
      {
        return result;
      }

      if (HDLCFrameGetFreeSpace() <= 3)
      {
        goto LABEL_50;
      }

      result = HDLCFrameInjectUnsignedChar();
      if (!result)
      {
        return result;
      }

      result = HDLCFrameInjectUnsignedChar();
      if (!result)
      {
        return result;
      }

      result = HDLCFrameInjectUnsignedShort();
      v4 = *(v4 + 8);
      if (!v4)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (!*(v4 + 16))
    {
      break;
    }

    if (!v6)
    {
      return 0;
    }

    result = HDLCFrameInjectUnsignedShort();
    if (!result)
    {
      return result;
    }

    if (HDLCFrameGetFreeSpace() <= 3)
    {
      goto LABEL_50;
    }

    result = HDLCFrameInjectUnsignedInt();
    v4 = *(v4 + 8);
    if (!v4)
    {
      return result;
    }

LABEL_11:
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  if (!v6)
  {
    return 0;
  }

  result = HDLCFrameInjectUnsignedShort();
  if (!result)
  {
    return result;
  }

  if (HDLCFrameGetFreeSpace())
  {
    result = HDLCFrameInjectUnsignedChar();
    v4 = *(v4 + 8);
    if (!v4)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_50:
  _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
  return 0;
}

BOOL ETLRouterParseRouterSequenceResponse(int **a1, _DWORD *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 2);
  if (v3 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_11:
    result = 0;
    *a2 = 1;
    return result;
  }

  v4 = *a1;
  v5 = **a1;
  if (v5 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_11;
  }

  if (BYTE1(v5) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_11;
  }

  if (HIWORD(v5) != 49)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    return 1;
  }

  if (*(v4 + 4) == 255)
  {
    v7 = v3 - 11 < 0xFFFFFFFC;
    memset(v11, 0, sizeof(v11));
    v8 = *(v4 + 7);
    v9 = *(v4 + 8);
    v10 = *(v4 + 9);
    __memcpy_chk();
    *a2 = 0;
    _ETLDebugPrint("ETLRouterParseVersionPayload", "Got version %u.%u.%u, notes '%s'\n", v8, v9, v10, v11);
    return v7;
  }

  else
  {
    *a2 = 0;
    return 1;
  }
}

uint64_t ETLRouterSendRouterSequence(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, int a3, _DWORD *a4, uint64_t a5)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  *a4 = 1;
  if (HDLCFrameCreateUplink() && ETLRouterCreateRouterSequenceCommand(v18, a2) && (v10 = malloc((2 * DWORD2(v18[0]) + 32))) != 0)
  {
    v11 = v10;
    v12 = HDLCFrameEncode();
    if (v12)
    {
      v13 = -1431655766;
      v20 = -1431655766;
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 0, v11, v12);
      }

      if (*a1)
      {
        v14 = (*a1)(a1, v11, v12, &v20, 1, a5, 0);
        v13 = v20;
      }

      else
      {
        v14 = 0;
      }

      if (v13 == v12)
      {
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }
    }

    free(v11);
    if (!a3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    if (!a3)
    {
LABEL_21:
      *a4 = 0;
      goto LABEL_22;
    }
  }

  if (v12)
  {
    LOBYTE(v20) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v12 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v16, &_ETLResponseRingBuffer, &v20, a5) && v20 == 75)
    {
      v12 = ETLRouterParseRouterSequenceResponse(v16, a4);
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return v12;
}

BOOL ETLRouterGetVersion(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), unsigned int *a2, _DWORD *a3, uint64_t a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v29[0] = 0;
  v29[1] = 0;
  v8 = *a2;
  v28[1] = 0;
  v28[0] = 255;
  v28[2] = v8;
  v9 = v29;
  do
  {
    v10 = v9;
    v9 = v9[1];
  }

  while (v9);
  v10[1] = v28;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  *a3 = 1;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_12;
  }

  if (!ETLRouterCreateRouterSequenceCommand(&v30, v29))
  {
    goto LABEL_12;
  }

  v11 = malloc((2 * DWORD2(v30) + 32));
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v13 = HDLCFrameEncode();
  if (!v13)
  {
    free(v12);
LABEL_12:
    *a3 = 0;
    HDLCFrameFree();
    HDLCFrameFree();
    return 0;
  }

  v14 = v13;
  v15 = -1431655766;
  v33 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v12, v13);
  }

  if (*a1)
  {
    v16 = (*a1)(a1, v12, v14, &v33, 1, a4, 0);
    v15 = v33;
  }

  else
  {
    v16 = 0;
  }

  free(v12);
  *a3 = 0;
  HDLCFrameFree();
  HDLCFrameFree();
  result = 0;
  if (v16 && v15 == v14)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    LOBYTE(v34) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v18 = ETLFindMatchingResponseUsingBuffer(a1, &v30, &_ETLResponseRingBuffer, &v34, a4);
    v19 = 0;
    if (!v18 || v34 != 75)
    {
      goto LABEL_33;
    }

    v20 = DWORD2(v30);
    if (DWORD2(v30) < 4)
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
    }

    else
    {
      v21 = v30;
      v22 = *v30;
      if (*v30 == 75)
      {
        if (BYTE1(v22) == 253)
        {
          if (HIWORD(v22) == 49)
          {
            *a3 = 1;
            if (v20 != 4 && *(v21 + 4) == 255)
            {
              v24 = (v20 - 11) < 0xFFFFFFFC;
              v34 = 0u;
              v35 = 0u;
              v25 = *(v21 + 7);
              *a2 = v25;
              v26 = *(v21 + 8);
              *(a2 + 1) = v26;
              v27 = *(v21 + 9);
              *(a2 + 1) = v27;
              __memcpy_chk();
              *a3 = 0;
              _ETLDebugPrint("ETLRouterParseVersionPayload", "Got version %u.%u.%u, notes '%s'\n", v25, v26, v27, &v34);
              v19 = v24;
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_33;
          }

          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
        }
      }

      else
      {
        _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
      }
    }

    v19 = 0;
    *a3 = 1;
LABEL_33:
    v23 = v19;
    HDLCFrameFree();
    return v23;
  }

  return result;
}

__n128 ETLDebugRegisterDelegate(__n128 *a1)
{
  result = *a1;
  *&gDelegate = *a1;
  return result;
}

double ETLDebugSetDefaults()
{
  result = *&gDelegateDefault;
  *&gDelegate = gDelegateDefault;
  _ETLDebugFlags = 3;
  return result;
}

uint64_t ETLDebugRemoveFlags(unsigned int a1)
{
  v1 = _ETLDebugFlags;
  _ETLDebugFlags &= ~a1;
  return v1 & a1;
}

uint64_t _ETLDebugPrint(uint64_t result, const char *a2, ...)
{
  va_start(va, a2);
  if (_ETLDebugFlags)
  {
    return gDelegate(result, a2, va);
  }

  return result;
}

uint64_t _ETLDebugPrintBinary(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 3 || (_ETLDebugFlags & 2) != 0)
  {
    return off_2A18A5818(result, a2, a3, a4);
  }

  return result;
}

uint64_t _ETLDebugPrintBinaryVerbose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 3 || (_ETLDebugFlags & 4) != 0)
  {
    return off_2A18A5818(result, a2, a3, a4);
  }

  return result;
}

uint64_t APPLIB_DIAG_SEND_SMS(_OWORD *a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v37 = *MEMORY[0x29EDCA608];
  *(a1 + 204) = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *a1 = 130123;
  *(a1 + 4) = a2;
  if (a2 >= 1)
  {
    v7 = a2 + 1;
    v8 = a1 + a2 + 4;
    do
    {
      *v8-- = a3 % 0xA;
      --v7;
      a3 /= 0xAu;
    }

    while (v7 > 1);
  }

  *(a1 + 20) = a4;
  if (a4 >= 1)
  {
    if (a4 < 8 || a1 - a5 + 21 < 0x20)
    {
      v9 = 0;
      goto LABEL_8;
    }

    if (a4 >= 0x20)
    {
      v9 = a4 & 0x7FFFFFE0;
      v27 = (a5 + 16);
      v28 = (a1 + 37);
      v29 = v9;
      do
      {
        v30 = *v27;
        *(v28 - 1) = *(v27 - 1);
        *v28 = v30;
        v27 += 2;
        v28 += 2;
        v29 -= 32;
      }

      while (v29);
      if (v9 == a4)
      {
        goto LABEL_10;
      }

      if ((a4 & 0x18) == 0)
      {
LABEL_8:
        v10 = a4 - v9;
        v11 = a1 + v9 + 21;
        v12 = (a5 + v9);
        do
        {
          v13 = *v12++;
          *v11++ = v13;
          --v10;
        }

        while (v10);
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
    }

    v31 = v9;
    v9 = a4 & 0x7FFFFFF8;
    v32 = (a5 + v31);
    v33 = (a1 + v31 + 21);
    v34 = v31 - v9;
    do
    {
      v35 = *v32++;
      *v33++ = v35;
      v34 += 8;
    }

    while (v34);
    if (v9 != a4)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v14 = a4 + 21;
  v15 = 8 * v14;
  if (((8 * v14) & 0xFFF8) != 0)
  {
    LOWORD(v16) = -1;
    v17 = a1;
    do
    {
      v18 = *v17++;
      v16 = crc_16_l_table[(v18 ^ v16)] ^ ((v16 & 0xFF00) >> 8);
      v15 -= 8;
    }

    while (v15);
    *(a1 + v14) = ~v16;
    *(a1 + a4 + 22) = ~v16 >> 8;
    if (a4 > 233)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + v14) = 0;
    *(a1 + a4 + 22) = 0;
    if (a4 > 233)
    {
      return 0xFFFFFFFFLL;
    }
  }

  bzero(__src, 0x800uLL);
  if (a4 < -22)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v21 = a4 + 23;
    v22 = a1;
    do
    {
      while (1)
      {
        v24 = *v22++;
        v23 = v24;
        v25 = v20;
        v26 = v20 + 1;
        if ((v24 - 125) > 1)
        {
          break;
        }

        v20 += 2;
        __src[v26] = v23 & 0x5F;
        __src[v25] = 125;
        if (!--v21)
        {
          goto LABEL_23;
        }
      }

      ++v20;
      __src[v25] = v23;
      --v21;
    }

    while (v21);
  }

LABEL_23:
  memcpy(a1, __src, v20);
  result = (v20 + 1);
  *(a1 + v20) = 126;
  return result;
}

uint64_t APPLIB_DIAG_ENABLE_MT_SMS_STORE(char *a1, char a2)
{
  v14 = *MEMORY[0x29EDCA608];
  *a1 = 195659;
  v3 = a2;
  a1[4] = a2;
  v4 = crc_16_l_table[a2 ^ 0xA4] ^ 0xFF30;
  v5 = crc_16_l_table[a2 ^ 0xA4] ^ 0x30;
  *(a1 + 5) = v4;
  v6 = HIBYTE(v4);
  bzero(v13, 0x7FBuLL);
  __src = 195659;
  if ((v3 - 125) > 1)
  {
    v12 = v3;
    v7 = 5;
    v8 = 6;
    if ((v5 - 125) > 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13[0] = v3 & 0x5F;
  v12 = 125;
  v7 = 6;
  v8 = 7;
  if ((v5 - 125) <= 1)
  {
LABEL_5:
    *(&__src + v8) = v5 & 0x5F;
    LODWORD(v8) = v7 + 2;
    LOBYTE(v5) = 125;
  }

LABEL_6:
  *(&__src + v7) = v5;
  v9 = v8 + 1;
  if ((v6 - 125) <= 1)
  {
    *(&__src + v9) = v6 & 0x5F;
    LOBYTE(v6) = 125;
    LODWORD(v9) = v8 + 2;
  }

  *(&__src + v8) = v6;
  memcpy(a1, &__src, v9);
  a1[v9] = 126;
  return (v9 + 1);
}

uint64_t APPLIB_DIAG_RECV_MT_SMS(uint64_t a1)
{
  *a1 = 261195;
  *(a1 + 4) = 10627;
  *(a1 + 6) = 126;
  return 7;
}

uint64_t ETLMaverickAddDataCommandHeader(uint64_t a1, __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v4 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v4;
    }
  }

  return result;
}

uint64_t ETLMaverickParseDataResponseHeader(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = *a2;
  v4 = *(a1 + 8) - v3;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v4, 4uLL);
    return 0;
  }

  else
  {
    v5 = *(*a1 + v3);
    if (v5 == 75)
    {
      *a2 = v3 + 4;
      if (BYTE1(v5) == 100)
      {
        if (HIWORD(v5) == a3)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", HIWORD(v5), a3);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v5), 100);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v5, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickAddBSPCommandHeader(uint64_t a1, __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v4 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v4;
    }
  }

  return result;
}

uint64_t ETLMaverickParseBSPResponseHeader(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = *a2;
  v4 = *(a1 + 8) - v3;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v4, 4uLL);
    return 0;
  }

  else
  {
    v5 = *(*a1 + v3);
    if (v5 == 75)
    {
      *a2 = v3 + 4;
      if (BYTE1(v5) == 253)
      {
        if (HIWORD(v5) == a3)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", HIWORD(v5), a3);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v5), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v5, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickAddBSPExtCommandGetHeader(uint64_t a1, uint64_t a2)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_7:
    _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Failed on creating BSP Command Heder\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_7;
  }

  if (HDLCFrameGetFreeSpace())
  {
    HDLCFrameInjectUnsignedChar();
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n", 2uLL, 0);
    return 0;
  }
}

uint64_t ETLMaverickAddBSPExtCommandSetHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
LABEL_7:
    _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Failed on creating BSP Command Heder\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_7;
  }

  if (HDLCFrameGetFreeSpace() > 1)
  {
    HDLCFrameInjectUnsignedChar();
    HDLCFrameInjectUnsignedChar();
    return 1;
  }

  _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Not enough room, need %zu, have %u\n");
  return 0;
}

uint64_t ETLMaverickAddRFCommandHeader(uint64_t a1, __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v4 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v4;
    }
  }

  return result;
}

uint64_t ETLMaverickParseRFResponseHeader(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = *a2;
  v4 = *(a1 + 8) - v3;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v4, 4uLL);
    return 0;
  }

  else
  {
    v5 = *(*a1 + v3);
    if (v5 == 75)
    {
      *a2 = v3 + 4;
      if (BYTE1(v5) == 251)
      {
        if (HIWORD(v5) == a3)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", HIWORD(v5), a3);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v5), 251);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v5, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickAddFACTORYCommandHeader(uint64_t a1, __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v4 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v4;
    }
  }

  return result;
}

uint64_t ETLMaverickParseFACTORYResponseHeader(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = *a2;
  v4 = *(a1 + 8) - v3;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v4, 4uLL);
    return 0;
  }

  else
  {
    v5 = *(*a1 + v3);
    if (v5 == 75)
    {
      *a2 = v3 + 4;
      if (BYTE1(v5) == 254)
      {
        if (HIWORD(v5) == a3)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", HIWORD(v5), a3);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v5), 254);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v5, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickAddCDMACommandHeader(uint64_t a1, __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v4 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v4;
    }
  }

  return result;
}

uint64_t ETLMaverickParseCDMAResponseHeader(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = *a2;
  v4 = *(a1 + 8) - v3;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v4, 4uLL);
    return 0;
  }

  else
  {
    v5 = *(*a1 + v3);
    if (v5 == 75)
    {
      *a2 = v3 + 4;
      if (BYTE1(v5) == 252)
      {
        if (HIWORD(v5) == a3)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", HIWORD(v5), a3);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v5), 252);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v5, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateAPWakeCommand(uint64_t a1, unsigned __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v3 = HDLCFrameGetFreeSpace();
    if (v3 <= 1)
    {
      _ETLDebugPrint("ETLMaverickCreateAPWakeCommand", "Not enough room, need %zu, have %u\n", 2uLL, v3);
      return 0;
    }

    else
    {
      HDLCFrameInjectUnsignedShort();
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

uint64_t ETLMaverickParseAPWakeResponse(unsigned int *a1)
{
  v1 = a1[2];
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a1[2], 4uLL);
    return 0;
  }

  else
  {
    v3 = **a1;
    if (v3 == 75)
    {
      if (BYTE1(v3) == 253)
      {
        v4 = HIWORD(v3);
        if (v4 == 13)
        {
          if (v2 <= 1)
          {
            _ETLDebugPrint("ETLMaverickParseAPWakeResponse", "response requires %u bytes, got %u\n", 2, v2);
            return 0;
          }

          else if (*(*a1 + 4))
          {
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseAPWakeResponse", "Status was %u\n", 0);
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v4, 13);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v3), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateTxModeSwitchCommand(uint64_t a1, unsigned __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v3 = HDLCFrameGetFreeSpace();
    if (v3 <= 1)
    {
      _ETLDebugPrint("ETLMaverickCreateTxModeSwitchCommand", "Not enough room, need %zu, have %u\n", 2uLL, v3);
      return 0;
    }

    else
    {
      HDLCFrameInjectUnsignedShort();
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

uint64_t ETLMaverickParseTxModeSwitchResponse(int **a1, int a2)
{
  v2 = *(a1 + 2);
  v3 = v2 - 4;
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_15:
    _ETLDebugPrint("ETLMaverickParseTxModeSwitchResponse", "Failed to parse BSP header from response\n");
    return 0;
  }

  v4 = *a1;
  v5 = **a1;
  if (v5 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_15;
  }

  if (BYTE1(v5) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_15;
  }

  if (HIWORD(v5) != 6)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_15;
  }

  if (v3 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseTxModeSwitchResponse", "response requires %u bytes, got %u\n", 4, v3);
    return 0;
  }

  else if (*(v4 + 2) == 1)
  {
    v6 = *(v4 + 3);
    v7 = a2 - 3;
    if (a2 <= 2)
    {
      v7 = a2;
    }

    if (v6 == v7)
    {
      return 1;
    }

    else
    {
      _ETLDebugPrint("ETLMaverickParseTxModeSwitchResponse", "Mode doesn't match %u, expected %u\n", v6, v7);
      return 0;
    }
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseTxModeSwitchResponse", "Status was %u\n", *(v4 + 2));
    return 0;
  }
}

uint64_t ETLMaverickAddRSSICommandHeader(uint64_t a1, unsigned __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v3 = HDLCFrameGetFreeSpace();
    if (v3 <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, v3);
      return 0;
    }

    else
    {
      HDLCFrameInjectUnsignedShort();
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

uint64_t ETLMaverickCreateStartRSSICommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1 || (HDLCFrameInjectUnsignedShort(), HDLCFrameGetFreeSpace() <= 5))
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    return 0;
  }

  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLMaverickCreateStopRSSICommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  v2 = HDLCFrameGetFreeSpace();
  if (v2 <= 1)
  {
    v4 = 2;
LABEL_12:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v4, v2);
    return 0;
  }

  HDLCFrameInjectUnsignedShort();
  v2 = HDLCFrameGetFreeSpace();
  if (v2 <= 5)
  {
    v4 = 6;
    goto LABEL_12;
  }

  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLMaverickCreateReportRSSICommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  v2 = HDLCFrameGetFreeSpace();
  if (v2 <= 1)
  {
    v4 = 2;
LABEL_12:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v4, v2);
    return 0;
  }

  HDLCFrameInjectUnsignedShort();
  v2 = HDLCFrameGetFreeSpace();
  if (v2 <= 5)
  {
    v4 = 6;
    goto LABEL_12;
  }

  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLMaverickParseRSSICommandResponse(uint64_t a1, unsigned int *a2, int a3)
{
  v3 = *a2;
  v4 = *(a1 + 8) - v3;
  if (v4 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v4, 4uLL);
    return 0;
  }

  else
  {
    v5 = *(*a1 + v3);
    if (v5 == 75)
    {
      v6 = v3 + 4;
      *a2 = v6;
      if (BYTE1(v5) == 253)
      {
        v7 = HIWORD(v5);
        if (v7 == 15)
        {
          v8 = *(a1 + 8) - v6;
          if (v8 <= 1)
          {
            _ETLDebugPrint("ETLMaverickParseRSSICommandResponse", "Only have %u bytes, need %u\n", v8, 2);
            return 0;
          }

          else
          {
            v9 = *(*a1 + v6);
            if (v9 == a3)
            {
              return 1;
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseRSSICommandResponse", "Returned subcommand 0x%x mismatches expected 0x%x\n", v9, a3);
              return 0;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v7, 15);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v5), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v5, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateGetTxPowerExtCommand(uint64_t a1, unsigned int a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v4 = HDLCFrameGetFreeSpace();
    if (v4 <= 1)
    {
      _ETLDebugPrint("ETLMaverickCreateGetTxPowerExtCommand", "Not enough room, need %zu, have %u\n", 2uLL, v4);
    }

    else if (a2 <= 7)
    {
      HDLCFrameInjectUnsignedShort();
      return 1;
    }

    return 0;
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

uint64_t ETLMaverickParseGetTxPowerExtResponse(int **a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  v3 = *(a1 + 2);
  v4 = v3 - 4;
  if (v3 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v5 = *a1;
    v6 = **a1;
    if (v6 == 75)
    {
      if (BYTE1(v6) == 251)
      {
        v7 = HIWORD(v6);
        if (v7 == 16)
        {
          if (v4 <= 9)
          {
            _ETLDebugPrint("ETLMaverickParseGetTxPowerExtResponse", "response requires %u bytes, got %u\n", 10, v4);
            return 0;
          }

          else if (v5[2])
          {
            *a3 = v5[3];
            *(a3 + 2) = v5[4];
            *(a3 + 4) = v5[5];
            *(a3 + 6) = v5[6];
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseGetTxPowerExtResponse", "Status was %u\n", 0);
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v7, 16);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v6), 251);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateGetTxPowerCapCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v2 = HDLCFrameGetFreeSpace();
    if (v2 <= 1)
    {
      _ETLDebugPrint("ETLMaverickCreateGetTxPowerCapCommand", "Not enough room, need %zu, have %u\n", 2uLL, v2);
      return 0;
    }

    else
    {
      HDLCFrameInjectUnsignedShort();
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

uint64_t ETLMaverickParseGetTxPowerCapResponse(int **a1, uint64_t a2)
{
  *(a2 + 4) = 0;
  *a2 = 0;
  v2 = *(a1 + 2);
  v3 = v2 - 4;
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v4 = *a1;
    v5 = **a1;
    if (v5 == 75)
    {
      if (BYTE1(v5) == 253)
      {
        v6 = HIWORD(v5);
        if (v6 == 23)
        {
          if (v3 <= 7)
          {
            _ETLDebugPrint("ETLMaverickParseGetTxPowerCapResponse", "response requires %u bytes, got %u\n", 8, v3);
            return 0;
          }

          else if (v4[2])
          {
            *a2 = v4[3];
            *(a2 + 2) = v4[4];
            *(a2 + 4) = v4[5];
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseGetTxPowerCapResponse", "Status was %u\n", 0);
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v6, 23);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v5), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateGetMaxTxPowerCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v3 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v3;
    }
  }

  return result;
}

uint64_t ETLMaverickParseGetMaxTxPowerResponse(int **a1, _WORD *a2, _WORD *a3)
{
  v3 = *(a1 + 2);
  v4 = v3 - 4;
  if (v3 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3);
    return 0;
  }

  v5 = *a1;
  v6 = **a1;
  if (v6 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3);
    return 0;
  }

  if (BYTE1(v6) != 251)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3);
    return 0;
  }

  if (HIWORD(v6) != 20)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3);
    return 0;
  }

  if (v4 <= 5)
  {
    _ETLDebugPrint("ETLMaverickParseGetMaxTxPowerResponse", "response requires %u bytes, got %u\n", a3);
    return 0;
  }

  if (!v5[2])
  {
    _ETLDebugPrint("ETLMaverickParseGetMaxTxPowerResponse", "Status was %u\n", a3);
    return 0;
  }

  result = 0;
  if (a2)
  {
    if (a3)
    {
      *a3 = v5[3];
      *a2 = v5[4];
      return 1;
    }
  }

  return result;
}

uint64_t ETLMaverickCreateSetAutoAnswerCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() > 1)
    {
      HDLCFrameInjectUnsignedChar();
      HDLCFrameInjectUnsignedChar();
      return 1;
    }

    _ETLDebugPrint("ETLMaverickCreateSetAutoAnswerCommand", "Not enough room, need %zu, have %u\n");
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
  }

  return 0;
}

BOOL ETLMaverickParseSetAutoAnswerResponse(unsigned int *a1)
{
  v1 = a1[2];
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a1[2], 4uLL);
    return 0;
  }

  else
  {
    v3 = **a1;
    if (v3 == 75)
    {
      if (BYTE1(v3) == 253)
      {
        v4 = HIWORD(v3);
        if (v4 == 40)
        {
          if (v2 <= 1)
          {
            _ETLDebugPrint("ETLMaverickParseSetAutoAnswerResponse", "Received response has only %u bytes, need %u\n", v2, 2);
            return 0;
          }

          else
          {
            return *(*a1 + 4) != 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v4, 40);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v3), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateWriteDefaultNVsCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v3 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v3;
    }
  }

  return result;
}

uint64_t ETLMaverickParseWriteDefaultNVsResponse(int **a1)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v1 = **a1;
    if (v1 == 75)
    {
      if (BYTE1(v1) == 253)
      {
        v2 = HIWORD(v1);
        if (v2 == 25)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v2, 25);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v1), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateWriteFactoryDefaultNVsCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v3 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v3;
    }
  }

  return result;
}

uint64_t ETLMaverickParseWriteFactoryDefaultNVsResponse(int **a1)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v1 = **a1;
    if (v1 == 75)
    {
      if (BYTE1(v1) == 254)
      {
        v2 = HIWORD(v1);
        if (v2 == 27)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v2, 27);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v1), 254);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateWriteFactoryFATPDefaultNVsCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v3 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v3;
    }
  }

  return result;
}

uint64_t ETLMaverickParseWriteFactoryFATPDefaultNVsResponse(int **a1)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v1 = **a1;
    if (v1 == 75)
    {
      if (BYTE1(v1) == 254)
      {
        v2 = HIWORD(v1);
        if (v2 == 39)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v2, 39);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v1), 254);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateIsSimPresentCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v3 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v3;
    }
  }

  return result;
}

uint64_t ETLMaverickParseIsSimPresentResponse(int **a1, BOOL *a2, BOOL *a3)
{
  v3 = *(a1 + 2);
  v4 = v3 - 4;
  if (v3 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3);
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseIsSimPresentResponse", "failed parsing factory response from frame\n");
    return 0;
  }

  v5 = *a1;
  v6 = **a1;
  if (v6 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_12;
  }

  if (BYTE1(v6) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_12;
  }

  if (HIWORD(v6) != 1)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_12;
  }

  if (v4 <= 5)
  {
    _ETLDebugPrint("ETLMaverickParseIsSimPresentResponse", "Need %u bytes, but only have %u\n", 6, v4);
    return 0;
  }

  else if (v5[2])
  {
    *a3 = v5[3] != 0;
    *a2 = v5[4] != 0;
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseIsSimPresentResponse", "SIM Command failed\n", a3);
    return 0;
  }
}

BOOL ETLMaverickParseGetTxAntenna(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a3;
  if ((*(a1 + 8) - v3) < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseGetTxAntenna", "failed parsing BSP response from frame\n");
    return 0;
  }

  v4 = *(*a1 + v3);
  if (v4 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  v5 = v3 + 4;
  *a3 = v3 + 4;
  if (BYTE1(v4) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  if (HIWORD(v4) != 24)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  v6 = *(a1 + 8) - v5;
  if (v6 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseGetTxAntenna", "Need %u bytes, but only have %u\n", 4, v6);
    return 0;
  }

  else
  {
    v7 = (*a1 + v5);
    if (*v7 == 1)
    {
      v8 = v7[1];
      result = v8 < 5;
      *a2 = v8;
      *a3 = v3 + 8;
    }

    else
    {
      _ETLDebugPrint("ETLMaverickParseGetTxAntenna", "status = %d\n", *v7);
      return 0;
    }
  }

  return result;
}

uint64_t ETLMaverickCreateGetGPIOCommand(uint64_t a1, unsigned __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v3 = HDLCFrameGetFreeSpace();
    if (v3 <= 1)
    {
      _ETLDebugPrint("ETLMaverickCreateGetGPIOCommand", "Not enough room, need %zu, have %u\n", 2uLL, v3);
      return 0;
    }

    else
    {

      return HDLCFrameInjectUnsignedShort();
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

BOOL ETLMaverickParseGetGPIOResponse(int **a1, int a2, BOOL *a3)
{
  v3 = *(a1 + 2);
  v4 = v3 - 4;
  if (v3 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3);
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseGetGPIOResponse", "failed parsing factory response from frame\n");
    return 0;
  }

  v5 = *a1;
  v6 = **a1;
  if (v6 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_12;
  }

  if (BYTE1(v6) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_12;
  }

  if (HIWORD(v6) != 19)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_12;
  }

  if (v4 <= 5)
  {
    _ETLDebugPrint("ETLMaverickParseGetGPIOResponse", "Need %u bytes, but only have %u\n", 6, v4);
    return 0;
  }

  else if (v5[2])
  {
    v7 = v5[3];
    *a3 = v5[4] != 0;
    return v7 == a2;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseGetGPIOResponse", "Get GPIO Status Command failed\n", a3);
    return 0;
  }
}

uint64_t ETLMaverickCreateSetGPIOCommand(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 3)
  {
    _ETLDebugPrint("ETLMaverickCreateSetGPIOCommand", "Not enough room, need %zu, have %u\n");
    return 0;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedShort();
}

BOOL ETLMaverickParseSetGPIOResponse(int **a1, int a2)
{
  v2 = *(a1 + 2);
  v3 = v2 - 4;
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseSetGPIOResponse", "failed parsing factory response from frame\n");
    return 0;
  }

  v4 = *a1;
  v5 = **a1;
  if (v5 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  if (BYTE1(v5) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  if (HIWORD(v5) != 20)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_12;
  }

  if (v3 <= 5)
  {
    _ETLDebugPrint("ETLMaverickParseSetGPIOResponse", "Need %u bytes, but only have %u\n", 6, v3);
    return 0;
  }

  else if (*(v4 + 2))
  {
    return *(v4 + 3) == a2;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseSetGPIOResponse", "Set GPIO State Command failed\n");
    return 0;
  }
}

uint64_t ETLMaverickCreateBackupBoardSNCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v2 = HDLCFrameGetFreeSpace();
    if (v2 <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, v2);
      return 0;
    }

    else
    {

      return HDLCFrameInjectUnsignedShort();
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

BOOL ETLMaverickParseBackupBoardSNResponse(int **a1)
{
  v1 = *(a1 + 2);
  v2 = v1 - 4;
  if (v1 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v3 = *a1;
    v4 = **a1;
    if (v4 == 75)
    {
      if (BYTE1(v4) == 254)
      {
        v5 = HIWORD(v4);
        if (v5 == 12)
        {
          if (v2 <= 3)
          {
            _ETLDebugPrint("ETLCheckPayloadLength", "Need %u bytes, but only have %u\n", 4, v2);
            return 0;
          }

          else
          {
            v6 = *(v3 + 2);
            if (v6 == 20)
            {
              return *(v3 + 3) == 0;
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseBackupBoardSNResponse", "Backup Board SN response does not match MAV_SEC_BKP_BOARD_SN [%d]. Received [%d]\n", 20, v6);
              return 0;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v5, 12);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v4), 254);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateAnntennaSKU(int *a1, unsigned __int8 a2, int a3)
{
  if ((a2 & ((a3 - 1) < 2)) == 1)
  {
    if (a3 == 1)
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
    }

    if (a3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if ((a2 & 2) == 0)
    {
      v3 = v4;
    }

    *a1 = v3;
  }

  return a2 & ((a3 - 1) < 2);
}

uint64_t ETLMaverickCreateSetAntennaSKUCommand(uint64_t a1, unsigned __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    v3 = HDLCFrameGetFreeSpace();
    if (v3 <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 2, v3);
      return 0;
    }

    else
    {

      return HDLCFrameInjectUnsignedShort();
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

uint64_t ETLMaverickParseSetAntennaSKUResponse(int **a1, int a2)
{
  v2 = *(a1 + 2);
  v3 = v2 - 4;
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
  }

  else
  {
    v4 = *a1;
    v5 = **a1;
    if (v5 == 75)
    {
      if (BYTE1(v5) == 253)
      {
        if (HIWORD(v5) == 38)
        {
          if (v3 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSetAntennaSKUResponse", "Received response has only %u bytes, need %u\n");
          }

          else if (*(v4 + 2) == 1)
          {
            if (*(v4 + 3) == a2)
            {
              return 1;
            }

            _ETLDebugPrint("ETLMaverickParseSetAntennaSKUResponse", "Received SKU %u mismatches sent %u\n");
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    }
  }

  return 0;
}

uint64_t ETLMaverickCreateSetIMEISwVersionCommand(uint64_t a1, uint64_t a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace())
    {

      return HDLCFrameInjectUnsignedChar();
    }

    else
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", 1, 0);
      return 0;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    return 0;
  }
}

uint64_t ETLMaverickParseIMEISwVersionResponse(int **a1, _BYTE *a2, int a3)
{
  v3 = *(a1 + 2);
  v4 = v3 - 4;
  if (v3 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", *(a1 + 2), 4uLL);
    return 0;
  }

  else
  {
    v5 = *a1;
    v6 = **a1;
    if (v6 == 75)
    {
      if (BYTE1(v6) == 253)
      {
        v7 = HIWORD(v6);
        if (v7 == a3)
        {
          if (v4 <= 2)
          {
            _ETLDebugPrint("ETLMaverickParseIMEISwVersionResponse", "Received response has only %u bytes, need %u\n", v4, 3);
            return 0;
          }

          else if (*(v5 + 2) == 1)
          {
            *a2 = *(v5 + 6);
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseIMEISwVersionResponse", "Received response with failure status [%d]\n", *(v5 + 2));
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v7, a3);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", BYTE1(v6), 253);
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", **a1, 75);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateGetHWConfigIDCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v3 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v3;
    }
  }

  return result;
}

uint64_t ETLMaverickParseGetHWConfigIDResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 - 4;
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_15:
    _ETLDebugPrint("ETLMaverickParseGetHWConfigIDResponse", "failed parsing factory response from frame\n");
    return 0;
  }

  v4 = *a1;
  v5 = **a1;
  if (v5 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_15;
  }

  if (BYTE1(v5) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_15;
  }

  if (v5 >= 0x10000)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_15;
  }

  if (v3 <= 0x17)
  {
    _ETLDebugPrint("ETLMaverickParseGetHWConfigIDResponse", "Need %u bytes, but only have %u\n", 24, v3);
    return 0;
  }

  else if (*(v4 + 2))
  {
    if (a2)
    {
      *a2 = *(v4 + 6);
      *(a2 + 4) = *(v4 + 5);
      *(a2 + 6) = *(v4 + 6);
      *(a2 + 8) = *(v4 + 7);
      *(a2 + 10) = *(v4 + 8);
      *(a2 + 12) = *(v4 + 9);
      *(a2 + 14) = *(v4 + 10);
      if (v3 < 0x1A)
      {
        *(a2 + 22) = -1;
      }

      else
      {
        *(a2 + 22) = *(v4 + 14);
      }

      return 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseGetHWConfigIDResponse", "Get HW Config ID Command failed\n");
    return 0;
  }
}

uint64_t ETLMaverickCreateCalibrationCheckCommand(uint64_t a1)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v3 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v3;
    }
  }

  return result;
}

uint64_t ETLMaverickCreateCalibrationCheckCommandV2(uint64_t a1, __int16 a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", FreeSpace, 4uLL);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v4 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
      return v4;
    }
  }

  return result;
}

uint64_t ETLMaverickParseCalibrationCheckResonse(unsigned int *a1, _DWORD *a2)
{
  v2 = a1[2];
  v3 = v2 - 4;
  if (v2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
LABEL_11:
    _ETLDebugPrint("ETLMaverickParseCalibrationCheckResonse", "Parsing BSP Response Header failed.\n");
    return 0;
  }

  v4 = **a1;
  if (v4 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_11;
  }

  if (BYTE1(v4) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
    goto LABEL_11;
  }

  if (HIWORD(v4) != 48)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
    goto LABEL_11;
  }

  if (v3 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseCalibrationCheckResonse", "Received response has only %u bytes, need %u\n", v3, 4);
    return 0;
  }

  else
  {
    *a2 = *(*a1 + 4);
    return 1;
  }
}

uint64_t ETLMaverickParseCalibrationCheckResponseV2(unsigned int *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1[2];
  v4 = v3 - 4;
  if (v3 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3);
LABEL_11:
    _ETLDebugPrint("ETLMaverickParseCalibrationCheckResponseV2", "Parsing RF Response Header failed.\n");
    return 0;
  }

  v5 = **a1;
  if (v5 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_11;
  }

  if (BYTE1(v5) != 251)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_11;
  }

  if (a3 != HIWORD(v5))
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3);
    goto LABEL_11;
  }

  if (v4 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseCalibrationCheckResponseV2", "Received response has only %u bytes, need %u\n", v4, 4);
    return 0;
  }

  else
  {
    *a2 = *(*a1 + 4);
    return 1;
  }
}

uint64_t ETLMaverickStartRSSI(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickStartRSSI", "Failed to create command frame\n", v20, v21, v22);
LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  if (!ETLMaverickCreateStartRSSICommand(v23, a2, a3, a4))
  {
    goto LABEL_19;
  }

  v10 = malloc((2 * DWORD2(v23[0]) + 32));
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = HDLCFrameEncode();
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v25 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v11, v12);
  }

  if (!*a1)
  {
LABEL_21:
    free(v11);
    goto LABEL_19;
  }

  v14 = (*a1)(a1, v11, v13, &v25, 1, a5, 0);
  v15 = v25;
  free(v11);
  if (v14)
  {
    v16 = v15 == v13;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    goto LABEL_19;
  }

  LOBYTE(v25) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v17 = ETLFindMatchingResponseUsingBuffer(a1, &v20, &_ETLResponseRingBuffer, &v25, a5);
  v18 = 0;
  if (v17 && v25 == 75)
  {
    v25 = 0;
    v18 = ETLMaverickParseRSSICommandResponse(&v20, &v25, 1);
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v18;
}

uint64_t ETLMaverickStopRSSI(void *a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickStopRSSI", "Failed to create command frame\n", v14, v15, v16);
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (!ETLMaverickCreateStopRSSICommand(v17))
  {
    goto LABEL_19;
  }

  v4 = malloc((2 * DWORD2(v17[0]) + 32));
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = HDLCFrameEncode();
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  v19 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v5, v6);
  }

  if (!*a1)
  {
LABEL_21:
    free(v5);
    goto LABEL_19;
  }

  v8 = (*a1)(a1, v5, v7, &v19, 1, a2, 0);
  v9 = v19;
  free(v5);
  if (v8)
  {
    v10 = v9 == v7;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  LOBYTE(v19) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v11 = ETLFindMatchingResponseUsingBuffer(a1, &v14, &_ETLResponseRingBuffer, &v19, a2);
  v12 = 0;
  if (v11 && v19 == 75)
  {
    v19 = 0;
    v12 = ETLMaverickParseRSSICommandResponse(&v14, &v19, 1);
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v12;
}

uint64_t ETLMaverickReportRSSI(void *a1, uint64_t a2)
{
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickReportRSSI", "Failed to create command frame\n", v14, v15, v16);
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (!ETLMaverickCreateReportRSSICommand(v17))
  {
    goto LABEL_19;
  }

  v4 = malloc((2 * DWORD2(v17[0]) + 32));
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = HDLCFrameEncode();
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  v20 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v5, v6);
  }

  if (!*a1)
  {
LABEL_21:
    free(v5);
    goto LABEL_19;
  }

  v8 = (*a1)(a1, v5, v7, &v20, 1, a2, 0);
  v9 = v20;
  free(v5);
  if (v8)
  {
    v10 = v9 == v7;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  LOBYTE(v20) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v11 = ETLFindMatchingResponseUsingBuffer(a1, &v14, &_ETLResponseRingBuffer, &v20, a2);
  v12 = 0;
  if (v11 && v20 == 75)
  {
    v12 = ETLMaverickParseRSSICommandResponse(&v14, &v19, 1);
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v12;
}

void *ETLMaverickSetAPWake(void *a1, unsigned __int16 a2, uint64_t a3)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickSetAPWake", "Failed to create command frame\n", v11, v12, v13, v14, v15);
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_21;
  }

  v19 = 916811;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickCreateAPWakeCommand", "Not enough room, need %zu, have %u\n");
    goto LABEL_21;
  }

  HDLCFrameInjectUnsignedShort();
  v5 = malloc((2 * DWORD2(v16) + 32));
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = HDLCFrameEncode();
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  v19 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v5, v6);
  }

  if (!*a1)
  {
LABEL_23:
    free(v5);
    goto LABEL_21;
  }

  v8 = (*a1)(a1, v5, v7, &v19, 1, a3, 0);
  v9 = v19;
  free(v5);
  v5 = 0;
  if (v8 && v9 == v7)
  {
    LOBYTE(v19) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v5 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v13, &_ETLResponseRingBuffer, &v19, a3) && v19 == 75)
    {
      v5 = ETLMaverickParseAPWakeResponse(&v13);
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return v5;
}

uint64_t ETLMaverickEnterEmergencyDownloadMode(void *a1, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickEnterEmergencyDownloadMode", "Failed to create command frame\n");
    goto LABEL_23;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_23;
  }

  v16 = 982347;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_23;
  }

  v4 = malloc((2 * DWORD2(v13) + 32));
  if (v4)
  {
    v5 = HDLCFrameEncode();
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = v5;
    v16 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v4, v5);
    }

    if (!*a1)
    {
LABEL_25:
      free(v4);
      goto LABEL_23;
    }

    v7 = (*a1)(a1, v4, v6, &v16, 1, a2, 0);
    v8 = v16;
    free(v4);
    v4 = 0;
    if (v7)
    {
      if (v8 == v6)
      {
        LOBYTE(v16) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v4 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v11, &_ETLResponseRingBuffer, &v16, a2) && v16 == 75)
        {
          if (DWORD2(v11[0]) < 4)
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
          }

          else
          {
            v9 = **&v11[0];
            if (**&v11[0] == 75)
            {
              if (BYTE1(v9) == 253)
              {
                if (HIWORD(v9) == 14)
                {
                  v4 = 1;
                  goto LABEL_24;
                }

                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
              }
            }

            else
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
            }
          }

LABEL_23:
          v4 = 0;
        }
      }
    }
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v4;
}

void *ETLMaverickGetTxPower(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  if (!a3 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetTxPower", "Failed to create command frame\n");
    goto LABEL_17;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_17;
  }

  v23 = 1112907;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v15, v16, v17, v18, v19);
    goto LABEL_17;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickCreateGetTxPowerExtCommand", "Not enough room, need %zu, have %u\n");
    goto LABEL_17;
  }

  if (a2 > 7)
  {
LABEL_17:
    TxPowerExtResponse = 0;
    goto LABEL_18;
  }

  HDLCFrameInjectUnsignedShort();
  TxPowerExtResponse = malloc((2 * DWORD2(v20) + 32));
  if (TxPowerExtResponse)
  {
    v9 = HDLCFrameEncode();
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9;
    v23 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, TxPowerExtResponse, v9);
    }

    if (!*a1)
    {
LABEL_22:
      free(TxPowerExtResponse);
      goto LABEL_17;
    }

    v11 = (*a1)(a1, TxPowerExtResponse, v10, &v23, 1, a4, 0);
    v12 = v23;
    free(TxPowerExtResponse);
    TxPowerExtResponse = 0;
    if (v11)
    {
      if (v12 == v10)
      {
        if (ETLSubsysFindMatchingResponse(a1, &v17, a4))
        {
          TxPowerExtResponse = ETLMaverickParseGetTxPowerExtResponse(&v17, v13, a3);
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }
  }

LABEL_18:
  HDLCFrameFree();
  HDLCFrameFree();
  return TxPowerExtResponse;
}

void *ETLMaverickGetTxPowerCap(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetTxPowerCap", "Failed to create command frame\n");
LABEL_19:
    TxPowerCapResponse = 0;
    goto LABEL_20;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v6);
    goto LABEL_19;
  }

  v23 = 1572171;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v15, v16, v17, v18, v19);
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickCreateGetTxPowerCapCommand", "Not enough room, need %zu, have %u\n", v8);
    goto LABEL_19;
  }

  HDLCFrameInjectUnsignedShort();
  TxPowerCapResponse = malloc((2 * DWORD2(v20) + 32));
  if (!TxPowerCapResponse)
  {
    goto LABEL_20;
  }

  v10 = HDLCFrameEncode();
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v10;
  v23 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, TxPowerCapResponse, v10);
  }

  if (!*a1)
  {
LABEL_24:
    free(TxPowerCapResponse);
    goto LABEL_19;
  }

  v12 = (*a1)(a1, TxPowerCapResponse, v11, &v23, 1, a3, 0);
  v13 = v23;
  free(TxPowerCapResponse);
  TxPowerCapResponse = 0;
  if (v12 && v13 == v11)
  {
    LOBYTE(v23) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    TxPowerCapResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v17, &_ETLResponseRingBuffer, &v23, a3) && v23 == 75)
    {
      TxPowerCapResponse = ETLMaverickParseGetTxPowerCapResponse(&v17, a2);
    }
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return TxPowerCapResponse;
}

uint64_t ETLMaverickWriteFATPDefaultNVs(void *a1, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickWriteFATPDefaultNVs", "Failed to create command frame\n");
    goto LABEL_23;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_23;
  }

  v16 = 2621003;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_23;
  }

  v4 = malloc((2 * DWORD2(v13) + 32));
  if (v4)
  {
    v5 = HDLCFrameEncode();
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = v5;
    v16 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v4, v5);
    }

    if (!*a1)
    {
LABEL_25:
      free(v4);
      goto LABEL_23;
    }

    v7 = (*a1)(a1, v4, v6, &v16, 1, a2, 0);
    v8 = v16;
    free(v4);
    v4 = 0;
    if (v7)
    {
      if (v8 == v6)
      {
        LOBYTE(v16) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v4 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v11, &_ETLResponseRingBuffer, &v16, a2) && v16 == 75)
        {
          if (DWORD2(v11[0]) < 4)
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
          }

          else
          {
            v9 = **&v11[0];
            if (**&v11[0] == 75)
            {
              if (BYTE1(v9) == 254)
              {
                if (HIWORD(v9) == 39)
                {
                  v4 = 1;
                  goto LABEL_24;
                }

                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
              }
            }

            else
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
            }
          }

LABEL_23:
          v4 = 0;
        }
      }
    }
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v4;
}

uint64_t ETLMaverickWriteDefaultNVs(void *a1, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickWriteDefaultNVs", "Failed to create command frame\n");
    goto LABEL_23;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_23;
  }

  v16 = 1703243;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_23;
  }

  v4 = malloc((2 * DWORD2(v13) + 32));
  if (v4)
  {
    v5 = HDLCFrameEncode();
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = v5;
    v16 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v4, v5);
    }

    if (!*a1)
    {
LABEL_25:
      free(v4);
      goto LABEL_23;
    }

    v7 = (*a1)(a1, v4, v6, &v16, 1, a2, 0);
    v8 = v16;
    free(v4);
    v4 = 0;
    if (v7)
    {
      if (v8 == v6)
      {
        LOBYTE(v16) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v4 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v11, &_ETLResponseRingBuffer, &v16, a2) && v16 == 75)
        {
          if (DWORD2(v11[0]) < 4)
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
          }

          else
          {
            v9 = **&v11[0];
            if (**&v11[0] == 75)
            {
              if (BYTE1(v9) == 253)
              {
                if (HIWORD(v9) == 25)
                {
                  v4 = 1;
                  goto LABEL_24;
                }

                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
              }
            }

            else
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
            }
          }

LABEL_23:
          v4 = 0;
        }
      }
    }
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v4;
}

uint64_t ETLMaverickWriteFactoryDefaultNVs(void *a1, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickWriteFactoryDefaultNVs", "Failed to create command frame\n");
    goto LABEL_23;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_23;
  }

  v16 = 1834571;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_23;
  }

  v4 = malloc((2 * DWORD2(v13) + 32));
  if (v4)
  {
    v5 = HDLCFrameEncode();
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = v5;
    v16 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v4, v5);
    }

    if (!*a1)
    {
LABEL_25:
      free(v4);
      goto LABEL_23;
    }

    v7 = (*a1)(a1, v4, v6, &v16, 1, a2, 0);
    v8 = v16;
    free(v4);
    v4 = 0;
    if (v7)
    {
      if (v8 == v6)
      {
        LOBYTE(v16) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v4 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v11, &_ETLResponseRingBuffer, &v16, a2) && v16 == 75)
        {
          if (DWORD2(v11[0]) < 4)
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
          }

          else
          {
            v9 = **&v11[0];
            if (**&v11[0] == 75)
            {
              if (BYTE1(v9) == 254)
              {
                if (HIWORD(v9) == 27)
                {
                  v4 = 1;
                  goto LABEL_24;
                }

                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
              }
            }

            else
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
            }
          }

LABEL_23:
          v4 = 0;
        }
      }
    }
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v4;
}

void *ETLMaverickIsSimPresentExt(void *a1, BOOL *a2, BOOL *a3, uint64_t a4, uint64_t a5)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickIsSimPresentExt", "Failed to create command frame\n", v15, v16, v17, v18, v19);
    goto LABEL_20;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_20;
  }

  v23 = 130635;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_20;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_20:
    IsSimPresentResponse = 0;
    goto LABEL_21;
  }

  IsSimPresentResponse = malloc((2 * DWORD2(v20) + 32));
  if (!IsSimPresentResponse)
  {
    goto LABEL_21;
  }

  v10 = HDLCFrameEncode();
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v23 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, IsSimPresentResponse, v10);
  }

  if (!*a1)
  {
LABEL_22:
    free(IsSimPresentResponse);
    goto LABEL_20;
  }

  v12 = (*a1)(a1, IsSimPresentResponse, v11, &v23, 1, a5, 0);
  v13 = v23;
  free(IsSimPresentResponse);
  IsSimPresentResponse = 0;
  if (v12 && v13 == v11)
  {
    LOBYTE(v23) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    IsSimPresentResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v17, &_ETLResponseRingBuffer, &v23, a5) && v23 == 75)
    {
      IsSimPresentResponse = ETLMaverickParseIsSimPresentResponse(&v17, a2, a3);
    }
  }

LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return IsSimPresentResponse;
}

void *ETLMaverickSetTxAntenna(void *a1, int a2, uint64_t a3)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickSetTxAntenna", "Failed to create command frame\n", v12, v13, v14, v15, v16);
LABEL_21:
    v6 = 0;
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_21;
  }

  v20 = 458059;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickCreateTxModeSwitchCommand", "Not enough room, need %zu, have %u\n");
    goto LABEL_21;
  }

  HDLCFrameInjectUnsignedShort();
  v6 = malloc((2 * DWORD2(v17) + 32));
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = HDLCFrameEncode();
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v20 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v6, v7);
  }

  if (!*a1)
  {
LABEL_23:
    free(v6);
    goto LABEL_21;
  }

  v9 = (*a1)(a1, v6, v8, &v20, 1, a3, 0);
  v10 = v20;
  free(v6);
  v6 = 0;
  if (v9 && v10 == v8)
  {
    LOBYTE(v20) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v6 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v14, &_ETLResponseRingBuffer, &v20, a3) && v20 == 75)
    {
      v6 = ETLMaverickParseTxModeSwitchResponse(&v14, a2);
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return v6;
}

void *ETLMaverickGetTxAntenna(void *a1, unsigned int *a2, uint64_t a3)
{
  v22 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetTxAntenna", "Failed to create command frame\n", a3, v14, v15, v16, v17, v18);
LABEL_18:
    TxAntenna = 0;
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v6);
    goto LABEL_18;
  }

  v23 = 1637707;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v14, v15, v16, v17, v18);
    goto LABEL_18;
  }

  TxAntenna = malloc((2 * DWORD2(v19) + 32));
  if (!TxAntenna)
  {
    goto LABEL_19;
  }

  v9 = HDLCFrameEncode();
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = v9;
  v23 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, TxAntenna, v9);
  }

  if (!*a1)
  {
LABEL_22:
    free(TxAntenna);
    goto LABEL_18;
  }

  v11 = (*a1)(a1, TxAntenna, v10, &v23, 1, a3, 0);
  v12 = v23;
  free(TxAntenna);
  TxAntenna = 0;
  if (v11 && v12 == v10)
  {
    LOBYTE(v23) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    TxAntenna = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v16, &_ETLResponseRingBuffer, &v23, a3) && v23 == 75)
    {
      TxAntenna = ETLMaverickParseGetTxAntenna(&v16, a2, &v22);
    }
  }

LABEL_19:
  HDLCFrameFree();
  HDLCFrameFree();
  return TxAntenna;
}

void *ETLMaverickGetGPIOState(void *a1, int a2, BOOL *a3, uint64_t a4)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  if (!a3 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetGPIOState", "Failed to create command frame\n");
    goto LABEL_17;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_17;
  }

  v22 = 1310283;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v14, v15, v16, v17, v18);
    goto LABEL_17;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickCreateGetGPIOCommand", "Not enough room, need %zu, have %u\n");
    goto LABEL_17;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_17:
    GPIOResponse = 0;
    goto LABEL_18;
  }

  GPIOResponse = malloc((2 * DWORD2(v19) + 32));
  if (GPIOResponse)
  {
    v9 = HDLCFrameEncode();
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9;
    v22 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, GPIOResponse, v9);
    }

    if (!*a1)
    {
LABEL_22:
      free(GPIOResponse);
      goto LABEL_17;
    }

    v11 = (*a1)(a1, GPIOResponse, v10, &v22, 1, a4, 0);
    v12 = v22;
    free(GPIOResponse);
    GPIOResponse = 0;
    if (v11)
    {
      if (v12 == v10)
      {
        if (ETLSubsysFindMatchingResponse(a1, &v16, a4))
        {
          GPIOResponse = ETLMaverickParseGetGPIOResponse(&v16, a2, a3);
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }
  }

LABEL_18:
  HDLCFrameFree();
  HDLCFrameFree();
  return GPIOResponse;
}

void *ETLMaverickSetGPIOState(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickSetGPIOState", "Failed to create command frame\n", v13, v14, v15, v16, v17);
    goto LABEL_20;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_20;
  }

  v21 = 1375819;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_20;
  }

  if (HDLCFrameGetFreeSpace() <= 3)
  {
    _ETLDebugPrint("ETLMaverickCreateSetGPIOCommand", "Not enough room, need %zu, have %u\n");
    goto LABEL_20;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_20;
  }

  v7 = malloc((2 * DWORD2(v18) + 32));
  if (v7)
  {
    v8 = HDLCFrameEncode();
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v8;
    v21 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v7, v8);
    }

    if (!*a1)
    {
LABEL_22:
      free(v7);
      goto LABEL_20;
    }

    v10 = (*a1)(a1, v7, v9, &v21, 1, a4, 0);
    v11 = v21;
    free(v7);
    v7 = 0;
    if (v10)
    {
      if (v11 == v9)
      {
        if (ETLSubsysFindMatchingResponse(a1, &v15, a4))
        {
          v7 = ETLMaverickParseSetGPIOResponse(&v15, a2);
          goto LABEL_21;
        }

LABEL_20:
        v7 = 0;
      }
    }
  }

LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return v7;
}

void *ETLMaverickBackupBoardSN(void *a1, uint64_t a2)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickBackupBoardSN", "Failed to create command frame\n", v10, v11, v12, v13, v14);
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_22;
  }

  v18 = 851531;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_22;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  v4 = malloc((2 * DWORD2(v15) + 32));
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = HDLCFrameEncode();
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  v18 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v4, v5);
  }

  if (!*a1)
  {
LABEL_24:
    free(v4);
    goto LABEL_22;
  }

  v7 = (*a1)(a1, v4, v6, &v18, 1, a2, 0);
  v8 = v18;
  free(v4);
  v4 = 0;
  if (v7 && v8 == v6)
  {
    LOBYTE(v18) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v4 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v12, &_ETLResponseRingBuffer, &v18, a2) && v18 == 75)
    {
      v4 = ETLMaverickParseBackupBoardSNResponse(&v12);
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return v4;
}

uint64_t ETLMaverickBackupOrRestoreBBData(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), int a2, uint64_t a3)
{
  if (a2 <= 13)
  {
    v4 = a2;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
      }

      else
      {
        v7 = v4 + 21;
        LOWORD(v19) = -437;
        HIWORD(v19) = v4 + 21;
        if (HDLCFrameInject())
        {
          v3 = malloc((2 * DWORD2(v16) + 32));
          if (!v3)
          {
LABEL_26:
            HDLCFrameFree();
            HDLCFrameFree();
            return v3;
          }

          v8 = HDLCFrameEncode();
          if (!v8)
          {
            goto LABEL_28;
          }

          v9 = v8;
          v19 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v3, v8);
          }

          if (*a1)
          {
            v10 = (*a1)(a1, v3, v9, &v19, 1, a3, 0);
            v11 = v19;
            free(v3);
            v3 = 0;
            if (!v10 || v11 != v9)
            {
              goto LABEL_26;
            }

            LOBYTE(v19) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v3 = 0;
            if (!ETLFindMatchingResponseUsingBuffer(a1, v14, &_ETLResponseRingBuffer, &v19, a3) || v19 != 75)
            {
              goto LABEL_26;
            }

            if (DWORD2(v14[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n");
            }

            else
            {
              v12 = **&v14[0];
              if (**&v14[0] == 75)
              {
                if (BYTE1(v12) == 254)
                {
                  if (v7 == HIWORD(v12))
                  {
                    v3 = 1;
                    goto LABEL_26;
                  }

                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n");
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n");
                }
              }

              else
              {
                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n");
              }
            }
          }

          else
          {
LABEL_28:
            free(v3);
          }
        }

        else
        {
          _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLMaverickBackupOrRestoreBBData", "Failed to create command frame\n");
    }

    v3 = 0;
    goto LABEL_26;
  }

  return 0;
}

void *ETLMaverickSetAntennaSKU(void *a1, int a2, uint64_t a3)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickSetAntennaSKU", "Failed to create command frame\n", v12, v13, v14, v15, v16);
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_22;
  }

  v20 = 2555211;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n");
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_22;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  v6 = malloc((2 * DWORD2(v17) + 32));
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = HDLCFrameEncode();
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = v7;
  v20 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v6, v7);
  }

  if (!*a1)
  {
LABEL_24:
    free(v6);
    goto LABEL_22;
  }

  v9 = (*a1)(a1, v6, v8, &v20, 1, a3, 0);
  v10 = v20;
  free(v6);
  v6 = 0;
  if (v9 && v10 == v8)
  {
    LOBYTE(v20) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v6 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v14, &_ETLResponseRingBuffer, &v20, a3) && v20 == 75)
    {
      v6 = ETLMaverickParseSetAntennaSKUResponse(&v14, a2);
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return v6;
}

uint64_t ETLMaverickSetIMEISwVersion(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickSetIMEISwVersion", "Failed to create command frame\n", v12, v13, v14, v15, v16);
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n");
    goto LABEL_24;
  }

  v20 = 2489675;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v12, v13, v14, v15, v16);
    goto LABEL_24;
  }

  if (!HDLCFrameGetFreeSpace())
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n");
    goto LABEL_24;
  }

  if (!HDLCFrameInjectUnsignedChar())
  {
LABEL_24:
    v6 = 0;
    goto LABEL_25;
  }

  v6 = malloc((2 * DWORD2(v17) + 32));
  if (v6)
  {
    v7 = HDLCFrameEncode();
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = v7;
    v20 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v6, v7);
    }

    if (!*a1)
    {
LABEL_26:
      free(v6);
      goto LABEL_24;
    }

    v9 = (*a1)(a1, v6, v8, &v20, 1, a3, 0);
    v10 = v20;
    free(v6);
    v6 = 0;
    if (v9)
    {
      if (v10 == v8)
      {
        LOBYTE(v20) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v6 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, &v14, &_ETLResponseRingBuffer, &v20, a3) && v20 == 75)
        {
          LOBYTE(v20) = -86;
          if (ETLMaverickParseIMEISwVersionResponse(&v14, &v20, 37))
          {
            if (v20 == v4)
            {
              v6 = 1;
              goto LABEL_25;
            }

            _ETLDebugPrint("ETLMaverickSetIMEISwVersion", "Received SVN %u mismatches sent %u\n");
          }

          goto LABEL_24;
        }
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v6;
}

void *ETLMaverickGetIMEISwVersion(void *a1, _BYTE *a2, uint64_t a3)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetIMEISwVersion", "Failed to create command frame\n", a3, v14, v15, v16, v17, v18);
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v6);
    goto LABEL_18;
  }

  v22 = 2424139;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v14, v15, v16, v17, v18);
    goto LABEL_18;
  }

  v8 = malloc((2 * DWORD2(v19) + 32));
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = HDLCFrameEncode();
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = v9;
  v22 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v8, v9);
  }

  if (!*a1)
  {
LABEL_22:
    free(v8);
    goto LABEL_18;
  }

  v11 = (*a1)(a1, v8, v10, &v22, 1, a3, 0);
  v12 = v22;
  free(v8);
  v8 = 0;
  if (v11 && v12 == v10)
  {
    LOBYTE(v22) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v8 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v16, &_ETLResponseRingBuffer, &v22, a3) && v22 == 75)
    {
      v8 = ETLMaverickParseIMEISwVersionResponse(&v16, a2, 36);
    }
  }

LABEL_19:
  HDLCFrameFree();
  HDLCFrameFree();
  return v8;
}

uint64_t ETLMaverickGetHWType(void *a1, _DWORD *a2, uint64_t a3)
{
  memset(v5, 170, sizeof(v5));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v5, a3);
  if (result)
  {
    *a2 = v5[0];
    return 1;
  }

  return result;
}

void *ETLMaverickGetHWInfo(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickGetHWInfo", "Failed to create command frame\n", a3, v14, v15, v16, v17, v18);
LABEL_18:
    HWConfigIDResponse = 0;
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v6);
    goto LABEL_18;
  }

  v22 = 65099;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v14, v15, v16, v17, v18);
    goto LABEL_18;
  }

  HWConfigIDResponse = malloc((2 * DWORD2(v19) + 32));
  if (!HWConfigIDResponse)
  {
    goto LABEL_19;
  }

  v9 = HDLCFrameEncode();
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = v9;
  v22 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, HWConfigIDResponse, v9);
  }

  if (!*a1)
  {
LABEL_22:
    free(HWConfigIDResponse);
    goto LABEL_18;
  }

  v11 = (*a1)(a1, HWConfigIDResponse, v10, &v22, 1, a3, 0);
  v12 = v22;
  free(HWConfigIDResponse);
  HWConfigIDResponse = 0;
  if (v11 && v12 == v10)
  {
    LOBYTE(v22) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    HWConfigIDResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, &v16, &_ETLResponseRingBuffer, &v22, a3) && v22 == 75)
    {
      HWConfigIDResponse = ETLMaverickParseGetHWConfigIDResponse(&v16, a2);
    }
  }

LABEL_19:
  HDLCFrameFree();
  HDLCFrameFree();
  return HWConfigIDResponse;
}

uint64_t ETLMaverickGetHWRev(void *a1, _WORD *a2, uint64_t a3)
{
  memset(v5, 170, sizeof(v5));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v5, a3);
  if (result)
  {
    *a2 = WORD2(v5[0]);
    return 1;
  }

  return result;
}

uint64_t ETLMaverickGetHWConfigId(void *a1, _WORD *a2, uint64_t a3)
{
  memset(v5, 170, sizeof(v5));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v5, a3);
  if (result)
  {
    *a2 = HIWORD(v5[0]);
    return 1;
  }

  return result;
}

uint64_t ETLMaverickGetPAConfig(void *a1, _WORD *a2, uint64_t a3)
{
  memset(v5, 170, sizeof(v5));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v5, a3);
  if (result)
  {
    *a2 = v5[1];
    return 1;
  }

  return result;
}

uint64_t ETLMaverickGetAntennaTunerID(void *a1, _WORD *a2, uint64_t a3)
{
  memset(v5, 170, sizeof(v5));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v5, a3);
  if (result)
  {
    *a2 = WORD1(v5[1]);
    return 1;
  }

  return result;
}