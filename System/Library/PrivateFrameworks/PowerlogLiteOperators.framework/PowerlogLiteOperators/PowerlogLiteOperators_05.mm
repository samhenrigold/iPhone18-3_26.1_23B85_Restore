uint64_t extract_all_magazine_stats(const char *a1)
{
  v41[3] = *MEMORY[0x277D85DE8];
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
    fprintf(*MEMORY[0x277D85DF8], "Error: cannot open dest file %s", v1);
    v28 = 0;
    v3 = 0;
    goto LABEL_35;
  }

  v3 = v2;
  v4 = 0;
  v37[0] = xmmword_21AA21830;
  v37[1] = xmmword_21AA21840;
  v37[2] = xmmword_21AA21850;
  v38 = 168;
  v5 = xmmword_21AA21860;
  v6 = v39;
  v7 = vdupq_n_s64(7uLL);
  v8.i64[0] = 0x100000001;
  v8.i64[1] = 0x100000001;
  v9.i64[0] = 0x400000004;
  v9.i64[1] = 0x400000004;
  do
  {
    v10 = vdupq_n_s64(v4);
    v11 = vorrq_s8(v10, xmmword_21AA21880);
    v12 = vaddq_s32(v5, v8);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v11)), 2).u8[0])
    {
      *(v6 - 3) = 168 * v12.i32[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v11)), 2).i8[2])
    {
      *(v6 - 2) = 168 * v12.i32[1];
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), vorrq_s8(v10, xmmword_21AA21870)))).i32[1])
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
  v39[1] = xmmword_21AA21890;
  v40 = 8064;
  v14 = xmmword_21AA21860;
  v15 = v41;
  v16 = vdupq_n_s64(9uLL);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  v18.i64[0] = 0x400000004;
  v18.i64[1] = 0x400000004;
  do
  {
    v19 = vdupq_n_s64(v13);
    v20 = vorrq_s8(v19, xmmword_21AA21880);
    v21 = vaddq_s32(v14, v17);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v16, v20)), 2).u8[0])
    {
      *(v15 - 3) = 4368 * v21.i32[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), v20)), 2).i8[2])
    {
      *(v15 - 2) = 4368 * v21.i32[1];
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), vorrq_s8(v19, xmmword_21AA21870)))).i32[1])
    {
      *(v15 - 1) = 4368 * v21.i32[2];
      *v15 = 4368 * v21.i32[3];
    }

    v13 += 4;
    v14 = vaddq_s32(v14, v18);
    v15 += 4;
  }

  while (v13 != 12);
  if (findNandExporter_tunnel(&v33) && v33 && *(v33 + 4))
  {
    v25 = 0;
    while (1)
    {
      v26 = *(v37 + v25);
      if (!getStatsMagazineBufferFromPast(v33, v26, 1, &__ptr, &__size, v22, v23, v24))
      {
        fprintf(*MEMORY[0x277D85DF8], "Error: failed to extract stats magazine for %u hours back", v26);
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

    v29 = *MEMORY[0x277D85DF8];
    v30 = "Error: extracted stats magazine but did not generate proper buffer";
    v31 = 66;
  }

  else
  {
    v29 = *MEMORY[0x277D85DF8];
    v30 = "Unable to get nand connection\n";
    v31 = 30;
  }

  fwrite(v30, v31, 1uLL, v29);
LABEL_34:
  v28 = 0;
LABEL_35:
  if (v33)
  {
    ReleaseIOInterfaces(v33);
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
  TunnelOutputThroughSizeOnlyHandling = getTunnelOutputThroughSizeOnlyHandling(0, 299, 0, &outputStruct, a3, a4, a5);
  v11 = outputStruct & 0xF;
  if (!TunnelOutputThroughSizeOnlyHandling)
  {
    v11 = 1;
  }

  v22 = 0;
  outputStruct = 0;
  if (v11 != 2)
  {
    if (v11 == 3)
    {
      TunnelBuffer_zeroflag = fetchTunnelBuffer_zeroflag(0, 297, &v22, 0, 1, v8, v9, v10);
      outputStruct = TunnelBuffer_zeroflag;
      if (TunnelBuffer_zeroflag)
      {
        v16 = TunnelBuffer_zeroflag;
        print_band_stats_buf_asp3(a1, TunnelBuffer_zeroflag, v22, v13, v14, v15);
LABEL_12:
        free(v16);
        return 1;
      }

      v19 = *MEMORY[0x277D85DF8];
      v20 = "Error: Cannot Extract Band Stats for ASP3\n";
      v21 = 42;
      goto LABEL_16;
    }

LABEL_10:
    if (asp_data_extraction_helper(7u, &outputStruct, &v22, v8, v9, v10))
    {
      print_band_stats_buf(a1, outputStruct, v22, a2);
      v16 = outputStruct;
      goto LABEL_12;
    }

    v19 = *MEMORY[0x277D85DF8];
    v20 = "Error: IO NVMe Smart cmd failed to extract ASP excport stats!\n";
    v21 = 62;
    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v17 = fetchTunnelBuffer_zeroflag(0, 262, &v22, 0, 1, v8, v9, v10);
  outputStruct = v17;
  if (v17)
  {
    v16 = v17;
    print_band_stats_buf(a1, v17, v22, 1);
    goto LABEL_12;
  }

  v19 = *MEMORY[0x277D85DF8];
  v20 = "Error: Cannot Extract Band Stats and Validity\n";
  v21 = 46;
LABEL_16:
  fwrite(v20, v21, 1uLL, v19);
  return 0;
}

void print_band_stats_buf_asp3(char *__filename, uint64_t a2, unsigned int a3, __n128 a4, __n128 a5, __n128 a6)
{
  v37 = *MEMORY[0x277D85DE8];
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
      fprintf(*MEMORY[0x277D85DF8], "Unable to open %s\n", __filename);
      return;
    }
  }

  else
  {
    v9 = *MEMORY[0x277D85E08];
  }

  if (*(a2 + 8) != 1)
  {
    fprintf(*MEMORY[0x277D85DF8], "Version mismatch, expected 1 got %d\n");
LABEL_9:
    if (__filename)
    {

      fclose(v9);
    }

    return;
  }

  if (*a2 > a3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Insufficient size, expected %d got %d\n");
    goto LABEL_9;
  }

  v10 = *(a2 + 4);
  TunnelBuffer_zeroflag = fetchTunnelBuffer_zeroflag(0, 264, &v24, 0, 1, a4, a5, a6);
  if (TunnelBuffer_zeroflag)
  {
    v12 = TunnelBuffer_zeroflag;
    if (v24 >= 2 && 22 * *TunnelBuffer_zeroflag + 2 <= v24)
    {
      v14 = &partition_names;
      strcpy(&partition_names, "USER PARTITION");
      strcpy(qword_27CD2F80E, "INTERMEDIATE PARTITION");
      strcpy(byte_27CD2F82C, "SKINNY PARTITION");
      fwrite("Band stats:\n", 0xCuLL, 1uLL, v9);
      fwrite("Flags: Bits/Cell (1/3/4), r: retrace, C: GCcan, M: GCmust, S: Special, R: GCrd, E: erased, I: toInvalidate\n", 0x6BuLL, 1uLL, v9);
      v15 = *(a2 + 12);
      v26 = v15.i32[0];
      v25 = vrev64_s32(v15);
      v23 = v12;
      v16 = (v12 + 1);
      v17 = print_band_stats_buf_asp3_part(v9, (a2 + 20), v10, 1u, &v25, &v27, &v35, &v33, &v31, &v29, v16);
      v18 = print_band_stats_buf_asp3_part(v9, v17, v10, 0, &v25, &v27, &v35, &v33, &v31, &v29, v16);
      print_band_stats_buf_asp3_part(v9, v18, v10, 2u, &v25, &v27, &v35, &v33, &v31, &v29, v16);
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
      fwrite("Flow list too small", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
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
    fwrite("Can't get flow list", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (__filename)
    {
      fclose(v9);
    }
  }
}

void print_band_stats_buf(char *__filename, unsigned int *a2, unsigned int a3, int a4)
{
  v104 = *MEMORY[0x277D85DE8];
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
      fprintf(*MEMORY[0x277D85DF8], "Unable to open %s\n", __filename);
      return;
    }
  }

  else
  {
    v7 = *MEMORY[0x277D85E08];
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
        strcpy(&partition_names, "INTERMEDIATE PARTITION");
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
        strcpy(qword_27CD2F80E, "USER PARTITION");
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
          strcpy(&partition_names, "USER PARTITION");
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
          strcpy(&partition_names, "USER PARTITION");
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
          v36 = &partition_names;
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
            v49 = &partition_names;
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
                v70 = 0x18u;
                while ((*(&quantilePoints + v70) * v69) > v86[v64])
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
            v73 = &unk_27CD2EB04;
            v74 = (&v102 | (4 * v63));
            do
            {
              if (v72 == -7)
              {
                fprintf(v68, "Erase Quantile [  %3.2f (%.2f - %.2f erases) ] = %d bands\n", *&dword_27CD2EB00 * 100.0, (*&dword_27CD2EB00 * *v74), (*&dword_27CD2EB00 * *v74), v66);
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

uint64_t print_grown_defects(char *a1, int a2, _DWORD *a3, uint64_t a4, __n128 a5, __n128 a6, __n128 a7)
{
  v12 = 0;
  v13 = 0;
  if (asp_data_extraction_helper(8u, &v13, &v12, a5, a6, a7))
  {
    if (a2)
    {
      *a3 = print_grown_defects_buf(a1, v13, 1, a4);
    }

    else
    {
      print_grown_defects_buf(a1, v13, 0, a4);
    }

    free(v13);
    return 1;
  }

  else
  {
    fwrite("Error: IO NVMe Smart cmd failed to extract ASP NAND defects!\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }
}

uint64_t print_grown_defects_buf(char *__filename, uint64_t a2, char a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  strcpy(v29, "InvalidPage");
  strcpy(v28, "InvalidTemp");
  strcpy(v26, "Unknown");
  v27 = 0;
  if (__filename)
  {
    __stream = fopen(__filename, "a");
    if (!__stream)
    {
      fprintf(*MEMORY[0x277D85DF8], "Unable to open %s\n", __filename);
      return 0;
    }
  }

  else
  {
    __stream = *MEMORY[0x277D85E08];
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
        __sprintf_chk(v26, 0, 0xCuLL, "%s", off_278259140[v19]);
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
  v24 = 0;
  *v25 = 0;
  v23 = 0;
  if (__filename)
  {
    v5 = fopen(__filename, "a");
    if (!v5)
    {
      fprintf(*MEMORY[0x277D85DF8], "Unable to open %s\n", __filename);
      return 0;
    }

    v6 = v5;
    syslog(5, "printing ASP snapshots to %s", __filename);
    TunnelBuffer_simple = fetchTunnelBuffer_simple(22, v25, v7, v8, v9);
    if (!TunnelBuffer_simple)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = *MEMORY[0x277D85E08];
    TunnelBuffer_simple = fetchTunnelBuffer_simple(22, v25, a2, a3, a4);
    if (!TunnelBuffer_simple)
    {
      return 0;
    }
  }

  v11 = TunnelBuffer_simple;
  syslog(5, "ASP get snapshot data done.");
  v12 = MEMORY[0x277D85FA0];
  v26 = 40 * *MEMORY[0x277D85FA0];
  v13 = malloc_type_valloc(v26, 0x100004077774924uLL);
  if (!v13)
  {
    v26 = 4 * *v12;
    v13 = malloc_type_valloc(v26, 0x100004077774924uLL);
    if (!v13)
    {
      fwrite("can't allocate buffer!\n", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
      free(v11);
      if (__filename)
      {
LABEL_19:
        fclose(v6);
      }

      return 0;
    }
  }

  v17 = v13;
  v18 = fetchTunnelBuffer_simple(145, &v24, v14, v15, v16);
  syslog(5, "ASP get snapshot header done.");
  if (v18 && v18[1] > 5u)
  {
    v20 = v18[5];
    if (v24 == v20)
    {
      v23 = 0;
      if ((ASPParseSnapshotBufferWithInplaceParser(v11, v25[0], v17, &v26, v18, &v23) & 1) == 0)
      {
        do
        {
          fputs(v17, v6);
        }

        while (!ASPParseSnapshotBufferWithInplaceParser(v11, v25[0], v17, &v26, v18, &v23));
      }

      goto LABEL_11;
    }

    fprintf(*MEMORY[0x277D85DF8], "Read snapshot header %zu bytes, expect %u bytes\n", v24, v20);
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  if ((ASPParseSnapshotBuffer(v11, *v25, v17, &v26) & 1) == 0)
  {
    fwrite("Snapshot parser requires a larger string buffer\n", 0x30uLL, 1uLL, v6);
    goto LABEL_22;
  }

LABEL_11:
  fputs(v17, v6);
  v19 = 1;
LABEL_23:
  free(v11);
  free(v17);
  free(v18);
  v21 = "stdout";
  if (__filename)
  {
    v21 = __filename;
  }

  syslog(5, "ASP snapshot written to %s done", v21);
  if (__filename)
  {
    fclose(v6);
  }

  return v19;
}

unsigned int *print_band_stats_buf_asp3_part(FILE *__stream, unsigned int *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
    fprintf(__stream, "==== %s ====\n", &partition_names + 30 * a4);
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

uint64_t print_trace_dump_buf(char *__filename, const char *a2)
{
  if (__filename)
  {
    v4 = fopen(__filename, "a");
    if (!v4)
    {
      return fprintf(*MEMORY[0x277D85DF8], "Unable to open %s\n", __filename);
    }
  }

  else
  {
    v4 = *MEMORY[0x277D85E08];
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
  if (asp_data_extraction_helper(9u, &v7, &v6, a2, a3, a4))
  {
    print_trace_dump_buf(a1, v7);
    free(v7);
    return 1;
  }

  else
  {
    fwrite("Error: IO NVMe Smart cmd failed to extract debug dump trace!\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }
}

BOOL read_tunnel(char **a1, uint64_t a2, void *a3, size_t a4, uint64_t a5, __n128 a6, __n128 a7, __n128 a8)
{
  v13 = 0;
  TunnelBufferWithInVal = fetchTunnelBufferWithInVal(a1, a2, 0, 0, &v13, a6, a7, a8, 0, a5);
  if (TunnelBufferWithInVal)
  {
    bzero(a3, a4);
    if (v13 >= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = v13;
    }

    memcpy(a3, TunnelBufferWithInVal, v11);
    free(TunnelBufferWithInVal);
  }

  return TunnelBufferWithInVal != 0;
}

BOOL read_geometry(char **a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  tunnel = 1;
  if (!read_tunnel(a1, 186, a2, 0x190uLL, 1, a3, a4, a5))
  {
    *__c = 0u;
    memset(v61, 0, 56);
    tunnel = read_tunnel(a1, 55, __c, 0x48uLL, 0, 0, v8, v9);
    if (tunnel)
    {
      *(a2 + 368) = 0u;
      *(a2 + 384) = 0u;
      *(a2 + 336) = 0u;
      *(a2 + 352) = 0u;
      *(a2 + 304) = 0u;
      *(a2 + 320) = 0u;
      *(a2 + 272) = 0u;
      *(a2 + 288) = 0u;
      *(a2 + 240) = 0u;
      *(a2 + 256) = 0u;
      *(a2 + 208) = 0u;
      *(a2 + 224) = 0u;
      *(a2 + 176) = 0u;
      *(a2 + 192) = 0u;
      *(a2 + 144) = 0u;
      *(a2 + 160) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 128) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *a2 = 1;
      v10 = *&__c[1];
      v11 = v61[0];
      *&v12 = *&__c[1];
      *(&v12 + 1) = *&v61[0];
      *(a2 + 4) = v12;
      *(a2 + 20) = *(v61 + 8);
      *(a2 + 36) = *(&v61[1] + 8);
      *(a2 + 52) = *(&v61[2] + 8);
      *(a2 + 72) = 0;
      *(a2 + 68) = 0;
      v13 = HIDWORD(v10);
      if (HIDWORD(v10) >= 2)
      {
        v14 = HIDWORD(v10) >> 1;
        v15 = vdupq_n_s64(v14 - 1);
        v16 = -((v14 + 15) & 0xFFFFFFF0);
        v17 = xmmword_21AA218A0;
        v18 = xmmword_21AA218B0;
        v19 = xmmword_21AA218C0;
        v20 = xmmword_21AA218D0;
        v21 = xmmword_21AA218E0;
        v22 = xmmword_21AA218F0;
        v23 = xmmword_21AA21870;
        v24 = (a2 + 95);
        v25 = 95;
        v26 = xmmword_21AA21880;
        v27 = vdupq_n_s64(0x10uLL);
        do
        {
          v28 = v25 - 95;
          v29 = vmovn_s64(vcgeq_u64(v15, v26));
          if (vuzp1_s8(vuzp1_s16(v29, *v15.i8), *v15.i8).u8[0])
          {
            *(v24 - 15) = 2 * v28;
          }

          if (vuzp1_s8(vuzp1_s16(v29, *&v15), *&v15).i8[1])
          {
            *(v24 - 14) = (2 * v28) | 2;
          }

          if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v23))), *&v15).i8[2])
          {
            *(v24 - 13) = (2 * v28) | 4;
            *(v24 - 12) = (2 * v28) | 6;
          }

          v30 = vmovn_s64(vcgeq_u64(v15, v22));
          if (vuzp1_s8(*&v15, vuzp1_s16(v30, *&v15)).i32[1])
          {
            *(v24 - 11) = (2 * v28) | 8;
          }

          if (vuzp1_s8(*&v15, vuzp1_s16(v30, *&v15)).i8[5])
          {
            *(v24 - 10) = (2 * v28) | 0xA;
          }

          if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v21)))).i8[6])
          {
            *(v24 - 9) = (2 * v28) | 0xC;
            *(v24 - 8) = (2 * v28) | 0xE;
          }

          v31 = vmovn_s64(vcgeq_u64(v15, v20));
          if (vuzp1_s8(vuzp1_s16(v31, *v15.i8), *v15.i8).u8[0])
          {
            *(v24 - 7) = (2 * v28) | 0x10;
          }

          if (vuzp1_s8(vuzp1_s16(v31, *&v15), *&v15).i8[1])
          {
            *(v24 - 6) = (2 * v28) | 0x12;
          }

          if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v19))), *&v15).i8[2])
          {
            *(v24 - 5) = (2 * v28) | 0x14;
            *(v24 - 4) = (2 * v28) | 0x16;
          }

          v32 = vmovn_s64(vcgeq_u64(v15, v18));
          if (vuzp1_s8(*&v15, vuzp1_s16(v32, *&v15)).i32[1])
          {
            *(v24 - 3) = (2 * v28) | 0x18;
          }

          if (vuzp1_s8(*&v15, vuzp1_s16(v32, *&v15)).i8[5])
          {
            *(v24 - 2) = (2 * v28) | 0x1A;
          }

          if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v17)))).i8[6])
          {
            *(v24 - 1) = (2 * v28) | 0x1C;
            *v24 = (2 * v28) | 0x1E;
          }

          v22 = vaddq_s64(v22, v27);
          v23 = vaddq_s64(v23, v27);
          v26 = vaddq_s64(v26, v27);
          v21 = vaddq_s64(v21, v27);
          v20 = vaddq_s64(v20, v27);
          v19 = vaddq_s64(v19, v27);
          v18 = vaddq_s64(v18, v27);
          v17 = vaddq_s64(v17, v27);
          v25 += 16;
          v24 += 16;
        }

        while (v16 + v25 != 95);
        v33 = vdupq_n_s64(HIDWORD(v10) - 1);
        v34 = (HIDWORD(v10) + 15) & 0x1FFFFFFF0;
        v35 = xmmword_21AA218A0;
        v36 = xmmword_21AA218B0;
        v37 = xmmword_21AA218C0;
        v38 = xmmword_21AA218D0;
        v39 = xmmword_21AA218E0;
        v40 = xmmword_21AA218F0;
        v41 = xmmword_21AA21870;
        v42 = (a2 + 127);
        v43 = 7;
        v44 = xmmword_21AA21880;
        do
        {
          v45 = vmovn_s64(vcgeq_u64(v33, v44));
          if (vuzp1_s8(vuzp1_s16(v45, *v33.i8), *v33.i8).u8[0])
          {
            *(v42 - 15) = v43 - 7;
          }

          if (vuzp1_s8(vuzp1_s16(v45, *&v33), *&v33).i8[1])
          {
            *(v42 - 14) = v43 - 7;
          }

          if (vuzp1_s8(vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v41))), *&v33).i8[2])
          {
            *(v42 - 13) = v43 - 6;
            *(v42 - 12) = v43 - 6;
          }

          v46 = vmovn_s64(vcgeq_u64(v33, v40));
          if (vuzp1_s8(*&v33, vuzp1_s16(v46, *&v33)).i32[1])
          {
            *(v42 - 11) = v43 - 5;
          }

          if (vuzp1_s8(*&v33, vuzp1_s16(v46, *&v33)).i8[5])
          {
            *(v42 - 10) = v43 - 5;
          }

          if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v39)))).i8[6])
          {
            *(v42 - 9) = v43 - 4;
            *(v42 - 8) = v43 - 4;
          }

          v47 = vmovn_s64(vcgeq_u64(v33, v38));
          if (vuzp1_s8(vuzp1_s16(v47, *v33.i8), *v33.i8).u8[0])
          {
            *(v42 - 7) = v43 - 3;
          }

          if (vuzp1_s8(vuzp1_s16(v47, *&v33), *&v33).i8[1])
          {
            *(v42 - 6) = v43 - 3;
          }

          if (vuzp1_s8(vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v37))), *&v33).i8[2])
          {
            *(v42 - 5) = v43 - 2;
            *(v42 - 4) = v43 - 2;
          }

          v48 = vmovn_s64(vcgeq_u64(v33, v36));
          if (vuzp1_s8(*&v33, vuzp1_s16(v48, *&v33)).i32[1])
          {
            *(v42 - 3) = v43 - 1;
          }

          if (vuzp1_s8(*&v33, vuzp1_s16(v48, *&v33)).i8[5])
          {
            *(v42 - 2) = v43 - 1;
          }

          if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v35)))).i8[6])
          {
            *(v42 - 1) = v43;
            *v42 = v43;
          }

          v49 = vdupq_n_s64(0x10uLL);
          v40 = vaddq_s64(v40, v49);
          v41 = vaddq_s64(v41, v49);
          v44 = vaddq_s64(v44, v49);
          v39 = vaddq_s64(v39, v49);
          v38 = vaddq_s64(v38, v49);
          v37 = vaddq_s64(v37, v49);
          v36 = vaddq_s64(v36, v49);
          v35 = vaddq_s64(v35, v49);
          v43 += 8;
          v42 += 16;
          v34 -= 16;
        }

        while (v34);
      }

      if (HIDWORD(v10))
      {
        v58 = v10;
        v59 = v11;
        memset((a2 + 96), __c[3], HIDWORD(v10));
        LODWORD(v10) = v58;
        v11 = v59;
      }

      if (v10 <= v11)
      {
        v50 = 0;
        v51 = 0;
        v52 = (a2 + 128);
        do
        {
          v53 = v13;
          v54 = v52;
          v55 = (a2 + 96);
          if (v13)
          {
            do
            {
              v56 = *v55++;
              if (v50 < v56)
              {
                *v54 = v51++;
              }

              v54 += 16;
              --v53;
            }

            while (v53);
          }

          ++v50;
          ++v52;
        }

        while (v50 < v11 / v10);
      }
    }
  }

  return tunnel;
}

