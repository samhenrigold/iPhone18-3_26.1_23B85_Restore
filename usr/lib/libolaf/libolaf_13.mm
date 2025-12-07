char **NMEA_Encode_PDBGE_Constell(char **a1, int a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x29EDCA608];
  v7 = (*a1)++;
  *v7 = 36;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  v9 = 80;
  v10 = 1u;
  v11 = v8;
  do
  {
    *a1 = v11 + 1;
    *v11 = v9;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v9 = aPdbge[v10++];
  }

  while (v10 != 7);
  sprintf_HHMMSS(a1, a3);
  v12 = a2 - 1;
  v13 = qword_29972B030[v12];
  v14 = qword_29972B060[v12];
  v15 = qword_29972B090[v12];
  v16 = qword_29972B0C0[v12];
  v17 = qword_29972B0F0[v12];
  v18 = qword_29972B120[v12];
  v19 = qword_29972B150[v12];
  v20 = qword_29972B180[v12];
  v21 = qword_29972B1B0[v12];
  v22 = qword_29972B1E0[v12];
  v23 = off_29EF51B48[v12];
  v24 = *(a4 + qword_29972B000[v12]);
  v25 = *v23;
  v26 = *(a4 + v13);
  v27 = *(a4 + v14);
  v28 = *(a4 + v15);
  v29 = *(a4 + v16);
  v30 = *(a4 + v17);
  v31 = *(a4 + v18);
  v32 = *(a4 + v19);
  v55 = *(a4 + v20);
  v33 = *(a4 + v21);
  v34 = *(a4 + v22);
  if (*v23)
  {
    v35 = *a1;
    v36 = (v23 + 1);
    do
    {
      *a1 = v35 + 1;
      *v35 = v25;
      v35 = *a1;
      if (*a1 >= a1[3])
      {
        v35 = a1[2];
        *a1 = v35;
      }

      v37 = *v36++;
      v25 = v37;
    }

    while (v37);
  }

  sprintf1da(a1, v24, v56, 0, 0);
  v38 = (*a1)++;
  *v38 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v26, v56, 0, 0);
  v39 = (*a1)++;
  *v39 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v27, v56, 0, 0);
  v40 = (*a1)++;
  *v40 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v28, v56, 0, 0);
  v41 = (*a1)++;
  *v41 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v29, v56, 0, 0);
  v42 = (*a1)++;
  *v42 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v30, v56, 0, 0);
  v43 = (*a1)++;
  *v43 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v31, v56, 0, 0);
  v44 = (*a1)++;
  *v44 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v32, v56, 0, 0);
  v45 = (*a1)++;
  *v45 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v55, v56, 0, 0);
  v46 = (*a1)++;
  *v46 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v47 = -0.5;
  if (v33 * 100.0 > 0.0)
  {
    v47 = 0.5;
  }

  v48 = v33 * 100.0 + v47;
  if (v48 <= 2147483650.0)
  {
    if (v48 >= -2147483650.0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x80000000;
    }
  }

  else
  {
    v49 = 0x7FFFFFFFLL;
  }

  sprintf_3f(a1, v49, 3);
  v50 = (*a1)++;
  *v50 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v51 = -0.5;
  if (v34 * 100.0 > 0.0)
  {
    v51 = 0.5;
  }

  v52 = v34 * 100.0 + v51;
  if (v52 <= 2147483650.0)
  {
    if (v52 >= -2147483650.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0x80000000;
    }
  }

  else
  {
    v53 = 0x7FFFFFFFLL;
  }

  sprintf_3f(a1, v53, 3);

  return NMEA_Add_checksum(a1, v8);
}

char **NMEA_Encode_PDBGI_Constell(char **a1, int a2, uint64_t a3, uint64_t a4)
{
  v73 = *MEMORY[0x29EDCA608];
  v7 = (*a1)++;
  *v7 = 36;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  v9 = 80;
  v10 = 1u;
  v11 = v8;
  do
  {
    *a1 = v11 + 1;
    *v11 = v9;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v9 = aPdbgi[v10++];
  }

  while (v10 != 7);
  sprintf_HHMMSS(a1, a3);
  v12 = a2 - 1;
  v13 = qword_29972B210[v12];
  v14 = off_29EF51B48[v12];
  v15 = a4 + v13;
  v16 = *(v15 + 80);
  v68 = *(v15 + 64);
  v69 = v16;
  v70 = *(v15 + 96);
  v71 = *(v15 + 112);
  v17 = *(v15 + 16);
  v67[0] = *v15;
  v67[1] = v17;
  v18 = *(v15 + 48);
  v67[2] = *(v15 + 32);
  v67[3] = v18;
  v19 = *v14;
  if (*v14)
  {
    v20 = *a1;
    v21 = (v14 + 1);
    do
    {
      *a1 = v20 + 1;
      *v20 = v19;
      v20 = *a1;
      if (*a1 >= a1[3])
      {
        v20 = a1[2];
        *a1 = v20;
      }

      v22 = *v21++;
      v19 = v22;
    }

    while (v22);
  }

  sprintf1da(a1, BYTE1(v67[0]), v72, 0, 0);
  v23 = (*a1)++;
  *v23 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE2(v67[0]), v72, 0, 0);
  v24 = (*a1)++;
  *v24 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE3(v67[0]), v72, 0, 0);
  v25 = (*a1)++;
  *v25 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE4(v67[0]), v72, 0, 0);
  v26 = (*a1)++;
  *v26 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE6(v67[0]), v72, 0, 0);
  v27 = (*a1)++;
  *v27 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE7(v67[0]), v72, 0, 0);
  v28 = (*a1)++;
  *v28 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE8(v67[0]), v72, 0, 0);
  v29 = (*a1)++;
  *v29 = 44;
  v30 = *a1;
  if (*a1 >= a1[3])
  {
    v30 = a1[2];
  }

  for (i = 9; i != 25; ++i)
  {
    v32 = *(v67 + i);
    if (v32)
    {
      *a1 = v30 + 1;
      *v30 = v32;
      v30 = *a1;
      if (*a1 >= a1[3])
      {
        v30 = a1[2];
        *a1 = v30;
      }
    }
  }

  *a1 = v30 + 1;
  *v30 = 44;
  v33 = *a1;
  if (*a1 >= a1[3])
  {
    v33 = a1[2];
  }

  for (j = 25; j != 41; ++j)
  {
    v35 = *(v67 + j);
    if (v35)
    {
      *a1 = v33 + 1;
      *v33 = v35;
      v33 = *a1;
      if (*a1 >= a1[3])
      {
        v33 = a1[2];
        *a1 = v33;
      }
    }
  }

  *a1 = v33 + 1;
  *v33 = 44;
  v36 = *a1;
  if (*a1 >= a1[3])
  {
    v36 = a1[2];
  }

  for (k = 41; k != 57; ++k)
  {
    v38 = *(v67 + k);
    if (v38)
    {
      *a1 = v36 + 1;
      *v36 = v38;
      v36 = *a1;
      if (*a1 >= a1[3])
      {
        v36 = a1[2];
        *a1 = v36;
      }
    }
  }

  *a1 = v36 + 1;
  *v36 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v39 = -0.5;
  if (*&v68 * 10.0 > 0.0)
  {
    v39 = 0.5;
  }

  v40 = *&v68 * 10.0 + v39;
  if (v40 <= 2147483650.0)
  {
    if (v40 >= -2147483650.0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0x80000000;
    }
  }

  else
  {
    v41 = 0x7FFFFFFFLL;
  }

  sprintf_2f(a1, v41);
  v42 = (*a1)++;
  *v42 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v43 = -0.5;
  if (*(&v68 + 1) * 10.0 > 0.0)
  {
    v43 = 0.5;
  }

  v44 = *(&v68 + 1) * 10.0 + v43;
  if (v44 <= 2147483650.0)
  {
    if (v44 >= -2147483650.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0x80000000;
    }
  }

  else
  {
    v45 = 0x7FFFFFFFLL;
  }

  sprintf_2f(a1, v45);
  v46 = (*a1)++;
  *v46 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v47 = -0.5;
  if (*&v69 * 10.0 > 0.0)
  {
    v47 = 0.5;
  }

  v48 = *&v69 * 10.0 + v47;
  if (v48 <= 2147483650.0)
  {
    if (v48 >= -2147483650.0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x80000000;
    }
  }

  else
  {
    v49 = 0x7FFFFFFFLL;
  }

  sprintf_2f(a1, v49);
  v50 = (*a1)++;
  *v50 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v51 = -0.5;
  if (*(&v69 + 1) * 10.0 > 0.0)
  {
    v51 = 0.5;
  }

  v52 = *(&v69 + 1) * 10.0 + v51;
  if (v52 <= 2147483650.0)
  {
    if (v52 >= -2147483650.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0x80000000;
    }
  }

  else
  {
    v53 = 0x7FFFFFFFLL;
  }

  sprintf_2f(a1, v53);
  v54 = (*a1)++;
  *v54 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v55 = -0.5;
  if (*&v70 * 10.0 > 0.0)
  {
    v55 = 0.5;
  }

  v56 = *&v70 * 10.0 + v55;
  if (v56 <= 2147483650.0)
  {
    if (v56 >= -2147483650.0)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0x80000000;
    }
  }

  else
  {
    v57 = 0x7FFFFFFFLL;
  }

  sprintf_2f(a1, v57);
  v58 = (*a1)++;
  *v58 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v59 = -0.5;
  if (*(&v70 + 1) * 10.0 > 0.0)
  {
    v59 = 0.5;
  }

  v60 = *(&v70 + 1) * 10.0 + v59;
  if (v60 <= 2147483650.0)
  {
    if (v60 >= -2147483650.0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0x80000000;
    }
  }

  else
  {
    v61 = 0x7FFFFFFFLL;
  }

  sprintf_2f(a1, v61);
  v62 = (*a1)++;
  *v62 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v71, v72, 0, 0);
  v63 = (*a1)++;
  *v63 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE1(v71), v72, 0, 0);
  v64 = (*a1)++;
  *v64 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE2(v71), v72, 0, 0);
  v65 = (*a1)++;
  *v65 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  return NMEA_Add_checksum(a1, v8);
}

char **NMEA_Encode_PDBGO(char **a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = (*a1)++;
  *v7 = 36;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  v9 = 80;
  v10 = 1u;
  v11 = v8;
  do
  {
    *a1 = v11 + 1;
    *v11 = v9;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v9 = aPdbgo[v10++];
  }

  while (v10 != 7);
  sprintf_HHMMSS(a1, a3);
  v12 = a2 - 1;
  v13 = off_29EF51B48[v12];
  v14 = *(a4 + qword_29972B240[v12]);
  v15 = *(a4 + qword_29972B270[v12]);
  v16 = *(a4 + qword_29972B2A0[v12]);
  v17 = *(a4 + qword_29972B2D0[v12]);
  v18 = *(a4 + qword_29972B300[v12]);
  v19 = *v13;
  v20 = *a1;
  if (*v13)
  {
    v21 = (v13 + 1);
    do
    {
      *a1 = v20 + 1;
      *v20 = v19;
      v20 = *a1;
      if (*a1 >= a1[3])
      {
        v20 = a1[2];
        *a1 = v20;
      }

      v22 = *v21++;
      v19 = v22;
    }

    while (v22);
  }

  v23 = 0;
  v24 = 66;
  do
  {
    *a1 = v20 + 1;
    *v20 = v24;
    v20 = *a1;
    if (*a1 >= a1[3])
    {
      v20 = a1[2];
      *a1 = v20;
    }

    v24 = aB[++v23];
  }

  while (v23 != 2);
  if (v14)
  {
    v25 = 0;
    v26 = 48;
    do
    {
      *a1 = v20 + 1;
      *v20 = v26;
      v20 = *a1;
      if (*a1 >= a1[3])
      {
        v20 = a1[2];
        *a1 = v20;
      }

      v26 = a0x_0[++v25];
    }

    while (v25 != 2);
    sprintf_1X(a1, v14);
    v20 = *a1;
  }

  *a1 = v20 + 1;
  *v20 = 44;
  v27 = *a1;
  if (*a1 >= a1[3])
  {
    v27 = a1[2];
  }

  if (v16)
  {
    v28 = 0;
    v29 = 48;
    do
    {
      *a1 = v27 + 1;
      *v27 = v29;
      v27 = *a1;
      if (*a1 >= a1[3])
      {
        v27 = a1[2];
        *a1 = v27;
      }

      v29 = a0x_0[++v28];
    }

    while (v28 != 2);
    sprintf_1X(a1, v16);
    v27 = *a1;
  }

  *a1 = v27 + 1;
  *v27 = 44;
  v30 = *a1;
  if (*a1 >= a1[3])
  {
    v30 = a1[2];
  }

  if (v17)
  {
    v31 = 0;
    v32 = 48;
    do
    {
      *a1 = v30 + 1;
      *v30 = v32;
      v30 = *a1;
      if (*a1 >= a1[3])
      {
        v30 = a1[2];
        *a1 = v30;
      }

      v32 = a0x_0[++v31];
    }

    while (v31 != 2);
    sprintf_1X(a1, v17);
    v30 = *a1;
  }

  *a1 = v30 + 1;
  *v30 = 44;
  v33 = *a1;
  if (*a1 >= a1[3])
  {
    v33 = a1[2];
  }

  v34 = 0;
  v35 = 69;
  do
  {
    *a1 = v33 + 1;
    *v33 = v35;
    v33 = *a1;
    if (*a1 >= a1[3])
    {
      v33 = a1[2];
      *a1 = v33;
    }

    v35 = aE_0[++v34];
  }

  while (v34 != 2);
  if (v15)
  {
    v36 = 0;
    v37 = 48;
    do
    {
      *a1 = v33 + 1;
      *v33 = v37;
      v33 = *a1;
      if (*a1 >= a1[3])
      {
        v33 = a1[2];
        *a1 = v33;
      }

      v37 = a0x_0[++v36];
    }

    while (v36 != 2);
    sprintf_1X(a1, v15);
    v33 = *a1;
  }

  *a1 = v33 + 1;
  *v33 = 44;
  v38 = *a1;
  if (*a1 >= a1[3])
  {
    v38 = a1[2];
  }

  v39 = 0;
  v40 = 82;
  do
  {
    *a1 = v38 + 1;
    *v38 = v40;
    v38 = *a1;
    if (*a1 >= a1[3])
    {
      v38 = a1[2];
      *a1 = v38;
    }

    v40 = aR[++v39];
  }

  while (v39 != 2);
  if (v18)
  {
    v41 = 0;
    v42 = 48;
    do
    {
      *a1 = v38 + 1;
      *v38 = v42;
      v38 = *a1;
      if (*a1 >= a1[3])
      {
        v38 = a1[2];
        *a1 = v38;
      }

      v42 = a0x_0[++v41];
    }

    while (v41 != 2);
    sprintf_1X(a1, v18);
  }

  return NMEA_Add_checksum(a1, v8);
}

char **NMEA_Encode_PDBGR(char **a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v5 = (*a1)++;
  *v5 = 36;
  v6 = *a1;
  if (*a1 >= a1[3])
  {
    v6 = a1[2];
  }

  v7 = 80;
  v8 = 1u;
  v9 = v6;
  do
  {
    *a1 = v9 + 1;
    *v9 = v7;
    v9 = *a1;
    if (*a1 >= a1[3])
    {
      v9 = a1[2];
      *a1 = v9;
    }

    v7 = aPdbgr[v8++];
  }

  while (v8 != 7);
  sprintf_HHMMSS(a1, a2);
  sprintf_1u(a1, *(a3 + 2108));
  v10 = (*a1)++;
  *v10 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf_1u(a1, *(a3 + 2112));
  v11 = (*a1)++;
  *v11 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2116), v42, 0, 0);
  v12 = (*a1)++;
  *v12 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2118), v42, 0, 0);
  v13 = (*a1)++;
  *v13 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2120), v42, 0, 0);
  v14 = (*a1)++;
  *v14 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2122), v42, 0, 0);
  v15 = (*a1)++;
  *v15 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2124), v42, 0, 0);
  v16 = (*a1)++;
  *v16 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2128), v42, 0, 0);
  v17 = (*a1)++;
  *v17 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2126), v42, 0, 0);
  v18 = (*a1)++;
  *v18 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2130), v42, 0, 0);
  v19 = (*a1)++;
  *v19 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, *(a3 + 2132), v42, 0, 0);
  v20 = (*a1)++;
  *v20 = 44;
  v21 = *a1;
  if (*a1 >= a1[3])
  {
    v21 = a1[2];
  }

  v22 = 0;
  v23 = 1;
  do
  {
    *a1 = v21 + 1;
    *v21 = 82;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, v23, v42, 0, 0);
    v24 = (*a1)++;
    *v24 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf_1u(a1, *(a3 + v22 + 2136));
    v25 = (*a1)++;
    *v25 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2140), v42, 0, 0);
    v26 = (*a1)++;
    *v26 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2142), v42, 0, 0);
    v27 = (*a1)++;
    *v27 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2144), v42, 0, 0);
    v28 = (*a1)++;
    *v28 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2145), v42, 0, 0);
    v29 = (*a1)++;
    *v29 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2146), v42, 0, 0);
    v30 = (*a1)++;
    *v30 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2147), v42, 0, 0);
    v31 = (*a1)++;
    *v31 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2148), v42, 0, 0);
    v32 = (*a1)++;
    *v32 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2150), v42, 0, 0);
    v33 = (*a1)++;
    *v33 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2151), v42, 0, 0);
    v34 = (*a1)++;
    *v34 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2152), v42, 0, 0);
    v35 = (*a1)++;
    *v35 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2153), v42, 0, 0);
    v36 = (*a1)++;
    *v36 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2154), v42, 0, 0);
    v37 = (*a1)++;
    *v37 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2156), v42, 0, 0);
    v38 = (*a1)++;
    *v38 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2157), v42, 0, 0);
    v39 = (*a1)++;
    *v39 = 44;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf1da(a1, *(a3 + v22 + 2158), v42, 0, 0);
    v40 = (*a1)++;
    *v40 = 44;
    v21 = *a1;
    if (*a1 >= a1[3])
    {
      v21 = a1[2];
      *a1 = v21;
    }

    v22 += 24;
    v23 = (v23 + 1);
  }

  while (v22 != 72);

  return NMEA_Add_checksum(a1, v6);
}

char **NMEA_Encode_PDBGN(char **a1, uint64_t a2, unsigned __int16 *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = (*a1)++;
  *v5 = 36;
  v6 = *a1;
  if (*a1 >= a1[3])
  {
    v6 = a1[2];
  }

  v7 = 80;
  v8 = 1u;
  v9 = v6;
  do
  {
    *a1 = v9 + 1;
    *v9 = v7;
    v9 = *a1;
    if (*a1 >= a1[3])
    {
      v9 = a1[2];
      *a1 = v9;
    }

    v7 = aPdbgn[v8++];
  }

  while (v8 != 7);
  sprintf_HHMMSS(a1, a2);
  sprintf1da(a1, a3[1046], v17, 0, 0);
  v10 = (*a1)++;
  *v10 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1047], v17, 0, 0);
  v11 = (*a1)++;
  *v11 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1048], v17, 0, 0);
  v12 = (*a1)++;
  *v12 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1049], v17, 0, 0);
  v13 = (*a1)++;
  *v13 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1050], v17, 0, 0);
  v14 = (*a1)++;
  *v14 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1051], v17, 0, 0);
  v15 = (*a1)++;
  *v15 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1052], v17, 0, 0);

  return NMEA_Add_checksum(a1, v6);
}

uint64_t sprintf_LatLon(char **a1, double a2, double a3)
{
  v6 = a2;
  v7 = fabs((a2 - a2) * 60.0);
  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = -v6;
  }

  v9 = v7 * 1000000.0;
  v10 = -0.5;
  if (v9 > 0.0)
  {
    v10 = 0.5;
  }

  v11 = v9 + v10;
  if (v11 > 2147483650.0)
  {
    sprintf_02d(a1, v8);
    v12 = 0x7FFFFFFFLL;
    goto LABEL_13;
  }

  if (v11 >= -2147483650.0)
  {
    v12 = v11;
    sprintf_02d(a1, v8);
    if (v12 >= 10000000)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sprintf_02d(a1, v8);
    v12 = 0x80000000;
  }

  v13 = (*a1)++;
  *v13 = 48;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

LABEL_13:
  sprintf_7f(a1, v12, 7);
  v14 = ",N,";
  if (a2 < 0.0)
  {
    v14 = ",S,";
  }

  v15 = *v14;
  if (*v14)
  {
    v16 = *a1;
    v17 = (v14 + 1);
    do
    {
      *a1 = v16 + 1;
      *v16 = v15;
      v16 = *a1;
      if (*a1 >= a1[3])
      {
        v16 = a1[2];
        *a1 = v16;
      }

      v18 = *v17++;
      v15 = v18;
    }

    while (v18);
  }

  v19 = a3;
  v20 = fabs((a3 - a3) * 60.0);
  if (a3 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = -v19;
  }

  v22 = v20 * 1000000.0;
  v23 = -0.5;
  if (v22 > 0.0)
  {
    v23 = 0.5;
  }

  v24 = v22 + v23;
  if (v24 > 2147483650.0)
  {
    sprintf_03d(a1, v21);
    v25 = 0x7FFFFFFFLL;
    goto LABEL_32;
  }

  if (v24 >= -2147483650.0)
  {
    v25 = v24;
    sprintf_03d(a1, v21);
    if (v25 >= 10000000)
    {
      goto LABEL_32;
    }
  }

  else
  {
    sprintf_03d(a1, v21);
    v25 = 0x80000000;
  }

  v26 = (*a1)++;
  *v26 = 48;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

LABEL_32:
  result = sprintf_7f(a1, v25, 7);
  v28 = ",E,";
  if (a3 < 0.0)
  {
    v28 = ",W,";
  }

  v29 = *v28;
  if (*v28)
  {
    v30 = *a1;
    v31 = (v28 + 1);
    do
    {
      *a1 = v30 + 1;
      *v30 = v29;
      v30 = *a1;
      if (*a1 >= a1[3])
      {
        v30 = a1[2];
        *a1 = v30;
      }

      v32 = *v31++;
      v29 = v32;
    }

    while (v32);
  }

  return result;
}

