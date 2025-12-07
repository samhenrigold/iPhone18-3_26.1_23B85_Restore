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
  v13 = qword_299051270[v12];
  v14 = qword_2990512A8[v12];
  v15 = qword_2990512E0[v12];
  v16 = qword_299051318[v12];
  v17 = qword_299051350[v12];
  v18 = qword_299051388[v12];
  v19 = qword_2990513C0[v12];
  v20 = qword_2990513F8[v12];
  v21 = qword_299051430[v12];
  v22 = qword_299051468[v12];
  v23 = off_29EF064E0[v12];
  v24 = *(a4 + qword_299051238[v12]);
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
  v13 = qword_2990514A0[v12];
  v14 = off_29EF064E0[v12];
  v15 = (a4 + v13);
  v16 = v15[3];
  v68 = v15[2];
  v69 = v16;
  v17 = v15[5];
  v70 = v15[4];
  v71 = v17;
  v18 = v15[1];
  v67[0] = *v15;
  v67[1] = v18;
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

  for (i = 9; i != 17; ++i)
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

  for (j = 17; j != 25; ++j)
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

  for (k = 25; k != 33; ++k)
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
  if (*(&v68 + 1) * 10.0 > 0.0)
  {
    v39 = 0.5;
  }

  v40 = *(&v68 + 1) * 10.0 + v39;
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
  if (*&v69 * 10.0 > 0.0)
  {
    v43 = 0.5;
  }

  v44 = *&v69 * 10.0 + v43;
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
  if (*(&v69 + 1) * 10.0 > 0.0)
  {
    v47 = 0.5;
  }

  v48 = *(&v69 + 1) * 10.0 + v47;
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
  if (*&v70 * 10.0 > 0.0)
  {
    v51 = 0.5;
  }

  v52 = *&v70 * 10.0 + v51;
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
  if (*(&v70 + 1) * 10.0 > 0.0)
  {
    v55 = 0.5;
  }

  v56 = *(&v70 + 1) * 10.0 + v55;
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
  if (*&v71 * 10.0 > 0.0)
  {
    v59 = 0.5;
  }

  v60 = *&v71 * 10.0 + v59;
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

  sprintf1da(a1, BYTE8(v71), v72, 0, 0);
  v63 = (*a1)++;
  *v63 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE9(v71), v72, 0, 0);
  v64 = (*a1)++;
  *v64 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE10(v71), v72, 0, 0);
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
  v13 = off_29EF064E0[v12];
  v14 = *(a4 + qword_2990514D8[v12]);
  v15 = *(a4 + qword_299051510[v12]);
  v16 = *(a4 + qword_299051548[v12]);
  v17 = *(a4 + qword_299051580[v12]);
  v18 = *(a4 + qword_2990515B8[v12]);
  v19 = *(a4 + qword_2990515F0[v12]);
  v20 = *v13;
  v21 = *a1;
  if (*v13)
  {
    v22 = (v13 + 1);
    do
    {
      *a1 = v21 + 1;
      *v21 = v20;
      v21 = *a1;
      if (*a1 >= a1[3])
      {
        v21 = a1[2];
        *a1 = v21;
      }

      v23 = *v22++;
      v20 = v23;
    }

    while (v23);
  }

  v24 = 0;
  v25 = 66;
  do
  {
    *a1 = v21 + 1;
    *v21 = v25;
    v21 = *a1;
    if (*a1 >= a1[3])
    {
      v21 = a1[2];
      *a1 = v21;
    }

    v25 = aB_0[++v24];
  }

  while (v24 != 2);
  if (v14)
  {
    v26 = 0;
    v27 = 48;
    do
    {
      *a1 = v21 + 1;
      *v21 = v27;
      v21 = *a1;
      if (*a1 >= a1[3])
      {
        v21 = a1[2];
        *a1 = v21;
      }

      v27 = a0x_0[++v26];
    }

    while (v26 != 2);
    sprintf_1X(a1, v14);
    v21 = *a1;
  }

  *a1 = v21 + 1;
  *v21 = 44;
  v28 = *a1;
  if (*a1 >= a1[3])
  {
    v28 = a1[2];
  }

  if (v16)
  {
    v29 = 0;
    v30 = 48;
    do
    {
      *a1 = v28 + 1;
      *v28 = v30;
      v28 = *a1;
      if (*a1 >= a1[3])
      {
        v28 = a1[2];
        *a1 = v28;
      }

      v30 = a0x_0[++v29];
    }

    while (v29 != 2);
    sprintf_1X(a1, v16);
    v28 = *a1;
  }

  *a1 = v28 + 1;
  *v28 = 44;
  v31 = *a1;
  if (*a1 >= a1[3])
  {
    v31 = a1[2];
  }

  if (v17)
  {
    v32 = 0;
    v33 = 48;
    do
    {
      *a1 = v31 + 1;
      *v31 = v33;
      v31 = *a1;
      if (*a1 >= a1[3])
      {
        v31 = a1[2];
        *a1 = v31;
      }

      v33 = a0x_0[++v32];
    }

    while (v32 != 2);
    sprintf_1X(a1, v17);
    v31 = *a1;
  }

  *a1 = v31 + 1;
  *v31 = 44;
  v34 = *a1;
  if (*a1 >= a1[3])
  {
    v34 = a1[2];
  }

  v35 = 0;
  v36 = 69;
  do
  {
    *a1 = v34 + 1;
    *v34 = v36;
    v34 = *a1;
    if (*a1 >= a1[3])
    {
      v34 = a1[2];
      *a1 = v34;
    }

    v36 = aE_2[++v35];
  }

  while (v35 != 2);
  if (v15)
  {
    v37 = 0;
    v38 = 48;
    do
    {
      *a1 = v34 + 1;
      *v34 = v38;
      v34 = *a1;
      if (*a1 >= a1[3])
      {
        v34 = a1[2];
        *a1 = v34;
      }

      v38 = a0x_0[++v37];
    }

    while (v37 != 2);
    sprintf_1X(a1, v15);
    v34 = *a1;
  }

  *a1 = v34 + 1;
  *v34 = 44;
  v39 = *a1;
  if (*a1 >= a1[3])
  {
    v39 = a1[2];
  }

  v40 = 0;
  v41 = 82;
  do
  {
    *a1 = v39 + 1;
    *v39 = v41;
    v39 = *a1;
    if (*a1 >= a1[3])
    {
      v39 = a1[2];
      *a1 = v39;
    }

    v41 = aR_0[++v40];
  }

  while (v40 != 2);
  if (v18)
  {
    v42 = 0;
    v43 = 48;
    do
    {
      *a1 = v39 + 1;
      *v39 = v43;
      v39 = *a1;
      if (*a1 >= a1[3])
      {
        v39 = a1[2];
        *a1 = v39;
      }

      v43 = a0x_0[++v42];
    }

    while (v42 != 2);
    sprintf_1X(a1, v18);
    v39 = *a1;
  }

  *a1 = v39 + 1;
  *v39 = 44;
  v44 = *a1;
  if (*a1 >= a1[3])
  {
    v44 = a1[2];
    *a1 = v44;
  }

  if (v19)
  {
    v45 = 0;
    v46 = 48;
    do
    {
      *a1 = v44 + 1;
      *v44 = v46;
      v44 = *a1;
      if (*a1 >= a1[3])
      {
        v44 = a1[2];
        *a1 = v44;
      }

      v46 = a0x_0[++v45];
    }

    while (v45 != 2);
    sprintf_1X(a1, v19);
  }

  return NMEA_Add_checksum(a1, v8);
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
  if (*(a2 + 16) == 1)
  {
    sprintf_02d(result, *(a2 + 24));
    sprintf_02d(v2, *(a2 + 26));
    sprintf_02d(v2, *(a2 + 28));
    v4 = (*v2)++;
    *v4 = 46;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    result = sprintf_03d(v2, *(a2 + 30));
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

void NK_Static_Filter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v121[3] = *MEMORY[0x29EDCA608];
  v5 = a2 + 59944;
  v6 = a1 + 24576;
  v7 = *(a1 + 27120);
  if (v7 <= *(a1 + 16) && *(a2 + 1872) == 1)
  {
    v8 = *(a1 + 148);
    if (v8 >= *(a1 + 152))
    {
      v8 = *(a1 + 152);
    }

    if (v8 >= *(a1 + 156))
    {
      v8 = *(a1 + 156);
    }

    v109 = v8 > 0xA;
  }

  else
  {
    v109 = 0;
  }

  memcpy(__dst, (a1 + 976), sizeof(__dst));
  v9 = 0;
  v10 = *(a2 + 1584) - *&__dst[696];
  v11 = *(a2 + 1592) - *&__dst[704];
  v12 = *(a2 + 1600) - *&__dst[712];
  v13 = (a2 + 1752);
  do
  {
    v14 = v11 * *(v13 - 1) + *(v13 - 2) * v10;
    v15 = *v13;
    v13 += 3;
    *&v121[v9++] = v14 + v15 * v12;
  }

  while (v9 != 3);
  v17 = *v121;
  v16 = *&v121[1];
  v18 = sqrt(v16 * v16 + v17 * v17);
  v19 = *(v5 + 1560);
  v20 = *(v5 + 1568);
  *(a1 + 27216) = v18;
  *(a1 + 27240) = *(a1 + 27240) * 0.6 + v18 * 0.4;
  v21 = 4.0;
  if (v18 < 8.0)
  {
    v21 = 2.0;
    if (v18 >= 6.0)
    {
      v21 = 3.0;
    }
  }

  v22 = v19 + v20;
  v23 = *(a1 + 27232);
  if (*(v6 + 2540) < 3u || (v18 > v23 ? (v24 = v21 * v21 <= v22) : (v24 = 1), v24 || (*(a1 + 241) & 1) != 0))
  {
    v25 = 6.0;
    if (v18 <= 6.0 || v23 >= 6.0)
    {
      if (*(v6 + 2628) == 3)
      {
        v29 = v23 + -0.003;
        v25 = v18;
        if (v18 > v23 + -0.003)
        {
          goto LABEL_38;
        }

        v30 = 0.003;
      }

      else
      {
        v29 = v23 + -0.01;
        v25 = v18;
        if (v18 > v23 + -0.01)
        {
          goto LABEL_38;
        }

        v30 = 0.01;
      }

      v24 = v23 <= v30;
      v25 = *(a1 + 27232);
      if (!v24)
      {
        v25 = v29;
      }
    }
  }

  else
  {
    v25 = 10.0;
    if (v18 <= 10.0)
    {
      v26 = v23 + 0.5;
      if (v18 > v26 && v18 < 8.0)
      {
        v25 = v26;
      }

      else
      {
        v25 = v18;
      }
    }
  }

LABEL_38:
  *(a1 + 27232) = v25;
  v31 = *(v5 + 16);
  if (v31 == 1 && *(v5 + 12) != 1)
  {
    v32 = *(v6 + 2674);
  }

  else
  {
    *(v6 + 2673) = v25 <= 4.0;
    v32 = v25 > 4.0;
    *(v6 + 2674) = v25 > 4.0;
    if (v31 != 1)
    {
      if (v25 > 4.0)
      {
        v33 = 8;
      }

      else
      {
        v33 = 4;
      }

      *(v5 + 12) = v33;
      *(v5 + 16) = 0;
    }
  }

  if (v32)
  {
    v34 = 0.3;
  }

  else
  {
    v34 = 0.1;
  }

  if (*(v5 + 4) == 1)
  {
    v35 = *(v5 + 36);
  }

  else
  {
    v35 = 0;
  }

  v36 = *(v6 + 2780);
  if (v36 == 20)
  {
    v36 = 19;
  }

  else if (!v36)
  {
    *(a1 + 27504) = 0u;
    *(a1 + 27488) = 0u;
    *(a1 + 27472) = 0u;
    *(a1 + 27456) = 0u;
    *(a1 + 27440) = 0u;
    *(a1 + 27424) = 0u;
    *(a1 + 27408) = 0u;
    *(a1 + 27392) = 0u;
    *(a1 + 27376) = 0u;
    *(a1 + 27360) = 0u;
    goto LABEL_57;
  }

  memmove((a1 + 27368), (a1 + 27360), 8 * v36);
LABEL_57:
  *(a1 + 27360) = *(a2 + 1848);
  v37 = v36 + 1;
  *(v6 + 2780) = v36 + 1;
  v38 = *(a1 + 27472);
  v119[6] = *(a1 + 27456);
  v119[7] = v38;
  v39 = *(a1 + 27504);
  v119[8] = *(a1 + 27488);
  v119[9] = v39;
  v40 = *(a1 + 27408);
  v119[2] = *(a1 + 27392);
  v119[3] = v40;
  v41 = *(a1 + 27440);
  v119[4] = *(a1 + 27424);
  v119[5] = v41;
  v42 = *(a1 + 27376);
  v119[0] = *(a1 + 27360);
  v119[1] = v42;
  VecSortAscR8(v119, 0, v36);
  v43 = (v36 + 1) >> 1;
  if (v36)
  {
    if (v36 == -1)
    {
      v46 = 0.0;
      goto LABEL_71;
    }

    v44 = (*(v119 + v43 - 1) + *(v119 + v43)) * 0.5;
  }

  else
  {
    v44 = *(v119 + v43);
  }

  v45 = (a1 + 27360);
  v46 = 0.0;
  v47 = v36 + 1;
  do
  {
    v48 = *v45++;
    v49 = v48;
    if (v48 > v44 * 4.3512 && v44 > 1.0 && v37 == 20)
    {
      v49 = v44;
    }

    v46 = v46 + v49;
    --v47;
  }

  while (v47);
LABEL_71:
  v52 = v34 * 1.5;
  *(a1 + 27520) = v46 / v37;
  if (v18 >= 3.0 || v22 >= v52 * 3.0 * (v52 * 3.0))
  {
    *(v6 + 2676) = 0;
    goto LABEL_134;
  }

  v53 = *(v6 + 2676);
  if (v53 == 5)
  {
    v55 = 4;
    *(v6 + 2676) = 4;
    goto LABEL_80;
  }

  if (!*(v6 + 2676))
  {
    v54 = 0;
    *(a1 + 27272) = 0;
    *(a1 + 27256) = 0u;
    goto LABEL_82;
  }

  v55 = *(v6 + 2676);
  if (v53 >= 1)
  {
LABEL_80:
    v54 = 0;
    v53 = 0;
    v56 = v55 + 1;
    v57 = (a1 + 2 * v55 + 27262);
    do
    {
      v58 = *(v57 - 5);
      *(v57 - 4) = *(v57 - 5);
      v59 = *v57;
      v57[1] = *v57;
      v53 += v58;
      v54 += v59;
      --v56;
      --v57;
    }

    while (v56 > 1);
    goto LABEL_82;
  }

  v53 = 0;
  v54 = 0;
LABEL_82:
  v60 = -0.5;
  if (v17 * 1000.0 <= 0.0)
  {
    v61 = -0.5;
  }

  else
  {
    v61 = 0.5;
  }

  v62 = v17 * 1000.0 + v61;
  if (v62 <= 2147483650.0)
  {
    if (v62 >= -2147483650.0)
    {
      v63 = v62;
    }

    else
    {
      LOWORD(v63) = 0;
    }
  }

  else
  {
    LOWORD(v63) = -1;
  }

  *(v6 + 2678) = v63;
  if (v16 * 1000.0 > 0.0)
  {
    v60 = 0.5;
  }

  v64 = v16 * 1000.0 + v60;
  if (v64 <= 2147483650.0)
  {
    if (v64 >= -2147483650.0)
    {
      v65 = v64;
    }

    else
    {
      LOWORD(v65) = 0;
    }
  }

  else
  {
    LOWORD(v65) = -1;
  }

  *(v6 + 2688) = v65;
  v66 = *(v6 + 2676) + 1;
  *(v6 + 2676) = v66;
  if ((v35 & 1) == 0)
  {
    v67 = ((v53 + v63) * (v53 + v63) + (v54 + v65) * (v54 + v65)) / (v66 * v66);
    if (v66 < 5)
    {
      if (v66 < 3)
      {
        v72 = 0;
LABEL_124:
        v79 = 0.01;
        if (v32)
        {
          v79 = 0.09;
        }

        v35 = v18 * v18 <= v22 * 9.0 && (v22 * 9.0 + v18 * v18 < v79 || v72);
        goto LABEL_129;
      }
    }

    else
    {
      v68 = -0.5;
      if (v52 * 1000.0 > 0.0)
      {
        v68 = 0.5;
      }

      v69 = v52 * 1000.0 + v68;
      if (v69 <= 2147483650.0)
      {
        v73 = -2147483650.0;
        if (v69 > -2147483650.0)
        {
          v73 = v69;
        }

        v70 = v73;
        if (v69 < -2147483650.0)
        {
          v71 = 0x80000000;
        }

        else
        {
          v71 = v69;
        }
      }

      else
      {
        v70 = 0x7FFFFFFF;
        v71 = 0x7FFFFFFF;
      }

      if (v67 < v71 * v70)
      {
        v72 = 1;
        goto LABEL_124;
      }
    }

    v74 = -0.5;
    if (v34 * 1000.0 > 0.0)
    {
      v74 = 0.5;
    }

    v75 = v34 * 1000.0 + v74;
    if (v75 <= 2147483650.0)
    {
      v78 = -2147483650.0;
      if (v75 > -2147483650.0)
      {
        v78 = v34 * 1000.0 + v74;
      }

      v76 = v78;
      if (v75 < -2147483650.0)
      {
        v77 = 0x80000000;
      }

      else
      {
        v77 = v75;
      }
    }

    else
    {
      v76 = 0x7FFFFFFF;
      v77 = 0x7FFFFFFF;
    }

    v72 = v67 < v77 * v76;
    goto LABEL_124;
  }

  v35 = 1;
LABEL_129:
  if (*(v5 + 4) != 1)
  {
    if (v35)
    {
      v80 = 2;
    }

    else
    {
      v80 = 3;
    }

    *v5 = v80;
    *(v5 + 4) = 0;
  }

LABEL_134:
  v81 = (v6 + 2628);
  v82 = *(v6 + 2628);
  if (v82 > 1)
  {
    if (v82 != 3)
    {
      if (v82 == 2)
      {
        v85 = v7 != 0;
        v84 = v109;
LABEL_144:
        if (v18 > 3.0 || v85)
        {
          *v81 = 0;
          goto LABEL_163;
        }

        if (!(v35 & 1 | (v18 <= v34)))
        {
          goto LABEL_163;
        }

        *(v6 + 2628) = 3;
        goto LABEL_162;
      }

LABEL_148:
      gn_report_assertion_failure("switch/case error NK_Static_Filter.c");
LABEL_159:
      v84 = v109;
      goto LABEL_163;
    }

    if (v7 || v18 > 3.0)
    {
LABEL_158:
      *v81 = 0;
      goto LABEL_159;
    }

    if (v18 > v52)
    {
      *v81 = 2;
      goto LABEL_159;
    }

    v84 = v109;
    if (v35 & 1 | (v18 <= v34))
    {
LABEL_162:
      *(v6 + 2648) = *a2;
      goto LABEL_163;
    }

    v87 = 2;
LABEL_153:
    *v81 = v87;
    goto LABEL_163;
  }

  if (v82)
  {
    if (v82 == 1)
    {
      v83 = *(v6 + 2632);
      *(v6 + 2632) = v83 + 1;
      if (!v7 && v18 <= 3.0)
      {
        v84 = v109;
        if (v83 < 1)
        {
          goto LABEL_163;
        }

        v85 = 0;
        *v81 = 2;
        goto LABEL_144;
      }

      goto LABEL_158;
    }

    goto LABEL_148;
  }

  v84 = v109;
  v86 = !v109;
  if (v18 > 2.0)
  {
    v86 = 1;
  }

  if ((v86 & 1) == 0)
  {
    v87 = 1;
    goto LABEL_153;
  }

LABEL_163:
  if (((*(v6 + 2673) | v35) & 1) != 0 || *(v6 + 2674) == 1 && v18 < 3.0 && v22 < 4.0 && *(v6 + 2540) >= 3u)
  {
    LOBYTE(v112.f64[0]) = 0;
    LODWORD(v114) = 0;
    LOBYTE(v110) = 0;
    if (Core_Get_Static_Status(&v110) && !(v35 & 1 | (v110 < 0xAu)))
    {
      EvLog_nd("NKSF:  Static override", 2, v88, v110, *(v6 + 2628));
      *(v6 + 2628) = 3;
      *(v6 + 2648) = *a2;
    }

    if (Core_Get_Ped_Status(&v114, &v112))
    {
      v90 = v110;
      if (LODWORD(v114) == 2 && v110 > 2u)
      {
LABEL_170:
        if (*(v6 + 2674) == 1)
        {
          *(v6 + 2673) = 1;
          *(a1 + 27232) = v18;
          *(a1 + 20) = 2;
          EvLog_nd("NK_Static_Filter:  PED_STOPPED:  Car -> Ped override", 2, v89, v90, LOBYTE(v112.f64[0]));
        }

        *(v6 + 2628) = 3;
        *(v6 + 2648) = *a2;
        goto LABEL_187;
      }

      switch(LODWORD(v114))
      {
        case 3:
          if (*(v6 + 2673) == 1)
          {
            EvLog_nd("NK_Static_Filter:  PED_NOT_PED:  Ped -> Car indication", 2, v89, v110, LOBYTE(v112.f64[0]));
          }

          break;
        case 2:
          if (*(v6 + 2674) == 1)
          {
            *(v6 + 2673) = 1;
            *(a1 + 27232) = v18;
            *(a1 + 20) = 2;
            EvLog_nd("NK_Static_Filter:  PED_WALKING:  Car -> Ped override", 2, v89, v90, LOBYTE(v112.f64[0]));
          }

          *v81 = 2;
          break;
        case 1:
          goto LABEL_170;
        default:
          break;
      }
    }
  }

LABEL_187:
  if (v84 && (*v81 == 3 || *v81 == 2 && *(v6 + 2674) == 1))
  {
    LOWORD(v112.f64[0]) = 0;
    v116[0] = 0;
    v115 = 0;
    memset(&v116[4], 0, 32);
    v117 = 0u;
    v118 = 0;
    *&v116[8] = *(a2 + 1720);
    *&v116[16] = 0x4010000000000000;
    HIDWORD(v114) = 2;
    LOBYTE(v114) = 1;
    *(&v117 + 4) = 0x412E848000000000;
    Vert_Meas_Update(6u, (a2 + 1736), 0xCu, &v114, __dst, &v112, *&v116[8]);
    v91 = *(v6 + 2760);
    if (v91 && *(v6 + 2674) == 1 && *(v6 + 2540))
    {
      v91 += *(a2 + 16);
      *(v6 + 2760) = v91;
    }

    if ((*(v5 + 36) & 1) == 0)
    {
      v114 = 0.0;
      v115 = 0;
      *v116 = 0;
      __asm { FMOV            V0.2D, #4.0 }

      v110 = _Q0;
      v111 = 0x4010000000000000;
      if (v91 && *a2 - v91 <= 30000)
      {
        v95 = (a1 + 27328);
        v96 = 1;
        v97 = a3;
      }

      else
      {
        v97 = a3;
        if (*(v6 + 2700) < 2 || *a2 - *(v6 + 2720) > 30000)
        {
          v96 = 0;
          v95 = (a2 + 1856);
        }

        else
        {
          v95 = (a1 + 27280);
          v96 = 1;
        }
      }

      v98 = 0;
      v99 = *v95;
      *(v6 + 2672) = v96;
      v100 = *(a2 + 1584);
      v112 = vsubq_f64(v100, *&__dst[696]);
      v101 = *(a2 + 1600);
      v113 = v101 - *&__dst[712];
      do
      {
        *&v116[8 * v98] = *(&v112 + v98 + 2) - *(v97 + 120 + 8 * v98);
        v102 = v98 + 3;
        --v98;
      }

      while (v102 > 1);
      v103 = 0;
      v112 = v100;
      v113 = v101;
      do
      {
        *&v116[8 * v103] = *(&v112 + v103 + 2) - *(v97 + 120 + 8 * v103);
        v104 = v103 + 3;
        --v103;
      }

      while (v104 > 1);
      NK_Body_Frame_Meas(9u, &v114, &v110, (a2 + 1736), v99 * 0.0174532925, 0xCu, __dst);
    }

    v105 = *&__dst[672];
    *(a1 + 1632) = *&__dst[656];
    *(a1 + 1648) = v105;
    v106 = *&__dst[704];
    *(a1 + 1664) = *&__dst[688];
    *(a1 + 1680) = v106;
    v107 = *&__dst[640];
    *(a1 + 1600) = *&__dst[624];
    *(a1 + 1616) = v107;
  }

  else
  {
    *(v6 + 2672) = 0;
  }
}

BOOL Is_Eph_Kep_Real(const double *a1)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v14[0] = 0.0;
  if (!R8_EQ(a1 + 24, v14))
  {
    return 1;
  }

  v13 = 0.0;
  if (!R8_EQ(a1 + 29, &v13))
  {
    return 1;
  }

  v12 = 0.0;
  if (!R8_EQ(a1 + 21, &v12))
  {
    return 1;
  }

  v11 = 0.0;
  if (!R8_EQ(a1 + 14, &v11))
  {
    return 1;
  }

  v10 = 0.0;
  if (!R8_EQ(a1 + 13, &v10))
  {
    return 1;
  }

  v9 = 0.0;
  if (!R8_EQ(a1 + 17, &v9))
  {
    return 1;
  }

  v8 = 0.0;
  if (!R8_EQ(a1 + 18, &v8))
  {
    return 1;
  }

  v7 = 0.0;
  if (!R8_EQ(a1 + 19, &v7))
  {
    return 1;
  }

  v6 = 0.0;
  if (!R8_EQ(a1 + 20, &v6))
  {
    return 1;
  }

  v5 = 0.0;
  if (!R8_EQ(a1 + 15, &v5))
  {
    return 1;
  }

  v4 = 0.0;
  if (!R8_EQ(a1 + 16, &v4))
  {
    return 1;
  }

  v3 = 0.0;
  return !R8_EQ(a1 + 7, &v3);
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

void Hal02_RouteZxPkt(unsigned __int8 *a1, size_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_22;
  }

  if (!a2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
LABEL_22:
    gnssOsa_PrintLog(__str, 1, 1, 0);
    return;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (g_IsSPIEnabled)
    {
      v5 = "SPI";
    }

    else
    {
      v5 = "PCIe";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s:Rcvd,size %u,zx%c%c%c 0x%x 0x%x\n", v4, "HAL", 73, "Hal02_RouteZxPkt", v5, a2, a1[2], a1[3], a1[4], a1[5], a1[6]);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (((*(*gp_Logger + 72))(gp_Logger) & 1) != 0 && a1[2] != 77)
  {
    GnssDbgMgr_WriteLog(a2, a1);
  }

  v6 = a1[2];
  if (v6 > 0x4E)
  {
    if (a1[2] > 0x55u)
    {
      if (v6 == 86 || v6 == 88)
      {
        goto LABEL_44;
      }
    }

    else if (v6 == 79)
    {
      v9 = a1[3];
      if (v9 != 66 && v9 != 84)
      {
        if (v9 == 80)
        {
          Hal32_HandlePowerReportData(a1, a2);
        }

        return;
      }
    }

    else if (v6 == 84)
    {
      goto LABEL_44;
    }

LABEL_39:
    v10 = off_2A13EC488;
    if (!off_2A13EC488)
    {
      return;
    }

LABEL_45:
    v10(a2, a1);
    return;
  }

  if (a1[2] > 0x48u)
  {
    if (v6 == 73)
    {
      Hal29_HandleProxyResponse(a1, a2);
      return;
    }

    goto LABEL_39;
  }

  if (v6 == 66)
  {
    v8 = a1[3];
    if (v8 != 83)
    {
      if (v8 != 89)
      {
        Hal02_HandleResp(a1, a2);
        return;
      }

      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v6 != 68)
  {
    goto LABEL_39;
  }

  v7 = a1[3];
  if (v7 == 69)
  {
    Hal_HandleGenericMEEvent(a1, a2);
    return;
  }

  if (v7 == 67)
  {
    Hal_GetMEAnalyticsDataResponse(a1, a2);
    return;
  }

  if (Hal02_CheckDebugConfigMsg(v7))
  {
LABEL_44:
    v10 = g_CbList;
    if (!g_CbList)
    {
      return;
    }

    goto LABEL_45;
  }

  if (((*(*gp_Logger + 72))(gp_Logger) & 1) == 0)
  {
    GnssDbgMgr_WriteLog(a2, a1);
  }
}

void Hal02_HandleResp(unsigned __int8 *a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
LABEL_14:
    v4 = 1;
    goto LABEL_15;
  }

  if (!a2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
    goto LABEL_14;
  }

  if (Hal11_HandleEvent(a1[3], a1, a2))
  {
    return;
  }

  if (g_HalState <= 3)
  {
    if (g_HalState < 2)
    {
      return;
    }

    if ((g_HalState - 2) < 2)
    {

      Hal15_HandleRevResp(a1);
      return;
    }

    goto LABEL_26;
  }

  if ((g_HalState - 6) < 2)
  {

    Hal_CoexConfigRespone(a1);
  }

  else if (g_HalState == 5)
  {

    Hal32_HandlePowerReportRsp(a1);
  }

  else
  {
    if (g_HalState != 4)
    {
LABEL_26:
      if (g_LbsOsaTrace_Config < 2)
      {
        return;
      }

      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%u,MC,%c,MID,%c,MIDE,%c\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 87, "Hal02_HandleResp", 262, g_HalState, a1[2], a1[3], a1[4]);
      v4 = 2;
LABEL_15:
      gnssOsa_PrintLog(__str, v4, 1, 0);
      return;
    }

    Hal29_HandleProxyResponse(a1, a2);
  }
}

void Hal02_07ChipRead(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: transPrep success\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 68, "Hal02_07ChipRead");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((*(*gp_Comm + 48))(gp_Comm))
  {
    do
    {
      Data = Hal_CommsItfReadData(g_ReadBuffer, 0x3000u);
      if (Data)
      {
        v3 = Data;
        if ((Data & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

        if (Data > 0x3000)
        {
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v4 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NumOfBytesRead,%u,Maxbufsize,%u\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal02_07ChipRead", 772, v3, 12288);
            gnssOsa_PrintLog(__str, 1, 1, 0);
          }

          memset_s(g_ReadBuffer, 0x3000uLL, 0, 0x3000uLL);
        }

        else
        {
          Hal02_06ParsezxPacket(g_ReadBuffer, Data, v2);
        }
      }
    }

    while (((*(*gp_Comm + 48))(gp_Comm) & 1) != 0);
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal02_07ChipRead", 1281);
    gnssOsa_PrintLog(__str, 1, 1, 0);
LABEL_14:
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RdrThrd exit\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal02_07ChipRead");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }
}

void Hal02_06ParsezxPacket(unsigned __int8 *a1, size_t a2, uint8x8_t a3)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_9;
  }

  if (!a2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
LABEL_9:
    gnssOsa_PrintLog(__str, 1, 1, 0);
    return;
  }

  v4 = a1;
  if (_MergedGlobals_3)
  {
    memcpy_s("Hal02_06ParsezxPacket", 284, &g_ProccessBuff, 0x4000u, &g_PrevBuff, _MergedGlobals_3);
    memcpy_s("Hal02_06ParsezxPacket", 285, &g_ProccessBuff + _MergedGlobals_3, 0x4000 - _MergedGlobals_3, v4, a2);
    v5 = _MergedGlobals_3;
    v4 = &g_ProccessBuff;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  v7 = v5 + a2;
  _MergedGlobals_3 = 0;
  v8 = &unk_2A13EC000;
  v9 = "HAL";
  v10 = &unk_2A145C000;
  while (1)
  {
    v11 = v7;
    v12 = &v4[v6];
    if (v7 <= 7u)
    {
      v31 = 304;
      goto LABEL_48;
    }

    if (*v12 != 122 || v12[1] != 120)
    {
      ++v6;
      --v7;
      v18 = v10[316] + 1;
      v10[316] = v18;
      HIDWORD(v19) = 652835029 * v18;
      LODWORD(v19) = 652835029 * v18;
      if ((v19 >> 3) <= 0x418937 && g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v21 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Err,%u\n", (v8[140] * v21), v9, 87, "Hal02_06ParsezxPacket", 770, v10[316]);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      goto LABEL_45;
    }

    a3.i32[0] = *(v12 + 2);
    a3 = vmovl_u8(a3).u64[0];
    v13 = v12[6];
    v14 = vaddv_s16(a3) + v13;
    if (v12[7] != v14)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        v22 = v14;
        bzero(__str, 0x3C6uLL);
        v23 = v8[140] * mach_continuous_time();
        v24 = v12[7];
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx rcvd,0x%02x,computed,0x%02x,Pktloss,%u\n", v23, v9, 87, "Hal02_06ParsezxPacket", 781, v24, v22, ++dword_2A145C4EC);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      ++v6;
      --v7;
      goto LABEL_45;
    }

    v15 = v9;
    v16 = a3.u16[3] | (v13 << 8);
    if (v16 >= 0xFF8)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v17 = v8[140] * mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len,%u,Pktloss,%u\n", v17, v15, 87, "Hal02_06ParsezxPacket", 783, v16, ++dword_2A145C4EC);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      ++v6;
      --v7;
      v9 = v15;
      goto LABEL_41;
    }

    v25 = v16 + 9;
    v11 = v7;
    if (v7 < (v16 + 9))
    {
      break;
    }

    if (v4[v6 + 8 + v16] == 10)
    {
      v8 = &unk_2A13EC000;
      v9 = v15;
      v10 = &unk_2A145C000;
      if (dword_2A145C4F0)
      {
        if (dword_2A145C4F0 >= 0x41 && g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v26 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: zx pkt recd ,prev invalid data,%u\n", (*&g_MacClockTicksToMsRelation * v26), v9, 68, "Hal02_06ParsezxPacket", dword_2A145C4F0);
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }

        dword_2A145C4F0 = 0;
      }

      if (g_RouteZxData)
      {
        g_RouteZxData(&v4[v6], v25);
      }

      else if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v30 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RouteZxData is NULL\n", (*&g_MacClockTicksToMsRelation * v30), v9, 87, "Hal02_06ParsezxPacket");
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v7 -= v25;
      v6 += v25;
      goto LABEL_45;
    }

    v9 = v15;
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v27 = mach_continuous_time();
      v28 = &v4[v6];
      v29 = v28[2];
      LODWORD(v28) = v28[3];
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,Pktloss,%u\n", (*&g_MacClockTicksToMsRelation * v27), v15, 87, "Hal02_06ParsezxPacket", 782, v29, v28, ++dword_2A145C4EC);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    ++v6;
    --v7;
    v8 = &unk_2A13EC000;
LABEL_41:
    v10 = &unk_2A145C000;
LABEL_45:
    if (!v7)
    {
      return;
    }
  }

  v31 = 354;
LABEL_48:
  memcpy_s("Hal02_06ParsezxPacket", v31, &g_PrevBuff, 0x1000u, &v4[v6], v11);
  _MergedGlobals_3 = v7;
}