BOOL read_extend_geometry(char **a1, char *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6)
{
  v9 = 1;
  if (!read_tunnel(a1, 187, a2, 0x28uLL, 1, a4, a5, a6))
  {
    v15 = 0u;
    v16 = 0u;
    v9 = read_tunnel(a1, 158, &v15, 0x20uLL, 0, 0, v10, v11);
    if (v9)
    {
      *a2 = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 4) = 0;
      *a2 = 1;
      *(a2 + 4) = v15;
      *(a2 + 20) = v16;
      *(a2 + 7) = HIDWORD(v16);
      v12 = *(a3 + 96);
      v13 = *(a3 + 8) > 1u;
      *(a2 + 8) = v12;
      *(a2 + 9) = v12 << v13;
    }
  }

  return v9;
}

uint64_t print_asp_flow_list(const char *a1, __n128 a2, __n128 a3, __n128 a4)
{
  v11 = 0;
  TunnelBuffer_zeroflag = fetchTunnelBuffer_zeroflag(0, 264, &v11, 0, 1, a2, a3, a4);
  if (TunnelBuffer_zeroflag)
  {
    v9 = TunnelBuffer_zeroflag;
    print_asp_flow_list_buf(a1, TunnelBuffer_zeroflag, v11, v6, v7, v8);
    free(v9);
    return 1;
  }

  else
  {
    fwrite("Error: Cannot Extract Band Flow\n", 0x20uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }
}

size_t print_asp_flow_list_buf(const char *a1, unsigned __int16 *a2, unsigned int a3, __n128 a4, __n128 a5, __n128 a6)
{
  v18 = *MEMORY[0x277D85DE8];
  *outputStruct = 0;
  TunnelOutputThroughSizeOnlyHandling = getTunnelOutputThroughSizeOnlyHandling(0, 299, 0, outputStruct, a4, a5, a6);
  v10 = outputStruct[0] & 0xF;
  if (!TunnelOutputThroughSizeOnlyHandling)
  {
    v10 = 1;
  }

  if (v10 == 3)
  {
    v11 = 22;
    if (a1)
    {
LABEL_6:
      v12 = fopen(a1, "a");
      if (!v12)
      {
        return fprintf(*MEMORY[0x277D85DF8], "Unable to open %s\n");
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v10 != 2)
    {
      return fwrite("Unsupported version for this command.", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }

    v11 = 8;
    if (a1)
    {
      goto LABEL_6;
    }
  }

  v12 = *MEMORY[0x277D85E08];
LABEL_10:
  if (a3 <= 1)
  {
    return fprintf(*MEMORY[0x277D85DF8], "Smaller buf size than expected, got %d");
  }

  v14 = *a2;
  if (v14 * v11 > a3)
  {
    return fprintf(*MEMORY[0x277D85DF8], "Smaller buf size than expected, got %d, number of flows: %d\n");
  }

  fwrite("============================\n", 0x1DuLL, 1uLL, v12);
  fprintf(v12, "    Number Of Flows: %d\n", v14);
  fwrite("============================\n", 0x1DuLL, 1uLL, v12);
  if (v14)
  {
    v15 = 0;
    v16 = a2 + 1;
    do
    {
      __memcpy_chk();
      fprintf(v12, "Flow %d : Name %s\n", v15, outputStruct);
      v16 = (v16 + v11);
      ++v15;
    }

    while (v14 != v15);
  }

  return fprintf(v12, "Flow %d : Name %s\n");
}

BOOL print_geometry(char *__filename, double a2, __n128 a3, __n128 a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (__filename)
  {
    v5 = fopen(__filename, "a");
    if (!v5)
    {
      fprintf(*MEMORY[0x277D85DF8], "Unable to open %s\n", __filename);
      return 0;
    }
  }

  else
  {
    v5 = *MEMORY[0x277D85E08];
  }

  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  result = read_geometry(0, &v19, 0, a3, a4);
  if (result)
  {
    result = read_extend_geometry(0, &v16, &v19, v7, v8, v9);
    if (result)
    {
      fwrite("===NAND Geometry===\n", 0x14uLL, 1uLL, v5);
      fprintf(v5, "cau_per_die: %d\n", DWORD1(v19));
      fprintf(v5, "num_bus: %d\n", DWORD2(v19));
      v10 = 0;
      v11 = v25;
      v12 = -1;
      v13 = 16;
      do
      {
        v14 = *v11;
        if (!*v11)
        {
          break;
        }

        v15 = v11[16];
        if (v12 != v15)
        {
          fprintf(v5, "MSP %d:\n", v11[16]);
          v10 = 0;
          v14 = *v11;
          v12 = v15;
        }

        fprintf(v5, "   Dies in Ch %d: %d\n", v10++, v14);
        ++v11;
        --v13;
      }

      while (v13);
      fprintf(v5, "num_dip: %d\n", HIDWORD(v19));
      fprintf(v5, "num_bands: %d\n", v20);
      fprintf(v5, "sec_per_page: %d\n", DWORD1(v20));
      fprintf(v5, "sec_per_full_band: %d\n", DWORD2(v20));
      fprintf(v5, "sec_per_full_band_slc: %d\n", HIDWORD(v20));
      fprintf(v5, "bytes_per_sec_meta: %d\n", v21);
      fprintf(v5, "pages_per_block: %d\n", DWORD1(v21));
      fprintf(v5, "pages_per_block_slc: %d\n", DWORD2(v21));
      fprintf(v5, "pages_per_block0: %d\n", HIDWORD(v21));
      fprintf(v5, "cell_type: %d\n", v22);
      fprintf(v5, "pages_in_read_verify: %d\n", DWORD1(v22));
      fprintf(v5, "eol_blocks: %d\n", DWORD2(v22));
      fprintf(v5, "block_pairing_scheme: %d\n", HIDWORD(v22));
      fprintf(v5, "sec_per_die_multiplane : %d\n", DWORD2(v16));
      fprintf(v5, "num_die : %d\n", v17);
      fprintf(v5, "sol_eol_per_die : %d\n", DWORD1(v17));
      fprintf(v5, "technology : %d\n", HIDWORD(v17));
      fprintf(v5, "max_tlc_gbb : %d\n", DWORD2(v17));
      if (__filename)
      {
        fclose(v5);
      }

      return 1;
    }
  }

  return result;
}

void *fetchTunnelBufferWithInVal(char **a1, uint64_t a2, int a3, uint64_t a4, void *a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10)
{
  v10 = a10;
  v11 = a9;
  v13 = a4;
  v15 = a2;
  v16 = a1;
  v24 = 0;
  *a5 = 0;
  if (!a1 && (!findNandExporter_tunnel(&v24) || (v16 = v24) == 0 || !*(v24 + 4)))
  {
    fwrite("Err: Finding internal NAND exporter failed for fetch tunnel buffer.\n", 0x44uLL, 1uLL, *MEMORY[0x277D85DF8]);
LABEL_11:
    v22 = 0;
    goto LABEL_14;
  }

  v17 = a3;
  TunnelCmdDataSize = _getTunnelCmdDataSize(v16, v15, a3, v13, v10);
  if (!TunnelCmdDataSize)
  {
    fprintf(*MEMORY[0x277D85DF8], "failed to get data size for cmd option %d\n", v15);
    goto LABEL_11;
  }

  v19 = TunnelCmdDataSize;
  v20 = (*MEMORY[0x277D85FA0] + TunnelCmdDataSize - 1) / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
  v21 = malloc_type_valloc(v20, 0x100004077774924uLL);
  v22 = v21;
  if (v21)
  {
    bzero(v21, v20);
    if (_getTunnelCmdDataToBuf(v16, v15, v17, v13, v22, v20, v11, v10))
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
    fwrite("can't allocate buffer!\n", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

LABEL_14:
  if (v24)
  {
    ReleaseIOInterfaces(v24);
  }

  return v22;
}

uint64_t _getTunnelCmdDataSize(uint64_t a1, int a2, int a3, int a4, char a5)
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
      fprintf(*MEMORY[0x277D85DF8], "Error calling CoreDebugTunnel method! - 0x%X\n", v7);
    }

    return 0;
  }

  else
  {
    result = outputStruct;
    if (!outputStruct && (a5 & 1) == 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "SizeOnly for tunnel command 0x%x returned 0\n", a2);
      return outputStruct;
    }
  }

  return result;
}

uint64_t _getTunnelCmdDataToBuf(uint64_t a1, int a2, int a3, int a4, void *outputStruct, size_t a6, char a7, char a8)
{
  LOBYTE(v9) = a7;
  outputStructCnt = a6;
  v21 = 0;
  v20 = 0;
  v15 = MEMORY[0x277D85FA0];
  while (1)
  {
    inputStruct[0] = a2;
    inputStruct[1] = a3;
    inputStruct[2] = a4;
    v16 = IOConnectCallStructMethod(*(a1 + 16), *(a1 + 28), inputStruct, 0x18uLL, outputStruct, &outputStructCnt);
    if (v16 != -536870211)
    {
      break;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    if ((a8 & 1) == 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "CoreDebugTunnel 0x%x returned kIOReturnNoMemory\n", a2);
    }

    v17 = outputStructCnt;
    outputStructCnt = *v15;
    v9 = 1;
    if (outputStructCnt == v17)
    {
      return v9;
    }
  }

  if (!v16)
  {
    return 1;
  }

LABEL_10:
  if ((a8 & 1) == 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "Error calling CoreDebugTunnel method! - 0x%X\n", v16);
  }

  return 0;
}

