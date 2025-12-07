uint64_t extract_all_magazine_stats(const char *a1)
{
  v35 = 0xDEADBEEFDEADBEEFLL;
  __ptr = 0;
  v33 = 0;
  __size = 0;
  if (!a1)
  {
    v1 = "NULL";
    goto LABEL_31;
  }

  v1 = a1;
  v2 = fopen(a1, "a");
  if (!v2)
  {
LABEL_31:
    fprintf(__stderrp, "Error: cannot open dest file %s", v1);
    v28 = 0;
    v3 = 0;
    goto LABEL_35;
  }

  v3 = v2;
  v4 = 0;
  v37[0] = xmmword_10003EB70;
  v37[1] = xmmword_10003EB80;
  v37[2] = xmmword_10003EB90;
  v38 = 168;
  v5 = xmmword_10003EBA0;
  v6 = v39;
  v7 = vdupq_n_s64(7uLL);
  v8.i64[0] = 0x100000001;
  v8.i64[1] = 0x100000001;
  v9.i64[0] = 0x400000004;
  v9.i64[1] = 0x400000004;
  do
  {
    v10 = vdupq_n_s64(v4);
    v11 = vorrq_s8(v10, xmmword_10003EBC0);
    v12 = vaddq_s32(v5, v8);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v11)), 2).u8[0])
    {
      *(v6 - 3) = 168 * v12.i32[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v11)), 2).i8[2])
    {
      *(v6 - 2) = 168 * v12.i32[1];
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), vorrq_s8(v10, xmmword_10003EBB0)))).i32[1])
    {
      *(v6 - 1) = 168 * v12.i32[2];
      *v6 = 168 * v12.i32[3];
    }

    v4 += 4;
    v5 = vaddq_s32(v5, v9);
    v6 += 4;
  }

  while (v4 != 8);
  v13 = 0;
  v39[1] = xmmword_10003EBD0;
  v40 = 8064;
  v14 = xmmword_10003EBA0;
  v15 = &v41;
  v16 = vdupq_n_s64(9uLL);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  v18.i64[0] = 0x400000004;
  v18.i64[1] = 0x400000004;
  do
  {
    v19 = vdupq_n_s64(v13);
    v20 = vorrq_s8(v19, xmmword_10003EBC0);
    v21 = vaddq_s32(v14, v17);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v16, v20)), 2).u8[0])
    {
      *(v15 - 3) = 4368 * v21.i32[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), v20)), 2).i8[2])
    {
      *(v15 - 2) = 4368 * v21.i32[1];
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), vorrq_s8(v19, xmmword_10003EBB0)))).i32[1])
    {
      *(v15 - 1) = 4368 * v21.i32[2];
      *v15 = 4368 * v21.i32[3];
    }

    v13 += 4;
    v14 = vaddq_s32(v14, v18);
    v15 += 2;
  }

  while (v13 != 12);
  if (sub_100039314(&v33) && v33 && *(v33 + 4))
  {
    v25 = 0;
    while (1)
    {
      v26 = *(v37 + v25);
      if (!sub_10002A738(v33, v26, 1, &__ptr, &__size, v22, v23, v24))
      {
        fprintf(__stderrp, "Error: failed to extract stats magazine for %u hours back", v26);
        goto LABEL_34;
      }

      if (!__ptr || __size == 0)
      {
        break;
      }

      v25 += 4;
      fwrite(__ptr, __size, 1uLL, v3);
      fwrite(&v35, 8uLL, 1uLL, v3);
      free(__ptr);
      __ptr = 0;
      __size = 0;
      if (v25 == 136)
      {
        syslog(5, "All stats magazine extracted.");
        v28 = 1;
        goto LABEL_35;
      }
    }

    v29 = __stderrp;
    v30 = "Error: extracted stats magazine but did not generate proper buffer";
    v31 = 66;
  }

  else
  {
    v29 = __stderrp;
    v30 = "Unable to get nand connection\n";
    v31 = 30;
  }

  fwrite(v30, v31, 1uLL, v29);
LABEL_34:
  v28 = 0;
LABEL_35:
  if (v33)
  {
    sub_100039460(v33);
    v33 = 0;
  }

  if (v3)
  {
    fclose(v3);
  }

  if (__ptr)
  {
    free(__ptr);
  }

  return v28;
}