char **sprintf_HHMMSS(char **result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 8) == 1)
  {
    sprintf_02d(result, *(a2 + 16));
    sprintf_02d(v2, *(a2 + 18));
    sprintf_02d(v2, *(a2 + 20));
    v4 = (*v2)++;
    *v4 = 46;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    result = sprintf_03d(v2, *(a2 + 22));
  }

  v5 = (*v2)++;
  *v5 = 44;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  return result;
}

char **NMEA_Add_checksum(uint64_t a1, _BYTE *a2)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *a2;
      if (v5 == 32)
      {
        LOBYTE(v5) = 48;
        *a2 = 48;
      }

      if (++a2 >= *(a1 + 24))
      {
        a2 = *(a1 + 16);
      }

      v4 ^= v5;
      v3 = *a1;
    }

    while (a2 != *a1);
    v6 = v4;
  }

  *a1 = v3 + 1;
  *v3 = 42;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  result = sprintf_02x(a1, v6);
  v8 = (*a1)++;
  *v8 = 10;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  return result;
}

uint64_t sprintf_DOP(uint64_t result, double a2)
{
  if (a2 < 99.0)
  {
    v2 = a2 * 100.0;
    v3 = -0.5;
    if (v2 > 0.0)
    {
      v3 = 0.5;
    }

    v4 = v2 + v3;
    if (v4 <= 2147483650.0)
    {
      if (v4 >= -2147483650.0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0x80000000;
      }
    }

    else
    {
      v5 = 0x7FFFFFFFLL;
    }

    return sprintf_3f(result, v5, 3);
  }

  return result;
}

double sprintf_AccEst(char **a1, double result)
{
  v18 = *MEMORY[0x29EDCA608];
  if (result < 99999.0)
  {
    if (result <= 9.9)
    {
      if (result <= 0.99)
      {
        if (result <= 0.099)
        {
          v13 = result * 1000.0;
          v14 = -0.5;
          if (v13 > 0.0)
          {
            v14 = 0.5;
          }

          v15 = v13 + v14;
          if (v15 <= 2147483650.0)
          {
            if (v15 >= -2147483650.0)
            {
              v16 = v15;
            }

            else
            {
              v16 = 0x80000000;
            }
          }

          else
          {
            v16 = 0x7FFFFFFFLL;
          }

          sprintf_4f(a1, v16, 4);
        }

        else
        {
          v9 = result * 100.0;
          v10 = -0.5;
          if (v9 > 0.0)
          {
            v10 = 0.5;
          }

          v11 = v9 + v10;
          if (v11 <= 2147483650.0)
          {
            if (v11 >= -2147483650.0)
            {
              v12 = v11;
            }

            else
            {
              v12 = 0x80000000;
            }
          }

          else
          {
            v12 = 0x7FFFFFFFLL;
          }

          sprintf_3f(a1, v12, 3);
        }
      }

      else
      {
        v5 = result * 10.0;
        v6 = -0.5;
        if (v5 > 0.0)
        {
          v6 = 0.5;
        }

        v7 = v5 + v6;
        if (v7 <= 2147483650.0)
        {
          if (v7 >= -2147483650.0)
          {
            v8 = v7;
          }

          else
          {
            v8 = 0x80000000;
          }
        }

        else
        {
          v8 = 0x7FFFFFFFLL;
        }

        sprintf_2f(a1, v8);
      }
    }

    else
    {
      v2 = result + 0.5;
      if (v2 >= 2147483650.0)
      {
        v2 = 2147483650.0;
      }

      v3 = v2;
      if (v2 >= 0)
      {
        v4 = v3;
      }

      else
      {
        v4 = -v3;
      }

      sprintf1da(a1, v4, v17, 0, v3 >> 31);
    }
  }

  return result;
}

void ECEF2Geo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  if (*a2)
  {
    v6 = v5 + *(a2 + 48);
    v7 = *(a1 + 8);
    v8 = vaddq_f64(v7, *(a2 + 56));
    if (*(a2 + 2) == 1)
    {
      v9 = 0;
      v10 = (a2 + 88);
      do
      {
        v11 = v7.f64[0] * *(v10 - 1) + *(v10 - 2) * v5;
        v12 = *v10;
        v10 += 3;
        *(&v23 + v9) = v11 + v12 * v7.f64[1];
        v9 += 8;
      }

      while (v9 != 24);
      v5 = v6 + v23;
      v8 = vaddq_f64(v8, v24);
    }

    else
    {
      v5 = v5 + *(a2 + 48);
    }
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v13 = vmulq_f64(v8, v8).f64[0] + v5 * v5;
  v14 = *(a2 + 24);
  v15 = 1.0 / *(a2 + 16);
  v16 = v13 * v15;
  v17 = v8.f64[1];
  v18 = vmuld_lane_f64(v8.f64[1], v8, 1) * v15;
  v21 = 3;
  do
  {
    v19 = *(a2 + 32);
    v20 = *(a2 + 40) * v18;
    v14 = v14 - ((v20 + v20) * (v14 * (v14 * v14)) + v20 * (v14 * v14) * (v14 * v14) + (v16 + v20 - v19) * (v14 * v14) + v19 * -2.0 * v14 - v19) / (v19 * -2.0 + (v20 + v20) * 3.0 * (v14 * v14) + v20 * 4.0 * (v14 * (v14 * v14)) + (v16 + v20 - v19 + v16 + v20 - v19) * v14);
    --v21;
  }

  while (v21);
  v22 = v14 + 1.0;
  if (fabs(v5) >= 0.001 || fabs(v8.f64[0]) >= 0.001)
  {
    *(a3 + 8) = atan2(v8.f64[0], v5);
  }

  else
  {
    *(a3 + 8) = 0;
    v8.f64[0] = 0.0;
    if (fabs(v8.f64[1]) < 0.001)
    {
      goto LABEL_16;
    }
  }

  v8.f64[0] = atan2(v17 * v22, sqrt(v13));
LABEL_16:
  *a3 = v8.f64[0];
  *(a3 + 16) = *(a2 + 8) * (sqrt(v18 + v16 / (v22 * v22)) * (1.0 - v14 * *(a2 + 40) / *(a2 + 24)));
}

BOOL NK_Body_Frame_Meas(unsigned int a1, double *a2, const double *a3, const double (*a4)[3], double a5, unsigned int a6, double *a7)
{
  v29[33] = *MEMORY[0x29EDCA608];
  v12 = &v27[2];
  ECEF2FSD_RotM(a4, a5, v27);
  v13 = 0;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  do
  {
    v17 = *(v12 - 1) * v15 + *(v12 - 2) * v14;
    v18 = *v12;
    v12 += 3;
    v27[v13 + 9] = v17 + v18 * v16;
    ++v13;
  }

  while (v13 != 3);
  v19 = 0;
  v24 = 0.0;
  v20 = &v27[2];
  do
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v21 = *(v20 - 1);
    *(v25 + a1) = *(v20 - 2);
    *(v25 + a1 + 1) = v21;
    v22 = *v20;
    v20 += 3;
    *(&v25[1] + a1) = v22;
    *(v25 + a6) = v27[v19 + 9];
    result = umeas(a7, a6, a3[v19++], v25, v29, v28, &v24, 1.0e20);
  }

  while (v19 != 3);
  return result;
}

void NK_Static_Filter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v127[3] = *MEMORY[0x29EDCA608];
  v7 = a1 + 0x2000;
  v114 = *(a1 + 11032);
  if (v114 <= *(a1 + 16) && *(a2 + 968) == 1)
  {
    v8 = *(a1 + 140);
    if (v8 >= *(a1 + 144))
    {
      v8 = *(a1 + 144);
    }

    if (v8 >= *(a1 + 148))
    {
      v8 = *(a1 + 148);
    }

    v9 = v8 < 0xB;
  }

  else
  {
    v9 = 1;
  }

  v115 = v9;
  memcpy(__dst, (a1 + 872), sizeof(__dst));
  v10 = 0;
  v11 = *(a2 + 688) - *&__dst[37];
  v12 = *(a2 + 696) - *(&__dst[37] + 1);
  v13 = *(a2 + 704) - *&__dst[38];
  v14 = (a2 + 848);
  do
  {
    v15 = v12 * *(v14 - 1) + *(v14 - 2) * v11;
    v16 = *v14;
    v14 += 3;
    *&v127[v10++] = v15 + v16 * v13;
  }

  while (v10 != 3);
  v18 = *v127;
  v17 = *&v127[1];
  v19 = sqrt(v17 * v17 + v18 * v18);
  v20 = *(a2 + 24200);
  v21 = *(a2 + 24208);
  *(a1 + 11128) = v19;
  *(a1 + 11152) = *(a1 + 11152) * 0.6 + v19 * 0.4;
  v22 = 4.0;
  if (v19 < 8.0)
  {
    v22 = 2.0;
    if (v19 >= 6.0)
    {
      v22 = 3.0;
    }
  }

  v23 = v20 + v21;
  v24 = *(a1 + 11144);
  if (*(a1 + 11028) < 3u || (v19 > v24 ? (v25 = v22 * v22 <= v23) : (v25 = 1), v25 || (*(a1 + 233) & 1) != 0))
  {
    v26 = 6.0;
    if (v19 <= 6.0 || v24 >= 6.0)
    {
      if (*(a1 + 11116) == 3)
      {
        v30 = v24 + -0.003;
        v26 = v19;
        if (v19 > v24 + -0.003)
        {
          goto LABEL_38;
        }

        v31 = 0.003;
      }

      else
      {
        v30 = v24 + -0.01;
        v26 = v19;
        if (v19 > v24 + -0.01)
        {
          goto LABEL_38;
        }

        v31 = 0.01;
      }

      v25 = v24 <= v31;
      v26 = *(a1 + 11144);
      if (!v25)
      {
        v26 = v30;
      }
    }
  }

  else
  {
    v26 = 10.0;
    if (v19 <= 10.0)
    {
      v27 = v24 + 0.5;
      if (v19 > v27 && v19 < 8.0)
      {
        v26 = v27;
      }

      else
      {
        v26 = v19;
      }
    }
  }

LABEL_38:
  *(a1 + 11144) = v26;
  v32 = *(a2 + 22736);
  if (v32 == 1 && *(a2 + 22732) != 1)
  {
    v33 = *(v7 + 2970);
  }

  else
  {
    *(v7 + 2969) = v26 <= 4.0;
    v33 = v26 > 4.0;
    *(v7 + 2970) = v26 > 4.0;
    if (v32 != 1)
    {
      if (v26 > 4.0)
      {
        v34 = 8;
      }

      else
      {
        v34 = 4;
      }

      *(a2 + 22732) = v34;
      *(a2 + 22736) = 0;
    }
  }

  if (v33)
  {
    v35 = 0.3;
  }

  else
  {
    v35 = 0.1;
  }

  if (*(a2 + 22724) == 1)
  {
    v36 = *(a2 + 22756);
  }

  else
  {
    v36 = 0;
  }

  v37 = *(a1 + 11268);
  v113 = v33;
  if (v37 == 20)
  {
    v37 = 19;
  }

  else if (!v37)
  {
    v38 = a3;
    *(a1 + 11400) = 0u;
    *(a1 + 11416) = 0u;
    *(a1 + 11368) = 0u;
    *(a1 + 11384) = 0u;
    *(a1 + 11336) = 0u;
    *(a1 + 11352) = 0u;
    *(a1 + 11304) = 0u;
    *(a1 + 11320) = 0u;
    *(a1 + 11272) = 0u;
    *(a1 + 11288) = 0u;
    goto LABEL_57;
  }

  v38 = a3;
  memmove((a1 + 11280), (a1 + 11272), 8 * v37);
LABEL_57:
  v39 = (a1 + 11272);
  *(a1 + 11272) = *(a2 + 944);
  v40 = v37 + 1;
  *(a1 + 11268) = v37 + 1;
  v41 = *(a1 + 11384);
  v125[6] = *(a1 + 11368);
  v125[7] = v41;
  v42 = *(a1 + 11416);
  v125[8] = *(a1 + 11400);
  v125[9] = v42;
  v43 = *(a1 + 11320);
  v125[2] = *(a1 + 11304);
  v125[3] = v43;
  v44 = *(a1 + 11352);
  v125[4] = *(a1 + 11336);
  v125[5] = v44;
  v45 = *(a1 + 11288);
  v125[0] = *(a1 + 11272);
  v125[1] = v45;
  VecSortAscR8(v125, 0, v37);
  v46 = (v37 + 1) >> 1;
  if (v37)
  {
    if (v37 == -1)
    {
      v48 = 0.0;
      goto LABEL_71;
    }

    v47 = (*(v125 + v46 - 1) + *(v125 + v46)) * 0.5;
  }

  else
  {
    v47 = *(v125 + v46);
  }

  v48 = 0.0;
  v49 = v37 + 1;
  do
  {
    v50 = *v39++;
    v51 = v50;
    if (v50 > v47 * 4.3512 && v47 > 1.0 && v40 == 20)
    {
      v51 = v47;
    }

    v48 = v48 + v51;
    --v49;
  }

  while (v49);
LABEL_71:
  v54 = v35 * 1.5;
  *(a1 + 11432) = v48 / v40;
  if (v19 >= 3.0 || v23 >= v54 * 3.0 * (v54 * 3.0))
  {
    *(v7 + 2972) = 0;
    v56 = v38;
    v57 = a2 + 20480;
    v58 = v115;
    goto LABEL_134;
  }

  v55 = *(v7 + 2972);
  v56 = v38;
  if (v55 == 5)
  {
    v60 = 4;
    *(v7 + 2972) = 4;
    v57 = a2 + 20480;
    v58 = v115;
    goto LABEL_80;
  }

  v57 = a2 + 20480;
  v58 = v115;
  if (!*(v7 + 2972))
  {
    v59 = 0;
    *(a1 + 11168) = 0u;
    *(a1 + 11184) = 0;
    goto LABEL_82;
  }

  v60 = *(v7 + 2972);
  if (v55 >= 1)
  {
LABEL_80:
    v59 = 0;
    v55 = 0;
    v61 = v60 + 1;
    v62 = (a1 + 2 * v60 + 11174);
    do
    {
      v63 = *(v62 - 5);
      *(v62 - 4) = *(v62 - 5);
      v64 = *v62;
      v62[1] = *v62;
      v55 += v63;
      v59 += v64;
      --v61;
      --v62;
    }

    while (v61 > 1);
    goto LABEL_82;
  }

  v55 = 0;
  v59 = 0;
LABEL_82:
  v65 = -0.5;
  if (v18 * 1000.0 <= 0.0)
  {
    v66 = -0.5;
  }

  else
  {
    v66 = 0.5;
  }

  v67 = v18 * 1000.0 + v66;
  if (v67 <= 2147483650.0)
  {
    if (v67 >= -2147483650.0)
    {
      v68 = v67;
    }

    else
    {
      LOWORD(v68) = 0;
    }
  }

  else
  {
    LOWORD(v68) = -1;
  }

  *(v7 + 2974) = v68;
  if (v17 * 1000.0 > 0.0)
  {
    v65 = 0.5;
  }

  v69 = v17 * 1000.0 + v65;
  if (v69 <= 2147483650.0)
  {
    if (v69 >= -2147483650.0)
    {
      v70 = v69;
    }

    else
    {
      LOWORD(v70) = 0;
    }
  }

  else
  {
    LOWORD(v70) = -1;
  }

  *(v7 + 2984) = v70;
  v71 = *(v7 + 2972) + 1;
  *(v7 + 2972) = v71;
  if ((v36 & 1) == 0)
  {
    v72 = ((v55 + v68) * (v55 + v68) + (v59 + v70) * (v59 + v70)) / (v71 * v71);
    if (v71 < 5)
    {
      v75 = v113;
      if (v71 < 3)
      {
        v78 = 0;
LABEL_124:
        v85 = 0.01;
        if (v75)
        {
          v85 = 0.09;
        }

        v36 = v19 * v19 <= v23 * 9.0 && (v23 * 9.0 + v19 * v19 < v85 || v78);
        goto LABEL_129;
      }
    }

    else
    {
      v73 = -0.5;
      if (v54 * 1000.0 > 0.0)
      {
        v73 = 0.5;
      }

      v74 = v54 * 1000.0 + v73;
      v75 = v113;
      if (v74 <= 2147483650.0)
      {
        v79 = -2147483650.0;
        if (v74 > -2147483650.0)
        {
          v79 = v74;
        }

        v76 = v79;
        if (v74 < -2147483650.0)
        {
          v77 = 0x80000000;
        }

        else
        {
          v77 = v74;
        }
      }

      else
      {
        v76 = 0x7FFFFFFF;
        v77 = 0x7FFFFFFF;
      }

      if (v72 < v77 * v76)
      {
        v78 = 1;
        goto LABEL_124;
      }
    }

    v80 = -0.5;
    if (v35 * 1000.0 > 0.0)
    {
      v80 = 0.5;
    }

    v81 = v35 * 1000.0 + v80;
    if (v81 <= 2147483650.0)
    {
      v84 = -2147483650.0;
      if (v81 > -2147483650.0)
      {
        v84 = v35 * 1000.0 + v80;
      }

      v82 = v84;
      if (v81 < -2147483650.0)
      {
        v83 = 0x80000000;
      }

      else
      {
        v83 = v81;
      }
    }

    else
    {
      v82 = 0x7FFFFFFF;
      v83 = 0x7FFFFFFF;
    }

    v78 = v72 < v83 * v82;
    goto LABEL_124;
  }

  v36 = 1;
LABEL_129:
  if (*(v57 + 2244) != 1)
  {
    if (v36)
    {
      v86 = 2;
    }

    else
    {
      v86 = 3;
    }

    *(v57 + 2240) = v86;
    *(v57 + 2244) = 0;
  }