uint64_t populateTunnelOutputBufferWithoutSizeQuery_withFlags(char **a1, int a2, int a3, int a4, void *outputStruct, size_t a6, char a7, char a8, __n128 a9, __n128 a10, __n128 a11)
{
  v20 = 0;
  if (a1 || findNandExporter_tunnel(&v20) && (a1 = v20) != 0 && *(v20 + 4))
  {
    if (_getTunnelCmdDataToBuf(a1, a2, a3, a4, outputStruct, a6, a7, a8))
    {
      v18 = 1;
      goto LABEL_10;
    }

    fprintf(*MEMORY[0x277D85DF8], "Error fetching the tunnel output buffer for opcode [%d]\n", a2);
  }

  else
  {
    fwrite("Err: Finding internal NAND exporter failed.\n", 0x2CuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  v18 = 0;
LABEL_10:
  if (v20)
  {
    ReleaseIOInterfaces(v20);
  }

  return v18;
}

uint64_t getTunnelOutputThroughSizeOnlyHandling(char **a1, int a2, int a3, void *outputStruct, __n128 a5, __n128 a6, __n128 a7)
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

  else if (!findNandExporter_tunnel(&v14) || (a1 = v14) == 0 || (v9 = *(v14 + 4)) == 0)
  {
    fwrite("Err: Finding internal NAND exporter failed.\n", 0x2CuLL, 1uLL, *MEMORY[0x277D85DF8]);
    goto LABEL_11;
  }

  v10 = IOConnectCallStructMethod(v9, *(a1 + 8), &inputStruct, 0x18uLL, outputStruct, &outputStructCnt);
  if (v10)
  {
    fprintf(*MEMORY[0x277D85DF8], "Error fetching the tunnel output buffer for opcode [%d], Result [0x%X]\n", a2, v10);
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:
  if (v14)
  {
    ReleaseIOInterfaces(v14);
  }

  return v11;
}

char *findNandExporter_tunnel(char ***a1)
{
  connect = 0;
  *a1 = 0;
  v2 = pthread_mutex_trylock(&serializeAccess);
  if (v2)
  {
    if (v2 != 16 || (syslog(4, "Warning: NANDInfo: NANDExporter: serializeAccess already locked. waiting for lock !\n"), pthread_mutex_lock(&serializeAccess)))
    {
      v3 = __error();
      syslog(3, "Error: NANDInfo: NANDExporter: pthread_mutex_trylock() (%d) failed \n", *v3);
      return 0;
    }
  }

  syslog(5, "NANDInfo: NANDExporter object locked ! \n");
  v5 = &nand_exporters_tunnel;
  result = nand_exporters_tunnel;
  if (!nand_exporters_tunnel)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v6 = *MEMORY[0x277CD2898];
  v7 = MEMORY[0x277D85F48];
  while (1)
  {
    v8 = IOServiceMatching(result);
    if (!v8)
    {
      goto LABEL_11;
    }

    MatchingService = IOServiceGetMatchingService(v6, v8);
    if (!MatchingService)
    {
      goto LABEL_11;
    }

    v10 = MatchingService;
    if (!IOServiceOpen(MatchingService, *v7, 0, &connect))
    {
      break;
    }

    IOServiceClose(connect);
    connect = 0;
    IOObjectRelease(v10);
LABEL_11:
    v11 = v5[21];
    v5 += 21;
    result = v11;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  syslog(5, "NANDInfo: findNandExporter_tunnel: Controller found: %s\n", *v5);
  result = 1;
LABEL_13:
  *(v5 + 4) = connect;
  *(v5 + 5) = v10;
  *a1 = v5;
  return result;
}

uint64_t ReleaseIOInterfaces(uint64_t a1)
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

  return pthread_mutex_unlock(&serializeAccess);
}

uint64_t AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroupReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup__inactivityTimerMs;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup__inactivityTimerMs;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup__onDurationTimerMs;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup__onDurationTimerMs;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 20) |= 2u;
    while (1)
    {
      v37 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v37 & 0x7F) << v23;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup__onDurationTimerFraction;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup__onDurationTimerFraction;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSBwpStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 9)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v38 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v28;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDMETRICSBwpStats__bandwidth;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDMETRICSBwpStats__bandwidth;
        goto LABEL_52;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v37 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v37 & 0x7F) << v14;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDMETRICSBwpStats__scsSpacing;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDMETRICSBwpStats__scsSpacing;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 20) |= 2u;
    while (1)
    {
      v36 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v36 & 0x7F) << v23;
      if ((v36 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___AWDMETRICSBwpStats__duration;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___AWDMETRICSBwpStats__duration;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogNRFRCoverageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v47 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v47 & 0x7F) << v35;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_75:
          v41 = 24;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v45 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v45 & 0x7F) << v21;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_67:
          v41 = 20;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v44 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_71:
          *(a1 + 8) = v34;
          goto LABEL_77;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v46 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v46 & 0x7F) << v14;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_63:
        v41 = 16;
      }

      *(a1 + v41) = v20;