void Hal02_AsyncReadCb(unsigned __int8 *a1, size_t a2, uint8x8_t a3)
{
  v3 = a2;
  v4 = a1;
  v7 = *MEMORY[0x29EDCA608];
  if (a2 > 0x3000)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx v_RxBufferSize %u,processing %u bytes\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 87, "Hal02_AsyncReadCb", 772, v3, 12288);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    a1 = v4;
    a2 = 12288;
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

void Hal02_SPI_ReadCb(unsigned __int8 *a1, unsigned int a2, uint8x8_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a2 > 0x3000)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: v_RxBufferSize %u - out of range error\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal02_SPI_ReadCb", a2);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else
  {

    Hal02_06ParsezxPacket(a1, a2, a3);
  }
}

uint64_t Hal02_DeInitParser(void)
{
  result = memset_s(&g_PrevBuff, 0x1000uLL, 0, 0x1000uLL);
  _MergedGlobals_3 = 0;
  g_RouteZxData = Hal02_RouteZxPkt;
  return result;
}

BOOL Hal02_CheckDebugConfigMsg(int a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (word_2A13EC520 == 3599)
  {
    return a1 == 77 || a1 == 70;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnssHw\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 87, "Hal02_CheckDebugConfigMsg", 515);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 0;
}

uint64_t GN_AGLON_Set_Eph_El(char *a1)
{
  v59 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGLON_Set_Eph_El");
  if (result)
  {
    v3 = *a1;
    if (g_Logging_Cfg < 5)
    {
      EvLog_d("GN_AGLON_Set_Eph_El: ", v3);
    }

    else
    {
      EvLog_v("GN_AGLON_Set_Eph_El: %2d %2d %2d %4d %d %2d  %2d %d %d %d  %9d %9d %9d  %8d %8d %8d  %3d %3d %3d  %3d %8d %5d  %d", v3, a1[1], a1[2], *(a1 + 2), a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8), a1[36], a1[37], a1[38], a1[39], *(a1 + 10), *(a1 + 22), a1[46]);
    }

    v4 = *a1;
    if ((*a1 - 25) <= 0xE7u)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloN = %d <%d or >%d, Out of range!");
      return 0;
    }

    v5 = a1[2];
    if (v5 - 96 <= 0xFFFFFFA0)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloTb = %d <1 or >95, Out of range!");
      return 0;
    }

    v6 = *(a1 + 2);
    if (v6 >= 0x5B6)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloNT = %d >%d, Out of range!");
      return 0;
    }

    v7 = a1[6];
    if (v7 >= 2)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloLn = %d >1, Out of range!");
      return 0;
    }

    v8 = a1[7];
    if (v8 >= 0x10)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloFT = %d >15, Out of range!");
      return 0;
    }

    v9 = a1[8];
    if (v9 >= 0x20)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloEn = %d >31, Out of range!");
      return 0;
    }

    v10 = a1[9];
    if (v10 >= 4)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloP1 = %d <0 or >3, Out of range!");
      return 0;
    }

    v11 = a1[11];
    if (v11 >= 4)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloM = %d <0 or >3, Out of range!");
      return 0;
    }

    v12 = *(a1 + 3);
    if ((v12 - 0x4000000) >> 27 != 31)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloX = %d <-2^26 or >=2^26, Out of range!");
      return 0;
    }

    v13 = *(a1 + 4);
    if ((v13 - 0x4000000) >> 27 != 31)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloY = %d <-2^26 or >=2^26, Out of range!");
      return 0;
    }

    v14 = *(a1 + 5);
    if ((v14 - 0x4000000) >> 27 != 31)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZ = %d <-2^26 or >=2^26, Out of range!");
      return 0;
    }

    v15 = *(a1 + 6);
    if ((v15 - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloXdot = %d <-2^23 or >=2^23, Out of range!");
      return 0;
    }

    v16 = *(a1 + 7);
    if ((v16 - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloYdot = %d <-2^23 or >=2^23, Out of range!");
      return 0;
    }

    v17 = *(a1 + 8);
    if ((v17 - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZdot = %d <-2^23 or >=2^23, Out of range!");
      return 0;
    }

    v18 = a1[36];
    if ((v18 - 16) <= 0xDFu)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloXdotdot = %d <-2^4 or >=2^4, Out of range!");
      return 0;
    }

    v19 = a1[37];
    if ((v19 - 16) <= 0xDFu)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloYdotdot = %d <-2^4 or >=2^4, Out of range!");
      return 0;
    }

    v20 = a1[38];
    if ((v20 - 16) <= 0xDFu)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZdotdot = %d <-2^4 or >=2^4, Out of range!");
      return 0;
    }

    v21 = a1[39];
    if ((v21 - 16) <= 0xDFu)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloDeltaTau = %d <-2^4 or >=2^4, Out of range!");
      return 0;
    }

    v22 = *(a1 + 10);
    if ((v22 - 0x200000) >> 22 != 1023)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloDeltaTau = %d <-2^21 or >=2^21, Out of range!");
      return 0;
    }

    v23 = *(a1 + 22);
    if (((v23 - 1024) >> 11) <= 0x1Eu)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloGamma = %d <-2^10 or >=2^10, Out of range!");
      return 0;
    }

    v24 = a1[1];
    if ((a1[1] - 7) < 0xF2u)
    {
      v24 = 2139062143;
    }

    v28 = v24;
    if (a1[46])
    {
      v25 = 5;
    }

    else
    {
      v25 = 3;
    }

    v26 = 0;
    v27 = v25;
    v29 = v4;
    v30 = v5;
    v32 = v6;
    v35 = v7;
    v37 = v8;
    v38 = v9;
    v39 = v10;
    v40 = a1[10];
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
    v53 = v23;
    v34 = 0;
    v36 = 0;
    v33 = v7;
    v31 = 1500 * (v5 & 3) + 10000 * (v5 >> 2);
    memset(v58, 0, 62);
    GLON_EphInt2Bin(&v26, v58);
    v54 = 0;
    *&v57[4] = 0u;
    BYTE4(v54) = BYTE8(v58[0]);
    v55 = *(v58 + 12);
    v56 = *(&v58[1] + 12);
    *v57 = *(&v58[2] + 12);
    v57[16] = v27 == 5;
    return GN_AGLON_Set_Eph(*a1, &v54);
  }

  return result;
}