LABEL_134:
  v87 = (v7 + 2924);
  v88 = *(v7 + 2924);
  if (v88 > 1)
  {
    if (v88 != 3)
    {
      if (v88 == 2)
      {
        v90 = v114 != 0;
        goto LABEL_144;
      }

LABEL_148:
      gn_report_assertion_failure("switch/case error NK_Static_Filter.c");
      goto LABEL_163;
    }

    if (v114 || v19 > 3.0)
    {
LABEL_159:
      *(a1 + 11116) = 0;
      goto LABEL_163;
    }

    if (v19 <= v54 && v36 & 1 | (v19 <= v35))
    {
LABEL_158:
      *(a1 + 11136) = *a2;
      goto LABEL_163;
    }

    v92 = 2;
LABEL_162:
    *v87 = v92;
    goto LABEL_163;
  }

  if (!v88)
  {
    if (v19 > 2.0)
    {
      v91 = 1;
    }

    else
    {
      v91 = v58;
    }

    if (v91)
    {
      goto LABEL_163;
    }

    v92 = 1;
    goto LABEL_162;
  }

  if (v88 != 1)
  {
    goto LABEL_148;
  }

  v89 = *(a1 + 11120);
  *(a1 + 11120) = v89 + 1;
  if (!v114 && v19 <= 3.0)
  {
    if (v89 < 1)
    {
      goto LABEL_163;
    }

    v90 = 0;
    *v87 = 2;
LABEL_144:
    if (v19 <= 3.0 && !v90)
    {
      if (!(v36 & 1 | (v19 <= v35)))
      {
        goto LABEL_163;
      }

      *(a1 + 11116) = 3;
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  *v87 = 0;
LABEL_163:
  if (((*(v7 + 2969) | v36) & 1) != 0 || *(v7 + 2970) == 1 && v19 < 3.0 && v23 < 4.0 && *(a1 + 11028) >= 3u)
  {
    LOBYTE(v118.f64[0]) = 0;
    LODWORD(v120) = 0;
    LOBYTE(v116) = 0;
    if (Core_Get_Static_Status(&v116) && !(v36 & 1 | (v116 < 0xAu)))
    {
      EvLog_nd("NKSF:  Static override", 2, v93, v116, *(a1 + 11116));
      *(a1 + 11116) = 3;
      *(a1 + 11136) = *a2;
    }

    if (Core_Get_Ped_Status(&v120, &v118))
    {
      v95 = v116;
      if (LODWORD(v120) == 2 && v116 > 2u)
      {
LABEL_170:
        if (*(v7 + 2970) == 1)
        {
          *(v7 + 2969) = 1;
          *(a1 + 11144) = v19;
          *(a1 + 20) = 2;
          EvLog_nd("NKSF:  PED_STOPPED:  Car -> Ped override", 2, v94, v95, LOBYTE(v118.f64[0]));
        }

        *(a1 + 11116) = 3;
        *(a1 + 11136) = *a2;
        goto LABEL_190;
      }

      if (SLODWORD(v120) <= 1)
      {
        if (!LODWORD(v120))
        {
          goto LABEL_190;
        }

        if (LODWORD(v120) == 1)
        {
          goto LABEL_170;
        }

LABEL_186:
        EvCrt_Illegal_Default("NK_Static_Filter", 576);
        goto LABEL_190;
      }

      if (LODWORD(v120) == 2)
      {
        if (*(v7 + 2970) == 1)
        {
          *(v7 + 2969) = 1;
          *(a1 + 11144) = v19;
          *(a1 + 20) = 2;
          EvLog_nd("NKSF:  PED_WALKING:  Car -> Ped override", 2, v94, v95, LOBYTE(v118.f64[0]));
        }

        *v87 = 2;
      }

      else
      {
        if (LODWORD(v120) != 3)
        {
          goto LABEL_186;
        }

        if (*(v7 + 2969) == 1)
        {
          EvLog_nd("NKSF:  PED_NOT_PED:  Ped -> Car indication", 2, v94, v116, LOBYTE(v118.f64[0]));
        }
      }
    }
  }

LABEL_190:
  if (!((*(v56 + 66) != 4) | v58 & 1) && (*v87 == 3 || *v87 == 2 && *(v7 + 2970) == 1))
  {
    LOWORD(v118.f64[0]) = 0;
    v122[0] = 0;
    v121 = 0;
    memset(&v122[4], 0, 32);
    v123 = 0u;
    v124 = 0;
    *&v122[8] = *(a2 + 816);
    *&v122[16] = 0x4010000000000000;
    HIDWORD(v120) = 2;
    LOBYTE(v120) = 1;
    *(&v123 + 4) = 0x412E848000000000;
    Vert_Meas_Update(5u, (a2 + 832), 0xBu, &v120, __dst, &v118, *&v122[8]);
    v96 = *(a1 + 11248);
    if (v96 && *(v7 + 2970) == 1 && *(a1 + 11028))
    {
      v96 += *(a2 + 8);
      *(a1 + 11248) = v96;
    }

    if ((*(v57 + 2276) & 1) == 0)
    {
      v120 = 0.0;
      v121 = 0;
      *v122 = 0;
      __asm { FMOV            V0.2D, #4.0 }

      v116 = _Q0;
      v117 = 0x4010000000000000;
      if (v96 && *a2 - v96 <= 30000)
      {
        v100 = (a1 + 11240);
        v101 = 1;
        v102 = a4;
      }

      else
      {
        v102 = a4;
        if (*(a1 + 11188) < 2 || *a2 - *(a1 + 11208) > 30000)
        {
          v101 = 0;
          v100 = (a2 + 952);
        }

        else
        {
          v100 = (a1 + 11192);
          v101 = 1;
        }
      }

      v103 = 0;
      v104 = *v100;
      *(v7 + 2968) = v101;
      v105 = *(a2 + 688);
      v118 = vsubq_f64(v105, __dst[37]);
      v106 = *(a2 + 704);
      v119 = v106 - *&__dst[38];
      do
      {
        *&v122[8 * v103] = *(&v118 + v103 + 2) - *(v102 + 112 + 8 * v103);
        v107 = v103 + 3;
        --v103;
      }

      while (v107 > 1);
      v108 = 0;
      v118 = v105;
      v119 = v106;
      do
      {
        *&v122[8 * v108] = *(&v118 + v108 + 2) - *(v102 + 112 + 8 * v108);
        v109 = v108 + 3;
        --v108;
      }

      while (v109 > 1);
      NK_Body_Frame_Meas(8u, &v120, &v116, (a2 + 832), v104 * 0.0174532925, 0xBu, __dst);
    }

    *(a1 + 1480) = *&__dst[38];
    v110 = __dst[36];
    *(a1 + 1432) = __dst[35];
    *(a1 + 1448) = v110;
    *(a1 + 1464) = __dst[37];
    v111 = __dst[34];
    *(a1 + 1400) = __dst[33];
    *(a1 + 1416) = v111;
  }

  else
  {
    *(v7 + 2968) = 0;
  }
}

double *Comp_GSpeed_Partial(double a1, double a2, double *result, double *a4)
{
  if (fabs(a1) > 0.0001 || fabs(a2) > 0.0001)
  {
    v10 = 1.0 / sqrt(a1 * a1 + a2 * a2);
    *a4 = v10 * (*result * a1 + result[3] * a2);
    a4[1] = v10 * (result[1] * a1 + result[4] * a2);
    v9 = v10 * (result[2] * a1);
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    *a4 = _Q0;
    v9 = 1.0;
  }

  a4[2] = v9;
  return result;
}

void AzEl_RadDeg(uint64_t a1, uint64_t a2)
{
  v4 = asin(*(a2 + 8));
  *(a2 + 24) = v4;
  *(a2 + 32) = v4 * 57.2957795;
  *a2 = (v4 * 57.2957795 + 0.5) - (v4 * 57.2957795 < -0.5);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (fabs(v5) > 0.00001 || fabs(v6) > 0.00001)
  {
    v8 = atan2(v5, v6);
    v9 = v8 * 57.2957795;
    if (v8 * 57.2957795 < 0.0)
    {
      v9 = v8 * 57.2957795 + 360.0;
    }

    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    v7 = (v9 + 0.5);
    if (v7 == 360)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *a1 = v7;
}

uint64_t MGen_Init(int64x2_t *a1)
{
  InitIMUGen(a1);
  a1[59].i64[1] = 0xFFEFFFFFFFFFFFFFLL;
  a1[60] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v2 = 0.0;
  Set_Mat_Const(3, 1u, 3, a1[61].i32, 0.0);
  MotionCtxGen_Init(a1[63].i64);
  a1[93].i8[12] = 0;
  a1[93].i32[2] = 0;
  a1[107].i32[2] = 0;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v3 = mach_continuous_time();
    if (g_TCU)
    {
      v2 = *(g_TCU + 8);
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "MGen_Init", 61, (*&g_MacClockTicksToMsRelation * v3), v2, "MeasGen Init process done ");
  }

  return 1;
}

uint64_t MGen_generateMeas(const char *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v11 = *(g_TCU + 8);
    }

    else
    {
      v11 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "MGen_generateMeas", 82, v10, v11, "generate measurements");
  }

  GnssGen_run(a4 + 1496);
  MotionCtxGen_Run(a4 + 1008, a3, a2, a5, a1);
  v12 = IMUGen_run(a4, a3, a2, a5, a1, a4 + 1008);
  DEMGen_run((a4 + 952), a3, a2, a5, a1);
  MAPGen_run((a4 + 960), a3, a2, a5, a1);
  POSGen_run((a4 + 968), a3, a2, a5, a1);
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v14 = *(g_TCU + 8);
    }

    else
    {
      v14 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "MGen_generateMeas", 124, v13, v14, "generate measurements done");
  }

  return v12;
}

void Hal02_RouteZxPkt(unsigned __int8 *a1, size_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
LABEL_16:
    LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
    return;
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
    goto LABEL_16;
  }

  v4 = a1[2];
  if (v4 > 0x4E)
  {
    if (a1[2] > 0x55u)
    {
      if (v4 != 86 && v4 != 88)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v4 == 79)
      {
        if ((a1[3] | 4) != 0x54)
        {
          return;
        }

        goto LABEL_32;
      }

      if (v4 != 84)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v8 = g_CbList;
    if (!g_CbList)
    {
      return;
    }

    goto LABEL_33;
  }

  if (a1[2] > 0x48u)
  {
    if (v4 != 73)
    {
      goto LABEL_32;
    }

    Hal29_HandleCpAgentResponse(a1, a2);
  }

  else
  {
    if (v4 != 66)
    {
      if (v4 == 68)
      {
        v5 = a1[3];
        if ((dword_2A191DCD0 - 2472) < 2 || dword_2A191DCD0 == 1107)
        {
          if (v5 != 77 && v5 != 70)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (dword_2A191DCD4 != 4 || dword_2A191DCD0 != 3431 || xmmword_2A191DCC0 != 0x100000002)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v10 = mach_continuous_time();
              v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssHw\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 87, "Hal02_CheckDebugConfigMsg", 515);
              LbsOsaTrace_WriteLog(0xDu, __str, v11, 2, 1);
            }

            goto LABEL_50;
          }

          v9 = v5 - 68;
          if (v9 > 8 || ((1 << v9) & 0x121) == 0)
          {
LABEL_50:
            if (dword_2A191DCD4 == 4 && dword_2A191DCD0 == 3431 && xmmword_2A191DCC0 == 0x100000002 && (v12 = a1[3] - 67, v12 <= 0x17) && ((1 << v12) & 0x812021) != 0)
            {
              v13 = (a2 - 2);
            }

            else
            {
              v13 = a2;
            }

            GnssDbgMgr_WriteLog(v13, a1);
            return;
          }
        }

        goto LABEL_29;
      }

LABEL_32:
      v8 = qword_2A1939590;
      if (!qword_2A1939590)
      {
        return;
      }

LABEL_33:

      v8(a2, a1);
      return;
    }

    v7 = a1[3];
    if (v7 == 83)
    {
      goto LABEL_32;
    }

    if (v7 == 66)
    {
      goto LABEL_29;
    }

    Hal02_HandleResp(a1, a2);
  }
}

double Hal02_07ChipRead(void)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: transPrep success\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 68, "Hal02_07ChipRead");
    LbsOsaTrace_WriteLog(0xDu, __str, v1, 5, 1);
  }

  if ((*(*gp_Comm + 48))(gp_Comm))
  {
    do
    {
      Data = Hal_CommsItfReadData(g_ReadBuffer, 0x1800u);
      if (Data)
      {
        v4 = Data;
        if ((Data & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

        if (Data > 0x1800)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v5 = mach_continuous_time();
            v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NumOfBytesRead,%u,Maxbufsize,%u\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal02_07ChipRead", 772, v4, 6144);
            LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
          }

          memset_s(g_ReadBuffer, 0x1800uLL, 0, 0x1800uLL);
        }

        else
        {
          Hal02_06ParsezxPacket(g_ReadBuffer, Data, v3);
        }
      }
    }

    while (((*(*gp_Comm + 48))(gp_Comm) & 1) != 0);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "Hal02_07ChipRead", 1281);
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
  }

LABEL_14:
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RdrThrd exit\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 73, "Hal02_07ChipRead");
    LbsOsaTrace_WriteLog(0xDu, __str, v11, 4, 1);
  }

  return result;
}

void Hal02_06ParsezxPacket(unsigned __int8 *a1, size_t a2, uint8x8_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__n_4, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_9;
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__n_4, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
LABEL_9:
    LbsOsaTrace_WriteLog(0xDu, __n_4, v6, 0, 1);
    return;
  }

  v4 = a1;
  if (_MergedGlobals_4)
  {
    memcpy_s("Hal02_06ParsezxPacket", 355, &g_ProccessBuff, 0x2000u, &unk_2A19717A8, _MergedGlobals_4);
    memcpy_s("Hal02_06ParsezxPacket", 356, &g_ProccessBuff + _MergedGlobals_4, 0x2000 - _MergedGlobals_4, v4, a2);
    v5 = _MergedGlobals_4;
    v4 = &g_ProccessBuff;
  }

  else
  {
    v5 = 0;
  }

  __n = v5 + a2;
  _MergedGlobals_4 = 0;
  __n_2 = 0;
  if (v5 + a2)
  {
    v7 = &g_ReadBuffer[4424];
    while (1)
    {
      v8 = &v4[__n_2];
      if (__n <= 7u)
      {
        memcpy_s("Hal02_06ParsezxPacket", 375, &unk_2A19717A8, 0x800u, v8, __n);
        _MergedGlobals_4 = __n;
        return;
      }

      if (*v8 != 122 || v8[1] != 120)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
        {
          bzero(__n_4, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: 0x%02x,0x%02x\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 68, "Hal02_06ParsezxPacket", *v8, v8[1]);
          LbsOsaTrace_WriteLog(0xDu, __n_4, v15, 5, 1);
        }

        ++__n_2;
        --__n;
        ++dword_2A19717A4;
        HIDWORD(v16) = 652835029 * dword_2A19717A4;
        LODWORD(v16) = 652835029 * dword_2A19717A4;
        if ((v16 >> 3) <= 0x418937 && LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
        {
          bzero(__n_4, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx Err,%u\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 87, "Hal02_06ParsezxPacket", 770, dword_2A19717A4);
          LbsOsaTrace_WriteLog(0xDu, __n_4, v18, 2, 1);
        }

        goto LABEL_29;
      }

      a3.i32[0] = *(v8 + 2);
      v9 = vmovl_u8(a3).u64[0];
      v10 = v8[6];
      if (v8[7] != (vaddv_s16(v9) + v10))
      {
        break;
      }

      v11 = v9.u16[3] | (v10 << 8);
      if (v11 >= 0x7F8)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
        {
          bzero(__n_4, 0x410uLL);
          v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          ++*(v7 + 488);
          v13 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u,Pktloss,%u\n", v12);
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v20 = v11 + 9;
      if (((v11 + 9) & 3) != 0)
      {
        v21 = 4 - ((v11 + 9) & 3);
      }

      else
      {
        v21 = 0;
      }

      if (v21 + v20 > __n)
      {
        memcpy_s("Hal02_06ParsezxPacket", 431, &unk_2A19717A8, 0x800u, &v4[__n_2], __n);
        _MergedGlobals_4 = __n;
        return;
      }

      if (v4[v11 + 8 + __n_2] == 10)
      {
        if (dword_2A19717A4)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
          {
            bzero(__n_4, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: zx pkt recd ,prev invalid data,%u\n", (*&g_MacClockTicksToMsRelation * v22), "HAL", 68, "Hal02_06ParsezxPacket", dword_2A19717A4);
            LbsOsaTrace_WriteLog(0xDu, __n_4, v23, 5, 1);
          }

          dword_2A19717A4 = 0;
        }

        if (g_RouteZxData)
        {
          g_RouteZxData(&v4[__n_2], (v11 + 9));
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
        {
          bzero(__n_4, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: RouteZxData is NULL\n", (*&g_MacClockTicksToMsRelation * v28), "HAL", 87, "Hal02_06ParsezxPacket");
          LbsOsaTrace_WriteLog(0xDu, __n_4, v29, 2, 1);
        }

        if (((v11 + 9) & 3) != 0)
        {
          v30 = (4 - ((v11 + 9) & 3));
          v31 = &v4[v20];
          v7 = g_ReadBuffer + 4424;
          while (v31[__n_2] != 122)
          {
            ++v31;
            if (!--v30)
            {
              goto LABEL_56;
            }
          }

          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
          {
            bzero(__n_4, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: Msg not 4byte aligned zx%c%c%c\n", (*&g_MacClockTicksToMsRelation * v32), "HAL", 87, "Hal02_06ParsezxPacket", v4[__n_2], v4[__n_2 + 1], v4[__n_2 + 2]);
            LbsOsaTrace_WriteLog(0xDu, __n_4, v33, 2, 1);
          }

          LOBYTE(v21) = 0;
        }

        else
        {
          LOBYTE(v21) = 0;
          v7 = g_ReadBuffer + 4424;
        }

LABEL_56:
        __n = __n - (v11 + v21) - 9;
        __n_2 += v20 + v21;
      }

      else
      {
        v7 = &g_ReadBuffer[4424];
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
        {
          bzero(__n_4, 0x410uLL);
          v24 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v25 = v4[__n_2 + 2];
          v26 = v4[__n_2 + 3];
          v27 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,Pktloss,%u\n", v24, "HAL", 87, "Hal02_06ParsezxPacket", 782, v25, v26, ++dword_2A19717A0);
          LbsOsaTrace_WriteLog(0xDu, __n_4, v27, 2, 1);
        }

        ++__n_2;
        --__n;
      }

LABEL_29:
      if (!__n)
      {
        return;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
    {
      bzero(__n_4, 0x410uLL);
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      ++*(v7 + 488);
      v13 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx rcvd,0x%02x,computed,0x%02x,Pktloss,%u\n", v19, "HAL");
LABEL_27:
      LbsOsaTrace_WriteLog(0xDu, __n_4, v13, 2, 1);
    }

LABEL_28:
    ++__n_2;
    --__n;
    goto LABEL_29;
  }
}

void Hal02_AsyncReadCb(unsigned __int8 *a1, size_t a2, uint8x8_t a3)
{
  v3 = a2;
  v4 = a1;
  v8 = *MEMORY[0x29EDCA608];
  if (a2 > 0x1800)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx v_RxBufferSize %u,processing %u bytes\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 87, "Hal02_AsyncReadCb", 772, v3, 6144);
      LbsOsaTrace_WriteLog(0xDu, __str, v6, 2, 1);
    }

    a1 = v4;
    a2 = 6144;
  }

  else
  {
    a2 = a2;
  }

  Hal02_06ParsezxPacket(a1, a2, a3);
  if (v4)
  {
    free(v4);
  }
}

uint64_t Hal02_DeInitParser(void)
{
  result = memset_s(&unk_2A19717A8, 0x800uLL, 0, 0x800uLL);
  _MergedGlobals_4 = 0;
  g_RouteZxData = Hal02_RouteZxPkt;
  return result;
}

void Hal02_RouteZxPktProd(unsigned __int8 *a1, size_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_7;
  }

  if (a2 <= 7)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
LABEL_7:
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
    return;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Data,MC,%c,MID,%c,MIDX,%c\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 68, "Hal02_RouteZxPktProd", a1[2], a1[3], a1[4]);
    LbsOsaTrace_WriteLog(0xDu, __str, v7, 5, 1);
  }

  v8 = a1[2];
  if (v8 == 73)
  {
    Hal29_HandleCpAgentResponse(a1, a2);
  }

  else if (v8 == 66)
  {
    Hal02_HandleResp(a1, a2);
  }

  else if (g_CbList)
  {
    g_CbList(a2, a1, v5);
  }
}

void Hal02_HandleResp(unsigned __int8 *a1, size_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (Hal11_HandleEvent(a1[3], a1, a2))
  {
    return;
  }

  if (g_HalState <= 8)
  {
    if ((g_HalState - 4) < 5)
    {

      Hal19_HandlePatchResp(a1, a2);
      return;
    }

    if (g_HalState < 2)
    {
      return;
    }

    if ((g_HalState - 2) < 2)
    {

      Hal17_HandleReset(a1, a2);
      return;
    }

LABEL_39:
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%u,MC,%c,MID,%c,MIDE,%c\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 87, "Hal02_HandleResp", 262, g_HalState, a1[2], a1[3], a1[4]);
      LbsOsaTrace_WriteLog(0xDu, __str, v5, 2, 1);
    }

    return;
  }

  if (g_HalState <= 12)
  {
    if ((g_HalState - 9) < 2)
    {

      Hal15_HandleRevResp(a1, a2);
      return;
    }

    if (g_HalState == 11)
    {

      Hal18_HandleBaudResp(a1, a2);
      return;
    }

    if (g_HalState == 12)
    {

      Hal19_HandleBufferResp(a1, a2);
      return;
    }

    goto LABEL_39;
  }

  if (g_HalState < 16)
  {
    return;
  }

  switch(g_HalState)
  {
    case 18:

      Hal32_HandlPowerReportRsp(a1, a2);
      break;
    case 17:

      Hal26_HandleConfigureUartLpRes(a1, a2);
      break;
    case 16:

      Hal29_HandleCpAgentResponse(a1, a2);
      return;
    default:
      goto LABEL_39;
  }
}

uint64_t GN_AGLON_Set_Eph_El(char *a1)
{
  v58 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGLON_Set_Eph_El");
  if (result)
  {
    if (g_Enable_Event_Log >= 5u)
    {
      EvLog_v("GN_AGLON_Set_Eph_El: %2d %2d %2d %4d %d %2d  %2d %d %d %d  %9d %9d %9d  %8d %8d %8d  %3d %3d %3d  %3d %8d %5d  %d", *a1, a1[1], a1[2], *(a1 + 2), a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8), a1[36], a1[37], a1[38], a1[39], *(a1 + 10), *(a1 + 22), a1[46]);
    }

    v3 = *a1;
    if ((*a1 - 25) <= 0xE7u)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloN = %d <%d or >%d, Out of range!");
      return 0;
    }

    v4 = a1[2];
    if (v4 - 96 <= 0xFFFFFFA0)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloTb = %d <1 or >95, Out of range!");
      return 0;
    }

    v5 = *(a1 + 2);
    if (v5 >= 0x5B6)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloNT = %d >%d, Out of range!");
      return 0;
    }

    v6 = a1[6];
    if (v6 >= 2)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloLn = %d >1, Out of range!");
      return 0;
    }

    v7 = a1[7];
    if (v7 >= 0x10)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloFT = %d >15, Out of range!");
      return 0;
    }

    v8 = a1[8];
    if (v8 >= 0x20)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloEn = %d >31, Out of range!");
      return 0;
    }

    v9 = a1[9];
    if (v9 >= 4)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloP1 = %d <0 or >3, Out of range!");
      return 0;
    }

    v10 = a1[11];
    if (v10 >= 4)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloM = %d <0 or >3, Out of range!");
      return 0;
    }

    v11 = *(a1 + 3);
    if ((v11 - 0x4000000) >> 27 != 31)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloX = %d <-2^26 or >=2^26, Out of range!");
      return 0;
    }

    v12 = *(a1 + 4);
    if ((v12 - 0x4000000) >> 27 != 31)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloY = %d <-2^26 or >=2^26, Out of range!");
      return 0;
    }

    v13 = *(a1 + 5);
    if ((v13 - 0x4000000) >> 27 != 31)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZ = %d <-2^26 or >=2^26, Out of range!");
      return 0;
    }

    v14 = *(a1 + 6);
    if ((v14 - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloXdot = %d <-2^23 or >=2^23, Out of range!");
      return 0;
    }

    v15 = *(a1 + 7);
    if ((v15 - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloYdot = %d <-2^23 or >=2^23, Out of range!");
      return 0;
    }

    v16 = *(a1 + 8);
    if ((v16 - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZdot = %d <-2^23 or >=2^23, Out of range!");
      return 0;
    }

    v17 = a1[36];
    if ((v17 - 16) <= 0xDFu)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloXdotdot = %d <-2^4 or >=2^4, Out of range!");
      return 0;
    }

    v18 = a1[37];
    if ((v18 - 16) <= 0xDFu)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloYdotdot = %d <-2^4 or >=2^4, Out of range!");
      return 0;
    }

    v19 = a1[38];
    if ((v19 - 16) <= 0xDFu)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZdotdot = %d <-2^4 or >=2^4, Out of range!");
      return 0;
    }

    v20 = a1[39];
    if ((v20 - 16) <= 0xDFu)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloDeltaTau = %d <-2^4 or >=2^4, Out of range!");
      return 0;
    }

    v21 = *(a1 + 10);
    if ((v21 - 0x200000) >> 22 != 1023)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloDeltaTau = %d <-2^21 or >=2^21, Out of range!");
      return 0;
    }

    v22 = *(a1 + 22);
    if (((v22 - 1024) >> 11) <= 0x1Eu)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloGamma = %d <-2^10 or >=2^10, Out of range!");
      return 0;
    }

    v23 = a1[1];
    if ((a1[1] - 7) < 0xF2u)
    {
      v23 = 2139062143;
    }

    v27 = v23;
    if (a1[46])
    {
      v24 = 5;
    }

    else
    {
      v24 = 3;
    }

    v25 = 0;
    v26 = v24;
    v28 = v3;
    v29 = v4;
    v31 = v5;
    v34 = v6;
    v36 = v7;
    v37 = v8;
    v38 = v9;
    v39 = a1[10];
    v40 = v10;
    v41 = v11;
    v42 = v12;
    v43 = v13;
    v44 = v14;
    v45 = v15;
    v46 = v16;
    v47 = v17;
    v48 = v18;
    v49 = v19;
    v50 = v20;
    v51 = v21;
    v52 = v22;
    v33 = 0;
    v35 = 0;
    v32 = v6;
    v30 = 1500 * (v4 & 3) + 10000 * (v4 >> 2);
    memset(v57, 0, 62);
    GLON_EphInt2Bin(&v25, v57);
    v53 = 0;
    *&v56[4] = 0u;
    BYTE4(v53) = BYTE8(v57[0]);
    v54 = *(v57 + 12);
    v55 = *(&v57[1] + 12);
    *v56 = *(&v57[2] + 12);
    v56[16] = v26 == 5;
    return GN_AGLON_Set_Eph(*a1, &v53);
  }

  return result;
}