uint64_t print_band_stats_v2(char *a1, int a2, __n128 a3, __n128 a4, __n128 a5)
{
  LODWORD(outputStruct) = 0;
  v7 = sub_100039190(0, 299, 0, &outputStruct, a3, a4, a5);
  v11 = outputStruct & 0xF;
  if (!v7)
  {
    v11 = 1;
  }

  v22 = 0;
  outputStruct = 0;
  if (v11 != 2)
  {
    if (v11 == 3)
    {
      v12 = sub_100039158(0, 297, &v22, 0, 1, v8, v9, v10);
      outputStruct = v12;
      if (v12)
      {
        v16 = v12;
        sub_100037570(a1, v12, v22, v13, v14, v15);
LABEL_12:
        free(v16);
        return 1;
      }

      v19 = __stderrp;
      v20 = "Error: Cannot Extract Band Stats for ASP3\n";
      v21 = 42;
      goto LABEL_16;
    }

LABEL_10:
    if (sub_10002A610(7u, &outputStruct, &v22, v8, v9, v10))
    {
      sub_1000379A0(a1, outputStruct, v22, a2);
      v16 = outputStruct;
      goto LABEL_12;
    }

    v19 = __stderrp;
    v20 = "Error: IO NVMe Smart cmd failed to extract ASP excport stats!\n";
    v21 = 62;
    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v17 = sub_100039158(0, 262, &v22, 0, 1, v8, v9, v10);
  outputStruct = v17;
  if (v17)
  {
    v16 = v17;
    sub_1000379A0(a1, v17, v22, 1);
    goto LABEL_12;
  }

  v19 = __stderrp;
  v20 = "Error: Cannot Extract Band Stats and Validity\n";
  v21 = 46;
LABEL_16:
  fwrite(v20, v21, 1uLL, v19);
  return 0;
}

void sub_100037570(char *__filename, uint64_t a2, unsigned int a3, __n128 a4, __n128 a5, __n128 a6)
{
  v36 = 0;
  v35 = 0;
  v34 = -1;
  v33 = -1;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v24 = 0;
  if (__filename)
  {
    v9 = fopen(__filename, "a");
    if (!v9)
    {
      fprintf(__stderrp, "Unable to open %s\n", __filename);
      return;
    }
  }

  else
  {
    v9 = __stdoutp;
  }

  if (*(a2 + 8) != 1)
  {
    fprintf(__stderrp, "Version mismatch, expected 1 got %d\n");
LABEL_9:
    if (__filename)
    {

      fclose(v9);
    }

    return;
  }

  if (*a2 > a3)
  {
    fprintf(__stderrp, "Insufficient size, expected %d got %d\n");
    goto LABEL_9;
  }

  v10 = *(a2 + 4);
  v11 = sub_100039158(0, 264, &v24, 0, 1, a4, a5, a6);
  if (v11)
  {
    v12 = v11;
    if (v24 >= 2 && 22 * *v11 + 2 <= v24)
    {
      v14 = &xmmword_100079500;
      strcpy(&xmmword_100079500, "USER PARTITION");
      strcpy(qword_10007951E, "INTERMEDIATE PARTITION");
      strcpy(byte_10007953C, "SKINNY PARTITION");
      fwrite("Band stats:\n", 0xCuLL, 1uLL, v9);
      fwrite("Flags: Bits/Cell (1/3/4), r: retrace, C: GCcan, M: GCmust, S: Special, R: GCrd, E: erased, I: toInvalidate\n", 0x6BuLL, 1uLL, v9);
      v15 = *(a2 + 12);
      v26 = v15.i32[0];
      v25 = vrev64_s32(v15);
      v23 = v12;
      v16 = (v12 + 1);
      v17 = sub_1000388F0(v9, (a2 + 20), v10, 1u, &v25, &v27, &v35, &v33, &v31, &v29, v16);
      v18 = sub_1000388F0(v9, v17, v10, 0, &v25, &v27, &v35, &v33, &v31, &v29, v16);
      sub_1000388F0(v9, v18, v10, 2u, &v25, &v27, &v35, &v33, &v31, &v29, v16);
      for (i = 0; i != 12; i += 4)
      {
        v20 = *(&v29 + i);
        if (v20)
        {
          v21 = *(&v31 + i) / v20;
          *(&v31 + i) = v21;
          v22 = v25.u32[i / 4];
          fprintf(v9, "%-23s: Erase Cycles: Max(%d, %d%% of EoL) Min(%d, %d%% of EoL) Avg(%d, %d%% of EoL)\n", v14, *(&v35 + i), 100 * *(&v35 + i) / v22, *(&v33 + i), 100 * *(&v33 + i) / v22, v21, 100 * v21 / v22);
          fprintf(v9, "%24s Max band age:    (%d)\n", " ", *(&v27 + i));
          fprintf(v9, "%24s EoL erase cycles:(%d)\n", " ", v22);
        }

        v14 += 30;
      }

      if (__filename)
      {
        fclose(v9);
      }

      v13 = v23;
    }

    else
    {
      fwrite("Flow list too small", 0x13uLL, 1uLL, __stderrp);
      if (__filename)
      {
        fclose(v9);
      }

      v13 = v12;
    }

    free(v13);
  }

  else
  {
    fwrite("Can't get flow list", 0x13uLL, 1uLL, __stderrp);
    if (__filename)
    {
      fclose(v9);
    }
  }
}

void sub_1000379A0(char *__filename, unsigned int *a2, unsigned int a3, int a4)
{
  v103 = 0;
  v102 = 0;
  v101 = -1;
  v100 = -1;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  memset(v91, 0, sizeof(v91));
  v92 = 0;
  if (__filename)
  {
    v7 = fopen(__filename, "a");
    if (!v7)
    {
      fprintf(__stderrp, "Unable to open %s\n", __filename);
      return;
    }
  }

  else
  {
    v7 = __stdoutp;
  }

  fwrite("Band stats:\n", 0xCuLL, 1uLL, v7);
  fwrite("===========\n", 0xCuLL, 1uLL, v7);
  v9 = *a2;
  v8 = a2[1];
  fprintf(v7, "numBands: %d\n", *a2);
  if (a4)
  {
    v10 = 8;
  }

  else
  {
    v10 = 5;
  }

  if (v9)
  {
    v11 = v9 * v10 + 2 * v8 + 2;
    if (v11 <= a3)
    {
      v12 = v11 + v8;
      v13 = a3 >> 2;
      v14 = &a2[v11 + 2];
      v15 = &a2[v11];
      if (a3 >> 2 == v12)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v8 == 2)
      {
        v18 = a2[2];
        v20 = a2[3];
        v95[0] = v18;
        v94[0] = v20;
        if (v13 == v12)
        {
          v21 = *v15;
        }

        else
        {
          v21 = 30000;
        }

        LODWORD(v93[0]) = v21;
        strcpy(&xmmword_100079500, "INTERMEDIATE PARTITION");
        v22 = a2[5];
        v95[1] = a2[4];
        v19 = a2 + 6;
        v94[1] = v22;
        if (v13 == v12)
        {
          v23 = *(v14 - 1);
        }

        else
        {
          v23 = 750;
        }

        HIDWORD(v93[0]) = v23;
        strcpy(qword_10007951E, "USER PARTITION");
        if (!v21 || !v23)
        {
          v16 = 0;
          v93[0] = 0x2EE00007530;
        }
      }

      else
      {
        if (v8 != 1)
        {
          fprintf(v7, "ASP returned %d partitions, the tool does not know how to handle this many partitions\n");
          goto LABEL_69;
        }

        v18 = a2[2];
        v17 = a2[3];
        v95[0] = v18;
        v19 = a2 + 4;
        v94[0] = v17;
        if (v13 == v12)
        {
          LODWORD(v93[0]) = *v15;
          strcpy(&xmmword_100079500, "USER PARTITION");
          if (LODWORD(v93[0]))
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
            LODWORD(v93[0]) = 3000;
          }
        }

        else
        {
          v16 = 0;
          LODWORD(v93[0]) = 3000;
          strcpy(&xmmword_100079500, "USER PARTITION");
        }
      }

      v86 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
      if (v86)
      {
        v75 = v16;
        v76 = __filename;
        __stream = v7;
        v24 = 0;
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v84 = v9;
        while (1)
        {
          if (a4)
          {
            v83 = v19[5];
            v82 = v19[6];
            v90 = v19 + 8;
            v81 = v19[7];
          }

          else
          {
            v90 = v19 + 5;
          }

          v25 = 0;
          v26 = *v19;
          v27 = v19[1];
          v29 = v19[2];
          v28 = v19[3];
          v30 = (*v19 >> 1) & 1;
          v31 = (*v19 >> 2) & 1;
          v32 = (*v19 >> 3) & 1;
          v33 = v19[4];
          v34 = v26 & 1;
          v35 = (v26 >> 4) & 1;
          v86[v24] = v28;
          v36 = &xmmword_100079500;
          do
          {
            v37 = v95[v25];
            if (v24 >= v37 && v24 <= v94[v25])
            {
              if (v24 == v37)
              {
                v78 = v27;
                v79 = v31;
                v80 = v34;
                v77 = v35;
                fprintf(__stream, "\n%s:\n", v36);
                v35 = v77;
                v27 = v78;
                v31 = v79;
                v34 = v80;
              }

              if (v24 >= v18)
              {
                v40 = *(&v96 + v25);
                if (v40 <= v33)
                {
                  v40 = v33;
                }

                *(&v96 + v25) = v40;
                v41 = *(&v102 + v25);
                if (v41 <= v28)
                {
                  v41 = v28;
                }

                *(&v102 + v25) = v41;
                v42 = *(&v100 + v25);
                if (v42 >= v28)
                {
                  v42 = v28;
                }

                *(&v100 + v25) = v42;
                v38 = v25;
                *(&v98 + v25) += v28;
                goto LABEL_52;
              }

LABEL_44:
              fprintf(__stream, "band: %4d\tUtility Band\n", v24);
              v39 = v84;
              goto LABEL_58;
            }

            ++v25;
            v36 += 30;
          }

          while (v8 != v25);
          if (v24 < v18)
          {
            goto LABEL_44;
          }

          v38 = 0;
LABEL_52:
          v43 = 100 * v28;
          if (v29 == -1)
          {
            v44 = __stream;
            fprintf(__stream, "band:%4d\tflow:%2d\tvalid:    NA\terases:%5d [%3d%%] \tage:%5d\tGCcan:%d GCmust:%d GCrd: %d Special: %d mode:%d ", v24, v27, v28, v43 / *(v93 + v38), v33, v34, v30, v31, v32, v35);
            v39 = v84;
            if (a4)
            {
              fwrite("Valid Sectors: NA Parity Sectors: NA Total Sectors: NA", 0x36uLL, 1uLL, __stream);
            }
          }

          else
          {
            v44 = __stream;
            fprintf(__stream, "band:%4d\tflow:%2d\tvalid:%6.1f\terases:%5d [%3d%%] \tage:%5d\tGCcan:%d GCmust:%d GCrd: %d Special: %d mode:%d ", v24, v27, v29 / 10.0, v28, v43 / *(v93 + v38), v33, v34, v30, v31, v32, v35);
            v39 = v84;
            if (a4)
            {
              fprintf(__stream, "Valid Sectors: %d Parity Sectors: %d Total Sectors: %d", v82, v81, v83);
            }
          }

          fputc(10, v44);
LABEL_58:
          ++v24;
          v19 = v90;
          if (v24 == v39)
          {
            v45 = "";
            if (!v75)
            {
              v45 = "*using kASPNand constants!";
            }

            v85 = v45;
            v46 = v94;
            v47 = v95;
            v48 = &v98;
            v49 = &xmmword_100079500;
            v50 = &v102;
            v51 = v93;
            v52 = &v100;
            v53 = &v96;
            v54 = v8;
            do
            {
              v56 = *v46++;
              v55 = v56;
              v57 = *v47++;
              v58 = v55 >= v57;
              v59 = v55 - v57;
              if (v58)
              {
                v60 = *v48 / (v59 + 1);
                *v48 = v60;
                v61 = *v50;
                v89 = v47;
                v90 = v46;
                v62 = *v51;
                fprintf(__stream, "%-23s: Erase Cycles: Max(%d, %d%% of EoL) Min(%d, %d%% of EoL) Avg(%d, %d%% of EoL)\n", v49, v61, 100 * v61 / v62, *v52, 100 * *v52 / v62, v60, 100 * v60 / v62);
                fprintf(__stream, "%24s Max band age:    (%d)\n", " ", *v53);
                fprintf(__stream, "%24s EoL erase cycles:(%d) %s\n", " ", v62, v85);
                v47 = v89;
                v46 = v90;
              }

              ++v48;
              v49 += 30;
              ++v50;
              ++v51;
              v52 = (v52 + 4);
              v53 = (v53 + 4);
              --v54;
            }

            while (v54);
            v63 = v8 != 1;
            v64 = v95[v63];
            v65 = v94[v63];
            if (v64 <= v65)
            {
              v69 = *(&v102 | (4 * v63));
              v67 = v76;
              v68 = __stream;
              do
              {
                v70 = &dword_100000018;
                while ((*(&unk_100078EF0 + v70) * v69) > v86[v64])
                {
                  v70 -= 4;
                  if (v70 == -4)
                  {
                    goto LABEL_80;
                  }
                }

                ++*(v91 + v70);
LABEL_80:
                ++v64;
              }

              while (v64 <= v65);
              v66 = v92;
            }

            else
            {
              v66 = 0;
              v67 = v76;
              v68 = __stream;
            }

            fwrite("USER PARTITION:\n", 0x10uLL, 1uLL, v68);
            v71 = &v92;
            v72 = -7;
            v73 = &unk_100078F0C;
            v74 = (&v102 | (4 * v63));
            do
            {
              if (v72 == -7)
              {
                fprintf(v68, "Erase Quantile [  %3.2f (%.2f - %.2f erases) ] = %d bands\n", *&dword_100078F08 * 100.0, (*&dword_100078F08 * *v74), (*&dword_100078F08 * *v74), v66);
              }

              else
              {
                fprintf(v68, "Erase Quantile [  %3.2f (%.2f - %.2f erases) ] = %d bands\n", *(v73 - 1) * 100.0, (*(v73 - 1) * *v74), (*v73 * *v74), *v71);
              }

              --v71;
              --v73;
              v58 = __CFADD__(v72++, 1);
            }

            while (!v58);
            if (v67)
            {
              fclose(v68);
            }

            free(v86);
            return;
          }
        }
      }

      fprintf(v7, "could not allocate %d bytes\n");
LABEL_69:
      if (__filename)
      {

        fclose(v7);
      }
    }
  }
}