double BDS_AlmInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 12) = *(a1 + 11) << 12;
  v2 = *(a1 + 12);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4 = vmulq_f64(vcvtq_f64_u64(v3), xmmword_299051670);
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
  *(a2 + 48) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_299051680);
  v6 = vcvtd_n_f64_s32(*(a1 + 38), 0x14uLL);
  *(a2 + 64) = *(a1 + 36) * 0.00000599211245;
  *(a2 + 72) = v6;
  result = *(a1 + 40) * 3.63797881e-12;
  *(a2 + 80) = result;
  return result;
}

double XofGpsQzssEphemeris::XofGpsQzssEphemeris(uint64_t a1, uint64_t a2)
{
  *(a1 + 7) = 0;
  *a1 = 0;
  result = 0.0;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *a1 = *(a2 + 3);
  *(a1 + 1) = *(a2 + 35);
  *(a1 + 2) = *(a2 + 67);
  *(a1 + 3) = *(a2 + 99);
  *(a1 + 4) = *(a2 + 134);
  *(a1 + 6) = *(a2 + 166);
  *(a1 + 8) = *(a2 + 204);
  *(a1 + 12) = *(a2 + 238);
  *(a1 + 14) = *(a2 + 267);
  *(a1 + 16) = *(a2 + 334);
  *(a1 + 18) = *(a2 + 366);
  *(a1 + 20) = *(a2 + 398);
  *(a1 + 22) = *(a2 + 459);
  *(a1 + 23) = *(a2 + 491);
  *(a1 + 24) = *(a2 + 526);
  v3 = *(a2 + 604);
  *(a1 + 28) = *(a2 + 564);
  *(a1 + 32) = v3;
  v4 = *(a2 + 684);
  *(a1 + 36) = *(a2 + 644);
  *(a1 + 40) = v4;
  v5 = *(a2 + 764);
  *(a1 + 44) = *(a2 + 724);
  *(a1 + 48) = v5;
  *(a1 + 52) = *(a2 + 804);
  *(a1 + 56) = *(a2 + 838);
  *(a1 + 58) = *(a2 + 870);
  *(a1 + 60) = *(a2 + 902);
  *(a1 + 62) = *(a2 + 934);
  *(a1 + 64) = *(a2 + 966);
  *(a1 + 66) = *(a2 + 998);
  *(a1 + 68) = *(a2 + 1030);
  *(a1 + 70) = *(a2 + 1062);
  return result;
}

BOOL XofGpsQzssEphemerisCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  if (XofIntegralType<unsigned char>::DecodeFromHexData(a1, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 32), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a1 + 64), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 96), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 128), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 160), a2, a3) != 1)
  {
    return 0;
  }

  return XofGenericCodec::Decode<6ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a1, a2, a3);
}

double XofBeidouEphemeris::XofBeidouEphemeris(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 14) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 119) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *a1 = *(a2 + 3);
  *(a1 + 1) = *(a2 + 35);
  *(a1 + 2) = *(a2 + 70);
  *(a1 + 4) = *(a2 + 108);
  *(a1 + 8) = *(a2 + 139);
  *(a1 + 9) = *(a2 + 171);
  *(a1 + 10) = *(a2 + 203);
  *(a1 + 11) = *(a2 + 235);
  *(a1 + 12) = *(a2 + 267);
  *(a1 + 13) = *(a2 + 299);
  *(a1 + 14) = *(a2 + 331);
  *(a1 + 15) = *(a2 + 363);
  *(a1 + 16) = *(a2 + 398);
  *(a1 + 18) = *(a2 + 430);
  *(a1 + 20) = *(a2 + 459);
  *(a1 + 21) = *(a2 + 491);
  v3 = *(a2 + 636);
  *(a1 + 24) = *(a2 + 596);
  *(a1 + 28) = v3;
  v4 = *(a2 + 716);
  *(a1 + 32) = *(a2 + 676);
  *(a1 + 36) = v4;
  v5 = *(a2 + 824);
  *(a1 + 40) = *(a2 + 768);
  *(a1 + 48) = v5;
  v6 = *(a2 + 936);
  *(a1 + 56) = *(a2 + 880);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 992);
  *(a1 + 80) = *(a2 + 1036);
  *(a1 + 84) = *(a2 + 1070);
  *(a1 + 86) = *(a2 + 1102);
  *(a1 + 88) = *(a2 + 1134);
  *(a1 + 90) = *(a2 + 1166);
  LODWORD(v6) = *(a2 + 1244);
  *(a1 + 92) = *(a2 + 1204);
  *(a1 + 96) = v6;
  LODWORD(v6) = *(a2 + 1324);
  *(a1 + 100) = *(a2 + 1284);
  *(a1 + 104) = v6;
  LODWORD(v6) = *(a2 + 1404);
  *(a1 + 108) = *(a2 + 1364);
  *(a1 + 112) = v6;
  *(a1 + 116) = *(a2 + 1438);
  *(a1 + 118) = *(a2 + 1470);
  *(a1 + 120) = *(a2 + 1502);
  *(a1 + 122) = *(a2 + 1534);
  *(a1 + 124) = *(a2 + 1566);
  *(a1 + 126) = *(a2 + 523);
  *(a1 + 128) = *(a2 + 1598);
  *(a1 + 130) = *(a2 + 1627);
  *(a1 + 131) = *(a2 + 1659);
  *(a1 + 132) = *(a2 + 1691);
  *(a1 + 133) = *(a2 + 1723);
  return result;
}

BOOL XofBeidouEphemerisCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  if (XofIntegralType<unsigned char>::DecodeFromHexData(a1, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 32), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 64), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 96), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 136), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 168), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 200), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 232), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 264), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 296), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 328), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a1 + 360), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 392), a2, a3) != 1)
  {
    return 0;
  }

  return XofGenericCodec::Decode<13ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>(a1, a2, a3);
}

double XofGalileoEphemeris::XofGalileoEphemeris(uint64_t a1, uint64_t a2)
{
  *(a1 + 4) = 0;
  *a1 = 0;
  result = 0.0;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *a1 = *(a2 + 3);
  *(a1 + 1) = *(a2 + 35);
  *(a1 + 2) = *(a2 + 67);
  *(a1 + 3) = *(a2 + 163);
  *(a1 + 4) = *(a2 + 195);
  *(a1 + 6) = *(a2 + 230);
  *(a1 + 8) = *(a2 + 262);
  v3 = *(a2 + 340);
  *(a1 + 12) = *(a2 + 300);
  *(a1 + 16) = v3;
  *(a1 + 20) = *(a2 + 371);
  *(a1 + 21) = *(a2 + 403);
  *(a1 + 22) = *(a2 + 438);
  *(a1 + 24) = *(a2 + 470);
  *(a1 + 26) = *(a2 + 502);
  v4 = *(a2 + 580);
  *(a1 + 28) = *(a2 + 540);
  *(a1 + 32) = v4;
  v5 = *(a2 + 660);
  *(a1 + 36) = *(a2 + 620);
  *(a1 + 40) = v5;
  v6 = *(a2 + 740);
  *(a1 + 44) = *(a2 + 700);
  *(a1 + 48) = v6;
  *(a1 + 52) = *(a2 + 780);
  *(a1 + 56) = *(a2 + 814);
  *(a1 + 58) = *(a2 + 846);
  *(a1 + 60) = *(a2 + 878);
  *(a1 + 62) = *(a2 + 910);
  *(a1 + 64) = *(a2 + 942);
  *(a1 + 66) = *(a2 + 974);
  *(a1 + 68) = *(a2 + 1006);
  *(a1 + 70) = *(a2 + 1038);
  return result;
}

BOOL XofGalileoEphemerisCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  if (XofIntegralType<unsigned char>::DecodeFromHexData(a1, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 32), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 64), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 96), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 128), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 160), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 192), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 224), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 256), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a1 + 288), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a1 + 328), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a1 + 368), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 400), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 432), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a1 + 464), a2, a3) != 1)
  {
    return 0;
  }

  return XofGenericCodec::Decode<15ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a1, a2, a3);
}

double XofNavicEphemeris::XofNavicEphemeris(uint64_t a1, uint64_t a2)
{
  *(a1 + 18) = 0;
  *(a1 + 10) = 0;
  *(a1 + 2) = 0;
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *a1 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 38);
  *(a1 + 4) = *(a2 + 70);
  *(a1 + 6) = *(a2 + 99);
  *(a1 + 7) = *(a2 + 131);
  *(a1 + 8) = *(a2 + 163);
  *(a1 + 9) = *(a2 + 195);
  *(a1 + 10) = *(a2 + 227);
  *(a1 + 11) = *(a2 + 331);
  *(a1 + 12) = *(a2 + 372);
  *(a1 + 16) = *(a2 + 406);
  *(a1 + 18) = *(a2 + 435);
  *(a1 + 20) = *(a2 + 470);
  *(a1 + 22) = *(a2 + 502);
  v3 = *(a2 + 580);
  *(a1 + 24) = *(a2 + 540);
  *(a1 + 28) = v3;
  v4 = *(a2 + 660);
  *(a1 + 32) = *(a2 + 620);
  *(a1 + 36) = v4;
  v5 = *(a2 + 740);
  *(a1 + 40) = *(a2 + 700);
  *(a1 + 44) = v5;
  v6 = *(a2 + 820);
  *(a1 + 48) = *(a2 + 780);
  *(a1 + 52) = v6;
  *(a1 + 56) = *(a2 + 854);
  *(a1 + 58) = *(a2 + 886);
  *(a1 + 60) = *(a2 + 982);
  *(a1 + 62) = *(a2 + 1014);
  *(a1 + 64) = *(a2 + 918);
  *(a1 + 66) = *(a2 + 950);
  return result;
}

BOOL XofNavicEphemerisCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  if (XofIntegralType<unsigned char>::DecodeFromHexData(a1, a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 32), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 64), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 96), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 128), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 160), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 192), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 224), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 256), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 296), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a1 + 328), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a1 + 360), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a1 + 400), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a1 + 432), a2, a3) != 1)
  {
    return 0;
  }

  return XofGenericCodec::Decode<14ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a1, a2, a3);
}

uint64_t XofBrdcstEph::Decode(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v23[136] = *MEMORY[0x29EDCA608];
  bzero(v23, 0x440uLL);
  XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(v23);
  v9 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGpsQzssEphemeris>,XofGpsQzssEphemerisCodec>(v8, v7, v3, v5, v23, 0, v8);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v23);
  if (v9 != 1)
  {
    return 5;
  }

  bzero(v22, 0x250uLL);
  XofSbasEphemerisCodec::XofSbasEphemerisCodec(v22);
  v10 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofSbasEphemeris>,XofSbasEphemerisCodec>(v8, v7, v3, v5, v22, 1u, (v8 + 120));
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>>::~__tuple_impl(v22);
  if (v10 != 1)
  {
    return 5;
  }

  bzero(v21, 0x440uLL);
  XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(v21);
  v11 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGpsQzssEphemeris>,XofGpsQzssEphemerisCodec>(v8, v7, v3, v5, v21, 2u, v8 + 72);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v21);
  if (v11 != 1)
  {
    return 5;
  }

  bzero(v20, 0x428uLL);
  XofGalileoEphemerisCodec::XofGalileoEphemerisCodec(v20);
  v12 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGalileoEphemeris>,XofGalileoEphemerisCodec>(v8, v7, v3, v5, v20, 3u, v8 + 48);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v20);
  if (v12 != 1)
  {
    return 5;
  }

  bzero(v19, 0x2D8uLL);
  XofGlonassBrdcastEphemerisCodec::XofGlonassBrdcastEphemerisCodec(v19);
  v13 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGlonassBrdcastEphemeris>,XofGlonassBrdcastEphemerisCodec>(v8, v7, v3, v5, v19, 4u, (v8 + 24));
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>>::~__tuple_impl(v19);
  if (v13 != 1)
  {
    return 5;
  }

  bzero(v18, 0x700uLL);
  XofBeidouEphemerisCodec::XofBeidouEphemerisCodec(v18);
  v14 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofBeidouEphemeris>,XofBeidouEphemerisCodec>(v8, v7, v3, v5, v18, 5u, v8 + 96);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>::~__tuple_impl(v18);
  if (v14 != 1)
  {
    return 5;
  }

  bzero(v17, 0x410uLL);
  XofNavicEphemerisCodec::XofNavicEphemerisCodec(v17);
  v15 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofNavicEphemeris>,XofNavicEphemerisCodec>(v8, v7, v3, v5, v17, 6u, v8 + 144);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v17);
  if (v15 == 1)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