LABEL_77:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSTunerStateDurationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v58 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58 & 0x7F) << v33;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__rat;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__rat;
            goto LABEL_98;
          case 2:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v57 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v57 & 0x7F) << v48;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__txBand;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__txBand;
LABEL_98:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_101:
            *(a1 + *v22) = v21;
            goto LABEL_102;
          case 3:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v62 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v62 & 0x7F) << v23;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__port;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__port;
            goto LABEL_98;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v43 = 0;
          v44 = 0;
          v16 = 0;
          *(a1 + 36) |= 0x40u;
          while (1)
          {
            v60 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v60 & 0x7F) << v43;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v20 = v44++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__workMode;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__workMode;
          goto LABEL_98;
        }

        if (v13 == 11)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v59 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v59 & 0x7F) << v28;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__ftQualInd;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__ftQualInd;
          goto LABEL_98;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 36) |= 0x10u;
          while (1)
          {
            v56 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v56 & 0x7F) << v38;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__scenarioDecision;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__scenarioDecision;
          goto LABEL_98;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v61 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v61 & 0x7F) << v14;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__duration;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSTunerStateDuration__duration;
          goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_102:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogSFTStateEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 16;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularNrSDMActivationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v110 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v110 & 0x7F) << v5;
        if ((v110 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            v110 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v110 & 0x7F) << v13;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_178:
              *(a1 + 8) = v19;
              goto LABEL_209;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_178;
        case 2u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 60) |= 0x2000u;
          while (1)
          {
            v110 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v110 & 0x7F) << v59;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              LOBYTE(v45) = 0;
              goto LABEL_180;
            }
          }

          v45 = (v61 != 0) & ~[a2 hasError];