char *TCU_UpdateTime(char *result, unsigned int a2, int a3, char a4, int a5, unsigned int a6, double a7)
{
  v14 = result;
  v15 = a6;
  v16 = *(result + 19);
  v17 = a6 + v16 * 4294967300.0 - *(result + 4);
  if (v17 < 0.0 && v17 + 4294967300.0 < 1500.0)
  {
    *(result + 19) = v16 + 1;
    v18 = g_FPE_LogSeverity;
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v20 = *(g_TCU + 8);
      }

      else
      {
        v20 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f TTick wraparound", "TCU_WrapDetectAndFix", 96, v19, v20);
      v18 = g_FPE_LogSeverity;
    }

    if ((v18 & 0x200) != 0)
    {
      result = LC_LOG_NMEA_GENERIC("%s,CLKWt", "$PFPEX");
    }
  }

  LODWORD(v7) = *(v14 + 19);
  if (a3 == 11)
  {
    v21 = a7 - *(v14 + 1);
    if (v21 < 0.0)
    {
      v22 = g_FPE_LogSeverity;
      if (v21 + 604800.0 >= 1.5)
      {
        if ((g_FPE_LogSeverity & 2) != 0)
        {
          v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v26 = *(g_TCU + 8);
          }

          else
          {
            v26 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f CLK_CHK: setting time in the past TOW = %f, prevTOW = %f", "TCU_CheckInputs", 438, v25, v26, a7, *(v14 + 1));
        }
      }

      else
      {
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v24 = *(g_TCU + 8);
          }

          else
          {
            v24 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLK_CHK: TOW wraparound: %f --> %f", "TCU_CheckInputs", 433, v23, v24, *(v14 + 1), a7);
          v22 = g_FPE_LogSeverity;
        }

        if ((v22 & 0x200) != 0)
        {
          result = LC_LOG_NMEA_GENERIC("%s,CLKW2,%d,%d", "$PFPEX", a6, a2);
        }
      }
    }
  }

  v27 = *(v14 + 4);
  if (v15 - v27 >= 0.0)
  {
    if (v27 > 0.0 && v15 - v27 > 1500.0)
    {
      v30 = g_FPE_LogSeverity;
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v32 = *(g_TCU + 8);
        }

        else
        {
          v32 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLK_CHK: TTICK jumped by more than 1500ms: %0.0f --> %d", "TCU_CheckInputs", 451, v31, v32, *(v14 + 4), a6);
        v30 = g_FPE_LogSeverity;
      }

      if ((v30 & 0x200) != 0)
      {
        result = LC_LOG_NMEA_GENERIC("%s,CLKW4,%.1f,%.3f", "$PFPEX", v15 - *(v14 + 4), a7);
      }
    }
  }

  else if ((g_FPE_LogSeverity & 4) != 0)
  {
    v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v29 = *(g_TCU + 8);
    }

    else
    {
      v29 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLK_CHK: TTICK in the past: %d prevTTICK = %f (TOW = %0.0f)", "TCU_CheckInputs", 447, v28, v29, a6, *(v14 + 4), a7);
  }

  v33 = a2 - *v14;
  if (v33 >= 0.0)
  {
    if (*v14 && v33 > 1500.0)
    {
      v34 = v33 * 0.001;
      v35 = g_FPE_LogSeverity;
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v37 = *(g_TCU + 8);
        }

        else
        {
          v37 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLK_CHK: OS time jumped by more than 1500ms: %d --> %d (%0.0f) (TOW = %0.0f)", "TCU_CheckInputs", 465, v36, v37, *v14, a2, v34, a7);
        v35 = g_FPE_LogSeverity;
      }

      if ((v35 & 0x200) != 0)
      {
        result = LC_LOG_NMEA_GENERIC("%s,CLKW6,%.1f,%.3f", "$PFPEX", v33, a7);
      }

      if (v34 > 86400.0 && (g_FPE_LogSeverity & 2) != 0)
      {
        mach_continuous_time();
        result = LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f CLK_CHK: OS time jumped by more 1day: %0.0f (TOW = %0.0f)");
      }
    }
  }

  else if ((g_FPE_LogSeverity & 2) != 0)
  {
    mach_continuous_time();
    result = LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f CLK_CHK: OS time in the past: %d prevOS = %d (TOW = %0.0f)");
  }

  v38 = v15 + v7 * 4294967300.0;
  if (a3 == 11 && *(v14 + 1) > a7)
  {
    ++*(v14 + 18);
  }

  *(v14 + 5) = v38 * 0.001;
  v39 = *(v14 + 7);
  v40 = (a6 - a2) - v39;
  v41 = *(v14 + 22);
  v42 = v40;
  if (v41)
  {
    v42 = *(v14 + 12);
  }

  if (v42 >= v40)
  {
    v40 = v42;
  }

  *(v14 + 12) = v40;
  if (v41 < 0x32)
  {
    v47 = v41 + 1;
  }

  else
  {
    v43 = *(v14 + 12);
    if (v43 >= 2.0)
    {
      v43 = 2.0;
    }

    if (v43 > -2.0)
    {
      v44 = v43;
    }

    else
    {
      v44 = -2.0;
    }

    *(v14 + 7) = v39 + v44;
    if (v44 != 0.0 && (g_FPE_LogSeverity & 8) != 0)
    {
      v45 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v46 = *(g_TCU + 8);
      }

      else
      {
        v46 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f OS to TTICK fixed by %ff ms", "TCU_SetOsToTtick", 315, v45, v46, v44);
    }

    v47 = 0;
  }

  *(v14 + 22) = v47;
  if (v39 != *(v14 + 7))
  {
    v48 = g_FPE_LogSeverity;
    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v49 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v50 = *(g_TCU + 8);
      }

      else
      {
        v50 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLK_CHK', 'OS2TTICK_ms changed by %f ms", "TCU_SetOsToTtick", 326, v49, v50, *(v14 + 7) - v39);
      v48 = g_FPE_LogSeverity;
    }

    if ((v48 & 0x200) != 0)
    {
      result = LC_LOG_NMEA_GENERIC("%s,CLKW3,%.1f,%.3f", "$PFPEX", *(v14 + 7) - v39, *(v14 + 1));
    }
  }

  v51 = *(v14 + 18);
  v52 = v14[24];
  if (a3 == 11 || (v14[24] & 1) == 0)
  {
    *(v14 + 13) = a5;
    *(v14 + 6) = (604800 * v51) + a7 - a2 * 0.001;
    *(v14 + 8) = -(a7 - v38 * 0.001);
  }

  *v14 = a2;
  *(v14 + 4) = v38;
  *(v14 + 1) = a7;
  *(v14 + 5) = a3;
  v14[16] = a4;
  v14[24] = v52 | (a3 == 11);
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v53 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v54 = *(g_TCU + 8);
    }

    else
    {
      v54 = 0.0;
    }

    return LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: TCU = {gpsWeekNo:%d, gpsTOW:%f, OsTime:%d, gpsTOW_stat:%d, OsToGps:%f, gpsWeekFromInit:%u, ttickMs:%f, OsTimeMs:%u, OsToTtickMs:%f}", "TCU_UpdateTime", 189, v53, v54, a5, a7, a2, a3, *(v14 + 6), *(v14 + 18), v38, a2, *(v14 + 7));
  }

  return result;
}

const char *TCU_ConvertOStimeToTTICKtime(const char *result, unsigned int a2, double *a3)
{
  v4 = (*(result + 7) + a2) * 0.001;
  *a3 = v4;
  v5 = v4 - *(result + 5);
  if (v5 <= 2147483.65)
  {
    if (v5 >= -2147483.65)
    {
      return result;
    }

    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLOCK:OS time conversion fix2", "TCU_ConvertOStimeToTTICKtime", 220, v9, v10);
      v4 = *a3;
    }

    v11 = 4294967.3;
  }

  else
  {
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v6 = result;
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v8 = *(g_TCU + 8);
      }

      else
      {
        v8 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CLOCK:OS time wraparround fix1: %0.3f --> %0.3f ", "TCU_ConvertOStimeToTTICKtime", 215, v7, v8, *(v6 + 7) * 0.001, (*(v6 + 7) + -4294967300.0) * 0.001);
      v4 = *a3;
    }

    v11 = -4294967.3;
  }

  *a3 = v4 + v11;
  return result;
}

const char *TCU_GetOutTime(const char *result, double *a2)
{
  v3 = result;
  v4 = *(result + 5);
  *a2 = v4;
  v5 = *(result + 10);
  v6 = v4 - v5;
  if (v5 <= 0.0 || v6 <= 1.5)
  {
    goto LABEL_6;
  }

  v8 = *(result + 8);
  v9 = v4 - v8;
  v10 = *(result + 13);
  v11 = 604800.0;
  if (v9 >= 604800.0)
  {
    v12 = 1;
    v13 = -604800.0;
    goto LABEL_11;
  }

  if (v9 < 0.0)
  {
    v12 = -1;
    v13 = 604800.0;
LABEL_11:
    v9 = v9 + v13;
    v14 = v12 + v10;
    goto LABEL_13;
  }

  v14 = *(result + 13);
LABEL_13:
  v15 = v5 - v8;
  if (v5 - v8 >= 604800.0)
  {
    v16 = 1;
    v11 = -604800.0;
    goto LABEL_17;
  }

  if (v15 < 0.0)
  {
    v16 = -1;
LABEL_17:
    v15 = v15 + v11;
    v10 += v16;
  }

  v17 = g_FPE_LogSeverity;
  if ((g_FPE_LogSeverity & 4) != 0)
  {
    v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v19 = *(g_TCU + 8);
    }

    else
    {
      v19 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f %0.1f seconds passed from last output. TOW: %0.3f --> %0.3f, WeekNo: %d --> %d", "TCU_GetOutTime", 408, v18, v19, v6, v15, v9, v10, v14);
    v17 = g_FPE_LogSeverity;
  }

  if ((v17 & 0x200) != 0)
  {
    result = LC_LOG_NMEA_GENERIC("%s,CLKW1,%.1f,%.1f,%.1f", "$PFPEX", v6, v15, v9);
  }

LABEL_6:
  *(v3 + 10) = *a2;
  return result;
}

double BDS_AlmInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 12) = *(a1 + 11) << 12;
  v2 = *(a1 + 12);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4 = vmulq_f64(vcvtq_f64_u64(v3), xmmword_29972B380);
  v5 = *(a1 + 20);
  v3.i64[0] = v5;
  v3.i64[1] = SHIDWORD(v5);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 10) = *(a1 + 42);
  *(a2 + 11) = *(a1 + 10);
  *(a2 + 16) = v4;
  *(a2 + 32) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3E9921FB54442D28uLL));
  v4.f64[0] = *(a1 + 28);
  v3.i64[0] = SLODWORD(v4.f64[0]);
  v3.i64[1] = SHIDWORD(v4.f64[0]);
  *(a2 + 48) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_29972B390);
  v6 = vcvtd_n_f64_s32(*(a1 + 38), 0x14uLL);
  *(a2 + 64) = *(a1 + 36) * 0.00000599211245;
  *(a2 + 72) = v6;
  result = *(a1 + 40) * 3.63797881e-12;
  *(a2 + 80) = result;
  return result;
}

void SuplState::SuplState(SuplState *this)
{
  *this = &unk_2A1F88788;
  *(this + 1) = 0;
  *(this + 8) = 255;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 24) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  Instance = SuplVersionNegotiation::GetInstance(this);
  v3 = atomic_load((Instance + 1));
  v4 = v3 == 255;
  v5 = 1;
  if (v4)
  {
    v5 = 2;
  }

  v6 = atomic_load((Instance + v5));
  *(this + 16) = -1;
  *(this + 26) = v6;
  *(this + 27) = 0;
  *(this + 5) = 0;
  ASN1T_SessionID::ASN1T_SessionID((this + 48));
}

void SuplState::~SuplState(SuplState *this)
{
  *this = &unk_2A1F88788;
  *(this + 1) = 0;
  v2 = *(this + 42);
  if (v2)
  {
    *(this + 43) = v2;
    operator delete(v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    *(this + 40) = v3;
    operator delete(v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    *(this + 37) = v4;
    operator delete(v4);
  }

  v5 = *(this + 31);
  if (v5)
  {
    *(this + 32) = v5;
    operator delete(v5);
  }

  ASN1T_SETId::U::~U((this + 72));
  ASN1T_UlpMessage::~ASN1T_UlpMessage((this + 32));
}

double SuplState::UpdateState(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return result;
    }

    goto LABEL_14;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Current State,%u -> New State,%u\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 77, "UpdateState", *(a1 + 16), a2);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 3, 1);
  }

  if (*(a1 + 16) == a2)
  {
    return result;
  }

  if (a2 > 4)
  {
    switch(a2)
    {
      case 5:
        v21 = operator new(0x170uLL, MEMORY[0x29EDC9418]);
        if (v21)
        {
          v10 = v21;
          SuplPosRecd::SuplPosRecd(v21);
          LcsTimer::Stop((a3 + 49));
          v22 = a3[53];
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          goto LABEL_40;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          return result;
        }

        break;
      case 6:
        v25 = operator new(0x170uLL, MEMORY[0x29EDC9418]);
        if (v25)
        {
          v10 = v25;
          SuplState::SuplState(v25);
          *v10 = &unk_2A1F8AB30;
          *(v10 + 16) = 4;
          *(v10 + 360) = 0;
          SuplSession::UpdateTimer(a3, 6);
          v26 = a3[53];
          if (v26)
          {
            (*(*v26 + 8))(v26);
          }

          goto LABEL_40;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          return result;
        }

        break;
      case 7:
        v14 = operator new(0x190uLL, MEMORY[0x29EDC9418]);
        if (v14)
        {
          v10 = v14;
          SuplEndRecd::SuplEndRecd(v14);
          LcsTimer::Stop((a3 + 49));
          v15 = a3[53];
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          goto LABEL_40;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          return result;
        }

        break;
      default:
LABEL_31:
        if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          return result;
        }

LABEL_14:
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "UpdateState", 515);
        LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
        return result;
    }

LABEL_52:
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v28), "SPL", 69, "UpdateState", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v29, 0, 1);
    return result;
  }

  if (!a2)
  {
    v16 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
    if (v16)
    {
      v17 = v16;
      SuplState::SuplState(v16);
      v18 = &unk_2A1F88940;
      *v17 = &unk_2A1F88940;
      v19 = a3[53];
      if (v19)
      {
        (*(*v19 + 8))(v19);
        v18 = *v17;
      }

      v20 = a3[52];
      a3[52] = v17;
      a3[53] = v20;
      *(v17 + 1) = a3;
      (v18)[3](v17);
      return result;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return result;
    }

    goto LABEL_52;
  }

  if (a2 == 2)
  {
    v23 = operator new(0x178uLL, MEMORY[0x29EDC9418]);
    if (v23)
    {
      v10 = v23;
      SuplResponseRecd::SuplResponseRecd(v23);
      LcsTimer::Stop((a3 + 49));
      v24 = a3[53];
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      goto LABEL_40;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_52;
    }

    return result;
  }

  if (a2 != 4)
  {
    goto LABEL_31;
  }

  v9 = operator new(0x170uLL, MEMORY[0x29EDC9418]);
  if (v9)
  {
    v10 = v9;
    SuplState::SuplState(v9);
    *v10 = &unk_2A1F8AB30;
    *(v10 + 16) = 4;
    *(v10 + 360) = 0;
    SuplSession::UpdateTimer(a3, 4);
    v11 = a3[53];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

LABEL_40:
    v27 = a3[52];
    a3[52] = v10;
    a3[53] = v27;
    *(v10 + 1) = a3;
    (*(*v10 + 24))(v10);
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    goto LABEL_52;
  }

  return result;
}

uint64_t SuplState::ProcessSuplMessage(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  __p = 0;
  v7 = 0;
  v8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v9[0] = &__p;
  v9[1] = 0;
  v10 = 0;
  v5[0] = v9;
  v5[1] = a1 + 24;
  v3 = SuplMessage::Decode(v5);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_2995CF1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplState::SendSuplMessage(SuplProvider *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1))
  {
    Instance = SuplProvider::GetInstance(a1);
    v3 = *(*(a1 + 1) + 376);

    return SuplProvider::SendSuplPdu(Instance, v3);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "SendSuplMessage", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    return 0;
  }
}

double LVLR_Init(uint64_t a1)
{
  *a1 = 0x4014000000000000;
  *(a1 + 20) = 0;
  Set_Mat_Const(3, 1u, 3, (a1 + 24), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 56), 0.0);
  *(a1 + 16) = 0;
  *(a1 + 8) = 0xC08F380000000000;
  *(a1 + 352) = 0xC08F380000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 312) = 0x3F847AE147AE147BLL;
  *(a1 + 104) = 0x3FCA5373D0C8EF30;
  Set_Mat_Const(3, 1u, 3, (a1 + 112), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 144), 0.0);
  *(a1 + 176) = 0;
  Set_Mat_Const(3, 1u, 3, (a1 + 184), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 216), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 248), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 280), 0.0);
  *(a1 + 320) = xmmword_29972B3C0;
  *(a1 + 336) = 0x4014000000000000;
  *(a1 + 344) = (5.0 / *(a1 + 312));
  Set_Mat_Const(3, 1u, 3, (a1 + 360), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 392), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 424), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 456), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 488), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 520), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 552), 0.0);

  Set_Mat_Const(3, 1u, 3, (a1 + 584), 0.0);
  return result;
}

void LVLR_GetLevelerOutputs(uint64_t a1, uint64_t a2, __n128 a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a1 + 176) >= *(a1 + 344))
  {
    Add_Mat(3, (a1 + 184), 3, (a1 + 216), 3, a2);
    Mult_Mat_scalar(0.5, 3, a2, 3, a2);
    Add_Mat(3, (a1 + 248), 3, (a1 + 280), 3, (a2 + 32));
    Mult_Mat_scalar(0.5, 3, (a2 + 32), 3, (a2 + 32));
    *(a2 + 64) = 1;
    memset(v6, 0, sizeof(v6));
    Sub_Mat(3, (a1 + 216), 3, (a1 + 184), 3, v6);
    Max_Mat_Scalar(*(a1 + 320), 3, v6, 3, v6);
    memset(v5, 0, sizeof(v5));
    Sub_Mat(3, (a1 + 280), 3, (a1 + 248), 3, v5);
    Max_Mat_Scalar(*(a1 + 328), 3, v5, 3, v5);
    Mult_Mat_scalar(0.5, 3, v6, 3, (a2 + 72));
    ElMult_Mat_Mat(3, (a2 + 72), 3, (a2 + 72), 3, (a2 + 72));
    ElMult_Mat_Mat(3, v5, 3, v5, 3, (a2 + 104));
  }

  else
  {
    Set_Mat_Const(3, 1u, 3, a2, 0.0);
    *(a2 + 64) = 0;
    Set_Mat_Const(3, 1u, 3, (a2 + 32), 0.0);
    Set_Mat_Const(3, 1u, 3, (a2 + 72), -999.0);
    Set_Mat_Const(3, 1u, 3, (a2 + 104), -999.0);
  }

  *(a2 + 136) = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
}