uint64_t sub_10003825C(char *a1, int a2, _DWORD *a3, uint64_t a4, __n128 a5, __n128 a6, __n128 a7)
{
  v12 = 0;
  v13 = 0;
  if (sub_10002A610(8u, &v13, &v12, a5, a6, a7))
  {
    if (a2)
    {
      *a3 = sub_100038310(a1, v13, 1, a4);
    }

    else
    {
      sub_100038310(a1, v13, 0, a4);
    }

    free(v13);
    return 1;
  }

  else
  {
    fwrite("Error: IO NVMe Smart cmd failed to extract ASP NAND defects!\n", 0x3DuLL, 1uLL, __stderrp);
    return 0;
  }
}

uint64_t sub_100038310(char *__filename, uint64_t a2, char a3, uint64_t a4)
{
  strcpy(v29, "InvalidPage");
  strcpy(v28, "InvalidTemp");
  strcpy(v26, "Unknown");
  v27 = 0;
  if (__filename)
  {
    __stream = fopen(__filename, "a");
    if (!__stream)
    {
      fprintf(__stderrp, "Unable to open %s\n", __filename);
      return 0;
    }
  }

  else
  {
    __stream = __stdoutp;
  }

  v8 = *(a2 + 8);
  if (a3)
  {
    goto LABEL_10;
  }

  v9 = (a2 + 12);
  if (a4)
  {
    if (v8)
    {
      v10 = (a4 + 16);
      v11 = *(a2 + 8);
      do
      {
        *(v10 - 4) = *v9;
        *(v10 - 3) = *(v9 + 1);
        *(v10 - 2) = *(v9 + 2);
        *(v10 - 1) = *(v9 + 3);
        *v10 = *(v9 + 4);
        v10[1] = *(v9 + 5);
        v10[2] = *(v9 + 6);
        v10[3] = *(v9 + 7);
        v10 += 8;
        v9 += 16;
        --v11;
      }

      while (v11);
    }

LABEL_10:
    if (!__filename)
    {
      return v8;
    }

LABEL_11:
    fclose(__stream);
    return v8;
  }

  v22 = *(a2 + 4);
  v23 = __filename;
  fwrite("===Grown Bad Blocks===\n", 0x17uLL, 1uLL, __stream);
  v24 = v8;
  if (v8)
  {
    v13 = v8;
    do
    {
      v14 = *v9;
      v15 = v9[1];
      v17 = *(v9 + 1);
      v16 = *(v9 + 2);
      v18 = *(v9 + 6);
      v19 = *(v9 + 7);
      v21 = *(v9 + 3);
      v20 = *(v9 + 4);
      if (*(v9 + 5) == 4095)
      {
        __sprintf_chk(v29, 0, 0xCuLL, "%s");
      }

      else
      {
        __sprintf_chk(v29, 0, 0xCuLL, "%u");
      }

      if (v18 << 24 == -2130706432)
      {
        __sprintf_chk(v28, 0, 0xCuLL, "%s");
      }

      else
      {
        __sprintf_chk(v28, 0, 0xCuLL, "%d");
      }

      if (v19 <= 3)
      {
        __sprintf_chk(v26, 0, 0xCuLL, "%s", (&off_100074E98)[v19]);
      }

      v9 += 16;
      fprintf(__stream, "Bus: %u CE: %u CAU: %u Block: %u Cycles: %u Reason: %u Page: %s Temp: %s mode: %s\n", v14, v15, v17, v16, v21, v20, v29, v28, v26);
      --v13;
    }

    while (v13);
  }

  v8 = v24;
  fprintf(__stream, "Grown Bad Blocks Count: %u\n", v24);
  fprintf(__stream, "Factory Bad Blocks Count: %u\n", v22);
  if (v23)
  {
    goto LABEL_11;
  }

  return v8;
}