LABEL_180:
          v108 = 58;
          goto LABEL_199;
        case 3u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 60) |= 0x4000u;
          while (1)
          {
            v110 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v110 & 0x7F) << v39;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              LOBYTE(v45) = 0;
              goto LABEL_168;
            }
          }

          v45 = (v41 != 0) & ~[a2 hasError];
LABEL_168:
          v108 = 59;
          goto LABEL_199;
        case 6u:
          v83 = 0;
          v84 = 0;
          v85 = 0;
          *(a1 + 60) |= 0x400u;
          while (1)
          {
            v110 = 0;
            v86 = [a2 position] + 1;
            if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
            {
              v88 = [a2 data];
              [v88 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v85 |= (v110 & 0x7F) << v83;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v83 += 7;
            v11 = v84++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_196;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v85;
          }

LABEL_196:
          v107 = 52;
          goto LABEL_208;
        case 7u:
          v89 = 0;
          v90 = 0;
          v91 = 0;
          *(a1 + 60) |= 0x800u;
          while (1)
          {
            v110 = 0;
            v92 = [a2 position] + 1;
            if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
            {
              v94 = [a2 data];
              [v94 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v91 |= (v110 & 0x7F) << v89;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v11 = v90++ >= 9;
            if (v11)
            {
              LOBYTE(v45) = 0;
              goto LABEL_198;
            }
          }

          v45 = (v91 != 0) & ~[a2 hasError];
LABEL_198:
          v108 = 56;
          goto LABEL_199;
        case 8u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 60) |= 0x1000u;
          while (1)
          {
            v110 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v110 & 0x7F) << v46;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              LOBYTE(v45) = 0;
              goto LABEL_170;
            }
          }

          v45 = (v48 != 0) & ~[a2 hasError];
LABEL_170:
          v108 = 57;
LABEL_199:
          *(a1 + v108) = v45;
          goto LABEL_209;
        case 0xAu:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            v110 = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              v70 = [a2 data];
              [v70 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v110 & 0x7F) << v65;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v11 = v66++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_184;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v67;
          }

LABEL_184:
          v107 = 24;
          goto LABEL_208;
        case 0xBu:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 60) |= 0x200u;
          while (1)
          {
            v110 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v110 & 0x7F) << v71;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v11 = v72++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_188;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v73;
          }

LABEL_188:
          v107 = 48;
          goto LABEL_208;
        case 0xEu:
          v101 = 0;
          v102 = 0;
          v103 = 0;
          *(a1 + 60) |= 0x10u;
          while (1)
          {
            v110 = 0;
            v104 = [a2 position] + 1;
            if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
            {
              v106 = [a2 data];
              [v106 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v103 |= (v110 & 0x7F) << v101;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v101 += 7;
            v11 = v102++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_207;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v103;
          }

LABEL_207:
          v107 = 28;
          goto LABEL_208;
        case 0x11u:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 60) |= 4u;
          while (1)
          {
            v110 = 0;
            v98 = [a2 position] + 1;
            if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
            {
              v100 = [a2 data];
              [v100 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v97 |= (v110 & 0x7F) << v95;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v11 = v96++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_203;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v97;
          }

LABEL_203:
          v107 = 20;
          goto LABEL_208;
        case 0x12u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 60) |= 0x40u;
          while (1)
          {
            v110 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v110 & 0x7F) << v27;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_162;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v29;
          }

LABEL_162:
          v107 = 36;
          goto LABEL_208;
        case 0x13u:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            v110 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v110 & 0x7F) << v52;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_174;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v54;
          }

LABEL_174:
          v107 = 16;
          goto LABEL_208;
        case 0x14u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 60) |= 0x80u;
          while (1)
          {
            v110 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v110 & 0x7F) << v33;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_166;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v35;
          }

LABEL_166:
          v107 = 40;
          goto LABEL_208;
        case 0x15u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            v110 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v110 & 0x7F) << v20;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_158:
          v107 = 32;
          goto LABEL_208;
        case 0x16u:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          *(a1 + 60) |= 0x100u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_209;
      }

      while (1)
      {
        v110 = 0;
        v80 = [a2 position] + 1;
        if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v79 |= (v110 & 0x7F) << v77;
        if ((v110 & 0x80) == 0)
        {
          break;
        }

        v77 += 7;
        v11 = v78++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_192;
        }
      }

      v26 = [a2 hasError] ? 0 : v79;
LABEL_192:
      v107 = 44;
LABEL_208:
      *(a1 + v107) = v26;
LABEL_209:
      v109 = [a2 position];
    }

    while (v109 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id ChargingStateProviderLog()
{
  if (qword_2811F7070 != -1)
  {
    dispatch_once(&qword_2811F7070, &__block_literal_global);
  }

  v1 = _MergedGlobals_79;

  return v1;
}

void __ChargingStateProviderLog_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "ChargingStateProvider");
  v1 = _MergedGlobals_79;
  _MergedGlobals_79 = v0;

  if (!_MergedGlobals_79)
  {
    v2 = MEMORY[0x277D86220];

    objc_storeStrong(&_MergedGlobals_79, v2);
  }
}

void sub_21A55B0EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t AWDMETRICSCellularNrSdmEndcReleaseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v47 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v47 & 0x7F) << v35;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_75:
          v41 = 20;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v45 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v45 & 0x7F) << v21;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_67:
          v41 = 16;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v44 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_71:
          *(a1 + 8) = v34;
          goto LABEL_77;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 8u;
        while (1)
        {
          v46 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v46 & 0x7F) << v14;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_63:
        v41 = 24;
      }

      *(a1 + v41) = v20;
LABEL_77:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogThermal_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "thermal");
  _MergedGlobals_1 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v51[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51[0] & 0x7F) << v5;
        if ((v51[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 != 4)
      {
        if (v13 == 14)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 40) |= 0x10u;
          while (1)
          {
            LOBYTE(v51[0]) = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v51[0] & 0x7F) << v41;
            if ((v51[0] & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              LOBYTE(v47) = 0;
              goto LABEL_92;
            }
          }

          v47 = (v43 != 0) & ~[a2 hasError];
LABEL_92:
          *(a1 + 36) = v47;
          goto LABEL_93;
        }

        if (v13 == 15)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            LOBYTE(v51[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v51[0] & 0x7F) << v21;
            if ((v51[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_85;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_85:
          v48 = 28;
          goto LABEL_90;
        }

LABEL_54:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_93;
      }

      v34 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin);
      [a1 addBin:v34];
      v51[0] = 0;
      v51[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBinReadFrom(v34, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_93:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v51[0] & 0x7F) << v27;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_77:
        *(a1 + 8) = v33;
        goto LABEL_93;
      case 2:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 40) |= 8u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v51[0] & 0x7F) << v35;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_89;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v37;
        }

LABEL_89:
        v48 = 32;
        goto LABEL_90;
      case 3:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v51[0] & 0x7F) << v14;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_81:
        v48 = 24;
LABEL_90:
        *(a1 + v48) = v20;
        goto LABEL_93;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

void *PLProcessPrioritiesInit(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void PLProcessPrioritiesRead(void *a1)
{
  v2 = 0;
  v3 = 0;
  *a1 = 0;
  a1[1] = 0;
  while (1)
  {
    while (1)
    {
      v4 = memorystatus_control();
      if (v4 > 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_11;
      }
    }

    v5 = (v4 + 96);
    if (v2 < v5)
    {
      v3 = malloc_type_realloc(v3, v5, 0x1000040504FFAC1uLL);
      v2 = v5;
    }

    v6 = memorystatus_control();
    if (v6 > 0)
    {
      break;
    }

    if (*__error() != 22 && *__error() != 4)
    {
      free(v3);
LABEL_11:
      v2 = 0;
      v7 = 0;
      goto LABEL_12;
    }
  }

  *a1 = v3;
  v7 = v6 / 0x18uLL;
LABEL_12:
  a1[1] = v2;
  a1[2] = v7;
}

uint64_t PLProcessPrioritiesMetricsForPriority(void *a1, int64x2_t *a2, int a3)
{
  *a2 = 0uLL;
  v5 = a1[2];
  if (v5 < 1)
  {
    return 0;
  }

  v14 = v3;
  v15 = v4;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = (*a1 + v9);
    if (v11[1] == a3)
    {
      break;
    }

LABEL_6:
    ++v10;
    v9 += 24;
    if (v10 >= v5)
    {
      return 0;
    }
  }

  v13 = 0uLL;
  if (!PLProcessMetricsRead(&v13, *v11))
  {
    *a2 = vaddq_s64(v13, *a2);
    v5 = a1[2];
    goto LABEL_6;
  }

  return 1;
}