void LVLR_Run(uint64_t result, uint64_t a2, __n128 a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*(a2 + 8) == 6)
  {
    *(result + 352) = *a2;
  }

  else
  {
    v5 = *(result + 352);
    v6 = *a2;
    ++*(result + 20);
    Add_Mat(3, (result + 24), 3, (a2 + 16), 3, (result + 24));
    Add_Mat(3, (result + 56), 3, (a2 + 48), 3, (result + 56));
    v28 = 0u;
    *v29 = 0u;
    Mult_Mat_scalar(1.0 / *(result + 20), 3, (result + 24), 3, &v28);
    v7 = v29[0];
    v8 = v29[1];
    v9 = sqrt(v8 * v8 + v7 * v7);
    if (fabs(v9) <= 1.0e-30)
    {
      if (g_FPE_LogSeverity)
      {
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v11 = *(g_TCU + 8);
        }

        else
        {
          v11 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "LVLR_calcRollPitch", 118, v10, v11, v9, 1.0e-30);
        v7 = v29[0];
        v8 = v29[1];
      }

      g_FPE_AssertFlag = 1;
      v9 = 1.0;
    }

    *(result + 88) = atan(*(&v28 + 1) / v9);
    *(result + 96) = atan2(-v7, -v8);
    v12 = *(result + 8);
    if (v12 == -999.0)
    {
      *(result + 8) = v6 + -0.01;
      Copy_Mat(3, (a2 + 48), 3, (result + 184));
      Copy_Mat(3, (a2 + 48), 3, (result + 216));
      Copy_Mat(3, (a2 + 48), 3, (result + 112));
      Copy_Mat(3, (a2 + 16), 3, (result + 248));
      Copy_Mat(3, (a2 + 16), 3, (result + 280));
      Copy_Mat(3, (a2 + 16), 3, (result + 144));
      v12 = *(result + 8);
    }

    v13 = v6 - v12;
    v28 = 0u;
    *v29 = 0u;
    Abs_Mat(3, (a2 + 48), 3, &v28);
    if (Any_Mat_Greater_Than(0.7, 3, &v28))
    {
      LVLR_resetFilters(result);
      LODWORD(v26) = 0;
      v14 = Max_Vec(3, &v28, &v26);
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v15 = v14;
        v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v17 = *(g_TCU + 8);
        }

        else
        {
          v17 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Resetting Leveler due to large movement on Gyro # %d, Mag = %3.1f, seconds since leveler started =  %6.2f", "LVLR_Run", 221, v16, v17, v26 + 1, v15, v13);
      }
    }

    else
    {
      ++*(result + 176);
      Set_Mat_Const(3, 1u, 3, (result + 112), 0.0);
      Add_Mat_ScalarMult(1.97881827, 3, (result + 112), 3, (result + 488), 3, (result + 112));
      Add_Mat_ScalarMult(-0.979519649, 3, (result + 112), 3, (result + 520), 3, (result + 112));
      Add_Mat_ScalarMult(1.27485269, 3, (result + 112), 3, (a2 + 48), 3, (result + 112));
      Add_Mat_ScalarMult(-2.0, 3, (result + 112), 3, (result + 360), 3, (result + 112));
      Add_Mat_ScalarMult(1.13919655, 3, (result + 112), 3, (result + 392), 3, (result + 112));
      Set_Mat_Const(3, 1u, 3, (result + 144), 0.0);
      Add_Mat_ScalarMult(1.97881827, 3, (result + 144), 3, (result + 552), 3, (result + 144));
      Add_Mat_ScalarMult(-0.979519649, 3, (result + 144), 3, (result + 584), 3, (result + 144));
      Add_Mat_ScalarMult(1.27485269, 3, (result + 144), 3, (a2 + 16), 3, (result + 144));
      Add_Mat_ScalarMult(-2.0, 3, (result + 144), 3, (result + 424), 3, (result + 144));
      Add_Mat_ScalarMult(1.13919655, 3, (result + 144), 3, (result + 456), 3, (result + 144));
      if (*(result + 20) >= 0xC8u)
      {
        v26 = 0u;
        v27 = 0u;
        Mult_Mat_scalar(0.00169824365, 3, (result + 112), 3, &v26);
        memset(v25, 0, sizeof(v25));
        Mult_Mat_scalar(0.00169824365, 3, (result + 144), 3, v25);
        Min_Mat_Mat(3, &v26, 3, (result + 184), 3, (result + 184));
        Min_Mat_Mat(3, v25, 3, (result + 248), 3, (result + 248));
        Max_Mat_Mat(3, &v26, 3, (result + 216), 3, (result + 216));
        Max_Mat_Mat(3, v25, 3, (result + 280), 3, (result + 280));
      }

      v18 = v5 + 0.51;
      v26 = 0u;
      v27 = 0u;
      Sub_Mat(3, (result + 216), 3, (result + 184), 3, &v26);
      if (Any_Mat_Greater_Than(*(result + 320), 3, &v26))
      {
        if (v18 < v6 && v6 - *(result + 8) > 5.0)
        {
          LVLR_resetFilters(result);
          *(result + 320) = fmin(*(result + 320) * 1.05, 0.05);
          if ((g_FPE_LogSeverity & 4) != 0)
          {
            v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v20 = *(g_TCU + 8);
            }

            else
            {
              v20 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Resetting Leveler due to Gyro violation Min/Max bounds, seconds since leveler started =  %6.2f", "LVLR_Run", 285, v19, v20, v13);
          }
        }
      }

      Sub_Mat(3, (result + 280), 3, (result + 248), 3, &v26);
      if (Any_Mat_Greater_Than(*(result + 328), 3, &v26))
      {
        if (v18 < v6 && v6 - *(result + 8) > 5.0)
        {
          LVLR_resetFilters(result);
          *(result + 328) = fmin(*(result + 328) * 1.05, 1.0);
          if ((g_FPE_LogSeverity & 4) != 0)
          {
            v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v22 = *(g_TCU + 8);
            }

            else
            {
              v22 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Resetting Leveler due to Accel violation of Min/Max bounds, seconds since leveler started =  %6.2f", "LVLR_Run", 296, v21, v22, v13);
          }
        }
      }

      if ((*(result + 176) >= *(result + 344) || v6 - *(result + 8) > 600.0) && (*(result + 16) & 1) == 0)
      {
        if (v18 < v6)
        {
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            mach_continuous_time();
            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f leveling ready due to threshold after %f seconds");
          }
        }

        else if ((g_FPE_LogSeverity & 8) != 0)
        {
          mach_continuous_time();
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f leveling ready due to stop after %f seconds");
        }

        if (v6 - *(result + 8) > 600.0 && (g_FPE_LogSeverity & 4) != 0)
        {
          v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v24 = *(g_TCU + 8);
          }

          else
          {
            v24 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Leveler worked for %f sec and could not finish successfully. Giving up and trying to work as is", "LVLR_Run", 325, v23, v24, v6 - *(result + 8));
        }

        *(result + 16) = 1;
      }
    }

    Copy_Mat(3, (result + 360), 3, (result + 392));
    Copy_Mat(3, (result + 424), 3, (result + 456));
    Copy_Mat(3, (a2 + 48), 3, (result + 360));
    Copy_Mat(3, (a2 + 16), 3, (result + 424));
    Copy_Mat(3, (result + 488), 3, (result + 520));
    Copy_Mat(3, (result + 552), 3, (result + 584));
    Copy_Mat(3, (result + 112), 3, (result + 488));
    Copy_Mat(3, (result + 144), 3, (result + 552));
  }
}

void LVLR_resetFilters(uint64_t a1)
{
  Set_Mat_Const(3, 1u, 3, (a1 + 24), 0.0);
  *(a1 + 20) = 1;
  *(a1 + 176) = 0;
  Mult_Mat_scalar(0.00169824365, 3, (a1 + 112), 3, (a1 + 184));
  Mult_Mat_scalar(0.00169824365, 3, (a1 + 112), 3, (a1 + 216));
  Mult_Mat_scalar(0.00169824365, 3, (a1 + 144), 3, (a1 + 248));
  Mult_Mat_scalar(0.00169824365, 3, (a1 + 144), 3, (a1 + 280));
  *(a1 + 16) = 0;
}

char **gn_report_assertion_failure(const char *a1)
{
  GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
  v2 = *(&xmmword_2A1926A70 + 1);
  v3 = (**(&xmmword_2A1926A70 + 1))++;
  *v3 = 10;
  if (*v2 >= v2[3])
  {
    *v2 = v2[2];
  }

  EvCrt_v(" ***** ASSERT FAILED ***** %s", a1);
  v4 = *(&xmmword_2A1926A70 + 1);
  v5 = (**(&xmmword_2A1926A70 + 1))++;
  *v5 = 10;
  if (*v4 >= v4[3])
  {
    *v4 = v4[2];
  }

  v6 = *(&xmmword_2A1926A70 + 1);

  return GNSS_Event_Log_Ctl(v6);
}

void NK_SV_Meas_Update(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float64x2_t *a6, int a7, float64x2_t *a8, double a9, uint64_t a10)
{
  v14 = 0;
  v109 = *MEMORY[0x29EDCA608];
  v15 = a5 + 152;
  v86 = a5 + 248;
  v79 = a5 + 3608;
  v83 = a5 + 2024;
  v84 = a5 + 200;
  v82 = a5 + 4040;
  v74 = (a10 + 16);
  v75 = (a10 + 24);
  v16 = 1;
  v64 = a5 + 152;
  do
  {
    v17 = 0;
    v80 = 0;
    v81 = 0;
    v18 = v16;
    v67 = v14;
    do
    {
      if (*(v15 + v17) != 1)
      {
        goto LABEL_73;
      }

      if ((v18 & 1) != 0 && (v19 = *(v86 + 4 * v17), (v19 - 1) >= 0x1D))
      {
        if (!v19)
        {
          goto LABEL_8;
        }

        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
        if ((v14 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else if ((v14 & 1) == 0)
      {
        goto LABEL_73;
      }

      v20 = *(v86 + 4 * v17);
      if ((v20 - 1) < 0x1D)
      {
        goto LABEL_8;
      }

      if (v20)
      {
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
LABEL_8:
        v94 = 0u;
        memset(v93, 0, sizeof(v93));
        memset(v92, 0, sizeof(v92));
        v91 = 0;
        memset(v90, 0, sizeof(v90));
        v87 = 0.0;
        bzero(__dst, 0x270uLL);
        v21 = 0;
        v22 = 1.0;
        v23 = 1;
        while (2)
        {
          if (v18 & 1) != 0 || (v21)
          {
            v24 = *(a5 + 8);
          }

          else
          {
            v24 = 1.0e20;
          }

          NK_Obs_Equ_SV(a1, *(v84 + v17), *(a2 + 4 * v17), a3 + 56 * v17, v93, a9);
          if (a7)
          {
            NK_SV_Meas_Innov_Sat(v93, v17, a1, a5, a6->f64, v24);
            v22 = *(v79 + 8 * v17);
          }

          *(&v94 + 1) = *(v83 + 8 * v17);
          if (v23)
          {
            memcpy(__dst, a6, sizeof(__dst));
          }

          umeas(a6, 0xBu, v22 * *(v82 + 8 * v17), v93, v92, v90, &v87, v24);
          if (v18 & 1) != 0 || (v21)
          {
            if (v87 >= 0.0)
            {
              v81 += *(a4 + v17);
            }

            else
            {
              ++v80;
              --*(a5 + 3);
              ++*(a5 + 4);
              if ((v21 & 1) == 0)
              {
                *(v86 + 4 * v17) = 21;
LABEL_27:
                if (v21)
                {
                  v21 = 0;
                }

                goto LABEL_29;
              }

              *(v86 + 4 * v17) = 22;
              memcpy(a6, __dst, 0x270uLL);
              EvLog_v("NK_SV_Meas_Update: Speed constraint edit info: Chan num: %d, Obs Type: %d", v17, a1);
            }

LABEL_26:
            v25 = *(v86 + 4 * v17);
            if ((v25 - 1) < 0x1D)
            {
              goto LABEL_27;
            }

            if (v25)
            {
              EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
              goto LABEL_27;
            }
          }

          else
          {
            *(v86 + 4 * v17) = 0;
            if (v87 < 0.0)
            {
              gn_report_assertion_failure("NK_SV_Meas_Update:  Edit add-back failed !");
              goto LABEL_26;
            }
          }

          if (*a10 != 1 || (v21 & 1) != 0)
          {
            goto LABEL_27;
          }

          v76 = vsubq_f64(*a8, a6[37]);
          v107 = v76;
          v27 = a8[1].f64[0] - a6[38].f64[0];
          v108 = v27;
          v28 = 0.0;
          v29 = 2;
          do
          {
            v28 = v28 + v107.f64[v29] * v107.f64[v29];
            v30 = v29-- + 1;
          }

          while (v30 > 1);
          v31 = sqrt(v28);
          v32 = *v75;
          v33 = *v74;
          v34 = *v74 - v31;
          if (v34 <= 0.001)
          {
            if (v31 - *v75 <= 0.001)
            {
              v21 = 0;
              goto LABEL_29;
            }

            v35 = -v34;
            v34 = v31 - *v75;
          }

          else
          {
            v35 = v31 - *v75;
          }

          v73 = v31 - *v75;
          switch(a1)
          {
            case 3:
              ++*(a10 + 33);
              break;
            case 2:
              ++*(a10 + 34);
              break;
            case 1:
              ++*(a10 + 32);
              break;
          }

          *&v106 = 1.0;
          v105 = xmmword_29972B408;
          v72 = (v32 - v33) / v34;
          ud2var(a6, 0xBu, 9, 3u, &v105);
          v36 = *(&v105 + 1);
          v71 = *&v105;
          v70 = *&v106;
          v103 = 0;
          v37 = &v107;
          v38 = 8;
          memset(v102, 0, sizeof(v102));
          do
          {
            v39 = *v37++;
            *(v102 + v38++) = v39 / v31;
          }

          while (v38 != 11);
          v40 = vmuld_lane_f64(v76.f64[1], v76, 1) * v36;
          *&v69 = *&vmulq_f64(v76, v76);
          v104 = v35;
          bzero(v101, 0x210uLL);
          ud2cov(a6->f64, v101, 0xBu);
          v41 = 0;
          v100 = 0.0;
          v99 = 0u;
          memset(v98, 0, sizeof(v98));
          do
          {
            v42 = 0;
            v43 = *(v98 + v41);
            v44 = v41 + 1;
            do
            {
              v45 = v42 + 1;
              v46 = *(v102 + v42);
              if (v42 < v41)
              {
                v47 = v42 + (((v41 + 1) * v41) >> 1);
              }

              else
              {
                v45 = v42 + 1;
                v47 = v41 + (((v42 + 1) * v42) >> 1);
              }

              v43 = v43 + v101[v47] * v46;
              v42 = v45;
            }

            while (v45 != 11);
            *(v98 + v41++) = v43;
          }

          while (v44 != 11);
          v48 = 0;
          v49 = 0.0;
          do
          {
            v49 = v49 + *(v102 + v48) * *(v98 + v48);
            v48 += 8;
          }

          while (v48 != 88);
          v50 = v72 * ((v40 + v69 * v71 + v27 * v27 * v70) / (v31 * v31));
          v51 = v35 * v35 * (*(&v99 + 1) * *(&v99 + 1) + *&v99 * *&v99 + v100 * v100);
          v52 = v35 * ((v76.f64[1] * *(&v99 + 1) + *&v99 * v76.f64[0] + v100 * v27) * -2.0);
          v53 = (a10 + 24);
          if (v73 <= 0.001)
          {
            v53 = (a10 + 16);
          }

          v54 = (v31 * v31 - *v53 * *v53) * (v51 * -4.0) + v52 * v52;
          if (v54 >= 0.0)
          {
            v55 = sqrt(v54);
            v56 = 0.0;
            v57 = v51 + v51;
            v58 = 0.0;
            if (vabdd_f64(v55, v52) > 0.01)
            {
              v58 = v57 / (v55 - v52);
            }

            v59 = -v52;
            if (vabdd_f64(v59, v55) > 0.01)
            {
              v56 = v57 / (v59 - v55);
            }

            if (v58 <= v56)
            {
              v60 = v56;
            }

            else
            {
              v60 = v58;
            }

            v61 = v60 <= v49;
            v77 = v60 > v49;
            v62 = v60 - v49;
            if (!v61)
            {
              v50 = v62;
            }
          }

          else
          {
            v77 = 0;
          }

          memcpy(a6, __dst, 0x270uLL);
          v88 = 0.0;
          memset(v97, 0, sizeof(v97));
          v96 = 0;
          memset(v95, 0, sizeof(v95));
          umeas(a6, 0xBu, v50, v102, v97, v95, &v88, 1.0e20);
          v21 = 1;
          *(a10 + 1) = 1;
          EvLog_v("NK_Apply_Speed_Constraint: Speed_C applied, Upper_Limit = %g, Lower_Limit = %g, PreconstrainedSpeed = %g, Optimal constraint applied? = %d", *(a10 + 24), *(a10 + 16), v31, v77);
LABEL_29:
          v26 = v23 & v21;
          v23 = 0;
          if ((v26 & 1) == 0)
          {
            v15 = v64;
            v14 = v67;
            break;
          }

          continue;
        }
      }

LABEL_73:
      ++v17;
    }

    while (v17 != 48);
    if (!v80 || v81 >= 5 && (v80 == 1 || v81 != 5))
    {
      break;
    }

    EvLog_v("NK_SV_Meas_Update: Edits unreliable-repeating to add back edits, Obs Type = %d , Num Eph Added = %d, Num rejected = %d", a1, v81, v80);
    v16 = 0;
    v14 = 1;
  }

  while ((v18 & 1) != 0);
}

void NK_Reduce_Num_SV(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v76 = *MEMORY[0x29EDCA608];
  v6 = (a3 + 13963);
  v7 = (a3 + 8387);
  v8 = vdupq_n_s16(0x630u);
  v9 = a3 + 504;
  v10.i64[0] = 0x6000600060006;
  v10.i64[1] = 0x6000600060006;
  v11 = vdupq_n_s16(0xCCCDu);
  memset(v75, 0, 192);
  v12.i64[0] = 0x32003200320032;
  v12.i64[1] = 0x32003200320032;
  v13 = vdupq_n_s16(0x3B6u);
  do
  {
    v14 = *(v9 + v5 * 16);
    v15 = vcgtq_u16(v14, v8);
    v16 = vmulq_s16(v14, v10);
    *(&v75[v5 + 12] + 8) = vbslq_s8(v15, v13, vmaxq_u16(vshrq_n_u16(vuzp2q_s16(vmull_u16(*v16.i8, *v11.i8), vmull_high_u16(v16, v11)), 3uLL), v12));
    ++v5;
  }

  while (v5 != 6);
  v17 = a1 + 1132;
  if (!*(a3 + 968))
  {
    for (i = 0; i != 48; ++i)
    {
      if (Is_Legal(*(v17 + 4 * i - 1056)))
      {
        v42 = *(v75 + i);
        if ((v42 - 1) >= 0x1D)
        {
          if (v42)
          {
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
          }

          else if (*(v17 + 2 * i) > *(&v75[12] + i + 4))
          {
            *(v75 + i) = 5;
          }
        }
      }
    }

LABEL_34:
    if (*(a3 + 968) == 1)
    {
      if (*(a2 + 11162) == 1)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = a3 + 2960;
        v38 = a1 + 604;
        do
        {
          if (*(v37 + v32) == 1)
          {
            v39 = *(v75 + v32);
            if ((v39 - 1) >= 0x1D)
            {
              if (v39)
              {
                v67 = v33;
                v69 = v35;
                EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
                v33 = v67;
                v35 = v69;
              }

              else
              {
                ++v36;
                v40 = *(v38 + v32);
                if (v40 < 0xD)
                {
                  ++v35;
                }

                if (v40 > 0xE)
                {
                  ++v34;
                }

                if (v40 > 0x11)
                {
                  ++v33;
                }
              }
            }
          }

          ++v32;
        }

        while (v32 != 48);
        if (v35 && (v36 < 3 || v36 - v35 >= 5 && (v34 > 1 || v33)))
        {
          for (j = 0; j != 48; ++j)
          {
            if (*(v37 + j) == 1 && *(v38 + j) <= 0xCu)
            {
              *(v75 + j) = 7;
            }
          }
        }
      }

      if (*(a3 + 968) == 1)
      {
        v44 = 0;
        v45 = 0;
        v46 = (a1 + 604);
        v47 = (a2 + 7744);
        v48 = (a1 + 844);
        v73 = a1 + 604;
        v49 = (a3 + 2960);
        do
        {
          v50 = *v49++;
          if (v50 == 1)
          {
            v51 = *(v75 + v44);
            if ((v51 - 1) >= 0x1D)
            {
              if (v51)
              {
                v71 = v45;
                EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
                v45 = v71;
              }

              else if (*v47 && *v48 >= 0xC8u && v48[48] >= 0xC8u && *v46 - v46[96] > 2)
              {
                ++v45;
              }
            }
          }

          v44 += 4;
          ++v48;
          ++v47;
          ++v46;
        }

        while (v44 != 192);
        if (v45 <= 2)
        {
          v52 = 0;
          v53 = 0;
          do
          {
            if (*(a3 + 2960 + v52) == 1)
            {
              v54 = *(v75 + v52);
              if ((v54 - 1) >= 0x1D)
              {
                if (v54)
                {
                  EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
                }

                else
                {
                  if (*(v73 + v52) > 0xDu || v53 > 1)
                  {
                    goto LABEL_104;
                  }

                  v74[v53++] = v52;
                }
              }
            }

            ++v52;
          }

          while (v52 != 48);
          if (v53 >= 1)
          {
            if (v53 >= 2)
            {
              v56 = 2;
            }

            else
            {
              v56 = v53;
            }

            v57 = v74;
            do
            {
              v58 = *v57++;
              *(v75 + v58) = 9;
              --v56;
            }

            while (v56);
          }
        }
      }
    }

    goto LABEL_104;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = a3 + 2960;
  v23 = a2 + 7744;
  do
  {
    if (*(v22 + v18) == 1)
    {
      v24 = *(v75 + v18);
      if ((v24 - 1) >= 0x1D)
      {
        if (v24)
        {
          v68 = a4;
          v64 = v20;
          v66 = v21;
          v65 = v23;
          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
          v23 = v65;
          v21 = v66;
          v20 = v64;
          a4 = v68;
        }

        else if (*(v17 + 2 * v18) >= *(&v75[12] + v18 + 4))
        {
          ++v20;
        }

        else
        {
          ++v19;
          if (*(v23 + 2 * v18))
          {
            ++v21;
          }
        }
      }
    }

    ++v18;
  }

  while (v18 != 48);
  if (v21 <= 3 && v20)
  {
    for (k = 0; k != 48; ++k)
    {
      if (*(v22 + k) == 1 && *(v17 + 2 * k) > *(&v75[12] + k + 4))
      {
        *(v75 + k) = 6;
      }
    }
  }

  if (v19 || !v20)
  {
    goto LABEL_34;
  }

  if (*(a3 + 968) == 1)
  {
    if (*(a2 + 11162) == 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = a4 + 365;
      v29 = a4 + 416;
      while (1)
      {
        if (Is_Legal(*(a1 + v26 + 76)))
        {
          v30 = a1 + 2 * v27;
          if (*(v9 + 2 * v27) >= 0x28Bu)
          {
            v31 = *(&v75[12] + v27 + 4);
LABEL_32:
            *(v28 + v27) |= 1u;
            *(v29 + 4 * v27) = *a3;
            EvLog_v("ChanReset %d : NKRNSV %d %d   %x %d   %d > %d ", v27, *(a1 + v26 + 78), *(a1 + v26 + 76), *(v30 + 316), *(a1 + v27 + 604), *(v30 + 1132), v31);
            goto LABEL_33;
          }

          v31 = *(&v75[12] + v27 + 4);
          if (*(v30 + 1132) > v31)
          {
            goto LABEL_32;
          }
        }

LABEL_33:
        ++v27;
        v26 += 4;
        if (v27 == 48)
        {
          goto LABEL_34;
        }
      }
    }

    goto LABEL_34;
  }

LABEL_104:
  v59 = 0;
  v60 = a3 + 8536;
  v61 = (a3 + 8632);
  v62 = a3 + 14112;
  do
  {
    v63 = *(v75 + v59);
    if ((v63 - 1) >= 0x1D)
    {
      if (!v63)
      {
        goto LABEL_112;
      }

      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
    }

    if (*(a3 + v59 + 2960) == 1)
    {
      *(a3 + v59 + 2960) = 0;
      --*(a3 + 2811);
      ++*(a3 + 2812);
      *(a3 + 4 * v59 + 3056) = v63;
    }

    if (*(v60 + v59) == 1)
    {
      *(v60 + v59) = 0;
      --*v7;
      ++v7[1];
      *v61 = v63;
    }

    if (*(v62 + v59) == 1)
    {
      *(v62 + v59) = 0;
      --*v6;
      ++v6[1];
      v61[1394] = v63;
    }

LABEL_112:
    ++v59;
    ++v61;
  }

  while (v59 != 48);
}

unsigned __int16 *plc01_01DecHeader(unsigned __int16 *result, _BYTE *a2, unsigned __int16 *a3, uint64_t a4)
{
  if (result[5] > 7u)
  {
    v6 = result;
    v7 = *result;
    *a2 = *(*result + 2);
    a2[1] = v7[3];
    a2[2] = v7[4];
    result = memcpy_s("plc01_01DecHeader", 85, a3, 2u, v7 + 5, 2uLL);
    v9 = *a3;
    if (v9 >= 0x7F8)
    {
      *a4 = 7;
      if (*(a4 + 144) == 1)
      {
        result = snprintf((a4 + 16), 0x80uLL, "D HDR PL %d > %d", v9, 2039);
      }
    }

    v8.i32[0] = *(*v6 + 2);
    if (*(*v6 + 7) != (vaddv_s16(*&vmovl_u8(v8)) + *(*v6 + 6)))
    {
      *a4 = 3;
    }

    v6[4] = 8;
  }

  else
  {
    *a4 = 6;
  }

  return result;
}

void *plc01_02PutUInt32(unsigned int a1, int *a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  __src = a1;
  *a4 = 0;
  result = memcpy_s("plc01_02PutUInt32", 134, (*a3 + *(a3 + 8)), *(a3 + 10) - *(a3 + 8), &__src, 4uLL);
  *(a3 + 8) += 4;
  v9 = *a2;
  if (*a2 > a1 || a2[1] < a1)
  {
    *a4 = 24;
    if (*(a4 + 144) == 1)
    {
      return snprintf((a4 + 16), 0x80uLL, "P INT B 4 [%d %d] V %d", v9, a2[1], a1);
    }
  }

  return result;
}

uint64_t lsim22_02HandleEaApiStatus(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim22_02HandleEaApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("lsim22_02HandleEaApiStatus", 56, 1, 0xCuLL);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  if (v4)
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EAAPI_IND\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim22_02HandleEaApiStatus");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    if (g_GnsEaCallback)
    {
      *v4 = *(a1 + 12);
      v4[2] = *(a1 + 20);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>EaCB,Api,%u,Id,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim22_02HandleEaApiStatus", v4[1], *v4, v4[2]);
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
      }

      g_GnsEaCallback(0, 12, v4, v8);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 68, "lsim22_02HandleEaApiStatus", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 5, 1);
    }

    free(v4);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  }

  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim22_02HandleEaApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
  }

  return 0;
}