void sub_298F9A134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(va);
  _Unwind_Resume(a1);
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGpsQzssEphemeris>,XofGpsQzssEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v43 = *MEMORY[0x29EDCA608];
  v7 = a4 + 48 * a6;
  v9 = *(v7 + 18);
  v8 = (v7 + 18);
  if (!v9)
  {
    return 1;
  }

  v15 = 0;
  v16 = (a7 + 8);
  while (1)
  {
    bzero(__str, 0x440uLL);
    XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(__str);
    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>(a5, __str);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
    if (!XofGpsQzssEphemerisCodec::Decode(a5, a2, a3))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        return 5;
      }

      bzero(__str, 0x3C6uLL);
      v24 = mach_continuous_time();
      if (a6 > 7)
      {
        v25 = "   ";
      }

      else
      {
        v25 = off_29EF06518[a6];
      }

      v28 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v25);
      if ((SBYTE7(v33) & 0x80u) == 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v28 * v24), "GNC", 87, "DecodeSVs", v29, v15 + 1);
      if (SBYTE7(v33) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_33;
    }

    v17 = *(a5 + 3);
    v18 = *v16;
    if (*v16)
    {
      v19 = v16;
      do
      {
        v20 = *(v18 + 28);
        v21 = v20 >= v17;
        v22 = v20 < v17;
        if (v21)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * v22);
      }

      while (v18);
      if (v19 != v16 && v17 >= *(v19 + 28))
      {
        break;
      }
    }

    XofGpsQzssEphemeris::XofGpsQzssEphemeris(__p, a5);
    __str[0] = v17;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v38 = *__p;
    std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGpsQzssEphemeris>>(a7, v17, __str);
    if (++v15 >= *v8)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config < 2)
  {
    return 5;
  }

  bzero(__str, 0x3C6uLL);
  v26 = mach_continuous_time();
  if (a6 > 7)
  {
    v27 = "   ";
  }

  else
  {
    v27 = off_29EF06518[a6];
  }

  v30 = *&g_MacClockTicksToMsRelation;
  std::string::basic_string[abi:ne200100]<0>(__p, v27);
  if ((SBYTE7(v33) & 0x80u) == 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v30 * v26), "GNC", 87, "DecodeSVs", v31);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_33:
  gnssOsa_PrintLog(__str, 2, 1, 0);
  return 5;
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofSbasEphemeris>,XofSbasEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t **a7)
{
  v99 = *MEMORY[0x29EDCA608];
  v34 = (a4 + 48 * a6 + 18);
  if (!*v34)
  {
    return 1;
  }

  v10 = 0;
  v36 = a7 + 1;
  v45 = (a5 + 312);
  v42 = a5 + 408;
  v43 = a5 + 328;
  v35 = (a5 + 392);
  v40 = a5 + 472;
  v41 = a5 + 440;
  v38 = a5 + 536;
  v39 = a5 + 504;
  v37 = a5 + 568;
  while (1)
  {
    v44 = v10;
    bzero(__str, 0x250uLL);
    XofSbasEphemerisCodec::XofSbasEphemerisCodec(__str);
    *a5 = *__str;
    if (*(a5 + 31) < 0)
    {
      operator delete(*(a5 + 8));
    }

    *(a5 + 8) = v49;
    *(a5 + 24) = v50;
    HIBYTE(v50) = 0;
    LOBYTE(v49) = 0;
    *(a5 + 32) = v51;
    if (*(a5 + 63) < 0)
    {
      operator delete(*(a5 + 40));
    }

    *(a5 + 40) = v52;
    v11 = v53;
    HIBYTE(v53) = 0;
    LOBYTE(v52) = 0;
    v12 = v54;
    *(a5 + 56) = v11;
    *(a5 + 64) = v12;
    if (*(a5 + 95) < 0)
    {
      operator delete(*(a5 + 72));
    }

    *(a5 + 72) = v55;
    v13 = v56;
    HIBYTE(v56) = 0;
    LOBYTE(v55) = 0;
    v14 = v57;
    *(a5 + 88) = v13;
    *(a5 + 96) = v14;
    if (*(a5 + 127) < 0)
    {
      operator delete(*(a5 + 104));
    }

    *(a5 + 104) = v58;
    *(a5 + 120) = v59;
    HIBYTE(v59) = 0;
    LOBYTE(v58) = 0;
    *(a5 + 128) = v60;
    if (*(a5 + 159) < 0)
    {
      operator delete(*(a5 + 136));
    }

    *(a5 + 136) = v61;
    *(a5 + 152) = v62;
    HIBYTE(v62) = 0;
    LOBYTE(v61) = 0;
    *(a5 + 160) = v63;
    if (*(a5 + 191) < 0)
    {
      operator delete(*(a5 + 168));
    }

    *(a5 + 168) = v64;
    *(a5 + 184) = v65;
    HIBYTE(v65) = 0;
    LOBYTE(v64) = 0;
    *(a5 + 192) = v66;
    if (*(a5 + 231) < 0)
    {
      operator delete(*(a5 + 208));
    }

    *(a5 + 208) = v67;
    *(a5 + 224) = v68;
    HIBYTE(v68) = 0;
    LOBYTE(v67) = 0;
    *(a5 + 232) = v69;
    if (*(a5 + 271) < 0)
    {
      operator delete(*(a5 + 248));
    }

    *(a5 + 248) = v70;
    *(a5 + 264) = v71;
    HIBYTE(v71) = 0;
    LOBYTE(v70) = 0;
    *(a5 + 272) = v72;
    if (*(a5 + 311) < 0)
    {
      operator delete(*(a5 + 288));
    }

    *(a5 + 288) = v73;
    *(a5 + 304) = v74;
    HIBYTE(v74) = 0;
    LOBYTE(v73) = 0;
    *v45 = v75;
    if (*(a5 + 351) < 0)
    {
      operator delete(*v43);
    }

    *v43 = v76;
    *(v43 + 16) = v77;
    HIBYTE(v77) = 0;
    LOBYTE(v76) = 0;
    *(a5 + 352) = v78;
    if (*(a5 + 391) < 0)
    {
      operator delete(*(a5 + 368));
    }

    *(a5 + 368) = v79;
    *(a5 + 384) = v80;
    HIBYTE(v80) = 0;
    LOBYTE(v79) = 0;
    *v35 = v81;
    if (*(a5 + 431) < 0)
    {
      operator delete(*v42);
    }

    *v42 = v82;
    *(v42 + 16) = v83;
    HIBYTE(v83) = 0;
    LOBYTE(v82) = 0;
    *(a5 + 432) = v84;
    if (*(a5 + 463) < 0)
    {
      operator delete(*v41);
    }

    *v41 = v85;
    *(v41 + 16) = v86;
    HIBYTE(v86) = 0;
    LOBYTE(v85) = 0;
    *(a5 + 464) = v87;
    if (*(a5 + 495) < 0)
    {
      operator delete(*v40);
    }

    *v40 = v88;
    *(v40 + 16) = v89;
    HIBYTE(v89) = 0;
    LOBYTE(v88) = 0;
    *(a5 + 496) = v90;
    if (*(a5 + 527) < 0)
    {
      operator delete(*v39);
    }

    *v39 = v91;
    *(v39 + 16) = v92;
    HIBYTE(v92) = 0;
    LOBYTE(v91) = 0;
    *(a5 + 528) = v93;
    if (*(a5 + 559) < 0)
    {
      operator delete(*v38);
    }

    *v38 = v94;
    *(v38 + 16) = v95;
    HIBYTE(v95) = 0;
    LOBYTE(v94) = 0;
    *(a5 + 560) = v96;
    if (*(a5 + 591) < 0)
    {
      operator delete(*v37);
    }

    *v37 = v97;
    *(v37 + 16) = v98;
    HIBYTE(v98) = 0;
    LOBYTE(v97) = 0;
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>>::~__tuple_impl(__str);
    if (XofIntegralType<unsigned char>::DecodeFromHexData(a5, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 32), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a5 + 64), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a5 + 96), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a5 + 128), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 160), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 192), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 232), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 272), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v45, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 352), a2, a3) != 1 || !XofGenericCodec::Decode<11ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>>(a5, a2, a3))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        return 5;
      }

      bzero(__str, 0x3C6uLL);
      v25 = mach_continuous_time();
      if (a6 > 7)
      {
        v26 = "   ";
      }

      else
      {
        v26 = off_29EF06518[a6];
      }

      v27 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v26);
      if (v47 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v27 * v25), "GNC", 87, "DecodeSVs", v28, v44 + 1);
      if (v47 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_75;
    }

    v15 = *(a5 + 3);
    v16 = *v36;
    if (*v36)
    {
      v17 = v36;
      v18 = *v36;
      do
      {
        v19 = *(v18 + 28);
        v20 = v19 >= v15;
        v21 = v19 < v15;
        if (v20)
        {
          v17 = v18;
        }

        v18 = v18[v21];
      }

      while (v18);
      if (v17 != v36 && v15 >= *(v17 + 28))
      {
        break;
      }
    }

    if (!v16)
    {
LABEL_63:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v22 = v16;
        v23 = *(v16 + 28);
        if (v23 <= v15)
        {
          break;
        }

        v16 = *v22;
        if (!*v22)
        {
          goto LABEL_63;
        }
      }

      if (v23 >= v15)
      {
        break;
      }

      v16 = v22[1];
      if (!v16)
      {
        goto LABEL_63;
      }
    }

    v10 = v44 + 1;
    if (v44 + 1 >= *v34)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v29 = mach_continuous_time();
    if (a6 > 7)
    {
      v30 = "   ";
    }

    else
    {
      v30 = off_29EF06518[a6];
    }

    v31 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v30);
    if (v47 >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v31 * v29), "GNC", 87, "DecodeSVs", v32);
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_75:
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 5;
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGalileoEphemeris>,XofGalileoEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v43 = *MEMORY[0x29EDCA608];
  v7 = a4 + 48 * a6;
  v9 = *(v7 + 18);
  v8 = (v7 + 18);
  if (!v9)
  {
    return 1;
  }

  v15 = 0;
  v16 = (a7 + 8);
  while (1)
  {
    bzero(__str, 0x428uLL);
    XofGalileoEphemerisCodec::XofGalileoEphemerisCodec(__str);
    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(a5, __str);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
    if (!XofGalileoEphemerisCodec::Decode(a5, a2, a3))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        return 5;
      }

      bzero(__str, 0x3C6uLL);
      v24 = mach_continuous_time();
      if (a6 > 7)
      {
        v25 = "   ";
      }

      else
      {
        v25 = off_29EF06518[a6];
      }

      v28 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v25);
      if ((SBYTE7(v33) & 0x80u) == 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v28 * v24), "GNC", 87, "DecodeSVs", v29, v15 + 1);
      if (SBYTE7(v33) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_33;
    }

    v17 = *(a5 + 3);
    v18 = *v16;
    if (*v16)
    {
      v19 = v16;
      do
      {
        v20 = *(v18 + 28);
        v21 = v20 >= v17;
        v22 = v20 < v17;
        if (v21)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * v22);
      }

      while (v18);
      if (v19 != v16 && v17 >= *(v19 + 28))
      {
        break;
      }
    }

    XofGalileoEphemeris::XofGalileoEphemeris(__p, a5);
    __str[0] = v17;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v38 = *__p;
    std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGalileoEphemeris>>(a7, v17, __str);
    if (++v15 >= *v8)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config < 2)
  {
    return 5;
  }

  bzero(__str, 0x3C6uLL);
  v26 = mach_continuous_time();
  if (a6 > 7)
  {
    v27 = "   ";
  }

  else
  {
    v27 = off_29EF06518[a6];
  }

  v30 = *&g_MacClockTicksToMsRelation;
  std::string::basic_string[abi:ne200100]<0>(__p, v27);
  if ((SBYTE7(v33) & 0x80u) == 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v30 * v26), "GNC", 87, "DecodeSVs", v31);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_33:
  gnssOsa_PrintLog(__str, 2, 1, 0);
  return 5;
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGlonassBrdcastEphemeris>,XofGlonassBrdcastEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t **a7)
{
  v114 = *MEMORY[0x29EDCA608];
  v34 = (a4 + 48 * a6 + 18);
  if (!*v34)
  {
    return 1;
  }

  v10 = 0;
  v35 = a7 + 1;
  v46 = a5 + 376;
  v47 = (a5 + 440);
  v48 = (a5 + 360);
  v44 = a5 + 496;
  v45 = a5 + 456;
  v36 = (a5 + 520);
  v42 = a5 + 576;
  v43 = a5 + 536;
  v40 = a5 + 640;
  v41 = a5 + 608;
  v38 = a5 + 704;
  v39 = a5 + 672;
  while (1)
  {
    v37 = v10;
    bzero(__str, 0x2D8uLL);
    XofGlonassBrdcastEphemerisCodec::XofGlonassBrdcastEphemerisCodec(__str);
    *a5 = *__str;
    if (*(a5 + 31) < 0)
    {
      operator delete(*(a5 + 8));
    }

    *(a5 + 8) = v52;
    *(a5 + 24) = v53;
    HIBYTE(v53) = 0;
    LOBYTE(v52) = 0;
    *(a5 + 32) = v54;
    if (*(a5 + 63) < 0)
    {
      operator delete(*(a5 + 40));
    }

    *(a5 + 40) = v55;
    v11 = v56;
    HIBYTE(v56) = 0;
    LOBYTE(v55) = 0;
    v12 = v57;
    *(a5 + 56) = v11;
    *(a5 + 64) = v12;
    if (*(a5 + 95) < 0)
    {
      operator delete(*(a5 + 72));
    }

    *(a5 + 72) = v58;
    *(a5 + 88) = v59;
    HIBYTE(v59) = 0;
    LOBYTE(v58) = 0;
    *(a5 + 96) = v60;
    if (*(a5 + 135) < 0)
    {
      operator delete(*(a5 + 112));
    }

    *(a5 + 112) = v61;
    v13 = v62;
    HIBYTE(v62) = 0;
    LOBYTE(v61) = 0;
    v14 = v63;
    *(a5 + 128) = v13;
    *(a5 + 136) = v14;
    if (*(a5 + 167) < 0)
    {
      operator delete(*(a5 + 144));
    }

    *(a5 + 144) = v64;
    *(a5 + 160) = v65;
    HIBYTE(v65) = 0;
    LOBYTE(v64) = 0;
    *(a5 + 168) = v66;
    if (*(a5 + 199) < 0)
    {
      operator delete(*(a5 + 176));
    }

    *(a5 + 176) = v67;
    *(a5 + 192) = v68;
    HIBYTE(v68) = 0;
    LOBYTE(v67) = 0;
    *(a5 + 200) = v69;
    if (*(a5 + 231) < 0)
    {
      operator delete(*(a5 + 208));
    }

    *(a5 + 208) = v70;
    *(a5 + 224) = v71;
    HIBYTE(v71) = 0;
    LOBYTE(v70) = 0;
    *(a5 + 232) = v72;
    if (*(a5 + 263) < 0)
    {
      operator delete(*(a5 + 240));
    }

    *(a5 + 240) = v73;
    *(a5 + 256) = v74;
    HIBYTE(v74) = 0;
    LOBYTE(v73) = 0;
    *(a5 + 264) = v75;
    if (*(a5 + 295) < 0)
    {
      operator delete(*(a5 + 272));
    }

    *(a5 + 272) = v76;
    *(a5 + 288) = v77;
    HIBYTE(v77) = 0;
    LOBYTE(v76) = 0;
    *(a5 + 296) = v78;
    if (*(a5 + 327) < 0)
    {
      operator delete(*(a5 + 304));
    }

    *(a5 + 304) = v79;
    *(a5 + 320) = v80;
    HIBYTE(v80) = 0;
    LOBYTE(v79) = 0;
    *(a5 + 328) = v81;
    if (*(a5 + 359) < 0)
    {
      operator delete(*(a5 + 336));
    }

    *(a5 + 336) = v82;
    *(a5 + 352) = v83;
    HIBYTE(v83) = 0;
    LOBYTE(v82) = 0;
    *v48 = v84;
    if (*(a5 + 399) < 0)
    {
      operator delete(*v46);
    }

    *v46 = v85;
    *(v46 + 16) = v86;
    HIBYTE(v86) = 0;
    LOBYTE(v85) = 0;
    *(a5 + 400) = v87;
    if (*(a5 + 439) < 0)
    {
      operator delete(*(a5 + 416));
    }

    *(a5 + 416) = v88;
    *(a5 + 432) = v89;
    HIBYTE(v89) = 0;
    LOBYTE(v88) = 0;
    *v47 = v90;
    if (*(a5 + 479) < 0)
    {
      operator delete(*v45);
    }

    *v45 = v91;
    *(v45 + 16) = v92;
    HIBYTE(v92) = 0;
    LOBYTE(v91) = 0;
    *(a5 + 480) = v93;
    if (*(a5 + 519) < 0)
    {
      operator delete(*v44);
    }

    *v44 = v94;
    *(v44 + 16) = v95;
    HIBYTE(v95) = 0;
    LOBYTE(v94) = 0;
    *v36 = v96;
    if (*(a5 + 559) < 0)
    {
      operator delete(*v43);
    }

    *v43 = v97;
    *(v43 + 16) = v98;
    HIBYTE(v98) = 0;
    LOBYTE(v97) = 0;
    *(a5 + 560) = v99;
    if (*(a5 + 599) < 0)
    {
      operator delete(*v42);
    }

    *v42 = v100;
    *(v42 + 16) = v101;
    HIBYTE(v101) = 0;
    LOBYTE(v100) = 0;
    *(a5 + 600) = v102;
    if (*(a5 + 631) < 0)
    {
      operator delete(*v41);
    }

    *v41 = v103;
    *(v41 + 16) = v104;
    HIBYTE(v104) = 0;
    LOBYTE(v103) = 0;
    *(a5 + 632) = v105;
    if (*(a5 + 663) < 0)
    {
      operator delete(*v40);
    }

    *v40 = v106;
    *(v40 + 16) = v107;
    HIBYTE(v107) = 0;
    LOBYTE(v106) = 0;
    *(a5 + 664) = v108;
    if (*(a5 + 695) < 0)
    {
      operator delete(*v39);
    }

    *v39 = v109;
    *(v39 + 16) = v110;
    HIBYTE(v110) = 0;
    LOBYTE(v109) = 0;
    *(a5 + 696) = v111;
    if (*(a5 + 727) < 0)
    {
      operator delete(*v38);
    }

    *v38 = v112;
    *(v38 + 16) = v113;
    HIBYTE(v113) = 0;
    LOBYTE(v112) = 0;
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>>::~__tuple_impl(__str);
    if (XofIntegralType<unsigned char>::DecodeFromHexData(a5, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 32), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a5 + 64), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 96), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a5 + 136), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a5 + 168), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 200), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 232), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 264), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 296), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 328), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v48, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 400), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v47, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 480), a2, a3) != 1 || !XofGenericCodec::Decode<15ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>>(a5, a2, a3))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        return 5;
      }

      bzero(__str, 0x3C6uLL);
      v25 = mach_continuous_time();
      if (a6 > 7)
      {
        v26 = "   ";
      }

      else
      {
        v26 = off_29EF06518[a6];
      }

      v27 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v26);
      if (v50 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v27 * v25), "GNC", 87, "DecodeSVs", v28, v37 + 1);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_87;
    }

    v15 = *(a5 + 3);
    v16 = *v35;
    if (*v35)
    {
      v17 = v35;
      v18 = *v35;
      do
      {
        v19 = *(v18 + 28);
        v20 = v19 >= v15;
        v21 = v19 < v15;
        if (v20)
        {
          v17 = v18;
        }

        v18 = v18[v21];
      }

      while (v18);
      if (v17 != v35 && v15 >= *(v17 + 28))
      {
        break;
      }
    }

    if (!v16)
    {
LABEL_75:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v22 = v16;
        v23 = *(v16 + 28);
        if (v23 <= v15)
        {
          break;
        }

        v16 = *v22;
        if (!*v22)
        {
          goto LABEL_75;
        }
      }

      if (v23 >= v15)
      {
        break;
      }

      v16 = v22[1];
      if (!v16)
      {
        goto LABEL_75;
      }
    }

    v10 = v37 + 1;
    if (v37 + 1 >= *v34)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v29 = mach_continuous_time();
    if (a6 > 7)
    {
      v30 = "   ";
    }

    else
    {
      v30 = off_29EF06518[a6];
    }

    v31 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v30);
    if (v50 >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v31 * v29), "GNC", 87, "DecodeSVs", v32);
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_87:
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 5;
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofBeidouEphemeris>,XofBeidouEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v51 = *MEMORY[0x29EDCA608];
  v7 = a4 + 48 * a6;
  v9 = *(v7 + 18);
  v8 = (v7 + 18);
  if (!v9)
  {
    return 1;
  }

  v15 = 0;
  v16 = (a7 + 8);
  while (1)
  {
    bzero(__str, 0x700uLL);
    XofBeidouEphemerisCodec::XofBeidouEphemerisCodec(__str);
    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>( a5,  __str);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>::~__tuple_impl(__str);
    if (!XofBeidouEphemerisCodec::Decode(a5, a2, a3))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        return 5;
      }

      bzero(__str, 0x3C6uLL);
      v24 = mach_continuous_time();
      if (a6 > 7)
      {
        v25 = "   ";
      }

      else
      {
        v25 = off_29EF06518[a6];
      }

      v28 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v25);
      if ((SBYTE7(v33) & 0x80u) == 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v28 * v24), "GNC", 87, "DecodeSVs", v29, v15 + 1);
      if (SBYTE7(v33) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_33;
    }

    v17 = *(a5 + 3);
    v18 = *v16;
    if (*v16)
    {
      v19 = v16;
      do
      {
        v20 = *(v18 + 32);
        v21 = v20 >= v17;
        v22 = v20 < v17;
        if (v21)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * v22);
      }

      while (v18);
      if (v19 != v16 && v17 >= *(v19 + 32))
      {
        break;
      }
    }

    XofBeidouEphemeris::XofBeidouEphemeris(__p, a5);
    v47 = v37;
    v48 = v38;
    v49 = v39;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v46 = v36;
    __str[0] = v17;
    v50 = v40;
    v42 = *__p;
    std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofBeidouEphemeris>>(a7, v17, __str);
    if (++v15 >= *v8)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config < 2)
  {
    return 5;
  }

  bzero(__str, 0x3C6uLL);
  v26 = mach_continuous_time();
  if (a6 > 7)
  {
    v27 = "   ";
  }

  else
  {
    v27 = off_29EF06518[a6];
  }

  v30 = *&g_MacClockTicksToMsRelation;
  std::string::basic_string[abi:ne200100]<0>(__p, v27);
  if ((SBYTE7(v33) & 0x80u) == 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v30 * v26), "GNC", 87, "DecodeSVs", v31);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_33:
  gnssOsa_PrintLog(__str, 2, 1, 0);
  return 5;
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofNavicEphemeris>,XofNavicEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v43 = *MEMORY[0x29EDCA608];
  v7 = a4 + 48 * a6;
  v9 = *(v7 + 18);
  v8 = (v7 + 18);
  if (!v9)
  {
    return 1;
  }

  v15 = 0;
  v16 = (a7 + 8);
  while (1)
  {
    bzero(__str, 0x410uLL);
    XofNavicEphemerisCodec::XofNavicEphemerisCodec(__str);
    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>(a5, __str);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
    if (!XofNavicEphemerisCodec::Decode(a5, a2, a3))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        return 5;
      }

      bzero(__str, 0x3C6uLL);
      v24 = mach_continuous_time();
      if (a6 > 7)
      {
        v25 = "   ";
      }

      else
      {
        v25 = off_29EF06518[a6];
      }

      v28 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v25);
      if ((SBYTE7(v33) & 0x80u) == 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v28 * v24), "GNC", 87, "DecodeSVs", v29, v15 + 1);
      if (SBYTE7(v33) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_33;
    }

    v17 = *(a5 + 3);
    v18 = *v16;
    if (*v16)
    {
      v19 = v16;
      do
      {
        v20 = *(v18 + 28);
        v21 = v20 >= v17;
        v22 = v20 < v17;
        if (v21)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * v22);
      }

      while (v18);
      if (v19 != v16 && v17 >= *(v19 + 28))
      {
        break;
      }
    }

    XofNavicEphemeris::XofNavicEphemeris(__p, a5);
    __str[0] = v17;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v38 = *__p;
    std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofNavicEphemeris>>(a7, v17, __str);
    if (++v15 >= *v8)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config < 2)
  {
    return 5;
  }

  bzero(__str, 0x3C6uLL);
  v26 = mach_continuous_time();
  if (a6 > 7)
  {
    v27 = "   ";
  }

  else
  {
    v27 = off_29EF06518[a6];
  }

  v30 = *&g_MacClockTicksToMsRelation;
  std::string::basic_string[abi:ne200100]<0>(__p, v27);
  if ((SBYTE7(v33) & 0x80u) == 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v30 * v26), "GNC", 87, "DecodeSVs", v31);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_33:
  gnssOsa_PrintLog(__str, 2, 1, 0);
  return 5;
}