uint64_t PLProcessMetricsRead(void *a1, int pid)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  result = proc_pid_rusage(pid, 0, v5);
  if (result)
  {
    return 1;
  }

  v4 = *(&v7 + 1);
  *a1 = *(&v6 + 1);
  a1[1] = v4;
  return result;
}

int64x2_t PLProcessMetricsAdd(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3)
{
  result = vaddq_s64(*a3, *a2);
  *a1 = result;
  return result;
}

void *PLProcessMetricsInitWithRusage(void *result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *result = *(a2 + 56);
  result[1] = v2;
  return result;
}

uint64_t PLProcessMetricsForIdleBand(int64x2_t *a1)
{
  memset(v4, 0, sizeof(v4));
  PLProcessPrioritiesRead(v4);
  v2 = PLProcessPrioritiesMetricsForPriority(v4, a1, 0);
  free(v4[0]);
  return v2;
}

uint64_t AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x20u;
            while (1)
            {
              v54 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v54 & 0x7F) << v33;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__peakPowerMw;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__peakPowerMw;
            goto LABEL_86;
          case 5:
            v43 = 0;
            v44 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x10u;
            while (1)
            {
              v53 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v53 & 0x7F) << v43;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v20 = v44++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__cumulatedEnergyMj;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__cumulatedEnergyMj;
LABEL_86:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_89:
            *(a1 + *v22) = v21;
            goto LABEL_90;
          case 6:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v52 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v23;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__activeDurationMs;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__activeDurationMs;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v51 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v51 & 0x7F) << v28;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__component;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__component;
            goto LABEL_86;
          case 2:
            v38 = 0;
            v39 = 0;
            v16 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v56 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v56 & 0x7F) << v38;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v20 = v39++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__avgPowerMw;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__avgPowerMw;
            goto LABEL_86;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v55 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v55 & 0x7F) << v14;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__avgActivePowerMw;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats__avgActivePowerMw;
            goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogBasebandSleepVetoSleepVetoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v40 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v40 & 0x7F) << v14;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_55:
        v36 = 24;
LABEL_64:
        *(a1 + v36) = v20;
        goto LABEL_65;
      }

      v28 = PBReaderReadString();
      v29 = *(a1 + 8);
      *(a1 + 8) = v28;

LABEL_65:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        v39 = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v39 & 0x7F) << v30;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v32;
      }

LABEL_63:
      v36 = 20;
    }

    else
    {
      if (v13 != 4)
      {
LABEL_40:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_65;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        v41 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v41 & 0x7F) << v21;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_59;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v23;
      }

LABEL_59:
      v36 = 16;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogLTECDRXConfigReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v87 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v87 & 0x7F) << v5;
        if ((v87 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              v88 = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v88 & 0x7F) << v39;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v45 = 0;
                goto LABEL_135;
              }
            }

            if ([a2 hasError])
            {
              v45 = 0;
            }

            else
            {
              v45 = v41;
            }

LABEL_135:
            *(a1 + 8) = v45;
            goto LABEL_174;
          }

          if (v13 != 2)
          {
LABEL_130:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_174;
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 52) |= 0x40u;
          while (1)
          {
            v96 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v96 & 0x7F) << v33;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_139;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v35;
          }

LABEL_139:
          v84 = 36;
        }

        else
        {
          switch(v13)
          {
            case 3:
              v65 = 0;
              v66 = 0;
              v67 = 0;
              *(a1 + 52) |= 4u;
              while (1)
              {
                v95 = 0;
                v68 = [a2 position] + 1;
                if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
                {
                  v70 = [a2 data];
                  [v70 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v67 |= (v95 & 0x7F) << v65;
                if ((v95 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v11 = v66++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_156;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v67;
              }

LABEL_156:
              v84 = 20;
              break;
            case 4:
              v46 = 0;
              v47 = 0;
              v48 = 0;
              *(a1 + 52) |= 8u;
              while (1)
              {
                v94 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v94 & 0x7F) << v46;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_143;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v48;
              }

LABEL_143:
              v84 = 24;
              break;
            case 5:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              *(a1 + 52) |= 0x20u;
              while (1)
              {
                v93 = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v93 & 0x7F) << v21;
                if ((v93 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_152;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v23;
              }

LABEL_152:
              v84 = 32;
              break;
            default:
              goto LABEL_130;
          }
        }

        goto LABEL_173;
      }

      if (v13 > 8)
      {
        if (v13 == 9)
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          *(a1 + 52) |= 0x10u;
          while (1)
          {
            v90 = 0;
            v80 = [a2 position] + 1;
            if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
            {
              v82 = [a2 data];
              [v82 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v79 |= (v90 & 0x7F) << v77;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v11 = v78++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v79;
          }

LABEL_172:
          v84 = 28;
          goto LABEL_173;
        }

        if (v13 != 10)
        {
          if (v13 != 11)
          {
            goto LABEL_130;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 52) |= 0x100u;
          while (1)
          {
            v89 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v89 & 0x7F) << v27;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_164;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_164:
          v84 = 44;
          goto LABEL_173;
        }

        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 52) |= 0x200u;
        while (1)
        {
          v97 = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v97 & 0x7F) << v59;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v11 = v60++ >= 9;
          if (v11)
          {
            LOBYTE(v58) = 0;
            goto LABEL_147;
          }
        }

        v58 = (v61 != 0) & ~[a2 hasError];
LABEL_147:
        v85 = 48;
      }

      else
      {
        if (v13 == 6)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            v92 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v92 & 0x7F) << v71;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v11 = v72++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_168;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v73;
          }

LABEL_168:
          v84 = 16;
LABEL_173:
          *(a1 + v84) = v20;
          goto LABEL_174;
        }

        if (v13 != 7)
        {
          if (v13 != 8)
          {
            goto LABEL_130;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 52) |= 0x80u;
          while (1)
          {
            v91 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v91 & 0x7F) << v14;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_160;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_160:
          v84 = 40;
          goto LABEL_173;
        }

        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 52) |= 0x400u;
        while (1)
        {
          v98 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v98 & 0x7F) << v52;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            LOBYTE(v58) = 0;
            goto LABEL_145;
          }
        }

        v58 = (v54 != 0) & ~[a2 hasError];
LABEL_145:
        v85 = 49;
      }

      *(a1 + v85) = v58;