double lsim22_03EaCbInit(uint64_t (*a1)(void, void, void, __n128))
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    goto LABEL_2;
  }

  if (g_GnsEaCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim22_03EaCbInit", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

LABEL_2:
    g_GnsEaCallback = a1;
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim22_03EaCbInit", 513);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  return result;
}

uint64_t GNS_EaInitialize(uint64_t a1)
{
  v2 = gnssOsa_Calloc("GNS_EaInitialize", 116, 1, 0x18uLL);
  if (!v2)
  {
    return 6;
  }

  v2[3] = 7;
  *(v2 + 2) = a1;
  AgpsSendFsmMsg(131, 131, 8635139, v2);
  return 1;
}

uint64_t GNS_EaWgs84RefPos(int a1, __int128 *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaWgs84RefPos");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Wgs84RefPos\n");
    goto LABEL_17;
  }

  if ((*(a2 + 17) - 5) >= 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Source,%u\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 87, "GNS_EaWgs84RefPos", 515, *(a2 + 17));
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

    goto LABEL_19;
  }

  if (*(a2 + 16) >= 5u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Trust,%u\n", v25);
    goto LABEL_17;
  }

  if (fabs(*(a2 + 1)) > 90.0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Latitude,%f\n");
    goto LABEL_17;
  }

  if (fabs(*(a2 + 2)) > 180.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Longitude,%f\n");
LABEL_17:
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (*(a2 + 42) == 1 && fabs(*(a2 + 6)) > 100000.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Height,%f\n");
      goto LABEL_17;
    }

LABEL_18:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

LABEL_19:
    bzero(__str, 0x410uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v9, "LSM", 73, "GNS_EaWgs84RefPos");
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    return 2;
  }

  if (*(a2 + 20) - 181 <= 0xFE96)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:RmsSemiMajBrg,%d\n", v26);
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v13 = gnssOsa_Calloc("GNS_EaWgs84RefPos", 246, 1, 0x70uLL);
  if (v13)
  {
    v14 = v13;
    *(v13 + 3) = a1;
    *(v13 + 4) = 1;
    v15 = *a2;
    *(v13 + 40) = a2[1];
    *(v13 + 24) = v15;
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    *(v13 + 26) = *(a2 + 20);
    *(v13 + 88) = v18;
    *(v13 + 72) = v17;
    *(v13 + 56) = v16;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "GNS_EaWgs84RefPos", *(v14 + 4), *(v14 + 3));
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v14);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "GNS_EaWgs84RefPos");
      v11 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "GNS_EaWgs84RefPos");
      LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
    }

    return 6;
  }

  return v11;
}

uint64_t GNS_EaDevMovState(int a1, uint64_t *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaDevMovState");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:DMS\n");
    goto LABEL_19;
  }

  if (*(a2 + 1) >= 4u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:MovState,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_EaDevMovState", 515, *(a2 + 1));
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

    goto LABEL_21;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:MovReliab,%u\n", v22);
LABEL_19:
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
LABEL_20:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

LABEL_21:
    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v17, "LSM", 73, "GNS_EaDevMovState");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    return 2;
  }

  v6 = gnssOsa_Calloc("GNS_EaDevMovState", 336, 1, 0x70uLL);
  if (v6)
  {
    v7 = v6;
    v6[3] = a1;
    v6[4] = 2;
    v8 = *a2;
    v6[8] = *(a2 + 2);
    *(v6 + 3) = v8;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EaDevMovState", v7[4], v7[3]);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v7);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EaDevMovState");
      v13 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "GNS_EaDevMovState");
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
    }

    return 6;
  }

  return v13;
}

uint64_t GNS_EaSpeedConstraint(int a1, __int128 *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaSpeedConstraint");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a2)
  {
    v6 = gnssOsa_Calloc("GNS_EaSpeedConstraint", 393, 1, 0x70uLL);
    if (v6)
    {
      v7 = v6;
      *(v6 + 3) = a1;
      *(v6 + 4) = 8;
      v8 = *a2;
      *(v6 + 5) = *(a2 + 2);
      *(v6 + 24) = v8;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EaSpeedConstraint", *(v7 + 4), *(v7 + 3));
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8781827, v7);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EaSpeedConstraint");
        v13 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "GNS_EaSpeedConstraint");
        LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
      }

      return 6;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:SpdC\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "GNS_EaSpeedConstraint", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_EaSpeedConstraint");
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    return 2;
  }

  return v13;
}

uint64_t GNS_EaAlongTrackVel(int a1, __int128 *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaAlongTrackVel");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a2)
  {
    v6 = gnssOsa_Calloc("GNS_EaAlongTrackVel", 449, 1, 0x70uLL);
    if (v6)
    {
      v7 = v6;
      *(v6 + 3) = a1;
      *(v6 + 4) = 9;
      v8 = *a2;
      *(v6 + 5) = *(a2 + 2);
      *(v6 + 24) = v8;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EaAlongTrackVel", *(v7 + 4), *(v7 + 3));
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8781827, v7);
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = 1;
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EaAlongTrackVel");
      v14 = 4;
      goto LABEL_11;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_EaAlongTrackVel");
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    return 6;
  }

  else
  {
    v12 = 2;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:AlongTrackVel\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_EaAlongTrackVel", 513);
      v14 = 2;
LABEL_11:
      LbsOsaTrace_WriteLog(0xCu, __str, v13, v14, 1);
    }
  }

  return v12;
}

uint64_t GNS_EaUsrActCtxt(int a1, uint64_t *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaUsrActCtxt");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:UAC\n");
    goto LABEL_19;
  }

  if (*(a2 + 1) >= 0xCu)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Ctxt,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_EaUsrActCtxt", 515, *(a2 + 1));
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

    goto LABEL_21;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Reliab,%u\n", v22);
LABEL_19:
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
LABEL_20:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

LABEL_21:
    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v17, "LSM", 73, "GNS_EaUsrActCtxt");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    return 2;
  }

  v6 = gnssOsa_Calloc("GNS_EaUsrActCtxt", 672, 1, 0x70uLL);
  if (v6)
  {
    v7 = v6;
    v6[3] = a1;
    v6[4] = 3;
    v8 = *a2;
    v6[8] = *(a2 + 2);
    *(v6 + 3) = v8;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EaUsrActCtxt", v7[4], v7[3]);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v7);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EaUsrActCtxt");
      v13 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "GNS_EaUsrActCtxt");
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
    }

    return 6;
  }

  return v13;
}

uint64_t GNS_EaFixedInVehicle(int a1, uint64_t *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaFixedInVehicle");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:FIV\n");
    goto LABEL_19;
  }

  if (*(a2 + 1) >= 4u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:FivInd,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_EaFixedInVehicle", 515, *(a2 + 1));
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

    goto LABEL_21;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:FIVReliab,%u\n", v22);
LABEL_19:
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
LABEL_20:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

LABEL_21:
    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v17, "LSM", 73, "GNS_EaFixedInVehicle");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    return 2;
  }

  v6 = gnssOsa_Calloc("GNS_EaFixedInVehicle", 761, 1, 0x70uLL);
  if (v6)
  {
    v7 = v6;
    v6[3] = a1;
    v6[4] = 4;
    v8 = *a2;
    v6[8] = *(a2 + 2);
    *(v6 + 3) = v8;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EaFixedInVehicle", v7[4], v7[3]);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v7);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EaFixedInVehicle");
      v13 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "GNS_EaFixedInVehicle");
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
    }

    return 6;
  }

  return v13;
}

uint64_t GNS_EaSigEnvSev(int a1, unsigned int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaSigEnvSev");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a2 >= 8)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:SES,%u\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "GNS_EaSigEnvSev", 515, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GNS_EaSigEnvSev");
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
    }

    return 2;
  }

  else
  {
    v6 = gnssOsa_Calloc("GNS_EaSigEnvSev", 831, 1, 0x70uLL);
    if (v6)
    {
      v7 = v6;
      v6[3] = a1;
      v6[4] = 5;
      v6[6] = a2;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_EaSigEnvSev", v7[4], v7[3]);
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8781827, v7);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_EaSigEnvSev");
        v12 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GNS_EaSigEnvSev");
        LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
      }

      return 6;
    }
  }

  return v12;
}

uint64_t GNS_EaAltitude(int a1, __int128 *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaAltitude");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Alt\n");
    goto LABEL_12;
  }

  if (fabs(*(a2 + 1)) > 100000.0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Altitude,%f\n");
    goto LABEL_12;
  }

  if (*(a2 + 2) > 100000.0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:RMSAltitude,%f\n");
LABEL_12:
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
LABEL_13:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

LABEL_14:
    bzero(__str, 0x410uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v7, "LSM", 73, "GNS_EaAltitude");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    return 2;
  }

  if (*(a2 + 6) >= 5u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Trust,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "GNS_EaAltitude", 515, *(a2 + 6));
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

    goto LABEL_14;
  }

  v11 = gnssOsa_Calloc("GNS_EaAltitude", 927, 1, 0x70uLL);
  if (v11)
  {
    v12 = v11;
    *(v11 + 3) = a1;
    *(v11 + 4) = 6;
    v13 = *a2;
    *(v11 + 36) = *(a2 + 12);
    *(v11 + 24) = v13;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GNS_EaAltitude", *(v12 + 4), *(v12 + 3));
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v12);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_EaAltitude");
      v9 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "GNS_EaAltitude");
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
    }

    return 6;
  }

  return v9;
}

uint64_t GNS_EaMapVectorSeg(int a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaMapVectorSeg");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:MapVecSeg\n");
      goto LABEL_25;
    }

LABEL_26:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "GNS_EaMapVectorSeg");
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    }

    return 2;
  }

  if (fabs(*(a2 + 8)) > 90.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Latitude,%f\n");
LABEL_25:
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (fabs(*(a2 + 16)) > 180.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Longitude,%f\n");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (*(a2 + 32) == 1 && fabs(*(a2 + 24)) > 100000.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Altitude,%f\n");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (*(a2 + 40) > 360.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Direction,%f\n");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (*(a2 + 48) > 100000.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Length,%f\n");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (*(a2 + 56) > 100000.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Width,%f\n");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v11 = gnssOsa_Calloc("GNS_EaMapVectorSeg", 1045, 1, 0x70uLL);
  if (v11)
  {
    v12 = v11;
    *(v11 + 3) = a1;
    *(v11 + 4) = 7;
    *(v11 + 24) = *a2;
    v13 = *(a2 + 16);
    v14 = *(a2 + 32);
    v15 = *(a2 + 48);
    *(v11 + 85) = *(a2 + 61);
    *(v11 + 72) = v15;
    *(v11 + 56) = v14;
    *(v11 + 40) = v13;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_EaMapVectorSeg", *(v12 + 4), *(v12 + 3));
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v12);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "GNS_EaMapVectorSeg");
      v9 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "GNS_EaMapVectorSeg");
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
    }

    return 6;
  }

  return v9;
}

double lsim09_04SendConnApiStatus(int a1, int a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim09_04SendConnApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = gnssOsa_Calloc("lsim09_04SendConnApiStatus", 190, 1, 0x118uLL);
  if (v8)
  {
    v9 = v8;
    v8[1] = a3;
    v8[2] = a2;
    *v8 = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>DcCB,Api,%u,Status,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim09_04SendConnApiStatus", a3, a2, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }

    GNS_ExecuteDcCb(3, 280, v9);
    free(v9);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim09_04SendConnApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
  }

  return result;
}

double GNS_ExecuteDcCb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "GNS_ExecuteDcCb");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  if (g_GnsDcCallback)
  {
    g_GnsDcCallback(a1, a2, a3, v6);
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_ExecuteDcCb");
    v12 = 4;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "GNS_ExecuteDcCb", 258);
    v12 = 2;
  }

  LbsOsaTrace_WriteLog(0xCu, __str, v11, v12, 1);
  return result;
}

uint64_t lsim09_21TcpIpConnectCnf(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim09_21TcpIpConnectCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (g_GnsDcCallback)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_TCPIP_CONNECT_CNF,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim09_21TcpIpConnectCnf", *(a1 + 12));
        LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
      }

      v6 = 0;
      v7 = 1;
      v8 = &qword_2A191FFA8 + 1;
      do
      {
        if (*(v8 - 16) == 1 && *(v8 - 1) == 0x7FFF && *v8 == 1)
        {
          break;
        }

        v7 = v6 < 4;
        v8 += 6;
        ++v6;
      }

      while (v6 != 5);
      if (v7 && (lsim12_02StopTimer(0x7FFF, 1) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ConnectTimerStopFailed\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "lsim09_21TcpIpConnectCnf");
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 2, 1);
      }

      v11 = 0;
      v12 = 1;
      while (1)
      {
        v13 = v12;
        v14 = &g_SuplInstance + 296 * v11;
        v16 = *(v14 + 2);
        v15 = v14 + 8;
        if (v16 == 2)
        {
          break;
        }

        v12 = 0;
        v11 = 1;
        if ((v13 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v19 = (&g_SuplInstance + 296 * v11);
      if (*(v19 + 281) != 1)
      {
LABEL_27:
        lsim09_04SendConnApiStatus(*(a1 + 12), 4, 2);
        lsim09_02TcpIpDisconnectReq(*(a1 + 12));
        goto LABEL_31;
      }

      if (GN_SUPL_Connect_Ind_In(*v19, 6))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 68, "lsim09_21TcpIpConnectCnf", *v19);
          LbsOsaTrace_WriteLog(0xCu, __str, v21, 5, 1);
        }

        GN_SUPL_Handler();
        v22 = 1;
      }

      else
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0);
        v22 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In failed,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim09_21TcpIpConnectCnf", *v19);
          LbsOsaTrace_WriteLog(0xCu, __str, v25, 2, 1);
          v22 = 0;
        }
      }

      *v15 = 3;
      lsim09_04SendConnApiStatus(*(a1 + 12), v22, 2);
LABEL_31:
      v26 = 0;
      v27 = 1;
      while (1)
      {
        v28 = v27;
        if (*(&g_SuplInstance + 74 * v26 + 2) == 1)
        {
          break;
        }

        v27 = 0;
        v26 = 1;
        if ((v28 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v29 = &g_SuplInstance + 296 * v26;
      if (v29[281] == 1 && strnlen(v29 + 13, 0x100uLL))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PendingConn Found,SuplHandle,%u,SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "lsim09_21TcpIpConnectCnf", *v29, v26);
          LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
        }

        lsim09_11EstablishTcpIpSession(v26);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 87, "lsim09_21TcpIpConnectCnf", 258, *(a1 + 12));
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 2, 1);
    }
  }

LABEL_40:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 73, "lsim09_21TcpIpConnectCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
  }

  return 0;
}

double lsim09_02TcpIpDisconnectReq(int a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim09_02TcpIpDisconnectReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  memset_s(__s, 0x118uLL, 0, 0x118uLL);
  __s[0] = 1;
  __s[1] = a1;
  __s[2] = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LINK_REQ =>DcCB,CLOSE,SuplHandle,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim09_02TcpIpDisconnectReq", a1, 0);
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  GNS_ExecuteDcCb(0, 280, __s);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim09_02TcpIpDisconnectReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  return result;
}

void lsim09_11EstablishTcpIpSession(unsigned int a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("lsim09_11EstablishTcpIpSession", 263, 1, 0x114uLL);
  if (v2)
  {
    v3 = v2;
    v4 = &g_SuplInstance + 296 * a1;
    *v2 = *v4;
    *(v2 + 1) = (dword_2A18CCEB4 >> 13) & 1;
    v2[8] = v4[12];
    *(v2 + 137) = *(v4 + 139);
    *(v2 + 67) = *(v4 + 68);
    v2[272] = strnlen(v4 + 13, 0x100uLL);
    strncpy(v3 + 9, v4 + 13, 0x100uLL);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%p,SuplInstanceIndex,%u,Secure,%u,AddrType,%u,Port,%d,Addr,%s\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 73, "lsim09_11EstablishTcpIpSession", &g_SuplInstance + 296 * a1, a1, *(v3 + 1), *(v3 + 67), *(v3 + 137), v3 + 9);
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
    }

    *(v4 + 2) = 2;
    v7 = *v4;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim09_01TcpIpConnectReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }

    memset_s(&__s, 0x118uLL, 0, 0x118uLL);
    __s = 0;
    v17[0] = v7;
    memcpy_s("lsim09_01TcpIpConnectReq", 122, v17, 0x114u, v3, 0x114uLL);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LINK_REQ =>DcCB,OPEN,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim09_01TcpIpConnectReq", v7);
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }

    GNS_ExecuteDcCb(0, 280, &__s);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim09_01TcpIpConnectReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    if ((lsim12_01StartTimer(lsim09_26HandleConnectTimerExpiry, 0x7FFF, 0x7530u, 1) & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConnTmr,SuplHandle,%u,SuplSessionIndex,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim09_11EstablishTcpIpSession", 1544, *v4, a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }
    }

    free(v3);
  }
}

uint64_t lsim09_22TcpIpConnectErr(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim09_22TcpIpConnectErr");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    goto LABEL_39;
  }

  if (!g_GnsDcCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "lsim09_22TcpIpConnectErr", 258, *(a1 + 12));
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
    }

    goto LABEL_39;
  }

  v4 = 0;
  v5 = 1;
  v6 = &qword_2A191FFA8 + 1;
  do
  {
    if (*(v6 - 16) == 1 && *(v6 - 1) == 0x7FFF && *v6 == 1)
    {
      break;
    }

    v5 = v4 < 4;
    v6 += 6;
    ++v4;
  }

  while (v4 != 5);
  if (v5 && (lsim12_02StopTimer(0x7FFF, 1) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ConnectTimerStopFailed\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 87, "lsim09_22TcpIpConnectErr");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_TCPIP_CONNECT_ERR,ErrorType,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim09_22TcpIpConnectErr", *(a1 + 16), *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = &g_SuplInstance + 296 * v11;
    v16 = *(v14 + 2);
    v15 = v14 + 8;
    if (v16 == 2)
    {
      break;
    }

    v12 = 0;
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      v17 = 4;
      goto LABEL_30;
    }
  }

  if (*(&g_SuplInstance + 296 * v11 + 281) != 1)
  {
    goto LABEL_29;
  }

  PpduCodeFromDcStatus = lsim09_05GetPpduCodeFromDcStatus(*(a1 + 16));
  *v15 = 0;
  v21 = (&g_SuplInstance + 296 * v11);
  if (!GN_SUPL_Connect_Ind_In(*v21, PpduCodeFromDcStatus))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In failed,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim09_22TcpIpConnectErr", *v21);
      LbsOsaTrace_WriteLog(0xCu, __str, v25, 2, 1);
    }

LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 68, "lsim09_22TcpIpConnectErr", *v21);
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 5, 1);
  }

  GN_SUPL_Handler();
  v17 = 1;
LABEL_30:
  lsim09_04SendConnApiStatus(*(a1 + 12), v17, 2);
  v26 = 0;
  v27 = 1;
  while (1)
  {
    v28 = v27;
    if (*(&g_SuplInstance + 74 * v26 + 2) == 1)
    {
      break;
    }

    v27 = 0;
    v26 = 1;
    if ((v28 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v29 = &g_SuplInstance + 296 * v26;
  if (v29[281] == 1 && strnlen(v29 + 13, 0x100uLL))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PendingConn Found,SuplHandle,%u,SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "lsim09_22TcpIpConnectErr", *v29, v26);
      LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
    }

    lsim09_11EstablishTcpIpSession(v26);
  }

LABEL_39:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 73, "lsim09_22TcpIpConnectErr");
    LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
  }

  return 0;
}

uint64_t lsim09_05GetPpduCodeFromDcStatus(unsigned int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 < 0x10)
  {
    return dword_29972B420[a1];
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v3 = mach_continuous_time();
  v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DcErr,%u\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 87, "lsim09_05GetPpduCodeFromDcStatus", 515, a1);
  v2 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v4, 2, 1);
  return v2;
}