uint64_t XofExtEph::Decode(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v21[136] = *MEMORY[0x29EDCA608];
  bzero(v21, 0x440uLL);
  XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(v21);
  v9 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemerisCodec>(v8, v7, v3, v5, v21, 0, v8);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v21);
  if (v9 != 1)
  {
    return 5;
  }

  bzero(v20, 0x440uLL);
  XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(v20);
  v10 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemerisCodec>(v8, v7, v3, v5, v20, 2u, v8 + 9);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v20);
  if (v10 != 1)
  {
    return 5;
  }

  bzero(v19, 0x428uLL);
  XofGalileoEphemerisCodec::XofGalileoEphemerisCodec(v19);
  v11 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGalileoEphemeris>>,XofGalileoEphemerisCodec>(v8, v7, v3, v5, v19, 3u, v8 + 6);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v19);
  if (v11 != 1)
  {
    return 5;
  }

  bzero(v18, 0x440uLL);
  XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(v18);
  v12 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemerisCodec>(v8, v7, v3, v5, v18, 4u, v8 + 3);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v18);
  if (v12 != 1)
  {
    return 5;
  }

  bzero(v17, 0x700uLL);
  XofBeidouEphemerisCodec::XofBeidouEphemerisCodec(v17);
  v13 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofBeidouEphemeris>>,XofBeidouEphemerisCodec>(v8, v7, v3, v5, v17, 5u, v8 + 12);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>::~__tuple_impl(v17);
  if (v13 != 1)
  {
    return 5;
  }

  bzero(&v16, 0x410uLL);
  XofNavicEphemerisCodec::XofNavicEphemerisCodec(&v16);
  v14 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofNavicEphemeris>>,XofNavicEphemerisCodec>(v8, v7, v3, v5, &v16, 6u, v8 + 15);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(&v16);
  if (v14 == 1)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

uint64_t XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t **a7)
{
  v50 = *MEMORY[0x29EDCA608];
  v7 = (a4 + 48 * a6);
  v8 = v7[20];
  if (!v7[20])
  {
    return 1;
  }

  v10 = 0;
  v11 = a7 + 1;
  v12 = v7[19];
  while (1)
  {
    ++v10;
    if (v12)
    {
      break;
    }

LABEL_33:
    if (v10 >= v8)
    {
      return 1;
    }
  }

  v13 = 0;
  v41 = v10;
  v14 = v10;
  while (1)
  {
    bzero(__str, 0x440uLL);
    XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(__str);
    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>(a5, __str);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
    if (!XofGpsQzssEphemerisCodec::Decode(a5, a2, a3))
    {
      break;
    }

    v15 = *(a5 + 3);
    v16 = *v11;
    if (!*v11)
    {
      goto LABEL_14;
    }

    v17 = v11;
    do
    {
      v18 = *(v16 + 32);
      v19 = v18 >= v14;
      v20 = v18 < v14;
      if (v19)
      {
        v17 = v16;
      }

      v16 = v16[v20];
    }

    while (v16);
    if (v17 != v11 && *(v17 + 32) <= v14)
    {
      v26 = v17[6];
      v24 = v17 + 6;
      v25 = v26;
      if (v26)
      {
        v27 = v24;
        do
        {
          v28 = *(v25 + 28);
          v19 = v28 >= v15;
          v29 = v28 < v15;
          if (v19)
          {
            v27 = v25;
          }

          v25 = v25[v29];
        }

        while (v25);
        if (v27 != v24 && v15 >= *(v27 + 28))
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v36 = mach_continuous_time();
            if (a6 > 7)
            {
              v37 = "   ";
            }

            else
            {
              v37 = off_29EF06518[a6];
            }

            v38 = *&g_MacClockTicksToMsRelation;
            std::string::basic_string[abi:ne200100]<0>(__p, v37);
            if (v47[7] >= 0)
            {
              v39 = __p;
            }

            else
            {
              v39 = __p[0];
            }

            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Extended Ephemeris data, constellation Id = [ %s ], satellite Id = [ %d ], block number = [ %d ]\n", (v38 * v36), "GNC", 87, "DecodeSVs", v39, v15, v41);
            if ((v47[7] & 0x80000000) != 0)
            {
              operator delete(__p[0]);
            }

            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          return 5;
        }
      }

      v30 = (v24 - 1);
      XofGpsQzssEphemeris::XofGpsQzssEphemeris(__p, a5);
      v44 = *__p;
      *&v49[26] = *&v47[10];
      *&v49[42] = *&v47[26];
      *&v49[56] = *&v47[40];
      __str[0] = v15;
      *v49 = *__p;
      *&v49[16] = *v47;
      *&v49[24] = *&v47[8];
      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGpsQzssEphemeris>>(v30, v15, __str);
    }

    else
    {
LABEL_14:
      *(&v44 + 1) = 0;
      v45 = 0;
      *&v44 = &v44 + 8;
      XofGpsQzssEphemeris::XofGpsQzssEphemeris(__p, a5);
      v7[21] = BYTE3(__p[0]);
      __str[0] = v15;
      *&v49[16] = *v47;
      *&v49[32] = *&v47[16];
      *&v49[48] = *&v47[32];
      *&v49[64] = *&v47[48];
      *v49 = *__p;
      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGpsQzssEphemeris>>(&v44, v15, __str);
      __str[0] = v14;
      std::map<unsigned char,XofGpsQzssEphemeris>::map[abi:ne200100](&v49[4], &v44);
      v21 = *v11;
      if (!*v11)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v22 = v21;
          v23 = *(v21 + 32);
          if (v23 <= __str[0])
          {
            break;
          }

          v21 = *v22;
          if (!*v22)
          {
            goto LABEL_20;
          }
        }

        if (v23 >= __str[0])
        {
          break;
        }

        v21 = v22[1];
        if (!v21)
        {
          goto LABEL_20;
        }
      }

      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v49[4], *&v49[12]);
      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v44, *(&v44 + 1));
    }

    ++v13;
    v12 = v7[19];
    if (v13 >= v12)
    {
      v8 = v7[20];
      v10 = v41;
      goto LABEL_33;
    }
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v32 = mach_continuous_time();
    if (a6 > 7)
    {
      v33 = "   ";
    }

    else
    {
      v33 = off_29EF06518[a6];
    }

    v34 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v33);
    if (v47[7] >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Extended Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ], block number = [ %d ]\n", (v34 * v32), "GNC", 68, "DecodeSVs", v35, v13 + 1, v41);
    if ((v47[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 5;
}

void sub_298F9C9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(v35 + 8, a35);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&a21, a22);
  _Unwind_Resume(a1);
}

uint64_t XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGalileoEphemeris>>,XofGalileoEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t **a7)
{
  v49 = *MEMORY[0x29EDCA608];
  v7 = (a4 + 48 * a6);
  v8 = v7[20];
  if (!v7[20])
  {
    return 1;
  }

  v10 = 0;
  v11 = a7 + 1;
  v12 = v7[19];
  while (1)
  {
    ++v10;
    if (v12)
    {
      break;
    }

LABEL_33:
    if (v10 >= v8)
    {
      return 1;
    }
  }

  v13 = 0;
  v41 = v10;
  v14 = v10;
  while (1)
  {
    bzero(__str, 0x428uLL);
    XofGalileoEphemerisCodec::XofGalileoEphemerisCodec(__str);
    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(a5, __str);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
    if (!XofGalileoEphemerisCodec::Decode(a5, a2, a3))
    {
      break;
    }

    v15 = *(a5 + 3);
    v16 = *v11;
    if (!*v11)
    {
      goto LABEL_14;
    }

    v17 = v11;
    do
    {
      v18 = *(v16 + 32);
      v19 = v18 >= v14;
      v20 = v18 < v14;
      if (v19)
      {
        v17 = v16;
      }

      v16 = v16[v20];
    }

    while (v16);
    if (v17 != v11 && *(v17 + 32) <= v14)
    {
      v26 = v17[6];
      v24 = v17 + 6;
      v25 = v26;
      if (v26)
      {
        v27 = v24;
        do
        {
          v28 = *(v25 + 28);
          v19 = v28 >= v15;
          v29 = v28 < v15;
          if (v19)
          {
            v27 = v25;
          }

          v25 = v25[v29];
        }

        while (v25);
        if (v27 != v24 && v15 >= *(v27 + 28))
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v36 = mach_continuous_time();
            if (a6 > 7)
            {
              v37 = "   ";
            }

            else
            {
              v37 = off_29EF06518[a6];
            }

            v38 = *&g_MacClockTicksToMsRelation;
            std::string::basic_string[abi:ne200100]<0>(__p, v37);
            if (__p[23] >= 0)
            {
              v39 = __p;
            }

            else
            {
              v39 = *__p;
            }

            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Extended Ephemeris data, constellation Id = [ %s ], satellite Id = [ %d ], block number = [ %d ]\n", (v38 * v36), "GNC", 87, "DecodeSVs", v39, v15, v41);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          return 5;
        }
      }

      v30 = (v24 - 1);
      XofGalileoEphemeris::XofGalileoEphemeris(__p, a5);
      *v48 = *__p;
      *&v48[4] = *&__p[4];
      *&v48[10] = *&__p[10];
      *&v48[26] = *&__p[26];
      *&v48[42] = *&__p[42];
      *&v48[56] = *&__p[56];
      __str[0] = v15;
      *&v48[6] = *&__p[6];
      std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGalileoEphemeris>>(v30, v15, __str);
    }

    else
    {
LABEL_14:
      v45[0] = 0;
      v45[1] = 0;
      v44 = v45;
      XofGalileoEphemeris::XofGalileoEphemeris(__p, a5);
      v7[21] = __p[21];
      __str[0] = v15;
      *&v48[16] = *&__p[16];
      *&v48[32] = *&__p[32];
      *&v48[48] = *&__p[48];
      *&v48[64] = *&__p[64];
      *v48 = *__p;
      std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGalileoEphemeris>>(&v44, v15, __str);
      __str[0] = v14;
      std::map<unsigned char,XofGalileoEphemeris>::map[abi:ne200100](&v48[4], &v44);
      v21 = *v11;
      if (!*v11)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v22 = v21;
          v23 = *(v21 + 32);
          if (v23 <= __str[0])
          {
            break;
          }

          v21 = *v22;
          if (!*v22)
          {
            goto LABEL_20;
          }
        }

        if (v23 >= __str[0])
        {
          break;
        }

        v21 = v22[1];
        if (!v21)
        {
          goto LABEL_20;
        }
      }

      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v48[4], *&v48[12]);
      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v44, v45[0]);
    }

    ++v13;
    v12 = v7[19];
    if (v13 >= v12)
    {
      v8 = v7[20];
      v10 = v41;
      goto LABEL_33;
    }
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v32 = mach_continuous_time();
    if (a6 > 7)
    {
      v33 = "   ";
    }

    else
    {
      v33 = off_29EF06518[a6];
    }

    v34 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v33);
    if (__p[23] >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = *__p;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Extended Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ], block number = [ %d ]\n", (v34 * v32), "GNC", 68, "DecodeSVs", v35, v13 + 1, v41);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 5;
}

void sub_298F9CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(v36 + 8, a36);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

uint64_t XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofBeidouEphemeris>>,XofBeidouEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t **a7)
{
  v64 = *MEMORY[0x29EDCA608];
  v7 = (a4 + 48 * a6);
  v8 = v7[20];
  if (!v7[20])
  {
    return 1;
  }

  v10 = 0;
  v11 = a7 + 1;
  v12 = v7[19];
  while (1)
  {
    ++v10;
    if (v12)
    {
      break;
    }

LABEL_33:
    if (v10 >= v8)
    {
      return 1;
    }
  }

  v13 = 0;
  v42 = v10;
  v14 = v10;
  while (1)
  {
    bzero(__str, 0x700uLL);
    XofBeidouEphemerisCodec::XofBeidouEphemerisCodec(__str);
    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>( a5,  __str);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>::~__tuple_impl(__str);
    if (!XofBeidouEphemerisCodec::Decode(a5, a2, a3))
    {
      break;
    }

    v15 = *(a5 + 3);
    v16 = *v11;
    if (!*v11)
    {
      goto LABEL_14;
    }

    v17 = v11;
    do
    {
      v18 = *(v16 + 32);
      v19 = v18 >= v14;
      v20 = v18 < v14;
      if (v19)
      {
        v17 = v16;
      }

      v16 = v16[v20];
    }

    while (v16);
    if (v17 != v11 && *(v17 + 32) <= v14)
    {
      v27 = v17[6];
      v25 = v17 + 6;
      v26 = v27;
      if (v27)
      {
        v28 = v25;
        do
        {
          v29 = *(v26 + 32);
          v19 = v29 >= v15;
          v30 = v29 < v15;
          if (v19)
          {
            v28 = v26;
          }

          v26 = v26[v30];
        }

        while (v26);
        if (v28 != v25 && v15 >= *(v28 + 32))
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v37 = mach_continuous_time();
            if (a6 > 7)
            {
              v38 = "   ";
            }

            else
            {
              v38 = off_29EF06518[a6];
            }

            v39 = *&g_MacClockTicksToMsRelation;
            std::string::basic_string[abi:ne200100]<0>(__p, v38);
            if ((SBYTE7(v48) & 0x80u) == 0)
            {
              v40 = __p;
            }

            else
            {
              v40 = __p[0];
            }

            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Extended Ephemeris data, constellation Id = [ %s ], satellite Id = [ %d ], block number = [ %d ]\n", (v39 * v37), "GNC", 87, "DecodeSVs", v40, v15, v42);
            if (SBYTE7(v48) < 0)
            {
              operator delete(__p[0]);
            }

            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          return 5;
        }
      }

      v31 = (v25 - 1);
      XofBeidouEphemeris::XofBeidouEphemeris(__p, a5);
      v61 = v52;
      v62 = v53;
      v63[0] = *v54;
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v60 = v51;
      *(v63 + 14) = *&v54[14];
      v56 = *__p;
      __str[0] = v15;
      std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofBeidouEphemeris>>(v31, v15, __str);
    }

    else
    {
LABEL_14:
      v46[0] = 0;
      v46[1] = 0;
      v45 = v46;
      XofBeidouEphemeris::XofBeidouEphemeris(__p, a5);
      v61 = v52;
      v62 = v53;
      v63[0] = *v54;
      v21 = *__p;
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v60 = v51;
      v7[21] = BYTE5(v48);
      __str[0] = v15;
      *&v63[1] = *&v54[16];
      v56 = v21;
      std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofBeidouEphemeris>>(&v45, v15, __str);
      __str[0] = v14;
      std::map<unsigned char,XofBeidouEphemeris>::map[abi:ne200100](&v56, &v45);
      v22 = *v11;
      if (!*v11)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v23 = v22;
          v24 = *(v22 + 32);
          if (v24 <= __str[0])
          {
            break;
          }

          v22 = *v23;
          if (!*v23)
          {
            goto LABEL_20;
          }
        }

        if (v24 >= __str[0])
        {
          break;
        }

        v22 = v23[1];
        if (!v22)
        {
          goto LABEL_20;
        }
      }

      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v56, *(&v56 + 1));
      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v45, v46[0]);
    }

    ++v13;
    v12 = v7[19];
    if (v13 >= v12)
    {
      v8 = v7[20];
      v10 = v42;
      goto LABEL_33;
    }
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v33 = mach_continuous_time();
    if (a6 > 7)
    {
      v34 = "   ";
    }

    else
    {
      v34 = off_29EF06518[a6];
    }

    v35 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v34);
    if ((SBYTE7(v48) & 0x80u) == 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Extended Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ], block number = [ %d ]\n", (v35 * v33), "GNC", 68, "DecodeSVs", v36, v13 + 1, v42);
    if (SBYTE7(v48) < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 5;
}

void sub_298F9D440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(v45 + 8, a45);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

uint64_t XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofNavicEphemeris>>,XofNavicEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t **a7)
{
  v49 = *MEMORY[0x29EDCA608];
  v7 = (a4 + 48 * a6);
  v8 = v7[20];
  if (!v7[20])
  {
    return 1;
  }

  v10 = 0;
  v11 = a7 + 1;
  v12 = v7[19];
  while (1)
  {
    ++v10;
    if (v12)
    {
      break;
    }

LABEL_33:
    if (v10 >= v8)
    {
      return 1;
    }
  }

  v13 = 0;
  v41 = v10;
  v14 = v10;
  while (1)
  {
    bzero(__str, 0x410uLL);
    XofNavicEphemerisCodec::XofNavicEphemerisCodec(__str);
    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>(a5, __str);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
    if (!XofNavicEphemerisCodec::Decode(a5, a2, a3))
    {
      break;
    }

    v15 = *(a5 + 3);
    v16 = *v11;
    if (!*v11)
    {
      goto LABEL_14;
    }

    v17 = v11;
    do
    {
      v18 = *(v16 + 32);
      v19 = v18 >= v14;
      v20 = v18 < v14;
      if (v19)
      {
        v17 = v16;
      }

      v16 = v16[v20];
    }

    while (v16);
    if (v17 != v11 && *(v17 + 32) <= v14)
    {
      v26 = v17[6];
      v24 = v17 + 6;
      v25 = v26;
      if (v26)
      {
        v27 = v24;
        do
        {
          v28 = *(v25 + 28);
          v19 = v28 >= v15;
          v29 = v28 < v15;
          if (v19)
          {
            v27 = v25;
          }

          v25 = v25[v29];
        }

        while (v25);
        if (v27 != v24 && v15 >= *(v27 + 28))
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v36 = mach_continuous_time();
            if (a6 > 7)
            {
              v37 = "   ";
            }

            else
            {
              v37 = off_29EF06518[a6];
            }

            v38 = *&g_MacClockTicksToMsRelation;
            std::string::basic_string[abi:ne200100]<0>(__p, v37);
            if (__p[23] >= 0)
            {
              v39 = __p;
            }

            else
            {
              v39 = *__p;
            }

            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Extended Ephemeris data, constellation Id = [ %s ], satellite Id = [ %d ], block number = [ %d ]\n", (v38 * v36), "GNC", 87, "DecodeSVs", v39, v15, v41);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          return 5;
        }
      }

      v30 = (v24 - 1);
      XofNavicEphemeris::XofNavicEphemeris(__p, a5);
      *&v48[1] = *&__p[1];
      *&v48[17] = *&__p[17];
      *&v48[19] = *&__p[19];
      *&v48[35] = *&__p[35];
      *&v48[51] = *&__p[51];
      v48[67] = __p[67];
      __str[0] = v15;
      v48[0] = __p[0];
      std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofNavicEphemeris>>(v30, v15, __str);
    }

    else
    {
LABEL_14:
      v45[0] = 0;
      v45[1] = 0;
      v44 = v45;
      XofNavicEphemeris::XofNavicEphemeris(__p, a5);
      v7[21] = __p[10];
      __str[0] = v15;
      *&v48[16] = *&__p[16];
      *&v48[32] = *&__p[32];
      *&v48[48] = *&__p[48];
      *&v48[64] = *&__p[64];
      *v48 = *__p;
      std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofNavicEphemeris>>(&v44, v15, __str);
      __str[0] = v14;
      std::map<unsigned char,XofNavicEphemeris>::map[abi:ne200100](&v48[4], &v44);
      v21 = *v11;
      if (!*v11)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v22 = v21;
          v23 = *(v21 + 32);
          if (v23 <= __str[0])
          {
            break;
          }

          v21 = *v22;
          if (!*v22)
          {
            goto LABEL_20;
          }
        }

        if (v23 >= __str[0])
        {
          break;
        }

        v21 = v22[1];
        if (!v21)
        {
          goto LABEL_20;
        }
      }

      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v48[4], *&v48[12]);
      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v44, v45[0]);
    }

    ++v13;
    v12 = v7[19];
    if (v13 >= v12)
    {
      v8 = v7[20];
      v10 = v41;
      goto LABEL_33;
    }
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v32 = mach_continuous_time();
    if (a6 > 7)
    {
      v33 = "   ";
    }

    else
    {
      v33 = off_29EF06518[a6];
    }

    v34 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v33);
    if (__p[23] >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = *__p;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Extended Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ], block number = [ %d ]\n", (v34 * v32), "GNC", 68, "DecodeSVs", v35, v13 + 1, v41);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 5;
}