LABEL_174:
      v86 = [a2 position];
    }

    while (v86 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerlogRrcModeHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v192 = 0;
          v8 = [a2 position] + 1;
          if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
          {
            v10 = [a2 data];
            [v10 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v7 |= (v192 & 0x7F) << v5;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v12 = 0;
            goto LABEL_15;
          }
        }

        v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
        if (([a2 hasError] & 1) == 0 && (v12 & 7) != 4)
        {
          switch((v12 >> 3))
          {
            case 1u:
              v13 = 0;
              v14 = 0;
              v15 = 0;
              *(a1 + 128) |= 1u;
              while (1)
              {
                v192 = 0;
                v16 = [a2 position] + 1;
                if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
                {
                  v18 = [a2 data];
                  [v18 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v192 & 0x7F) << v13;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v13 += 7;
                v11 = v14++ >= 9;
                if (v11)
                {
                  v19 = 0;
LABEL_341:
                  *(a1 + 8) = v19;
                  goto LABEL_399;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v15;
              }

              goto LABEL_341;
            case 2u:
              v106 = 0;
              v107 = 0;
              v108 = 0;
              *(a1 + 128) |= 0x4000u;
              while (1)
              {
                v192 = 0;
                v109 = [a2 position] + 1;
                if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
                {
                  v111 = [a2 data];
                  [v111 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v108 |= (v192 & 0x7F) << v106;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v106 += 7;
                v11 = v107++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_345;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v108;
              }

LABEL_345:
              v190 = 68;
              goto LABEL_398;
            case 3u:
              v82 = 0;
              v83 = 0;
              v84 = 0;
              *(a1 + 128) |= 0x8000u;
              while (1)
              {
                v192 = 0;
                v85 = [a2 position] + 1;
                if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
                {
                  v87 = [a2 data];
                  [v87 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v84 |= (v192 & 0x7F) << v82;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v82 += 7;
                v11 = v83++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_325;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v84;
              }

LABEL_325:
              v190 = 72;
              goto LABEL_398;
            case 4u:
              v94 = 0;
              v95 = 0;
              v96 = 0;
              *(a1 + 128) |= 0x10000u;
              while (1)
              {
                v192 = 0;
                v97 = [a2 position] + 1;
                if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
                {
                  v99 = [a2 data];
                  [v99 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v96 |= (v192 & 0x7F) << v94;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v94 += 7;
                v11 = v95++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_333;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v96;
              }

LABEL_333:
              v190 = 76;
              goto LABEL_398;
            case 5u:
              v52 = 0;
              v53 = 0;
              v54 = 0;
              *(a1 + 128) |= 0x100000u;
              while (1)
              {
                v192 = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v192 & 0x7F) << v52;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v11 = v53++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_305;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v54;
              }

LABEL_305:
              v190 = 92;
              goto LABEL_398;
            case 6u:
              v124 = 0;
              v125 = 0;
              v126 = 0;
              *(a1 + 128) |= 0x200000u;
              while (1)
              {
                v192 = 0;
                v127 = [a2 position] + 1;
                if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
                {
                  v129 = [a2 data];
                  [v129 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v126 |= (v192 & 0x7F) << v124;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v124 += 7;
                v11 = v125++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_357;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v126;
              }

LABEL_357:
              v190 = 96;
              goto LABEL_398;
            case 7u:
              v142 = 0;
              v143 = 0;
              v144 = 0;
              *(a1 + 128) |= 0x400000u;
              while (1)
              {
                v192 = 0;
                v145 = [a2 position] + 1;
                if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
                {
                  v147 = [a2 data];
                  [v147 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v144 |= (v192 & 0x7F) << v142;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v142 += 7;
                v11 = v143++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_369;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v144;
              }

LABEL_369:
              v190 = 100;
              goto LABEL_398;
            case 8u:
              v100 = 0;
              v101 = 0;
              v102 = 0;
              *(a1 + 128) |= 0x800000u;
              while (1)
              {
                v192 = 0;
                v103 = [a2 position] + 1;
                if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
                {
                  v105 = [a2 data];
                  [v105 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v102 |= (v192 & 0x7F) << v100;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v100 += 7;
                v11 = v101++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_337;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v102;
              }

LABEL_337:
              v190 = 104;
              goto LABEL_398;
            case 9u:
              v160 = 0;
              v161 = 0;
              v162 = 0;
              *(a1 + 128) |= 0x1000000u;
              while (1)
              {
                v192 = 0;
                v163 = [a2 position] + 1;
                if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
                {
                  v165 = [a2 data];
                  [v165 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v162 |= (v192 & 0x7F) << v160;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v160 += 7;
                v11 = v161++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_381;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v162;
              }

LABEL_381:
              v190 = 108;
              goto LABEL_398;
            case 0xAu:
              v64 = 0;
              v65 = 0;
              v66 = 0;
              *(a1 + 128) |= 0x2000000u;
              while (1)
              {
                v192 = 0;
                v67 = [a2 position] + 1;
                if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
                {
                  v69 = [a2 data];
                  [v69 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v66 |= (v192 & 0x7F) << v64;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                v11 = v65++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_313;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v66;
              }

LABEL_313:
              v190 = 112;
              goto LABEL_398;
            case 0xBu:
              v154 = 0;
              v155 = 0;
              v156 = 0;
              *(a1 + 128) |= 0x4000000u;
              while (1)
              {
                v192 = 0;
                v157 = [a2 position] + 1;
                if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
                {
                  v159 = [a2 data];
                  [v159 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v156 |= (v192 & 0x7F) << v154;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v154 += 7;
                v11 = v155++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_377;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v156;
              }

LABEL_377:
              v190 = 116;
              goto LABEL_398;
            case 0xCu:
              v46 = 0;
              v47 = 0;
              v48 = 0;
              *(a1 + 128) |= 0x8000000u;
              while (1)
              {
                v192 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v192 & 0x7F) << v46;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_301;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v48;
              }

LABEL_301:
              v190 = 120;
              goto LABEL_398;
            case 0xDu:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *(a1 + 128) |= 0x20000u;
              while (1)
              {
                v192 = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  v63 = [a2 data];
                  [v63 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v192 & 0x7F) << v58;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v11 = v59++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_309;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v60;
              }

LABEL_309:
              v190 = 80;
              goto LABEL_398;
            case 0xEu:
              v136 = 0;
              v137 = 0;
              v138 = 0;
              *(a1 + 128) |= 0x40000u;
              while (1)
              {
                v192 = 0;
                v139 = [a2 position] + 1;
                if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
                {
                  v141 = [a2 data];
                  [v141 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v138 |= (v192 & 0x7F) << v136;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v136 += 7;
                v11 = v137++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_365;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v138;
              }

LABEL_365:
              v190 = 84;
              goto LABEL_398;
            case 0xFu:
              v39 = 0;
              v40 = 0;
              v41 = 0;
              *(a1 + 128) |= 0x80000u;
              while (1)
              {
                v192 = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  v44 = [a2 data];
                  [v44 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (v192 & 0x7F) << v39;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v11 = v40++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_293;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v41;
              }

LABEL_293:
              v190 = 88;
              goto LABEL_398;
            case 0x10u:
              v88 = 0;
              v89 = 0;
              v90 = 0;
              *(a1 + 128) |= 2u;
              while (1)
              {
                v192 = 0;
                v91 = [a2 position] + 1;
                if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
                {
                  v93 = [a2 data];
                  [v93 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v90 |= (v192 & 0x7F) << v88;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v88 += 7;
                v11 = v89++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_329;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v90;
              }

LABEL_329:
              v190 = 16;
              goto LABEL_398;
            case 0x11u:
              v33 = 0;
              v34 = 0;
              v35 = 0;
              *(a1 + 128) |= 4u;
              while (1)
              {
                v192 = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v192 & 0x7F) << v33;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v11 = v34++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_289;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v35;
              }

LABEL_289:
              v190 = 20;
              goto LABEL_398;
            case 0x12u:
              v112 = 0;
              v113 = 0;
              v114 = 0;
              *(a1 + 128) |= 0x40u;
              while (1)
              {
                v192 = 0;
                v115 = [a2 position] + 1;
                if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
                {
                  v117 = [a2 data];
                  [v117 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v114 |= (v192 & 0x7F) << v112;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v112 += 7;
                v11 = v113++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_349;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v114;
              }

LABEL_349:
              v190 = 36;
              goto LABEL_398;
            case 0x13u:
              v148 = 0;
              v149 = 0;
              v150 = 0;
              *(a1 + 128) |= 0x80u;
              while (1)
              {
                v192 = 0;
                v151 = [a2 position] + 1;
                if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
                {
                  v153 = [a2 data];
                  [v153 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v150 |= (v192 & 0x7F) << v148;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v148 += 7;
                v11 = v149++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_373;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v150;
              }

LABEL_373:
              v190 = 40;
              goto LABEL_398;
            case 0x14u:
              v172 = 0;
              v173 = 0;
              v174 = 0;
              *(a1 + 128) |= 0x100u;
              while (1)
              {
                v192 = 0;
                v175 = [a2 position] + 1;
                if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
                {
                  v177 = [a2 data];
                  [v177 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v174 |= (v192 & 0x7F) << v172;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v172 += 7;
                v11 = v173++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_389;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v174;
              }

LABEL_389:
              v190 = 44;
              goto LABEL_398;
            case 0x15u:
              v118 = 0;
              v119 = 0;
              v120 = 0;
              *(a1 + 128) |= 0x200u;
              while (1)
              {
                v192 = 0;
                v121 = [a2 position] + 1;
                if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
                {
                  v123 = [a2 data];
                  [v123 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v120 |= (v192 & 0x7F) << v118;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v118 += 7;
                v11 = v119++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_353;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v120;
              }

LABEL_353:
              v190 = 48;
              goto LABEL_398;
            case 0x16u:
              v130 = 0;
              v131 = 0;
              v132 = 0;
              *(a1 + 128) |= 0x400u;
              while (1)
              {
                v192 = 0;
                v133 = [a2 position] + 1;
                if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
                {
                  v135 = [a2 data];
                  [v135 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v132 |= (v192 & 0x7F) << v130;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v130 += 7;
                v11 = v131++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_361;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v132;
              }

LABEL_361:
              v190 = 52;
              goto LABEL_398;
            case 0x17u:
              v166 = 0;
              v167 = 0;
              v168 = 0;
              *(a1 + 128) |= 0x800u;
              while (1)
              {
                v192 = 0;
                v169 = [a2 position] + 1;
                if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
                {
                  v171 = [a2 data];
                  [v171 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v168 |= (v192 & 0x7F) << v166;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v166 += 7;
                v11 = v167++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_385;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v168;
              }

LABEL_385:
              v190 = 56;
              goto LABEL_398;
            case 0x18u:
              v178 = 0;
              v179 = 0;
              v180 = 0;
              *(a1 + 128) |= 0x1000u;
              while (1)
              {
                v192 = 0;
                v181 = [a2 position] + 1;
                if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
                {
                  v183 = [a2 data];
                  [v183 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v180 |= (v192 & 0x7F) << v178;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v178 += 7;
                v11 = v179++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_393;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v180;
              }

LABEL_393:
              v190 = 60;
              goto LABEL_398;
            case 0x19u:
              v76 = 0;
              v77 = 0;
              v78 = 0;
              *(a1 + 128) |= 0x2000u;
              while (1)
              {
                v192 = 0;
                v79 = [a2 position] + 1;
                if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
                {
                  v81 = [a2 data];
                  [v81 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v78 |= (v192 & 0x7F) << v76;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v76 += 7;
                v11 = v77++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_321;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v78;
              }

LABEL_321:
              v190 = 64;
              goto LABEL_398;
            case 0x1Au:
              v70 = 0;
              v71 = 0;
              v72 = 0;
              *(a1 + 128) |= 8u;
              while (1)
              {
                v192 = 0;
                v73 = [a2 position] + 1;
                if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                {
                  v75 = [a2 data];
                  [v75 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v72 |= (v192 & 0x7F) << v70;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                v11 = v71++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_317;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v72;
              }

LABEL_317:
              v190 = 24;
              goto LABEL_398;
            case 0x1Bu:
              v184 = 0;
              v185 = 0;
              v186 = 0;
              *(a1 + 128) |= 0x10u;
              while (1)
              {
                v192 = 0;
                v187 = [a2 position] + 1;
                if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
                {
                  v189 = [a2 data];
                  [v189 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v186 |= (v192 & 0x7F) << v184;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v184 += 7;
                v11 = v185++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_397;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v186;
              }

LABEL_397:
              v190 = 28;
              goto LABEL_398;
            case 0x1Cu:
              v27 = 0;
              v28 = 0;
              v29 = 0;
              *(a1 + 128) |= 0x20u;
              while (1)
              {
                v192 = 0;
                v30 = [a2 position] + 1;
                if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
                {
                  v32 = [a2 data];
                  [v32 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v29 |= (v192 & 0x7F) << v27;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                v11 = v28++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_285;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v29;
              }

LABEL_285:
              v190 = 32;
              goto LABEL_398;
            default:
              if ((v12 >> 3) == 127)
              {
                v20 = 0;
                v21 = 0;
                v22 = 0;
                *(a1 + 128) |= 0x10000000u;
                while (1)
                {
                  v192 = 0;
                  v23 = [a2 position] + 1;
                  if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
                  {
                    v25 = [a2 data];
                    [v25 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v22 |= (v192 & 0x7F) << v20;
                  if ((v192 & 0x80) == 0)
                  {
                    break;
                  }

                  v20 += 7;
                  v11 = v21++ >= 9;
                  if (v11)
                  {
                    v26 = 0;
                    goto LABEL_297;
                  }
                }

                if ([a2 hasError])
                {
                  v26 = 0;
                }

                else
                {
                  v26 = v22;
                }

LABEL_297:
                v190 = 124;
LABEL_398:
                *(a1 + v190) = v26;
              }

              else
              {
                result = PBReaderSkipValueWithTag();
                if (!result)
                {
                  return result;
                }
              }

LABEL_399:
              v191 = [a2 position];
              if (v191 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              continue;
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogNRCarrierComponentInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = objc_alloc_init(AWDMETRICSMCarrierComponentInfo);
        [a1 addCarrierInfo:v28];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !AWDMETRICSMCarrierComponentInfoReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_46:
        *(a1 + 24) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogNRCDRXConfigReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v122 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v122 & 0x7F) << v5;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 76) |= 1u;
          while (1)
          {
            v122 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v122 & 0x7F) << v13;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_216:
              *(a1 + 8) = v19;
              goto LABEL_239;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_216;
        case 2u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 76) |= 0x8000u;
          while (1)
          {
            v122 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v122 & 0x7F) << v81;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              LOBYTE(v87) = 0;
              goto LABEL_218;
            }
          }

          v87 = (v83 != 0) & ~[a2 hasError];
LABEL_218:
          v120 = 72;
          goto LABEL_221;
        case 3u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            v122 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v122 & 0x7F) << v57;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_200;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v59;
          }

LABEL_200:
          v119 = 24;
          goto LABEL_238;
        case 4u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 76) |= 0x10u;
          while (1)
          {
            v122 = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v122 & 0x7F) << v69;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v11 = v70++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_208;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v71;
          }

LABEL_208:
          v119 = 28;
          goto LABEL_238;
        case 5u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            v122 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v122 & 0x7F) << v39;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_188;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v41;
          }

LABEL_188:
          v119 = 16;
          goto LABEL_238;
        case 6u:
          v89 = 0;
          v90 = 0;
          v91 = 0;
          *(a1 + 76) |= 0x10000u;
          while (1)
          {
            v122 = 0;
            v92 = [a2 position] + 1;
            if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
            {
              v94 = [a2 data];
              [v94 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v91 |= (v122 & 0x7F) << v89;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v11 = v90++ >= 9;
            if (v11)
            {
              LOBYTE(v87) = 0;
              goto LABEL_220;
            }
          }

          v87 = (v91 != 0) & ~[a2 hasError];
LABEL_220:
          v120 = 73;
LABEL_221:
          *(a1 + v120) = v87;
          goto LABEL_239;
        case 7u:
          v101 = 0;
          v102 = 0;
          v103 = 0;
          *(a1 + 76) |= 0x400u;
          while (1)
          {
            v122 = 0;
            v104 = [a2 position] + 1;
            if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
            {
              v106 = [a2 data];
              [v106 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v103 |= (v122 & 0x7F) << v101;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v101 += 7;
            v11 = v102++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_229;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v103;
          }

LABEL_229:
          v119 = 52;
          goto LABEL_238;
        case 8u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 76) |= 0x800u;
          while (1)
          {
            v122 = 0;
            v78 = [a2 position] + 1;
            if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
            {
              v80 = [a2 data];
              [v80 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v77 |= (v122 & 0x7F) << v75;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v11 = v76++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_212;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v77;
          }

LABEL_212:
          v119 = 56;
          goto LABEL_238;
        case 9u:
          v113 = 0;
          v114 = 0;
          v115 = 0;
          *(a1 + 76) |= 0x100u;
          while (1)
          {
            v122 = 0;
            v116 = [a2 position] + 1;
            if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
            {
              v118 = [a2 data];
              [v118 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v115 |= (v122 & 0x7F) << v113;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v113 += 7;
            v11 = v114++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_237;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v115;
          }

LABEL_237:
          v119 = 44;
          goto LABEL_238;
        case 0xAu:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 76) |= 0x200u;
          while (1)
          {
            v122 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v122 & 0x7F) << v51;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_196;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v53;
          }

LABEL_196:
          v119 = 48;
          goto LABEL_238;
        case 0xBu:
          v107 = 0;
          v108 = 0;
          v109 = 0;
          *(a1 + 76) |= 0x20u;
          while (1)
          {
            v122 = 0;
            v110 = [a2 position] + 1;
            if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
            {
              v112 = [a2 data];
              [v112 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v109 |= (v122 & 0x7F) << v107;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v107 += 7;
            v11 = v108++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_233;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v109;
          }

LABEL_233:
          v119 = 32;
          goto LABEL_238;
        case 0xCu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 76) |= 0x40u;
          while (1)
          {
            v122 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v122 & 0x7F) << v33;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_184;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v35;
          }

LABEL_184:
          v119 = 36;
          goto LABEL_238;
        case 0xDu:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 76) |= 0x80u;
          while (1)
          {
            v122 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v122 & 0x7F) << v45;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_192;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v47;
          }

LABEL_192:
          v119 = 40;
          goto LABEL_238;
        case 0xEu:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 76) |= 0x1000u;
          while (1)
          {
            v122 = 0;
            v98 = [a2 position] + 1;
            if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
            {
              v100 = [a2 data];
              [v100 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v97 |= (v122 & 0x7F) << v95;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v11 = v96++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_225;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v97;
          }

LABEL_225:
          v119 = 60;
          goto LABEL_238;
        case 0xFu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 76) |= 0x2000u;
          while (1)
          {
            v122 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v122 & 0x7F) << v27;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_180;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v29;
          }

LABEL_180:
          v119 = 64;
          goto LABEL_238;
        case 0x10u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 76) |= 0x4000u;
          while (1)
          {
            v122 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v122 & 0x7F) << v63;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_204;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v65;
          }

LABEL_204:
          v119 = 68;
          goto LABEL_238;
        case 0x11u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 76) |= 4u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_239;
      }

      while (1)
      {
        v122 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v122 & 0x7F) << v20;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_176;
        }
      }

      v26 = [a2 hasError] ? 0 : v22;
LABEL_176:
      v119 = 20;
LABEL_238:
      *(a1 + v119) = v26;
LABEL_239:
      v121 = [a2 position];
    }

    while (v121 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPerClientProfileTriggerCountReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogNRNSAENDCEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v47 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v47 & 0x7F) << v35;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_75:
          v41 = 24;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v45 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v45 & 0x7F) << v21;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_67:
          v41 = 20;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v44 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_71:
          *(a1 + 8) = v34;
          goto LABEL_77;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v46 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v46 & 0x7F) << v14;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_63:
        v41 = 16;
      }

      *(a1 + v41) = v20;
LABEL_77:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogNRSub6RSRPHistMBinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogNRSub6RSRPHistMBin__binId;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogNRSub6RSRPHistMBin__binId;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 2u;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogNRSub6RSRPHistMBin__duration;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogNRSub6RSRPHistMBin__duration;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogAggregatedDLTBSHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v51[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51[0] & 0x7F) << v5;
        if ((v51[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v51[0] & 0x7F) << v28;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_77:
        *(a1 + 8) = v34;
        goto LABEL_93;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            LOBYTE(v51[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v51[0] & 0x7F) << v14;
            if ((v51[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_85;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_85:
          v48 = 32;
LABEL_92:
          *(a1 + v48) = v20;
          goto LABEL_93;
        }

LABEL_60:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_93;
      }

      v41 = objc_alloc_init(AWDMETRICSKCellularPowerLogAggregatedDLTBSHistMBin);
      [a1 addBin:v41];
      v51[0] = 0;
      v51[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogAggregatedDLTBSHistMBinReadFrom(v41, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_93:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v51[0] & 0x7F) << v35;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v37;
        }

LABEL_81:
        v48 = 24;
        goto LABEL_92;
      case 5:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v51[0] & 0x7F) << v42;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v44;
        }

LABEL_91:
        v48 = 28;
        goto LABEL_92;
      case 6:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 40) |= 0x10u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v51[0] & 0x7F) << v21;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_87;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_87:
        *(a1 + 36) = v27;
        goto LABEL_93;
    }

    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}