uint64_t print_snapshots(char *__filename, __n128 a2, __n128 a3, __n128 a4)
{
  v23 = 0;
  *v24 = 0;
  v22 = 0;
  if (__filename)
  {
    v5 = fopen(__filename, "a");
    if (!v5)
    {
      fprintf(__stderrp, "Unable to open %s\n", __filename);
      return 0;
    }

    v6 = v5;
    syslog(5, "printing ASP snapshots to %s", __filename);
    v10 = sub_100039170(22, v24, v7, v8, v9);
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = __stdoutp;
    v10 = sub_100039170(22, v24, a2, a3, a4);
    if (!v10)
    {
      return 0;
    }
  }

  v11 = v10;
  syslog(5, "ASP get snapshot data done.");
  v25 = 40 * vm_page_size;
  v12 = malloc_type_valloc(40 * vm_page_size, 0x100004077774924uLL);
  if (!v12)
  {
    v25 = 4 * vm_page_size;
    v12 = malloc_type_valloc(4 * vm_page_size, 0x100004077774924uLL);
    if (!v12)
    {
      fwrite("can't allocate buffer!\n", 0x17uLL, 1uLL, __stderrp);
      free(v11);
      if (__filename)
      {
LABEL_19:
        fclose(v6);
      }

      return 0;
    }
  }

  v16 = v12;
  v17 = sub_100039170(145, &v23, v13, v14, v15);
  syslog(5, "ASP get snapshot header done.");
  if (v17 && v17[1] > 5u)
  {
    v19 = v17[5];
    if (v23 == v19)
    {
      v22 = 0;
      if ((sub_100029920(v11, v24[0], v16, &v25, v17, &v22) & 1) == 0)
      {
        do
        {
          fputs(v16, v6);
        }

        while (!sub_100029920(v11, v24[0], v16, &v25, v17, &v22));
      }

      goto LABEL_11;
    }

    fprintf(__stderrp, "Read snapshot header %zu bytes, expect %u bytes\n", v23, v19);
LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  if ((sub_10002A144(v11, *v24, v16, &v25) & 1) == 0)
  {
    fwrite("Snapshot parser requires a larger string buffer\n", 0x30uLL, 1uLL, v6);
    goto LABEL_22;
  }

LABEL_11:
  fputs(v16, v6);
  v18 = 1;
LABEL_23:
  free(v11);
  free(v16);
  free(v17);
  v20 = "stdout";
  if (__filename)
  {
    v20 = __filename;
  }

  syslog(5, "ASP snapshot written to %s done", v20);
  if (__filename)
  {
    fclose(v6);
  }

  return v18;
}

unsigned int *sub_1000388F0(FILE *__stream, unsigned int *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a2;
  v12 = __stream;
  v13 = *a2;
  if (a4 != HIBYTE(*a2))
  {
    fwrite("Error parsing! missing header", 0x1DuLL, 1uLL, __stream);
    return v11;
  }

  v11 = a2 + 1;
  v14 = v13 & 0xFFFFFF;
  if ((v13 & 0xFFFFFF) != 0)
  {
    v18 = a11;
    fprintf(__stream, "==== %s ====\n", &xmmword_100079500 + 30 * a4);
    fprintf(v12, "\t%d bands\n", v14);
    v19 = 0;
    v49 = v14;
    v54 = v12;
    while (1)
    {
      v53 = v19;
      v52 = v11[3];
      v21 = v11[4];
      v20 = v11[5];
      v22 = v11[1];
      if ((v22 & 0x40) != 0)
      {
        v23 = 73;
      }

      else
      {
        v23 = 45;
      }

      v24 = 69;
      if ((v22 & 0x20) == 0)
      {
        v24 = 45;
      }

      v25 = 83;
      if ((v22 & 8) == 0)
      {
        v25 = 45;
      }

      v48 = v24;
      v47 = v25;
      v26 = 82;
      if ((v22 & 4) == 0)
      {
        v26 = 45;
      }

      v27 = 77;
      if ((v22 & 2) == 0)
      {
        v27 = 45;
      }

      v45 = v27;
      v46 = v26;
      v28 = 67;
      if ((v22 & 1) == 0)
      {
        v28 = 45;
      }

      v29 = 114;
      if ((v22 & 0x100) == 0)
      {
        v29 = 45;
      }

      fprintf(v12, "Band:%4d  Flow:%s [%d]  Flags:%1u%c%c%c%c%c%c%c  ", *v11, (v18 + 22 * v11[2]), v11[2], (v22 >> 9) & 7, v29, v28, v45, v46, v47, v48, v23);
      if (v52 == -1 || !v21)
      {
        fwrite("Valid Sectors: NA   Total Sectors: NA  ", 0x27uLL, 1uLL, v12);
      }

      else
      {
        fprintf(v12, "Valid Sectors: %5d  Total Sectors: %5d [%d%%]  ", v20, v21, 100 * v20 / v21);
      }

      v30 = v11[6];
      if ((v22 & 0x80) != 0)
      {
        v11 += 7;
        if (v30)
        {
          do
          {
            v36 = *v11;
            v37 = v11[1];
            v38 = v11[2];
            v39 = *(a6 + 4 * a4);
            if (v39 <= v38)
            {
              v39 = v11[2];
            }

            *(a6 + 4 * a4) = v39;
            v40 = *(a7 + 4 * a4);
            if (v40 <= v37)
            {
              v40 = v37;
            }

            *(a7 + 4 * a4) = v40;
            v41 = *(a8 + 4 * a4);
            if (v41 >= v37)
            {
              v41 = v37;
            }

            *(a8 + 4 * a4) = v41;
            *(a9 + 4 * a4) += v37;
            v42 = v11 + 3;
            ++*(a10 + 4 * a4);
            fprintf(v54, "\n\tBlock:%4d [Bork:%4d Dip: %4d Age:%5d Cycles:%5d EOL%%:%3d]", v36, v36 / a3, v36 % a3, v38, v37, 100 * v37 / *(a5 + 4 * a4));
            v11 += 3;
            --v30;
          }

          while (v30);
          v11 = v42;
          v18 = a11;
          v14 = v49;
          v43 = v53;
          v12 = v54;
          goto LABEL_41;
        }
      }

      else
      {
        v31 = v11 + 8;
        v32 = v11[7];
        fprintf(v12, "Age:%5d Cycles:%5d EOL%%:%3d\n", v32, v30, 100 * v30 / *(a5 + 4 * a4));
        v33 = *(a6 + 4 * a4);
        if (v33 <= v32)
        {
          v33 = v32;
        }

        *(a6 + 4 * a4) = v33;
        v34 = *(a7 + 4 * a4);
        if (v34 <= v30)
        {
          v34 = v30;
        }

        *(a7 + 4 * a4) = v34;
        v35 = *(a8 + 4 * a4);
        if (v35 >= v30)
        {
          v35 = v30;
        }

        *(a8 + 4 * a4) = v35;
        *(a9 + 4 * a4) += v30;
        ++*(a10 + 4 * a4);
        v11 = v31;
      }

      v43 = v53;
LABEL_41:
      fputc(10, v12);
      v19 = v43 + 1;
      if (v43 + 1 == v14)
      {
        fputc(10, v12);
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_100038C58(char *__filename, const char *a2)
{
  if (__filename)
  {
    v4 = fopen(__filename, "a");
    if (!v4)
    {
      return fprintf(__stderrp, "Unable to open %s\n", __filename);
    }
  }

  else
  {
    v4 = __stdoutp;
  }

  fwrite("Trace dump:\n", 0xCuLL, 1uLL, v4);
  result = fputs(a2, v4);
  if (__filename)
  {

    return fclose(v4);
  }

  return result;
}

uint64_t print_trace_dump(char *a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6 = 0;
  v7 = 0;
  if (sub_10002A610(9u, &v7, &v6, a2, a3, a4))
  {
    sub_100038C58(a1, v7);
    free(v7);
    return 1;
  }

  else
  {
    fwrite("Error: IO NVMe Smart cmd failed to extract debug dump trace!\n", 0x3DuLL, 1uLL, __stderrp);
    return 0;
  }
}

void *sub_100038DA4(char **a1, uint64_t a2, int a3, uint64_t a4, void *a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10)
{
  v10 = a10;
  v11 = a9;
  v13 = a4;
  v15 = a2;
  v16 = a1;
  v24 = 0;
  *a5 = 0;
  if (!a1 && (!sub_100039314(&v24) || (v16 = v24) == 0 || !*(v24 + 4)))
  {
    fwrite("Err: Finding internal NAND exporter failed for fetch tunnel buffer.\n", 0x44uLL, 1uLL, __stderrp);
LABEL_11:
    v22 = 0;
    goto LABEL_14;
  }

  v17 = a3;
  v18 = sub_100038F54(v16, v15, a3, v13, v10);
  if (!v18)
  {
    fprintf(__stderrp, "failed to get data size for cmd option %d\n", v15);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = (vm_page_size + v18 - 1) / vm_page_size * vm_page_size;
  v21 = malloc_type_valloc(v20, 0x100004077774924uLL);
  v22 = v21;
  if (v21)
  {
    bzero(v21, v20);
    if (sub_10003901C(v16, v15, v17, v13, v22, v20, v11, v10))
    {
      *a5 = v19;
    }

    else
    {
      free(v22);
      v22 = 0;
      *a5 = 0;
    }
  }

  else
  {
    fwrite("can't allocate buffer!\n", 0x17uLL, 1uLL, __stderrp);
  }

LABEL_14:
  if (v24)
  {
    sub_100039460(v24);
  }

  return v22;
}

uint64_t sub_100038F54(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v13 = 0;
  v12 = 0;
  outputStruct = 0;
  inputStruct[0] = a2;
  outputStructCnt = 4;
  inputStruct[2] = a4;
  inputStruct[1] = a3 | 1;
  v7 = IOConnectCallStructMethod(*(a1 + 16), *(a1 + 28), inputStruct, 0x18uLL, &outputStruct, &outputStructCnt);
  if (v7)
  {
    if ((a5 & 1) == 0)
    {
      fprintf(__stderrp, "Error calling CoreDebugTunnel method! - 0x%X\n", v7);
    }

    return 0;
  }

  else
  {
    result = outputStruct;
    if (!outputStruct && (a5 & 1) == 0)
    {
      fprintf(__stderrp, "SizeOnly for tunnel command 0x%x returned 0\n", a2);
      return outputStruct;
    }
  }

  return result;
}

uint64_t sub_10003901C(uint64_t a1, int a2, int a3, int a4, void *outputStruct, size_t a6, char a7, char a8)
{
  LOBYTE(v9) = a7;
  outputStructCnt = a6;
  v20 = 0;
  v19 = 0;
  while (1)
  {
    inputStruct[0] = a2;
    inputStruct[1] = a3;
    inputStruct[2] = a4;
    v15 = IOConnectCallStructMethod(*(a1 + 16), *(a1 + 28), inputStruct, 0x18uLL, outputStruct, &outputStructCnt);
    if (v15 != -536870211)
    {
      break;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    if ((a8 & 1) == 0)
    {
      fprintf(__stderrp, "CoreDebugTunnel 0x%x returned kIOReturnNoMemory\n", a2);
    }

    v16 = outputStructCnt;
    outputStructCnt = vm_page_size;
    v9 = 1;
    if (vm_page_size == v16)
    {
      return v9;
    }
  }

  if (!v15)
  {
    return 1;
  }

LABEL_10:
  if ((a8 & 1) == 0)
  {
    fprintf(__stderrp, "Error calling CoreDebugTunnel method! - 0x%X\n", v15);
  }

  return 0;
}

uint64_t sub_100039190(char **a1, int a2, int a3, void *outputStruct, __n128 a5, __n128 a6, __n128 a7)
{
  v18 = 0;
  v17 = 0;
  v19 = 0;
  outputStructCnt = 4;
  v14 = 0;
  inputStruct = a2;
  v16 = 1;
  *(&v17 + 2) = a3;
  if (!outputStruct)
  {
    syslog(3, "Error: must provide valid pointer for output value", a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0]);
    goto LABEL_11;
  }

  if (a1)
  {
    v9 = *(a1 + 4);
  }

  else if (!sub_100039314(&v14) || (a1 = v14) == 0 || (v9 = *(v14 + 4)) == 0)
  {
    fwrite("Err: Finding internal NAND exporter failed.\n", 0x2CuLL, 1uLL, __stderrp);
    goto LABEL_11;
  }

  v10 = IOConnectCallStructMethod(v9, *(a1 + 8), &inputStruct, 0x18uLL, outputStruct, &outputStructCnt);
  if (v10)
  {
    fprintf(__stderrp, "Error fetching the tunnel output buffer for opcode [%d], Result [0x%X]\n", a2, v10);
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:
  if (v14)
  {
    sub_100039460(v14);
  }

  return v11;
}

char *sub_100039314(char ***a1)
{
  connect = 0;
  *a1 = 0;
  v2 = pthread_mutex_trylock(&stru_100078F60);
  if (v2)
  {
    if (v2 != 16 || (syslog(4, "Warning: NANDInfo: NANDExporter: serializeAccess already locked. waiting for lock !\n"), pthread_mutex_lock(&stru_100078F60)))
    {
      v3 = __error();
      syslog(3, "Error: NANDInfo: NANDExporter: pthread_mutex_trylock() (%d) failed \n", *v3);
      return 0;
    }
  }

  syslog(5, "NANDInfo: NANDExporter object locked ! \n");
  v5 = &off_100078FA0;
  result = off_100078FA0;
  if (!off_100078FA0)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  while (1)
  {
    v6 = IOServiceMatching(result);
    if (!v6)
    {
      goto LABEL_10;
    }

    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (!MatchingService)
    {
      goto LABEL_10;
    }

    v8 = MatchingService;
    if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      break;
    }

    IOServiceClose(connect);
    connect = 0;
    IOObjectRelease(v8);
LABEL_10:
    v9 = v5[21];
    v5 += 21;
    result = v9;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  syslog(5, "NANDInfo: findNandExporter_tunnel: Controller found: %s\n", *v5);
  result = 1;
LABEL_12:
  *(v5 + 4) = connect;
  *(v5 + 5) = v8;
  *a1 = v5;
  return result;
}

uint64_t sub_100039460(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    IOServiceClose(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 20);
  if (v3)
  {
    IOObjectRelease(v3);
    *(a1 + 20) = 0;
  }

  syslog(5, "NANDInfo: NANDExporter object unlocked ! \n");

  return pthread_mutex_unlock(&stru_100078F60);
}

uint64_t crc16_compute(char *a1, int a2)
{
  for (LOWORD(v2) = 0; a2; --a2)
  {
    v3 = *a1++;
    v2 = word_10003EC4C[(v3 ^ v2)] ^ ((v2 & 0xFF00) >> 8);
  }

  return v2;
}

void sub_100039694(id a1)
{
  v1 = objc_opt_class();
  v5 = NSStringFromClass(v1);
  v2 = v5;
  v3 = os_log_create("com.apple.hid.AppleTopCase", [v5 UTF8String]);
  v4 = qword_1000794D8;
  qword_1000794D8 = v3;
}

void sub_100039D84(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 dispatchGroup];
    dispatch_group_leave(v2);
  }
}

void sub_10003A058(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 serviceID];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Failed to extract error stats from service 0x%llX", a1, 0xCu);
}

void sub_10003A5C4(id a1)
{
  v1 = objc_opt_class();
  v5 = NSStringFromClass(v1);
  v2 = v5;
  v3 = os_log_create("com.apple.hid.AppleTopCase", [v5 UTF8String]);
  v4 = qword_1000794E8;
  qword_1000794E8 = v3;
}

void sub_10003ADDC(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_10000D4F4();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@", v5, 0xCu);
}

void sub_10003AE80(void *a1, void *a2, int a3)
{
  v5 = a1;
  [a2 length];
  sub_10000D4F4();
  v7 = 1024;
  v8 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Received crashlog info report does not contain the expected amount of bytes based on the header (received %ld, expected %d)", v6, 0x12u);
}

void sub_10003AF30(void *a1, void *a2)
{
  v3 = a1;
  [a2 length];
  sub_10000D4F4();
  v5 = 2048;
  v6 = 5;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Crashlog info did not contain the report ID and full header (bytes: %ld, report ID + header size: %lu)", v4, 0x16u);
}

void sub_10003AFEC(const char *a1, NSObject *a2)
{
  v3 = NSStringFromSelector(a1);
  sub_10000D4F4();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", v4, 0xCu);
}

void sub_10003B080(void *a1, unsigned __int8 *a2, NSObject *a3)
{
  v5 = [a1 uniqueID];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10[0] = 67110144;
  v10[1] = v5;
  v11 = 1024;
  v12 = v6;
  v13 = 1024;
  v14 = v7;
  v15 = 1024;
  v16 = v8;
  v17 = 1024;
  v18 = v9;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Crashlog (%d) header: blob version %d, type %d, blob size %d, crc16 0x%04x", v10, 0x20u);
}

void sub_10003B144(void *a1, NSObject *a2)
{
  v4[0] = 67109632;
  v4[1] = [a1 uniqueID];
  v5 = 2048;
  v6 = 8;
  v7 = 1024;
  v8 = [a1 headerAndRawBlobSize];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Crashlog (%d) does not have a full header: header size %ld, crashlog header+blob size %d", v4, 0x18u);
}

void sub_10003B204()
{
  sub_10000D4F4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to create directory %@: error %@", v2, 0x16u);
}

void sub_10003B368(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Siri Enrollment SPI returned error: %{public}@", &v2, 0xCu);
}

void sub_10003B414(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 136315138;
  v5 = [v3 UTF8String];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "eSIM setup error: %s\n", &v4, 0xCu);
}

void sub_10003B51C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not fetch lockdown mode state, %d", v2, 8u);
}

void sub_10003B638(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LOWORD(v3) = 1024;
  HIWORD(v3) = *(*a2 + 24);
  sub_10000D518(&_mh_execute_header, a2, a3, "CentauriDiagnostic SPI error. Finished: %d, return success: %d", 67109376, v3);
}

void sub_10003B758(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000D4F4();
  sub_10000D4E4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003B880(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_10000D4F4();
  sub_10000D4E4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003B97C(char a1, uint64_t a2, NSObject *a3)
{
  LOWORD(v3) = 1024;
  HIWORD(v3) = a1 & 1;
  sub_10000D518(&_mh_execute_header, a2, a3, "IOPSCopyPowerSourcesByTypePrecise returned error. status: %d, NULL snapshot: %d", 67109376, v3);
}

void sub_10003BA60(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000D4F4();
  sub_10000D4E4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003BAEC(id *a1, void *a2)
{
  [*a1 fileSystemRepresentation];
  v8 = [a2 localizedDescription];
  sub_10000D4E4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003BC10(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000D4F4();
  sub_10000D4E4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003BCD0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000D4F4();
  sub_10000D4E4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003BDF8(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446210;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "CoreRepair: failed to write report to disk: %{public}s", buf, 0xCu);
}

void sub_10003BE74(int a1, id a2)
{
  v3 = a2;
  [a2 UTF8String];
  sub_10000D4E4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10003BF20()
{
  v0 = __error();
  strerror(*v0);
  sub_10000D500();
  sub_10000D4E4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10003BFB0()
{
  [0 fileSystemRepresentation];
  v0 = __error();
  strerror(*v0);
  sub_10000D500();
  sub_10000D4E4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10003C078(int a1)
{
  strerror(a1);
  sub_10000D4F4();
  sub_10000D4E4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003C138(void *a1, _OWORD *a2)
{
  v4 = *__error();
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = 136315138;
  v7 = strerror(v4);
  _os_log_send_and_compose_impl(v5, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "Unable to set root mode with error: %s. Aborting because this thread is in a bad state.", &v6);
  _os_crash_msg();
  __break(1u);
}

void sub_10003C1FC(int a1)
{
  strerror(a1);
  sub_10000D4E4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}