void sub_298F9D96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(v37 + 8, a37);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

void XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(XofGpsQzssEphemerisCodec *this)
{
  v181 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v177, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v178, &v177, 1, 202, 0);
  std::string::basic_string[abi:ne200100]<0>(&v173, "health");
  XofIntegralType<unsigned char>::XofIntegralType(&v174, &v173, 0, 63, 0);
  std::string::basic_string[abi:ne200100]<0>(&v169, "URAI");
  XofIntegralType<signed char>::XofIntegralType(&v170, &v169, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v165, "fitHours");
  XofIntegralType<unsigned char>::XofIntegralType(&v166, &v165, 0, 6, 0);
  std::string::basic_string[abi:ne200100]<0>(&v161, "gpsWeek");
  XofIntegralType<unsigned short>::XofIntegralType(&v162, &v161, 0, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v157, "sTOC");
  XofIntegralType<unsigned short>::XofIntegralType(&v158, &v157, 0, 37799, 0);
  std::string::basic_string[abi:ne200100]<0>(&v153, "sAf0");
  XofIntegralType<int>::XofIntegralType(&v154, &v153, -2097152, 0x1FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v149, "sAf1");
  XofIntegralType<short>::XofIntegralType(&v150, &v149, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v145, "sAf2");
  XofIntegralType<signed char>::XofIntegralType(&v146, &v145, -128, 127, 0);
  std::string::basic_string[abi:ne200100]<0>(&v141, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v142, &v141, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v137, "sTGD");
  XofIntegralType<short>::XofIntegralType(&v138, &v137, -4096, 4095, 0);
  std::string::basic_string[abi:ne200100]<0>(&v133, "sISC_L1_CA");
  XofIntegralType<short>::XofIntegralType(&v134, &v133, -4096, 4095, 0x7FFF);
  std::string::basic_string[abi:ne200100]<0>(&v129, "sISC_L5_Q5");
  XofIntegralType<short>::XofIntegralType(&v130, &v129, -4096, 4095, 0x7FFF);
  std::string::basic_string[abi:ne200100]<0>(&v125, "reserved2");
  XofIntegralType<unsigned short>::XofIntegralType(&v126, &v125, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v121, "l5Health");
  XofIntegralType<signed char>::XofIntegralType(&v122, &v121, 0, 1, -1);
  std::string::basic_string[abi:ne200100]<0>(&v117, "integrityFlag");
  XofIntegralType<signed char>::XofIntegralType(&v118, &v117, 0, 1, -1);
  std::string::basic_string[abi:ne200100]<0>(&v113, "IODC");
  XofIntegralType<unsigned short>::XofIntegralType(&v114, &v113, 0, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v109, "sE");
  XofIntegralType<unsigned int>::XofIntegralType(&v110, &v109, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v105, "sAPowerHalf");
  XofIntegralType<unsigned int>::XofIntegralType(&v106, &v105, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v101, "sM0");
  XofIntegralType<int>::XofIntegralType(&v102, &v101, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v97, "sOmega0");
  XofIntegralType<int>::XofIntegralType(&v98, &v97, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v93, "sI0");
  XofIntegralType<int>::XofIntegralType(&v94, &v93, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v89, "sW");
  XofIntegralType<int>::XofIntegralType(&v90, &v89, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v85, "sOmegaDot");
  XofIntegralType<int>::XofIntegralType(&v86, &v85, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v81, "sDeltaN");
  XofIntegralType<short>::XofIntegralType(&v82, &v81, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v77, "sIDOT");
  XofIntegralType<short>::XofIntegralType(&v78, &v77, -8192, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v73, "sCuc");
  XofIntegralType<short>::XofIntegralType(&v74, &v73, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v69, "sCus");
  XofIntegralType<short>::XofIntegralType(&v70, &v69, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v65, "sCrc");
  XofIntegralType<short>::XofIntegralType(&v66, &v65, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v61, "sCrs");
  XofIntegralType<short>::XofIntegralType(&v62, &v61, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v57, "sCic");
  XofIntegralType<short>::XofIntegralType(&v58, &v57, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "sCis");
  XofIntegralType<short>::XofIntegralType(&v54, &__p, -32768, 0x7FFF, 0);
  *this = v178;
  *(this + 8) = v179;
  *(this + 3) = v180;
  v179 = 0uLL;
  v180 = 0;
  *(this + 8) = v174;
  *(this + 40) = v175;
  *(this + 7) = v176;
  v176 = 0;
  v175 = 0uLL;
  *(this + 16) = v170;
  v2 = v171;
  *(this + 11) = v172;
  *(this + 72) = v2;
  v171 = 0uLL;
  v172 = 0;
  *(this + 24) = v166;
  v3 = v168;
  *(this + 104) = v167;
  v167 = 0uLL;
  v168 = 0;
  v4 = v162;
  v5 = v164;
  *(this + 15) = v3;
  *(this + 16) = v4;
  *(this + 136) = v163;
  v163 = 0uLL;
  v164 = 0;
  v6 = v158;
  v7 = v160;
  *(this + 19) = v5;
  *(this + 20) = v6;
  v8 = v159;
  *(this + 23) = v7;
  *(this + 168) = v8;
  v159 = 0uLL;
  v160 = 0;
  v9 = v155;
  v10 = v156;
  *(this + 12) = v154;
  *(this + 13) = v9;
  v155 = 0uLL;
  v156 = 0;
  v11 = v150;
  v12 = v152;
  *(this + 28) = v10;
  *(this + 29) = v11;
  v13 = v151;
  *(this + 32) = v12;
  *(this + 15) = v13;
  v151 = 0uLL;
  v152 = 0;
  *(this + 66) = v146;
  v14 = v147;
  *(this + 36) = v148;
  *(this + 17) = v14;
  v147 = 0uLL;
  v148 = 0;
  *(this + 74) = v142;
  v15 = v144;
  *(this + 19) = v143;
  v143 = 0uLL;
  v144 = 0;
  v16 = v138;
  v17 = v140;
  *(this + 40) = v15;
  *(this + 41) = v16;
  *(this + 21) = v139;
  v139 = 0uLL;
  v140 = 0;
  v18 = v134;
  v19 = v136;
  *(this + 44) = v17;
  *(this + 45) = v18;
  *(this + 23) = v135;
  v135 = 0uLL;
  v136 = 0;
  v20 = v130;
  v21 = v132;
  *(this + 48) = v19;
  *(this + 49) = v20;
  *(this + 25) = v131;
  v131 = 0uLL;
  v132 = 0;
  v22 = v126;
  v23 = v128;
  *(this + 52) = v21;
  *(this + 53) = v22;
  v24 = v127;
  *(this + 56) = v23;
  *(this + 27) = v24;
  v127 = 0uLL;
  v128 = 0;
  *(this + 114) = v122;
  v25 = v123;
  *(this + 60) = v124;
  *(this + 29) = v25;
  v123 = 0uLL;
  v124 = 0;
  *(this + 122) = v118;
  v26 = v119;
  *(this + 64) = v120;
  *(this + 31) = v26;
  v119 = 0uLL;
  v120 = 0;
  v27 = v116;
  *(this + 65) = v114;
  v28 = v115;
  *(this + 68) = v27;
  *(this + 33) = v28;
  v115 = 0uLL;
  v116 = 0;
  v29 = v111;
  *(this + 552) = v110;
  *(this + 73) = v112;
  *(this + 568) = v29;
  v111 = 0uLL;
  v112 = 0;
  v30 = v106;
  v31 = v107;
  *(this + 78) = v108;
  *(this + 37) = v30;
  *(this + 38) = v31;
  v107 = 0uLL;
  v108 = 0;
  v32 = v103;
  *(this + 632) = v102;
  *(this + 83) = v104;
  *(this + 648) = v32;
  v103 = 0uLL;
  v104 = 0;
  v33 = v98;
  v34 = v99;
  *(this + 88) = v100;
  *(this + 42) = v33;
  *(this + 43) = v34;
  v99 = 0uLL;
  v100 = 0;
  *(this + 712) = v94;
  v35 = v95;
  *(this + 93) = v96;
  *(this + 728) = v35;
  v95 = 0uLL;
  v96 = 0;
  v36 = v90;
  v37 = v91;
  *(this + 98) = v92;
  *(this + 47) = v36;
  *(this + 48) = v37;
  v91 = 0uLL;
  v92 = 0;
  *(this + 792) = v86;
  v38 = v87;
  *(this + 103) = v88;
  *(this + 808) = v38;
  v87 = 0uLL;
  v88 = 0;
  v39 = v84;
  *(this + 104) = v82;
  v40 = v83;
  *(this + 107) = v39;
  *(this + 840) = v40;
  v83 = 0uLL;
  v84 = 0;
  v41 = v80;
  *(this + 108) = v78;
  v42 = v79;
  *(this + 111) = v41;
  *(this + 872) = v42;
  v79 = 0uLL;
  v80 = 0;
  v43 = v76;
  *(this + 112) = v74;
  v44 = v75;
  *(this + 115) = v43;
  *(this + 904) = v44;
  v75 = 0uLL;
  v76 = 0;
  v45 = v72;
  *(this + 116) = v70;
  v46 = v71;
  *(this + 119) = v45;
  *(this + 936) = v46;
  v71 = 0uLL;
  v72 = 0;
  v47 = v68;
  *(this + 120) = v66;
  v48 = v67;
  *(this + 123) = v47;
  *(this + 968) = v48;
  v67 = 0uLL;
  v68 = 0;
  v49 = v64;
  *(this + 124) = v62;
  v50 = v63;
  *(this + 127) = v49;
  *(this + 1000) = v50;
  v63 = 0uLL;
  v64 = 0;
  *(this + 128) = v58;
  v51 = *v59;
  *(this + 131) = v60;
  *(this + 1032) = v51;
  v59[0] = 0;
  v59[1] = 0;
  v60 = 0;
  *(this + 132) = v54;
  v52 = v55;
  *(this + 135) = v56;
  *(this + 1064) = v52;
  v55 = 0uLL;
  v56 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59[0]);
    }
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(v87);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(v91);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v96) < 0)
  {
    operator delete(v95);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v104) < 0)
  {
    operator delete(v103);
  }

  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v108) < 0)
  {
    operator delete(v107);
  }

  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v112) < 0)
  {
    operator delete(v111);
  }

  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v116) < 0)
  {
    operator delete(v115);
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v120) < 0)
  {
    operator delete(v119);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v124) < 0)
  {
    operator delete(v123);
  }

  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v128) < 0)
  {
    operator delete(v127);
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v132) < 0)
  {
    operator delete(v131);
  }

  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v136) < 0)
  {
    operator delete(v135);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v144) < 0)
  {
    operator delete(v143);
  }

  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v148) < 0)
  {
    operator delete(v147);
  }

  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v152) < 0)
  {
    operator delete(v151);
  }

  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v156) < 0)
  {
    operator delete(v155);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(v159);
  }

  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v164) < 0)
  {
    operator delete(v163);
  }

  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v161.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v168) < 0)
  {
    operator delete(v167);
  }

  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v165.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v172) < 0)
  {
    operator delete(v171);
  }

  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v176) < 0)
  {
    operator delete(v175);
  }

  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v173.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v180) < 0)
  {
    operator delete(v179);
  }

  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v177.__r_.__value_.__l.__data_);
  }
}