uint64_t lsim09_23TcpIpDisconnectInd(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim09_23TcpIpDisconnectInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (g_GnsDcCallback)
    {
      v4 = 0;
      v5 = 1;
      while (1)
      {
        v6 = v5;
        if (*(&g_SuplInstance + 74 * v4) == *(a1 + 12))
        {
          break;
        }

        v5 = 0;
        v4 = 1;
        if ((v6 & 1) == 0)
        {
          LOBYTE(v4) = -1;
          break;
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_TCPIP_DISCONNECT_IND,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim09_23TcpIpDisconnectInd", *(a1 + 12));
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
      }

      v11 = 0;
      v12 = 1;
      v13 = &qword_2A191FFA8 + 1;
      do
      {
        if (*(v13 - 16) == 1 && *(v13 - 1) == 0xFFFF && *v13 == 2)
        {
          break;
        }

        v12 = v11 < 4;
        v13 += 6;
        ++v11;
      }

      while (v11 != 5);
      if (v12 && (lsim12_02StopTimer(0xFFFF, 2) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DisconnectTimerStopFailed\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim09_23TcpIpDisconnectInd");
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }

      v16 = *(a1 + 12);
      if (v4 == 0xFF)
      {
        v23 = 4;
      }

      else
      {
        v17 = (&g_SuplInstance + 296 * v4);
        if (*v17 == v16 && *(v17 + 281) == 1 && ((v18 = v17[2], v18 != 5) ? (v19 = v18 == 3) : (v19 = 1), v19))
        {
          PpduCodeFromDcStatus = lsim09_05GetPpduCodeFromDcStatus(*(a1 + 16));
          if (GN_SUPL_Disconnect_Ind_In(*v17, PpduCodeFromDcStatus))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v21 = mach_continuous_time();
              v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Disconnect_Ind_In successful,SuplHandle,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 68, "lsim09_23TcpIpDisconnectInd", *v17, PpduCodeFromDcStatus);
              LbsOsaTrace_WriteLog(0xCu, __str, v22, 5, 1);
            }

            GN_SUPL_Handler();
            v23 = 1;
          }

          else
          {
            v23 = 0;
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v27 = mach_continuous_time();
              v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Disconnect_Ind_In failed,SuplHandle,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 87, "lsim09_23TcpIpDisconnectInd", *v17, PpduCodeFromDcStatus);
              LbsOsaTrace_WriteLog(0xCu, __str, v28, 2, 1);
              v23 = 0;
            }
          }

          lsim05_34DeleteSuplContext(v4);
          v16 = *(a1 + 12);
        }

        else
        {
          v23 = 14;
        }

        v17[2] = 0;
      }

      lsim09_04SendConnApiStatus(v16, v23, 2);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 87, "lsim09_23TcpIpDisconnectInd", 258, *(a1 + 12));
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 73, "lsim09_23TcpIpDisconnectInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
  }

  return 0;
}

double lsim09_26HandleConnectTimerExpiry(int a1, int a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim09_26HandleConnectTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1 != 0x7FFF || a2 != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_36;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Unexpected TimerId,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "lsim09_26HandleConnectTimerExpiry", a1, a2);
    v11 = 2;
    goto LABEL_35;
  }

  v6 = 0;
  v7 = 1;
  while (*(&g_SuplInstance + 74 * v6 + 2) != 2)
  {
    v8 = v7;
    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim09_13HandleTcpConnectionFailure");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = v15;
    v17 = &g_SuplInstance + 296 * v14;
    v19 = *(v17 + 2);
    v18 = v17 + 8;
    if (v19 == 2)
    {
      break;
    }

    v15 = 0;
    v14 = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v20 = (&g_SuplInstance + 296 * v14);
  if (GN_SUPL_Connect_Ind_In(*v20, 17))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In successful,SuplHandle,%u,PendIndex,%u\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 68, "lsim09_13HandleTcpConnectionFailure", *v20, v14);
      LbsOsaTrace_WriteLog(0xCu, __str, v22, 5, 1);
    }

    GN_SUPL_Handler();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In failed,SuplHandle,%u,PendIndex,%hhu\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 87, "lsim09_13HandleTcpConnectionFailure", *v20, v14);
    LbsOsaTrace_WriteLog(0xCu, __str, v24, 2, 1);
  }

  if (*(&g_SuplInstance + 74 * v14 + 71) == 2)
  {
    lsim05_34DeleteSuplContext(v14);
  }

  *v18 = 0;
LABEL_26:
  v25 = 0;
  v26 = 1;
  while (1)
  {
    v27 = v26;
    if (*(&g_SuplInstance + 74 * v25 + 2) == 1)
    {
      break;
    }

    v26 = 0;
    v25 = 1;
    if ((v27 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v28 = &g_SuplInstance + 296 * v25;
  if (v28[281] == 1 && strnlen(v28 + 13, 0x100uLL))
  {
    lsim09_11EstablishTcpIpSession(v25);
  }

LABEL_33:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 73, "lsim09_13HandleTcpConnectionFailure");
    v11 = 4;
LABEL_35:
    LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
  }

LABEL_36:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "LSM", 73, "lsim09_26HandleConnectTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v32, 4, 1);
  }

  return result;
}

double lsim09_27HandleDisconnectTimerExpiry(int a1, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim09_27HandleDisconnectTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1 == 0xFFFF && a2 == 2)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v7;
      if (*(&g_SuplInstance + 74 * v6 + 2) == 5)
      {
        break;
      }

      v7 = 0;
      v6 = 1;
      if ((v8 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v11 = (&g_SuplInstance + 296 * v6);
    if (*(v11 + 281) == 1)
    {
      if (GN_SUPL_Disconnect_Ind_In(*v11, 17))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Disconnect_Ind_In Successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 68, "lsim09_12TcpIpDisconnectProcess", *v11);
          LbsOsaTrace_WriteLog(0xCu, __str, v13, 5, 1);
        }

        GN_SUPL_Handler();
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Disconnect_Ind_In failed,SuplHandle,%u,SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim09_12TcpIpDisconnectProcess", *v11, v6);
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }

      lsim09_02TcpIpDisconnectReq(*v11);
      lsim05_34DeleteSuplContext(v6);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Unexpected TimerId,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "lsim09_27HandleDisconnectTimerExpiry", a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 2, 1);
  }

LABEL_19:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim09_27HandleDisconnectTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

  return result;
}

double lsim09_31DisconnectSuplSession(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 > 1 || (v1 = (&g_SuplInstance + 296 * a1), (*(v1 + 281) & 1) == 0))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplInstanceIndex,%u\n", v7);
    goto LABEL_10;
  }

  lsim09_02TcpIpDisconnectReq(*v1);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim09_31DisconnectSuplSession", *v1);
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v1[2] = 5;
  if ((lsim12_01StartTimer(lsim09_27HandleDisconnectTimerExpiry, 0xFFFF, 0x7D0u, 2) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DisConnTmr,SuplHandle,%u,SuplSessionIndex,%u\n", v5);
LABEL_10:
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  return result;
}

double lsim09_32ConnectSUPLSession(unsigned int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = (&g_SuplInstance + 296 * a1);
  if (v2[2] == 3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplInstanceIndex,%d\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 87, "lsim09_32ConnectSUPLSession", 2053, a1);
    v6 = 2;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    while (*(&g_SuplInstance + 74 * v7 + 2) != 2)
    {
      v9 = v8;
      v8 = 0;
      v7 = 1;
      if ((v9 & 1) == 0)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim09_32ConnectSUPLSession", *v2);
          LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
        }

        lsim09_11EstablishTcpIpSession(a1);
        return result;
      }
    }

    v2[2] = 1;
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Waiting for pending connections\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim09_32ConnectSUPLSession");
    v6 = 4;
  }

  LbsOsaTrace_WriteLog(0xCu, __str, v5, v6, 1);
  return result;
}

double lsim09_33SendDataReq(int a1, unsigned __int8 *a2, int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim09_33SendDataReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  memset_s(&__s, 0x118uLL, 0, 0x118uLL);
  __s = a1;
  v14 = a2;
  v15 = a3;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:SEND_DATA =>DcCB,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim09_33SendDataReq", a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  GNS_ExecuteDcCb(1, 24, &__s);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim09_33SendDataReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  return result;
}

double lsim09_34SendClientSlpInfo(void)
{
  v16 = *MEMORY[0x29EDCA608];
  result = 0.0;
  *(&__src[60] + 1) = 0u;
  *(&__src[56] + 1) = 0u;
  *(&__src[52] + 1) = 0u;
  *(&__src[48] + 1) = 0u;
  *(&__src[44] + 1) = 0u;
  *(&__src[40] + 1) = 0u;
  *(&__src[36] + 1) = 0u;
  *(&__src[32] + 1) = 0u;
  *(&__src[28] + 1) = 0u;
  *(&__src[24] + 1) = 0u;
  *(&__src[20] + 1) = 0u;
  *(&__src[16] + 1) = 0u;
  *(&__src[12] + 1) = 0u;
  *(&__src[8] + 1) = 0u;
  *(&__src[4] + 1) = 0u;
  *(__src + 1) = 0u;
  if ((byte_2A1920A81 & 1) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimsInfo\n");
    goto LABEL_9;
  }

  if (!byte_2A1920A82)
  {
    return result;
  }

  v1 = 0;
  v2 = byte_2A1920A85;
  for (i = 1; ; i = 0)
  {
    v4 = &g_LsimUserConfig + 268 * v1;
    if (*v4 == byte_2A1920A85)
    {
      break;
    }

    v5 = i;
    v1 = 1;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  v7 = strnlen(v4 + 8, 0x100uLL);
  if (v7 < 0x100)
  {
    v8 = *(v4 + 1);
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      LOBYTE(__src[0]) = v2;
      __src[65] = v8;
      LOBYTE(__src[66]) = v7;
      HIWORD(__src[66]) = *(v4 + 132);
      strncpy_s(__src + 1, 0x100u, v4 + 8, v7);
      memset_s(__s, 0x118uLL, 0, 0x118uLL);
      memcpy(__s, __src, 0x10CuLL);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:SLP_INFO =>DcCB,Addr,%s,Port,%d\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim09_34SendClientSlpInfo", __src + 1, HIWORD(__src[66]));
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
      }

      return GNS_ExecuteDcCb(2, 268, __s);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimSlpAddrLen,%u\n", v12);
LABEL_9:
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  return result;
}

double lsim09_41DcCbInit(uint64_t (*a1)(void, void, void, __n128))
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    goto LABEL_2;
  }

  if (g_GnsDcCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim09_41DcCbInit", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

LABEL_2:
    g_GnsDcCallback = a1;
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim09_41DcCbInit", 513);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  return result;
}

double lsim09_50ConnMgmtDeInit(__n128 a1)
{
  v1 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v2 = 1;
  v3 = &qword_2A191FFA8 + 1;
  do
  {
    if (*(v3 - 16) == 1 && *(v3 - 1) == 0x7FFF && *v3 == 1)
    {
      break;
    }

    v2 = v1 < 4;
    v3 += 6;
    ++v1;
  }

  while (v1 != 5);
  if (v2 && (lsim12_02StopTimer(0x7FFF, 1) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ConnectTimerStopFailed\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim09_50ConnMgmtDeInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  v7 = 0;
  v8 = 1;
  v9 = &qword_2A191FFA8 + 1;
  do
  {
    if (*(v9 - 16) == 1 && *(v9 - 1) == 0xFFFF && *v9 == 2)
    {
      break;
    }

    v8 = v7 < 4;
    v9 += 6;
    ++v7;
  }

  while (v7 != 5);
  if (v8 && (lsim12_02StopTimer(0xFFFF, 2) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DisconnectTimerStopFailed\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 87, "lsim09_50ConnMgmtDeInit");
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
    }
  }

  return result;
}

BOOL GNS_DcInitialize(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_DcInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_DcInitialize", 999, 1, 0x18uLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = 6;
    *(v4 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_DcInitialize");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  return v5 != 0;
}

uint64_t GNS_DcSuplInit(unsigned __int8 *a1, size_t a2, char a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_DcSuplInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a1 && (a2 - 0x10000) > 0xFFFF0000)
  {
    v8 = gnssOsa_Calloc("GNS_DcSuplInit", 1044, 1, 0x20uLL);
    if (v8)
    {
      v9 = v8;
      v10 = gnssOsa_Calloc("GNS_DcSuplInit", 1053, 1, a2);
      v9[2] = v10;
      if (v10)
      {
        memcpy_s("GNS_DcSuplInit", 1064, v10, a2, a1, a2);
        *(v9 + 3) = a2;
        *(v9 + 24) = a3;
        AgpsSendFsmMsg(131, 131, 8621827, v9);
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_DcSuplInit");
        v13 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
        return v13;
      }

      free(v9);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "GNS_DcSuplInit");
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    }

    return 6;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pdu,Length,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "GNS_DcSuplInit", 513, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_DcSuplInit");
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    return 2;
  }
}

uint64_t GNS_DcSuplPdu(int a1, unsigned __int8 *a2, size_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_DcSuplPdu");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a2 && (a3 - 0x10000) > 0xFFFF0000)
  {
    v8 = gnssOsa_Calloc("GNS_DcSuplPdu", 1103, 1, 0x20uLL);
    if (v8)
    {
      v9 = v8;
      v8[3] = a1;
      v10 = gnssOsa_Calloc("GNS_DcSuplPdu", 1112, 1, a3);
      *(v9 + 3) = v10;
      if (v10)
      {
        memcpy_s("GNS_DcSuplPdu", 1124, v10, a3, a2, a3);
        v9[4] = a3;
        AgpsSendFsmMsg(131, 131, 8622595, v9);
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_DcSuplPdu");
        v13 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
        return v13;
      }

      free(v9);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        goto LABEL_17;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
LABEL_17:
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v18, "LSM", 73, "GNS_DcSuplPdu");
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    }

    return 6;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pdu,Length,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "GNS_DcSuplPdu", 513, a3, a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_DcSuplPdu");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  return 2;
}