void sub_298F9E758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a81);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(STACK[0x308]);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(STACK[0x4C0]);
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(STACK[0x568]);
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(STACK[0x548]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(STACK[0x580]);
  }

  if (SLOBYTE(STACK[0x5F7]) < 0)
  {
    operator delete(STACK[0x5E0]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (SLOBYTE(STACK[0x60F]) < 0)
  {
    operator delete(STACK[0x5F8]);
  }

  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(STACK[0x650]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  if (*(v81 - 193) < 0)
  {
    operator delete(*(v81 - 216));
  }

  if (*(v81 - 225) < 0)
  {
    operator delete(*(v81 - 248));
  }

  if (*(v81 - 137) < 0)
  {
    operator delete(*(v81 - 160));
  }

  if (*(v81 - 169) < 0)
  {
    operator delete(*(v81 - 192));
  }

  if (*(v81 - 81) < 0)
  {
    operator delete(*(v81 - 104));
  }

  if (*(v81 - 113) < 0)
  {
    operator delete(*(v81 - 136));
  }

  if (*(v81 - 25) < 0)
  {
    operator delete(*(v81 - 48));
  }

  if (*(v81 - 57) < 0)
  {
    operator delete(*(v81 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 1087) < 0)
  {
    operator delete(*(a1 + 1064));
  }

  if (*(a1 + 1055) < 0)
  {
    operator delete(*(a1 + 1032));
  }

  if (*(a1 + 1023) < 0)
  {
    operator delete(*(a1 + 1000));
  }

  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  if (*(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
  }

  if (*(a1 + 927) < 0)
  {
    operator delete(*(a1 + 904));
  }

  if (*(a1 + 895) < 0)
  {
    operator delete(*(a1 + 872));
  }

  if (*(a1 + 863) < 0)
  {
    operator delete(*(a1 + 840));
  }

  if (*(a1 + 831) < 0)
  {
    operator delete(*(a1 + 808));
  }

  if (*(a1 + 791) < 0)
  {
    operator delete(*(a1 + 768));
  }

  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  if (*(a1 + 711) < 0)
  {
    operator delete(*(a1 + 688));
  }

  if (*(a1 + 671) < 0)
  {
    operator delete(*(a1 + 648));
  }

  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  if (*(a1 + 551) < 0)
  {
    operator delete(*(a1 + 528));
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void XofSbasEphemerisCodec::XofSbasEphemerisCodec(XofSbasEphemerisCodec *this)
{
  v91 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v87, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v88, &v87, 120, 158, 0);
  std::string::basic_string[abi:ne200100]<0>(&v83, "health");
  XofIntegralType<unsigned char>::XofIntegralType(&v84, &v83, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v79, "st0");
  XofIntegralType<unsigned short>::XofIntegralType(&v80, &v79, 0, 5399, 0);
  std::string::basic_string[abi:ne200100]<0>(&v75, "saGfo");
  XofIntegralType<short>::XofIntegralType(&v76, &v75, -2048, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v71, "saGf1");
  XofIntegralType<signed char>::XofIntegralType(&v72, &v71, -128, 127, 0);
  std::string::basic_string[abi:ne200100]<0>(&v67, "Accuracy");
  XofIntegralType<unsigned char>::XofIntegralType(&v68, &v67, 0, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v63, "sXG");
  XofIntegralType<int>::XofIntegralType(&v64, &v63, -536870912, 0x1FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v59, "sYG");
  XofIntegralType<int>::XofIntegralType(&v60, &v59, -536870912, 0x1FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v55, "sZG");
  XofIntegralType<int>::XofIntegralType(&v56, &v55, -16777216, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v51, "sXG_Rate_of_Change");
  XofIntegralType<int>::XofIntegralType(&v52, &v51, -65536, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v47, "sYG_Rate_of_Change");
  XofIntegralType<int>::XofIntegralType(&v48, &v47, -65536, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v43, "sZG_Rate_of_Change");
  XofIntegralType<int>::XofIntegralType(&v44, &v43, -131072, 0x1FFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v39, "sXG_Acceleration");
  XofIntegralType<short>::XofIntegralType(&v40, &v39, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v35, "sYG_Acceleration");
  XofIntegralType<short>::XofIntegralType(&v36, &v35, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v31, "sZG_Acceleration");
  XofIntegralType<short>::XofIntegralType(&v32, &v31, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v27, "iod");
  XofIntegralType<unsigned char>::XofIntegralType(&v28, &v27, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "reserved");
  XofIntegralType<unsigned char>::XofIntegralType(&v24, &__p, 0, 255, 0);
  *(this + 8) = v89;
  *(this + 40) = v85;
  *(this + 72) = v81;
  *(this + 104) = v77;
  *(this + 136) = v73;
  *(this + 168) = v69;
  v2 = *v65;
  *(this + 12) = v64;
  *(this + 13) = v2;
  v3 = *v61;
  *(this + 232) = v60;
  *(this + 248) = v3;
  v4 = *v57;
  *(this + 17) = v56;
  *(this + 18) = v4;
  v5 = *v53;
  *(this + 312) = v52;
  *(this + 328) = v5;
  v6 = *v49;
  *(this + 22) = v48;
  *(this + 23) = v6;
  v7 = *v45;
  *(this + 392) = v44;
  *this = v88;
  *(this + 3) = v90;
  v89 = 0uLL;
  v90 = 0;
  *(this + 8) = v84;
  v8 = v86;
  v86 = 0;
  v85 = 0uLL;
  v9 = v80;
  v10 = v82;
  *(this + 7) = v8;
  *(this + 8) = v9;
  v81 = 0uLL;
  v82 = 0;
  v11 = v76;
  v12 = v78;
  *(this + 11) = v10;
  *(this + 12) = v11;
  *(this + 15) = v12;
  v77 = 0uLL;
  v78 = 0;
  *(this + 32) = v72;
  *(this + 19) = v74;
  v73 = 0uLL;
  v74 = 0;
  *(this + 40) = v68;
  *(this + 23) = v70;
  v69 = 0uLL;
  v70 = 0;
  *(this + 28) = v66;
  v65[1] = 0;
  v65[0] = 0;
  v66 = 0;
  *(this + 33) = v62;
  v61[1] = 0;
  v61[0] = 0;
  v62 = 0;
  *(this + 38) = v58;
  v57[1] = 0;
  v57[0] = 0;
  v58 = 0;
  *(this + 43) = v54;
  v53[0] = 0;
  v53[1] = 0;
  v54 = 0;
  *(this + 48) = v50;
  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  v13 = v46;
  *(this + 408) = v7;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  v14 = v40;
  v15 = v42;
  *(this + 53) = v13;
  *(this + 54) = v14;
  *(this + 440) = v41;
  v41 = 0uLL;
  v42 = 0;
  v16 = v36;
  v17 = v38;
  *(this + 57) = v15;
  *(this + 58) = v16;
  *(this + 472) = v37;
  v37 = 0uLL;
  v38 = 0;
  v18 = v32;
  v19 = v34;
  *(this + 61) = v17;
  *(this + 62) = v18;
  v20 = v33;
  *(this + 65) = v19;
  *(this + 504) = v20;
  v33 = 0uLL;
  v34 = 0;
  *(this + 132) = v28;
  v21 = *v29;
  *(this + 69) = v30;
  *(this + 536) = v21;
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  *(this + 140) = v24;
  v22 = v25;
  *(this + 73) = v26;
  *(this + 568) = v22;
  v25 = 0uLL;
  v26 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65[0]);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }
}

void sub_298F9F6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (*(v80 - 193) < 0)
  {
    operator delete(*(v80 - 216));
  }

  if (*(v80 - 225) < 0)
  {
    operator delete(*(v80 - 248));
  }

  if (*(v80 - 137) < 0)
  {
    operator delete(*(v80 - 160));
  }

  if (*(v80 - 169) < 0)
  {
    operator delete(*(v80 - 192));
  }

  if (*(v80 - 81) < 0)
  {
    operator delete(*(v80 - 104));
  }

  if (*(v80 - 113) < 0)
  {
    operator delete(*(v80 - 136));
  }

  if (*(v80 - 25) < 0)
  {
    operator delete(*(v80 - 48));
  }

  if (*(v80 - 57) < 0)
  {
    operator delete(*(v80 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void XofGalileoEphemerisCodec::XofGalileoEphemerisCodec(XofGalileoEphemerisCodec *this)
{
  v175 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v171, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v172, &v171, 0, 36, 0);
  std::string::basic_string[abi:ne200100]<0>(&v167, "navDVS");
  XofIntegralType<unsigned char>::XofIntegralType(&v168, &v167, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v163, "sigHs");
  XofIntegralType<unsigned char>::XofIntegralType(&v164, &v163, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v159, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v160, &v159, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v155, "reserved2");
  XofIntegralType<unsigned short>::XofIntegralType(&v156, &v155, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v151, "modelId");
  XofIntegralType<unsigned char>::XofIntegralType(&v152, &v151, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v147, "SISA");
  XofIntegralType<unsigned char>::XofIntegralType(&v148, &v147, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v143, "galWeek");
  XofIntegralType<unsigned short>::XofIntegralType(&v144, &v143, 0, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v139, "sTOE");
  XofIntegralType<unsigned short>::XofIntegralType(&v140, &v139, 0, 10079, 0);
  std::string::basic_string[abi:ne200100]<0>(&v135, "sAf0");
  XofIntegralType<int>::XofIntegralType(&v136, &v135, -1073741824, 0x3FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v131, "sAf1");
  XofIntegralType<int>::XofIntegralType(&v132, &v131, -1048576, 0xFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v127, "sAf2");
  XofIntegralType<signed char>::XofIntegralType(&v128, &v127, -32, 31, 0);
  std::string::basic_string[abi:ne200100]<0>(&v123, "fitHours");
  XofIntegralType<unsigned char>::XofIntegralType(&v124, &v123, 0, 6, 0);
  std::string::basic_string[abi:ne200100]<0>(&v119, "IODNav");
  XofIntegralType<unsigned short>::XofIntegralType(&v120, &v119, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v115, "sBGDE1E5a");
  XofIntegralType<short>::XofIntegralType(&v116, &v115, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v111, "sBGDE1E5b");
  XofIntegralType<short>::XofIntegralType(&v112, &v111, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v107, "sE");
  XofIntegralType<unsigned int>::XofIntegralType(&v108, &v107, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v103, "sAPowerHalf");
  XofIntegralType<unsigned int>::XofIntegralType(&v104, &v103, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v99, "sM0");
  XofIntegralType<int>::XofIntegralType(&v100, &v99, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v95, "sOmega0");
  XofIntegralType<int>::XofIntegralType(&v96, &v95, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v91, "sI0");
  XofIntegralType<int>::XofIntegralType(&v92, &v91, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v87, "sW");
  XofIntegralType<int>::XofIntegralType(&v88, &v87, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v83, "sOmegaDot");
  XofIntegralType<int>::XofIntegralType(&v84, &v83, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v79, "sDeltaN");
  XofIntegralType<short>::XofIntegralType(&v80, &v79, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v75, "sIDOT");
  XofIntegralType<short>::XofIntegralType(&v76, &v75, -8192, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v71, "sCuc");
  XofIntegralType<short>::XofIntegralType(&v72, &v71, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v67, "sCus");
  XofIntegralType<short>::XofIntegralType(&v68, &v67, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v63, "sCrc");
  XofIntegralType<short>::XofIntegralType(&v64, &v63, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v59, "sCrs");
  XofIntegralType<short>::XofIntegralType(&v60, &v59, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v55, "sCic");
  XofIntegralType<short>::XofIntegralType(&v56, &v55, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "sCis");
  XofIntegralType<short>::XofIntegralType(&v52, &__p, -32768, 0x7FFF, 0);
  *this = v172;
  *(this + 8) = v173;
  *(this + 3) = v174;
  v173 = 0uLL;
  v174 = 0;
  *(this + 8) = v168;
  *(this + 40) = v169;
  *(this + 7) = v170;
  v170 = 0;
  v169 = 0uLL;
  *(this + 16) = v164;
  v2 = v165;
  *(this + 11) = v166;
  *(this + 72) = v2;
  v165 = 0uLL;
  v166 = 0;
  *(this + 24) = v160;
  v3 = v162;
  *(this + 104) = v161;
  v161 = 0uLL;
  v162 = 0;
  v4 = v156;
  v5 = v158;
  *(this + 15) = v3;
  *(this + 16) = v4;
  v6 = v157;
  *(this + 19) = v5;
  *(this + 136) = v6;
  v157 = 0uLL;
  v158 = 0;
  *(this + 40) = v152;
  v7 = v153;
  *(this + 23) = v154;
  *(this + 168) = v7;
  v153 = 0uLL;
  v154 = 0;
  *(this + 48) = v148;
  v8 = v150;
  *(this + 200) = v149;
  v149 = 0uLL;
  v150 = 0;
  v9 = v144;
  v10 = v146;
  *(this + 27) = v8;
  *(this + 28) = v9;
  *(this + 232) = v145;
  v145 = 0uLL;
  v146 = 0;
  v11 = v140;
  v12 = v142;
  *(this + 31) = v10;
  *(this + 32) = v11;
  v13 = v141;
  *(this + 35) = v12;
  *(this + 264) = v13;
  v141 = 0uLL;
  v142 = 0;
  v14 = v136;
  v15 = v137;
  *(this + 40) = v138;
  *(this + 18) = v14;
  *(this + 19) = v15;
  v137 = 0uLL;
  v138 = 0;
  v16 = v133;
  *(this + 328) = v132;
  *(this + 45) = v134;
  *(this + 344) = v16;
  v133 = 0uLL;
  v134 = 0;
  *(this + 92) = v128;
  v17 = v129;
  *(this + 49) = v130;
  *(this + 376) = v17;
  v129 = 0uLL;
  v130 = 0;
  *(this + 100) = v124;
  v18 = v126;
  *(this + 408) = v125;
  v125 = 0uLL;
  v126 = 0;
  v19 = v120;
  v20 = v122;
  *(this + 53) = v18;
  *(this + 54) = v19;
  *(this + 440) = v121;
  v121 = 0uLL;
  v122 = 0;
  v21 = v116;
  v22 = v118;
  *(this + 57) = v20;
  *(this + 58) = v21;
  *(this + 472) = v117;
  v117 = 0uLL;
  v118 = 0;
  v23 = v112;
  v24 = v114;
  *(this + 61) = v22;
  *(this + 62) = v23;
  v25 = v113;
  *(this + 65) = v24;
  *(this + 504) = v25;
  v113 = 0uLL;
  v114 = 0;
  v26 = v108;
  v27 = v109;
  *(this + 70) = v110;
  *(this + 33) = v26;
  *(this + 34) = v27;
  v109 = 0uLL;
  v110 = 0;
  v28 = v105;
  *(this + 568) = v104;
  *(this + 75) = v106;
  *(this + 584) = v28;
  v105 = 0uLL;
  v106 = 0;
  v29 = v100;
  v30 = v101;
  *(this + 80) = v102;
  *(this + 38) = v29;
  *(this + 39) = v30;
  v101 = 0uLL;
  v102 = 0;
  *(this + 648) = v96;
  v31 = v97;
  *(this + 85) = v98;
  *(this + 664) = v31;
  v97 = 0uLL;
  v98 = 0;
  v32 = v92;
  v33 = v93;
  *(this + 90) = v94;
  *(this + 43) = v32;
  *(this + 44) = v33;
  v93 = 0uLL;
  v94 = 0;
  *(this + 728) = v88;
  v34 = v89;
  *(this + 95) = v90;
  *(this + 744) = v34;
  v89 = 0uLL;
  v90 = 0;
  v35 = v84;
  v36 = v85;
  *(this + 100) = v86;
  *(this + 48) = v35;
  *(this + 49) = v36;
  v85 = 0uLL;
  v86 = 0;
  v37 = v82;
  *(this + 101) = v80;
  v38 = v81;
  *(this + 104) = v37;
  *(this + 51) = v38;
  v81 = 0uLL;
  v82 = 0;
  v39 = v78;
  *(this + 105) = v76;
  v40 = v77;
  *(this + 108) = v39;
  *(this + 53) = v40;
  v77 = 0uLL;
  v78 = 0;
  v41 = v74;
  *(this + 109) = v72;
  v42 = v73;
  *(this + 112) = v41;
  *(this + 55) = v42;
  v73 = 0uLL;
  v74 = 0;
  v43 = v70;
  *(this + 113) = v68;
  v44 = v69;
  *(this + 116) = v43;
  *(this + 57) = v44;
  v69 = 0uLL;
  v70 = 0;
  v45 = v66;
  *(this + 117) = v64;
  v46 = v65;
  *(this + 120) = v45;
  *(this + 59) = v46;
  v65 = 0uLL;
  v66 = 0;
  v47 = v62;
  *(this + 121) = v60;
  v48 = v61;
  *(this + 124) = v47;
  *(this + 61) = v48;
  v61 = 0uLL;
  v62 = 0;
  *(this + 125) = v56;
  v49 = *v57;
  *(this + 128) = v58;
  *(this + 63) = v49;
  v57[0] = 0;
  v57[1] = 0;
  v58 = 0;
  *(this + 129) = v52;
  v50 = v53;
  *(this + 132) = v54;
  *(this + 65) = v50;
  v53 = 0uLL;
  v54 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94) < 0)
  {
    operator delete(v93);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98) < 0)
  {
    operator delete(v97);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102) < 0)
  {
    operator delete(v101);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(v105);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v110) < 0)
  {
    operator delete(v109);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v114) < 0)
  {
    operator delete(v113);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v118) < 0)
  {
    operator delete(v117);
  }

  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v122) < 0)
  {
    operator delete(v121);
  }

  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v126) < 0)
  {
    operator delete(v125);
  }

  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v130) < 0)
  {
    operator delete(v129);
  }

  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v138) < 0)
  {
    operator delete(v137);
  }

  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v142) < 0)
  {
    operator delete(v141);
  }

  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v146) < 0)
  {
    operator delete(v145);
  }

  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v150) < 0)
  {
    operator delete(v149);
  }

  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v154) < 0)
  {
    operator delete(v153);
  }

  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157);
  }

  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v162) < 0)
  {
    operator delete(v161);
  }

  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v166) < 0)
  {
    operator delete(v165);
  }

  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v170) < 0)
  {
    operator delete(v169);
  }

  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v167.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v174) < 0)
  {
    operator delete(v173);
  }

  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v171.__r_.__value_.__l.__data_);
  }
}

void sub_298FA08B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a81);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(STACK[0x308]);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  if (SLOBYTE(STACK[0x51F]) < 0)
  {
    operator delete(STACK[0x508]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x537]) < 0)
  {
    operator delete(STACK[0x520]);
  }

  if (SLOBYTE(STACK[0x58F]) < 0)
  {
    operator delete(STACK[0x578]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x5C7]) < 0)
  {
    operator delete(STACK[0x5B0]);
  }

  if (SLOBYTE(STACK[0x5A7]) < 0)
  {
    operator delete(STACK[0x590]);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x5DF]) < 0)
  {
    operator delete(STACK[0x5C8]);
  }

  if (SLOBYTE(STACK[0x637]) < 0)
  {
    operator delete(STACK[0x620]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (*(v81 - 193) < 0)
  {
    operator delete(*(v81 - 216));
  }

  if (*(v81 - 225) < 0)
  {
    operator delete(*(v81 - 248));
  }

  if (*(v81 - 137) < 0)
  {
    operator delete(*(v81 - 160));
  }

  if (*(v81 - 169) < 0)
  {
    operator delete(*(v81 - 192));
  }

  if (*(v81 - 81) < 0)
  {
    operator delete(*(v81 - 104));
  }

  if (*(v81 - 113) < 0)
  {
    operator delete(*(v81 - 136));
  }

  if (*(v81 - 25) < 0)
  {
    operator delete(*(v81 - 48));
  }

  if (*(v81 - 57) < 0)
  {
    operator delete(*(v81 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 1063) < 0)
  {
    operator delete(*(a1 + 1040));
  }

  if (*(a1 + 1031) < 0)
  {
    operator delete(*(a1 + 1008));
  }

  if (*(a1 + 999) < 0)
  {
    operator delete(*(a1 + 976));
  }

  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 935) < 0)
  {
    operator delete(*(a1 + 912));
  }

  if (*(a1 + 903) < 0)
  {
    operator delete(*(a1 + 880));
  }

  if (*(a1 + 871) < 0)
  {
    operator delete(*(a1 + 848));
  }

  if (*(a1 + 839) < 0)
  {
    operator delete(*(a1 + 816));
  }

  if (*(a1 + 807) < 0)
  {
    operator delete(*(a1 + 784));
  }

  if (*(a1 + 767) < 0)
  {
    operator delete(*(a1 + 744));
  }

  if (*(a1 + 727) < 0)
  {
    operator delete(*(a1 + 704));
  }

  if (*(a1 + 687) < 0)
  {
    operator delete(*(a1 + 664));
  }

  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void XofGlonassBrdcastEphemerisCodec::XofGlonassBrdcastEphemerisCodec(XofGlonassBrdcastEphemerisCodec *this)
{
  v111 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v107, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v108, &v107, 1, 24, 0);
  std::string::basic_string[abi:ne200100]<0>(&v103, "health");
  XofIntegralType<unsigned char>::XofIntegralType(&v104, &v103, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v99, "timeOfDay");
  XofIntegralType<unsigned short>::XofIntegralType(&v100, &v99, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v95, "sTn_tb");
  XofIntegralType<int>::XofIntegralType(&v96, &v95, -2097152, 0x1FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v91, "sfn_tb");
  XofIntegralType<short>::XofIntegralType(&v92, &v91, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v87, "sDeltaTn");
  XofIntegralType<signed char>::XofIntegralType(&v88, &v87, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v83, "eN");
  XofIntegralType<unsigned char>::XofIntegralType(&v84, &v83, 0, 31, 0);
  std::string::basic_string[abi:ne200100]<0>(&v79, "p1");
  XofIntegralType<unsigned char>::XofIntegralType(&v80, &v79, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v75, "p2");
  XofIntegralType<unsigned char>::XofIntegralType(&v76, &v75, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v71, "m");
  XofIntegralType<unsigned char>::XofIntegralType(&v72, &v71, 0, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v67, "f");
  XofIntegralType<unsigned char>::XofIntegralType(&v68, &v67, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v63, "sXn_tb");
  XofIntegralType<int>::XofIntegralType(&v64, &v63, -67108864, 0x3FFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v59, "sXn_Vel_tb");
  XofIntegralType<int>::XofIntegralType(&v60, &v59, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v55, "sYn_tb");
  XofIntegralType<int>::XofIntegralType(&v56, &v55, -67108864, 0x3FFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v51, "sYn_Vel_tb");
  XofIntegralType<int>::XofIntegralType(&v52, &v51, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v47, "sZn_tb");
  XofIntegralType<int>::XofIntegralType(&v48, &v47, -67108864, 0x3FFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v43, "sZn_Vel_tb");
  XofIntegralType<int>::XofIntegralType(&v44, &v43, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v39, "sXn_Acc_tb");
  XofIntegralType<signed char>::XofIntegralType(&v40, &v39, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v35, "sYn_Acc_tb");
  XofIntegralType<signed char>::XofIntegralType(&v36, &v35, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v31, "sZn_Acc_tb");
  XofIntegralType<signed char>::XofIntegralType(&v32, &v31, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "reserved");
  XofIntegralType<unsigned char>::XofIntegralType(&v28, &__p, 0, 255, 0);
  *this = v108;
  *(this + 3) = v110;
  *(this + 8) = v104;
  v2 = v100;
  v3 = v102;
  *(this + 7) = v106;
  *(this + 8) = v2;
  *(this + 11) = v3;
  v4 = v92;
  v5 = v94;
  *(this + 16) = v98;
  *(this + 17) = v4;
  *(this + 8) = v109;
  v109 = 0uLL;
  v110 = 0;
  *(this + 40) = v105;
  v106 = 0;
  v105 = 0uLL;
  *(this + 72) = v101;
  v101 = 0uLL;
  v102 = 0;
  v6 = v97;
  *(this + 6) = v96;
  *(this + 7) = v6;
  v97 = 0uLL;
  v98 = 0;
  v7 = v93;
  *(this + 20) = v5;
  *(this + 9) = v7;
  v93 = 0uLL;
  v94 = 0;
  *(this + 42) = v88;
  v8 = v89;
  *(this + 24) = v90;
  *(this + 11) = v8;
  v89 = 0uLL;
  v90 = 0;
  *(this + 50) = v84;
  v9 = v85;
  *(this + 28) = v86;
  *(this + 13) = v9;
  v85 = 0uLL;
  v86 = 0;
  *(this + 58) = v80;
  v10 = v81;
  *(this + 32) = v82;
  *(this + 15) = v10;
  v81 = 0uLL;
  v82 = 0;
  *(this + 66) = v76;
  v11 = v77;
  *(this + 36) = v78;
  *(this + 17) = v11;
  v77 = 0uLL;
  v78 = 0;
  *(this + 74) = v72;
  v12 = v73;
  *(this + 40) = v74;
  *(this + 19) = v12;
  v73 = 0uLL;
  v74 = 0;
  *(this + 82) = v68;
  v13 = v69;
  *(this + 44) = v70;
  *(this + 21) = v13;
  v69 = 0uLL;
  v70 = 0;
  v14 = v65;
  *(this + 360) = v64;
  *(this + 49) = v66;
  *(this + 376) = v14;
  v65 = 0uLL;
  v66 = 0;
  v15 = v60;
  v16 = v61;
  *(this + 54) = v62;
  *(this + 25) = v15;
  *(this + 26) = v16;
  v61 = 0uLL;
  v62 = 0;
  v17 = v57;
  *(this + 440) = v56;
  *(this + 59) = v58;
  *(this + 456) = v17;
  v57 = 0uLL;
  v58 = 0;
  v18 = v52;
  v19 = v53;
  *(this + 64) = v54;
  *(this + 30) = v18;
  *(this + 31) = v19;
  v53 = 0uLL;
  v54 = 0;
  v20 = v49;
  *(this + 520) = v48;
  *(this + 69) = v50;
  *(this + 536) = v20;
  v49 = 0uLL;
  v50 = 0;
  v21 = v44;
  v22 = v45;
  *(this + 74) = v46;
  *(this + 35) = v21;
  *(this + 36) = v22;
  v45 = 0uLL;
  v46 = 0;
  *(this + 150) = v40;
  v23 = v41;
  *(this + 78) = v42;
  *(this + 38) = v23;
  v41 = 0uLL;
  v42 = 0;
  *(this + 158) = v36;
  v24 = v37;
  *(this + 82) = v38;
  *(this + 40) = v24;
  v37 = 0uLL;
  v38 = 0;
  *(this + 166) = v32;
  v25 = *v33;
  *(this + 86) = v34;
  *(this + 42) = v25;
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  *(this + 174) = v28;
  v26 = v29;
  *(this + 90) = v30;
  *(this + 44) = v26;
  v29 = 0uLL;
  v30 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94) < 0)
  {
    operator delete(v93);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98) < 0)
  {
    operator delete(v97);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102) < 0)
  {
    operator delete(v101);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(v105);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v110) < 0)
  {
    operator delete(v109);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }
}

void sub_298FA19AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x30F]) < 0)
  {
    operator delete(STACK[0x2F8]);
  }

  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(STACK[0x368]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  if (SLOBYTE(STACK[0x3CF]) < 0)
  {
    operator delete(STACK[0x3B8]);
  }

  if (*(v80 - 193) < 0)
  {
    operator delete(*(v80 - 216));
  }

  if (*(v80 - 233) < 0)
  {
    operator delete(*(v80 - 256));
  }

  if (*(v80 - 137) < 0)
  {
    operator delete(*(v80 - 160));
  }

  if (*(v80 - 169) < 0)
  {
    operator delete(*(v80 - 192));
  }

  if (*(v80 - 81) < 0)
  {
    operator delete(*(v80 - 104));
  }

  if (*(v80 - 113) < 0)
  {
    operator delete(*(v80 - 136));
  }

  if (*(v80 - 25) < 0)
  {
    operator delete(*(v80 - 48));
  }

  if (*(v80 - 57) < 0)
  {
    operator delete(*(v80 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 727) < 0)
  {
    operator delete(*(a1 + 704));
  }

  if (*(a1 + 695) < 0)
  {
    operator delete(*(a1 + 672));
  }

  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 599) < 0)
  {
    operator delete(*(a1 + 576));
  }

  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void XofBeidouEphemerisCodec::XofBeidouEphemerisCodec(XofBeidouEphemerisCodec *this)
{
  v269 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v265, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v266, &v265, 1, 63, 0);
  std::string::basic_string[abi:ne200100]<0>(&v261, "hs");
  XofIntegralType<unsigned char>::XofIntegralType(&v262, &v261, 0, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v257, "wn");
  XofIntegralType<unsigned short>::XofIntegralType(&v258, &v257, 0, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v253, "sSOW");
  XofIntegralType<unsigned int>::XofIntegralType(&v254, &v253, 0, 201599, 0);
  std::string::basic_string[abi:ne200100]<0>(&v249, "difB2a");
  XofIntegralType<unsigned char>::XofIntegralType(&v250, &v249, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v245, "sifB2a");
  XofIntegralType<unsigned char>::XofIntegralType(&v246, &v245, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v241, "aifB2a");
  XofIntegralType<unsigned char>::XofIntegralType(&v242, &v241, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v237, "sismai");
  XofIntegralType<unsigned char>::XofIntegralType(&v238, &v237, 0, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v233, "difB1c");
  XofIntegralType<unsigned char>::XofIntegralType(&v234, &v233, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v229, "sifB1c");
  XofIntegralType<unsigned char>::XofIntegralType(&v230, &v229, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v225, "aifB1c");
  XofIntegralType<unsigned char>::XofIntegralType(&v226, &v225, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v221, "UraiEst");
  XofIntegralType<signed char>::XofIntegralType(&v222, &v221, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v217, "Iodc");
  XofIntegralType<unsigned short>::XofIntegralType(&v218, &v217, 0, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v213, "sToe");
  XofIntegralType<unsigned short>::XofIntegralType(&v214, &v213, 0, 2016, 0);
  std::string::basic_string[abi:ne200100]<0>(&v209, "satType");
  XofIntegralType<unsigned char>::XofIntegralType(&v210, &v209, 0, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v205, "fitHours");
  XofIntegralType<unsigned char>::XofIntegralType(&v206, &v205, 0, 6, 0);
  std::string::basic_string[abi:ne200100]<0>(&v201, "sTgdB2ap_Corr");
  XofIntegralType<signed char>::XofIntegralType(&v202, &v201, -128, 127, 0);
  std::string::basic_string[abi:ne200100]<0>(&v197, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v198, &v197, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v193, "sDeltaA");
  XofIntegralType<int>::XofIntegralType(&v194, &v193, -33554432, 0x1FFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v189, "sADot");
  XofIntegralType<int>::XofIntegralType(&v190, &v189, -16777216, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v185, "sDeltaN");
  XofIntegralType<int>::XofIntegralType(&v186, &v185, -65536, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v181, "sDeltaNDot");
  XofIntegralType<int>::XofIntegralType(&v182, &v181, -4194304, 0x3FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v177, "sM0");
  XofIntegralType<long long>::XofIntegralType(v178, &v177);
  std::string::basic_string[abi:ne200100]<0>(&v173, "sE");
  XofIntegralType<unsigned long long>::XofIntegralType(v174, &v173, 0, 0x1FFFFFFFFLL, 0);
  std::string::basic_string[abi:ne200100]<0>(&v169, "sW");
  XofIntegralType<long long>::XofIntegralType(v170, &v169);
  std::string::basic_string[abi:ne200100]<0>(&v165, "sOmega0");
  XofIntegralType<long long>::XofIntegralType(v166, &v165);
  std::string::basic_string[abi:ne200100]<0>(&v161, "sI0");
  XofIntegralType<long long>::XofIntegralType(v162, &v161);
  std::string::basic_string[abi:ne200100]<0>(&v157, "sOmegaDot");
  XofIntegralType<int>::XofIntegralType(&v158, &v157, -262144, 0x3FFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v153, "sIDot");
  XofIntegralType<short>::XofIntegralType(&v154, &v153, -16384, 0x3FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v149, "sToc");
  XofIntegralType<unsigned short>::XofIntegralType(&v150, &v149, 0, 2016, 0);
  std::string::basic_string[abi:ne200100]<0>(&v145, "sCic");
  XofIntegralType<short>::XofIntegralType(&v146, &v145, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v141, "sCis");
  XofIntegralType<short>::XofIntegralType(&v142, &v141, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v137, "sCrc");
  XofIntegralType<int>::XofIntegralType(&v138, &v137, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v133, "sCrs");
  XofIntegralType<int>::XofIntegralType(&v134, &v133, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v129, "sCuc");
  XofIntegralType<int>::XofIntegralType(&v130, &v129, -1048576, 0xFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v125, "sCus");
  XofIntegralType<int>::XofIntegralType(&v126, &v125, -1048576, 0xFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v121, "sAf0n");
  XofIntegralType<int>::XofIntegralType(&v122, &v121, -16777216, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v117, "sAf1n");
  XofIntegralType<int>::XofIntegralType(&v118, &v117, -2097152, 0x1FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v113, "sAf2n");
  XofIntegralType<short>::XofIntegralType(&v114, &v113, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v109, "sTgdB2ap");
  XofIntegralType<short>::XofIntegralType(&v110, &v109, -2048, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v105, "sIscB2ad");
  XofIntegralType<short>::XofIntegralType(&v106, &v105, -2048, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v101, "sTgdB1cp");
  XofIntegralType<short>::XofIntegralType(&v102, &v101, -2048, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v97, "sIscB1cd");
  XofIntegralType<short>::XofIntegralType(&v98, &v97, -2048, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v93, "sTop");
  XofIntegralType<unsigned short>::XofIntegralType(&v94, &v93, 0, 2016, 0);
  std::string::basic_string[abi:ne200100]<0>(&v89, "sisaOcb");
  XofIntegralType<unsigned char>::XofIntegralType(&v90, &v89, 0, 31, 0);
  std::string::basic_string[abi:ne200100]<0>(&v85, "sisaOc1");
  XofIntegralType<unsigned char>::XofIntegralType(&v86, &v85, 0, 7, 0);
  std::string::basic_string[abi:ne200100]<0>(&v81, "sisaOc2");
  XofIntegralType<unsigned char>::XofIntegralType(&v82, &v81, 0, 7, 0);
  std::string::basic_string[abi:ne200100]<0>(&v77, "sisaOe");
  XofIntegralType<unsigned char>::XofIntegralType(&v78, &v77, 0, 31, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "reserved2");
  XofIntegralType<unsigned int>::XofIntegralType(&v74, &__p, 0, -1, 0);
  *this = v266;
  *(this + 3) = v268;
  *(this + 8) = v262;
  v2 = v258;
  v3 = v260;
  *(this + 7) = v264;
  *(this + 8) = v2;
  *(this + 8) = v267;
  v267 = 0uLL;
  v268 = 0;
  *(this + 40) = v263;
  v264 = 0;
  v263 = 0uLL;
  v4 = v259;
  *(this + 11) = v3;
  *(this + 72) = v4;
  v259 = 0uLL;
  v260 = 0;
  v5 = v254;
  v6 = v255;
  *(this + 16) = v256;
  *(this + 6) = v5;
  *(this + 7) = v6;
  v255 = 0uLL;
  v256 = 0;
  *(this + 34) = v250;
  v7 = v251;
  *(this + 20) = v252;
  *(this + 9) = v7;
  v251 = 0uLL;
  v252 = 0;
  *(this + 42) = v246;
  v8 = v247;
  *(this + 24) = v248;
  *(this + 11) = v8;
  v247 = 0uLL;
  v248 = 0;
  *(this + 50) = v242;
  v9 = v243;
  *(this + 28) = v244;
  *(this + 13) = v9;
  v243 = 0uLL;
  v244 = 0;
  *(this + 58) = v238;
  v10 = v239;
  *(this + 32) = v240;
  *(this + 15) = v10;
  v239 = 0uLL;
  v240 = 0;
  *(this + 66) = v234;
  v11 = v235;
  *(this + 36) = v236;
  *(this + 17) = v11;
  v235 = 0uLL;
  v236 = 0;
  *(this + 74) = v230;
  v12 = v231;
  *(this + 40) = v232;
  *(this + 19) = v12;
  v231 = 0uLL;
  v232 = 0;
  *(this + 82) = v226;
  v13 = v227;
  *(this + 44) = v228;
  *(this + 21) = v13;
  v227 = 0uLL;
  v228 = 0;
  *(this + 90) = v222;
  v14 = v224;
  *(this + 23) = v223;
  v223 = 0uLL;
  v224 = 0;
  v15 = v218;
  v16 = v220;
  *(this + 48) = v14;
  *(this + 49) = v15;
  *(this + 25) = v219;
  v219 = 0uLL;
  v220 = 0;
  v17 = v214;
  v18 = v216;
  *(this + 52) = v16;
  *(this + 53) = v17;
  v19 = v215;
  *(this + 56) = v18;
  *(this + 27) = v19;
  v215 = 0uLL;
  v216 = 0;
  *(this + 114) = v210;
  v20 = v211;
  *(this + 60) = v212;
  *(this + 29) = v20;
  v211 = 0uLL;
  v212 = 0;
  *(this + 122) = v206;
  v21 = v207;
  *(this + 64) = v208;
  *(this + 31) = v21;
  v207 = 0uLL;
  v208 = 0;
  *(this + 130) = v202;
  v22 = v203;
  *(this + 68) = v204;
  *(this + 33) = v22;
  v203 = 0uLL;
  v204 = 0;
  *(this + 138) = v198;
  v23 = v199;
  *(this + 72) = v200;
  *(this + 35) = v23;
  v199 = 0uLL;
  v200 = 0;
  v24 = v195;
  *(this + 584) = v194;
  *(this + 77) = v196;
  *(this + 600) = v24;
  v195 = 0uLL;
  v196 = 0;
  v25 = v190;
  v26 = v191;
  *(this + 82) = v192;
  *(this + 39) = v25;
  *(this + 40) = v26;
  v191 = 0uLL;
  v192 = 0;
  v27 = v187;
  *(this + 664) = v186;
  *(this + 87) = v188;
  *(this + 680) = v27;
  v187 = 0uLL;
  v188 = 0;
  v28 = v182;
  v29 = v183;
  *(this + 92) = v184;
  *(this + 44) = v28;
  *(this + 45) = v29;
  v183 = 0uLL;
  v184 = 0;
  v30 = v178[1];
  *(this + 744) = v178[0];
  *(this + 760) = v30;
  v31 = v179;
  *(this + 99) = v180;
  *(this + 776) = v31;
  v179 = 0uLL;
  v180 = 0;
  v32 = v174[1];
  *(this + 50) = v174[0];
  *(this + 51) = v32;
  v33 = v175;
  *(this + 106) = v176;
  *(this + 52) = v33;
  v175 = 0uLL;
  v176 = 0;
  v34 = v170[1];
  *(this + 856) = v170[0];
  *(this + 872) = v34;
  v35 = v171;
  *(this + 113) = v172;
  *(this + 888) = v35;
  v171 = 0uLL;
  v172 = 0;
  v36 = v166[1];
  *(this + 57) = v166[0];
  *(this + 58) = v36;
  v37 = v167;
  *(this + 120) = v168;
  *(this + 59) = v37;
  v167 = 0uLL;
  v168 = 0;
  v38 = v162[1];
  *(this + 968) = v162[0];
  *(this + 984) = v38;
  v39 = v163;
  *(this + 127) = v164;
  *(this + 1000) = v39;
  v163 = 0uLL;
  v164 = 0;
  v40 = v159;
  *(this + 64) = v158;
  *(this + 132) = v160;
  *(this + 65) = v40;
  v159 = 0uLL;
  v160 = 0;
  v41 = v156;
  *(this + 133) = v154;
  v42 = v155;
  *(this + 136) = v41;
  *(this + 67) = v42;
  v155 = 0uLL;
  v156 = 0;
  v43 = v152;
  *(this + 137) = v150;
  v44 = v151;
  *(this + 140) = v43;
  *(this + 69) = v44;
  v151 = 0uLL;
  v152 = 0;
  v45 = v148;
  *(this + 141) = v146;
  v46 = v147;
  *(this + 144) = v45;
  *(this + 71) = v46;
  v147 = 0uLL;
  v148 = 0;
  v47 = v144;
  *(this + 145) = v142;
  v48 = v143;
  *(this + 148) = v47;
  *(this + 73) = v48;
  v143 = 0uLL;
  v144 = 0;
  v49 = v139;
  *(this + 1192) = v138;
  *(this + 153) = v140;
  *(this + 1208) = v49;
  v139 = 0uLL;
  v140 = 0;
  v50 = v135;
  *(this + 77) = v134;
  *(this + 158) = v136;
  *(this + 78) = v50;
  v135 = 0uLL;
  v136 = 0;
  v51 = v131;
  *(this + 1272) = v130;
  *(this + 163) = v132;
  *(this + 1288) = v51;
  v131 = 0uLL;
  v132 = 0;
  v52 = v127;
  *(this + 82) = v126;
  *(this + 168) = v128;
  *(this + 83) = v52;
  v127 = 0uLL;
  v128 = 0;
  v53 = v123;
  *(this + 1352) = v122;
  *(this + 173) = v124;
  *(this + 1368) = v53;
  v123 = 0uLL;
  v124 = 0;
  v54 = v119;
  *(this + 87) = v118;
  *(this + 178) = v120;
  *(this + 88) = v54;
  v119 = 0uLL;
  v120 = 0;
  v55 = v116;
  *(this + 179) = v114;
  v56 = v115;
  *(this + 182) = v55;
  *(this + 90) = v56;
  v115 = 0uLL;
  v116 = 0;
  v57 = v112;
  *(this + 183) = v110;
  v58 = v111;
  *(this + 186) = v57;
  *(this + 92) = v58;
  v111 = 0uLL;
  v112 = 0;
  v59 = v108;
  *(this + 187) = v106;
  v60 = v107;
  *(this + 190) = v59;
  *(this + 94) = v60;
  v107 = 0uLL;
  v108 = 0;
  v61 = v104;
  *(this + 191) = v102;
  v62 = v103;
  *(this + 194) = v61;
  *(this + 96) = v62;
  v103 = 0uLL;
  v104 = 0;
  v63 = v100;
  *(this + 195) = v98;
  v64 = v99;
  v65 = v94;
  v66 = v96;
  *(this + 198) = v63;
  *(this + 98) = v64;
  v99 = 0uLL;
  v100 = 0;
  *(this + 199) = v65;
  v67 = v95;
  *(this + 202) = v66;
  *(this + 100) = v67;
  v95 = 0uLL;
  v96 = 0;
  *(this + 406) = v90;
  v68 = v91;
  *(this + 206) = v92;
  *(this + 102) = v68;
  v91 = 0uLL;
  v92 = 0;
  *(this + 414) = v86;
  v69 = v87;
  *(this + 210) = v88;
  *(this + 104) = v69;
  v87 = 0uLL;
  v88 = 0;
  *(this + 422) = v82;
  v70 = v83;
  *(this + 214) = v84;
  *(this + 106) = v70;
  v83 = 0uLL;
  v84 = 0;
  *(this + 430) = v78;
  v71 = *v79;
  *(this + 218) = v80;
  *(this + 108) = v71;
  v79[0] = 0;
  v79[1] = 0;
  v80 = 0;
  v72 = v75;
  *(this + 1752) = v74;
  LODWORD(v65) = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  *(this + 223) = v76;
  *(this + 1768) = v72;
  v75 = 0uLL;
  v76 = 0;
  if ((v65 & 0x80000000) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v80) < 0)
    {
      operator delete(v79[0]);
    }
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(v87);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(v91);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v96) < 0)
  {
    operator delete(v95);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v104) < 0)
  {
    operator delete(v103);
  }

  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v108) < 0)
  {
    operator delete(v107);
  }

  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v112) < 0)
  {
    operator delete(v111);
  }

  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v116) < 0)
  {
    operator delete(v115);
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v120) < 0)
  {
    operator delete(v119);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v124) < 0)
  {
    operator delete(v123);
  }

  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v128) < 0)
  {
    operator delete(v127);
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v132) < 0)
  {
    operator delete(v131);
  }

  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v136) < 0)
  {
    operator delete(v135);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v144) < 0)
  {
    operator delete(v143);
  }

  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v148) < 0)
  {
    operator delete(v147);
  }

  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v152) < 0)
  {
    operator delete(v151);
  }

  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v156) < 0)
  {
    operator delete(v155);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(v159);
  }

  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v164) < 0)
  {
    operator delete(v163);
  }

  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v161.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v168) < 0)
  {
    operator delete(v167);
  }

  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v165.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v172) < 0)
  {
    operator delete(v171);
  }

  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v176) < 0)
  {
    operator delete(v175);
  }

  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v173.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v180) < 0)
  {
    operator delete(v179);
  }

  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v177.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v184) < 0)
  {
    operator delete(v183);
  }

  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v181.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v188) < 0)
  {
    operator delete(v187);
  }

  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v192) < 0)
  {
    operator delete(v191);
  }

  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v189.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v196) < 0)
  {
    operator delete(v195);
  }

  if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v193.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v200) < 0)
  {
    operator delete(v199);
  }

  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203);
  }

  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v201.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v208) < 0)
  {
    operator delete(v207);
  }

  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v205.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v212) < 0)
  {
    operator delete(v211);
  }

  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v209.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v216) < 0)
  {
    operator delete(v215);
  }

  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v213.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v220) < 0)
  {
    operator delete(v219);
  }

  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v217.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v224) < 0)
  {
    operator delete(v223);
  }

  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v221.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v228) < 0)
  {
    operator delete(v227);
  }

  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v232) < 0)
  {
    operator delete(v231);
  }

  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v229.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236) < 0)
  {
    operator delete(v235);
  }

  if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v233.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v240) < 0)
  {
    operator delete(v239);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v244) < 0)
  {
    operator delete(v243);
  }

  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v248) < 0)
  {
    operator delete(v247);
  }

  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v245.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v252) < 0)
  {
    operator delete(v251);
  }

  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v249.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v256) < 0)
  {
    operator delete(v255);
  }

  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v260) < 0)
  {
    operator delete(v259);
  }

  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v264) < 0)
  {
    operator delete(v263);
  }

  if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v261.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(v267);
  }

  if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v265.__r_.__value_.__l.__data_);
  }
}