uint64_t GNS_DcLinkRsp(int a1, int a2, int a3)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_DcLinkRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,RespType,%u,ErrType,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_DcLinkRsp", a2, a1, a3);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if ((a1 - 2) < 3)
  {
    v10 = gnssOsa_Calloc("GNS_DcLinkRsp", 1202, 1, 0x14uLL);
    v11 = v10;
    if (v10)
    {
      *(v10 + 3) = a2;
      *(v10 + 4) = a3;
      v12 = 8622339;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (a1 == 1)
  {
    v14 = gnssOsa_Calloc("GNS_DcLinkRsp", 1181, 1, 0x14uLL);
    v11 = v14;
    if (v14)
    {
      *(v14 + 3) = a2;
      *(v14 + 4) = a3;
      v12 = 8622082;
LABEL_14:
      AgpsSendFsmMsg(131, 131, v12, v11);
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GNS_DcLinkRsp");
      v17 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
      return v17;
    }

LABEL_16:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, v11))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "GNS_DcLinkRsp");
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    }

    return 6;
  }

  if (!a1)
  {
    v13 = gnssOsa_Calloc("GNS_DcLinkRsp", 1162, 1, 0x10uLL);
    v11 = v13;
    if (v13)
    {
      *(v13 + 3) = a2;
      v12 = 8622081;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespType,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 87, "GNS_DcLinkRsp", 515, a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v21, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GNS_DcLinkRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  return 2;
}

uint64_t CUCFGetNumOfDigits(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    if (a1 >= 0x64)
    {
      if (a1 >= 0x3E8)
      {
        if (a1 >> 4 >= 0x271)
        {
          if (a1 >> 5 >= 0xC35)
          {
            if (a1 >= 0xF4240)
            {
              if (a1 >= 0x989680)
              {
                if (a1 >= 0x5F5E100)
                {
                  if (a1 < 0x3B9ACA00)
                  {
                    return 9;
                  }

                  else
                  {
                    return 10;
                  }
                }

                else
                {
                  return 8;
                }
              }

              else
              {
                return 7;
              }
            }

            else
            {
              return 6;
            }
          }

          else
          {
            return 5;
          }
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t CUCFGetOpenTypeObject(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4)
{
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = a2;
  do
  {
    do
    {
      v9 = *(v9 + 3);
      v10 = *v9;
    }

    while (v10 == 96);
  }

  while (v10 == 128 || v10 == 160);
  v11 = v10 & 0x1F;
  if (v11 <= 3)
  {
    switch(v11)
    {
      case 1:
        if (!v8)
        {
          goto LABEL_36;
        }

        v24 = *(a2 + 5);
        while (*(v7 + 16) != *a3)
        {
          v7 += 32;
          if (!--v24)
          {
            goto LABEL_36;
          }
        }

        break;
      case 2:
        if (!v8)
        {
          goto LABEL_36;
        }

        v24 = *(a2 + 5);
        while (*a3 != *(v7 + 16))
        {
          v7 += 32;
          if (!--v24)
          {
            goto LABEL_36;
          }
        }

        break;
      case 3:
        v45 = a4;
        if (v8)
        {
          v14 = *(a3 + 1);
          v15 = *a3;
          do
          {
            v16 = *(v7 + 16);
            if (v16)
            {
              v17 = strnlen(*(v7 + 16), 0x400uLL);
              if (v15 == v17)
              {
                if (!v17)
                {
                  goto LABEL_94;
                }

                if (v15)
                {
                  v18 = MMSAlloc(a1, v15);
                  memcpy_s("posp_memcpy", 29, v18, v15, v16, v15);
                  for (i = 0; i != v15; ++i)
                  {
                    *(v18 + i) -= 48;
                  }

                  if (v14 && v18)
                  {
                    v20 = memcmp(v18, v14, v15);
                    MMSFree(a1, v18, v15);
                    if (!v20)
                    {
                      goto LABEL_94;
                    }
                  }

                  else
                  {
                    MMSFree(a1, v18, v15);
                  }
                }
              }
            }

            v7 += 32;
            --v8;
          }

          while (v8);
        }

        goto LABEL_35;
      default:
        goto LABEL_48;
    }

LABEL_63:
    v27 = *(a2 + 5);
    v8 = v24;
    goto LABEL_64;
  }

  if (v11 <= 0x1A)
  {
    if (((1 << v11) & 0x5CC0000) != 0)
    {
      v12 = *a3;
      v45 = a4;
      if (!*a3)
      {
        v13 = -2;
        if (v8)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      v13 = strnlen(v12, 0x400uLL) - 1;
      if (!v8)
      {
LABEL_35:
        v8 = *(a2 + 5);
        a4 = v45;
LABEL_36:
        *a4 = v8;
        return 0;
      }

LABEL_30:
      while (1)
      {
        v21 = *(v7 + 16);
        if (v21)
        {
          v22 = strnlen(*(v7 + 16), 0x400uLL);
          if (v13 == v22 && (!v22 || !memcmp(v21, v12 + 1, v22)))
          {
            break;
          }
        }

        v7 += 32;
        if (!--v8)
        {
          goto LABEL_35;
        }
      }

LABEL_94:
      a4 = v45;
LABEL_95:
      *a4 = *(a2 + 5) - v8;
      if (v8)
      {
        return v7;
      }

      return 0;
    }

    if (v11 == 6)
    {
      if (!v8)
      {
        goto LABEL_36;
      }

      v45 = a4;
      while (1)
      {
        v28 = (*(v7 + 16))(a1);
        v29 = CUCFEqualObjectOBJECT_IDENTIFIER(v28, a3);
        CUCFFreeObject(a1, v9, v28);
        if (v29)
        {
          break;
        }

        v7 += 32;
        if (!--v8)
        {
          goto LABEL_35;
        }
      }

      v27 = *(a2 + 5);
      a4 = v45;
LABEL_64:
      *a4 = v27 - v8;
      return v7;
    }

    if (v11 == 10)
    {
      if (!v8)
      {
        goto LABEL_36;
      }

      v24 = *(a2 + 5);
      while (*(v7 + 16) != *a3)
      {
        v7 += 32;
        if (!--v24)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_63;
    }
  }

  if (v11 == 4)
  {
    v45 = a4;
    if (!v8)
    {
      goto LABEL_35;
    }

    __s2 = *(a3 + 1);
    v30 = *a3;
    while (1)
    {
      v31 = *(v7 + 16);
      if (!v31)
      {
        if (!v30)
        {
          goto LABEL_94;
        }

        goto LABEL_92;
      }

      v32 = strnlen(*(v7 + 16), 0x400uLL) + 1;
      if (v30 == v32 >> 1)
      {
        if (v32 < 2)
        {
          goto LABEL_94;
        }

        if (v30)
        {
          v33 = MMSAlloc(a1, v30);
          v34 = v33;
          v35 = 0;
          v36 = v33;
          do
          {
            v37 = *(v31 + v35);
            if (v37 >= 0x41)
            {
              v38 = 9;
            }

            else
            {
              v38 = 0;
            }

            v39 = v38 + v37;
            *v36 = 16 * v39;
            v40 = *(v31 + v35 + 1);
            if (v40 >= 0x41)
            {
              v41 = -55;
            }

            else
            {
              v41 = -48;
            }

            *v36++ = (v41 + v40) | (16 * v39);
            v35 += 2;
          }

          while (v35 < 2 * v30);
          if (__s2 && v33)
          {
            v43 = v33;
            v42 = memcmp(v33, __s2, v30);
            MMSFree(a1, v43, v30);
            if (!v42)
            {
              goto LABEL_94;
            }

            goto LABEL_92;
          }
        }

        else
        {
          v34 = 0;
        }

        MMSFree(a1, v34, v30);
      }

LABEL_92:
      v7 += 32;
      if (!--v8)
      {
        goto LABEL_35;
      }
    }
  }

  if (v11 == 5)
  {
    goto LABEL_95;
  }

LABEL_48:
  if (!v8)
  {
    goto LABEL_36;
  }

  v45 = a4;
  while (1)
  {
    v25 = (*(v7 + 16))(a1);
    v26 = CUCFEqualObject(a1, v9, v25, a3);
    CUCFFreeObject(a1, v9, v25);
    if (v26)
    {
      break;
    }

    v7 += 32;
    if (!--v8)
    {
      goto LABEL_35;
    }
  }

  *v45 = *(a2 + 5) - v8;
  return v7;
}

BOOL CUCFEqualObjectOBJECT_IDENTIFIER(void *a1, uint64_t ***a2)
{
  v2 = a1[1];
  v3 = *(a2 + 4);
  if (v2 != v3)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = *a2;
    if (*a2)
    {
      while (--v8)
      {
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      v6 = *(v9 + 2);
    }

LABEL_9:
    if (*(*a1 + 8 * v5) != v6)
    {
      break;
    }

    ++v5;
    ++v7;
    v4 = v5 >= v2;
  }

  while (v5 != v2);
  return v4;
}

void CUCFFreeObject(uint64_t result, unsigned __int8 *a2, void **a3)
{
  v4 = result;
  while (1)
  {
    v5 = *a2;
    if (v5 <= 0x70)
    {
      if (*a2 > 0x59u)
      {
        if (v5 == 96)
        {
          goto LABEL_8;
        }

        if (v5 != 90)
        {
          if (v5 == 112)
          {
            goto LABEL_27;
          }

LABEL_38:

          CUCFErrorHandler(result, 16);
          return;
        }

        goto LABEL_30;
      }

      if (*a2 <= 0x30u)
      {
        switch(*a2)
        {
          case 1u:
            v6 = a3;
            v7 = 1;
            goto LABEL_33;
          case 2u:
            goto LABEL_36;
          case 3u:
          case 4u:
          case 0x12u:
          case 0x13u:
          case 0x16u:
          case 0x17u:
          case 0x18u:
          case 0x1Au:
            goto LABEL_30;
          case 5u:
            return;
          case 6u:
            MMSFree(result, *a3, (8 * a3[1]));
            goto LABEL_45;
          case 7u:
          case 8u:
          case 9u:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
          case 0x14u:
          case 0x15u:
          case 0x19u:
          case 0x1Bu:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
            goto LABEL_38;
          case 0xAu:
            v6 = a3;
            v7 = 8;
            goto LABEL_33;
          case 0x10u:
          case 0x11u:

            CUCFFreeObjectStruct(result, a2, a3);
            break;
          case 0x20u:
            goto LABEL_18;
          default:
            if (v5 != 48)
            {
              goto LABEL_38;
            }

            goto LABEL_27;
        }

        return;
      }

      if (*a2 > 0x43u)
      {
        if (v5 - 82 >= 2 && v5 != 68 && v5 != 86)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (*a2 <= 0x41u)
        {
          if (v5 == 49)
          {
            goto LABEL_27;
          }

          if (v5 != 64)
          {
            goto LABEL_38;
          }

LABEL_18:
          CUCFFreeObject(result, *(*(a2 + 4) + 32 * a3[1]), *a3);
LABEL_45:
          result = v4;
          v6 = a3;
          v7 = 16;
LABEL_33:

          MMSFree(result, v6, v7);
          return;
        }

        if (v5 == 66)
        {
LABEL_36:
          v6 = a3;
          v7 = 4;
          goto LABEL_33;
        }
      }

LABEL_30:
      if (!*(a3 + 16))
      {
        MMSFree(result, *a3, a3[1]);
      }

      result = v4;
      v6 = a3;
      v7 = 24;
      goto LABEL_33;
    }

    if (v5 != 128 && v5 != 160)
    {
      break;
    }

LABEL_8:
    a2 = *(a2 + 3);
  }

  if (v5 != 113)
  {
    goto LABEL_38;
  }

LABEL_27:

  CUCFFreeObjectSEQUENCE_OF(result, a2, a3);
}

uint64_t CUCFEqualObject(uint64_t a1, unsigned __int8 *a2, const void **a3, uint64_t ***a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a1;
  v52[1] = *MEMORY[0x29EDCA608];
  v8 = *a2;
  if (v8 <= 0x2F)
  {
    switch(*a2)
    {
      case 1u:
        v22 = *a4;
        v23 = *a3;
        return v23 == v22;
      case 2u:
        goto LABEL_56;
      case 3u:
      case 4u:
        goto LABEL_36;
      case 5u:
        return 1;
      case 6u:
        result = CUCFEqualObjectOBJECT_IDENTIFIER(a3, a4);
        if (result)
        {
          return 1;
        }

        return result;
      case 0xAu:
        return *a3 == *a4;
      case 0x10u:
      case 0x11u:
        v52[0] = *a3;
        return (!*(a2 + 7) || CUCFEqualObjectStructComps(a1, a2, 1, v52, a4)) && (!*(a2 + 8) || CUCFEqualObjectStructComps(v7, a2, 2, v52, v4)) && (!*(a2 + 9) || CUCFEqualObjectStructComps(v7, a2, 3, v52, v4));
      case 0x12u:
      case 0x13u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x1Au:
        goto LABEL_3;
      case 0x20u:
        v38 = *(a2 + 1);
        v39 = *(v38 + 40);
        if (v39 > 3)
        {
          goto LABEL_115;
        }

        if (v39 == 1)
        {
          v40 = *a4;
        }

        else if (v39 == 2)
        {
          v40 = *a4;
        }

        else
        {
LABEL_115:
          v40 = *a4;
        }

        v47 = *(a2 + 5);
        if (!v47)
        {
          return 0;
        }

        v48 = v40;
        v49 = (*(a2 + 4) + 24);
        break;
      default:
        goto LABEL_95;
    }

    while (*(v49 - 8) == 5 || *v49 != v48)
    {
      result = 0;
      v49 += 4;
      if (!--v47)
      {
        return result;
      }
    }

    if (a3[1] == v48)
    {
      v50 = *(v38 + 36);
      v21 = *(v49 - 3);
LABEL_135:
      a3 = *a3;
      a4 = (a4 + v50);
      a1 = v7;
LABEL_47:
      result = CUCFEqualObject(a1, v21, a3, a4);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    return 0;
  }

  if (*a2 > 0x52u)
  {
    if (*a2 <= 0x6Fu)
    {
      if (*a2 <= 0x59u)
      {
        if (v8 != 83 && v8 != 86)
        {
          goto LABEL_95;
        }

        goto LABEL_3;
      }

      if (v8 != 90)
      {
        if (v8 != 96)
        {
          goto LABEL_95;
        }

LABEL_46:
        v21 = *(a2 + 3);
        goto LABEL_47;
      }

LABEL_3:
      v9 = *a3;
      v10 = a3[1];
      v11 = *a4;
      if (*a4)
      {
        v12 = strnlen(*a4, 0x400uLL) - 1;
        if (!v9)
        {
          return 0;
        }
      }

      else
      {
        v12 = -2;
        if (!v9)
        {
          return 0;
        }
      }

      return !memcmp(v9, v11 + 1, v12) && v10 == v12;
    }

    if (*a2 > 0x7Fu)
    {
      if (v8 != 128 && v8 != 160)
      {
        goto LABEL_95;
      }

      goto LABEL_46;
    }

    if (v8 != 112)
    {
      if (v8 != 113)
      {
        goto LABEL_95;
      }

LABEL_57:
      v24 = *(a4 + 4);
      if (a3[1] == v24)
      {
        v25 = MMSAlloc(a1, *(a4 + 4));
        memset_s(v25, v24, 0, v24);
        if (!v24)
        {
LABEL_80:
          MMSFree(v7, v25, v24);
          return 1;
        }

        v26 = 0;
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = *v4;
          if (*v4)
          {
            v30 = 0;
            while (1)
            {
              v31 = v29[1];
              if (v31 >= 1)
              {
                break;
              }

LABEL_67:
              v29 = *v29;
              if (!v29)
              {
                goto LABEL_70;
              }
            }

            v32 = v31 + v30;
            v33 = v26 + v30;
            while (v33)
            {
              ++v33;
              if (!--v31)
              {
                v30 = v32;
                goto LABEL_67;
              }
            }

            v28 = v29 + *(*(a2 + 1) + 36);
          }

LABEL_70:
          v34 = 0;
          while (*(v25 + v34) || !CUCFEqualObject(v7, *(a2 + 3), *(*v5 + v34), v28))
          {
            if (v24 == ++v34)
            {
              goto LABEL_76;
            }
          }

          *(v25 + v34) = 1;
LABEL_76:
          ++v27;
          --v26;
        }

        while (v27 != v24);
        v35 = 0;
        while (*(v25 + v35))
        {
          if (v24 == ++v35)
          {
            goto LABEL_80;
          }
        }

        MMSFree(v7, v25, v24);
      }

      return 0;
    }

    goto LABEL_81;
  }

  if (*a2 <= 0x41u)
  {
    if (v8 == 48)
    {
LABEL_81:
      v36 = **(a2 + 1);
      if (v36 == 181)
      {
        v37 = *(a4 + 4);
      }

      else
      {
        if (v36 != 182)
        {
          CUCFErrorHandler(a1, 15);
          return !v5[1];
        }

        v37 = *a4;
      }

      if (a3[1] != v37)
      {
        return 0;
      }

      if (!v37)
      {
        return 1;
      }

      v41 = 0;
      for (i = 1; ; ++i)
      {
        v43 = *(a2 + 1);
        if (*v43 == 182)
        {
          v46 = &v4[*(v43 + 36) + v41 * *(*(v43 + 24) + 8)];
        }

        else
        {
          if (*v43 == 181)
          {
            v44 = *v4;
            v45 = i;
            if (*v4)
            {
              while (--v45)
              {
                v44 = *v44;
                if (!v44)
                {
                  goto LABEL_108;
                }
              }

              v46 = v44 + *(v43 + 36);
              goto LABEL_109;
            }
          }

          else
          {
            CUCFErrorHandler(v7, 15);
          }

LABEL_108:
          v46 = 0;
        }

LABEL_109:
        result = CUCFEqualObject(v7, *(a2 + 3), *(*v5 + v41), v46);
        if (!result)
        {
          return result;
        }

        if (++v41 == v37)
        {
          return 1;
        }
      }
    }

    if (v8 == 49)
    {
      goto LABEL_57;
    }

    if (v8 != 64)
    {
      goto LABEL_95;
    }

    v14 = *(a2 + 1);
    v15 = *(a2 + 5);
    v16 = *(v14 + 40);
    if (v16 > 3)
    {
      goto LABEL_116;
    }

    if (v16 == 1)
    {
      v17 = *a4;
      goto LABEL_128;
    }

    if (v16 == 2)
    {
      v17 = *a4;
    }

    else
    {
LABEL_116:
      v17 = *a4;
    }

LABEL_128:
    if (v15)
    {
      for (j = *(a2 + 4); *(j + 24) != v17; j += 32)
      {
        result = 0;
        if (!--v15)
        {
          return result;
        }
      }

      if (a3[1] == v17)
      {
        v50 = *(v14 + 36);
        v21 = *j;
        goto LABEL_135;
      }
    }

    return 0;
  }

  if (*a2 > 0x43u)
  {
    if (v8 == 68)
    {
      goto LABEL_36;
    }

    if (v8 == 82)
    {
      goto LABEL_3;
    }

LABEL_95:
    CUCFErrorHandler(a1, 16);
    return 1;
  }

  if (v8 == 66)
  {
LABEL_56:
    v22 = *a4;
    v23 = *a3;
    return v23 == v22;
  }

LABEL_36:
  v18 = a3[1];
  if (v18 != *a4)
  {
    return 0;
  }

  result = 0;
  v20 = a4[1];
  if (v20 && *v5)
  {
    return !memcmp(*v5, v20, v18);
  }

  return result;
}

void SDLFinalizeValue(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  while (1)
  {
    while (1)
    {
      v6 = *a2;
      if (v6 <= 0x70)
      {
        break;
      }

      if (v6 != 128 && v6 != 160)
      {
        if (v6 == 113)
        {
          goto LABEL_48;
        }

        return;
      }

LABEL_7:
      a2 = *(a2 + 3);
    }

    if (*a2 <= 0x3Fu)
    {
      break;
    }

    if (v6 == 96)
    {
      goto LABEL_7;
    }

    if (v6 != 64)
    {
      if (v6 != 112)
      {
        return;
      }

LABEL_52:
      v22 = **(a2 + 1);
      if (v22 == 181)
      {
        v23 = a3[4];
        if (!a3[4])
        {
          return;
        }
      }

      else
      {
        if (v22 != 182)
        {
          CUCFErrorHandler(a1, 15);
          return;
        }

        v23 = *a3;
        if (!*a3)
        {
          return;
        }
      }

      v24 = 0;
      v25 = 1;
      while (2)
      {
        v26 = *(a2 + 1);
        if (*v26 == 182)
        {
          v29 = (a3 + *(v26 + 36) + v24 * *(*(v26 + 24) + 8));
          goto LABEL_67;
        }

        if (*v26 == 181)
        {
          v27 = *a3;
          v28 = v25;
          if (*a3)
          {
            while (--v28)
            {
              v27 = *v27;
              if (!v27)
              {
                goto LABEL_66;
              }
            }

            v29 = (v27 + *(v26 + 36));
LABEL_67:
            SDLFinalizeValue(a1, *(a2 + 3), v29);
            ++v24;
            ++v25;
            if (v24 == v23)
            {
              return;
            }

            continue;
          }
        }

        else
        {
          CUCFErrorHandler(a1, 15);
        }

        break;
      }

LABEL_66:
      v29 = 0;
      goto LABEL_67;
    }

    v7 = *(a2 + 1);
    v10 = *(v7 + 40);
    if (v10 > 3)
    {
      goto LABEL_21;
    }

    if (v10 == 1)
    {
      v11 = *a3;
      goto LABEL_30;
    }

    if (v10 == 2)
    {
      v11 = *a3;
    }

    else
    {
LABEL_21:
      v11 = *a3;
    }

LABEL_30:
    v14 = *(a2 + 5);
    if (!v14)
    {
      return;
    }

    for (i = *(a2 + 4); *(i + 24) != v11; i += 32)
    {
      if (!--v14)
      {
        return;
      }
    }

LABEL_35:
    a3 = (a3 + *(v7 + 36));
    a2 = *i;
  }

  if (*a2 <= 0x2Fu)
  {
    if (v6 - 16 < 2)
    {
      v15 = *(a2 + 7);
      if (v15)
      {
        SDLFinalizeValueStructComps(a1, a2, *(a2 + 3), v15, a3, 1);
      }

      v16 = *(a2 + 8);
      if (v16)
      {
        SDLFinalizeValueStructComps(a1, a2, *(a2 + 4), v16, a3, 0);
      }

      v17 = *(a2 + 9);
      if (v17)
      {
        v18 = *(a2 + 5);

        SDLFinalizeValueStructComps(a1, a2, v18, v17, a3, 1);
      }

      return;
    }

    if (v6 != 32)
    {
      return;
    }

    v7 = *(a2 + 1);
    v8 = *(v7 + 40);
    if (v8 > 3)
    {
      goto LABEL_20;
    }

    if (v8 == 1)
    {
      v9 = *a3;
      goto LABEL_23;
    }

    if (v8 == 2)
    {
      v9 = *a3;
    }

    else
    {
LABEL_20:
      v9 = *a3;
    }

LABEL_23:
    v12 = *(a2 + 5);
    if (!v12)
    {
      return;
    }

    for (i = *(a2 + 4); *(i + 16) == 5 || *(i + 24) != v9; i += 32)
    {
      if (!--v12)
      {
        return;
      }
    }

    goto LABEL_35;
  }

  if (v6 == 48)
  {
    goto LABEL_52;
  }

  if (v6 == 49)
  {
LABEL_48:
    v19 = *a3;
    v20 = *(a2 + 1);
    memset_s(a3, 0x18uLL, 0, 0x18uLL);
    *(a3 + 20) = 8;
    if (v19)
    {
      do
      {
        SDLFinalizeValue(a1, *(a2 + 3), v19 + 4);
        GenBag_Incl2(v19 + 2, a3, v20);
        GenericFreeSort(v19 + 16, *(v20 + 24));
        v21 = *v19;
        free(v19);
        v19 = v21;
      }

      while (v21);
    }
  }
}

void SDLFinalizeValueStructComps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = (a3 + 24);
  do
  {
    v12 = *(v11 - 8);
    if (v12 < 2)
    {
      if (a6)
      {
        v14 = *(*(a2 + 8) + 24) + 24 * *v11;
      }

      else
      {
LABEL_11:
        if (!a5)
        {
          goto LABEL_14;
        }

LABEL_12:
        v14 = *(*(a2 + 8) + 24) + 24 * *v11;
        if (*(a5 + **(v14 + 16)) != 1)
        {
          goto LABEL_14;
        }
      }

      SDLFinalizeValue(a1, *(v11 - 3), (a5 + *(v14 + 8)));
      goto LABEL_14;
    }

    if (v12 == 2)
    {
      goto LABEL_11;
    }

    if (v12 == 3 && a5 != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v11 += 4;
    --a4;
  }

  while (a4);
}

void CUCFFreeObjectStruct(uint64_t a1, void *a2, void **a3)
{
  v6 = a2[3];
  v7 = *a3;
  v8 = a2[7];
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      if (*v7)
      {
        CUCFFreeObject(a1, *v6, *v7);
        v8 = a2[7];
      }

      v6 += 4;
      ++v7;
    }
  }

  v10 = a2[8];
  if (v10)
  {
    v11 = 0;
    v12 = (a2[4] + 16);
    do
    {
      if (*v7)
      {
        CUCFFreeObject(a1, *(v12 - 2), *v7);
        v10 = a2[8];
      }

      v13 = *v12;
      v12 += 4;
      v7 += v13 != 4;
      ++v11;
    }

    while (v11 < v10);
  }

  else if (!v6)
  {
    goto LABEL_18;
  }

  v14 = a2[9];
  if (v14)
  {
    v15 = 0;
    v16 = a2[5];
    do
    {
      v17 = v7[v15];
      if (v17)
      {
        CUCFFreeObject(a1, *v16, v17);
        v14 = a2[9];
      }

      v16 += 4;
      ++v15;
    }

    while (v15 < v14);
  }

LABEL_18:
  MMSFree(a1, *a3, (8 * a3[1]));

  MMSFree(a1, a3, 0x10);
}

void CUCFFreeObjectSEQUENCE_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    v6 = 0;
    do
    {
      CUCFFreeObject(a1, *(a2 + 24), *(*a3 + 8 * v6++));
      v7 = *(a3 + 8);
    }

    while (v6 < v7);
    v8 = (8 * v7);
  }

  else
  {
    v8 = 0;
  }

  MMSFree(a1, *a3, v8);

  MMSFree(a1, a3, 0x10);
}

BOOL CUCFEqualObjectStructComps(uint64_t a1, uint64_t a2, int a3, const void ****a4, uint64_t a5)
{
  v5 = 56;
  v6 = 24;
  v7 = 72;
  v8 = 40;
  if (a3 == 2)
  {
    v8 = 32;
    v7 = 64;
  }

  if (a3 != 1)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = *(a2 + v5);
  if (v9)
  {
    v15 = 0;
    v16 = (*(a2 + v6) + 24);
    v17 = 1;
    v18 = *(a2 + v5);
    while (1)
    {
      v19 = *(v16 - 8);
      if (v19 < 2)
      {
        break;
      }

      if (v19 == 2)
      {
        goto LABEL_13;
      }

      if (v19 == 3)
      {
        if (!a5)
        {
          goto LABEL_11;
        }

LABEL_14:
        v21 = *(*(a2 + 8) + 24) + 24 * *v16;
        v20 = *a4;
        if (*(a5 + **(v21 + 16)) == 1)
        {
          v22 = *v20;
          if (!*v20)
          {
            return v15;
          }

          v23 = *(v21 + 8);
          v24 = *(v16 - 3);
LABEL_20:
          if (!CUCFEqualObject(a1, v24, v22, (a5 + v23)))
          {
            return v15;
          }

          goto LABEL_21;
        }

        goto LABEL_17;
      }

LABEL_21:
      ++*a4;
      v15 = v17 >= v9;
      v16 += 4;
      ++v17;
      if (!--v18)
      {
        return v15;
      }
    }

    if (a3 != 2)
    {
      v23 = *(*(*(a2 + 8) + 24) + 24 * *v16 + 8);
      v24 = *(v16 - 3);
      v22 = **a4;
      goto LABEL_20;
    }

LABEL_13:
    if (a5)
    {
      goto LABEL_14;
    }

LABEL_11:
    v20 = *a4;
LABEL_17:
    if (*v20)
    {
      return v15;
    }

    goto LABEL_21;
  }

  return 1;
}

uint64_t BDS_EphReal2Kep(uint64_t result, uint64_t a2)
{
  *a2 = *result;
  v2 = *(result + 40);
  *(a2 + 160) = *(result + 24);
  *(a2 + 168) = v2;
  v3 = *(result + 48);
  *(a2 + 176) = v3;
  v4 = *(result + 32);
  *(a2 + 192) = *(result + 64);
  *(a2 + 200) = v4;
  *(a2 + 208) = *(result + 80);
  *(a2 + 32) = *(result + 144);
  v5 = *(result + 168) * 0.000000001;
  *(a2 + 48) = *(result + 160);
  *(a2 + 56) = v5;
  *(a2 + 64) = *(result + 176) * 0.000000001;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = *(result + 88);
  *(a2 + 120) = *(result + 96);
  *(a2 + 136) = *(result + 128);
  *(a2 + 104) = *(result + 112);
  *(a2 + 152) = *(result + 72);
  v7 = *(result + 16);
  v6 = *(result + 20);
  v8 = v6 + 14;
  *(a2 + 20) = v6 + 14;
  *(a2 + 24) = v7 + 14;
  v9 = *(result + 8);
  *(a2 + 18) = v9 + 1356;
  if (v7 + 14 <= 604799)
  {
    if (v8 <= 604800)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(a2 + 24) = v7 - 604786;
    if (v8 <= 604799)
    {
      goto LABEL_6;
    }
  }

  *(a2 + 20) = v6 - 604786;
LABEL_6:
  *(a2 + 18) = v9 + 1357;
LABEL_7:
  *(a2 + 176) = *&v3 + 0.0010208961;
  *(a2 + 16) = v6 / 0xE10 + 1;
  *(a2 + 14) = 0;
  v10 = *(result + 11);
  if (v10 == 15)
  {
    LOBYTE(v10) = 14;
  }

  *(a2 + 15) = v10;
  *(a2 + 8) = 4;
  *(a2 + 12) = *(result + 10);
  *(a2 + 13) = *(result + 12);
  return result;
}